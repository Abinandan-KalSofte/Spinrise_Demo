VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form supplierwisecottpur 
   Caption         =   "supplierwisecotton purchase Details"
   ClientHeight    =   7230
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11370
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7230
   ScaleWidth      =   11370
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
      Height          =   3525
      Left            =   1770
      TabIndex        =   2
      Top             =   1410
      Width           =   7620
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2655
         TabIndex        =   9
         Top             =   2835
         Width           =   1995
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   285
         Left            =   2655
         TabIndex        =   3
         Top             =   675
         Width           =   1500
         _ExtentX        =   2646
         _ExtentY        =   503
         _Version        =   393216
         Format          =   70582273
         CurrentDate     =   38740
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   285
         Left            =   2655
         TabIndex        =   4
         Top             =   1200
         Width           =   1500
         _ExtentX        =   2646
         _ExtentY        =   503
         _Version        =   393216
         Format          =   70582273
         CurrentDate     =   38763
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2655
         TabIndex        =   12
         Top             =   1725
         Width           =   4680
         _ExtentX        =   8255
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2655
         TabIndex        =   13
         Top             =   2280
         Width           =   4725
         _ExtentX        =   8334
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "To Supplier"
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
         Left            =   990
         TabIndex        =   11
         Top             =   2271
         Width           =   990
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "From Supplier"
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
         Left            =   990
         TabIndex        =   10
         Top             =   1754
         Width           =   1170
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
         Left            =   990
         TabIndex        =   8
         Top             =   1237
         Width           =   705
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
         Left            =   990
         TabIndex        =   7
         Top             =   720
         Width           =   885
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Cotton Purchase Debit/Credit Details - Supplierwise"
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
         Left            =   0
         TabIndex        =   6
         Top             =   120
         Width           =   7575
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
         Left            =   990
         TabIndex        =   5
         Top             =   2790
         Width           =   435
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Height          =   420
      Left            =   4050
      TabIndex        =   1
      Top             =   5580
      Width           =   1365
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      Height          =   420
      Left            =   6030
      TabIndex        =   0
      Top             =   5580
      Width           =   1365
   End
End
Attribute VB_Name = "supplierwisecottpur"
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
Dim Slname, brkname, areaname As String
Dim debitamt, creditamt As Double
Dim sno As Integer
Dim supcount As Integer
Dim docdate As String
Dim act As Double
Dim s As String
Dim z As Integer
Dim temp1 As String
Dim fsup, tsup As String
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7 As Double
Private Sub Command1_Click()
'Developed by D.Parimalam
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
Set cnn = New Connection
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Dim slno As Double
slno = 1
z = 0
act = 0
debitamt = 0
creditamt = 0
supcount = 0
Slname = ""
brkname = ""
areaname = ""
temp1 = ""
fsup = Right(DataCombo1.Text, 6)
tsup = Right(DataCombo2.Text, 6)
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
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.pnetwt,b.fbillvalue,b.dbamt,b.quality" & _
         " from RM_ARRIVAL a,RM_LOT b Where LOTYEAR='" & Year(yfdate) & "' AND a.contno = b.pono and a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.supcd between '" & fsup & "' and '" & tsup & "' and b.dbamt <> 0 order by a.supcd,a.contno,a.lotdt", cnn, adOpenStatic
ElseIf temp1 = "D" Then
  Set rs1 = New Recordset
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.pnetwt,b.fbillvalue,b.dbamt,b.quality" & _
         " from RM_ARRIVAL a,RM_LOT b Where LOTYEAR='" & Year(yfdate) & "' AND a.contno = b.pono and a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.supcd between '" & fsup & "' and '" & tsup & "' and b.dbamt > 0 order by a.supcd,a.contno,a.lotdt", cnn, adOpenStatic
ElseIf temp1 = "C" Then
  Set rs1 = New Recordset
  rs1.Open "select distinct a.contno as pono,a.contdt as podt,a.supcd,a.brkcd,a.lotno,a.lotdt,a.plotno,a.areacode,b.netwt,b.pjamt,b.pnetwt,b.fbillvalue,b.dbamt,b.quality" & _
         " from RM_ARRIVAL a,RM_LOT b Where LOTYEAR='" & Year(yfdate) & "' AND a.contno = b.pono and a.arrdate=b.arrdt AND a.LOTNO=b.LOTNO and a.divcode=b.divcode " & _
         "AND a.LOTDT=b.LOTDT and a.lotdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.supcd between '" & fsup & "' and '" & tsup & "' and b.dbamt < 0 order by a.supcd,a.contno,a.lotdt", cnn, adOpenStatic
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
    sno = 1
    temp2 = " "
    Open "C:\int.TXT" For Output As #z
    Call header1(Pg, CStr(s), CStr(a))
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
    
    If temp2 <> Slname Then
    If supcount > 1 Then
      Print #z,
      Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
      Print #z, Padr(" ", 20, " ") + Space(1) + Padr("Supplier Total", 19, " ") + Space(1) + Padl(INF(stot1, 3), 15, " ") + Space(0) + Padl(INF(stot2, 2), 15, " ") + Space(1);
      Print #z, Padl(INF(stot3, 3), 14, " ") + Space(0) + Padl(INF(stot4, 2), 15, " ") + Padl(INF(tot5, 2), 12, " ") + Space(1) + Padl(INF(stot6, 2), 12, " ")
      Print #z,
      supcount = 0
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
    
    
    Print #z, Space(5) + Padr(Slname, 30, " ") + Space(1); Padr(Format(rs1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("pono"), 7, " ") + Space(1) + Padl(Format(rs1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 7, " ") + Space(1) + Padl(rs1("plotno"), 10, " ") + Space(1);
    Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("pjamt"), 2), 14, " ") + Space(1);
    Print #z, Padl(INF(rs1("pnetwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("fbillvalue"), 2), 14, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ") + Space(2) + Padl(INF(rs1("quality"), 2), 8, "")
    Else
    Print #z, Space(5) + Padr(" ", 30, " ") + Space(1); Padr(Format(rs1("lotdt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("pono"), 7, " ") + Space(1) + Padl(Format(rs1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 7, " ") + Space(1) + Padl(rs1("plotno"), 10, " ") + Space(1);
    Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("pjamt"), 2), 14, " ") + Space(1);
    Print #z, Padl(INF(rs1("pnetwt"), 3), 14, " ") + Space(1) + Padl(INF(rs1("fbillvalue"), 2), 14, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ") + Space(2) + Padl(INF(rs1("quality"), 2), 8, "")
    'Print #z, Space(5) + Padr(" ", 8, " ") + Space(1) + Padl(RS1("pono"), 7, " ") + Space(1) + Padl(Format(RS1("podt"), "dd/mm/yy"), 8, " ") + Space(1) + Padl(RS1("lotno"), 7, " ") + Space(1) + Padl(RS1("plotno"), 10, " ") + Space(1) + Padr(slname, 30, " ") + Space(1);
    'Print #z, Padr(brkname, 30, " ") + Space(1) + Padr(areaname, 15, " ") + Space(1) + Padl(INF(RS1("netwt"), 3), 15, " ") + Space(1) + Padl(INF(RS1("pjamt"), 2), 15, " ") + Space(1);
    'Print #z, Padl(INF(RS1("pnetwt"), 3), 15, " ") + Space(1) + Padl(INF(RS1("fbillvalue"), 2), 15, " ") + Padl(INF(debitamt, 2), 12, " ") + Space(1) + Padl(INF(creditamt, 2), 12, " ")
    End If
    Co = Co + 1
    
            If Co >= 60 Then
                Print #z, Space(5) + String(225, "-")
                Print #z, Chr(12)
                Co = 0
                Pg = Pg + 1
                Call header1(Pg, CStr(s), CStr(a))
            End If
            tot1 = tot1 + rs1("netwt")
            tot2 = tot2 + rs1("pjamt")
            tot3 = tot3 + rs1("pnetwt")
            tot4 = tot4 + rs1("fbillvalue")
            tot5 = tot5 + debitamt
            tot6 = tot6 + creditamt
            
            stot1 = stot1 + rs1("netwt")
            stot2 = stot2 + rs1("pjamt")
            stot3 = stot3 + rs1("pnetwt")
            stot4 = stot4 + rs1("fbillvalue")
            stot5 = stot5 + debitamt
            stot6 = stot6 + creditamt
            
            
            temp2 = Slname
            supcount = supcount + 1
            rs1.MoveNext
            If Co >= 60 Then
              Print #z, Space(5) + String(225, "-")
              Print #z, Chr(12)
              Co = 0
              Pg = Pg + 1
              Call header1(Pg, CStr(s), CStr(a))
           End If
            
           
    Loop
    If supcount > 1 Then
    Print #z,
    Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
    Print #z, Padr(" ", 20, " ") + Space(1) + Padr("Supplier Total", 19, " ") + Space(1) + Padl(INF(stot1, 3), 15, " ") + Space(0) + Padl(INF(stot2, 2), 15, " ") + Space(1);
    Print #z, Padl(INF(stot3, 3), 14, " ") + Space(0) + Padl(INF(stot4, 2), 15, " ") + Padl(INF(tot5, 2), 12, " ") + Space(1) + Padl(INF(stot6, 2), 12, " ")
    Print #z,
    End If
    
Print #z, Space(5) + String(225, "-")
Print #z, Space(5) + Padl(" ", 7, " ") + Space(1) + Padr(" ", 8, " ") + Space(1) + Padl("", 7, " ") + Space(1) + Padl(" ", 10, " ") + Space(1) + Padr("", 39, " ") + Space(1);
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
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form supplierwisecottpur", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form supplierwisecottpur", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set cnn = New Connection
    cnn.Open connectstring
    DTPicker1.Enabled = True
    DTPicker1.Enabled = True
    DTPicker1.MinDate = yfdate
    DTPicker2.MinDate = yfdate
    DTPicker1.Value = pdate
    DTPicker2.Value = pdate
    DTPicker1.MaxDate = pdate
    DTPicker2.MaxDate = pdate
    Combo1.AddItem "Credit-C"
    Combo1.AddItem "Debit-D"
    Combo1.AddItem "All-A"
    Combo1.ListIndex = 0
    Set Rss = New Recordset
    Rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,SLCODE from fa_slmas a ,rm_lot b where LOTYEAR='" & Year(yfdate) & "' AND  a.slcode=b.supcd ORDER BY SLCODE ", cnn, adOpenStatic, adLockBatchOptimistic
    If Rss.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rss
        DataCombo1.ListField = "SUP"
        Set DataCombo2.RowSource = Rss
        DataCombo2.ListField = "SUP"
        Rss.MoveFirst
        DataCombo1.Text = Rss(0)
        Rss.MoveLast
        DataCombo2.Text = Rss(0)
   End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form supplierwisecottpur", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub header1(Pg As Integer, s As String, a As String)
On Error GoTo header1_Error

          Print #z, Chr(18) & Chr(27) + "E" + CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
          Co = Co + 1
          Print #z, Chr(15)
          Co = Co + 1
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Cotton Purchase Debit/Credit Details from " & Format(DTPicker1.Value, "dd/mm/yy"); Space(1) & "to" + Space(1) & Format(DTPicker2.Value, "dd/mm/yy") & Space(72) & Space(71) & Format(pdate, "dd/mm/yy") & Space(5) & "Pg.:" & Padl(Pg, 3, " ")
          Co = Co + 1
          s = Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)
          Print #z, Space(5) + CENTRE("Option: Supplierwise  Type : " & s, 225, " ")
          Co = Co + 1
          Print #z, Space(5) + String(225, "-")
          Co = Co + 1
          Print #z, Space(5) + "Supplier Name                  Received  PO No. PO Date     Mill      Party Broker Name                    Station      Mill Net Wt.          Value  Party Net Wt.    Party Value   Debit Amt   Credit Amt   Quality"
          'Print #z, Space(5) + "Received  PO No. PO Date     Mill      Party Supplier Name                  Broker Name                    Station      Mill Net Wt.          Value  Party Net Wt.    Party Value   Debit Amt    Credit Amt   Remarks"
          'Print #z, Space(5) + "Received  PO No.    Mill      Party Supplier Name                  Broker Name                    Station            Mill Net Wt.           Value   Party Net Wt.     Party Value   Debit Amt    Credit Amt   Remarks"
          'Print #z, Space(5) + " PO No. Received    Mill      Party Supplier Name                  Broker Name                    Station            Mill Net Wt.           Value   Party Net Wt.     Party Value   Debit Amt    Credit Amt   Remarks"
          Co = Co + 1
          Print #z, Space(5) + "                                 Date                     Lot No     Lot No     "
          'Print #z, Space(5) + "           Date   Lot No     Lot No     "
          Co = Co + 1
          Print #z, Space(5) + String(225, "-")
          Co = Co + 1

Exit Sub
header1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure header1 of Form supplierwisecottpur", vbInformation, head
Screen.MousePointer = 0
End Sub





