VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form ponowisereceiptregister 
   AutoRedraw      =   -1  'True
   Caption         =   "Receiptregisterponowise"
   ClientHeight    =   3180
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   3960
      Left            =   2430
      TabIndex        =   2
      Top             =   1230
      Width           =   6660
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "ponowisereceiptregister.frx":0000
         Left            =   2145
         List            =   "ponowisereceiptregister.frx":0002
         TabIndex        =   3
         Top             =   3195
         Width           =   2550
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2145
         TabIndex        =   4
         Top             =   2415
         Width           =   2520
         _ExtentX        =   4445
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
         TabIndex        =   5
         Top             =   1830
         Width           =   2490
         _ExtentX        =   4392
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
         TabIndex        =   6
         Top             =   705
         Width           =   2430
         _ExtentX        =   4286
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2145
         TabIndex        =   7
         Top             =   1350
         Width           =   2475
         _ExtentX        =   4366
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
         Format          =   21430273
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
         Format          =   21430273
         CurrentDate     =   37043
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt Register - P.O.Nowise"
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
         Left            =   -315
         TabIndex        =   13
         Top             =   0
         Width           =   6945
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To P.O. No. wise"
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
         Left            =   435
         TabIndex        =   12
         Top             =   2580
         Width           =   1470
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From P.O. No. wise"
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
         Left            =   435
         TabIndex        =   11
         Top             =   1950
         Width           =   1650
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
         Left            =   442
         TabIndex        =   10
         Top             =   3285
         Width           =   435
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
         Left            =   442
         TabIndex        =   9
         Top             =   735
         Width           =   975
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
         Left            =   442
         TabIndex        =   8
         Top             =   1350
         Width           =   975
      End
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "Report"
      Height          =   375
      Left            =   4050
      TabIndex        =   1
      Top             =   5370
      Width           =   1500
   End
   Begin VB.CommandButton Cmdcancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5910
      TabIndex        =   0
      Top             =   5370
      Width           =   1500
   End
End
Attribute VB_Name = "ponowisereceiptregister"
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
Dim rss1 As Recordset
Dim cnn As String
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer
Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form ponowisereceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub cmdReport_Click()
'Developed by D.Parimalam
On Error GoTo cmdreport_Click_Error

Screen.MousePointer = 11
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim U, V As String
Dim ttot1, tto2, tto3, tto4, tto5, tto6, tto7, tto8, tto9 As Double
Set Rep = New Report.ReportView
a = FreeFile
Close #a
Close
Open "C:\inv.txt" For Output As #a
Dim costr As String
If Right(Combo1.Text, 1) = "M" Then
    costr = "M"
Else
    costr = "S"
End If
costr = Right(Combo1.Text, 1)
Dim Co As Integer
Dim Pg As Integer
Dim s1, s2, s3 As String
Dim d As String
Dim pocount As Integer
   ttot1 = 0
   pocount = 0
    ttot2 = 0
    ttot3 = 0
    ttot4 = 0
    ttot5 = 0
    ttot6 = 0
    ttot7 = 0
    ttot8 = 0
    ttot9 = 0


Dim TEMP As String
U = DataCombo1.Text   'po.no wise
V = DataCombo2.Text  'po.no

DataCombo3.Text = DTPicker1.value '''''''
DataCombo4.Text = DTPicker2.value '''''''

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
Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,cast(b.contno as numeric) as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
        " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
        " where b.carcode*=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and b.contno between '" & U & "' and '" & V & "'" & _
        " and a.lotdt between '" & W & "' and '" & X & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "'   order by cast(b.contno as numeric),a.lotno ", Cn, adOpenStatic, adLockBatchOptimistic
Else

Set Rs = New Recordset
Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,cast(b.contno as numeric) as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
        " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
        " where b.carcode*=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and b.contno between '" & U & "' and '" & V & "'" & _
        " and a.lotdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' order by cast(b.contno as numeric),a.lotno ", Cn, adOpenStatic, adLockBatchOptimistic
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
    Else
        costr = "SPOT"
    End If
Pg = 1
Call header3(Co, Pg, rs1, CStr(W), CStr(X))
Dim RECCOUNT As Integer
recount = 0
Do While Rs.EOF = False
cratekg = Rs("pjamt") / Rs("netwt")
tratekg = Rs("totalvalue") / Rs("netwt")
''diff = Rs("NETWT") - Rs("FNETWT")
If Rs("FNETWT") <> 0 Then
   diff = Rs("NETWT") - Rs("FNETWT")
Else
   diff = Rs("NETWT") - Rs("PNETWT")
End If
If TEMP <> Rs("pono") Then
If Co > 9 And pocount > 1 Then
        Print #a,
        Print #a, Space(0); Space(92); Padl("** PO.No.Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
        Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") '& Chr(27) & "F"
        Print #a,
        Co = Co + 3
        pocount = 0
    End If
    'for printing blank line
    If pocount = 1 Then
    Print #a,
    Co = Co + 1
    pocount = 0
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





Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Rs("pono"), 40, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
Co = Co + 1
End If

