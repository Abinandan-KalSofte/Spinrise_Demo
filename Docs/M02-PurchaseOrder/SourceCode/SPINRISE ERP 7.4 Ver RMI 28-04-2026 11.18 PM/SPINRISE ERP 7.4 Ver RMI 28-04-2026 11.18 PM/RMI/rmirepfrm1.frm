VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form rmireports2 
   ClientHeight    =   6960
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6960
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport crr 
      Left            =   315
      Top             =   3555
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command4 
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
      Height          =   375
      Left            =   6000
      TabIndex        =   23
      Top             =   5505
      Visible         =   0   'False
      Width           =   1350
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1440
      TabIndex        =   18
      Top             =   4440
      Visible         =   0   'False
      Width           =   7020
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
   Begin VB.Frame Frame1 
      Height          =   3480
      Left            =   1500
      TabIndex        =   0
      Top             =   870
      Width           =   6855
      Begin VB.CheckBox Check1 
         Caption         =   "ALL"
         Height          =   375
         Left            =   2160
         TabIndex        =   24
         Top             =   2280
         Visible         =   0   'False
         Width           =   1455
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
         Left            =   2160
         TabIndex        =   14
         Text            =   "Combo1"
         Top             =   1800
         Visible         =   0   'False
         Width           =   2385
      End
      Begin VB.ComboBox Combo2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   2160
         TabIndex        =   13
         Text            =   "Combo2"
         Top             =   2880
         Visible         =   0   'False
         Width           =   4155
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2145
         TabIndex        =   10
         Top             =   1320
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   556
         _Version        =   393216
         Format          =   169148417
         CurrentDate     =   38623
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2130
         TabIndex        =   8
         Top             =   780
         Visible         =   0   'False
         Width           =   1785
         _ExtentX        =   3149
         _ExtentY        =   609
         _Version        =   393216
         Format          =   169148417
         CurrentDate     =   38623
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2100
         TabIndex        =   9
         Top             =   1282
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
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2115
         TabIndex        =   11
         Top             =   1800
         Width           =   4170
         _ExtentX        =   7355
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   360
         Left            =   2100
         TabIndex        =   12
         Top             =   2340
         Visible         =   0   'False
         Width           =   4200
         _ExtentX        =   7408
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   2085
         TabIndex        =   16
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
      Begin VB.Label Label6 
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
         Height          =   285
         Left            =   720
         TabIndex        =   7
         Top             =   2910
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Category"
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
         Left            =   720
         TabIndex        =   6
         Top             =   2390
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
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
         Width           =   7620
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Category"
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
         Left            =   720
         TabIndex        =   3
         Top             =   1871
         Width           =   765
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
         Left            =   720
         TabIndex        =   2
         Top             =   1352
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
         Left            =   720
         TabIndex        =   1
         Top             =   833
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
      Left            =   4770
      TabIndex        =   17
      Top             =   5505
      Width           =   930
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
      Height          =   390
      Left            =   3345
      TabIndex        =   15
      Top             =   5505
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3630
      Left            =   1410
      TabIndex        =   5
      Top             =   810
      Width           =   7050
      _ExtentX        =   12435
      _ExtentY        =   6403
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "rmirepfrm1.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8400
      TabIndex        =   22
      Top             =   720
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "rmireports2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim dv1 As DataEnvironment1
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim LB3 As RptLabel
Dim LB4 As RptLabel
Dim LB5 As RptLabel
Private Sub CmdExit_Click()
On Error GoTo cmdexit_Click_Error
intervalMinutes = -1
Screen.MousePointer = 0
Unload Me
intervalMinutes = -1
Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
Dim l1, l2 As RptLabel
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim U As String
Dim v As String
Dim W As String
intervalMinutes = -1
On Error GoTo cmdreport_Click_Error
intervalMinutes = -1
Call openconnection
Screen.MousePointer = 11

Select Case Repindex
Case 774

    f1 = Format(DTPicker1.value, "yyyy-mm-dd")
    t1 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    BRK1 = Right(DataCombo3.Text, 7)
    BRK2 = ""
    'Call brokerassessment(f1, t1, CStr(BRK1))
    Call brokerassessmentsin(CStr(f1), t1, CStr(BRK1), CStr(BRK2), UserFooter1.SelectedStr)
    intervalMinutes = -1
    Exit Sub



Case 74
    f1 = Format(DTPicker1.value, "yyyy-mm-dd")
    t1 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    BRK1 = Right(DataCombo3.Text, 7)
    BRK2 = Right(DataCombo4.Text, 7)
    'Call brokerassessment(f1, t1, CStr(BRK1))
    Call brokerassessment(CStr(f1), t1, CStr(BRK1), CStr(BRK2))
    intervalMinutes = -1
    Exit Sub

Case 62

U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
'Call IssueVReport1(CStr(u), CStr(v))
Screen.MousePointer = 0
    
    
    
Case 125
    
    f1 = Format(DTPicker1.value, "yyyy-mm-dd")
    t1 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
    sup1 = Right(DataCombo3.Text, 7)
    sup2 = Left(DataCombo4.Text, 6)
    If DataCombo3.MatchedWithList Then
    Call supassessment(CStr(f1), t1, CStr(sup1), UserFooter1.SelectedStr)
    intervalMinutes = -1
    Screen.MousePointer = 0
       Exit Sub
       Else
       MsgBox "Select the Valid Supplier", vbInformation, head
        Screen.MousePointer = 0
        DataCombo3.Text = ""
        DataCombo3.SetFocus
        intervalMinutes = -1
       Exit Sub
    End If

Case 52
    Screen.MousePointer = 11
    rmipermcissue.Show
    Set LB1 = rmipermcissue.Sections(2).Controls("list")
    Set LB2 = rmipermcissue.Sections(2).Controls("list1")
    Set LB3 = rmipermcissue.Sections(2).Controls("list2")
    LB1.Caption = "Market Committee Report (Consumption) From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = DataCombo2.Text
    LB3.Caption = "(" & DataCombo3.Text & ")"
    Set dv1 = New DataEnvironment1
    dv1.rsCommand2_Grouping.Open " SHAPE {select lotno,varcode, bale=(case when bblflg='B' then bales end), bora=(case when bblflg='R' then bales end),isswt, ratekg * isswt'value' From rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' order by lotno,varcode}  AS Command2 COMPUTE command2 BY 'lotno','varcode' ", DB, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        rmipermcissue.Show
        Screen.MousePointer = 0
    End If
intervalMinutes = -1
Case 53
    'If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
    '    a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
    '    b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
    'Else
    '    MsgBox "Enter a Valid Date", vbInformation, head
    'End If
        a = Format(Trim(DTPicker1.value), "yyyy-mm-dd")
        b = Format(Trim(DTPicker2.value), "yyyy-mm-dd")
        If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    Call marcommrecReport(CStr(a), CStr(b), UserFooter1.SelectedStr)
    Screen.MousePointer = 0
    intervalMinutes = -1
    Exit Sub
