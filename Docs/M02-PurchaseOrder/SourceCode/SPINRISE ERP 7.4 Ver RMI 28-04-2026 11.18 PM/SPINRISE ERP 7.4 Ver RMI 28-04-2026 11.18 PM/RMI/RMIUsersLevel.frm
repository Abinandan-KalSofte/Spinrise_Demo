VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Begin VB.Form RMIUsersLevel 
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9225
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   9225
   WindowState     =   2  'Maximized
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   6915
      Left            =   120
      ScaleHeight     =   6885
      ScaleWidth      =   10605
      TabIndex        =   17
      Top             =   240
      Width           =   10635
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   5640
         Style           =   2  'Dropdown List
         TabIndex        =   37
         Top             =   720
         Width           =   4560
      End
      Begin VB.Frame MFRAME 
         Height          =   6015
         Left            =   180
         TabIndex        =   20
         Top             =   540
         Width           =   5340
         Begin MSComctlLib.TreeView TV 
            Height          =   5730
            Left            =   60
            TabIndex        =   22
            Top             =   150
            Width           =   5190
            _ExtentX        =   9155
            _ExtentY        =   10107
            _Version        =   393217
            LineStyle       =   1
            Style           =   7
            Checkboxes      =   -1  'True
            HotTracking     =   -1  'True
            ImageList       =   "ImageList1"
            BorderStyle     =   1
            Appearance      =   1
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
      End
      Begin VB.CommandButton ExCan 
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   8625
         Style           =   1  'Graphical
         TabIndex        =   30
         Top             =   75
         Width           =   1575
      End
      Begin MSComctlLib.ImageList ImageList1 
         Left            =   2475
         Top             =   2010
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   16
         ImageHeight     =   16
         MaskColor       =   12632256
         _Version        =   393216
         BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
            NumListImages   =   7
            BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":0452
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":08A4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":0BBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":0ED8
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":11F2
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "RMIUsersLevel.frx":1644
               Key             =   ""
            EndProperty
         EndProperty
      End
      Begin VB.Frame UserFrame 
         Height          =   3525
         Left            =   5640
         TabIndex        =   23
         Top             =   3000
         Width           =   4665
         Begin VB.Frame Frame1 
            Caption         =   "Production Entry - 24 Hours Locking"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   615
            Left            =   240
            TabIndex        =   33
            Top             =   2280
            Visible         =   0   'False
            Width           =   3615
            Begin VB.TextBox TxtLock 
               Height          =   285
               Left            =   2520
               TabIndex        =   36
               Top             =   240
               Visible         =   0   'False
               Width           =   735
            End
            Begin VB.OptionButton Option2 
               Caption         =   "&No"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   1680
               TabIndex        =   35
               Top             =   240
               Value           =   -1  'True
               Width           =   855
            End
            Begin VB.OptionButton Option1 
               Caption         =   "&Yes"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   720
               TabIndex        =   34
               Top             =   240
               Width           =   855
            End
         End
         Begin VB.CommandButton UComm 
            Height          =   405
            Index           =   6
            Left            =   2775
            Picture         =   "RMIUsersLevel.frx":1A96
            Style           =   1  'Graphical
            TabIndex        =   16
            Top             =   240
            Visible         =   0   'False
            Width           =   810
         End
         Begin VB.CommandButton UComm 
            Height          =   405
            Index           =   5
            Left            =   3660
            Picture         =   "RMIUsersLevel.frx":1DE6
            Style           =   1  'Graphical
            TabIndex        =   14
            Top             =   240
            Visible         =   0   'False
            Width           =   840
         End
         Begin VB.CommandButton UComm 
            Caption         =   "Save"
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
            Index           =   4
            Left            =   3510
            TabIndex        =   15
            Top             =   3000
            Width           =   1020
         End
         Begin VB.CommandButton UComm 
            Caption         =   "Delete"
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
            Index           =   3
            Left            =   2385
            TabIndex        =   13
            Top             =   3000
            Width           =   1020
         End
         Begin VB.CommandButton UComm 
            Caption         =   "Modify"
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
            Index           =   2
            Left            =   1230
            TabIndex        =   12
            Top             =   3000
            Width           =   1020
         End
         Begin VB.CommandButton UComm 
            Caption         =   "Add"
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
            Index           =   1
            Left            =   135
            TabIndex        =   11
            Top             =   3000
            Width           =   990
         End
         Begin VB.TextBox UText 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   315
            IMEMode         =   3  'DISABLE
            Index           =   3
            Left            =   1290
            MaxLength       =   10
            PasswordChar    =   "*"
            TabIndex        =   10
            Top             =   1830
            Width           =   1890
         End
         Begin VB.TextBox UText 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   315
            IMEMode         =   3  'DISABLE
            Index           =   2
            Left            =   1290
            MaxLength       =   10
            PasswordChar    =   "*"
            TabIndex        =   9
            Top             =   1275
            Width           =   1890
         End
         Begin VB.TextBox UText 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   315
            Index           =   1
            Left            =   1290
            MaxLength       =   35
            TabIndex        =   8
            Top             =   765
            Width           =   3255
         End
         Begin VB.TextBox UText 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   315
            Index           =   0
            Left            =   1290
            MaxLength       =   5
            TabIndex        =   7
            Top             =   300
            Width           =   1035
         End
         Begin VB.Label Label7 
            Caption         =   "Retype Password"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   450
            Left            =   225
            TabIndex        =   29
            Top             =   1815
            Width           =   855
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "User Id"
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
            Left            =   225
            TabIndex        =   28
            Top             =   330
            Width           =   630
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Password"
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
            Left            =   225
            TabIndex        =   27
            Top             =   1365
            Width           =   825
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "User Name"
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
            Left            =   225
            TabIndex        =   26
            Top             =   825
            Width           =   945
         End
      End
      Begin VB.Frame LevelFrame 
         Height          =   1740
         Left            =   5655
         TabIndex        =   21
         Top             =   1155
         Width           =   4605
         Begin VB.CommandButton LComm 
            Caption         =   "Save"
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
            Index           =   4
            Left            =   3480
            TabIndex        =   6
            Top             =   1230
            Width           =   1020
         End
         Begin VB.CommandButton LComm 
            Caption         =   "Delete"
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
            Index           =   3
            Left            =   2355
            TabIndex        =   5
            Top             =   1230
            Width           =   1020
         End
         Begin VB.CommandButton LComm 
            Caption         =   "Modify"
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
            Index           =   2
            Left            =   1200
            TabIndex        =   4
            Top             =   1230
            Width           =   1020
         End
         Begin VB.CommandButton LComm 
            Caption         =   "Add"
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
            Index           =   1
            Left            =   105
            TabIndex        =   3
            Top             =   1230
            Width           =   990
         End
         Begin VB.CommandButton LComm 
            Caption         =   "Show Users"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Index           =   0
            Left            =   3285
            TabIndex        =   2
            Top             =   180
            Width           =   1185
         End
         Begin VB.TextBox Ltext 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   330
            Index           =   1
            Left            =   855
            MaxLength       =   35
            TabIndex        =   1
            Top             =   675
            Width           =   3630
         End
         Begin VB.TextBox Ltext 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   330
            Index           =   0
            Left            =   855
            MaxLength       =   3
            TabIndex        =   0
            Top             =   270
            Width           =   990
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Name"
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
            Left            =   225
            TabIndex        =   25
            Top             =   750
            Width           =   495
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Level"
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
            Left            =   225
            TabIndex        =   24
            Top             =   300
            Width           =   480
         End
      End
      Begin VB.CommandButton Command1 
         Enabled         =   0   'False
         Height          =   6285
         Left            =   30
         TabIndex        =   18
         Top             =   555
         Width           =   10560
      End
      Begin VB.Frame UFRAME 
         Height          =   3045
         Left            =   4440
         TabIndex        =   31
         Top             =   2895
         Visible         =   0   'False
         Width           =   4665
         Begin MSComctlLib.TreeView TVUSER 
            Height          =   2820
            Left            =   60
            TabIndex        =   32
            Top             =   150
            Width           =   4530
            _ExtentX        =   7990
            _ExtentY        =   4974
            _Version        =   393217
            LineStyle       =   1
            Style           =   7
            HotTracking     =   -1  'True
            ImageList       =   "ImageList1"
            Appearance      =   1
         End
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "User Level"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   360
         Left            =   240
         TabIndex        =   19
         Top             =   30
         Width           =   1440
      End
   End
End
Attribute VB_Name = "RMIUsersLevel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim adoPrimaryRS As Recordset
Dim Rs As Recordset
Dim XNODE As Node
Dim FormRs As Recordset
Dim FormRs1 As Recordset
Dim FormRs2 As Recordset
Dim AD, MD, DL As String
Dim Opt As String
Dim moflg As Boolean
Dim LUopt As String

Private Sub ExCan_Click()
On Error GoTo ExCan_Click_Error
intervalMinutes = -1
If ExCan.Caption = "Exit" Then
  Unload Me
ElseIf ExCan.Caption = "Cancel" Then
  Opt = ""
  LevelFrame.Enabled = True
  UserFrame.Enabled = True
  Call CanprocL(LComm)
  Call CanprocU(UComm)
  Screen.MousePointer = 0
  TV.Nodes.clear
  On Error Resume Next
  DB.RollbackTrans
  If LUopt = "level" Then
  Call Form_Load
  Else
  Call LComm_Click(0)
  LUopt = "level"
  UFRAME.Visible = False
  End If
End If
intervalMinutes = -1
Exit Sub
ExCan_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ExCan_Click of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New Connection
    DB.CommandTimeout = 100
    DB.ConnectionTimeout = 100
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select divcode,divname from pp_DIVMAS Order by divcode", DB, adLockReadOnly
    Combo1.clear
    Do While Not adoPrimaryRS.EOF
        Combo1.AddItem adoPrimaryRS(0) + "  " + adoPrimaryRS(1)
        adoPrimaryRS.MoveNext
    Loop
    Combo1.ListIndex = 0
    MFRAME.Visible = True
    TV.Nodes.clear
    TV.CheckBoxes = False
    TV.Nodes.ADD , tvwparent, "FA", Module, 3
    TV.Nodes("FA").Expanded = True
    Set Rs = New Recordset
    Rs.Open "select form_name from modulemenu where module = " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
      MsgBox "No Records found", vbInformation, head
      Exit Sub
    Else
    Rs.MoveFirst
    iCnt = iCnt + 1
    For i = 1 To Rs.RecordCount
       'Header Node  Groups
       TV.Nodes.ADD "FA", tvwChild, "G" & CStr(i), Rs(0), 1
       TV.Nodes("G" & CStr(i)).Expanded = True
       iCnt = iCnt + 1 ''
       Set FormRs = New Recordset
       FormRs.Open "Select Form_name,group_no from modulemenu where module = " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic
'       FormRs.MoveFirst
       For J = 1 To FormRs.RecordCount
         On Error Resume Next
            TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
            TV.Nodes("G" & CStr(i) & CStr(J)).Expanded = True
            iCnt = iCnt + 1 ''
'            MsgBox FormRs(0)
            Set FormRs1 = New Recordset
            FormRs1.Open "Select Form_name,group_no from modulemenu where module = " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic
            For K = 1 To FormRs1.RecordCount
                TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & CStr(K), FormRs1(0), 2
                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(K)).Expanded = True ''''
                iCnt = iCnt + 1 ''
                ''------------------
                 Set FormRs2 = New Recordset
                 FormRs2.Open "Select Form_name,group_no from modulemenu where module = " & ModuleNo & " and groups = '" & FormRs1(0) & "'  and group_no ='" & FormRs1("group_no") & "'  order by sno ", DB, adOpenStatic
                 For k1 = 1 To FormRs2.RecordCount
                    TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(K), tvwChild, "G" & CStr(i) & CStr(J) & CStr(K) & CStr(iCnt), FormRs2(0), 2
                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(K) & CStr(iCnt)).Expanded = True  ''''
