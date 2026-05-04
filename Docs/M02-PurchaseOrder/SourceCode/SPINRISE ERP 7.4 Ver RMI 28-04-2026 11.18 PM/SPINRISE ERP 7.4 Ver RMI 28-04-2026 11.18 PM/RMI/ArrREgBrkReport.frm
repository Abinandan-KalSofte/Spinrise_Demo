VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Frmbrkwisearrreg 
   Caption         =   "Brokerwise Arrival Report"
   ClientHeight    =   5865
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5865
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   840
      TabIndex        =   16
      Top             =   4560
      Visible         =   0   'False
      Width           =   7380
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   18
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   17
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label37 
         Caption         =   "Report Footer"
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
         Left            =   180
         TabIndex        =   19
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4800
      TabIndex        =   11
      Top             =   5310
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   2940
      TabIndex        =   10
      Top             =   5295
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   3495
      Left            =   960
      TabIndex        =   0
      Top             =   1080
      Width           =   7170
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2505
         TabIndex        =   2
         Top             =   2085
         Width           =   4230
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2505
         TabIndex        =   1
         Top             =   2520
         Width           =   4230
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2520
         TabIndex        =   3
         Top             =   1620
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   4
         Top             =   1095
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2520
         TabIndex        =   12
         Top             =   1080
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   59834369
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2520
         TabIndex        =   13
         Top             =   1680
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   59834369
         CurrentDate     =   37043
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "From Broker"
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
         Left            =   1080
         TabIndex        =   7
         Top             =   2160
         Width           =   1035
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Brokerwise Arrival Report"
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
         Height          =   360
         Left            =   0
         TabIndex        =   6
         Top             =   60
         Width           =   7560
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "To Broker"
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
         Left            =   1080
         TabIndex        =   5
         Top             =   2640
         Width           =   975
      End
      Begin VB.Label Label1 
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
         Height          =   195
         Left            =   1080
         TabIndex        =   9
         Top             =   1200
         Width           =   885
      End
      Begin VB.Label Label2 
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
         Left            =   1080
         TabIndex        =   8
         Top             =   1680
         Width           =   705
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3660
      Left            =   840
      TabIndex        =   14
      Top             =   960
      Width           =   7350
      _ExtentX        =   12965
      _ExtentY        =   6456
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "ArrREgBrkReport.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8280
      TabIndex        =   15
      Top             =   840
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "Frmbrkwisearrreg"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, LENLEN As Integer
Dim Rs As Recordset
Dim PlotNo As Integer
Dim RS2 As Recordset
Dim Cn As Connection
Dim pg1 As Integer
Dim Pg As Integer
Dim Co As Integer
Dim ree As Double
Dim rev As Report.ReportView
Dim Pgcount As Integer
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double

Private Sub Command1_Click()
Dim str As String
Dim tot5, tot6, tot7 As Double
On Error GoTo Command1_Click_Error

Pg = 1
div = DIVNAME
Set Cn = New Connection
Cn.Provider = "msdatashape"
Cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Co = 0
tot1 = 0
'nithya
Dim r As String
Dim S As String
Dim TEMP As String
Dim temp1 As String
ree = 0
r = a
S = b
Set Cn = New Connection
Cn.Provider = "msdatashape"
Cn.Open connectstring

DataCombo1.Text = DTPicker1.value
DataCombo2.Text = DTPicker2.value

U = Format(DataCombo1.Text, "yyyy-mm-dd")
V = Format(DataCombo2.Text, "yyyy-mm-dd")
If CDate(U) > CDate(V) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        DTPicker2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(V) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo1.SetFocus
      DTPicker1.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\carr.txt" For Output As #1
 Open KALFOLDERDATA & "\carr.TXT" For Output As #1
pg1 = 1
Call callhead(r, S, CInt(pg1))

'w = Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1))
    W = Combo1.Text
  'Rs.Close