Case 203
        a = Format(Trim(DTPicker1.value), "yyyy-mm-dd")
        b = Format(Trim(DTPicker2.value), "yyyy-mm-dd")
        If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    intervalMinutes = -1
    '(CStr(a), CStr(b))
    Screen.MousePointer = 0
    Exit Sub


Screen.MousePointer = 11
Set LB1 = rmipermcreceipt.Sections(2).Controls("list")
Set LB2 = rmipermcreceipt.Sections(2).Controls("list1")
Set LB3 = rmipermcreceipt.Sections(2).Controls("list2")
LB1.Caption = "Market Committee Report(Receipts)  From " & DataCombo1.Text & " To " & DataCombo2.Text
LB2.Caption = DataCombo2.Text
LB3.Caption = "(" & DataCombo3.Text & ")"
ag:

If dv1.rsCommand2_Grouping.State = adStateOpen Then
dv1.rsCommand2_Grouping.Close
End If

On Error GoTo errd:
dv1.rsCommand2_Grouping.Open " SHAPE {select a.arrdate,a.supcd,f.slname,a.areacode,b.areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end),a.netwt,a.netwt*l.ratekg'Value' from rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and l.lotno=a.lotno order by a.arrdate }  AS command2 COMPUTE command2 BY 'arrdate'", cn, adOpenStatic, adLockBatchOptimistic

If dv1.rsCommand2_Grouping.RecordCount = 0 Then
    MsgBox "No record Found", vbInformation
    Screen.MousePointer = 0
    Exit Sub
Else
    Set rmipermcreceipt.DataSource = dv1
    rmipermcreceipt.Show
    Screen.MousePointer = 0
End If

errd:
If Err.Number = 3704 Then
GoTo ag:
End If
Screen.MousePointer = 0

Case 54
      'If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
            If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo1.SetFocus
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
            
            
            
            
      'Else
      '      MsgBox "Enter a Valid Date", vbInformation, head
      'End If
            Call pendinvReport(CStr(a), CStr(b))
            Screen.MousePointer = 0
'Screen.MousePointer = 11
'pendinginvoice.Show
'Set LB1 = pendinginvoice.Sections(2).Controls("list")
'LB1.Caption = "Pending Invoices From " & DataCombo1.Text & " To " & DataCombo2.Text
'
'If dv1.rsCommand1.State = 1 Then
'    dv1.rsCommand1.Close
'End If
'dv1.rsCommand1.Open "select c.pjno,a.arrdate ,b.slname ,a.varcode,c.billno,c.billdt,c.lotno,bales=(case when a.bbflag='B' then c.bales end),bora=(case when a.bbflag='R' then c.bales end),a.netwt , 100 * c.ratekg 'rate/quintal',c.ratekg*a.netwt'amount'from rm_arrival a,fa_slmas b,rm_lot c Where a.supcd = b.slcode and c.lotno=a.lotno and c.pjno is null ", cn, adOpenStatic, adLockBatchOptimistic
'If dv1.rsCommand1.RecordCount = 0 Then
'    MsgBox "No record Found", vbInformation
'    Screen.MousePointer = 0
'    Exit Sub
'Else
'    pendinginvoice.Show
'       Screen.MousePointer = 0
'End If


Case 55
Screen.MousePointer = 11
U = Format(DTPicker1.value, "dd/mm/yyyy")
v = Format(DTPicker2.value, "dd/mm/yyyy")
Call PartyDtReport(CStr(U), CStr(v), Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)), divname)
'Call PartyDtReport(CStr(u), CStr(v))
Screen.MousePointer = 0
Exit Sub
    
    Set LB1 = rptdatewise.Sections(2).Controls("list")
    Set LB2 = rptdatewise.Sections(2).Controls("list1")
    LB1.Caption = "Datewise Receipts List  From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Mid$(DataCombo3.Text, 3) & ")"

    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
    End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
    'dv1.rsCommand2_Grouping.Open "SHAPE{select r.arrdate,r.supcd,a.slname,d.slname'broker',r.plotno,r.lotno,ar.areaname,r.varcode, Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end),r.netwt,c.candyrate, c.ratekg*100 'rate/quintal', r.netwt*c.ratekg'Value' from rm_arrival r,fa_slmas a,fa_slmas d,rm_area ar,rm_cont c where a.slcode=r.supcd and d.slcode = r.brkcd and ar.areacode=r.areacode and c.contno=r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.catcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' order by arrdate }AS COMMAND2 compute COMMAND2 by 'arrdate' ", cn, adOpenStatic, adLockBatchOptimistic
    dv1.rsCommand2_Grouping.Open "SHAPE{select r.arrdate,r.supcd,a.slname,d.slname'broker',r.plotno,r.lotno,ar.areaname,r.varcode, Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end),r.netwt,c.candyrate, (c.candyrate/355.6187)*100 'rate/quintal', r.netwt*(c.candyrate/355.6187)'Value' from rm_arrival r,fa_slmas a,fa_slmas d,rm_area ar,rm_cont c where a.slcode=r.supcd and d.slcode = r.brkcd and ar.areacode=r.areacode and c.contno=r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.catcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' order by arrdate }AS COMMAND2 compute COMMAND2 by 'arrdate' ", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set rptdatewise.DataSource = dv1
        rptdatewise.Show
'u = Format(DataCombo1.Text, "dd/mm/yyyy")
'v = Format(DataCombo2.Text, "dd/mm/yyyy")
'If DataCombo3.Text = "" Then
'
'End If
'Call PartyDtReport(CStr(u), CStr(v), Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)), divname)
''Call PartyDtReport(CStr(u), CStr(v))
'        Screen.MousePointer = 0
End If
End If
Screen.MousePointer = 0


Case 59

    Screen.MousePointer = 11
    
    U = Format(DataCombo1.Text, "dd/mm/yyyy")
    v = Format(DataCombo2.Text, "dd/mm/yyyy")
    W = Trim(DataCombo3.Text)
    'Call QuarReport(CStr(u), CStr(v), DIVNAME)
    Screen.MousePointer = 0
    Exit Sub
    
    Set LB1 = quarterly.Sections(2).Controls("list")
    LB1.Caption = "QUARTERLY RETURN OF MATERIALS AND GOODS MANUFACTURED (RULE 55 & 175C(4)) FOR THE QUARTER ENDING " & DataCombo2.Text & " (" & DataCombo1.Text & " TO " & DataCombo2.Text & ")"
    Set LB1 = quarterly.Sections(5).Controls("Ldate")
    LB1.Caption = Format(pdate, "DD/MM/YYYY")
    Set Rs = New Recordset
    Rs.Open "select DIVNAME,ADD1,ADD2,CITY from pp_DIVMAS where DIVCODE ='" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    Set LB1 = quarterly.Sections(5).Controls("Lplace")
    LB1.Caption = Rs(3)
    Set LB1 = quarterly.Sections(2).Controls("divname")
    LB1.Caption = Rs(0)
    Set LB1 = quarterly.Sections(2).Controls("add1")
    LB1.Caption = Rs(1)
    Set LB1 = quarterly.Sections(2).Controls("add2")
    LB1.Caption = Rs(2)
    Set LB1 = quarterly.Sections(5).Controls("fordivname")
    LB1.Caption = "For " & Rs(0)

    If dv1.rsCommand1.State = 1 Then
        dv1.rsCommand1.Close
    End If
    dv1.rsCommand1.Open " select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(k.recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.recep,0)) - sum(isnull(k.issue,0)) as 'Closing',  " & _
                        " sum(isnull(k.openbal,0)) + sum(isnull(k.recep,0)) as 'totalreckgs', sum(isnull(k.OpenBale,0)) +  sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) -  sum(isnull(k.IssBorah,0)) as 'Closborah',g.varname, sum(isnull(k.openbale,0)) as openbale, sum(isnull(k.openborah,0)) as openborah, sum(isnull(k.recpbale,0)) as recbale, sum(isnull(k.recpborah,0)) as recborah, sum(isnull(k.issbale,0)) as issbale, sum(isnull(k.issborah, 0)) As issborah  from ((  select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg   IN ('R','H') then isnull(e.bales,0) - isnull(t.bales,0) end) as 'OpenBorah'," & _
                        " 0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale, 0 as IssBorah from    (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',Count (c.baleno) 'Bales' from rm_issb c,rm_lot b where LOTYEAR='" & Year(yfdate) & "' AND c.docdt < ' " & Format(DataCombo1, "yyyy - mm - dd") & " 'and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode ='" & Divcode & "'  group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt <  " & _
                        " ' " & Format(DataCombo1, "yyyy - mm - dd") & " ' " & _
                        " and e.divcode = t.divcode  and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and  e.catcd = 'C' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union   select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep', case when e.bblflg = 'B' then e.bales end 'recpBale',case when  e.bblflg    IN ('R','H') then e.bales end 'recpBorah',0 as 'Issue', 0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where " & _
                        " LOTYEAR='" & Year(yfdate) & "' AND e.lotdt between  ' " & Format(DataCombo1, "yyyy - mm - dd") & " ' and ' " & Format(DataCombo2, "yyyy - mm - dd") & " 'and e.catcd = 'C' and e.lotno = c.lotno union   select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as 'Openbal', 0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale, 0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale', case when c.bblflg    IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where LOTYEAR='" & Year(yfdate) & "' AND a.docdt between " & _
                        " ' " & Format(DataCombo1, "yyyy - mm - dd") & " ' and ' " & Format(DataCombo2, "yyyy - mm - dd") & " 'and a.catcd = 'C' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = 'C' group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot f,rm_var g Where LOTYEAR='" & Year(yfdate) & "' AND f.lotno = k.lotno And f.lotdt = k.lotdt And f.catcd = k.catcd And f.divcode = k.divcode  and f.varcode = g.varcode group by k.divcode,k.catcd,  k.lotno , k.lotdt, g.varname ", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set quarterly.DataSource = dv1
        quarterly.Show
        Screen.MousePointer = 0
    End If
intervalMinutes = -1
Case 60
    
    Screen.MousePointer = 11
U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
W = Trim(DataCombo3.Text)
Y = Trim(DataCombo4.Text)
Call PartyReport(CStr(U), CStr(v), CStr(W), CStr(Y))
Exit Sub
    
    Set LB1 = partywise.Sections(2).Controls("list")
    Set LB2 = partywise.Sections(2).Controls("list1")
    LB1.Caption = "Partywise Receipt List From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Mid$(DataCombo3.Text, 3) & ")"

    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
        End If

    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
        dv1.rsCommand2_Grouping.Open "SHAPE {select r.supcd,a.slname,e.slname'broker',r.plotno,r.lotno ,ar.areaname,r.varcode,r.arrdate,Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end), r.netwt , C.candyrate, (C.candyrate/355.6187) * 100 'Rate/Quintal', (C.candyrate/355.6187)*r.netwt'Value' from rm_arrival r,fa_slmas a,rm_area ar,rm_cont c,fa_slmas e where r.supcd = a.slcode and r.brkcd = e.slcode and ar.areacode = r.areacode and c.contno = r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.supcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "'  }  AS Command2 COMPUTE Command2 BY 'supcd','broker','slname'", cn, adOpenStatic, adLockOptimistic

    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
    Exit Sub
    Else
        Set partywise.DataSource = dv1
        partywise.Show
        Screen.MousePointer = 0
    End If
End If
Screen.MousePointer = 0
Case 351
    
Screen.MousePointer = 11
'u = Format(DataCombo1.Text, "dd/mm/yyyy")
'v = Format(DataCombo2.Text, "dd/mm/yyyy")
W = Trim(Right$(DataCombo3.Text, 6))
Y = Trim(Right$(DataCombo4.Text, 6))
v = Trim(Combo2.Text)
intervalMinutes = -1
'(CStr(v), CStr(w), CStr(y))
Exit Sub
    
    Set LB1 = partywise.Sections(2).Controls("list")
    Set LB2 = partywise.Sections(2).Controls("list1")
    LB1.Caption = "Partywise Arrival List From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Mid$(DataCombo3.Text, 3) & ")"

    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
        End If

    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
        dv1.rsCommand2_Grouping.Open "SHAPE {select r.supcd,a.slname,e.slname'broker',r.plotno,r.lotno ,ar.areaname,r.varcode,r.arrdate,Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end), r.netwt , C.candyrate, (C.candyrate/355.6187) * 100 'Rate/Quintal', (C.candyrate/355.6187)*r.netwt'Value' from rm_arrival r,fa_slmas a,rm_area ar,rm_cont c,fa_slmas e where r.supcd = a.slcode and r.brkcd = e.slcode and ar.areacode = r.areacode and c.contno = r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.supcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "'  }  AS Command2 COMPUTE Command2 BY 'supcd','broker','slname'", cn, adOpenStatic, adLockOptimistic

    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
    Exit Sub
    'Else
    '    Set partywise.DataSource = dv1
    '    partywise.Show
    '    Screen.MousePointer = 0
    End If
End If
intervalMinutes = -1
Screen.MousePointer = 0

Case 67

    
    Screen.MousePointer = 11
    Set LB1 = brkdate.Sections(2).Controls("list")
    LB1.Caption = "Brokerwise Purchase Analysis From " & DataCombo1.Text & " To " & DataCombo2.Text

    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
        End If
    dv1.rsCommand2_Grouping.Open "SHAPE {select b.slcode,b.slname,d.slcode'discode',d.slname'disname',a.contno,a.contdt,dlytype=(case when dlytype = 'S' then 'Spot' else 'FOR' end),c.varname,a.candyrate,a.recqty from rm_cont a,fa_slmas b,rm_var c,fa_slmas d where a.supcd = b.slcode and a.varcode = c.varcode and a.supcd = d.slcode and contdt between '" & Format(DataCombo1.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' }  AS Command2 COMPUTE Command2 BY 'discode','disname'", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set brkdate.DataSource = dv1
        intervalMinutes = -1
        brkdate.Show
        Screen.MousePointer = 0
    End If
 intervalMinutes = -1
Case 68

      If DataCombo1.Text <> Empty And DataCombo2.Text <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a vilid Date", vbInformation, head
      End If
      Call marcommissReport(CStr(a), CStr(b))
      intervalMinutes = -1
      Screen.MousePointer = 0
      Exit Sub
        
    Screen.MousePointer = 11
    Set LB1 = rmipermcissue.Sections(2).Controls("list")
    LB1.Caption = "Market Committee Report (Consumption) From " & DataCombo1.Text & " To " & DataCombo2.Text
    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
        End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then

    dv1.rsCommand2_Grouping.Open "SHAPE{select lotno,varcode,bale=(case when bblflg='B' then bales end),bora=(case when bblflg='R' then bales end),isswt,ratekg*isswt'value'" & _
                                 " From rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'  order by lotno,varcode} as COMMAND2 compute COMMAND2 by 'lotno','varcode'", cn, adOpenStatic, adLockBatchOptimistic

    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set rmipermcissue.DataSource = dv1
        rmipermcissue.Show
        Screen.MousePointer = 0
    End If
    
End If
intervalMinutes = -1
Screen.MousePointer = 0
Case 61
intervalMinutes = -1
U = Format(DTPicker1.value, "dd/mm/yyyy")
v = Format(DTPicker2.value, "dd/mm/yyyy")
If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If


'If Combo2.Text = "P-Unit 1-Production" Then
'    typeflg = "P"
'ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'    typeflg = "Q"
'ElseIf Combo2.Text = "A-All Unit Production" Then
'    typeflg = "A"
'End If
typeflg = Trim(Left(Combo2.Text, 2))
intervalMinutes = -1
'(CStr(u), CStr(v), CStr(typeflg))
Screen.MousePointer = 0
'    End If
'End If
Screen.MousePointer = 0
Case 66
'    Call repproc2(issuecount)
'    Screen.MousePointer = 11
'    Set LB1 = issuecount.Sections(2).Controls("list")
'    Set LB2 = issuecount.Sections(2).Controls("list1")
'    LB1.Caption = "Countwise  Issue  Register  From " & DataCombo1.Text & " To " & DataCombo2.Text
'    LB2.Caption = "(" & Trim(Mid$(DataCombo3.Text, InStr(DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))) & ")"
'    'Set dv1 = New DataEnvironment1
'    If dv1.rsCommand5.State = 1 Then
'        dv1.rsCommand5.Close
'    End If
'        If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
'    'dv1.rsCommand5.Open " SHAPE {select c.cntcd,Qntl=cast(sum(b.isskgs*a.ratekg*100)/sum(b.isskgs) as varchar),Candy=cast(sum(b.isskgs*a.ratekg)*100/sum(b.isskgs)*355.6 as varchar) from rm_lot a,rm_issb b,rm_issh c ,rm_var d Where a.varcode = d.varcode and A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and b.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' Group By C.cntcd " & _
'    '                    " }  AS Command5 APPEND (( SHAPE {select a.cntcd,a.docno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_lot c,rm_issb d ,rm_var b Where c.varcode = b.varcode and  c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT and a.docno = d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg " & _
'    '                    " }  AS Command6 APPEND ({select a.cntcd ,d.docno,a.docdt,c.varcode,c.catcd,c.lotno,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by a.cntcd ,d.docno,c.varcode,a.docdt,c.catcd,c.lotno,c.bblflg,c.ratekg " & _
'    '                    " }  AS Command7 RELATE 'cntcd' TO 'cntcd','docno' to 'docno' ,'docdt' to 'docdt') AS Command7) AS Command6 RELATE 'cntcd' TO 'cntcd') AS Command6", cn, adOpenStatic, adLockBatchOptimistic
'     dv1.rsCommand5.Open "SHAPE {select a.cntcd,Qntl=cast(sum(d.isskgs*c.ratekg*100)/sum(d.isskgs) as varchar),Candy=cast(sum(d.isskgs*c.ratekg)*100/sum(d.isskgs)*355.6 as varchar) from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg " & _
'                         "}   AS Command5 APPEND (( SHAPE {select a.cntcd,a.docno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by cntcd,c.bblflg,a.docno,a.docdt,c.ratekg " & _
'                         "}   AS Command6 APPEND ({select a.cntcd ,d.docno,a.docdt,c.varcode,c.catcd,c.lotno,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d Where c.divcode = '" & divcode & "' and c.DIVCODE = d.divcode and c.catcd = d.catcd and c.lotno = d.lotno and c.lotdt = d.lotdt AND a.DIVCODE = d.DIVCODE AND a.ISSTYPE = d.ISSTYPE  AND a.DOCDT = d.DOCDT  and c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by a.cntcd ,d.docno,c.varcode,a.docdt,c.catcd,c.lotno,c.bblflg,c.ratekg " & _
'                         "}   AS Command7 RELATE 'cntcd' TO 'cntcd','docno' TO 'docno','docdt' TO 'docdt') AS Command7) AS Command6 RELATE 'cntcd' TO 'cntcd') AS Command6 ", cn, adOpenStatic
'    If dv1.rsCommand5.RecordCount = 0 Then
'        MsgBox "No record Found", vbInformation
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'        Set issuecount.DataSource = dv1
'        issuecount.Show
       'u = Format(DataCombo1.Text, "dd/mm/yyyy")
       'v = Format(DataCombo2.Text, "dd/mm/yyyy")
       U = Format(DTPicker1.value, "dd/mm/yyyy")
       v = Format(DTPicker2.value, "dd/mm/yyyy")
       If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       
       intervalMinutes = -1
       
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
        typeflg = Trim(Left(Combo2.Text, 2))
        '(CStr(u), CStr(v), DIVNAME, CStr(typeflg))
        Screen.MousePointer = 0
   ' End If
   ' End If
Case 220
       Screen.MousePointer = 11
       'u = Format(DataCombo1.Text, "dd/mm/yyyy")
       'v = Format(DataCombo2.Text, "dd/mm/yyyy")
       U = Format(DTPicker1.value, "dd/mm/yyyy")
       v = Format(DTPicker2.value, "dd/mm/yyyy")
       If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       
       intervalMinutes = -1
       
       
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
        typeflg = Trim(Left(Combo2.Text, 2))
        '(CStr(u), CStr(v), DIVNAME, CStr(typeflg))
        Screen.MousePointer = 0
        Exit Sub
Case 70
     Screen.MousePointer = 11
       'u = Format(DataCombo1.Text, "dd/mm/yyyy")
       'v = Format(DataCombo2.Text, "dd/mm/yyyy")
       U = Format(DTPicker1.value, "dd/mm/yyyy")
       v = Format(DTPicker2.value, "dd/mm/yyyy")
       If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       
       
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
        typeflg = Trim(Left(Combo2.Text, 2))
       '(CStr(u), CStr(v), DIVNAME, CStr(typeflg))
       Screen.MousePointer = 0
        Exit Sub
    
    'Call repproc2(issuemixcnt)

    Set LB1 = issuemixcnt.Sections(2).Controls("list")
    Set LB2 = issuemixcnt.Sections(2).Controls("list1")
    LB1.Caption = "Mix No. wise Issue  List  From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Trim(Mid$(DataCombo3.Text, InStr(DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))) & ")"
    'Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
    dv1.rsCommand5.Open "SHAPE {select d.mixgrpcd,Qntl=cast(sum(b.isskgs*a.ratekg*100)/sum(b.isskgs) as varchar),Candy=cast(sum(b.isskgs*a.ratekg)*100/sum(b.isskgs)*355.6187 as varchar) from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and a.lotdt = b.lotdt AND c.cntcd = d.cntcd and a.lotno = b.lotno and  a.catcd=b.catcd and a.cntcode = c.cntcd and C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT AND c.docno=b.docno and c.DOCDT  between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and b.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' Group By d.mixgrpcd}  AS Command5 " & _
                        "APPEND (( SHAPE {select e.mixgrpcd,a.cntcd,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_lot c,rm_issb d,rm_count e Where LOTYEAR='" & Year(yfdate) & "' AND  c.divcode = '" & Divcode & "' and d.DIVCODE = c.divcode and d.catcd = c.catcd and d.lotno = c.lotno and d.lotdt = c.lotdt AND A.DIVCODE = D.DIVCODE AND A.ISSTYPE = D.ISSTYPE AND A.DOCDT = D.DOCDT AND a.cntcd = e.cntcd and a.docno = d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by e.mixgrpcd,a.cntcd,c.bblflg,c.ratekg  }  AS Command6 " & _
                        "APPEND ({select e.mixgrpcd,a.cntcd,c.varcode,c.catcd,c.lotno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d ,rm_count e Where LOTYEAR='" & Year(yfdate) & "' AND  c.divcode = '" & Divcode & "' and  d.DIVCODE = c.divcode and d.catcd = c.catcd and d.lotno = c.lotno and d.lotdt = c.lotdt AND A.DIVCODE = D.DIVCODE AND A.ISSTYPE = D.ISSTYPE AND A.DOCDT = D.DOCDT AND  a.cntcd = e.cntcd and  c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by e.mixgrpcd,a.cntcd ,c.varcode, " & _
                        "c.catcd,c.lotno,a.docdt,c.bblflg,c.ratekg}  AS Command7 RELATE 'mixgrpcd' TO 'mixgrpcd','cntcd' TO 'cntcd') AS Command7) AS Command6 RELATE 'mixgrpcd' TO 'mixgrpcd') AS Command6", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
         Set issuemixcnt.DataSource = dv1
        issuemixcnt.Show
        Screen.MousePointer = 0
    End If
    End If
'       u = Format(DataCombo1.Text, "dd/mm/yyyy")
'       v = Format(DataCombo2.Text, "dd/mm/yyyy")
'       Call IssueMReport(CStr(u), CStr(v), divname)
    Screen.MousePointer = 0
    intervalMinutes = -1
Case 71


    'Call repproc2(brkdtpur)
    Screen.MousePointer = 11
    U = Format(DataCombo1.Text, "dd/mm/yyyy")
    v = Format(DataCombo2.Text, "dd/mm/yyyy")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    
    
    'Set LB1 = brkdtpur.Sections(2).Controls("list")
    'LB1.Caption = "Brokerwise,Datewise Purchase  From " & DataCombo1.Text & " To " & DataCombo2.Text
    
    Call BandDPur(DataCombo1.Text, DataCombo2.Text, "", UserFooter1.SelectedStr)
    intervalMinutes = -1
    Exit Sub
    Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.brkcd,c.slname  from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.brkcd,arrdt from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,arrdt " & _
                         "}   AS Command6 APPEND ({select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND  a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'brkcd' TO 'brkcd','arrdt' TO 'arrdt') AS Command7) AS Command6 RELATE 'brkcd' TO 'brkcd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        brkdtpur.Show
        Screen.MousePointer = 0
    End If
    End If
    Screen.MousePointer = 0
Case 72

    'Call repproc2(brksuppur)
    f1 = rmireports.DataCombo1.Text
    t1 = rmireports.DataCombo2.Text
    Screen.MousePointer = 11
    'Set LB1 = brksuppur.Sections(2).Controls("list")
    'LB1.Caption = "Brokerwise,Supplierwise Purchase From " & DataCombo1.Text & " To " & DataCombo2.Text
    Call BandSPur(CStr(f1), CStr(t1))
    Exit Sub
    Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.brkcd,c.slname as brkname from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.brkcd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd " & _
                         "}   AS Command6 APPEND ({select distinct a.brkcd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where LOTYEAR='" & Year(yfdate) & "' AND a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'brkcd' TO 'brkcd','supcd' TO 'supcd') AS Command7) AS Command6 RELATE 'brkcd' TO 'brkcd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        brksuppur.Show
        Screen.MousePointer = 0
    End If
    End If
    Screen.MousePointer = 0
    
Case 73

    f1 = Format(DataCombo1.Text, "yyyy-mm-dd")
    t1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    Call AWSWPUR("", UserFooter1.SelectedStr)
    Exit Sub
    'Call repproc2(areasuppur)
    Screen.MousePointer = 11
    Set LB1 = areasuppur.Sections(2).Controls("list")
    LB1.Caption = "Areawise,Supplierwise Purchase From " & DataCombo1.Text & " To " & DataCombo2.Text

    'Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.areacd,d.areaname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where LOTYEAR='" & Year(yfdate) & "' AND a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where LOTYEAR='" & Year(yfdate) & "' AND a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd,supcd,c.slname " & _
                         "}   AS Command6 APPEND ({select distinct a.areacd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where LOTYEAR='" & Year(yfdate) & "' AND a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='" & Divcode & "' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd,a.supcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'areacd' TO 'areacd','supcd' TO 'supcd') AS Command7) AS Command6 RELATE 'areacd' TO 'areacd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        areasuppur.Show
        Screen.MousePointer = 0
    End If
    End If
    
'Case 111
'        u = Format(DataCombo1.Text, "dd/mm/yyyy")
'        v = Format(DataCombo2.Text, "dd/mm/yyyy")
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
'        If Trim(DataCombo1.Text) = "" Then
'            MsgBox "No Record Found", vbInformation, head
'            Screen.MousePointer = 0
'            Exit Sub
'        End If
'        Call MixingCostReport(CStr(u), CStr(v), DIVNAME, CStr(typeflg))
'        Screen.MousePointer = 0

Case 111
        'u = Format(DataCombo1.Text, "dd/mm/yyyy")
        'v = Format(DataCombo2.Text, "dd/mm/yyyy")
        U = Format(DTPicker1.value, "dd/mm/yyyy")
        v = Format(DTPicker2.value, "dd/mm/yyyy")
        If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
        typeflg = Trim(Left(Combo2.Text, 2))
        '(CStr(u), CStr(v), DIVNAME, CStr(typeflg))
        Screen.MousePointer = 0

Case 112
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        If Trim(DataCombo1.Text) = "" Then
            MsgBox "No Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        Call TransferReportNEW(CStr(U), CStr(v), CStr(W), CStr(divname), "A", UserFooter1.SelectedStr, "")
        Screen.MousePointer = 0
   
End Select

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Command4_Click()
On Error GoTo Command4_Click_Error
intervalMinutes = -1
If Repindex = 125 Then
    Set Rs = New Recordset
    Rs.Open "SELECT SUPPASSESQUALITY, SUPPASSESDELIVERY FROM RM_PARAM", DB, adOpenStatic
    
    If Rs(0) = 0 And Rs(1) = 0 Then MsgBox "Please set the Supplier Assesment Ratio in Parameter", vbInformation, head
    If Check1.value = 1 Then
        sup = "ALL"
    Else
        sup = ""
    End If
    With crr
        Dim ClsSupAss As New clsCrystal
        'If UCase(CustID) = "ASM" Then
          'Set ClsSupAss.cryRept = Cry_SupplierAssesment_ASM
        'Else
        Set ClsSupAss.cryRept = Cry_SupplierAssesment
       'End If
        ClsSupAss.CrystalPrint
        .Reset
        .DiscardSavedData = True
        .Connect = connectstring
        .ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        .ParameterFields(0) = "@divcode;" & Divcode
        .ParameterFields(1) = "@supcd;" & Right(DataCombo3.Text, 7)
        .ParameterFields(2) = "@yfdate;" & Format(yfdate, "yyyy-MM-dd")
        .ParameterFields(3) = "@yldate;" & Format(yldate, "yyyy-MM-dd")
        .ParameterFields(4) = "@fdate;" & Format(DTPicker1.value, "yyyy-mm-dd")
        .ParameterFields(5) = "@tdate;" & Format(DTPicker2.value, "yyyy-mm-dd")
'         If UCase(CustID) = "ASM" Then
'            .ParameterFields(7) = "@TYPE;" & sup
'         End If
        .ParameterFields(6) = "@divname;" & divname
        .Formulas(0) = "quality =" & Rs(0)
        .Formulas(1) = "delivery =" & Rs(1)
        .Formulas(2) = "UnitName='" & PrUnitName & "'"
        .WindowState = crptMaximized
        SendKeys "{ENTER}"
        .Action = 2
        .PrinterCopies = 1
        Screen.MousePointer = 0
        
''         crr.Reset
''         crr.Connect = connectstring
''        .ReportFileName = ""
''        .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Supplierassessment report.rpt"
''        SendKeys "{enter}"
''        .WindowState = crptMaximized
''        .PrinterCopies = 1
''        .Action = 2
    End With
End If
intervalMinutes = -1
Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub DataCombo4_GotFocus()
'
'Select Case REPINDEX
'Case 59, 58, 52, 53, 57, 54, 55, 60, 61
'Set RS = New Recordset
'RS.Open "select distinct contdt from rm_cont  where divcode='" & divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt ", Db, adOpenStatic, adLockBatchOptimistic
'If RS.RecordCount <> 0 Then
'    Set DataCombo1.RowSource = RS
'    DataCombo1.ListField = "contdt"
'    Set DataCombo2.RowSource = RS
'    DataCombo2.ListField = "contdt"
'    RS.MoveFirst
'    DataCombo1.Text = RS(0)
'    RS.MoveLast
'    DataCombo2.Text = RS(0)
'End If
'
'End Select
'
'End Sub

Private Sub DataCombo1_GotFocus()
'---------- The following block is required
    
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
    
On Error GoTo DataCombo1_GotFocus_Error

    Set cn = New Connection
    cn.CursorLocation = adUseClient
    
    If cn.State = 1 Then
      cn.Close
    End If

    cn.ConnectionString = "provider=msdatashape;" & connectstring

    If cn.State = adStateclose Then
        cn.Open
    End If
    
    '-------------------
    
Select Case Repindex
Case 59, 58, 52, 53, 57, 54, 55, 60, 61, 63, 66, 67, 68, 70, 111, 112, 351, 220, 62, 203
Set Rs = New Recordset
If Repindex = 60 Or Repindex = 55 Or Repindex = 53 Or Repindex = 351 Or Repindex = 203 Then
   
   'For Transfer Receipt
   If Repindex = 60 Or Repindex = 351 Then
        Set Rs = New Recordset
        'RS.Open "select distinct LOTDT as docdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select distinct arrdt as docdt from rm_LOT where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
   End If
   If Repindex = 55 Then
        Set Rs = New Recordset
        'RS.Open "SELECT DISTINCT LOTDT AS DOCDT FROM RM_LOT WHERE DIVCODE='" & Divcode & "' AND arrdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and rejflg='N' and lotyear='" & Year(yfdate) & "'  ORDER BY LOTdt ", cn, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select distinct arrdt as docdt from rm_LOT where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 53 Or Repindex = 203 Then
        Set Rs = New Recordset
        Rs.Open "select distinct arrdt as docdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic
    End If
