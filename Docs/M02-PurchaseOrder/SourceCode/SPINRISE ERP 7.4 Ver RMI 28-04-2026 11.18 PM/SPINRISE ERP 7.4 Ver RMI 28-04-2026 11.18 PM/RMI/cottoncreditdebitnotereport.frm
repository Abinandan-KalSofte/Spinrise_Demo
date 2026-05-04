VERSION 5.00
Begin VB.Form cottoncreditdebitnotereport 
   Caption         =   "cotton Credit / debit Note"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10305
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6975
   ScaleWidth      =   10305
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2145
      Left            =   3060
      TabIndex        =   2
      Top             =   1980
      Width           =   5580
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   5
         Top             =   1020
         Width           =   1695
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Lot No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1080
         TabIndex        =   4
         Top             =   1050
         Width           =   645
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Cotton Credit / Debit Note"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   270
         Left            =   -1470
         TabIndex        =   3
         Top             =   0
         Width           =   8535
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Height          =   390
      Left            =   4230
      TabIndex        =   1
      Top             =   4830
      Width           =   1365
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   420
      Left            =   6240
      TabIndex        =   0
      Top             =   4830
      Width           =   1365
   End
End
Attribute VB_Name = "cottoncreditdebitnotereport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rs As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim cnn As Connection
Dim pg As Integer
Dim temp2 As String
Dim co As Integer
Dim diffkgs, diffamt As Double
Dim sno As Integer
Dim supcount As Integer
Dim docdate As String
Dim act As Double
Dim s As String
Dim z As Integer
Dim temp1 As String
Private Sub Command1_Click()
'Developed by D.Parimalam
On Error GoTo Command1_Click_Error
Screen.MousePointer = 11
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

If Len(Combo1.Text) = 0 Then
    MsgBox "Select any Lot No ", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    pg = 1
    co = 0
    sno = 1
    diffkgs = 0
    diffamt = 0
    temp2 = " "
    Dim a, k, cou As Integer
    Dim TotAmt, totbed, totaed, tottax1, tottax2, totpkfwd1, totpkfwd2, totins1, totins2 As Double
    Dim totdis, totinvvalue, totsc, totasc, totfrgt1, totfrgt2, totroff, totnetval As Double
    Dim totwaybill, sno2 As Double
    totwaybill = 0
    sno2 = 1
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close
    z = 1
    Open "C:\g1.TXT" For Output As #z
    Call header1(CInt(pg), CInt(co), rs)
    co = co + 16
    Set rs = New Recordset
   ' rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,d.slname,f.areaname as station,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,rm_area f " & _
   '         "where  a.areacd=f.areacode and a.arrno=b.arrno and A.Catcd = c.Catcd And A.supcd = d.slcode and A.LOTNO=B.LOTNO AND A.SUPCD=B.SUPCD AND  a.divcode='" & Divcode & "' and a.lotno='" & Combo1.Text & "' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.dbamt is not null ", DB, adOpenStatic
    rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,isnull(netwt,0)netwt ,isnull(totlandcost,0)fbillvalue,A.DBNO,B.CATNAME,A.BALES AS QUANTITY from rm_lot a,RM_CAT B " & _
            "where A.CATCD=B.CATCD  AND  a.divcode='" & Divcode & "' and a.lotno='" & Combo1.Text & "' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.dbamt is not null ", db, adOpenStatic
   
   
Do While Not rs.EOF
    diffkgs = rs("netwt") - rs("netwt")
    diffamt = rs("netV") - rs("fbillvalue")
    Print #z, Space(5); Padl(sno2, 4, " "); Space(2); Padr(rs("catname"), 8, " "); "-"; Space(1); Padr(rs("varcode"), 12, " "); Space(1); Padl(rs("quantity"), 10, " "); Space(1); Padl(INF(rs("netwt"), 3), 12, " "); Space(2); Padl(INF(rs("netwt"), 3), 12, " "); Space(2); Padl(INF(rs("FBILLVALUE"), 2), 15, " "); Space(0); Padl(INF(rs("netV"), 2), 16, " ")
    co = co + 1
    If co > PageLen Then
       pg = pg + 1
        co = 0
         Print #z, String(112, Chr(196))
        Print #z, Chr(12)
        co = co + 16
    End If
    rs.MoveNext
    sno2 = sno2 + 1
Loop
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    If diffkgs <> 0 Or diffamt <> 0 Then
    Print #z, Space(25); "Difference in Kgs : " & Padr(INF(diffkgs, 3), 12, " ") & "  Kgs" & Space(5) & "Difference in Amt : " & "Rs." & Padr(INF(Round(diffamt, 0), 0), 12, " ")
    End If
    Print #z,
    Print #z,
    Print #z, Space(5); String(112, Chr(196))
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z, Chr(27) & "E" & Space(15) & "Prepared" & Space(15); "Checked" & Space(15) & "Manager" & Space(15) & "Director" & Chr(27) & "F"
    Print #z, Chr(12)
    Close #z
    z = FreeFile
    Open "c:\g1.bat" For Output As #z
    Print #z, "cd\"
    Print #z, "c:"
    Print #z, "cd\"
    Print #z, "type g1.txt>prn"
    Close #z
    RPTV.txtfile = "c:\g1.txt"
    RPTV.Batfile = "c:\g1.bat"
    Screen.MousePointer = 0
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form cottoncreditdebitnotereport"
End Sub
Private Sub Command2_Click()
    Unload Me
End Sub
'By D.Parimalam
Private Sub Form_Load()
On Error GoTo Form_Load_Error
    Set cnn = New Connection
    cnn.Open connectstring
    Set Rss = New Recordset
    Rss.Open "select distinct lotno,billdt from rm_lot where lotyear='" & Year(yfdate) & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg <> 'Y' AND DBAMT<>0 and DivCode = '" & Divcode & "' order by lotno", cnn, adOpenStatic
    If Rss.RecordCount <> 0 Then
        Do While Not Rss.EOF
          Combo1.AddItem Rss(0)
          Rss.MoveNext
        Loop
        Combo1.ListIndex = 0
   End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form cottoncreditdebitnotereport"
End Sub

Public Sub header1(pg As Integer, co As Integer, rs As Recordset)
On Error GoTo header1_Error
Set rs = New Recordset
Dim delivery As String
delivery = " "
Dim Lrs As New ADODB.Recordset
rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.pjno,a.pjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.billno,a.billdt from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,fa_slmas e,rm_area f where  LOTYEAR='" & Year(yfdate) & "' AND a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno " & _
            "and  a.catcd=c.catcd and f.areacode=a.areacd and a.supcd=d.slcode and a.brkcd*=e.slcode and a.divcode='" & Divcode & "' and a.lotno='" & Combo1.Text & "' AND OPFLG<>'Y' and a.lotyear='" & Year(yfdate) & "'", cnn, adOpenStatic, adLockBatchOptimistic

Print #z, Space(5) & CENTRE(Chr(14) & DIVNAME & Chr(14), 74, " ")
Print #z, Chr(27) & Chr(205) & Chr(27) & Chr(77)
Print #z,
Print #z, Space(5) + Chr(27) & "E" & CENTRE("COTTON CREDIT/DEBIT NOTE", 112, " ") & Chr(27) & "F"
Print #z, Space(5) + Chr(27) & "E" & CENTRE("________________________", 112, " ") & Chr(27) & "F"
Print #z, Space(83); Padl("M.Lot :", 7, " "); Space(1); Chr(27) + Chr(87) + "1" + Padr(rs("lotno"), 7, " ") & Chr(27) + Chr(87) + "0"
Print #z,
Print #z, Space(64); Padl("S.No.:", 7, " "); Space(1); Padl(rs("DBNO"), 5, " "); Space(6); Padl("P.Lot :", 7, " "); Space(1); Padl(rs("plotno"), 7, " ")
Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5); "Party Name :"; Space(1); Padr(rs("slname"), 25, " "); Chr(179); Space(1); "P.O.No.  :"; Padr(rs("contno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(rs("contdt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Received On  :"; Space(1); Padl(Format(rs("lotdt"), "dd-mm-yy"), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "Broker Name:"; Space(1); Padr(rs("broker"), 25, " "); Chr(179); Space(1); "Bill No. :"; Padr(rs("billno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(rs("billdt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Lorry No     :"; Space(1); Padl(rs("lorrynos"), 15, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Set Lrs = New Recordset
Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' and DivCode ='" & Divcode & "'", cnn, adOpenStatic
If Lrs.RecordCount > 0 Then
  If Lrs("DLYTYPE") = "M" Then
    delivery = "FOR"
  ElseIf Lrs("DLYTYPE") = "S" Then
    delivery = "SPOT"
  End If
Else
  delivery = " "
End If

Print #z, Space(5); "Station    :"; Space(1); Padr(rs("station"), 25, ""); Chr(179); Space(1); "Rate/Candy : "; Padl(INF(rs("ratecy"), 2), 10, " "); Space(1); Space(1); Space(2); Padl(delivery, 12, " "); Space(1); Chr(179); Space(1); "Lorry Freight:"; Space(1); Padl(INF(rs("freight"), 2), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "            "; Space(26); Chr(179); Space(1); IIf(rs("DBAMT") > 0, "Debit Amt  : " & Padl(INF(rs("DBAMT"), 2), 10, " "), "Credit Amt : " & Padl(INF(Abs(rs("DBAMT")), 2), 10, " ")); Space(17); Chr(179)
Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5) + "S.No  Item                  No.of Bales    Party NWT      Mill NWT    Invoice Value       Net Value"
Print #z, Space(5) + String(112, Chr(196))
Exit Sub
header1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure header1 of Form cottoncreditdebitnotereport"
End Sub







    
    
    
    
    
    
    
    
