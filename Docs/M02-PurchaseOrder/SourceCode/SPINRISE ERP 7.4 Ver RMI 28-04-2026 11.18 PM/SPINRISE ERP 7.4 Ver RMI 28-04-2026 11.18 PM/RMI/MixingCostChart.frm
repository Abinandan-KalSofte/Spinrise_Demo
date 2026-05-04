VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form MixingCostChart 
   Caption         =   "Mixing Cost Chart"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   10935
   ScaleWidth      =   20250
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdreport 
      Caption         =   "&Chart"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2745
      TabIndex        =   9
      Top             =   3810
      Width           =   930
   End
   Begin VB.CommandButton cmdexit 
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
      Height          =   390
      Left            =   4305
      TabIndex        =   8
      Top             =   3810
      Width           =   930
   End
   Begin VB.Frame Frame1 
      Height          =   2460
      Left            =   1380
      TabIndex        =   0
      Top             =   1080
      Width           =   5190
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   2025
         TabIndex        =   1
         Top             =   1755
         Width           =   2505
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2040
         TabIndex        =   2
         Top             =   1290
         Width           =   1830
         _ExtentX        =   3228
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   2040
         TabIndex        =   3
         Top             =   750
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   635
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2040
         TabIndex        =   11
         Top             =   720
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   661
         _Version        =   393216
         Format          =   101318657
         CurrentDate     =   39275
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2520
         TabIndex        =   12
         Top             =   1320
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Format          =   101318657
         CurrentDate     =   39275
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
         Left            =   660
         TabIndex        =   7
         Top             =   750
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
         Left            =   660
         TabIndex        =   6
         Top             =   1290
         Width           =   705
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
         Left            =   660
         TabIndex        =   5
         Top             =   1830
         Width           =   435
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Varietywise Mixing- Chart"
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
         Left            =   30
         TabIndex        =   4
         Top             =   120
         Width           =   5130
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2655
      Left            =   1260
      TabIndex        =   10
      Top             =   990
      Width           =   5445
      _ExtentX        =   9604
      _ExtentY        =   4683
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "MixingCostChart.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "MixingCostChart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection
Dim ResultRs As Recordset

Private Sub CmdExit_Click()
Unload Me
End Sub

Private Sub cmdexit_LostFocus()
DTPicker1.SetFocus
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

MixingCostChart.DataCombo1.Text = MixingCostChart.DTPicker1.value
MixingCostChart.DataCombo2.Text = MixingCostChart.DTPicker2.value

Set rss = New Recordset
rss.Open "select distinct a.CNTCD from rm_issh a ,rm_issb b,rm_issuetype c where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and b.isstype=c.issue_code and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and  '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' AND c.ISSTYPE='P' order by a.CNTCD", DB, adOpenStatic
If Combo1.Text <> "" Then
     Do While Not rss.EOF
     If Combo1.Text = rss(0) Then
     GoTo MixingCostChart
     Else
     rss.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Type ", vbInformation, head
     Screen.MousePointer = 0
     Combo1.Text = ""
     Combo1.SetFocus
     Exit Sub
     End If
      MsgBox "Should Not Be Empty ", vbInformation, head
     Screen.MousePointer = 0
     Combo1.SetFocus
     Exit Sub
MixingCostChart:     Date1 = MixingCostChart.DataCombo1.Text
     Date2 = MixingCostChart.DataCombo2.Text
    cntcd = MixingCostChart.Combo1.Text

