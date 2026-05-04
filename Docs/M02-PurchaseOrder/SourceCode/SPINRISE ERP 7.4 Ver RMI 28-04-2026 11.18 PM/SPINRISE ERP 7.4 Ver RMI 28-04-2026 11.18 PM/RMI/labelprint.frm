VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form labelprint 
   Caption         =   "Label Printing"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11595
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6780
   ScaleWidth      =   11595
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   5655
      Left            =   2520
      TabIndex        =   0
      Top             =   720
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   9975
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "labelprint.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "listlb"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "List1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "lovok"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "lovcancel"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Command1"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).ControlCount=   5
      Begin VB.CommandButton Command1 
         Caption         =   "Clear"
         Height          =   255
         Left            =   6120
         TabIndex        =   4
         Top             =   4800
         Width           =   735
      End
      Begin VB.CommandButton lovcancel 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "labelprint.frx":001C
         Height          =   615
         Left            =   3360
         Picture         =   "labelprint.frx":03FE
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   4920
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   " &Ok"
         Default         =   -1  'True
         DownPicture     =   "labelprint.frx":07D1
         Height          =   615
         Left            =   1920
         Picture         =   "labelprint.frx":0BB7
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   4920
         Width           =   1185
      End
      Begin VB.ListBox List1 
         Height          =   4335
         Left            =   120
         Style           =   1  'Checkbox
         TabIndex        =   1
         Top             =   465
         Width           =   6735
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "LABEL PRINTING"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   360
         Left            =   120
         TabIndex        =   5
         Top             =   105
         Width           =   6735
      End
   End
End
Attribute VB_Name = "labelprint"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim lblrs As New Recordset
Dim addrs As New Recordset
Dim lcnt As Integer
Dim RPTV As New Report.ReportView

Private Sub Command1_Click()
For i = 0 To List1.ListCount - 1
List1.Selected(i) = False
Next
End Sub

Private Sub Command2_Click()
Unload Me
End Sub


Private Sub DataCombo1_Change()
'Call DataCombo1_Click(2)
 'SendKeys ("{DOWN}")
End Sub

'Private Sub DataCombo1_KeyDown(KeyCode As Integer, Shift As Integer)
'DataCombo1.Text = ""
'Set lblrs = New Recordset
'lblrs.Open "select slname + '-' + slcode as name from fa_slmas where slname = '" & Trim(DataCombo1.Text) & "%' order by slname", db, adOpenStatic
'Set DataCombo1.RowSource = lblrs
'    DataCombo1.ListField = "name"
'    lblrs.MoveFirst
'    DataCombo1.Text = lblrs(0)
'End Sub

Private Sub Form_Load()
Set DB = New Connection
DB.Open connectstring

Set lblrs = New Recordset
lblrs.Open "select slname + '-' + slcode as name from fa_slmas  where slcode like 'C2%' or slcode like 'C5%' order by slname", DB, adOpenStatic
'
'        Set DataCombo1.RowSource = lblrs
'            DataCombo1.ListField = "name"
'        'Set DataCombo2.RowSource = lblrs
'         '   DataCombo2.ListField = "name"
'                lblrs.MoveFirst
'            DataCombo1.Text = lblrs(0)
'          '      lblrs.MoveLast
'           ' DataCombo2.Text = lblrs(0)
lblrs.MoveFirst
List1.AddItem "All Customers"
Do While Not lblrs.EOF
List1.AddItem lblrs(0)
lblrs.MoveNext
Loop


End Sub

Private Sub header1()
Print #1, Chr(12)
End Sub

Private Sub List1_Click()
'If List1.Selected(0) = True Then
  
End Sub

Private Sub Lovcancel_Click()
Unload Me
End Sub

Private Sub lovok_Click()
Dim str1 As String
Dim str2 As String
str1 = " "
str2 = " "
Dim Tngst1 As String, Tngst2 As String
Dim Cst1 As String, Cst2 As String


If Not List1.Selected(0) Then
    For i = 0 To List1.ListCount - 1
        If List1.Selected(i) = True Then
           
            If str1 = " " Then
                str1 = "'" & Right(List1.list(i), 7) & "'"
            Else
                str1 = str1 & ",'" & Right(List1.list(i), 7) & " '"
            End If
        End If
    Next
End If
If List1.Selected(0) = False Then
    str1 = "where slcode in (" & str1 & ")"
Else
    str1 = " "
End If
Open "c:\label.txt" For Output As #1

Set DB = New Connection
DB.Open connectstring

Set addrs = New Recordset
addrs.Open "select slname, add1,add2,add3,city,pin,state,phone1,tngst,cgst From fa_slmas " & str1 & " order by slname ", DB, adOpenStatic
lcnt = 0
'Print #1,
'lcnt = lcnt + 1
addrs.MoveFirst
Do While addrs.EOF = False
    slname1 = addrs("slname")
    ADD1 = IIf(IsNull(addrs("add1")), "", addrs("add1"))
    add2 = IIf(IsNull(addrs("add2")), "", addrs("add2"))
    add3 = IIf(IsNull(addrs("add3")), "", addrs("add3"))
    city1 = addrs("city") & IIf(IsNull(addrs("pin")), "", "_" & addrs("pin"))
    state1 = IIf(IsNull(addrs("state")), "", addrs("state"))
    phone1 = IIf(addrs("phone1") = "", "", "PH:" & addrs("phone1"))
    ''SKS
    ''====
    Tngst1 = IIf(IsNull(addrs("TNGST")), "", addrs("TNGST"))
    Cst1 = IIf(IsNull(addrs("CGST")), "", addrs("CGST"))
    
    state1 = IIf(IsNull(addrs("state")), "", addrs("state"))
    phone1 = IIf(addrs("phone1") = "", "", "PH:" & addrs("phone1"))
  
    
    
        If addrs.EOF = False Then
            addrs.MoveNext
            If addrs.EOF = True Then
                slname2 = ""
                add21 = ""
                add22 = ""
                add23 = ""
                city2 = ""
                pin2 = ""
                state2 = ""
                phone2 = ""
                Tngst1 = ""
                Cst1 = ""
                 GoTo e1
            End If
        End If
    
    slname2 = addrs("slname")
    add21 = IIf(IsNull(addrs("add1")), "", addrs("add1"))
    add22 = IIf(IsNull(addrs("add2")), "", addrs("add2"))
    add23 = IIf(IsNull(addrs("add3")), "", addrs("add3"))
    city2 = addrs("city") & IIf(IsNull(addrs("pin")), "", "_" & addrs("pin"))
    pin2 = IIf(IsNull(addrs("pin")), "", addrs("pin"))
    state2 = IIf(IsNull(addrs("state")), "", addrs("state"))
    phone2 = IIf(addrs("phone1") = "", "", "PH:" & addrs("phone1"))
    
    ''SKS
    ''====
    Tngst2 = IIf(IsNull(addrs("TNGST")), "", addrs("TNGST"))
    Cst2 = IIf(IsNull(addrs("CGST")), "", addrs("CGST"))
    
    If Trim(city1) = "" Then city1 = state1
    If Trim(city2) = "" Then city2 = state2

e1:
    
    If Trim(slname1) <> "" Or Trim(slname2) <> "" Then
        Print #1, Space(5) & Padr(slname1, 35, ""); Space(10) & Padr(slname2, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(ADD1) <> "" Or Trim(add21) <> "" Then
        Print #1, Space(5) & Padr(ADD1, 35, "") & Space(10) & Padr(add21, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(add2) <> "" Or Trim(add22) <> "" Then
        Print #1, Space(5) & Padr(add2, 35, "") & Space(10) & Padr(add22, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(add3) <> "" Or Trim(add23) <> "" Then
        Print #1, Space(5) & Padr(add3, 35, "") & Space(10) & Padr(add23, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(city1) <> "" Or Trim(city2) <> "" Then
        Print #1, Space(5) & Padr(city1, 35, "") & Space(10) & Padr(city2, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(state1) <> "" Or Trim(state2) <> "" Then
        Print #1, Space(5) & Padr(state1, 35, "") & Space(10) & Padr(state2, 35, "")
        lcnt = lcnt + 1
    End If
    If Trim(phone1) <> "" Or Trim(phone2) <> "" Then
        Print #1, Space(5) & Padr(phone1, 35, "") & Space(10) & Padr(phone2, 35, "")
        lcnt = lcnt + 1
    End If
    
    ''SKS
    ''=====
    If Trim(Tngst1) <> "" Or Trim(Tngst2) <> "" Then
        Print #1, Space(5) & "TNGST : " & Padr(Tngst1, 8, " ") & Space(24);
        Print #1, Space(5) & "TNGST : " & Padr(Tngst2, 8, " ") & Space(10)
        lcnt = lcnt + 1
    End If
    If Trim(Cst1) <> "" Or Trim(Cst2) <> "" Then
        Print #1, Space(5) & "CST :   " & Padr(Cst1, 8, " ") & Space(24);
        Print #1, Space(5) & "CST :   " & Padr(Cst2, 8, " ") & Space(10)
        lcnt = lcnt + 1
    End If
    
    Print #1,
    Print #1, Space(5) & String(80, "-")
    Print #1,
    
    lcnt = lcnt + 3
If lcnt > 55 Then 'Page break checking
  '  Print #1, "Page Break"
    Print #1, Chr(12)
    lcnt = 0
End If

If addrs.EOF = False Then
addrs.MoveNext
End If
Loop

Close #1

'Set RPTV = New Report.ReportView
a = FreeFile
Open "c:\label.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type label.txt>prn"
Close #a
RPTV.txtfile = "c:\label.txt"
RPTV.Batfile = "c:\label.bat"

RPTV.txtfile = "C:\LABEL.TXT"

addrs.Close


End Sub