Else
     '''Set Rs = New Recordset
     Rs.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isstype in ('P','Q') order by docdt ", cn, adOpenStatic, adLockBatchOptimistic
     If Repindex = 111 Then
         Set Rs = New Recordset
         Rs.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isstype in ('P','Q') order by docdt ", cn, adOpenStatic, adLockBatchOptimistic
     End If
End If
If Repindex = 112 Then
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt as docdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='T' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
End If
'
'Dim rsrec As Recordset
'If REPINDEX = 66 Then
'    Set rsrec = New Recordset
'    rsrec.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt ", cn, adOpenStatic, adLockBatchOptimistic
'End If
'If rsrec.RecordCount <> 0 Then
'    Set Rs.DataSource = rsrec
'End If
'If Rs.RecordCount <> 0 Then
'    Set DataCombo1.RowSource = Rs
'    DataCombo1.ListField = "docdt"
'    Set DataCombo2.RowSource = Rs
'    DataCombo2.ListField = "docdt"
'    Rs.MoveFirst
'    DataCombo1.Text = Rs(0)
'    Rs.MoveLast
'    DataCombo2.Text = Rs(0)
'End If
DataCombo1.Visible = False
DataCombo2.Visible = False
DTPicker1.Visible = True
DTPicker2.Visible = True
DTPicker1.value = yfdate
DTPicker2.value = pdate
DTPicker1.maxdate = pdate
DTPicker2.maxdate = pdate
If Rs.RecordCount <> 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "docdt"
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "docdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
End If

Case 71, 72, 73
Set Rs = New Recordset
Rs.Open "select distinct arrdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic

If Repindex = 71 Then
    Set Rs = New Recordset
    Rs.Open "select distinct arrdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic
End If
If Rs.RecordCount <> 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "arrdt"
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "arrdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
End If
End Select

Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo3_GotFocus()
On Error GoTo DataCombo3_GotFocus_Error

Select Case Repindex
Case 59, 58, 52, 53, 57, 54, 55, 61, 63, 66, 67, 68, 70, 220, 62, 203
    Set rs1 = New Recordset
    rs1.Open "select distinct r.catcd+'-'+a.catname""catname"" from rm_cat a,rm_arrival r,rm_cont c where a.catcd=r.catcd and r.contno=c.contno and r.contdt=c.contdt and r.divcode=c.divcode and c.divcode='" & Divcode & "' and   c.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by catname ", cn, adOpenStatic, adLockBatchOptimistic
    If Repindex = 55 Then
        Set rs1 = New Recordset
        rs1.Open "select distinct b.catcd+'  -  '+a.catname""catname"" from rm_cat a,rm_lot b  where LOTYEAR='" & Year(yfdate) & "' AND a.catcd=b.catcd  and b.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by catname ", cn, adOpenStatic, adLockBatchOptimistic
    End If
    
    If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "catname"
        rs1.MoveFirst
        DataCombo3.Text = rs1(0)
        Do While Not rs1.EOF
            Combo1.AddItem rs1(0)
            rs1.MoveNext
        Loop
        Combo1.AddItem "A  -  ALL"
        rs1.MoveFirst
        Combo1.Text = rs1(0)
        End If
    Screen.MousePointer = 0
Case 60, 351
    Set rs1 = New Recordset
    'RS1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic, adLockBatchOptimistic
    rs1.Open "select distinct a.slname+'-'+r.supcd""slname"" from fa_slmas a,rm_LOT r where LOTYEAR='" & Year(yfdate) & "' AND a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic, adLockBatchOptimistic
    If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "slname"
        rs1.MoveFirst
        DataCombo3.Text = rs1(0)
    
        Set DataCombo4.RowSource = rs1
        DataCombo4.ListField = "slname"
        rs1.MoveLast
        DataCombo4.Text = rs1(0)
    End If
    Screen.MousePointer = 0
End Select

Exit Sub
DataCombo3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo3_GotFocus of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

U = DTPicker1.value
v = DTPicker2.value
DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.MinDate = yfdate
            Screen.MousePointer = 0
        Exit Sub
        End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

U = DTPicker1.value
v = DTPicker2.value
DTPicker2.MinDate = yfdate
DTPicker2.maxdate = pdate
 If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.MinDate = yfdate
            Screen.MousePointer = 0
        Exit Sub
        End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

'Private Sub DTPicker2_Validate(Cancel As Boolean)
'Dim Ltemp_RS As New ADODB.Recordset
'
'If REPINDEX = 74 Then
'    Ltemp_RS.Open "select slcode+'-'+slname 'broker' from fa_slmas where slcode like 'C5%' and slcode in (select brkcd from rm_arrival where arrdate between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' and divcode ='" & Divcode & "')", Db, adOpenStatic, adLockBatchOptimistic
'    If Ltemp_RS.RecordCount > 0 Then
'        Set DataCombo3.RowSource = Ltemp_RS
'        DataCombo3.ListField = "broker"
'        Ltemp_RS.MoveFirst
'        DataCombo3.Text = Ltemp_RS(0)
'        Set DataCombo4.RowSource = Ltemp_RS
'        DataCombo4.ListField = "broker"
'        Ltemp_RS.MoveLast
'        DataCombo4.Text = Ltemp_RS(0)
'    Else
'
'
'        Set DataCombo3.RowSource = Ltemp_RS
'    End If
'End If
'
'End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Screen.MousePointer = 11
DTPicker1.Visible = True
DTPicker2.Visible = True
DTPicker1.ZOrder
DTPicker2.ZOrder
DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter

Select Case Repindex
Case 52, 53, 54, 55, 57, 58, 59, 60, 61, 63, 66, 67, 68, 70, 71, 72, 73, 111, 112, 351, 220, 62, 203
If Repindex <> 71 And Repindex <> 72 And Repindex <> 73 Then
    If Repindex = 59 Then
    Label4.Caption = "Quarterly Return Statement"
    ElseIf Repindex = 58 Then
    Label4.Caption = "Panel Statement"
    End If
        Frame1.Visible = True
        Call DataCombo1_GotFocus
        Call DataCombo3_GotFocus
        
        If Repindex = 60 Or Repindex = 351 Then
            DataCombo3.Width = 3100
'            SSTab1.Width = SSTab1.Width + 1000
'            Frame1.Width = Frame1.Width + 1000
'            Label4.Width = Label4.Width + 1500
             Label3.Caption = "From Supplier"
             Label4.Caption = "To Supplier"
            DataCombo4.Width = 3100
            DataCombo4.Visible = True
        End If
        
        If Repindex = 111 Then
            Frame1.Height = Frame1.Height - 400
            SSTab1.Height = SSTab1.Height - 400
        End If
        If Repindex = 60 Or Repindex = 351 Then
            cmdReport.Top = cmdReport.Top + 400
            CmdExit.Top = CmdExit.Top + 400
        End If
        If Repindex = 112 Then
            cmdReport.Top = cmdReport.Top + 400
            CmdExit.Top = CmdExit.Top + 400
        End If
        
Else
End If
    If Not Repindex = 60 And Not Repindex = 55 Then
        Call DataCombo1_GotFocus
        DataCombo3.Visible = False
        Label3.Visible = False
    ElseIf Repindex = 60 Then
        Label3.Caption = "From Supplier"
        Label5.Caption = "To Supplier"
        Label5.Visible = True
    End If
    
    If Repindex = 351 Then
        Label3.Caption = "From Party"
        Label5.Caption = "To Party"
        Label3.Visible = True
        Label5.Visible = True
        'SSTab1.Width = SSTab1.Height + 500
        'Frame1.Width = Frame1.Height + 500
        'Label4.Width = Label4.Height + 300
         'SSTab1.Height = 2675
         'Frame1.Height = 2480
        DataCombo1.Visible = False
        DataCombo2.Visible = False
        Label1.Visible = False
        Label2.Visible = False
        DataCombo3.Visible = True
        Label6.Visible = True
        Combo2.Visible = True
        Combo2.AddItem "FOR"
        Combo2.AddItem "SPOT"
        Combo2.Text = "FOR"
            
        
    End If
    If Repindex = 55 Then
            cmdReport.Top = cmdReport.Top + 400
            CmdExit.Top = CmdExit.Top + 400
            DataCombo3.Visible = False
            Combo1.Visible = True
            Combo1.ZOrder
    End If
End Select
Select Case Repindex
Case 52
    Label4.Caption = "Quarterly Return Statement"
Case 53
    Label4.Caption = "Market Commitee Report - Receipt"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000
Case 203
    Label4.Caption = "Rejected Arrivals-Datewise"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000

Case 54
    Label4.Caption = "Pending Invoice"
Case 62
    Label4.Caption = "Issue List"
Case 55
    Label4.Caption = "Receipt List - Datewise"
Case 57
    Label4.Caption = "List of Lots without Bills"
Case 58
    Label4.Caption = "Panel Statement"
Case 59
    Label4.Caption = "Quarterly Return Statement"
Case 60
    Label4.Caption = "Receipt List - Supplierwise"
Case 60
   ' Label4.Caption = "Receipt Register - Partywise"
Case 351
    Label4.Caption = "Arrival List - Partywise"
Case 61
    Label4.Caption = "Issue List - Varietywise"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
    
    DataCombo1.Top = 1000
    DataCombo2.Top = 1750

    'Label1.Top = 1000
    'Label2.Top = 1750
    'Label6.Top = 2500
    'Combo2.Top = 2500
    Label1.Top = 900
    Label2.Top = 1300
    Label6.Top = 1800
    Combo2.Top = 1800
    
Case 63
    Label4.Caption = "Staple Statement"
Case 66
    Label4.Caption = "Issue List - Countwise"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
    
    DataCombo1.Top = 1000
    DataCombo2.Top = 1750

    Label1.Top = 900
    Label2.Top = 1300
    Label6.Top = 1800
    Combo2.Top = 1800
    'Label6.Top = 2500
    'Combo2.Top = 2500
    'Frame1.Top = 3000
    
Case 220

    Label4.Caption = "Issue List - Stationwise"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
    
    DataCombo1.Top = 1000
    DataCombo2.Top = 1750

    'Label1.Top = 1000
    'Label2.Top = 1750
    'Label6.Top = 2500
    'Combo2.Top = 2500
    Label1.Top = 900
    Label2.Top = 1300
    Label6.Top = 1800
    Combo2.Top = 1800
    
    
'Case 67
'    Label4.Caption = "Brokerwise Purchase Analysis"
Case 68
    Label4.Caption = "Market Commitee Report - Issue"
Case 70
    Label4.Caption = "Issue List - Mix No. wise"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
    
    DataCombo1.Top = 1000
    DataCombo2.Top = 1750
    Label1.Top = 900
    Label2.Top = 1300
    Label6.Top = 1800
    Combo2.Top = 1800
    
    

    'Label1.Top = 1000
    'Label2.Top = 1750
    'Label6.Top = 2500
    'Combo2.Top = 2500
    
    
Case 71
    Label4.Caption = "Brokerwise,Datewise Purchase Analysis"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000
Case 72
    Label4.Caption = "Brokerwise,Supplierwise Purchase Analysis"
Case 73
    Label4.Caption = "Stationwise,Supplierwise Purchase Analysis"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000



Case 74
    
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DTPicker1.Visible = True
    DTPicker2.Visible = True
    DataCombo3.Visible = True
    DataCombo4.Visible = True
    Label5.Visible = True
    DTPicker1.value = yfdate
    DTPicker2.value = pdate
    Label3.Caption = "From Broker"
    Label5.Caption = "To Broker"
    Label3.Visible = True
    Label4.Caption = "Broker Assessment Record"
    Set rsa = New Recordset
    rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A,RM_CONT B where A.SLCODE=B.BRKCD AND slcode like 'c4%' Order by broker", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsa
        Set DataCombo4.RowSource = rsa
        DataCombo3.ListField = "Broker"
        DataCombo4.ListField = "Broker"
        rsa.MoveFirst
        DataCombo3.Text = rsa(0)
        rsa.MoveLast
        DataCombo4.Text = rsa(0)
    End If
    Screen.MousePointer = 11
    Exit Sub
    
Case 774
    
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DTPicker1.Visible = True
    DTPicker2.Visible = True
    DataCombo3.Visible = True
 '   DataCombo4.Visible = True
  '  Label5.Visible = True
    DTPicker1.value = yfdate
    DTPicker2.value = pdate
    Label3.Caption = "From Broker"
'    Label5.Caption = "To Broker"
    Label3.Visible = True
    Label4.Caption = "Broker Assessment Record"
    Set rsa = New Recordset
    rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A ,RM_CONT B where B.BRKCD=A.SLCODE AND slcode like 'c4%' Order by broker", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsa
        Set DataCombo4.RowSource = rsa
        DataCombo3.ListField = "Broker"
'        DataCombo4.ListField = "Broker"
        rsa.MoveFirst
        DataCombo3.Text = rsa(0)
 '       rsa.MoveLast
  '      DataCombo4.Text = rsa(0)
    End If
    Screen.MousePointer = 11
    Exit Sub
    
Case 125
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DTPicker1.Visible = True
    DTPicker1.value = mfdate
    DTPicker2.value = pdate
    DTPicker1.MinDate = yfdate
    DTPicker2.MinDate = yfdate
    DTPicker1.maxdate = pdate
    DTPicker2.maxdate = pdate
    DTPicker2.Visible = True
    DataCombo3.Visible = True
    If UCase(CustID) = "ASM" Then
        Check1.Visible = True
    End If
    Set Rs = New Recordset
    Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
    If Rs.EOF = False Then
        Ptype = Rs(0)
    End If
    
    Set rsa = New Recordset
    rsa.Open "select DISTINCT slname + '-' +  slcode 'supplier' from fa_slmas A,RM_CONT B where A.SLCODE=B.SUPCD AND left(slcode,2) in (select Items from dbo.split('" & Ptype & "',',')) Order by 1", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsa
        DataCombo3.ListField = "supplier"
        rsa.MoveFirst
        DataCombo3.Text = rsa(0)
    End If
    
    Label3.Caption = "Supplier"
    Label3.Visible = True
    Label5.Visible = False
    Label4.Caption = "Supplier Assessment"
    Frame1.Height = Frame1.Height - 800
    SSTab1.Height = SSTab1.Height - 800
    cmdReport.Top = cmdReport.Top - 400
    CmdExit.Top = CmdExit.Top - 400
    cmdReport.Left = cmdReport.Left - 400
    CmdExit.Left = CmdExit.Left - 400
    Command4.Visible = True
    Command4.Top = CmdExit.Top
    Screen.MousePointer = 11
    Me.Caption = "Supplier Assessment"
    Exit Sub

Case 111
    Label4.Caption = "Mixing Cost"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
    DataCombo1.Top = 1000
    DataCombo2.Top = 1750
    Label1.Top = 900
    Label2.Top = 1300
    Label6.Top = 1800
    Combo2.Top = 1800
    'label1.Top = 1000
    'Label2.Top = 1750
    'Label6.Top = 2500
    'Combo2.Top = 2500
    
Case 112
    Label4.Caption = "Transfer Receipt"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000
End Select
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub openconnection()
On Error GoTo openconnection_Error

    On Error GoTo erm
       
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    
    Set cn = New Connection
    cn.CursorLocation = adUseClient
    
    If cn.State = 1 Then
      cn.Close
    End If

    cn.ConnectionString = "provider=msdatashape;" & connectstring
   
    Error = 0
    Exit Sub
    

erm:
       If Err.Number = -2147467259 Then
            MsgBox "Not a valid Database or valid SQL Server"
            Error = 200
    ElseIf Err.Number = -2147217843 Then
        MsgBox "Not a valid User ID or Incorrect Password"
        Error = Err.Number
    End If

Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form rmireports2", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form rmireports2", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form rmireports2", vbInformation, head
Screen.MousePointer = 0
End Sub
