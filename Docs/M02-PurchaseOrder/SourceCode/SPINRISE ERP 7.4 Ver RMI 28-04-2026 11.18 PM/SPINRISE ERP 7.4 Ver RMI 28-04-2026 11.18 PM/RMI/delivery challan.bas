Attribute VB_Name = "Module2"
Dim rs1 As Recordset
Dim Rs As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim rsP As Recordset
Dim TEMP As New Recordset
Dim PageLen As Integer
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim transname As String
Dim purchmode As String
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
Dim rateperkg As Double
Dim cotval As Double
Dim pcotval As Double
Dim pnetvalue As Double
Dim netvalue As Double
Dim totalvalue As Double
Dim partybill As Double
Dim diff As Double
Dim diffwt As Double
Dim head As String
Dim s As String
Dim r As String
Dim a As Integer
Dim RsGin As Recordset
Dim Cnn As Connection
Dim vah1 As String
Dim vah2 As String
Dim vah3 As String
Dim vah4 As String
Dim vah5 As String
Dim vah6 As String




'cnn.Provider = "MSDATASHAPE"


'Dim pagelen  As Integer
'RS1 = New Recordset
'cnn.Open connectstring

Public Sub enjoyful(F_Date As String, typeflg As String, LtE As Integer, DIVCODE2 As String)

Dim test As String
Dim J, PAGE, k, i, N As Integer
Dim dr, time1, Form1, inv, Invdt As String
Dim B As Integer

Set rptv = New Report.ReportView
a = FreeFile
Close

    Open KALFOLDERDATA + "recpt_reg.TXT" For Output As #a
    pg1 = 1
    co = 0
    totalvalue = 0
    PAGE = 60
    
    Set Cnn = New Connection
    Cnn.Open connectstring
    
    Set rsP = New Recordset
          
          
rsP.Open " select distinct v.varcode,v.varname,sum(b.grwt)as grwt,sum(b.tarewt)as tarewt,sum(b.netwt)as netwt,h.vehicleno,count(b.baleno) as baleno from rm_var v ,rm_bale b,rm_issh h ,rm_issb i where" & _
          " v.varcode=b.varcode and v.varcode=i.varcode and b.divcode=i.divcode and" & _
          " i.Catcd = b.Catcd And i.lotno = b.lotno And i.Lotdt = b.Lotdt And i.lottype = b.lottype And i.Divcode = h.Divcode And i.isstype = h.isstype And " & _
          " i.docno=h.docno and i.docdt=h.docdt and i.baleno=b.baleno and I.ISSTYPE='" & typeflg & "'" & _
          " AND I.DOCNO='" & LtE & "' AND I.DOCDT='" & Format(F_Date, "yyyy-mm-dd") & "' " & _
          " group by v.varcode,v.varname,h.vehicleno", Cnn, adOpenDynamic, adLockOptimistic
                   
          'and  i.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'
          
 If rsP.EOF Then
    MsgBox " No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
 End If
 
 tot10 = 0: tot11 = 0: tot12 = 0: tot13 = 0
 
 veh = rsP("vehicleno")
  
 Set rs5 = New Recordset
 rs5.Open " select divname,isnull(add1,'')add1,isnull(add2,'')add2,isnull(add3,'')add3,isnull(city,'')city,isnull(pincode,'')pincode,isnull(phone1,'')phone1,isnull(phone2,'')phone2,isnull(fax,'')fax,isnull(email,'')email,isnull(tngst,'')tngst,isnull(cgst,'')cgst from pp_divmas WHERE DIVCODE = '" & Divcode & "' ", Cnn, adOpenDynamic, adLockOptimistic
 If rs5.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Exit Sub
 End If
    Set Rs = New Recordset
    Rs.Open " select divname,isnull(add1,'')add1,isnull(add2,'')add2,isnull(add3,'')add3,isnull(city,'')city,isnull(pincode,'')pincode,isnull(phone1,'')phone1,isnull(phone2,'')phone2,isnull(fax,'')fax,isnull(email,'')email,isnull(tngst,'')tngst,isnull(cgst,'')cgst from pp_divmas WHERE DIVCODE = '" & Divcode & "' ", Cnn, adOpenDynamic, adLockOptimistic
    Print #a, Space(1)
    Print #a, Space(1) + Chr(27) + "E" + Space(35) + Padr("DELIVERY CHALLAN", 20, " ") + Chr(27) + "F" + Space(10) + "Doc.No : " + Padr(LtE, 6, " ")
    Print #a, Space(1) + "                                        |                          Date : " + Padr(Format(F_Date, "dd/mm/yy"), 10, " ")
    Print #a, Space(1) + "  From                                  |   To"
    Print #a, Space(1) + Space(2) + Chr(27) + "E" + Padr(divname, 38, " ") + Chr(27) + "F" + Chr(27) + "E" + "|   M/S" + Padr(rs5("divname"), 42, " ") + Chr(27) + "F"
    Print #a, Space(1) + Space(2) + Padr(Trim(Rs("add1")), 38, " ") + "|" + Space(3) + Trim(rs5("add1"))
    Print #a, Space(1) + Space(2) + Padr(Trim(Rs("add2")), 38, " ") + "|" + Space(3) + Trim(rs5("add2"))
    Print #a, Space(1) + Space(2) + Padr(Trim(Rs("city") & "-" & Trim(Rs("pincode"))), 37, " ") + " |" + Space(3) + Trim(rs5("City")) & "-" & Trim(rs5("pincode"))
    Print #a, Space(1) + "------------------------------------------------------------------------------------------"
    Print #a, Space(1) + "                Please receive the undermentioned goods order & condition "
    Print #a, Space(1) + "------------------------------------------------------------------------------------------"
    Print #a, Space(1) + "                   No.of "
    Print #a, Space(1) + "Quality         Borah/Bales     Gross Wt.       Tare       Nett.Wt         Remarks  "
    Print #a, Space(1) + "------------------------------------------------------------------------------------------"
    co = co + 15
   
    
    Do While Not rsP.EOF
        Set rs1 = New Recordset
        rs1.Open "SELECT COUNT(BALENO)AS BALENO FROM RM_ISSB WHERE ISSTYPE='" & typeflg & "'" & _
                 " AND varcode='" & rsP("varcode") & "' and DOCNO='" & LtE & "' AND DOCDT='" & Format(F_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", Cnn, adOpenDynamic, adLockOptimistic
          
    Print #a, Space(1) + Padr(rsP("varname"), 20, " ") + Space(2) + Padl(rs1("BaleNo"), 5, " ") + Space(2) + Padl(INF(rsP("grwt"), 3), 12, " ") + Space(2) + Padl(INF(rsP("tarewt"), 3), 9, " ") + Space(2) + Padl(INF(rsP("netwt"), 3), 12, " ") + Space(2)
            
                 tot10 = tot10 + val(rs1("BaleNo"))
                 tot11 = tot11 + val(rsP("grwt"))
                 tot12 = tot12 + val(rsP("tarewt"))
                 tot13 = tot13 + val(rsP("netwt"))
                 
        rsP.MoveNext
    Loop
    
    Print #a, Space(1) + "------------------------------------------------------------------------------------------"
    Print #a, Space(1) + "Weight list of      " + Space(2) + Padl(tot10, 5, " ") + Space(2) + Padl(INF(tot11, 3), 12, " ") + Space(2) + Padl(INF(tot12, 3), 9, " ") + Space(2) + Padl(INF(tot13, 3), 12, " ") + Space(2)
    Print #a, Space(1) + "------------------------------------------------------------------------------------------"
    Print #a,
    co = co + 4
    
  'SELECT distinct isskgs, b.baleno FROM rm_issb i,rm_bale b WHERE  i.BALENO=B.BALENO and
    Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
    
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table ach"
    End If
    
   DB.Execute "create table ACH (b1 numeric(5,0),g1 numeric(10,3),b2 numeric(5,0),g2 numeric(10,3),b3 numeric(5,0),g3 numeric(10,3),b4 numeric(5,0),g4 numeric(10,3),b5 numeric(5,0),g5 numeric(10,3),b6 numeric(5,0),g6 numeric(10,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(5,0),sno numeric(6),varcode varchar(15))"
    
   Set rs2 = New Recordset
   rs2.Open "SELECT distinct i.varcode,i.isskgs as grwt,b.baleno,(select varname from RM_VAR where varcode=i.varcode) varname FROM rm_issb i,rm_bale b WHERE  i.BALENO=B.BALENO and i.docno='" & LtE & "' and i.docdt='" & Format(F_Date, "yyyy-mm-dd") & "' and i.isstype='" & typeflg & "' order by i.varcode,b.baleno", Cnn, adOpenStatic, adLockBatchOptimistic
   
    Count = rs2.RecordCount
    
    If rs2.RecordCount = 0 Then
        Exit Sub
    End If
    
    e = rs2.RecordCount
    
    Set rsvarcode = New Recordset
    Set rsvarcode = rs2
    
    rs2.MoveFirst
    B = 0
    SNO = 0
    gr = 0
    Do While Not rs2.EOF
            SNO = SNO + 1
            gr = gr + 1
            B = B + 1
            If gr <= 10 Then
                If test = "" Or test = rs2("varcode") Then
                    'DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'" & IIf(IsNull(rs2("varcode")), 0, rs2("varcode")) & "'," & sno & ")"
                     DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno) values (" & B & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'" & IIf(IsNull(rs2("varcode")), 0, rs2("varcode")) & "'," & SNO & ")"
                    If test = "" Then test = rs2("varcode")
                ElseIf test <> rs2("varcode") Then
                    If SNO <= 10 Then
                        For J = SNO To 10
                            DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno) values (0,0,0,0,0,0,0,0,0,0,0,0,'" & IIf(IsNull(rs2("varcode")), 0, rs2("varcode")) & "'," & SNO & ")"
                          SNO = SNO + 1: gr = gr + 1
                        Next J
                    Else
                            For J = SNO To 70
                                DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno) values (0,0,0,0,0,0,0,0,0,0,0,0,'" & IIf(IsNull(rs2("varcode")), 0, rs2("varcode")) & "'," & SNO & ")"
                                SNO = SNO + 1: gr = gr + 1
                            Next J
                    End If
                End If
            End If
            
            If gr > 10 And gr <= 20 Then
               If test = rs2("varcode") Then
                    
                    If SNO <= 20 Then
                       SNO = gr
                     End If
                     
                     If SNO > 61 And SNO <= 80 Then
                       SNO = 60 + gr
                     End If
                        
                    i = (SNO - 10)
                       'DB.Execute "update ACH set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                        DB.Execute "update ACH set b2=" & B & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                    If gr = 60 Then
                     gr = 0
                    End If
               ElseIf test <> rs2("varcode") Then
                    If gr = 11 Then
                         i = (SNO - 10)
                         DB.Execute "update ACH set b2=" & B & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                         If gr = 60 Then
                             gr = 0
                         End If
                          test = rs2("varcode")
                    Else
                        gr = 21
                        test = rs2("varcode")
                    End If
               End If
            End If
                        
            If gr > 20 And gr <= 30 Then
              If test = rs2("varcode") Then
                     If SNO <= 30 Then
                          SNO = gr
                     End If
                     If SNO > 61 And SNO <= 90 Then
                          SNO = 60 + gr
                     End If
                     i = (SNO - 20)
                     DB.Execute "update ACH set b3=" & B & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                    If gr = 60 Then
                     gr = 0
                    End If
                ElseIf test <> rs2("varcode") Then
                       If gr = 21 Then
                             i = (SNO - 20)
                             DB.Execute "update ACH set b3=" & B & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                             If gr = 60 Then
                              gr = 0
                             End If
                            test = rs2("varcode")
                       Else
                            gr = 31
                            test = rs2("varcode")
                       End If
               End If
            End If
            
             If gr > 30 And gr <= 40 Then
             
                If test = rs2("varcode") Then
                    If SNO <= 40 Then
                          SNO = gr
                    End If
                    If SNO > 61 And SNO <= 100 Then
                          SNO = 60 + gr
                    End If
                    i = (SNO - 30)
                        DB.Execute "update ACH set b4=" & B & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                       If gr = 60 Then
                        gr = 0
                       End If
                ElseIf test <> rs2("varcode") Then
                      If gr = 31 Then
                          i = (SNO - 30)
                         DB.Execute "update ACH set b4=" & B & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                          If gr = 60 Then
                            gr = 0
                          End If
                          test = rs2("varcode")
                       Else
                            gr = 41
                            test = rs2("varcode")
                      End If
                End If
                
            End If
            
            If gr > 40 And gr <= 50 Then
                If test = rs2("varcode") Then
                    If SNO <= 50 Then
                          SNO = gr
                    End If
                    If SNO > 61 And SNO <= 110 Then
                      SNO = 60 + gr
                    End If
                   i = (SNO - 40)
                    DB.Execute "update ACH set b5=" & B & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                   If gr = 60 Then
                    gr = 0
                   End If
                Else
                      If gr = 41 Then
                           i = (SNO - 40)
                         DB.Execute "update ACH set b5=" & B & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                           If gr = 60 Then
                            gr = 0
                           End If
                           test = rs2("varcode")
                      Else
                            gr = 51
                            test = rs2("varcode")
                      End If
                End If
            End If
            
            
             If gr > 50 And gr <= 60 Then
               If test = rs2("varcode") Then
                     If SNO <= 60 Then
                       SNO = gr
                     End If
                     If SNO > 61 And SNO <= 120 Then
                       SNO = 60 + gr
                     End If
                    i = (SNO - 50)
                      DB.Execute "update ACH set b6=" & B & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                      If gr = 60 Then
                       gr = 0
                      End If
               ElseIf test <> rs2("varcode") Then
                     If gr = 51 Then
                             test = rs2("varcode")
                             i = (SNO - 50)
                            'DB.Execute "update ACH set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                            DB.Execute "update ACH set b6=" & B & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",varcode = '" & rs2("varcode") & "' where sno=" & i & "" ', A
                            If gr = 60 Then
                             gr = 0
                            End If
                     Else
                         gr = 1
                         SNO = 61
                           If gr <= 10 Then
                              DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno) values (" & B & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,'" & IIf(IsNull(rs2("varcode")), 0, rs2("varcode")) & "'," & SNO & ")"
                              test = rs2("varcode")
                           End If
                     End If
               End If
             End If
                
            rs2.MoveNext
    Loop
    
    
    pgtot1 = 0
    pgtot2 = 0
    pgtot3 = 0
    pgtot4 = 0
    pgtot5 = 0
    pgtot6 = 0
    B = 0
    
   Set rs2 = New Recordset
   rs2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,varcode,sno FROM ACH", Cnn, adOpenDynamic, adLockOptimistic

    
    pgtot1 = 0
    tot1 = 0
    pgtot2 = 0
    tot2 = 0
    co = co + 4
    rec = 0
        
    Call f1delivery(rsvarcode)
    
    Print #a, Space(1) + "|" + Chr(27) + "E" + Padr(vah1, 14, " ") + "|" + Padr(vah2, 14, " ") + "|" + Padr(vah3, 14, " ") + "|" + Padr(vah4, 14, " ") + "|" + Padr(vah5, 14, " ") + "|" + Padr(vah6, 14, " ") + "|" + Chr(27) + "F"
    co = co + 1
    'Print #a, Space(6) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")
    
    Call Detailed_Receipt_Heading(CInt(pg1), CDbl(e))
    
    rs2.MoveFirst
    
    Do While Not rs2.EOF
    
        If rs2!SNO = 121 Then
           rs2.MoveLast
        End If
         
        If rs2!SNO = 61 Then

          Print #a, Space(1) + Chr(192) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + _
          String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(217)

          Print #a, Space(4) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")
          
          Print #a, Space(1) + Chr(27) + "E" + "|" + Padr(vah7, 14, " ") + "|" + Padr(vah8, 14, " ") + "|" + Padr(vah9, 14, " ") + "|" + Padr(vah10, 14, " ") + "|" + Padr(vah11, 14, " ") + "|" + Padr(vah12, 14, " ") + "|" + Chr(27) + "F"
          
          Print #a, Space(1) + Chr(218) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + _
          String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(191)
          co = co + 4
            pgtot1 = 0
            pgtot2 = 0
            pgtot3 = 0
            pgtot4 = 0
            pgtot5 = 0
            pgtot6 = 0
            co = co + 3
        End If
        
        If rs2!SNO >= 121 Then
        
        
        Else
            Print #a, Space(1) + Chr(179) + IIf(IsNull(rs2(0)) Or rs2(0) = 0, Space(4), Padl((CStr(rs2(0))), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(1)) Or rs2(1) = 0, Space(7), CENTRE(INF(rs2(1), 3), 7, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(2)) Or rs2(2) = 0, Space(4), Padl((CStr(rs2(2))), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(3)) Or rs2(3) = 0, Space(7), CENTRE(INF(rs2(3), 3), 7, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(4)) Or rs2(4) = 0, Space(4), Padl((CStr(rs2(4))), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(5)) Or rs2(5) = 0, Space(7), CENTRE(INF(rs2(5), 3), 7, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(6)) Or rs2(6) = 0, Space(4), Padl((CStr(rs2(6))), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(7)) Or rs2(7) = 0, Space(7), CENTRE(INF(rs2(7), 3), 7, " ")) + Space(1) + Chr(179);
            Print #a, IIf(IsNull(rs2(8)) Or rs2(8) = 0, Space(4), Padl((CStr(rs2(8))), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(9)) Or rs2(9) = 0, Space(7), CENTRE(INF(rs2(9), 3), 7, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(10)) Or rs2(10) = 0, Space(4), Padl(rs2(10), 4, " ")) + Space(1) + Chr(179) + IIf(IsNull(rs2(11)) Or rs2(11) = 0, Space(7), CENTRE(INF(rs2(11), 3), 7, " ")) + Space(1) + Chr(179)
            co = co + 1
            'commented
          ' IIf(IsNull(rs2(6)) OR O, Space(4), Padl((CStr(rs2(6))), 4, " "))
           'Print #a, Space(1) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179) + Space(4) + Space(1) + Chr(179) + Space(8) + Chr(179)
            'Print #a, Space(1) + Chr(179) + Space(5) + Chr(179) + Space(9) + Chr(179) + Space(5) + Chr(179) + Space(9) + Chr(179) + Space(5) + Chr(179) + Space(9) + Chr(179) + Space(5) + Chr(179) + Space(9) + Chr(179);
            
            pgtot1 = pgtot1 + IIf(IsNull(rs2(1)), 0, rs2(1))
            pgtot2 = pgtot2 + IIf(IsNull(rs2(3)), 0, rs2(3))
            pgtot3 = pgtot3 + IIf(IsNull(rs2(5)), 0, rs2(5))
            pgtot4 = pgtot4 + IIf(IsNull(rs2(7)), 0, rs2(7))
            pgtot5 = pgtot5 + IIf(IsNull(rs2(9)), 0, rs2(9))
            pgtot6 = pgtot6 + IIf(IsNull(rs2(11)), 0, rs2(11))
           ' co = co + 1
            rec = rec + 1
         End If
    rs2.MoveNext
    Loop
   B = 0
   
   '*********************************
    ' Print #a, Space(2) + Chr(195) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + _
    String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(180)

           Print #a, Space(1) + Chr(192) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + _
           String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(8, Chr(196)) + Chr(217)

           Print #a, Space(4) + Padl(INF(pgtot1, 3), 12, " ") + Space(3) + Padl(INF(pgtot2, 3), 12, " "); Space(3) + Padl(INF(pgtot3, 3), 12, " ") + Space(3) + Padl(INF(pgtot4, 3), 12, " ") + Space(3) + Padl(INF(pgtot5, 3), 12, " ") + Space(3) + Padl(INF(pgtot6, 3), 12, " ")
           Print #a,
           co = co + 3
    Set rs7 = New Recordset
    rs7.Open "select isnull(Formno,'')Formno,isnull(driver,'') as driver,isnull(invoiceno,'') as invoiceno,isnull(invdate,'') as invdate ,isnull(timeout,'') as timeout,isnull(form,'') as form  from  rm_issh where DOCNO='" & LtE & "' AND DOCDT='" & Format(F_Date, "yyyy-mm-dd") & "' ", DB, adOpenStatic
            
    If rs7.RecordCount > 0 Then
      dr = rs7!driver
      time1 = rs7!timeout
      Form1 = rs7!Form
      FormNo = rs7!FormNo
      If Form1 = "No" Then
          Form1 = "Form"
          FormNo = "Nil"
      End If
      inv = rs7!invoiceno
      Invdt = IIf(IsNull(rs7!invdate), " ", Format(rs7!invdate, "dd/mm/yy"))
    End If
    If co + 6 < PAGE Then
    N = co + 6
    For k = N To PAGE
    Print #a,
    Next
    End If
    Print #a, Space(1) + "Through Vechile No:" + Space(1) + Padr(veh, 16, " ") + "Driver    :" + Space(1) + Padr(dr, 16, " ") + "Time Out:" + Space(1) + Padr(time1, 10, " ")
    Print #a,
    Print #a, Space(1) + Padr(Form1, 18, " ") + ":" + Space(1) + Padr(FormNo, 16, " ") + "Invoice No:" + Space(1) + Padr(inv, 16, " ") + "Date    :" + Space(1) + Padr(Invdt, 10, " ")
    Print #a,
    Print #a,
    Print #a, Space(1) + "Prepared by " + Space(24) + "Checked by" + Space(18) + "Signature"
    
    co = co + 5

    Print #a, Chr(18)
Close #a

a = FreeFile

    
Call KALBATPROCESS("recpt_reg")
Screen.MousePointer = 0

End Sub
Public Sub Detailed_Receipt_Heading(pg1 As Integer, e As Double)

         
    Print #a, Space(1) + Chr(218) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + _
    String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(194) + String(5, Chr(196)) + Chr(194) + String(8, Chr(196)) + Chr(191)
    
   ' Print #a, Space(1) + Chr(179) + "Bl.No" + Chr(179) + "   Kg   " + Chr(179) + "Bl.No" + Chr(179) + "   Kg   " + Chr(179) + "Bl.NO" + Chr(179) + "   Kg   " + _
    Chr(179) + "Bl.No" + Chr(179) + "   Kg   " + Chr(179) + "Bl.No" + Chr(179) + "   Kg   " + Chr(179) + "Bl.No" + Chr(179) + "   Kg   " + Chr(179)
    
    Print #a, Space(1) + Chr(179) + "Sl.No" + Chr(179) + "   Kg   " + Chr(179) + "Sl.No" + Chr(179) + "   Kg   " + Chr(179) + "Sl.NO" + Chr(179) + "   Kg   " + _
    Chr(179) + "Sl.No" + Chr(179) + "   Kg   " + Chr(179) + "Sl.No" + Chr(179) + "   Kg   " + Chr(179) + "Sl.No" + Chr(179) + "   Kg   " + Chr(179)
       
    Print #a, Space(1) + Chr(195) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + _
    String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(8, Chr(196)) + Chr(180)
    co = co + 3
End Sub


Private Sub f1delivery(rsvarcode)
Dim gr As Integer

 vah1 = "": vah2 = "": vah3 = "": vah4 = "": vah5 = "": vah6 = "": vah7 = "":  s1 = "": s2 = "": s3 = "": s4 = "": s5 = "": s6 = "": s7 = ""
 vah8 = "": vah9 = "": vah10 = "": vah11 = "": vah12 = "":    s8 = "": s9 = "": s10 = "": s11 = "": s12 = "":
 
 rsvarcode.MoveFirst
    
    Do While Not rsvarcode.EOF
        gr = gr + 1
        If gr <= 10 Then 'rsvarcode!baleno
          If s1 = "" Then
            vah1 = rsvarcode("VARNAME"):   s1 = rsvarcode!Varcode
          ElseIf s1 <> rsvarcode!Varcode Then
            gr = 11
            vah2 = rsvarcode("VARNAME"):   s2 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 10 And gr <= 20 Then
          If s2 = "" Then
            vah2 = rsvarcode("VARNAME"):    s2 = rsvarcode!Varcode
          ElseIf s2 <> rsvarcode!Varcode Then
            gr = 21
            vah3 = rsvarcode("VARNAME"):   s3 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 20 And gr <= 30 Then
          If s3 = "" Then
            vah3 = rsvarcode("VARNAME"):   s3 = rsvarcode!Varcode
          ElseIf s3 <> rsvarcode!Varcode Then
            gr = 31
            vah4 = rsvarcode("VARNAME"):   s4 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 30 And gr <= 40 Then
          If s4 = "" Then
            vah4 = rsvarcode("VARNAME"):    s4 = rsvarcode!Varcode
          ElseIf s4 <> rsvarcode!Varcode Then
            gr = 41
            vah5 = rsvarcode("VARNAME"):    s5 = rsvarcode!Varcode
          End If
        End If
        
         If gr > 40 And gr <= 50 Then
          If s5 = "" Then
            vah5 = rsvarcode("VARNAME"):   s5 = rsvarcode!Varcode
          ElseIf s5 <> rsvarcode!Varcode Then
            gr = 51
            vah6 = rsvarcode("VARNAME"):    s6 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 50 And gr <= 60 Then
          If s6 = "" Then
            vah6 = rsvarcode("VARNAME"):    s6 = rsvarcode!Varcode
          ElseIf s6 <> rsvarcode!Varcode Then
            gr = 61
            vah7 = rsvarcode("VARNAME"):    s7 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 60 And gr <= 70 Then 'rsvarcode!baleno
          If s7 = "" Then
            vah7 = rsvarcode("VARNAME"):    s7 = rsvarcode!Varcode
          ElseIf s7 <> rsvarcode!Varcode Then
            gr = 71
            vah8 = rsvarcode("VARNAME"):    s8 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 70 And gr <= 80 Then
          If s8 = "" Then
            vah8 = rsvarcode("VARNAME"):    s8 = rsvarcode!Varcode
          ElseIf s8 <> rsvarcode!Varcode Then
            gr = 81
            vah9 = rsvarcode("VARNAME"):    s9 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 80 And gr <= 90 Then
          If s9 = "" Then
            vah9 = rsvarcode("VARNAME"):   s9 = rsvarcode!Varcode
          ElseIf s9 <> rsvarcode!Varcode Then
            gr = 91
            vah10 = rsvarcode("VARNAME"):   s10 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 90 And gr <= 100 Then
          If s10 = "" Then
            vah10 = rsvarcode("VARNAME"):   s10 = rsvarcode!Varcode
          ElseIf s10 <> rsvarcode!Varcode Then
            gr = 101
            vah11 = rsvarcode("VARNAME"):    s11 = rsvarcode!Varcode
          End If
        End If
        
         If gr > 100 And gr <= 110 Then
          If s11 = "" Then
            vah11 = rsvarcode("VARNAME"):   s11 = rsvarcode!Varcode
          ElseIf s11 <> rsvarcode!Varcode Then
            gr = 111
            vah12 = rsvarcode("VARNAME"):    s12 = rsvarcode!Varcode
          End If
        End If
        
        If gr > 110 And gr <= 120 Then
          'If s6 = "" Then
            vah12 = rsvarcode("VARNAME"):   s12 = rsvarcode!Varcode
          'ElseIf s5 <> rsvarcode("VARNAME") Then
           ' vah6 = rsvarcode("VARNAME"):   lot6 = rsvarcode!varcode: s6 = rsvarcode("VARNAME")
          'End If
        End If
        
       rsvarcode.MoveNext
    Loop
    
End Sub

