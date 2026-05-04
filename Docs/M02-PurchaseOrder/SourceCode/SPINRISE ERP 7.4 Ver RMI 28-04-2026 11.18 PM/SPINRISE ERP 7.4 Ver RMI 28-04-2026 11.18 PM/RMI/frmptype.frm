VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frmptype 
   Caption         =   "Purchase Type"
   ClientHeight    =   6240
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8895
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6240
   ScaleWidth      =   8895
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   8160
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   17
      Top             =   -120
      Width           =   11610
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5760
         Picture         =   "frmptype.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "frmptype.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":0AE1
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "frmptype.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":128D
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "frmptype.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":1913
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "frmptype.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":1FBF
         Height          =   510
         Index           =   11
         Left            =   6255
         Picture         =   "frmptype.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "frmptype.frx":2BE8
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
         Picture         =   "frmptype.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":32CF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "frmptype.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":3953
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
         Picture         =   "frmptype.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":3FF9
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "frmptype.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":47A8
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frmptype.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmptype.frx":4E45
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "frmptype.frx":528F
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
         Left            =   6915
         TabIndex        =   19
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
         Left            =   7965
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   5940
      Width           =   8895
      _ExtentX        =   15690
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "11/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "06:53 PM"
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
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "           "
      TabPicture(0)   =   "frmptype.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   8115
         _ExtentX        =   14314
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
      Left            =   240
      TabIndex        =   13
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "frmptype.frx":55F8
         Height          =   615
         Left            =   4710
         Picture         =   "frmptype.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4050
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "frmptype.frx":5DAD
         Height          =   615
         Left            =   3000
         Picture         =   "frmptype.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4050
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   14
         Top             =   675
         Width           =   7215
         _ExtentX        =   12726
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
         TabIndex        =   20
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label label1 
      Caption         =   "Purchase type"
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
      Height          =   375
      Left            =   975
      TabIndex        =   15
      Top             =   660
      Width           =   2760
   End
End
Attribute VB_Name = "Frmptype"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim FLGREPET As Boolean
Dim st, st1, ST2 As String
Dim strType As String
Dim DB As Connection
Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Purchase Type"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'addition
 If Record_Exists("RM_PARAM", "Please Define the Param Table") = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        strType = ""
        st = "B"
        st1 = "B"
'       Adodc1.RecordSource = "select LOCCODE""Code"" ,LOCNAME ""Location Name"" from LOCMAS where 1=2 Order by LOCCODE"
'       Adodc1.Refresh
        Set adoPrimaryRS = New Recordset
        Set Rs = New Recordset
        Rs.Open "select fainstal from rm_param ", DB
        If Rs(0) = "Y" Then
        adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",b.glhead ""GL Head"",a.CRDAYS as ""Credit Days"" from rm_purtype a,fa_glmas b where 1=2 order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
        Else
            adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",CRDAYS as ""Credit Days"" from rm_purtype a where 1=2 order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
        End If
        DB.BeginTrans
        grddatagrid.Columns(4).Locked = False
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        BUTTON(9).ToolTipText = "Add Record"
        'grddatagrid.ScrollBars = dbgBoth
        grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1, 2, 4
        'modification
    strType = ""
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_purtype", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select Purchase Code from the list for modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            BUTTON(9).ToolTipText = "Delete"
            StatusBar1.Panels(2).Text = "Select Purchase Code from the list for Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            BUTTON(9).ToolTipText = "Find"
            StatusBar1.Panels(2).Text = "Select Purchase Code from the list"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
