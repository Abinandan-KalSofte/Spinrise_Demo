VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form RepMxiningStock 
   Caption         =   "Stock Statement"
   ClientHeight    =   6225
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9180
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1080
      TabIndex        =   11
      Top             =   4320
      Visible         =   0   'False
      Width           =   5700
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   13
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   12
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
         TabIndex        =   14
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.CommandButton cmdexit 
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
      Height          =   390
      Left            =   4080
      TabIndex        =   3
      Top             =   5355
      Width           =   930
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
      Height          =   390
      Left            =   2880
      TabIndex        =   2
      Top             =   5340
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2160
      Left            =   1800
      TabIndex        =   4
      Top             =   1560
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   3810
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "RepMixingStock.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1935
         Left            =   150
         TabIndex        =   5
         Top             =   120
         Width           =   4215
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   315
            Left            =   1410
            TabIndex        =   1
            Top             =   1470
            Width           =   2700
            _ExtentX        =   4763
            _ExtentY        =   556
            _Version        =   393216
            Text            =   ""
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   1410
            TabIndex        =   0
            Top             =   630
            Width           =   2700
            _ExtentX        =   4763
            _ExtentY        =   556
            _Version        =   393216
            Format          =   135856129
            CurrentDate     =   37820
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   315
            Left            =   1410
            TabIndex        =   9
            Top             =   1050
            Width           =   2700
            _ExtentX        =   4763
            _ExtentY        =   556
            _Version        =   393216
            Format          =   135856129
            CurrentDate     =   37820
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
            Left            =   345
            TabIndex        =   10
            Top             =   1095
            Width           =   705
         End
         Begin VB.Label Label1 
            Caption         =   "Issue Unit"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   270
            Left            =   315
            TabIndex        =   8
            Top             =   1500
            Width           =   1245
         End
         Begin VB.Label Label3 
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
            Left            =   330
            TabIndex        =   7
            Top             =   675
            Width           =   885
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Mixing Stock Report"
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
            Left            =   45
            TabIndex        =   6
            Top             =   120
            Width           =   4125
         End
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   6840
      TabIndex        =   15
      Top             =   1080
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "RepMxiningStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim rep As Report.ReportView
Dim heading As String
Dim CATRS As New Recordset
Dim varrs As New Recordset
Dim LotRs As New Recordset
Dim balers As New Recordset
Dim a As Integer
Dim pg1 As Integer
Dim c As Integer

Private Sub cmdexit_Click()
On Error GoTo cmdexit_Click_Error

    Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdexit_LostFocus()
On Error GoTo cmdexit_LostFocus_Error

 If Repindex = 1010 Then
 DTPicker1.SetFocus
End If
If Repindex = 1011 Then
 DTPicker1.SetFocus
End If

Exit Sub
cmdexit_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_LostFocus of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

    If Repindex = 1010 Then
  If DataCombo1.MatchedWithList Then
        Call MixingStock
        Else
        MsgBox "Select the valid Issue Unit", vbInformation, head
        DataCombo1.Text = ""
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
    End If
    If Repindex = 1011 Then
    If DataCombo1.MatchedWithList Then
        Call wastemixingstock
         Else
        MsgBox "Select the valid Issue Unit", vbInformation, head
        DataCombo1.Text = ""
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
    End If

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DTPicker1_Change()

On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
    MsgBox "Date Should Be Greater Than or Equal To " & yfdate & "'", vbInformation, head
    DTPicker1.value = yfdate
    Exit Sub
ElseIf DTPicker1.value > pdate Then
    MsgBox "Date Should Be Less Than or Equal To " & pdate & "'", vbInformation, head
    DTPicker1.value = pdate
    Exit Sub
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
   
End Sub

Private Sub DTPicker2_Change()

On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
    MsgBox "Date Should Be Greater Than or Equal To " & yfdate & "'", vbInformation, head
    DTPicker2.value = yfdate
    Exit Sub
