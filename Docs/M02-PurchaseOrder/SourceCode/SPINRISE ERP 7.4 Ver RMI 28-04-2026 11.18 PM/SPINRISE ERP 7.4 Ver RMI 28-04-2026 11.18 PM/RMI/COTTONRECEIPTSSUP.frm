VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form COTTONRECEIPTSSUP 
   AutoRedraw      =   -1  'True
   Caption         =   "RECEIPT REGISTER - SUPPLIERWISE"
   ClientHeight    =   7980
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7980
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR 
      Left            =   450
      Top             =   2250
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
      WindowShowRefreshBtn=   -1  'True
   End
   Begin VB.CommandButton Command1 
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
      Left            =   5940
      TabIndex        =   25
      Top             =   6330
      Width           =   1425
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1320
      TabIndex        =   21
      Top             =   5640
      Visible         =   0   'False
      Width           =   6900
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   23
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   22
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
         TabIndex        =   24
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame2 
      Height          =   825
      Left            =   1470
      TabIndex        =   14
      Top             =   6840
      Width           =   6615
      Begin VB.OptionButton Option2 
         Caption         =   "With Supplier Address"
         Height          =   315
         Left            =   3810
         TabIndex        =   16
         Top             =   300
         Width           =   1935
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Without Supplier Address"
         Height          =   465
         Left            =   420
         TabIndex        =   15
         Top             =   210
         Width           =   2175
      End
   End
   Begin VB.Frame Frame1 
      Height          =   3840
      Left            =   1425
      TabIndex        =   2
      Top             =   1605
      Width           =   6660
      Begin VB.CheckBox Check1 
         Caption         =   "Abstract"
         Height          =   255
         Left            =   4560
         TabIndex        =   26
         Top             =   1200
         Visible         =   0   'False
         Width           =   1695
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "COTTONRECEIPTSSUP.frx":0000
         Left            =   2145
         List            =   "COTTONRECEIPTSSUP.frx":0002
         TabIndex        =   3
         Top             =   3195
         Width           =   4350
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2160
         TabIndex        =   4
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
         Left            =   2115
         TabIndex        =   5
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
         TabIndex        =   6
         Top             =   705
         Width           =   1590
         _ExtentX        =   2805
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2115
         TabIndex        =   7
         Top             =   1350
         Width           =   1635
         _ExtentX        =   2884
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo4"
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2160
         TabIndex        =   17
         Top             =   720
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   395902977
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2160
         TabIndex        =   18
         Top             =   1320
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   395902977
         CurrentDate     =   37043
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt List - Supplierwise"
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
         TabIndex        =   13
         Top             =   0
         Width           =   6945
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
         Left            =   615
         TabIndex        =   12
         Top             =   2565
         Width           =   990
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
         Left            =   615
         TabIndex        =   11
         Top             =   1905
         Width           =   1170
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
         TabIndex        =   10
         Top             =   3285
         Width           =   435
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
         TabIndex        =   9
         Top             =   735
         Width           =   975
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
         TabIndex        =   8
         Top             =   1350
         Width           =   975
      End
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
      Left            =   2370
      TabIndex        =   1
      Top             =   6330
      Width           =   1335
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
      Left            =   4170
      TabIndex        =   0
      Top             =   6330
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4140
      Left            =   1320
      TabIndex        =   19
      Top             =   1440
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   7303
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "COTTONRECEIPTSSUP.frx":0004
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8160
      TabIndex        =   20
      Top             =   1320
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
End
Attribute VB_Name = "COTTONRECEIPTSSUP"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rep As Report.ReportView
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
' DateTime  : 07/12/2008 14:33
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub cmdCancel_Click()
On Error GoTo Cmdcancel_Click_Error
intervalMinutes = -1
Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form COTTONRECEIPTSSUP", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Cmdcancel_LostFocus
' DateTime  : 07/12/2008 14:33
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmdcancel_LostFocus()
On Error GoTo Cmdcancel_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Cmdcancel_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_LostFocus of Form COTTONRECEIPTSSUP", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
intervalMinutes = -1
On Error GoTo cmdreport_Click_Error
Screen.MousePointer = 11
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim supcount As Integer
Dim U, v As String
Set rep = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\inv.txt" For Output As #a
Open KALFOLDERDATA & "\inv.TXT" For Output As #a
Option1.Visible = True
Option2.Visible = True
If Option1.value = True Then
Dim costr As String
If Right(Combo1.Text, 1) = "M" Then
    costr = "C"
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
Dim ttot1, tto2, tto3, tto4, tto5, tto6, tto7, tto8, tto9 As Double
   ttot1 = 0
    ttot2 = 0
    ttot3 = 0
    ttot4 = 0
    ttot5 = 0
    ttot6 = 0
    ttot7 = 0
    ttot8 = 0
    ttot9 = 0
    supcount = 0
'u = Left$(DataCombo1.Text, 12)
'v = Right$(DataCombo2.Text, 12)
'for supplier
'u = InStr(1, DataCombo1.Text, "-")
'u = Trim(Left(DataCombo1.Text, u - 1))
'v = InStr(1, DataCombo2.Text, "-")
'v = Trim(Left(DataCombo2.Text, v - 1))

U = Trim(Right(DataCombo1.Text, 7))
v = Trim(Right(DataCombo2.Text, 7))

DataCombo3.Text = DTPicker1.value
DataCombo4.Text = DTPicker2.value

W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
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
'    Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.VATamt AS TAXAMT,a.ldgulg,B.freight as freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno from " & _
'            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
'            " where b.carcode*=d.carcode and a.lotno = b.lotno and a.lotdt=b.lotdt and a.supcd=b.supcd and b.contno = c.contno and b.contdt=c.contdt And a.lotdt = b.lotdt " & _
'            " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and a.supcd between '" & U & "' and '" & V & "'" & _
'            " and a.LOTdt between '" & W & "' and '" & X & "'   AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
  
  Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.VATamt AS TAXAMT,a.ldgulg,B.freight as freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno from " & _
            " rm_lot a inner join rm_arrival b on a.lotno = b.lotno and a.lotdt=b.lotdt and a.supcd=b.supcd  inner join rm_cont c on b.contno = c.contno and b.contdt=c.contdt  left join po_car d on  b.carcode=d.carcode  inner join fa_slmas e on  a.supcd=e.slcode  left join fa_slmas f on a.brkcd=f.slcode   inner join rm_area g on a.areacd=g.areacode  " & _
            " where  a.supcd between '" & U & "' and '" & v & "'" & _
            " and a.LOTdt between '" & W & "' and '" & X & "'   AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic

Else
    Set Rs = New Recordset
'    Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.VATamt AS TAXAMT,a.ldgulg,B.freight as freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno from " & _
'            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
'            " where b.carcode*=d.carcode and a.lotno = b.lotno and a.lotdt=b.lotdt and a.supcd=b.supcd and b.contno = c.contno and b.contdt=c.contdt And a.lotdt = b.lotdt " & _
'            " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and a.supcd between '" & U & "' and '" & V & "'" & _
'            " and a.LOTdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
' Added on 19-09-19 by mariyaiya
 Rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,isnull(a.favaourablewgt,0) as Netwt,a.ratecy,a.pjamt,a.VATamt AS TAXAMT,a.ldgulg,B.freight as freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno from " & _
           " rm_lot a inner join rm_arrival b on a.lotno = b.lotno and a.lotdt=b.lotdt and a.supcd=b.supcd  inner join rm_cont c on b.contno = c.contno and b.contdt=c.contdt  left join po_car d on  b.carcode=d.carcode  inner join fa_slmas e on  a.supcd=e.slcode  left join fa_slmas f on a.brkcd=f.slcode   inner join rm_area g on a.areacd=g.areacode  " & _
            " where a.supcd between '" & U & "' and '" & v & "'" & _
            " and a.LOTdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic


    'rs.Open " select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,a.lotdt,isnull(b.brkcd,'') as brkcd,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.VATamt AS TAXAMT,a.ldgulg,B.freight as freght,(a.totlandcost)as totalvalue,e.slname as supplier,E.slname as broker,A.NETWT,A.NETWT from " & _
        " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area g " & _
        " where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode  and a.areacd=g.areacode and a.supcd between '" & u & "' and '" & v & "'" & _
        " and a.LOTdt between '" & w & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic

End If

'rs.Open "SELECT DISTINCT L.ARRDT,s.slcode,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT,D.AREANAME,L.LOTYEAR FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p,RM_AREA D WHERE S.Slcode BETWEEN '" & u & "' AND '" & v & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and L.AREACD=D.AREACODE AND" & _
'       " C.CONTDT=A.CONTDT  AND B.SLCODE=L.BRKCD AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & w & "' AND '" & x & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "' ORDER BY S.SLNAME,L.ARRDT,B.SLNAME ", cn, adOpenStatic, adLockBatchOptimistic
       
    If Rs.RecordCount <= 0 Then
      Screen.MousePointer = 0
      MsgBox " No Records Found", vbInformation, head
      Exit Sub
    Else
      Rs.MoveFirst
    End If
    If Rs("dlytype") = "M" Or Rs("dlytype") = "F" Then
        costr = "FOR"
    ElseIf Rs("dlytype") = "S" Then
        costr = "SPOT"
    Else
        costr = "FOR"
    End If
pg = 1
Call header3(co, pg, rs1, CStr(W), CStr(X))
Dim RECCOUNT As Integer
recount = 0
Do While Rs.EOF = False

If Rs("dlytype") = "M" Or Rs("dlytype") = "F" Then
    costr = "FOR"
ElseIf Rs("dlytype") = "S" Then
    costr = "SPOT"
Else
    costr = "FOR"
End If
cratekg = Rs("pjamt") / Rs("netwt")
tratekg = Rs("totalvalue") / Rs("netwt")
'If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
' diffwt = Abs(rs1("netwt") - rs1("FNETWT"))
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
If TEMP <> Rs("SUPPLIER") Then

    If co > 9 And supcount > 1 Then
        Print #a,
        Print #a, Chr(27) & "E" & Space(0); Space(90); Padl("** Supplier Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 1), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 4), 10, " "); Space(1); Padl(INF(ttot3, 2), 13, " "); Space(1);
        Print #a, Padl(INF(ttot4, 2), 10, " "); Space(1); Padl(INF(ttot5, 0), 8, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 4), 8, " ") & Chr(27) & "F"
        Print #a,
        supcount = 0
        co = co + 3
    End If
    'for printing blank line
    If supcount = 1 Then
    Print #a,
    co = co + 1
    supcount = 0
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

Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Rs("supplier"), 60, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
co = co + 1
End If
Set rs1 = New Recordset
rs1.Open "Select slname from fa_slmas where slcode='" & Rs("brkcd") & "'", DB, adOpenStatic
If rs1.RecordCount > 0 Then
    brk = rs1("slname")
Else
    brk = ""
End If
Rs("ldgulg") = Rs("bedamt") + Rs("sedamt") + Rs("aedamt") + Rs("insamt") + Rs("cessamt")
temp3 = Right(Rs("lotyear"), 2)
Print #a, Space(2); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(Rs("station"), 12, " "); Space(1); Padr(brk, 23, " ");
Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr(Rs("carname"), 16, " "); Space(1); Padl(Rs("fbillno"), 5, " "); Space(1); Padl(Rs("pono"), 5, " "); Space(2); Padr(costr, 5, "  "); Space(1);
Print #a, Padr(Rs("varcode"), 9, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 1), 10, " "); Space(1); Padl(INF(Rs("ratecy"), 2), 10, "  "); Space(1); Padl(INF(cratekg, 4), 8, " "); Space(1); Padl(INF(Rs("pjamt"), 2), 15, " "); Space(1);
Print #a, Padl(INF(Rs("freght"), 2), 10, " "); Space(1); Padl(INF(Rs("taxamt"), 0), 8, " "); Space(1); Padl(INF(Rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(Rs("totalvalue"), 2), 14, "  "); Space(1); Padl(INF(tratekg, 4), 8, " "); Space(1);
Print #a, Padl(INF(diff, 1), 10, " ")

'Format("########.000")
'Print #a, Space(2); Padr(Format(rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(rs("lotno"), 8, " "); "/"; Padl(rs("lotyear"), 4, " "); Space(1); Padr(rs("areaname"), 14, " "); Space(1);
'Print #a, Space(1); Padr(rs("prmark"), 10, " "); Space(1); Padr(rs("carname"), 25, " "); Space(1); Padl(rs("pjno"), 10, " "); Space(1); Padl(rs("pono"), 10, " "); Space(2); Padr(costr, 5, "  "); Space(1);
'Print #a, Padr(rs("varcode"), 10, " "); Space(1); Padl(INF(rs("bales"), 0), 5, " "); Space(1); Padl(INF(rs("netwt"), 3), 12, " "); Space(1); Padl(INF(rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(rs("pjamt"), 2), 15, " "); Space(1);
'Print #a, Padl(INF(rs("freight"), 2), 12, " "); Space(1); Padl(INF(rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(rs("totalvalue"), 2), 15, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
'Print #a, Padl(INF(diff, 2), 9, " ")
    co = co + 1
    supcount = supcount + 1
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
    
    
    TEMP = Rs("SUPPLIER")
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

    Print #a, ' Chr(27) + "E"
    Print #a, Chr(27) & "E" & Space(0); Space(90); Padl("** Supplier Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 1), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 4), 10, " "); Space(1); Padl(INF(ttot3, 2), 13, " "); Space(1);
    Print #a, Padl(INF(ttot4, 2), 10, " "); Space(1); Padl(INF(ttot5, 2), 8, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 4), 8, " ") & Chr(27) & "F"
    Print #a, 'Chr(27) + "F"

    Print #a, Space(2); String(230, "-")
    Print #a, Chr(27) & "E" & Space(0); Space(98); Padr("** GRAND TOTAL **", 18, " "); Space(0); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl("", 10, "  "); Space(1); Space(11); Padl("", 8, " "); Space(1); Padl("", 15, " "); Space(1);
    Print #a, Padl(INF(tot4, 2), 10, " "); Space(1); Padl("", 8, " "); Space(1); Padl(INF(tot6, 2), 9, " "); Space(0); Padl("", 14, " "); Space(1); Padl(INF(tot11, 4), 8, " ") & Chr(27) & "F"
    Print #a, Chr(27) & "E" & Space(2); Space(98); Padr(" ", 16, " "); Space(0); Padl("", 6, "  "); Space(1); Padl(INF(tot2, 1), 10, "  "); Space(1); Space(11); Padl("", 8, " "); Space(1); Padl(INF(tot3, 2), 15, " "); Space(1);
    Print #a, Padl("", 10, " "); Space(1); Padl(INF(tot5, 2), 8, " "); Space(1); Padl("", 9, " "); Space(0); Padl(INF(tot7, 2), 14, " "); Space(1); Padl("", 8, " ") & Chr(27) & "F"
       
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
If Option2.value = True Then
'Dim costr As String
If Right(Combo1.Text, 1) = "M" Then
    costr = "C"
ElseIf Right(Combo1.Text, 1) = "M" Then
    costr = "S"
Else
    costr = "A"
End If
'Dim co As Integer
'Dim pg As Integer
'Dim s1, s2, s3 As String
'Dim d As String
'Dim temp As String

'u = Left$(DataCombo1.Text, 12)
'v = Right$(DataCombo2.Text, 12)
'for supplier
'u = InStr(1, DataCombo1.Text, "-")
'u = Trim(Left(DataCombo1.Text, u - 1))
'v = InStr(1, DataCombo2.Text, "-")
'v = Trim(Left(DataCombo2.Text, v - 1))
U = Trim(Right(DataCombo1.Text, 7))
v = Trim(Right(DataCombo2.Text, 7))

W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
If costr = "A" Then
    Set Rs = New Recordset
'    Rs.Open " select distinct isnull(e.add1,'') as add1,isnull(e.add2,'') as add2,isnull(e.add3,'') as add3,isnull(e.city,'') as city,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
'            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
'            " where b.carcode*=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
'            " and a.supcd=e.slcode and a.brkcd*=f.slcode and a.areacd=g.areacode and a.supcd between '" & U & "' and '" & V & "'" & _
'            " and a.lotdt between '" & W & "' and '" & X & "'   AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
 ' Added on 19-09-19 by mariyaiya
  Rs.Open " select distinct isnull(e.add1,'') as add1,isnull(e.add2,'') as add2,isnull(e.add3,'') as add3,isnull(e.city,'') as city,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME from " & _
            " rm_lot a inner join rm_arrival b on a.lotno = b.lotno And  a.lotdt = b.lotdt   inner join rm_cont c on  b.contno = c.contno  left join po_car d on b.carcode=d.carcode inner join fa_slmas e on  a.supcd=e.slcode   left join fa_slmas f on  a.brkcd=f.slcode  inner join rm_area g on  a.areacd=g.areacode " & _
            " where a.supcd between '" & U & "' and '" & v & "'" & _
            " and a.lotdt between '" & W & "' and '" & X & "'   AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic

Else
    Set Rs = New Recordset
    Rs.Open " select distinct isnull(e.add1,'') as add1,isnull(e.add2,'') as add2,isnull(e.add3,'') as add3,isnull(e.city,'') as city, a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.totlandcost)as totalvalue,e.slname as supplier,E.slname as broker,A.NETWT,A.NETWT from " & _
        " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e " & _
        " where a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
        " and a.supcd=e.slcode  and a.supcd between '" & U & "' and '" & v & "'" & _
        " and a.lotdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y'  AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by supplier,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic

End If

'r'rs.Open "SELECT DISTINCT L.ARRDT,s.slcode,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT,D.AREANAME,L.LOTYEAR FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p,RM_AREA D WHERE S.Slcode BETWEEN '" & u & "' AND '" & v & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and L.AREACD=D.AREACODE AND" & _
'       " C.CONTDT=A.CONTDT  AND B.SLCODE=L.BRKCD AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & w & "' AND '" & x & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "' ORDER BY S.SLNAME,L.ARRDT,B.SLNAME ", cn, adOpenStatic, adLockBatchOptimistic
       
    If Rs.RecordCount <= 0 Then
      Screen.MousePointer = 0
      MsgBox " No Records Found", vbInformation, head
      Exit Sub
    Else
      Rs.MoveFirst
    End If
    If costr = "M" Then
        costr = "FOR"
    Else
        costr = "SPOT"
    End If
pg = 1
Call header3(co, pg, rs1, CStr(W), CStr(X))
'Dim RECCOUNT As Integer
recount = 0
Do While Rs.EOF = False


cratekg = Rs("pjamt") / Rs("netwt")
tratekg = Rs("totalvalue") / Rs("netwt")
'If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
If Rs("NETWT") <> 0 Then
   diff = Rs("NETWT") - Rs("NETWT")
Else
   diff = Rs("ETWT") - Rs("NETWT")
End If
If TEMP <> Rs("SUPPLIER") Then

    If co > 9 Then
        Print #a, Chr(27) + "E"
        Print #a, Space(0); Space(92); Padl("** Supplier Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
        Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
        Print #a, Chr(27) + "F"
        co = co + 3
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
Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Rs("supplier"), 40, " ") + Chr(27) + "F"
If Rs("add1") <> "" Or Rs("add1") <> Empty Then
 Print #a, Chr(18) + Space(1); Padr(Rs("add1"), 40, " ")
 co = co + 1
'End If
ElseIf Rs("add2") <> "" Or Rs("add2") <> Empty Then
  Print #a, Chr(18) + Space(1); Padr(Rs("add2"), 40, " ")
  co = co + 1
End If
If Rs("add3") <> "" Or Rs("add3") <> Empty Then
Print #a, Chr(18) + Space(1); Padr(Rs("add3"), 40, " ")
co = co + 1
'End If
ElseIf Rs("city") <> "" Or Rs("city") <> Empty Then
Print #a, Chr(18) + Space(1); Padr(Rs("city"), 40, " ")
co = co + 1
End If
'Print #a, Chr(15)
'co = co + 1
End If
temp3 = Right(Rs("lotyear"), 2)
Print #a, Space(1); Chr(15) & Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr("", 12, " "); Space(1); Padr("", 25, " ");
Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr("", 15, " "); Space(1); Padl(Rs("pjno"), 5, " "); Space(1); Padl("", 5, " "); Space(2); Padr(costr, 5, "  "); Space(1);
Print #a, Padr(Rs("varcode"), 10, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 3), 12, " "); Space(1); Padl(INF(Rs("ratecy"), 0), 8, "  "); Space(1); Padl(INF(cratekg, 2), 6, " "); Space(1); Padl(INF(Rs("pjamt"), 2), 15, " "); Space(1);
Print #a, Padl(INF(Rs("freght"), 2), 10, " "); Space(1); Padl(INF(Rs("taxamt"), 2), 8, " "); Space(1); Padl(INF(Rs("ldgulg"), 2), 8, " "); Space(1); Padl(INF(Rs("totalvalue"), 2), 14, "  "); Space(1); Padl(INF(tratekg, 2), 6, " "); Space(1);
Print #a, Padl(Format(diff, "#######.000"), 11, " ")
co = co + 1
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
    
    
    TEMP = Rs("SUPPLIER")
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
    Print #a, Space(0); Space(92); Padl("** Supplier Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(ttot10, 2), 6, " "); Space(1); Padl(INF(ttot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttot5, 2), 6, " "); Space(0); Padl(INF(ttot6, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(ttot11, 2), 6, " ") & Chr(27) & "F"
    Print #a, Chr(27) + "F"



    Print #a, Space(2); String(230, "-")
    Print #a, Chr(27) & "E" & Space(2); Space(102); Padl(" ** TOTAL  ** ", 12, " "); Space(2); Padl(INF(tot1, 0), 6, "  "); Space(1); Padl(INF(tot2, 3), 12, "  "); Space(1); Space(9); Padl(INF(tot10, 2), 6, " "); Space(1); Padl(INF(tot3, 2), 15, " "); Space(1);
    Print #a, Padl(INF(tot4, 2), 12, " "); Space(1); Padl(INF(tot5, 2), 6, " "); Space(0); Padl(INF(tot6, 2), 9, " "); Space(1); Padl(INF(tot7, 2), 14, " "); Space(1); Padl(INF(tot11, 2), 6, " ") & Chr(27) & "F"
       
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
intervalMinutes = -1
Screen.MousePointer = 0
Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form COTTONRECEIPTSSUP"
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
Print #a, Space(2) & "Cotton Receipts List Supplierwise Report" & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(138) & Space(3) & Format(temp2, "dd/mm/yy") & Space(3) & "Pg.:" & Space(1) & Padl(pg, 3, " ")
If Option1.value = True Then
Print #a, Space(2) & String(230, "-")
Print #a, Space(2) & "Supplier Name                                                                                                                            Rate/"
Print #a, Space(2) & "Received       Mill  Station      Broker Name              Press           Transport F.Inv.   PO.  Mode  Variety       Received         Candy/    Rate/    Cotton Value      Lorry      Tax  Other      Total Value    Rate/ Diff kgs."
Print #a, Space(2) & "    Date    Lot No.                                         Name                Name    No.   No.                    Qty        Kgs      Qntl.       Kg                    Freight   Amount   Exp.                        Kg          "
End If
If Option2.value = True Then
Print #a, Space(2) & String(230, "-")
Print #a, Space(2) & "Supplier Name & Address                                                                                                                  Rate/"
Print #a, Space(2) & "Received       Mill  Station      Broker Name              Press           Transport F.Inv.   PO.  Mode  Variety       Received         Candy/    Rate/    Cotton Value      Lorry      Tax  Other      Total Value    Rate/ Diff kgs."
Print #a, Space(2) & "    Date    Lot No.                                         Name                Name    No.   No.                    Qty        Kgs      Qntl.       Kg                    Freight   Amount   Exp.                        Kg          "
End If
Print #a, Space(2) & String(230, "-")
co = co + 9
Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form COTTONRECEIPTSSUP"
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
    Dim W, X As String
    Dim U, v As String
    Dim costr As String
    Dim sql As String
    Dim rec As Recordset

    Screen.MousePointer = 11
    If Right(Combo1.Text, 1) = "M" Then
        costr = "C"
    ElseIf Right(Combo1.Text, 1) = "S" Then
        costr = "S"
    Else
        costr = "A"
    End If

    U = Trim(Right(DataCombo1.Text, 7))
    v = Trim(Right(DataCombo2.Text, 7))

    DataCombo3.Text = DTPicker1.value
    DataCombo4.Text = DTPicker2.value

    W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
    X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
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
intervalMinutes = -1
'''''    On Error GoTo errorsub
'''''    db.BeginTrans
'''''
'''''    Set rec = New Recordset
'''''    rec.Open "select * from sysobjects where name ='Temp_Periodical_ReceiptReg_Supplierwise'", db, adOpenStatic
'''''
'''''    If rec.RecordCount > 0 Then
'''''        db.Execute "Drop table Temp_Periodical_ReceiptReg_Supplierwise"
'''''    End If
'''''    rec.Close
'''''    Set rec = Nothing
'''''
'''''    If costr = "A" Then
'''''        Set Rs = New Recordset
'''''        Sql = Sql & Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,X.carcode,X.station,"
'''''        Sql = Sql & Chr(13) & "X.brkcd,X.lotdt,X.lotno,X.lotyear,X.prmark,X.carname,"
'''''        Sql = Sql & Chr(13) & "X.pjno,X.pono,X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
'''''        Sql = Sql & Chr(13) & "X.TAXAMT,X.ldgulg,X.freight,"
'''''        Sql = Sql & Chr(13) & "X.totalvalue,X.supplier,"
'''''        Sql = Sql & Chr(13) & "X.Broker , X.FNETWT, X.PNETWT, X.areaname, X.fbillno, X.tratekg, X.cratekg,X.Diff,X.Field"
'''''        Sql = Sql & Chr(13) & "Into Temp_Periodical_ReceiptReg_Supplierwise"
'''''        Sql = Sql & Chr(13) & "From"
'''''        Sql = Sql & Chr(13) & "(select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,"
'''''        Sql = Sql & Chr(13) & "isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,"
'''''        Sql = Sql & Chr(13) & "a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,"
'''''        Sql = Sql & Chr(13) & "a.VATamt AS TAXAMT,a.ldgulg,B.freight as freight,"
'''''        Sql = Sql & Chr(13) & "a.totlandcost as totalvalue,e.slname as supplier,"
'''''        Sql = Sql & Chr(13) & "f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno,"
'''''        Sql = Sql & Chr(13) & "isnull(a.totlandcost,0)/isnull(a.netwt,0) AS tratekg,"
'''''        Sql = Sql & Chr(13) & "isnull(a.pjamt,0)/isnull(a.netwt,0) AS cratekg,0 AS Diff,"
'''''        Sql = Sql & Chr(13) & "isnull(a.aedamt,0)+isnull(a.bedamt,0)+isnull(a.sedamt,0)+isnull(a.insamt,0)+isnull(a.cessamt,0) AS Field"
'''''        Sql = Sql & Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g"
'''''        Sql = Sql & Chr(13) & "where b.carcode*=d.carcode and a.lotno = b.lotno and a.lotdt=b.lotdt and"
'''''        Sql = Sql & Chr(13) & "a.supcd = b.supcd And b.supcd = c.supcd And b.contno = c.contno And b.contdt = c.contdt"
'''''        Sql = Sql & Chr(13) & "And a.lotdt = b.lotdt  and a.supcd=e.slcode and a.brkcd*=f.slcode AND"
'''''        Sql = Sql & Chr(13) & "a.areacd=g.areacode and a.supcd between '" & U & "' and '" & V & "' AND "
'''''        Sql = Sql & Chr(13) & "a.LOTDT between '" & W & "' and '" & X & "'   AND"
'''''        Sql = Sql & Chr(13) & "OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "'"
'''''        Sql = Sql & Chr(13) & ")X"
'''''        Sql = Sql & Chr(13) & "order by X.supplier,X.lotno"
'''''
'''''        Rs.CursorLocation = adUseClient
'''''        Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
'''''    Else
'''''        Set Rs = New Recordset
'''''        Sql = Sql & Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,X.carcode,X.station,"
'''''        Sql = Sql & Chr(13) & "X.brkcd,X.lotdt,X.lotno,X.lotyear,X.prmark,X.carname,"
'''''        Sql = Sql & Chr(13) & "X.pjno,X.pono,X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
'''''        Sql = Sql & Chr(13) & "X.TAXAMT,X.ldgulg,X.freight,"
'''''        Sql = Sql & Chr(13) & "X.totalvalue,X.supplier,"
'''''        Sql = Sql & Chr(13) & "X.Broker , X.FNETWT, X.PNETWT, X.areaname, X.fbillno, X.tratekg, X.cratekg,X.Diff"
'''''        Sql = Sql & Chr(13) & "Into Temp_Periodical_ReceiptReg_Supplierwise"
'''''        Sql = Sql & Chr(13) & "From"
'''''        Sql = Sql & Chr(13) & "(select distinct a.aedamt,a.bedamt,a.sedamt,a.insamt,a.cessamt,b.carcode,station,"
'''''        Sql = Sql & Chr(13) & "isnull(b.brkcd,'') as brkcd,a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,"
'''''        Sql = Sql & Chr(13) & "a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,"
'''''        Sql = Sql & Chr(13) & "a.VATamt AS TAXAMT,a.ldgulg,B.freight as freight,"
'''''        Sql = Sql & Chr(13) & "a.totlandcost as totalvalue,e.slname as supplier,"
'''''        Sql = Sql & Chr(13) & "f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME,a.fbillno,"
'''''        Sql = Sql & Chr(13) & "isnull(a.totlandcost,0)/isnull(a.netwt,0) AS tratekg,"
'''''        Sql = Sql & Chr(13) & "isnull(a.pjamt,0)/isnull(a.netwt,0) AS cratekg,0 AS Diff"
'''''        Sql = Sql & Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g"
'''''        Sql = Sql & Chr(13) & "where b.carcode*=d.carcode and a.lotno = b.lotno and a.lotdt=b.lotdt and"
'''''        Sql = Sql & Chr(13) & "a.supcd = b.supcd And b.supcd = c.supcd And b.contno = c.contno And b.contdt = c.contdt"
'''''        Sql = Sql & Chr(13) & "And a.lotdt = b.lotdt  and a.supcd=e.slcode and a.brkcd*=f.slcode AND"
'''''        Sql = Sql & Chr(13) & "a.areacd=g.areacode and a.supcd between '" & U & "' and '" & V & "' AND "
'''''        Sql = Sql & Chr(13) & "a.LOTDT between '" & W & "' and '" & X & "'   AND"
'''''        Sql = Sql & Chr(13) & "c.dlytype='" & costr & "' AND "
'''''        Sql = Sql & Chr(13) & "OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "'"
'''''        Sql = Sql & Chr(13) & ")X"
'''''        Sql = Sql & Chr(13) & "order by X.supplier,X.lotno"
'''''
'''''
'''''
'''''        Rs.CursorLocation = adUseClient
'''''        Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
'''''    End If
'''''
'''''    db.CommitTrans

'''    MousePointer = 11
'''    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Period_ReceiptRegSupplierwise.rpt"
'''    'FrmRpt.RptHead = "2A"
'''    'parameter1 = "Receipt Register Supplier wise From " & Format(W, "dd/mm/yy") & " To " & Format(X, "dd/mm/yy") & ""
'''    'parameter2 = DIVNAME
'''    'FrmRpt.Show
    
    Dim clsCryRpt_sup As New clsCrystal
    If Check1.value = 1 Then
        Set clsCryRpt_sup.cryRept = Cry_Supplierwise_abs
        clsCryRpt_sup.CrystalPrint
            CR.Reset
            CR.Connect = connectstring
            CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
            'CR.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & Divcode & "'"
            'CR.ParameterFields(0) = "description;" & "" & ""
           ' CR.ParameterFields(0) = "name;" & "Receipt List from " & Format(W, "dd/mm/yy") & " to " & Format(X, "dd/mm/yy") & ""
            CR.ParameterFields(0) = "@divcode;" & Divcode & ""
            CR.ParameterFields(1) = "@Fdate;" & W & ""
            CR.ParameterFields(2) = "@Tdate;" & X & ""
            CR.ParameterFields(3) = "@Fcust;" & U & ""
            CR.ParameterFields(4) = "@Tcust;" & v & ""
            CR.ParameterFields(6) = "@lotyear;" & Format(yfdate, "YYYY") & ""
            CR.ParameterFields(7) = "@type;" & Right(Combo1.Text, 1) & ""
            
            'CR.ParameterFields(7) = "@StateCode;" & "ALL"
            CR.WindowShowPrintSetupBtn = True
            CR.WindowShowSearchBtn = True
            CR.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            
            Me.MousePointer = 0
            Screen.MousePointer = 0
            Me.MousePointer = 0
            Screen.MousePointer = 0
            Exit Sub
        
        
    Else
        Set clsCryRpt_sup.cryRept = MRN_Register_suppwise1
        clsCryRpt_sup.CrystalPrint
    End If
    
                
    CR.Reset
    CR.Connect = connectstring
    CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    'CR.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & Divcode & "'"
    'CR.ParameterFields(0) = "description;" & "" & ""
    CR.ParameterFields(0) = "name;" & "Receipt List from " & Format(W, "dd/mm/yy") & " to " & Format(X, "dd/mm/yy") & ""
    CR.ParameterFields(1) = "@Fdate;" & W & ""
    CR.ParameterFields(2) = "@Tdate;" & X & ""
    CR.ParameterFields(3) = "@FSubCd;" & U & ""
    CR.ParameterFields(4) = "@TSubCd;" & v & ""
    CR.ParameterFields(5) = "@Divcode;" & Divcode & ""
    CR.ParameterFields(6) = "@YFDATE;" & Format(yfdate, "YYYY-MM-DD") & ""
    CR.ParameterFields(7) = "@StateCode;" & "ALL"
    CR.WindowShowPrintSetupBtn = True
    CR.WindowShowSearchBtn = True
    CR.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CR.Action = 1
    CR.PrinterCopies = 1
    
    Me.MousePointer = 0
    Screen.MousePointer = 0
    Me.MousePointer = 0
    Screen.MousePointer = 0
    Exit Sub
errorsub:
        MsgBox Err.Description, vbCritical
        Me.MousePointer = 0
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error
If DTPicker1.value < yfdate Then
MsgBox "Date Should be with in the Range", vbInformation, head
    DTPicker1.value = yfdate
    DataCombo3.Text = DTPicker1.value
Else
    DataCombo3.Text = DTPicker1.value
End If
Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form COTTONRECEIPTSSUP"
End Sub

Private Sub DTPicker2_Change()
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form COTTONRECEIPTSSUP"
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
On Error GoTo Form_Load_Error
Set cn = New Connection
Set rep = New ReportView
cn.Provider = "MSDATASHAPE"
cn.Open connectstring
Frame2.Visible = True
Option1.Visible = True
Option2.Visible = True
Option1.value = True
DTPicker1.tabIndex = 0
DTPicker2.tabIndex = 1
DataCombo1.tabIndex = 2
DataCombo2.tabIndex = 3
Combo1.tabIndex = 4
Option1.tabIndex = 5
Option2.tabIndex = 6
cmdReport.tabIndex = 7
CmdCancel.tabIndex = 8
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
    Check1.Visible = True
    Set Rs = New Recordset
    Rs.Open "Select ptypeCotton From MasterLen", DB, adOpenStatic
    If Rs.EOF = False Then
    Set rss = New Recordset
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,SLCODE from fa_slmas a where  left(slcode,2) in (select Items from dbo.split('" & Rs(0) & "',',')) ORDER BY SLCODE ", cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and rejflg='N' and DivCode ='" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
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
''''''''''''''''''''''

      
      
    End If
    
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
        Combo1.AddItem "ALL  - A"
        Combo1.ListIndex = 0
   End If
   intervalMinutes = -1
   Command1.Visible = True
   Screen.MousePointer = 0
   If UCase(Trim(CustID)) = "KALPATHARU" Then
        Label3.Visible = False
        Combo1.Visible = False
   End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form COTTONRECEIPTSSUP"
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

Private Sub Option4_Click()
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option4_KeyDown
' DateTime  : 07/12/2008 14:34
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form COTTONRECEIPTSSUP", vbInformation, head
Screen.MousePointer = 0
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form COTTONRECEIPTSSUP", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Option5_KeyDown
' DateTime  : 07/12/2008 14:34
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form COTTONRECEIPTSSUP", vbInformation, head
Screen.MousePointer = 0
End Sub

