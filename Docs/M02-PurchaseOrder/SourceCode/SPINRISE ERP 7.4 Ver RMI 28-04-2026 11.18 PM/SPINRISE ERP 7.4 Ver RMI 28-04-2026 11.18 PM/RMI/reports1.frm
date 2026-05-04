VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form reports1 
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
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
      Left            =   3840
      TabIndex        =   12
      Top             =   5520
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
      Left            =   5280
      TabIndex        =   11
      Top             =   5520
      Width           =   930
   End
   Begin VB.Frame Frame1 
      Height          =   4260
      Left            =   1200
      TabIndex        =   0
      Top             =   600
      Width           =   7830
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
         Left            =   2040
         TabIndex        =   4
         Text            =   "Combo1"
         Top             =   1830
         Visible         =   0   'False
         Width           =   2265
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   360
         Left            =   2040
         TabIndex        =   3
         Top             =   1830
         Width           =   5025
         _ExtentX        =   8864
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
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   360
         Left            =   2040
         TabIndex        =   5
         Top             =   2400
         Visible         =   0   'False
         Width           =   5025
         _ExtentX        =   8864
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
      Begin MSDataListLib.DataCombo DataCombo5 
         Height          =   360
         Left            =   2040
         TabIndex        =   16
         Top             =   3000
         Visible         =   0   'False
         Width           =   5025
         _ExtentX        =   8864
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
      Begin MSDataListLib.DataCombo DataCombo6 
         Height          =   360
         Left            =   2040
         TabIndex        =   17
         Top             =   3600
         Visible         =   0   'False
         Width           =   5025
         _ExtentX        =   8864
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
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   355
         Left            =   2040
         TabIndex        =   18
         Top             =   720
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   635
         _Version        =   393216
         Format          =   61931521
         CurrentDate     =   38930
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   350
         Left            =   2040
         TabIndex        =   19
         Top             =   1320
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   61931521
         CurrentDate     =   38930
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   2040
         TabIndex        =   2
         Top             =   750
         Width           =   1830
         _ExtentX        =   3228
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
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   2040
         TabIndex        =   1
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
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "To Variety"
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
         TabIndex        =   15
         Top             =   3720
         Width           =   885
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "From Variety"
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
         TabIndex        =   14
         Top             =   3120
         Width           =   1065
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
         TabIndex        =   10
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
         Left            =   720
         TabIndex        =   9
         Top             =   1290
         Width           =   705
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "From Party"
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
         TabIndex        =   8
         Top             =   1950
         Width           =   915
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Variety wise Dyed Report"
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
         TabIndex        =   7
         Top             =   120
         Width           =   7770
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "To Party"
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
         Top             =   2520
         Width           =   735
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4575
      Left            =   1080
      TabIndex        =   13
      Top             =   480
      Width           =   8085
      _ExtentX        =   14261
      _ExtentY        =   8070
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "reports1"
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
Private Sub cmdExit_Click()
On Error GoTo cmdexit_Click_Error

Screen.MousePointer = 0
Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

Screen.MousePointer = 11
Call openconnection
Dim fp, tp, fv, TV As String
Dim a, b As Date


Select Case Repindex

Case 1
      
      If CDate(DataCombo1.Text) > CDate(DataCombo2.Text) Then
            MsgBox "From Date Should Be Lesser Than To Date", vbInformation, head
            DataCombo1.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a Valid Date", vbInformation, head
            Exit Sub
      End If
      
      If Right(DataCombo3.Text, 6) > Right(DataCombo4.Text, 6) Then
            MsgBox "From Party Should Be Lesser Than To Party", vbInformation, head
            DataCombo3.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo3.Text) <> Empty And Trim(DataCombo4.Text) <> Empty Then
            fp = Mid$(Trim(DataCombo3.Text), InStr(1, DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))
            tp = Mid$(Trim(DataCombo4.Text), InStr(1, DataCombo4.Text, "-") + 1, Len(DataCombo4.Text))
      Else
            MsgBox "Enter a Valid Party", vbInformation, head
            Exit Sub
      End If
      
      If Right(DataCombo5.Text, 6) > Right(DataCombo5.Text, 6) Then
            MsgBox "From Variety Should Be Lesser Than To Variety ", vbInformation, head
            DataCombo5.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo5.Text) <> Empty And Trim(DataCombo6.Text) <> Empty Then
            fv = Mid$(Trim(DataCombo5.Text), InStr(1, DataCombo5.Text, "-") + 1, Len(DataCombo5.Text))
            TV = Mid$(Trim(DataCombo6.Text), InStr(1, DataCombo6.Text, "-") + 1, Len(DataCombo6.Text))
      Else
            MsgBox "Enter a Valid Party", vbInformation, head
            Exit Sub
      End If
      
      Call dying_rep(CDate(a), CDate(b), CStr(fp), CStr(tp), CStr(fv), CStr(TV))

Case 2
   
          If CDate(DataCombo1.Text) > CDate(DataCombo2.Text) Then
            MsgBox "From Date Should Be Lesser Than To Date", vbInformation, head
            DataCombo1.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            b = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a Valid Date", vbInformation, head
            Exit Sub
      End If
      
      If Right(DataCombo3.Text, 6) > Right(DataCombo4.Text, 6) Then
            MsgBox "From Party Should Be Lesser Than To Party", vbInformation, head
            DataCombo3.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo3.Text) <> Empty And Trim(DataCombo4.Text) <> Empty Then
            fp = Mid$(Trim(DataCombo3.Text), InStr(1, DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))
            tp = Mid$(Trim(DataCombo4.Text), InStr(1, DataCombo4.Text, "-") + 1, Len(DataCombo4.Text))
      Else
            MsgBox "Enter a Valid Party", vbInformation, head
            Exit Sub
      End If
      
      If Right(DataCombo5.Text, 6) > Right(DataCombo5.Text, 6) Then
            MsgBox "From Variety Should Be Lesser Than To Variety ", vbInformation, head
            DataCombo5.SetFocus
            Exit Sub
      End If
      
      If Trim(DataCombo5.Text) <> Empty And Trim(DataCombo6.Text) <> Empty Then
            fv = Trim(DataCombo5.Text)
            TV = Trim(DataCombo6.Text)
      Else
            MsgBox "Enter a Valid Party", vbInformation, head
            Exit Sub
      End If
      
      Call web_rep(CDate(a), CDate(b), CStr(fp), CStr(tp), CStr(fv), CStr(TV))

   
   
End Select

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub DataCombo1_GotFocus()
'---------- The following block is required
    
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
    
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
    
    '-------------------
    
Select Case Repindex
Case 1

'Set rs = New Recordset
'rs.Open "select distinct recdt  from rm_recdyinghd where divcode ='" & Divcode & "' ", DB, adOpenStatic
'
'If rs.RecordCount <> 0 Then
'    Set DataCombo1.RowSource = rs
'    DataCombo1.ListField = "recdt"
'    Set DataCombo2.RowSource = rs
'    DataCombo2.ListField = "recdt"
'    rs.MoveFirst
'    DataCombo1.Text = rs(0)
'    rs.MoveLast
'    DataCombo2.Text = rs(0)
'End If
DataCombo1.Text = DTPicker1.value
DataCombo2.Text = DTPicker2.value
   
Set Rs = New Recordset
Rs.Open "select distinct b.slname+'-'+b.slcode as slname  from rm_recdyinghd a ,fa_slmas b where a.divcode ='" & Divcode & "' and a.slcode =b.slcode ", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
    Set DataCombo3.RowSource = Rs
    DataCombo3.ListField = "slname"
    Set DataCombo4.RowSource = Rs
    DataCombo4.ListField = "slname"
    Rs.MoveFirst
    DataCombo3.Text = Rs(0)
    Rs.MoveLast
    DataCombo4.Text = Rs(0)
End If

Set Rs = New Recordset
Rs.Open "select distinct b.varname+'-'+b.varcode as varname  from rm_recdyingdt a ,rm_var b where a.divcode ='" & Divcode & "' and a.varcode =b.varcode ", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
    Set DataCombo5.RowSource = Rs
    DataCombo5.ListField = "varname"
    Set DataCombo6.RowSource = Rs
    DataCombo6.ListField = "varname"
    Rs.MoveFirst
    DataCombo5.Text = Rs(0)
    Rs.MoveLast
    DataCombo6.Text = Rs(0)
End If

Case 2

    DataCombo1.Text = fnmfdate(pdate)
   
    DataCombo2.Text = fnmldate(pdate)


Set Rs = New Recordset
Rs.Open "select distinct b.slname+'-'+b.slcode as slname  from rm_dcdyinghd a ,fa_slmas b where a.divcode ='" & Divcode & "' and a.slcode =b.slcode ", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
    Set DataCombo3.RowSource = Rs
    DataCombo3.ListField = "slname"
    Set DataCombo4.RowSource = Rs
    DataCombo4.ListField = "slname"
    Rs.MoveFirst
    DataCombo3.Text = Rs(0)
    Rs.MoveLast
    DataCombo4.Text = Rs(0)
End If

Set Rs = New Recordset
Rs.Open "select distinct b.varcode as varname  from rm_dcdyingdt a ,rm_var b where a.divcode ='" & Divcode & "' and a.varcode =b.varcode ", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
    Set DataCombo5.RowSource = Rs
    DataCombo5.ListField = "varname"
    Set DataCombo6.RowSource = Rs
    DataCombo6.ListField = "varname"
    Rs.MoveFirst
    DataCombo5.Text = Rs(0)
    Rs.MoveLast
    DataCombo6.Text = Rs(0)
End If


End Select

Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

DataCombo1.Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

DataCombo2.Text = DTPicker2.value

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Screen.MousePointer = 11

Select Case Repindex
Case 1

        Frame1.Visible = True
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.value = yfdate
        DTPicker2.value = pdate
        Call DataCombo1_GotFocus
        'Call DataCombo3_GotFocus
        DataCombo2.Visible = True
        DataCombo3.Visible = True
        DataCombo4.Visible = True
        DataCombo5.Visible = True
        DataCombo6.Visible = True
Case 2
        Frame1.Visible = True
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.value = yfdate
        DTPicker2.value = pdate
        Call DataCombo1_GotFocus
'        'Call DataCombo3_GotFocus
        DataCombo2.Visible = True
        DataCombo3.Visible = True
        DataCombo4.Visible = True
        DataCombo5.Visible = True
        DataCombo6.Visible = True
End Select
Select Case Repindex
Case 1
    Label4.Caption = "Variety wise Dyed Fabric"
Case 2
     Label4.Caption = "Variety wise Web"
End Select

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form reports1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub openconnection()
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
       If Err.Number = -2147467259 Then
            MsgBox "Not a valid Database or valid SQL Server"
            Error = 200
    ElseIf Err.Number = -2147217843 Then
        MsgBox "Not a valid User ID or Incorrect Password"
        Error = Err.Number
    End If
End Sub



