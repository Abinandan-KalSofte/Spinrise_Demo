VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form VarietywiseReceipt 
   Caption         =   "Varietywise - Receipt"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   2460
      Left            =   1350
      TabIndex        =   2
      Top             =   1290
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
         TabIndex        =   3
         Top             =   1755
         Width           =   2505
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2040
         TabIndex        =   4
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
         TabIndex        =   5
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
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2040
         TabIndex        =   12
         Top             =   1320
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   173932545
         CurrentDate     =   39275
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2040
         TabIndex        =   11
         Top             =   720
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   173932545
         CurrentDate     =   39275
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Varietywise Receipt - Chart"
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
         TabIndex        =   9
         Top             =   120
         Width           =   5130
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
         TabIndex        =   8
         Top             =   1830
         Width           =   435
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
         TabIndex        =   7
         Top             =   1290
         Width           =   705
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
         TabIndex        =   6
         Top             =   750
         Width           =   885
      End
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
      Left            =   4275
      TabIndex        =   1
      Top             =   4020
      Width           =   930
   End
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
      Left            =   2715
      TabIndex        =   0
      Top             =   4020
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2655
      Left            =   1230
      TabIndex        =   10
      Top             =   1200
      Width           =   5445
      _ExtentX        =   9604
      _ExtentY        =   4683
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "VarietywiseReceipt.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "VarietywiseReceipt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection

Dim ResultRs As Recordset

Private Sub cmdExit_Click()
On Error GoTo cmdexit_Click_Error

Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form VarietywiseReceipt", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdexit_LostFocus()
On Error GoTo cmdexit_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
cmdexit_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_LostFocus of Form VarietywiseReceipt", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

VarietywiseReceipt.DataCombo1.Text = VarietywiseReceipt.DTPicker1.value
VarietywiseReceipt.DataCombo2.Text = VarietywiseReceipt.DTPicker2.value

date1 = VarietywiseReceipt.DataCombo1.Text
date2 = VarietywiseReceipt.DataCombo2.Text
Set Rsst = New Recordset
  Rsst.Open "select distinct catcd + ' - ' +catname from rm_cat ", DB, adOpenStatic
     If Combo1.Text <> "" Then
     Do While Not Rsst.EOF
     If Combo1.Text = Rsst(0) Or Combo1.Text = "ALL - ALL" Then
     GoTo VareityReceipt
     Else
     Rsst.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Type ", vbInformation, head
     Screen.MousePointer = 0
     Combo1.Text = ""
     Combo1.SetFocus
     Exit Sub
     End If
      MsgBox "Type Should Not be Empty", vbInformation, head
     Screen.MousePointer = 0
     Combo1.SetFocus
VareityReceipt: catcd = Trim(Mid$(VarietywiseReceipt.Combo1.Text, 1, InStr(VarietywiseReceipt.Combo1.Text, "-") - 1))

Set Rs = New Recordset
If catcd <> "ALL" Then
    Rs.Open "SELECT VARNAME,SUM(NETWT) FROM RM_LOT A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND A.LOTDT BETWEEN '" & Format(date1, "YYYY-MM-DD") & "' AND '" & Format(date2, "YYYY-MM-DD") & "' AND A.CATCD='" & catcd & "' GROUP BY VARNAME ", DB, adOpenStatic
Else
    Rs.Open "SELECT VARNAME,SUM(NETWT) FROM RM_LOT A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND A.LOTDT BETWEEN '" & Format(date1, "YYYY-MM-DD") & "' AND '" & Format(date2, "YYYY-MM-DD") & "'  GROUP BY VARNAME ", DB, adOpenStatic
End If

If Rs.RecordCount = 0 Then
   MsgBox "No records found", vbInformation, head
   'MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If
Varrecchart.Show

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form VarietywiseReceipt", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.Open connectstring
Set Rs = New Recordset
Set ResultRs = New Recordset
Rs.Open "select distinct lotdt from rm_lot a where a.lotdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and  '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' order by a.lotdt", DB, adOpenStatic
If Not Rs.EOF Then
    Set DataCombo1.RowSource = Rs
    Set DataCombo2.RowSource = Rs
    DataCombo1.ListField = "lotdt"
    DataCombo2.ListField = "lotdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
    Combo1.Visible = True
    ResultRs.Open "select distinct catcd + ' - ' +catname from rm_cat ", DB, adOpenStatic
    If Not ResultRs.EOF Then
        Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            ResultRs.MoveNext
        Loop
        Combo1.AddItem "ALL - ALL"
        Combo1.ListIndex = 0
    End If
    
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form VarietywiseReceipt", vbInformation, head
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
Set ResultRs = New Recordset
ResultRs.Open "select distinct catcd + ' - ' +catname from rm_cat ", DB, adOpenStatic
    If Not ResultRs.EOF Then
        Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            ResultRs.MoveNext
        Loop
        Combo1.AddItem "ALL - ALL"
        Combo1.ListIndex = 0
    End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form VarietywiseReceipt", vbInformation, head
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
Set ResultRs = New Recordset
ResultRs.Open "select distinct catcd + ' - ' +catname from rm_cat ", DB, adOpenStatic
    If Not ResultRs.EOF Then
        Do While Not ResultRs.EOF
            Combo1.AddItem ResultRs(0)
            ResultRs.MoveNext
        Loop
        Combo1.AddItem "ALL - ALL"
        Combo1.ListIndex = 0
    End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form VarietywiseReceipt", vbInformation, head
Screen.MousePointer = 0
End Sub

