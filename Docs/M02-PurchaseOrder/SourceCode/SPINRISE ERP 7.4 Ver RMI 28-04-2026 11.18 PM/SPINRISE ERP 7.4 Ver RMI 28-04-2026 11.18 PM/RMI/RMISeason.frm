VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmSeason 
   Caption         =   "Season"
   ClientHeight    =   6000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8880
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6000
   ScaleWidth      =   8880
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7680
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   16
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5760
         Picture         =   "RMISeason.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMISeason.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":0AE1
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMISeason.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "RMISeason.frx":128D
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMISeason.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":1913
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMISeason.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":1FBF
         Height          =   510
         Index           =   11
         Left            =   6255
         Picture         =   "RMISeason.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMISeason.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMISeason.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":32CF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMISeason.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":3953
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
         Left            =   1095
         Picture         =   "RMISeason.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":3FF9
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMISeason.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":47A8
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMISeason.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMISeason.frx":4E45
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMISeason.frx":528F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
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
         Left            =   7155
         TabIndex        =   18
         Top             =   255
         Width           =   615
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
         Left            =   8685
         TabIndex        =   17
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   5700
      Width           =   8880
      _ExtentX        =   15663
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "14/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "6:05 PM"
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
      Height          =   4350
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   7335
      _ExtentX        =   12938
      _ExtentY        =   7673
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "RMISeason.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   7020
         _ExtentX        =   12383
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
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
      Left            =   480
      TabIndex        =   14
      Top             =   1080
      Visible         =   0   'False
      Width           =   8145
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMISeason.frx":55F8
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   3000
         Picture         =   "RMISeason.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4005
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMISeason.frx":5DA4
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4740
         Picture         =   "RMISeason.frx":6186
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4005
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   20
         Top             =   600
         Width           =   7200
         _ExtentX        =   12700
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         TabIndex        =   19
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Season"
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
      TabIndex        =   13
      Top             =   840
      Width           =   915
   End
End
Attribute VB_Name = "FrmSeason"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Opt As String
Dim Rs As Recordset
Dim FLGREPET As Boolean
Dim st, st1, st2 As String
Dim I As Integer
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim keys As Integer
Dim FLG As String
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Variety"
End Sub

Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error
intervalMinutes = -1
grdDataGrid.Columns(0).Locked = False
grdDataGrid.Columns(1).Locked = False
grdDataGrid.Columns(2).Locked = False
grdDataGrid.Columns(3).Locked = False
'grdDataGrid.Columns(4).Locked = False

Exit Sub

ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
On Error GoTo disablcontls_Error

grdDataGrid.Columns(0).Locked = True
grdDataGrid.Columns(1).Locked = True
grdDataGrid.Columns(2).Locked = True
grdDataGrid.Columns(3).Locked = False
'grdDataGrid.Columns(4).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub bindcontls()

On Error GoTo bindcontls_Error

    Set grdDataGrid.DataSource = adoPrimaryRS

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
If Opt <> "add" Then
    'this will display the current record position
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Name"",a.catcd ""Category"",b.catname""Category Name"",a.imported ""Imported"" from rm_var a,rm_cat b where 1=2 order by varcode", db, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select SEACODE ""Season Code"",seaname ""Season Name"",Trashper ""Trash %"",Moistureper ""Moisture %"" from rm_season where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
          'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300

            grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
            

DB.BeginTrans
'        grddatagrid.AllowAddNew = True
'        grddatagrid.AllowUpdate = True
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Columns(1).Locked = False
        grdDataGrid.Columns(2).Locked = False
        grdDataGrid.Columns(3).Locked = False
        'grdDataGrid.Columns(4).Locked = False
        'grddatagrid.Columns(2).Visible = False
 'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300

            grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
            
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Add Record"
        StatusBar1.Panels(2).Text = "Addition"
        
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus


Case 1, 2, 4
        'modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_var", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
        LookUp.Clear = True
        LookUp.query = "select SEACODE ""Season Code"",seaname ""Season Name"" from rm_season"
        LookUp.DefCol = "Season Name"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "Season Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select SEACODE ""Season Code"",seaname ""Season Name"",Trashper ""Trash %"",Moistureper ""Moisture %"" from rm_season where seacode='" & LookUp.Fields(0) & "' Order by seacode", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Columns(1).Locked = False
            grdDataGrid.Columns(2).Locked = False
            grdDataGrid.Columns(3).Locked = False
'            grdDataGrid.Columns(4).Locked = False
'            grdDataGrid.Columns(5).Locked = False
            grdDataGrid.Columns(3).Width = 1150
            grdDataGrid.Columns(2).Width = 950
            grdDataGrid.Columns(1).Width = 3000
            grdDataGrid.Columns(0).Width = 1300
            
            grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
            
            Call adddelmod(BUTTON)
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.AllowAddNew = False
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
            End If
            If Opt = "fnd" Then
                BUTTON(9).Enabled = False
            End If
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Frame3.Visible = False
        Else
            DB.CommitTrans
            'Call BUTTON_Click(10)
        End If
        Screen.MousePointer = 0
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_var", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        Label15.Caption = "Season List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_season"
        KslList1.listfield1 = "seacode"
        KslList1.listfield2 = "seaname"
        ' grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KslList1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Season Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3

'        'List
'        desc.Caption = "Listing"
'        Set dv1 = New DataEnvironment1
'        dv1.Connection1.ConnectionString = connectstring
'        Set Cn = New Connection
'        Cn.CursorLocation = adUseClient
'    If Cn.State = 1 Then
'        Cn.Close
'    End If
'        Cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If Cn.State = adStateclose Then
'        Cn.Open
'    End If
'        Call repproc2(rptvariety)
'        dv1.Connection1.ConnectionString = connectstring
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'        dv1.rsCommand1.Open "select varcode,varname,catcd,'imported'=CASE WHEN imported='Y' THEN 'Yes' else 'No' end   from rm_var  order by catcd,varcode", Cn
'        'dv1.rsCommand1.Open "select varcode,varname,catcd from rm_var  order by varcode", cn
'    If dv1.rsCommand1.RecordCount <> 0 Then
'        Set rptvariety.DataSource = dv1
'        rptvariety.Show
'        desc.Caption = "Query"
'    Else
'        MsgBox "No Records Found", vbInformation, head
'        desc.Caption = "Query"
'        Exit Sub
'    End If
        desc.Caption = "Listing"
    Dim iCount As Integer
    Set Rs = New Recordset
    Rs.Open "select * from RM_SEASON Order by SEAcode", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        MsgBox "No Records Found", vbInformation, head
        desc.Caption = "Query"
        Exit Sub
    End If

        ipageno = 1
'        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA + "red.txt" For Output As #1
        iCount = 1
        'Open "C:\red.txt" For Output As #1
            iRow = 0
            Call listHeader
            iRow = iRow + 9
            Rs.MoveFirst
            Do While Not Rs.EOF
                Print #1, Space(3); Padr(Rs("seacode"), 10, " ") + Space(2) + Padr(Rs("Seaname"), 30, " ") + Space(2) + Padl(INF(Rs("trashper"), 2), 15, " ") + Space(2) + Padl(INF(Rs("Moistureper"), 2), 15, " ")
                iRow = iRow + 1
                iCount = iCount + 1
                    If iRow > 60 Then
                        Print #1,
                        Print #1, Space(2) & String(80, "-")
                        Print #1, Chr(12)
                        iRow = iRow + 3
                        
                        Print #1, Chr(12)
'                        Co = 0
                        ipageno = ipageno + 1
                        Call listHeader
                    End If
                Rs.MoveNext
            Loop
            
            Print #1,
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            iRow = iRow + 3
            
        Close #1
        Call KALBATPROCESS("Red")
        Screen.MousePointer = 0


Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
          Beep
          Exit Sub
GoFirstError:
       MsgBox Err.Description, vbInformation, head
            
Case 6
'next
            desc.Caption = "Query"
            On Error GoTo GoNextError
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
            If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                'Call NEX(BUTTON)
                'moved off the end so go back
                adoPrimaryRS.MoveLast
            End If
            'show the current record
            Call navi(BUTTON)
            Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head
Case 7
 'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            'Call PREV(BUTTON)
           adoPrimaryRS.MoveFirst
        End If
        'show the current record
'        Call navi(BUTTON)
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head
       
Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         StatusBar1.Panels(2).Text = "Last Record"
        'calling las procedure from module
         Call navi(BUTTON)
         Call las(BUTTON)
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
       'If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(2).Text = "" And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" And grdDataGrid.Columns(4).Text = "" Then
       If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(2).Text = "" And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" Then
            MsgBox "Cannot Save Empty records", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
       End If
       
       If grdDataGrid.Columns(1).Text = "" And grdDataGrid.Columns(0).Text <> "" Then
            MsgBox "Season Name Cannot be Empty", vbInformation, head
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
       End If
'       If grddatagrid.Columns(2).Text = "" And grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" Then
'            MsgBox " Cannot be Empty", vbInformation, head
'            grddatagrid.Col = 2
'            grddatagrid.SetFocus
'            Exit Sub
'       End If
      

      'MsgBox "Imported Cannot be Empty", vbInformation, head
      'grdDataGrid.Col = 4
      'grdDataGrid.SetFocus
      'Exit Sub
      'End If
      If Opt = "add" Then
            adoPrimaryRS.MoveFirst
            Opt = ""
            Do While Not adoPrimaryRS.EOF
                If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
                    adoPrimaryRS.Delete
                End If
                adoPrimaryRS.MoveNext
            Loop
            adoPrimaryRS.MoveFirst
            If Not Trim(grdDataGrid.Columns(0).Text) = "" And Not Trim(grdDataGrid.Columns(1).Text) = "" Then
                On Error Resume Next
                Set rsa = New Recordset
                rsa.Open "SELECT * FROM RM_season WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                
                Do While Not adoPrimaryRS.EOF
                    rsa.AddNew
                    rsa("seacode") = grdDataGrid.Columns(0).Text
                    rsa("seaname") = grdDataGrid.Columns(1).Text
                    rsa("trashper") = val(grdDataGrid.Columns(2).Text)
                    rsa("moistureper") = val(grdDataGrid.Columns(3).Text)
                    
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Season"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
 
                    
                    TrnLog("code") = grdDataGrid.Columns(0).Text
                    TrnLog("description") = grdDataGrid.Columns(1).Text
        
                    TrnLog.UpdateBatch adAffectAllChapters
                    
                    adoPrimaryRS.MoveNext
                Loop
                rsa.UpdateBatch adAffectAllChapters
                DB.CommitTrans
                MsgBox "Record(s) Saved.", vbInformation, head
            End If
            StatusBar1.Panels(2).Text = ""
      End If

      If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         'db.Execute "update rm_var set varname='" & grdDataGrid.Columns(1).Text & "',catcd='" & grdDataGrid.Columns(2).Text & "',imported='" & grdDataGrid.Columns(4).Text & "' where varcode='" & grdDataGrid.Columns(0).Text & "'"
         
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Season"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
         
         DB.Execute "update rm_season set seaname='" & grdDataGrid.Columns(1).Text & "',trashper=" & val(grdDataGrid.Columns(2).Text) & ",moistureper=" & val(grdDataGrid.Columns(3).Text) & " where seacode='" & grdDataGrid.Columns(0).Text & "'"
         
         'adoPrimaryRS.UpdateBatch adAffectAllChapters
         DB.CommitTrans
         MsgBox "Record(s) Modified.", vbInformation, head
       End If
       grdDataGrid.SetFocus
    If Opt = "del" Then
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record", vbYesNo, head)
        If msg = vbYes Then
            DB.Execute ("delete from rm_season where seacode=" + "'" + grdDataGrid.Columns(0) + "'")
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Season"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
        'Opt = " "
        Call query_mode
       'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300
        
        grdDataGrid.Columns(3).NumberFormat = "0.00"
        grdDataGrid.Columns(2).NumberFormat = "0.00"
            
        grdDataGrid.Columns(3).Alignment = dbgRight
        grdDataGrid.Columns(2).Alignment = dbgRight
            
        'grddatagrid.ScrollBars = dbgNone

        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        If Opt = "fnd" Then
            DB.CommitTrans
        End If
        Opt = " "
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    'grddatagrid.Visible = True
    'sstab1.Visible = True
'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300
        
        grdDataGrid.Columns(3).NumberFormat = "0.00"
        grdDataGrid.Columns(2).NumberFormat = "0.00"
            
        grdDataGrid.Columns(3).Alignment = dbgRight
        grdDataGrid.Columns(2).Alignment = dbgRight
            
    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True ''find
    BUTTON(0).SetFocus ''''''''''''''
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Season
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Season Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Season Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Season Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
   ' grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmVariety", vbInformation, head

Screen.MousePointer = 0
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
  
 
On Error GoTo Command3_Click_Error

  Select Case KslList1.listfield1
  
  Case "catcd"
    If Opt = "add" Then
        'grdDataGrid.Col = 4
        Frame3.Visible = False
        Frame3.Visible = False
        SSTab1.Visible = True
        StatusBar1.Panels(2).Text = ""
        Set Rs = New Recordset
        Rs.Open "select catcd ,catname from rm_cat where catcd='" & KslList1.Code & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
        grdDataGrid.Columns(2).Text = Rs("catcd")
        grdDataGrid.Columns(3).Text = Rs("catname")
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        grdDataGrid.Col = 0
        grdDataGrid.Visible = True
        grdDataGrid.SetFocus
        
        Exit Sub
    
    End If
    
  Case "varcode"
   'If opt = "mod" Or opt = "del" Then
    SSTab1.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.imported""Imported"" from rm_var a,rm_cat b where varcode='" & ksllist1.Code & "' and a.catcd=b.catcd Order by varcode", db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"" from rm_var a,rm_cat b where varcode='" & KslList1.Code & "' and a.catcd=b.catcd Order by varcode", DB, adOpenStatic, adLockBatchOptimistic
    'Call ENABLCONTLS
    
    Call bindcontls
'    Txtfields(0).Enabled = False
'    Txtfields(1).SetFocus
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.Columns(1).Locked = False
    grdDataGrid.Columns(2).Locked = False
    grdDataGrid.Columns(3).Locked = False
    'grdDataGrid.Columns(4).Locked = False
   'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300
            
            grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
            
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmVariety", vbInformation, head
   
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
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
        Call BUTTON_Click(10) 'cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
   'grddatagrid.Caption = "Location"
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
 'grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300
        
        grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
    Call NEWFORM1(BUTTON, GSNO)
BUTTON(4).Enabled = True
    'SSTab1.Tabs.Clear
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmVariety", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
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
intervalMinutes = -1
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub query_mode()
On Error GoTo query_mode_Error

On Error GoTo er1
  Set adoPrimaryRS = New Recordset
  'adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",'Imported'=case when a.Imported='L' then 'Local' when a.Imported='I' then 'International' else 'National' end from rm_var a,rm_cat b where a.catcd=b.catcd order by varcode", db, adOpenStatic, adLockReadOnly
  adoPrimaryRS.Open "select SEACODE ""Season Code"",seaname ""Season Name"",Trashper ""Trash %"",Moistureper ""Moisture %"" from rm_season Order by seacode", DB, adOpenStatic, adLockReadOnly
  Call bindcontls
  If adoPrimaryRS.BOF Then
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
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  Call NEWFORM1(BUTTON, GSNO)
  BUTTON(10).Enabled = False
 StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Found", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
 ' grdDataGrid.Columns(4).Width = 915.0237
        grdDataGrid.Columns(3).Width = 1150
        grdDataGrid.Columns(2).Width = 950
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(0).Width = 1300
        grdDataGrid.Columns(3).NumberFormat = "0.00"
            grdDataGrid.Columns(2).NumberFormat = "0.00"
            
            grdDataGrid.Columns(3).Alignment = dbgRight
            grdDataGrid.Columns(2).Alignment = dbgRight
            
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
    If Opt = "add" Or Opt = "mod" Then
        If ColIndex = 3 Then
            If val(grdDataGrid.Columns(3).Text) > 0 Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus
        End If
    End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error

StatusBar1.Panels(2).Text = ""
If ColIndex = 0 Then
     Set Rs = New Recordset
     Rs.Open "select seacode from rm_season where seacode = '" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Season Code Already Defined.", vbInformation, head
        grdDataGrid.Columns(0).Text = " "
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Col = ColIndex
        grdDataGrid.SetFocus
        Exit Sub
     End If
      '  StatusBar1.Panels(2).Text = "Enter One Letter Category Code"
 End If
 
 
' Name check

If ColIndex = 1 Then
     Set Rs = New Recordset
     Rs.Open "select SeaName  from rm_season where seaname = '" & grdDataGrid.Columns(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Season Name  Already Defined.", vbInformation, head
        grdDataGrid.Columns(1).Text = " "
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Col = ColIndex
        grdDataGrid.SetFocus
        Exit Sub
     End If
      '  StatusBar1.Panels(2).Text = "Enter One Letter Category Code"
 End If

' End name check

 
 
 
 
 
 
 If ColIndex = 4 Then
 If grdDataGrid.Columns(4).Text = "L" Or grdDataGrid.Columns(4).Text = "l" Or grdDataGrid.Columns(4).Text = "I" Or grdDataGrid.Columns(4).Text = "i" Or grdDataGrid.Columns(4).Text = "N" Or grdDataGrid.Columns(4).Text = "n" Then
 If Opt = "add" Then
 FLG = "y"
 End If
 Else
 MsgBox "Enter Y or N", vbInformation, head
    
    grdDataGrid.Columns(4).Text = " "
    grdDataGrid.Col = 4
    grdDataGrid.SetFocus

End If
End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmVariety", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

 
 If Opt = "add" Or Opt = "mod" Then
        If grdDataGrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 5 Character"
        End If
        If grdDataGrid.Col = 1 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 30 Characters"
        End If
        If grdDataGrid.Col = 2 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers with 2 decimals"
        End If
        If grdDataGrid.Col = 3 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 3 Integers with 2 decimals"
        End If
    End If

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
        Call BUTTON_Click(10) ' cancel
    End If
End If
Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmVariety", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    If grdDataGrid.Col = 0 Then
        Call ToAlphaNumber(grdDataGrid, 5, KeyAscii)
        Call ToUpCase(grdDataGrid, KeyAscii)
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 48 Then
            keyasii = 0
        End If
    ElseIf grdDataGrid.Col = 1 Then
         Call ToAlphaNumber(grdDataGrid, 30, KeyAscii)
         Call ToUpCase(grdDataGrid, KeyAscii)
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 48 Then
            keyasii = 0
        End If
    ElseIf grdDataGrid.Col = 2 Then
        Call ToNumberAssign(grdDataGrid, 3, KeyAscii, 3, 2)
    ElseIf grdDataGrid.Col = 3 Then
        Call ToNumberAssign(grdDataGrid, 3, KeyAscii, 3, 2)
    End If
End If
Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmVariety", vbInformation, head

End Sub
Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then
If grdDataGrid.Row >= 0 Then
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        MsgBox "Season Code cannot be empty", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = " " Then
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text <> "" And FLG = "y" Then
        FLG = ""
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
     If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        MsgBox "Season cannot be empty", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
    If grdDataGrid.Col = 2 And grdDataGrid.Columns(1).Text = "" Then
        MsgBox "Season Name cannot be empty", vbInformation, head
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
    End If
    End If
    End If

If grdDataGrid.Row >= 0 Then
If grdDataGrid.Col = 1 And Opt = "add" Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
row1 = grdDataGrid.Row
FLG = "n"
itemc = grdDataGrid.Columns(0).Text
adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        If itemc = adoPrimaryRS("Season Code") Then
        cut = cut + 1
        End If
        adoPrimaryRS.MoveNext
    Loop
    If cut > 1 Then
        MsgBox "Season already defined", vbInformation, head
        FLG = "y"
        grdDataGrid.Row = row1
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    Else
        grdDataGrid.Row = row1
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
    End If

End If
End If
'If Opt = "add" Or Opt = "mod" Then
'        If grddatagrid.Col = 0 Then
'            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
'        End If
'        If grddatagrid.Col = 1 Then
'            StatusBar1.Panels(2).Text = " Enter Maximum of 50 Characters"
'        End If
'        If grddatagrid.Col = 2 Then
'            StatusBar1.Panels(2).Text = "Enter Maximum of 4 integers"
'        End If
'        If grddatagrid.Col = 3 Then
'            StatusBar1.Panels(2).Text = " Enter Maximum of 2 Integers"
'        End If
'End If
Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmVariety", vbInformation, head
End Sub

Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
End Sub
 

Private Sub listHeader()
'    Print #1,
    Print #1, Chr(18)
    Print #1, Space(2) & Chr(27); "E"; CENTRE(divname, 80, " "); Chr(27); "F"
     ' Call Module2.addresshead
    Print #1,
    Print #1, Space(2); "Season Listing" & Space(34); Format(pdate, "dd/mm/yy") + Space(2); "Pg No. : " & 1
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(3); Padr("Code", 10, " ") + Space(2) + Padr(" Season Name ", 30, " ") + Space(2) + Padl("Trash %", 15, " ") + Space(2) + Padl("Moisture %", 15, " ")
'    Print #1, Space(2); "Code        Season Code         Trash %    Moisture %"
    Print #1, Space(2) & String(80, "-")
End Sub

