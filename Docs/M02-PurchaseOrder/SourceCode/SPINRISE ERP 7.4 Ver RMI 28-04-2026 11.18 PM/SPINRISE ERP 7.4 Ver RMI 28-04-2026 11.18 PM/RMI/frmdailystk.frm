VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmdailystk 
   Caption         =   "Form2"
   ClientHeight    =   7620
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   8640
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7620
   ScaleWidth      =   8640
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4650
      TabIndex        =   5
      Top             =   4605
      Width           =   915
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3495
      TabIndex        =   4
      Top             =   4605
      Width           =   915
   End
   Begin VB.Frame Frame1 
      Height          =   2505
      Left            =   1815
      TabIndex        =   0
      Top             =   1710
      Width           =   5655
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2265
         TabIndex        =   1
         Top             =   1050
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   609
         _Version        =   393216
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   22020097
         CurrentDate     =   37578
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1350
         TabIndex        =   3
         Top             =   1140
         Width           =   510
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   2
         Top             =   120
         Width           =   5565
      End
   End
End
Attribute VB_Name = "frmdailystk"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Integer
Dim sno As Integer
Dim pg1 As Integer
Dim Co As Integer
Dim F_Date As String
Dim catcd As String
Dim tmp As Recordset

Private Sub Command1_Click()
Screen.MousePointer = 11
F_Date = "01/" & MONTH(DTPicker1.Value) & "/" & Year(DTPicker1.Value)
catcd = "C"
Call dailyReport(F_Date, DTPicker1.Value, catcd)
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
Screen.MousePointer = 0
Unload Me
End Sub

Private Sub Form_Load()
DTPicker1.Value = pdate
Label5.Caption = "Date Wise Cotton Stock as on"
Frame1.Visible = True
DTPicker1.Visible = True
DTPicker1.ZOrder
End Sub

Public Sub dailyReport(F_Date As String, T_Date As String, catcd As String)
Dim rs1 As New Recordset
Dim rs2 As New Recordset
Dim rs3 As New Recordset
Dim tmprs As New Recordset, tmprs1 As New Recordset
Dim rs As New Recordset
Dim RPTV As Report.ReportView
Dim recp_bales As Double, op_bales As Double, sop_bales As Double
Dim iss_bales As Double
Dim recp_wt As Double, op_wt As Double, sop_wt As Double
Dim iss_wt As Double, iss1_wt As Double
Dim iss_rate As Double, iss1_rate As Double
Dim op_val As Double, sop_val As Double
Dim iss_val As Double, iss1_val As Double
Dim cnn As Connection
Set cnn = New Connection
Dim LOTNO As String, j As Integer, k As Integer
Dim gop_bale As Double, grecp_bale As Double, giss_bale As Double
Dim gop_wt As Double, grecp_wt As Double, giss_wt As Double
Dim gop_val As Double, grecp_val As Double, giss_val As Double

Dim Str As String

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set RPTV = New Report.ReportView
a = FreeFile
Close
Open "C:\sv.TXT" For Output As #a
pg1 = 1
Co = 0
Print #a, Chr(15)
Co = Co + 1
Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
varnm1 = ""
sno = 0
If MONTH(F_Date) = 4 Then SB = "<=" Else SB = "<"
'Rs.Open "select distinct a.varcode,a.VARNAME from rm_var a,rm_lot b where a.varcode = b.varcode  and arrdt <= '" & Format(T_Date, "yyyy/mm/dd") & "' ", cnn, adOpenStatic
Set rs = New Recordset
'Rs.Open "Select distinct b.varcode,d.varname from rm_issb a,rm_lot b ,rm_issh c,rm_bale e,rm_var d where b.varcode=d.varcode and a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and  '" & Format(T_Date, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' order by b.varcode", cnn
rs.Open "select distinct a.varcode,a.VARNAME from rm_var a,rm_lot b where a.varcode = b.varcode  and arrdt <= '" & Format(T_Date, "yyyy/mm/dd") & "' ", cnn, adOpenStatic
Do Until rs.EOF
   Set tmprs1 = New Recordset
   tmprs1.Open "select distinct a.supcd,b.slname from rm_lot a,fa_slmas b where a.supcd=b.slcode and varcode='" & rs("varcode") & "' order by a.supcd", cnn, adOpenStatic
   Do Until tmprs1.EOF
      Set tmprs = New Recordset
            tmprs.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt >'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.supcd='" & tmprs1("supcd") & "' and  b.varcode='" & rs("varcode") & "' and b.lotdt " & SB & " '" & Format(T_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt AND b.supcd='" & tmprs1("supcd") & "' and  b.varcode='" & rs("varcode") & "' and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(T_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.supcd='" & tmprs1("supcd") & "' and  b.varcode='" & rs("varcode") & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.supcd='" & tmprs1("supcd") & "' and  b.varcode='" & rs("varcode") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.varcode,b.opflg,b.bblflg))a group by a.varcode having sum(isnull(a.opbales,0))<>0 or sum(isnull(a.opboras,0))<>0 or sum(isnull(a.opkgs,0))<>0 or sum(isnull(a.recbales,0))<>0 or sum(isnull(a.recboras,0))<>0 or sum(isnull(a.reckgs,0))<>0 or sum(isnull(a.issbales,0))<>0 or sum(isnull(a.issboras,0))<>0 or sum(isnull(a.isskgs,0))<>0 ", cnn, adOpenStatic, adLockBatchOptimistic

     Do Until tmprs.EOF
'         If co > 62 Then
'            PG1 = PG1 + 1
'            co = 0
'            Print #A, Space(5) + String(223, "-")
'            Print #A, Chr(12)
'            Call PartyHeader(PG1, co, F_Date, T_Date, Catcd)
'         End If
   
         op_bales = IIf(tmprs(1) > 0, tmprs(1), tmprs(2))
         sop_bales = sop_bales + IIf(tmprs(1) > 0, tmprs(1), tmprs(2))
         op_wt = IIf(tmprs(3) > 0, tmprs(3), 0)
         sop_wt = IIf(tmprs(1) > 0, tmprs(3), 0) + sop_wt
         Set tmp = New Recordset
         ''tmp.Open "select ROUND((ISNULL(B.RATECY,0)/355.6187),2),b.lotno from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and  '" & Format(T_Date, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & Rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by B.RATECY,b.lotno", cnn
         'tmp.Open "select ROUND(isnull(b.totlandcost/b.netwt,0),7),b.lotno from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by ROUND(isnull(b.totlandcost/b.netwt,0),7),b.lotno order by b.lotno", cnn
         tmp.Open "select ROUND(isnull(b.totlandcost/(B.GRSWGT-B.TAREWT),0),7),b.lotno from rm_lot b where lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by ROUND(isnull(b.totlandcost/(B.GRSWGT-B.TAREWT),0),7),b.lotno order by b.lotno", cnn
         If tmp.RecordCount > 0 Then
            op_val = tmp(0) * tmprs(3)
            If op_bales > 0 Then sop_val = (tmp(0) * tmprs(3)) + sop_val
         End If
         LOTNO = ""
         If tmp.RecordCount > 0 Then tmp.MoveFirst
         Do While Not tmp.EOF
            If tmp.RecordCount = 1 Or (tmp.AbsolutePosition = tmp.RecordCount) Then
                LOTNO = LOTNO & tmp(1)
            Else
                LOTNO = LOTNO & tmp(1) & ","
             End If
            tmp.MoveNext
         Loop
         If Len(LOTNO) >= "28" Then
            lotno1 = Mid$(LOTNO, 29, 28)
         Else
            lotno1 = 0
         End If
         If Len(LOTNO) >= "56" Then
            lotno2 = Mid$(LOTNO, 57, 28)
         Else
            lotno2 = 0
         End If
         If Len(LOTNO) >= "84" Then
            lotno3 = Mid$(LOTNO, 85, 28)
         Else
            lotno3 = 0
         End If
         If Len(LOTNO) >= "112" Then
            lotno4 = Mid$(LOTNO, 113, 28)
         Else
            lotno4 = 0
         End If
          If Len(LOTNO) >= "140" Then
            lotno5 = Mid$(LOTNO, 141, 28)
         Else
            lotno5 = 0
         End If
         
         Set rs2 = New Recordset
         rs2.Open "select sum(isnull(bale,0)),sum(isnull(weight,0)),sum(isnull(closingrate,0)) from(Select COUNT(A.BALENO) as bale, round((sum(isnull(e.netwt,0))),3) as WEIGHT,round((sum(isnull(e.netwt,0))),3) * ROUND(b.totlandcost/(B.GRSWGT-B.TAREWT),7) AS CLOSINGRATE from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where lotyear='" & Year(yfdate) & "' and a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt =  '" & Format(T_Date, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by b.totlandcost,b.grswgt,b.tarewt)a having sum(bale)>0", cnn
         If rs2.EOF = False Then
            Do Until rs2.EOF
                Print #a,
                sno = sno + 1
                Print #a, Space(4) & Padl(sno, 5, " ") & Space(3) & Padr(rs(0), 15, " ") & Space(2) & Padr(tmprs1(1), 50, "") & Space(1) & Padr(LOTNO, 28, " ") & Space(1) & Padl(INF(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 0), 5, "") & Space(3) & Padl(INF(tmprs(3), 3), 12, "") & Space(1) & Space(4) & Padl(INF(op_val, 2), 15, "") & Space(2) & Padl(rs2(0), 7, " ") & Space(1) & Padl(INF(rs2(1), 3), 19, " ");
'                If lotno1 <> 0 Then
'                    Print #A, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 7, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno1, 13, " ")
'                    lotno1 = 0
'                    co = co + 1
'                End If
'                If lotno2 <> 0 Then
'                    Print #A, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 7, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno2, 13, " ")
'                    lotno2 = 0
'                    co = co + 1
'                End If
'                If lotno3 <> 0 Then
'                    Print #A, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 7, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno3, 13, " ");
'                    lotno3 = 0
'                    co = co + 1
'                End If
                Co = Co + 1
                recp_bales = rs2(0) + recp_bales: recp_wt = rs2(1) + recp_wt
                rs2.MoveNext
            Loop
         End If
         If Co > 62 Then
            pg1 = pg1 + 1
            Co = 0
            Print #a,
            Print #a, Space(5) + String(223, "-")
            Print #a, Chr(12)
            Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
         End If
   
         Set rs1 = New Recordset
         'RS1.Open "select sum(isnull(bale,0)),sum(isnull(weight,0)),sum(isnull(closingrate,0)) from(Select COUNT(A.BALENO) as bale, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as WEIGHT,round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),3) * ROUND((ISNULL(B.RATECY,0)/355.6187),2) AS CLOSINGRATE from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and  '" & Format(T_Date, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & Rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by ratecy)a having sum(bale)>0", cnn
         rs1.Open "select sum(isnull(bale,0)),sum(isnull(weight,0)),sum(isnull(closingrate,0)) from(Select COUNT(A.BALENO) as bale, round((sum(isnull(e.netwt,0))),3) as WEIGHT,round((sum(isnull(e.netwt,0))),3) * ROUND(b.totlandcost/(B.GRSWGT-B.TAREWT),7) AS CLOSINGRATE from rm_issb a,rm_lot b ,rm_issh c,rm_bale e where  lotyear='" & Year(yfdate) & "' and a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and  '" & Format(T_Date, "YYYY-MM-DD") & "' and  lotyear='" & Year(yfdate) & "' AND B.VARCODE='" & rs(0) & "' and b.supcd='" & tmprs1("supcd") & "' group by b.totlandcost,b.grswgt,b.tarewt)a having sum(bale)>0", cnn
         If rs1.EOF = False Then
            Do Until rs1.EOF
                 If rs2.RecordCount <= 0 Then
                    Print #a,
                    
                    sno = sno + 1
                    Print #a, Space(4) & Padl(sno, 5, " ") & Space(3) & Padr(rs(0), 15, " ") & Space(2) & Padr(tmprs1(1), 50, " ") & Space(1) & Padr(LOTNO, 28, " ") & Space(1) & Padl(INF(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 0), 5, "") & Space(3) & Padl(INF(tmprs(3), 3), 12, "") & Space(1) & Space(4) & Padl(INF(op_val, 2), 15, "") & Space(2) & Space(2) & Space(20) & Space(5) & Padl(rs1(0), 9, " ") & Space(1) & Padl(INF(rs1(1), 3), 19, " ") & Space(3) & Padl(INF(rs1(2), 2), 17, " ") & Space(5) & Space(1)
                    Co = Co + 1
                 ElseIf rs2.RecordCount > 0 Then
                    Print #a, Space(1) & Padl(INF(rs1(0), 0), 8, " ") & Space(1) & Padl(INF(rs1(1), 3), 19, " ") & Space(3) & Padl(INF(rs1(2), 2), 17, " ") & Space(5) & Space(1)
                    Co = Co + 1
                 End If
                 iss_bales = IIf(IsNull(rs1(0)), 0, rs1(0)) + iss_bales: iss_wt = rs1(1) + iss_wt: iss_rate = rs1(2) + iss_rate
                 rs1.MoveNext
            Loop
        End If
         If Co > 62 Then
            pg1 = pg1 + 1
            Co = 0
            Print #a, Space(5) + String(223, "-")
            Print #a, Chr(12)
            Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
         End If
   
      If rs1.RecordCount <= 0 And rs2.RecordCount <= 0 And tmprs.RecordCount > 0 Then
        Set tmp = New Recordset
        'tmp.Open "select ROUND((ISNULL(RATECY,0)/355.6187),2) from rm_lot where VARCODE='" & Rs(0) & "' and supcd='" & tmprs1("supcd") & "' group by RATECY", cnn
        tmp.Open "select ROUND(totlandcost/(grswgt-tarewt) ,7) from rm_lot where lotyear='" & Year(yfdate) & "' and VARCODE='" & rs(0) & "' and supcd='" & tmprs1("supcd") & "' group by totlandcost,grswgt,tarewt", cnn
        op_val = tmprs(3) * tmp(0): sop_val = sop_val + tmprs(3) * tmp(0)
        If tmprs(1) > 0 Then
        sno = sno + 1:
        Print #a,
        Print #a, Space(4) & Padl(sno, 5, " ") & Space(3) & Padr(rs(0), 15, " ") & Space(2) & Padr(tmprs1(1), 50, " ") & Space(1) & Padr(LOTNO, 28, " ") & Space(1) & Padl(INF(IIf(tmprs(1) > 0, tmprs(1), tmprs(2)), 0), 5, "") & Space(3) & Padl(INF(tmprs(3), 3), 12, "") & Space(1) & Space(4) & Padl(INF(op_val, 2), 15, "") & Space(2) & Space(2) & Space(20) & Space(5)
        Co = Co + 2
        End If
      End If
        If lotno1 <> 0 Then
            Print #a, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 15, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno1, 28, " ")
            lotno1 = 0
            Co = Co + 1
        End If
        If lotno2 <> 0 Then
            Print #a, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 15, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno2, 28, " ")
            lotno2 = 0
            Co = Co + 1
        End If
        If lotno3 <> 0 Then
            Print #a, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 15, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno3, 28, " ")
            lotno3 = 0
            Co = Co + 1
        End If
        If lotno4 <> 0 Then
            Print #a, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 15, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno4, 28, " ")
            lotno4 = 0
            Co = Co + 1
        End If
        If lotno5 <> 0 Then
            Print #a, Space(4) & Padl(" ", 5, " ") & Space(3) & Padr(" ", 15, " ") & Space(2) & Padr(" ", 50, "") & Space(1) & Padr(lotno5, 28, " ")
            lotno5 = 0
            Co = Co + 1
        End If
          If Co > 60 Then
            pg1 = pg1 + 1
            Co = 0
            Print #a, Space(5) + String(223, "-")
            Print #a, Chr(12)
            Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
      End If

        tmprs.MoveNext
      Loop
      tmprs1.MoveNext
    Loop
   
   rs.MoveNext
      If Co > 10 Then
          If sop_bales > 0 Then
            Print #a,
            Print #a, Space(5); CENTRE("*** Variety Total ***", 80, " ") & Space(21); Padl(INF(sop_bales, 0), 7, "") & Space(1) & Padl(INF(sop_wt, 3), 14, "") & Space(2) & Padl(INF(sop_val, 2), 18, "") & Space(4) & Padl(recp_bales, 5, " ") & Space(2) & Padl(INF(recp_wt, 3), 18, " ") & Space(0) & Padl(INF(iss_bales, 0), 9, " ") & Space(3) & Padl(INF(iss_wt, 3), 17, " ") & Space(1) & Padl(INF(iss_rate, 2), 19, " ")  '+ Chr(27) + "F"
            'Print #A,
          End If
      End If
      Co = Co + 3
      If Co > 60 Then
            pg1 = pg1 + 1
            Co = 0
            Print #a, Chr(12)
            Print #a, Space(5) + String(223, "-")
            Call PartyHeader(pg1, Co, F_Date, T_Date, catcd)
      End If
      gop_bales = gop_bales + sop_bales: gop_wt = sop_wt + gop_wt: gop_val = gop_val + sop_val
      grecp_bales = grecp_bales + recp_bales: grecp_wt = recp_wt + grecp_wt: grecp_val = grecp_val + recp_rate
      giss_bales = giss_bales + iss_bales: giss_wt = iss_wt + giss_wt: giss_val = giss_val + iss_rate
            
      recp_bales = 0: recp1_bales = 0: sop_bales = 0
      recp_wt = 0: recp1_wt = 0: sop_wt = 0
      recp_rate = 0: recp1_rate = 0: sop_val = 0
      iss_bales = 0: iss1_bales = 0
      iss_wt = 0: iss1_wt = 0: i = 0: j = 0
      iss_rate = 0: iss1_rate = 0
Loop

err1:
      
If k = 0 And j = 0 Then Print #a, Space(5) + String(223, "-")

Print #a, Space(5); CENTRE("*** Grand Total ***", 82, " ") & Space(19); Padl(INF(gop_bales, 0), 7, "") & Space(1) & Padl(INF(gop_wt, 3), 14, "") & Space(2) & Padl(INF(gop_val, 2), 18, "") & Space(4) & Padl(INF(grecp_bales, 0), 5, " ") & Space(2) & Padl(INF(grecp_wt, 3), 18, " ") & Space(0) & Padl(INF(giss_bales, 0), 9, " ") & Space(3) & Padl(INF(giss_wt, 3), 17, " ") & Space(1) & Padl(INF(giss_val, 2), 19, " ") '+ Chr(27) + "F"
Print #a, Space(5) + String(223, "-")
      
Close #a
a = FreeFile
Open "c:\sv.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type sv.txt>prn"
Close #a
RPTV.txtfile = "c:\sv.txt"
RPTV.Batfile = "c:\sv.bat"
End Sub
Public Sub PartyHeader(pg1 As Integer, Co As Integer, u As String, v As String, w As String)
          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          Print #a, Space(3) + Chr(27) + "E" + "Date Wise Cotton Stock As On " + Chr(27) + "F" + Space(1) & Format(v, "dd/mm/yyyy")
          Print #a, Space(72) + SR + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          
          Print #a, Space(5) + String(128 + 48 + 15, "-")
          Print #a, Space(5) + "                                                                           <------------ Stock -----------------> <-----Today's Issued------->   <------ Issued For the Month of '" & Format(F_Date, "mmm") & "'-------->"
          Print #a, Space(5) + "S.No   Quality  Party Name                                    Lot No        Bales            Kgs            value    Bales                 Kgs    Bales                 Kgs               value             "
          Print #a, Space(5) + String(128 + 48 + 15, "-")
          Co = Co + 9
End Sub




