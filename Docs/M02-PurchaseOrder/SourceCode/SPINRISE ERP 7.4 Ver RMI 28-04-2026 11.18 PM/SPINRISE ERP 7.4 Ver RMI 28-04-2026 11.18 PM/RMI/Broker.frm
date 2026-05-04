VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form Broker 
   Caption         =   "Rejected Brokerwise"
   ClientHeight    =   5970
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10590
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   5970
   ScaleWidth      =   10590
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   3615
      Left            =   1680
      TabIndex        =   0
      Top             =   1320
      Width           =   7695
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2280
         TabIndex        =   14
         Top             =   1200
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Format          =   61669377
         CurrentDate     =   39269
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2280
         TabIndex        =   13
         Top             =   600
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Format          =   61669377
         CurrentDate     =   39269
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Report"
         Height          =   375
         Left            =   2400
         TabIndex        =   12
         Top             =   3000
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
         Caption         =   "E&xit"
         Height          =   375
         Left            =   4440
         TabIndex        =   11
         Top             =   3000
         Width           =   1455
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2280
         TabIndex        =   1
         Top             =   1200
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo1"
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2280
         TabIndex        =   2
         Top             =   600
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo1"
      End
      Begin MSDataListLib.DataCombo DataCombo5 
         Height          =   315
         Left            =   2280
         TabIndex        =   3
         Top             =   1800
         Width           =   5175
         _ExtentX        =   9128
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo6 
         Height          =   315
         Left            =   2280
         TabIndex        =   4
         Top             =   2280
         Width           =   5175
         _ExtentX        =   9128
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label2 
         Caption         =   "Label2"
         Height          =   255
         Left            =   120
         TabIndex        =   10
         Top             =   360
         Width           =   15
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         Height          =   195
         Left            =   360
         TabIndex        =   9
         Top             =   720
         Width           =   735
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         Height          =   195
         Left            =   360
         TabIndex        =   8
         Top             =   1320
         Width           =   585
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "From Broker"
         Height          =   195
         Left            =   360
         TabIndex        =   7
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "To Broker"
         Height          =   195
         Left            =   360
         TabIndex        =   6
         Top             =   2400
         Width           =   705
      End
      Begin VB.Label Label6 
         BackColor       =   &H00800000&
         Caption         =   "                                      BROKERWISE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   0
         TabIndex        =   5
         Top             =   0
         Width           =   8175
      End
   End
End
Attribute VB_Name = "Broker"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim Rep As New ReportView
Dim re As String
Dim tot, tot1, tot2, tot3, tot4, tot5, tot6, tot7 As Double
Dim ttot, ttot1, ttot2, ttot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
Dim a, b As Date
Dim c, d As String
        a = Format(Trim(DTPicker1.value), "yyyy-mm-dd")
        b = Format(Trim(DTPicker2.value), "yyyy-mm-dd")
        c = Right(DataCombo5.Text, 6)
        d = Right(DataCombo6.Text, 6)
        If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    Call rej1(CStr(a), CStr(b), CStr(c), CStr(d))
    Screen.MousePointer = 0
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form Broker"
End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'ToAlphaNumber txtFields(Index), 1, KeyAscii
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Dim rss1 As New Recordset

DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
DTPicker1.value = pdate
DTPicker2.value = pdate
Set Cn = New Connection
Set Rep = New ReportView
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
    Set rss1 = New Recordset
    rss1.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,slcode from fa_slmas a ,rm_lot b where a.slcode=b.brkcd and Rejflg='Y' and Lotyear='" & Year(yfdate) & "' and b.DivCode = '" & Divcode & "' order by slcode", Cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct arrdt as arrdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", Cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
      Set DataCombo1.RowSource = Rs
      DataCombo1.ListField = "arrdt"
      Set DataCombo2.RowSource = Rs
      DataCombo2.ListField = "arrdt"
      Rs.MoveFirst
      DataCombo1.Text = Rs(0)
      Rs.MoveLast
      DataCombo2.Text = Rs(0)
    End If
       If rss1.RecordCount <> 0 Then
        Set DataCombo5.RowSource = rss1
        DataCombo5.ListField = "SUP"
        Set DataCombo6.RowSource = rss1
        DataCombo6.ListField = "SUP"
        rss1.MoveFirst
        DataCombo5.Text = rss1(0)
        rss1.MoveLast
        DataCombo6.Text = rss1(0)
      End If
      
         Screen.MousePointer = 0
    

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form Broker"

End Sub
'---------------------------------------------------------------------------------------
' Procedure : rej1
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub rej1(a As String, b As String, c As String, d As String)
Dim Sname As String, Sno As Integer, subcount As Integer
Dim rs1 As New Recordset
On Error GoTo rej1_Error

On Error GoTo rej1_Error
Set cnn = New Connection
a1 = a
b1 = b
z = 0
Sname = ""
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
Set rs1 = New Recordset
                ''MODIFIED
                'RS1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1',case when a.FBILLVALUE is null then a.pjamt else a.fbillvalue end  as 'Value',a.lotno,a.billno,a.billdt from fa_slmas f,rm_area b,rm_var c,rm_lot a Where a.supcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' order by a.lotdt", DB, adOpenStatic
                
                rs1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1', ISNULL(a.pjamt,0) 'Value',a.lotno,a.billno,a.billdt,a.ratecy,a.rejdt,a.reason from fa_slmas f,rm_area b,rm_var c,rm_lot a Where  a.brkcd between '" & c & "' and '" & d & "' and a.brkcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode='" & Divcode & "' order by a.lotdt", DB, adOpenStatic
                'rs1.Open "select a.arrdate,a.supcd,f.slname,a.areacode,b.areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end),CASE WHEN L.NETWT > 0 THEN round(L.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value' from rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and a.PASSDT between '" & Format(a, "yyyy/mm/dd") & "' and '" & Format(b, "yyyy/mm/dd") & " 'and l.lotno=*a.lotno AND L.LOTDT =* A.LOTDT AND L.LOTTYPE=*A.LOTTYPE and isnull(LOTRECQTY,0)=0 order by a.arrdate ", cn, adOpenStatic, adLockBatchOptimistic
                tot = 0
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                Sno = 1
     If rs1.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     End If
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close
    Open "C:\mcrr.TXT" For Output As #z
    pg1 = 1
    Co = 0
                
                If Not rs1.EOF Then
                Call marcommrecHeader21(pg1, Co, S, a, b)
                End If
               Do While Not rs1.EOF
                 If Sname <> rs1("slname") Then
                 
                 If Co > 10 And subcount > 1 Then
                   Print #z,
                   Print #z, Space(9) + "** Brokerwise Total ** " + Space(10) + Padl(INF(ttot, 0), 10, " ") + Space(6) + Padl(INF(ttot2, 3), 18, " ") + Space(1) + Padl(INF(ttot3, 2), 15, " ")
                   Print #z,
                   Co = Co + 3
                   subcount = 0
                   End If
                   
                   If subcount = 1 Then
                        Print #z,
                        Co = Co + 1
                        subcount = 0
                   End If
                   ttot = 0
                   ttot1 = 0
                   ttot2 = 0
                   ttot3 = 0

                    Print #z, Space(2) + Chr(27) + "E" + Padr(CStr(rs1("slname")), 50, " ") + Chr(27) + "F"
                    Print #z,
                    Co = Co + 2
                    Print #z, Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 5, " ") & Space(2) + Padr(Format(rs1("rejdt"), "dd-mm-yy"), 8, " ") + Space(1) + Space(2) + Padr(CStr(rs1("areaname")), 10, " ") + Space(1) + Padr(CStr(rs1("varcode")), 5, " ") + Space(2) + Padl(INF(rs1("bale"), 0), 5, " ") + Space(0) + Padl(INF(rs1("ratecy"), 0), 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 2), 13, " ") + Space(1) + Padl(INF(rs1("value"), 2), 15, " ")
                    Co = Co + 1
                    Print #z, Space(2) + "Reason: " & Padr(CStr(rs1("reason")), 100, " ")
                    Co = Co + 1
                  Else
                    Print #z, Space(2) + Padr(Format(rs1("lotdt"), "dd-mm-yy"), 8, " ") + Space(1) + Padl(rs1("lotno"), 5, " ") & Space(2) + Padr(Format(rs1("rejdt"), "dd-mm-yy"), 8, " ") + Space(1) + Space(2) + Padr(CStr(rs1("areaname")), 10, " ") + Space(1) + Padr(CStr(rs1("varcode")), 5, " ") + Space(2) + Padl(INF(rs1("bale"), 0), 5, " ") + Space(0) + Padl(INF(rs1("ratecy"), 0), 10, " ") + Space(1) + Padl(INF(rs1("netwt"), 2), 13, " ") + Space(1) + Padl(INF(rs1("value"), 2), 15, " ")
                    Co = Co + 1
                    Print #z, Space(2) + "Reason: " & Padr(CStr(rs1("reason")), 100, " ")
                    Co = Co + 1
                 End If
                    'Print #z,
                    'co = co + 1
                    Sno = Sno + 1
                    subcount = subcount + 1
                    tot = tot + IIf(IsNull(rs1(6)), 0, rs1(6))
                    tot1 = tot1 + IIf(IsNull(rs1(7)), 0, rs1(7))
                    tot2 = tot2 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
                    tot3 = tot3 + IIf(IsNull(rs1("VALUE")), 0, rs1("VALUE"))
                    
                    ttot = ttot + IIf(IsNull(rs1(6)), 0, rs1(6))
                    ttot1 = ttot1 + IIf(IsNull(rs1(7)), 0, rs1(7))
                    ttot2 = ttot2 + IIf(IsNull(rs1("netwt")), 0, rs1("netwt"))
                    ttot3 = ttot3 + IIf(IsNull(rs1("VALUE")), 0, rs1("VALUE"))

                    
                    Sname = rs1("slname")
                    rs1.MoveNext
                    If Not rs1.EOF Then
                    If Co >= PageLen Then
                        Print #z, Space(5) + String(90, "-");
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        Co = 0
                        Call marcommrecHeader21(pg1, Co, S, a, b)
                    End If
                    End If
                Loop
                Print #z,
                Print #z, Space(9) + "** Brokerwise Total ** " + Space(10) + Padl(INF(ttot, 0), 10, " ") + Space(6) + Padl(INF(ttot2, 3), 18, " ") + Space(1) + Padl(INF(ttot3, 2), 15, " ")
                Co = Co + 2
1
                Print #z,
                Print #z, Space(2) + String(90, "-")
                Co = Co + 1
                If rs1.RecordCount > 1 Then
                    Print #z, Space(9) + "**   Grand Total    ** " + Space(4 + 6) + Padl(INF(tot, 0), 10, " ") + Space(6) + Padl(INF(tot2, 3), 18, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
                    Print #z, Space(2) + String(90, "-")
                End If
Print #z, Chr(12)
Print #z, Chr(15)
Close #z
 z = FreeFile
Open "c:\mcrr.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type mcrr.TXT>prn"
Close #z
RPTV.txtfile = "c:\mcrr.TXT"
RPTV.Batfile = "c:\mcrr.bat"
Exit Sub
rej1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure rej1 of Form Broker"

Screen.MousePointer = 0
End Sub
Public Sub marcommrecHeader21(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
On Error GoTo marcommrecHeader21_Error
Dim SR As String
a = a1
b = b1
          
          Print #z, Chr(18) + Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(18)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(2) + "Rejected Arrivals" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(29) + CStr(SR) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, Space(2) + CENTRE("Option : Brokerwise", 90, " ")
        ' Print #z, Space(5) + String(140, "-")
          Print #z, Space(2) + String(90, "-")
          'Print #z, Space(5) + "Receipt   Mill  Rejected Supplier Name                                      Station    Variety  Qty      Candy    Net Weight          Amount"
          'Print #z, Space(5) + "   Date Lot No      Date                                                                                  Rate"
        ' Print #z, Space(5) + "Receipt   Mill  Rejected Supplier Name                                      Station    Variety  Qty      Candy    Net Weight          Amount"
        ' Print #z, Space(5) + "   Date Lot No      Date                                                                                  Rate"
          Print #z, Space(2) + "Broker  Name"
          Print #z, Space(2) + "Receipt   Mill  Rejected   Station    Variety  Qty     Candy    Net Weight          Amount"
          Print #z, Space(2) + "   Date Lot No      Date                                Rate"
          Print #z, Space(2) + String(90, "-")
          Print #z,
          Co = Co + 10
Exit Sub
marcommrecHeader21_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure marcommrecHeader21 of Form Broker"
          End Sub