ElseIf DTPicker2.value > pdate Then
    MsgBox "Date Should Be Less Than or Equal To " & pdate & "'", vbInformation, head
    DTPicker2.value = pdate
    Exit Sub
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
   
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter

       
    DTPicker1.MinDate = Format(yfdate, "dd/mm/yy")
    DTPicker1.maxdate = Format(pdate, "dd/mm/yy")
    DTPicker1.value = Format(mfdate, "dd/mm/yy")
    Call DTPicker1_Change
    
    DTPicker2.MinDate = Format(yfdate, "dd/mm/yy")
    DTPicker2.maxdate = Format(pdate, "dd/mm/yy")
    DTPicker2.value = Format(pdate, "dd/mm/yy")
     Call DTPicker1_Change
    
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo1.tabIndex = 2
    cmdreport.tabIndex = 3
    cmdexit.tabIndex = 4
    
    Set rsg = New Recordset
    rsg.Open "select issue_code+ '-'+issue_desc ""Iss"" from rm_issuetype where isstype='P'", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        Set DataCombo1.RowSource = rsg
        DataCombo1.ListField = "Iss"
        rsg.MoveFirst
        DataCombo1.Text = rsg(0)
    End If
    If Repindex = 1011 Then
        Label5.Caption = "Waste Mixing Stock Position"
        Me.Caption = "Waste Mixing Stock Position"
    End If
    If Repindex = 1010 Then
        Label5.Caption = "Mixing Stock Position"
        Me.Caption = "Mixing Stock Position"
    End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Public Sub Headsstock(pg1 As Integer, U As String, v As String)
On Error GoTo Headsstock_Error

pg1 = pg1 + 1
Print #a, Chr(18)
Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
Print #a,
SR = CStr(pdate) + Space(2)
Print #a, Space(2) + Chr(27) + "E" + "Mixing Stock Report " + Chr(27) + "F" + "From" & Space(1) & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & Space(24) & Format(pdate, "dd/mm/yy") + Space(3) & "Pg. :" + Padl(CStr(pg1), 3, " ")

ISSTYPE = Left(DataCombo1.Text, 2)

Set rst = New Recordset
rst.Open "select * from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rst.RecordCount > 0 Then
    Print #a, Space(2) + Chr(27) + "E" + CENTRE(rst("issue_desc"), 85, " ") + Chr(27) + "F"
End If
Print #a, Space(2) + String(88, "-")
Print #a, Space(2) + Padr("Variety", 15, " ") + Space(1) + Padr("Category", 20, " ") + Space(1) + Padl("Opening", 12, " ") + Space(1) + Padl("From Godown", 12, " ") + Space(1) + Padl("To Mixing", 12, " ") + Space(1) + Padl("Closing", 12, " ")
Print #a, Space(2) + String(88, "-")

Exit Sub
Headsstock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Headsstock of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0

End Sub


Private Sub MixingStock()
Dim rs1, RS2, rs3 As Recordset
Dim rptv As Report.ReportView
Dim Dc1, Dc2 As String
Dim tot1, tot2, tot3, tot4 As Double
Dim Cnn As Connection
Dim strvarcode As String

On Error GoTo MixingStock_Error

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

Dc1 = DTPicker1.value
Dc2 = DTPicker2.value
ISSTYPE = Left(DataCombo1.Text, 2)
Set rs1 = New Recordset
rs1.Open "select x.varcode as variety,sum(x.opisskgs)-(sum(x.opprodkgs)) as openingkgs,sum(x.inkgs) as TransferIn,sum(x.outkgs) as TransferOut," & _
        "((sum(x.opisskgs)-(sum(x.opprodkgs)))+sum(x.inkgs))- (sum(x.outkgs)) as Closekgs from " & _
        "(select varcode,isnull(sum(isskgs),0) as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingstock where isstype='" & ISSTYPE & "' and  issdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,isnull(sum(kgs),0) as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt " & _
        "and a.docdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "isnull(sum(isskgs),0) as inkgs,0 as outkgs," & _
        "0 as closekgs from rm_mixingstock where isstype='" & ISSTYPE & "' and  issdt BETWEEN  '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,isnull(sum(kgs),0) as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and  a.divcode='" & Divcode & "' and a.docno=b.docno and a.docdt=b.docdt and " & _
        "a.docdt BETWEEN  '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode)x group by varcode ", Cnn, adOpenStatic

If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0
        
co = 0
pg1 = 0
Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "c:\MixingStock.TXT" For Output As #a
 Open KALFOLDERDATA & "\MixingStock.TXT" For Output As #a

Call Headsstock(pg1, CStr(Dc1), CStr(Dc2))
co = 7

Set RS2 = New Recordset
RS2.Open "select x.varcode as variety,sum(x.opisskgs)-(sum(x.opprodkgs)) as openingkgs,sum(x.inkgs) as TransferIn,sum(x.outkgs) as TransferOut," & _
        "((sum(x.opisskgs)-(sum(x.opprodkgs)))+sum(x.inkgs))- (sum(x.outkgs)) as Closekgs from " & _
        "(select varcode,isnull(sum(isskgs),0) as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingstock where isstype='" & ISSTYPE & "' and  issdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,isnull(sum(kgs),0) as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and a.divcode='" & Divcode & "' and a.divcode=b.divcode and a.docno=b.docno and a.docdt=b.docdt " & _
        "and a.docdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "isnull(sum(isskgs),0) as inkgs,0 as outkgs," & _
        "0 as closekgs from rm_mixingstock where isstype='" & ISSTYPE & "' and  issdt BETWEEN  '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,isnull(sum(kgs),0) as outkgs,0 as closekgs from " & _
        "rm_mixingdt a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and  a.divcode='" & Divcode & "' and a.docno=b.docno and a.docdt=b.docdt and " & _
        "a.docdt BETWEEN  '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode)x group by varcode ", Cnn, adOpenStatic
         
Do While Not RS2.EOF
            
    Set rs3 = New Recordset
    rs3.Open "select varname,catname from rm_var a,rm_cat b  where a.catcd=b.catcd and varcode= '" & RS2!Variety & "' ", Cnn, adOpenStatic
            
    If rs3.RecordCount > 0 Then
        strvarcode = rs3!VarName
        catname = rs3!catname
    Else
        strvarcode = RS2!Variety
        catname = ""
    End If
                
    If RS2!Openingkgs = 0 And RS2!transferin = 0 And RS2!transferout = 0 And RS2!Closekgs = 0 Then
    
    Else
        Print #a, Space(2) + Padr(strvarcode, 15, " ") + Space(1) + Padr(catname, 20, " ") + Space(1) + Padl(INF(RS2!Openingkgs, 3), 12, " ") + Space(1) + Padl(INF(RS2!transferin, 3), 12, " ") + Space(1) + Padl(INF(RS2!transferout, 3), 12, " ") + Space(1) + Padl(INF(RS2!Closekgs, 3), 12, " ")
        co = co + 1
        Print #a,
        co = co + 1
        
        ''Total
        tot1 = tot1 + RS2!Openingkgs
        tot2 = tot2 + RS2!transferin
        tot3 = tot3 + RS2!transferout
        tot4 = tot4 + RS2!Closekgs
    End If
    
    If co >= 63 Then
        Print #a, Space(2) + String(88, "-")
        Print #a, Chr(12) + Chr(18)
        Call Headsstock(pg1, CStr(Dc1), CStr(Dc2))
        co = 7
    End If
    RS2.MoveNext
Loop
         
Print #a, Space(2) & String(88, "-")
Print #a, Space(2) + Chr(27) + "E" + Padr("** Grand Total **", 18, " ") + Space(19) + Padl(INF(tot1, 3), 12, " ") + Space(1) + Padl(INF(tot2, 3), 12, " ") + Space(1) + Padl(INF(tot3, 3), 12, " ") + Space(1) + Padl(INF(tot4, 3), 12, " ") + Chr(27) + "F"
Print #a, Space(2) & String(88, "-")
Print #a, Chr(12)
 Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
Close #a
a = FreeFile
'Open "c:\MixingStock.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type MixingStock.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\MixingStock.TXT"
'RPTV.Batfile = "c:\MixingStock.bat"
Call KALBATPROCESS("MixingStock")
Screen.MousePointer = 0
Exit Sub

Exit Sub
MixingStock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MixingStock of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub wastemixingstock()
Dim rs1, RS2, rs3 As Recordset
Dim rptv As Report.ReportView
Dim Dc1, Dc2 As String
Dim tot1, tot2, tot3, tot4 As Double
Dim Cnn As Connection
Dim strvarcode As String

On Error GoTo wastemixingstock_Error

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

Dc1 = DTPicker1.value
Dc2 = DTPicker2.value
ISSTYPE = Left(DataCombo1.Text, 2)
Set rs1 = New Recordset
rs1.Open "select x.varcode as variety,sum(x.opisskgs)-(sum(x.opprodkgs)) as openingkgs,sum(x.inkgs) as TransferIn,sum(x.outkgs) as TransferOut," & _
        "((sum(x.opisskgs)-(sum(x.opprodkgs)))+sum(x.inkgs))- (sum(x.outkgs)) as Closekgs from " & _
        "(select varcode,isnull(sum(isskgs),0) as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_wastemixstock where isstype='" & ISSTYPE & "' and  issdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select A.wastecode AS VARCODE,0 as opisskgs,isnull(sum(A.Wkgs),0) as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingwaste a,rm_mixinghd b where a.divcode=b.divcode and a.ordno=b.ordno and a.docno=b.docno and a.docdt=b.docdt and  b.isstype='" & ISSTYPE & "' and a.divcode='" & Divcode & "'" & _
        "and a.docdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by A.wastecode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "isnull(sum(isskgs),0) as inkgs,0 as outkgs," & _
        "0 as closekgs from rm_wastemixstock where isstype='" & ISSTYPE & "' and  issdt BETWEEN '" & Format(Dc1, "dd-mmm-yy") & "' AND  '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select A.wastecode AS VARCODE,0 as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,isnull(sum(A.Wkgs),0) as outkgs,0 as closekgs from " & _
        "rm_mixingwaste a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and  a.divcode='" & Divcode & "' and a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode and a.ordno=b.ordno and " & _
        "a.docdt BETWEEN '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "'group by A.wastecode)x group by varcode ", Cnn, adOpenStatic

If rs1.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0
        
co = 0
pg1 = 0
Set rptv = New Report.ReportView
a = FreeFile
Close
'Open "c:\MixingStock.TXT" For Output As #a
Open KALFOLDERDATA & "\MixingStock.TXT" For Output As #a

Call WasteHeadsstock(pg1, CStr(Dc1), CStr(Dc2))
co = 7

Set RS2 = New Recordset
RS2.Open "select x.varcode as variety,sum(x.opisskgs)-(sum(x.opprodkgs)) as openingkgs,sum(x.inkgs) as TransferIn,sum(x.outkgs) as TransferOut," & _
        "((sum(x.opisskgs)-(sum(x.opprodkgs)))+sum(x.inkgs))- (sum(x.outkgs)) as Closekgs from " & _
        "(select varcode,isnull(sum(isskgs),0) as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_wastemixstock where isstype='" & ISSTYPE & "' and  issdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select A.wastecode AS VARCODE,0 as opisskgs,isnull(sum(A.Wkgs),0) as opprodkgs, " & _
        "0 as inkgs,0 as outkgs,0 as closekgs from " & _
        "rm_mixingwaste a,rm_mixinghd b where a.divcode=b.divcode and a.ordno=b.ordno and a.docno=b.docno and a.docdt=b.docdt and  b.isstype='" & ISSTYPE & "' and a.divcode='" & Divcode & "'" & _
        "and a.docdt<'" & Format(Dc1, "dd-mmm-yy") & "' group by A.wastecode " & _
        "Union All select varcode,0 as opisskgs,0 as opprodkgs, " & _
        "isnull(sum(isskgs),0) as inkgs,0 as outkgs," & _
        "0 as closekgs from rm_wastemixstock where isstype='" & ISSTYPE & "' and  issdt BETWEEN '" & Format(Dc1, "dd-mmm-yy") & "' AND  '" & Format(Dc2, "dd-mmm-yy") & "' group by varcode " & _
        "Union All select A.wastecode AS VARCODE,0 as opisskgs,0 as opprodkgs, " & _
        "0 as inkgs,isnull(sum(A.Wkgs),0) as outkgs,0 as closekgs from " & _
        "rm_mixingwaste a,rm_mixinghd b where b.isstype='" & ISSTYPE & "' and  a.divcode='" & Divcode & "' and a.docno=b.docno and a.docdt=b.docdt and a.divcode=b.divcode and a.ordno=b.ordno and " & _
        "a.docdt BETWEEN '" & Format(Dc1, "dd-mmm-yy") & "' AND '" & Format(Dc2, "dd-mmm-yy") & "'group by A.wastecode)x group by varcode ", Cnn, adOpenStatic


Do While Not RS2.EOF
            
    Set rs3 = New Recordset
    rs3.Open "select DESCRIPTION from IG_RPRODUCT  where PRODUCT_CODE= '" & RS2!Variety & "' ", Cnn, adOpenStatic
     catname = ""
    If rs3.RecordCount > 0 Then
        strvarcode = rs3!Description
    Else
        strvarcode = RS2!Variety
        catname = ""
    End If
                
    If RS2!Openingkgs = 0 And RS2!transferin = 0 And RS2!transferout = 0 And RS2!Closekgs = 0 Then
    
    Else
        Print #a, Space(2) + Padr(strvarcode, 18, " ") + Space(1) + Padl(INF(RS2!Openingkgs, 3), 16, " ") + Space(1) + Padl(INF(RS2!transferin, 3), 16, " ") + Space(1) + Padl(INF(RS2!transferout, 3), 16, " ") + Space(1) + Padl(INF(RS2!Closekgs, 3), 16, " ")
        co = co + 1
        Print #a,
        co = co + 1
        
        ''Total
        tot1 = tot1 + RS2!Openingkgs
        tot2 = tot2 + RS2!transferin
        tot3 = tot3 + RS2!transferout
        tot4 = tot4 + RS2!Closekgs
    End If
    
    If co >= 63 Then
        Print #a, Space(2) + String(86, "-")
        Print #a, Chr(12) + Chr(18)
        Call WasteHeadsstock(pg1, CStr(Dc1), CStr(Dc2))
        co = 7
    End If
    RS2.MoveNext
Loop
         
Print #a, Space(2) & String(86, "-")
Print #a, Space(2) + Chr(27) + "E" + Padr("** Grand Total **", 18, " ") + Space(1) + Padl(INF(tot1, 3), 16, " ") + Space(1) + Padl(INF(tot2, 3), 16, " ") + Space(1) + Padl(INF(tot3, 3), 16, " ") + Space(1) + Padl(INF(tot4, 3), 16, " ") + Chr(27) + "F"
Print #a, Space(2) & String(86, "-")
Print #a, Chr(12)
Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
Close #a
a = FreeFile
'Open "c:\MixingStock.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type MixingStock.TXT>prn"
'Close #a
'RPTV.txtfile = "c:\MixingStock.TXT"
'RPTV.Batfile = "c:\MixingStock.bat"
Call KALBATPROCESS("MixingStock")
Screen.MousePointer = 0
Exit Sub

Exit Sub
wastemixingstock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure wastemixingstock of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub WasteHeadsstock(pg1 As Integer, U As String, v As String)
On Error GoTo WasteHeadsstock_Error

pg1 = pg1 + 1
Print #a, Chr(18)
Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
Print #a,
SR = CStr(pdate) + Space(2)
Print #a, Space(2) + Chr(27) + "E" + "Waste Mixing Stock Report " + Chr(27) + "F" + "From " & Space(1) & Format(U, "dd/mm/yy") & Space(1) & " To " & Format(v, "dd/mm/yy") & Space(14) & Format(pdate, "dd/mm/yy") + Space(3) & "Pg. :" + Padl(CStr(pg1), 3, " ")

ISSTYPE = Left(DataCombo1.Text, 2)

Set rst = New Recordset
rst.Open "select * from rm_issuetype where issue_code='" & ISSTYPE & "'", DB, adOpenStatic
If rst.RecordCount > 0 Then
    Print #a, Space(2) + Chr(27) + "E" + CENTRE(rst("issue_desc"), 85, " ") + Chr(27) + "F"
End If

Print #a, Space(2) + String(86, "-")
Print #a, Space(2) + Padr("Variety", 18, " ") + Space(1) + Padl("Opening", 16, " ") + Space(1) + Padl("From Godown", 16, " ") + Space(1) + Padl("To Mixing", 16, " ") + Space(1) + Padl("Closing", 16, " ")
Print #a, Space(2) + String(86, "-")

Exit Sub
WasteHeadsstock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure WasteHeadsstock of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form RepMxiningStock", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form RepMxiningStock", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form RepMxiningStock", vbInformation, head
Screen.MousePointer = 0
End Sub
