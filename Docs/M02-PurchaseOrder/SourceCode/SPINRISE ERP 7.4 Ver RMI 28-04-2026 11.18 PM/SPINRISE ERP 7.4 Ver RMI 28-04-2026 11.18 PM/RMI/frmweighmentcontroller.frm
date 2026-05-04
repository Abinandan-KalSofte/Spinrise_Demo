VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frmweighmentcontroller 
   Caption         =   "Weighment Controller"
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8250
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   8250
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   7440
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   165
      Top             =   6525
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   30
      TabIndex        =   16
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   5760
         Picture         =   "frmweighmentcontroller.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   615
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":0442
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "frmweighmentcontroller.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":0AE1
         Height          =   550
         Index           =   8
         Left            =   4200
         Picture         =   "frmweighmentcontroller.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":128D
         Height          =   550
         Index           =   10
         Left            =   5250
         Picture         =   "frmweighmentcontroller.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":1913
         Height          =   550
         Index           =   9
         Left            =   4725
         Picture         =   "frmweighmentcontroller.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":1FBF
         Height          =   550
         Index           =   11
         Left            =   6375
         Picture         =   "frmweighmentcontroller.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":279E
         Height          =   550
         Index           =   7
         Left            =   3675
         Picture         =   "frmweighmentcontroller.frx":2BE8
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
         Picture         =   "frmweighmentcontroller.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":32CF
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "frmweighmentcontroller.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":3953
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
         Picture         =   "frmweighmentcontroller.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":3FF9
         Height          =   550
         Index           =   5
         Left            =   2625
         Picture         =   "frmweighmentcontroller.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":47A8
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "frmweighmentcontroller.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmweighmentcontroller.frx":4E45
         Height          =   550
         Index           =   6
         Left            =   3150
         Picture         =   "frmweighmentcontroller.frx":528F
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
         Left            =   7035
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
         Left            =   8565
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
      Top             =   6495
      Width           =   8250
      _ExtentX        =   14552
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12983
            MinWidth        =   12983
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "12/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "11:44 AM"
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
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7673
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "        "
      TabPicture(0)   =   "frmweighmentcontroller.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4070
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   6270
         _ExtentX        =   11060
         _ExtentY        =   7170
         _Version        =   393216
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
      Left            =   480
      TabIndex        =   13
      Top             =   1200
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "frmweighmentcontroller.frx":55F8
         Height          =   615
         Left            =   4710
         Picture         =   "frmweighmentcontroller.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "frmweighmentcontroller.frx":5DAD
         Height          =   615
         Left            =   3000
         Picture         =   "frmweighmentcontroller.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4110
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   20
         Top             =   600
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
         TabIndex        =   19
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "Weighment Controller"
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
      Left            =   990
      TabIndex        =   14
      Top             =   915
      Width           =   2850
   End
End
Attribute VB_Name = "Frmweighmentcontroller"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim FLGREPET As Boolean
Dim st, st1, st2 As String
Dim DB As Connection
Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Weightment Controller"
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
    adoPrimaryRS.Open "select code ""Code"" ,wname ""Weighment Name"",DIVCODE from rm_weighnment where 1=2 order by code", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    grdDataGrid.Columns(1).Caption = "Controller Name"
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
    grdDataGrid.Columns(2).Visible = False
    DB.BeginTrans
    grdDataGrid.AllowUpdate = True
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus

Case 1, 2, 4
    'modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_weighnment where 1=1  and DivCode = '" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            'BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list for modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            'BUTTON(9).ToolTipText = "Delete"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list for Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            'BUTTON(9).ToolTipText = "Find"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list"
        End If
        Screen.MousePointer = 11
            
        DB.BeginTrans
'''        SSTab1.Visible = False
'''        grddatagrid.Visible = False
'''        Frame3.Visible = True
'''        Label15.Caption = "Godown List"
'''        KSLLIST1.conn = connectstring
'''        KSLLIST1.table = "rm_weighnment"
'''        KSLLIST1.listfield1 = "code"
'''        KSLLIST1.listfield2 = "wname"
'''        Frame3.Visible = True
'''        Command3.SetFocus
'''        Frame3.ZOrder
        Screen.MousePointer = 0
        LookUp.Clear = True
        LookUp.query = "select code""Controller Code"",wname""Controller Name"" from rm_weighnment where 1=1  and DivCode = '" & Divcode & "'"
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "2000,4000"
        LookUp.Caption = "Weighment Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
                SSTab1.Visible = True
                grdDataGrid.Visible = True
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select code ""Code"" ,wname ""Weighnment Name"",DIVCODE from rm_weighnment where code = '" & LookUp.Fields(0) & "'  and DivCode = '" & Divcode & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
                Set grdDataGrid.DataSource = adoPrimaryRS
                grdDataGrid.Columns(1).Caption = "Controller Name"
                grdDataGrid.Columns(0).Width = 1140.095
                grdDataGrid.Columns(1).Width = 4800.118
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(2).Visible = False
                grdDataGrid.AllowAddNew = False
                grdDataGrid.Col = 1
                grdDataGrid.Row = 0
                grdDataGrid.SetFocus
                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                    BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
                grdDataGrid.AllowUpdate = True
                Call adddelmod(BUTTON)
                If Opt = "fnd" Then
                    BUTTON(9).Enabled = False
                End If
                grdDataGrid.Columns(0).Locked = True
            Else
                Call BUTTON_Click(10)
            End If
        Screen.MousePointer = 0
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Case 2
    'Deletion
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_weighnment where 1=1  and DivCode = '" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grdDataGrid.Visible = False
        Label15.Caption = "Godown List"
        KslList1.conn = connectstring
        KslList1.Table = "RM_WEIGHNMENT"
        KslList1.listfield1 = "code"
        KslList1.listfield2 = "wname"
        grdDataGrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.SetFocus
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Godown Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Case 3
    'list
'    desc.Caption = "Listing"
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
'    Set Cn = New Connection
'    Cn.CursorLocation = adUseClient
'    If Cn.State = 1 Then
'        Cn.Close
'    End If
'    Cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If Cn.State = adStateclose Then
'        Cn.Open
'    End If
'    Call repproc2(rptweighcontrol)
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    dv1.rsCommand1.Open "select code,wname from rm_weighnment where 1=1  and DivCode = '" & Divcode & "' Order by code", Cn, adOpenStatic, adLockOptimistic
'    If dv1.rsCommand1.RecordCount <> 0 Then
'        Set rptweighcontrol.DataSource = dv1
'        rptweighcontrol.Show
'        desc.Caption = "Query"
'    Else
'        MsgBox "No Records Found", vbInformation, head
'        desc.Caption = "Query"
'        Exit Sub
'    End If
Dim clsCryRptWgtcntrller As New clsCrystal
  Set clsCryRptWgtcntrller.cryRept = Cry_SetupWgtcntrller
  clsCryRptWgtcntrller.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
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
        adoPrimaryRS.MoveLast
    End If
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
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
     End If
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
    Call navi(BUTTON)
    Call las(BUTTON)
    Beep
    Exit Sub
GoLastError:
    MsgBox Err.Description, vbInformation, head
Case 9
'Save
    If Opt = "add" Or Opt = "mod" Then
        If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
            MsgBox "Empty record Cannot be Saved", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Columns(0).Text = "" Then
            MsgBox "Weighment Code Cannot be Empty", vbInformation, head
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Columns(1).Text = "" Then
            MsgBox "Weighment Name Cannot be Empty", vbInformation, head
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        End If
        tmp = Opt
        Opt = ""
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("DIVCODE") = Divcode
            If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
                adoPrimaryRS.Delete
            End If
            adoPrimaryRS.MoveNext
        Loop
        If adoPrimaryRS.RecordCount = 0 Then
            BUTTON_Click (10)
            DB.RollbackTrans
            Exit Sub
        End If
        On Error Resume Next
        Opt = tmp
        StatusBar1.Panels(2).Text = "Record(s) Saved"
        adoPrimaryRS.MoveFirst
                Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Weighment Controller"
            TrnLog("Trans_Mod") = Opt
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        If Opt = "add" Then
            MsgBox "Record(s) Saved", vbInformation, head
        ElseIf Opt = "mod" Then
            MsgBox "Record(s) Modified", vbInformation, head
        End If
        Opt = ""
    End If
    If Opt = "add" Then
        On Error GoTo deler
        StatusBar1.Panels(2).Text = "Record(s) Saved"
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters

        
        
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
    End If
    If Opt = "mod" Then
        StatusBar1.Panels(2).Text = "Records Modified"
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.UpdateBatch adAffectAllChapters
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Weighment Controller"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        MsgBox "Record(s) Modified", vbInformation, head
    End If
    If Opt = "del" Then
        StatusBar1.Panels(2).Text = "Records Deleted"
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            DB.Execute ("delete from rm_weighnment where DIVCODE='" & Divcode & "' AND code=" + "'" + grdDataGrid.Columns(0) + "'")
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Weighment Controller"
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
    If Opt = "fnd" Then
        DB.CommitTrans
    End If
    Opt = " "
    Call query_mode
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Call BUTTON_Click(10)
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus
    desc.Caption = "Query"
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
  
    desc.Caption = "Query"
    Screen.MousePointer = 11
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
    grdDataGrid.Visible = True
    SSTab1.Visible = True
    Frame3.Visible = False
    Call cancl(BUTTON)
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
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Weightment_Ctrl
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
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
        MsgBox "This Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Weighment Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grdDataGrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frmweighmentcontroller", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    SSTab1.Visible = True
    grdDataGrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code ""Code"" ,wname ""Weighnment Name"" from rm_weighnment where code = '" & KslList1.Code & "'  and DivCode = '" & Divcode & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    grdDataGrid.Columns(1).Caption = "Controller Name"
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.AllowAddNew = False
    grdDataGrid.Col = 1
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Frmweighmentcontroller", vbInformation, head
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmweighmentcontroller", vbInformation, head
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
  If Opt <> "add" Then
      StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
    Dim Rs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error

    If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Weighment Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_weighnment where code='" & grdDataGrid.Columns(0).Text & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Weighment Code already defined!", vbInformation, head
                grdDataGrid.Columns(0).Text = " "
                st = "A"
                Exit Sub
             End If
        End If
    End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form Frmweighmentcontroller", vbInformation, head
End Sub
Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error

    If Opt = "add" Then
        If Trim(grdDataGrid.Columns(0)) <> "" Then
            BUTTON(9).Enabled = True
        End If
    End If
    If Opt = "add" Then
        If grdDataGrid.Col = 1 Then
            If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
                adoPrimaryRS.AddNew
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
            End If
        End If
        If grdDataGrid.Col = 0 Then
        a = adoPrimaryRS.AbsolutePosition
        Code = adoPrimaryRS(0)
        Opt = " "
        adoPrimaryRS.MoveFirst
        For I = 1 To adoPrimaryRS.RecordCount - 1
            If adoPrimaryRS(0).value = Code And Not adoPrimaryRS.AbsolutePosition = a Then
                MsgBox "Weighment Code Already Defined!", vbInformation, head
                adoPrimaryRS.AbsolutePosition = a
                adoPrimaryRS(0).value = ""
                grdDataGrid.Columns(0).Locked = False
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Opt = "add"
                Exit Sub
            End If
            adoPrimaryRS.MoveNext
        Next I
        Opt = "add"
    End If
End If
If st1 = "A" Then
    grdDataGrid.Col = 1
    grdDataGrid.SetFocus
End If


Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form Frmweighmentcontroller", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

    Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

    If Opt = "add" Then
        If grdDataGrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 6 Characters"
        End If
    ElseIf Opt = "mod" Then
        If grdDataGrid.Col = 1 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
        End If
    End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grdDataGrid.Text) = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Weighment Name Cannot be empty"), vbInformation, head
            st2 = "A"
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Code Cannot be empty"), vbInformation, head
            st = "A"
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
        End If
    End If
Else
    FLGREPET = False
End If

'If KeyCode = 65 And Shift = 2 Then ''''''''''' ADDITION
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
        Call BUTTON_Click(10)   ''cancel
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    If grdDataGrid.Col = 0 Then
        ToAlphaNumber grdDataGrid, 6, KeyAscii
        ToUpCase grdDataGrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    ElseIf grdDataGrid.Col = 1 Then
        ToAlphaNumber grdDataGrid, 50, KeyAscii
        ToUpCase grdDataGrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    End If
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Frmweighmentcontroller", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub query_mode()
intervalMinutes = -1
    On Error GoTo er1
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code ""Code"" ,wname ""Weighment Name"" from rm_weighnment where 1=1  and DivCode = '" & Divcode & "' order by code", DB, adOpenStatic, adLockReadOnly
    Set grdDataGrid.DataSource = adoPrimaryRS
    grdDataGrid.Columns(1).Caption = "Controller Name"
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
    If adoPrimaryRS.BOF Then
        MsgBox " No Records Found", vbInformation, head
    End If
    
    desc.Caption = "Query"
    DATLAB.Caption = pdate
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
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.Columns(1).Locked = True
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error

If Opt = "add" Then
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        grdDataGrid.Col = 0
    End If
    If grdDataGrid.Row >= 0 And grdDataGrid.Col = 1 Then
        ln = Len(grdDataGrid.Columns(0).Text)
        For I = 1 To ln
                t = Asc(Mid$(grdDataGrid.Columns(0).Text, I, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grdDataGrid.Col = 0
                    Exit Sub
                End If
                Next I
                st = "B"
                End If
        If Opt = "add" And grdDataGrid.Col = 1 And grdDataGrid.Columns(0) <> "" Then
    End If
End If
If Opt = "add" Then
    If grdDataGrid.Col = 0 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Characters"
    End If
    If grdDataGrid.Col = 1 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
    End If
ElseIf Opt = "mod" Then
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Modify Godown Description"
     End If
End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Frmweighmentcontroller", vbInformation, head
End Sub

Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub
