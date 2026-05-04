VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form godownwiserep 
   ClientHeight    =   3180
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Cmdcancel 
      Caption         =   "Cancel"
      Height          =   390
      Left            =   6420
      TabIndex        =   13
      Top             =   4800
      Width           =   1410
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "Report"
      Height          =   375
      Left            =   4590
      TabIndex        =   12
      Top             =   4800
      Width           =   1500
   End
   Begin VB.Frame Frame1 
      Height          =   3720
      Left            =   2850
      TabIndex        =   0
      Top             =   840
      Width           =   6660
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "godownwiserep.frx":0000
         Left            =   2145
         List            =   "godownwiserep.frx":0002
         TabIndex        =   1
         Top             =   2940
         Width           =   4320
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2145
         TabIndex        =   2
         Top             =   2340
         Width           =   4320
         _ExtentX        =   7620
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   2145
         TabIndex        =   3
         Top             =   1800
         Width           =   4320
         _ExtentX        =   7620
         _ExtentY        =   635
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2145
         TabIndex        =   4
         Top             =   705
         Width           =   1350
         _ExtentX        =   2381
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2145
         TabIndex        =   5
         Top             =   1260
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo4"
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2160
         TabIndex        =   14
         Top             =   720
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   61538305
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2160
         TabIndex        =   15
         Top             =   1320
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   61538305
         CurrentDate     =   37043
      End
      Begin VB.Label Label6 
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   465
         TabIndex        =   11
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   465
         TabIndex        =   10
         Top             =   765
         Width           =   975
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   465
         TabIndex        =   9
         Top             =   2910
         Width           =   435
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Godown"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   465
         TabIndex        =   8
         Top             =   1830
         Width           =   1170
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Godown"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   465
         TabIndex        =   7
         Top             =   2370
         Width           =   990
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt Register - Godownwise"
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
         Left            =   0
         TabIndex        =   6
         Top             =   30
         Width           =   6945
      End
   End
End
Attribute VB_Name = "godownwiserep"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rep As Report.ReportView
Dim a As Integer
Dim Pg As Integer
Dim Rs As Recordset
Dim rss As Recordset
Dim rs1 As Recordset
Dim totbA  As Double
Dim totkA As Double
Dim totbU  As Double
Dim totkU As Double
Dim rss1 As Recordset
Dim cnn As String
Dim Sno As Integer
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

Screen.MousePointer = 11
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim supcount As Integer
Dim U, V As String
Set Rep = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\inv.txt" For Output As #a

Sno = 0
totbA = 0
totkA = 0
totbU = 0
totkU = 0

Dim costr As String
If Right(Combo1.Text, 1) = "M" Then
    costr = "M"
ElseIf Right(Combo1.Text, 1) = "S" Then
    costr = "S"
Else
    costr = "A"
End If
Dim Co As Integer
Dim Pg As Integer
Dim s1, s2, s3 As String
Dim d As String
Dim TEMP As String
Dim ttot1, tto2, tto3, tto4, tto5, tto6, tto7, tto8, tto9 As Double
   ttot1 = 0
   tot1 = 0
    ttot2 = 0
    ttot3 = 0
    ttot4 = 0
    ttot5 = 0
    ttot6 = 0
    ttot7 = 0
    ttot8 = 0
    ttot9 = 0
    supcount = 0
U = Trim(Right(DataCombo1.Text, 2))
V = Trim(Right(DataCombo2.Text, 2))

DataCombo3.Text = DTPicker1.value '''''''''
DataCombo4.Text = DTPicker2.value '''''''''

W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
If CDate(W) > CDate(X) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo3.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(X) < CDate(W) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo3.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
If costr = "A" Then
    Set Rs = New Recordset
    Rs.Open " select distinct h.gname,a.lotdt,a.lotno,a.lotyear,a.godown,b.prmark,a.cntcode,d.carname,a.pjno,b.contno as pono,a.godown,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g,rm_god h " & _
            " where b.carcode*=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
            " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "'" & _
            " and a.lotdt between '" & W & "' and '" & X & "'   AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' order by gname,a.lotno ", Cn, adOpenStatic, adLockBatchOptimistic
Else
    Set Rs = New Recordset
    Rs.Open " select distinct h.gname,a.lotdt,a.lotno,a.lotyear,a.cntcode,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.godown,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
        " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g,rm_god h " & _
        " where b.carcode*=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode and a.godown=h.gcode and a.brkcd*=f.slcode and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "'" & _
        " and a.lotdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' order by gname,a.lotno ", Cn, adOpenStatic, adLockBatchOptimistic

End If
    
    If Rs.RecordCount <= 0 Then
      Screen.MousePointer = 0
      MsgBox " No Records Found", vbInformation, head
      Exit Sub
    Else
      Rs.MoveFirst
    End If
    If costr = "M" Then
        costr = "FOR"
    ElseIf costr = "S" Then
        costr = "SPOT"
        Else
        costr = "FOR"
    End If
Pg = 1
Call header3(Co, Pg, rs1, CStr(W), CStr(X))
Dim RECCOUNT As Integer
recount = 0
Do While Rs.EOF = False
If TEMP <> Rs("godown") Then

    If Co > 10 And supcount > 1 Then
        Print #a,
        Print #a, Chr(27) & "E" & Space(0); Space(42); Padl(" Godown  Total  ", 24, " "); Space(12 + 6); Padl(INF(ttot1, 0), 6, "  "); Space(4); Padl(INF(ttot2, 3), 12, "  ");
        Print #a, Space(4) & Padl(INF(ttot7, 2), 14, " ") '; Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
        Print #a, Chr(27) & "F"
        supcount = 0
        Co = Co + 3
    End If
    'for printing blank line
    If val(supcount) = 1 Then
        Print #a,
        Co = Co + 1
        supcount = 0
        End If
        ttot1 = 0
        ttot2 = 0
        ttot3 = 0
        ttot4 = 0
        ttot5 = 0
        ttot6 = 0
        ttot7 = 0
        ttot8 = 0
        ttot9 = 0
    
        Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Rs("gname"), 60, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
        Co = Co + 1
    End If
    
    temp3 = Right(Rs("lotyear"), 2)
    Print #a, Space(2); Padl(Rs("lotno"), 5, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " "); Space(3);
    Print #a, Padr(Rs("varcode"), 8, " "); Space(1); Padr(Rs("cntcode"), 7, " "); Space(0); Padr(Rs("supplier"), 25, " "); Space(2); Padr(Rs("areaname"), 15, " "); Space(2 + 3); Padl(INF(Rs("bales"), 0), 6, " "); Space(1); Padl(INF(Rs("netwt"), 3), 15, " ");
    Print #a, Space(1); Padl(INF(Rs("totalvalue"), 2), 17, "  ")
    Co = Co + 1
    supcount = supcount + 1
    tot1 = tot1 + Rs("bales")
    tot2 = tot2 + Rs("netwt")
    tot7 = tot7 + Rs("totalvalue")
    
    ttot1 = ttot1 + Rs("bales")
    ttot2 = ttot2 + Rs("netwt")
    ttot7 = ttot7 + Rs("totalvalue")
        
    
    TEMP = Rs("godown")
    cnt = cnt + 1
    
    Rs.MoveNext
    tot10 = tot8 / cnt
    tot11 = tot9 / cnt
       If Co > 60 Then
            Print #a, Space(2); String(130, "-")
            Print #a, Chr(12)
            Co = 0
            Pg = Pg + 1
            Call header3(Co, Pg, rs1, CStr(W), CStr(X))
       End If
Loop

    Print #a, ' Chr(27) + "E"
    Print #a, Space(0); Space(46); Padl(" Godown Total  ", 24, " "); Space(12 + 4); Padl(INF(ttot1, 0), 6, "  "); Space(4); Padl(INF(ttot2, 3), 12, "  ");
    Print #a, Space(4) & Padl(INF(ttot7, 2), 14, " ")
   ' Print #a, 'Chr(27) + "F"

    Print #a, Space(2); String(130, "-")
    Print #a, Space(2); Space(44); Padl("  GRAND TOTAL  ", 24, " "); Space(12 + 2); Padl(INF(tot1, 0), 8, "  "); Space(4); Padl(INF(ttot2, 3), 12, "  ");
    Print #a, Space(1); Padl(INF(tot7, 2), 17, " ")
       
    Print #a, Space(2); String(130, "-")
    
    Call abs1(CStr(W), CStr(X))
    If Right(Combo1.Text, 1) = "M" Then
        costr1 = "M"
    ElseIf Right(Combo1.Text, 1) = "S" Then
        costr1 = "S"
    Else
        costr1 = "A"
    End If
    If costr1 = "A" Then
        Set rsABST = New Recordset
        rsABST.Open "select distinct VARCODE,SUM(LBALES)AS LBALES,SUM(LKGS) AS LKGS,SUM(UBALES) AS UBALES,SUM(UKGS) AS UKGS FROM ( " & _
        "select distinct A.VARCODE,SUM(a.bales)AS LBALES,SUM(a.netwT) AS LKGS,0 AS UBALES,0 AS UKGS from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and " & _
        "b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt " & _
        "Between '" & W & "' and '" & X & "' and c.dlytype='" & costr1 & "' AND OPFLG<>'Y'  AND G.l_OR_U IN ('l','L') AND LOTYEAR='" & Year(yfdate) & "' GROUP BY A.VARCODE Union " & _
        "select distinct A.VARCODE,0 AS LBALES,0 AS LKGS,SUM(a.bales) AS UBALES,SUM(a.netwT) AS UKGS from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and " & _
        " b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt Between '" & W & "' and '" & X & "' and c.dlytype='" & costr1 & "' AND OPFLG<>'Y'  AND G.l_OR_U IN ('U','u') AND LOTYEAR='" & Year(yfdate) & "' GROUP BY A.VARCODE) X GROUP BY VARCODE ", DB, adOpenStatic
    Else
        Set rsABST = New Recordset
        rsABST.Open "select distinct VARCODE,SUM(LBALES)AS LBALES,SUM(LKGS) AS LKGS,SUM(UBALES) AS UBALES,SUM(UKGS) AS UKGS FROM ( " & _
        "select distinct A.VARCODE,SUM(a.bales)AS LBALES,SUM(a.netwT) AS LKGS,0 AS UBALES,0 AS UKGS from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and " & _
        "b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt " & _
        "Between '" & W & "' and '" & X & "' and c.dlytype='" & costr1 & "' AND OPFLG<>'Y'  AND G.l_OR_U IN ('l','L') AND LOTYEAR='" & Year(yfdate) & "' GROUP BY A.VARCODE Union " & _
        "select distinct A.VARCODE,0 AS LBALES,0 AS LKGS,SUM(a.bales) AS UBALES,SUM(a.netwT) AS UKGS from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and " & _
        " b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt Between '" & W & "' and '" & X & "' and c.dlytype='" & costr1 & "' AND OPFLG<>'Y'  AND G.l_OR_U IN ('U','u') AND LOTYEAR='" & Year(yfdate) & "' GROUP BY A.VARCODE) X GROUP BY VARCODE ", DB, adOpenStatic
    End If
    Sno = 1
    If rsABST.RecordCount > 0 Then
    'SNO = 1
        Do While rsABST.EOF = False
            Print #a, Space(2); ; Padr(Sno, 5, " ") + Space(3) + Padr(rsABST("VARCODE"), 14, " ") + Space(0) + Padl(rsABST("lBALES"), 7, " ") + Padl(INF(rsABST!Lkgs, 3), 15, " ") + Space(3) + Padl(rsABST("UBALES"), 7, " ") + Padl(INF(rsABST!Ukgs, 3), 15, " ")
        If rsABST.EOF = False Then
                totbA = totbA + rsABST("Lbales")
                totkA = totkA + rsABST("Lkgs")
                totbU = totbU + rsABST("Ubales")
                totkU = totkU + rsABST("Ukgs")
            End If
        rsABST.MoveNext
        Sno = Sno + 1
        Loop
        'SNO = SNO + 1
    End If
    Print #a, Space(2) & String(75, "-")
    Print #a, Space(2); Space(5) + Space(3) + Space(14) + Space(0) + Padl(totbA, 7, " ") + Padl(INF(totkA, 3), 15, " ") + Space(3) + Padl(totbU, 7, " ") + Padl(INF(totkU, 3), 15, " ")
    Print #a, Space(2) & String(75, "-")
    Print #a, Chr(12)
    'page break
   ' Call goabs(CStr(w), CStr(x))
    'Dim costr1 As String
    totv = 0
    totk = 0
    totb = 0
    If Right(Combo1.Text, 1) = "M" Then
        costr1 = "M"
    ElseIf Right(Combo1.Text, 1) = "S" Then
        costr1 = "S"
    Else
        costr1 = "A"
    End If
    If costr1 = "A" Then
        Set rsgo = New Recordset
        rsgo.Open " select distinct Gname as godown,SUM(a.bales)AS BALES,SUM(a.netwT)AS KGS ,SUM(a.totlandcost)as totalvalue  from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h  where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and " & _
        " b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt Between '" & W & "' and '" & X & "'  AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' GROUP BY gname ORDER BY Gname ", Cn, adOpenStatic, adLockBatchOptimistic
    
   Else
        Set rsgo = New Recordset
        rsgo.Open "select distinct Gname  as godown,SUM(a.bales)AS BALES ,SUM(a.netwT) AS KGS ,SUM(a.totlandcost)as totalvalue  from  rm_lot a,rm_arrival b,rm_cont c,rm_area g,rm_god h  where a.lotno = b.lotno  and a.arrno=b.arrno and a.arrdt=b.arrdate and b.contno = c.contno And a.lotdt = b.lotdt  and A.godown=h.gcode and " & _
        "b.contno=c.contno and b.contdt=c.contdt and a.areacd=g.areacode and a.godown between '" & U & "' and '" & V & "' and a.lotdt Between '" & W & "' and '" & X & "' and c.dlytype='" & costr1 & "' AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' GROUP BY gname ORDER BY A.GODOWN ", Cn, adOpenStatic, adLockBatchOptimistic
    
        
   End If
    'RS1.Open " select distinct a.godown,sum(a.bales)as bales,sum(a.netwt)as kgs,sum(a.totlandcost)as totalvalue from " & _
        " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g,rm_god h " & _
        " where b.carcode=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode and a.godown=h.gcode and a.brkcd=f.slcode and a.areacd=g.areacode and a.godown between '" & u & "' and '" & v & "'" & _
        " and a.lotdt between '" & w & "' and '" & x & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' group by a.godown order by a.godown ", cn, adOpenStatic, adLockBatchOptimistic
        Call headern(Co, Pg, rs1, CStr(W), CStr(X))
        Call goabs(CStr(W), CStr(X))
        If costr1 = "M" Then
            costr1 = "FOR"
        ElseIf costr1 = "S" Then
            costr1 = "SPOT"
        Else
            costr1 = "FOR"
        End If
    If rsgo.RecordCount > 0 Then
     Do While rsgo.EOF = False
            Print #a, Space(2); Padr(rsgo("GODOWN"), 15, " ") + Space(12 - 7) + Padl(INF(rsgo!bales, 0), 14, " ") + Space(2) + Padl(INF(rsgo!Kgs, 3), 14, " ") + Space(2 + 2) + Padl(INF(rsgo!totalvalue, 2), 14, " ")
            
            Co = Co + 1
            If rsgo.EOF = False Then
                totb = totb + rsgo("bales")
                totk = totk + rsgo("kgs")
                totv = totv + rsgo("totalvalue")
            End If
            rsgo.MoveNext
     Loop
    End If
    Print #a, Space(2) & String(70, "-")
    Print #a, Space(2); Space(15) + Space(12 - 7) + Padl(INF(totb, 0), 14, " ") + Space(2) + Padl(INF(totk, 3), 14, " ") + Space(2 + 2) + Padl(INF(totv, 2), 14, " ")
    Print #a, Space(2) & String(70, "-")
    Print #a, Chr(12)
    Close #a
    a = FreeFile
    Open "c:\inv.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type inv.txt>prn"
    Close #a
    Rep.txtfile = "c:\inv.txt"
    Rep.Batfile = "c:\inv.bat"


Screen.MousePointer = 0

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub goabs(W As String, X As String)
On Error GoTo goabs_Error

Print #a,
Print #a, Space(2) & String(70, "-")
'Print #a, Space(2) & "                                  Local                   Interstate  "
Print #a, Space(2) & "GOdown No.               Bals/Bora             Kgs             VALUE "
'Print #a, Space(2) & "Lot  No.  Lot Date   Variety  Count  Supplier Name              Station        Bales/Boras        Stock KG             Value "
Print #a, Space(2) & String(70, "-")
Co = Co + 4

Exit Sub
goabs_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure goabs of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub abs1(W As String, X As String)
On Error GoTo abs1_Error

Print #a,
Print #a, Space(2) & String(75, "-")
Print #a, Space(2) & "                               Local                   Interstate  "
Print #a, Space(2) & "S.No.   Quality Name    Bales            Kgs     Bales            Kgs "
'Print #a, Space(2) & "Lot  No.  Lot Date   Variety  Count  Supplier Name              Station        Bales/Boras        Stock KG             Value "
Print #a, Space(2) & String(75, "-")
Co = Co + 5

Exit Sub
abs1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure abs1 of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub headern(Co As Integer, Pg As Integer, rs1 As Recordset, W As String, X As String)
On Error GoTo headern_Error

Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", Cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Chr(18)
Print #a, Space(2); Chr(27) + "E" + CENTRE(temp1, 70, " ") + Chr(27) + "F"
Print #a, 'Chr(15)
temp2 = CStr(pdate)
Print #a, Space(2) & "Godownwise  Stock Value  " '& Space(13 + 10) & Space(3) & Format(temp2, "dd/mm/yy") & Space(3) & "Pg.:" & Space(1) & Padl(pg, 3, " ")

Exit Sub
headern_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure headern of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub header3(Co As Integer, Pg As Integer, rs1 As Recordset, W As String, X As String)
On Error GoTo header3_Error

Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", Cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Chr(18)
Print #a, Space(2); Chr(27) + "E" + CENTRE(temp1, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
temp2 = CStr(pdate)
Print #a, Space(2) & "Cotton Receipts Register Godownwise Report" & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(13) & Space(3) & Format(temp2, "dd/mm/yy") & Space(3) & "Pg.:" & Space(1) & Padl(Pg, 3, " ")

Print #a, Space(2) & String(130, "-")
Print #a, Space(2) & "Godown Name"
Print #a, Space(2) & "Lot  No.  Lot Date   Variety  Count  Supplier Name              Station        Bales/Boras       Stock KGS             Value "
Print #a, Space(2) & String(130, "-")
Co = Co + 9

Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set Cn = New Connection
Set Rep = New ReportView
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
'Frame2.Visible = True
'Option1.Visible = True
'Option2.Visible = True
'Option1.Value = True
    Set rss = New Recordset
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
    rss.Open "select distinct a.GNAME+ ' - ' +A.GCODE AS GNAME,GCODE from rm_god a ORDER BY GCODE ", Cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and rejflg='N' order by lotdt ", Cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
      Set DataCombo3.RowSource = Rs
      DataCombo3.ListField = "lotdt"
      Set DataCombo4.RowSource = Rs
      DataCombo4.ListField = "lotdt"
      Rs.MoveFirst
      DataCombo3.Text = Rs(0)
      Rs.MoveLast
      DataCombo4.Text = Rs(0)
      
      ''''''''''''''''''''''
        DTPicker1.Visible = True
        DTPicker1.ZOrder
        DTPicker1.MinDate = yfdate
        DTPicker1.Refresh
        DTPicker1.MaxDate = pdate
        DTPicker1.value = pdate
        DTPicker1.Left = DataCombo3.Left
        DTPicker1.Width = DataCombo3.Width
        DTPicker1.Top = DataCombo3.Top

        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker2.MinDate = yfdate
        DTPicker2.Refresh
        DTPicker2.MaxDate = pdate
        DTPicker2.value = pdate
        DTPicker2.Left = DataCombo4.Left
        DTPicker2.Width = DataCombo4.Width
        DTPicker2.Top = DataCombo4.Top
     ''''''''''''''''''''''
      
    End If
    
    
    If rss.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rss
        DataCombo1.ListField = "GNAME"
        Set DataCombo2.RowSource = rss
        DataCombo2.ListField = "GNAME"
        rss.MoveFirst
        DataCombo1.Text = rss(0)
        rss.MoveLast
        DataCombo2.Text = rss(0)
        Combo1.AddItem "FOR - M"
        Combo1.AddItem "SPOT - S"
        Combo1.AddItem "ALL  - A"
        Combo1.ListIndex = 0
   End If
         Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
    DTPicker1.value = yfdate
    DataCombo3.Text = DTPicker1.value
Else
    DataCombo3.Text = DTPicker1.value
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
    DTPicker2.value = yfdate
    DataCombo4.Text = DTPicker2.value
Else
    DataCombo4.Text = DTPicker2.value
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form godownwiserep", vbInformation, head
Screen.MousePointer = 0
End Sub