'  Set Rss = New Recordset
'  Rss.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.brkcd=b.slcode and a.arrdate between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by slcode", Cn, adOpenStatic, adLockBatchOptimistic
'      If Combo1.Text <> "" And Combo2.Text <> "" Then
'     Do While Not Rss.EOF
'     If Combo1.Text = Rss(0) Then
'     GoTo Broker
'     Else
'     Rss.MoveNext
'     End If
'     Loop
'     Rss.MoveFirst
'     Combo1.Text = Rss(0)
'     MsgBox "Select the Valid broker ", vbInformation, head
'     Combo1.Text = ""
'     Combo1.SetFocus
'     Screen.MousePointer = 0
'     Exit Sub
'Broker:     Do While Not Rss.EOF
'     If Combo2.Text = Rss(0) Then
'     GoTo brokerwise
'     Else
'     Rss.MoveNext
'     End If
'     Loop
'     MsgBox "Select the Valid broker ", vbInformation, head
'     Combo2.Text = ""
'     Combo2.SetFocus
'     Screen.MousePointer = 0
'     Exit Sub
'    Rss.MoveLast
'    Combo2.Text = Rss(0)
'     Else
'     MsgBox "Broker Should Not be Empty ", vbInformation, head
'     Combo1.Text = ""
'     Combo1.SetFocus
'     Screen.MousePointer = 0
'     Exit Sub
'     End If
brokerwise:  s1 = Right(Combo1.Text, 7)
    s2 = Right(Combo2.Text, 7)
    Set RS2 = New Recordset
    RS2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & U & " 'and '" & V & "' and a.carcode=b.carcode and brkcd between '" & s1 & "' and '" & s2 & "' and divcode='" & Divcode & "' order by slname,arrdate,a.lotno", db, adOpenStatic
    'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & w & " 'order by b.carname", DB, adOpenStatic
    If RS2.RecordCount = 0 Then
     MsgBox "No records Found ", vbInformation, head
     DTPicker1.SetFocus
     Screen.MousePointer = 0
     Exit Sub
    End If






's1 = Right(Combo1.Text, 7)
   ' s2 = Right(Combo2.Text, 7)
  '  Set rs2 = New Recordset
 '   rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode*=b.carcode and supcd between '" & s1 & "' and '" & s2 & "' order by slname,a.lotno", DB, adOpenStatic
    'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & w & " 'order by b.carname", DB, adOpenStatic
  '  If rs2.RecordCount = 0 Then
   '  MsgBox "No records Found ", vbInformation, head
   '  Screen.MousePointer = 0
   '  Exit Sub
     
    'End If
    
  

temp1 = ""
Do While Not RS2.EOF
 If temp1 <> RS2("slname") Then
     Print #1, Chr(27) & "E" & Space(5) & Padr(RS2("slname"), 35, " ") & Chr(27) & "F"
 End If
 temp1 = RS2("slname")
 Print #1, Space(5) & Padr(Format(RS2("arrdate"), "dd-mm-yy"), 10, " ") & Space(1) & Padl(RS2("lotno"), 6, " ") & Space(1) & Padl(RS2("plotno"), 10, " ") & Space(3) & Padr(RS2("carname"), 34, " ") & Space(1) & Padr(RS2("areaname"), 17, " ") & Space(2) & Padl(RS2("quantity"), 6, " ") & Space(1) & Padl(INF(RS2("netwt"), 3), 14, " ") & Space(1) & Padl(RS2("lrno"), 10, " ") & Space(1) & Padl(RS2("lorrynos"), 15, " ") & Space(2) & Padl(INF(RS2("freight"), 2), 9, " ")
 Co = Co + 1
 If Co >= 61 Then
    Co = 0
    Print #1, Space(5) & String(144, "-")
   Call callhead(CStr(a), CStr(b), CStr(pg1))
 End If
    tot5 = tot5 + RS2("quantity")
    tot6 = tot6 + RS2("netwt")
    tot7 = tot7 + RS2("freight")
     RS2.MoveNext
     If RS2.EOF = False Then
        If TEMP = RS2("slname") Then
            TEMP = ""
        End If
    End If
     
Loop
Print #1, Space(5) & String(144, "-")
Print #1, Space(5) & Space(72) & "Grand Total  " & Padl(INF(tot5, 0), 6, " ") & Space(1) & Padl(INF(tot6, 3), 14, " ") & Space(24) & Padl(INF(tot7, 2), 14, " ") '& Chr(27) & "F"
Print #1, Space(5) & String(144, "-")
'supplier total
Set RS6 = New Recordset
RS6.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & V & "' and a.carcode=b.carcode and c.slcode between '" & s1 & "' and '" & s2 & "' and divcode='" & Divcode & "' group by c.slname order by c.slname", db, adOpenStatic

''Broker Total
'Set rs7 = New Recordset
'rs7.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & u & "' and '" & v & "' and a.carcode=b.carcode and slcode between '" & s1 & "' and '" & s2 & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
Print #1, Chr(12)
Print #1,
Print #1, Space(5) + Chr(27) & "E" & CENTRE("Brokerwise Abstract", 80, " ") & Chr(27) & "F"
Print #1, Space(5) + Chr(27) & "E" & CENTRE("---------------------", 80, " ") & Chr(27) & "F"
'Print #1, Space(5) + "Supplier Name                              Quantity           Netwt      Freight  "
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + "Supplier Name                                              Quantity           Netwt      Freight"
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Do While Not RS6.EOF
Print #1, Space(5) + Padr(RS6("slname"), 42, " ") + Space(1) + Padr("", 15, " ") + Space(1) + Padl(INF(RS6("quantity"), 0), 8, " ") + Space(1) + Padl(INF(RS6("netwt"), 3), 15, " ") + Space(1) + Padl(INF(RS6("freight"), 2), 12, " ")
    stot5 = stot5 + RS6("quantity")
    stot6 = stot6 + RS6("netwt")
    stot7 = stot7 + RS6("freight")
RS6.MoveNext
Loop
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + Space(35) + "Total" + Space(11) + Padl(INF(stot5, 0), 16, " ") + Space(1) + Padl(INF(stot6, 3), 15, " ") + Space(1) + Padl(INF(stot7, 2), 12, " ")
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1,
Print #1,
 Call footermod(CInt(1), UserFooter1.SelectedStr, 85)
'Print #1, Space(5) + Chr(27) & "E" & CENTRE("Brokerwise Abstract", 80, " ") & Chr(27) & "F"
'Print #1, Space(5) + Chr(27) & "E" & CENTRE("-------------------", 80, " ") & Chr(27) & "F"
''Print #1, Space(5) + "Supplier Name                              Quantity           Netwt      Freight  "
'Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
'Print #1, Space(5) + "Broker Name                                Station         Quantity           Netwt      Freight"
'Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
'Do While Not rs7.EOF
'Print #1, Space(5) + Padr(rs7("slname"), 42, " ") + Space(1) + Padr(rs7("areaname"), 15, " ") + Space(1) + Padl(INF(rs7("quantity"), 0), 8, " ") + Space(1) + Padl(INF(rs7("netwt"), 3), 15, " ") + Space(1) + Padl(INF(rs7("freight"), 2), 12, " ")
'    btot5 = btot5 + rs7("quantity")
'    btot6 = btot6 + rs7("netwt")
'    btot7 = btot7 + rs7("freight")
'rs7.MoveNext
'Loop
'Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
'Print #1, Space(5) + Space(35) + "Total" + Space(11) + Padl(INF(btot5, 0), 16, " ") + Space(1) + Padl(INF(btot6, 3), 15, " ") + Space(1) + Padl(INF(btot7, 2), 12, " ")
'Print #1, Space(5) + "------------------------------------------------------------------------------------------------"


Print #1, Chr(12)
Close #1
'Open "c:\carr.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type carr.txt>prn"
'rev.txtfile = "c:\carr.txt"
'rev.Batfile = "c:\carr.bat"
'Close #1
' 1 = FreeFile
 Call KALBATPROCESS("carr")

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub callhead(S As String, q As String, pg1 As String)
Dim div As String
Dim f, m As String
On Error GoTo callhead_Error

Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
f = Format(DataCombo1.Text, "dd/mm/yy")
m = Format(DataCombo2.Text, "dd/mm/yy")
Print #1, Space(5) + "Brokerwise Arrival Report" & Space(1) & "from" & Space(1) & f & Space(1) & " to" & Space(1) & m & Space(2) & Space(70) & Space(1) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(5) & String(144, "-")
'Print #1, Space(5) & "Carrier Name"
'Print #1, Space(5) & "Received     Mill   Party  Party Name                             Station             No.of           Kgs    L.R.No         Lorry      Lorry"
'Print #1, Space(5) & "    Date     LotNo.   Lot                                                             Bales                                    No    Freight"
Print #1, Space(5) & "Broker Name"
Print #1, Space(5) & "Received     Mill      Party   Carrier Name                       Station               Qty            Kgs     L.R.No         Lorry      Lorry"
Print #1, Space(5) & "    Date     LotNo.   Lot No.                                                                                                    No    Freight"
Print #1, Space(5) & String(144, "-")
Co = Co + 9

Exit Sub
callhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure callhead of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub
  
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
    DTPicker1.value = yfdate
    DataCombo1.Text = DTPicker1.value
Else
    DataCombo1.Text = DTPicker1.value
End If
Combo1.clear
Combo2.clear
Set ResultRs = New Recordset
'ResultRs.Open "select distinct carcode + '-'+ carname  from po_car ", db, adOpenStatic
ResultRs.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.brkcd=b.slcode and a.arrdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by slcode ", db, adOpenStatic
If Not ResultRs.EOF Then
       Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            Combo2.AddItem ResultRs(0)
            ResultRs.MoveNext
       Loop
           
            Combo1.ListIndex = 0
            Combo2.ListIndex = Combo2.ListCount - 1
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
    DTPicker2.value = yfdate
    DataCombo2.Text = DTPicker2.value
Else
    DataCombo2.Text = DTPicker2.value
End If
Combo1.clear
Combo2.clear
Set ResultRs = New Recordset
'ResultRs.Open "select distinct carcode + '-'+ carname  from po_car ", db, adOpenStatic
ResultRs.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.brkcd=b.slcode and a.arrdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by slcode ", db, adOpenStatic
If Not ResultRs.EOF Then
       Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            Combo2.AddItem ResultRs(0)
            ResultRs.MoveNext
       Loop
           
            Combo1.ListIndex = 0
            Combo2.ListIndex = Combo2.ListCount - 1
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set db = New Connection
db.Open connectstring
Set Rs = New Recordset
Dim a As Integer
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Set ResultRs = New Recordset
Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdate", db, adOpenStatic
If Not Rs.EOF Then
    Set DataCombo1.RowSource = Rs
    Set DataCombo2.RowSource = Rs
    DataCombo1.ListField = "arrdate"
    DataCombo2.ListField = "arrdate"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
    Combo1.Visible = True
    Combo2.Visible = True
    Combo2.clear
    
''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.MaxDate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo1.Left
    DTPicker1.Width = DataCombo1.Width
    DTPicker1.Top = DataCombo1.Top


    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.MaxDate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    Combo2.Top = Combo2.Top + 100
    
    
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Combo1.tabIndex = 2
    Combo2.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5
''''''''''''''''''''''
    
    
Set ResultRs = New Recordset
'ResultRs.Open "select distinct carcode + '-'+ carname  from po_car ", db, adOpenStatic
ResultRs.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.brkcd=b.slcode and a.arrdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by slcode ", db, adOpenStatic
If Not ResultRs.EOF Then
       Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            Combo2.AddItem ResultRs(0)
            ResultRs.MoveNext
       Loop
           
            Combo1.ListIndex = 0
            Combo2.ListIndex = Combo2.ListCount - 1
       End If
Else
    MsgBox "No Record Found For This Date", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form Frmbrkwisearrreg", vbInformation, head
Screen.MousePointer = 0
End Sub





