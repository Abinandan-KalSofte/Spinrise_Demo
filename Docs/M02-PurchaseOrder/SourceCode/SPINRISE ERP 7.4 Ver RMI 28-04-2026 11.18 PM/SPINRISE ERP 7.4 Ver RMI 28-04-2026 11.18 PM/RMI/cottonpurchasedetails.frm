VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form cottonpurchasedetails 
   Caption         =   "Cotton Purchase Debit/Credit Details"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   420
      Left            =   6300
      TabIndex        =   7
      Top             =   6030
      Width           =   1365
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Height          =   420
      Left            =   4170
      TabIndex        =   6
      Top             =   6000
      Width           =   1365
   End
   Begin VB.Frame Frame1 
      Height          =   2670
      Left            =   2850
      TabIndex        =   0
      Top             =   2550
      Width           =   6090
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3105
         TabIndex        =   9
         Top             =   1890
         Width           =   1545
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   285
         Left            =   3105
         TabIndex        =   1
         Top             =   765
         Width           =   1500
         _ExtentX        =   2646
         _ExtentY        =   503
         _Version        =   393216
         Format          =   47775745
         CurrentDate     =   38740
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   285
         Left            =   3090
         TabIndex        =   2
         Top             =   1320
         Width           =   1500
         _ExtentX        =   2646
         _ExtentY        =   503
         _Version        =   393216
         Format          =   47775745
         CurrentDate     =   38763
      End
      Begin VB.Label Label2 
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
         Left            =   1410
         TabIndex        =   8
         Top             =   1980
         Width           =   435
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Cotton Purchase Debit/Credit Details - Datewise"
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
         Left            =   -975
         TabIndex        =   5
         Top             =   45
         Width           =   7725
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
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
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1350
         TabIndex        =   4
         Top             =   810
         Width           =   885
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
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
         Left            =   1350
         TabIndex        =   3
         Top             =   1380
         Width           =   705
      End
   End
End
Attribute VB_Name = "cottonpurchasedetails"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim c1 As Integer
Dim cnn As Connection
Dim Pg As Integer
Dim temp2 As String
Dim Co As Integer
Dim supcount As Integer
Dim Slname, brkname, areaname As String
Dim debitamt, creditamt As Double
Dim Sno As Integer
Dim docdate As String
Dim act As Double
Dim S As String
Dim z As Integer
Dim temp1 As String
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7 As Double
Private Sub Command1_Click()
'Developed by D.Parimalam
Dim slno As Double
On Error GoTo Command1_Click_Error
Screen.MousePointer = 11
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
z = 0
act = 0
debitamt = 0
supcount = 0
creditamt = 0
Slname = ""
brkname = ""
areaname = ""
temp1 = ""
temp1 = Right(Combo1.Text, 1)
tot1 = 0
tot2 = 0
tot3 = 0
tot4 = 0
tot5 = 0
tot6 = 0
tot7 = 0

slno = 1
If temp1 = "A" Then
  Set rs1 = New Recordset
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.netwt,b.totlandcost,b.dbamt,isnull(b.dbno,0) as dbno,b.billdt" & _
         " from RM_ARRIVAL a,RM_LOT b Where  LOTYEAR='" & Year(yfdate) & "' AND a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and  OPFLG<>'Y' AND b.dbamt <> 0 order by b.dbno,b.billdt,a.lotdt", cnn, adOpenStatic
ElseIf temp1 = "D" Then
  Set rs1 = New Recordset
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.netwt,b.totlandcost,b.dbamt,isnull(b.dbno,0) as dbno,b.billdt" & _
         " from RM_ARRIVAL a,RM_LOT b Where  LOTYEAR='" & Year(yfdate) & "' AND a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and  OPFLG<>'Y' AND  b.dbamt > 0 order by b.dbno,b.billdt,a.lotdt", cnn, adOpenStatic
ElseIf temp1 = "C" Then
  Set rs1 = New Recordset
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.netwt,b.totlandcost,b.dbamt,isnull(b.dbno,0) as dbno,b.billdt" & _
         " from RM_ARRIVAL a,RM_LOT b Where  LOTYEAR='" & Year(yfdate) & "' AND a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and OPFLG<>'Y' AND b.dbamt < 0 order by b.dbno,b.billdt,a.lotdt", cnn, adOpenStatic
End If
If rs1.RecordCount = 0 Then
    MsgBox "No Records to Print", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Set RPTV = New Report.ReportView