''        SSTab1.Visible = False
''        grddatagrid.Visible = False
''        Frame3.Visible = True
''        Label15.Caption = "Purchase List"
''        KSLLIST1.conn = connectstring
''        KSLLIST1.table = "rm_purtype"
''        KSLLIST1.listfield1 = "purtype"
''        KSLLIST1.listfield2 = "purdesc"
''        Frame3.Visible = True
''        Command3.SetFocus
''        Frame3.ZOrder
        
        LookUp.Clear = True
        LookUp.query = "select a.purtype""Purchase Type"",a.purdesc""Purchase Description"" from rm_purtype a left join fa_glmas b on a.purgl=b.glcode"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "Purchase Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            grddatagrid.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            Set Rs = New Recordset
            Rs.Open "select fainstal from rm_param", DB
            If Rs(0) = "Y" Then
                adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",b.glhead ""GL Head"",a.CRDAYS as ""Credit Days"" from rm_purtype a left join fa_glmas b on a.purgl=b.glcode  where  a.purtype = '" & LookUp.Fields(0) & "' order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
            Else
                adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",b.glhead ""GL Head"", a.CRDAYS as ""Credit Days"" from rm_purtype a left join fa_glmas b on a.purgl=b.glcode where  a.purtype = '" & LookUp.Fields(0) & "' order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
            End If
            If Opt = "mod" Then
                grddatagrid.Columns(0).Locked = True
            End If
            If Opt = "del" Then
                grddatagrid.Columns(0).Locked = True
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Columns(2).Locked = True
            End If
            grddatagrid.AllowAddNew = False
            grddatagrid.Col = 1
            
            'GrdDataGrid.Row = 0
            
            grddatagrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
            grddatagrid.AllowUpdate = True
            Call adddelmod(BUTTON)
            grddatagrid.Columns(0).Locked = True
            If Opt = "fnd" Then
                BUTTON(9).Enabled = False
            End If
            Screen.MousePointer = 0
        Else
            Call BUTTON_Click(10)
            Screen.MousePointer = 0
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_purtype", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Label15.Caption = "Purchase List"
        KSLLIST1.conn = connectstring
        KSLLIST1.table = "rm_purtype"
        KSLLIST1.listfield1 = "purtype"
        KSLLIST1.listfield2 = "purdesc"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.SetFocus
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Purchase Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record FOund", vbInformation, head
        Exit Sub
    End If
Case 3
        'list
        desc.Caption = "Listing"
'        Set dv1 = New DataEnvironment1
'        dv1.Connection1.ConnectionString = connectstring
        Set cn = New Connection
        cn.CursorLocation = adUseClient
'    If cn.State = 1 Then
'        cn.Close
'    End If
            cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If cn.State = adStateclose Then
        cn.Open connectstring
'    End If
'        Call repproc2(rptPURTYPE)
''    If dv1.rsCommand1.State = adStateOpen Then
''        dv1.rsCommand1.Close
' '   End If
    Set dv1 = New DataEnvironment1
    dv1.Connection1.Open connectstring
    
      Set Rs = New Recordset
        Rs.Open "select fainstal from rm_param ", cn
        If Rs(0) = "Y" Then
            dv1.rsCommand1.Open "select a.purtype,a.purdesc,a.purgl,b.glhead from rm_purtype a  LEFT JOIN   fa_glmas b ON a.purgl=b.glcode Order by a.purtype", cn, adOpenStatic, adLockOptimistic
        Else
            dv1.rsCommand1.Open "select purtype,purdesc,purgl,null as glhead from rm_purtype Order by purtype", cn, adOpenStatic, adLockOptimistic
        End If
         If dv1.rsCommand1.RecordCount <> 0 Then
            Set rptPURTYPE.DataSource = dv1
                rptPURTYPE.Show
           
             desc.Caption = "Query"
        Else
            MsgBox "No  Records Found", vbInformation, head
            desc.Caption = "Query"
            Exit Sub
        End If
'Case 4
        'Query
        'opt = "query"
        'desc.Caption = "Query"
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
            adoPrimaryRS.MoveFirst
        End If
        'show the current record
        Call navi(BUTTON)
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
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
        If Opt = "add" Or Opt = "mod" Then
        
        If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Purchase Name Can't be Empty", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      'If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) = "" Then
      '  MsgBox "Purchase GL Code Can't be Empty", vbInformation, head
      '  grddatagrid.Col = 2
      '  grddatagrid.SetFocus
      '  Exit Sub
      'End If
       End If
        If Opt = "add" Then
        tmp = Opt
        Opt = ""
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
                adoPrimaryRS.Delete
            End If
            adoPrimaryRS.MoveNext
        Loop
        Opt = tmp
        End If
        If adoPrimaryRS.RecordCount = 0 Then
            BUTTON_Click (10)
            DB.RollbackTrans
            Exit Sub
        End If
       If Opt = "add" Then
        On Error Resume Next
        
        Opt = ""
        adoPrimaryRS.MoveFirst
        'db.Execute "insert into rm_purtype values('" & grddatagrid.Columns(0).Text & "','" & grddatagrid.Columns(1).Text & "','" & grddatagrid.Columns(2).Text & "')"
        'adoPrimaryRS("Account Head") = grddatagrid.Columns(3).Text
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Purchase Type"
                        TrnLog("Trans_Mod") = "Add"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                        TrnLog("DrGlCode") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
                        
                        'DrGlCode,HSN
         
                        TrnLog.UpdateBatch adAffectAllChapters
        
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
        Opt = "add"
       End If
       If Opt = "mod" Then
         grddatagrid.AllowUpdate = True
         'adoprimaryrs.UpdateBatch adAffectAllChapters
'         Set rs = New Recordset
'         rs.Open "select purtype,purdesc,purgl from rm_purtype where 1=2", db, adOpenStatic, adLockBatchOptimistic
'         rs.AddNew
'         rs("purtype") = grdDataGrid.Columns(0).Text
'         rs("purdesc") = grdDataGrid.Columns(1).Text
'         rs("purgl") = grdDataGrid.Columns(2).Text
         DB.Execute "update rm_purtype set purdesc = '" & grddatagrid.Columns(1).Text & "',purgl = '" & grddatagrid.Columns(2).Text & "', crdays = '" & grddatagrid.Columns(4).Text & "' where purtype = '" & grddatagrid.Columns(0).Text & "'"
         'rs.UpdateBatch adAffectAllChapters
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode,hsn FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Purchase Type"
                        TrnLog("Trans_Mod") = "Mod"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                        TrnLog("DrGlCode") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
         
         DB.CommitTrans
         MsgBox "Record(s) Modified", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
            DB.Execute ("delete from rm_purtype where purtype=" + "'" + grddatagrid.Columns(0) + "'")
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode,hsn FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Purchase Type"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                               TrnLog("DrGlCode") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
         Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
       End If
       If Opt = "fnd" Then
        DB.CommitTrans
       End If
         Opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         BUTTON(4).Enabled = True
         BUTTON(0).SetFocus
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
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
    grddatagrid.Visible = True
    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    ''button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus ''''''''''
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptpurtype As New clsCrystal
    Set Cystalrptpurtype.cryRept = Cry_Purchase_Type
    Cystalrptpurtype.CrystalPrint
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
        MsgBox "This Purchase Type cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Area Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frmptype", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
  If Opt = "" Or Opt = "del" Then
        SSTab1.Visible = True
        grddatagrid.Visible = True
        StatusBar1.Panels(2).Text = ""
        'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & ksllist1.Code & "' Order by LOCCODE"
        'Adodc1.Refresh
        Set adoPrimaryRS = New Recordset
        Set Rs = New Recordset
        Rs.Open "select fainstal from rm_param", DB
        If Rs(0) = "Y" Then
            adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",b.glhead ""GL Head"",case when a.CRDAYS='Y' then 'Yes' else 'No' end as ""Credit Days"" from rm_purtype a,fa_glmas b  where a.purgl = b.glcode and a.purtype = '" & KSLLIST1.code & "' order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
        Else
            adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"",a.purgl ""GL Code"",case when a.CRDAYS='Y' then 'Yes' else 'No' end as ""Credit Days"" from rm_purtype a where  a.purtype = '" & KSLLIST1.code & "' order by a.purtype", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
        End If
        If Opt = "mod" Then
            grddatagrid.Columns(0).Locked = True
            'grdDataGrid.Columns(2).Locked = True
            'grddatagrid.Columns(3).Locked = True
        End If
        If Opt = "del" Then
            grddatagrid.Columns(0).Locked = True
            grddatagrid.Columns(1).Locked = True
            grddatagrid.Columns(2).Locked = True
            grddatagrid.Columns(3).Locked = True
        End If
        grddatagrid.AllowAddNew = False
        grddatagrid.Col = 1
        grddatagrid.Row = 0
        
        grddatagrid.SetFocus
        BUTTON(9).Enabled = True 'Save
        BUTTON(10).Enabled = True
        If Opt = "del" Then
        BUTTON(9).SetFocus
        End If
        Frame3.Visible = False
    End If
    If Opt = "add" Then
        Select Case KSLLIST1.listfield1
        'Case "a.purgl"
        Case "glcode"
            grddatagrid.Col = 0
            grddatagrid.Columns(2).Text = KSLLIST1.code
            grddatagrid.Columns(3).Text = KSLLIST1.Description
            Frame3.Visible = False
            grddatagrid.SetFocus
        End Select
    End If
    If Opt = "mod" Then
        Select Case KSLLIST1.listfield1
        'Case "a.purgl"
        Case "glcode"
            grddatagrid.Col = 0
            grddatagrid.Columns(2).Text = KSLLIST1.code
            grddatagrid.Columns(3).Text = KSLLIST1.Description
            Frame3.Visible = False
            grddatagrid.SetFocus
        End Select
    End If
  End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Frmptype", vbInformation, head
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    'sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmptype", vbInformation, head
End Sub

Private Sub Form_Resize()
'  On Error Resume Next
'  sstab1.Left = 1700
'  grddatagrid.Left = 1800
'  'This will resize the grid whef the form is resized
'  sstab1.Width = Me.Width - 3500
'  sstab1.Height = Me.Height - 3000
'  grddatagrid.Height = sstab1.Height - 225
'  grddatagrid.Width = sstab1.Width - 220
   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
    If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 4 Then
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
    End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_purtype where purtype='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Purchase Type Code already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = ""
                grddatagrid.Columns(0).Locked = False
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                st = "A"
                Exit Sub
             End If
        End If
        End If
        If ColIndex = 1 Then
        If Trim(grddatagrid.Columns(1).Text) = Empty Or Trim(grddatagrid.Columns(1).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_purtype where purdesc='" & grddatagrid.Columns(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Purchase Type Description already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = ""
                grddatagrid.Columns(1).Locked = False
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                st = "A"
                Exit Sub
             End If
        End If
        End If

If Opt = "add" Then
If Trim(grddatagrid.Columns(0)) <> "" Then
    BUTTON(9).Enabled = True
End If
End If
If Opt = "add" Then
 ' If grddatagrid.Col = 1 Then

  If grddatagrid.Col = 2 Then
    If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
        adoPrimaryRS.AddNew
        grddatagrid.Col = 0
        grddatagrid.SetFocus
    End If
  End If
  If grddatagrid.Col = 0 Then
    a = adoPrimaryRS.AbsolutePosition
    code = adoPrimaryRS(0)
    Opt = " "
    adoPrimaryRS.MoveFirst
    For I = 1 To adoPrimaryRS.RecordCount - 1
        If adoPrimaryRS(0).value = code And Not adoPrimaryRS.AbsolutePosition = a Then
            MsgBox "Purchase Code Already Defined!", vbInformation, head
            adoPrimaryRS.AbsolutePosition = a
            adoPrimaryRS(0).value = ""
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Opt = "add"
            Exit Sub
        End If
        adoPrimaryRS.MoveNext
    Next I
    Opt = "add"
End If
End If
If st1 = "A" Then
    grddatagrid.Col = 1
    grddatagrid.SetFocus
End If


Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form Frmptype", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

   If Opt = "add" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = " Enter Minimum of 2 Characters"
        ElseIf grddatagrid.Col = 4 Then
            StatusBar1.Panels(2).Text = " Enter the Key 'Y' for Yes (or) 'N' for No"
        End If
   ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Modify Purchase Description"
        ElseIf grddatagrid.Col = 4 Then
            StatusBar1.Panels(2).Text = " Enter the Key 'Y' for Yes (or) 'N' for No"
        End If
   End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo grddatagrid_KeyDown_Error

If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grddatagrid.Text) = "" Then
        If grddatagrid.Col = 1 Then
            MsgBox ("Purchase Name Cannot be empty"), vbInformation, head
            ST2 = "A"
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 0 Then
            MsgBox ("Purchase Code cannot be empty"), vbInformation, head
            'St = "A"
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End If
    Else
        grddatagrid.SetFocus
    End If
Else
    FLGREPET = False
End If
'If Opt = "add" Then
'    Set Rs = New Recordset
'    Rs.Open "SELECT FAINSTAL FROM RM_PARAM", DB
'    If Rs(0) = "Y" Then
'    If grddatagrid.Col = 2 Then 'And grdDataGrid.Columns(2).Text = "" Then
''        Frame3.Visible = True
''        Label15.Caption = "Purchase List"
''        StatusBar1.Panels(2).Text = "Select Purchase GL Code From the List"
''        KslList1.conn = connectstring
''        'KslList1.table = "rm_purtype a,fa_glmas b where a.purgl = b.glcode"
''        KslList1.Table = "fa_glmas"
''        KslList1.listfield1 = "glcode"
''        KslList1.listfield2 = "glhead"
''        Frame3.Visible = True
''        KslList1.SetFocus
''        'Command3.SetFocus
''        Frame3.ZOrder
'            LookUp.clear = True
'            LookUp.Query = "SELECT glcode""GL Code"",glhead""GL Head"" FROM fa_glmas"
'            LookUp.DefCol = "GL Head"
'            LookUp.ALIGN = "2000,3000"
'            LookUp.Caption = "General Ledger"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                grddatagrid.Enabled = True
'                StatusBar1.Panels(2).Text = ""
'
'                strType = LookUp.Fields(0)
'                grddatagrid.Columns(3).Text = LookUp.Fields(1)
'                grddatagrid.Columns(2).Text = LookUp.Fields(0)
''                grddatagrid.AllowAddNew = False
'                BUTTON(9).Enabled = True 'Save
'            grddatagrid.Columns(2).Text = strType
'            End If
'        End If
'    End If
'End If
'If Opt = "mod" Then
'    Set Rs = New Recordset
'    Rs.Open "SELECT FAINSTAL FROM RM_PARAM", DB
'    If Rs(0) = "Y" Then
'    If grddatagrid.Col = 2 Then 'And grdDataGrid.Columns(2).Text = "" Then
''        Frame3.Visible = True
''        Label15.Caption = "Purchase List"
''        StatusBar1.Panels(2).Text = "Select Purchase GL Code From the List"
''        KslList1.conn = connectstring
''        'KslList1.table = "rm_purtype a,fa_glmas b where a.purgl = b.glcode"
''        KslList1.Table = "fa_glmas"
''        KslList1.listfield1 = "glcode"
''        KslList1.listfield2 = "glhead"
''        Frame3.Visible = True
''        KslList1.SetFocus
''        'Command3.SetFocus
''        Frame3.ZOrder
'            LookUp.clear = True
'            LookUp.Query = "SELECT glcode""GL Code"",glhead""GL Head"" FROM fa_glmas"
'            LookUp.DefCol = "GL Head"
'            LookUp.ALIGN = "2000,3000"
'            LookUp.Caption = "General Ledger"
'            LookUp.Show vbModal
'            strType = ""
'            If LookUp.Cancel = False Then
'                grddatagrid.Enabled = True
'                StatusBar1.Panels(2).Text = ""
'
'                grddatagrid.Columns(2).Text = LookUp.Fields(0)
'                grddatagrid.Columns(3).Text = LookUp.Fields(1)
'                grddatagrid.Columns(2).Text = LookUp.Fields(0)
'                strType = LookUp.Fields(0)
''                grddatagrid.AllowAddNew = False
'                BUTTON(9).Enabled = True 'Save
'                grddatagrid.Columns(2).Text = strType
'
'            End If
'
'    End If
'    End If
'End If
'If opt = "add" And grdDataGrid.Col = 0 Then
'    If KeyCode = 9 Then
'        st1 = "A"
'    Else
'        st1 = ""
'    End If
'End If

' If KeyCode = 65 And Shift = 2 Then ''''''''''' ADDITION
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
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Frmptype", vbInformation, head

End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
If grddatagrid.Col = 0 Then
    ToAlphaNumber grddatagrid, 2, KeyAscii
    ToUpCase grddatagrid, KeyAscii
ElseIf grddatagrid.Col = 1 Then
    ToAlphaNumber grddatagrid, 30, KeyAscii
    ToUpCase grddatagrid, KeyAscii
    'Initials grddatagrid, KEYASCII
ElseIf grddatagrid.Col = 4 Then
    StatusBar1.Panels(2).Text = "Enter Character, Y for Yes (or) N for No"
    If Not (KeyAscii = 78 Or KeyAscii = 110 Or KeyAscii = 89 Or KeyAscii = 121 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 46) Then
        KeyAscii = 0
        Exit Sub
    End If
    ToAlphaNumber grddatagrid, 1, KeyAscii
    ToUpCase grddatagrid, KeyAscii
End If

End If


Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Frmptype", vbInformation, head
End Sub

Public Sub query_mode()
On Error GoTo er1
  'Adodc1.RecordSource = "select LOCCODE""Code"",LOCNAME ""Location Name"" from  LOCMAS  Order by LOCCODE"
  'Adodc1.Refresh
  Set adoPrimaryRS = New Recordset
  Set Rs = New Recordset
Rs.Open "select fainstal from rm_param ", DB
 If Rs(0) = "Y" Then
  'adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"", a.purgl ""GL Code"",b.glhead ""GL Head"",case when a.CRDAYS='Y' then 'Yes' else 'No' end as ""Credit Days"" from rm_purtype a,fa_glmas b where a.purgl*=b.glcode order by a.purtype", DB, adOpenStatic, adLockReadOnly
  adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"", a.purgl ""GL Code"",b.glhead ""GL Head"",case when a.CRDAYS='Y' then 'Yes' else 'No' end as ""Credit Days"" from rm_purtype a left join fa_glmas b on a.purgl=b.glcode order by a.purtype", DB, adOpenStatic, adLockReadOnly
  'MsgBox adoPrimaryRS.RecordCount
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox "No Records Found", vbInformation, head
  End If
            grddatagrid.Columns(3).Width = 2500
            grddatagrid.Columns(4).Width = 1310
            grddatagrid.Columns(2).Width = 1000
            grddatagrid.Columns(1).Width = 2100
            grddatagrid.Columns(0).Width = 630
 Else
 adoPrimaryRS.Open "select a.purtype ""Code"" ,a.purdesc ""Name"", a.purgl ""GL Code"",case when a.CRDAYS='Y' then 'Yes' else 'No' end as ""Credit Days"" from rm_purtype a order by a.purtype", DB, adOpenStatic, adLockReadOnly
  'MsgBox adoPrimaryRS.RecordCount
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  
  grddatagrid.Columns(2).Width = 2009.764
 grddatagrid.Columns(1).Width = 2385.071
 grddatagrid.Columns(0).Width = 615.1182
 End If
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
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then
    If grddatagrid.Col = 1 And Trim(grddatagrid.Columns(0).Text) = "" Then
        grddatagrid.Col = 0
    End If
    If grddatagrid.Row >= 0 And grddatagrid.Col = 1 Then
        ln = Len(Trim(grddatagrid.Columns(0).Text))
        For I = 1 To ln
                t = Asc(Mid$(grddatagrid.Columns(0).Text, I, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grddatagrid.Col = 0
                    Exit Sub
                End If
                Next I
                st = "B"
                End If
               End If
'        If OPT = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
'            statusbar1.Panels(2).Text = False
'        End If
   If Opt = "add" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = " Enter Minimum of 2 Characters"
        End If
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 30 Characters"
        End If
   ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Modify Purchase Description"
        End If
    End If
    If Opt = "add" Then
        If ColIndex = 0 Then
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_purtype where purtype='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                'MsgBox "Area Code already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = " "
                grddatagrid.Columns(0).Locked = False
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                st = "A"
                Exit Sub
            End If
        End If
        If grddatagrid.Col = 2 Then
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_purtype where purdesc='" & grddatagrid.Columns(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                'MsgBox "Area Code already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = " "
                grddatagrid.Columns(1).Locked = False
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                st = "A"
                Exit Sub
            End If
        End If
    End If
    If Opt = "add" Then
    Set Rs = New Recordset
    Rs.Open "SELECT FAINSTAL FROM RM_PARAM", DB
    If Rs(0) = "Y" Then
    If grddatagrid.Col = 2 Then 'And grdDataGrid.Columns(2).Text = "" Then
            LookUp.Clear = True
            LookUp.query = "SELECT glcode""GL Code"",glhead""GL Head"" FROM fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,3000"
            LookUp.Caption = "General Ledger"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grddatagrid.AllowAddNew = False
                grddatagrid.Enabled = True
                StatusBar1.Panels(2).Text = ""
                
                strType = LookUp.Fields(0)
                grddatagrid.Columns(2).Text = LookUp.Fields(0)
                grddatagrid.Columns(2).Text = strType
                grddatagrid.Columns(3).Text = LookUp.Fields(1)
                
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                BUTTON(9).Enabled = True 'Save
            
            End If
        End If
    End If
End If
If Opt = "mod" Then
    Set Rs = New Recordset
    Rs.Open "SELECT FAINSTAL FROM RM_PARAM", DB
    If Rs(0) = "Y" Then
    If grddatagrid.Col = 2 Then 'And grdDataGrid.Columns(2).Text = "" Then
            LookUp.Clear = True
            LookUp.query = "SELECT glcode""GL Code"",glhead""GL Head"" FROM fa_glmas"
            LookUp.DefCol = "GL Head"
            LookUp.ALIGN = "2000,3000"
            LookUp.Caption = "General Ledger"
            LookUp.Show vbModal
            strType = ""
            If LookUp.Cancel = False Then
                grddatagrid.Enabled = True
                StatusBar1.Panels(2).Text = ""
                
                grddatagrid.Columns(2).Text = LookUp.Fields(0)
                grddatagrid.Columns(3).Text = LookUp.Fields(1)
                grddatagrid.Columns(2).Text = LookUp.Fields(0)
                strType = LookUp.Fields(0)
                grddatagrid.AllowAddNew = False
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                BUTTON(9).Enabled = True 'Save
                
            
            End If

    End If
    End If
End If


If ColIndex = 2 Then grddatagrid.Columns(2).Text = strType
Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Frmptype", vbInformation, head

End Sub


Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form Frmptype", vbInformation, head
Screen.MousePointer = 0
End Sub
