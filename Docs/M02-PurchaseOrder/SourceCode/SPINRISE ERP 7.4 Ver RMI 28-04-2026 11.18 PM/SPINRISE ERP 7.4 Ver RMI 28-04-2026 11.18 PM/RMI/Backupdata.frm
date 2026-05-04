VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Databaseopr 
   Caption         =   "Database Backup / Restore"
   ClientHeight    =   6570
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8880
   DrawWidth       =   2
   ForeColor       =   &H00404080&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6570
   ScaleWidth      =   8880
   WindowState     =   2  'Maximized
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   1680
      Top             =   2160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   0
      Top             =   6270
      Width           =   8880
      _ExtentX        =   15663
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "2:50 PM"
         EndProperty
      EndProperty
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
   Begin VB.Frame Frame1 
      Height          =   2100
      Left            =   1080
      TabIndex        =   1
      Top             =   1920
      Width           =   6135
      Begin VB.CommandButton Command1 
         Caption         =   "Restore"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   2970
         TabIndex        =   10
         Top             =   1545
         Width           =   1125
      End
      Begin VB.CommandButton CmdSelect 
         Caption         =   "..."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   5325
         TabIndex        =   5
         Top             =   870
         Width           =   405
      End
      Begin VB.TextBox TxtFileName 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1620
         TabIndex        =   4
         Top             =   885
         Width           =   3600
      End
      Begin VB.CommandButton CmdOk 
         Caption         =   "Backup"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   1560
         TabIndex        =   3
         Top             =   1545
         Width           =   1125
      End
      Begin VB.CommandButton CmdCancel 
         Cancel          =   -1  'True
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   4275
         TabIndex        =   2
         Top             =   1545
         Width           =   1035
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Select the File"
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
         Left            =   90
         TabIndex        =   6
         Top             =   945
         Width           =   1245
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2640
      Left            =   855
      TabIndex        =   8
      Top             =   1740
      Width           =   6705
      _ExtentX        =   11827
      _ExtentY        =   4657
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Backup/Restore Database"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   2505
      TabIndex        =   9
      Top             =   735
      Width           =   3330
   End
   Begin VB.Label Date1 
      Caption         =   " "
      DataField       =   "adate"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   255
      Left            =   7695
      TabIndex        =   7
      Top             =   810
      Width           =   1545
   End
End
Attribute VB_Name = "Databaseopr"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim entry As Boolean
Dim time, curdate As String
Dim Shift As String
Dim InTime As String
Dim OutTime As String
Dim MinuTe As String
Dim cHecRs As Recordset
Dim i As Variant
Dim otflag As String
Dim EMPno As String
Dim Rs, rs1, RS2 As Recordset
Dim DB As Connection
Dim Opt As String
Dim itary() As String
Dim st, st1, st2 As String
Dim ENDTIME, str_flg As String
Dim tot1 As String
Dim WCAT As String
Dim manual As String

'---------------------------------------------------------------------------------------
' Procedure : Cmdcancel_Click
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

  Frame1.Visible = False
  SSTab1.Visible = False
  Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Cmdcancel_Click of Form Databaseopr", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub cmdOk_Click()
stbar.Panels(2).Text = ""
If TxtFileName.Text = "" Then
    TxtFileName.Text = "C:\Kalsoft\" & DB.DefaultDatabase & "" & Format(Date, "dd-mm-yy") & ".dmp"
End If

 Call Backup

End Sub

'---------------------------------------------------------------------------------------
' Procedure : CmdSelect_Click
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub CmdSelect_Click()
On Error GoTo CmdSelect_Click_Error

    CommonDialog1.Filter = "Dump Files (*.d mp)|*.dmp|All Files(*.*)|*.*|"
    CommonDialog1.ShowOpen
    TxtFileName.Text = CommonDialog1.FileName

Exit Sub
CmdSelect_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure CmdSelect_Click of Form Databaseopr", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Backup()
'                   Developed By N.senthilchinnappa
'                             on 26-11-2003
On Error GoTo xxx
    Screen.MousePointer = 11
    DB.CommandTimeout = 5000
    DB.Execute "Backup database " & DB.DefaultDatabase & " to disk='" & TxtFileName.Text & "'"
    MsgBox "Completed"
    cmdok.Enabled = False
    TxtFileName.Text = ""
    Screen.MousePointer = 0
    Exit Sub
xxx:
If err.Number = "-2147217900 " Then
    MsgBox "You Must Create folder named Kalsoft in d: IN Database server or " & vbCrLf & " Enter a File path in Databse server"
Else
    MsgBox "Backup Not completed check Diskspace"
    
End If
MsgBox err.description
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : Restore
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Restore()
'                   Developed By N.senthilchinnappa
'                             on 26-11-2003
On Error GoTo Restore_Error

On Error GoTo iii
Database = UCase(InputBox("Enter the Database Name for Restore", head, DB.DefaultDatabase))
If Database = "" Then
        MsgBox "Restore Option Not Complete", vbInformation, head
        TxtFileName.Text = ""
        Exit Sub
End If
DB.Close
DB.Open connectstring
DB.DefaultDatabase = "Master"
Set Rs = New Recordset
Rs.Open "select count(*) from sysdatabases where name='" & Database & "'", DB
If Rs(0) = 0 Then
    X = MsgBox("There no Database Name like " & Database & vbCrLf & "Do you Want Create", vbYesNo, head)
    If X = 6 Then
        DB.Execute "Create Database " & Database
        MsgBox "Database Created", vbInformation, head
        flg = "Y"
        X = 0
    End If
End If
X = MsgBox("Are You Sure?!.You want Restore " & Database, vbYesNo, head)
If X = 6 Then
    DB.DefaultDatabase = Database
    Set Rs = New Recordset
    Rs.Open "select * from sysfiles", DB
    datafile = Trim(Rs("filename"))
    Rs.MoveNext
'Logfile
    Logfile = Trim(Rs("filename"))
    Rs.Close
    DB.CommandTimeout = 5000
    Screen.MousePointer = 11
    DB.DefaultDatabase = "Master"
'getting Logical Name from Dump file
            Set Rs = DB.Execute("Restore filelistonly from disk='" & TxtFileName.Text & "'")
            dataname = Trim(Rs(0))
            Rs.MoveNext
            Logname = Trim(Rs(0))
            DB.Execute "Restore database " & Database & " from disk='" & TxtFileName.Text & "' " & _
                       "With replace,stats,Move '" & dataname & "' to '" & datafile & "'," & _
                       "Move '" & Logname & "' to '" & Logfile & "'"
            MsgBox "Completed", vbInformation, head
ElseIf flg = "Y" Then
    DB.Execute "drop database " & Database
End If
    TxtFileName.Text = ""
    Screen.MousePointer = 0
    Exit Sub
iii:
    MsgBox "Restore Not Completed", vbInformation, head
    MsgBox err.description
    Screen.MousePointer = 0

Exit Sub
Restore_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Restore of Form Databaseopr", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command1_Click()
stbar.Panels(2).Text = ""
If TxtFileName.Text = "" Then
   MsgBox "You Must Select Backup set to restore", vbExclamation, head
   Screen.MousePointer = 0
   Exit Sub
End If
On Error GoTo ccd
Set Rs = DB.Execute("RESTORE VERIFYONLY FROM disk='" & TxtFileName.Text & "'")
Call Restore
ccd:
If err.Number = "-2147217900" Then
    MsgBox "The file '" & TxtFileName.Text & "'is not a valid Format backup set"
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
'    Connectstring = "driver={Sql Server};server=SERVER;uid=SA;pwd=; database=SUBI;"
    DB.Open connectstring
    'Call NEWFORM1(BUTTON, 68)

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form Databaseopr", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Unload
' DateTime  : 07/12/2008 14:34
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

On Error Resume Next
DB.Close

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Unload of Form Databaseopr", vbInformation, head
Screen.MousePointer = 0
End Sub