z = FreeFile
Close #z
Close
    Pg = 1
    Co = 0
    Sno = 1
    temp2 = " "
    Open "C:\int.TXT" For Output As #z
    Call header1(Pg, CStr(S), CStr(a))
    Do While Not rs1.EOF
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas where slcode='" & rs1("supcd") & "' ", cnn, adOpenStatic
    If rs3.RecordCount > 0 Then
        Slname = rs3("slname")
    Else
        Slname = " "
    End If
    Set rs4 = New Recordset
    rs4.Open "select slname from fa_slmas where slcode='" & rs1("brkcd") & "'", cnn, adOpenStatic
    If rs4.RecordCount > 0 Then
        brkname = rs4("slname")
    Else
         brkname = " "
    End If
    
    Set rs5 = New Recordset
    rs5.Open "select areaname from rm_area where areacode='" & rs1("areacode") & "'", cnn, adOpenStatic
    If rs5.RecordCount > 0 Then
        areaname = rs5("areaname")
    Else
        areaname = " "
    End If
    If temp1 = "A" Then
      If rs1("dbamt") <= 0 Then
          creditamt = Abs(rs1("dbamt"))
          debitamt = 0
      ElseIf rs1("dbamt") >= 0 Then
          debitamt = rs1("dbamt")
          creditamt = 0
      End If
    ElseIf temp1 = "C" Then
        creditamt = Abs(rs1("dbamt"))
        debitamt = 0
    ElseIf temp1 = "D" Then
        debitamt = rs1("dbamt")
        creditamt = 0
    End If
    
    If temp2 <> rs1("lotdt") Then
    If supcount > 1 Then
      Print #z,
      Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
      Print #z, Padr(" ", 26, " ") + Space(1) + Padr("Day Total", 13, " ") + Space(7) + Padl(INF(stot1, 3), 15, " ") + Space(0) + Padl(INF(stot2, 2), 15, " ") + Space(1);
      Print #z, Padl(INF(stot3, 3), 14, " ") + Space(0) + Padl(INF(stot4, 2), 15, " ") + Padl(INF(stot5, 2), 12, " ") + Space(1) + Padl(INF(stot6, 2), 12, " ")
      Print #z,
      supcount = 0
      Co = Co + 6
    End If
    If supcount = 1 Then
    Print #z,
    Co = Co + 1
    supcount = 0
    End If
    stot1 = 0
    stot2 = 0
    stot3 = 0
    stot4 = 0
    stot5 = 0
    stot6 = 0
    
    
    
    Print #z, Space(5) + Padl(slno, 4, " ") & Space(2) & Padr(Format(rs1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("pono"), 7, " ") + Space(1) + Padl(Format(rs1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 7, " ") + Space(1) + Padl(rs1("plotno"), 5, " ") + Space(1) + Padr(Slname, 30, " ") + Space(6);
    Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("pjamt"), 2), 14, " ") + Space(1);
    Print #z, Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("totlandcost"), 2), 14, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ") + Space(3)
    Else
    Print #z, Space(5) + Padl(slno, 4, " ") & Padr(" ", 4, " ") + Space(7) + Padl(rs1("pono"), 7, " ") + Space(1) + Padl(Format(rs1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 7, " ") + Space(1) + Padl(rs1("plotno"), 5, " ") + Space(1) + Padr(Slname, 30, " ") + Space(6);
    Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("pjamt"), 2), 14, " ") + Space(1);
    Print #z, Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("totlandcost"), 2), 14, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ") + Space(3) + Padl(INF(rs1("QUALITY"), 2), 14, "")
    'Print #z, Space(5) + Padr(" ", 8, " ") + Space(1) + Padl(RS1("pono"), 7, " ") + Space(1) + Padl(Format(RS1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(RS1("lotno"), 7, " ") + Space(1) + Padl(RS1("plotno"), 10, " ") + Space(1) + Padr(slname, 30, " ") + Space(1);
    'Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 15, " ") + Space(1) + Padl(INF(RS1("netwt"), 3), 15, " ") + Space(1) + Padl(INF(RS1("pjamt"), 2), 15, " ") + Space(1);
    'Print #z, Padl(INF(RS1("pnetwt"), 3), 15, " ") + Space(1) + Padl(INF(RS1("totlandcost"), 2), 15, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ")
    End If
    Co = Co + 1
    slno = slno + 1
            If Co >= 60 Then
                Print #z, Space(5) + String(225, "-")
                Print #z, Chr(12)
                Co = 0
                Pg = Pg + 1
                Call header1(Pg, CStr(S), CStr(a))
            End If
            tot1 = tot1 + rs1("netwt")
            tot2 = tot2 + rs1("pjamt")
            tot3 = tot3 + rs1("netwt")
            tot4 = tot4 + rs1("totlandcost")
            tot5 = tot5 + debitamt
            tot6 = tot6 + creditamt
            temp2 = rs1("lotdt")
            stot1 = stot1 + rs1("netwt")
            stot2 = stot2 + rs1("pjamt")
            stot3 = stot3 + rs1("netwt")
            stot4 = stot4 + rs1("totlandcost")
            stot5 = stot5 + debitamt
            stot6 = stot6 + creditamt
            supcount = supcount + 1
            rs1.MoveNext
            If Co >= 60 Then
                Print #z, Space(5) + String(225, "-")
                Print #z, Chr(12)
                Co = 0
                Pg = Pg + 1
                Call header1(Pg, CStr(S), CStr(a))
            End If
            
    Loop
    If supcount > 1 Then
      Print #z,
      Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(7) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
      Print #z, Padr(" ", 26, " ") + Space(1) + Padr("Day Total", 13, " ") + Space(7) + Padl(INF(stot1, 3), 15, " ") + Space(0) + Padl(INF(stot2, 2), 15, " ") + Space(1);
      Print #z, Padl(INF(stot3, 3), 14, " ") + Space(0) + Padl(INF(stot4, 2), 15, " ") + Padl(INF(stot5, 2), 12, " ") + Space(1) + Padl(INF(stot6, 2), 12, " ")
      Print #z,
      supcount = 0
      Co = Co + 3
    End If
    
    
    
Print #z, Space(5) + String(225, "-")
Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(7) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
Print #z, Padr(" ", 26, " ") + Space(1) + Padr("Total", 13, " ") + Space(1) + Padl(INF(tot1, 3), 15, " ") + Space(0) + Padl(INF(tot2, 2), 15, " ") + Space(1);
Print #z, Padl(INF(tot3, 3), 14, " ") + Space(0) + Padl(INF(tot4, 2), 15, " ") + Padl(INF(tot5, 2), 12, " ") + Space(1) + Padl(INF(tot6, 2), 12, " ")
Print #z, Space(5) + String(225, "-")
Print #z,
Print #z,
Print #z,
Print #z,
Print #z,
Print #z,
Print #z, Chr(27) & "E" & Space(65) + "Prepared" + Space(20) + "Checked" + Space(20) + " F.M." + Space(20) + " M.D " & Chr(27) & "F"
'co = co + 13
Close #z
 z = FreeFile
Open "c:\int.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type int.TXT>prn"
Close #z
RPTV.txtfile = "c:\int.TXT"
RPTV.Batfile = "c:\int.bat"
Screen.MousePointer = 0
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form cottonpurchasedetails"
End Sub
Private Sub Command2_Click()
    Unload Me
End Sub

'By D.Parimalam
Private Sub Form_Load()
On Error GoTo Form_Load_Error
    Set cnn = New Connection
    cnn.Open connectstring
    DTPicker1.Enabled = True
    DTPicker1.Enabled = True
    DTPicker1.MinDate = yfdate
    DTPicker2.MinDate = yfdate
    DTPicker1.value = pdate
    DTPicker2.value = pdate
    DTPicker1.MaxDate = pdate
    DTPicker2.MaxDate = pdate
    Combo1.AddItem "Credit-C"
    Combo1.AddItem "Debit-D"
    Combo1.AddItem "All-A"
    Combo1.ListIndex = 0
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form cottonpurchasedetails"
End Sub
Public Sub header1(Pg As Integer, S As String, a As String)
On Error GoTo header1_Error
          Print #z, Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") & Chr(27) & "F" + Chr(15)
          Co = Co + 1
          Print #z, Space(235)
          Co = Co + 1
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Cotton Purchase Debit/Credit Details from " & Format(DTPicker1.value, "dd/mm/yy"); Space(1) & "to" + Space(1) & Format(DTPicker2.value, "dd/mm/yy") & Space(72) & Space(71) & Format(pdate, "dd/mm/yy") & Space(5) & "Pg.:" & Padl(Pg, 3, " ")
          Co = Co + 1
          S = Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)
          Print #z, Space(5) + CENTRE("Option: Datewise  Type : " & S, 225, " ")
          Co = Co + 1
          Print #z, Space(5) + String(225, "-")
          Co = Co + 1
          Print #z, Space(5) + "S.No  Received  PO No. PO Date     Mill       Supplier Name                       Broker Name                    Station      Mill Net Wt.          Value  Party Net Wt.    Party Value   Debit Amt    Credit Amt         Quality"
          'Print #z, Space(5) + "S.No  Received  PO No. PO Date     Mill      Party Supplier Name                  Broker Name                    Station      Mill Net Wt.          Value  Party Net Wt.    Party Value   Debit Amt    Credit Amt   Quality"
          'Print #z, Space(5) + "Received  PO No.    Mill      Party Supplier Name                  Broker Name                    Station            Mill Net Wt.           Value   Party Net Wt.     Party Value   Debit Amt    Credit Amt   Remarks"
          'Print #z, Space(5) + " PO No. Received    Mill      Party Supplier Name                  Broker Name                    Station            Mill Net Wt.           Value   Party Net Wt.     Party Value   Debit Amt    Credit Amt   Remarks"
          Co = Co + 1
          Print #z, Space(5) + "      Date                       Lot No     "
          'Print #z, Space(5) + "           Date   Lot No     Lot No     "
          Co = Co + 1
          Print #z, Space(5) + String(225, "-")
          Co = Co + 1
Exit Sub
header1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header1 of Form cottonpurchasedetails"
End Sub



