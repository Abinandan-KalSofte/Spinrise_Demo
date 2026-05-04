VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form generic_query 
   Caption         =   "Generic Query"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   3495
      Left            =   240
      TabIndex        =   9
      Top             =   5400
      Width           =   12285
      _ExtentX        =   21669
      _ExtentY        =   6165
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Grid"
      TabPicture(0)   =   "generic_query.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "DataGrid1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3315
         Left            =   105
         TabIndex        =   27
         Top             =   90
         Width           =   12105
         _ExtentX        =   21352
         _ExtentY        =   5847
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   15
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
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
   Begin VB.Frame Frame1 
      Height          =   8535
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   12615
      Begin TabDlg.SSTab SSTab2 
         Height          =   4815
         Left            =   120
         TabIndex        =   10
         Top             =   120
         Width           =   12255
         _ExtentX        =   21616
         _ExtentY        =   8493
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         BackColor       =   -2147483637
         ForeColor       =   16777215
         TabCaption(0)   =   "Generic Query"
         TabPicture(0)   =   "generic_query.frx":001C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "Frame2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).ControlCount=   1
         Begin VB.Frame Frame2 
            Height          =   4455
            Left            =   240
            TabIndex        =   11
            Top             =   120
            Width           =   11775
            Begin VB.CommandButton CrystalPrint 
               BackColor       =   &H00FFE3EC&
               Caption         =   "&Print"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   7920
               Style           =   1  'Graphical
               TabIndex        =   24
               Top             =   3705
               Width           =   1335
            End
            Begin VB.TextBox table_Text 
               Height          =   375
               Left            =   4920
               TabIndex        =   2
               Top             =   240
               Width           =   2175
            End
            Begin VB.TextBox reportname 
               Height          =   375
               Left            =   1320
               TabIndex        =   1
               Top             =   240
               Width           =   3015
            End
            Begin VB.TextBox Text2 
               Height          =   1335
               Left            =   240
               MultiLine       =   -1  'True
               TabIndex        =   20
               Top             =   2280
               Width           =   10575
            End
            Begin VB.CommandButton Command2 
               BackColor       =   &H00FFE3EC&
               Caption         =   "&Cancel"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   2880
               Style           =   1  'Graphical
               TabIndex        =   19
               Top             =   3720
               Width           =   1335
            End
            Begin VB.CommandButton Command1 
               BackColor       =   &H00FFE3EC&
               Caption         =   "&Retrieve"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   1200
               Style           =   1  'Graphical
               TabIndex        =   18
               Top             =   3720
               Width           =   1335
            End
            Begin VB.CommandButton Command3 
               BackColor       =   &H00FFE3EC&
               Caption         =   "E&xit"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   4560
               Style           =   1  'Graphical
               TabIndex        =   17
               Top             =   3720
               Width           =   1335
            End
            Begin VB.ListBox List1 
               Height          =   1860
               Left            =   8400
               Style           =   1  'Checkbox
               TabIndex        =   3
               Top             =   240
               Width           =   2415
            End
            Begin VB.CommandButton Command6 
               BackColor       =   &H00FFE3EC&
               Caption         =   "&Save"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   6240
               Style           =   1  'Graphical
               TabIndex        =   16
               Top             =   3720
               Width           =   1335
            End
            Begin VB.CommandButton Command4 
               BackColor       =   &H00FFEBCC&
               Caption         =   "Add"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   10920
               Style           =   1  'Graphical
               TabIndex        =   15
               Top             =   840
               Width           =   615
            End
            Begin VB.Frame Frame4 
               Caption         =   "Condition"
               Height          =   1170
               Left            =   240
               TabIndex        =   13
               Top             =   960
               Width           =   7815
               Begin VB.TextBox symbol_text 
                  Height          =   375
                  Left            =   3240
                  TabIndex        =   6
                  Top             =   480
                  Width           =   975
               End
               Begin VB.CommandButton Command5 
                  BackColor       =   &H00FFEBCC&
                  Caption         =   "Add"
                  BeginProperty Font 
                     Name            =   "MS Sans Serif"
                     Size            =   8.25
                     Charset         =   0
                     Weight          =   700
                     Underline       =   0   'False
                     Italic          =   0   'False
                     Strikethrough   =   0   'False
                  EndProperty
                  Height          =   375
                  Left            =   6960
                  Style           =   1  'Graphical
                  TabIndex        =   14
                  Top             =   480
                  Width           =   735
               End
               Begin VB.TextBox Text1 
                  Height          =   375
                  Left            =   4320
                  TabIndex        =   7
                  Top             =   480
                  Width           =   1215
               End
               Begin VB.TextBox condition_Text 
                  Height          =   375
                  Left            =   960
                  TabIndex        =   5
                  Top             =   480
                  Width           =   2175
               End
               Begin VB.ComboBox Combo1 
                  Height          =   315
                  ItemData        =   "generic_query.frx":0038
                  Left            =   120
                  List            =   "generic_query.frx":0042
                  Style           =   2  'Dropdown List
                  TabIndex        =   4
                  Top             =   480
                  Width           =   735
               End
               Begin VB.TextBox Text3 
                  Height          =   375
                  Left            =   5640
                  TabIndex        =   8
                  Top             =   480
                  Width           =   1215
               End
            End
            Begin VB.CommandButton Print 
               BackColor       =   &H00C0C0FF&
               Caption         =   "&Print"
               BeginProperty Font 
                  Name            =   "MS Sans Serif"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   700
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   10080
               Style           =   1  'Graphical
               TabIndex        =   12
               Top             =   3720
               Visible         =   0   'False
               Width           =   1335
            End
            Begin VB.Label Label1 
               Caption         =   "Table"
               Height          =   255
               Left            =   4440
               TabIndex        =   23
               Top             =   240
               Width           =   1095
            End
            Begin VB.Label Label4 
               Caption         =   "Report Name"
               Height          =   255
               Left            =   240
               TabIndex        =   22
               Top             =   240
               Width           =   1095
            End
            Begin VB.Label Label2 
               Caption         =   "Query Columns"
               Height          =   255
               Left            =   7200
               TabIndex        =   21
               Top             =   240
               Width           =   1095
            End
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   240
      Top             =   6840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   26
      Top             =   2790
      Width           =   4680
      _ExtentX        =   8255
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
            Alignment       =   1
            Object.Width           =   14729
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "29/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:50 PM"
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
      Caption         =   "Generic Query"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   360
      TabIndex        =   25
      Top             =   120
      Width           =   1860
   End
End
Attribute VB_Name = "generic_query"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim Rs As New Recordset
Dim rsa As New Recordset
Dim rss As New Recordset
Dim CrRs As New Recordset
Dim CryRs As New Recordset
Dim field_count As Integer
Dim Table_Name As String
Dim query_fileds As String
Dim CONDITION_FIELDS As String
Dim ls_alias As String
Dim RESULT As New Recordset
Dim ldata As DataEnv_genqry
Dim li_tot_col_qry As Long

Private Sub Combo1_Click()
intervalMinutes = -1
'Combo2.clear
'Combo3.clear
'field_count = 0
'If Combo1.text <> "" Then
'    If Table_Exists(table_Text.text) = False Then
'        MsgBox "Table Does Not Exists", vbInformation, head
'        Exit Sub
'    End If
'    Set rsa = New Recordset
'    rsa.Open "select * from " & Combo1.text & " ", db, adOpenStatic
'    field_count = rsa.Fields.Count
'    For i = 0 To field_count - 1
'        Combo2.AddItem rsa(i).Name
'        Combo3.AddItem rsa(i).Name
'    Next
'
'    If table_name = "" Then
'        table_name = Combo1.text
'    Else
'        table_name = table_name & " , " & Combo1.text
'    End If
'
'End If
End Sub

Private Sub Combo2_Click()
If Combo2.Text <> "" Then
    If query_fileds = "" Then
        query_fileds = Combo1.Text & "." & Combo2.Text
    Else
        query_fileds = query_fileds & " , " & Combo1.Text & "." & Combo2.Text
    End If
End If
End Sub

Private Sub Command1_Click()

On Error GoTo Command1_Click_Error
    Set cn = New Connection
    Set Rs = New Recordset
    If cn.State = 1 Then
         cn.Close
    End If
    If Trim(Text2.Text) <> "" Then
        If UCase(Left(Trim(Text2.Text), 6)) = "SELECT" Then
            Set Rs = New Recordset
            Rs.Open Trim(Text2), DB, adOpenStatic
            Set DataGrid1.DataSource = Rs
        End If
    End If
Exit Sub
intervalMinutes = -1
Command1_Click_Error:
    If Err.Number = -2147217908 Or Err.Number = -2147217900 Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form generic_query", vbInformation, head

End Sub

Private Sub Command2_Click()
intervalMinutes = -1
On Error GoTo Command2_Click_Error
    reportname = ""
    Text1.Text = ""
    Text2.Text = ""
    Text3.Text = ""
    Table_Name = ""
    query_fileds = ""
    CONDITION_FIELDS = ""
    List1.Clear
    condition_Text.Text = ""
    symbol_text.Text = ""
    table_Text.Text = ""
    Combo1.Text = "And"
    ls_alias = ""
    
    Set Rs = New Recordset
    'Rs.Open Trim(Text2), db, adOpenStatic
    Set DataGrid1.DataSource = Rs
    intervalMinutes = -1
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form generic_query", vbInformation, head
End Sub

Private Sub Command3_Click()
    Unload Me
End Sub

Private Sub Command4_Click()
intervalMinutes = -1
a = 0
B = List1.ListCount
List1.ListIndex = 0
I = 0
Do While Not a = B
    If List1.Selected(List1.ListIndex) = True Then
         If query_fileds = "" Then
            ''query_fileds = table_Text.text & "." & List1.list(List1.ListIndex)
            Call getAlias
            query_fileds = ls_alias & "." & List1.List(List1.ListIndex)
        Else
            ''query_fileds = query_fileds & " , " & table_Text.text & "." & List1.list(List1.ListIndex)
            li_pos_last_comma = InStrRev(Table_Name, ",", Len(Table_Name))
            ls_table = Trim(table_Text.Text)
            If InStr(1, Table_Name, ls_table) > li_pos_last_comma Then
                Call getAlias
            Else
                getAlias_existing (UCase(ls_table))
            End If
            'Call getAlias
            query_fileds = query_fileds & ", " & ls_alias & "." & List1.List(List1.ListIndex)
        End If
        
    End If
    If Not B - 1 = List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
    a = a + 1
    I = I + 1
