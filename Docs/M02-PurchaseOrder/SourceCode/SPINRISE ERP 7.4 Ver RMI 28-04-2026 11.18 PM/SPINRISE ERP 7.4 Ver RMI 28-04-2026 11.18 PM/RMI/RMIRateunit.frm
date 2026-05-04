VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmRateunit 
   Caption         =   "Rate Unit"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8580
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6405
   ScaleWidth      =   8580
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7920
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   18
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5760
         Picture         =   "RMIRateunit.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMIRateunit.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":0AE1
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMIRateunit.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":1278
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIRateunit.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":1915
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMIRateunit.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":20C4
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
         Picture         =   "RMIRateunit.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":276A
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIRateunit.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMIRateunit.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":3185
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMIRateunit.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":391F
         Height          =   510
         Index           =   11
         Left            =   6255
         Picture         =   "RMIRateunit.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":40FE
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMIRateunit.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":47AA
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMIRateunit.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIRateunit.frx":4E30
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMIRateunit.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
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
         Left            =   8565
         TabIndex        =   20
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
         Left            =   7035
         TabIndex        =   19
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   6105
      Width           =   8580
      _ExtentX        =   15134
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
            TextSave        =   "14/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "1:39 PM"
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
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                 "
      TabPicture(0)   =   "RMIRateunit.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4095
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   6375
         _ExtentX        =   11245
         _ExtentY        =   7223
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
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
      Left            =   480
      TabIndex        =   13
      Top             =   960
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIRateunit.frx":55F8
         Height          =   615
         Left            =   4800
         Picture         =   "RMIRateunit.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4020
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIRateunit.frx":5DAD
         Height          =   615
         Left            =   3060
         Picture         =   "RMIRateunit.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4020
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   14
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
         TabIndex        =   17
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Rate Unit"
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
      TabIndex        =   15
      Top             =   870
      Width           =   1230
   End
End
Attribute VB_Name = "FrmRateunit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim FLGRT As Boolean
Dim st, st1, st2 As String
Dim DB As Connection
Dim Code As String
Dim a As Integer

Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Rate Unit"
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
        adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE from RM_RATEUNIT where 1=2 order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 1140.095
        grddatagrid.Columns(1).Width = 3000.118 '4800.118
        grddatagrid.Columns(1).Width = 1800.111 '4800.118


        DB.BeginTrans
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Add Record"
        'grdDataGrid.ScrollBars = dbgBoth
        
        grddatagrid.Columns(0).Locked = False
        grddatagrid.Columns(1).Locked = False
        grddatagrid.Columns(2).Locked = False
        
        grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1
        'modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_RATEUNIT", DB
    If Not Rs(0) = 0 Then
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        DB.BeginTrans
        '''SSTab1.Visible = False
        '''grddatagrid.Visible = False
''        Frame3.Visible = True
''        Label15.Caption = "Rate Unit List"
''        KslList1.conn = connectstring
''        KslList1.table = "RM_RATEUNIT"
''        KslList1.listfield1 = "UNITCODE"
''        KslList1.listfield2 = "UNITNAME"

         LookUp.Clear = True
         LookUp.query = "select unitcode AS 'Unit Code',unitname as 'Unit Name' from rm_rateunit"
         LookUp.Caption = "Rate Unit Listing"
         LookUp.DefCol = "UnitCode"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE from RM_RATEUNIT  where UNITCODE = '" & LookUp.Fields(0) & "' order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = adoPrimaryRS
                grddatagrid.Columns(0).Width = 1140.095
                grddatagrid.Columns(1).Width = 3000.118 '4800.118
                grddatagrid.Columns(1).Width = 1800.111 '4800.118

                grddatagrid.Columns(0).Locked = True
                grddatagrid.AllowAddNew = False
                grddatagrid.Col = 1
                'grddatagrid.row = 1
                grddatagrid.SetFocus
                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
         Else
                'Frame3.Visible = False
                'SSTab1.Visible = True
                'grddatagrid.Visible = True
                Call BUTTON_Click(10)
                Exit Sub
         End If
        Command3.Default = True
        '''Frame3.Visible = True
        'Frame3.ZOrder
        ''''kslLIST1.SetFocus
        grddatagrid.AllowUpdate = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        grddatagrid.Columns(0).Locked = True
        'BUTTON(9).Enabled = False 'Save
        'BUTTON(10).Enabled = False 'cancel
        'BUTTON(9).ToolTipText = "Modify"
        StatusBar1.Panels(2).Text = "select the Rate Unit code from the list for modification"
        Screen.MousePointer = 0
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_RATEUNIT", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        '''SSTab1.Visible = False
        '''grddatagrid.Visible = False
'''        Label15.Caption = "Rate Unit List"
'''        KslList1.conn = connectstring
'''        KslList1.table = "RM_RATEUNIT"
'''        KslList1.listfield1 = "UNITCODE"
'''        KslList1.listfield2 = "UNITNAME"
'''        grddatagrid.AllowUpdate = False
'''        Frame3.Visible = True
         DB.BeginTrans
         LookUp.Clear = True
         LookUp.query = "select unitcode AS 'UnitCode',unitname as 'UnitName' from rm_rateunit"
         StatusBar1.Panels(2).Text = "select the Rate Unit code from the list for deletion"
         LookUp.Caption = "Rate Unit Listing"
         LookUp.DefCol = "UnitCode"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE from RM_RATEUNIT  where UNITCODE = '" & LookUp.Fields(0) & "' order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(1).Width = 3000.118 '4800.118
            grddatagrid.Columns(1).Width = 1800.111 '4800.118
            grddatagrid.Columns(0).Locked = True
            grddatagrid.AllowAddNew = False
            grddatagrid.Col = 1
            'grddatagrid.row = 1
            grddatagrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
            BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
         Else
             Call BUTTON_Click(10)
             Exit Sub
         End If
        Command3.Default = True
        '''Frame3.ZOrder
        '''KslList1.SetFocus
       
        Call adddelmod(BUTTON)
        ''''BUTTON(9).Enabled = False 'Save
        ''''BUTTON(10).Enabled = False 'cancel
        'BUTTON(9).ToolTipText = "Delete"
        Screen.MousePointer = 0
       ' Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 4
        Screen.MousePointer = 11
        Opt = "fnd"
        desc.Caption = "Find"
         DB.BeginTrans
         LookUp.Clear = True
         LookUp.query = "select unitcode AS 'UnitCode',unitname as 'UnitName' from rm_rateunit"
         LookUp.Caption = "Rate Unit Listing"
         LookUp.DefCol = "UnitCode"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE from RM_RATEUNIT  where UNITCODE = '" & LookUp.Fields(0) & "' order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(0).Width = 1140.095
            grddatagrid.Columns(1).Width = 3000.118 '4800.118
            grddatagrid.Columns(1).Width = 1800.111 '4800.118
            grddatagrid.Columns(0).Locked = True
            grddatagrid.AllowAddNew = False
            grddatagrid.Col = 1
            'grddatagrid.row = 1
            grddatagrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
            BUTTON(9).SetFocus
            End If
            Frame3.Visible = False
         Else
             Call BUTTON_Click(10)
             Exit Sub
         End If
        Command3.Default = True
        '''Frame3.ZOrder
        '''KslList1.SetFocus
       
        Call adddelmod(BUTTON)
        ''''BUTTON(9).Enabled = False 'Save
        ''''BUTTON(10).Enabled = False 'cancel
        If Opt = "fnd" Then
            BUTTON(9).Enabled = False
        End If
        'BUTTON(9).ToolTipText = "Find"
        Screen.MousePointer = 0
Case 3
        'List
        desc.Caption = "Listing"
        Set dv1 = New DataEnvironment1
        dv1.Connection1.ConnectionString = connectstring
        Set cn = New Connection
        cn.CursorLocation = adUseClient
    If cn.State = 1 Then
        cn.Close
    End If
        cn.ConnectionString = "provider=msdatashape;" & connectstring
    If cn.State = adStateclose Then
        cn.Open
    End If
    Call repproc2(rptmixgrp)
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
        dv1.rsCommand1.Open "select UNITCODE,UNITNAME,VALUE  from  RM_RATEUNIT  order by UNITCODE", cn
    If dv1.rsCommand1.RecordCount <> 0 Then
        Set rptRateUnit.DataSource = dv1
        rptRateUnit.Show
        desc.Caption = "Query"
    Else
        MsgBox "No  Records Found", vbInformation, head
        desc.Caption = "Query"
        Exit Sub
    End If

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
            MsgBox "Empty Records Can't be Saved", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If
    
        If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1) = "" Then
            MsgBox "Please enter the Rate Unit Name", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Exit Sub
        End If
        
        If val(grddatagrid.Columns(2).Text) = 0 Then
            MsgBox "Please enter the Value", vbInformation, head
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
    
    tmp = Opt
    Opt = ""
    adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        If Trim(grddatagrid.Columns(0).Text) = "" Then
            adoPrimaryRS.Delete
            
        End If
        adoPrimaryRS.MoveNext
    Loop
      'If Trim(grdDataGrid.Columns(0).Text) = "" Then
      '    MsgBox "Mixed group code cannot be empty", vbInformation, haed
      '    grdDataGrid.Col = 0
      '    grdDataGrid.SetFocus
      '    Exit Sub
      'End If
      If adoPrimaryRS.RecordCount = 0 Then
        BUTTON_Click (10)
        DB.RollbackTrans
        Exit Sub
      End If
      adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        If Trim(grddatagrid.Columns(1).Text) = "" Then
              MsgBox "Rate Unit name cannot be empty", vbInformation, haed
            grddatagrid.Col = 1
            grddatagrid.SetFocus
          Exit Sub
      End If
      adoPrimaryRS.MoveNext
     Loop
     Opt = tmp
       ' If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
       '     On Error Resume Next
       '     adoprimaryrs.UpdateBatch adAffectAllChapters
       '     db.CommitTrans
       '     MsgBox "Record(s) Saved", vbInformation, head
       '     opt = ""
       ' Else
       ' If Trim(grdDataGrid.Columns(0).Text) <> "" Then
       '     If Trim(grdDataGrid.Columns(1).Text) = "" Then
        '        StatusBar1.Panels(2).Text = "Mixgroup Name cannot be empty"
        '        grdDataGrid.Col = 1
        '        grdDataGrid.SetFocus
        '        Screen.MousePointer = 0
        '        Exit Sub
        '    Else
        '        StatusBar1.Panels(2).Text = ""
         '   End If
        'End If
       ' End If
    End If
    If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Rate Unit"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grddatagrid.Columns(0).Text
            TrnLog("description") = grddatagrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
    End If
    If Opt = "mod" Then
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.UpdateBatch adAffectAllChapters
            adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Rate Unit"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grddatagrid.Columns(0).Text
            TrnLog("description") = grddatagrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
        
        DB.CommitTrans
        MsgBox "Record(s) Modified.", vbInformation, head
    End If
        If Opt = "del" Then
            On Error GoTo deler
            Dim msg As String
            msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
            If msg = vbYes Then
                DB.Execute ("delete from RM_RATEUNIT where UNITCODE=" + "'" + grddatagrid.Columns(0) + "'")
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Rate Unit"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grddatagrid.Columns(0).Text
            TrnLog("description") = grddatagrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
                
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
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Rate_Unit
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
        MsgBox "This Rate Unit Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox " Rate Unit  Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Rate Unit Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmRateunit", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  grddatagrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE from RM_RATEUNIT  where UNITCODE = '" & KslList1.Code & "' order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 3000.118 '4800.118
    grddatagrid.Columns(1).Width = 1800.111 '4800.118



    grddatagrid.Columns(0).Locked = True
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


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmRateunit", vbInformation, head
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

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmRateunit", vbInformation, head
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
    grddatagrid.Columns(0).Width = 824.882
  '  grddatagrid.Columns(1).Width = 4800.189
    grddatagrid.Columns(1).Width = 3000.118 '4800.118
    grddatagrid.Columns(1).Width = 2000 '4800.118


intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmRateunit", vbInformation, head

End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1425
'  grddatagrid.Left = 1525
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 2970
'  SSTab1.Height = Me.Height - 2700
'  grddatagrid.Height = SSTab1.Height - 200
'  grddatagrid.Width = SSTab1.Width - 225
   End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error
intervalMinutes = -1
If Opt = "add" Then
    If grddatagrid.Col = 2 Then
        If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGRT = True Then
            If grddatagrid.Col = 2 Then
               If val(grddatagrid.Columns(2).Text) = 0 Then
                   MsgBox "Please Enter the Value", vbInformation, head
                   grddatagrid.Col = 2
                   grddatagrid.SetFocus
                   Exit Sub
               Else
                   BUTTON(9).Enabled = True
                   BUTTON(9).SetFocus
                   Exit Sub
               End If
            End If
'            adoPrimaryRS.AddNew
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End If
    End If
    If grddatagrid.Col = 0 Then
    
     If adoPrimaryRS(0).value <> "" Then
       Code = adoPrimaryRS(0).value
     Else
       grddatagrid.Col = 0
       Code = grddatagrid.Text
     End If
     
       a = adoPrimaryRS.AbsolutePosition
       Opt = ""
       adoPrimaryRS.MoveFirst
          For I = 1 To adoPrimaryRS.RecordCount - 1
             If Code = adoPrimaryRS(0).value And adoPrimaryRS.AbsolutePosition <> a Then
                    MsgBox "Rate Unit Code Already Defined!", vbInformation, head
                    adoPrimaryRS.AbsolutePosition = a
                    adoPrimaryRS(0).value = ""
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                    Opt = "add"
                    Exit Sub
             End If
             adoPrimaryRS.MoveNext
         Next I
      'End If
      
     End If

     Opt = "add"
    End If
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 3 Then
        If val(grddatagrid.Columns(3).Text) = 0 Then
            MsgBox "Please Enter the Value", vbInformation, head
            grddatagrid.Col = 3
            grddatagrid.SetFocus
            Exit Sub
        Else
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
            Exit Sub
        End If
    End If
    
End If


Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form FrmRateunit", vbInformation, head
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset

' verify name
On Error GoTo GrdDatagrid_AfterColUpdate_Error

If ColIndex = 1 Then
    Set Rs = New Recordset
    Rs.Open "SELECT UNITNAME FROM RM_RATEUNIT WHERE UNITNAME = LTRIM(' " & grddatagrid.Columns(1).Text & " ')", DB, adOpenStatic
    If Rs.RecordCount <> 0 Then
    MsgBox " Rate Unit name is already defined", vbInformation, head
    grddatagrid.Columns(1).Text = " "
    grddatagrid.Col = 0
    grddatagrid.SetFocus
    Exit Sub
End If
End If
' name verify end

If ColIndex = 0 Then
    If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
        MsgBox "Rate Unit Code cannot be empty!", vbInformation, head
    Else
        Set Rs = New Recordset
        Rs.Open "select 'X'  from RM_RATEUNIT where UNITCODE='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            MsgBox "Rate Unit Code already defined!", vbInformation, head
            grddatagrid.Columns(0).Text = " "
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


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmRateunit", vbInformation, head

