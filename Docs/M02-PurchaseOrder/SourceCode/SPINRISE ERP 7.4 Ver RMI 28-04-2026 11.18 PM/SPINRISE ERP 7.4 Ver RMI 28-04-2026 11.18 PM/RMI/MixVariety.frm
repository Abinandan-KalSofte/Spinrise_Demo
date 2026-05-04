VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form MixVariety 
   Caption         =   "Mixing Count Variety"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8970
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -45
      TabIndex        =   17
      Top             =   -135
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":0000
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "MixVariety.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":069F
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "MixVariety.frx":09A9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":0D23
         Height          =   510
         Index           =   8
         Left            =   4245
         Picture         =   "MixVariety.frx":116D
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "MixVariety.frx":14CF
         Height          =   510
         Index           =   10
         Left            =   5295
         Picture         =   "MixVariety.frx":17D9
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":1B55
         Height          =   510
         Index           =   9
         Left            =   4755
         Picture         =   "MixVariety.frx":1E5F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":2201
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "MixVariety.frx":264B
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":29E0
         Height          =   510
         Index           =   7
         Left            =   3720
         Picture         =   "MixVariety.frx":2E2A
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1605
         Picture         =   "MixVariety.frx":317A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":3511
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   1080
         Picture         =   "MixVariety.frx":381B
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":3BB7
         Height          =   510
         Index           =   5
         Left            =   2700
         Picture         =   "MixVariety.frx":4001
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":4366
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "MixVariety.frx":4670
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixVariety.frx":4A03
         Height          =   510
         Index           =   6
         Left            =   3195
         Picture         =   "MixVariety.frx":4E4D
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "d MMMM yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8805
         TabIndex        =   19
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7275
         TabIndex        =   18
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   22
      Top             =   10755
      Width           =   20370
      _ExtentX        =   35930
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12982
            MinWidth        =   12982
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "06/02/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "12:30 PM"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   8400
      _ExtentX        =   14817
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "MixVariety.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4070
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   8115
         _ExtentX        =   14314
         _ExtentY        =   7170
         _Version        =   393216
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483630
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
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
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   600
      TabIndex        =   13
      Top             =   1410
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc KslList1 
         Height          =   3210
         Left            =   585
         TabIndex        =   14
         Top             =   810
         Width           =   7125
         _ExtentX        =   12568
         _ExtentY        =   5662
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "MixVariety.frx":51B6
         Height          =   615
         Left            =   4920
         Picture         =   "MixVariety.frx":5598
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4050
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "MixVariety.frx":596B
         Height          =   615
         Left            =   3180
         Picture         =   "MixVariety.frx":5D51
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   4050
         Width           =   1185
      End
      Begin VB.Label Label15 
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   20
         Top             =   180
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mixing Count Variety"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   960
      TabIndex        =   21
      Top             =   930
      Width           =   2790
   End
End
Attribute VB_Name = "MixVariety"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim Opt As String
Dim Rs As Recordset
Dim FLGREPET As Boolean
Dim cntcode As String
Dim cntnam As String
Dim st, st1, st2 As String
Dim i As Integer
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim keys As Integer
Dim FLG As String
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Variety"
End Sub

Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error

grdDataGrid.Columns(0).Locked = False
grdDataGrid.Columns(1).Locked = False
grdDataGrid.Columns(2).Locked = False
grdDataGrid.Columns(3).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form MixVariety", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub disablcontls()
On Error GoTo disablcontls_Error

grdDataGrid.Columns(0).Locked = True
grdDataGrid.Columns(1).Locked = True
grdDataGrid.Columns(2).Locked = True
grdDataGrid.Columns(3).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form MixVariety", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub bindcontls()

On Error GoTo bindcontls_Error

    Set grdDataGrid.DataSource = adoprimaryrs

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form MixVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
If Opt <> "add" Then
    StatusBar1.Panels(2).Text = "Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
        'addition
        If Record_Exists("rm_var", "Please Define the Variety") = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        DB.BeginTrans
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where 1=2 order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoprimaryrs
        grdDataGrid.Columns(3).Width = 2564.788
        grdDataGrid.Columns(2).Width = 915.0237
        grdDataGrid.Columns(1).Width = 3179.906
        grdDataGrid.Columns(0).Width = 1140.095
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Columns(1).Locked = True
        grdDataGrid.Columns(2).Locked = False
        grdDataGrid.Columns(3).Locked = True
        grdDataGrid.Columns(3).Width = 2564.788
        grdDataGrid.Columns(2).Width = 915.0237
        grdDataGrid.Columns(1).Width = 3179.906
        grdDataGrid.Columns(0).Width = 1140.095
        adoprimaryrs.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Add Record"
        StatusBar1.Panels(2).Text = "Addition"
        'grddatagrid.ScrollBars = dbgBoth
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
Case 1, 2
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_count a,rm_cntvar b where a.cntcd = b.cntcd", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
        End If
'''        Label15.Caption = "Count"
'''        KSLLIST1.conn = connectstring
'''        KSLLIST1.table = "rm_count a,rm_cntvar b where a.cntcd = b.cntcd"
'''
'''        KSLLIST1.listfield1 = "b.cntcd"
'''        KSLLIST1.listfield2 = "a.cntname"
'''        ' grddatagrid.AllowUpdate = False
'''        Frame3.Visible = True
'''        Command3.Default = True
'''        Frame3.ZOrder
'''        KSLLIST1.SetFocus
        DB.BeginTrans
        
        StatusBar1.Panels(2).Text = "Select Count Code from the list for Modification"
'        LookUp.clear = True
'        LookUp.Query = "select DISTINCT  b.cntcd""Code"",a.cntname""Name"" from rm_count a,rm_cntvar b where a.cntcd = b.cntcd"
'        LookUp.DefCol = "Name"
'        LookUp.ALIGN = "2000,3000"
'        LookUp.Caption = "Mixing Count Listing"
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            Set Rs = New Recordset
'            Rs.Open "select cntcd ,cntname from rm_count where cntcd='" & LookUp.Fields(0) & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
'            cntcode = Rs("cntcd")
'            cntnam = Rs("cntname")
'            LookUp.clear = True
'            LookUp.Query = "select a.varcode""Code"",a.varname""Name"" from rm_var a,rm_cntvar b where a.varcode=b.varcode and b.cntcd='" & cntcode & "'"
'            LookUp.DefCol = "Name"
'            LookUp.ALIGN = "2000,3000"
'            LookUp.Caption = "Variety Listing"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                StatusBar1.Panels(2).Text = ""
'                Set adoPrimaryRS = New Recordset
'                adoPrimaryRS.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd='" & cntcode & "' and  a.varcode='" & LookUp.Fields(0) & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
'                Call bindcontls
'                GrdDataGrid.Columns(3).Width = 2564.788
'                GrdDataGrid.Columns(2).Width = 915.0237
'                GrdDataGrid.Columns(1).Width = 3179.906
'                GrdDataGrid.Columns(0).Width = 1140.095
'                BUTTON(9).Enabled = True 'Save
'                BUTTON(10).Enabled = True
'                If Opt = "del" Then
'                    Call disablcontls
'                    BUTTON(9).SetFocus
'                End If
'                Frame3.Visible = False
'                Call adddelmod(BUTTON)
'                'BUTTON(9).ToolTipText = "Modify"
'                Screen.MousePointer = 0
'            Else
'                Call BUTTON_Click(10)
'            End If
'        Else
'            Call BUTTON_Click(10)
'        End If
'    Else
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
        LookUp.clear = True
        LookUp.query = "select Distinct a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd=b.cntcd and a.varcode=c.varcode order by a.cntcd"
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,3000,2000,3000"
        LookUp.Caption = "Count Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select Distinct a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd='" & LookUp.Fields(0) & "' and  a.varcode='" & LookUp.Fields(2) & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            grdDataGrid.Columns(3).Width = 2564.788
            grdDataGrid.Columns(2).Width = 915.0237
            grdDataGrid.Columns(1).Width = 3179.906
            grdDataGrid.Columns(0).Width = 1140.095
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
            Call adddelmod(BUTTON)
            'BUTTON(9).ToolTipText = "Modify"
            Screen.MousePointer = 0
        Else
            Call BUTTON_Click(10)
        End If
    End If
    Screen.MousePointer = 0
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_count a,rm_cntvar b where a.cntcd = b.cntcd", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        Label15.Caption = "Count"
        KslList1.conn = connectstring
        KslList1.Table = "rm_count a,rm_cntvar b where a.cntcd = b.cntcd"
        
        KslList1.listfield1 = "b.cntcd"
        KslList1.listfield2 = "a.cntname"
        ' grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KslList1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        'BUTTON(4).Enabled = False
        'BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Count Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
If Record_Exists("rm_count") = False And Record_Exists("rm_var") = False And Record_Exists("rm_cntvar") = False Then Exit Sub
            Screen.MousePointer = 11
            Set rep = New Report.ReportView
            Dim a As Integer
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
            'Open "c:\mixcnt.txt" For Output As #a
             Open KALFOLDERDATA & "\mixcnt.TXT" For Output As #a
            Call header(pg, co, a)
             For i = 1 To Rs.RecordCount
                Print #a, Space(5) + Padr(Rs(0), 6, " ") + Space(10) + Padr(Rs(1), 25, " ") + Space(5) + Padr(Rs(2), 6, " ") + Space(9) + Padr(Rs(3), 15, " ")
                Print #a,
                c = c + 2
                    If c > PageLen Then
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Call header(pg, co, a)
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(5) + String(77, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\mixcnt.bat" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type mixcnt.txt > prn"
'            Close #a
'            Rep.txtfile = "c:\mixcnt.txt"
'            Rep.Batfile = "c:\mixcnt.bat"
            a = FreeFile
            Call KALBATPROCESS("mixcnt")
            Screen.MousePointer = 0






'        'List
'        desc.Caption = "Listing"
'        Set dv1 = New DataEnvironment1
'        dv1.Connection1.ConnectionString = connectstring
'        Set cn = New Connection
'        cn.CursorLocation = adUseClient
'    If cn.State = 1 Then
'        cn.Close
'    End If
'        cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If cn.State = adStateclose Then
'        cn.Open
'    End If
'        'Call repproc2(rptmixcountverity)
'        dv1.Connection1.ConnectionString = connectstring
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'        dv1.rsCommand1.Open "select a.cntcd,b.cntname,a.varcode,c.varname from rm_cntvar a,rm_count b,rm_var c where a.cntcd=b.cntcd and a.varcode=c.varcode  order by a.cntcd", cn
'    If dv1.rsCommand1.RecordCount <> 0 Then
'        Set rptmixcountverity.DataSource = dv1
'        rptmixcountverity.Show
'        desc.Caption = "Query"
'    Else
'        MsgBox "No Records Found", vbInformation, head
'        desc.Caption = "Query"
'        Exit Sub
'    End If
    
Case 4

        'Find
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_count a,rm_cntvar b where a.cntcd = b.cntcd", DB
        LookUp.clear = True
        LookUp.query = "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd=b.cntcd and a.varcode=c.varcode order by a.cntcd"
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,3000,2000,3000"
        LookUp.Caption = "Count Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd='" & LookUp.Fields(0) & "' and  a.varcode='" & LookUp.Fields(2) & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            grdDataGrid.Columns(3).Width = 2564.788
            grdDataGrid.Columns(2).Width = 915.0237
            grdDataGrid.Columns(1).Width = 3179.906
            grdDataGrid.Columns(0).Width = 1140.095
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
            Screen.MousePointer = 0
        Else
            Call BUTTON_Click(10)
        End If
'    If Not Rs(0) = 0 Then
'        Screen.MousePointer = 11
'        Opt = "fnd"
'        desc.Caption = "Find"
'        Label15.Caption = "Count"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_count a,rm_cntvar b where a.cntcd = b.cntcd"
'
'        KslList1.listfield1 = "b.cntcd"
'        KslList1.listfield2 = "a.cntname"
'        flg = "y"
'        ' grddatagrid.AllowUpdate = False
'        Frame3.Visible = True
'        Command3.Default = True
'        Frame3.ZOrder
'        KslList1.SetFocus
'        'db.BeginTrans
'        Call adddelmod(BUTTON)
'        BUTTON(9).Enabled = False 'Save
'        BUTTON(10).Enabled = False
'        BUTTON(9).Enabled = False
'        StatusBar1.Panels(2).Text = "Select Count Code from the list for Find"
'        Screen.MousePointer = 0
'        Frame3.Visible = True
'    Else
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
    
Case 5
'first
         desc.Caption = "Query"
'         BUTTON(4).Enabled = False
         On Error GoTo GoFirstError
         adoprimaryrs.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
            'BUTTON(4).Enabled = True
          Beep
          Exit Sub
GoFirstError:
       MsgBox Err.Description, vbInformation, head
            
Case 6
'next
            desc.Caption = "Query"
            'BUTTON(4).Enabled = True
            On Error GoTo GoNextError
            If Not adoprimaryrs.EOF Then
                adoprimaryrs.MoveNext
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
            If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(4).Enabled = True
                'Call NEX(BUTTON)
                'moved off the end so go back
                adoprimaryrs.MoveLast
            End If
            'show the current record
            Call navi(BUTTON)
              BUTTON(4).Enabled = True
            Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head
Case 7
 'previous
        desc.Caption = "Query"
        BUTTON(4).Enabled = True
        On Error GoTo GoPrevError
        If Not adoprimaryrs.BOF Then
            adoprimaryrs.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
            Beep
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            
            'Call PREV(BUTTON)
           adoprimaryrs.MoveFirst
        End If
        'show the current record
        Call navi(BUTTON)
        BUTTON(4).Enabled = True
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head
       
Case 8
'last
         desc.Caption = "Query"
       
         On Error GoTo GoLastError
         adoprimaryrs.MoveLast
         StatusBar1.Panels(2).Text = "Last Record"
        'calling las procedure from module
         Call navi(BUTTON)
         Call las(BUTTON)
           BUTTON(4).Enabled = True
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
       If adoprimaryrs.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(2).Text = "" Then
            MsgBox "Can't Save Empty records", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
       End If
       
       If grdDataGrid.Columns(2).Text = "" And grdDataGrid.Columns(0).Text <> "" Then
            MsgBox "Please enter the Variety details", vbInformation, head
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            Exit Sub
       End If
     
      '  StatusBar1.Panels(2).Text = "Enter One Letter Category Code"

'       If grddatagrid.Columns(2).Text = "" Or grddatagrid.Columns(3).Text = "" And grddatagrid.Columns(0).Text <> "" Then
'            MsgBox "Enter correct variety", vbInformation, head
'            grddatagrid.Col = 2
'            grddatagrid.SetFocus
'            Exit Sub
'       End If
       If Opt = "add" Then
            adoprimaryrs.MoveFirst
            Opt = ""
            
             Set Rs = New Recordset
             Rs.Open "select cntcd from rm_cntvar where cntcd = '" & grdDataGrid.Columns(0).Text & "' and varcode = '" & grdDataGrid.Columns(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
             If Rs.RecordCount <> 0 Then
                   MsgBox "Mixing Count Variety, Already Defined.", vbInformation, head
                   grdDataGrid.Columns(0).Text = " "
                   grdDataGrid.Columns(0).Locked = False
                   grdDataGrid.Col = ColIndex
                   Opt = "add"
                   grdDataGrid.SetFocus
                   
                   Exit Sub
            End If

            
            
            
            Do While Not adoprimaryrs.EOF
                If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
                   adoprimaryrs.Delete
                End If
                adoprimaryrs.MoveNext
            Loop
      'If Opt = "add" Then
      adoprimaryrs.MoveFirst
      If Not Trim(grdDataGrid.Columns(0).Text) = "" And Not Trim(grdDataGrid.Columns(1).Text) = "" Then
           On Error Resume Next
            adoprimaryrs.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Saved.", vbInformation, head
      End If
                StatusBar1.Panels(2).Text = ""
      'End If
      End If
    adoprimaryrs.MoveFirst
    If Opt = "mod" Then
        '''''db.Execute "update rm_cntvar set varcode='" & grddatagrid.Columns(2).Text & "' where cntcd='" & grddatagrid.Columns(0).Text & "' and varcode='" & grddatagrid.Columns(2).Text & "' "
        DB.Execute "update rm_cntvar set varcode='" & grdDataGrid.Columns(2).Text & "' where cntcd='" & grdDataGrid.Columns(0).Text & "' and varcode='" & adoprimaryrs.Fields("variety") & "'"
        DB.CommitTrans
        MsgBox "Record(s) Modified.", vbInformation, head
    End If
       
    If Opt = "del" Then
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            DB.Execute ("delete from rm_cntvar where cntcd='" & grdDataGrid.Columns(0).Text & "' and varcode='" & grdDataGrid.Columns(2).Text & "'")
            DB.CommitTrans
            MsgBox "Record(s) Deleted.", vbInformation, head
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
        Opt = " "
        Call Query_mode
   
 grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095



        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        'BUTTON(4).Enabled = True
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "fnd"
       ' db.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "mod"
    
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call Query_mode
    'grddatagrid.Visible = True
    'sstab1.Visible = True
  
grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095


    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    If adoprimaryrs.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''''
    'BUTTON(4).Enabled = True
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This variety Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "variety Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This variety Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
   ' grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form MixVariety", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Visible = True
'Frame2.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    Select Case KslList1.listfield1
  
        Case "cntcd"
        'If opt = "add" Or opt = "mod" Then
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_count where cntcd='" & KslList1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            grdDataGrid.Columns(0).Text = Rs("cntcd")
            grdDataGrid.Columns(1).Text = Rs("cntname")
        '    BUTTON(9).Enabled = True 'Save
        '    BUTTON(10).Enabled = True
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            Frame3.Visible = False
    
        Case "varcode"
            If Record_Exists("RM_VAR", "NO RECORDS FOUND") = False Then Exit Sub
            'If opt = "add" Or opt = "mod" Then
            Frame3.Visible = False
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select varcode ,varname from rm_var where varcode='" & KslList1.Code & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
            grdDataGrid.Columns(2).Text = Rs("varcode")
            grdDataGrid.Columns(3).Text = Rs("varname")
            grdDataGrid.AllowUpdate = True
            adoprimaryrs.AddNew
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
            Else
            MsgBox "Select Another Variety", vbInformation, head
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            End If
        '    BUTTON(9).Enabled = True 'Save
        '    BUTTON(10).Enabled = True
            'grddatagrid.Col = 2
            ''grddatagrid.SetFocus
            
      
      Case "b.cntcd"
      If FLG = "y" Then
              FLG = ""
                          Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_count where cntcd='" & KslList1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            cntcode = Rs("cntcd")
            cntnam = Rs("cntname")

               Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd='" & cntcode & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                
                'Call ENABLCONTLS
                
                Call bindcontls
            '    Txtfields(0).Enabled = False
            '    Txtfields(1).SetFocus
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = True
                grdDataGrid.Columns(2).Locked = True
                grdDataGrid.Columns(3).Locked = True
            '    grddatagrid.Columns(4).Locked = False
            '    grddatagrid.Columns(4).Width = 689.9528
grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095


                BUTTON(9).Enabled = False 'Save
                BUTTON(10).Enabled = True
                
                If Opt = "del" Then
                Call disablcontls
                BUTTON(9).Enabled = True
                BUTTON(4).Enabled = True
                End If
                Frame3.Visible = False
      Else
       SSTab1.Visible = False
           Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_count where cntcd='" & KslList1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            cntcode = Rs("cntcd")
            cntnam = Rs("cntname")
'            grddatagrid.Columns(0).Text = rs("cntcd")
 '           grddatagrid.Columns(1).Text = rs("cntname")
            Frame3.Visible = True
            Label15.Caption = "Category"
            KslList1.conn = connectstring
            KslList1.Table = "  rm_var a,rm_cntvar b where a.varcode=b.varcode and b.cntcd='" & cntcode & "'"
            KslList1.listfield1 = "a.varcode"
            KslList1.listfield2 = "a.varname"
            Frame3.Visible = True
            Command3.Default = True
            Frame3.ZOrder
            KslList1.SetFocus
            End If
'-------------------------------------
    Case "a.varcode"
               'If opt = "mod" Or opt = "del" Then
                SSTab1.Visible = True
                StatusBar1.Panels(2).Text = ""
                'grddatagrid.Columns(2).Text = KslList1.Code
                
            'grddatagrid.Columns(3).Text = KslList1.description
                Set adoprimaryrs = New Recordset
                adoprimaryrs.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd='" & cntcode & "' and  a.varcode='" & KslList1.Code & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                
                'Call ENABLCONTLS
                
                Call bindcontls
            '    Txtfields(0).Enabled = False
            '    Txtfields(1).SetFocus
            '    grddatagrid.Columns(0).Locked = True
            '    grddatagrid.Columns(1).Locked = False
            '    grddatagrid.Columns(2).Locked = False
            '    grddatagrid.Columns(3).Locked = True
            '    grddatagrid.Columns(4).Locked = False
            '    grddatagrid.Columns(4).Width = 689.9528
 grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095


                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
   End Select


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form MixVariety", vbInformation, head
   
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
    
    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
    
    Exit Sub

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call Query_mode
    Call NEWFORM1(BUTTON, GSNO)
   'grddatagrid.Caption = "Location"
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(4).Enabled = True
    'BUTTON(4).Enabled = True
    'grddatagrid.Columns(4).Width = 689.9528
 grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095


    'SSTab1.Tabs.Clear


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form MixVariety", vbInformation, head
End Sub

'Private Sub Form_Resize()
'  On Error Resume Next
'  'This will resize the grid whef the form is resized
'  sstab1.Width = Me.Width - 3000
'  sstab1.Height = Me.Height - 2500
'  grddatagrid.Height = sstab1.Height - 500
'  grddatagrid.Width = sstab1.Width - 800
'   End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub Query_mode()
On Error GoTo er1
  Set adoprimaryrs = New Recordset
  adoprimaryrs.Open "select distinct a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_count b,rm_var c where a.cntcd=b.cntcd and a.varcode=c.varcode order by a.cntcd", DB, adOpenStatic, adLockReadOnly
  Call bindcontls
  If adoprimaryrs.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call disablcontls
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  If adoprimaryrs.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  Call NEWFORM1(BUTTON, GSNO)
  BUTTON(10).Enabled = False
  StatusBar1.Panels(2).Text = "Records " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  'grddatagrid.Columns(4).Width = 689.9528
grdDataGrid.Columns(3).Width = 2564.788
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906
 grdDataGrid.Columns(0).Width = 1140.095


End Sub
Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
'If ColIndex = 0 And opt = "add" Then
'Dim cut As Integer
'Dim row1 As Integer
'Dim itemc As String
'row1 = grddatagrid.Row
'flg = "n"
'itemc = grddatagrid.Columns(0).Text
'adoPrimaryRS.MoveFirst
'Do While Not adoPrimaryRS.EOF
'If itemc = adoPrimaryRS("Varcode") Then
'cut = cut + 1
'End If
'adoPrimaryRS.MoveNext
'Loop
'If cut > 1 Then
'MsgBox "Veriety already defined", vbInformation, head
'flg = "y"
'grddatagrid.Row = row1
'grddatagrid.Col = 0
'grddatagrid.SetFocus
'Else
'grddatagrid.Row = row1
'grddatagrid.Col = 0
'grddatagrid.SetFocus
'End If
'End If
End Sub

Private Sub GrdDatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error

StatusBar1.Panels(2).Text = ""
If Opt = "add" Then
If ColIndex = 0 Then
     Set Rs = New Recordset
     Rs.Open "select varcode from rm_var where varcode = '" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Variety Code Already Defined!", vbInformation, head
        grdDataGrid.Columns(0).Text = " "
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Col = ColIndex
        grdDataGrid.SetFocus
        Exit Sub
     End If
     
        StatusBar1.Panels(2).Text = "Enter One Letter Category Code"

 End If
 End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form MixVariety", vbInformation, head
 
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

   If grdDataGrid.Col = 0 Then
         StatusBar1.Panels(2).Text = "Select Count From the List"
     End If
    If grdDataGrid.Col = 2 Then
        StatusBar1.Panels(2).Text = "Select Variety From the List"
    End If
''   If grddatagrid.COL = 0 Then
''        If Opt = "add" Then
''            SSTab1.Visible = False
''            Frame3.Visible = True
''            Label15.Caption = "Count"
''            KslList1.conn = connectstring
''            KslList1.table = "rm_count"
''            KslList1.listfield1 = "cntcd"
''            KslList1.listfield2 = "cntname"
''            Frame3.Visible = True
''            Command3.Default = True
''            Frame3.ZOrder
''            KslList1.SetFocus
''        End If
''   End If
  
'   If KeyCode = 65 And Shift = 2 Then ''''''''''' ADDITION
'        Call BUTTON_Click(0)
'    ElseIf KeyCode = 77 And Shift = 2 Then ''''''''' MODIFY
'        Call BUTTON_Click(1)
'    ElseIf KeyCode = 68 And Shift = 2 Then    '''''DELETE
'        Call BUTTON_Click(2)
'    ElseIf KeyCode = 76 And Shift = 2 Then    '''' LIST
'        Call BUTTON_Click(3)
'    'ElseIf KeyCode = vbKeyR And Shift = 2 Then
'        'Call BUTTON_Click(3)
'    ElseIf KeyCode = vbKeyF And Shift = 2 Then
'        Call BUTTON_Click(5)
'    ElseIf KeyCode = vbKeyN And Shift = 2 Then
'        Call BUTTON_Click(6)
'    ElseIf KeyCode = vbKeyO And Shift = 2 Then
'        Call BUTTON_Click(7)
'     ElseIf KeyCode = vbKeyE And Shift = 2 Then
'        Call BUTTON_Click(8)
'    ElseIf KeyCode = 83 And Shift = 2 Then ''''''''SAVE
'        Call BUTTON_Click(9)
'    ElseIf KeyCode = 27 Then ''''' UNDO
'        Call BUTTON_Click(10)
'    ElseIf KeyCode = 88 And Shift = 2 Then    ''' EXIT
'        Call BUTTON_Click(11)
'    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        Call BUTTON_Click(12)
''    ElseIf KeyCode = vbKeyW And Shift = 2 Then
''        Call Command6_Click
'    End If

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

If Opt = "mod" Then
    If grdDataGrid.Col = 0 Then
    KeyAscii = 0
    End If
End If
If Opt = "add" Or Opt = "mod" Then
  If grdDataGrid.Col = 2 Then
        If Record_Exists("RM_VAR", "NO RECORDS FOUND") = False Then Exit Sub
        If Opt = "add" Or Opt = "mod" Then
'''            SSTab1.Visible = False
'''            Frame3.Visible = True
'''            Label15.Caption = "Variety"
'''            KSLLIST1.conn = connectstring
'''            KSLLIST1.table = "rm_var"
'''            KSLLIST1.listfield1 = "varcode"
'''            KSLLIST1.listfield2 = "varname"
'''            Frame3.Visible = True
'''            Command3.Default = True
'''            Frame3.ZOrder
'''            KSLLIST1.SetFocus
            LookUp.clear = True
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name"" from rm_var"
            LookUp.DefCol = "Name"
            LookUp.Caption = "Variety Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select varcode ,varname from rm_var where varcode='" & LookUp.Fields(0) & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.RecordCount > 0 Then
                    grdDataGrid.Columns(2).Text = Rs("varcode")
                    grdDataGrid.Columns(3).Text = Rs("varname")
                    'GrdDataGrid.AllowUpdate = True
                    grdDataGrid.Col = 0
                    adoprimaryrs.AddNew
                    grdDataGrid.SetFocus
                    Exit Sub
                Else
                    MsgBox "Select Another Variety", vbInformation, head
                    grdDataGrid.Col = 2
                    grdDataGrid.SetFocus
                End If
            Else
'                Call BUTTON_Click(10)
'                Exit Sub
            End If
        End If
        
  End If
  
  
  If grdDataGrid.Col = 0 Then
        If Opt = "add" Then
'''            SSTab1.Visible = False
'''            Frame3.Visible = True
'''            Label15.Caption = "Count"
'''            KSLLIST1.conn = connectstring
'''            KSLLIST1.table = "rm_count"
'''            KSLLIST1.listfield1 = "cntcd"
'''            KSLLIST1.listfield2 = "cntname"
'''            Frame3.Visible = True
'''            Command3.Default = True
'''            Frame3.ZOrder
'''            KSLLIST1.SetFocus
            
            LookUp.clear = True
            LookUp.query = "SELECT CNTCD""Count Code"",CNTNAME""Count Name"" FROM RM_COUNT"
            LookUp.DefCol = "Name"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select cntcd ,cntname from rm_count where cntcd='" & LookUp.Fields(0) & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
                grdDataGrid.Columns(0).Text = Rs("cntcd")
                grdDataGrid.Columns(1).Text = Rs("cntname")
                grdDataGrid.Col = 1
                LookUp.clear = True
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Exit Sub
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        ElseIf Opt = "mod" Then
            grdDataGrid.Col = 1
        End If
   End If
  
End If


Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form MixVariety", vbInformation, head

End Sub



Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error

If Opt = "add" Then
If grdDataGrid.Row >= 0 Then
    If grdDataGrid.Col = 2 And grdDataGrid.Columns(0).Text = "" Then

        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
    End If
    
    
    
 End If
    

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form MixVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form MixVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
End Sub
Public Sub header(pg As Integer, c As Integer, a As Integer)
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(5) + RTrim(CENTRE(divname, 77, " "))
            Print #a,
            str1 = CStr(Format(pdate, "dd/mm/yy")) + Space(4)
            Print #a, Space(5) + "Mixing Count Variety List"; Space(31) + str1 + "Pg.No :" + Space(1) + CStr(pg)
            Set Rs = New Recordset
            Rs.Open "select a.cntcd,b.cntname,a.varcode,c.varname from rm_cntvar a,rm_count b,rm_var c where a.cntcd=b.cntcd and a.varcode=c.varcode  order by a.cntcd", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No records found for this month", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Print #a, Space(5) + String(77, "-")
            Print #a, Space(5) + "Count  " + Space(9) + Padr("Count Name", 25, " ") + Space(5) + "Variety" + Space(7) + "Variety Name"
            Print #a, Space(5) + String(77, "-")
End Sub


