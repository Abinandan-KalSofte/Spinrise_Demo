VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmarrregsup 
   Caption         =   "Arrival List Supplierwise"
   ClientHeight    =   5700
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5700
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
      Caption         =   "&Excel"
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
      Left            =   5760
      TabIndex        =   21
      Top             =   5160
      Width           =   1485
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Crystal &Report"
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
      Left            =   4200
      TabIndex        =   20
      Top             =   5160
      Width           =   1485
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1680
      TabIndex        =   16
      Top             =   4320
      Visible         =   0   'False
      Width           =   7380
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   18
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   17
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
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
   Begin VB.Frame Frame1 
      Height          =   3600
      Left            =   1800
      TabIndex        =   2
      Top             =   735
      Width           =   7125
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   2520
         TabIndex        =   23
         Top             =   3000
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2505
         TabIndex        =   8
         Top             =   2520
         Width           =   4230
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2505
         TabIndex        =   3
         Top             =   2085
         Width           =   4230
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2550
         TabIndex        =   4
         Top             =   1590
         Width           =   1680
         _ExtentX        =   2963
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   6
         Top             =   1095
         Width           =   1680
         _ExtentX        =   2963
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2520
         TabIndex        =   9
         Top             =   1080
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   389677057
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2520
         TabIndex        =   10
         Top             =   1560
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   389677057
         CurrentDate     =   37043
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Sustainable Type"
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
         Left            =   960
         TabIndex        =   22
         Top             =   3045
         Visible         =   0   'False
         Width           =   1485
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
         Left            =   960
         TabIndex        =   13
         Top             =   1125
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
         Left            =   960
         TabIndex        =   12
         Top             =   1665
         Width           =   825
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
         Left            =   960
         TabIndex        =   11
         Top             =   2160
         Width           =   1170
      End
      Begin VB.Label Label5 
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
         Left            =   960
         TabIndex        =   7
         Top             =   2640
         Width           =   990
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Arrival List Supplierwise"
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
         TabIndex        =   5
         Top             =   120
         Width           =   7050
      End
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
      Left            =   2430
      TabIndex        =   1
      Top             =   5160
      Width           =   1575
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
      Left            =   7320
      TabIndex        =   0
      Top             =   5160
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3615
      Left            =   1740
      TabIndex        =   14
      Top             =   750
      Width           =   7365
      _ExtentX        =   12991
      _ExtentY        =   6376
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "ArrRegSupReport.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   9000
      TabIndex        =   15
      Top             =   600
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin Crystal.CrystalReport crr 
      Left            =   930
      Top             =   2040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowState     =   2
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
   End
End
Attribute VB_Name = "frmarrregsup"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, LENLEN As Integer
Dim Rs As Recordset
Dim PlotNo As Integer
Dim rs2 As Recordset
Dim cn As Connection
Dim pg1 As Integer
Dim pg As Integer
Dim co As Integer
Dim ree As Double
Dim rev As Report.ReportView
Dim Pgcount As Integer
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double


Private Sub Command1_Click()
intervalMinutes = -1
Dim Str As String
Dim tot5, tot6, tot7 As Double
On Error GoTo Command1_Click_Error
intervalMinutes = -1
pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
co = 0
tot1 = 0
'nithya
Dim r As String
Dim s As String
Dim TEMP As String
Dim temp1 As String
ree = 0
'r = a
's = b
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

DataCombo1.Text = DTPicker1.value
DataCombo2.Text = DTPicker2.value
f = Format(DataCombo1.Text, "dd/mm/yy")
m = Format(DataCombo2.Text, "dd/mm/yy")

U = Format(DataCombo1.Text, "yyyy-mm-dd")
v = Format(DataCombo2.Text, "yyyy-mm-dd")
If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker2.SetFocus
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo1.SetFocus
      Screen.MousePointer = 0
      DTPicker1.SetFocus
        Exit Sub
     End If

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\carr.txt" For Output As #1
 Open KALFOLDERDATA & "\carr.TXT" For Output As #1
pg1 = 1
Call callhead(CStr(U), CStr(v), CInt(pg1))
Set rss = New Recordset
  rss.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' order by slcode", cn, adOpenStatic, adLockBatchOptimistic
'w = Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1))
    W = Combo1.Text
    If Combo1.Text <> "" And Combo2.Text <> "" Then
     Do While Not rss.EOF
     If Combo1.Text = rss(0) Then
     GoTo ArrSupplier
     Else
     rss.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Supplier ", vbInformation, head
     Combo1.Text = ""
     Combo1.SetFocus
     Screen.MousePointer = 0
     Exit Sub
ArrSupplier:     Do While Not rss.EOF
     If Combo2.Text = rss(0) Then
     GoTo ArrivalSupplier
     Else
     rss.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Supplier ", vbInformation, head
     Combo2.Text = ""
     Combo2.SetFocus
     Screen.MousePointer = 0
     Exit Sub
     Else
      MsgBox "Supplier Should Not be Empty", vbInformation, head
      If Combo1.Text = "" Then
      Combo1.SetFocus
      End If
      If Combo2.Text = "" Then
      Combo2.SetFocus
      End If
      Screen.MousePointer = 0
       Exit Sub
     End If
ArrivalSupplier:      S1 = Right(Combo1.Text, 7)
    s2 = Right(Combo2.Text, 7)
    Set rs2 = New Recordset
    ''   RS2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & U & " 'and '" & V & "' and a.carcode*=b.carcode and supcd between '" & s1 & "' and '" & s2 & "' and divcode='" & Divcode & "' order by slname,a.lotno,a.arrdate", db, adOpenStatic
    ''BAlkrish *=
         rs2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a left join po_car b on a.carcode = b.carcode inner join fa_slmas c on a.supcd=c.slcode inner join rm_area d on a.areacode=d.areacode where a.arrdate between ' " & U & " 'and '" & v & "' and  supcd between '" & S1 & "' and '" & s2 & "' and divcode='" & Divcode & "' order by slname,a.lotno,a.arrdate", DB, adOpenStatic
   'oldquery 'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & w & " 'order by b.carname", DB, adOpenStatic
    If rs2.RecordCount = 0 Then
     MsgBox "No records Found ", vbInformation, head
     DTPicker1.SetFocus
     Screen.MousePointer = 0
     Exit Sub
     
    End If
    
    
    ' Do While Not Rss.EOF
    '    If Combo1.Text = Rss(0) And Combo2.Text = Rss(0) Then
            
  '  s1 = Right(Combo1.Text, 7)
  '  s2 = Right(Combo2.Text, 7)
   ' Set rs2 = New Recordset
   ' rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode*=b.carcode and supcd between '" & s1 & "' and '" & s2 & "' order by slname,a.lotno", DB, adOpenStatic
    'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & w & " 'order by b.carname", DB, adOpenStatic
  '  If rs2.RecordCount = 0 Then
    ' MsgBox "No records Found ", vbInformation, head
    ' Screen.MousePointer = 0
   '  Exit Sub
   '   Else
   ' GoTo Arrival
   ' End If
   '     Else
   '  Rss.MoveNext
   '  End If
   ' Loop
  '  MsgBox "Select the Valid Supplier ", vbInformation, head
  '   Screen.MousePointer = 0
  '   Exit Sub
  '  End If

 temp1 = ""
Do While Not rs2.EOF
 If temp1 <> rs2("slname") Then
     Print #1, Chr(27) & "E" & Space(5) & Padr(rs2("slname"), 35, " ") & Chr(27) & "F"
 End If
 temp1 = rs2("slname")
 Print #1, Space(5) & Padr(Format(rs2("arrdate"), "dd-mm-yy"), 9, " ") & Space(1) & Padl(rs2("lotno") & "/" & Format(rs2("lotdt"), "yy"), 7, " ") & Space(1) & Padl(rs2("plotno"), 10, " ") & Space(3) & Padr(rs2("carname"), 34, " ") & Space(1) & Padr(rs2("areaname"), 17, " ") & Space(2) & Padl(rs2("quantity"), 6, " ") & Space(1) & Padl(INF(rs2("netwt"), 3), 14, " ") & Space(1) & Padl(rs2("lorrynos"), 12, " ") & Space(1) & Padl(INF(rs2("freight"), 2), 11, " ")
 co = co + 1
 If co >= 61 Then
    co = 0
    Print #1, Space(5) & String(144, "-")
   Call callhead(CStr(U), CStr(v), CStr(pg1))
 End If
    tot5 = tot5 + rs2("quantity")
    tot6 = tot6 + rs2("netwt")
    tot7 = tot7 + rs2("freight")
     rs2.MoveNext
     If rs2.EOF = False Then
        If TEMP = rs2("slname") Then
            TEMP = ""
        End If
    End If
     
