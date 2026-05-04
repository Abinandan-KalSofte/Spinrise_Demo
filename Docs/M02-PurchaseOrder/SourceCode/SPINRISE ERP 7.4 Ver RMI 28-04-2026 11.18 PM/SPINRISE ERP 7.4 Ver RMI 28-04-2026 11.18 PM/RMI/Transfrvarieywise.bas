Attribute VB_Name = "Transfrvarietywise"
Dim rs5 As Recordset
Dim RS6 As Recordset
Dim rs7 As Recordset
Dim RS8 As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, tot13, tot14, tot15 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim s1, s2 As String
Dim z As Integer
Dim br As Integer
Dim br1 As Integer
Dim rp1  As New repform

Public Sub TIPW12(Date1 As String, Date2 As String, DIVNAME As String, ISSTYPE As String)
On Error GoTo TIPW11_Error
    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    S = FreeFile
    Close #11
    Screen.MousePointer = 0
'    Open "C:\TIPW.TXT" For Output As #11
Open KALFOLDERDATA & "\prs.TXT" For Output As #11
    pg1 = 1
    Co = 0
    Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader2(pg1, DIVNAME, ISSTYPE)
    tot6 = 0
    tot7 = 0
    tot8 = 0
    tot9 = 0
    tot10 = 0
    isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
    Set rs5 = New Recordset
    If Trim(ISSTYPE) = "A" Then
        rs5.Open "select distinct a.docdt,d.varcode,z.varname,A.ISSTYPE,c.issue_desc as description from rm_issh a,rm_issb b,rm_lot d,rm_Var z,RM_ISSUETYPE C where C.ISSTYPE='T' AND C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND d.varcode=z.varcode and b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "' ORDER BY a.docdt", cnn, adOpenStatic
    Else
        rs5.Open "select distinct a.docdt,d.varcode,z.varname,A.ISSTYPE,c.issue_desc as description  from rm_issh a,rm_issb b,rm_lot d,rm_Var z,RM_ISSUETYPE C where C.ISSTYPE='T' AND C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND d.varcode=z.varcode and b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "' AND A.ISSTYPE='" & ISSTYPE & "'  ORDER BY a.docdt", cnn, adOpenStatic
    End If
    If rs5.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Close #11
        Exit Sub
    End If
    
        isstypeg = ""
'        Do While Not rs5.EOF
        If rs5.EOF = False Then
            Co = Co + 1
            If Co >= PageLen - 3 Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader2(pg1, DIVNAME, ISSTYPE)
            End If
                        
            If isstypeg <> rs5("docdt") Then
