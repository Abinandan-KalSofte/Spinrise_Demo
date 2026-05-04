VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form SPGusers 
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
      Height          =   6210
      Left            =   0
      ScaleHeight     =   6150
      ScaleWidth      =   9285
      TabIndex        =   22
      Top             =   120
      Width           =   9345
      Begin VB.Frame MFRAME 
         Height          =   5385
         Left            =   180
         TabIndex        =   25
         Top             =   540
         Width           =   4140
         Begin MSComctlLib.TreeView TV 
            Height          =   5130
            Left            =   60
            TabIndex        =   0
            Top             =   150
            Width           =   3990
            _ExtentX        =   7038
            _ExtentY        =   9049
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
         BackColor       =   &H000000FF&
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   7545
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   45
         Width           =   1545
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
               Picture         =   "SPGusers.frx":0000
               Key             =   ""
            EndProperty
            BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":0452
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":08A4
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":0BBE
               Key             =   ""
            EndProperty
            BeginProperty ListImage5 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":0ED8
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":11F2
               Key             =   ""
            EndProperty
            BeginProperty ListImage7 {2C247F27-8591-11D1-B16A-00C0F0283628} 
               Picture         =   "SPGusers.frx":1644
               Key             =   ""
            EndProperty
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
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   4455
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   660
         Width           =   4560
      End
      Begin VB.Frame UserFrame 
         Height          =   3045
         Left            =   4440
         TabIndex        =   10
         Top             =   2895
         Width           =   4665
         Begin VB.CommandButton UComm 
            Height          =   405
            Index           =   6
            Left            =   2775
            Picture         =   "SPGusers.frx":1A96
            Style           =   1  'Graphical
            TabIndex        =   19
            Top             =   240
            Visible         =   0   'False
            Width           =   810
         End
         Begin VB.CommandButton UComm 
            Height          =   405
            Index           =   5
            Left            =   3675
            Picture         =   "SPGusers.frx":1DE6
            Style           =   1  'Graphical
            TabIndex        =   20
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
            TabIndex        =   18
            Top             =   2490
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
            TabIndex        =   17
            Top             =   2490
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
            TabIndex        =   16
            Top             =   2490
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
            TabIndex        =   15
            Top             =   2490
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
            TabIndex        =   14
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
            TabIndex        =   13
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
            TabIndex        =   12
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
            TabIndex        =   11
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
            TabIndex        =   31
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
            TabIndex        =   30
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
            TabIndex        =   29
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
            TabIndex        =   28
            Top             =   825
            Width           =   945
         End
      End
      Begin VB.Frame LevelFrame 
         Height          =   1740
         Left            =   4455
         TabIndex        =   2
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
            TabIndex        =   9
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
            TabIndex        =   8
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
            TabIndex        =   7
            Top             =   1230
            Width           =   1035
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
            TabIndex        =   6
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
            Left            =   3135
            TabIndex        =   5
            Top             =   180
            Width           =   1320
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
            Locked          =   -1  'True
            MaxLength       =   35
            TabIndex        =   4
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
            TabIndex        =   3
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
            TabIndex        =   27
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
            Left            =   240
            TabIndex        =   26
            Top             =   300
            Width           =   480
         End
      End
      Begin VB.CommandButton Command1 
         Enabled         =   0   'False
         Height          =   5685
         Left            =   60
         TabIndex        =   23
         Top             =   405
         Width           =   9165
      End
      Begin VB.Frame UFRAME 
         Height          =   3045
         Left            =   4440
         TabIndex        =   32
         Top             =   2895
         Visible         =   0   'False
         Width           =   4665
         Begin MSComctlLib.TreeView TVUSER 
            Height          =   2820
            Left            =   60
            TabIndex        =   33
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
         TabIndex        =   24
         Top             =   30
         Width           =   1440
      End
   End
End
Attribute VB_Name = "SPGusers"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim adoPrimaryRS As Recordset
Dim RS As Recordset
Dim XNODE As Node
Dim FormRs As Recordset
Dim Opt As String
Dim moflg As Boolean
Dim LUopt As String

Private Sub ExCan_Click()
If ExCan.Caption = "Exit" Then
    'Call SPGmain.DIS
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
  Call usershow
  LUopt = "level"
  UFRAME.Visible = False
  End If
End If
End Sub

Private Sub Form_Load()
On Error Resume Next
 Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DB.Execute ("DELETE FROM MODULEMENU")
    DB.Execute ("insmodmenu")
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
    TV.Checkboxes = False
    'TV.Nodes.Add , tvwparent, "SPG", "Spinning", 6 'Ravi
    TV.Nodes.ADD , tvwparent, "SPG", "Raw Material Inventory", 6
    TV.Nodes("SPG").Expanded = True
    Set RS = New Recordset
    RS.Open "select form_name from modulemenu where module = " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
    RS.MoveFirst
    For i = 1 To RS.RecordCount
       'Header Node  Groups
       TV.Nodes.ADD "SPG", tvwChild, "G" & CStr(i), RS(0), 1
       TV.Nodes("G" & CStr(i)).Expanded = True
       Set FormRs = New Recordset
       FormRs.Open "Select Form_name from modulemenu where module = " & ModuleNo & " and groups = '" & RS(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
        On Error Resume Next
        FormRs.MoveFirst
       For J = 1 To FormRs.RecordCount
         TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
         TV.Refresh
         FormRs.MoveNext
       Next
     RS.MoveNext
    Next
LComm(4).Enabled = False
UComm(4).Enabled = False
Call clear
Call CanprocL(LComm)
UserFrame.Enabled = False
LevelFrame.Enabled = True
MFRAME.ZOrder
UFRAME.Visible = False

End Sub

Private Sub LComm_Click(Index As Integer)
Dim temprs As Recordset
Select Case Index
Case 0      'Show
    If Trim(Ltext(0).Text) = "" Then
        MsgBox "Enter the level", vbInformation, head
        Ltext(0).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
    End If
    Set temprs = New Recordset
    temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & "  and ulevel = " & Ltext(0).Text, DB
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
Case 1      'Addition
    Opt = "add"
    LUopt = "level"
    Call AMDprocL(LComm)
    Ltext(0).SetFocus
    TV.Nodes.clear
    TV.Checkboxes = True
    'TV.Nodes.Add , tvwparent, "SPG", "Spinning", 5 'Ravi
    TV.Nodes.ADD , tvwparent, "SPG", "Raw Material Inventory", 5
    TV.Nodes("SPG").Checked = True
    TV.Nodes("SPG").Expanded = True
    Set RS = New Recordset
    RS.Open "select form_name from modulemenu where module = " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
    RS.MoveFirst
    For i = 1 To RS.RecordCount
       'Header Node  Groups
       TV.Nodes.ADD "SPG", tvwChild, "G" & CStr(i), RS(0), 1
       TV.Nodes("G" & CStr(i)).Checked = True
       TV.Nodes("G" & CStr(i)).Expanded = True
       Set FormRs = New Recordset
       FormRs.Open "Select Form_name,ADM_FLG from modulemenu where module =" & ModuleNo & " and groups = '" & RS(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
       FormRs.MoveFirst
       For J = 1 To FormRs.RecordCount
         'Forms
         
         TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
         TV.Nodes("G" & CStr(i) & CStr(J)).Checked = True
         If FormRs(1) = "Y" Then
            For k = 1 To 3
              'Add Del Mod
              Select Case k
                Case 1
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Addtion", 3
                Case 2
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Modification", 4
                Case 3
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Deletion", 5
              End Select
            TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True
            Next
         End If
         FormRs.MoveNext
       Next
     RS.MoveNext
    Next
    DB.BeginTrans
     
Case 2, 3     'Modification
    
    Set RS = New Recordset
    RS.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' ", DB
    If RS(0) <= 0 Then
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
        CONDITION = "divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo
    ElseIf Index = 3 Then
        Opt = "del"
        LUopt = "level"
        Ltext(1).Locked = True
        CONDITION = "divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " and ulevel <> " & ulevel
    End If
    LevelFrame.Enabled = False
    UFRAME.Visible = True
    UFRAME.ZOrder
    TVUSER.Nodes.clear
    'TVUSER.Nodes.Add , tvwparent, "LSP", "Spinning", 6 'Ravi
    TVUSER.Nodes.ADD , tvwparent, "LSP", "Raw Material Inventory", 6
    TVUSER.Nodes("LSP").Expanded = True
    'Header Node  Groups
    Set FormRs = New Recordset
    FormRs.Open "select distinct ulevel,ulevel_name from userlevel where " & CONDITION, DB, adOpenStatic, adLockBatchOptimistic
    For J = 1 To FormRs.RecordCount
        TVUSER.Nodes.ADD "LSP", tvwChild, "L" & FormRs(0), FormRs(0) & " -- " & FormRs(1), 7
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
  temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
  If Not temprs(0) > 0 Then
     MsgBox "No records found", vbInformation, head
     Ltext(0).SetFocus
     SendKeys ("{home}+{end}")
     Exit Sub
  End If
  Set temprs = New Recordset
  temprs.Open "SELECT COUNT(*) FROM PP_PASSWD WHERE module = " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
  If temprs(0) > 0 Then
    MsgBox "Cannot be deleted, some users are in this level", vbInformation, head
    Call Form_Load
    Screen.MousePointer = 0
    Exit Sub
  End If
    

   If MsgBox("Do you want to delete", vbYesNo, head) = vbYes Then
     DB.Execute ("delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " and ulevel = " & Ltext(0).Text)
     DB.CommitTrans
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
   'Already exist check
   Dim CheckRs As Recordset
   Set CheckRs = New Recordset
   If Opt = "add" Then
   CheckRs.Open "select count(*) from userlevel where ulevel = " & Ltext(0).Text & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' AND MODULE =  " & ModuleNo, DB
   If CheckRs(0) > 0 Then
      MsgBox "Level Already entered", vbInformation, head
      Screen.MousePointer = 0
      Ltext(0).SetFocus
      SendKeys ("{home}+{end}")
      Exit Sub
   End If
   End If
  If Opt = "mod" Then
     DB.Execute ("delete from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " and ulevel = " & Ltext(0).Text)
  End If
   
   
   'save block
   
    Set RS = New Recordset
    RS.Open "select form_name,MENU_NAME,SNO from modulemenu where module = " & ModuleNo & " and groups = 'Groups' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
    RS.MoveFirst
    For i = 1 To RS.RecordCount
     
     If TV.Nodes("G" & CStr(i)).Checked = False Then
       
       'Header Node  Groups INSERT
       DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & RS(0) & "','N','" & RS(1) & "'," & RS(2) & ")")
       
     Else
       
       Set FormRs = New Recordset
       FormRs.Open "Select Form_name,ADM_FLG,MENU_NAME,SNO from modulemenu where module = " & ModuleNo & " and groups = '" & RS(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
       FormRs.MoveFirst
       For J = 1 To FormRs.RecordCount
        
        If TV.Nodes("G" & CStr(i) & CStr(J)).Checked = False Then
          'Forms
          DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & RS(0) & "','Y','" & FormRs(0) & "','N','" & FormRs(2) & "'," & FormRs("SNO") & ")")
        Else
          Dim AD, MD, DL As String
          If FormRs(1) = "Y" Then
             For k = 1 To 3
               'Add Del Mod
               Select Case k
               Case 1
                 AD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
               Case 2
                 MD = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
               Case 3
                 DL = IIf((TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True), "Y", "N")
               End Select
             Next
          Else
            AD = "N"
            MD = "N"
            DL = "N"
          End If
          DB.Execute ("INSERT INTO USERLEVEL (DIVCODE,MODULE,ULEVEL,ULEVEL_NAME,GROUP_NAME,GROUP_FLG,FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG,MENU_NAME,SNO) VALUES ('" & Mid(Combo1.Text, 1, 2) & "'," & ModuleNo & "," & CInt(Ltext(0).Text) & ",'" & Ltext(1).Text & "','" & RS(0) & "','Y','" & FormRs(0) & "','Y','" & AD & "','" & MD & "','" & DL & "','" & FormRs(2) & "'," & FormRs("SNO") & ")")
        End If
        FormRs.MoveNext
       Next
       
     End If
     RS.MoveNext
    Next
   
   Opt = ""
   Call CanprocL(LComm)
   DB.CommitTrans
   Screen.MousePointer = 0
   TV.Nodes.clear
   Call Form_Load
End Select
End Sub

Private Sub Ltext_Change(Index As Integer)
On Error Resume Next
If Index = 0 Then
    If Ltext(0).Text = "" Then
        Ltext(1).Text = ""
        Exit Sub
    End If
    Dim SRS As New Recordset
    SRS.Open "SELECT DISTINCT ULEVEL_NAME FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND MODULE = " & ModuleNo & " AND ULEVEL = " & Ltext(0).Text, DB
    If Not SRS.EOF And Opt <> "add" Then
        Ltext(1).Text = SRS(0)
        Ltext(1).Locked = True
    End If
    If Opt = "add" Then Ltext(1).Locked = False
    If SRS.EOF Then Ltext(1).Text = ""
    If Trim(Ltext(0).Text) = "" Then Ltext(1).Text = ""
End If
End Sub
Private Sub Ltext_KeyPress(Index As Integer, KeyAscii As Integer)
Dim num As String
Select Case Index
Case 0
      num = CStr(Ltext(Index).Text) & CStr(num)
      If Not (KeyAscii = 8 Or KeyAscii = vbKey0 Or KeyAscii = vbKey1 Or KeyAscii = vbKey2 Or KeyAscii = vbKey3 Or KeyAscii = vbKey4 Or KeyAscii = vbKey5 Or KeyAscii = vbKey6 Or KeyAscii = vbKey7 Or KeyAscii = vbKey8 Or KeyAscii = vbKey9 Or KeyAscii = 46) Then
         KeyAscii = 0
         Ltext(Index).Text = num
      End If
End Select
End Sub
Private Sub Ltext_LostFocus(Index As Integer)
Ltext(Index).Text = UCase(Ltext(Index).Text)
If Index = 0 And Opt = "add" Then
    If Ltext(0).Text = "" Then Exit Sub
  Dim SRS As New Recordset
    SRS.Open "SELECT DISTINCT ULEVEL_NAME FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND module = " & ModuleNo & " AND ULEVEL = " & Ltext(0).Text, DB
    If Not SRS.EOF And Opt = "add" Then
        MsgBox "This Level is Already created", vbInformation, head
        Ltext(0).Text = ""
        Ltext(0).SetFocus
        Screen.MousePointer = 0
        Ltext(1).Locked = False
        Exit Sub
    End If
End If
End Sub

Private Sub TV_NodeCheck(ByVal Node As MSComctlLib.Node)
 'SFSDF
 
End Sub



Private Sub TVUSER_DblClick()
If LUopt = "user" Then
 If TVUSER.SelectedItem.Key <> "RMI" Then
  Set FormRs = New Recordset
  FormRs.Open "SELECT USER_ID,USER_NAME,PASSWORD FROM PP_PASSWD WHERE module = " & ModuleNo & " and DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND ALEVEL = " & Ltext(0).Text & " AND USER_NAME = '" & TVUSER.SelectedItem.Text & "' ", DB
  UText(0).Text = FormRs(0)
  UText(1).Text = FormRs(1)
  If Opt = "mod" Then Opt = ""
  UText(2).Text = FormRs(2)
  UText(3).Text = FormRs(2)
  If Opt = "" Then Opt = "mod"
  UText(0).Locked = True
  UText(3).Enabled = False
  UComm(5).Visible = False
  UComm(6).Visible = False
  If Opt = "del" Then
   UText(0).Locked = True
   UText(1).Locked = True
   UText(2).Locked = True
   UText(3).Locked = True
  End If
   UFRAME.Visible = False
  End If
 ElseIf LUopt = "level" Then
  If TVUSER.SelectedItem.Key = "LSP" Then Exit Sub
  Set FormRs = New Recordset
  FormRs.Open "SELECT ulevel,ulevel_name FROM userlevel WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " AND uLEVEL = '" & Mid(TVUSER.SelectedItem.Text, 1, (InStr(TVUSER.SelectedItem.Text, "-") - 2)) & "' ", DB
  Ltext(0).Text = FormRs(0)
  Ltext(1).Text = FormRs(1)
  LevelFrame.Enabled = True
  UFRAME.Visible = False
  Ltext(1).SetFocus
  Call shows
  Ltext(1).Locked = False
 End If

End Sub

Private Sub UComm_Click(Index As Integer)
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
    temprs.Open "select count(*) from userlevel where divcode ='" & Mid(Combo1.Text, 1, 2) & "' and module = " & ModuleNo & " and ulevel = " & Ltext(0).Text, DB
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
    Call AMDprocU(UComm)
    UText(0).SetFocus
    DB.BeginTrans

Case 2, 3     'Modification
    If adoPrimaryRS.RecordCount > 0 Then
        If Index = 2 Then
            CONDITION = "module = " & ModuleNo & " and divcode= '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text
        ElseIf Index = 3 Then
            CONDITION = "module = " & ModuleNo & " and divcode= '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text & " AND USER_ID <> '" & USERID & "'"
        End If
        'Header Node  Groups
        Set FormRs = New Recordset
        FormRs.Open "select user_id ,user_name from pp_passwd where " & CONDITION, DB, adOpenStatic, adLockBatchOptimistic
        If FormRs.RecordCount <= 0 Then
            MsgBox "No records found or" & Chr$(13) & "The User must have Currently Loged on", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        If Index = 2 Then Opt = "mod" Else Opt = "del"
        LUopt = "user"
        Call AMDprocU(UComm)
        DB.BeginTrans
        moflg = True
        UFRAME.Visible = True
        UFRAME.ZOrder
        TVUSER.Nodes.clear
        TVUSER.Nodes.ADD , tvwparent, "SPG", Ltext(0).Text & " -- " & Ltext(1), 6
        TVUSER.Nodes("SPG").Expanded = True
        For J = 1 To FormRs.RecordCount
            TVUSER.Nodes.ADD "SPG", tvwChild, "U" & FormRs(0), FormRs(1), 7
            FormRs.MoveNext
        Next
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
       DB.Execute ("delete from pp_passwd where module = " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text & " and user_id = '" & UText(0).Text & "' ")
    End If
    s = ""
    l = Len(UText(2).Text)
        Dim RS1 As Recordset
    For i = 1 To l
       Set RS1 = New Recordset
       c = (Asc(Mid$(UText(2).Text, i, 1)) + 30) * 2
        Set RS1 = New Recordset
        RS1.Open "select char(" & c & ") ", DB
        s = s + RS1(0)
    Next
    
    If Opt = "add" Then
        DB.Execute ("insert into pp_passwd values('" & Mid(Combo1.Text, 1, 2) & "','" & UText(0).Text & "'," & Ltext(0).Text & ",'" & s & "','" & UText(1).Text & "'," & ModuleNo & ")")
    ElseIf Opt = "mod" Then
        s = IIf((moflg = False), s, UText(2).Text)
        DB.Execute ("insert into pp_passwd values('" & Mid(Combo1.Text, 1, 2) & "','" & UText(0).Text & "'," & Ltext(0).Text & ",'" & s & "','" & UText(1).Text & "'," & ModuleNo & ")")
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
    
    
Case 6      'move Previous
    
    adoPrimaryRS.MovePrevious
    If adoPrimaryRS.BOF Then
      adoPrimaryRS.MoveFirst
    End If
    UText(0).Text = adoPrimaryRS(1)
    UText(1).Text = adoPrimaryRS(4)
    UText(2).Text = adoPrimaryRS(3)
    UText(3).Text = adoPrimaryRS(3)
    
End Select

End Sub
Private Sub AMDprocU(tol As Object)
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
  tol(0).Enabled = False    'Show
  tol(1).Enabled = False    'Add
  tol(2).Enabled = False    'Mod
  tol(3).Enabled = False    'Del
  tol(4).Enabled = True     'Save
  Ltext(1).Locked = False
  UText(3).Enabled = True
  UserFrame.Enabled = False
  ExCan.Caption = "Cancel"
End Sub
Private Sub CanprocL(tol As Object)
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
End Sub

Private Sub clear()
  Dim oText As TextBox
  For Each oText In Me.UText
    oText.Text = ""
  Next
  Dim otext1 As TextBox
  For Each otext1 In Me.Ltext
    otext1.Text = ""
  Next
  If Opt = "add" Then Exit Sub
   Ltext(1).Locked = True
   UText(2).Locked = True
   UText(3).Locked = True
  
End Sub
Private Sub shows()
  TV.Nodes.clear
  TV.Checkboxes = True
  'TV.Nodes.Add , tvwparent, "SPG", "Spinning", 1
  TV.Nodes.ADD , tvwparent, "SPG", "Raw Material Inventory", 1 'Ravi
  TV.Nodes("SPG").Checked = True
  TV.Nodes("SPG").Expanded = True
  Set RS = New Recordset
  RS.Open "SELECT FORM_NAME FROM MODULEMENU WHERE MODULE = " & ModuleNo & " AND GROUPS = 'Groups' order by sno", DB
  RS.MoveFirst
  For i = 1 To RS.RecordCount
    TV.Nodes.ADD "SPG", tvwChild, "G" & CStr(i), RS(0), 1
    Set temprs = New Recordset
    temprs.Open "select count(*) from userlevel where divcode = '" & Mid(Combo1.Text, 1, 2) & "' AND MODULE = " & ModuleNo & " AND GROUP_NAME = '" & RS(0) & "' AND GROUP_FLG = 'Y' AND ULEVEL = " & Ltext(0).Text, DB
    If temprs(0) > 0 Then TV.Nodes("G" & CStr(i)).Checked = True
    TV.Nodes("G" & CStr(i)).Expanded = True
    Set FormRs = New Recordset
    FormRs.Open "Select Form_name,ADM_FLG from modulemenu where module = " & ModuleNo & " and groups = '" & RS(0) & "' order by sno ", DB, adOpenStatic, adLockBatchOptimistic
    FormRs.MoveFirst
    For J = 1 To FormRs.RecordCount
       
       'Forms
       TV.Nodes.ADD "G" & CStr(i), tvwChild, "G" & CStr(i) & CStr(J), FormRs(0), 2
       Set temprs = New Recordset
       temprs.Open "SELECT FORM_NAME,FORM_FLG,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Mid(Combo1.Text, 1, 2) & "' AND MODULE = " & ModuleNo & " AND FORM_NAME = '" & FormRs(0) & "' AND ULEVEL = " & Ltext(0).Text, DB
       On Error Resume Next
       If Not temprs.EOF Then
         If temprs(1) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J)).Checked = True
       End If
         If FormRs(1) = "Y" Then
            For k = 1 To 3
              'Add Del Mod
              Select Case k
                Case 1
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Addtion", 3
                  If Not temprs.EOF Then
                    If temprs(2) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True
                  End If
                Case 2
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Modification", 4
                  If Not temprs.EOF Then
                    If temprs(3) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True
                  End If
                Case 3
                  TV.Nodes.ADD "G" & CStr(i) & CStr(J), tvwChild, "G" & CStr(i) & CStr(J) & "AMD" & CStr(k), "Deletion", 5
                  If Not temprs.EOF Then
                    If temprs(4) = "Y" Then TV.Nodes("G" & CStr(i) & CStr(J) & "AMD" & CStr(k)).Checked = True
                  End If
              End Select
NE1:      TV.Refresh
          Next
          End If
          FormRs.MoveNext
    Next
    RS.MoveNext
  Next

End Sub
Private Sub UText_Change(Index As Integer)
If Opt = "mod" And Index = 2 Then
    If moflg = True Then
        UText(3).Enabled = True
        UText(2).Text = ""
        UText(3).Text = ""
        moflg = False
    End If
    If UText(2).Text = adoPrimaryRS(3).OriginalValue Then
       UText(3).Text = adoPrimaryRS(3).OriginalValue
    Else
        UText(3).Text = ""
    End If
End If
End Sub

Private Sub UText_LostFocus(Index As Integer)
UText(Index).Text = UCase(UText(Index).Text)
If Opt = "add" Then UText(3).Enabled = True

If Opt = "add" Or Opt = "mod" Then
  Dim temprs As Recordset
    If UText(Index).Enabled = False Then Exit Sub
    If Index = 0 And Opt = "add" Then
    Set temprs = New Recordset
    temprs.Open "select count(*) from pp_passwd where module = " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and  user_id = '" & UText(0).Text & "'", DB
    If temprs(0) > 0 Then
        MsgBox "UserId already entered", vbInformation, head
        UText(0).Text = ""
        UText(0).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
    End If
    ElseIf Index = 1 And Trim(UText(1).Text) <> "" And Opt = "add" Then
        Set temprs = New Recordset
        temprs.Open "select count(*) from pp_passwd where module = " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and  user_name = '" & UText(1).Text & "' ", DB
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
End Sub
Private Sub usershow()
    UserFrame.Enabled = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select * from pp_passwd where  module = " & ModuleNo & " and divcode = '" & Mid(Combo1.Text, 1, 2) & "' and alevel = " & Ltext(0).Text, DB, adOpenStatic, adLockBatchOptimistic
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveFirst
        UComm(5).Visible = True
        UComm(6).Visible = True
        UComm(5).SetFocus
        UText(0).Text = adoPrimaryRS(1)
        UText(1).Text = adoPrimaryRS(4)
        UText(2).Text = adoPrimaryRS(3)
        UText(3).Text = adoPrimaryRS(3)
        UText(0).Locked = True
        UText(1).Locked = True
        UText(2).Locked = True
        UText(3).Locked = True
    End If
    ExCan.Caption = "Cancel"
End Sub
