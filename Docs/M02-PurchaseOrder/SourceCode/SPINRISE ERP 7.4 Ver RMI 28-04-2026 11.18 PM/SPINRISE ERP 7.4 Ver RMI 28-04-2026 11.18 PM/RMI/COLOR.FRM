VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form frmcolor 
   Caption         =   "Color"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8355
   DrawWidth       =   2
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5685
   ScaleWidth      =   8355
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   13
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":0000
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "COLOR.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":0797
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "COLOR.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "COLOR.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":15E3
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
         Picture         =   "COLOR.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "COLOR.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "COLOR.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "COLOR.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "COLOR.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":361D
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "COLOR.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "COLOR.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "COLOR.frx":434F
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "COLOR.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7725
         TabIndex        =   15
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6195
         TabIndex        =   14
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   12
      Top             =   5385
      Width           =   8355
      _ExtentX        =   14737
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
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04/02/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "15:42"
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
      Left            =   1485
      TabIndex        =   16
      Top             =   1320
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "COLOR.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   17
         Top             =   135
         Width           =   6270
         _ExtentX        =   11060
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         WrapCellPointer =   -1  'True
         FormatLocked    =   -1  'True
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
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   3
         BeginProperty Column00 
            DataField       =   "colorcode"
            Caption         =   "Code"
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
            DataField       =   "colorname"
            Caption         =   "Color"
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
         BeginProperty Column02 
            DataField       =   "dye_charge"
            Caption         =   "Dyeing Charge"
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "0.00"
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
            BeginProperty Column02 
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   195
      TabIndex        =   18
      Top             =   915
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Caption         =   "&Cancel"
         DownPicture     =   "COLOR.frx":4B17
         Height          =   615
         Left            =   4740
         Picture         =   "COLOR.frx":4EF9
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "COLOR.frx":52CC
         Height          =   615
         Left            =   3000
         Picture         =   "COLOR.frx":56B2
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4080
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3255
         Left            =   840
         TabIndex        =   21
         Top             =   840
         Width           =   7185
         _ExtentX        =   12674
         _ExtentY        =   5741
      End
      Begin VB.Label Listcap 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
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
         TabIndex        =   22
         Top             =   120
         Width           =   8790
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Color"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   1485
      TabIndex        =   11
      Top             =   765
      Width           =   750
   End
End
Attribute VB_Name = "frmcolor"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select colorcode ,colorname ,DYE_charge from rm_color  where 1=2 Order by colorcode", DB, adOpenStatic, adLockOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(1).Caption = "Name"
'        grdDataGrid.Columns(0).Width = 929.7639
'        grdDataGrid.Columns(1).Width = 2000
'        grdDataGrid.Columns(2).Width = 1000

        DB.BeginTrans
        stbar.Panels(2).Text = "Addition"
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        For i = 0 To 2
           grddatagrid.Columns(0).Locked = False
        Next
        adoPrimaryRS.AddNew
        grddatagrid.Col = 0
        grddatagrid.Row = 0
        grddatagrid.SetFocus
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        grddatagrid.ScrollBars = dbgAutomatic
Case 1

        'modification
        If Record_Exists("rm_color") = False Then Exit Sub
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        stbar.Panels(2).Text = "Select Color Code for Modification"
        DB.BeginTrans
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_color", DB
        If Rs(0) = 0 Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
        SSTab1.Visible = False
        heading.Visible = False
        Frame3.Visible = True
        Listcap.Caption = "Color Listing"
        KslDesc1.conn = connectstring
        KslDesc1.Table = "rm_color"
        KslDesc1.listfield1 = "colorcode"
        KslDesc1.listfield2 = "colorname"
        grddatagrid.AllowUpdate = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Screen.MousePointer = 0
        BUTTON(9).Enabled = False

Case 2
        'Deletion
        If Record_Exists("rm_color") = False Then Exit Sub
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        stbar.Panels(2).Text = "Select Color Code for Modification"
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_color", DB
        If Rs(0) = 0 Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
    
    SSTab1.Visible = False
    heading.Visible = False
    Frame3.Visible = True
    Listcap.Caption = "Color Listing"
    KslDesc1.conn = connectstring
    KslDesc1.Table = "rm_color"
    KslDesc1.listfield1 = "colorcode"
    KslDesc1.listfield2 = "colorname"
    grddatagrid.AllowUpdate = False
    DB.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0
Case 3
    If Record_Exists("rm_color") = False Then Exit Sub
    'list
    Dim dv1 As New DataEnvironment1
    Dim Cn As Connection
    Set dv1 = New DataEnvironment1
    Set Cn = dv1.Connections("connection1")
    If Cn.State = 1 Then
    Cn.Close
    End If
    Call repproc2(Carlst)
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    dv1.rsCommand1.Open "SELECT * FROM rm_color", DB, adOpenKeyset, adLockBatchOptimistic
    Set Carlst.DataSource = dv1
    Carlst.Show
Case 4
        'Query
        Opt = "query"
        desc.Caption = "Query"
Case 5
        'first
         desc.Caption = "Query"
         stbar.Panels(2).Text = "First Record"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         Call FIR(BUTTON)
         stbar.Panels(2).Text = "First Record"
         Exit Sub
            
GoFirstError:

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
                
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                Call NEX(BUTTON)
                'moved off the end so go back
                adoPrimaryRS.MoveLast
            End If
            Exit Sub
GoNextError:

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
            
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            Call prev(BUTTON)
            adoPrimaryRS.MoveFirst
        End If
        Exit Sub
GoPrevError:


Case 8
        'last
        On Error Resume Next
         desc.Caption = "Query"
         stbar.Panels(2).Text = "Last Record"
         adoPrimaryRS.MoveLast
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub

Case 9
        'Save
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        
         If Opt = "add" Then
           If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Color Name Can't be Empty", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
         Screen.MousePointer = 11
         On Error GoTo deler
         adoPrimaryRS.MoveLast
         adoPrimaryRS.UpdateBatch adAffectAll
         DB.CommitTrans
              MsgBox "Record(s) Saved", vbInformation, head
         Opt = " "
         Call QUERY_MODE
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM1(BUTTON, GSNO)
         End If
         If Opt = "mod" Then
         grddatagrid.AllowUpdate = True
         If Frame3.Visible = False Then
         adoPrimaryRS.UpdateBatch adAffectAll
         DB.CommitTrans
         MsgBox "Record(s) Saved", vbInformation, head
         Opt = " "
         Call QUERY_MODE
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM1(BUTTON, GSNO)
         Else
         MsgBox "Select any code from the list", vbInformation, head
         Command3.SetFocus
         Screen.MousePointer = 0
         Exit Sub
         End If
         
         End If
         If Opt = "del" Then
         On Error GoTo deler
         
         
            '-------------------vinoth 21/12
'         Set delrs = New Recordset
'        delrs.Open "select COUNT(*) from IN_ITEM  where UOM='" & grdDataGrid.Columns(0) & "'", db
'
'        Set delrs1 = New Recordset
'        delrs1.Open "select COUNT(*) from IG_PROD  where UNITCODE ='" & grdDataGrid.Columns(0) & "'", db
'
'
'        If delrs(0) > 0 Or delrs1(0) > 0 Then
'            MsgBox "This UNIT cannot be deleted since it have dependencies", vbInformation, head
'            Call BUTTON_Click(10)
'            Exit Sub
'        End If
        '---------------------vinoth 21/12
         
         
         If Frame3.Visible = False Then
         DB.Execute ("delete from rm_color where colorcode=" + "'" + grddatagrid.Columns(0) + "'")
         DB.CommitTrans
           MsgBox "Sucessfully deleted", vbInformation, head
         
         Opt = " "
         Call QUERY_MODE
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM1(BUTTON, GSNO)
         Else
         Screen.MousePointer = 0
         MsgBox "Select any code from the list", vbInformation, head
         Command3.SetFocus
         Exit Sub
         End If
         End If
         
Case 10
    desc.Caption = "Query"
'
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    heading.Visible = True
    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
'    BUTTON(0).Enabled = False
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Color code cannot be deleted  ", vbInformation, head
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Color Name cannot be empty", vbInformation, head
        Screen.MousePointer = 0
       Else
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "This Color Code already exists", vbInformation, head
    st = "B"
    grddatagrid.Col = 0
    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  heading.Visible = True
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select colorcode ,colorname ,DYE_charge from rm_color where colorcode='" & KslDesc1.Code & "' Order by colorcode", DB, adOpenStatic, adLockBatchOptimistic
  Set grddatagrid.DataSource = adoPrimaryRS
  grddatagrid.Columns(1).Caption = "Name"
'    grdDataGrid.Columns(0).Width = 929.7639
'    grdDataGrid.Columns(1).Width = 2000
'    grdDataGrid.Columns(2).Width = 1000

  grddatagrid.AllowAddNew = False
  grddatagrid.Columns(0).Locked = True
  grddatagrid.Col = 1
  BUTTON(9).Enabled = True
'----ganesh
  If grddatagrid.Row = -1 Then
  GoTo X:
  Else
'----ganesh
  grddatagrid.Row = 0
  grddatagrid.SetFocus
  End If
X:  If Opt = "del" Then
  BUTTON(9).SetFocus
  End If
  Frame3.Visible = False

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    stbar.Panels(1).Text = sbmsg
    Set DB = New Connection
  DB.CursorLocation = adUseClient
  'connectstring = "PROVIDER=MSDataShape;Data PROVIDER=MSDASQL;driver={SQL Server};SERVER=kss;uid=sa;pwd=;database=kstex"
  DB.Open connectstring
  Call QUERY_MODE
 ' 'button(0).enabled = false
 grddatagrid.Columns(0).Width = 929.7639
    grddatagrid.Columns(1).Width = 3000

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form frmcolor", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If Opt <> "add" Then
  stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset

' Name verify
On Error GoTo grddatagrid_AfterColUpdate_Error

 If ColIndex = 1 Then
Set Rs = New Recordset
Rs.Open "select colorname  from rm_color  where colorname  = ltrim( ' " & grddatagrid.Columns(1).Text & " ')", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
MsgBox " Color name is already exists ", vbInformation, head
grddatagrid.Columns(1).Text = " "
grddatagrid.Col = 0
grddatagrid.SetFocus
Exit Sub
End If

End If

' end name verify


        If ColIndex = 0 Then
        If grddatagrid.Columns(0).Text = Empty Or grddatagrid.Columns(0).Text = "" Then
            MsgBox "Color Code cannot be empty", vbInformation, head
        Else
            grddatagrid.Columns(0).Text = UCase(grddatagrid.Columns(0).Text)
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_color where colorcode ='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Color Code should not repeat", vbInformation, head
                grddatagrid.Columns(0).Text = "  "
                st = "A"
                Exit Sub
             End If
        End If
        End If
       If ColIndex = 1 Then
       If grddatagrid.Columns(1).Text <> Empty Then
           grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
       End If
    End If

Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_AfterColUpdate of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

If DataError = 7007 Then
    If grddatagrid.Col = 0 Then
        MsgBox "Color Code should not have more than four characters", vbInformation, head
        st = "A"
    Else
        MsgBox "Color Name should not have more than thirty characters", vbInformation, head
        st2 = "A"
    End If
End If
Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_Error of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
If KeyCode = vbKeyTab Then
If Opt = "add" Then
    If grddatagrid.Text = "" Then
        If grddatagrid.Col = 1 Then
            MsgBox ("Color Name cannot be empty"), vbInformation, head
            st2 = "A"
            Exit Sub
        End If
        If grddatagrid.Col = 0 Then
            MsgBox ("Color Code cannot be empty"), vbInformation, head
            st = "A"
        End If
   End If
End If
End If
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If grddatagrid.Col = 0 Then
    If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122) Or (KeyAscii >= 48 And KeyAscii <= 57) Or (KeyAscii = 9 Or KeyAscii = 13 Or KeyAscii = 8)) Then
        MsgBox "Invalid Character", vbInformation, head
        grddatagrid.Col = 0
        st1 = "A"
        grddatagrid.SetFocus
    Else
        st1 = "B"
    End If
End If
Select Case grddatagrid.Col
 Case 0
    If KeyAscii <> 9 Then
       ToAlphaNumber grddatagrid, 20, KeyAscii
       stbar.Panels(2).Text = "Enter Maximum of 4 Character"
    End If
 Case 1
    If KeyAscii <> 9 Then
        ToAlphaNumber grddatagrid, 35, KeyAscii
        stbar.Panels(2).Text = "Enter Maximum of 35 Character"
    End If
 Case 2
    If KeyAscii <> 9 Then
       ToNumber grddatagrid, KeyAscii
    End If
End Select

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form frmcolor", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub QUERY_MODE()
On Error GoTo ER1
 Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select colorcode ,colorname ,DYE_charge from  rm_color  Order by colorcode", DB, adLockReadOnly
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    'grdDataGrid.Columns(1).Caption = "Name"
    'grdDataGrid.Columns(0).Width = 929.7639
    'grdDataGrid.Columns(1).Width = 1000
    'grdDataGrid.Columns(2).Width = 1000

  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  Exit Sub
ER1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Then
    If st = "A" Or st1 = "A" Then
        grddatagrid.Col = 0
        st = "B"
    End If
    If st2 = "A" Then
        grddatagrid.Col = 1
        st2 = "B"
    End If
    If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = "" Then
        grddatagrid.Col = 0
    End If
    If grddatagrid.Col = 0 And grddatagrid.Columns(0).Text = "" Then
'
    End If
    If grddatagrid.Row >= 0 And grddatagrid.Col = 1 Then
        ln = Len(grddatagrid.Columns(0).Text)
        For i = 1 To ln
                t = Asc(Mid$(grddatagrid.Columns(0).Text, i, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grddatagrid.Col = 0
                    Exit Sub
                End If
                Next i
                st = "B"
                End If
        If Opt = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
'
        End If
   End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub scodlist1_GotFocus()
On Error GoTo scodlist1_GotFocus_Error

Command3.Default = True

Exit Sub
scodlist1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure scodlist1_GotFocus of Form frmcolor", vbInformation, head
Screen.MousePointer = 0
End Sub
