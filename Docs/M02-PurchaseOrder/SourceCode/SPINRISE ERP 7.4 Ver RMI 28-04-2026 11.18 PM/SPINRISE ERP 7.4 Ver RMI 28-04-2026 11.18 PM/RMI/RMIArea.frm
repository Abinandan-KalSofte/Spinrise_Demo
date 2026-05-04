VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmArea 
   Caption         =   "Station"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6405
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   550
      Index           =   13
      Left            =   5760
      Picture         =   "RMIArea.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   23
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   585
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   195
      Top             =   6765
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   17
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":0442
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "RMIArea.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":0AE1
         Height          =   550
         Index           =   8
         Left            =   4200
         Picture         =   "RMIArea.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":128D
         Height          =   550
         Index           =   10
         Left            =   5250
         Picture         =   "RMIArea.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":1913
         Height          =   550
         Index           =   9
         Left            =   4725
         Picture         =   "RMIArea.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":1FBF
         Height          =   550
         Index           =   11
         Left            =   6345
         Picture         =   "RMIArea.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":279E
         Height          =   550
         Index           =   7
         Left            =   3675
         Picture         =   "RMIArea.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "RMIArea.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":32CF
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "RMIArea.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":3953
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   2
         Left            =   1095
         Picture         =   "RMIArea.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":3FF9
         Height          =   550
         Index           =   5
         Left            =   2625
         Picture         =   "RMIArea.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":47A8
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "RMIArea.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIArea.frx":4E45
         Height          =   550
         Index           =   6
         Left            =   3150
         Picture         =   "RMIArea.frx":528F
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
         Left            =   7515
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
         Left            =   8565
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   6105
      Width           =   9480
      _ExtentX        =   16722
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
            Object.Width           =   2542
            MinWidth        =   2542
            TextSave        =   "29/10/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "11:49 AM"
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
      Width           =   7980
      _ExtentX        =   14076
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   0
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "RMIArea.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   150
         TabIndex        =   12
         Top             =   135
         Width           =   7710
         _ExtentX        =   13600
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
      Left            =   540
      TabIndex        =   13
      Top             =   1350
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIArea.frx":55F8
         Height          =   615
         Left            =   4980
         Picture         =   "RMIArea.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIArea.frx":5DAD
         Height          =   615
         Left            =   3240
         Picture         =   "RMIArea.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4080
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
         TabIndex        =   16
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Station"
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
      Left            =   990
      TabIndex        =   14
      Top             =   930
      Width           =   975
   End
End
Attribute VB_Name = "FrmArea"
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
Dim DB As Connection
Dim code As String
Dim a As Integer
Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of From Area"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select areacode ""Area Code"" ,areaname ""Area"" ,STATION ""Station Name"",State ""State"",l_or_u ""Local/Upcountry"" from rm_area where 1=2 order by areacode", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 1140.095
        grddatagrid.Columns(1).Width = 2275.213
        grddatagrid.Columns(2).Width = 1739.906
        grddatagrid.Columns(3).Width = 1140.095
        grddatagrid.Columns(4).Width = 1275.213
        DB.BeginTrans
        'grdDataGrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        'BUTTON(9).ToolTipText = "Add Record"
        'BUTTON(4).Enabled = True
        'grdDataGrid.ScrollBars = dbgBoth
        grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1, 2, 4
        'modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_area", DB
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
''        SSTab1.Visible = False
''        grddatagrid.Visible = False
''        Frame3.Visible = True
''        Label15.Caption = "Station List"
''        KSLLIST1.conn = connectstring
''        KSLLIST1.table = "rm_area"
''        KSLLIST1.listfield1 = "areacode"
''        KSLLIST1.listfield2 = "areaname"
''        Frame3.Visible = True
''        Command3.SetFocus
''        Frame3.ZOrder
        LookUp.Clear = True
        LookUp.query = "SELECT AREACODE""Area Code"",AREANAME""Area Name"" FROM RM_AREA"
        LookUp.DefCol = "Name"
        LookUp.Caption = "Area Listing"
        LookUp.ALIGN = "2000,5000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select areacode ""Code"" ,areaname ""Area"",STATION ""Station Name"",State ""State"",l_or_u""Local/Upcountry"" from rm_area  where areacode = '" & LookUp.Fields(0) & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(1).Width = 2275.213
            grddatagrid.Columns(2).Width = 1739.906
            grddatagrid.Columns(3).Width = 1140.095
            grddatagrid.Columns(4).Width = 1275.213
            grddatagrid.Columns(0).Locked = True
            grddatagrid.AllowAddNew = False
            grddatagrid.EditActive = True
            grddatagrid.Col = 1
            grddatagrid.Row = 0
            grddatagrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
            grddatagrid.AllowUpdate = True
            Call adddelmod(BUTTON)
            If Opt = "fnd" Then
                BUTTON(9).Enabled = False
            End If
            grddatagrid.Columns(0).Locked = True
            'BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select Station Code from the list for modification"
            Screen.MousePointer = 0
        Else
            Call BUTTON_Click(10)
        End If
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_area", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        DB.BeginTrans
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Label15.Caption = "Station List"
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "rm_area"
        KSLLIST1.listfield1 = "areacode"
        KSLLIST1.listfield2 = "areaname"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
          KSLLIST1.SetFocus
        Command3.SetFocus
        Frame3.ZOrder
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        'BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Station Code from the list for Deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 13
        'list
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
'        Call repproc2(rptarea)
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'
'        dv1.rsCommand1.Open "SELECT areacode  AS Expr1, areaname AS Expr2, station AS Expr3, state AS Expr4,L_OR_U =case l_or_u when 'L' then 'Local'when 'I' then 'Import' else 'Upcountry' end  from rm_area   Order by areacode", Cn, adOpenStatic, adLockOptimistic
'
'        If dv1.rsCommand1.RecordCount <> 0 Then
'            Set rptarea.DataSource = dv1
'            desc.Caption = "Query"
'            rptarea.Show
'        Else
'            MsgBox "No Records Found", vbInformation, head
'            desc.Caption = "Query"
'            Exit Sub
'        End If
Dim clsCryRptStation As New clsCrystal
  Set clsCryRptStation.cryRept = Cry_SetupStation
  clsCryRptStation.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRmi.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
'Case 4
' 'Query
'        opt = "query"
'        desc.Caption = "Query"
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
        
        If Opt = "add" Or Opt = "mod" Then
           If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
                 MsgBox "Empty record Cannot be Saved", vbInformation, head
                 grddatagrid.Col = 0
                 grddatagrid.SetFocus
                 Exit Sub
           End If
           If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
                MsgBox "Please enter the Area Name", vbInformation, head
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                Exit Sub
          End If
      
      
      If grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(4).Text = "" Then
        MsgBox "Local-L/Interstate-U/Import-I Cannot be Empty", vbInformation, head
        grddatagrid.Col = 4 '2
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      
        
    If grddatagrid.Columns(4).Text = "" Then
       If Not (grddatagrid.Columns(4).Text = "L" Or grddatagrid.Columns(4).Text = "U" Or grddatagrid.Columns(4).Text = "I" Or grddatagrid.Columns(4).Text = "i" Or grddatagrid.Columns(4).Text = "l" Or grddatagrid.Columns(4).Text = "u") Then
        MsgBox "Enter Either L or U or I", vbInformation, head
        'grddatagrid.Columns(4).Text = " "
        grddatagrid.Col = 4
        grddatagrid.SetFocus
    Exit Sub
    
    End If
    End If
    End If
          If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
           On Error Resume Next
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           
           DB.CommitTrans
           MsgBox "Record(s) Saved", vbInformation, head
           Opt = ""
          Else
          If Trim(grddatagrid.Columns(0).Text) <> "" Then
            If Trim(grddatagrid.Columns(1).Text) = "" Then
                StatusBar1.Panels(2).Text = "Location Name cannot be empty"
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                Screen.MousePointer = 0
                Exit Sub
             Else
                StatusBar1.Panels(2).Text = ""
            End If
         End If
       End If
     End If
       If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,Station,StateCode,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Station"
                        TrnLog("Trans_Mod") = "Add"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                             s = getMasterName("State_code", "ig_state", "name", grddatagrid.Columns(3).Text)
                        TrnLog("StateCode") = s
                        TrnLog("Station") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
        
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
        s = getMasterName("State_code", "ig_state", "name", grddatagrid.Columns(3).Text)
        DB.Execute "update rm_area set Statecode='" & s & "' where Areacode='" & grddatagrid.Columns(0).Text & "'"

        
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
       End If
       If Opt = "mod" Then
         grddatagrid.AllowUpdate = True
         adoPrimaryRS.UpdateBatch adAffectAllChapters
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,Station,StateCode,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Station"
                        TrnLog("Trans_Mod") = "Mod"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                           s = getMasterName("State_code", "ig_state", "name", grddatagrid.Columns(3).Text)
                        TrnLog("StateCode") = s
                        TrnLog("Station") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
                        TrnLog.UpdateBatch adAffectAllChapters
         
         s = getMasterName("State_code", "ig_state", "name", grddatagrid.Columns(3).Text)
         DB.Execute "update rm_area set Statecode='" & s & "' where Areacode='" & grddatagrid.Columns(0).Text & "'"
        
         DB.CommitTrans
         MsgBox "Record(s) Modified.", vbInformation, head
       End If
    If Opt = "del" Then
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
        
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,Station,StateCode,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Station"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grddatagrid.Columns(0).Text
            TrnLog("description") = grddatagrid.Columns(1).Text
                             s = getMasterName("State_code", "ig_state", "name", grddatagrid.Columns(3).Text)
                        TrnLog("StateCode") = s
                        TrnLog("Station") = grddatagrid.Columns(2).Text
                        TrnLog("hsn") = grddatagrid.Columns(4).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.Execute ("delete from rm_area where areacode=" + "'" + grddatagrid.Columns(0) + "'")
            DB.CommitTrans
            MsgBox "Record(s) Deleted.", vbInformation, head
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
        BUTTON(0).SetFocus ''''''''''''''
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
    BUTTON(0).SetFocus ''''''''''''''
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Station Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Station Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Station Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmArea", vbInformation, head
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  grddatagrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & ksllist1.Code & "' Order by LOCCODE"
    'Adodc1.Refresh
    Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "select areacode ""Code"" ,areaname ""Area Name"",case l_or_u when 'L' then 'Local' when 'I' then 'Import' else 'Upcountry' end ""Local/Upcountry"" from rm_area  where areacode = '" & KslList1.Code & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select areacode ""Code"" ,areaname ""Area"",STATION ""Station Name"",State ""State"",l_or_u""Local/Upcountry"" from rm_area  where areacode = '" & KSLLIST1.code & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
     grddatagrid.Columns(0).Width = 1140.095
   ' grdDataGrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Width = 2275.213
    grddatagrid.Columns(2).Width = 1739.906
    grddatagrid.Columns(3).Width = 1140.095
    grddatagrid.Columns(4).Width = 1275.213
    grddatagrid.Columns(0).Locked = True
    grddatagrid.AllowAddNew = False
    grddatagrid.EditActive = True
    grddatagrid.Col = 1
    grddatagrid.Row = 0
    grddatagrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmArea", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmArea", vbInformation, head
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
    grddatagrid.Columns(0).Width = 1140.095
   ' grdDataGrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Width = 2275.213
    grddatagrid.Columns(2).Width = 1739.906
    grddatagrid.Columns(3).Width = 1140.095
    grddatagrid.Columns(4).Width = 1275.213
'    grdDataGrid.Columns(5).Width = 1739.906

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmArea", vbInformation, head
End Sub

'Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1000
'  grddatagrid.Left = 1100
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 2160
'  SSTab1.Height = Me.Height - 3100
'  grddatagrid.Height = SSTab1.Height - 260
'  grddatagrid.Width = SSTab1.Width - 200
'   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmArea", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Station Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_area where areacode='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Area Code already defined!", vbInformation, head
                grddatagrid.Columns(0).Text = " "
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                grddatagrid.Columns(1).Locked = False
                grddatagrid.Col = 0
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
  
If st1 = "A" Then
    grddatagrid.Col = 1
    grddatagrid.SetFocus
End If


If ColIndex = 0 And Opt = "add" Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
    row1 = grddatagrid.Row
    'flg = "n"
    itemc = grddatagrid.Columns(0).Text
    adoPrimaryRS.MoveFirst
    If adoPrimaryRS.RecordCount > 0 Then
    Do While Not adoPrimaryRS.EOF
        If itemc = adoPrimaryRS("area Code") Then
            cut = cut + 1
        End If
        adoPrimaryRS.MoveNext
    Loop
    End If
    If cut > 1 Then
        MsgBox "Station Code already defined", vbInformation, head
        'flg = "y"
        grddatagrid.Row = row1
        grddatagrid.Columns(0).Text = " "
        grddatagrid.Col = 0
        grddatagrid.SetFocus
    Else
        grddatagrid.Row = row1
        grddatagrid.Col = 0
        grddatagrid.SetFocus
    End If
End If


Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmArea", vbInformation, head

End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : grdDataGrid_GotFocus
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

    If Opt = "add" Then
        If grddatagrid.Col = 0 Then
             StatusBar1.Panels(2).Text = " Enter Maximum of 4 Characters"
        End If
    ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
             StatusBar1.Panels(2).Text = "Modify Station Description"
        End If
    End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form FrmArea", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : grddatagrid_KeyDown
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
'If opt = "add" Then
'If grdDataGrid.Col = 2 Then
'     If KeyCode = vbKeyTab And Shift = 0 Then
'        'If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
'            If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text <> "" And Trim(grdDataGrid.Columns(2).Text) <> "" Then
'                adoprimaryrs.AddNew
'                grdDataGrid.AllowAddNew = True
'                grdDataGrid.Col = 0
'            End If
'       ' End If
'    End If
'End If
'End If
On Error GoTo grddatagrid_KeyDown_Error

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmArea", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : GRDDATAGRID_KeyPress
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
If grddatagrid.Col = 0 Then
    ToAlphaNumber grddatagrid, 4, KeyAscii
    ToUpCase grddatagrid, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
ElseIf grddatagrid.Col = 1 Then
    ToAlphaNumber grddatagrid, 30, KeyAscii
    ToUpCase grddatagrid, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
    'Initials grddatagrid, KEYASCII
ElseIf grddatagrid.Col = 2 Or grddatagrid.Col = 3 Then
        ToAlphaNumber grddatagrid, 15, KeyAscii
           ToUpCase grddatagrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
ElseIf grddatagrid.Col = 4 Then
        ToAlphaNumber grddatagrid, 1, KeyAscii
        ToUpCase grddatagrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    'Initials grddatagrid, KEYASCII
End If
If Opt = "add" Then
If grddatagrid.Col = 4 Then
     If KeyAscii = 9 Then
        'If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
            If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And Trim(grddatagrid.Columns(2).Text) <> "" Then
            If grddatagrid.Columns(2).Text = "U" Or grddatagrid.Columns(2).Text = "L" Or grddatagrid.Columns(2).Text = "I" Then
                adoPrimaryRS.AddNew
               ' grdDataGrid.AllowAddNew = True
                grddatagrid.Col = 0
            End If
       ' End If
         End If
    End If
End If
End If
'If grdDataGrid.Col = 2 Then
'  If Not (KeyAscii = 85 Or KeyAscii = 76 Or KeyAscii = 108 Or KeyAscii = 117) Then
'    KeyAscii = 0
'  Else
'  Call ToUpCase(grdDataGrid, KeyAscii)
'  Call ToAlphaNumber(grdDataGrid, 1, KeyAscii)
'  End If
'End If
End If

Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmArea", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo er1
  'Adodc1.RecordSource = "select LOCCODE""Code"",LOCNAME ""Location Name"" from  LOCMAS  Order by LOCCODE"
  'Adodc1.Refresh
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select areacode ""Code"" ,areaname ""Area"",STATION ""Station Name"",State ""State"",case l_or_u when 'L' then 'Local' when 'I' then 'Import' else 'Upcountry' end ""Local/Upcountry"" from rm_area order by areacode", DB, adOpenStatic, adLockReadOnly
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
   grddatagrid.Columns(0).Width = 1140.095
    'grdDataGrid.Columns(0).Visible = False
    grddatagrid.Columns(1).Width = 2275.213
    grddatagrid.Columns(2).Width = 1739.906
    grddatagrid.Columns(3).Width = 1140.095
    grddatagrid.Columns(4).Width = 1275.213

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
    MsgBox "No Records Found", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub



Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 2 And grddatagrid.Columns(2).Text <> "" Then
    If Not (grddatagrid.Columns(4).Text = "L" Or grddatagrid.Columns(4).Text = "U" Or grddatagrid.Columns(2).Text = "I") Then
    MsgBox "Enter Either L or U or I ", vbInformation, head
    grddatagrid.Columns(4).Text = " "
    SendKeys "{delete}"
    grddatagrid.Col = 4
    grddatagrid.SetFocus
    End If
    End If
    End If
End If

'        grddatagrid.Col = 0
'    End If
'    If grddatagrid.Row >= 0 And grddatagrid.Col = 1 Then
'            ln = Len(grddatagrid.Columns(0).Text)
'        For i = 1 To ln
'                t = Asc(Mid$(grddatagrid.Columns(0).Text, i, 1))
'                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
'                    grddatagrid.Col = 0
'                    Exit Sub
'                End If
'                Next i
'                St = "B"
'                End If
'        If opt = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
 '       End If
  ' End If
   If Opt = "add" Or Opt = "mod" Then
   If grddatagrid.Row >= 0 Then
        
        If grddatagrid.Col = 1 And Trim(grddatagrid.Columns(0).Text) = "" Then
                MsgBox "Area Code cannot be empty", vbInformation, head
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                Exit Sub
          End If
                    
         If grddatagrid.Col = 2 And Trim(grddatagrid.Columns(1).Text) = "" And Trim(grddatagrid.Columns(0).Text) = "" Then
                MsgBox "State Code cannot be empty", vbInformation, head
                grddatagrid.Col = 0
                Exit Sub
         ElseIf grddatagrid.Col = 2 And Trim(grddatagrid.Columns(1).Text) = "" Then
                MsgBox "Area Cannot be empty", vbInformation, head
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                Exit Sub
        ElseIf grddatagrid.Col = 3 And Trim(grddatagrid.Columns(2).Text) = "" Then
                MsgBox "Station Name Cannot be empty", vbInformation, head
                grddatagrid.Col = 2
                grddatagrid.SetFocus
                grddatagrid.Columns(4).Locked = False
                Exit Sub
        ElseIf grddatagrid.Col = 3 Then
            Set Rs = New Recordset
            Rs.Open "select * from ig_state", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                LookUp.Clear = True
                LookUp.query = "select State_code as Code,Name as Name,isnull(gststatecode,'0') gststatecode from ig_State "
                LookUp.Caption = "State Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "2000,6000,1"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    If Trim(LookUp.Fields(0)) = "0" Then
                     MsgBox "PLEASE ENTER GST STATE CODE IN STATE SETUP ", vbInformation, head
                     BUTTON(9).Enabled = False
                     Call BUTTON_Click(10)
                     Exit Sub
                    End If
                    grddatagrid.Columns(3).Text = LookUp.Fields(1)
                    grddatagrid.Columns(3).Locked = True
                    LookUp.Clear = True
                End If
            End If
         End If
         
'    If grddatagrid.Col = 2 Then
'        If Trim(grddatagrid.Columns(0).Text) = "" Then
'          MsgBox "Local or Uppentry cannot be empty", vbInformation, head
'          grddatagrid.Col = 2
'          grddatagrid.SetFocus
'          Exit Sub
'        End If
'    End If
End If
        If grddatagrid.Col = 0 Then
             StatusBar1.Panels(2).Text = "Enter Maximum of 4 Character"
        End If
        If grddatagrid.Col = 1 Then
             StatusBar1.Panels(2).Text = "Enter Maximum of 30 Character"
        End If
        If grddatagrid.Col = 2 Then
             StatusBar1.Panels(2).Text = "Enter Maximum of 15 Character"
        End If
        If grddatagrid.Col = 3 Then
             StatusBar1.Panels(2).Text = "Enter Maximum of 15 Character"
        End If
        If grddatagrid.Col = 4 Then
             StatusBar1.Panels(2).Text = "Enter L - (Local) or U - (Interstate) or I - (Import)"
        End If
    ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
             StatusBar1.Panels(2).Text = "Modify Station Description"
        End If
    End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmArea", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : KslList1_GotFocus
' DateTime  : 07/12/2008 14:40
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form FrmArea", vbInformation, head
Screen.MousePointer = 0
End Sub