Loop
Print #1, Space(5) & String(144, "-")
Print #1, Space(5) & Space(72) & "Grand Total  " & Padl(INF(tot5, 0), 6, " ") & Space(1) & Padl(INF(tot6, 3), 14, " ") & Space(9) & Padl(INF(tot7, 2), 14, " ") '& Chr(27) & "F"
Print #1, Space(5) & String(144, "-")
'supplier total
Set RS6 = New Recordset
''RS6.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & V & "' and a.carcode*=b.carcode and c.slcode between '" & s1 & "' and '" & s2 & "'  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", db, adOpenStatic
''*= Balkrish
RS6.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a left join po_car b on a.carcode = b.carcode inner join fa_slmas c on a.supcd=c.slcode inner join rm_area d on a.areacode=d.areacode where a.arrdate between '" & U & "' and '" & v & "' and  c.slcode between '" & S1 & "' and '" & s2 & "'  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
''Broker Total
'Set rs7 = New Recordset
'rs7.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & u & "' and '" & v & "' and a.carcode=b.carcode and slcode between '" & s1 & "' and '" & s2 & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
Print #1, Chr(12)
Print #1,
Print #1, Space(5) + Chr(27) & "E" & CENTRE("Supplierwise Abstract", 80, " ") & Chr(27) & "F"
Print #1, Space(5) + Chr(27) & "E" & CENTRE("---------------------", 80, " ") & Chr(27) & "F"
'Print #1, Space(5) + "Supplier Name                              Quantity           Netwt      Freight  "
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + "Supplier Name                              Station         Quantity           Netwt      Freight"
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Do While Not RS6.EOF
Print #1, Space(5) + Padr(RS6("slname"), 42, " ") + Space(1) + Padr(RS6("areaname"), 15, " ") + Space(1) + Padl(INF(RS6("quantity"), 0), 8, " ") + Space(1) + Padl(INF(RS6("netwt"), 3), 15, " ") + Space(1) + Padl(INF(RS6("freight"), 2), 12, " ")
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
'1 = FreeFile
Call KALBATPROCESS("carr")
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub callhead(s As String, q As String, pg1 As String)
Dim div As String
Dim f, m As String
On Error GoTo callhead_Error

Print #1, Chr(18)
Print #1, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
f = Format(DataCombo1.Text, "dd/mm/yy")
m = Format(DataCombo2.Text, "dd/mm/yy")
Print #1, Space(5) + "Supplierwise Arrival Report" & Space(1) & "from" & Space(1) & f & Space(1) & "to" & Space(1) & m & Space(2) & Space(60) & Space(1) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(5) & String(144, "-")
'Print #1, Space(5) & "Carrier Name"
'Print #1, Space(5) & "Received     Mill   Party  Party Name                             Station             No.of           Kgs    L.R.No         Lorry      Lorry"
'Print #1, Space(5) & "    Date     LotNo.   Lot                                                             Bales                                    No    Freight"
Print #1, Space(5) & "Supplier Name"
Print #1, Space(5) & "Received     Mill   Supplier   Carrier Name                       Station          Quantity            Kgs        Lorry      Lorry"
Print #1, Space(5) & "    Date     LotNo.   Lot No.                                                                                       No.    Freight"
Print #1, Space(5) & String(144, "-")
co = co + 9

Exit Sub
callhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure callhead of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub
  
