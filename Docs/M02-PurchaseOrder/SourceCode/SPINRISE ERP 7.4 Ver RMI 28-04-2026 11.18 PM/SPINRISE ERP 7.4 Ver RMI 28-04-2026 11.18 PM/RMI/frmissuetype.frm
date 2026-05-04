VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmissuetype 
   Caption         =   "Issue Type"
   ClientHeight    =   7035
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10125
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7035
   ScaleWidth      =   10125
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   9120
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   550
      Index           =   12
      Left            =   5880
      Picture         =   "frmissuetype.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   615
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   14
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":0442
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "frmissuetype.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":0AE1
         Height          =   550
         Index           =   6
         Left            =   3210
         Picture         =   "frmissuetype.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":1278
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "frmissuetype.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":1915
         Height          =   550
         Index           =   5
         Left            =   2685
         Picture         =   "frmissuetype.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":20C4
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
         Picture         =   "frmissuetype.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":276A
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "frmissuetype.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "frmissuetype.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":3185
         Height          =   550
         Index           =   7
         Left            =   3735
         Picture         =   "frmissuetype.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":391F
         Height          =   550
         Index           =   11
         Left            =   6555
         Picture         =   "frmissuetype.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":40FE
         Height          =   550
         Index           =   9
         Left            =   4785
         Picture         =   "frmissuetype.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":47AA
         Height          =   550
         Index           =   10
         Left            =   5310
         Picture         =   "frmissuetype.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmissuetype.frx":4E30
         Height          =   550
         Index           =   8
         Left            =   4260
         Picture         =   "frmissuetype.frx":527A
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
         TabIndex        =   16
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
         Left            =   7560
         TabIndex        =   15
         Top             =   240
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   17
      Top             =   6735
      Width           =   10125
      _ExtentX        =   17859
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
            TextSave        =   "14/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "4:05 PM"
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
      Height          =   5055
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   8820
      _ExtentX        =   15558
      _ExtentY        =   8916
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "        "
      TabPicture(0)   =   "frmissuetype.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4785
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   8550
         _ExtentX        =   15081
         _ExtentY        =   8440
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
      Top             =   1320
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "frmissuetype.frx":55F8
         Height          =   615
         Left            =   3000
         Picture         =   "frmissuetype.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "frmissuetype.frx":5DA4
         Height          =   615
         Left            =   4710
         Picture         =   "frmissuetype.frx":6186
         Style           =   1  'Graphical
         TabIndex        =   18
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
         Left            =   0
         TabIndex        =   21
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label label1 
      Caption         =   "Issue Type"
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
      Left            =   945
      TabIndex        =   22
      Top             =   930
      Width           =   1335
   End
End
Attribute VB_Name = "frmissuetype"
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
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Issue"
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
'       Adodc1.RecordSource = "select LOCCODE""Code"" ,LOCNAME ""Location Name"" from LOCMAS where 1=2 Order by LOCCODE"
'       Adodc1.Refresh
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select issue_code ""Issue Code"" ,issue_desc ""Issue Description"",Isstype ""Issue Type"" from rm_issuetype where 1=2 order by issue_code", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
'       Set grdDataGrid.DataSource = Adodc1.Recordset
        grdDataGrid.Columns(0).Width = 1140.095
        grdDataGrid.Columns(1).Width = 4800.118
        grdDataGrid.Columns(2).Width = 1500.118
        DB.BeginTrans
        grdDataGrid.AllowAddNew = True
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        'BUTTON(9).ToolTipText = "Add Record"
        'grdDataGrid.ScrollBars = dbgBoth
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus

Case 1, 2, 4
        'modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_issuetype", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            'BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select issue Code from the list for modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            'BUTTON(9).ToolTipText = "Delete"
            StatusBar1.Panels(2).Text = "Select issue Code from the list for Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            'BUTTON(9).ToolTipText = "Find"
            StatusBar1.Panels(2).Text = "Select issue Code from the list"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
'''        SSTab1.Visible = False
'''        grddatagrid.Visible = False
'''        Frame3.Visible = True
'''        Label15.Caption = "Issue Type List"
'''        KSLLIST1.conn = connectstring
'''        KSLLIST1.table = "rm_issuetype"
'''        KSLLIST1.listfield1 = "issue_code"
'''        KSLLIST1.listfield2 = "issue_desc"
'''        Frame3.Visible = True
'''        Command3.SetFocus
'''        Frame3.ZOrder
            LookUp.Clear = True
            LookUp.query = "select issue_code""Issue Code"",issue_desc""Description"" from rm_issuetype"
            LookUp.DefCol = "Description"
            LookUp.Caption = "Issue Type Listing"
            LookUp.ALIGN = "2000,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                SSTab1.Visible = True
                grdDataGrid.Visible = True
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select issue_code ""Issue Code"" ,issue_desc ""Issue Description"",Isstype ""Issue Type"" from rm_issuetype  where issue_code = '" & LookUp.Fields(0) & "' order by issue_code", DB, adOpenStatic, adLockBatchOptimistic
                Set grdDataGrid.DataSource = adoPrimaryRS
                grdDataGrid.Columns(0).Width = 1140.095
                grdDataGrid.Columns(1).Width = 4800.118
                grdDataGrid.Columns(2).Width = 1500.118
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
                grdDataGrid.AllowUpdate = True
                'calling addmoddel procedure from module
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
        Rs.Open "select count(*) from rm_issuetype", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grdDataGrid.Visible = False
        Label15.Caption = "Issue Type List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_issuetype"
        KslList1.listfield1 = "issue_code"
        KslList1.listfield2 = "issue_desc"
        grdDataGrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.SetFocus
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Issue Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Case 3
        'list
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
        Call repproc2(rptgodown)
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
        dv1.rsCommand1.Open "select ISSUE_CODE,ISSUE_DESC,isstype from rm_issuetype  Order by ISSUE_code", cn, adOpenStatic, adLockOptimistic
    If dv1.rsCommand1.RecordCount <> 0 Then
        Set rptIssue.DataSource = dv1
        
        rptIssue.Show
        desc.Caption = "Query"
    Else
        MsgBox "No Records Found", vbInformation, head
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
           If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
        MsgBox "Empty record Cannot be Saved", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
      End If
      If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text = "" Then
        MsgBox "Description Cannot be Empty", vbInformation, head
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
        Exit Sub
      End If
      
           tmp = Opt
           Opt = ""
           adoPrimaryRS.MoveFirst
           Do While Not adoPrimaryRS.EOF
           If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
            adoPrimaryRS.Delete
           Else
           End If
              If Not (grdDataGrid.Columns(2).Text = "P" Or grdDataGrid.Columns(2).Text = "T" Or grdDataGrid.Columns(2).Text = "B" Or grdDataGrid.Columns(2).Text = "S" Or grdDataGrid.Columns(2).Text = "J" Or grdDataGrid.Columns(2).Text = "R") Then
                MsgBox "Enter the Issue Type 'P - Production ' or 'B - Bale Press ' or 'T - Transfer' or 'S - Sales' or 'R - Rejection'", vbInformation, head
                grdDataGrid.Columns(2).Text = ""
                grdDataGrid.Col = 2
                grdDataGrid.SetFocus
                Opt = tmp
                Exit Sub
            End If
           adoPrimaryRS.MoveNext
           Loop
          'If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
          'MsgBox "Please Enter all the Values", vbInformation
          'grdDataGrid.Col = 0
          'grdDataGrid.SetFocus
          'Exit Sub
          If adoPrimaryRS.RecordCount = 0 Then
            BUTTON_Click (10)
            DB.RollbackTrans
            Exit Sub
          End If
           On Error Resume Next
           Opt = tmp
           
           
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,hsn FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Issue Type"
            TrnLog("Trans_Mod") = Opt
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("hsn") = grdDataGrid.Columns(2).Text
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
           
           DB.CommitTrans
           If Opt = "add" Then
                MsgBox "Record(s) Saved", vbInformation, head
           Else
                MsgBox "Record(s) Modified", vbInformation, head
           End If
            
           Opt = ""
'          Else
'          If Trim(grdDataGrid.Columns(0).Text) <> "" Then
'            If Trim(grdDataGrid.Columns(1).Text) = "" Then
'                StatusBar1.Panels(2).Text = "Location Name cannot be empty"
'                grdDataGrid.Col = 1
'                grdDataGrid.SetFocus
'                Screen.MousePointer = 0
'                Exit Sub
'             Else
'               StatusBar1.Panels(2).Text = ""
'            End If
'         End If
'       End If
     End If
       If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
       End If
       If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         adoPrimaryRS.UpdateBatch adAffectAllChapters
            adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Issue Type"
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
                MsgBox "Record(s) Modified.", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
            DB.Execute ("delete from rm_issuetype where issue_code=" + "'" + grdDataGrid.Columns(0) + "'")
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,hsn FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Issue Type"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog("hsn") = grdDataGrid.Columns(2).Text
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
    grdDataGrid.Visible = True
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
    BUTTON(0).SetFocus '''''''''
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Issue_Type
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
        MsgBox "This Issue Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        'MsgBox "Area Name cannot be empty", vbInformation, head
         MsgBox Err.Number & "  " & Err.Description
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmissuetype", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grdDataGrid.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    SSTab1.Visible = True
    grdDataGrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & ksllist1.Code & "' Order by LOCCODE"
    'Adodc1.Refresh
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select issue_code ""Issue Code"" ,issue_desc ""Issue Description"",Isstype ""Issue Type"" from rm_issuetype  where issue_code = '" & KslList1.Code & "' order by issue_code", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
    grdDataGrid.Columns(2).Width = 1500.118
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmissuetype", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
   ' sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmissuetype", vbInformation, head
End Sub

Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1700
'  grddatagrid.Left = 1800
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 3500
'  SSTab1.Height = Me.Height - 3200
'  grddatagrid.Height = SSTab1.Height - 220
'  grddatagrid.Width = SSTab1.Width - 225
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form frmissuetype", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Issue Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select * from rm_issuetype where issue_code='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Issue Code already defined!", vbInformation, head
                grdDataGrid.Columns(0).Text = " "
                st = "A"
                Exit Sub
             End If
        End If
        End If
        If ColIndex = 0 Then
            If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
                MsgBox "Item Code cannot be empty!", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
            Else
                Set Rs = New Recordset
                Rs.Open "select 'X' from rm_cat where catcd='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Not Rs.BOF Then
                   MsgBox "Item Code already defined!", vbInformation, head
                   'GrdDataGrid.Columns(0).Text = ""
                   grdDataGrid.Col = 0
                   grdDataGrid.SetFocus
                   st = "A"
                    Exit Sub
                 End If
                End If
        End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form frmissuetype", vbInformation, head
        End Sub
Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error

If Opt = "add" Then
If Trim(grdDataGrid.Columns(0)) <> "" Then
    BUTTON(9).Enabled = True
End If
End If
If ColIndex = 0 Then
        Set Rs = New Recordset
        Rs.Open "select * from rm_issuetype where issue_code='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
           MsgBox "Item Code already defined!", vbInformation, head
           'GrdDataGrid.Columns(0).Text = ""
           grdDataGrid.Col = 0
           grdDataGrid.SetFocus
           st = "A"
            Exit Sub
         End If
End If
If Opt = "add" Then
  If grdDataGrid.Col = 2 Then
    If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
        adoPrimaryRS.AddNew
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
  End If
  If grdDataGrid.Col = 2 Then
    If Not (grdDataGrid.Columns(2).Text = "P" Or grdDataGrid.Columns(2).Text = "T" Or grdDataGrid.Columns(2).Text = "B" Or grdDataGrid.Columns(2).Text = "S" Or grdDataGrid.Columns(2).Text = "R") Then
        MsgBox "Enter the Issue Type 'P - Production ' or 'B - Bale Press ' or 'T - Transfer' or 'S - Sales' or 'R - Rejection'", vbInformation, head
        grdDataGrid.Columns(2).Text = ""
        grdDataGrid.Col = 2
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
            MsgBox "Issue Code Already Defined!", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form frmissuetype", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

  If Opt = "add" Then
     If grdDataGrid.Col = 0 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 2 Character"
     End If
   ElseIf Opt = "mod" Then
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 20 Character"
     End If
End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grdDataGrid.Text) = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Description Cannot be empty"), vbInformation, head
            st2 = "A"
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Issue Code cannot be empty"), vbInformation, head
            st = "A"
        End If
    End If
Else
    FLGREPET = False
End If
'If opt = "add" And grdDataGrid.Col = 0 Then
'    If KeyCode = 9 Then
'        st1 = "A"
'    Else
'        st1 = ""
'    End If
'End If

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
If grdDataGrid.Col = 0 Then
    ToAlphaNumber grdDataGrid, 2, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
ElseIf grdDataGrid.Col = 1 Then
    ToAlphaNumber grdDataGrid, 20, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
    'Initials grddatagrid, KEYASCII
ElseIf grdDataGrid.Col = 2 Then
    ToAlphaNumber grdDataGrid, 1, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
End If
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo er1
  'Adodc1.RecordSource = "select LOCCODE""Code"",LOCNAME ""Location Name"" from  LOCMAS  Order by LOCCODE"
  'Adodc1.Refresh
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select issue_code ""Issue Code"" ,issue_desc ""Issue description"",Isstype ""Issue Type"" from rm_issuetype order by issue_code", DB, adOpenStatic, adLockReadOnly
  Set grdDataGrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
'    grdDataGrid.Columns(0).Width = 1140.095
'    grdDataGrid.Columns(1).Width = 4164.095
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4800.118
    grdDataGrid.Columns(2).Width = 1500.118
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
  grdDataGrid.Columns(0).Locked = True
  grdDataGrid.Columns(1).Locked = True
End Sub
Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
    If Opt = "add" Then
    If grdDataGrid.Col = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Item Code cannot be empty!", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
        Else
            Set Rs = New Recordset
            Rs.Open "select * from rm_issuetype where issue_code='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
               MsgBox "Item Code already defined!", vbInformation, head
               'GrdDataGrid.Columns(0).Text = ""
               grdDataGrid.Col = 0
               grdDataGrid.SetFocus
               st = "A"
                Exit Sub
             End If
            End If
    End If
    End If
    If Opt = "add" Then
    If grdDataGrid.Col = 2 And Trim(grdDataGrid.Columns(1).Text) = "" Then
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
    End If
    End If
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
          StatusBar1.Panels(2).Text = "Enter Maximum of 2 Character"
     End If
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 20 Character"
     End If
     If grdDataGrid.Col = 2 Then
          StatusBar1.Panels(2).Text = "Enter Key as P - Production or B - Bale Press or T - Transfer or S - Sales or R - Rejection"
     End If
   ElseIf Opt = "mod" Then
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Modify Issue Description"
     End If
End If

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form frmissuetype", vbInformation, head
Screen.MousePointer = 0
End Sub