'                If isstypeg <> "" Then
'                    If ISSTYPE = "A" Then
'                        Print #11,
'                        Print #11, Space(47) + " **     Day Total ** " + Space(8) & Padl(INF(isstot1, 0), 9, " ") & Space(3) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " "); Space(1); Padl(INF(isstot4, 2), 20, " ")
'                        Print #11,
'                        co = co + 3
'                        isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
'                    End If
'                End If
                Print #11, Space(5) & Padr(rs5("isstype"), 10, " ") & Space(5) & Padr(rs5("description"), 20, " ")
                isstypeg = rs5("isstype")
                isstypeg = rs5("docdt")
                Co = Co + 1
            End If
                        
            Set rs7 = New Recordset
            
            'rs7.Open "select distinct a.slcode,slname,b.lotno,d.plotno,b.docdt,varcode, a.cntcd,round(sum(b.ACTISSKGS),2) netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end),round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2)  from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode *=c.slcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(date2, "yyyy-mm-dd") & "' and d.varcode = '" & rs5(0) & "'  group by a.slcode,d.plotno,slname,b.lotno,b.docdt,varcode, a.cntcd,d.bales,bblflg,ratekg,b.ACTISSKGS   order by a.slcode,slname,b.lotno,b.docdt", cnn, adOpenStatic
            
            rs7.Open "select distinct a.RDIVCODE,C.DIVNAME,b.lotno,d.plotno,b.docdt,b.varcode, a.cntcd,round(Sum(isnull(b.actisskgs,0)),2)  netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end), borah=(case bblflg when 'H' then count(b.baleno) end),round(Sum(isnull(b.actisskgs,0)),2) netwt,Value=round((sum(isnull(b.actisskgs,0)))*ISNULL(D.RATEKG,0),2)  from rm_issh a,rm_issb b,PP_DIVMAS c,rm_lot d,RM_ISSUETYPE G where " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND B.ISSTYPE=G.ISSUE_CODE AND  G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and C.DIVCODE=A.RDIVCODE and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt ='" & Format(rs5("docdt"), "yyyy-mm-dd") & "' AND A.ISSTYPE='" & rs5("ISSTYPE") & "'  and d.lotyear='" & Year(yfdate) & "' group by b.docdt,a.RDIVcode,d.plotno,C.DIVNAME,b.lotno,b.varcode, a.cntcd,bblflg,ratekg,D.RATECY order by b.docdt,a.RDIVCode,C.DIVname,b.lotno", cnn, adOpenStatic
            
            Set RS8 = New Recordset
            RS8.Open "select distinct a.RDIVCODE,C.DIVNAME,b.lotno,d.plotno,b.docdt,D.varcode, a.cntcd,round(sum(b.ACTISSKGS),2),bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when  'R' then count(b.baleno) end),borah=(case bblflg when 'H' then count(b.baleno) end)" & _
                    ",round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2),b.baleno from rm_issh a,rm_issb b,PP_DIVMAS c,rm_lot d,RM_ISSUETYPE G where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND  B.ISSTYPE=G.ISSUE_CODE AND G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and A.RDIVCODE=C.DIVCODE and a.docno=b.docno and a.docdt=b.docdt  AND A.ISSTYPE='" & rs5("ISSTYPE") & "'  AND a.divcode='" & Divcode & "' and a.docdt = '" & Format(rs5("docdt"), "yyyy-mm-dd") & "'  and d.lotyear='" & Year(yfdate) & "' group by a.RDIVcode,d.plotno,C.DIVName,b.lotno,b.docdt,D.varcode, a.cntcd,bblflg,ratekg,baleno " & _
                    " order by b.docdt,a.RDIVcode,C.DIVname,b.lotno", cnn, adOpenStatic
            
            br = RS8.RecordCount
            br1 = RS8.RecordCount
            If RS8("bales") <> "" Then
                br1 = 0
            Else
                br = 0
            End If
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
          
            division = ""
            DOCDT = ""
          
            Do While Not rs7.EOF
                Set Namers = New Recordset
                Namers.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs7("VARCODE") & "'", db, adOpenStatic
                If division = rs7("divname") And DOCDT = rs7("docdt") Then
                    Print #11, Space(5) & Padr("", 46, " ") & Space(1) & Padl("", 10, " "); Padl(rs7("lotno"), 8, " "); Padl(rs7("plotno"), 8, " "); Space(1); Padl(INF(rs7("BALES"), 0), 6, " ") & Space(3) & Padl(INF(rs7("BORAH"), 0), 6, " ") & Space(1) & Padl(INF(rs7("netwt"), 2), 19, " ") & Space(2) & Padl(INF(rs7("value"), 2), 19, " ")
                Else
                    Print #11, Space(5) & Padr(rs7("DIVname"), 46, " ") & Space(1) & Padl(rs7("docdt"), 10, " "); Padl(rs7("lotno"), 8, " "); Padl(rs7("plotno"), 8, " "); Space(1); Padl(INF(rs7("BALES"), 0), 6, " ") & Space(3) & Padl(INF(rs7("BORAH"), 0), 6, " ") & Space(1) & Padl(INF(rs7("netwt"), 2), 19, " ") & Space(2) & Padl(INF(rs7("value"), 2), 19, " ")
                End If
                Co = Co + 1
            If Co >= PageLen Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader2(pg1, DIVNAME, ISSTYPE)
            End If
                tot1 = tot1 + rs7("bales")  'bales
                tot2 = tot2 + rs7("borah") 'bora
                tot3 = tot3 + rs7(11)   'ratekgs
                tot4 = tot4 + rs7(10)    'qty
                tot5 = tot5 + rs7("value")   'value
                
                isstot1 = isstot1 + rs7("bales")
                isstot2 = isstot2 + rs7("borah")
                isstot3 = isstot3 + rs7(10)
                isstot4 = isstot4 + rs7("value")
                
                tot6 = tot6 + rs7("bales")      'grand bales
                tot7 = tot7 + rs7("borah")      'grand bora
                tot8 = tot8 + rs7(11)           'grdand ratekgs
                tot9 = tot9 + rs7(11)            'grand qty
                tot10 = tot10 + rs7("value")    'grand value
                division = rs7("divname")
                DOCDT = rs7("docdt")
                rs7.MoveNext
                
            Loop
            If rs7.RecordCount > 1 Then
            Print #11,
            Print #11, Space(47) + " **     Day Total ** " + Space(8) & Padl(INF(tot1, 0), 9, " ") & Space(3) & Padl(INF(tot2, 0), 6, " ") & Space(6) & Padl(INF(tot3, 2), 14, " "); Space(1); Padl(INF(tot5, 2), 20, " ")
            Co = Co + 1
            If Co >= PageLen Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader2(pg1, DIVNAME, ISSTYPE)
            End If
            End If
'            rs5.MoveNext
        Print #11,
'        Loop
        End If
'        If ISSTYPE = "A" Then
'            If rs7.RecordCount > 1 Then
''                Print #11,
'                Print #11, Space(47) + " **     Day Total ** " + Space(8) & Padl(INF(isstot1, 0), 9, " ") & Space(3) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " "); Space(1); Padl(INF(isstot4, 2), 20, " ")
'                Print #11,
'                isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
'            End If
'        End If
        If Co >= PageLen Then
            Print #11, Space(5) & String(124, "-"); Chr(12)
            pg1 = pg1 + 1
            Co = 0
            Call LotstockRepHeader2(pg1, DIVNAME, ISSTYPE)
        End If
        
        Set rs7 = New Recordset
        'rs7.Open "select round(sum(b.ACTISSKGS),2) netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end),round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2)  from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode *=c.slcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(date2, "yyyy-mm-dd") & "' group by bblflg ", cnn, adOpenStatic
        
        rs7.Open "select DISTINCT round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2)  netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when  'R' then count(b.baleno) end),borah=(case bblflg when 'H' then count(b.baleno) end),round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) netwt,Value=round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)))*avg(d.ratekg),2)  from rm_issh a,rm_issb b,rm_lot d,rm_bale e,RM_ISSUETYPE G where b.lotno=e.lotno and d.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno  and " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND B.ISSTYPE=G.ISSUE_CODE AND G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND A.ISSTYPE='" & ISSTYPE & "'   AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' group by bblflg ", cnn, adOpenStatic
        Print #11, Space(5) & String(130, "-")
        Print #11, Space(47) + " **   Grand Total ** " + Space(8) & Padl(INF(tot6, 0), 9, " ") & Space(3) & Padl(INF(tot7, 0), 6, " ") & Space(6) & Padl(INF(tot9, 2), 14, " "); Space(1); Padl(INF(tot10, 2), 20, " ")
        Print #11, Space(5) & String(130, "-"); Chr(12)
        Print #11, Chr(12)
        Close #11
