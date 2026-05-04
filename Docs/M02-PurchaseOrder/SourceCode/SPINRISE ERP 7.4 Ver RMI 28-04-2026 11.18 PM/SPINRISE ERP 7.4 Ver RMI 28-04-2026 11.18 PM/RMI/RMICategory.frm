VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmCategory 
   Caption         =   "c"
   ClientHeight    =   6405
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8580
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6405
   ScaleWidth      =   8580
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7680
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   15
      Top             =   -105
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5850
         Picture         =   "RMICategory.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   540
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMICategory.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":0AE1
         Height          =   510
         Index           =   8
         Left            =   4260
         Picture         =   "RMICategory.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":128D
         Height          =   510
         Index           =   10
         Left            =   5310
         Picture         =   "RMICategory.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":1913
         Height          =   510
         Index           =   9
         Left            =   4800
         Picture         =   "RMICategory.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":1FBF
         Height          =   510
         Index           =   11
         Left            =   6390
         Picture         =   "RMICategory.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3735
         Picture         =   "RMICategory.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMICategory.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":32CF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMICategory.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":3953
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
         Picture         =   "RMICategory.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":3FF9
         Height          =   510
         Index           =   5
         Left            =   2685
         Picture         =   "RMICategory.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":47A8
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMICategory.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICategory.frx":4E45
         Height          =   510
         Index           =   6
         Left            =   3210
         Picture         =   "RMICategory.frx":528F
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
         Left            =   7080
         TabIndex        =   17
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
         Left            =   8880
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
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "15/11/2023"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "11:59 AM"
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
      Left            =   360
      TabIndex        =   19
      Top             =   1305
      Width           =   11295
      _ExtentX        =   19923
      _ExtentY        =   7673
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "     "
      TabPicture(0)   =   "RMICategory.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         CausesValidation=   0   'False
         Height          =   4110
         Left            =   105
         TabIndex        =   20
         Top             =   120
         Width           =   11085
         _ExtentX        =   19553
         _ExtentY        =   7250
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   2
         RowHeight       =   15
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
      Left            =   360
      TabIndex        =   12
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMICategory.frx":55F8
         Height          =   615
         Left            =   3000
         Picture         =   "RMICategory.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMICategory.frx":5DA4
         Height          =   615
         Left            =   4740
         Picture         =   "RMICategory.frx":6186
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
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   990
      TabIndex        =   11
      Top             =   885
      Width           =   1185
   End
End
Attribute VB_Name = "FrmCategory"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Category"
End Sub
Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
On Error GoTo ToUpCase_Error

    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If

Exit Sub
ToUpCase_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToUpCase of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "PALLAVA" And Divcode = "01" Then
'            Else
'            MsgBox "You cannot Add or Modify or Delete !!! only in First Division", vbInformation, head
'            Exit Sub
'            End If
''            If Divcode <> "01" Then
''                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran Division One ", vbInformation, head
''                Exit Sub
''            End If
'        End If
'
        
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Name"",a.llotno ""Last Lot No."",a.comm_code ""Commodity Code"",a.fatc ""FATC"",a.tcdesc ""Description"",Consu_DrGlcode,Consu_CrGlcode,BalePress from rm_cat a,fa_tcmas b where 1=2 order by catcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 2594.835
        grddatagrid.Columns(2).Width = 1000.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 659.9055
        grddatagrid.Columns(5).Width = 2940.095
        DB.BeginTrans
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        grddatagrid.Columns(0).Locked = False
        grddatagrid.Columns(1).Locked = False
        grddatagrid.Columns(2).Locked = False
        grddatagrid.Columns(3).Locked = False
        grddatagrid.Columns(4).Locked = False
        'grddatagrid.Columns(2).Visible = False
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Save Record"
        StatusBar1.Panels(2).Text = "Addition"
        'grddatagrid.ScrollBars = dbgBoth
        grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1, 2, 4
'        If Index = 1 Or Index = 2 Then
'        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "PALLAVA" And Divcode = "01" Then
'            Else
'            MsgBox "You cannot Add or Modify or Delete !!! only in First Division", vbInformation, head
'                Exit Sub
'            End If
''            If Divcode <> "01" Then
''                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran Division One ", vbInformation, head
''                Exit Sub
''            End If
'        End If
'        End If
        'modification
    Set Rs = New Recordset
    'rs.Open "select count(*) from rm_cat", db
    'Rs.Open "select a.catcd ""Code"" ,a.catname ""Name"",a.llotno ""Lot No"",a.fatc ""FATC"",A.tcDESC""Description"" from rm_cat A order by catcd", DB, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select a.catcd ""Code"" ,a.catname ""Name"",a.llotno ""Lot No"",a.comm_code ""Commodity Code"",a.fatc ""FATC"",A.tcDESC""Description"" from rm_cat A order by catcd", DB, adOpenStatic
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
        LookUp.Clear = True
        LookUp.query = "SELECT  CATCD""Category Code"",CATNAME""Category Name"" FROM RM_CAT"
        LookUp.DefCol = "Category Name"
        LookUp.ALIGN = "1500,4000"
        StatusBar1.Panels(2).Text = "Select Category Code from the list for modification"
        LookUp.Caption = "Category Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.comm_code ""Commodity Code"",a.fatc""FATC"",A.TCDESC""Description"",Consu_DrGlcode,Consu_CrGlcode,BalePress  from rm_cat a left join fa_tcmas b on  a.fatc=b.tc where a.catcd= '" & LookUp.Fields(0) & "' order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
            Set grddatagrid.DataSource = adoPrimaryRS
            grddatagrid.Columns(0).Width = 494.9292
            grddatagrid.Columns(1).Width = 3254.74
            grddatagrid.Columns(3).Width = 659.9055
            grddatagrid.Columns(4).Width = 659.9055
            grddatagrid.Columns(5).Width = 2940.095
            grddatagrid.Columns(0).Locked = True
            grddatagrid.Columns(1).Locked = False
            grddatagrid.AllowAddNew = False
            grddatagrid.Col = 1
            grddatagrid.Row = 0
            grddatagrid.ScrollBars = dbgNone
            grddatagrid.ScrollBars = dbgNone
            grddatagrid.SetFocus
            'BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                grddatagrid.Columns(0).Locked = True
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Columns(2).Locked = True
                grddatagrid.Columns(3).Locked = True
                grddatagrid.Columns(4).Locked = True
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
            End If
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Frame3.Visible = False
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
''''        SSTab1.Visible = False
''''        grddatagrid.Visible = False
''''        Frame3.Visible = True
''''        Label15.Caption = "Category List"
''''        KSLLIST1.conn = connectstring
''''        KSLLIST1.table = "rm_cat"
''''        KSLLIST1.listfield1 = "catcd"
''''        KSLLIST1.listfield2 = "catname"
''''        Frame3.Visible = True
''''        Command3.Default = True
''''        Frame3.ZOrder
''''        KSLLIST1.SetFocus
        grddatagrid.AllowUpdate = True
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        If Opt = "fnd" Then
            BUTTON(9).Enabled = False
        End If
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = False
        'BUTTON(9).Enabled = False 'Save
        'BUTTON(10).Enabled = False
        'BUTTON(9).ToolTipText = "Modify"
'        StatusBar1.Panels(2).Text = "Select Category Code from the list for modification"
        Screen.MousePointer = 0
    Else
        MsgBox "No Records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
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
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "rm_cat"
        KSLLIST1.listfield1 = "catcd"
        KSLLIST1.listfield2 = "catname"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KSLLIST1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        'BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Category Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
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
        Call repproc2(rptcategory)
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    
        'The dv1 should be Opened using cn only. See next line.
        dv1.rsCommand1.Open "select catcd,catname,llotno,comm_code,fatc  from rm_cat order by catcd", cn
    
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
        'Call navi(BUTTON)
        BUTTON(10).Enabled = False
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
        'Call navi(BUTTON)
        BUTTON(10).Enabled = False
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
         'Call navi(BUTTON)
         Call las(BUTTON)
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
        'Save
    If Opt = "add" Then
      If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
        MsgBox "Empty record Cannot be Saved", vbInformation, head
        grddatagrid.Col = 0
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Category Name Cannot be Empty", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) = "" Then
        MsgBox "Lot Number Cannot be Empty", vbInformation, head
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(4).Text <> "" And grddatagrid.Columns(5).Text <> "" And grddatagrid.Columns(2) <> "" And grddatagrid.Columns(4) = "" Then
        MsgBox "FA - TC Can't be Empty", vbInformation, head
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        Exit Sub
      End If
      adoPrimaryRS.MoveFirst
      Opt = ""
      Do While Not adoPrimaryRS.EOF
      If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" And Trim(grddatagrid.Columns(4).Text) = "" Then
         adoPrimaryRS.Delete
      End If
      adoPrimaryRS.MoveNext
      Loop
      If adoPrimaryRS.RecordCount = 0 Then
        DB.RollbackTrans
        Exit Sub
      End If
      adoPrimaryRS.MoveFirst
      If Not Trim(grddatagrid.Columns(0).Text) = "" And Not Trim(grddatagrid.Columns(1).Text) = "" And Not Trim(grddatagrid.Columns(4).Text) = "" Then
            On Error Resume Next
            
            adoPrimaryRS.MoveFirst
               Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code,tc ,description,DrGlCode,CrGlCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Category"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("code") = grddatagrid.Columns(0).Text
                    TrnLog("description") = grddatagrid.Columns(1).Text
                    TrnLog("DrGlCode") = grddatagrid.Columns(6).Text
                    TrnLog("crGlCode") = grddatagrid.Columns(7).Text
                    TrnLog("tc") = val(grddatagrid.Columns(4).Text)
     
                    TrnLog.UpdateBatch adAffectAllChapters
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Saved.", vbInformation, head
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
                If val(grddatagrid.Columns(4).Text) = 0 Then
                    DB.Execute ("update rm_cat set llotno=" & val(grddatagrid.Columns(2).Text) & ",CATNAME='" & grddatagrid.Columns(1).Text & "',comm_code='" & grddatagrid.Columns(3).Text & "',Consu_DrGlcode='" & grddatagrid.Columns(6).Text & "',Consu_CrGlcode='" & grddatagrid.Columns(7).Text & "',Balepress='" & grddatagrid.Columns(8).Text & "' where catcd = '" & grddatagrid.Columns(0).Text & "'")
                Else
                    DB.Execute ("update rm_cat set llotno=" & val(grddatagrid.Columns(2).Text) & ",CATNAME='" & grddatagrid.Columns(1).Text & "',comm_code='" & grddatagrid.Columns(3).Text & "', fatc = " & val(grddatagrid.Columns(4).Text) & ",TCDESC ='" & grddatagrid.Columns(5).Text & "',Consu_DrGlcode='" & grddatagrid.Columns(6).Text & "',Consu_CrGlcode='" & grddatagrid.Columns(7).Text & "',Balepress='" & grddatagrid.Columns(8).Text & "' where catcd = '" & grddatagrid.Columns(0).Text & "'")
                End If
                
                adoPrimaryRS.MoveNext
            Loop
            adoPrimaryRS.MoveFirst
             Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode,CrGlCode,tc FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Category"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("code") = grddatagrid.Columns(0).Text
                    TrnLog("description") = grddatagrid.Columns(1).Text
                    TrnLog("DrGlCode") = grddatagrid.Columns(6).Text
                    TrnLog("crGlCode") = grddatagrid.Columns(7).Text
                    TrnLog("tc") = val(grddatagrid.Columns(4).Text)
                    
                    TrnLog.UpdateBatch adAffectAllChapters
            
            'adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Record(s) Modified.", vbInformation, head
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
        Dim msg As String
        msg = MsgBox("Do you want to delete this record", vbYesNo, head)
        If msg = vbYes Then
            Rs.Open " select * from rm_var where catcd=" + "'" + grddatagrid.Columns(0) + "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                MsgBox "This Record cannot be deleted as Dependency Exists", vbInformation, head
                Call query_mode
                DB.RollbackTrans
                Exit Sub
            End If
            adoPrimaryRS.MoveFirst
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode,CrGlCode,tc FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Category"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("code") = grddatagrid.Columns(0).Text
                    TrnLog("description") = grddatagrid.Columns(1).Text
                    TrnLog("DrGlCode") = grddatagrid.Columns(6).Text
                    TrnLog("crGlCode") = grddatagrid.Columns(7).Text
                    TrnLog("tc") = val(grddatagrid.Columns(4).Text)
     
                    TrnLog.UpdateBatch adAffectAllChapters
            
            DB.Execute ("delete from rm_cat where catcd=" + "'" + grddatagrid.Columns(0) + "'")
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
        BUTTON(0).SetFocus '''''''''''''''
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
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
        'button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
        BUTTON(9).Enabled = False
        BUTTON(4).Enabled = True ''find
        BUTTON(0).SetFocus '''''''
        Screen.MousePointer = 0
Case 11
        'EXIT
        Reset
        Unload Me

Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Category
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmCategory", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    grddatagrid.Visible = True
    If Opt = "add" And KSLLIST1.listfield1 = "cast(a.tc as varchar)" Then Exit Sub
    
    Call BUTTON_Click(10)


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmCategory", vbInformation, head
    
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Select Case KSLLIST1.listfield1
Case "cast(a.tc as varchar)"
           'If opt = "add" Or opt = "mod" Then
            Frame3.Visible = False
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select tc ,tchead from fa_tcmas where tc='" & KSLLIST1.Code & "'", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.Columns(4).Text = Rs("tc")
            grddatagrid.Columns(5).Text = Rs("tchead")
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
    adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.comm_code ""Commodity Code"",a.fatc""FATC"",A.TCDESC""Description""  from rm_cat a,fa_tcmas b where a.fatc*=b.tc and a.catcd= '" & KSLLIST1.Code & "' order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
    'adoPrimaryRS.Open "select catcd ""Code"" ,catname ""Name"",llotno ""Lot No"",fatc""FATC"" from rm_cat  where catcd= '" & KslList1.Code & "' order by catcd", db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 3254.74
        'grddatagrid.Columns(2).Width = 705.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 659.9055
        grddatagrid.Columns(5).Width = 2940.095
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
        grddatagrid.Columns(4).Locked = True
    End If
    BUTTON(9).SetFocus
    Frame3.Visible = False
    End Select


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmCategory", vbInformation, head
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
        Call BUTTON_Click(10)   'cancel
    End If
End If
    
    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
    
    Exit Sub

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    'grddatagrid.Caption = "Category"
    'SSTab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True '' Find

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmCategory", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
    On Error Resume Next
    'grddatagrid.Height = SSTab1.Height - 360
    'grddatagrid.Width = SSTab1.Width - 500
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

    Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
        'This will display the current record position for this recordset
    If Not Opt = "add" Then
       StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    End If
    intervalMinutes = -1
End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error
intervalMinutes = -1
    If Opt = "add" Then
        If grddatagrid.Col = 4 Then
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
            For I = 1 To adoPrimaryRS.RecordCount - 1
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
            Next I
            Opt = "add"
End If



' End validation


    End If
If Opt = "add" Or Opt = "mod" Then
' Category Name validation
        If grddatagrid.Col = 1 Then
        Set Rs = New Recordset
        Rs.Open "SELECT CATNAME FROM RM_CAT WHERE catcd<>'" & Trim(grddatagrid.Columns(0).Text) & "' and  CATNAME = LTRIM(' " & Trim(grddatagrid.Columns(1).Text) & " ')", DB, adOpenStatic
         If Rs.RecordCount <> 0 Then
          MsgBox "Category Name Already Defined!", vbInformation, head
          grddatagrid.Columns(1).Text = " "
          grddatagrid.Col = 0
          grddatagrid.SetFocus
          Exit Sub
         End If
         End If
End If


Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form FrmCategory", vbInformation, head
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
        Dim Rs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error

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
               'GrdDataGrid.Columns(0).Text = ""
               grddatagrid.Col = 0
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
    If ColIndex = 4 Then
        If Trim(grddatagrid.Columns(4).Text) = Empty Or Trim(grddatagrid.Columns(4).Text) = "" Then
              MsgBox "FATC cannot be empty!", vbInformation, head
        End If
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Trim(grddatagrid.Columns(0)) <> "" Then
            BUTTON(9).Enabled = True
        End If
        If grddatagrid.Col = 1 Then
'            grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
        End If
    End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmCategory", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

        Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

 If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
        End If
 End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error
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
        Call BUTTON_Click(10)   'cancel
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmCategory", vbInformation, head

End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
On Error GoTo GrdDatagrid_KeyPress_Error
    If grddatagrid.Col = 0 Then
        ToAlphaNumber grddatagrid, 1, KeyAscii
        ToUpCase grddatagrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 48 Then
            KeyAscii = 0
        End If
    ElseIf grddatagrid.Col = 1 Then
        ToAlphaNumber grddatagrid, 35, KeyAscii
    ElseIf grddatagrid.Col = 2 Then
        If Not (KeyAscii = vbKeyBack Or KeyAscii = vbKeyTab) Then
            If Len(grddatagrid) < 6 Then
                Call ToNumber(grddatagrid, KeyAscii)
            Else
                KeyAscii = 0
            End If
            If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
                KeyAscii = 0
            End If
        End If
    ElseIf grddatagrid.Col = 3 Then
        Call ToAlphaNumberOnly(grddatagrid, 15, KeyAscii)
    ElseIf grddatagrid.Col = 4 Then
        If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
            ToNumber grddatagrid, KeyAscii
            ToNumb grddatagrid, 4, KeyAscii
            LookUp.Clear = True
            LookUp.query = "select distinct A.tc""TC Code"", a.tchead""TC Head"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
            LookUp.Caption = "TC Listing"
            LookUp.DefCol = "TC Head"
            LookUp.ALIGN = "1500,2500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select tc ,tchead from fa_tcmas where tc='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
                grddatagrid.Col = 6
                grddatagrid.Columns(5).Text = Rs("tchead")
                grddatagrid.Columns(4).Text = Rs("tc")
    '            GrdDataGrid.AllowUpdate = True
    '            GrdDataGrid.EditActive = True
        

    '           Exit SuB
    
            Else
                'Frame3.Visible = False
                'SSTab1.Visible = True
    '            GrdDataGrid.Columns(4).Text = " "
    '            GrdDataGrid.Columns(3).Text = " "
                Call BUTTON_Click(10)
                grddatagrid.Visible = True
                'If Opt = "add" And KslList1.listfield1 = "cast(a.tc as varchar)" Then Exit Sub
                LookUp.Visible = False
                 'all BUTTON_Click(10)
            End If
        End If
    ElseIf grddatagrid.Col = 4 Then
        Call tonum(grddatagrid, 2, KeyAscii)
        'ToUpCase grddatagrid, KeyAscii
    ElseIf grddatagrid.Col = 5 Then
        'ToNumber grdDataGrid, KeyAscii
'         adoPrimaryRS.AddNew
'            GrdDataGrid.Col = 0
'            GrdDataGrid.Visible = True
'            GrdDataGrid.SetFocus
    End If
    
     If grddatagrid.Col = 4 Then
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
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmCategory", vbInformation, head
End Sub

Public Sub query_mode()
        On Error GoTo er1
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.catcd ""Code"" ,a.catname ""Category Name"",a.llotno ""Last Lot No."",a.comm_code ""Commodity Code"",a.fatc""FA TC"",A.tcDESC""Description"",Consu_DrGlcode,Consu_CrGlcode,BalePress  from rm_cat a left join fa_tcmas b on a.fatc=b.tc   order by a.catcd", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.BOF Then
        MsgBox " No Records Found", vbInformation, head
    End If
        grddatagrid.Columns(0).Width = 494.9292
        grddatagrid.Columns(1).Width = 2594.835
        grddatagrid.Columns(2).Width = 705.2599
        grddatagrid.Columns(3).Width = 659.9055
        grddatagrid.Columns(4).Width = 659.9055
        grddatagrid.Columns(5).Width = 2940.095
        grddatagrid.AllowUpdate = False
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(2).Locked = True
        grddatagrid.Columns(3).Locked = True
        grddatagrid.Columns(4).Locked = True
        grddatagrid.Columns(5).Locked = True
        'grddatagrid.Columns(2).Visible = False
        desc.Caption = "Query"
        DATLAB.Caption = pdate
        'Calling newform procedure from Module to disable buttons
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(10).Enabled = False
        Opt = " "
        Screen.MousePointer = 0
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
        'statusbar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
    Exit Sub
er1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(1).Locked = True
        grddatagrid.Columns(2).Locked = True
        grddatagrid.Columns(3).Locked = True
        grddatagrid.Columns(4).Locked = True
' grddatagrid.Columns(3).Width = 2610.142
' grddatagrid.Columns(2).Width = 705.2599
' grddatagrid.Columns(1).Width = 4155.024
' grddatagrid.Columns(0).Width = 615.1182
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error

intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
        If LastCol = 6 Then
            Set rss = New Recordset
            rss.Open "select Glcode from fa_glmas WHERE GLCODE='" & grddatagrid.Columns(LastCol).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not rss.EOF Then
            
            Else
                LookUp.Clear = True
                LookUp.query = "Select glcode as Code,glHead as Description from fa_glmas "
                LookUp.Caption = "GL Listing"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1000,5000"
                Screen.MousePointer = 0
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    grddatagrid.Columns(6) = LookUp.Fields(0)
    '                grdDataGrid.Columns(5) = LookUp.Fields(1)
                    LookUp.Clear = True
                Else
                    grddatagrid.Columns(LastCol) = ""
    '                grdDataGrid.Columns(5) = ""
                End If
            End If
         End If
    
        If grddatagrid.Col = 7 Then
            Set rss = New Recordset
            rss.Open "select Glcode from fa_glmas WHERE GLCODE='" & grddatagrid.Columns(5).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not rss.EOF Then
            
            Else
                LookUp.query = "Select glcode as Code,glHead as Description from fa_glmas "
                LookUp.Caption = "GL Listing"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1000,5000"
                Screen.MousePointer = 0
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    grddatagrid.Columns(7) = LookUp.Fields(0)
                    grddatagrid.Columns(7) = LookUp.Fields(0)
                    grddatagrid.Col = 3
                    LookUp.Clear = True
                    
                    adoPrimaryRS.AddNew
                    grddatagrid.Columns(4).Locked = True
                    grddatagrid.Columns(5).Locked = True
                    grddatagrid.Col = 0
                    grddatagrid.Visible = True
                    grddatagrid.SetFocus
                    
                Else
                    grddatagrid.Columns(7) = ""
    '                grdDataGrid.Columns(5) = ""
                End If
            End If
         End If
         
    End If

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
            For I = 1 To ln
                t = Asc(Mid$(grddatagrid.Columns(0).Text, I, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grddatagrid.Col = 0
                    Exit Sub
                End If
            Next I
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
            StatusBar1.Panels(2).Text = "Enter Maximum of 6 integers"
        End If
        If grddatagrid.Col = 3 Then
            StatusBar1.Panels(2).Text = ""
        End If
        If grddatagrid.Col = 4 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 2 Integers"
            If val(grddatagrid.Columns(4).Text) = 0 Then
                grddatagrid.Col = 4
                grddatagrid.SetFocus
                Exit Sub
            End If
        End If
    End If
    If Opt = "add" Then
    If LastCol = 0 Then
        Set Rs = New Recordset
        Rs.Open "select 'X' from rm_cat where catcd='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
           'MsgBox "Category Code already defined!", vbInformation, head
           'GrdDataGrid.Columns(0).Text = ""
           grddatagrid.Col = 0
           grddatagrid.SetFocus
           st = "A"
            Exit Sub
        Else
            If grddatagrid.Columns(0).Text = "" Then
                'MsgBox "Category code can't be empty", vbInformation, head
                grddatagrid.Col = 0
            Else
                grddatagrid.Col = 1
            End If
         End If
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
            StatusBar1.Panels(2).Text = "Enter Maximum of 6 integers"
        End If
        If grddatagrid.Col = 3 Then
            StatusBar1.Panels(2).Text = ""
        End If
        If grddatagrid.Col = 4 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 2 Integers"
        End If
    End If
'If grddatagrid.COL = 3 Then
'        LookUp.clear = True
'        LookUp.query = "select A.tc, a.tchead from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
'        LookUp.Caption = "TC Listing"
'        LookUp.DefCol = "cast(a.tc as varchar)"
'        LookUp.ALIGN = "1500,1500"
'        LookUp.Show vbModal
'        If LookUp.cancel = False Then
'            StatusBar1.Panels(2).Text = ""
'            Set rs = New Recordset
'            rs.Open "select tc ,tchead from fa_tcmas where tc='" & LookUp.Fields(0) & "'", db, adOpenStatic, adLockBatchOptimistic
'            grddatagrid.AllowUpdate = True
'            grddatagrid.EditActive = True
'            grddatagrid.Columns(3).Text = LookUp.Fields(0) 'rs("tc")
'            grddatagrid.Columns(4).Text = LookUp.Fields(1) 'rs("tchead")
'            adoPrimaryRS.AddNew
'            grddatagrid.COL = 0
'            grddatagrid.Visible = True
'            grddatagrid.SetFocus
''           Exit SuB
'
'        Else
'            'Frame3.Visible = False
'            'SSTab1.Visible = True
'            grddatagrid.Visible = True
'            'If Opt = "add" And KslList1.listfield1 = "cast(a.tc as varchar)" Then Exit Sub
'            LookUp.Visible = False
'             'all BUTTON_Click(10)
'        End If
'End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmCategory", vbInformation, head
End Sub
Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

        Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form FrmCategory", vbInformation, head
Screen.MousePointer = 0
End Sub

