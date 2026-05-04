VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form cottonbrokerwise 
   AutoRedraw      =   -1  'True
   Caption         =   "Agent Commission List"
   ClientHeight    =   7110
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport crr 
      Left            =   5190
      Top             =   3180
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Crystal"
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
      Left            =   1275
      TabIndex        =   22
      Top             =   6270
      Visible         =   0   'False
      Width           =   1335
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   945
      TabIndex        =   18
      Top             =   5400
      Visible         =   0   'False
      Width           =   6900
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   20
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   19
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
         TabIndex        =   21
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.CommandButton Cmdcancel 
      Caption         =   "E&xit"
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
      Left            =   4680
      TabIndex        =   13
      Top             =   6270
      Width           =   1335
   End
   Begin VB.CommandButton cmdreport 
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
      Left            =   2760
      TabIndex        =   12
      Top             =   6270
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   3720
      Left            =   1080
      TabIndex        =   0
      Top             =   1425
      Width           =   6660
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "cottonbrokerwise.frx":0000
         Left            =   2130
         List            =   "cottonbrokerwise.frx":0002
         TabIndex        =   1
         Top             =   3075
         Width           =   4350
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2130
         TabIndex        =   2
         Top             =   2415
         Width           =   4350
         _ExtentX        =   7673
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
         Left            =   2130
         TabIndex        =   3
         Top             =   1845
         Width           =   4350
         _ExtentX        =   7673
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
         Left            =   2130
         TabIndex        =   4
         Top             =   705
         Width           =   1470
         _ExtentX        =   2593
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2130
         TabIndex        =   5
         Top             =   1350
         Width           =   1515
         _ExtentX        =   2672
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
         Format          =   164757505
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
         Format          =   164757505
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
         Left            =   615
         TabIndex        =   11
         Top             =   1350
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
         Left            =   615
         TabIndex        =   10
         Top             =   735
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
         Left            =   615
         TabIndex        =   9
         Top             =   3165
         Width           =   435
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Agent"
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
         Left            =   615
         TabIndex        =   8
         Top             =   1905
         Width           =   975
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Agent"
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
         Left            =   615
         TabIndex        =   7
         Top             =   2565
         Width           =   795
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt List - Agentwise"
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
         Left            =   -330
         TabIndex        =   6
         Top             =   0
         Width           =   6945
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3975
      Left            =   960
      TabIndex        =   16
      Top             =   1320
      Width           =   6885
      _ExtentX        =   12144
      _ExtentY        =   7011
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "cottonbrokerwise.frx":0004
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   7800
      TabIndex        =   17
      Top             =   1200
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
End
Attribute VB_Name = "cottonbrokerwise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim REP As Report.ReportView
Dim a As Integer
Dim pg As Integer
Dim Rs As Recordset
Dim RSS As Recordset
Dim rs1 As Recordset
Dim rss1 As Recordset
Dim Cnn As String
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer
Dim rsz As Recordset
Private Sub cmdCancel_Click()
Unload Me
intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Cmdcancel_LostFocus
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmdcancel_LostFocus()
On Error GoTo Cmdcancel_LostFocus_Error
intervalMinutes = -1
DTPicker1.SetFocus

Exit Sub
Cmdcancel_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_LostFocus of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : cmdreport_Click
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub cmdReport_Click()
'On Error GoTo cmdreport_Click_Error
On Error GoTo cmdreport_Click_Error
intervalMinutes = -1
Screen.MousePointer = 11
Dim W, X As String
Dim head As String
Dim brocount As Integer
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim U, v As String
Set REP = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\inv.txt" For Output As #a
 Open KALFOLDERDATA & "\inv.TXT" For Output As #a
Dim costr As String
Dim cratekg, tratekg As Double
Dim temp3 As String
Dim tot1, tot2, tot3, tot4, tot5, tot6, tot7, tot8, tot9, tot10, tot11, tot12, cnt As Double
If Right(Combo1.Text, 1) = "F" Then
    costr = "F"
ElseIf Right(Combo1.Text, 1) = "S" Then
    costr = "S"
Else
    costr = "A"
End If
Dim co As Integer
Dim pg As Integer
Dim S1, s2, s3 As String
Dim d As String
Dim TEMP As String
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0: tot6 = 0
tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0: tot11 = 0: tot12 = 0: cnt = 1
   brocount = 0
   ttot1 = 0
    ttot2 = 0
    ttot3 = 0
    ttot4 = 0
    ttot5 = 0
    ttot6 = 0
    ttot7 = 0
    ttot8 = 0
    ttot9 = 0
U = Trim(Right(DataCombo1.Text, 7))
v = Trim(Right(DataCombo2.Text, 7))

DataCombo3.Text = DTPicker1.value ''''''''
DataCombo4.Text = DTPicker2.value '''''''''

W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
If DataCombo1.MatchedWithList And DataCombo2.MatchedWithList Then
If Combo1.Text = "FOR - F" Or Combo1.Text = "SPOT - S" Or Combo1.Text = "ALL - A" Then
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
 'select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,a.pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.taxamt+a.ldgulg+a.freght+a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from  rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g  where b.carcode=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt  and a.supcd=e.slcode and a.brkcd=f.slcode and a.areacd=g.areacode and a.supcd between 'C2A001' and 'C2Y003' and a.lotdt between '2005-10-25' and '2005-11-20' and c.dlytype='M'  order by a.lotno
'Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,c.brkcd as brkcd,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.totlandcost)as totalvalue,e.slname as supplier,E.slname as broker,A.NETWT,A.FNETWT,A.PNETWT,A.AREACD,a.fbillno from " & _
'        " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e ,fa_slmas e1" & _
'        " where a.lotno = b.lotno And b.contno = c.contno and b.contdt=c.contdt And a.lotdt = b.lotdt and a.divcode=b.divcode and a.divcode=c.divcode " & _
'        " and c.brkcd=e1.slcode  and a.supcd=c.supcd and c.brkcd between '" & U & "' and '" & V & "'" & _
'        " and a.lotdt between '" & W & "' and '" & X & "'  AND A.DIVCODE='" & Divcode & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "'  order by broker,a.lotno ", Cn, adOpenStatic


Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,c.brkcd as brkcd,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.totlandcost)as totalvalue,e.slname as supplier,br.slname as broker,A.NETWT,A.FNETWT,A.PNETWT,A.AREACD,a.fbillno from " & _
        " rm_lot a " & _
        " INNER JOIN rm_arrival b ON a.lotno = b.lotno And a.lotdt = b.lotdt and a.divcode=b.divcode " & _
        " INNER JOIN rm_cont c ON b.contno = c.contno and b.contdt=c.contdt AND a.divcode=c.divcode and a.supcd=c.supcd " & _
        " INNER JOIN fa_slmas e ON a.supcd=e.slcode " & _
         " inner  JOIN  fa_slmas br ON c.brkcd=br.slcode " & _
        " where  c.brkcd between '" & U & "' and '" & v & "' and a.lotdt between '" & W & "' and '" & X & "'  AND A.DIVCODE='" & Divcode & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "'  order by broker ,a.lotno ", cn, adOpenStatic, adLockReadOnly

Else
Set Rs = New Recordset
 'select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,a.pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.taxamt+a.ldgulg+a.freght+a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from  rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g  where b.carcode=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt  and a.supcd=e.slcode and a.brkcd=f.slcode and a.areacd=g.areacode and a.supcd between 'C2A001' and 'C2Y003' and a.lotdt between '2005-10-25' and '2005-11-20' and c.dlytype='M'  order by a.lotno
'Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,c.brkcd as brkcd,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.totlandcost)as totalvalue,e.slname as supplier,E.slname as broker,A.NETWT,A.FNETWT,A.PNETWT,A.AREACD,a.fbillno from " & _
'        " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e  " & _
'        " where a.lotno = b.lotno And b.contno = c.contno and b.contdt=c.contdt And a.lotdt = b.lotdt and a.divcode=b.divcode and a.divcode=c.divcode " & _
'        " and c.brkcd=e1.slcode and a.supcd=c.supcd and c.brkcd between '" & U & "' and '" & V & "'" & _
'        " and a.lotdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND A.DIVCODE='" & Divcode & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' order by broker,a.lotno ", Cn, adOpenStatic, adLockBatchOptimistic

Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,c.brkcd as brkcd,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,a.totlandcost,(a.totlandcost)as totalvalue,e.slname as supplier,br.slname as broker,A.NETWT,A.FNETWT,A.PNETWT,A.AREACD,a.fbillno from " & _
        " rm_lot a " & _
        " INNER JOIN rm_arrival b ON a.lotno = b.lotno AND a.lotdt = b.lotdt and a.divcode=b.divcode " & _
        " INNER JOIN  rm_cont c ON b.contno = c.contno and b.contdt=c.contdt AND a.supcd=c.supcd and a.divcode=c.divcode " & _
        " INNER JOIN fa_slmas e ON a.supcd=e.slcode " & _
        " inner  JOIN fa_slmas br ON c.brkcd=br.slcode " & _
        " where c.brkcd between '" & U & "' and '" & v & "' " & _
        " and a.lotdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND A.DIVCODE='" & Divcode & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' order by broker ,a.lotno", cn, adOpenStatic, adLockReadOnly

End If
If Rs.RecordCount <= 0 Then
      Screen.MousePointer = 0
      MsgBox " No Records Found", vbInformation, "Kalsofte"
      Exit Sub
Else
      Rs.MoveFirst
End If
If costr = "F" Then
   costr = "FOR"
ElseIf costr = "S" Then

   costr = "SPOT"
   Else
   costr = "FOR"
End If
intervalMinutes = -1
pg = 1
Call header3(co, pg, rs1, CStr(W), CStr(X))
Else
MsgBox "Select the valid Type", vbInformation, "Kalsofte"
Combo1.Text = ""
Combo1.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
Else

If DataCombo1.MatchedWithList = False Then
MsgBox "Select the valid Broker", vbInformation, "Kalsofte"
DataCombo1.Text = ""
DataCombo1.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
If DataCombo2.MatchedWithList = False Then
MsgBox "Select the valid Broker", vbInformation, "Kalsofte"
DataCombo2.Text = ""
DataCombo2.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
End If

Do While Rs.EOF = False

Set Rsst = New Recordset
Rsst.Open "Select isnull(slname,'') as broker from fa_slmas where slcode='" & Rs("brkcd") & "'", cn, adOpenStatic

If Rs("netwt") <> 0 Then
    cratekg = Rs("pjamt") / Rs("netwt")
     tratekg = Rs("totalvalue") / Rs("netwt")
    Else
    createkg = 0
    tratekg = 0
    End If
    
   
    'If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
    'diff = Rs("NETWT") - Rs("FNETWT")
    If Rs("FNETWT") <> 0 Then
       diff = Rs("NETWT") - Rs("FNETWT")
    Else
       diff = Rs("NETWT") - Rs("PNETWT")
    End If
    'If temp <> rs("SUPPLIER") Then
'    TEMP = rsst!Broker
    If Rsst.EOF = False Then
    If TEMP <> Rsst("broker") Then
    
     If co > 9 And brocount > 1 Then
        Print #a, Chr(27) + "E"
    Print #a, Space(0); Space(94); Padl("** Agent Total  **", 22, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
        Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
        Print #a, Chr(27) + "F"
        co = co + 3
        brocount = 0
    End If
    'blank line
    If brocount = 1 Then
        Print #a,
        co = co + 1
        brocount = 0
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
        Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Rsst("broker"), 40, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
        co = co + 1
    End If
    End If
    AREACODE = IIf(IsNull(Rs("areacd")), "", Rs("areacd"))
    Set rsz = New Recordset
    rsz.Open "select areaname from rm_area where areacode='" & AREACODE & "'", DB, adOpenStatic
    areaname = ""
    If rsz.RecordCount > 0 Then
        areaname = CStr(rsz("areaname"))
    End If
    
    temp3 = Right(Rs("lotyear"), 2)
    Print #a, Space(2); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(areaname, 12, " "); Space(1); Padr(Rs("supplier"), 25, " ");
    Print #a, Space(2); Padr(Rs("prmark"), 10, " "); Space(1); Padr(" ", 15, " "); Space(1); Padl(Rs("fbillno"), 5, " "); Space(1); Padl(Rs("pono"), 5, " "); Space(2); Padr(costr, 5, "  "); Space(1);
    Print #a, Padr(Rs("varcode"), 10, " "); Space(1); Padl(INF(Rs("bales"), 0), 4, " "); Space(1); Padl(INF(Rs("netwt"), 3), 12, " "); Space(1); Padl(INF(Rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(Rs("pjamt"), 2), 15, " "); Space(1);
    Print #a, Padl(INF(Rs("freght"), 2), 10, " "); Space(1); Padl(INF(Rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(Rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(Rs("totalvalue"), 2), 14, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
    Print #a, Padl(Format(diff, "#######.000"), 11, " ")
    co = co + 1
    brocount = brocount + 1
    tot1 = tot1 + Rs("bales")
    tot2 = tot2 + Rs("netwt")
    tot3 = tot3 + Rs("pjamt")
    tot4 = tot4 + Rs("freght")
    tot5 = tot5 + Rs("taxamt")
    tot6 = tot6 + Rs("ldgulg")
    tot7 = tot7 + Rs("totalvalue")
    tot8 = tot8 + cratekg
    tot9 = tot9 + tratekg
    
    
     ttot1 = ttot1 + Rs("bales")
        ttot2 = ttot2 + Rs("netwt")
        ttot3 = ttot3 + Rs("pjamt")
        ttot4 = ttot4 + Rs("freght")
        ttot5 = ttot5 + Rs("taxamt")
        ttot6 = ttot6 + Rs("ldgulg")
        ttot7 = ttot7 + Rs("totalvalue")
        ttot8 = ttot8 + cratekg
        ttot9 = ttot9 + tratekg
    
    
    'Format("########.000")
    'Print #a, Space(2); Padr(Format(rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(rs("lotno"), 8, " "); "/"; Padl(rs("lotyear"), 4, " "); Space(1); Padr(rs("areaname"), 14, " "); Space(1);
    'Print #a, Space(1); Padr(rs("prmark"), 10, " "); Space(1); Padr(rs("carname"), 25, " "); Space(1); Padl(rs("pjno"), 10, " "); Space(1); Padl(rs("pono"), 10, " "); Space(2); Padr(costr, 5, "  "); Space(1);
    'Print #a, Padr(rs("varcode"), 10, " "); Space(1); Padl(INF(rs("bales"), 0), 5, " "); Space(1); Padl(INF(rs("netwt"), 3), 12, " "); Space(1); Padl(INF(rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(rs("pjamt"), 2), 15, " "); Space(1);
    'Print #a, Padl(INF(rs("freight"), 2), 12, " "); Space(1); Padl(INF(rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(rs("totalvalue"), 2), 15, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
    'Print #a, Padl(INF(diff, 2), 9, " ")
            
    TEMP = Rs("BROKER")
    cnt = cnt + 1
    Rs.MoveNext
        tot10 = tot8 / cnt
        tot11 = tot9 / cnt
            If co > 60 Then
                Print #a, Space(2); String(230, "-")
                Print #a, Chr(12)
                co = 0
                pg = pg + 1
                Call header3(co, pg, rs1, CStr(W), CStr(X))
            End If
Loop


    Print #a, Chr(27) + "E"
    Print #a, Space(0); Space(94); Padl("** Agent Total  **", 22, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
    Print #a, Chr(27) + "F"

    Print #a, Space(2); String(230, "-")
    'Print #a, Space(2); Space(109); Padl("TOTAL", 5, " "); Space(2); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl(INF(tot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(tot10, 2), 6, " "); Space(1); Padl(INF(tot3, 2), 15, " "); Space(1);
    'Print #a, Padl(INF(tot4, 2), 12, " "); Space(1); Padl(INF(tot5, 2), 6, " "); Space(1); Padl(INF(tot6, 2), 8, " "); Space(1); Padl(INF(tot7, 2), 14, " "); Space(1); Padl(INF(tot11, 2), 6, " ")
    
    Print #a, Space(2); Space(102); Padl(" ** TOTAL  ** ", 12, " "); Space(2); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl(INF(tot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(tot10, 2), 6, " "); Space(1); Padl(INF(tot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(tot4, 2), 12, " "); Space(1); Padl(INF(tot5, 2), 6, " "); Space(0); Padl(INF(tot6, 2), 9, " "); Space(1); Padl(INF(tot7, 2), 14, " "); Space(1); Padl(INF(tot11, 2), 6, " ")
    
    
    Print #a, Space(2); String(230, "-")
    Print #a, Chr(12) 'page break
    Print #a, Chr(12) 'page break
    Print #a, Chr(12) 'page break
   Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
    Close #a
    a = FreeFile
'    Open "c:\inv.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type inv.txt>prn"
'    Close #a
'    Rep.txtfile = "c:\inv.txt"
'    Rep.Batfile = "c:\inv.bat"
    Call KALBATPROCESS("inv")

intervalMinutes = -1
Screen.MousePointer = 0
Exit Sub
'cmdreport_Click_Error:
   ' MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdreport_Click of Form cottonbrokerwise"

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub header3(co As Integer, pg As Integer, rs1 As Recordset, W As String, X As String)
intervalMinutes = -1
On Error GoTo header3_Error
Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Chr(18)
Print #a, Space(2); Chr(27) + "E" + CENTRE(temp1, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
temp2 = CStr(pdate)
Print #a, Space(2) & "Raw Material Receipts List Agentwise " & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(139) & Space(4) & Format(temp2, "dd/mm/yy") & Space(3) & "Pg.:" & Space(1) & Padl(pg, 3, " ")
Print #a, Space(2) & String(230, "-")
Print #a, Space(2) & "Agent Name"
Print #a, Space(2) & "Received       Mill  Station      Supplier Name              Press Name Transport Name F.Inv.   PO.  Mode  Variety         Received      PO Rate  Rate/    Cotton Value      Lorry  Pur.Tax    Other    Total Value  Rate/   Diff kgs."
Print #a, Space(2) & "    Date    Lot No.                                                                       No.   No.                    Qty          Kgs             Kg                     Freight   Amount     Exp.                   Kg          "
Print #a, Space(2) & String(230, "-")

'Print #a, Space(2) & "Received         Mill Station      Broker Name               Press Name Transport Name F.Inv.   PO.  Mode  Variety          Received        Rate/  Rate/    Cotton Value      Lorry   Pur.Tax   Other    Total Value  Rate/  Diff kgs."
'Print #a, Space(2) & "    Date      Lot No.                                                                     No.   No.                     Qty          Kgs    Candy     Kg                    Freight    Amount    Exp.                   Kg          "

'Print #a, Space(2) & "Supplier Name                            Broker Name"
'Print #a, Space(2) & "Received     Mill      Station         Press Name Transport Name                F.Inv.    P.O.No.  Mode  Variety          Received        Rate/  Rate/    Cotton Value        Lorry  Pur.Tax    Other     Total Value  Rate/  Diff kgs.    "
'Print #a, Space(2) & "    Date  Lot No.                                    "
co = co + 9
Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form cottonbrokerwise"
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Select Case Repindex

Case 1191
       
        U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
        
        Dim CRAgentComm As New clsCrystal
        Set CRAgentComm.cryRept = P_AgentCommissionList_Agent
        CRAgentComm.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
        crr.ParameterFields(1) = "@FDate;" & W & ""
        crr.ParameterFields(2) = "@TDate;" & X & ""
        crr.ParameterFields(3) = "@FAgent;" & U & ""
        crr.ParameterFields(4) = "@TAgent;" & v & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        
        Me.MousePointer = 0
        Exit Sub
        
 Case 0
'''   U = Trim(Right(DataCombo1.Text, 7))
'''        V = Trim(Right(DataCombo2.Text, 7))
'''        DataCombo3.Text = DTPicker1.value
'''        DataCombo4.Text = DTPicker2.value
'''        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
'''        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
'''
'''        Dim CRAgentComm1 As New clsCrystal
'''        Set CRAgentComm1.cryRept = P_AgentCommissionList_Agent
'''        CRAgentComm1.CrystalPrint
'''        crr.Reset
'''        crr.Connect = connectstring
'''        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'''        crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
'''        crr.ParameterFields(1) = "@FDate;" & W & ""
'''        crr.ParameterFields(2) = "@TDate;" & X & ""
'''        crr.ParameterFields(3) = "@FAgent;" & U & ""
'''        crr.ParameterFields(4) = "@TAgent;" & V & ""
'''        crr.WindowShowPrintSetupBtn = True
'''        crr.WindowShowSearchBtn = True
'''        crr.WindowState = crptMaximized
'''        SendKeys "{ENTER}"
'''        crr.Action = 1
'''        crr.PrinterCopies = 1
'''
'''        Me.MousePointer = 0

        a1 = Format(Trim(DataCombo3.Text), "yyyy-mm-dd")
        b1 = Format(Trim(DataCombo4.Text), "yyyy-mm-dd")
        yf = Trim(Format(yfdate, "yyyy-mm-dd"))
         U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        Dim clsCryRpt1 As New clsCrystal
                Set clsCryRpt1.cryRept = Rep_Recreg_agent
             v1 = "ALL"
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@Fdate;" & a1 & ""
        crr.ParameterFields(1) = "@Tdate;" & b1 & ""
        crr.ParameterFields(2) = "@FSubCd;" & U & ""
        crr.ParameterFields(3) = "@TSubCd;" & v & ""
        crr.ParameterFields(4) = "@Divcode;" & Divcode & ""
        crr.ParameterFields(5) = "@YFDATE;" & yf & ""
        crr.ParameterFields(6) = "@StateCode;" & v1 & ""
        ''crr.Formulas(0) = "div='" & DIVNAME & "'"
        crr.Formulas(0) = "name='" & " Receipt List From " & Format(a1, "dd/mm/yy") & " To " & Format(b1, "dd/mm/yy") & "'"
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1


        Me.MousePointer = 0
        Exit Sub

        
        End Select
  intervalMinutes = -1
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error
intervalMinutes = -1
If DTPicker1.value < yfdate Then
MsgBox "Date Should be with in the Range", vbInformation, head
    DTPicker1.value = yfdate
    DataCombo3.Text = DTPicker1.value
Else
    DataCombo3.Text = DTPicker1.value
End If
Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form cottonbrokerwise"
End Sub

Private Sub DTPicker2_Change()
intervalMinutes = -1
On Error GoTo DTPicker2_Change_Error
If DTPicker2.value < yfdate Then
MsgBox "Date Should be with in the Range", vbInformation, head
    DTPicker2.value = yfdate
    DataCombo4.Text = DTPicker2.value
Else
    DataCombo4.Text = DTPicker2.value
End If
Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form cottonbrokerwise"
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Set cn = New Connection
Set REP = New ReportView
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
cn.Provider = "MSDATASHAPE"
cn.Open connectstring

    Set Rs = New Recordset
    Rs.Open "SELECT PTYPEBROKER FROM MASTERLEN", DB, adOpenStatic
    If Rs.EOF = False Then


    Set RSS = New Recordset
    RSS.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like '" & Rs(0) & "%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
    
    If RSS.EOF = False Then
        Set DataCombo1.RowSource = RSS
        DataCombo1.ListField = "SUP"
        Set DataCombo2.RowSource = RSS
        DataCombo2.ListField = "SUP"
        RSS.MoveFirst
        DataCombo1.Text = RSS(0)
        RSS.MoveLast
        DataCombo2.Text = RSS(0)
        Combo1.AddItem "FOR - F"
        Combo1.AddItem "SPOT - S"
         Combo1.AddItem "ALL - A"
        Combo1.ListIndex = 0
   End If
   End If
    Set Rs = New Recordset
    'rs.Open "select distinct lotdt from rm_lot where rejflg='N' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and rejflg='N' and DivCode = '" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
    'rs.Open "select distinct arrdt as arrdt from rm_LOT where  divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
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
        DTPicker1.maxdate = pdate
        DTPicker1.value = mfdate
        DTPicker1.Left = DataCombo3.Left
        DTPicker1.Width = DataCombo3.Width
        DTPicker1.Top = DataCombo3.Top

        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker2.MinDate = yfdate
        DTPicker2.Refresh
        DTPicker2.maxdate = pdate
        DTPicker2.value = pdate
        DTPicker2.Left = DataCombo4.Left
        DTPicker2.Width = DataCombo4.Width
        DTPicker2.Top = DataCombo4.Top
        Command1.Visible = True
     ''''''''''''''''''''''
    End If
      Label4.Caption = "Receipt List - Agentwise"
    Select Case Repindex
   
   
    Case 1191
    'Label4.Caption = "Agent Commission List - Agent wise"
    Label4.Caption = "Agent Commission List"
    Label1.Caption = "From Agent"
    Label2.Caption = "To Agent"
    Label3.Visible = False
    Combo1.Visible = False
    SSTab1.Height = 3400
    Frame1.Height = 3200
    Frame5.Visible = False
    Command1.Visible = True
    cmdReport.Visible = False
    CmdCancel.Top = 4800
    Command1.Top = 4800
    
    End Select
    
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo1.tabIndex = 2
    DataCombo2.tabIndex = 3
    Combo1.tabIndex = 4
    cmdReport.tabIndex = 5
    CmdCancel.tabIndex = 6
    
    
   intervalMinutes = -1
         Screen.MousePointer = 0
Exit Sub

Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form cottonbrokerwise"
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option4_Click
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
    
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option4_KeyDown
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option5_Click
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option5_KeyDown
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form cottonbrokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

