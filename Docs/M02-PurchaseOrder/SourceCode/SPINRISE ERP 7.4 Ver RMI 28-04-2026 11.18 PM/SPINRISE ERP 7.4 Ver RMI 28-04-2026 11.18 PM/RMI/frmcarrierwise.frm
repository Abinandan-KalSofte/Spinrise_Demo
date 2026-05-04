VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmcarrierwise 
   AutoRedraw      =   -1  'True
   Caption         =   "Carrierwise Arrival List"
   ClientHeight    =   5880
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11340
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5880
   ScaleWidth      =   11340
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   495
      Top             =   3555
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Crystal Report"
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
      Left            =   7545
      TabIndex        =   18
      Top             =   5370
      Visible         =   0   'False
      Width           =   1515
   End
   Begin VB.Frame Frame5 
      Height          =   735
      Left            =   1800
      TabIndex        =   14
      Top             =   4560
      Visible         =   0   'False
      Width           =   6660
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   16
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   15
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
         TabIndex        =   17
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
      Left            =   5640
      TabIndex        =   9
      Top             =   5355
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
      Left            =   3525
      TabIndex        =   8
      Top             =   5355
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   3015
      Left            =   1905
      TabIndex        =   0
      Top             =   1440
      Width           =   6630
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   7
         Text            =   "Combo1"
         Top             =   2340
         Width           =   3510
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2520
         TabIndex        =   6
         Top             =   1620
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo2"
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2520
         TabIndex        =   10
         Top             =   600
         Visible         =   0   'False
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   609
         _Version        =   393216
         Format          =   71106561
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   345
         Left            =   2520
         TabIndex        =   11
         Top             =   1560
         Visible         =   0   'False
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   70254593
         CurrentDate     =   37820
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   12
         Top             =   1080
         Width           =   1380
         _ExtentX        =   2434
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo1"
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
         Left            =   855
         TabIndex        =   4
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
         Left            =   855
         TabIndex        =   3
         Top             =   1755
         Width           =   705
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Carrier"
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
         Left            =   855
         TabIndex        =   2
         Top             =   2430
         Width           =   570
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Carrierwise Arrival List"
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
         TabIndex        =   1
         Top             =   60
         Width           =   7080
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2055
      Left            =   1800
      TabIndex        =   5
      Top             =   1320
      Width           =   4965
      _ExtentX        =   8758
      _ExtentY        =   3625
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "frmcarrierwise.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8640
      TabIndex        =   13
      Top             =   840
      Visible         =   0   'False
      Width           =   4215
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "frmcarrierwise"
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
Dim Str As String
Dim tot5, tot6, tot7 As Double
On Error GoTo Command1_Click_Error

pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
co = 0
tot1 = 0
'developed  by D.parimalam
Dim r As String
Dim s As String
Dim TEMP As String
Dim temp1 As String
ree = 0
r = a
s = b
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

DataCombo1.Text = DTPicker1.value '''''''
DataCombo2.Text = DTPicker2.value '''''''
f = Format(DataCombo1.Text, "dd/mm/yy")
m = Format(DataCombo2.Text, "dd/mm/yy")

U = Format(DataCombo1.Text, "yyyy-mm-dd")
v = Format(DataCombo2.Text, "yyyy-mm-dd")
If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        DTPicker1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo1.SetFocus
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
Call callhead(r, s, CInt(pg1))

'w = Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1))
W = Combo1.Text
Set Rsst = New Recordset
Rsst.Open "select distinct carname  from po_car ", cn, adOpenStatic, adLockBatchOptimistic
If W <> "" Then

 Do While Not Rsst.EOF
        If W <> Rsst(0) And Left(Combo1.Text, 2) <> "A " Then
                  Rsst.MoveNext
        Else

If Left(Combo1.Text, 2) = "A " Then
    Set rs2 = New Recordset
    'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode order by b.carname", DB, adOpenStatic
    rs2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & U & " 'and '" & v & "' and a.carcode=b.carcode and divcode='" & Divcode & "' order by b.carname,a.lotno,a.arrdate", DB, adOpenStatic
    If rs2.RecordCount = 0 Then
     MsgBox "No records Found ", vbInformation, head
     Combo1.SetFocus
     Exit Sub
     Else
     GoTo carrier
    End If
Else
    Set rs2 = New Recordset
    rs2.Open "select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & U & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & W & "'  and divcode='" & Divcode & "' order by b.carname,a.lotno,a.arrdate", DB, adOpenStatic
    'rs2.Open "select a.arrdate,a.lotno,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname,c.slname,d.areaname,a.lorrynos from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between ' " & u & " 'and '" & v & "' and a.carcode=b.carcode and b.carname='" & w & " 'order by b.carname", DB, adOpenStatic
    If rs2.RecordCount = 0 Then
     MsgBox "No records Found ", vbInformation, head
     Combo1.Text = ""
     Combo1.SetFocus
     Exit Sub
     Else
     GoTo carrier
     End If
End If
End If
Loop
MsgBox "Select the Correct Option", vbInformation, head
Screen.MousePointer = 0
Combo1.Text = ""
Combo1.SetFocus
Exit Sub

Else
MsgBox "Option Should not be Empty", vbInformation, head
Screen.MousePointer = 0
Combo1.SetFocus
Exit Sub
End If

carrier: temp1 = ""
Do While Not rs2.EOF
 If temp1 <> rs2("carname") Then
     Print #1, Chr(27) & "E" & Space(5) & Padr(rs2("carname"), 35, " ") & Chr(27) & "F"
 End If
 temp1 = rs2("carname")
 Print #1, Space(5) & Padr(Format(rs2("arrdate"), "dd-mm-yy"), 9, " ") & Space(1) & Padl(rs2("lotno") & "/" & Format(rs2("lotdt"), "yy"), 7, " ") & Space(1) & Padl(rs2("plotno"), 10, " ") & Space(3) & Padr(rs2("slname"), 36, " ") & Space(2) & Padr(rs2("areaname"), 15, " ") & Space(1) & Padl(rs2("quantity"), 6, " ") & Space(1) & Padl(INF(rs2("netwt"), 3), 14, " ") & Space(1) & Padl(rs2("lrno"), 10, " ") & Space(1) & Padl(rs2("lorrynos"), 15, " ") & Space(2) & Padl(INF(rs2("freight"), 2), 9, " ")
 co = co + 1
 If co >= 61 Then
    co = 0
   Call callhead(CStr(a), CStr(b), CStr(pg1))
 End If
    tot5 = tot5 + rs2("quantity")
    tot6 = tot6 + rs2("netwt")
    tot7 = tot7 + rs2("freight")
     rs2.MoveNext
     If rs2.EOF = False Then
        If TEMP = rs2("carname") Then
            TEMP = ""
        End If
    End If
     
Loop
Print #1, Space(5) & String(144, "-")
Print #1, Space(5) & Space(72) & "Grand Total  " & Padl(INF(tot5, 0), 6, " ") & Space(1) & Padl(INF(tot6, 3), 14, " ") & Space(24) & Padl(INF(tot7, 2), 14, " ") '& Chr(27) & "F"
Print #1, Space(5) & String(144, "-")
'supplier total
If Left(Combo1.Text, 2) <> "A " Then
Set RS6 = New Recordset
RS6.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & v & "' and a.carcode=b.carcode and b.carname='" & W & "'  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
Else
Set RS6 = New Recordset
RS6.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.supcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & v & "' and a.carcode=b.carcode  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
End If
'Broker Total
If Left(Combo1.Text, 2) <> "A " Then
Set rs7 = New Recordset
rs7.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & v & "' and a.carcode=b.carcode and b.carname='" & W & "'  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
Else
Set rs7 = New Recordset
rs7.Open "select sum(a.quantity)quantity,sum(isnull(a.freight,0)) as freight,sum(a.netwt)netwt,c.slname,d.areaname from rm_arrival a,po_car b,fa_slmas c,rm_area d where a.brkcd=c.slcode and a.areacode=d.areacode and a.arrdate between '" & U & "' and '" & v & "' and a.carcode=b.carcode  and divcode='" & Divcode & "' group by c.slname,d.areaname order by c.slname", DB, adOpenStatic
End If
Print #1, Chr(12)
Print #1,
Print #1, Space(5) + Chr(27) & "E" & Padr("Supplierwise Abstract", 22, " ") & "from" & Space(1) & f & Space(1) & "to" & Space(1) & m & Space(2) & Space(25) & Space(1) & Space(11) & "Pg.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
'Print #1, Space(5) + Chr(27) & "E" & CENTRE("---------------------", 80, " ") & Chr(27) & "F"
'Print #1, Space(5) + "Supplier Name                              Quantity           Netwt      Freight  "
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + "Supplier Name                              Station         Quantity         Net Wt.      Freight"
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
Print #1, Space(5) + Chr(27) & "E" & Padr("Brokerwise Abstract", 20, " ") & "from" & Space(1) & f & Space(1) & "to" & Space(1) & m & Space(2) & Space(25) & Space(1) & Space(11) & "Pg.:" & Padl(pg1, 3, " ") & Chr(27) & "F"
'Print #1, Space(5) + Chr(27) & "E" & CENTRE("-------------------", 80, " ") & Chr(27) & "F"
'Print #1, Space(5) + "Supplier Name                              Quantity           Netwt      Freight  "
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + "Broker Name                                Station         Quantity         Net Wt.      Freight"
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Do While Not rs7.EOF
Print #1, Space(5) + Padr(rs7("slname"), 42, " ") + Space(1) + Padr(rs7("areaname"), 15, " ") + Space(1) + Padl(INF(rs7("quantity"), 0), 8, " ") + Space(1) + Padl(INF(rs7("netwt"), 3), 15, " ") + Space(1) + Padl(INF(rs7("freight"), 2), 12, " ")
    btot5 = btot5 + rs7("quantity")
    btot6 = btot6 + rs7("netwt")
    btot7 = btot7 + rs7("freight")
rs7.MoveNext
Loop
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Space(5) + Space(35) + "Total" + Space(11) + Padl(INF(btot5, 0), 16, " ") + Space(1) + Padl(INF(btot6, 3), 15, " ") + Space(1) + Padl(INF(btot7, 2), 12, " ")
Print #1, Space(5) + "------------------------------------------------------------------------------------------------"
Print #1, Chr(12)
Print #1, Chr(12)
Print #1, Chr(12)
 Call footermod(CInt(1), UserFooter1.SelectedStr, 85)
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

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmcarrierwise", vbInformation, head
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
Print #1, Space(5) + "Carrierwise Arrival Report" & Space(1) & "from" & Space(1) & f & Space(1) & " to" & Space(1) & m & Space(2) & Space(70) & Space(1) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.:" & Padl(pg1, 3, " ")
Print #1, Space(5) & String(144, "-")
'Print #1, Space(5) & "Carrier Name"
'Print #1, Space(5) & "Received     Mill   Party  Party Name                             Station             No.of           Kgs    L.R.No         Lorry      Lorry"
'Print #1, Space(5) & "    Date     LotNo.   Lot                                                             Bales                                    No    Freight"
Print #1, Space(5) & "Carrier Name"
Print #1, Space(5) & "Received     Mill    Supplier   Supplier name                        Station       Quantity            Kgs    L.R.No.           Lorry      Lorry"
Print #1, Space(5) & "    Date     LotNo.   Lot No.                                                                                                     No.    Freight"
Print #1, Space(5) & String(144, "-")
co = co + 9

Exit Sub
callhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure callhead of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0
End Sub
  
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0

End Sub

'---------------------------------------------------------------------------------------
' Procedure : Command3_Click
' DateTime  : 25/02/2009 11:49
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Command3_Click()
        Dim rec As Recordset
        
On Error GoTo Command3_Click_Error

'        DataCombo1.Text = DTPicker3.value ''''
'            DataCombo2.Text = DTPicker2.value ''''
        DataCombo1.Text = DTPicker1.value '''''''
        DataCombo2.Text = DTPicker2.value '''''''
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
            
            If CDate(a) > CDate(b) Then
                MsgBox "From Date should not be greater than To Date", vbInformation
                DataCombo1.SetFocus
                DTPicker3.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(b) < CDate(a) Then
                MsgBox "To Date should not be less than From Date", vbInformation
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
        
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
        

    
'        rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt," & _
'                   "Result.plotno,Result.quantity,Result.lrno," & _
'                   "Result.freight,Result.netwt,Result.prno,Result.carname," & _
'                   "RESULT.Slname , RESULT.areaname, RESULT.LORRYNOS " & _
'               " Into Temp_Periodical_ArrivalRegister " & _
'               " From " & _
'               " (select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno," & _
'                       "isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname," & _
'                       "c.Slname , d.areaname, a.LORRYNOS " & _
'                   " from rm_arrival a,po_car b,fa_slmas c,rm_area d " & _
'                   " where a.supcd=c.slcode and a.areacode=d.areacode and " & _
'                       " a.arrdate Between '" & Format(a, "dd-mmm-yyyy") & "' and '" & Format(B, "dd-mmm-yyyy") & "' and " & _
'                       " a.carcode*=b.carcode and divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic


        rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt,Result.plotno,Result.quantity,Result.lrno, " & _
            "Result.freight,Result.netwt,Result.prno,Result.carname,RESULT.Slname , " & _
            "RESULT.areaname, RESULT.LORRYNOS  Into Temp_Periodical_ArrivalRegister  From " & _
            "(select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno,isnull(a.freight,0) as freight, " & _
            "a.netwt,a.prno,b.carname,c.Slname , d.areaname, a.LORRYNOS " & _
            "from rm_arrival a " & _
            "left join po_car b on a.carcode=b.carcode " & _
            "left join fa_slmas c on a.supcd=c.slcode " & _
            "left join rm_area d on a.areacode=d.areacode " & _
            "where ('A - All'='" & Trim(Combo1.Text) & "' or b.carname like '" & Trim(Combo1.Text) & "') and a.arrdate Between '" & Format(a, "dd-mmm-yyyy") & "' and '" & Format(b, "dd-mmm-yyyy") & "' and divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic
                       
        
        
        DB.CommitTrans
        
        Me.MousePointer = 11
        
        If UCase(Trim(CustID)) = "JAT" Or UCase(Trim(CustID)) = "KUMARAGIRI" Then
        Dim ClsfreDtlsFrei As New clsCrystal
        Set ClsfreDtlsFrei.cryRept = Cry_Period_ARRRegCarrierwise 'Cry_Transport
        ClsfreDtlsFrei.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "description;" & "Arrival List From " & Format(a, "dd/mm/yy") & " To " & Format(b, "dd/mm/yy") & ""
        CrystalReport1.ParameterFields(1) = "name;" & divname & ""
        CrystalReport1.ParameterFields(2) = "@UnitName;" & PrUnitName & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        Exit Sub
        Else
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_ARRRegCarrierwise.rpt"
'        FrmRpt.RptHead = "2A"
'        parameter1 = "Arrival List From " & Format(a, "dd/mm/yy") & " To " & Format(B, "dd/mm/yy") & ""
'        parameter2 = divname
'        FrmRpt.Show
'        Me.MousePointer = 0
        Dim ClsfreDtlsFre As New clsCrystal
        Set ClsfreDtlsFre.cryRept = Cry_Arrivallist
        ClsfreDtlsFre.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "description;" & "Arrival List From " & Format(a, "dd/mm/yy") & " To " & Format(b, "dd/mm/yy") & ""
        CrystalReport1.ParameterFields(1) = "name;" & divname & ""
        CrystalReport1.ParameterFields(2) = "@UnitName;" & PrUnitName & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        
        Exit Sub
        End If

errorsub:
    MsgBox Err.Description, vbCritical
    Me.MousePointer = 0



Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmcarrierwise", vbInformation, head

End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
        DTPicker1.value = yfdate
        DataCombo1.Text = DTPicker1.value
        Exit Sub
        
Else
    DataCombo1.Text = DTPicker1.value
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub DTPicker2_Change()
If DTPicker2.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
    DTPicker2.value = yfdate
    DataCombo2.Text = DTPicker2.value
Else
    DataCombo2.Text = DTPicker2.value
End If

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.Open connectstring
Set Rs = New Recordset
Dim a As Integer
Set ResultRs = New Recordset
Rs.Open "select distinct arrdate from rm_arrival where arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdate", DB, adOpenStatic
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Command3.Visible = True
If Not Rs.EOF Then
    Set DataCombo1.RowSource = Rs
    Set DataCombo2.RowSource = Rs
    DataCombo1.ListField = "arrdate"
    DataCombo2.ListField = "arrdate"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
    
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
    SSTab1.Visible = True
    SSTab1.Height = SSTab1.Height + 1200
    SSTab1.Width = SSTab1.Width + 2000
    
    
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Combo1.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    ''''''''''''''''''''''
    
     Combo1.Visible = True
     Combo1.AddItem "A - All"
Set ResultRs = New Recordset
'ResultRs.Open "select distinct carcode + '-'+ carname  from po_car ", db, adOpenStatic
ResultRs.Open "select distinct carname  from po_car ", DB, adOpenStatic
If Not ResultRs.EOF Then
       Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            ResultRs.MoveNext
       Loop
           
            Combo1.ListIndex = 0
       End If
Else
    MsgBox "No Record Found For This Date", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If


'MsgBox DTPicker1.Left
'MsgBox DataCombo1.Left

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form frmcarrierwise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form frmcarrierwise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form frmcarrierwise", vbInformation, head
Screen.MousePointer = 0
End Sub