'         z = FreeFile
'        Open "C:\TIPW.bat" For Output As #11
'        Print #11, "cd\"
'        Print #11, "C:"
'        Print #11, "cd\"
'        Print #11, "type TIPW.TXT>prn"
'        Close #11
'        RPTV.txtfile = "C:\TIPW.TXT"
'        RPTV.Batfile = "C:\TIPW.bat"
Call KALBATPROCESS("TIPW")

 
Exit Sub
TIPW11_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TIPW11 of Module Transfrvarietywise"

End Sub


Public Sub TIPW11(Date1 As String, Date2 As String, DIVNAME As String, ISSTYPE As String, footerstr As String)
On Error GoTo TIPW11_Error
    Set cnn = New Connection
    cnn.Provider = "MSDATASHAPE"
    cnn.Open connectstring
    Set RPTV = New Report.ReportView
    S = FreeFile
    Close #11
    Screen.MousePointer = 0
'    Open "C:\TIPW.TXT" For Output As #11
Open KALFOLDERDATA & "\TIPW.TXT" For Output As #11
    pg1 = 1
    Co = 0
    Print #11, Chr(15)
    z = FreeFile
    Call LotstockRepHeader1(pg1, DIVNAME, ISSTYPE)
    tot6 = 0
    tot7 = 0
    tot8 = 0
    tot9 = 0
    tot10 = 0
    isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
    Set rs5 = New Recordset
    If Trim(ISSTYPE) = "A" Then
        rs5.Open "select distinct d.varcode,z.varname,A.ISSTYPE,c.issue_desc as description from rm_issh a,rm_issb b,rm_lot d,rm_Var z,RM_ISSUETYPE C where C.ISSTYPE='T' AND C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND d.varcode=z.varcode and b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "' ORDER BY A.ISSTYPE", cnn, adOpenStatic
    Else
        rs5.Open "select distinct d.varcode,z.varname,A.ISSTYPE,c.issue_desc as description  from rm_issh a,rm_issb b,rm_lot d,rm_Var z,RM_ISSUETYPE C where C.ISSTYPE='T' AND C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND d.varcode=z.varcode and b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(f1, "yyyy-mm-dd") & "' and '" & Format(t1, "yyyy-mm-dd") & "' AND A.ISSTYPE='" & ISSTYPE & "'  ORDER BY A.ISSTYPE", cnn, adOpenStatic
    End If
    If rs5.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Close #11
        Exit Sub
    End If
    
        isstypeg = ""
        Do While Not rs5.EOF
            Co = Co + 1
            If Co >= PageLen - 3 Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader1(pg1, DIVNAME, ISSTYPE)
            End If
                        
            If isstypeg <> rs5("isstype") Then
                If ISSTYPEREG <> "" Then
                If ISSTYPE = "A" Then
                    Print #11,
                    Print #11, Space(47) + " ** Variety Total ** " + Space(8) & Padl(INF(isstot1, 0), 9, " ") & Space(3) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " "); Space(1); Padl(INF(isstot4, 2), 20, " ")
                    Print #11,
                    Co = Co + 3
                    isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
                End If
                End If
                Print #11, Space(5) & Padr(rs5("isstype"), 10, " ") & Space(5) & Padr(rs5("description"), 20, " ")
                isstypeg = rs5("isstype")
                Co = Co + 1
            End If
                        
            Set rs7 = New Recordset
            
            'rs7.Open "select distinct a.slcode,slname,b.lotno,d.plotno,b.docdt,varcode, a.cntcd,round(sum(b.ACTISSKGS),2) netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end),round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2)  from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode *=c.slcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(date2, "yyyy-mm-dd") & "' and d.varcode = '" & rs5(0) & "'  group by a.slcode,d.plotno,slname,b.lotno,b.docdt,varcode, a.cntcd,d.bales,bblflg,ratekg,b.ACTISSKGS   order by a.slcode,slname,b.lotno,b.docdt", cnn, adOpenStatic
            
            rs7.Open "select distinct a.RDIVCODE,C.DIVNAME,b.lotno,d.plotno,b.docdt,b.varcode, a.cntcd,round(Sum(isnull(b.actisskgs,0)),2)  netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end), borah=(case bblflg when 'H' then count(b.baleno) end),round(Sum(isnull(b.actisskgs,0)),2) netwt,Value=round((sum(isnull(b.actisskgs,0)))*ISNULL(D.RATEKG,0),2)  from rm_issh a,rm_issb b,PP_DIVMAS c,rm_lot d,RM_ISSUETYPE G where " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND B.ISSTYPE=G.ISSUE_CODE AND  G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and C.DIVCODE=A.RDIVCODE and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and d.varcode = '" & rs5(0) & "' AND A.ISSTYPE='" & rs5("ISSTYPE") & "' and d.lotyear='" & Year(yfdate) & "' group by a.RDIVcode,d.plotno,C.DIVNAME,b.lotno,b.docdt,b.varcode, a.cntcd,bblflg,ratekg,D.RATECY order by a.RDIVCode,C.DIVname,b.lotno,b.docdt", cnn, adOpenStatic
            
            Set RS8 = New Recordset
            RS8.Open "select distinct a.RDIVCODE,C.DIVNAME,b.lotno,d.plotno,b.docdt,D.varcode, a.cntcd,round(sum(b.ACTISSKGS),2),bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when  'R' then count(b.baleno) end),borah=(case bblflg when 'H' then count(b.baleno) end)" & _
                    ",round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2),b.baleno from rm_issh a,rm_issb b,PP_DIVMAS c,rm_lot d,RM_ISSUETYPE G where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND  B.ISSTYPE=G.ISSUE_CODE AND G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and A.RDIVCODE=C.DIVCODE and a.docno=b.docno and a.docdt=b.docdt  AND A.ISSTYPE='" & rs5("ISSTYPE") & "'  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and d.varcode = '" & rs5(0) & "' and d.lotyear='" & Year(yfdate) & "' group by a.RDIVcode,d.plotno,C.DIVName,b.lotno,b.docdt,D.varcode, a.cntcd,bblflg,ratekg,baleno " & _
                    " order by a.RDIVcode,C.DIVname,b.lotno,b.docdt", cnn, adOpenStatic
            
            br = RS8.RecordCount
            br1 = RS8.RecordCount
            If RS8("bales") <> "" Then
                br1 = 0
            Else
                br = 0
            End If
            tot1 = 0
            tot2 = 0
            tot3 = 0
            tot4 = 0
            tot5 = 0
          
            division = ""
            DOCDT = ""
          
            Do While Not rs7.EOF
                Set Namers = New Recordset
                Namers.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs7("VARCODE") & "'", db, adOpenStatic
                If division = rs7("divname") And DOCDT = rs7("docdt") Then
                    Print #11, Space(5) & Padr("", 46, " ") & Space(1) & Padl("", 10, " "); Padl(rs7("lotno"), 8, " "); Padl(rs7("plotno"), 8, " "); Space(1); Padl(INF(rs7("BALES"), 0), 6, " ") & Space(3) & Padl(INF(rs7("BORAH"), 0), 6, " ") & Space(1) & Padl(INF(rs7("netwt"), 2), 19, " ") & Space(2) & Padl(INF(rs7("value"), 2), 19, " ")
                Else
                    Print #11, Space(5) & Padr(rs7("DIVname"), 46, " ") & Space(1) & Padl(rs7("docdt"), 10, " "); Padl(rs7("lotno"), 8, " "); Padl(rs7("plotno"), 8, " "); Space(1); Padl(INF(rs7("BALES"), 0), 6, " ") & Space(3) & Padl(INF(rs7("BORAH"), 0), 6, " ") & Space(1) & Padl(INF(rs7("netwt"), 2), 19, " ") & Space(2) & Padl(INF(rs7("value"), 2), 19, " ")
                End If
                Co = Co + 1
            If Co >= PageLen Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader1(pg1, DIVNAME, ISSTYPE)
            End If
                tot1 = tot1 + rs7("bales")  'bales
                tot2 = tot2 + rs7("borah") 'bora
                tot3 = tot3 + rs7(11)   'ratekgs
                tot4 = tot4 + rs7(9)    'qty
                tot5 = tot5 + rs7("value")   'value
                
                isstot1 = isstot1 + rs7("bales")
                isstot2 = isstot2 + rs7("borah")
                isstot3 = isstot3 + rs7(9)
                isstot4 = isstot4 + rs7("value")
                
                tot6 = tot6 + rs7("bales")      'grand bales
                tot7 = tot7 + rs7("borah")      'grand bora
                tot8 = tot8 + rs7(10)           'grdand ratekgs
                tot9 = tot9 + rs7(11)            'grand qty
                tot10 = tot10 + rs7("value")    'grand value
                division = rs7("divname")
                DOCDT = rs7("docdt")
                rs7.MoveNext
                
            Loop
            If rs7.RecordCount > 1 Then
            Print #11,
            Print #11, Space(47) + " ** Variety Total ** " + Space(8) & Padl(INF(tot1, 0), 9, " ") & Space(3) & Padl(INF(tot2, 0), 6, " ") & Space(6) & Padl(INF(tot3, 2), 14, " "); Space(1); Padl(INF(tot5, 2), 20, " ")
            Co = Co + 2
            If Co >= PageLen Then
                Print #11, Space(5) & String(130, "-"); Chr(12)
                pg1 = pg1 + 1
                Co = 0
                Call LotstockRepHeader1(pg1, DIVNAME, ISSTYPE)
            End If
            End If
            rs5.MoveNext
    Print #11,
        Loop
    
'        If ISSTYPE = "A" Then
'                Print #11,
'                Print #11, Space(47) + " ** Variety Total ** " + Space(8) & Padl(INF(isstot1, 0), 9, " ") & Space(3) & Padl(INF(isstot2, 0), 6, " ") & Space(6) & Padl(INF(isstot3, 2), 14, " "); Space(1); Padl(INF(isstot4, 2), 20, " ")
'                Print #11,
'                isstot1 = 0: isstot2 = 0: isstot3 = 0: isstot4 = 0:
'        End If
        If Co >= PageLen Then
            Print #11, Space(5) & String(124, "-"); Chr(12)
            pg1 = pg1 + 1
            Co = 0
            Call LotstockRepHeader1(pg1, DIVNAME, ISSTYPE)
        End If
        
        Set rs7 = New Recordset
        'rs7.Open "select round(sum(b.ACTISSKGS),2) netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when 'R' then count(b.baleno) end),round(sum(b.ACTISSKGS),2) netwt,Value=round(avg(d.ratekg)*sum(b.ACTISSKGS),2)  from rm_issh a,rm_issb b,fa_slmas c,rm_lot d where b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and a.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.slcode *=c.slcode   and a.docno=b.docno and a.docdt=b.docdt  AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(date2, "yyyy-mm-dd") & "' group by bblflg ", cnn, adOpenStatic
        
        rs7.Open "select DISTINCT round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2)  netwt,bales=(case bblflg when 'B' then count(b.baleno)  end), borah=(case bblflg when  'R' then count(b.baleno) end),borah=(case bblflg when 'H' then count(b.baleno) end),round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) netwt,Value=round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0)))*avg(d.ratekg),2)  from rm_issh a,rm_issb b,rm_lot d,rm_bale e,RM_ISSUETYPE G where b.lotno=e.lotno and d.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno  and " & _
                     " b.lotno=d.lotno and b.lotdt=d.lotdt and b.catcd=d.catcd  and a.isstype=b.isstype and A.ISSTYPE=G.ISSUE_CODE AND B.ISSTYPE=G.ISSUE_CODE AND G.isstype='T' and a.divcode=b.divcode and a.divcode=d.divcode and b.divcode=d.divcode and a.docno=b.docno and a.docdt=b.docdt  AND A.ISSTYPE='" & ISSTYPE & "'   AND a.divcode='" & Divcode & "' and a.docdt Between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' group by bblflg ", cnn, adOpenStatic
        Print #11, Space(47) + " **   Grand Total ** " + Space(8) & Padl(INF(tot6, 0), 9, " ") & Space(3) & Padl(INF(tot7, 0), 6, " ") & Space(6) & Padl(INF(tot9, 2), 14, " "); Space(1); Padl(INF(tot10, 2), 20, " ")
        Print #11, Space(5) & String(130, "-"); Chr(12)
        'REPINDEX = 15
         Call footermod(CInt(11), footerstr, 85)
        Print #11, Chr(12)
        Close #11
