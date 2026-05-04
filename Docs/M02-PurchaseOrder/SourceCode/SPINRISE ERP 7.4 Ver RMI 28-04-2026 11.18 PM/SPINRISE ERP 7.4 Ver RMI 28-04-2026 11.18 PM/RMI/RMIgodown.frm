VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{07A3D3E4-7EA4-11D4-B6A6-0000E8208D9C}#1.0#0"; "SLISTACX.OCX"
Begin VB.Form Frmgodown 
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8580
   DrawWidth       =   2
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6405
   ScaleWidth      =   8580
   WindowState     =   2  'Maximized
   Begin MSDataGridLib.DataGrid grdDataGrid 
      Height          =   2910
      Left            =   2415
      TabIndex        =   18
      Top             =   1410
      Width           =   6300
      _ExtentX        =   11113
      _ExtentY        =   5133
      _Version        =   393216
      AllowArrows     =   -1  'True
      ForeColor       =   8388608
      HeadLines       =   1
      RowHeight       =   18
      TabAction       =   2
      WrapCellPointer =   -1  'True
      AllowAddNew     =   -1  'True
      AllowDelete     =   -1  'True
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
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
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   8
      Left            =   3480
      Picture         =   "RMIgodown.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   13
      ToolTipText     =   "Last Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   0
      Left            =   15
      Picture         =   "RMIgodown.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   12
      ToolTipText     =   "Add"
      Top             =   0
      UseMaskColor    =   -1  'True
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   1
      Left            =   510
      Picture         =   "RMIgodown.frx":0614
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "Modify"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   6
      Left            =   2490
      Picture         =   "RMIgodown.frx":091E
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Next Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   5
      Left            =   1995
      Picture         =   "RMIgodown.frx":0C28
      Style           =   1  'Graphical
      TabIndex        =   9
      ToolTipText     =   "First Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   455
      Index           =   2
      Left            =   1005
      Picture         =   "RMIgodown.frx":0F32
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Delete"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   3
      Left            =   1500
      Picture         =   "RMIgodown.frx":123C
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "List"
      Top             =   0
      Width           =   510
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   7
      Left            =   2985
      Picture         =   "RMIgodown.frx":1546
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Previous Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   11
      Left            =   4965
      Picture         =   "RMIgodown.frx":1850
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Exit"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   9
      Left            =   3975
      Picture         =   "RMIgodown.frx":1B5A
      Style           =   1  'Graphical
      TabIndex        =   4
      ToolTipText     =   "Save"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   10
      Left            =   4470
      Picture         =   "RMIgodown.frx":1E64
      Style           =   1  'Graphical
      TabIndex        =   3
      ToolTipText     =   "Cancel "
      Top             =   0
      Width           =   500
   End
   Begin VB.Frame Frame4 
      Height          =   590
      Left            =   5460
      TabIndex        =   0
      Top             =   -120
      Width           =   3435
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   285
         Left            =   1800
         TabIndex        =   2
         Top             =   120
         Width           =   645
      End
      Begin VB.Label DESC 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   285
         Left            =   120
         TabIndex        =   1
         Top             =   105
         Width           =   630
      End
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   3630
      Left            =   2130
      TabIndex        =   19
      Top             =   1005
      Width           =   6900
      _ExtentX        =   12171
      _ExtentY        =   6403
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame3 
      Height          =   4140
      Left            =   1560
      TabIndex        =   15
      Top             =   960
      Visible         =   0   'False
      Width           =   7695
      Begin Slistacx.scodlist scodlist1 
         Height          =   2760
         Left            =   150
         TabIndex        =   21
         Top             =   795
         Width           =   7365
         _ExtentX        =   12991
         _ExtentY        =   4868
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Height          =   390
         Left            =   3360
         TabIndex        =   16
         Top             =   3705
         Width           =   975
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   450
         Left            =   0
         TabIndex        =   17
         Top             =   600
         Width           =   7545
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Godown "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1755
      TabIndex        =   20
      Top             =   465
      Width           =   2175
   End
   Begin VB.Label lblStatus 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   315
      Left            =   2055
      TabIndex        =   14
      Top             =   5190
      Width           =   6105
   End
End
Attribute VB_Name = "Frmgodown"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim opt As String
Dim FLGREPET As Boolean
Dim ST, st1, st2 As String
Dim db As Connection
Public Sub OpenConnection()
    Set db = New Connection
    'connectstring = "driver={SQL server};server=kss;uid=KSTEX;pwd=KSTEX; database=KSTEX;"
    db.CursorLocation = adUseClient
    db.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
'addition
        opt = "add"
        DESC.Caption = "Addition"
        lblStatus.Visible = True
        ST = "B"
        st1 = "B"
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select gcode ""Code"" ,gname ""Name"" from rm_god where 1=2 order by gcode  ", db, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoprimaryrs
'       Set grdDataGrid.DataSource = Adodc1.Recordset
        grdDataGrid.Columns(0).Width = 1140.095
        grdDataGrid.Columns(1).Width = 4164.095
        db.BeginTrans
        grdDataGrid.AllowAddNew = True
        grdDataGrid.AllowUpdate = True
        adoprimaryrs.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        BUTTON(9).ToolTipText = "Add Record"
        grdDataGrid.ScrollBars = dbgBoth
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus

Case 1
'modification
        opt = "mod"
        Screen.MousePointer = 11
        DESC.Caption = "Modification"
        lblStatus.Visible = False
        db.BeginTrans
        TabStrip1.Visible = False
        grdDataGrid.Visible = False
        Frame3.Visible = True
        
        Label15.Caption = "Godown List"
        scodlist1.conn = connectstring
        scodlist1.table = "rm_god"
        scodlist1.listfield1 = "gocde"
        scodlist1.listfield2 = "gname"
        
        Frame3.Visible = True
        Frame3.ZOrder
        grdDataGrid.AllowUpdate = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        grdDataGrid.Columns(0).Locked = True
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Modify"
        Screen.MousePointer = 0
        
Case 2
'Deletion
    Screen.MousePointer = 11
    opt = "del"
    DESC.Caption = "Deletion"
    lblStatus.Visible = False
    TabStrip1.Visible = False
    grdDataGrid.Visible = False
    Label15.Caption = "Godown List"
    scodlist1.conn = connectstring
    scodlist1.table = "rm_god"
    scodlist1.listfield1 = "gcode"
    scodlist1.listfield2 = "areaname"
    grdDataGrid.AllowUpdate = False
    Frame3.Visible = True
    Frame3.ZOrder
    db.BeginTrans
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False 'Save
    BUTTON(9).ToolTipText = "Delete"
    Screen.MousePointer = 0
    Frame3.Visible = True
Case 3
'list
    DESC.Caption = "Listing"
    Call repproc2(rptgodown)
        If dv1.rsCommand1.State = adStateOpen Then
            dv1.rsCommand1.Close
        End If
        dv1.rsCommand1.Open "select gcode,gname from rm_god   Order by gcode", db, adOpenStatic, adLockOptimistic
        If dv1.rsCommand1.RecordCount <> 0 Then
            rptgodown.Show
        Else
            MsgBox "No  Records Found", vbInformation, head
            Exit Sub
        End If
'Case 4
' 'Query
'        opt = "query"
'        desc.Caption = "Query"
Case 5
'first
         DESC.Caption = "Query"
         lblStatus.Visible = True
         On Error GoTo GoFirstError
         adoprimaryrs.MoveFirst
         lblStatus.Caption = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
          Beep
          Exit Sub
GoFirstError:
       MsgBox Err.description, vbInformation, head
            
Case 6
'next
            DESC.Caption = "Query"
            lblStatus.Visible = True
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
                adoprimaryrs.MoveLast
            End If
            'show the current record
            Call navi(BUTTON)
            Exit Sub
GoNextError:
   MsgBox Err.description, vbInformation, head
Case 7
 'previous
        DESC.Caption = "Query"
        lblStatus.Visible = True
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
            adoprimaryrs.MoveFirst
        End If
        'show the current record
        Call navi(BUTTON)
        Exit Sub

GoPrevError:
   MsgBox Err.description, vbInformation, head
       
Case 8
'last
         DESC.Caption = "Query"
         lblStatus.Visible = True
         On Error GoTo GoLastError
         adoprimaryrs.MoveLast
         lblStatus.Caption = "Last Record"
        'calling las procedure from module
         Call navi(BUTTON)
         Call las(BUTTON)
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.description, vbInformation, head
Case 9
'Save
        If opt = "add" Or opt = "mod" Then
          If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
           On Error Resume Next
           adoprimaryrs.UpdateBatch adAffectAllChapters
           db.CommitTrans
           MsgBox "Record(s) Added", vbInformation, head
           opt = ""
          Else
          If Trim(grdDataGrid.Columns(0).Text) <> "" Then
            If Trim(grdDataGrid.Columns(1).Text) = "" Then
                lblStatus.Visible = True
                lblStatus.Caption = "Location Name cannot be empty"
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Screen.MousePointer = 0
                Exit Sub
             Else
                lblStatus.Visible = False
                lblStatus.Caption = ""
            End If
         End If
       End If
     End If
       If opt = "add" Then
        On Error GoTo deler
        adoprimaryrs.MoveFirst
        adoprimaryrs.UpdateBatch adAffectAllChapters
        db.CommitTrans
        MsgBox "Record(s) Added", vbInformation, head
       End If
       If opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         adoprimaryrs.UpdateBatch adAffectAllChapters
         db.CommitTrans
                MsgBox "Record Modified!", vbInformation, head
       End If
       If opt = "del" Then
         On Error GoTo deler
         db.Execute ("delete from rm_god where gcode=" + "'" + grdDataGrid.Columns(0) + "'")
         db.CommitTrans
           MsgBox "Record Deleted", vbOKOnly, head
       End If
         opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         DESC.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
    
    DESC.Caption = "Query"
    lblStatus.Visible = True
    Screen.MousePointer = 11
    'CANCEL
    Select Case opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    opt = " "
    Call query_mode
    grdDataGrid.Visible = True
    TabStrip1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    ''button(0).enabled = false
    If adoprimaryrs.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    BUTTON(9).Enabled = False
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Area Code cannot be deleted as dependencies exist ", vbCritical, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Area Name cannot be empty", vbCritical, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbCritical + vbOKOnly, head
        Screen.MousePointer = 0
    ST = "B"
    grdDataGrid.Col = 0
    End If
End Sub
Private Sub Command3_Click()
  TabStrip1.Visible = True
  grdDataGrid.Visible = True
    lblStatus.Caption = ""
    'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & scodlist1.Code & "' Order by LOCCODE"
    'Adodc1.Refresh
    Set adoprimaryrs = New Recordset
    adoprimaryrs.Open "select gcode ""Code"" ,gname ""Name"" from rm_god  where gcode = '" & scodlist1.Code & "' order by areacode", db, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoprimaryrs
    'Set grdDataGrid.DataSource = Adodc1.Recordset
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4164.095
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.AllowAddNew = False
    grdDataGrid.Col = 1
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    If opt = "del" Then
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False
End Sub

Private Sub Form_Load()
    Call OpenConnection
    Call query_mode
    grdDataGrid.Caption = "Area"
    TabStrip1.Tabs.Clear
    BUTTON(9).Enabled = False
End Sub

Private Sub Form_Resize()
  On Error Resume Next
  TabStrip1.Left = 1700
  grdDataGrid.Left = 1800
  lblStatus.Left = 1700
  'This will resize the grid whef the form is resized
  TabStrip1.Width = Me.Width - 3500
  TabStrip1.Height = Me.Height - 2055
  grdDataGrid.Height = TabStrip1.Height - 500
  grdDataGrid.Width = TabStrip1.Width - 100
   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If opt <> "add" Then
  lblStatus.Caption = "Record: " & CStr(adoprimaryrs.AbsolutePosition)
  End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim rs As Recordset
        If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbCritical + vbOKOnly, head
        Else
            Set rs = New Recordset
            rs.Open "select 'X'  from rm_area where areacode='" & grdDataGrid.Columns(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
            If Not rs.BOF Then
                MsgBox "Area Code already defined!", vbCritical + vbOKOnly, head
                grdDataGrid.Columns(0).Text = " "
                ST = "A"
                Exit Sub
             End If
        End If
        End If
If opt = "add" Then
If Trim(grdDataGrid.Columns(0)) <> "" Then
    BUTTON(9).Enabled = True
End If
End If
If opt = "add" Then
If grdDataGrid.Col = 1 Then
If adoprimaryrs.RecordCount = adoprimaryrs.AbsolutePosition And FLGREPET = True Then
    adoprimaryrs.AddNew
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus
End If
End If
End If
If st1 = "A" Then
    grdDataGrid.Col = 1
    grdDataGrid.SetFocus
End If
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grdDataGrid.Text) = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Area Name Cannot be empty"), vbInformation + vbOKOnly, head
            st2 = "A"
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Area Code cannot be empty"), vbInformation + vbOKOnly, head
            ST = "A"
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
End Sub
Private Sub grdDataGrid_KeyPress(KeyAscii As Integer)
If grdDataGrid.Col = 0 Then
    ToAlphaNumber grdDataGrid, 4, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
ElseIf grdDataGrid.Col = 1 Then
    ToAlphaNumber grdDataGrid, 30, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
    'Initials grddatagrid, KEYASCII
End If
End Sub

Public Sub query_mode()
On Error GoTo er1
  'Adodc1.RecordSource = "select LOCCODE""Code"",LOCNAME ""Location Name"" from  LOCMAS  Order by LOCCODE"
  'Adodc1.Refresh
  Set adoprimaryrs = New Recordset
  adoprimaryrs.Open "select areacode ""Code"" ,areaname ""Name"" from rm_area order by areacode", db, adOpenStatic, adLockReadOnly
  Set grdDataGrid.DataSource = adoprimaryrs
  If adoprimaryrs.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4164.095
  DESC.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  opt = " "
  Screen.MousePointer = 0
  If adoprimaryrs.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  lblStatus.Caption = "Records : " & adoprimaryrs.RecordCount
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
If opt = "add" Then
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        grdDataGrid.Col = 0
    End If
    If grdDataGrid.Row >= 0 And grdDataGrid.Col = 1 Then
        ln = Len(grdDataGrid.Columns(0).Text)
        For i = 1 To ln
                t = Asc(Mid$(grdDataGrid.Columns(0).Text, i, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grdDataGrid.Col = 0
                    Exit Sub
                End If
                Next i
                ST = "B"
                End If
        If opt = "add" And grdDataGrid.Col = 1 And grdDataGrid.Columns(0) <> "" Then
            lblStatus.Visible = False
        End If
   End If
End Sub

Private Sub scodlist1_GotFocus()
Command3.Default = True
End Sub
