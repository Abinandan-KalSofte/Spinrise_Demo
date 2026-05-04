VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form Rmireports1 
   Caption         =   "Rmireports1"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9435
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6780
   ScaleWidth      =   9435
   WindowState     =   2  'Maximized
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
      Left            =   2820
      TabIndex        =   7
      Top             =   4560
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
      Left            =   4230
      TabIndex        =   8
      Top             =   4560
      Width           =   930
   End
   Begin VB.Frame Frame1 
      Height          =   3750
      Left            =   1200
      TabIndex        =   9
      Top             =   630
      Width           =   5490
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   5
         Left            =   3390
         TabIndex        =   6
         Top             =   3270
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   4
         Left            =   3390
         TabIndex        =   5
         Top             =   2880
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   3
         Left            =   3390
         TabIndex        =   19
         Top             =   2490
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   2
         Left            =   3390
         TabIndex        =   4
         Top             =   2130
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   1
         Left            =   3390
         TabIndex        =   3
         Top             =   1740
         Width           =   1815
      End
      Begin VB.TextBox Text1 
         Height          =   315
         Index           =   0
         Left            =   3390
         TabIndex        =   2
         Top             =   1350
         Width           =   1815
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   1500
         TabIndex        =   1
         Top             =   900
         Width           =   1830
         _ExtentX        =   3228
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   1500
         TabIndex        =   0
         Top             =   540
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Hard Waste Value (Polyester) "
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
         Index           =   6
         Left            =   480
         TabIndex        =   18
         Top             =   3330
         Width           =   2580
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "RGI Production Value (Polyester)"
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
         Index           =   5
         Left            =   480
         TabIndex        =   17
         Top             =   2940
         Width           =   2820
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Hard Waste Value (Fibre) "
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
         Index           =   4
         Left            =   480
         TabIndex        =   16
         Top             =   2580
         Width           =   2220
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "RGI Production Value (Fibre)"
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
         Index           =   3
         Left            =   480
         TabIndex        =   15
         Top             =   2190
         Width           =   2460
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Hard Waste Value (Cotton) "
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
         Index           =   2
         Left            =   480
         TabIndex        =   14
         Top             =   1800
         Width           =   2355
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "RGI Production Value (Cotton)"
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
         Index           =   1
         Left            =   480
         TabIndex        =   13
         Top             =   1410
         Width           =   2595
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
         Left            =   450
         TabIndex        =   12
         Top             =   540
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
         Index           =   0
         Left            =   480
         TabIndex        =   11
         Top             =   900
         Width           =   705
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
         TabIndex        =   10
         Top             =   120
         Width           =   5130
      End
   End
End
Attribute VB_Name = "Rmireports1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdexit_Click()
On Error GoTo cmdexit_Click_Error

Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdexit_Click of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdreport_Click()

On Error GoTo cmdreport_Click_Error

Screen.MousePointer = 11
Call openconnection
Screen.MousePointer = 11
    
    u = Format(DataCombo1.Text, "dd/mm/yyyy")
    v = Format(DataCombo2.Text, "dd/mm/yyyy")
    If Trim(Text1(0).Text) = "" And Trim(Text1(1).Text) = "" And Trim(Text1(2).Text) = "" And Trim(Text1(3).Text) = "" And Trim(Text1(4).Text) = "" And Trim(Text1(5).Text) = "" Then
    p = 0
    q = 0
    w = ""
    End If
    If Trim(Text1(0).Text) <> "" And Trim(Text1(1).Text) <> "" Then
    
    w = "Cotton"
    p = val(Text1(0).Text)
    q = val(Text1(1).Text)
    ElseIf Trim(Text1(0).Text) <> "" Then
    
    w = "Cotton"
    p = val(Text1(0).Text)
    ElseIf Trim(Text1(1).Text) <> "" Then
    
    w = "Cotton"
    p = val(Text1(1).Text)
    End If
    
    If Trim(Text1(2).Text) <> "" And Trim(Text1(3).Text) <> "" Then
    
    w = "Fibre"
    p = val(Text1(2).Text)
    q = val(Text1(3).Text)
    ElseIf Trim(Text1(2).Text) <> "" Then
    
    w = "Fibre"
    p = val(Text1(2).Text)
    ElseIf Trim(Text1(3).Text) <> "" Then
    
    w = "Fibre"
    p = val(Text1(3).Text)
    End If
    
    
    If Trim(Text1(4).Text) <> "" And Trim(Text1(5).Text) <> "" Then
    
    w = "Polyester"
    p = val(Text1(4).Text)
    q = val(Text1(5).Text)
    ElseIf Trim(Text1(4).Text) <> "" Then
    
    w = "Polyester"
    p = val(Text1(4).Text)
    ElseIf Trim(Text1(5).Text) <> "" Then
    
    w = "Polyester"
    p = val(Text1(5).Text)
    End If
    'If Text1(0).Text <> "" Or Text1(1).Text <> "" Then
    
    Call QuarReport(CStr(u), CStr(v), DIVNAME, CDbl(p), CDbl(q), CStr(w))
    Screen.MousePointer = 0
    Exit Sub
    'End If

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdreport_Click of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub openconnection()
On Error GoTo openconnection_Error

    On Error GoTo erm
       
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    
    Set Cn = New Connection
    Cn.CursorLocation = adUseClient
    
    If Cn.State = 1 Then
      Cn.Close
    End If

    Cn.ConnectionString = "provider=msdatashape;" & connectstring
   
    If Cn.State = adStateclose Then
        Cn.Open
    End If
    
    Error = 0

erm:
       If err.Number = -2147467259 Then
            MsgBox "Not a valid Database or valid SQL Server"
            Error = 200
    ElseIf err.Number = -2147217843 Then
        MsgBox "Not a valid User ID or Incorrect Password"
        Error = err.Number
    End If

Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Screen.MousePointer = 11


        Call DataCombo1_GotFocus
        Label4.Caption = "Quarterly Return Statement"
        'Call DataCombo3_GotFocus

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo1_GotFocus()
    
On Error GoTo DataCombo1_GotFocus_Error

    Set Cn = New Connection
    Cn.CursorLocation = adUseClient
    
    If Cn.State = 1 Then
      Cn.Close
    End If

    Cn.ConnectionString = "provider=msdatashape;" & connectstring

    If Cn.State = adStateclose Then
        Cn.Open
    End If

Set Rs = New Recordset
Rs.Open "select distinct contdt from rm_cont where divcode='" & Divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt ", Cn, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "contdt"
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "contdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
End If

Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DataCombo1_GotFocus of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
'Private Sub DataCombo3_GotFocus()
'
'    Set rs1 = New Recordset
'    rs1.Open "select distinct r.catcd+'-'+a.catname""catname"" from rm_cat a,rm_arrival r,rm_cont c where a.catcd=r.catcd and r.contno=c.contno and r.contdt=c.contdt and r.divcode=c.divcode and c.divcode='" & Divcode & "' and   c.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by catname ", cn, adOpenStatic, adLockBatchOptimistic
'    If rs1.RecordCount <> 0 Then
'        Set DataCombo3.RowSource = rs1
'        DataCombo3.ListField = "catname"
'        rs1.MoveFirst
'        DataCombo3.Text = rs1(0)
'    End If
'End Sub
Private Sub Text1_Change(Index As Integer)

End Sub

Private Sub Text1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo Text1_KeyDown_Error

Select Case Index
Case 0
Call sub1
Case 1
Call sub1
Case 2
Call sub2
Case 3
Call sub2
Case 4
Call sub3
Case 5
Call sub3
End Select

Exit Sub
Text1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Text1_KeyDown of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub sub1()
On Error GoTo sub1_Error

Label2(3).Enabled = False
Label2(4).Enabled = False
Label2(5).Enabled = False
Label2(6).Enabled = False
Text1(2).Enabled = False
Text1(3).Enabled = False
Text1(4).Enabled = False
Text1(5).Enabled = False

Exit Sub
sub1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure sub1 of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub sub2()
On Error GoTo sub2_Error

Label2(1).Enabled = False
Label2(2).Enabled = False
Label2(5).Enabled = False
Label2(6).Enabled = False
Text1(0).Enabled = False
Text1(1).Enabled = False
Text1(4).Enabled = False
Text1(5).Enabled = False

Exit Sub
sub2_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure sub2 of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub sub3()
On Error GoTo sub3_Error

Label2(3).Enabled = False
Label2(4).Enabled = False
Label2(1).Enabled = False
Label2(2).Enabled = False
Text1(2).Enabled = False
Text1(3).Enabled = False
Text1(0).Enabled = False
Text1(1).Enabled = False

Exit Sub
sub3_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure sub3 of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

Select Case Index
Case 0
Call tonum1(Text1(Index), 10, KeyAscii)
Case 1
Call tonum1(Text1(Index), 10, KeyAscii)
Case 2
Call tonum1(Text1(Index), 10, KeyAscii)
Case 3
Call tonum1(Text1(Index), 10, KeyAscii)
Case 4
Call tonum1(Text1(Index), 10, KeyAscii)
Case 5
Call tonum1(Text1(Index), 10, KeyAscii)

End Select

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Text1_KeyPress of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub tonum1(Obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error GoTo tonum1_Error

     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(Obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (Obj.SelLength = Len(Obj)) Then
         KeyAscii = 0
    End If
    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

Exit Sub
tonum1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure tonum1 of Form Rmireports1", vbInformation, head
Screen.MousePointer = 0
End Sub