''                    icnt = icnt + 1 ''
                    
                    ''!!!!!!!!!!!!!!!!!!!!!!
                    ''------------------
                    iCount1 = iCount1 + 1
                    Set Formrs3 = New Recordset
                    Formrs3.Open "Select Form_name,group_no from modulemenu where module = " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no ='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic
                    For k2 = 1 To Formrs3.RecordCount
                        TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(K) & CStr(iCnt), tvwChild, "G" & CStr(i) & CStr(J) & CStr(K) & CStr(k1) & CStr(iCount1), Formrs3(0), 2
                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(K) & CStr(iCnt)).Expanded = True     ''''
                        'icnt = icnt + 1 ''
                        iCount1 = iCount1 + 1
                        Formrs3.MoveNext
                    Next k2
                    ''!!!!!!!!!!!!!!!!!!!!!!
                    FormRs2.MoveNext
                    iCnt = iCnt + 1 ''
                 Next k1
                ''------------------
                FormRs1.MoveNext
            Next
            TV.Refresh
            FormRs.MoveNext
       Next
     Rs.MoveNext
    Next
    End If
LComm(4).Enabled = False
UComm(4).Enabled = False
Call clear
Call CanprocL(LComm)
UserFrame.Enabled = False
LevelFrame.Enabled = True
MFRAME.ZOrder
UFRAME.Visible = False
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form RMIUsersLevel", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'Private Sub LComm_Click(Index As Integer)
'Dim temprs As Recordset
'Select Case Index
'Case 0      'Show
'  If Trim(Ltext(0).Text) = "" Then
'     MsgBox "Enter the level", vbInformation, head
'     Ltext(0).SetFocus
'     SendKeys ("{home}+{end}")
'     Exit Sub
'  End If
'  Set temprs = New Recordset
'  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
'  If Not temprs(0) > 0 Then
'     MsgBox "No records found", vbInformation, head
'     Ltext(0).SetFocus
'     SendKeys ("{home}+{end}")
'     Exit Sub
'  End If
'  LComm(1).Enabled = False    'Add
'  LComm(2).Enabled = False    'Mod
'  LComm(3).Enabled = False    'Del
'  LevelFrame.Enabled = False
'  ExCan.Caption = "Cancel"
'  Opt = ""
'  Call shows
'  Call usershow
'  Set Rs = New Recordset
'    Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & "  AND USER_NAME='" & UText(1).Text & "' ", DB
'    If Rs.RecordCount > 0 Then
'        If Rs(0) = "Y" Then
'            Option1.value = True
'            TxtLock.Visible = True
'            TxtLock.Text = Rs("lock_days")
'        Else
'            Option2.value = True
'            TxtLock.Visible = False
'            TxtLock.Text = Rs("lock_days")
'        End If
'    End If
'
'Case 1      'Addition
'    Opt = "add"
'    LUopt = "level"
'    Call AMDprocL(LComm)
'    Ltext(0).SetFocus
'    TV.Nodes.clear
'    TV.Checkboxes = True
'    TV.Nodes.ADD , tvwparent, "FA", Module, 5
'    TV.Nodes("FA").Checked = True
'    TV.Nodes("FA").Expanded = True
'    Set Rs = New Recordset
'    Rs.Open "select form_name from modulemenu where module= " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
'    If Rs.RecordCount > 0 Then
'                Rs.MoveFirst
'                For i = 1 To Rs.RecordCount
'                   'Header Node  Groups
'                   TV.Nodes.ADD "FA", tvwChild, "G" & CStr(i), Rs(0), 1
'                   TV.Nodes("G" & CStr(i)).Checked = True
'                   TV.Nodes("G" & CStr(i)).Expanded = True
'                   Set FormRs = New Recordset
'                   FormRs.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
'                   If FormRs.RecordCount > 0 Then
'                   FormRs.MoveFirst
'                   For J = 1 To FormRs.RecordCount
'                   'Forms
'
'                        TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
'                        TV.Nodes("G" & CStr(i) & CStr(J)).Checked = True
'
'                    ' Sub Forms
'
'                        Set FormRs1 = New Recordset
'                        FormRs1.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
'                        If FormRs1.RecordCount > 0 Then
'                            FormRs1.MoveFirst
'                            For l = 1 To FormRs1.RecordCount
'                                TV.Nodes("G" & CStr(i) & CStr(J)).Expanded = True
'                                TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l), FormRs1(0), 2
'                                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = True
'
'                                    Set FormRs2 = New Recordset
'                                    FormRs2.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no ='" & FormRs1("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
'                                    If FormRs2.RecordCount > 0 Then
'                                        FormRs2.MoveFirst
'                                        For m = 1 To FormRs2.RecordCount
'                                            TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Expanded = True
'                                            TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), FormRs2(0), 2
'                                            TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = True
'                                            Set formrs3 = New Recordset
'                                            formrs3.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no ='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
'                                            If formrs3.RecordCount > 0 Then
'                                                formrs3.MoveFirst
'                                                For n = 1 To formrs3.RecordCount
'                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Expanded = True
'                                                    TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n), FormRs2(0), 2
'                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n)).Checked = True
'                                                    If formrs3(1) = "Y" Then
'                                                       For k = 1 To 3
'                                                         'Add Del Mod
'                                                         Select Case k
'                                                           Case 1
'                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k), "Addtion", 3
'                                                           Case 2
'                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k), "Modification", 4
'                                                           Case 3
'                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k), "Deletion", 5
'                                                         End Select
'                                                       TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k)).Checked = True
'                                                       Next
'                                                    End If
'                                                    formrs3.MoveNext
'                                               Next
'                                            Else
'                                                If FormRs2(1) = "Y" Then
'                                                    For k = 1 To 3
'                                                      'Add Del Mod
'                                                      Select Case k
'                                                        Case 1
'                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k), "Addtion", 3
'                                                        Case 2
'                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k), "Modification", 4
'                                                        Case 3
'                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k), "Deletion", 5
'                                                      End Select
'                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k)).Checked = True
'                                                    Next
'                                                End If
'                                            End If
'                                            FormRs2.MoveNext
'                                       Next
'                                    Else
'                                        If FormRs1(1) = "Y" Then
'                                           For k = 1 To 3
'                                             'Add Del Mod
'                                             Select Case k
'                                               Case 1
'                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k), "Addtion", 3
'                                               Case 2
'                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k), "Modification", 4
'                                               Case 3
'                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k), "Deletion", 5
'                                             End Select
'                                           TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k)).Checked = True
'                                           Next
'                                        End If
'                                    End If
'                                FormRs1.MoveNext
'                           Next
'                        Else
'                            If FormRs(1) = "Y" Then
'                               For k = 1 To 3
'                                 'Add Del Mod
'                                 Select Case k
'                                   Case 1
'                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Addtion", 3
'                                   Case 2
'                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Modification", 4
'                                   Case 3
'                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Deletion", 5
'                                 End Select
'                               TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True
'                               Next
'                            End If
'                        End If
'                     FormRs.MoveNext
'                   Next
'                   End If
'             Rs.MoveNext
'            Next
'     End If
'    DB.BeginTrans
'
'Case 2, 3     'Modification
'  Set Rs = New Recordset
'  Rs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' ", DB
'  If Rs(0) <= 0 Then
'    MsgBox "No records found", vbInformation, head
'    Screen.MousePointer = 0
'    Exit Sub
'  End If
'  DB.BeginTrans
'  Call AMDprocL(LComm)
'  Call clear
'  LevelFrame.Enabled = True
'  Ltext(0).SetFocus
'  If Index = 2 Then
'    Opt = "mod"
'    LUopt = "level"
'    Ltext(0).Locked = True
'    Ltext(1).Locked = False
'  ElseIf Index = 3 Then
'    Opt = "del"
'    LUopt = "level"
'    Ltext(1).Locked = True
'  End If
'  LevelFrame.Enabled = False
'  UFRAME.Visible = True
'  UFRAME.ZOrder
'  TVUSER.Nodes.clear
'  TVUSER.Nodes.ADD , tvwparent, "LFA", Module, 6
'  TVUSER.Nodes("LFA").Expanded = True
'  'Header Node  Groups
'  Set FormRs = New Recordset
'   FormRs.Open "select distinct ulevel,ulevel_name from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & "", DB, adOpenStatic, adLockBatchOptimistic
'  For J = 1 To FormRs.RecordCount
'    TVUSER.Nodes.ADD "LFA", tvwChild, "L" & FormRs(0), FormRs(0) & " -- " & FormRs(1), 7
'    FormRs.MoveNext
'  Next
'
'
'Case 4      'save
' If Opt = "del" Then
'   If Trim(Ltext(0).Text) = "" Then
'     MsgBox "Enter the level", vbInformation, head
'     Ltext(0).SetFocus
'     SendKeys ("{home}+{end}")
'     Exit Sub
'  End If
'  Set temprs = New Recordset
'  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
'  If Not temprs(0) > 0 Then
'     MsgBox "No records found", vbInformation, head
'     Ltext(0).SetFocus
'     SendKeys ("{home}+{end}")
'     Exit Sub
'  End If
'  Set temprs = New Recordset
'  temprs.Open "SELECT COUNT(*) FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
'  If temprs(0) > 0 Then
'    MsgBox "Cannot be deleted, some users are in this level", vbInformation, head
'    Call Form_Load
'    Screen.MousePointer = 0
'    Exit Sub
'  End If
'
'
'   If MsgBox("Do you want to delete", vbYesNo, head) = vbYes Then
'     DB.Execute ("delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text)
'     DB.CommitTrans
'     ExCan.Caption = "Exit"
'     Call Form_Load
'     Exit Sub
'Else
'    ExCan.Caption = "Exit"
'    Call Form_Load
'    Exit Sub
'End If
'
' End If
'
'   If Trim(Ltext(0).Text) = "" Then
'      MsgBox " Enter the Level as Numeric value ", vbInformation, head
'      Screen.MousePointer = 0
'      Ltext(0).SetFocus
'      SendKeys ("{home}+{end}")
'      Exit Sub
'   End If
'   If Trim(Ltext(1).Text) = "" Then
'      MsgBox " Enter the Level Name ", vbInformation, head
'      Screen.MousePointer = 0
'      Ltext(1).SetFocus
'      SendKeys ("{home}+{end}")
'      Exit Sub
'   End If
'   'Already exist check
'   Dim CheckRs As Recordset
'   Set CheckRs = New Recordset
'   If Opt = "add" Then
'   CheckRs.Open "select count(*) from userlevel where ulevel = " & Ltext(0).Text & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " ", DB
'   If CheckRs(0) > 0 Then
'      MsgBox "Level Already entered", vbInformation, head
'      Screen.MousePointer = 0
'      Ltext(0).SetFocus
'      SendKeys ("{home}+{end}")
'      Exit Sub
'   End If
'   End If
'  If Opt = "mod" Then
'     DB.Execute ("delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text)
'  End If
'
'   'save block
'
'    Set Rs = New Recordset
'    Rs.Open "select form_name,MENU_NAME,SNO from modulemenu where module= " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic
'
'    If Rs.RecordCount > 0 Then
'        Rs.MoveFirst
'        For i = 1 To Rs.RecordCount
'            If TV.Nodes("G" & CStr(i)).Checked = False Then
'               'Header Node  Groups INSERT
'                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','N','" & Rs(1) & "'," & Rs(2) & ")")
'            Else
'                Set FormRs = New Recordset
'                FormRs.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic
'                If FormRs.RecordCount > 0 Then
'                FormRs.MoveFirst
'                For J = 1 To FormRs.RecordCount
'        '            MsgBox FormRs(0)
'                    Set FormRs1 = New Recordset
'                    FormRs1.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic
'                    If FormRs1.RecordCount > 0 Then
'                        If TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False Then
'                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','N','" & FormRs(2) & "'," & FormRs("SNO") & ")")
'                        Else
'                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','Y','" & FormRs(2) & "'," & FormRs("SNO") & ")")
'                        End If
'                        For l = 1 To FormRs1.RecordCount
'                            Set FormRs2 = New Recordset
'                            FormRs2.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no='" & FormRs1("group_no") & "' order by sno ", DB, adOpenStatic
'                            If FormRs2.RecordCount > 0 Then
'                                If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = False Then
'                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','N','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
'                                Else
'                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','Y','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
'                                End If
'                                For m = 1 To FormRs2.RecordCount
'''                                    If TV.Nodes("G" & CStr(i) & CStr(j) & CStr(l) & CStr(m)).Checked = False Then
'''                                        DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
'''                                    Else
'''                                        DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
'''                                    End If
'                                    Set formrs3 = New Recordset
'                                    formrs3.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic
'                                    If formrs3.RecordCount > 0 Then
'                                        If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = False Then
'                                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
'                                        Else
'                                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','Y','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
'                                        End If
'                                        For n = 1 To formrs3.RecordCount
'                                            If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n)).Checked = False Then
'                                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs2(0) & "','Y','" & formrs3(0) & "','N','" & formrs3(2) & "'," & formrs3("SNO") & ")")
'                                            Else
'                                                If formrs3(1) = "Y" Then
'                                                    For k = 1 To 3
'                                                       'Add Del Mod
'                                                        Select Case k
'                                                        Case 1
'                                                            AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                        Case 2
'                                                            MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                        Case 3
'                                                            DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(n) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                        End Select
'                                                    Next
'                                                Else
'                                                    AD = "N"
'                                                    MD = "N"
'                                                    DL = "N"
'                                                End If
'                                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs2(0) & "','Y','" & formrs3(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & formrs3(2) & "'," & formrs3("SNO") & ")")
'                                            End If
'                                            formrs3.MoveNext
'                                        Next   '' N Loop Ending
'                                    Else
'                                        If FormRs2(1) = "Y" Then
'                                            For k = 1 To 3
'                                               'Add Del Mod
'                                                Select Case k
'                                                Case 1
'                                                    AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                Case 2
'                                                    MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                Case 3
'                                                    DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                                End Select
'                                            Next
'                                        Else
'                                            AD = "N"
'                                            MD = "N"
'                                            DL = "N"
'                                        End If
'                                        DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
'                                    End If  '' FormRs3 End If
'                                    FormRs2.MoveNext
'                                Next   '' M Loop  Ending
'                            Else
'                                If FormRs1(1) = "Y" Then
'                                    For k = 1 To 3
'                                       'Add Del Mod
'                                        Select Case k
'                                        Case 1
'                                            AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                        Case 2
'                                            MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                        Case 3
'                                            DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                        End Select
'                                    Next
'                                Else
'                                    AD = "N"
'                                    MD = "N"
'                                    DL = "N"
'                                End If
'                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
'                            End If  '' FormRs2 End If
'                            FormRs1.MoveNext
'                        Next   '' L Loop ending
'                        FormRs.MoveNext
'                    Else
'                        If TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False Then
'                          'Forms
'                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','N','" & FormRs(2) & "'," & FormRs("SNO") & ")")
'                        Else
'                            If FormRs(1) = "Y" Then
'                                For k = 1 To 3
'                               'Add Del Mod
'                                    Select Case k
'                                    Case 1
'                                        AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                    Case 2
'                                        MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                    Case 3
'                                        DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
'                                    End Select
'                                Next
'                            Else
'                                AD = "N"
'                                MD = "N"
'                                DL = "N"
'                            End If
'                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs(2) & "'," & FormRs("SNO") & ")")
'                        End If
'                        FormRs.MoveNext
'                    End If    ''' FromRs End if
'                Next    '' J Loop Ending
'                End If
'            End If  ''
'            Rs.MoveNext
'        Next    '' I Loop Ending
'   End If
'   Opt = ""
'   Call CanprocL(LComm)
'   DB.CommitTrans
'   Screen.MousePointer = 0
'   TV.Nodes.clear
'   Call Form_Load
'
'
'End Select
'End Sub

Private Sub LComm_Click(Index As Integer)

intervalMinutes = -1
Dim Repflag1, Repflag2, repflag3 As Boolean
Dim temprs As Recordset
   On Error GoTo LComm_Click_Error
   On Error Resume Next
   Call TV_Validate(False)
   Repflag1 = False
   Repflag2 = False
   repflag3 = False

Select Case Index
Case 0      'Show
  If Trim(Ltext(0).Text) = "" Then
     MsgBox "Enter the level", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  Set temprs = New Recordset
  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
  If Not temprs(0) > 0 Then
     MsgBox "No records found", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  LComm(1).Enabled = False    'Add
  LComm(2).Enabled = False    'Mod
  LComm(3).Enabled = False    'Del
  LevelFrame.Enabled = False
  ExCan.Caption = "Cancel"
  Opt = ""
  Call shows
  Call usershow
  Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & "  AND USER_NAME='" & UText(1).Text & "' ", DB
    If Rs.RecordCount > 0 Then
        If Rs(0) = "Y" Then
            Option1.value = True
            TxtLock.Visible = True
            TxtLock.Text = Rs("lock_days")
        Else
            Option2.value = True
            TxtLock.Visible = False
            TxtLock.Text = Rs("lock_days")
        End If
    End If

Case 1      'Addition
    Opt = "add"
    LUopt = "level"
    Call AMDprocL(LComm)
    Ltext(0) = ""
    Ltext(1) = ""
    Ltext(0).SetFocus
    TV.Nodes.clear
    TV.CheckBoxes = True
    TV.Nodes.ADD , tvwparent, "FA", Module, 5
    TV.Nodes("FA").Checked = True
    TV.Nodes("FA").Expanded = True
    Set Rs = New Recordset
    Rs.Open "select form_name from modulemenu where module= " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
                Rs.MoveFirst
                For i = 1 To Rs.RecordCount
                   'Header Node  Groups
                   TV.Nodes.ADD "FA", tvwChild, "G" & CStr(i), Rs(0), 1
                   TV.Nodes("G" & CStr(i)).Checked = True
                   TV.Nodes("G" & CStr(i)).Expanded = True
                   Set FormRs = New Recordset
                   FormRs.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
                   If FormRs.RecordCount > 0 Then
                   FormRs.MoveFirst
                   For J = 1 To FormRs.RecordCount
                   'Forms
                     
                        TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
                        TV.Nodes("G" & CStr(i) & CStr(J)).Checked = True
                   
                    ' Sub Forms
                    
                        Set FormRs1 = New Recordset
                        FormRs1.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
                        If FormRs1.RecordCount > 0 Then
                            FormRs1.MoveFirst
                            For l = 1 To FormRs1.RecordCount
                                TV.Nodes("G" & CStr(i) & CStr(J)).Expanded = True
                                TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l), FormRs1(0), 2
                                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = True
                                                                
                                    Set FormRs2 = New Recordset
                                    FormRs2.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no ='" & FormRs1("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
                                    If FormRs2.RecordCount > 0 Then
                                        FormRs2.MoveFirst
                                        For m = 1 To FormRs2.RecordCount
                                            TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Expanded = True
                                            TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), FormRs2(0), 2
                                            TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = True
                                            Set Formrs3 = New Recordset
                                            Formrs3.Open "Select Form_name,ADM_FLG,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no ='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
                                            If Formrs3.RecordCount > 0 Then
                                                Formrs3.MoveFirst
                                                For N = 1 To Formrs3.RecordCount
                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Expanded = True
                                                    TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), FormRs2(0), 2
                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N)).Checked = True
                                                    If Formrs3(1) = "Y" Then
                                                       For K = 1 To 3
                                                         'Add Del Mod
                                                         Select Case K
                                                           Case 1
                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Addtion", 3
                                                           Case 2
                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Modification", 4
                                                           Case 3
                                                             TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Deletion", 5
                                                         End Select
                                                       TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True
                                                       Next
                                                    End If
                                                    Formrs3.MoveNext
                                               Next
                                            Else
                                                If FormRs2(1) = "Y" Then
                                                    For K = 1 To 3
                                                      'Add Del Mod
                                                      Select Case K
                                                        Case 1
                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Addtion", 3
                                                        Case 2
                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Modification", 4
                                                        Case 3
                                                          TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Deletion", 5
                                                      End Select
                                                    TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K)).Checked = True
                                                    Next
                                                End If
                                            End If
                                            FormRs2.MoveNext
                                       Next
                                    Else
                                        If FormRs1(1) = "Y" Then
                                           For K = 1 To 3
                                             'Add Del Mod
                                             Select Case K
                                               Case 1
                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Addtion", 3
                                               Case 2
                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Modification", 4
                                               Case 3
                                                 TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Deletion", 5
                                             End Select
                                           TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True
                                           Next
                                        End If
                                    End If
                                FormRs1.MoveNext
                           Next
                        Else
                            If FormRs(1) = "Y" Then
                               
                               For K = 1 To 3
                                 'Add Del Mod
                                 Select Case K
                                   Case 1
                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Addtion", 3
                                   Case 2
                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Modification", 4
                                   Case 3
                                     TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Deletion", 5
                                 End Select
                               TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True
                               Next
                            End If
                        End If
                     FormRs.MoveNext
                   Next
                   End If
             Rs.MoveNext
            Next
     End If
    DB.BeginTrans
     
Case 2, 3     'Modification
  Set Rs = New Recordset
  Rs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' ", DB
  If Rs(0) <= 0 Then
    MsgBox "No records found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
  End If
  DB.BeginTrans
  Call AMDprocL(LComm)
  Call clear
  LevelFrame.Enabled = True
  Ltext(0).SetFocus
  If Index = 2 Then
    Opt = "mod"
    LUopt = "level"
    Ltext(0).Locked = True
    Ltext(1).Locked = False
  ElseIf Index = 3 Then
    Opt = "del"
    LUopt = "level"
    Ltext(1).Locked = True
  End If
  LevelFrame.Enabled = False
  UFRAME.Visible = True
  UFRAME.ZOrder
  TVUSER.Nodes.clear
  TVUSER.Nodes.ADD , tvwparent, "LFA", Module, 6
  TVUSER.Nodes("LFA").Expanded = True
  'Header Node  Groups
  Set FormRs = New Recordset
   FormRs.Open "select distinct ulevel,ulevel_name from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & "", DB, adOpenStatic, adLockBatchOptimistic
  For J = 1 To FormRs.RecordCount
    TVUSER.Nodes.ADD "LFA", tvwChild, "L" & FormRs(0), FormRs(0) & " -- " & FormRs(1), 7
    FormRs.MoveNext
  Next

  
Case 4      'save
 If Opt = "del" Then
   If Trim(Ltext(0).Text) = "" Then
     MsgBox "Enter the level", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  Set temprs = New Recordset
  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
  If Not temprs(0) > 0 Then
     MsgBox "No records found", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  Set temprs = New Recordset
  temprs.Open "SELECT COUNT(*) FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
  If temprs(0) > 0 Then
    MsgBox "Cannot be deleted, some users are in this level", vbInformation, head
    Call Form_Load
    Screen.MousePointer = 0
    Exit Sub
  End If
    

   If MsgBox("Do you want to delete ?", vbYesNo, head) = vbYes Then
     DB.Execute ("Delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text)
     DB.CommitTrans
     ExCan.Caption = "Exit"
     Call Form_Load
     Exit Sub
Else
    ExCan.Caption = "Exit"
    Call Form_Load
    Exit Sub
End If

 End If
   
   If Trim(Ltext(0).Text) = "" Then
      MsgBox " Enter the Level as Numeric value ", vbInformation, head
      Screen.MousePointer = 0
      Ltext(0).SetFocus
      SendKeys ("{home}+{end}")
      Exit Sub
   End If
   If Trim(Ltext(1).Text) = "" Then
      MsgBox " Enter the Level Name ", vbInformation, head
      Screen.MousePointer = 0
      Ltext(1).SetFocus
      SendKeys ("{home}+{end}")
      Exit Sub
   End If
   
   
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "User Level"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog.UpdateBatch adAffectAllChapters
   
   
   'Already exist check
   Dim checkrs As Recordset
   Set checkrs = New Recordset
   If Opt = "add" Then
   checkrs.Open "select count(*) from userlevel where ulevel = " & Ltext(0).Text & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " ", DB
   If checkrs(0) > 0 Then
      MsgBox "Level Already entered", vbInformation, head
      Screen.MousePointer = 0
      Ltext(0).SetFocus
      SendKeys ("{home}+{end}")
      Exit Sub
   End If
   End If
  If Opt = "mod" Then
     DB.Execute ("delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text)
  End If
   
   'save block
   
    Set Rs = New Recordset
    Rs.Open "select form_name,MENU_NAME,SNO from modulemenu where module= " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic
    
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
        For i = 1 To Rs.RecordCount
            If TV.Nodes("G" & CStr(i)).Checked = False Then
               'Header Node  Groups INSERT
                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','N','" & Rs(1) & "'," & Rs(2) & ")")
            Else
                Set FormRs = New Recordset
                FormRs.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic
                
'                    If Rs(0) = "Reports" Then
'                        Rs.MoveNext
'                        i = i + 1
'                    Set FormRs = New Recordset
'                        FormRs.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", db, adOpenStatic
'                    End If
                    
                If FormRs.RecordCount > 0 Then
                FormRs.MoveFirst
                For J = 1 To FormRs.RecordCount
                    Set FormRs1 = New Recordset
                    FormRs1.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic
                    Repflag1 = False
                    If FormRs1.RecordCount > 0 Then
                     If Repflag1 = False Then
                        If TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False Then
                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','N','" & FormRs(2) & "'," & FormRs("SNO") & ")")
                        Else
                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','Y','" & FormRs(2) & "'," & FormRs("SNO") & ")")
                       End If
                        'Repflag1 = True
                      End If
                        Repflag2 = False
                        For l = 1 To FormRs1.RecordCount
                            Set FormRs2 = New Recordset
'                            FormRs2.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no='" & FormRs1("group_no") & "' order by sno ", db, adOpenStatic
                            FormRs2.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no='" & FormRs1("group_no") & "' order by sno ", DB, adOpenStatic
                            
                            If FormRs2.RecordCount > 0 Then
                            If Repflag2 = False Then
                                If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = False Then
                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','N','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
                                Else
                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','Y','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
                                End If
                                
                               
                            End If
                                
                                repflag3 = False
                                For m = 1 To FormRs2.RecordCount
''                                    If TV.Nodes("G" & CStr(i) & CStr(j) & CStr(l) & CStr(m)).Checked = False Then
''                                        DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
''                                    Else
''                                        DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
''                                    End If
                                    Set Formrs3 = New Recordset
                                    Formrs3.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO,group_no from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic
                                    If Formrs3.RecordCount > 0 Then
                                    If repflag3 = False Then
                                        If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = False Then
                                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
                                        Else
                                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','Y','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
                                        End If
                                     End If
                                        For N = 1 To Formrs3.RecordCount
                                            If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N)).Checked = False Then
                                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs2(0) & "','Y','" & Formrs3(0) & "','N','" & Formrs3(2) & "'," & Formrs3("SNO") & ")")
                                            Else
                                                If Formrs3(1) = "Y" Then
                                                    For K = 1 To 3
                                                       'Add Del Mod
                                                        Select Case K
                                                        Case 1
                                                            AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                        Case 2
                                                            MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                        Case 3
                                                            DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                        End Select
                                                    Next
                                                Else
                                                    AD = "N"
                                                    MD = "N"
                                                    DL = "N"
                                                End If
                                                
                                                   DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs2(0) & "','Y','" & Formrs3(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & Formrs3(2) & "'," & Formrs3("SNO") & ")")
                                            End If
                                            
                                            Formrs3.MoveNext
                                        Next   '' N Loop Ending
                                    Else
                                        If FormRs2(1) = "Y" Then
                                            For K = 1 To 3
                                               'Add Del Mod
                                                Select Case K
                                                Case 1
                                                    'AD = IIf((TV.Nodes("G" & CStr(i) & CStr(j) & CStr(l) & CStr(M) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                    AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                Case 2
                                                    'MD = IIf((TV.Nodes("G" & CStr(i) & CStr(j) & CStr(l) & CStr(M) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                    MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                Case 3
                                                    'DL = IIf((TV.Nodes("G" & CStr(i) & CStr(j) & CStr(l) & CStr(M) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                    DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                                End Select
                                            Next
                                        Else
                                            AD = "N"
                                            MD = "N"
                                            DL = "N"
                                        End If
                                        If FormRs1(0) <> FormRs2(0) Then
                                            
                                            If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = False Then
                                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','N','" & AD & "','" & MD & "','" & DL & "','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
                                            Else
                                                DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs1(0) & "','Y','" & FormRs2(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs2(2) & "'," & FormRs2("SNO") & ")")
                                            End If
                                        End If
                                        
                                    End If  '' FormRs3 End If
                                    
                                    FormRs2.MoveNext
                                Next                                '' M Loop  Ending
                                
                            Else
                                If FormRs1(1) = "Y" Then
                                    For K = 1 To 3
                                       'Add Del Mod
                                        Select Case K
                                        Case 1
                                            AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                        Case 2
                                            MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                        Case 3
                                            DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                        End Select
                                    Next
                                Else
                                    AD = "N"
                                    MD = "N"
                                    DL = "N"
                                End If
                                If repflag3 = False Then
                                If TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = False Then
                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','N','" & AD & "','" & MD & "','" & DL & "','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
                                Else
                                    DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & FormRs(0) & "','Y','" & FormRs1(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs1(2) & "'," & FormRs1("SNO") & ")")
                                End If
                                End If
                                
                            End If  '' FormRs2 End If
                            FormRs1.MoveNext
                        Next   '' L Loop ending
                        FormRs.MoveNext
                    Else
                    
                        If TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False Then
                          'Forms
                          'If repflag3 = False And Rs(0) <> "Reports" Then
                            DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','N','" & FormRs(2) & "'," & FormRs("SNO") & ")")
                          ' End If
                        Else
                            If FormRs(1) = "Y" Then
                                For K = 1 To 3
                               'Add Del Mod
                                    Select Case K
                                    Case 1
                                        AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                    Case 2
                                        MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                    Case 3
                                        DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True), "Y", "N")
                                    End Select
                                Next
                            Else
                                AD = "N"
                                MD = "N"
                                DL = "N"
                            End If
                          
                              DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & Rs(0) & "','Y','" & FormRs(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs(2) & "'," & FormRs("SNO") & ")")
                        
                        End If
                        FormRs.MoveNext
                    End If    ''' FromRs End if
                    Repflag = True
                Next    '' J Loop Ending
                End If
            End If  ''
            Rs.MoveNext
        Next    '' I Loop Ending
   End If
   Opt = ""
   Call CanprocL(LComm)
   DB.CommitTrans
   Screen.MousePointer = 0
   TV.Nodes.clear
   Call Form_Load
   

End Select

   On Error GoTo 0
   Exit Sub

LComm_Click_Error:

   MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LComm_Click of Form RMIUsersLevel", vbInformation, head
End Sub

Private Sub Ltext_Change(Index As Integer)
intervalMinutes = -1
On Error Resume Next
If Index = 0 And Opt <> "add" Then
  If Trim(Ltext(0).Text) <> Empty Then
  Dim SRS As New Recordset
        SRS.Open "SELECT DISTINCT ULEVEL_NAME FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND ULEVEL = " & Ltext(0).Text, DB
        If Not SRS.EOF And Opt <> "add" Then
         Ltext(1).Text = SRS(0)
         Ltext(1).Locked = True
        End If
        If Opt = "add" Then Ltext(1).Locked = False
        If SRS.EOF Then Ltext(1).Text = ""
  End If
  If Trim(Ltext(0).Text) = "" Then Ltext(1).Text = ""
End If
End Sub
Private Sub Ltext_KeyPress(Index As Integer, KeyAscii As Integer)
Dim num As String
On Error GoTo Ltext_KeyPress_Error

Select Case Index
Case 0
      num = CStr(Ltext(Index).Text) & CStr(num)
      If Not (KeyAscii = 8 Or KeyAscii = vbKey0 Or KeyAscii = vbKey1 Or KeyAscii = vbKey2 Or KeyAscii = vbKey3 Or KeyAscii = vbKey4 Or KeyAscii = vbKey5 Or KeyAscii = vbKey6 Or KeyAscii = vbKey7 Or KeyAscii = vbKey8 Or KeyAscii = vbKey9 Or KeyAscii = 46) Then
         KeyAscii = 0
         Ltext(Index).Text = num
      End If
Case 1
    Call ToAlphanumNoSp(Ltext(Index), 35, KeyAscii)
End Select

Exit Sub
Ltext_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Ltext_KeyPress of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Ltext_LostFocus(Index As Integer)
On Error GoTo Ltext_LostFocus_Error

Ltext(Index).Text = UCase(Ltext(Index).Text)
If Index = 0 And Opt = "add" Then
  Dim SRS As New Recordset
  If Trim(Ltext(0).Text) = Empty Then
    MsgBox "Enter Level"
    Ltext(0).SetFocus
    Exit Sub
  Else
    SRS.Open "SELECT DISTINCT ULEVEL_NAME FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND ULEVEL = " & Ltext(0).Text, DB
    If Not SRS.EOF And Opt = "add" Then
        MsgBox "This Level is Already created", vbInformation, head
        Ltext(0).Text = ""
        Ltext(0).SetFocus
        Screen.MousePointer = 0
        Ltext(1).Locked = False
        Exit Sub
    End If
  End If
End If

Exit Sub
Ltext_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Ltext_LostFocus of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

TxtLock.Visible = True

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_Click of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option2_Click()
TxtLock.Visible = False
End Sub

Private Sub TV_Validate(Cancel As Boolean)
On Error Resume Next
 'included on 16.05.2009
 
 If Node.Children > 0 Then
 
   J = Node.Child.FirstSibling.Index
   K = Node.Child.LastSibling.Index + Node.Child.LastSibling.Children
   If Node.Child.LastSibling.Child.LastSibling.LastSibling.Children > 0 Then
        K = K + Node.Child.LastSibling.Child.LastSibling.Children
   End If
   If Node.Child.LastSibling.Child.LastSibling.LastSibling.Children > 0 Then
        K = K + Node.Child.LastSibling.Child.LastSibling.LastSibling.Children
   End If
   For i = J To K
      TV.Nodes(i).Checked = Node.Checked
   Next

End If
End Sub

'Private Sub TV_NodeCheck(ByVal Node As MSComctlLib.Node)
' 'SFSDF
'
'On Error GoTo TV_NodeCheck_Error
'
'
'
'Exit Sub
'TV_NodeCheck_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure TV_NodeCheck of Form RMIUsersLevel", vbInformation, head
'Screen.MousePointer = 0
'End Sub

Private Sub TVUSER_DblClick()
On Error GoTo TVUSER_DblClick_Error

If LUopt = "user" Then
 If TVUSER.SelectedItem.Key <> "FA" Then
  Set FormRs = New Recordset
  FormRs.Open "SELECT USER_ID,USER_NAME,PASSWORD FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & " AND USER_NAME = '" & TVUSER.SelectedItem.Text & "' ", DB
  UText(0).Text = FormRs(0)
  UText(1).Text = FormRs(1)
  If Opt = "mod" Then Opt = ""
  UText(2).Text = IIf(IsNull(FormRs(2)), "", FormRs(2))
  UText(3).Text = IIf(IsNull(FormRs(2)), "", FormRs(2))
  If Opt = "" Then Opt = "mod"
  UText(0).Locked = True
  UText(3).Enabled = False
  UComm(5).Visible = False
  UComm(6).Visible = False
  Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & " and user_name='" & UText(1).Text & "' ", DB
    If Rs.RecordCount > 0 Then
        If Rs(0) = "Y" Then
            Option1.value = True
            TxtLock.Visible = True
            TxtLock.Text = Rs("lock_days")
        Else
            Option2.value = True
            TxtLock.Visible = False
            TxtLock.Text = Rs("lock_days")
        End If
    End If
  If Opt = "del" Then
   UText(0).Locked = True
   UText(1).Locked = True
   UText(2).Locked = True
   UText(3).Locked = True
  End If
   UFRAME.Visible = False
  End If
 ElseIf LUopt = "level" Then
  If TVUSER.SelectedItem.Key = "LFA" Then Exit Sub
  Set FormRs = New Recordset
  FormRs.Open "SELECT ulevel,ulevel_name FROM userlevel WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " AND uLEVEL = '" & Mid(TVUSER.SelectedItem.Text, 1, (InStr(TVUSER.SelectedItem.Text, "-") - 2)) & "' ", DB
  Ltext(0).Text = FormRs(0)
  Ltext(1).Text = FormRs(1)
  LevelFrame.Enabled = True
  UFRAME.Visible = False
  Ltext(1).SetFocus
  
  Call shows
  Ltext(1).Locked = False
 End If

Exit Sub
TVUSER_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TVUSER_DblClick of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub UComm_Click(Index As Integer)
On Error GoTo UComm_Click_Error
intervalMinutes = -1
Select Case Index
Case 0      'Show

Case 1      'Addition
   If Trim(Ltext(0).Text) = "" Then
     MsgBox "Enter the level", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  Set temprs = New Recordset
  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module= " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
  If Not temprs(0) > 0 Then
     MsgBox "No records found", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  UComm(5).Visible = False
  UComm(6).Visible = False
  UComm(4).Enabled = False
  Opt = "add"
  LUopt = "user"
  Option1.value = True
  Call AMDprocU(UComm)
  UText(0).SetFocus
  DB.BeginTrans

Case 2, 3     'Modification
    If adoPrimaryRS.RecordCount > 0 Then
    If Index = 2 Then Opt = "mod" Else Opt = "del"
    LUopt = "user"
    Call AMDprocU(UComm)
    DB.BeginTrans
    moflg = True
    UFRAME.Visible = True
    UFRAME.ZOrder
    TVUSER.Nodes.clear
    TVUSER.Nodes.ADD , tvwparent, "FA", Ltext(0).Text & " -- " & Ltext(1), 6
    TVUSER.Nodes("FA").Expanded = True
       'Header Node  Groups
       Set FormRs = New Recordset
       FormRs.Open "select user_id ,user_name from pp_passwd where module= " & ModuleNo & " and divcode= '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
       For J = 1 To FormRs.RecordCount
         TVUSER.Nodes.ADD "FA", tvwChild, "U" & FormRs(0), FormRs(1), 7
         FormRs.MoveNext
       Next
        Set Rs = New Recordset
        Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & "  and user_name='" & UText(1).Text & "' ", DB
        If Rs.RecordCount > 0 Then
          If Rs(0) = "Y" Then
              Option1.value = True
              TxtLock.Visible = True
              TxtLock.Text = Rs("lock_days")
          Else
              Option2.value = True
              TxtLock.Visible = False
              TxtLock.Text = Rs("lock_days")
          End If
        End If
    Else
      MsgBox "No records found", vbInformation, head
      Screen.MousePointer = 0
      Exit Sub
    End If
Case 4      'save
     If Trim(UText(0).Text) = "" Then
        MsgBox "Enter the User Id", vbInformation, head
        UText(0).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     End If
     If Trim(UText(1).Text) = "" Then
        MsgBox "Enter the User Id", vbInformation, head
        UText(1).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     End If
     If Trim(UText(2).Text) = "" Or Trim(UText(2).Text) = "" Then
        MsgBox "Enter the password", vbInformation, head
        UText(2).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     End If
     If UText(2).Text <> UText(3).Text And Opt <> "del" Then
        MsgBox "Retyped password is not correct, Try Again", vbInformation, head
        UText(3).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     End If
     
     If Opt = "mod" Or Opt = "del" Then
       DB.Execute ("delete from pp_passwd where module= " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text & " and user_id = '" & UText(0).Text & "' ")
     End If
        s = ""
        l = Len(UText(2).Text)
        Dim rs1 As Recordset
        For i = 1 To l
            Set rs1 = New Recordset
            c = (Asc(Mid$(UText(2).Text, i, 1)) + 30) * 2
            Set rs1 = New Recordset
            rs1.Open "select char(" & c & ") ", DB
            s = s + rs1(0)
        Next
    If Option1.value = True Then
        pflg = "Y"
    Else
        pflg = "N"
    End If
    
    If Opt = "add" Then
        DB.Execute ("insert into pp_passwd  (divcode,user_id,alevel,password,user_name,module,PENTRY_LOCK,LOCK_DAYS) values('" & Mid(Combo1.Text, 1, 2) & "','" & UText(0).Text & "'," & Ltext(0).Text & ",'" & s & "','" & UText(1).Text & "'," & ModuleNo & ",'" & pflg & "','" & val(TxtLock.Text) & "' ) ")
    ElseIf Opt = "mod" Then
        s = IIf((moflg = False), s, UText(2).Text)
        DB.Execute ("insert into pp_passwd (divcode,user_id,alevel,password,user_name,module,PENTRY_LOCK,LOCK_DAYS) values('" & Mid(Combo1.Text, 1, 2) & "','" & UText(0).Text & "'," & Ltext(0).Text & ",'" & s & "','" & UText(1).Text & "'," & ModuleNo & ",'" & pflg & "','" & val(TxtLock.Text) & "' )")
    End If
    Opt = ""
    LUopt = "level"
    Call CanprocU(UComm)
    DB.CommitTrans
    Screen.MousePointer = 0
    UText(0).Text = ""
    UText(1).Text = ""
    UText(2).Text = ""
    UText(3).Text = ""
    Call usershow

Case 5      'move next
    
    adoPrimaryRS.MoveNext
    If adoPrimaryRS.EOF Then
      adoPrimaryRS.MoveLast
    End If
    UText(0).Text = adoPrimaryRS(1)
    UText(1).Text = adoPrimaryRS(4)
    UText(2).Text = adoPrimaryRS(3)
    UText(3).Text = adoPrimaryRS(3)
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & " and user_name='" & UText(1).Text & "' ", DB
    If Rs.RecordCount > 0 Then
        If Rs(0) = "Y" Then
            Option1.value = True
            TxtLock.Visible = True
            TxtLock.Text = Rs("lock_days")
        Else
            Option2.value = True
            TxtLock.Visible = False
            TxtLock.Text = Rs("lock_days")
        End If
    End If
    
Case 6      'move Previous
    
    adoPrimaryRS.MovePrevious
    If adoPrimaryRS.BOF Then
      adoPrimaryRS.MoveFirst
    End If
    UText(0).Text = adoPrimaryRS(1)
    UText(1).Text = adoPrimaryRS(4)
    UText(2).Text = IIf(IsNull(adoPrimaryRS(3)), Empty, adoPrimaryRS(3))
    UText(3).Text = IIf(IsNull(adoPrimaryRS(3)), Empty, adoPrimaryRS(3))
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT PENTRY_LOCK,LOCK_DAYS FROM PP_PASSWD WHERE module= " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & " and user_name='" & UText(1).Text & "' ", DB
    If Rs.RecordCount > 0 Then
        If Rs(0) = "Y" Then
            Option1.value = True
            TxtLock.Visible = True
            TxtLock.Text = Rs("lock_days")
        Else
            Option2.value = True
            TxtLock.Visible = False
            TxtLock.Text = Rs("lock_days")
        End If
    End If
End Select
intervalMinutes = -1
Exit Sub
UComm_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure UComm_Click of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub AMDprocU(tol As Object)
On Error GoTo AMDprocU_Error

  tol(1).Enabled = False    'Add
  tol(2).Enabled = False    'Mod
  tol(3).Enabled = False    'Del
  tol(4).Enabled = True     'Save
  UText(0).Locked = False
  UText(1).Locked = False
  UText(2).Locked = False
  UText(3).Locked = False
  LevelFrame.Enabled = False
  ExCan.Caption = "Cancel"
  UText(0).Text = ""
  UText(1).Text = ""
  UText(2).Text = ""
  UText(3).Text = ""

Exit Sub
AMDprocU_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AMDprocU of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
  
End Sub
Private Sub CanprocU(tol As Object)
  tol(1).Enabled = True    'Add
  tol(2).Enabled = True    'Mod
  tol(3).Enabled = True    'Del
  tol(4).Enabled = False     'Save
  LevelFrame.Enabled = True
  ExCan.Caption = "Exit"
End Sub
Private Sub AMDprocL(tol As Object)
On Error GoTo AMDprocL_Error

  tol(0).Enabled = False    'Show
  tol(1).Enabled = False    'Add
  tol(2).Enabled = False    'Mod
  tol(3).Enabled = False    'Del
  tol(4).Enabled = True     'Save
  Ltext(1).Locked = False
  UText(3).Enabled = True
  UserFrame.Enabled = False
  ExCan.Caption = "Cancel"

Exit Sub
AMDprocL_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AMDprocL of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub CanprocL(tol As Object)
On Error GoTo CanprocL_Error

  tol(0).Enabled = True    'Show
  tol(1).Enabled = True    'Add
  tol(2).Enabled = True    'Mod
  tol(3).Enabled = True    'Del
  tol(4).Enabled = False     'Save
  Ltext(0).Locked = False
  Ltext(1).Locked = False
  UserFrame.Enabled = True
  ExCan.Caption = "Exit"
  UComm(5).Visible = False
  UComm(6).Visible = False

Exit Sub
CanprocL_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CanprocL of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub clear()
  Dim oText As TextBox
On Error GoTo clear_Error

  For Each oText In Me.UText
    oText.Text = ""
  Next
  Dim otext1 As TextBox
  For Each otext1 In Me.Ltext
    otext1.Text = ""
  Next
  If Opt = "add" Then Exit Sub
   Ltext(1).Locked = True
'   UText(2).Locked = True
'   UText(3).Locked = True

Exit Sub
clear_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clear of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
  
End Sub

Private Sub shows()
On Error GoTo shows_Error

  TV.Nodes.clear
  TV.CheckBoxes = True
  TV.Nodes.ADD , tvwparent, "FA", Module, 1
  TV.Nodes("FA").Checked = True
  TV.Nodes("FA").Expanded = True
  Set Rs = New Recordset
  Rs.Open "SELECT FORM_NAME FROM MODULEMENU WHERE module= " & ModuleNo & " AND GROUPS = 'Groups' order by sno ", DB
  Rs.MoveFirst
  For i = 1 To Rs.RecordCount
    TV.Nodes.ADD "FA", tvwChild, "G" & CStr(i), Rs(0), 1
    Set temprs = New Recordset
    temprs.Open "select count(*) from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND GROUP_NAME = '" & Rs(0) & "' AND GROUP_FLG = 'Y' AND ULEVEL = " & Ltext(0).Text, DB
    If temprs(0) > 0 Then TV.Nodes("G" & CStr(i)).Checked = True
    TV.Nodes("G" & CStr(i)).Expanded = True
    Set FormRs = New Recordset
    FormRs.Open "Select Form_name,ADM_FLG,group_no,menu_name from modulemenu where module= " & ModuleNo & " and groups = '" & Rs(0) & "' order by sno ", DB, adOpenStatic
    If FormRs.RecordCount > 0 Then
    FormRs.MoveFirst
    For J = 1 To FormRs.RecordCount
       
       'Forms
'       MsgBox FormRs(0)
       TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
       Set temprs = New Recordset
       temprs.Open "SELECT FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND FORM_NAME = '" & FormRs(0) & "' AND ULEVEL = " & Ltext(0).Text & " and menu_name='" & FormRs("Menu_name") & "'", DB
       On Error Resume Next
       If Not temprs.EOF Then
            If temprs(1) = "Y" Then
                TV.Nodes("G" & CStr(i) & CStr(J)).Checked = True
            Else
                TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False
            End If
       End If
       
       '  Sub Forms
       Set FormRs1 = New Recordset
       FormRs1.Open "Select Form_name,ADM_FLG,group_no,Menu_name from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs(0) & "' and group_no ='" & FormRs("group_no") & "' order by sno ", DB, adOpenStatic
       If FormRs1.RecordCount > 0 Then
            For l = 1 To FormRs1.RecordCount
                TV.Nodes("G" & CStr(i) & CStr(J)).Expanded = True
                TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l), FormRs1(0), 2
                Set temprs = New Recordset
                temprs.Open "SELECT FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND FORM_NAME = '" & FormRs1(0) & "' and GROUP_NAME='" & FormRs(0) & "' AND ULEVEL = " & Ltext(0).Text & " And Menu_name='" & FormRs1("Menu_name") & "'", DB
                On Error Resume Next
                If Not temprs.EOF Then
                    If temprs(1) = "Y" Then
                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = True
                    Else
                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Checked = False
                    End If
                End If
                
                Set FormRs2 = New Recordset
                FormRs2.Open "Select Form_name,ADM_FLG,group_no,Menu_name from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs1(0) & "' and group_no ='" & FormRs1("group_no") & "' order by sno ", DB, adOpenStatic
                If FormRs2.RecordCount > 0 Then
                    For m = 1 To FormRs2.RecordCount
                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l)).Expanded = True
                        TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), FormRs2(0), 2
                        Set temprs = New Recordset
                        temprs.Open "SELECT FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND FORM_NAME = '" & FormRs2(0) & "' and GROUP_NAME='" & FormRs1(0) & "' AND ULEVEL = " & Ltext(0).Text & " And Menu_name='" & FormRs2("Menu_name") & "'", DB
                        On Error Resume Next
                        If Not temprs.EOF Then
                            If temprs(1) = "Y" Then
                                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = True
                            Else
                                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Checked = False
                            End If
                        End If
                        
                        Set Formrs3 = New Recordset
                        Formrs3.Open "Select Form_name,ADM_FLG,group_no,Menu_name from modulemenu where module= " & ModuleNo & " and groups = '" & FormRs2(0) & "' and group_no ='" & FormRs2("group_no") & "' order by sno ", DB, adOpenStatic
                        If Formrs3.RecordCount > 0 Then
                            For N = 1 To Formrs3.RecordCount
                                TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m)).Expanded = True
                                TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), Formrs3(0), 2
                                Set temprs = New Recordset
                                temprs.Open "SELECT FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module= " & ModuleNo & " AND FORM_NAME = '" & Formrs3(0) & "' and GROUP_NAME='" & FormRs2(0) & "' AND ULEVEL = " & Ltext(0).Text & " and Menu_name='" & Formrs3("Menu_name") & "'", DB
                                On Error Resume Next
                                If Not temprs.EOF Then
                                    If temprs(1) = "Y" Then
                                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N)).Checked = True
                                    Else
                                        TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N)).Checked = False
                                    End If
                                End If
                                
                                If Formrs3(1) = "Y" Then
                                    For K = 1 To 3
                                       'Add Del Mod
                                       Select Case K
                                         Case 1
                                           TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Addtion", 3
                                           If Not temprs.EOF Then
                                             If temprs(2) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True
                                           End If
                                         Case 2
                                           TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Modification", 4
                                           If Not temprs.EOF Then
                                             If temprs(3) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True
                                           End If
                                         Case 3
                                           TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K), "Deletion", 5
                                           If Not temprs.EOF Then
                                             If temprs(4) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & CStr(N) & "AMD" & CStr(K)).Checked = True
                                           End If
                                       End Select
                                       TV.Refresh
                                    Next
                                End If
                                Formrs3.MoveNext
                            Next
                        Else
                                
                            If FormRs2(1) = "Y" Then
                                For K = 1 To 3
                                   'Add Del Mod
                                   Select Case K
                                     Case 1
                                       TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Addtion", 3
                                       If Not temprs.EOF Then
                                         If temprs(2) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K)).Checked = True
                                       End If
                                     Case 2
                                       TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Modification", 4
                                       If Not temprs.EOF Then
                                         If temprs(3) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K)).Checked = True
                                       End If
                                     Case 3
                                       TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K), "Deletion", 5
                                       If Not temprs.EOF Then
                                         If temprs(4) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & CStr(m) & "AMD" & CStr(K)).Checked = True
                                       End If
                                   End Select
                                   TV.Refresh
                                Next
                            End If
                        End If
                        FormRs2.MoveNext
                    Next
                Else
                    If FormRs1(1) = "Y" Then
                        For K = 1 To 3
                           'Add Del Mod
                           Select Case K
                             Case 1
                               TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Addtion", 3
                               If Not temprs.EOF Then
                                 If temprs(2) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True
                               End If
                             Case 2
                               TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Modification", 4
                               If Not temprs.EOF Then
                                 If temprs(3) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True
                               End If
                             Case 3
                               TV.Nodes.ADD "G" & CStr(i) & CStr(J) & CStr(l), tvwChild, "G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K), "Deletion", 5
                               If Not temprs.EOF Then
                                 If temprs(4) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & CStr(l) & "AMD" & CStr(K)).Checked = True
                               End If
                           End Select
                           TV.Refresh
                        Next
                    End If
                End If
                FormRs1.MoveNext
            Next
       Else

            If FormRs(1) = "Y" Then
                For K = 1 To 3
                   'Add Del Mod
                   Select Case K
                     Case 1
                       TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Addtion", 3
                       If Not temprs.EOF Then
                         If temprs(2) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True
                       End If
                     Case 2
                       TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Modification", 4
                       If Not temprs.EOF Then
                         If temprs(3) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True
                       End If
                     Case 3
                       TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(K), "Deletion", 5
                       If Not temprs.EOF Then
                         If temprs(4) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(K)).Checked = True
                       End If
                   End Select
               TV.Refresh
               Next
               End If
             End If
          FormRs.MoveNext
    Next
        End If
    Rs.MoveNext
  Next

Exit Sub
shows_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure shows of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub UText_Change(Index As Integer)
On Error GoTo UText_Change_Error
intervalMinutes = -1
If Opt = "mod" And Index = 2 Then
 If moflg = True Then
  UText(3).Enabled = True
  UText(2).Text = ""
  UText(3).Text = ""
  moflg = False
 End If
End If

Exit Sub
UText_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure UText_Change of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub UText_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo UText_KeyPress_Error

If Index = 1 Then
    Call ToAlphanumNoSp(UText(Index), 35, KeyAscii)
End If

Exit Sub
UText_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure utext_KeyPress of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub UText_LostFocus(Index As Integer)
On Error GoTo UText_LostFocus_Error

UText(Index).Text = UCase(UText(Index).Text)
If Opt = "add" Then UText(3).Enabled = True

If Opt = "add" Or Opt = "mod" Then
  Dim temprs As Recordset
   If Index = 0 And Opt = "add" Then
    Set temprs = New Recordset
    temprs.Open "select count(*) from pp_passwd where module= " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and  user_id = '" & UText(0).Text & "'", DB
    If temprs(0) > 0 Then
      MsgBox "UserId already entered", vbInformation, head
      UText(0).SetFocus
      SendKeys ("{home}+{end}")
      Exit Sub
    End If
   
   ElseIf Index = 1 And Trim(UText(1).Text) <> "" And Opt = "add" Then
    Set temprs = New Recordset
    temprs.Open "select count(*) from pp_passwd where module= " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and  user_name = '" & UText(1).Text & "' ", DB
    If temprs(0) > 0 Then
       MsgBox "User name already entered", vbInformation, head
       UText(1).SetFocus
       SendKeys ("{home}+{end}")
       Exit Sub
    End If
   ElseIf Index = 2 Then
     UText(0).Locked = True
     UText(1).Locked = True
   ElseIf Index = 3 Then
     If UText(2).Text <> UText(3).Text Then
        MsgBox "Retyped password is not correct, Try Again", vbInformation, head
        UText(3).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     Else
        If Trim(UText(0).Text) <> "" And Trim(UText(1).Text) <> "" And Trim(UText(2).Text) <> "" Then
          UComm(4).Enabled = True
          UComm(4).SetFocus
        End If
     End If
 End If
End If

Exit Sub
UText_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure UText_LostFocus of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub usershow()
On Error GoTo usershow_Error
intervalMinutes = -1
  UserFrame.Enabled = True
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select * from pp_passwd where  module= " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
  If Not adoPrimaryRS.EOF Then
    adoPrimaryRS.MoveFirst
    UComm(5).Visible = True
    UComm(6).Visible = True
    UComm(5).SetFocus
    UText(0).Text = adoPrimaryRS(1)
    UText(1).Text = adoPrimaryRS(4)
    UText(2).Text = IIf(IsNull(adoPrimaryRS(3)), "", adoPrimaryRS(3))
    UText(3).Text = IIf(IsNull(adoPrimaryRS(3)), "", adoPrimaryRS(3))
    UText(0).Locked = True
    UText(1).Locked = True
    UText(2).Locked = True
    UText(3).Locked = True
  End If
  ExCan.Caption = "Cancel"
intervalMinutes = -1
Exit Sub
usershow_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure usershow of Form RMIUsersLevel", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TV_NodeCheck(ByVal Node As MSComctlLib.Node)
intervalMinutes = -1
   If Node.Children > 0 Then
      J = Node.Child.FirstSibling.Index
      K = Node.Child.LastSibling.Index + Node.Child.LastSibling.Children
      For i = J To K
          TV.Nodes(i).Checked = Node.Checked
      Next
   End If
   intervalMinutes = -1
End Sub