'         z = FreeFile
'        Open "C:\TIPW.bat" For Output As #11
'        Print #11, "cd\"
'        Print #11, "C:"
'        Print #11, "cd\"
'        Print #11, "type TIPW.TXT>prn"
'        Close #11
'        RPTV.txtfile = "C:\TIPW.TXT"
'        RPTV.Batfile = "C:\TIPW.bat"

Call KALBATPROCESS("TIPW")
 
Exit Sub
TIPW11_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TIPW11 of Module Transfrvarietywise"

End Sub
Public Sub LotstockRepHeader1(pg1 As Integer, DIVNAME As String, iss As String)
          a = a1
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #11,
          SR = CStr(Format((pdate), "dd/mm/yyyy"))
          Print #11, Space(3) + Chr(27) + "E" + "Transfer Issue " + Chr(27) + "F" + Space(1) + " from" + Space(12) + Format(f1, "DD/MM/YYYY") + " to " + Format(t1, "DD/MM/YYYY"); Space(1); CStr(SR) + Space(1) + "Pg.:" + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE("Option : Variety wise", 80, " ") + Chr(27) + "F"
          Print #11, Space(5) + String(130, "-")
          Print #11, Space(5) + Padr("IssueType", 10, " ") + Space(5) + Padr("Description", 20, " ")
          Print #11, Space(5) + "Variety                                          Trans." & "      Mill   Party"
          Print #11, Space(5) + "Division Name" + Space(38) + "Date" + Space(4); "Lot No" + Space(2); "Lot No"; Space(2) + "Bales" + Space(4) + "Borah" + Space(10) + "Net Weight" + Space(16) + "Value"
          Print #11, Space(5) & String(130, "-")
          Co = Co + 10
End Sub
Public Sub LotstockRepHeader2(pg1 As Integer, DIVNAME As String, iss As String)
          a = a1
          Print #11, Chr(18)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #11,
          SR = CStr(Format((pdate), "dd/mm/yyyy"))
          Print #11, Space(3) + Chr(27) + "E" + "Transfer Issue " + Chr(27) + "F" + Space(1) + " from" + Space(12) + Format(f1, "DD/MM/YYYY") + " to " + Format(t1, "DD/MM/YYYY"); Space(1); CStr(SR) + Space(1) + "Pg.:" + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #11, Space(5) + Chr(27) + "E" + CENTRE("Option : Date wise", 80, " ") + Chr(27) + "F"
          Print #11, Space(5) + String(130, "-")
          Print #11, Space(5) + Padr("IssueType", 10, " ") + Space(5) + Padr("Description", 20, " ")
          Print #11, Space(5) + "                                                 Trans." & "      Mill   Party"
          Print #11, Space(5) + "Division Name" + Space(38) + "Date" + Space(4); "Lot No" + Space(2); "Lot No"; Space(2) + "Bales" + Space(4) + "Borah" + Space(10) + "Net Weight" + Space(16) + "Value"
          Print #11, Space(5) & String(130, "-")
          Co = Co + 10
End Sub

