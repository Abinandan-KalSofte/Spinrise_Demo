VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{07A3D3E4-7EA4-11D4-B6A6-0000E8208D9C}#1.0#0"; "SLISTACX.OCX"
Begin VB.Form frmoiltype 
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   9195
   WindowState     =   2  'Maximized
   Begin MSDataGridLib.DataGrid grdDataGrid 
      Height          =   4155
      Left            =   960
      TabIndex        =   27
      Top             =   1320
      Width           =   7050
      _ExtentX        =   12435
      _ExtentY        =   7329
      _Version        =   393216
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
      Index           =   10
      Left            =   4440
      Picture         =   "RMIoil.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   15
      ToolTipText     =   "Cancel "
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   9
      Left            =   3945
      Picture         =   "RMIoil.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   14
      ToolTipText     =   "Save"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   11
      Left            =   4935
      Picture         =   "RMIoil.frx":0614
      Style           =   1  'Graphical
      TabIndex        =   13
      ToolTipText     =   "Exit"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   7
      Left            =   2955
      Picture         =   "RMIoil.frx":091E
      Style           =   1  'Graphical
      TabIndex        =   12
      ToolTipText     =   "Previous Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   3
      Left            =   1470
      Picture         =   "RMIoil.frx":0C28
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "List"
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
      Left            =   995
      Picture         =   "RMIoil.frx":0F32
      Style           =   1  'Graphical
      TabIndex        =   10
      ToolTipText     =   "Delete"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   5
      Left            =   1965
      Picture         =   "RMIoil.frx":123C
      Style           =   1  'Graphical
      TabIndex        =   9
      ToolTipText     =   "First Record"
      Top             =   0
      Width           =   495
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   6
      Left            =   2460
      Picture         =   "RMIoil.frx":1546
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Next Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   1
      Left            =   500
      Picture         =   "RMIoil.frx":1850
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Modify"
      Top             =   0
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   0
      Left            =   0
      Picture         =   "RMIoil.frx":1B5A
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Add"
      Top             =   0
      UseMaskColor    =   -1  'True
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   8
      Left            =   3450
      Picture         =   "RMIoil.frx":1E64
      Style           =   1  'Graphical
      TabIndex        =   5
      ToolTipText     =   "Last Record"
      Top             =   0
      Width           =   500
   End
   Begin VB.Frame Frame4 
      Height          =   570
      Left            =   5430
      TabIndex        =   2
      Top             =   -120
      Width           =   3165
      Begin VB.Label desc 
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
         Height          =   330
         Left            =   120
         TabIndex        =   4
         Top             =   120
         Width           =   630
      End
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
         Height          =   330
         Left            =   2130
         TabIndex        =   3
         Top             =   120
         Width           =   645
      End
   End
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawWidth       =   1033
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   0
      ScaleHeight     =   300
      ScaleWidth      =   9195
      TabIndex        =   0
      Top             =   6492
      Width           =   9195
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
         ForeColor       =   &H00800000&
         Height          =   315
         Left            =   330
         TabIndex        =   1
         Top             =   0
         Width           =   8535
      End
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   4380
      Left            =   870
      TabIndex        =   16
      Top             =   1245
      Width           =   7260
      _ExtentX        =   12806
      _ExtentY        =   7726
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame3 
      Height          =   4815
      Left            =   855
      TabIndex        =   17
      Top             =   1200
      Visible         =   0   'False
      Width           =   7695
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Height          =   390
         Left            =   3360
         TabIndex        =   18
         Top             =   4290
         Width           =   975
      End
      Begin Slistacx.scodlist scodlist1 
         Height          =   3375
         Left            =   240
         TabIndex        =   19
         Top             =   825
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   5953
         ForeColor       =   8388608
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H8000000B&
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
         ForeColor       =   &H8000000D&
         Height          =   450
         Left            =   30
         TabIndex        =   20
         Top             =   240
         Width           =   7620
      End
   End
   Begin VB.Frame Frame2 
      Height          =   1500
      Left            =   2310
      TabIndex        =   22
      Top             =   1524
      Width           =   5000
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   2100
         TabIndex        =   26
         Top             =   1065
         Width           =   705
      End
      Begin VB.TextBox Text1 
         DataField       =   "empcode"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   330
         Left            =   2385
         MaxLength       =   7
         TabIndex        =   23
         Top             =   585
         Width           =   1455
      End
      Begin VB.Label Label1 
         BackColor       =   &H80000002&
         Caption         =   "Find"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   330
         Left            =   30
         TabIndex        =   25
         Top             =   105
         Width           =   4605
      End
      Begin VB.Label Label4 
         Caption         =   "Find From Employee"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   420
         TabIndex        =   24
         Top             =   600
         Width           =   2670
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Oil Type"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   825
      TabIndex        =   21
      Top             =   675
      Width           =   1065
   End
End
Attribute VB_Name = "frmoiltype"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim opt As String
Dim Db As Connection
Dim oText As TextBox
Dim ST1 As String
Dim ST As String
Dim ADDN As String
Public Sub OpenConnection()
    Set Db = New Connection
    Db.CursorLocation = adUseClient
    Db.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    opt = "add"
    desc.Caption = "Addition"
    lblStatus.Visible = False
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select OILCODE 'Code', OILDESC 'Name' from RM_OIL  where 1=2 ", Db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    Set rs = New Recordset
    rs.Open "select OILCODE 'Code', OILDESC 'Name' from RM_OIL", Db, adOpenStatic, adLockBatchOptimistic
    Call ENABLCONTLS
    Call bindcontls
    Db.BeginTrans
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
    BUTTON(9).ToolTipText = "Addition"
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus

Case 1
    opt = "mod"
    desc.Caption = "Modification"
    lblStatus.Visible = False
    'to fill datacombo1 with divcode and divname
    Label15.Caption = "OIL  TYPE"
    scodlist1.conn = connectstring
    scodlist1.table = "RM_OIL"
    scodlist1.listfield1 = "OILTYPE"
    scodlist1.listfield2 = "OILDESC"
    If scodlist1.Code = "" Then
        MsgBox "No Records Found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    Else
        Frame3.Visible = True
        Frame3.ZOrder
    End If
    Db.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    Call disablcontls
    BUTTON(9).ToolTipText = "Modify"
    BUTTON(9).Enabled = False

Case 2
    'Deletion
    opt = "del"
    desc.Caption = "Deletion"
    lblStatus.Visible = False
    Label15.Caption = "Oil Type"
    scodlist1.conn = connectstring
    scodlist1.table = "RM_OIL"
    scodlist1.listfield1 = "OILCODE"
    scodlist1.listfield2 = "OILDESCE"
    If scodlist1.Code = "" Then
        MsgBox "No Records Found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    Else
        Frame3.Visible = True
        Frame3.ZOrder
    End If
    Db.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Call disablcontls
    BUTTON(9).ToolTipText = "Delete"

Case 3
        Screen.MousePointer = 11
        desc.Caption = "Listing"
        REPINDEX = 2
        LISTC.Show
        Screen.MousePointer = 0
Case 5
     'first
     desc.Caption = "Query"
     lblStatus.Visible = True
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     Call bindcontls
    'calling fir procedure from module
     Call navi(BUTTON)
     Call FIR(BUTTON)
     Beep
     Exit Sub
GoFirstError:
    MsgBox Err.description, vbInformation, head
    
Case 6
     'next
      desc.Caption = "Query"
      lblStatus.Visible = True
      On Error GoTo GoNextError
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
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
       ' Call bindcontls
           Beep
      End If
     ' show the current record
      Call navi(BUTTON)
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
      BUTTON(8).Enabled = False
      BUTTON(6).Enabled = False
      Beep
      Else
      BUTTON(8).Enabled = True
      BUTTON(6).Enabled = True
      End If
      Exit Sub
GoNextError:
   MsgBox Err.description, vbInformation, head
Case 7
    'Previous
     desc.Caption = "Query"
     lblStatus.Visible = True
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
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
    Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

GoPrevError:
   MsgBox Err.description, vbInformation, head
       
Case 8
     'last
     desc.Caption = "Query"
     lblStatus.Visible = True
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     Call bindcontls
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
    Beep
     Exit Sub

GoLastError:
   MsgBox Err.description, vbInformation, head
  
Case 9
     'Save
     Screen.MousePointer = 11
     lblStatus.Visible = True
    If opt = "add" Then
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            If Trim(adoPrimaryRS(0).Value) = "" Then
                adoPrimaryRS.Delete
            End If
            adoPrimaryRS.MoveNext
        Loop
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        Db.CommitTrans
        MsgBox "Record Added ", vbOKOnly, head
        Screen.MousePointer = 0
    End If
    If opt = "mod" Then
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        Db.CommitTrans
        MsgBox "Record Modified!", vbOKOnly, head
        Screen.MousePointer = 0
    End If
    If opt = "del" Then
        On Error GoTo del
        Db.Execute ("delete from RM_OIL where OILCODE=" + "'" + Trim(grdDataGrid.Columns(0).Text) + "'")
        Db.CommitTrans
        MsgBox "Record Deleted", vbOKOnly, head
        BUTTON(9).ToolTipText = "Save"
    End If
    'Return to query mode
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select OILCODE'Code',OILDESCE'Name' from RM_OIL order by OILCODE ", Db, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    Call disablcontls
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM(BUTTON)
    Exit Sub
GOPRIMERROR:
 If Err = -2147217900 Then
   MsgBox "OIL Type Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:
If Err.Number = -2147217900 Then
    MsgBox "Oil Type cannot be deleted as dependencies exist", , head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If

Case 10
gocancel:
    desc.Caption = "Query"
    lblStatus.Visible = True
    Screen.MousePointer = 11
    'CANCEL
    Select Case opt
    Case "mod"
        Db.RollbackTrans
    Case "add"
        Db.RollbackTrans
    Case "del"
        Db.RollbackTrans
    End Select
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select OILCODE'Code',OILDESCE'Name' from RM_OIL order by OILCODE ", Db, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    Call cancl(BUTTON)
    opt = ""
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Screen.MousePointer = 0
    Call disablcontls
    'procedure unique to this form  to set grid headings
    'calling cancl procedure from module
    Frame3.Visible = False
    Frame2.Visible = False

Case 11
    'EXIT
    Unload Me
  
End Select
End Sub
Private Sub Command1_Click()
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select OILCODE'Code',OILDESCE'Name' from RM_OIL where OILCODE = '" & Text1.Text & "' order by OILCODE ", Db, adOpenStatic, adLockBatchOptimistic
    'Bind the text boxes,check boxes and option buttons  to the data source
    Call bindcontls
    'calling query procedure from module
    Call Query(BUTTON)
    If adoPrimaryRS.RecordCount = 0 Then
        MsgBox "Oil Code Found", vbInformation, head
        Text1.Text = ""
        Text1.SetFocus
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    Else
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select OILCODE'Code',OILDESCE'Name' from RM_OIL where OILCODE >= '" & Text1.Text & "' order by OILCODE ", Db, adOpenStatic, adLockBatchOptimistic
        Frame2.Visible = False
        BUTTON(5).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
    End If
End Sub

Private Sub Command3_Click()
    BUTTON(9).Enabled = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select OILCODE'Code',OILDESCE'Name' from RM_OIL  where OILCODE='" & scodlist1.Code & "' order by OILCODE ", Db, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    grdDataGrid.Columns(0).Locked = True
    Frame3.Visible = False
    BUTTON(9).Enabled = True
    If opt = "mod" Then
        Call ENABLCONTLS
        grdDataGrid.Columns(0).Locked = True
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
    End If
End Sub

Private Sub Form_Load()
  
  Set Db = New Connection
  Db.CursorLocation = adUseClient
  Db.Open connectstring
  'first in query mode
  'On Error GoTo er1
  TabStrip1.Tabs.Clear
  TabStrip1.Top = 1250
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select OILCODE 'Code',OILDESC 'Name' from RM_OIL Order by OILCODE", Db, adOpenStatic, adLockBatchOptimistic
  If Not adoPrimaryRS.BOF Then
     'Bind the text boxes,check boxes and option buttons to the data source
     Call bindcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
     Call NEWFORM(BUTTON)
     Call disablcontls
     Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
  End If
er1:
If Err = 3021 Then
    MsgBox "No Records Found", vbInformation, head
End If
End Sub

Private Sub Form_Unload(Cancel As Integer)
  opt = ""
  Screen.MousePointer = vbDefault
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
If adoPrimaryRS.RecordCount = 0 Then
    If opt = "add" Then
        lblStatus.Visible = False
    End If
    lblStatus.Caption = "No Record Found "
Else
    lblStatus.Caption = "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
End If
End Sub
Public Sub bindcontls()
On Error Resume Next
Set grdDataGrid.DataSource = adoPrimaryRS
grdDataGrid.Columns(0).Width = 1200.189
grdDataGrid.Columns(1).Width = 5385.26
End Sub

Public Sub ENABLCONTLS()
grdDataGrid.AllowUpdate = True
End Sub
Public Sub disablcontls()
grdDataGrid.AllowUpdate = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If grdDataGrid.Col = 0 Then
    If opt = "add" Then
        rs.MoveFirst
        Do While Not rs.EOF
            If rs(0) = grdDataGrid.Columns(0).Text Then
                MsgBox "Oil Code already defined!", vbCritical + vbOKOnly, head
                ST1 = "A"
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            Else
                ST1 = "B"
            End If
        rs.MoveNext
        Loop
        BUTTON(9).Enabled = True
    End If
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
ST = "A"
End Sub


Private Sub grdDataGrid_KeyDown(KeyCode As Integer, Shift As Integer)
If (opt = "del" Or opt = "" Or opt = " " Or adoPrimaryRS.RecordCount <> adoPrimaryRS.AbsolutePosition) And Not (KeyCode = 9) Then
    KeyCode = 0
    Beep
End If
If adoPrimaryRS.RecordCount <> adoPrimaryRS.AbsolutePosition Then
    ADDN = "A"
Else
    ADDN = "B"
End If
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If opt = "add" Then
If ST1 = "A" Then
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus
    ST1 = "B"
End If
If grdDataGrid.Col = 1 Then
    If grdDataGrid.Columns(0).Text = N}ll Then
        adoPrimaryRS.Delete
    End If
    
       
       
    
    a = grdDataGrid.Columns(0).Text
    If Len(grdDataGrid.Columns(0).Text) = 0 Then
        MsgBox "Oil Code should not de empty"
        ST1 = "B"
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
    ElseIf Len(grdDataGrid.Columns(0).Text) < 4 Then
        'MsgBox "Oil Code should not be less than 1 characters"
        'grdDataGrid.Col = 0
        'grdDataGrid.SetFocus
        'ST1 = "B"
    End If
    
    If opt = "add" Then
        rs.MoveFirst
        Do While Not rs.EOF
            If rs(0) = grdDataGrid.Columns(0).Text And adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And ST <> "B" Then
                MsgBox "Oil Code already defined!", vbCritical + vbOKOnly, head
                grdDataGrid.Col = 0
                ST = "A"
                grdDataGrid.SetFocus
                grdDataGrid.Columns(0).Text = grdDataGrid.Columns(0).Text
                Exit Sub
            End If
        rs.MoveNext
        Loop
        rs.AddNew
        rs(0) = grdDataGrid.Columns(0).Text
        BUTTON(9).Enabled = True
    End If
ElseIf LastCol = 1 And adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And ADDN <> "A" Then
    adoPrimaryRS.AddNew
    ADDN = "B"
End If
End If
End Sub

Private Sub Text1_Change()
If Len(Text1.Text) <> 0 Then
    Command1.Enabled = True
Else
    Command1.Enabled = False
End If
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
ToUpCase Text1, KeyAscii
End Sub

Private Sub grdDataGrid_KeyPress(KeyAscii As Integer)
If (opt = "del" Or opt = "" Or opt = " " Or adoPrimaryRS.RecordCount <> adoPrimaryRS.AbsolutePosition) And Not (KeyAscii = 9) Then
    KeyAscii = 0
    Beep
End If
If grdDataGrid.Col = 0 Then         'Code
    ToUpCase grdDataGrid, KeyAscii
    OILCODE grdDataGrid, KeyAscii, 7
ElseIf grdDataGrid.Col = 1 Then
    ToUpCase grdDataGrid.Columns(1), KeyAscii
    If Len(grdDataGrid) = 30 And Not (KeyAscii = 9 Or KeyAscii = 8) Then
        KeyAscii = 0
    End If
End If
End Sub
Private Sub OILCODE(OBJ As Object, KeyAscii As Integer, maxlen As Integer)
If ST <> "A" And ST1 <> "B" Then
    ST = "B"
    If Len(OBJ) = 0 Then
        If (KeyAscii >= 97 And KeyAscii <= 122) Then
            KeyAscii = KeyAscii - 32
        ElseIf Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii = 9 Or KeyAscii = 8)) Then
            KeyAscii = 0
            ST = "A"
        End If
    ElseIf Len(OBJ) >= 1 Then
        If Not (KeyAscii >= 48 And KeyAscii <= 57) And Not (KeyAscii = 9 Or KeyAscii = 8) Then
            KeyAscii = 0
        End If
    ElseIf Not (KeyAscii = 9 Or KeyAscii = 8) Then
        KeyAscii = 0
    End If
    If Len(OBJ) = maxlen And Not (KeyAscii = 9 Or KeyAscii = 8) Then
        KeyAscii = 0
        ST = "A"
    End If
ElseIf ST1 = "B" Then
    ST1 = "A"
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    ElseIf Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii = 9 Or KeyAscii = 8)) Then
        KeyAscii = 0
        ST1 = "B"
    End If
ElseIf ST = "A" Then
    ST = "B"
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    ElseIf Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii = 9 Or KeyAscii = 8)) Then
        KeyAscii = 0
        ST = "A"
    End If
End If
End Sub