End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

    If Opt = "add" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 3 Characters"
        End If
    ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Modify the Rate Unit Name "
        End If
        If grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = " Modify the Rate Value "
        End If
    End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If KeyCode = vbKeyTab Then
    FLGRT = True
    If Trim(grddatagrid.Text) = "" Then
        If grddatagrid.Col = 1 Then
            MsgBox ("Name Cannot be empty"), vbInformation, head
            'st2 = "A"
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 0 Then
            MsgBox ("Code cannot be empty"), vbInformation, head
            'St = "A"
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 2 Then
            MsgBox ("Value cannot be empty"), vbInformation, head
            'St = "A"
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
    End If
     
    If grddatagrid.Col = 1 Then
      If grddatagrid.Columns(1).Text = "" Then
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Exit Sub
      End If
    End If
    
    If grddatagrid.Col = 1 Then
      If grddatagrid.Columns(2).Text = "" Then
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
      End If
    End If
    
    If grddatagrid.Col = 2 Then
      If grddatagrid.Columns(2).Text = "" Then
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
      End If
    End If
    
Else
    FLGRT = False
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
If grddatagrid.Col = 0 Then
    ToAlphaNumber grddatagrid, 3, KeyAscii
    ToUpCase grddatagrid, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
ElseIf grddatagrid.Col = 1 Then
    If Not KeyAscii = 38 Then
    ToAlphaNumber grddatagrid, 20, KeyAscii
    End If
'   Initials grddatagrid, KeyAscii
    ToUpCase grddatagrid, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
ElseIf grddatagrid.Col = 2 Then
    tonum grddatagrid, 5, KeyAscii, 4
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmRateunit", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub query_mode()
On Error GoTo er1
intervalMinutes = -1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select UNITCODE ""Code"" ,UNITNAME ""Name"",VALUE""              Value"" from RM_RATEUNIT order by UNITCODE", DB, adOpenStatic, adLockBatchOptimistic
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  grddatagrid.Columns(0).Width = 1140.095
  grddatagrid.Columns(1).Width = 3000.118 '4800.118
  grddatagrid.Columns(1).Width = 1800.111 '4800.118

  grddatagrid.Columns(0).Locked = True
  grddatagrid.Columns(1).Locked = True
  grddatagrid.Columns(2).Locked = True
  grddatagrid.Columns(2).Alignment = dbgRight
  grddatagrid.Columns(2).NumberFormat = "#####0.0000"
  
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
  BUTTON(10).Enabled = fas
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  grddatagrid.Columns(0).Locked = True
  grddatagrid.Columns(1).Locked = True
  grddatagrid.Columns(2).Locked = True
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then

    If st = "A" Or st1 = "A" Then
        grddatagrid.Col = 0
        st = "B"
    End If
    
    If st2 = "A" Then
        grddatagrid.Col = 1
        st2 = "B"
    End If
    
    If grddatagrid.Col = 1 Then
      If grddatagrid.Columns(0).Text = "" Then
        grddatagrid.Col = 0
      End If
    End If
    
    If grddatagrid.Col = 2 Then
      If grddatagrid.Columns(1).Text = "" Then
        grddatagrid.Col = 1
      End If
    End If
    
    If grddatagrid.Row >= 0 And grddatagrid.Col = 1 Then
        ln = Len(grddatagrid.Columns(0).Text)
        For I = 1 To ln
                t = Asc(Mid$(grddatagrid.Columns(0).Text, I, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grddatagrid.Col = 0
                    Exit Sub
                End If
                Next I
                st = "B"
                End If
        'If opt = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
        'End If
    End If
     
 If Opt = "add" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 3 Characters"
        End If
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 20 Characters"
        End If
        If grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 9 Numbers with 4 decimals"
        End If
 ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Modify the Rate Unit Name "
        End If
        If grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = " Modify the Rate Value "
        End If
 End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmRateunit", vbInformation, head
               
End Sub

Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub

