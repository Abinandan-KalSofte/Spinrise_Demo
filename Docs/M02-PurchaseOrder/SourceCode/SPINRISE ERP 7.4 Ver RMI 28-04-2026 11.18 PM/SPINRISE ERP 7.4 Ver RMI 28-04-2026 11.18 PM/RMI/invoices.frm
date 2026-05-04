VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form invoices 
   AutoRedraw      =   -1  'True
   Caption         =   "Form2"
   ClientHeight    =   3180
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Cmdcancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   6375
      TabIndex        =   9
      Top             =   4950
      Width           =   1500
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "Report"
      Height          =   375
      Left            =   4425
      TabIndex        =   8
      Top             =   4950
      Width           =   1500
   End
   Begin VB.Frame Frame1 
      Height          =   3720
      Left            =   2790
      TabIndex        =   0
      Top             =   900
      Width           =   6660
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "invoices.frx":0000
         Left            =   2130
         List            =   "invoices.frx":0002
         TabIndex        =   7
         Top             =   3075
         Width           =   4350
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2130
         TabIndex        =   1
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
         TabIndex        =   2
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
         TabIndex        =   12
         Top             =   705
         Width           =   1590
         _ExtentX        =   2805
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo3"
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2130
         TabIndex        =   13
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
         TabIndex        =   14
         Top             =   720
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   47972353
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
         Format          =   47972353
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
         TabIndex        =   6
         Top             =   3165
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
         Left            =   615
         TabIndex        =   5
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
         Left            =   615
         TabIndex        =   4
         Top             =   2565
         Width           =   990
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "FAX REPORT - Supplierwise"
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
         TabIndex        =   3
         Top             =   0
         Width           =   6945
      End
   End
End
Attribute VB_Name = "invoices"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rep As Report.ReportView
Dim a As Integer
Dim Pg As Integer
Dim Rs As Recordset
Dim rss As Recordset
Dim rs1 As Recordset
Dim rss1 As Recordset
Dim cnn As String
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer
Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form invoices", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

Screen.MousePointer = 11
Dim lotdate As String
Dim W, X As String
Dim head As String
Dim address As String
Dim ADD As Recordset
Dim brok As Recordset
Dim area As String
Dim PAGE As Integer
Dim U, V As String
Set Rep = New Report.ReportView
a = FreeFile
Close #a
Close
'Developed by D.parimalam
Open "C:\inv.txt" For Output As #a
Dim costr As String
If Right(Combo1.Text, 1) = "M" Then
    costr = "C"
Else
    costr = "S"
End If

costr = Right(Combo1.Text, 1)

Dim Co As Integer
Dim Pg As Integer
Dim s1, s2, s3 As String
Dim d As String
Dim TEMP As String

'u = Left$(DataCombo1.Text, 12)
'v = Right$(DataCombo2.Text, 12)
'for supplier
'u = InStr(1, DataCombo1.Text, "-")
'u = Trim(Left(DataCombo1.Text, u - 1))
'v = InStr(1, DataCombo2.Text, "-")
'v = Trim(Left(DataCombo2.Text, v - 1))
U = Trim(Right(DataCombo1.Text, 7))
V = Trim(Right(DataCombo2.Text, 7))

DataCombo3.Text = DTPicker1.value '''''
DataCombo4.Text = DTPicker2.value '''''

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
    ',L.FNETWT,L.PNETWT
    Rs.Open "SELECT DISTINCT L.ARRDT,s.slcode,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT,D.AREANAME,L.LOTYEAR FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p,RM_AREA D WHERE S.Slcode BETWEEN '" & U & "' AND '" & V & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and L.AREACD=D.AREACODE AND" & _
           " C.CONTDT=A.CONTDT and l.arrdt=a.arrdate AND L.BRKCD*=B.SLCODE AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & W & "' AND '" & X & "' AND P.DIVCODE='" & Divcode & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "'  ORDER BY S.SLNAME,L.LOTDT,L.LOTNO,L.ARRDT,B.SLNAME ", Cn, adOpenStatic, adLockBatchOptimistic
Else
    'Set rs = New Recordset
    'rs.Open "SELECT DISTINCT L.ARRDT,B.slcode,B.SLNAME SUPPLIER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT,L.LOTYEAR,L.NETWT,L.NETWT FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,pp_divmas p WHERE B.Slcode BETWEEN '" & u & "' AND '" & v & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO   AND" & _
           " C.CONTDT=A.CONTDT  AND l.arrdt=a.arrdate and B.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & w & "' AND '" & x & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.SLNAME,L.LOTDT,L.LOTNO,L.ARRDT ", cn, adOpenStatic, adLockBatchOptimistic
           
   ',L.FNETWT,L.PNETWT cOLUMN NOT AVILABLE
   Set Rs = New Recordset
   Rs.Open "SELECT DISTINCT L.ARRDT,s.slcode,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT,D.AREANAME,L.LOTYEAR FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p,RM_AREA D WHERE S.Slcode BETWEEN '" & U & "' AND '" & V & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and L.AREACD=D.AREACODE AND" & _
           " C.CONTDT=A.CONTDT  AND l.arrdt=a.arrdate and L.BRKCD*=B.SLCODE AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & W & "' AND '" & X & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY S.SLNAME,L.LOTDT,L.LOTNO,L.ARRDT,B.SLNAME ", Cn, adOpenStatic, adLockBatchOptimistic
           
End If
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
    
Pg = 1

Call header3(Co, Pg, rs1, CStr(W), CStr(X))
Dim RECCOUNT As Integer
recount = 0
Do While Rs.EOF = False
If TEMP <> Rs("SUPPLIER") Then
 Print #a, Space(0) + Chr(27) + "E" + Padr("SUPPLIER NAME :", 15, " ") & Space(2) & Padr(Rs("SUPPLIER"), 50, " ") + Chr(27) + "F"
 Co = Co + 1
  Print #a,
 Co = Co + 1
End If
''diff = Rs("NETWT") - Rs("FNETWT")

'If rs("FNETWT") <> 0 Then
'   diff = rs("NETWT") - rs("FNETWT")
'Else
'   diff = rs("NETWT") - rs("PNETWT")
'End If

diff = 0
                
        Print #a, Space(0); Padr(Rs("BROKER"), 30, " "); Space(2); Padr(Format(Rs("BILLDT"), "DD/MM/YY"), 8, " "); Space(2); Padl(Rs("BILLNO"), 5, " "); Space(2); Padl(INF(Rs("RATECY"), 0), 8, " "); Space(2); Padl(INF(Rs("FREIGHT"), 2), 9, " "); Space(2); Padl(INF(Rs("PTYWGT"), 2), 10, " "); Space(2); Padl(INF(Rs("GRSWGT"), 2), 10, " "); Space(2); Padl(INF(Rs("TAREWT"), 2), 8, " "); Space(2); Padl(INF(Rs("NETWT"), 2), 10, " "); Space(2); Padl(Format(diff, "#.00"), 8, " ")
        Co = Co + 1
        Print #a, Space(3); Padr("Mill.Lot No  : ", 14, " ") & Space(5) & Padl(Rs("LOTNO"), 5, " "); "/"; Padr(Rs("lotyear"), 4, " ") & Space(1) & Space(6); Padr("Party Lot No. :", 15, " ") & Space(1) & Padl(Rs("PLOTNO"), 10, " ")
        Co = Co + 1
        Print #a, Space(3); Padr("No.of Bales  :", 14, " ") & Space(1) & Padr(Rs("BALES"), 14, " "); Space(7); Padr("Station       :", 15, " ") & Space(1) & Padr(Rs("AREANAME"), 18, " ")
        Co = Co + 1
        Print #a, Space(3); Padr("Press R.NO.  : ", 14, " ") & Space(1); Padr(Rs("PRNO"), 20, " "); Space(1); Padr("Delivery Type :", 15, " ") & Space(1) & Padr(costr, 18, " ")
        Co = Co + 1
        TEMP = Rs("SUPPLIER")
        Rs.MoveNext
        Print #a, Space(0); String(124, "-")
        Co = Co + 1
        recount = recount + 1
        If recount >= 5 Then
             'Print #a, Space(0); String(109, "-")
             Print #a,
             Print #a,
             'Print #a, Chr(27) & "E" & Space(15); Padl("PREPARED", 20, " "); Space(7); Padl("CHECKED", 20, " "); Space(7); Padl("FM", 20, " ") & Chr(27) & "F"
             'Print #a, Chr(12)
             Pg = Pg + 1
             recount = 0
             Call header3(Co, Pg, rs1, CStr(W), CStr(X))
        End If
Loop
    'If recount <= 5 Then
    
    If recount <= 5 Then
    'Print #a, Space(0); String(109, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a, Chr(27) & "E" & Space(15); Padl("PREPARED", 20, " "); Space(7); Padl("CHECKED", 20, " "); Space(7); Padl("FM", 20, " ") & Chr(27) & "F"
    Print #a, Chr(12)
    End If
    Print #a, Chr(12) 'page break
    Close #a
    a = FreeFile
    Open "c:\inv.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type inv.txt>prn"
    Close #a
    Rep.txtfile = "c:\inv.txt"
    Rep.Batfile = "c:\inv.bat"

Screen.MousePointer = 0

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form invoices", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub header3(Co As Integer, Pg As Integer, rs1 As Recordset, W As String, X As String)
On Error GoTo header3_Error

Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & " '", Cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Space(0); Chr(27) + "E" + Chr(14); CENTRE(temp1, 50, " ") + Chr(27) + "F"
Print #a, Chr(18)
Print #a,
temp2 = CStr(pdate)
Print #a, Chr(27) & "E" & Space(0); "Supplierwise List of lots without invoices" & Chr(27) & "F" & Space(1) & From & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & Space(24) & Space(15) & Format(temp2, "dd/mm/yy") & Space(4) & "Pg.:" & Space(2) & Padl(Pg, 3, " ")
Print #a, Space(0); String(124, "-")
Print #a, Space(0); "Broker Name                     Received   Prov     Candy      Lorry       Party       Mill       Tare       Mill "
Print #a, Space(0); "                                    Date Inv No.     Rate    Freight     Net.Wt.   Gross Wt.       Wt.     Net Wt.  Shortage"
Print #a, Space(0); String(124, "-")
Co = Co + 8

Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form invoices", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set Cn = New Connection
Set Rep = New ReportView
Cn.Provider = "MSDATASHAPE"
Cn.Open connectstring
    Set rss = New Recordset
    'RS1.Open "select slname + '-' + slcode as slname from fa_slmas where slcode like'C2%' order by slcode", db, adOpenStatic, adLockBatchOptimistic
    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C1%' ", Cn, adOpenStatic, adLockBatchOptimistic
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,B.SUPCD,c.dlytype from fa_slmas a,rm_arrival b,rm_cont c where  a.slcode=b.supcd  ", cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct arrdt as arrdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", Cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
      Set DataCombo3.RowSource = Rs
      DataCombo3.ListField = "arrdt"
      Set DataCombo4.RowSource = Rs
      DataCombo4.ListField = "arrdt"
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
        DTPicker1.value = pdate
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
    
    
    If rss.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rss
        DataCombo1.ListField = "SUP"
        Set DataCombo2.RowSource = rss
        DataCombo2.ListField = "SUP"
        rss.MoveFirst
        DataCombo1.Text = rss(0)
        rss.MoveLast
        DataCombo2.Text = rss(0)
         Combo1.AddItem "FOR - M"
        Combo1.AddItem "SPOT - S"
        Combo1.AddItem "ALL - A"
        Combo1.ListIndex = 0
   End If
         Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form invoices", vbInformation, head
Screen.MousePointer = 0
End Sub

    
    
    

    
    
    
    
    
    
    
    
    






    












'Dim rep As Report.ReportView
'Dim A As Integer
'Dim pg As Integer
'Dim rs As Recordset
'Dim rss As Recordset
'Dim rs1 As Recordset
'Dim rss1 As Recordset
'Dim cnn As String
'Dim REPC As Integer
'Dim strQuery As String
'Dim pglen As Integer
'Private Sub cmdCancel_Click()
'Unload Me
'End Sub
'Private Sub cmdreport_Click()
'Screen.MousePointer = 11
'Dim lotdate As String
'Dim w, X As String
'Dim head As String
'Dim address As String
'Dim lotbale As Recordset
'Dim ADD As Recordset
'Dim brok As Recordset
'Dim area As String
'Dim PAGE As Integer
'Dim u, v As String
'PAGE = 0
'Set rep = New Report.ReportView
'A = FreeFile
'Close #A
'Close
'Open "C:\inv.txt" For Output As #A
'Dim costr As String
'If Right(Combo1.Text, 1) = "M" Then
'    costr = "M"
'Else
'    costr = "S"
'End If
'Dim co As Integer
'Dim pg As Integer
'Dim s1, s2, s3 As String
'Dim d As String
'Dim TEMP As String
'
''u = Left$(DataCombo1.Text, 12)
''v = Right$(DataCombo2.Text, 12)
''for supplier
''u = InStr(1, DataCombo1.Text, "-")
''u = Trim(Left(DataCombo1.Text, u - 1))
''v = InStr(1, DataCombo2.Text, "-")
''v = Trim(Left(DataCombo2.Text, v - 1))
'u = Trim(Right(DataCombo1.Text, 6))
'v = Trim(Right(DataCombo2.Text, 6))
'
'w = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
'X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
'
'Set rs = New Recordset
'
'
'
'rs.Open "SELECT DISTINCT L.ARRDT,s.slcode,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p WHERE S.Slcode BETWEEN '" & u & "' AND '" & v & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and" & _
'       " C.CONTDT=A.CONTDT  AND B.SLCODE=L.BRKCD AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & w & "' AND '" & X & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "' ORDER BY S.SLNAME,B.SLNAME,L.ARRDT ", cn, adOpenStatic, adLockBatchOptimistic
'
''rs.Open "SELECT DISTINCT L.ARRDT,P.DIVCODE,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,A.FREIGHT,L.PLOTNO,L.NETWT,L.PTYWGT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p WHERE S.Slname BETWEEN '" & u & "' AND '" & v & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and" & _
''       " C.CONTDT=A.CONTDT  AND B.SLCODE=L.BRKCD AND S.SLCODE=L.SUPCD AND L.ARRDT BETWEEN '" & W & "' AND '" & X & "' AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "'", cn, adOpenStatic, adLockBatchOptimistic
'
'
''RS.Open "SELECT P.DIVCODE,S.SLNAME SUPPLIER,B.SLNAME BROKER,A.PRNO,L.LOTDT,L.BALES,L.RATECY,L.FREGHT,L.PLOTNO,L.NETWT,L.PNETWT,L.LOTNO,L.GRSWGT,L.TAREWT,L.NETWT,L.Ptywgt -L.NETWT AS  SHORTAGE,L.BILLNO,L.BILLDT FROM RM_ARRIVAL A,RM_LOT L,RM_CONT C,FA_SLMAS B,FA_SLMAS S,pp_divmas p WHERE S.Slname BETWEEN '" & DataCombo1.Text & "' AND '" & DataCombo2.Text & "'  AND A.DIVCODE=L.DIVCODE AND L.ARRNO=A.ARRNO AND C.CONTNO=A.CONTNO  and" & _
' '       " C.CONTDT=A.CONTDT  AND B.SLCODE=L.BRKCD AND S.SLCODE=L.SUPCD AND P.DIVCODE='" & Divcode & "' and C.DLYTYPE='" & costr & "'", cn, adOpenStatic, adLockBatchOptimistic
'
'    If rs.RecordCount <= 0 Then
'      Screen.MousePointer = 0
'      MsgBox " No Records Found", vbInformation, head
'      Exit Sub
'   Else
'      rs.MoveFirst
'   End If
''PRINTING FOR SUPPLIER NAME
'
''s1 = RS("supplier")
'''s1 = "ADILAKSHMI TRADING COMPANY"
'''c2 = Len(RS("supplier"))
''c2 = Len(s1)
''If ((Len(Trim(s1))) > 14) Then
''I = 0
''
''CON = 0
'' ' For I = 14 To 1
''
''
'' s2 = ""
'' For I = 1 To c2
''    'Checking blank character
''    If (Mid$(s1, I, 1)) = " " Then
''       d = I
''       CON = CON + 1
''       If CON <= 2 Then
''          s2 = Mid$(s1, 1, d)
''       Else
''          Exit For
''       End If
''    End If
''  Next I
''
''
''End If
''s3 = Mid$(s1, d + 1, Trim(Len(s1)))
''
'
'If costr = "M" Then
'    costr = "MILL"
'Else
'    costr = "SPOT"
'End If
'Call header3(co, pg, rs1)
'Dim RECCOUNT As Integer
'recount = 0
'Print #A, Space(45) + Chr(27) + "E" + Padr("Please Arrange Original Invoices (FAX Report)", 130, " ") + Chr(27) + "F"
'Print #A,
'Print #A, Space(50) + Chr(27) + "E" + Padr("DELIVERY TYPE :", 15, " ") & Space(2) & Padr(costr, 50, " ") + Chr(27) + "F"
'Print #A,
''If TEMP <> rs("SUPPLIER") Then
''Print #a, Space(50) + Chr(27) + "E" + Padr("SUPPLIER NAME :", 15, " ") & Space(2) & Padr(rs("SUPPLIER"), 50, " ") + Chr(27) + "F"
''Print #a,
''Print #a, Space(50) + Chr(27) + "E" + Padr("DELIVERY TYPE :", 15, " ") & Space(2) & Padr(costr, 50, " ") + Chr(27) + "F"
'
'Do While rs.EOF = False
'If TEMP <> rs("SUPPLIER") Then
' Print #A, Space(45) + Chr(27) + "E" + Padr("SUPPLIER NAME :", 15, " ") & Space(2) & Padr(rs("SUPPLIER"), 50, " ") + Chr(27) + "F"
'End If
'
'        'Print #a, Space(50) + Chr(27) + "E" + Padr("SUPPLIER NAME :", 15, " ") & Space(2) & Padr(rs("SUPPLIER"), 50, " ") + Chr(27) + "F"
'
'
'
'        Print #A, Space(5); Chr(218); String(25, Chr(196)); Chr(194); String(5, Chr(196)); Chr(194); String(8, Chr(196)); Chr(194); String(8, Chr(196)); Chr(194); String(5, Chr(196)); Chr(194); String(9, Chr(196)); Chr(194); String(9, Chr(196)); Chr(194); String(4, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(4, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(4, Chr(196)); Chr(191)
'
'
'        Print #A, Space(5); Chr(179); Padr("BROKER NAME", 25, " "); Chr(179); Padr("PV.NO", 5, " "); Chr(179); Padl("PV.DATE", 8, " "); Chr(179); Padr("DATE", 8, " "); Chr(179); Padr("BALES", 5, " "); Chr(179); Padl("   CANDY", 9, " "); Chr(179); Padl("FREIGHT", 9, " "); Chr(179); Padr("PLOT", 4, " "); Chr(179); Padl("PN WT.", 10, " "); Chr(179); Padr("MLOT", 4, " "); Chr(179); Padl("GROSS WT.", 10, " "); Chr(179); Padl("TARE WT.", 10, " "); Chr(179); Padl("NET WT.", 10, " "); Chr(179); Padl("SHOR", 4, " "); Chr(179)
'
'        Print #A, Space(5); Chr(195); String(25, Chr(196)); Chr(197); String(5, Chr(196)); Chr(197); String(8, Chr(196)); Chr(197); String(8, Chr(196)); Chr(197); String(5, Chr(196)); Chr(197); String(9, Chr(196)); Chr(197); String(9, Chr(196)); Chr(197); String(4, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(4, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(4, Chr(196)); Chr(180)
'
'        Print #A, Space(5); Chr(179); Padr(rs("BROKER"), 25, " "); Chr(179); Padl(rs("BILLNO"), 5, " "); Chr(179); Padr(Format(rs("BILLDT"), "DD/MM/YY"), 8, " "); Chr(179); Padr(Format(rs("LOTDT"), "DD/MM/YY"), 8, " "); Chr(179); Padl(rs("BALES"), 5, " "); Chr(179); Padl(rs("RATECY"), 9, " "); Chr(179); Padl(INF(rs("FREIGHT"), 2), 9, " "); Chr(179); Padl(rs("PLOTNO"), 4, " "); Chr(179); Padl(INF(rs("PTYWGT"), 2), 10, " "); Chr(179); Padl(rs("LOTNO"), 4, " "); Chr(179); Padl(INF(rs("GRSWGT"), 2), 10, " "); Chr(179); Padl(INF(rs("TAREWT"), 2), 10, " "); Chr(179); Padl(INF(rs("NETWT"), 2), 10, " "); Chr(179); Padl(INF(rs("SHORTAGE"), 2), 4, " "); Chr(179)
'
'       Print #A, Space(5); Chr(179); Padr("PR. NO. : " & rs("PRNO"), 25, " "); Chr(179); String(5, " "); Chr(179); String(8, " "); Chr(179); String(8, " "); Chr(179); String(5, " "); Chr(179); String(9, " "); Chr(179); String(9, " "); Chr(179); String(4, " "); Chr(179); String(10, " "); Chr(179); String(4, " "); Chr(179); String(10, " "); Chr(179); String(10, " "); Chr(179); String(10, " "); Chr(179); String(4, " "); Chr(179)
'
'
'        Print #A, Space(5); Chr(192); String(25, Chr(196)); Chr(193); String(5, Chr(196)); Chr(193); String(8, Chr(196)); Chr(193); String(8, Chr(196)); Chr(193); String(5, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(4, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(4, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(4, Chr(196)); Chr(217)
'
'
'        pglen = pglen + 1
'        TEMP = rs("SUPPLIER")
'        rs.MoveNext
'        recount = recount + 1
'Loop
'
'
'
''        If RECOUNT > 5 Then
''            Print #a,
''            'Print #a, Space(30); Padl("PREPARED", 20, " "); Space(2); Padl("CHECKED", 20, " "); Space(2); Padl("FM", 20, " ")
''            Print #a, Chr(27) & "E" & Space(30); Padl("PREPARED", 20, " "); Space(7); Padl("CHECKED", 20, " "); Space(7); Padl("FM", 20, " ") & Chr(27) & "F"
''            RECOUNT = 0
''            'Print #a, Space(40) + Chr(27) + "E" + Padr("Please Arrange Original Invoices (Fax Report)", 130, " ") + Chr(27) + "F"
''            'Print #a, Space(40) + Chr(27) + "E" + Padr("BROKER NAME   :", 15, " ") & Padr(RS("BROKER"), 50, " ") + Chr(27) + "F"
''            'Print #a, Space(40) + Chr(27) + "E" + Padr("DELIVERY TYPE :", 15, " ") & Padr(costr, 50, " ") + Chr(27) + "F"
''            'Print #a, Space(45) + Chr(27) + "E" + Padr("Please Arrange Original Invoices (Fax Report)", 130, " ") + Chr(27) + "F"
''            Print #a,
''            Print #a, Space(50) + Chr(27) + "E" + Padr("SUPPLIER NAME :", 15, " ") & Space(2) & Padr(rs("SUPPLIER"), 50, " ") + Chr(27) + "F"
''            Print #a,
''            Print #a, Space(50) + Chr(27) + "E" + Padr("DELIVERY TYPE :", 15, " ") & Space(2) & Padr(costr, 50, " ") + Chr(27) + "F"
''            Print #a, Space(5); Chr(218); String(25, Chr(196)); Chr(194); String(5, Chr(196)); Chr(194); String(8, Chr(196)); Chr(194); String(8, Chr(196)); Chr(194); String(5, Chr(196)); Chr(194); String(9, Chr(196)); Chr(194); String(9, Chr(196)); Chr(194); String(4, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(4, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(10, Chr(196)); Chr(194); String(4, Chr(196)); Chr(191)
''            Print #a, Space(5); Chr(179); Padr("BROKER NAME", 25, " "); Chr(179); Padr("PV.NO", 5, " "); Chr(179); Padl("PV.DATE", 8, " "); Chr(179); Padr("DATE", 8, " "); Chr(179); Padr("BALES", 5, " "); Chr(179); Padl("   CANDY", 9, " "); Chr(179); Padl("FRIEGHT", 9, " "); Chr(179); Padr("PLOT", 4, " "); Chr(179); Padl("PN WT.", 10, " "); Chr(179); Padr("MLOT", 4, " "); Chr(179); Padl("GROSS WT.", 10, " "); Chr(179); Padl("TARE WT.", 10, " "); Chr(179); Padl("NET WT.", 10, " "); Chr(179); Padl("SHOR", 4, " "); Chr(179)
''            Print #a, Space(5); Chr(195); String(25, Chr(196)); Chr(197); String(5, Chr(196)); Chr(197); String(8, Chr(196)); Chr(197); String(8, Chr(196)); Chr(197); String(5, Chr(196)); Chr(197); String(9, Chr(196)); Chr(197); String(9, Chr(196)); Chr(197); String(4, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(4, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(10, Chr(196)); Chr(197); String(4, Chr(196)); Chr(180)
''            Print #a, Space(5); Chr(179); Padr(rs("BROKER"), 25, " "); Chr(179); Padl(rs("BILLNO"), 5, " "); Chr(179); Padr(Format(rs("BILLDT"), "DD/MM/YY"), 8, " "); Chr(179); Padr(Format(rs("LOTDT"), "DD/MM/YY"), 8, " "); Chr(179); Padl(rs("BALES"), 5, " "); Chr(179); Padl(rs("RATECY"), 9, " "); Chr(179); Padl(INF(rs("FREIGHT"), 2), 9, " "); Chr(179); Padl(rs("PLOTNO"), 4, " "); Chr(179); Padl(INF(rs("PTYWGT"), 2), 10, " "); Chr(179); Padl(rs("LOTNO"), 4, " "); Chr(179); Padl(INF(rs("GRSWGT"), 2), 10, " "); Chr(179); Padl(INF(rs("TAREWT"), 2), 10, " "); Chr(179); Padl(INF(rs("NETWT"), 2), 10, " "); Chr(179); Padl(INF(rs("SHORTAGE"), 2), 4, " "); Chr(179)
''            Print #a, Space(5); Chr(179); Padr("PR. NO. : " & rs("PRNO"), 25, " "); Chr(179); String(5, " "); Chr(179); String(8, " "); Chr(179); String(8, " "); Chr(179); String(5, " "); Chr(179); String(9, " "); Chr(179); String(9, " "); Chr(179); String(4, " "); Chr(179); String(10, " "); Chr(179); String(4, " "); Chr(179); String(10, " "); Chr(179); String(10, " "); Chr(179); String(10, " "); Chr(179); String(4, " "); Chr(179)
''            Print #a, Space(5); Chr(192); String(25, Chr(196)); Chr(193); String(5, Chr(196)); Chr(193); String(8, Chr(196)); Chr(193); String(8, Chr(196)); Chr(193); String(5, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(4, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(4, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(4, Chr(196)); Chr(217)
''        End If
''
'
'
'
''Loop
'
''End If
'    If recount <= 5 Then
'    Print #A,
'    Print #A,
'    Print #A,
'    Print #A,
'    Print #A,
'    Print #A,
'    Print #A, Chr(27) & "E" & Space(30); Padl("PREPARED", 20, " "); Space(7); Padl("CHECKED", 20, " "); Space(7); Padl("FM", 20, " ") & Chr(27) & "F"
'
'    End If
'    Print #A, Chr(12) 'page break
'    Close #A
'    A = FreeFile
'    Open "c:\inv.bat" For Output As #A
'    Print #A, "cd\"
'    Print #A, "c:"
'    Print #A, "cd\"
'    Print #A, "type inv.txt>prn"
'    Close #A
'    rep.txtfile = "c:\inv.txt"
'    rep.Batfile = "c:\inv.bat"
'
'Screen.MousePointer = 0
'End Sub
'Private Sub header3(co As Integer, pg As Integer, rs1 As Recordset)
'Set rs1 = New Recordset
'rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & " '", cn, adOpenStatic, adLockOptimistic
'temp1 = Left(rs1("DIVNAME"), 31)
'Print #A, Space(5); Chr(27) + "E" + CENTRE(temp1, 80, " ") + Chr(27) + "F" '+ Chr(27)
'Print #A, Chr(15)
'Print #A, Space(5); Chr(218); String(7, Chr(196)); String(55, Chr(196)); Chr(194); String(71, Chr(196)); Chr(191)
'Print #A, Space(5); Chr(179); Padr("FROM :", 7, " "); Padr(temp1, 41, ""); Padr("MCT", 4, " "); Padr(rs1("ABBR"), 10, " "); Chr(179); Padr("TO      :", 20, " "); Chr(27) & "E" & Padr("HO", 51, " "); Chr(27) & "F"; Chr(179)
'Print #A, Space(5); Chr(195); String(7, Chr(196)); String(55, Chr(196)); Chr(197); String(71, Chr(196)); Chr(180)
'Print #A, Space(5); Chr(179); Padr("FAX NO. & PHONE :", 18, " "); Padr(rs1("PHONE1"), 20, " "); Padr(rs1("PHONE2"), 24, " "); Chr(179); Padr("ATTN    : ", 20, " "); Chr(27) & "E" & Padr("Mr.RAMARAJ A.O", 51, " "); Chr(27) & "F"; Chr(179)
'Print #A, Space(5); Chr(195); String(7, Chr(196)); String(55, Chr(196)); Chr(197); String(71, Chr(196)); Chr(180)
'PAGENO = PAGENO + 1
'Print #A, Space(5); Chr(179); Padr("DATE :", 15, " "); Padr(Format(Date, "DD/MM/YYYY"), 15, " "); Padr("PAGE NO :", 20, " "); Padl(PAGENO, 2, " "); Space(10); Chr(179); Padr("FAX NO. :", 20, " "); Padr(" 91 - 421 - 203780", 51, " "); Chr(179)
'Print #A, Space(5); Chr(192); String(7, Chr(196)); String(55, Chr(196)); Chr(193); String(71, Chr(196)); Chr(217)
'End Sub
'Private Sub Form_Load()
'Set cn = New Connection
'Set rep = New ReportView
'cn.Provider = "MSDATASHAPE"
'cn.Open connectstring
'    Set rss = New Recordset
'    'RS1.Open "select slname + '-' + slcode as slname from fa_slmas where slcode like'C2%' order by slcode", db, adOpenStatic, adLockBatchOptimistic
'    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ", cn, adOpenStatic, adLockBatchOptimistic
'    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,B.SUPCD,c.dlytype from fa_slmas a,rm_arrival b,rm_cont c where  a.slcode=b.supcd  ", cn, adOpenStatic, adLockBatchOptimistic
'    Set rs = New Recordset
'    rs.Open "select distinct arrdt as arrdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
'    If rs.RecordCount <> 0 Then
'      Set DataCombo3.RowSource = rs
'      DataCombo3.ListField = "arrdt"
'      Set DataCombo4.RowSource = rs
'      DataCombo4.ListField = "arrdt"
'      rs.MoveFirst
'      DataCombo3.Text = rs(0)
'      DataCombo4.Text = rs(0)
'    End If
'
'
'    If rss.RecordCount <> 0 Then
'        Set DataCombo1.RowSource = rss
'        DataCombo1.ListField = "SUP"
'        Set DataCombo2.RowSource = rss
'        DataCombo2.ListField = "SUP"
'        rss.MoveFirst
'        DataCombo1.Text = rss(0)
'        DataCombo2.Text = rss(0)
'        Combo1.AddItem "SPOT - S"
'        Combo1.AddItem "MILL - M"
'        Combo1.ListIndex = 0
'   End If
'         Screen.MousePointer = 0
'End Sub
''       Else
''         MsgBox "No record found", vbInformation, head
''         Exit Sub
''    End If



Private Sub DTPicker1_Change()
If DTPicker1.value < yfdate Then
    DTPicker1.value = yfdate
    DataCombo3.Text = DTPicker1.value
Else
    DataCombo3.Text = DTPicker1.value
End If
End Sub

Private Sub DTPicker2_Change()
If DTPicker2.value < yfdate Then
    DTPicker2.value = yfdate
    DataCombo4.Text = DTPicker2.value
Else
    DataCombo4.Text = DTPicker2.value
End If
End Sub
