VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form VVFrmCategory 
   Caption         =   "Category"
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
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   15
      Top             =   -105
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":0000
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "VVRMICategory.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "VVRMICategory.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "VVRMICategory.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "VVRMICategory.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "VVRMICategory.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "VVRMICategory.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "VVRMICategory.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":2E72
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
         Picture         =   "VVRMICategory.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "VVRMICategory.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "VVRMICategory.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "VVRMICategory.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "VVRMICategory.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6555
         TabIndex        =   17
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8085
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   14
      Top             =   6105
      Width           =   8580
      _ExtentX        =   15134
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   900
      TabIndex        =   19
      Top             =   1300
      Width           =   7980
      _ExtentX        =   14076
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "     "
      TabPicture(0)   =   "VVRMICategory.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         CausesValidation=   0   'False
         Height          =   4065
         Left            =   165
         TabIndex        =   20
         Top             =   120
         Width           =   7710
         _ExtentX        =   13600
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
      Left            =   270
      TabIndex        =   12
      Top             =   810
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "VVRMICategory.frx":4B17
         Height          =   615
         Left            =   3000
         Picture         =   "VVRMICategory.frx":4EFD
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "VVRMICategory.frx":52C3
         Height          =   615
         Left            =   4740
         Picture         =   "VVRMICategory.frx":56A5
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   18
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
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   13
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Category"
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
      Left            =   930
      TabIndex        =   11
      Top             =   765
      Width           =   1185
   End
End
Attribute VB_Name = "VVFrmCategory"
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure openconnection of Category"
End Sub
Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
On Error GoTo ToUpCase_Error

    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If

Exit Sub
ToUpCase_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure ToUpCase of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

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
        adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Name"",a.llotno ""Last Lot No."",a.fatc ""FATC"",b.tchead ""Description"" from rm_cat a,fa_tcmas b where 1=2 order by catcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 2594.835
        grddatagrid.Columns(2).Width = 705.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 2940.095
        DB.BeginTrans
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        grddatagrid.Columns(0).Locked = False
        grddatagrid.Columns(1).Locked = False
        grddatagrid.Columns(2).Locked = False
        grddatagrid.Columns(3).Locked = False
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        BUTTON(9).ToolTipText = "Add Record"
        StatusBar1.Panels(2).Text = "Addition"
        grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1
        'modification
        SSTab1.Visible = True
        grddatagrid.Visible = True
        StatusBar1.Panels(2).Text = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.fatc""FATC"",b.tchead""Description""  from rm_cat a,fa_tcmas b where a.fatc*=b.tc order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 3254.74
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 2940.095
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = False
        grddatagrid.AllowAddNew = False
        adoPrimaryRS.MoveFirst
        grddatagrid.Col = 1
        grddatagrid.Row = 0
        grddatagrid.ScrollBars = dbgNone
        grddatagrid.ScrollBars = dbgNone
        grddatagrid.SetFocus
        BUTTON(9).Enabled = True 'Save
        BUTTON(10).Enabled = True
        Frame3.Visible = False
        
'        Set Rs = New Recordset
'        'rs.Open "select count(*) from rm_cat", db
'        Rs.Open "select a.catcd ""Code"" ,a.catname ""Name"",a.llotno ""Lot No"",a.fatc ""FATC"",b.tchead ""Description"" from rm_cat a,fa_tcmas b where a.fatc = b.tc order by catcd", Db, adOpenStatic, adLockBatchOptimistic
'    If Not Rs(0) = 0 Then
'        Opt = "mod"
'        Screen.MousePointer = 11
'        desc.Caption = "Modification"
'        Db.BeginTrans
'        SSTab1.Visible = False
'        grddatagrid.Visible = False
'        Frame3.Visible = True
'        Label15.Caption = "Category List"
'        KslList1.conn = connectstring
'        KslList1.table = "rm_cat"
'        KslList1.listfield1 = "catcd"
'        KslList1.listfield2 = "catname"
'        Frame3.Visible = True
'        Command3.Default = True
'        Frame3.ZOrder
'        KslList1.SetFocus
'        grddatagrid.AllowUpdate = True
'        'calling addmoddel procedure from module
'        Call adddelmod(BUTTON)
'        grddatagrid.Columns(0).Locked = True
'        grddatagrid.Columns(1).Locked = True
'        BUTTON(9).Enabled = False 'Save
'        BUTTON(10).Enabled = False
'        BUTTON(9).ToolTipText = "Modify"
'        StatusBar1.Panels(2).Text = "Select Category Code from the list for modification"
'        Screen.MousePointer = 0
'    Else
'        MsgBox "No Record found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_cat", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Label15.Caption = "Category List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_cat"
        KslList1.listfield1 = "catcd"
        KslList1.listfield2 = "catname"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KslList1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Category Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
        'List
        desc.Caption = "Listing"
        Set dv1 = New DataEnvironment1
        dv1.Connection1.ConnectionString = connectstring
        Set Cn = New Connection
        Cn.CursorLocation = adUseClient
    If Cn.State = 1 Then
        Cn.Close
    End If
        Cn.ConnectionString = "provider=msdatashape;" & connectstring
    If Cn.State = adStateclose Then
        Cn.Open
    End If
        Call repproc2(rptcategory)
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    
        'The dv1 should be Opened using cn only. See next line.
        dv1.rsCommand1.Open "select catcd,catname,llotno,fatc  from rm_cat order by catcd", Cn
    
    If dv1.rsCommand1.RecordCount <> 0 Then
        Set rptcategory.DataSource = dv1     'PLACE THIS CODE BEFORE SHOW
        rptcategory.Show
        desc.Caption = "Query"
    Else
        MsgBox "No Records Found ", vbInformation, head
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
        'Call navi(BUTTON)
        Call FIR(BUTTON)
        BUTTON(10).Enabled = False
        Beep
        Exit Sub
GoFirstError:
        MsgBox Err.description, vbInformation, head
            
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
        'Call navi(BUTTON)
        BUTTON(10).Enabled = False
        Exit Sub
GoNextError:
        MsgBox Err.description, vbInformation, head
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
        'Call navi(BUTTON)
        BUTTON(10).Enabled = False
        Exit Sub
GoPrevError:
        MsgBox Err.description, vbInformation, head
       
Case 8
    'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
         StatusBar1.Panels(2).Text = "Last Record"
        'calling las procedure from module
         'Call navi(BUTTON)
         Call las(BUTTON)
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.description, vbInformation, head
Case 9
        'Save
    If Opt = "add" Then
      If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Category Name Can't be Empty", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) = "" Then
        MsgBox "Lot Number Can't be Empty", vbInformation, head
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
'      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) <> "" And grddatagrid.Columns(3) = "" Then
'        MsgBox "FATC Can't be Empty", vbInformation, head
'        grddatagrid.Col = 3
'        grddatagrid.SetFocus
'        Exit Sub
'      End If
      adoPrimaryRS.MoveFirst
      Opt = ""
      Do While Not adoPrimaryRS.EOF
      If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
         adoPrimaryRS.Delete
      End If
      adoPrimaryRS.MoveNext
      Loop
      If adoPrimaryRS.RecordCount = 0 Then
        DB.RollbackTrans
        Exit Sub
      End If
      adoPrimaryRS.MoveFirst
      If Not Trim(grddatagrid.Columns(0).Text) = "" And Not Trim(grddatagrid.Columns(1).Text) = "" Then
            On Error Resume Next
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
      End If
                StatusBar1.Panels(2).Text = ""
      End If
'       If opt = "add" Then
'        On Error GoTo deler
'        adoPrimaryRS.MoveFirst
'        adoPrimaryRS.UpdateBatch adAffectAllChapters
'        db.CommitTrans
'        MsgBox "Record(s) Saved", vbInformation, head
'       End If
    If Opt = "mod" Then
      adoPrimaryRS.MoveFirst
      Opt = ""
      Do While Not adoPrimaryRS.EOF
      If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
         adoPrimaryRS.Delete
      End If
      adoPrimaryRS.MoveNext
      Loop
      
      adoPrimaryRS.MoveFirst
      If Not Trim(grddatagrid.Columns(0).Text) = "" And Not Trim(grddatagrid.Columns(1).Text) = "" Then
'            On Error Resume Next
            Do While Not adoPrimaryRS.EOF
                DB.Execute ("update rm_cat set llotno='" & grddatagrid.Columns(2).Text & "',CATNAME='" & grddatagrid.Columns(1).Text & "', fatc = '" & grddatagrid.Columns(3).Text & "' where catcd = '" & grddatagrid.Columns(0).Text & "'")
                adoPrimaryRS.MoveNext
            Loop
            'adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Modified", vbInformation, head
      End If
                StatusBar1.Panels(2).Text = ""
      End If
'       If opt = "mod" Then
'         grddatagrid.AllowUpdate = True
'         adoPrimaryRS.UpdateBatch adAffectAllChapters
'         db.CommitTrans
'         MsgBox "Record(s) Modified", vbInformation, head
'       End If
    If Opt = "del" Then
        On Error GoTo deler
        Set Rs = New Recordset
        Rs.Open " select * from rm_var where catcd=" + "'" + grddatagrid.Columns(0) + "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            MsgBox "This Record cannot be deleted as Dependency Exists", vbInformation, head
            Call QUERY_MODE
            DB.RollbackTrans
            Exit Sub
        End If
        DB.Execute ("delete from rm_cat where catcd=" + "'" + grddatagrid.Columns(0) + "'")
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
    End If
        Opt = " "
        Call QUERY_MODE
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, GSNO)
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
        'CANCEL
        desc.Caption = "Query"
        Screen.MousePointer = 11
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
        grddatagrid.Visible = True
        SSTab1.Visible = True
        Frame3.Visible = False
        'calling cancl procedure from module
        Call cancl(BUTTON)
        'button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
        BUTTON(9).Enabled = False
        Screen.MousePointer = 0
Case 11
        'EXIT
        Reset
        Unload Me
End Select
        Exit Sub
deler:
    If Err = -2147217900 Then
        MsgBox "This Category Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
    ElseIf Err = -2147217842 Then
        MsgBox " Category  Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
    Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Category Code already exists", vbInformation, head
        Screen.MousePointer = 0
        st = "B"
        grddatagrid.Col = 0
    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    grddatagrid.Visible = True
    If Opt = "add" And KslList1.listfield1 = "cast(a.tc as varchar)" Then Exit Sub
    
    Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Select Case KslList1.listfield1
Case "cast(a.tc as varchar)"
           'If opt = "add" Or opt = "mod" Then
            Frame3.Visible = False
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select tc ,tchead from fa_tcmas where tc='" & KslList1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.Columns(3).Text = Rs("tc")
            grddatagrid.Columns(4).Text = Rs("tchead")
            grddatagrid.AllowUpdate = True
            adoPrimaryRS.AddNew
            grddatagrid.Col = 0
            grddatagrid.Visible = True
            grddatagrid.SetFocus
            Exit Sub
Case "catcd"
 On Error Resume Next
    SSTab1.Visible = True
    grddatagrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.fatc""FATC"",b.tchead""Description""  from rm_cat a,fa_tcmas b where a.fatc*=b.tc and a.catcd= '" & KslList1.Code & "' order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
    'adoPrimaryRS.Open "select catcd ""Code"" ,catname ""Name"",llotno ""Lot No"",fatc""FATC"" from rm_cat  where catcd= '" & KslList1.Code & "' order by catcd", db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 3254.74
        'grddatagrid.Columns(2).Width = 705.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 2940.095
    'grddatagrid.Columns(2).Visible = False
    grddatagrid.Columns(0).Locked = True
    grddatagrid.Columns(1).Locked = False
    grddatagrid.AllowAddNew = False
    grddatagrid.Col = 1
    grddatagrid.Row = 0
    grddatagrid.ScrollBars = dbgNone
    grddatagrid.ScrollBars = dbgNone
    grddatagrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(2).Locked = True
        grddatagrid.Columns(3).Locked = True
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False
    End Select

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call QUERY_MODE
    'grddatagrid.Caption = "Category"
    'SSTab1.Tabs.Clear
    BUTTON(9).Enabled = False

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    'grddatagrid.Height = SSTab1.Height - 360
    'grddatagrid.Width = SSTab1.Width - 500
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

    Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
        'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

    If Not Opt = "add" Then
       StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error

    If Opt = "add" Then
        If grddatagrid.Col = 3 Then
            If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
                adoPrimaryRS.AddNew
                grddatagrid.Col = 0
                grddatagrid.SetFocus
            End If
        End If
        If grddatagrid.Col = 0 Then
            a = adoPrimaryRS.AbsolutePosition
            Code = adoPrimaryRS(0)
            Opt = " "
            adoPrimaryRS.MoveFirst
            For i = 1 To adoPrimaryRS.RecordCount - 1
                If adoPrimaryRS(0).value = Code And Not adoPrimaryRS.AbsolutePosition = a Then
                    MsgBox "Category Code Already Defined!", vbInformation, head
                    adoPrimaryRS.AbsolutePosition = a
                    adoPrimaryRS(0).value = ""
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                    Opt = "add"
                    Exit Sub
                End If
                adoPrimaryRS.MoveNext
            Next i
            Opt = "add"
End If
    End If

Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_AfterColEdit of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
        Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error

    If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Category Code cannot be empty!", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X' from rm_cat where catcd='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
               MsgBox "Category Code already defined!", vbInformation, head
               grddatagrid.Columns(0).Text = " "
               grddatagrid.SetFocus
               st = "A"
                Exit Sub
             End If
        End If
    End If

    If ColIndex = 1 Then
        If Trim(grddatagrid.Columns(1).Text) = Empty Or Trim(grddatagrid.Columns(1).Text) = "" Then
            MsgBox "Category Name cannot be empty!", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
        End If
    End If
    If ColIndex = 3 Then
        If Trim(grddatagrid.Columns(3).Text) = Empty Or Trim(grddatagrid.Columns(3).Text) = "" Then
              MsgBox "FATC cannot be empty!", vbInformation, head
        End If
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Trim(grddatagrid.Columns(0)) <> "" Then
            BUTTON(9).Enabled = True
        End If
        If grddatagrid.Col = 1 Then
            grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
        End If
    End If

Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_AfterColUpdate of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
        Response = 0
End Sub

Private Sub grdDataGrid_GotFocus()
On Error GoTo grdDataGrid_GotFocus_Error

 If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
        End If
 End If

Exit Sub
grdDataGrid_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_GotFocus of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

    Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

    If KeyCode = vbKeyTab Then
        FLGREPET = True
        If Trim(grddatagrid.Text) = "" Then
            If grddatagrid.Col = 1 Then
                MsgBox ("Category Name Cannot be empty"), vbInformation, head
                grddatagrid.Col = 1
                grddatagrid.SetFocus
                st2 = "A"
                Exit Sub
            End If
            If grddatagrid.Col = 0 Then
                MsgBox ("Category Code cannot be empty"), vbInformation, head
                grddatagrid.Col = 0
                grddatagrid.SetFocus
                st = "A"
                Exit Sub
            End If
            If grddatagrid.Col = 2 Then
                MsgBox ("Lot Number cannot be empty"), vbInformation, head
                grddatagrid.Col = 2
                grddatagrid.SetFocus
                st = "C"
                Exit Sub
            End If
        End If
    Else
        FLGREPET = False
    End If
'    If KeyCode = vbKeyTab Then
'        If Not grddatagrid.Columns(3).Text = "" Then
'            grddatagrid.Col = 0
'            grddatagrid.SetFocus
'        End If
'    End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

    If grddatagrid.Col = 0 Then
        ToAlphaNumber grddatagrid, 1, KeyAscii
        ToUpCase grddatagrid, KeyAscii
    ElseIf grddatagrid.Col = 1 Then
        ToAlphaNumber grddatagrid, 35, KeyAscii
    ElseIf grddatagrid.Col = 2 Then
        If Not (KeyAscii = vbKeyBack Or KeyAscii = vbKeyTab) Then
            If Len(grddatagrid) < 4 Then
                Call ToNumber(grddatagrid, KeyAscii)
            Else
                KeyAscii = 0
            End If
        End If
    ElseIf grddatagrid.Col = 3 Then
        ToNumber grddatagrid, KeyAscii
        ToNumb grddatagrid, 4, KeyAscii
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Frame3.Visible = True
        Label15.Caption = "TC Listing"
        KslList1.conn = connectstring
        KslList1.Table = "fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
        KslList1.listfield1 = "cast(a.tc as varchar)"
        KslList1.listfield2 = "a.tchead"
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KslList1.SetFocus
    ElseIf grddatagrid.Col = 3 Then
        Call tonum(grddatagrid, 2, KeyAscii)
        'ToUpCase grddatagrid, KeyAscii
    ElseIf grddatagrid.Col = 4 Then
        ToNumber grddatagrid, KeyAscii
    End If
    
     If grddatagrid.Col = 3 Then
     If grddatagrid.Columns(2).Text <> "" Then
        If val(grddatagrid.Columns(2).Text) > 999999 Then
                MsgBox "Lot Number Cannot be greater than 99999", vbInformation, head
                grddatagrid.Columns(2).Text = ""
                grddatagrid.Col = 2
                grddatagrid.SetFocus
      End If
      End If
      End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub QUERY_MODE()
        On Error GoTo ER1
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.fatc""FATC"",b.tchead""Description""  from rm_cat a,fa_tcmas b where a.fatc*=b.tc order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
    If adoPrimaryRS.BOF Then
        MsgBox " No Records Found", vbInformation, head
    End If
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 2594.835
        grddatagrid.Columns(2).Width = 705.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 2940.095
        grddatagrid.AllowUpdate = False
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(2).Locked = True
        grddatagrid.Columns(3).Locked = True
        'grddatagrid.Columns(2).Visible = False
        desc.Caption = "Query"
        DATLAB.Caption = pdate
        'Calling newform procedure from Module to disable buttons
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(10).Enabled = False
        Opt = " "
        Screen.MousePointer = 0
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
        'statusbar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
        Exit Sub
ER1:
    If Err = 3021 Then
        MsgBox "No Records Exist", vbInformation, head
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(2).Locked = True
        grddatagrid.Columns(3).Locked = True
' grddatagrid.Columns(3).Width = 2610.142
' grddatagrid.Columns(2).Width = 705.2599
' grddatagrid.Columns(1).Width = 4155.024
' grddatagrid.Columns(0).Width = 615.1182
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
        If st = "C" Then
            grddatagrid.Col = 2
            'st3 = "B"
        End If
        If grddatagrid.Columns(2).Text <> "" And st = "C" Then
        grddatagrid.Col = 3
        st = ""
        Exit Sub
        End If
        If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = "" Then
            grddatagrid.Col = 0
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
            
        End If

    End If
    If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
        End If
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 35 Characters"
        End If
        If grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 4 integers"
        End If
        If grddatagrid.Col = 3 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 2 Integers"
        End If
    End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

        Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure KslList1_GotFocus of Form VVFrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub


