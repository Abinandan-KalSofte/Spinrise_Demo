VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form datewisecottonreceiptregister 
   AutoRedraw      =   -1  'True
   Caption         =   "Receipt Register - Datewise"
   ClientHeight    =   6675
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6675
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1560
      TabIndex        =   17
      Top             =   5160
      Visible         =   0   'False
      Width           =   6900
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   19
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   18
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
         TabIndex        =   20
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
      Left            =   5400
      TabIndex        =   13
      Top             =   6000
      Width           =   1335
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "&Report"
      Default         =   -1  'True
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
      Left            =   3120
      TabIndex        =   12
      Top             =   6000
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   3960
      Left            =   1650
      TabIndex        =   0
      Top             =   1050
      Width           =   6660
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "datewisecottonreceiptregister.frx":0000
         Left            =   2130
         List            =   "datewisecottonreceiptregister.frx":0002
         TabIndex        =   1
         Top             =   3195
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
         Width           =   4410
         _ExtentX        =   7779
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
         Width           =   1590
         _ExtentX        =   2805
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2130
         TabIndex        =   5
         Top             =   1350
         Width           =   1635
         _ExtentX        =   2884
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2130
         TabIndex        =   14
         Top             =   720
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   142934017
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2130
         TabIndex        =   15
         Top             =   1320
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   142934017
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
         Left            =   825
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
         Left            =   825
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
         Left            =   825
         TabIndex        =   9
         Top             =   3285
         Width           =   435
      End
      Begin VB.Label Label1 
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
         Left            =   825
         TabIndex        =   8
         Top             =   1905
         Width           =   1170
      End
      Begin VB.Label Label2 
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
         Left            =   825
         TabIndex        =   7
         Top             =   2575
         Width           =   990
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt Register - Datewise"
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
         TabIndex        =   6
         Top             =   30
         Width           =   6945
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4185
      Left            =   1560
      TabIndex        =   16
      Top             =   960
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   7382
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "datewisecottonreceiptregister.frx":0004
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8400
      TabIndex        =   21
      Top             =   960
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "datewisecottonreceiptregister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim REP As Report.ReportView
Dim a As Integer
Dim pg As Integer
Dim Rs As Recordset
Dim rss As Recordset
Dim rs1 As Recordset
Dim rss1 As Recordset
Dim Cnn As String
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer
'---------------------------------------------------------------------------------------
' Procedure : Cmdcancel_Click
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Cmdcancel_Click of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Cmdcancel_LostFocus
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmdcancel_LostFocus()
On Error GoTo Cmdcancel_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Cmdcancel_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Cmdcancel_LostFocus of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : DTPicker1_Change
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker1.value = mfdate
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_Change of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error
Screen.MousePointer = 11
Dim DayTotal As Integer
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim U, V As String
Dim z As String
If Repindex = 100 Then
    ''Poly  and viscos
    DataCombo3.Text = DTPicker1.value
    DataCombo4.Text = DTPicker2.value
    
    U = Format(DataCombo3.Text, "yyyy-mm-dd")
    V = Format(DataCombo4.Text, "yyyy-mm-dd")
    W = Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "--") + 3, (Len(DataCombo1.Text) - InStr(DataCombo1.Text, "--")))
    X = Mid$(DataCombo2.Text, InStr(DataCombo2.Text, "--") + 3, (Len(DataCombo2.Text) - InStr(DataCombo2.Text, "--")))
    z = Trim(Left(Combo1.Text, 2))
    Screen.MousePointer = 0
    If z = "P" Then
        Call Polysterwise(CStr(U), CStr(V), CStr(W), CStr(X), CStr(z), "e")
    Else
        Call viscos(CStr(U), CStr(V), CStr(W), CStr(X), CStr(z), "E")
    End If
    Exit Sub
ElseIf Repindex = 50 Then
    ''Datewise
    Set REP = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    'Open "C:\inv.txt" For Output As #a
    Open KALFOLDERDATA & "\inv.TXT" For Output As #a

    Dim costr As String
    
    costr = Right(Combo1.Text, 1)
    Dim co As Integer
    Dim pg As Integer
    Dim s1, s2, s3 As String
    Dim d As String
    Dim TEMP As String
        DayTotal = 0
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
    V = Trim(Right(DataCombo2.Text, 7))
    
    DataCombo3.Text = DTPicker1.value ''''
    DataCombo4.Text = DTPicker2.value ''''
    
    W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
    X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
    If costr = "A" Then
        Set Rs = New Recordset
        Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,A.NETWT,A.NETWT ,c.contno,b.lorrynos,A.fbillno from " & _
                " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                " where  A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'" & _
                " and a.LOTdt between '" & W & "' and '" & X & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
    Else
    
        Set Rs = New Recordset
        Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,A.NETWT,A.NETWT ,c.contno,b.lorrynos,a.fbillno from " & _
                " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                " where A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'" & _
                " and a.LOTdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
    End If
            'Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.taxamt+a.ldgulg+a.freght+a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME ,c.contno from " & _
            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
            " where b.carcode=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
            " and a.supcd=e.slcode and a.brkcd=f.slcode and a.areacd=g.areacode and a.supcd between '" & u & "' and '" & v & "'" & _
            " and a.lotdt between '" & w & "' and '" & x & "' and c.dlytype='" & costr & "'  order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
    
    
           
        If Rs.RecordCount <= 0 Then
          Screen.MousePointer = 0
          MsgBox " No Records Found", vbInformation, head
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
    pg = 1
    Call header3(co, pg, rs1, CStr(W), CStr(X))
    Dim RECCOUNT As Integer
    recount = 0
    Do While Rs.EOF = False
    costr = Rs("dlytype")
        If costr = "F" Then
            costr = "FOR"
        ElseIf costr = "S" Then
            costr = "SPOT"
        Else
            costr = "FOR"
        End If
    Set rec = New Recordset
    'rec.Open "Select slname as broker from fa_slmas where slcode='" & rs("brkcd") & "'", DB, dbopenstatic
    rec.Open "Select slname as broker from fa_slmas where slcode='" & Rs("brkcd") & "'", DB, adOpenStatic
    If rec.RecordCount >= 1 Then
        bcd = rec(0)
    Else
        bcd = ""
    End If
    Set rs1 = New Recordset
    rs1.Open "Select carname from po_car where carcode='" & Rs("carcode") & "'", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        car = rs1(0)
    Else
        car = ""
    End If
    cratekg = Rs("pjamt") / Rs("netwt")
    tratekg = Rs("totalvalue") / Rs("netwt")
    'If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
    'diff = Rs("NETWT") - Rs("FNETWT")
    If Rs("NETWT") <> 0 Then
       diff = Rs("NETWT") - Rs("NETWT")
    Else
       diff = Rs("NETWT") - Rs("NETWT")
    End If
    Set rs1 = New Recordset
    rs1.Open "select akgs from rm_lotallowance where lotno=" & Rs("lotno") & "", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        diff = rs1(0)
    Else
        diff = 0
    End If
      If TEMP <> Rs("lotdt") Then
      
         If co > 9 And DayTotal > 1 Then
            Print #a, Chr(27) + "E"
            Print #a, Space(0); Space(90); Padl("** Date Total  **", 23, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 1), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 2), 6, " "); Space(3); Padl(INF(ttot3, 2), 15, " "); Space(1);
            Print #a, Padl(INF(ttot4, 2), 10, " "); Space(0); Padl(INF(ttot5, 0), 10, " "); Space(0); Padl(INF(ttot6, 2), 7, " "); Space(1); Padl(INF(ttot7, 2), 15, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
            Print #a, Chr(27) + "F"
            co = co + 3
        End If
        DayTotal = 0
        If DayTotal = 1 Then
            Print #a,
            co = co + 1
            DayTotal = 0
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
     
        'Print #a,
        Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
        co = co + 2
      End If
    temp3 = Right(Rs("lotyear"), 2)
    Rs("ldgulg") = Rs("bedamt") + Rs("sedamt") + Rs("aedamt") + Rs("insamt") + Rs("cessamt")
    Print #a, Space(2); Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(Rs("station"), 12, " "); Space(1); Padr(bcd, 15, " ");
    Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr(car, 15, " "); Space(2); Padl(Rs("fbillno"), 5, " "); Space(1); Padl(Rs("contno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
    Print #a, Padr(Rs("varcode"), 7, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 1), 10, " "); Space(1); Padl(INF(Rs("ratecy"), 2), 10, "  "); Space(1); Padl(INF(cratekg, 4), 8, " "); Space(1); Padl(INF(Rs("pjamt"), 2), 15, " "); Space(1);
    Print #a, Padl(INF(Rs("freight"), 2), 10, " "); Space(0); Padl(INF(Rs("vatamt"), 0), 10, " "); Space(1); Padl(INF(Rs("ldgulg"), 2), 7, " "); Space(1); Padl(INF(Rs("totalvalue"), 2), 14, "  "); Space(1); Padl(INF(tratekg, 4), 8, " "); Space(1);
    Print #a, Padl(INF(diff, 1), 10, " ")
    co = co + 1
        DayTotal = DayTotal + 1
        tot1 = tot1 + Rs("bales")
        tot2 = tot2 + Rs("netwt")
        tot3 = tot3 + Rs("pjamt")
        tot4 = tot4 + Rs("freight")
        tot5 = tot5 + Rs("vatamt")
        tot6 = tot6 + Rs("ldgulg")
        tot7 = tot7 + Rs("totalvalue")
        tot8 = tot8 + cratekg
        tot9 = tot9 + tratekg
    
    
    
        ttot1 = ttot1 + Rs("bales")
        ttot2 = ttot2 + Rs("netwt")
        ttot3 = ttot3 + Rs("pjamt")
        ttot4 = ttot4 + Rs("freight")
        ttot5 = ttot5 + Rs("vatamt")
        ttot6 = ttot6 + Rs("ldgulg")
        ttot7 = ttot7 + Rs("totalvalue")
        ttot8 = ttot8 + cratekg
        ttot9 = ttot9 + tratekg
        TEMP = Rs("lotdt")
    
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
    Print #a, Space(0); Space(90); Padl("** Date Total  **", 23, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 1), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 2), 6, " "); Space(3); Padl(INF(ttot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(ttot4, 2), 10, " "); Space(0); Padl(INF(ttot5, 0), 10, " "); Space(0); Padl(INF(ttot6, 2), 7, " "); Space(1); Padl(INF(ttot7, 2), 15, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
    Print #a, Chr(27) + "F"


    Print #a, Space(2); String(230, "-")
    Print #a, Chr(27) + "E" & Space(2); Space(97); Padl(" ** TOTAL  ** ", 14, " "); Space(2); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl("", 10, "  "); Space(1); Space(9); Padl("", 8, " "); Space(3); Padl(INF(tot3, 2), 15, " "); Space(1);
    Print #a, Padl("", 10, " "); Space(1); Padl(INF(tot5, 0), 10, " "); Space(0); Padl("", 7, " "); Space(1); Padl(INF(tot7, 2), 14, " "); Space(1); Padl("", 8, " ") & Chr(27) + "F"
    Print #a, Chr(27) + "E" & Space(2); Space(97); Padl("", 14, " "); Space(2); Padl("", 6, "  "); Space(1); Padl(INF(tot2, 1), 10, "  "); Space(1); Space(9); Padl("", 8, " "); Space(3); Padl("", 15, " "); Space(1);
    Print #a, Padl(INF(tot4, 2), 10, " "); Space(1); Padl("", 10, " "); Space(0); Padl(INF(tot6, 2), 7, " "); Space(1); Padl("", 14, " "); Space(1); Padl(INF(tot11, 4), 8, " ") & Chr(27) + "F"
    Print #a, Space(2); String(230, "-")

    Print #a, Chr(12) 'page break
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
End If
Screen.MousePointer = 0
Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmdreport_Click of Form datewisecottonreceiptregister"
End Sub
Private Sub header3(co As Integer, pg As Integer, rs1 As Recordset, W As String, X As String)
On Error GoTo header3_Error
Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Chr(18)
Print #a, Space(2); Chr(27) + "E" + CENTRE(temp1, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
temp2 = CStr(pdate)
Print #a, Space(2) & "Cotton Receipts List Datewise Report" & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(142) & Format(temp2, "dd/mm/yy") & Space(4) & "Pg.:" & Space(3) & Padl(pg, 3, " ")
Print #a, Space(2) & String(230, "-")
Print #a, Space(2) & "Received Date                                                                                                                           Rate/"
Print #a, Space(2) & "Supplier Name            Mill  Station      Broker Name      Press           Transport F.Inv.   PO. Mode  Variety        Received      Candy/    Rate/    Cotton Value      Lorry       Tax   Other    Total Value    Rate/  Diff kgs."
Print #a, Space(2) & "                      Lot No.                                 Name                Name    No.   No.                 Qty        Kgs      Qntl.       Kg                    Freight    Amount    Exp.                      Kg          "
Print #a, Space(2) & String(230, "-")
co = co + 9
Exit Sub
header3_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure header3 of Form datewisecottonreceiptregister"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : DTPicker2_Change
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub DTPicker2_Change()

On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker2.value = mfdate
 DataCombo4.Text = DTPicker2.value
 Else
    DataCombo4.Text = DTPicker2.value
End If
Exit Sub

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_Change of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Set cn = New Connection
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Set REP = New ReportView
cn.Provider = "MSDATASHAPE"
cn.Open connectstring
If Repindex = 50 Then
    Set rss = New Recordset
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,A.SLCODE from fa_slmas a where  a.slcode like 'C1%' ORDER BY A.SLCODE ", cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and rejflg='N' and DivCode ='" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
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
    DTPicker1.MaxDate = pdate
    DTPicker1.value = mfdate
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
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo1.tabIndex = 2
    DataCombo2.tabIndex = 3
    Combo1.tabIndex = 4
    cmdReport.tabIndex = 5
    CmdCancel.tabIndex = 6
    DataCombo1.Left = DataCombo2.Left
    DTPicker1.Left = DTPicker2.Left
    DataCombo2.Left = Combo1.Left
    DataCombo1.Left = DTPicker2.Left
    DataCombo1.Left = DTPicker1.Left
    Label3.Top = Label3.Top - 150
    Combo1.Top = Combo1.Top - 100
    Label2.Top = Label2.Top - 100
    
      
    End If

    If rss.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rss
        DataCombo1.ListField = "SUP"
        Set DataCombo2.RowSource = rss
        DataCombo2.ListField = "SUP"
        rss.MoveFirst
        DataCombo1.Text = rss(0)
        rss.MoveLast
        DataCombo2.Text = rss(0)
        Combo1.AddItem "FOR - F"
        Combo1.AddItem "SPOT - S"
        Combo1.AddItem "ALL - A"
        Combo1.ListIndex = 0
        'DataCombo1.Index = 0
        'DataCombo2.Value = (DataCombo2.VisibleCount) - 1
   End If
End If

If Repindex = 100 Then
Label2.Left = Label1.Left
Label3.Left = Label2.Left
Label5.Left = Label1.Left
Label6.Left = Label5.Left
Label1.Caption = "From Party"
Label2.Caption = "To Party"
Label3.Caption = "Category"
Label4.Caption = "Receipt List - Categorywise"
Set rss = New Recordset
rss.Open "select distinct a.SLNAME+ ' -- ' +a.SLCODE AS SUP,A.SLCODE from fa_slmas a ORDER BY A.SLCODE", cn, adOpenStatic, adLockBatchOptimistic
Set Rs = New Recordset
Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and DivCode ='" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
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
    DTPicker1.value = mfdate
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
DTPicker1.tabIndex = 0
DTPicker2.tabIndex = 1
DataCombo1.tabIndex = 2
DataCombo2.tabIndex = 3
Combo1.tabIndex = 4
cmdReport.tabIndex = 5
CmdCancel.tabIndex = 6

If Rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
         

If rss.RecordCount <> 0 Then
    Set DataCombo1.RowSource = rss
    DataCombo1.ListField = "SUP"
    Set DataCombo2.RowSource = rss
    DataCombo2.ListField = "SUP"
    rss.MoveFirst
    DataCombo1.Text = rss(0)
    rss.MoveLast
    DataCombo2.Text = rss(0)
    
    '''Following line commented as on 12-Jan-08, as per Mr.Saravanan instruction
    '''Combo1.AddItem "P - POLYSTER"
    '''Combo1.AddItem "V - VISCOS STAPLE FIBRE"
    '''Combo1.ListIndex = 0
    Dim RstCat As Recordset
    Set RstCat = New Recordset
    RstCat.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic
    Combo1.clear
    Do While Not RstCat.EOF
        Combo1.AddItem RstCat("CatCd") & " - " & RstCat("Catname")
        RstCat.MoveNext
    Loop
    Combo1.AddItem "A - ALL"
    Combo1.ListIndex = 0
    
End If

If rss.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form datewisecottonreceiptregister"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : Option4_Click
' DateTime  : 07/12/2008 14:34
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option4_Click of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option5_Click
' DateTime  : 07/12/2008 14:34
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_Click of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option5_KeyDown
' DateTime  : 07/12/2008 14:35
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_KeyDown of Form datewisecottonreceiptregister", vbInformation, head
Screen.MousePointer = 0
End Sub
