VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form HouseAccYear 
   Caption         =   "Accounting Year"
   ClientHeight    =   6180
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8700
   DrawWidth       =   2
   BeginProperty Font 
      Name            =   "Times New Roman"
      Size            =   9.75
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6180
   ScaleWidth      =   8700
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   4500
      Left            =   930
      TabIndex        =   2
      Top             =   1095
      Width           =   6750
      _ExtentX        =   11906
      _ExtentY        =   7938
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   12632256
      ForeColor       =   -2147483641
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   " "
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4140
         Left            =   195
         TabIndex        =   0
         Top             =   195
         Width           =   6360
         _ExtentX        =   11218
         _ExtentY        =   7303
         _Version        =   393216
         AllowArrows     =   -1  'True
         BackColor       =   -2147483634
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   18
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   11.25
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
   End
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4965
      Left            =   2340
      TabIndex        =   19
      Top             =   2610
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CommandButton lovok 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   435
         Left            =   2775
         TabIndex        =   21
         Top             =   4305
         Width           =   1095
      End
      Begin VB.CommandButton Lovcancel 
         Caption         =   "&Cancel"
         Height          =   435
         Left            =   4575
         TabIndex        =   20
         Top             =   4305
         Width           =   1095
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3645
         Left            =   660
         TabIndex        =   22
         Top             =   630
         Width           =   7425
         _ExtentX        =   13097
         _ExtentY        =   6429
         caption         =   ""
      End
      Begin VB.Shape Shape2 
         BorderColor     =   &H80000002&
         Height          =   4440
         Left            =   30
         Top             =   480
         Width           =   8565
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Party Type Listing"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   330
         Left            =   30
         TabIndex        =   23
         Top             =   120
         Width           =   8565
      End
   End
   Begin VB.Frame Buttonframe 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   645
      Left            =   0
      TabIndex        =   4
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":0000
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   8
         Left            =   2145
         Picture         =   "HouseAccyear.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":07AC
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   10
         Left            =   3195
         Picture         =   "HouseAccyear.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":0E32
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   9
         Left            =   2670
         Picture         =   "HouseAccyear.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":14DE
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   11
         Left            =   3720
         Picture         =   "HouseAccyear.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":1CBD
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   7
         Left            =   1620
         Picture         =   "HouseAccyear.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":2457
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   5
         Left            =   570
         Picture         =   "HouseAccyear.frx":28A1
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":2C06
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "HouseAccyear.frx":2F10
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":32A3
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   6
         Left            =   1095
         Picture         =   "HouseAccyear.frx":36ED
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":3A3A
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   3
         Left            =   3270
         Picture         =   "HouseAccyear.frx":3D44
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Find"
         Top             =   30
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":40D9
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
         Left            =   2745
         Picture         =   "HouseAccyear.frx":43E3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Delete"
         Top             =   30
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HouseAccyear.frx":477F
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   1
         Left            =   2220
         Picture         =   "HouseAccyear.frx":4A89
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Modify"
         Top             =   30
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   12
         Left            =   3450
         Picture         =   "HouseAccyear.frx":4E03
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Print"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   4785
         TabIndex        =   18
         Top             =   255
         Width           =   840
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7725
         TabIndex        =   17
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   3
      Top             =   5880
      Width           =   8700
      _ExtentX        =   15346
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
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "18/03/2026"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07:44 PM"
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
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Accounting Year "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   360
      Left            =   990
      TabIndex        =   1
      Top             =   705
      Width           =   2340
   End
End
Attribute VB_Name = "HouseAccYear"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim RSS As Recordset
Dim st, st1, ST2 As String
'Dim dv1 As New DataEnvironment1
Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
On Error Resume Next
Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select Ayear ""Accounting Year"",Ayfdate ""Starting Date"",Ayldate ""Ending Date"",closed ""Books Closed"" from pp_year  where 1=2 Order by Ayear", DB, adOpenStatic, adLockOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    grddatagrid.Columns(0).Width = 1620
    grddatagrid.Columns(1).Width = 1289.764
    grddatagrid.Columns(2).Width = 1214.929
    grddatagrid.Columns(3).Width = 1335.118
    DB.BeginTrans
    grddatagrid.AllowAddNew = True
    grddatagrid.AllowUpdate = True
    adoPrimaryRS.AddNew
    grddatagrid.Enabled = True
    grddatagrid.Row = 0
    grddatagrid.Col = 0
    grddatagrid.SetFocus
    Call adddelmod(BUTTON)
    stbar.Panels(2).Text = "The Accounting Year has tobe entered in the format yyyy-yy"
Case 1
        'MODIFICATION
        Opt = "mod"
'        Frame1.Visible = True
'ksldesc1.conn = connectstring
'ksldesc1.table = "pp_year"
'ksldesc1.listfield1 = "AYEAR"
'ksldesc1.listfield2 = "AYFDATE"
Case 2
        'DELETION
        Opt = "del"
'        Frame1.Visible = True
'ksldesc1.conn = connectstring
'ksldesc1.table = "pp_year"
'ksldesc1.listfield1 = "AYEAR"
'ksldesc1.listfield2 = "AYFDATE"
Case 3
Opt = "fnd"
Frame1.Visible = True
ksldesc1.conn = connectstring
ksldesc1.Table = "pp_year"
ksldesc1.listfield1 = "AYEAR"
ksldesc1.listfield2 = "AYFDATE"
'      If adoPrimaryRS.RecordCount > 0 Then
'    Dim dv1 As New DataEnvironment1
'    Dim l1 As RptLabel
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
'    Set cn = New Connection
'    cn.CursorLocation = adUseClient
'    If cn.State = 1 Then
'      cn.Close
'    End If
'    cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If cn.State = adStateclose Then
'      cn.Open
'    End If
'    desc.Caption = "Listing"
'    'list
'    'repindex = 16
'    AccYear.Title = divname
'    Set l1 = AccYear.Sections(2).Controls.item("pdate")
'    l1.Caption = pdate
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    dv1.rsCommand1.Open "select Ayear,Ayfdate,Ayldate,closed=case when closed='Y' then 'Closed' else 'Not Closed' end from pp_year", cn
'    If dv1.rsCommand1.RecordCount > 0 Then
'        Set AccYear.DataSource = dv1
'        AccYear.Show
'    Else
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
'    desc.Caption = "Query"
'       Else
'       MsgBox ("No Record found")
'       Exit Sub
'       End If
'    '--------------------------
''    If Record_Exists("pp_year") = False Then Exit Sub
''        desc.Caption = "Listing"
''        Call repproc2(AccYear)
''
''        Set dv1 = New DataEnvironment1
''        dv1.Connection1.ConnectionString = connectstring
''
''        Set cn = New Connection
''        cn.Open connectstring
''
''        If dv1.rsCommand1.State = adStateOpen Then
''            dv1.rsCommand1.Close
''        End If
''
''        dv1.rsCommand1.Open "select Ayear,Ayfdate,Ayldate,closed=case when closed='Y' then 'Closed' else 'Not Closed' end from pp_year", cn
''
''        Set AccYear.DataSource = dv1
''        AccYear.Show
''        Call Form_Load
'
Case 5
'first
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    stbar.Panels(2).Text = "First Record"
    Call FIR(BUTTON)
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
   Beep
   BUTTON(6).Enabled = False
   BUTTON(8).Enabled = False
   BUTTON(5).Enabled = True
   BUTTON(7).Enabled = True
   Call NEX(BUTTON)
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
        Beep
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
End If
    Exit Sub
GoPrevError:

  Case 8
'last
    desc.Caption = "Query"
    
    On Error GoTo GoLastError
    adoPrimaryRS.MoveLast
    stbar.Panels(2).Text = "Last Record"
     Call las(BUTTON)
     Exit Sub
GoLastError:
Case 9
  'Save
  desc.Caption = "Addition" 'After this mode QUERY WILL BE INVOKED
  'On Error GoTo adderr
  
  Screen.MousePointer = 11
'         If Opt = "mod" Then
'db.BeginTrans
''adoPrimaryRS(0) = grddatagrid.Columns(0).Text
''adoPrimaryRS(1) = grddatagrid.Columns(1).Text
''adoPrimaryRS(2) = grddatagrid.Columns(2).Text
''adoPrimaryRS(3) = grddatagrid.Columns(3).Text
'db.Execute "UPDATE PP_YEAR SET AYEAR='" & grddatagrid.Columns(0).Text & "',AYFDATE='" & grddatagrid.Columns(1).Text & "',AYLDATE='" & grddatagrid.Columns(2).Text & "',CLOSED='" & grddatagrid.Columns(3).Text & "' WHERE AYEAR='" & grddatagrid.Columns(0).Text & "' "
'
'adoPrimaryRS.UpdateBatch adAffectAllChapters
'db.CommitTrans
'Opt = " "
'End If
         If Opt = "add" Then
         tmp = Opt
         Opt = ""
         adoPrimaryRS.MoveFirst
         If grddatagrid.Columns(0).Text = "" Then
            MsgBox "Accounting Year can't be Empty", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = tmp
            Exit Sub
         Else
           
         If grddatagrid.Columns(1).Text = "" Then
            MsgBox "Starting Date can't be Empty", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = tmp
            Exit Sub
         End If
         
         If grddatagrid.Columns(2).Text = "" Then
            MsgBox "Ending date can't be Empty", vbInformation, head
            grddatagrid.Col = 2
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = tmp
            Exit Sub
         End If
         If grddatagrid.Columns(3).Text = "" Then
            MsgBox "Books Closed can't be Empty", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Screen.MousePointer = 0
            Opt = tmp
            Exit Sub
         End If
         End If
         adoPrimaryRS.MoveNext
    
    adoPrimaryRS.MoveLast
    Opt = tmp
    adoPrimaryRS.UpdateBatch adAffectAllChapters
    DB.CommitTrans
    stbar.Panels(2).Text = "Record Saved"
    MsgBox "Record saved", vbInformation, head & " Message"
  End If

   Opt = " "
   Call query_mode
   BUTTON(1).Enabled = True
   BUTTON(2).Enabled = True
   Call NEWFORM1(BUTTON, GSNO)
   Exit Sub
AddErr:
    Opt = ""
    MsgBox "Record can't be Saved", vbInformation, head
    'Call QUERY_MODE
    Exit Sub

Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "add"
        DB.RollbackTrans
End Select

TabStrip1.Visible = True
grddatagrid.Visible = True
Opt = " "
Call query_mode
BUTTON(1).Enabled = True
BUTTON(2).Enabled = True
Call NEWFORM1(BUTTON, GSNO)
Case 11
    'EXIT
    Reset
    Unload Me
End Select
Exit Sub
 If Opt = "add" Then
        Screen.MousePointer = 0
        MsgBox "This Department Code already exists", vbInformation, head
    st = "B"
    grddatagrid.Col = 0
 End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
  stbar.Panels(1).Text = SbMsg
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open connectstring
  Call query_mode
'  BUTTON(1).Enabled = True
'  BUTTON(2).Enabled = True
  BUTTON(1).Enabled = False
  BUTTON(2).Enabled = False
  Call NEWFORM1(BUTTON, GSNO)
  grddatagrid.AllowDelete = False
Frame1.Visible = False
intervalMinutes = -1
  End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
  On Error Resume Next
  'This will resize the grid when the form is resized
'  TabStrip1.Width = Me.Width - 1000
 ' TabStrip1.Height = Me.Height - 2400
  grddatagrid.Height = TabStrip1.Height - 800
  grddatagrid.Width = TabStrip1.Width - 1000
End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
 If Opt <> "add" And Not adoPrimaryRS.BOF And Not adoPrimaryRS.EOF Then
       stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
  Else
  stbar.Panels(2).Text = "No Record Found"
  End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
If Opt = "add" Then

Select Case ColIndex
End Select
End If
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
 Response = 0
End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
If KeyCode = vbKeyTab Then

End If
End If
End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
If Opt = "add" Then
Select Case grddatagrid.Col
 Case 0
    If KeyAscii <> 9 Then
       ToNum1 grddatagrid, 7, KeyAscii
        stbar.Panels(2).Text = "The Accounting Year has to be in the Format 'yyyy-yy'"
    
   End If
 Case 1
    If KeyAscii <> 9 Then
        'ToAlphanum grddatagrid, 10, KeyAscii
        stbar.Panels(2).Text = "The Date has to be in the Format 'dd/mm/yyyy'"
        
   End If
   
Case 2
    If KeyAscii <> 9 Then
        'ToAlphanum grddatagrid, 10, KeyAscii
        stbar.Panels(2).Text = "The Date has to be in the Format 'dd/mm/yyyy'"
    
        

   End If
   
Case 3
    If KeyAscii <> 9 Then
        If Not (KeyAscii = 121 Or KeyAscii = 110 Or KeyAscii = 89 Or KeyAscii = 78 Or KeyAscii = 9 Or KeyAscii = 8) Then
            KeyAscii = 0
          Else
            ToAlphaNumber grddatagrid, 1, KeyAscii
        End If
        stbar.Panels(2).Text = "Enter either 'Y' or 'N'"
    
        

   End If
      

End Select
End If
End Sub
Public Sub query_mode()
intervalMinutes = -1
  On Error GoTo er1
  Opt = " "
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select Ayear ""Accounting Year"",Ayfdate ""Starting Date"",Ayldate ""Ending Date"",closed""Books Closed""   from  pp_year Order by Ayear", DB, , adLockReadOnly
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox "No records Found", vbInformation, head & " Message"
  End If
    grddatagrid.Columns(0).Width = 1620
    grddatagrid.Columns(1).Width = 1289.764
    grddatagrid.Columns(2).Width = 1214.929
    grddatagrid.Columns(3).Width = 1335.118
  desc.Caption = "Query"
  Opt = "  "
  DATLAB.Caption = pdate  'This variable is declared as global to show the date
  
  Call NEWFORM1(BUTTON, GSNO)
  BUTTON(1).Enabled = False
  BUTTON(2).Enabled = False
  Screen.MousePointer = 0
  
  Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head + "Message"
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head + "Connection Message"
End If
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If Opt = "add" Then
If grddatagrid.Col = 0 Then stbar.Panels(2).Text = "Accounting Year has to be in the Form 'yyyy-yy' "
If grddatagrid.Col = 1 Then stbar.Panels(2).Text = "Date canbe in the format dd/mm/yyyy"

    If Opt = "add" Then
    Select Case LastCol
        Case 3
        If grddatagrid.Columns(3).Text <> "" Then
            grddatagrid.Columns(3).Text = UCase(grddatagrid.Columns(3).Text)
        End If
        
        Case 0
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Accounting Year can't be Empty", vbInformation, head
            st = "A0"
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from pp_year where Ayear ='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Accounting Year cannot repeat", vbInformation, head
                st = "A0"
             Else
                If Left(grddatagrid.Columns(0).Text, 4) < 1800 Or Left(grddatagrid.Columns(0).Text, 4) > 3000 Then
                    MsgBox "The Accounting Year has to be between 1800 and 2999", vbInformation, head
                    st = "A0"
                End If
             End If
        End If
    
Case 1
        If Not IsDate(grddatagrid.Columns(1).Text) Then
            MsgBox "Enter Valid Date", vbInformation, head
            st = "A1"
        End If
        
        If Trim(grddatagrid.Columns(1).Text) = Empty Or Trim(grddatagrid.Columns(1).Text) = "" Then
            MsgBox "Starting Date can't be Empty", vbInformation, head
            st = "A1"
        Else
            Set Rs = New Recordset
            Rs.Open "select *  from pp_year where Ayfdate <='" & Format(Trim(grddatagrid.Columns(1).Text), "yyyy-mm-dd") & "' and Ayldate>='" & Format(Trim(grddatagrid.Columns(1).Text), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                msg = "The Starting Date falls under the Financial Year " & Rs(0)
                MsgBox msg, vbInformation, head
                st = "A1"
            Else
                If Not (Left(grddatagrid.Columns(1).Text, 2) = "01" Or Left(grddatagrid.Columns(1).Text, 2) = "1") Then
                    MsgBox "Date canalways start from 1st of a month", vbInformation, head
                    st = "A1"
                End If
                If Right(grddatagrid.Columns(1).Text, 4) <> Left(grddatagrid.Columns(0).Text, 4) Then
                    msg1 = "Mention Starting Date for the Year" & Left(grddatagrid.Columns(0).Text, 4)
                    MsgBox msg1, vbInformation, head
                    st = "A1"
                End If
                
                If Not (IsDate(grddatagrid.Columns(1).Text)) Then
                    MsgBox "Enter Correct Date in the Format 'dd/mm/yyyy'", vbInformation, head
                    grddatagrid.Columns(1).Text = " "
                    st = "A1"
                End If
            End If
         End If
Case 2
    If Trim(grddatagrid.Columns(2).Text) = Empty Or Trim(grddatagrid.Columns(2).Text) = "" Then
            MsgBox "Ending Date can't be Empty", vbInformation, head
            st = "A2"
        Else
            Set Rs = New Recordset
            Rs.Open "select *  from pp_year where Ayfdate <='" & Format(Trim(grddatagrid.Columns(2).Text), "yyyy-mm-dd") & "' and Ayldate>='" & Format(Trim(grddatagrid.Columns(2).Text), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                msg = "This Ending Date falls under the Financial Year " & Rs(0)
                MsgBox msg, vbInformation, head
                st = "A2"
            Else
                If grddatagrid.Columns(2).Text < grddatagrid.Columns(1).Text Then
                    MsgBox "Ending Date has to be greater than Starting date", vbInformation, head
                    grddatagrid.Col = 2
'                    grddatagrid.Columns(2).Text = 0
                    st = "A2"
                End If
                If Right(grddatagrid.Columns(2).Text, 2) <> Right(grddatagrid.Columns(0).Text, 2) Then
                    msg1 = "Enter correct Ending Date "
                    MsgBox msg1, vbInformation, head
                    st = "A2"
                End If
                    Dim dd As String
                    dd = DateAdd("d", -1 * Day(DateAdd("m", 1, Format(grddatagrid.Columns(2).Text, "dd/mm/yyyy"))), DateAdd("m", 1, Format(grddatagrid.Columns(2).Text, "dd/mm/yyyy")))
                If grddatagrid.Columns(2).Text <> dd Then
                    msg = "The date part of Ending Date can be equal to " & Day(dd)
                    MsgBox msg, vbInformation, head
                    st = "A2"
                End If
                
                Dim MD As Integer
                MD = DateDiff("m", grddatagrid.Columns(1).Text, grddatagrid.Columns(2).Text) + 1
                                
                If Not (MD = 3 Or MD = 6 Or MD = 9 Or MD = 12 Or MD = 15 Or MD = 18) Then
                    MsgBox "The Month difference between the Ending & Starting Date has to be 3 or 6 or 9 or 12 or 15 or 18", vbInformation, head
                    st = "A2"
                End If
                
             End If
    End If
Case 3
    If Trim(grddatagrid.Columns(3).Text) = Empty Or Trim(grddatagrid.Columns(3).Text) = "" Then
            MsgBox "Books Closed can't be Empty", vbInformation, head
            st = "A3"
    End If
    End Select
End If



If Opt = "add" Then
    
    If st = "A0" Then
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        st = ""
    End If
    If st = "A1" Then
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        st = ""
    End If
    If st = "A2" Then
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        st = ""
    End If
    If st = "A3" Then
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        st = ""
    End If
    
    
End If
End If
End Sub
      
    

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
'On Error GoTo KH_Errorm
    
    ' Addition ^A
    intervalMinutes = -1
    If Shift = 2 And KeyCode = 65 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
        Exit Sub
    End If

'    ' Modification ^M
'
'    If Shift = 2 And KeyCode = 77 And BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)
'        Exit Sub
'    End If
'
'    ' Deletion ^D
'
'    If Shift = 2 And KeyCode = 68 And BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)
'        Exit Sub
'    End If

    ' Listing ^L
    
    If Shift = 2 And KeyCode = 76 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
        Exit Sub
    End If

     'Find ^F
'
'    If Shift = 2 And KeyCode = 70 And BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)
'        Exit Sub
'    End If


    ' First ^Home
    
    If Shift = 2 And KeyCode = 36 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
        Exit Sub
    End If

    ' Next ^DownArrow
    
    If Shift = 2 And KeyCode = 40 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
        Exit Sub
    End If

    ' Previous ^UpArrow
    
    If Shift = 2 And KeyCode = 38 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
        Exit Sub
    End If

    ' Last ^End
    
    If Shift = 2 And KeyCode = 35 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
        Exit Sub
    End If

    ' Save ^S
    
    If Shift = 2 And KeyCode = 83 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
        Exit Sub
    End If

    ' Cancel ^C
    
    If Shift = 2 And KeyCode = 67 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
        Exit Sub
    End If

    ' Exit ^E  (or)  Esc
    
    If (Shift = 2 And KeyCode = 69) Or (Shift = 0 And KeyCode = 27) And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
        Exit Sub
    End If

KH_Error:

End Sub
Private Sub grdDataGrid_KeyUp(KeyCode As Integer, Shift As Integer)
If Opt <> "add" Or Opt <> "mod" Then
On Error GoTo KH_Error

    ' Addition ^A

    If Shift = 2 And KeyCode = 65 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
        Exit Sub
    End If

'    ' Modification ^M
'
'    If Shift = 2 And KeyCode = 77 And BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)
'        Exit Sub
'    End If
'
'    ' Deletion ^D
'
'    If Shift = 2 And KeyCode = 68 And BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)
'        Exit Sub
'    End If

    ' Listing ^L

    If Shift = 2 And KeyCode = 76 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
        Exit Sub
    End If

'    ' Find ^F
'
'    If Shift = 2 And KeyCode = 70 And BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)
'        Exit Sub
'    End If


    ' First ^Home

    If Shift = 2 And KeyCode = 36 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
        Exit Sub
    End If

    ' Next ^DownArrow

'    If Shift = 2 And KeyCode = 40 And BUTTON(6).Enabled = True Then
'        Call BUTTON_Click(6)
'        Exit Sub
'    End If

    ' Previous ^UpArrow

 '   If Shift = 2 And KeyCode = 38 And BUTTON(7).Enabled = True Then
 '       Call BUTTON_Click(7)
 '       Exit Sub
 '   End If

    ' Last ^End

    If Shift = 2 And KeyCode = 35 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
        Exit Sub
    End If

    ' Save ^S

    If Shift = 2 And KeyCode = 83 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
        Exit Sub
    End If

    ' Cancel ^C

    If Shift = 2 And KeyCode = 67 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
        Exit Sub
    End If

    ' Exit ^E  (or)  Esc

    If (Shift = 2 And KeyCode = 69) Or (Shift = 0 And KeyCode = 27) And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
        Exit Sub
    End If
Exit Sub
KH_Error:

End If



'^S Pressed
    
    If Shift = 2 And KeyCode = 83 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
        Exit Sub
    End If

    ' ^C Pressed
    
    If Shift = 2 And KeyCode = 67 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
        Exit Sub
    End If

End Sub
Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If Not ((((KeyAscii >= 48 And KeyAscii <= 57) Or _
             KeyAscii = 8) Or KeyAscii = 9 Or KeyAscii = 45) Or Len(obj) = maxlen) Then
        KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
        Beep
    End If
End Sub

Private Sub lovcancel_Click()
Frame1.Visible = False
End Sub

Private Sub lovok_Click()
Set DB = New Connection
DB.Open "PROVIDER=msdatashape;" & connectstring
Set RSS = New Recordset
RSS.Open "select Ayear ""Accounting Year"",Ayfdate ""Starting Date"",Ayldate ""Ending Date"",closed""Books Closed""   from  pp_year where ayear='" & ksldesc1.code & "' and ayfdate='" & Format(ksldesc1.Description, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'MsgBox rss.RecordCount
  Set grddatagrid.DataSource = RSS
  Frame1.Visible = False
  BUTTON(10).Enabled = True
  BUTTON(9).Enabled = False
   BUTTON(8).Enabled = False
    BUTTON(7).Enabled = False
     BUTTON(6).Enabled = False
      BUTTON(5).Enabled = False
        BUTTON(0).Enabled = False
        If Opt = "fnd" Then
        grddatagrid.Enabled = False
        End If
End Sub
