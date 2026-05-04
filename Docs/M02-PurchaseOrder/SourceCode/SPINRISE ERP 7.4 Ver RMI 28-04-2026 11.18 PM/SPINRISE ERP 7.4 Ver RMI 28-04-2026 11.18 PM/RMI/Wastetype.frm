VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form Wastetype 
   Caption         =   "Waste Type"
   ClientHeight    =   7170
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9990
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7170
   ScaleWidth      =   9990
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   840
      TabIndex        =   19
      Top             =   1320
      Width           =   7380
      _ExtentX        =   13018
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "     "
      TabPicture(0)   =   "Wastetype.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         CausesValidation=   0   'False
         Height          =   4065
         Left            =   120
         TabIndex        =   20
         Top             =   120
         Width           =   6990
         _ExtentX        =   12330
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   8388608
         HeadLines       =   2
         RowHeight       =   19
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
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   600
      TabIndex        =   14
      Top             =   720
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Caption         =   "&Cancel"
         DownPicture     =   "Wastetype.frx":001C
         Height          =   615
         Left            =   4740
         Picture         =   "Wastetype.frx":03FE
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Wastetype.frx":07D1
         Height          =   615
         Left            =   3000
         Picture         =   "Wastetype.frx":0BB7
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   17
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
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   18
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":0F7D
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "Wastetype.frx":13C7
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":1714
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Wastetype.frx":1A1E
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":1DB1
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "Wastetype.frx":21FB
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":2560
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
         Picture         =   "Wastetype.frx":286A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":2C06
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Wastetype.frx":2F10
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Wastetype.frx":328A
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":3621
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "Wastetype.frx":3A6B
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":3DBB
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "Wastetype.frx":4205
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":459A
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "Wastetype.frx":48A4
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Wastetype.frx":4C46
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "Wastetype.frx":4F50
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Wastetype.frx":52CC
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "Wastetype.frx":5716
         Style           =   1  'Graphical
         TabIndex        =   1
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8085
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6555
         TabIndex        =   12
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   22
      Top             =   6870
      Width           =   9990
      _ExtentX        =   17621
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "04/02/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Waste Type"
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
      Left            =   360
      TabIndex        =   21
      Top             =   600
      Width           =   1455
   End
End
Attribute VB_Name = "Wastetype"
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
        adoPrimaryRS.Open "select divcode,wCODE ""Code"" ,wdes ""Description"",type ""Type"" from rm_wastetype  where 1=2", DB, adOpenDynamic, adLockBatchOptimistic
        grddatagrid.AllowUpdate = True
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(3).Width = 915.0237
        grddatagrid.Columns(2).Width = 4995.213
        grddatagrid.Columns(1).Width = 764.7874
        DB.BeginTrans
        StatusBar1.Panels(2).Text = "Addition"
        adoPrimaryRS.AddNew
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        
Case 1

        'modification
        If Record_Exists("rm_wastetype where divcode='" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        StatusBar1.Panels(2).Text = "Select Waste Code for Modification"
        DB.BeginTrans
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_wastetype", DB
        If Rs(0) = 0 Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
        SSTab1.Visible = False
        heading.Visible = False
        Frame3.Visible = True
        Label15.Caption = "Carrier Listing"
        KslList1.conn = connectstring
        KslList1.Table = "rm_wastetype"
        KslList1.listfield1 = "wcode"
        KslList1.listfield2 = "wdes"
        grddatagrid.AllowUpdate = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        Screen.MousePointer = 0
        BUTTON(9).Enabled = False

Case 2
        'Deletion
        If Record_Exists("rm_wastetype where divcode='" & Divcode & "'") = False Then Exit Sub
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        StatusBar1.Panels(2).Text = "Select Carrier Code for Modification"
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_wastetype", DB
        If Rs(0) = 0 Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
    
    SSTab1.Visible = False
    heading.Visible = False
    Frame3.Visible = True
    Label15.Caption = "Waste Type Listing"
    KslList1.conn = connectstring
    KslList1.Table = "rm_wastetype"
    KslList1.listfield1 = "wcode"
    KslList1.listfield2 = "wdes"
    grddatagrid.AllowUpdate = False
    DB.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0
Case 3
    If Record_Exists("rm_wastetype") = False Then Exit Sub
    'list
    Dim dv1 As New DataEnvironment1
    Dim Cn As Connection
    Set dv1 = New DataEnvironment1
    Set Cn = dv1.Connections("connection1")
    If Cn.State = 1 Then
    Cn.Close
    End If
    Call repproc2(Carlst1)
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    dv1.rsCommand1.Open "SELECT wcode,wdes,type=case when type='U' then 'Usable' else 'Salable' end  FROM rm_wastetype order by type ", DB, adOpenKeyset, adLockBatchOptimistic
    Set Carlst1.DataSource = dv1
    Carlst1.Show
Case 4
        'Query
        Opt = "query"
        desc.Caption = "Query"
Case 5
        'first
         desc.Caption = "Query"
         StatusBar1.Panels(2).Text = "First Record"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         Call FIR(BUTTON)
         StatusBar1.Panels(2).Text = "First Record"
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
         StatusBar1.Panels(2).Text = "Last Record"
         adoPrimaryRS.MoveLast
         Call las(BUTTON)
         StatusBar1.Panels(2).Text = "Last Record"
         Exit Sub

Case 9
        'Save
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        
         If Opt = "add" Then
           If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2).Text = "" Then
        MsgBox "Waste Name Can't be Empty", vbInformation, head
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2).Text <> "" And grddatagrid.Columns(3).Text = "" Then
        MsgBox "Type Can't be Empty", vbInformation, head
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        Exit Sub
      End If
         Screen.MousePointer = 11
         On Error GoTo deler
         tmp = Opt
         Opt = ""
         adoPrimaryRS.MoveFirst
         Do While Not adoPrimaryRS.EOF
         If grddatagrid.Columns(1).Text = "" Then
         adoPrimaryRS.Delete
         adoPrimaryRS.MoveNext
         Else
          adoPrimaryRS("divcode") = Divcode
         adoPrimaryRS.MoveNext
        
         End If
         Loop
         adoPrimaryRS.MoveFirst
         'adoprimaryrs("divcode") = Divcode
         adoPrimaryRS.UpdateBatch adAffectAll
         DB.CommitTrans
         Opt = tmp
              MsgBox "Record(s) Saved", vbInformation, head
         Opt = " "
         Call QUERY_MODE
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM1(BUTTON, GSNO)
         End If
         If Opt = "mod" Then
         grddatagrid.AllowUpdate = True
         If Not (grddatagrid.Columns(3).Text = "S" Or grddatagrid.Columns(3).Text = "U") Then
         MsgBox "Please enter type either U-Usable or S-Salable", vbInformation, head
         grddatagrid.Col = 3
         grddatagrid.SetFocus
         Exit Sub
         End If
         If Frame3.Visible = False Then
         adoPrimaryRS.UpdateBatch adAffectAll
             DB.CommitTrans
         If Opt = "add" Then
                 MsgBox "Record(s) Saved", vbInformation, head
         Else
                  MsgBox "Record(s) Modified", vbInformation, head
         End If
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
         
         
            
         
         
         If Frame3.Visible = False Then
         DB.Execute ("delete from rm_wastetype where wcode=" + "'" + grddatagrid.Columns(1) + "'")
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
        MsgBox "This Carrier code cannot be deleted  ", vbInformation, head
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Carrier Name cannot be empty", vbInformation, head
        Screen.MousePointer = 0
       Else
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "This Carrier Code already exists", vbInformation, head
    st = "B"
    grddatagrid.Col = 0
    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  heading.Visible = True
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select divcode,wCODE ""Code"",wdes ""Description"",type ""Type"" from rm_wastetype where wCODE='" & KslList1.Code & "' and divcode='" & Divcode & "' Order by wCODE", DB, adOpenStatic, adLockBatchOptimistic
  Set grddatagrid.DataSource = adoPrimaryRS
  
        grddatagrid.Columns(3).Width = 915.0237
        grddatagrid.Columns(2).Width = 4995.213
        grddatagrid.Columns(1).Width = 764.7874
    grddatagrid.Columns(0).Visible = False

  grddatagrid.AllowAddNew = False
  grddatagrid.Columns(1).Locked = True
  grddatagrid.Col = 2
  BUTTON(9).Enabled = True
'----ganesh
  If grddatagrid.Row = -1 Then
  GoTo X:
  Else
'----ganesh
'  grddatagrid.Row = 1
  grddatagrid.SetFocus
  End If
X:  If Opt = "del" Then
  BUTTON(9).SetFocus
  End If
  Frame3.Visible = False

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    StatusBar1.Panels(1).Text = sbmsg
    Set DB = New Connection
  DB.CursorLocation = adUseClient
  'connectstring = "PROVIDER=MSDataShape;Data PROVIDER=MSDASQL;driver={SQL Server};SERVER=kss;uid=sa;pwd=;database=kstex"
  DB.Open connectstring
  Call QUERY_MODE
 ' 'button(0).enabled = false

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form Wastetype", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error

        If ColIndex = 1 Then
        If grddatagrid.Columns(1).Text = Empty Or grddatagrid.Columns(1).Text = "" Then
            MsgBox "Waste Code cannot be empty", vbInformation, head
        Else
            grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_wastetype where wcode ='" & grddatagrid.Columns(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "waste Code should not repeat", vbInformation, head
                grddatagrid.Columns(1).Text = "  "
                st = "A"
                Exit Sub
             End If
        End If
        End If
        
        
       If ColIndex = 2 Then
       If grddatagrid.Columns(2).Text <> Empty Then
           grddatagrid.Columns(2).Text = UCase(grddatagrid.Columns(2).Text)
       End If
       End If
    
   ' Name validation
 
        If ColIndex = 2 Then
          Dim rs1 As Recordset
            Set rs1 = New Recordset
            rs1.Open "select wdes from rm_wastetype where wdes ='" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not rs1.BOF Then
                MsgBox "waste Name  should not repeat", vbInformation, head
                grddatagrid.Columns(2).Text = "  "
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                Exit Sub
             End If
        End If
        
   
   ' End validation
   
    

Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_AfterColUpdate of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

If DataError = 7007 Then
    If grddatagrid.Col = 1 Then
        MsgBox "Waste Code should not have more than Five characters", vbInformation, head
        st = "A"
    ElseIf grddatagrid.Col = 2 Then
        MsgBox "Waste Name should not have more than Fifty characters", vbInformation, head
        st2 = "A"
    End If
End If
Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_Error of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
If KeyCode = vbKeyTab Then
If Opt = "add" Then
    If grddatagrid.Text = "" Then
        If grddatagrid.Col = 2 Then
            MsgBox ("Waste Name cannot be empty"), vbInformation, head
            st2 = "A"
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 1 Then
            MsgBox ("waste Code cannot be empty"), vbInformation, head
            st = "A"
        End If
   End If
End If
End If
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If grddatagrid.Col = 1 Then
    If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122) Or (KeyAscii >= 48 And KeyAscii <= 57) Or (KeyAscii = 9 Or KeyAscii = 13 Or KeyAscii = 8)) Then
        MsgBox "Invalid Character", vbInformation, head
        grddatagrid.Col = 1
        st1 = "A"
        grddatagrid.SetFocus
    Else
        st1 = "B"
    End If
End If
Select Case grddatagrid.Col
 Case 1
    If KeyAscii = 9 Then
       ToAlphaNumber grddatagrid, 5, KeyAscii
       StatusBar1.Panels(2).Text = "Enter Maximum of 5 Character"
    End If
 Case 2
    If KeyAscii = 9 Then
        ToAlphaNumber grddatagrid, 35, KeyAscii
        StatusBar1.Panels(2).Text = "Enter Maximum of 50 Character"
    End If
    
 Case 3
    If KeyAscii <> 9 Then
        ToUpCase grddatagrid, KeyAscii
        StatusBar1.Panels(2).Text = "Enter either S-Salable or U-Usable"
    End If
End Select

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form Wastetype", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

On Error GoTo ER1
 Set adoPrimaryRS = New Recordset
'   adoprimaryrs.Open "select divcode,wCODE ""Code"",wdes ""Description"",case when type='U' then 'Usable' else 'Salable' end as ""Type"" from  rm_wastetype where divcode='" & Divcode & "'  Order by type", db, adLockReadOnly
  adoPrimaryRS.Open "SELECT wcode,wdes""Description"",type=case when type='U' then 'Usable' else 'Salable' end  FROM rm_wastetype where divcode='" & Divcode & "' order by type,wdes ", DB, adOpenKeyset, adLockBatchOptimistic
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    grddatagrid.Columns(0).Visible = False
        grddatagrid.Columns(0).Width = 0
        grddatagrid.Columns(1).Width = 4199.811
        grddatagrid.Columns(2).Width = 764.7874
        grddatagrid.Columns(3).Width = 1470.047
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

Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
  
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Then
    If grddatagrid.Col = 3 And grddatagrid.Columns(3).Text <> "" And (grddatagrid.Columns(3).Text = "U" Or grddatagrid.Columns(3).Text = "u" Or grddatagrid.Columns(3).Text = "S" Or grddatagrid.Columns(3).Text = "s") Then
        adoPrimaryRS.AddNew
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
    End If
    If st = "A" Or st1 = "A" Then
        grddatagrid.Col = 1
        st = "B"
    End If
    If st2 = "A" Then
        grddatagrid.Col = 2
        st2 = "B"
    End If
    If grddatagrid.Col = 2 And grddatagrid.Columns(1).Text = "" Then
        grddatagrid.Col = 1
    End If
    If grddatagrid.Col = 1 And grddatagrid.Columns(1).Text = "" Then
'
    End If
    If grddatagrid.Row >= 0 And grddatagrid.Col = 2 Then
        ln = Len(grddatagrid.Columns(1).Text)
        For i = 1 To ln
                t = Asc(Mid$(grddatagrid.Columns(1).Text, i, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grddatagrid.Col = 1
                    Exit Sub
                End If
                Next i
                st = "B"
                End If
        If Opt = "add" And grddatagrid.Col = 2 And grddatagrid.Columns(1) <> "" Then
'
       End If
        

        End If
        
   If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 2 Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
Dim itemd As String
row1 = grddatagrid.Row
itemc = grddatagrid.Columns(1).Text

If Opt = "add" Then
adoPrimaryRS.MoveFirst
Do While Not adoPrimaryRS.EOF
If itemc = adoPrimaryRS(1) Then
cut = cut + 1
End If
adoPrimaryRS.MoveNext
Loop
End If



If Opt = "add" Then
If cut > 1 Then
MsgBox "Record Already Exists", vbInformation, head

grddatagrid.Row = row1
'grddatagrid.Columns(6).Text = " "
'grddatagrid.Col = 6
grddatagrid.Columns(1).Text = " "
grddatagrid.Col = 1
grddatagrid.SetFocus
Exit Sub
Else

grddatagrid.Row = row1
grddatagrid.Col = 2
grddatagrid.SetFocus

End If
End If
End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
   
End Sub

Private Sub scodlist1_GotFocus()
On Error GoTo scodlist1_GotFocus_Error

Command3.Default = True

Exit Sub
scodlist1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure scodlist1_GotFocus of Form Wastetype", vbInformation, head
Screen.MousePointer = 0
End Sub