Private Sub Command2_Click()
Unload Me
intervalMinutes = -1
End Sub


Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
    DataCombo1.Text = DTPicker1.value
    DataCombo2.Text = DTPicker2.value
    intervalMinutes = -1
    U = Format(DataCombo1.Text, "yyyy-mm-dd")
    v = Format(DataCombo2.Text, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker2.SetFocus
        Exit Sub
    End If
    If CDate(v) < CDate(U) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker1.SetFocus
        Exit Sub
    End If
    
    If UCase(Trim(CustID)) = "SKY" And Combo3.Text <> "All" Then
        DB.Execute "if exists (select name from dbo.sysobjects where name='SusTyp_Temp') drop table SusTyp_Temp"
        DB.Execute "create table SusTyp_Temp(type varchar(50))"
        Set rss1 = New Recordset
        rss1.Open "select description from rm_sustainrmtype where Code='" & Trim(Combo3.Text) & "'", DB, adOpenStatic
        DB.Execute "insert into SusTyp_Temp values('" & rss1(0) & "')"
        tmpdivname = divname & " - " & rss1(0)
    End If

    Set rss = New Recordset
    rss.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' order by slcode", DB, adOpenStatic, adLockBatchOptimistic
    
    W = Combo1.Text
    If Combo1.Text <> "" And Combo2.Text <> "" Then
        Do While Not rss.EOF
            If Combo1.Text = rss(0) Then
                GoTo ArrSupplier
            Else
                rss.MoveNext
            End If
        Loop
        MsgBox "Select the Valid Supplier ", vbInformation, head
        Combo1.Text = ""
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
ArrSupplier:
       

'        Do While Not rss.EOF  '''sasi 13.11.17
'            If Combo2.Text = rss(0) Then
'                GoTo ArrivalSupplier
'            Else
'                rss.MoveNext
'            End If
'         Loop
'         MsgBox "Select the Valid Supplier ", vbInformation, head
'         Combo2.Text = ""
'         Combo2.SetFocus
'         Screen.MousePointer = 0
'         Exit Sub
    Else
        MsgBox "Supplier Should Not be Empty", vbInformation, head
        If Combo1.Text = "" Then
            Combo1.SetFocus
        End If
        If Combo2.Text = "" Then
            Combo2.SetFocus
        End If
        Screen.MousePointer = 0
        Exit Sub
    End If
ArrivalSupplier:
    S1 = Right(Combo1.Text, 7)
    s2 = Right(Combo2.Text, 7)
    Dim rec As Recordset
        
    On Error GoTo errorsub
    DB.BeginTrans
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_ArrivalRegister'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_ArrivalRegister"
    End If
    Rs.Close
    Set Rs = Nothing
    
    Set rec = New Recordset
    rec.CursorLocation = adUseClient
        
    If UCase(Trim(CustID)) = "SKY" Then
    rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt," & _
               "Result.plotno,Result.quantity,Result.lrno," & _
               "Result.freight,Result.netwt,Result.prno,Result.carname," & _
               "RESULT.Slname , RESULT.areaname, RESULT.LORRYNOS " & _
           " Into Temp_Periodical_ArrivalRegister " & _
           " From " & _
           " (select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno," & _
                   "isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname," & _
                   "c.Slname , d.areaname, a.LORRYNOS " & _
               " from rm_arrival a left join po_car b on a.carcode = b.carcode inner join fa_slmas c on a.supcd=c.slcode inner join rm_area d on a.areacode=d.areacode " & _
               " left outer join rm_cont f on a.contno=f.contno and a.contdt=f.CONTDT and a.DIVCODE=f.DIVCODE and a.varcode=f.varcode " & _
               " where " & _
                   " a.arrdate Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and " & _
                   " a.supcd between '" & S1 & "' and '" & s2 & "' and " & _
                   " a.divcode='" & Divcode & "' and ('" & Combo3.Text & "'='All' or f.SusCatType='" & Combo3.Text & "' ))Result", DB, adOpenStatic, adLockBatchOptimistic
    Else
        rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt," & _
               "Result.plotno,Result.quantity,Result.lrno," & _
               "Result.freight,Result.netwt,Result.prno,Result.carname," & _
               "RESULT.Slname , RESULT.areaname, RESULT.LORRYNOS,RESULT.ratecy " & _
           " Into Temp_Periodical_ArrivalRegister " & _
           " From " & _
           " (select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno," & _
                   "isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname," & _
                   "c.Slname , d.areaname, a.LORRYNOS, a.ratecy " & _
               " from rm_arrival a left join po_car b on a.carcode = b.carcode inner join fa_slmas c on a.supcd=c.slcode inner join rm_area d on a.areacode=d.areacode " & _
               " where " & _
                   " a.arrdate Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and " & _
                   " a.supcd between '" & S1 & "' and '" & s2 & "' and " & _
                   " divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic
    End If
        
'        If rec.EOF Then
'            MsgBox "No Records Found", vbInformation, head
'            Me.MousePointer = 0
'            Exit Sub
'        End If
        DB.CommitTrans

'        MousePointer = 11
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_ARRRegSupplierwise.rpt"
'        FrmRpt.RptHead = "2A"
'        parameter1 = "Supplierwise Arrival Register From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & ""
'        parameter2 = DIVNAME
'        FrmRpt.Show
'


        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Cry_arrivallist_supp 'Rep_Period_Arrregsup
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        If UCase(Trim(CustID)) = "SKY" And Combo3.Text <> "All" Then
            crr.Formulas(0) = "div='" & tmpdivname & "'"
            
        Else
            crr.Formulas(0) = "div='" & divname & "'"
            
        End If
        crr.Formulas(1) = "rpt='" & "Supplierwise Arrival List From " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & "'"
        crr.Formulas(2) = "UnitName='" & PrUnitName & "'"
        
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
    


        
        
        
       intervalMinutes = -1
        Me.MousePointer = 0
        Exit Sub

errorsub:
    MsgBox Err.Description, vbCritical
    Me.MousePointer = 0
End Sub

Private Sub Command4_Click()

On Error GoTo Command6_Click_Error



Call ArrivalRegisterExcel



Screen.MousePointer = 0

Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click_Error of Form repform", vbInformation, head
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

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form frmarrregsup", vbInformation, head
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

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Set DB = New Connection
DB.Open connectstring
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Set Rs = New Recordset
Dim a As Integer
Set ResultRs = New Recordset
Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdate", DB, adOpenStatic
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
    Combo2.Clear
    
 ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo1.Left
    DTPicker1.Width = DataCombo1.Width
    DTPicker1.Top = DataCombo1.Top
DTPicker1.tabIndex = 0
DTPicker2.tabIndex = 1
Combo1.tabIndex = 2
Combo2.tabIndex = 3
Command1.tabIndex = 4
Command2.tabIndex = 5

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    Combo2.Top = Combo2.Top + 100
    Combo1.Top = Combo1.Top + 100
''''''''''''''''''''''

If UCase(Trim(CustID)) = "SKY" Then
    Label6.Visible = True
    Combo3.Visible = True
    Set Rs = New Recordset
        Rs.Open "select Code from rm_sustainrmtype", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            Rs.MoveFirst
            Combo3.Text = "All"
            Combo3.AddItem "All"
            While Not Rs.EOF
                Combo3.AddItem Rs(0)
                Rs.MoveNext
            Wend
        End If
End If
    
Set ResultRs = New Recordset
'ResultRs.Open "select distinct carcode + '-'+ carname  from po_car ", db, adOpenStatic
ResultRs.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.supcd=b.slcode order by slcode", DB, adOpenStatic
If Not ResultRs.EOF Then
       Do While Not ResultRs.EOF
      ' ResultRs.MoveFirst
            Combo1.AddItem ResultRs(0)
            Combo2.AddItem ResultRs(0)
            'ResultRs.MoveLast
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error
intervalMinutes = -1
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form frmarrregsup", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form frmarrregsup", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form frmarrregsup", vbInformation, head
Screen.MousePointer = 0
End Sub




Private Sub ArrivalRegisterExcel()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "O1").MergeCells = True
         oSheet.Range("A1", "O1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "O2").MergeCells = True
         oSheet.Range("A2", "O2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With

      
        oSheet.Name = "Arrival List Supplierwise"
        
                
    DataCombo1.Text = DTPicker1.value
    DataCombo2.Text = DTPicker2.value
    intervalMinutes = -1
    U = Format(DataCombo1.Text, "yyyy-mm-dd")
    v = Format(DataCombo2.Text, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker2.SetFocus
        Exit Sub
    End If
    If CDate(v) < CDate(U) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker1.SetFocus
        Exit Sub
    End If

      
     S1 = Right(Combo1.Text, 7)
    s2 = Right(Combo2.Text, 7)
        oSheet.Cells(3, 5).value = "Supplier wise Arrival List from  " & Format(Trim(DataCombo1.Text), "dd-mm-yyyy") & " to " & Format(Trim(DataCombo2.Text), "dd-mm-yyyy")
        oSheet.Range("A3", "O3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "O3").MergeCells = True
        With oSheet.Range("A3", "O3").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set rst = New Recordset

        rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='ArrSup' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not rst.EOF
            oSheet.Cells(4, I).value = rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "O" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset



    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
    DB.Execute "delete from RPTArrivalDetails"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & S1 & "','" & s2 & "' "


       Rs.Open "select *from VW_RM_ArrivalListSup  order by slname  ,lotno desc ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            oSheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "O" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "O" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "O" & m_ROW
               
                

        
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                            m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "O" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
                
             '''''''-----------------------------    Abstract------------------------
                

        

         m_ROW = m_ROW + 5
        oSheet.Cells(m_ROW, 5).value = "Arrival List Abstract"
        oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).MergeCells = True
        With oSheet.Range("A" + CStr(m_ROW), "H" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        

'On Error Resume Next

        Set rst = New Recordset

        rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='ArrSupAbs' order by sno ", DB, adOpenStatic
'        m_row = m_row + 1
        m_ROW = oSheet.UsedRange.Rows.Count + 1
        I = 2
'        m_ROW = m_ROW + 1
        TotCol = 0
        Do While Not rst.EOF
            oSheet.Cells(m_ROW, I).value = Trim(CStr(rst(0)))
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        rst.MoveNext
        Loop
        
        
        
        

        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "H" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "select *from VW_RM_ArrivalListSupAbs order by sno ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 2
            
            oSheet.Cells(m_ROW + 1, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "O" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "O" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"

11:
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "O" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "O" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                
                oSheet.Cells(m_ROW - 1, 2).value = ""
                
                
                
                
                
                
                
                
                
          iii = 7
   ' Workbooks(tmppath1).Sheets("Arrival List").Range("C1:C33").Copy
                Dim cell As Range
'
'       If InStr(Range("C2").value, "Dr.") > 0 Then
'        Range("C2").value = "Doctor"
'       End If
'                For Each cell In Range("C:C" & m_ROW)
'                    If InStr(cell.value, "Sub Tot") > 0 Then
'                     '   osheet.Cells(Max, 12) = Trim(Rs.Fields("BankName"))
'                        cell.Font.Bold = True
'                         lr = "A" & iii
'                        HR = "O" & iii
'                        With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 12
'                            .Color = vbGrayed
'                        End With
'                        'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'
'                    End If
'                    iii = iii + 1
'                Next cell

For I = 6 To m_ROW
            If InStr(Trim(oSheet.Cells(I, 6)), "Sub Tot") > 0 Then
                  
                        oSheet.Cells(I, 1) = ""
                        oSheet.Cells(I, 4) = ""
                         lr = "A" & I
                        HR = "O" & I
                        With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 12
                            .Color = vbGrayed
                        End With
                        'osheet.Cells(0, 1).EntireRow.Font.Bold = True

             End If
             If InStr(Trim(oSheet.Cells(I, 6)), "Grand Total") > 0 Then
                        oSheet.Cells(I, 1) = ""
                        oSheet.Cells(I, 4) = ""
             End If
             
Next I
                
                
                
                
                
                
                
               MsgBox "Excel File Downloaded Successfully", vbInformation, head
                
                
                
               ' Myxl.Application.Visible = True
                Set oBook = Nothing
                Set oSheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
'                Else
'                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
'                'CmbVtype.SetFocus
'                Exit Sub
          '  End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub

