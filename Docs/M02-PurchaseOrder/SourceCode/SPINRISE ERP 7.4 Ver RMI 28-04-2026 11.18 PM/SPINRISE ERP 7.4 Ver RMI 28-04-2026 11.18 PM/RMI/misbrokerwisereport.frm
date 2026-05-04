VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form misbrokerwisereport 
   AutoRedraw      =   -1  'True
   Caption         =   "Mis Reports"
   ClientHeight    =   6750
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9525
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6750
   ScaleWidth      =   9525
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   5400
      TabIndex        =   5
      Top             =   4365
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "REPORT"
      Height          =   375
      Left            =   3375
      TabIndex        =   4
      Top             =   4410
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Height          =   1755
      Left            =   2250
      TabIndex        =   0
      Top             =   2250
      Width           =   6405
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   390
         Left            =   2520
         TabIndex        =   6
         Top             =   960
         Width           =   1755
         _ExtentX        =   3096
         _ExtentY        =   688
         _Version        =   393216
         Format          =   58261505
         CurrentDate     =   38754
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   1
         Top             =   945
         Visible         =   0   'False
         Width           =   1755
         _ExtentX        =   3096
         _ExtentY        =   556
         _Version        =   393216
         Text            =   "DataCombo1"
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Date"
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
         Left            =   1170
         TabIndex        =   3
         Top             =   990
         Width           =   420
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Pending Orders - Reports"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   270
         Left            =   -975
         TabIndex        =   2
         Top             =   45
         Width           =   7725
      End
   End
End
Attribute VB_Name = "misbrokerwisereport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim rs1 As Recordset
Dim a1 As String
Dim A2 As String
Dim u, v, w, X As String
Dim tot As Double
Dim tot1 As Double
Dim i As Integer
Dim RPTV As Report.ReportView
Dim a As Integer
Dim z As Integer
Dim pg1 As Integer
Dim fs, ts As String
'Developed By D.Parimalam
Private Sub Command1_Click()
Dim Rs As Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim c As Integer
Dim a, TEMP As String
Dim temp1 As String
Dim temp2 As Integer
Dim btot1, btot2, btot3 As Double
On Error GoTo Command1_Click_Error

Set DB = New Connection
DB.Provider = "MSDATASHAPE"
DB.Open connectstring
'a = DTPicker1.Value
condate = Format(DTPicker1.Value, "yyyy-mm-dd")
btot1 = 0: btot2 = 0: btot3 = 0
'and (isnull(ordqty,0)-isnull(cancelbales,0))>0
Set primaryrs = New Recordset
primaryrs.Open "select DISTINCT a.brkcd from rm_cont a,rm_var b,fa_slmas c  Where divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0)) and a.brkcd*= C.slcode and contdt <= '" & Format(condate, "yyyy/mm/dd") & "'  and (isnull(ordqty,0)-isnull(recqty,0)-isnull(cancelbales,0))>0 ORDER BY A.BRKCD", DB, adOpenStatic, adLockBatchOptimistic
If primaryrs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    
        Set RPTV = New Report.ReportView
        z = FreeFile
        Close
        Open "C:\peco.TXT" For Output As #z
        pg1 = 1
        Co = 0
        s = a
        Call pendconHeader(pg1, CStr(Co), CStr(DTPicker1.Value), CStr(a), CStr(b))
          tot = 0
          tot1 = 0
          tot2 = 0
          tot3 = 0
          tot4 = 0
          gtot4 = 0
          gtot1 = 0: gtot2 = 0: gtot3 = 0
Do While Not primaryrs.EOF
    Set ResultRs = New Recordset
    ResultRs.Open "select distinct a.brkcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit from rm_cont a,rm_var b,fa_slmas D Where  a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0)) and a.brkcd*= d.slcode  and a.brkcd='" & primaryrs("BRKCD") & "' and ordqty-isnull(recqty,0)-isnull(cancelbales,0)>0 and divcode='" & Divcode & "'  ORDER BY A.BRKCD", DB, adOpenStatic, adLockBatchOptimistic
    Do While Not ResultRs.EOF
        Set rs1 = New Recordset
        rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,e.areaname from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d,rm_area e Where divcode='" & Divcode & "' and a.contdt <= '" & Format(condate, "yyyy-mm-dd") & "' and a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.brkcd = '" & ResultRs("brkcd") & "' and a.areacode=e.areacode " & _
                "  and (isnull(ordqty,0)-isnull(recqty,0)-isnull(cancelbales,0))>0  ", DB, adOpenStatic
        Do While Not rs1.EOF
            If TEMP <> rs1("brkname") Then
            Print #z, Space(5) + Padr(CStr(rs1("brkname")), 40, " ")
            Co = Co + 1
            End If
            'Print #z, Space(5); Padr(CStr(rs1("supname")), 26, " "); Space(1) + Padl(CStr(rs1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(2) + Padr(CStr(rs1("dlytype")), 8, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 2)), 10, " ") + Space(2) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 12, " ")
            Print #z, Space(5); Padl(CStr(rs1("contno")), 14, " ") + Space(2) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(2) + Padr(CStr(rs1("supname")), 31, " "); Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(rs1("areaname"), 15, " ") + Space(1) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 12, " ")
            Co = Co + 1
            If Co >= 58 Then
                      Print #z, Space(5) & String(144, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      Co = 0
                      Call pendconHeader(pg1, CStr(Co), CStr(DTPicker1.Value), CStr(a), CStr(b))
            End If
            tot1 = tot1 + rs1("ordqty")
            tot2 = tot2 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
            tot3 = tot3 + rs1("bales")
            tot4 = tot4 + rs1("cancelbales")
            'brokerwise total
            btot1 = btot1 + rs1("ordqty")
            btot2 = btot2 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
            btot3 = btot3 + rs1("bales")
            btot4 = btot4 + rs1("cancelbales")
            
            TEMP = rs1("brkname")
            rs1.MoveNext
            Loop
            If rs1.RecordCount > 1 Then
            Print #z,
            Co = Co + 1
            Print #z, Space(75) + "**  Broker Total  ** " + Space(1) + Padl(CStr(INF((btot1), 0)), 12, " "); Space(1); Padl(CStr(INF((btot2), 0)), 12, " "); Space(1); Padl(CStr(INF((btot4), 0)), 12, " "); Space(1); Padl(CStr(INF((btot3), 0)), 12, " ") '& Chr(27) & "F"
            Co = Co + 1
            Print #z,
            Co = Co + 1
            btot1 = 0
            btot2 = 0
            btot3 = 0
            End If
            
            ResultRs.MoveNext
            If Co >= 58 Then
                      Print #z, Space(5) & String(144, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      Co = 0
                      Call pendconHeader(pg1, CStr(Co), CStr(DTPicker1.Value), CStr(a), CStr(b))
                      
            End If
        Loop
    primaryrs.MoveNext
Loop

    Print #z, Space(5) & String(144, "-")
    Co = Co + 1
    Print #z, Space(70) + "  **  Grand Total     ** " + Space(2) + Padl(CStr(INF((tot1), 0)), 12, " "); Space(1); Padl(CStr(INF((tot2), 0)), 12, " "); Space(1); Padl(CStr(INF((tot4), 0)), 12, " "); Space(1); Padl(CStr(INF((tot3), 0)), 12, " ") '& Chr(27) & "F"
    Co = Co + 1
    Print #z, Space(5) & String(144, "-")
    Co = Co + 1
Print #z,
Co = Co + 1
'Stationwise Pending as on date
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim sbtot1, sbtot2, sbtot3 As Double
a1 = DataCombo1.Text
sbtot1 = 0: sbtot2 = 0: sbtot3 = 0
Set primaryrs1 = New Recordset
primaryrs1.Open "select DISTINCT a.areacode from rm_cont a,rm_var b,fa_slmas c Where divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0)) and a.brkcd*= C.slcode and contdt <= '" & Format(condate, "yyyy/mm/dd") & "'  and (isnull(ordqty,0)-isnull(recqty,0)-isnull(cancelbales,0))>0 ORDER BY A.areacode", DB, adOpenStatic, adLockBatchOptimistic
If primaryrs1.EOF Then
   ' MsgBox "No Records Found", vbInformation, head
    'Screen.MousePointer = 0
    'Exit Sub
End If
Call pendconHeader1(pg1, CStr(Co), CStr(DTPicker1.Value))
          stot = 0
          stot1 = 0
          stot2 = 0
          stot3 = 0
          stot4 = 0
          sbtot1 = 0: sbtot2 = 0: sbtot3 = 0: sbtot4 = 0
Do While Not primaryrs1.EOF
   'Set resultrs1 = New Recordset
   ' resultrs1.Open "select distinct a.areacode,case when e.bblflg='B' then 'Bales' else 'Borah' end as unit from rm_cont a,rm_var b,fa_slmas D,rm_lot e Where a.divcode='" & Divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0)) and a.brkcd*= d.slcode and (a.godown not in ('C','G','M') or a.godown is null) and a.areacode='" & primaryrs1("areacode") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL ORDER BY A.areacode", Db, adOpenStatic, adLockBatchOptimistic
   ' Do While Not resultrs1.EOF
        Set rs3 = New Recordset
        'Rs3.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'Mill'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,round(a.candyrate,0)as candyrate,e.areaname from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d,rm_area e Where a.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.areacode = '" & primaryrs1("areacode") & "' and a.areacode=e.areacode AND CANCELFLG IS NULL AND CANCELDT IS NULL order by e.areaname", Db, adOpenStatic
        
        rs3.Open "select distinct a.areacode,case when a.bbflag='B' then 'Bales' else 'Borah' end as unit,sum(a.ordqty) as ordqty,sum(a.recqty) as recqty,isnull(sum(a.cancelbales),0) as cancelbales,sum((a.ordqty-isnull(recqty,0)-isnull(a.cancelbales,0)))Bales,e.areaname from RM_CONT a,rm_var b,rm_area e Where divcode ='" & Divcode & "' and a.contdt <='" & Format(condate, "yyyy-mm-dd") & "'  and a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.areacode = '" & primaryrs1("areacode") & "' and a.areacode=e.areacode and (isnull(ordqty,0)-isnull(recqty,0)-isnull(cancelbales,0))>0 group by a.areacode,a.bbflag,e.areaname order by e.areaname", DB, adOpenStatic, adLockBatchOptimistic
        
        
        
        Do While Not rs3.EOF
            'If temp1 <> Rs3("areaname") Then
            'Print #z, Space(5) + Padr(CStr(Rs3("areaname")), 40, " ")
            'co = co + 1
            'End If
            
            'Print #z, Space(5); Padr(Rs3("areaname"), 15, " ") + Space(1) + Padr(CStr(resultrs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(Rs3("ordqty") = 0, " ", Rs3("ordqty"))), 0)), 15, " ") + Space(1) + Padl(CStr(INF((IIf(Rs3("recqty") = 0, " ", Rs3("recqty"))), 0)), 15, " ") + Space(1) + Padl(CStr(INF((IIf(Rs3("bales") = 0, " ", Rs3("bales"))), 0)), 15, " ")
            
            Print #z, Space(5); Padr(rs3("areaname"), 25, " ") + Space(1) + Padr(rs3("unit"), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs3("ordqty") = 0, " ", rs3("ordqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs3("recqty") = 0, " ", rs3("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs3("cancelbales") = 0, " ", rs3("cancelbales"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs3("bales") = 0, " ", rs3("bales"))), 0)), 12, " ")
            Co = Co + 1
            If Co >= 58 Then
                      Print #z, Space(5) & String(80, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      Co = 0
                      Call pendconHeader1(pg1, CStr(Co), CStr(DTPicker1.Value))
            End If
            stot1 = stot1 + rs3("ordqty")
            stot2 = stot2 + IIf(IsNull(rs3("recqty")), 0, rs3("recqty"))
            stot3 = stot3 + rs3("bales")
            stot4 = stot4 + rs3("cancelbales")
            'stationwise total
            sbtot1 = btot1 + rs3("ordqty")
            sbtot2 = btot2 + IIf(IsNull(rs3("recqty")), 0, rs3("recqty"))
            sbtot3 = btot3 + rs3("bales")
            sbtot4 = btot4 + rs3("cancelbales")
            temp1 = rs3("areaname")
            rs3.MoveNext
    '        Loop
    '        resultrs1.MoveNext
            If Co >= 58 Then
                      Print #z, Space(5) & String(84, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      Co = 0
                      Call pendconHeader1(pg1, CStr(Co), CStr(DTPicker1.Value))
                      
            End If
        Loop
    primaryrs1.MoveNext
Loop
    Print #z, Space(5) & String(84, "-")
    Co = Co + 1
    Print #z, Space(12) + "  **  Grand Total     ** " + Padl(CStr(INF((stot1), 0)), 13, " "); Space(1); Padl(CStr(INF((stot2), 0)), 12, " "); Space(1); Padl(CStr(INF((stot4), 0)), 12, " "); Space(1); Padl(CStr(INF((stot3), 0)), 12, " ")  '& Chr(27) & "F"
    Co = Co + 1
    Print #z, Space(5) & String(84, "-")
    Co = Co + 1
Print #z, Chr(12)
Close #z
 z = FreeFile
Open "c:\peco.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type peco.TXT>prn"
Close #z
RPTV.txtfile = "c:\peco.TXT"
RPTV.Batfile = "c:\peco.bat"
Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form misbrokerwisereport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form misbrokerwisereport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

DTPicker1.MinDate = yfdate
Set DB = New Connection
DB.Open connectstring
     Set Rs = New Recordset
     'Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL  order by contdt", Db, adOpenStatic, adLockBatchOptimistic
     'rs.Open "select distinct contdt AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL  order by contdt", DB, adOpenStatic, adLockBatchOptimistic
     Rs.Open "select distinct contdt from rm_cont  where contdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and ordqty>isnull(recqty,0)   AND ordqty-isnull(cancelbales,0)>0 order by contdt", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
       Set DataCombo1.RowSource = Rs
      ' DataCombo1.ListField = "Fields"
     If Not Rs.EOF Then
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
     End If
     End If
     Rs.MoveFirst
     'DTPicker1.MinDate = Right(RS(0), 10)
    Rs.MoveLast
     'DTPicker1.MaxDate = Right(RS(0), 10)
     DTPicker1.Value = pdate

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form misbrokerwisereport", vbInformation, head
Screen.MousePointer = 0
     
 End Sub
 
Public Sub pendconHeader(pg1 As Integer, Co As Integer, s As String, a As String, b As String)
          Dim f As String
On Error GoTo pendconHeader_Error

          f = Right(s, 10)
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(5) + "Brokerwise  Pending Order Report as on " + Format(f, "dd/mm/yy") + Space(1) + Space(77) + Format(CStr(SR), "dd/mm/yy") + Space(3) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) & String(144, "-")
          'Print #z, Space(5) & "  Contract No.    Date    Supplier Name                     Rate/Candy   Station         Unit           Ordered        Received         Pending"
          Print #z, Space(5) & "       P.O.No.    Date    Supplier Name                   Rate/Candy Station         Unit        Ordered     Received    Cancelled      Pending"
          Print #z, Space(5) & String(144, "-")
          Co = Co + 7

Exit Sub
pendconHeader_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure pendconHeader of Form misbrokerwisereport", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub pendconHeader1(pg1 As Integer, Co As Integer, s As String)
On Error GoTo pendconHeader1_Error

          Print #z, Chr(18)
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          Print #z, Space(5) + "Stationwise  Pending Order Report as on " + Format(s, "dd/mm/yy") + Space(1) + Space(11) + Format(CStr(SR), "dd/mm/yy") + Space(4) + "Pg.: " + Padl(CStr(pg1), 3, " ")
          Print #z, Space(5) & String(84, "-")
          Print #z, Space(5) & "Station                   Unit        Ordered     Received    Cancelled      Pending"
          Print #z, Space(5) & String(84, "-")
          Co = Co + 5

Exit Sub
pendconHeader1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure pendconHeader1 of Form misbrokerwisereport", vbInformation, head
Screen.MousePointer = 0
End Sub
