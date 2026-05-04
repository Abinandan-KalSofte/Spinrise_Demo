VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form IssurCharrep 
   Caption         =   "IssVariertywise"
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
      Left            =   3015
      TabIndex        =   7
      Top             =   4245
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
      Left            =   4575
      TabIndex        =   6
      Top             =   4245
      Width           =   930
   End
   Begin VB.Frame Frame1 
      Height          =   2460
      Left            =   1650
      TabIndex        =   0
      Top             =   1455
      Width           =   5190
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2040
         TabIndex        =   10
         Top             =   1260
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
         Visible         =   0   'False
         Width           =   2505
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2040
         TabIndex        =   9
         Top             =   1200
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   101318657
         CurrentDate     =   39275
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   2040
         TabIndex        =   11
         Top             =   720
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
         TabIndex        =   12
         Top             =   720
         Width           =   1935
         _ExtentX        =   3413
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
         TabIndex        =   5
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
         TabIndex        =   4
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
         TabIndex        =   3
         Top             =   1830
         Width           =   435
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Varietywise Issue - Chart"
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
         TabIndex        =   2
         Top             =   120
         Width           =   5130
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2655
      Left            =   1530
      TabIndex        =   8
      Top             =   1425
      Width           =   5445
      _ExtentX        =   9604
      _ExtentY        =   4683
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "IssueChartRep.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "IssurCharrep"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection
Dim ResultRs As Recordset

Private Sub CmdExit_Click()
On Error GoTo cmdexit_Click_Error

Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form IssurCharrep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdexit_LostFocus()
On Error GoTo cmdexit_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
cmdexit_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_LostFocus of Form IssurCharrep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

IssurCharrep.DataCombo1.Text = IssurCharrep.DTPicker1.value
IssurCharrep.DataCombo2.Text = IssurCharrep.DTPicker2.value

If Len(IssurCharrep.Combo1.Text) = 0 Then
    MsgBox "Select any Type", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Date1 = IssurCharrep.DataCombo1.Text
Date2 = IssurCharrep.DataCombo2.Text
If Combo1.Text = " S - Sales" Or Combo1.Text = " T - Transfer" Or Combo1.Text = " P - Production" Then
ISSTYPE = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
Else
MsgBox "Selecte the Valid Type", vbInformation, head
Combo1.Text = ""
Combo1.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
If Repindex = 123 Then
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno AND a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
    '*=
    'Rs.Open "select a.varcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where  b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.varcode ", db, adOpenStatic
    Rs.Open "select a.varcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and a.lotdt=b.lotdt inner join rm_issh c on  C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno left join rm_count d on  d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code   Where  a.divcode = '" & Divcode & "'   and  c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.varcode ", DB, adOpenStatic
    
    If Rs.EOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    End If
ElseIf Repindex = 124 Then
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno AND a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
    '*=
    'Rs.Open "select a.cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where  b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", db, adOpenStatic
    Rs.Open "select a.cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt " & _
    " inner join rm_issh c on C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno " & _
    " left join rm_count d on d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code " & _
    " Where a.divcode = '" & Divcode & "' and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", DB, adOpenStatic
    
    If Rs.EOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    End If
End If
ProdnChart.Show

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form IssurCharrep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.Open connectstring
Set Rs = New Recordset
Set ResultRs = New Recordset
Combo1.Visible = True
'Rs.Open "select distinct a.docdt from rm_issh a ,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and  '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' order by a.docdt", DB, adOpenStatic
Rs.Open "select distinct a.docdt from rm_issh a ,rm_issb b where a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' order by a.docdt", DB, adOpenStatic
If Not Rs.EOF Then
   Set DataCombo1.RowSource = Rs
   Set DataCombo2.RowSource = Rs
   DataCombo1.ListField = "docdt"
   DataCombo2.ListField = "docdt"
   Rs.MoveFirst
   DataCombo1.Text = Rs(0)
   Rs.MoveLast
   DataCombo2.Text = Rs(0)
  
    
   Combo1.AddItem " S - Sales"
   Combo1.AddItem " T - Transfer"
   Combo1.AddItem " P - Production"
   Combo1.Text = " P - Production"
   
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
    DTPicker1.Height = DataCombo1.Height

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    DTPicker2.Height = DataCombo2.Height
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
    DTPicker1.Height = DataCombo1.Height

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    DTPicker2.Height = DataCombo2.Height
    ''''''''''''''''''''''

   Screen.MousePointer = 0
   Exit Sub
End If
If Repindex = 123 Then
    Label4.Caption = "Varietywise Issue - Chart"
    Me.Caption = "Varietywise Issue - Chart"
ElseIf Repindex = 124 Then
    Label4.Caption = "Countwise Issue - Chart"
    Me.Caption = "Countwise Issue - Chart"
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form IssurCharrep", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form IssurCharrep", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form IssurCharrep", vbInformation, head
Screen.MousePointer = 0
End Sub


