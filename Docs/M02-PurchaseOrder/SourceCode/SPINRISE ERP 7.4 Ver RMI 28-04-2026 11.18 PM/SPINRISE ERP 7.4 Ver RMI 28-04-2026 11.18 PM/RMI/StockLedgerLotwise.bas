Attribute VB_Name = "StockLedgerLotwise"
Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim Co As Integer
Public Sub StockLReport(U As String, V As String)
Dim rs1 As Recordset
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim RESULT As Recordset
Dim RPTV As Report.ReportView
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
Dim S As String

Dim cnn As Connection
Set cnn = New Connection

Set rs1 = New Recordset
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs1 = New Recordset
rs1.Open "SHAPE {select distinct a.arrdt,lotno from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  a.lotdt <= '" & Format(V, "yyyy-mm-dd") & "'  and (round(a.netwt,2)) > 0   AND LOTYEAR ='" & Year(yfdate) & "' group by arrdt,lotno}  AS Command8 APPEND " & _
         "({select a.lotdt,a.lotno,A.arrdt,c.slname,e.catname,d.varname,a.unit,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,a.plotno as partylot,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.ratecandy,a.val as ratekg,a.Modusrid,a.Moddate from (select distinct a.arrdt,a.Modusrid,a.Moddate,a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO,round((ratecy),0) as ratecandy,a.supcd,a.varcode from rm_lot a,rm_var c  where   " & _
         " a.DIVCODE ='" & Divcode & "' and  a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a,(Select b.arrdt,a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  b.lotyear='" & Year(yfdate) & "'  group by b.arrdt,a.lotno,a.lotdt,a.catcd)b,fa_slmas c,rm_var d,rm_cat e where c.slcode=a.supcd and e.catcd=a.catcd and d.varcode=a.varcode and a.lotno*=b.lotno and a.lotdt*=b.lotdt  " & _
         " and a.catcd*=b.catcd group by A.arrdt,a.lotno,a.lotdt,a.unit,a.plotno,a.ratecandy,a.val,a.Modusrid,a.Moddate,a.bales,b.bales," & _
         " a.stock,b.isskgs,c.slname,e.catname,d.varname having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.lotno} " & _
         " AS Command9 RELATE 'arrdt' TO 'arrdt' ,'lotno' TO 'lotno') AS Command9", cnn, adOpenStatic, adLockBatchOptimistic
         
         
If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If

Set Rs = New Recordset
Set Rs = rs1("command9").UnderlyingValue

Set RPTV = New Report.ReportView
a = FreeFile

Close
'Open "C:\st.TXT" For Output As #a
Open KALFOLDERDATA & "\st.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Call PartyHeader(pg1, Co, U, V, DIVNAME)

rs1.MoveFirst