Loop

B = List1.ListCount
List1.ListIndex = 0
I = 0
For I = 1 To B
    If List1.Selected(List1.ListIndex) = True Then
        List1.RemoveItem (List1.ListIndex)
        B = B - 1
    End If
    'If List1.ListCount - 1 <> List1.ListIndex Then List1.ListIndex = List1.ListIndex + 1
    If List1.ListIndex >= 0 Then
        If List1.Selected(List1.ListIndex) = False Then
            For j = 1 To B - 1
                If List1.Selected(j) = True Then
                    List1.ListIndex = j
                    Exit For
                End If
            Next
        End If
    End If
Next
intervalMinutes = -1
If List1.ListCount > 0 Then
    List1.ListIndex = 0
End If
Text2.Text = ""
strQry = ""
strQry = "select " & Trim(query_fileds) & " from " & Trim(Table_Name) & " "
If Trim(CONDITION_FIELDS) <> "" Then
    strQry = Trim(strQry) & " where " & Trim(CONDITION_FIELDS)
End If
intervalMinutes = -1
Text2.Text = strQry
End Sub

Private Sub Command5_Click()
intervalMinutes = -1
    If Trim(condition_Text.Text) = "" Or Trim(symbol_text.Text) = "" Or Trim(Text1.Text) = "" Then
        MsgBox "Condition and value should be given"
        Exit Sub
    End If
    If Len(CONDITION_FIELDS) > 0 Then
         If Combo1.Text = "And" Then
             ls_and_or = " and "
         Else
             ls_and_or = " or "
         End If
    Else
         ls_and_or = ""
    End If
    Call getAlias_existing(Trim(table_Text))
    ls_condition = ls_and_or & ls_alias & "." & Trim(condition_Text.Text) & " " & Trim(symbol_text.Text) & " " & Trim(Text1.Text)
    If Trim(symbol_text.Text) = "Between" Then
         ls_condition = ls_condition & " and " & Trim(Text3.Text)
    End If
    
    If InStr(1, CONDITION_FIELDS, ls_condition) = 0 Then
         If InStr(1, ls_condition, " or ") > 0 Then
            Call add_Left_Bracket
         End If
         If InStr(1, ls_condition, " or ") > 0 Then
            Call remove_Right_Bracket
         End If
         CONDITION_FIELDS = CONDITION_FIELDS & ls_condition
         If InStr(1, ls_condition, " or ") > 0 Then
            Call add_Right_Bracket
         End If
    End If
    intervalMinutes = -1
    Call Command4_Click
    intervalMinutes = -1
End Sub

Private Sub Command6_Click()
intervalMinutes = -1
    Set rsk = New Recordset
    rsk.Open "Select isnull(Max(ReportNo),1) From PP_Reports  Where divcode='" & Divcode & "' and moduleno=" & ModuleNo, DB, adOpenStatic
    TReportNo = rsk(0)
    Set Rs = New Recordset
    Rs.Open "select * from pp_reports where divcode='" & Divcode & "' and moduleno=" & ModuleNo & " and REPORTNAME = '" & Trim(reportname.Text) & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        'DB.Execute "INSERT INTO PP_REPORTS (DIVCODE,MODULENO,ReportNo,reportname, REPORT_QUERY) VALUES ('" & Divcode & "'," & ModuleNo & "," & TReportNo & ",'" & Trim(reportname.Text) & "', '" & Trim(Text2.Text) & "')"
        DB.Execute "INSERT INTO PP_REPORTS (DIVCODE,MODULENO,reportname, REPORT_QUERY) VALUES ('" & Divcode & "'," & ModuleNo & ",'" & Trim(reportname.Text) & "', '" & Trim(Text2.Text) & "')"
    Else
        DB.Execute "update pp_reports set report_query = '" & Trim(Text2.Text) & "' where divcode = '" & Divcode & "'" & " and Moduleno = " & ModuleNo & " and reportname = '" & Trim(reportname.Text) & "' and ReportNo = " & Rs("ReportNo") & " "
    End If
    intervalMinutes = -1
    MsgBox "Record(s) Saved Successfully", vbInformation, head
End Sub


Private Sub Command7_Click()

End Sub

Private Sub condition_Text_GotFocus()
    condition_Text.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub condition_Text_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then SendKeys "{tab}"
End Sub

Private Sub condition_Text_LostFocus()
    condition_Text.BackColor = &H80000005 'WHITE
End Sub

Private Sub condition_Text_Validate(Cancel As Boolean)
intervalMinutes = -1
'If condition_Text.Text <> "" Then
    Set rsa = New Recordset
    rsa.Open "SELECT NAME FROM syscolumns WHERE name ='" & condition_Text.Text & "' " & " and id = (select id from sysobjects where name = '" & Trim(table_Text.Text) & "')", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "SELECT NAME FROM syscolumns WHERE id = (select id from sysobjects where name = '" & Trim(table_Text.Text) & "')"
        LookUp.DefCol = "name"
        LookUp.ALIGN = "4000"
        LookUp.Caption = "Columns Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            condition_Text.Text = LookUp.Fields(0)
            symbol_text.SetFocus
        Else
            condition_Text.Text = ""
            condition_Text.SetFocus
            Exit Sub
        End If
    Else
        symbol_text.SetFocus
    End If
'End If
End Sub
Private Sub CrystalPrint_Click()
intervalMinutes = -1
Dim f1, F2, f3, F4, F5, F6 As String
Dim FC1, FC2, FC3, FC4, FC5, FC6 As String
Dim rsk As New Recordset
Set Rs = New Recordset
Rs.Open Trim(Text2), DB, adOpenStatic
Set DataGrid1.DataSource = Rs

'Set RS1 = New Recordset
'RS1.Open "select name from sysobjects where type='v' and name='GENREPORT'", DB, adOpenStatic
'
'
'If RS1.RecordCount = 0 Then
'    Set CrRs = New Recordset
'    CrRs.Open "CREATE VIEW GENREPORT AS " & Trim(Text2), DB, adOpenStatic, adLockBatchOptimistic
'Else
'    DB.Execute ("Drop view genreport")
'    Set CrRs = New Recordset
'    CrRs.Open "CREATE VIEW GENREPORT AS " & Trim(Text2), DB, adOpenStatic, adLockBatchOptimistic
'End If
'
Set rsk = New Recordset
rsk.Open Trim(Text2), DB, adOpenStatic, adLockReadOnly

DB.Execute "Delete From GenCry"


Do While Not rsk.EOF
    If rsk.Fields.Count >= 1 Then
        f1 = IIf(IsNull(rsk(0)), " ", rsk(0))
        FC1 = UCase(rsk.Fields(0).Name)
    Else
        f1 = " "
        FC1 = " "
    End If
    If rsk.Fields.Count >= 2 Then
        F2 = IIf(IsNull(rsk(1)), " ", rsk(1))
        FC2 = UCase(rsk.Fields(1).Name)
    Else
        F2 = " "
        FC2 = " "
    End If
    If rsk.Fields.Count >= 3 Then
        f3 = IIf(IsNull(rsk(2)), " ", rsk(2))
        FC3 = UCase(rsk.Fields(2).Name)
    Else
        f3 = " "
        FC3 = " "
    End If
    If rsk.Fields.Count >= 4 Then
        F4 = IIf(IsNull(rsk(3)), " ", rsk(3))
        FC4 = UCase(rsk.Fields(3).Name)
    Else
        F4 = " "
        FC4 = " "
    End If
    If rsk.Fields.Count >= 5 Then
        F5 = IIf(IsNull(rsk(4)), " ", rsk(4))
        FC5 = UCase(rsk.Fields(4).Name)
    Else
        F5 = " "
        FC5 = " "
    End If
    If rsk.Fields.Count >= 6 Then
        F6 = IIf(IsNull(rsk(5)), " ", rsk(5))
        FC6 = UCase(rsk.Fields(5).Name)
    Else
        F6 = " "
        FC6 = " "
    End If
   DB.Execute "Insert Into GenCry Values ('" & Replace(f1, "'", "") & "','" & Replace(F2, "'", "") & "','" & Replace(f3, "'", "") & "','" & Replace(F4, "'", "") & "','" & Replace(F5, "'", "") & "','" & Replace(F6, "'", "") & "')"
   rsk.MoveNext
Loop
    Set RsDiv = New Recordset
    RsDiv.Open "select divname from pp_divmas where divcode = '" & Divcode & "'", DB, adOpenStatic
    
      Dim clsCryRpt As New clsCrystal
      Set clsCryRpt.cryRept = Cry_PO_GenericQueryReport
      clsCryRpt.CrystalPrint
                    
      CrystalReport1.Reset
      CrystalReport1.Connect = connectstring
      CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
      CrystalReport1.Formulas(0) = "Divname='" & RsDiv("divname") & "'"
      CrystalReport1.Formulas(1) = "FC1='" & FC1 & "'"
      CrystalReport1.Formulas(2) = "FC2='" & FC2 & "'"
      CrystalReport1.Formulas(3) = "FC3='" & FC3 & "'"
      CrystalReport1.Formulas(4) = "FC4='" & FC4 & "'"
      CrystalReport1.Formulas(5) = "FC5='" & FC5 & "'"
      CrystalReport1.Formulas(6) = "FC6='" & FC6 & "'"
      'CrystalReport1.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(docdt)) & "," & val(Month(docdt)) & "," & val(Day(docdt)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & divcode & "'"
'      CrystalReport1.ParameterFields(0) = "@DivCode;" & divcode & ""
'      CrystalReport1.ParameterFields(1) = "@Fromdt;" & sFDate & ""
'      CrystalReport1.ParameterFields(2) = "@Todt;" & sTDate & ""
'      CrystalReport1.ParameterFields(3) = "@loc;" & UserLocation & ""
'      CrystalReport1.ParameterFields(4) = "@godcode;" & sGodCode & ""
      'CrystalReport1.ReportTitle = divname
    
    
      CrystalReport1.WindowShowPrintSetupBtn = True
      CrystalReport1.WindowShowSearchBtn = True
      CrystalReport1.WindowState = crptMaximized
      SendKeys "{ENTER}"
      CrystalReport1.Action = 1
      CrystalReport1.PrinterCopies = 1
      Screen.MousePointer = 0

    intervalMinutes = -1
    
'''    CrystalReport1.Reset
'''    CrystalReport1.Formulas(0) = "Divname='" & RsDiv("divname") & "'"
'''    CrystalReport1.Formulas(1) = "FC1='" & FC1 & "'"
'''    CrystalReport1.Formulas(2) = "FC2='" & FC2 & "'"
'''    CrystalReport1.Formulas(3) = "FC3='" & FC3 & "'"
'''    CrystalReport1.Formulas(4) = "FC4='" & FC4 & "'"
'''    CrystalReport1.Formulas(5) = "FC5='" & FC5 & "'"
'''    CrystalReport1.Formulas(6) = "FC6='" & FC6 & "'"
'''    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\PO\GenCry.rpt"
'''    CrystalReport1.WindowState = crptMaximized
'''    SendKeys "{ENTER}"
'''    CrystalReport1.WindowShowPrintBtn = True
'''    CrystalReport1.Action = 1
'''    CrystalReport1.PrinterCopies = 1
    
End Sub

Private Sub DataGrid1_GotFocus()
    DataGrid1.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub DataGrid1_LostFocus()
    DataGrid1.BackColor = &H80000005 'WHITE
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.Open connectstring
    Combo1.Text = "And"
    intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Print_Click()

intervalMinutes = -1
On Error GoTo Print_Click_Error
    Set cn = New Connection
    Set Rs = New Recordset
    If cn.State = 1 Then
         cn.Close
    End If
    
    Set Rs = New Recordset
    Rs.Open Trim(Text2), DB, adOpenStatic
    Set DataGrid1.DataSource = Rs

    DataEnvironment3.Connection1.ConnectionString = ""
    li_pos = InStr(1, connectstring, "server=") + 6
    li_pos1 = InStr(li_pos, connectstring, ";")
    ls_str1 = Mid(connectstring, li_pos, li_pos1 - li_pos)

    ls_str = DataEnvironment3.Connection1.ConnectionString
    li_pos = InStr(1, ls_str, "Data Source=") + 11
    li_pos1 = InStr(li_pos, ls_str, ";")
    ls_str2 = Mid(ls_str, li_pos, li_pos1 - li_pos)
    ls_str = Mid(ls_str, 1, li_pos - 1) + ls_str1 + Mid(ls_str, li_pos1, Len(ls_str))

    'DataEnvironment3.Connection1.ConnectionString = connectstring
    DataEnvironment3.Connection1.ConnectionString = ls_str
    Set ldata = New DataEnv_genqry
    'ldata.Connection1.Open "provider=msdatashape;" & connectstring
    'cn.ConnectionString = "provider=msdatashape;" & connectstring
    ldata.Connection1.Open '"provider=msdatashape;" & ls_str
    'cn.ConnectionString = "provider=msdatashape;" & ls_str
    Set ldata = New DataEnv_genqry
    
    cn.ConnectionString = "provider=msdatashape;" & connectstring
    
    If cn.State = adStateclose Then
        cn.Open
    End If

    Set Rs = New Recordset
    Rs.Open Trim(Text2), DB, adOpenStatic
    Set DataGrid1.DataSource = Rs

    'ldata.Connection1.Open connectstring
    'ldata.Connection1.Open ls_str
    'ldata.rsCommand11.Open Trim(Text2), db, adOpenStatic
    ldata.rsCommand11.Open Trim(Text2), cn, adOpenStatic
    
    Set dr_generic_query.DataSource = ldata

    If Not ldata.rsCommand11.BOF And Not ldata.rsCommand11.EOF Then
        ldata.rsCommand11.MoveFirst
        Set RsDiv = New Recordset
        RsDiv.Open "select divname from pp_divmas where divcode = '" & Divcode & "'", DB, adOpenStatic
        dr_generic_query.Sections(1).Controls.Item("Label0").Caption = RsDiv(0).value
        li_tot_col_qry = ldata.rsCommand11.Fields.Count
    End If

    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataField = ldata.rsCommand11.Fields(1).Name
    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataField = ldata.rsCommand11.Fields(2).Name
    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataField = ldata.rsCommand11.Fields(3).Name
    'dr_generic_query.Sections(3).Controls.item(5).DataField = ldata.rsCommand11.Fields(4).Name

    'dr_generic_query.Sections(3).Controls.item(1).Width = 2000
    'dr_generic_query.Sections(3).Controls.item(1).ForeColor = vbBlue

    'dr_generic_query.Sections(5).Controls.item(1).Visible = False

intervalMinutes = -1
    li_ctr = 0
    li_ctr1 = 1
    li_tot_col = dr_generic_query.Sections(3).Controls.Count
    Do While Not ldata.rsCommand11.EOF
        li_ctr = 0
        li_ctr1 = 1
        Do While li_ctr1 <= li_tot_col
            If Not ldata.rsCommand11.BOF And Not ldata.rsCommand11.EOF Then
                If li_ctr <= li_tot_col_qry - 1 Then
                    dr_generic_query.Sections(2).Controls.Item("Label" & Trim(Str(li_ctr1))).Caption = ldata.rsCommand11.Fields(li_ctr).Name
                    dr_generic_query.Sections(3).Controls.Item(li_ctr1).DataField = ldata.rsCommand11.Fields(li_ctr).Name

                    ' 06/07/2007 - following 2 lines
                    dr_generic_query.Sections(3).Controls.Item(li_ctr1).Visible = True
                    dr_generic_query.Sections(2).Controls.Item(li_ctr1).Visible = True

                    'If IsNumeric(ldata.rsCommand11(li_ctr).Value) Then
                    '       dr_generic_query.Sections(3).Controls.item(li_ctr1).Alignment = 1
                    '    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataFormat = vbnu
                    'End If
                Else
                    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataField = "000"
                    'dr_generic_query.Sections(3).Controls.item(li_ctr1).DataField = ldata.rsCommand11.Fields(li_ctr - 1).Name
                    ' 06/07/2007 - following one line
                    dr_generic_query.Sections(3).Controls.Item(li_ctr1).DataField = ldata.rsCommand11.Fields(0).Name
                    'dr_generic_query.Sections(3).Controls.Item(li_ctr1).Visible = False
                    'dr_generic_query.Sections(3).Controls.Item(li_ctr1).Width = 0
                End If
            End If
            li_ctr1 = li_ctr1 + 1
            'If li_ctr1 <= li_tot_col_qry Then
                li_ctr = li_ctr + 1
            'End If
        Loop
        If Not ldata.rsCommand11.BOF And Not ldata.rsCommand11.EOF Then
            ldata.rsCommand11.MoveNext
            li_ctr = 0
        End If
        'li_ctr = li_ctr + 1
intervalMinutes = -1
    Loop
    
    dr_generic_query.Show
    intervalMinutes = -1
Exit Sub
Print_Click_Error:
    If Err.Number = -2147217908 Or Err.Number = -2147217900 Then
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Print_Click of Form generic_query", vbInformation, head

End Sub

Private Sub Print_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Print_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub reportname_GotFocus()
    reportname.BackColor = &HC0FFC0 'PINK
End Sub



Private Sub reportname_LostFocus()
    reportname.BackColor = &H80000005  'WHITE
End Sub

Private Sub reportname_Validate(Cancel As Boolean)

intervalMinutes = -1
On Error GoTo reportname_Validate_Error
If Trim(reportname.Text) <> "" Then
    Set rsa = New Recordset
    rsa.Open "select reportno, reportname, report_query from pp_reports where divcode='" & Divcode & "' and moduleno=" & ModuleNo & " and REPORTNAME = '" & Trim(reportname.Text) & "'", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        If MsgBox("New Report - '" & reportname.Text & "'", vbYesNo) = vbYes Then
            ''
        Else
            LookUp.Clear = True
            LookUp.query = "select reportno, reportname, report_query from pp_reports where divcode='" & Divcode & "' and moduleno = " & ModuleNo
            LookUp.Caption = "Report Listing"
            LookUp.DefCol = "reportname"
            LookUp.ALIGN = "4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                reportname.Text = LookUp.Fields(1)
                ls_qry = LookUp.Fields(2)
                Text2.Text = ls_qry
                query_fileds = Mid(ls_qry, InStr(1, ls_qry, "select ") + 7, InStr(1, ls_qry, " from ") - 8)
                If InStr(1, ls_qry, " where ") Then
                    'table_name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, InStr(1, ls_qry, " where ") - 8)
                    Table_Name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, Len(ls_qry))
                    Table_Name = Left(Table_Name, InStr(1, Table_Name, " where "))
                    ls_table_name = Table_Name
                    intervalMinutes = -1
                    CONDITION_FIELDS = Mid(ls_qry, InStr(1, ls_qry, " where ") + 7, Len(ls_qry))
                    intervalMinutes = -1
                Else
                    Table_Name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, Len(ls_qry))
                    intervalMinutes = -1
                End If
'''                If InStr(1, ls_qry, " where ") Then
'''                    table_name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, InStr(1, ls_qry, " where ") - 8)
'''                    ls_table_name = table_name
'''                    table_name = ""
'''                    li_pos = 1
'''                    Do While True
'''                        If Not InStr(li_pos, ls_table_name, " as ") Then
'''                            Exit Do
'''                        End If
'''                        table_name = table_name + Mid(ls_table_name, li_pos, InStr(li_pos, ls_table_name, " as ") - 1)
'''                        li_pos = InStr(li_pos, ls_table_name, " as ") + 2
'''                        Call addAlias(Trim(table_name))
'''                    Loop
'''                    CONDITION_FIELDS = Mid(ls_qry, InStr(1, ls_qry, " where ") + 7, Len(ls_qry))
'''                Else
'''                    table_name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, Len(ls_qry))
'''                End If
                table_Text.SetFocus
                LookUp.Clear = True
            Else
                reportname.SetFocus
                Exit Sub
            End If
        End If
        intervalMinutes = -1
    ElseIf rsa.RecordCount = 1 Then
        ls_qry = rsa(2)
        Text2.Text = ls_qry
        query_fileds = Mid(ls_qry, InStr(1, ls_qry, "select ") + 7, InStr(1, ls_qry, " from ") - 8)
        If InStr(1, ls_qry, " where ") Then
            'table_name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, InStr(1, ls_qry, " where ") - 8)
            Table_Name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, Len(ls_qry))
            Table_Name = Left(Table_Name, InStr(1, Table_Name, " where "))
            ls_table_name = Table_Name
            intervalMinutes = -1
            CONDITION_FIELDS = Mid(ls_qry, InStr(1, ls_qry, " where ") + 7, Len(ls_qry))
            intervalMinutes = -1
        Else
            Table_Name = Mid(ls_qry, InStr(1, ls_qry, " from ") + 6, Len(ls_qry))
            intervalMinutes = -1
        End If
        table_Text.SetFocus
    Else
        MsgBox "With this name, more than one report is saved"
    End If
Else
    MsgBox "Report Name can not be blank"
End If
Exit Sub
reportname_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure reportname_Validate of Form generic_query", vbInformation, head
End Sub

Private Sub symbol_text_GotFocus()
    symbol_text.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub symbol_text_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then SendKeys "{tab}"
End Sub

Private Sub symbol_text_LostFocus()
     symbol_text.BackColor = &H80000005 'WHITE
End Sub

Private Sub symbol_text_Validate(Cancel As Boolean)
intervalMinutes = -1
'If Trim(symbol_text.Text) <> ""   Then
    Set rsa = New Recordset
    rsa.Open "SELECT * FROM PP_SYMBOLS WHERE SYMBOL='" & symbol_text.Text & "'  ", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select SYMBOL from pp_SYMBOLS"
        LookUp.Caption = "Symbols Listing"
        LookUp.DefCol = "SYMBOL"
        LookUp.ALIGN = "4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            symbol_text.Text = LookUp.Fields(0)
            Text2.SetFocus
            LookUp.Clear = True
        Else
            Text2.SetFocus
            Exit Sub
        End If
    Else
        Text2.SetFocus
    End If
'End If
End Sub

Private Sub table_Text_GotFocus()
    If Trim(reportname.Text) = "" Then
        reportname.SetFocus
    End If
    table_Text.BackColor = &HC0FFC0 'PINK
    stbar.Panels(2).Text = "Select Table in Lookup"
End Sub

Private Sub table_Text_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then SendKeys "{tab}"
End Sub

Private Sub table_Text_LostFocus()
    table_Text.BackColor = &H80000005 'WHITE
End Sub

Private Sub table_Text_validate(Cancel As Boolean)
intervalMinutes = -1
On Error GoTo table_Text_validate_Error
List1.Clear
condition_Text.Text = ""
field_count = 0
'If Trim(table_Text.Text) <> "" Then
    Set rsa = New Recordset
    rsa.Open "SELECT * FROM PP_MODULE_TABLES WHERE MODULENO=" & ModuleNo & " and tablename='" & table_Text.Text & "'  ", DB, adOpenStatic
    If rsa.RecordCount = 0 Then
        LookUp.Clear = True
        LookUp.query = "select Distinct tablename from pp_module_tables where moduleno=" & ModuleNo & " "
        LookUp.Caption = "Table Listing"
        LookUp.DefCol = "tablename"
        LookUp.ALIGN = "4000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            table_Text.Text = LookUp.Fields(0)
            LookUp.Clear = True
            If Table_Name = "" Then
                Call addAlias(Trim(table_Text.Text))
            Else
'                If InStr(1, table_name, " " + Trim(table_Text.Text) + " ") Then          SIVA
                If InStr(1, Table_Name, Trim(table_Text.Text)) Then
                    If MsgBox("Table is already added; Do you want to add it again ?", vbYesNo) = vbYes Then
                        Call addAlias(Trim(table_Text.Text))
                    End If
                Else
                    Call addAlias(Trim(table_Text.Text))
                End If
            End If
            Set rsa = New Recordset
            rsa.Open "select * from " & table_Text.Text & " ", DB, adOpenStatic
            field_count = rsa.Fields.Count
            For I = 0 To field_count - 1
                List1.AddItem rsa(I).Name
            Next
        Else
            table_Text.SetFocus
            Exit Sub
        End If
    Else
        If Table_Name = "" Then
            Call addAlias(Trim(table_Text.Text))
        Else
            If InStr(1, Table_Name, Trim(table_Text.Text)) Then
                If MsgBox("Table is already added; Do you want to add it again ?", vbYesNo) = vbYes Then
                    Call addAlias(Trim(table_Text.Text))
                End If
            End If
        End If
    End If
    Call addjoin
'Else
'    Exit Sub
'End If

intervalMinutes = -1
Exit Sub
table_Text_validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure table_Text_validate of Form generic_query", vbInformation, head
End Sub

Private Sub addAlias(as_table_name As String)
On Error GoTo addAlias_Error
    If Trim(Table_Name) <> "" Then
        If Trim(as_table_name) <> "" Then
            Table_Name = Table_Name & ", " & as_table_name & " as "
        End If
    Else
        If Trim(as_table_name) <> "" Then
            Table_Name = as_table_name & " as "
        End If
    End If
    Call getAlias
    Table_Name = Table_Name & ls_alias
Exit Sub
addAlias_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure addAlias of Form generic_query", vbInformation, head
End Sub

Private Sub getAlias()
    ls_alias = ""
    If Table_Name = "" Then
        ls_alias = Chr(65)
    Else
        li_pos = 0
        li_count = 0
        Do While True
            li_pos = InStr(li_pos + 1, Table_Name, ",")
            If li_pos > 0 Then
                li_count = li_count + 1
            Else
                Exit Do
            End If
        Loop
        li_count = 65 + li_count
        ls_alias = Chr(li_count)
    End If
End Sub

Private Sub getAlias_existing(as_table_text As String)
    ls_alias = ""
    li_pos = InStr(1, Table_Name, " " + Trim(as_table_text) + " ")
    li_pos = InStr(li_pos + 1, Table_Name, " as ")
    ls_alias = Mid(Table_Name, li_pos + 3, 2)
    ls_alias = Trim(ls_alias)
End Sub
Private Sub getLastAlias()
    ls_alias = ""
    li_pos = InStrRev(Table_Name, " as ", Len(Trim(Table_Name)))
    ls_alias = Mid(Table_Name, li_pos + 3, 2)
    ls_alias = Trim(ls_alias)
End Sub
Private Sub addjoin()
    ls_table_name1 = Table_Name
    ls_table_name = ""
    li_pos = 1
    ls_str = ""
    ls_table2 = ""
    ls_table1_column = ""
    ls_table2_column = ""
    
    Do While True
        If InStr(1, ls_table_name1, " as ") <= 0 Then
            Exit Do
        End If
        
        ls_table_name = Mid(ls_table_name1, 1, InStr(1, ls_table_name1, " as ") - 1)
        
        'li_pos = InStr(li_pos, table_name, " as ") + 7
        li_pos = InStr(1, ls_table_name1, " as ") + 7
        If li_pos > 0 Then
            ls_table_name1 = Mid(ls_table_name1, li_pos, Len(ls_table_name1))
        Else
            ls_table_name1 = ls_table_name
        End If
        Set rsa = New Recordset
        rsa.Open "select table2, table1_column, table2_column from pp_tables_relationship where table1 = '" & ls_table_name & "'", DB, adOpenStatic
        If rsa.RecordCount > 0 Then
            rsa.MoveFirst
            
            Do While Not rsa.EOF
                ls_table2 = rsa(0).value
                If InStr(1, Table_Name, UCase(ls_table2)) Then
                
                    ls_table1_column = rsa(1).value
                    ls_table2_column = rsa(2).value
                    getAlias_existing (UCase(ls_table_name))
                    ls_str1 = ls_alias & "." & ls_table1_column & " = "
                    li_pos_last_comma = InStrRev(Table_Name, ",", Len(Table_Name))
                    If InStr(1, Table_Name, ls_table2) > li_pos_last_comma Then
                        Call getLastAlias
                    Else
                        getAlias_existing (UCase(ls_table2))
                    End If
                    ls_str1 = ls_str1 & ls_alias & "." & ls_table2_column
                    If ls_str1 <> "" Then
                        If InStr(1, CONDITION_FIELDS, ls_str1) > 0 Then
                            ls_str1 = ""
                        Else
                            If ls_str <> "" Then
                                ls_str = ls_str & " and "
                            End If
                            ls_str = ls_str & ls_str1
                        End If
                    End If
                End If
                rsa.MoveNext
            Loop

        End If
    Loop
    If ls_str <> "" And InStr(1, CONDITION_FIELDS, ls_str) = 0 Then
        If CONDITION_FIELDS <> "" Then
            CONDITION_FIELDS = CONDITION_FIELDS & " and " & ls_str
        Else
            CONDITION_FIELDS = CONDITION_FIELDS & ls_str
        End If
        Call Command4_Click
    End If
End Sub

Private Sub add_Left_Bracket()
    li_pos1 = InStrRev(CONDITION_FIELDS, " and ", Len(Trim(CONDITION_FIELDS)))
    li_pos = InStrRev(CONDITION_FIELDS, " and (", Len(Trim(CONDITION_FIELDS)))
    If li_pos = 0 Or li_pos1 > li_pos Then
        If li_pos1 > 0 Then
            CONDITION_FIELDS = Mid(CONDITION_FIELDS, 1, li_pos1 + 4) + "( " + Mid(CONDITION_FIELDS, li_pos1 + 4)
        End If
    End If
End Sub

Private Sub add_Right_Bracket()
'    li_pos1 = InStrRev(CONDITION_FIELDS, " and ", Len(Trim(CONDITION_FIELDS)))
'    li_pos = InStrRev(CONDITION_FIELDS, " and (", li_pos1)
'    If li_pos > 0 Then
'
'        CONDITION_FIELDS = Mid(CONDITION_FIELDS, 1, li_pos1 - 1) + " )" + Mid(CONDITION_FIELDS, li_pos1, Len(Trim(CONDITION_FIELDS)))
'    End If
    li_pos = InStrRev(CONDITION_FIELDS, " or ", Len(Trim(CONDITION_FIELDS)))
    If li_pos > 0 Then
        CONDITION_FIELDS = CONDITION_FIELDS + " )"
    End If
End Sub

Private Sub remove_Right_Bracket()
    li_pos = InStrRev(CONDITION_FIELDS, " )", Len(Trim(CONDITION_FIELDS)))
    If li_pos > 0 Then
        CONDITION_FIELDS = Mid(CONDITION_FIELDS, 1, li_pos - 1)
    End If
End Sub
Private Sub Text1_GotFocus()
    Text1.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then SendKeys "{tab}"
End Sub

Private Sub Text1_LostFocus()
    Text1.BackColor = &H80000005 'WHITE
End Sub
Private Sub Text3_GotFocus()
    Text3.BackColor = &HC0FFC0 'PINK
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "{tab}"
End Sub

Private Sub Text3_LostFocus()
    Text3.BackColor = &H80000005 'WHITE
End Sub
