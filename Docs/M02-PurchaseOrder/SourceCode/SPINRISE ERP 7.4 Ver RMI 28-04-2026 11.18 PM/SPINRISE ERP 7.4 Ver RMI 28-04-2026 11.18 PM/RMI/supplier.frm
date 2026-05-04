VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form supplier 
   Caption         =   "Rejected Supplierwise"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Caption         =   "Frame1"
      Height          =   3615
      Left            =   1800
      TabIndex        =   0
      Top             =   960
      Width           =   7815
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2280
         TabIndex        =   14
         Top             =   1200
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Format          =   48037889
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
         Format          =   48037889
         CurrentDate     =   39269
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Report"
         Height          =   435
         Left            =   1680
         TabIndex        =   12
         Top             =   2760
         Width           =   1395
      End
      Begin VB.CommandButton Command2 
         Caption         =   "E&xit"
         Height          =   435
         Left            =   4080
         TabIndex        =   11
         Top             =   2760
         Width           =   1395
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2280
         TabIndex        =   6
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
         TabIndex        =   8
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
         TabIndex        =   9
         Top             =   1680
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo6 
         Height          =   315
         Left            =   2280
         TabIndex        =   10
         Top             =   2160
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label6 
         BackColor       =   &H00800000&
         Caption         =   "                                          SUPPLIERWISE"
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
         TabIndex        =   7
         Top             =   0
         Width           =   8055
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "To Supplier"
         Height          =   195
         Left            =   360
         TabIndex        =   5
         Top             =   2160
         Width           =   810
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "From Supplier"
         Height          =   195
         Left            =   360
         TabIndex        =   4
         Top             =   1680
         Width           =   960
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         Height          =   195
         Left            =   360
         TabIndex        =   3
         Top             =   1200
         Width           =   585
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         Height          =   195
         Left            =   360
         TabIndex        =   2
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "Label2"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   15
      End
   End
End
Attribute VB_Name = "supplier"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim rs1 As Recordset
Dim ResultRs As Recordset
'Dim groupingrs As Recordset
Dim RPTV As Report.ReportView
Dim re As String
Dim tot, tot1, tot2, tot3 As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1, b1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim z As Integer
Dim subcount As Integer

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

        a = Format(Trim(DTPicker1.value), "yyyy-mm-dd")
        b = Format(Trim(DTPicker2.value), "yyyy-mm-dd")
        C = Right(DataCombo5.Text, 6)
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
    
    Call rej1(CStr(a), CStr(b), CStr(C), CStr(d))
    Screen.MousePointer = 0
    Exit Sub

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form supplier", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form supplier", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo3_Click(area As Integer)

End Sub

Private Sub DataCombo4_Click(area As Integer)

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
DTPicker1.value = pdate
DTPicker2.value = pdate
Set Cn = New Connection
Set Rep = New ReportView
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
    Set rss = New Recordset
             ' select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,c.dlytype,c.brkcd from fa_slmas a,rm_cont c where a.slcode=c.brkcd  order by sup
    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,slcode from fa_slmas a ,rm_lot b where a.slcode=b.supcd and rejflg='Y' and Lotyear='" & Year(yfdate) & "' order by slcode", Cn, adOpenStatic, adLockBatchOptimistic
    
  
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
    
    
    If rss.RecordCount <> 0 Then
        Set DataCombo5.RowSource = rss
        DataCombo5.ListField = "SUP"
        Set DataCombo6.RowSource = rss
        DataCombo6.ListField = "SUP"
        rss.MoveFirst
        DataCombo5.Text = rss(0)
        rss.MoveLast
        DataCombo6.Text = rss(0)
      End If
         Screen.MousePointer = 0
         
         
             
        
    

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form supplier", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub rej1(a As String, b As String, C As String, d As String)
Dim Sname As String
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
                
                rs1.Open "select a.LOTDT,a.supcd,f.slname,a.areacd,b.areaname,a.varcode,bale=(case when a.bblflg = 'B' then a.BALES end),bora=(case when a.bblflg='R' then a.BALES end),CASE WHEN a.NETWT > 0 THEN round(a.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value1', ISNULL(a.pjamt,0) 'Value',a.lotno,a.billno,a.billdt,a.ratecy,a.rejdt,a.reason from fa_slmas f,rm_area b,rm_var c,rm_lot a Where  a.supcd between '" & C & "' and '" & d & "' and a.supcd = f.slcode and a.areacd=b.areacode and a.varcode=c.varcode and a.REJDT between '" & Format(a, "yyyy-mm-dd") & "' and '" & Format(b, "yyyy-mm-dd") & " ' AND a.rejflg='Y' AND LOTYEAR='" & Year(yfdate) & "' order by a.lotdt", DB, adOpenStatic
                'rs1.Open "select a.arrdate,a.supcd,f.slname,a.areacode,b.areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end),CASE WHEN L.NETWT > 0 THEN round(L.netwt,2) ELSE round(A.netwt,2) END netwt,ROUND(a.netwt*ROUND(A.RATECY/355.6187,2),2)'Value' from rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and a.PASSDT between '" & Format(a, "yyyy/mm/dd") & "' and '" & Format(b, "yyyy/mm/dd") & " 'and l.lotno=*a.lotno AND L.LOTDT =* A.LOTDT AND L.LOTTYPE=*A.LOTTYPE and isnull(LOTRECQTY,0)=0 order by a.arrdate ", cn, adOpenStatic, adLockBatchOptimistic
                tot = 0
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                ttot = 0
                ttot1 = 0
                ttot2 = 0
                ttot3 = 0
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
                   Print #z, Space(7) + "** Supplierwise Total ** " + Space(10) + Padl(INF(ttot, 0), 10, " ") + Space(6) + Padl(INF(ttot2, 3), 18, " ") + Space(1) + Padl(INF(ttot3, 2), 15, " ")
                   Print #z,
                   Co = Co + 3
                   subcount = 0
                   End If
                   
                   If subcount = 1 Then
                       ' Print #z,
                        Co = Co + 1
                        subcount = 0
                   End If
                   ttot = 0
                   ttot1 = 0
                   ttot2 = 0
                   ttot3 = 0
                    Print #z, Space(2) + Chr(27) + "E" + Padr(CStr(rs1("slname")), 50, " ") + Chr(27) + "F"
                    'Print #z,
                    Co = Co + 1
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
                  '  Print #z,
                    subcount = subcount + 1
                    Co = Co + 1
                    Sno = Sno + 1
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
               Co = Co + 1
               Print #z, Space(7) + "** Supplierwise Total ** " + Space(10) + Padl(INF(ttot, 0), 10, " ") + Space(6) + Padl(INF(ttot2, 3), 18, " ") + Space(1) + Padl(INF(ttot3, 2), 15, " ")
               Co = Co + 1
               Print #z,
               Print #z, Space(2) + String(90, "-")
               Co = Co + 1
               If rs1.RecordCount > 1 Then
                    Print #z, Space(9) + "**   Grand Total   ** " + Space(4 + 7) + Padl(INF(tot, 0), 10, " ") + Space(6) + Padl(INF(tot2, 3), 18, " ") + Space(1) + Padl(INF(tot3, 2), 15, " ")
                    Print #z, Space(2) + String(90, "-")
                    Co = Co + 2
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure rej1 of Form supplier", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub marcommrecHeader21(pg1 As Integer, Co As Integer, S As String, a As String, b As String)
On Error GoTo marcommrecHeader21_Error

a = a1
b = b1
          
          Print #z, Chr(18) + Space(2) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(18)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(2) + "Rejected Arrivals" + "  from  " + Format(Trim(a), "DD/MM/YY") + " to " + Format(Trim(b), "DD/MM/YY") + Space(29) + CStr(SR) + "Pg.: " + CStr(pg1)   '+ Chr(15)
          Print #z, Space(2) + CENTRE("Option : Supplierwise", 90, " ")
        ' Print #z, Space(5) + String(140, "-")
          Print #z, Space(2) + String(90, "-")
          'Print #z, Space(5) + "Receipt   Mill  Rejected Supplier Name                                      Station    Variety  Qty      Candy    Net Weight          Amount"
          'Print #z, Space(5) + "   Date Lot No      Date                                                                                  Rate"
        ' Print #z, Space(5) + "Receipt   Mill  Rejected Supplier Name                                      Station    Variety  Qty      Candy    Net Weight          Amount"
        ' Print #z, Space(5) + "   Date Lot No      Date                                                                                  Rate"
          Print #z, Space(2) + "Supplier Name"
          Print #z, Space(2) + "Receipt   Mill  Rejected   Station    Variety  Qty     Candy    Net Weight          Amount"
          Print #z, Space(2) + "   Date Lot No      Date                                Rate"
          Print #z, Space(2) + String(90, "-")
          Print #z,
          Co = Co + 10

Exit Sub
marcommrecHeader21_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure marcommrecHeader21 of Form supplier", vbInformation, head
Screen.MousePointer = 0
          End Sub