Do While Not rs1.EOF
    If Rs.RecordCount <> 0 Then
        Print #a,
        Co = Co + 1
        If Co >= PageLen Then
            Print #a, Space(5) + String(130, "-");
            Print #a, Chr(12)
            Co = 0
            pg1 = pg1 + 1
            Call PartyHeader(pg1, Co, U, V, DIVNAME)
        End If
               
        Print #a, Space(5) + Padr((CStr(rs1("arrdt"))), 20, " ")
        
        Co = Co + 1
        If Co >= PageLen Then
            Print #a, Space(5) + String(130, "-");
            Print #a, Chr(12)
            Co = 0
            pg1 = pg1 + 1
            Call PartyHeader(pg1, Co, U, V, DIVNAME)
        End If

    End If
        Do While Not Rs.EOF
            
            Set ResultRs = New Recordset
            
                          
            ResultRs.Open "select a.lotno,a.lotdt,a.catcd,a.varname,isnull(a.bales,0)-isnull(b.bales,0) as bales,a.unit,round(isnull(a.stock,0)-isnull(b.isskgs,0),2) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2),a.plotno,a.ratecandy,a.val as ratekg,a.Modusrid,a.Moddate from ( select distinct a.Modusrid,a.Moddate,a.LOTNO,a.LOTDT,catcd=case when a.CATCD='C'  THEN 'C' when A.CATCD='P' then 'P' when a.catcd='V' then 'V' end ,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0) end,Unit = case when a.bblflg='R' then 'Borah' else 'Bales'end,round(isnull(a.netwt,0),2) 'Stock',isnull(ratekg,0) 'Rate/qu',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO,round((ratecy),0) as ratecandy from rm_lot a,rm_var c  where   " & _
                          " a.DIVCODE ='" & Divcode & "' and  a.varcode =c.varcode and A.LOTDT <= '" & Format(V, "yyyy-mm-dd") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "')a,(Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),2) as Isskgs from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(V, "yyyy-mm-dd") & "' and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and  b.lotyear='" & Year(yfdate) & "'  group by a.lotno,a.lotdt,a.catcd)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  " & _
                          " and a.catcd*=b.catcd and a.lotno between " & Rs(1) & " and " & Rs(1) & " group by a.lotno,a.lotdt,a.catcd,a.varname,a.unit,a.plotno,a.ratecandy,a.val,a.Modusrid,a.Moddate,a.bales,b.bales," & _
                          " a.stock,b.isskgs having isnull(a.bales,0)-isnull(b.bales,0) > 0 and round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 and round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.val,2) > 0 order by a.lotno", db, adOpenStatic
                          
            
            Print #a, Space(5) + Padr((CStr(Rs(1))), 6, " ") + Space(2) + Padr(Rs(0), 10, " ") + Space(2) + Padl(Rs("partylot"), 10, " ") + Space(1) + Padr(Rs(3), 46, " ") + Padr(Rs(4), 10, " ") + Padr(Rs(5), 16, " ") + Padl(Rs(7), 5, " ") + Space(1) + Padr(IIf(Rs(7) > 0, Rs(6), " "), 5, " ") + Padl(IIf(ResultRs("stock") < 1, Format(ResultRs("stock"), "#0.000"), INF(ResultRs("stock"), 2)), 16, " ")
'                                          a.lotno                 a.lotdt                b.slname                   partylot                             c.catname                                        d.varname                 unit                      a.bales                             a.netwt0

           Co = Co + 1
    If Co >= PageLen Then
        Print #a, Space(5) + String(130, "-");
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Co = 0
        Call PartyHeader(pg1, Co, U, V, DIVNAME)
    End If
      
            tot1 = tot1 + IIf(IsNull(Rs(7)), 0, Rs(7))
            'tot2 = tot2 + IIf(IsNull(RS(8)), 0, RS(8))
            tot2 = tot2 + IIf(IsNull(ResultRs("stock")), 0, ResultRs("stock"))
            Rs.MoveNext
        Loop
    If Co >= PageLen Then
        Co = 0
        Print #a, Space(5) + String(130, "-")
        Print #a, Chr(12)
        pg1 = pg1 + 1
        Call PartyHeader(pg1, Co, U, V, DIVNAME)
    End If
    rs1.MoveNext
Loop



Print #a, Space(5) + String(130, "-")
Print #a, Space(78) + " ** Grand Total **" + Padl(INF(tot1, 0), 17, " ") + Padl(INF(tot2, 2), 22, " ")
Print #a, Space(5) + String(130, "-")
Print #a, Chr(18)
Print #a, Chr(12)
Close #a
a = FreeFile
'Open "c:\st.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type st.txt>prn"
'Close #a
'RPTV.txtfile = "c:\st.txt"
'RPTV.Batfile = "c:\st.bat"
Call KALBATPROCESS("st")
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, U As String, V As String, DIVNAME As String)
          Print #a, Chr(18)
          Co = Co + 1
          Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Co = Co + 1
          SR = CStr(pdate) + Space(2)
          Print #a,
          Co = Co + 1
          Print #a, Space(3) + Chr(27) + "E" + "Lotwise Lot Stock Position" + Chr(27) + "F" + " From  " & Space(1) & Format(U, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(V, "dd/mm/yyyy")
          Co = Co + 1
          Print #a, Space(52) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Co = Co + 1
          Print #a, Space(5) + String(130, "-")
          Co = Co + 1
          Print #a, Space(5) + "Arrival Date"
          Co = Co + 1
          Print #a, Space(5) + "Lot No    Date      Pty.lotNo. Party                                         Category  Variety           Qty Unit              Kgs"
          Co = Co + 1
          Print #a, Space(5) + String(130, "-")
          Co = Co + 1
End Sub
