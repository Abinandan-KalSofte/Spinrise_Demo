Attribute VB_Name = "lotwise_weight_diff"

Dim rsP As New Recordset
Dim rsP1 As New Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer
Dim divname As String

Public Sub Lotwise_Weight_Difference() '(From_date As String, To_date As String,category as string)
Dim rs1 As Recordset
Dim RS As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim pagelen As Integer
divname = "KALPATHARU TEXTILES LIMITED"
Dim result As Recordset
Dim RPTV As Report.ReportView
Dim sr As String
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
Dim s As String

Dim cnn As Connection
Set cnn = New Connection
pagelen = 53
Set rs1 = New Recordset
cnn.Open connectstring
'rs1.Open " SHAPE {select distinct d.varname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "'  group by d.varname}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(u, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' }  AS Command9 RELATE 'varname' TO 'varname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic
'If rs1.EOF Then
'    MsgBox "No Records Found", vbInformation, head
'    Exit Sub
'End If
Set RPTV = New Report.ReportView
a = FreeFile
Close #a
Open "C:\lotwise_diff.TXT" For Output As #a
pg1 = 1
co = 0
Call Lot_wise_Diff(pg1) ', co, u, v)
'rs1.MoveFirst
'Do While Not rs1.EOF
'    Print #a, Space(5) + Padr((CStr(RS(1))), 8, " ") + Padr(RS(0), 17, " ") + Padr(RS(2), 16, " ") + Padr(IIf(IsNull(RS(3)), " ", RS(3)), 41, " ") + Padr(RS(4), 39, " ") + Padr(RS(6), 8, " ") + Padl(CStr(RS(7)), 14, " ") + Padl(CStr(Format(RS(8), "##,###,###.000")), 20, " ")
'    tot1 = tot1 + RS("bales")
'    tot2 = tot2 + RS("borah")
'    tot3 = tot2 + RS("inv_amount")
'    RS.MoveNext
'co = co + 1
'Loop
Print #a,
co = co + 1
If co > pagelen Then
    Print #a, Chr(12)
    pg1 = pg1 + 1
    co = 0
    Call Lot_wise_Diff(pg1) ', co, u, v)
End If
Print #a,
Print #a, Space(5) + String(194, "-")
Print #a, Space(115) + " ** Grand Total **" '+ Space(10) + Space(3) + Padr(CStr(tot1), 10, " ") + Padl(Format(tot2, "##,###,###.000"), 12, " ") + Padl(Format(tot3, "##,###,###.000"), 12, " ")
Print #a,
Print #a, Space(5) + String(194, "-")
Print #a,
Print #a,
Print #a,
'Call Lot_wise_Diff(pg1)
'rs1.MoveFirst
'Do While Not rs1.EOF
'    Print #a, Space(5) + Padr((CStr(RS(1))), 8, " ") + Padr(RS(0), 17, " ") + Padr(RS(2), 16, " ") + Padr(IIf(IsNull(RS(3)), " ", RS(3)), 41, " ") + Padr(RS(4), 39, " ") + Padr(RS(6), 8, " ") + Padl(CStr(RS(7)), 14, " ") + Padl(CStr(Format(RS(8), "##,###,###.000")), 20, " ")
'    tot1 = tot1 + RS("bales")
'    tot2 = tot2 + RS("borah")
'    tot3 = tot2 + RS("inv_amount")
'    RS.MoveNext
'co = co + 1
'Loop
Print #a, Space(15) + String(150, "-")
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\lotwise_diff.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type lotwise_diff.txt>prn"
Close #a
RPTV.txtfile = "c:\lotwise_diff.txt"
RPTV.Batfile = "c:\lotwise_diff.bat"
End Sub
Public Sub Lot_wise_Diff(pg1 As Integer) ', co As Integer, u As String, v As String)
          Print #a,
          Print #a, Space(10) + Space(Round((194 - 2 * Len(divname)) / 2)) + Chr(14) + divname + Space(2) + Chr(14) + Space(Round((163 - 2 * Len(divname)) / 2))
          Print #a, Space(194)
          Print #a,
          Print #a,
          sr = CStr(pdate) + Space(2)
          Print #a, Space(5) + "Lotwise Weight Difference List for the Period From " & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "To" & Space(1) & Format(v, "dd/mm/yyyy") & Space(77) + sr + "Pg.No :" + Space(1) + CStr(pg1)
          Print #a, Space(5) + String(194, "-")
          Print #a, Space(5) + "Rec-Date    Party           Party Name                                  Mill             Variety          <------------------ R A T E   P E R   C A N D Y ------------------>     Total         Mill       Inv-No        Noof               Invoice                     Mill               <-----Difference---->    "
          Print #a, Space(5) + "            Lot-No                                                      Lot-No                                  Spot      Cat      S.E      Insurance    Comm.      Frieght  Shortage           Rate                     Rate                Weight                   Weight                Shortage      Excess    "
          Print #a, Space(5) + String(194, "-")
End Sub

