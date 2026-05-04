VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form NCPREPORT1 
   AutoRedraw      =   -1  'True
   Caption         =   "NCP Report"
   ClientHeight    =   6735
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   9465
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6735
   ScaleWidth      =   9465
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   5565
      TabIndex        =   7
      Top             =   4710
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "REPORT"
      Height          =   375
      Left            =   3270
      TabIndex        =   6
      Top             =   4710
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Height          =   1860
      Left            =   2325
      TabIndex        =   0
      Top             =   2430
      Width           =   5475
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2280
         TabIndex        =   9
         Top             =   1080
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   58261505
         CurrentDate     =   39269
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2280
         TabIndex        =   8
         Top             =   600
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   58261505
         CurrentDate     =   39269
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2265
         TabIndex        =   1
         Top             =   630
         Width           =   2070
         _ExtentX        =   3651
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2265
         TabIndex        =   2
         Top             =   1140
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "NCP REPORT"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   -975
         TabIndex        =   5
         Top             =   45
         Width           =   7725
      End
      Begin VB.Label Label4 
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
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1080
         TabIndex        =   4
         Top             =   660
         Width           =   885
      End
      Begin VB.Label Label6 
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
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1080
         TabIndex        =   3
         Top             =   1110
         Width           =   705
      End
   End
End
Attribute VB_Name = "NCPREPORT1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim rs1 As Recordset
Dim From_Date As String
Dim To_Date As String
Dim dep As String
Dim From_cat As String
Dim to_cat As String
Dim tot As Double
Dim tot1 As Double
Dim i As Integer
Dim RPTV As Report.ReportView
Dim c As Integer
Dim pg1 As Integer
Dim fs, ts As String
Private Sub Command1_Click()
'From_date1 = DataCombo1.Text
'To_date1 = DataCombo2.Text
From_date1 = DTPicker1.Value
To_date1 = DTPicker2.Value
If CDate(From_date1) > CDate(To_date1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(To_date1) < CDate(From_date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If


Set rs1 = New Recordset
'rs1.Open "SELECT category,catdesc,b.depcode,depname,sum(quantity)as quantity ,sum(value) as value FROM IN_TRNTAIL a,in_trnhead b,in_dep c,in_cat d where d.catcode=a.category and b.depcode=c.depcode and a.docno=b.docno and a.docdt=b.docdt  and a.docdt between '" & Format(From_date1, "yyyy-mm-dd") & "' and '" & Format(To_date1, "yyyy-mm-dd") & "' and a.docdt >= '" & Format(yfdate, "yyyy-mm-dd") & "' and  a.docdt <= '" & Format(pdate, "yyyy-mm-dd") & "' and d.catcode between '" & cat_code1 & "' and '" & cat_code2 & "'  and a.tc=b.tc and a.tc=3 group by category,catdesc,b.depcode,depname order by category,b.depcode,depname", db, adOpenStatic, adLockBatchOptimistic
''''''rs1.Open "select f.lotno,f.ncpflg,a.contno,a.arrdate,a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,g.catname,unit= (case when f.bblflg = 'B' then 'Bales' else 'Borahs' end),a.feedback,a.result,a.ncpreason,a.actiontaken from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e,rm_lot f,RM_CAT G where ncpflg='Y' and a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and a.bbflag=f.bblflg and d.supcd=c.slcode and a.supcd=c.slcode and a.supcd=f.supcd and a.areacode=b.areacode and a.areacode=f.areacd and b.areacode=d.areacode and   a.brkcd*=e.slcode  and f.catcd=g.catcd  and A.divcode='" & Divcode & "' AND  arrdate between '" & Format(From_date1, "yyyy-mm-dd") & "' and '" & Format(To_date1, "yyyy-mm-dd") & "' order by arrdate", db, adOpenStatic, adLockBatchOptimistic

rs1.Open "select f.lotno,f.ncpflg,a.contno,a.arrdate,a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.passbl,a.plotno,a.varcode,g.catname,unit= (case when f.bblflg = 'B' then 'Bales' else 'Borahs' end),a.feedback,a.result,a.ncpreason,a.actiontaken,f.netwt,f.ratekg,(f.netwt*f.ratekg)as value " & _
        " from rm_arrival a,rm_area b,fa_slmas c,fa_slmas e,rm_lot f,RM_CAT G " & _
        " where OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' AND ncpflg='Y' and a.bbflag=f.bblflg  and a.supcd=c.slcode and a.supcd=f.supcd and " & _
        " a.areacode=b.areacode and a.areacode=f.areacd  and  a.brkcd*=e.slcode  and f.catcd=g.catcd " & _
        " and A.divcode='" & Divcode & "' AND  a.lotno=f.lotno and a.lotdt=f.lotdt AND  arrdate between '" & Format(From_date1, "yyyy-mm-dd") & "' and '" & Format(To_date1, "yyyy-mm-dd") & "'  order by arrdate ", DB, adOpenStatic


'select f.lotno,f.ncpflg,f.pjno,a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,g.catname  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e,rm_lot f,RM_CAT G where ncpflg='Y' and a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and a.bbflag=f.bblflg and d.supcd=c.slcode and a.supcd=c.slcode and a.supcd=f.supcd and a.areacode=b.areacode and a.areacode=f.areacd and b.areacode=d.areacode and  (passed is null or passed='N') and a.brkcd*=e.slcode  and f.catcd=g.catcd  and A.divcode='" & DIVCODE & "' AND  arrdate between '2005-10-01' and '2005-10-26'
If rs1.RecordCount = 0 Then
  MsgBox "No Records found ", vbInformation, head
  Screen.MousePointer = 0
  Exit Sub
End If
Set RPTV = New Report.ReportView
c = FreeFile
i = 0
pg1 = 1
Open "C:\cd.TXT" For Output As #c
Print #c,
Call header1(CStr(From_date1), CStr(To_date1), i, pg1)
rs1.MoveFirst
    
      Do While Not rs1.EOF
      
         Print #c, Space(5) & Padr(Format(rs1("arrdate"), "DD/MM/YY"), 8, " ") & Space(3) & Padr(rs1("catname"), 7, " ") & Space(1) & Padr(rs1("slname"), 30, " ") & Space(1) & Padr(rs1("brname"), 23, " ") & Space(1) & Padl(rs1("lotno"), 7, " ") & Space(1) & Padl(rs1("plotno"), 7, " ") & Space(1) & Padl(rs1("contno"), 6, " ") & Space(1) & Padl(rs1("passbl"), 8, " ") & Space(2) & Padr(rs1("unit"), 6, " ") & Space(6)
         i = i + 1
         Print #c, Space(16) & Padr("Reason for NCP             :", 30, " ") & Space(1) & Padr(rs1("ncpreason"), 50, " ")
         i = i + 1
         Print #c, Space(16) & Padr("Action Taken               :", 30, " ") & Space(1) & Padr(rs1("actiontaken"), 50, " ")
         i = i + 1
         Print #c, Space(16) & Padr("Result of Action Taken     :", 30, " ") & Space(1) & Padr(rs1("Result"), 50, " ")
         i = i + 1
         Print #c, Space(16) & Padr("Feedback Given to Supplier :", 30, " ") & Space(1) & Padr(rs1("feedback"), 50, " ")
         i = i + 1
         Print #c, Chr(27) & "E" & Space(37) & Padr("Bales :", 10, " ") & Padr(rs1("passbl"), 8, " ");
         Print #c, Space(6) & Padr("Kgs   :", 10, " ") & Padr(INF(rs1("netwt"), 3), 14, " ");
         Print #c, Space(8) & Padr("Value :", 10, " ") & "Rs." & Padr(INF(rs1("value"), 2), 14, " ") & Chr(27) & "F"
         i = i + 1
         Print #c,
         i = i + 1
         
         rs1.MoveNext
         
            If i >= PageLen Then
               Print #c, Space(5) + String(145, "-")
               Print #c, Chr(12)
               i = 0
               Call header1(CStr(From_date1), CStr(To_date1), i, pg1)
            End If
         
         
      Loop
           
            If i >= PageLen Then
            Print #c, Space(5) + String(145, "-")
            Print #c, Chr(12)
            i = 0
            Call header1(CStr(From_date1), CStr(To_date1), i, pg1)
            End If
            Print #c, Space(5) + String(145, "-")
            Close #c
            c = FreeFile
            Open "c:\cd.bat" For Output As #c
            Print #c, "cd\"
            Print #c, "c:"
            Print #c, "cd\"
            Print #c, "type cd.txt>prn"
            Close #c
            RPTV.txtfile = "c:\cd.txt"
            RPTV.Batfile = "c:\cd.bat"
                  
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub
Private Sub Form_Load()
DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
Set DB = New Connection
DB.Open connectstring
   
    If (Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty) Then
    Set Rs = New Recordset
    Rs.Open "select distinct ARRDATE as Fields from RM_ARRIVAL where  DIVCODE = '" & Divcode & "' and ARRDATE between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and (passed is null or passed = 'Y')", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        Set DataCombo1.RowSource = Rs
        Set DataCombo2.RowSource = Rs
        DataCombo1.ListField = "fields"
        DataCombo2.ListField = "fields"
     If Not Rs.EOF Then
         Rs.MoveFirst
         DataCombo1.Text = Rs(0)
      End If
     If Not Rs.EOF Then
         Rs.MoveLast
         DataCombo2.Text = Rs(0)
      End If
            
    End If
    End If
End Sub
Public Sub header1(From_date1 As String, To_date1 As String, i As Integer, pg1 As Integer)
        Print #c,
        SR = CStr(pdate) + Space(2)
        Print #c, Space(5) & Chr(27) & "E" & CENTRE(DIVNAME, 80, " ") & Chr(27) & "F"
        Print #c, Chr(15)
        Print #c, Space(5) & Chr(27) & "E" & "Cotton NCP Report " & Chr(27) & "F" & " from " & Format(From_date1, "DD/MM/YY") & " to " & Format(To_date1, "DD/MM/YY");
        Print #c, Space(82) & Format(pdate, "DD/MM/YY") & " Pg.: " & Padl(pg1, 3, " ")
        Print #c, Space(5) + String(145, "-")
        Print #c, Space(5) + "  Date     Details  Supplier Name                 Broker Name                Mill   Party  PO.No  NCP Qty  Unit   CTRNO  Cotton    FM        MD  "
        Print #c, Space(5) + "           of NCP                                                           LotNo   LotNo                                Clerk "
        Print #c, Space(5) + String(145, "-")
        i = 9
End Sub