Set Rs = New Recordset
''rs.Open "select distinct f.varname,sum(b.isskgs),round(sum(b.isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where a.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & cntcd & "' and a.isstype='P' ),4) *100 ,round(avg((c.ratekg)*355.6187),2)as ratecandy,SUM(b.isskgs)*avg(ratekg) as value,ROUND(avg(ratekg),3) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and a.divcode='" & Divcode & "' and a.cntcd='" & cntcd & "' and a.isstype='P' group by f.varname", DB, adOpenStatic, adLockReadOnly
Rs.Open " select distinct f.varname,sum(b.isskgs),round(sum(b.isskgs)/ (select sum(isskgs) from rm_issb b,rm_issh a,rm_issuetype c  where  a.DOCDT Between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and b.isstype=c.issue_code and a.cntcd='" & cntcd & "' and c.isstype='P' ),4) *100 ,round(avg((c.ratekg)*355.6187),2)as ratecandy,SUM(b.isskgs)*avg(ratekg) as value,ROUND(avg(ratekg),3) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f,rm_issuetype g Where b.LOTNO = c.LOTNO and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.ISSTYPE = b.ISSTYPE And c.varcode = f.varcode And a.Divcode = b.Divcode and b.isstype=g.issue_code and c.divcode=b.divcode and a.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.divcode='" & Divcode & "' and a.cntcd='" & cntcd & "' and g.isstype='P' group by f.varname ", DB, adOpenStatic, adLockReadOnly
If Rs.RecordCount = 0 Then
   MsgBox "No records found", vbInformation, head
'   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If
MIXCHART.Show

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form MixingCostChart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.Open connectstring
Set Rs = New Recordset
Set ResultRs = New Recordset
''rs.Open "select distinct a.docdt from rm_issh a ,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and  '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' AND A.ISSTYPE='P' order by a.docdt", DB, adOpenStatic
Rs.Open "select distinct a.docdt from rm_issh a ,rm_issb b,rm_issuetype c where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and b.isstype=c.issue_code and  a.docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and  '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' AND c.ISSTYPE='P' order by a.docdt", DB, adOpenStatic
If Not Rs.EOF Then
    Set DataCombo1.RowSource = Rs
    Set DataCombo2.RowSource = Rs
    DataCombo1.ListField = "docdt"
    DataCombo2.ListField = "docdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    DTPicker1.value = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
    DTPicker2.value = Rs(0)
    Call TypeLoading
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
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Combo1.tabIndex = 2
    cmdReport.tabIndex = 3
    CmdExit.tabIndex = 4
    
    
Else
    MsgBox "No Record Found For This Month", vbInformation, head
        ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    DTPicker1.Left = DataCombo1.Left
    DTPicker1.Width = DataCombo1.Width
    DTPicker1.Top = DataCombo1.Top

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

    Screen.MousePointer = 0
    Exit Sub
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form MixingCostChart", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
MsgBox "Data should be with in the Range", vbInformation, head
    DTPicker1.value = yfdate
    DataCombo1.Text = DTPicker1.value
Else
    DataCombo1.Text = DTPicker1.value
End If
Call TypeLoading

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form MixingCostChart", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
MsgBox "Data should be with in the Range", vbInformation, head
    DTPicker2.value = yfdate
    DataCombo2.Text = DTPicker2.value
Else
    DataCombo2.Text = DTPicker2.value
End If
Call TypeLoading

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form MixingCostChart", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub TypeLoading()
On Error GoTo TypeLoading_Error

Combo1.Visible = True
Combo1.Clear
Set ResultRs = New Recordset
''ResultRs.Open "select distinct a.CNTCD from rm_issh a ,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.docdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and  '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' AND A.ISSTYPE='P' order by a.CNTCD", DB, adOpenStatic
ResultRs.Open "select distinct a.CNTCD from rm_issh a ,rm_issb b,rm_issuetype c where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and b.isstype=c.issue_code and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and  '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' AND c.ISSTYPE='P' order by a.CNTCD", DB, adOpenStatic
If Not ResultRs.EOF Then
    Do While Not ResultRs.EOF
        Combo1.AddItem ResultRs(0)
        ResultRs.MoveNext
    Loop
    Combo1.ListIndex = 0
End If

Exit Sub
TypeLoading_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TypeLoading of Form MixingCostChart", vbInformation, head
Screen.MousePointer = 0
End Sub