temp3 = Right(Rs("lotyear"), 2)
Print #a, Space(2); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(Rs("lotno"), 5, " "); "/"; Padl(temp3, 2, " "); Space(1); Padr(Rs("supplier"), 17, " "); Space(1); Padr(Rs("areaname"), 12, " "); Space(1); Padr(Rs("broker"), 17, " ");
Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr(Rs("carname"), 15, " "); Space(1); Padl(Rs("pjno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
Print #a, Padr(Rs("varcode"), 10, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 3), 12, " "); Space(1); Padl(INF(Rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(Rs("pjamt"), 2), 15, " "); Space(1);
Print #a, Padl(INF(Rs("freght"), 2), 10, " "); Space(1); Padl(INF(Rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(Rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(Rs("totalvalue"), 2), 14, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
Print #a, Padl(Format(diff, "#######.000"), 11, " ")

'Format("########.000")
'Print #a, Space(2); Padr(Format(rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(rs("lotno"), 8, " "); "/"; Padl(rs("lotyear"), 4, " "); Space(1); Padr(rs("areaname"), 14, " "); Space(1);
'Print #a, Space(1); Padr(rs("prmark"), 10, " "); Space(1); Padr(rs("carname"), 25, " "); Space(1); Padl(rs("pjno"), 10, " "); Space(1); Padl(rs("pono"), 10, " "); Space(2); Padr(costr, 5, "  "); Space(1);
'Print #a, Padr(rs("varcode"), 10, " "); Space(1); Padl(INF(rs("bales"), 0), 5, " "); Space(1); Padl(INF(rs("netwt"), 3), 12, " "); Space(1); Padl(INF(rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(rs("pjamt"), 2), 15, " "); Space(1);
'Print #a, Padl(INF(rs("freight"), 2), 12, " "); Space(1); Padl(INF(rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(rs("totalvalue"), 2), 15, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
'Print #a, Padl(INF(diff, 2), 9, " ")
Co = Co + 1
pocount = pocount + 1  'increase tne count
    tot1 = tot1 + Rs("bales")
    tot2 = tot2 + Rs("netwt")
    tot3 = tot3 + Rs("pjamt")
    tot4 = tot4 + Rs("freght")
    tot5 = tot5 + Rs("taxamt")
    tot6 = tot6 + Rs("ldgulg")
    tot7 = tot7 + Rs("totalvalue")
    tot8 = tot8 + cratekg
    tot9 = tot9 + tratekg
    'for ponowise total
    
        ttot1 = ttot1 + Rs("bales")
        ttot2 = ttot2 + Rs("netwt")
        ttot3 = ttot3 + Rs("pjamt")
        ttot4 = ttot4 + Rs("freght")
        ttot5 = ttot5 + Rs("taxamt")
        ttot6 = ttot6 + Rs("ldgulg")
        ttot7 = ttot7 + Rs("totalvalue")
        ttot8 = ttot8 + cratekg
        ttot9 = ttot9 + tratekg
    
    
    
    
    
    
    
    TEMP = Rs("pono")
    cnt = cnt + 1
    Rs.MoveNext
    tot10 = tot8 / cnt
    tot11 = tot9 / cnt
       If Co > 60 Then
            Print #a, Space(2); String(230, "-")
            Print #a, Chr(12)
            Co = 0
            Pg = Pg + 1
            Call header3(Co, Pg, rs1, CStr(W), CStr(X))
       End If
Loop
    If pocount > 1 Then
    Print #a,
    Print #a, Space(0); Space(92); Padl("** PO.No. Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ")
    Print #a,
    End If
    
    Print #a, Space(2); String(230, "-")
    Print #a, Space(2); Space(102); Padl(" ** TOTAL  ** ", 12, " "); Space(2); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl(INF(tot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(tot10, 2), 6, " "); Space(1); Padl(INF(tot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(tot4, 2), 12, " "); Space(1); Padl(INF(tot5, 2), 6, " "); Space(0); Padl(INF(tot6, 2), 9, " "); Space(1); Padl(INF(tot7, 2), 14, " "); Space(1); Padl(INF(tot11, 2), 6, " ")
       
    Print #a, Space(2); String(230, "-")
    Print #a, Chr(12) 'page break
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form ponowisereceiptregister", vbInformation, head
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
Print #a, Space(2) & "Cotton Receipts Register Po.No.wise Report" & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(140) & Format(temp2, "dd/mm/yy") & Space(6) & "Pg.:" & Space(1) & Padl(Pg, 3, " ")
Print #a, Space(2) & String(230, "-")
Print #a, Space(2) & "P.O.No. "
Print #a, Space(2) & "Received     Mill Supplier Name     Station      Broker Name       Press Name Transport Name F.Inv. Mode  Variety      <---Received--->     Rate/  Rate/   Cotton Value       Lorry   Pur.Tax  Other    Total Value  Rate/   Diff kgs."
Print #a, Space(2) & "    Date  Lot No.                                                                               No.                    Qty          Kgs    Candy     Kg                     Freight    Amount   Exp.                   Kg          "
Print #a, Space(2) & String(230, "-")
Co = Co + 9

Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form ponowisereceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set Cn = New Connection
Set Rep = New ReportView
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
    Set rss = New Recordset
    rss.Open "select distinct cast(A.contno as numeric) as pono from rm_cont A,RM_ARRIVAL B,RM_LOT C WHERE A.CONTNO=B.CONTNO AND B.LOTNO=C.LOTNO AND B.LOTDT=C.LOTDT order by cast(A.contno as numeric)", Cn, adOpenStatic, adLockBatchOptimistic
    'rss.Open "select distinct cast(pono as numeric) as pono from rm_lot where pono <> '0' order by cast(pono as numeric) ", cn, adOpenStatic, adLockBatchOptimistic
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
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
        DataCombo1.ListField = "pono"
        Set DataCombo2.RowSource = rss
        DataCombo2.ListField = "pono"
        rss.MoveFirst
        DataCombo1.Text = rss(0)
        rss.MoveLast
        DataCombo2.Text = rss(0)
        Combo1.AddItem "FOR - M"
        Combo1.AddItem "SPOT - S"
        Combo1.AddItem "ALL - A"
        Combo1.ListIndex = 0
   End If
         Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form ponowisereceiptregister", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form ponowisereceiptregister", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form ponowisereceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub
