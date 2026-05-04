Attribute VB_Name = "stockreport"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Public Sub streport(Dc1 As String, Dc2 As String)
Dim rs1 As Recordset
Dim RS2 As Recordset

Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim drs1 As Recordset
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Integer
Dim Count As Integer
Dim cop As Integer
Dim cnn As Connection
Dim C As String
Dim rp As New repform
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring


Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\slot.TXT" For Output As #a
Open KALFOLDERDATA & "\slot.TXT" For Output As #a
pg1 = 1
Co = 0
Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
Co = 10
'drs1.MoveFirst
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0
tot8 = 0
Set RESULT = New Recordset
RESULT.Open "select cntcd,wcode,round(isnull(sum(netwt),0),2) from rm_waste where docdt<'" & Format(Dc1, "YYYY-MM-DD") & "' group by cntcd,wcode order by cntcd", db, adOpenStatic, adLockBatchOptimistic

If RESULT.RecordCount >= 1 Then

Set RS2 = New Recordset
RS2.Open "select distinct a.cntcd,A.wCODE as 'wdes',round(SUM(isnull(a.netwt,0))/(select count(*) from rm_wissue ),2) as 'rweight',case when (select count(*) from rm_wissue )=0 then 0 else (select  SUM(isnull(c.netwt,0))from rm_wissue c where a.cntcd=c.cntcd and a.wcode=c.wcode and c.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "') end AS 'iweight',0 as 'closingweight' from rm_wastetype b,rm_waste a,rm_wissue c where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode GROUP BY A.cntcd,A.WCODE order by a.cntcd", db, adOpenStatic, adLockBatchOptimistic

If RS2.RecordCount >= 1 Then
Do While Not RS2.EOF

                
                
                If flg <> RS2("cntcd") Then
                
               flg = RS2("cntcd")
                tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
                Print #a, Padr((CStr(RS2(0))), 10, " ")
                
                Set rs1 = New Recordset

                rs1.Open "select distinct a.cntcd,A.wCODE as 'wdes',round(SUM(isnull(a.netwt,0))/(select count(*) from rm_wissue ),2) as 'rweight',case when (select count(*) from rm_wissue )=0 then 0 else (select  SUM(isnull(c.netwt,0))from rm_wissue c where a.cntcd=c.cntcd and a.wcode=c.wcode and c.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "') end AS 'iweight',0 as 'closingweight' from rm_wastetype b,rm_waste a,rm_wissue c where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode and a.cntcd='" & RS2("cntcd") & "'  GROUP BY A.cntcd,A.WCODE order by a.cntcd", db, adOpenStatic, adLockBatchOptimistic
                If rs1.RecordCount <= 0 Then
                    MsgBox "No Records Found"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
            
                If rs1.RecordCount > 1 Then
                    C = "Y"
                Else
                    C = ""
                End If
            
            Do While Not rs1.EOF
                    
                    
                    If IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")) > IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")) Then
                    
                     If IsNull(rs1("iweight")) = True Then
                    tot1 = val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
                    tot16 = tot16 + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(0, 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     Else
                     tot1 = val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("Rweight"))) - val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
                    tot16 = tot16 + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))) + val(rs1("rweight"))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(rs1("rweight"), 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     End If
                    Else
'                    tot1 = Val(IIf(IsNull(rs1("Rweight")) = True, 0, rs1("Rweight"))) + Val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - Val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
'                    tot16 = tot16 + Val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))) + Val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - Val(rs1("rweight"))
                    If IsNull(rs1("iweight")) = True Then
                    tot1 = val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
                    tot16 = tot16 + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(0, 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     Else
                      tot1 = val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight"))) - (val(IIf(IsNull(rs1("Rweight")) = True, 0, rs1("Rweight"))) + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))))
'                    tot16 = tot16 + Val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))) + Val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - Val(rs1("rweight"))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(rs1("rweight"), 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     End If
                     'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(rs1("rweight"), 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     End If
                     
                    
                     If IsNull(rs1("iweight")) = False Then
                    tot2 = tot2 + rs1("rweight")
                    End If
                    tot3 = tot3 + rs1("rweight")
                    tot4 = tot4 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot5 = tot5 + tot1
                
                    tot11 = rs1("rweight") + rs1("closingweight")

                  If IsNull(rs1("iweight")) = False Then
                    tot12 = tot12 + rs1("rweight")
                    End If
                    tot13 = tot13 + rs1("rweight")
                    tot14 = tot14 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot15 = tot15 + tot11
                Co = Co + 2
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 10
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                End If
                
    rs1.MoveNext
Loop
    
    If C = "Y" Then
        Print #a,
        Print #a, " ** variety Total **" + Space(14) + Padl(CStr(INF(tot12, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot13, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot14, 2)), 11, " ") + Space(3) + Space(0) + Padl(CStr(INF(tot5, 2)), 11, " ")
        Print #a,
        tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
    End If
    tot6 = tot6 + tot2
    tot7 = tot7 + tot3
    tot8 = tot8 + tot4
    tot9 = tot9 + tot5
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
    

Else
RS2.MoveNext
End If
Loop



Else





                Set Rs = New Recordset

                'rs.Open "select distinct a.variety,A.wCODE as 'wdes',SUM(isnull(a.netwt,0)) as 'rweight',case when (select count(*) from rm_wissue )=0 then 0 else (select  SUM(isnull(c.netwt,0))from rm_wissue c where a.variety=c.variety and a.wcode=c.wcode) end AS 'iweight',0 as 'closingweight' from rm_wastetype b,rm_waste a,rm_wissue c where a.divcode='" & Divcode & "' and a.divcode=b.divcode and C.docdt between '" & Format(dc1, "yyyy-mm-dd") & "' and '" & Format(dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode GROUP BY A.VARIETY,A.WCODE order by a.VARIETY", DB, adOpenStatic, adLockBatchOptimistic
                 Rs.Open "select a.variety,a.wcode as 'wdes',round(SUM(isnull(a.netwt,0)),2) as 'rweight', 0  AS 'iweight',0 as 'closingweight'  from rm_waste a where a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc1, "yyyy-mm-dd") & "' GROUP BY A.VARIETY,A.WCODE order by a.VARIETY", db, adOpenStatic, adLockBatchOptimistic
                If Rs.RecordCount <= 0 Then
                    MsgBox "No Records Found"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                Rs.MoveFirst

                Do While Not Rs.EOF
If flg <> Rs("variety") Then
flg = Rs("variety")
Set rs1 = New Recordset
 rs1.Open "select a.variety,a.wcode as 'wdes',round(SUM(isnull(a.netwt,0)),2) as 'rweight', 0  AS 'iweight',0 as 'closingweight'  from rm_waste a where a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc1, "yyyy-mm-dd") & "' and a.variety='" & Rs("variety") & "' GROUP BY A.VARIETY,A.WCODE order by a.VARIETY", db, adOpenStatic, adLockBatchOptimistic
                 Count = rs1.RecordCount
                If rs1.RecordCount <= 0 Then
                    MsgBox "No Records Found"
                    Screen.MousePointer = 0
                    Exit Sub
                End If

                If rs1.RecordCount > 1 Then
                    C = "Y"
                Else
                    C = ""
                End If
            Print #a, Padr((CStr(Rs(0))), 10, " ")
            cop = 0
            Do While Not rs1.EOF
        cop = cop + 1


                   If IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")) > IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")) Then
                    tot1 = val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
                    tot16 = tot16 + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))) - val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")))
                    '+ Val(rs1("rweight"))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(0, 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                    Else
                    tot1 = val(IIf(IsNull(rs1("Rweight")) = True, 0, rs1("Rweight"))) - val(IIf(IsNull(rs1("Iweight")) = True, 0, rs1("iweight")))
                    tot16 = tot16 + val(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))) + val(IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")))
                    '- Val(rs1("rweight"))
                     Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(0, 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     End If

                    'tot1 = rs1("closingweight")

                    'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ")
                    'flg = rs1("variety")

                    'Print #a, Space(31) + Space(3) + Padl(CStr(INF(drs1(0), 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                     'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Padl(CStr(INF(rs1("RWEIGHT"), 3)), 11, " ") + Space(6) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 3)), 13, " ")
                    tot2 = tot2 + rs1("RWEIGHT")
                    tot3 = tot3 + rs1("rweight")
                    tot4 = tot4 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot5 = tot5 + tot1

                    tot6 = tot6 + rs1("RWEIGHT")
                    tot7 = tot7 + rs1("rweight")
                    tot8 = tot8 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot9 = tot9 + tot1
                     C = "N"
                Co = Co + 2
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 10
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                End If



    rs1.MoveNext
    If Count > 1 Then
    If Count = cop Then
    Print #a,
    Print #a, " ** Variety Total **" + Space(14) + Padl(CStr(INF(0, 3)), 11, " ") + Space(4) + Padl(CStr(INF(tot7, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot8, 2)), 11, " ") + Space(3) + Padl(CStr(INF(tot9, 2)), 11, " ")
     Print #a,
    tot6 = 0
    tot7 = 0
    tot8 = 0
    tot9 = 0
    End If
    End If
Loop
Else

Rs.MoveNext

End If
Loop

    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0



End If

'*****
Else
Set RS2 = New Recordset

RS2.Open "select distinct a.cntcd,A.wCODE as 'wdes',round(SUM(isnull(a.netwt,0))/(select count(*) from rm_wissue ),2) as 'rweight',case when (select count(*) from rm_wissue )=0 then 0 else (select  SUM(isnull(c.netwt,0))from rm_wissue c where a.cntcd=c.cntcd and a.wcode=c.wcode and c.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "') end AS 'iweight',0 as 'closingweight' from rm_wastetype b,rm_waste a,rm_wissue c where a.divcode='" & Divcode & "' and a.divcode=b.divcode and  a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode GROUP BY A.cntcd,A.WCODE order by a.cntcd", db, adOpenStatic, adLockBatchOptimistic

If RS2.RecordCount >= 1 Then


Do While Not RS2.EOF
                             
                
                If flg <> RS2("cntcd") Then
                tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
                Print #a, Padr((CStr(RS2(0))), 10, " ")
                Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
                flg = RS2("cntcd")
                Set rs1 = New Recordset

                rs1.Open "select distinct a.cntcd,A.wCODE as 'wdes',round(SUM(isnull(round(a.netwt,2),0))/(select count(*) from rm_wissue ),2) as 'rweight',case when (select count(*) from rm_wissue )=0 then 0 else (select  SUM(isnull(c.netwt,0))from rm_wissue c where a.cntcd=c.cntcd and a.wcode=c.wcode and c.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "') end AS 'iweight',0 as 'closingweight' from rm_wastetype b,rm_waste a,rm_wissue c where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode and a.cntcd='" & RS2("cntcd") & "'  GROUP BY A.cntcd,A.WCODE order by a.cntcd", db, adOpenStatic, adLockBatchOptimistic
                If rs1.RecordCount <= 0 Then
                    MsgBox "No Records Found"
                    Screen.MousePointer = 0
                    Exit Sub
                End If
            
                If rs1.RecordCount > 1 Then
                    C = "Y"
                Else
                    C = ""
                End If
            
            Do While Not rs1.EOF
                    If IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")) > IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")) Then
                    tot1 = IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")) - IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot16 = tot16 + IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight")) - IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    
                    Set Namers = New Recordset
                    Namers.Open "Select wdes from rm_wastetype  where wcode='" & rs1("wdes") & "'", db, adOpenStatic
                      
                     'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(Tot1, 3)), 13, " ")
                      Print #a, Space(11) + Padr(CStr(Namers("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(Round(rs1("rweight"), 2), 2)), 9, " ") + Space(4) + Padl(CStr(INF(Round(rs1("iweight"), 2), 2)), 9, " ") + Space(1) + Padl(CStr(INF(Round(tot1, 2), 2)), 13, " ")
                     Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
                    Else
                    tot1 = IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")) - IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))
                    tot16 = tot16 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")) - IIf(IsNull(rs1("rweight")) = True, 0, rs1("rweight"))
                    
                    Set Namers = New Recordset
                    Namers.Open "Select wdes from rm_wastetype  where wcode='" & rs1("wdes") & "'", db, adOpenStatic
                    
                     'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(Tot1, 3)), 13, " ")
                     Print #a, Space(11) + Padr(CStr(Namers("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(rs1("rweight"), 2)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 2)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 2)), 13, " ")
                     Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
                    End If
                    tot3 = tot3 + Round(rs1("rweight"), 2)
                    tot4 = tot4 + IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight"))
                    tot5 = tot5 + tot1
                
                    tot13 = tot13 + Round(rs1("rweight"), 2)
                    tot14 = tot14 + Round(IIf(IsNull(rs1("iweight")) = True, 0, rs1("iweight")), 2)
                    tot15 = tot15 + tot11
                                        
                'co = co + 2
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 10
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                End If
                
    rs1.MoveNext
Loop
    
    If C = "Y" Then
        Print #a,
        Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
        Print #a, " ** Count Total **" + Space(16) + Padl(CStr(INF(tot12, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot13, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot14, 2)), 11, " ") + Space(3) + Space(0) + Padl(CStr(INF(tot16, 2)), 11, " ")
        Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
        Print #a,
        Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
        tot11 = 0
        tot12 = 0
        tot13 = 0
        tot14 = 0
        tot15 = 0
        tot16 = 0
    End If
    tot6 = tot6 + tot2
    tot7 = tot7 + tot3
    tot8 = tot8 + tot4
    tot9 = tot9 + tot5
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0
Else
RS2.MoveNext
End If
Loop

Else
                Set Rs = New Recordset
                Rs.Open "select distinct a.CNTCD,A.wCODE as 'wdes',round(SUM(isnull(a.netwt,0)),2) as 'rweight',0 AS 'iweight',round(SUM(a.netwt),2)as 'closingweight' from rm_wastetype b,rm_waste a " & _
                        "where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode GROUP BY A.CNTCD,A.WCODE order by a.CNTCD", cnn, adOpenStatic, adLockBatchOptimistic
                If Not Rs.EOF Then
                    Rs.MoveFirst
                End If
                Do While Not Rs.EOF
                    If flg <> Rs("CNTCD") Then
                    flg = Rs("CNTCD")
                    Set rs1 = New Recordset
                    rs1.Open "select distinct a.CNTCD,A.wCODE as 'wdes',round(SUM(isnull(a.netwt,0)),2) as 'rweight',0 AS 'iweight',round(SUM(a.netwt),2)as 'closingweight' from rm_wastetype b,rm_waste a " & _
                        "where a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docdt between '" & Format(Dc1, "yyyy-mm-dd") & "' and '" & Format(Dc2, "yyyy-mm-dd") & "' and  a.wcode=b.wcode and a.CNTCD='" & Rs("CNTCD") & "' GROUP BY A.CNTCD,A.WCODE order by a.CNTCD", cnn, adOpenStatic, adLockBatchOptimistic
                        Count = rs1.RecordCount
                        If rs1.RecordCount <= 0 Then
                                    MsgBox "No Records Found"
                                    Screen.MousePointer = 0
                                    Exit Sub
                        End If
            
                If rs1.RecordCount > 1 Then
                    C = "Y"
                Else
                    C = ""
                End If
            Print #a, Padr((CStr(Rs(0))), 10, " ")
            Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
            cop = 0
            Do While Not rs1.EOF
        cop = cop + 1
                    tot1 = rs1("rweight")
                    Set Namers = New Recordset
                    Namers.Open "Select wdes from rm_wastetype  where wcode='" & rs1("wdes") & "'", db, adOpenStatic
                    
                   
                     'Print #a, Space(11) + Padr(CStr(rs1("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(rs1("rweight"), 3)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 3)), 9, " ") + Space(1) + Padl(CStr(INF(Tot1, 3)), 13, " ")
                      Print #a, Space(11) + Padr(CStr(Namers("wdes")), 20, " ") + Space(3) + Space(17) + Padl(CStr(INF(rs1("rweight"), 2)), 9, " ") + Space(4) + Padl(CStr(INF(rs1("iweight"), 2)), 9, " ") + Space(1) + Padl(CStr(INF(tot1, 2)), 13, " ")
                     Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
                    tot2 = tot2 + rs1("rweight")
                    tot3 = tot3 + rs1("rweight")
                    tot4 = tot4 + rs1("iweight")
                    tot5 = tot5 + tot1
                     C = "m"
                    'tot6 = tot6 + drs1(0)
                    tot7 = tot7 + rs1("rweight")
                    tot8 = tot8 + rs1("iweight")
                    tot9 = tot9 + tot1
                     
                'co = co + 2
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 10
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                End If
                
                
                
    rs1.MoveNext
    If Count > 1 Then
    If Count = cop Then
    Print #a,
    Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
    Print #a, " ** Variety Total **" + Space(14) + Padl(CStr(INF(tot16, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot7, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot8, 2)), 11, " ") + Space(3) + Padl(CStr(INF(tot9, 2)), 11, " ")
    Co = Co + 1
                If Co > PageLen Then
                  Print #a, Chr(12)
                  pg1 = pg1 + 1
                  Co = 0
                  Call Heads(pg1, Co, CStr(Dc1), CStr(Dc2))
                  Co = 10
                End If
    tot6 = 0
    tot7 = 0
    tot8 = 0
    tot9 = 0
    End If
    End If
Loop
Else

Rs.MoveNext

End If
Loop
    tot6 = tot6 + tot2
    tot7 = tot7 + tot3
    tot8 = tot8 + tot4
    tot9 = tot9 + tot5
    tot2 = 0
    tot3 = 0
    tot4 = 0
    tot5 = 0



End If

End If
'********
If C = "N" Then
C = ""
Print #a,
Print #a, String(87, "-")
Print #a, " ** Grand Total **" + Space(16) + Padl(CStr(INF(0, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot16, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot8, 2)), 11, " ") + Space(3) + Padl(CStr(INF(tot16, 2)), 11, " ")
Print #a, String(87, "-")
tot6 = 0
tot7 = 0
tot8 = 0
tot9 = 0
tot1 = 0
ElseIf C = "m" Then
C = ""
Print #a,
Print #a, String(87, "-")
Print #a, " ** Grand Total **" + Space(16) + Padl(CStr(INF(0, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot6, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot8, 2)), 11, " ") + Space(3) + Padl(CStr(INF(tot6, 2)), 11, " ")
Print #a, String(87, "-")
tot6 = 0
tot7 = 0
tot8 = 0
tot9 = 0
tot1 = 0
Else
Print #a,
Print #a, String(87, "-")
Print #a, " ** Grand Total **" + Space(16) + Padl(CStr(INF(tot6, 2)), 11, " ") + Space(4) + Padl(CStr(INF(tot7, 2)), 11, " ") + Space(2) + Padl(CStr(INF(tot8, 2)), 11, " ") + Space(3) + Padl(CStr(INF(tot9, 2)), 11, " ")
Print #a, String(87, "-")
tot6 = 0
tot7 = 0
tot8 = 0
tot9 = 0
tot1 = 0
End If
Print #a, Chr(12)


Close #a
a = FreeFile
'Open "c:\slot.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type slot.txt>prn"
'Close #a
'
'RPTV.txtfile = "c:\slot.txt"
'RPTV.Batfile = "c:\slot.bat"
Call KALBATPROCESS("slot")
Screen.MousePointer = 0
End Sub
Public Sub Heads(pg1 As Integer, Co As Integer, U As String, V As String)
          Print #a, Chr(27) + "E" + CENTRE(DIVNAME, 87, " ") + Chr(27) + "F"
          Print #a,
          SR = Format(CStr(pdate), "DD/MM/YY") + Space(2)
          Print #a, Chr(27) + "E" + "Stock Report" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yy");
          Print #a, Space(28) + SR + "Pg. :" + Space(1) + CStr(pg1)
          Print #a, String(87, "-")
          Print #a, "Count Code"
          Print #a, Space(11) + "Description" + Space(10) + "Opening Stock" + Space(1) + "     Received " + Space(1) + "     Issued " + Space(1) + "Closing Stock"
          Print #a, Space(38) + "in Kgs." + Space(8) + "in kgs." + Space(6) + "in Kgs." + Space(7) + "in Kgs."
          Print #a, String(87, "-")
End Sub


Public Sub PWPRepHeader(pg1 As Integer, Co As Integer, f As String, V As String)
Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
SR = CStr(Format(pdate, "dd/mm/yy")) + Space(2)
Print #a,
Print #a, Chr(27); "E"; "Waste Stock from " & Format(f, "dd/mm/yy") & " to " & Format(V, "dd/mm/yy") & Space(30) & Chr(27); "F"; Space(2) & SR & Space(2) & "Pg.No :" + Space(1) + CStr(pg1)
Print #a, String(90, "-")
Co = 4
End Sub

Public Sub PWPStockReport(F_Date As String, T_Date As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot4 As Double
Dim tot7 As Double
Dim tot10 As Double
Dim Total As Double
Dim cnn As Connection
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\PWPStkRep.txt" For Output As #a
Open KALFOLDERDATA & "\PWPStkRep.TXT" For Output As #a
pg1 = 1
Co = 0


Wastestock:
C = 0
op1 = 0: dy1 = 0
pr1 = 0: cl1 = 0
tot_bag1 = 0

Ct = Trim(Mid$(ct1, 1, 2))
Set Rs = New Recordset


    Rs.Open " SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(SAL_ISS) CLOSEKGS" & _
        " From" & _
        " (" & _
        "  SELECT PRODUCT_CODE,SUM(PROD_PACKS)-SUM(SPROD_PACKS) OPENPACK,SUM(RECEIPTS)-SUM(SAL_ISS)  AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK3 WHERE DATE < '" & Format(F_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union all" & _
        "  SELECT PRODUCT_CODE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK3 WHERE DATE  between '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        "  Union all" & _
        "  SELECT PRODUCT_CODE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK3 WHERE DATE between '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union all" & _
        "  SELECT PRODUCT_CODE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK3 WHERE DATE  between '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
        "  Union all" & _
        "  SELECT PRODUCT_CODE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS FROM YARNSTOCK3 WHERE DATE between '" & Format(F_Date, "YYYY-MM-DD") & "' and '" & Format(T_Date, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
        " ) A" & _
        " GROUP BY PRODUCT_CODE ORDER BY PRODUCT_CODE", cnn, adOpenStatic
If Rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Call PWPRepHeader(pg1, Co, F_Date, T_Date)
If Co > PageLen - 5 Then
    Print #a, Chr(12)
    Co = 0
End If
Print #a, "                  <-----Opening---> <--Production---> <---Delivery----> <----Closing----->"
Print #a, "Variety             Qty     Nett.Wt   Qty     Nett.Wt   Qty     Nett.wt   Qty      Nett.wt"
Co = Co + 2
Print #a, String(90, "-")
Co = Co + 1
OPPACK = 0
oPKGS = 0
RECPACK = 0
reckgs = 0
PRPACK = 0
prkgs = 0
TRPACK = 0
trkgs = 0
SAPACK = 0
sakgs = 0
CLPACK = 0
clkgs = 0
loosgkgs = 0
t2 = ""
Do While Not Rs.EOF
    Set rsP = New Recordset
    rsP.Open "select sum(isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs from ig_wastetrn where product_code='" & Rs(0) & "' and pdate <= '" & Format(T_Date, "yyyy-mm-dd") & "'", cnn
    Set Namers = New Recordset
    Namers.Open "SELECT DESCRIPTION FROM IG_rPRODUCT WHERE PRODUCT_CODE ='" & Rs(0) & "'", cnn, adOpenStatic
    
    Sno = Sno + 1
    isspacks = Rs("SPROD_PACKS")
    issKgs = Rs("SAL_ISS")
    If Ct = "A" Then
        t1 = Rs("wastefrom")
        If t1 <> t2 Then
            If t2 <> "" Then
                Print #a, String(90, "-")
                Print #a, Chr(27) + "E" + Space(2) & "      Total " + Space(4) + Padl(INF(OPPACK, 0), 5, " ") + Space(1) + Padl(INF(oPKGS, 3), 11, " ") + Space(1) + Padl(INF(RECPACK, 0), 5, " ") + Space(1) + Padl(INF(reckgs, 3), 11, " ") + Space(1) + Padl(INF(SAPACK, 0), 5, " ") + Space(1) + Padl(INF(sakgs, 3), 11, " ") + Space(1) + Padl(INF(CLPACK, 0), 5, " ") + Space(2) + Padl(INF(clkgs, 3), 11, " ") + Chr(27) + "F"
                Print #a, String(90, "-")
                Print #a,
                Co = Co + 4
                OPPACK = 0
                oPKGS = 0
                RECPACK = 0
                reckgs = 0
                SAPACK = 0
                sakgs = 0
                CLPACK = 0
                clkgs = 0
            End If
            Set blockrs = New Recordset
            blockrs.Open "SELECT issue_DESC FROM rm_issuetype WHERE  issue_CODE ='" & Trim(t1) & "'", cnn, adOpenStatic
            Print #a, Chr(27) + "E" + Padr(blockrs("issue_desc"), 20, " ") + Chr(27) + "F"
            Print #a,
            Co = Co + 2
        Else
            Print #a,
            Co = Co + 1
        End If
    Else
        t1 = ct1
        t1 = ct1
        If Trim(t1) <> Trim(t2) Then
            Print #a, Chr(27) + "E" + Padr(t1, 20, " ") + Chr(27) + "F"
            Print #a,
            Co = Co + 2
        End If
    End If
    desc = ""
    If Namers.RecordCount > 0 Then
        desc = Namers("Description")
    End If
    Print #a, Padr(desc, 18, " ") + Padl(INF(Rs("OPENPACK"), 0), 5, " ") + Space(1) + Padl(INF(Rs("OPENING"), 3), 11, " ") + Space(1) + Padl(INF(Rs("RECPACK"), 0), 5, " ") + Space(1) + Padl(INF(Rs("RECEIPTS"), 3), 11, " ") + Space(1) + Padl(INF(isspacks, 0), 5, " ") + Space(1) + Padl(INF(issKgs, 3), 11, " ") + Space(1) + Padl(INF(Rs("closepack"), 0), 5, " ") + Space(2) + Padl(INF(Rs("closekgs"), 3), 11, " ")
    'Print #a,
    Co = Co + 1
    OPPACK = OPPACK + Rs("OPENPACK")
    oPKGS = oPKGS + Rs("OPENING")
    RECPACK = RECPACK + Rs("RECPACK")
    reckgs = reckgs + Rs("RECEIPTS")
    PRPACK = PRPACK + Rs("PPROD_PACKS")
    prkgs = prkgs + Rs("PROD_ISS")
    TRPACK = TRPACK + Rs("TPROD_PACKS")
    trkgs = trkgs + Rs("TRN_ISS")
    SAPACK = SAPACK + Rs("SPROD_PACKS")
    sakgs = sakgs + Rs("SAL_ISS")
    CLPACK = CLPACK + Rs("CLOSEPACK")
    clkgs = clkgs + Rs("CLOSEKGS")
    loosekgs = loosekgs + rsP("loose_kgs")
        
    gOPPACK = gOPPACK + Rs("OPENPACK")
    goPKGS = goPKGS + Rs("OPENING")
    gRECPACK = gRECPACK + Rs("RECPACK")
    greckgs = greckgs + Rs("RECEIPTS")
    gSAPACK = gSAPACK + Rs("SPROD_PACKS")
    gsakgs = gsakgs + Rs("SAL_ISS")
    gCLPACK = gCLPACK + Rs("CLOSEPACK")
    gclkgs = gclkgs + Rs("CLOSEKGS")
    Rs.MoveNext
    
    If Co >= 63 And Not Rs.EOF Then
        Print #a, String(90, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Call PWPRepHeader(pg1, Co, F_Date, T_Date)
        Print #a, String(90, "-")
        Print #a, "Variety           <-----Opening---> <--Production---> <---Delivery----> <----Closing----->"
        Print #a, "                    Qty     Nett.Wt   Qty     Nett.Wt   Qty     Nett.wt   Qty      Nett.wt"
        Co = Co + 2
        Print #a, String(90, "-")
        Co = Co + 1
    End If
    t2 = t1
Loop
If Ct = "A" Then
    Print #a, String(90, "-")
    Print #a, Chr(27) + "E" + Space(2) & "      Total " + Space(4) + Padl(INF(OPPACK, 0), 5, " ") + Space(1) + Padl(INF(oPKGS, 3), 11, " ") + Space(1) + Padl(INF(RECPACK, 0), 5, " ") + Space(1) + Padl(INF(reckgs, 3), 11, " ") + Space(1) + Padl(INF(SAPACK, 0), 5, " ") + Space(1) + Padl(INF(sakgs, 3), 11, " ") + Space(1) + Padl(INF(CLPACK, 0), 5, " ") + Space(2) + Padl(INF(clkgs, 3), 11, " ") + Chr(27) + "F"
End If
Print #a, String(90, "-")
Print #a, Chr(27) + "E" + Space(2) & "Grand Total " + Space(4) + Padl(INF(gOPPACK, 0), 5, " ") + Space(1) + Padl(INF(goPKGS, 3), 11, " ") + Space(1) + Padl(INF(gRECPACK, 0), 5, " ") + Space(1) + Padl(INF(greckgs, 3), 11, " ") + Space(1) + Padl(INF(gSAPACK, 0), 5, " ") + Space(1) + Padl(INF(gsakgs, 3), 11, " ") + Space(1) + Padl(INF(gCLPACK, 0), 5, " ") + Space(2) + Padl(INF(gclkgs, 3), 11, " ") + Chr(27) + "F"
Print #a, String(90, "-")
Print #a,
Print #a,
' Call footermod(CInt(a), rp.UserFooter1.SelectedStr, 85)



Last1:

Print #a, Chr(12)
Close
Close #a
a = FreeFile
'Open "c:\PWPStkRep.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type PWPStkRep.txt>prn"
'Close #a
'RPTV.txtfile = "c:\PWPStkRep.txt"
'RPTV.Batfile = "c:\PWPStkRep.bat"
Call KALBATPROCESS("PWPStkRep")
End Sub
