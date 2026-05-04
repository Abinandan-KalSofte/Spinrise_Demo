VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form Dying_Details 
   Caption         =   "Dying Details"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":0000
         Height          =   510
         Index           =   6
         Left            =   2625
         Picture         =   "Dying_Details.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":0797
         Height          =   510
         Index           =   0
         Left            =   0
         Picture         =   "Dying_Details.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "Dying_Details.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":15E3
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
         Left            =   1050
         Picture         =   "Dying_Details.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   525
         Picture         =   "Dying_Details.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1575
         Picture         =   "Dying_Details.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":26A4
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Dying_Details.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   5250
         Picture         =   "Dying_Details.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":361D
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Dying_Details.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Dying_Details.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Dying_Details.frx":434F
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Dying_Details.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Last Record"
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
         TabIndex        =   2
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
         TabIndex        =   1
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   3
      Top             =   2895
      Width           =   4680
      _ExtentX        =   8255
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
            TextSave        =   "17/08/2006"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "5:55 PM"
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
      Left            =   240
      TabIndex        =   4
      Top             =   1680
      Width           =   11100
      _ExtentX        =   19579
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4065
         Left            =   120
         TabIndex        =   5
         Top             =   120
         Width           =   10830
         _ExtentX        =   19103
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16777152
         ForeColor       =   8388608
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
      Left            =   330
      TabIndex        =   6
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc ksllist1 
         Height          =   3255
         Left            =   1080
         TabIndex        =   11
         Top             =   720
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   615
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   5220
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   4080
         Width           =   1185
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
         TabIndex        =   9
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Dying Rate Details"
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
      Left            =   900
      TabIndex        =   10
      Top             =   795
      Width           =   2430
   End
End
Attribute VB_Name = "Dying_details"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rs As Recordset
Dim Opt As String
Dim FLGREPET As Boolean
Dim st, st1, st2 As String
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim newrs As Recordset

Public Sub openconnection()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        grddatagrid.Enabled = True
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.CNTCD ""Code"" ,a.CNTNAME ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_COUNT a,rm_mixgrp b where 1=2 order by a.CNTCD", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date"" from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and divcode ='" & Divcode & "' and  1=2 order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 569.7638
        grddatagrid.Columns(1).Width = 3119.811
        grddatagrid.Columns(2).Width = 1214.929
        grddatagrid.Columns(3).Width = 2250.142
       ' DB.BeginTrans
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        BUTTON(9).ToolTipText = "Add Record"
        grddatagrid.ScrollBars = dbgBoth
        'grddatagrid.Col = 0
        grddatagrid.SetFocus

Case 1
        'modification
        Set rs = New Recordset
        rs.Open "select count(*) from rm_dyingdet", DB
        
        If Not rs(0) = 0 Then
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        
        SSTab1.Visible = False
        grddatagrid.Visible = False
        

'        Frame3.Visible = True
'        Label15.Caption = "Dying Party List"
'        ksllist1.conn = connectstring
'        ksllist1.table = "rm_dyingdet"
'        ksllist1.listfield1 = "Slcode"
'        ksllist1.listfield2 = "Varcode"
'        Frame3.Visible = True
'        Frame3.ZOrder
            DB.BeginTrans
            Screen.MousePointer = 0
            LookUp.clear = True
            LookUp.Query = "Select slcode,varcode,colorcode  from rm_dyingdet where divcode ='" & Divcode & "'"
            LookUp.Caption = "Dying Rate Details"
            LookUp.DefCol = "slcode"
            LookUp.ALIGN = "2000,2000,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set newrs = New Recordset
                newrs.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and a.divcode ='" & Divcode & "'  and a.slcode ='" & LookUp.Fields(0) & "' and a.varcode ='" & LookUp.Fields(1) & "' and a.colorcode ='" & LookUp.Fields(2) & "'   order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = newrs
                SSTab1.Visible = True
                grddatagrid.Visible = True
                grddatagrid.AllowUpdate = True
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Columns(2).Locked = True
        
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        grddatagrid.Columns(0).Locked = True
        grddatagrid.Columns(3).Locked = True
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).Enabled = True 'Save
        BUTTON(10).Enabled = False
        BUTTON(10).Enabled = True
        BUTTON(9).ToolTipText = "Modify"
        Screen.MousePointer = 0
                
        Else
            SSTab1.Visible = True
            grddatagrid.Visible = True
            DB.RollbackTrans
            Call adddelmod(BUTTON)
            Call query_mode
            End If
            
'        grddatagrid.AllowUpdate = True
'        grddatagrid.Columns(1).Locked = True
'        grddatagrid.Columns(2).Locked = True
'
'        'calling addmoddel procedure from module
'        Call adddelmod(BUTTON)
'        grddatagrid.Columns(0).Locked = True
'        grddatagrid.Columns(3).Locked = True
'        BUTTON(9).Enabled = False 'Save
'        BUTTON(9).Enabled = True 'Save
'        BUTTON(10).Enabled = False
'        BUTTON(10).Enabled = True
'        BUTTON(9).ToolTipText = "Modify"
'        Screen.MousePointer = 0
'
    Else
        MsgBox "no Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
Case 2
        'Deletion
        
        Set rs = New Recordset
        rs.Open "select count(*) from rm_dyingdet", DB
    If Not rs(0) = 0 Then
        DB.BeginTrans
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grddatagrid.Visible = False
        grddatagrid.AllowUpdate = False
            
            Screen.MousePointer = 0
            LookUp.clear = True
            LookUp.Query = "Select slcode,varcode,colorcode  from rm_dyingdet where divcode ='" & Divcode & "'"
            LookUp.Caption = "Dying Rate Details"
            LookUp.DefCol = "Slcode"
            LookUp.ALIGN = "2000,2000,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set newrs = New Recordset
                newrs.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and a.divcode ='" & Divcode & "'  and a.slcode ='" & LookUp.Fields(0) & "' and a.varcode ='" & LookUp.Fields(1) & "' and a.colorcode ='" & LookUp.Fields(2) & "'   order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = newrs
                SSTab1.Visible = True
                grddatagrid.Visible = True
                'Command3.SetFocus
                'Frame3.ZOrder
                
                'DB.BeginTrans
                'Exit Sub
            Else
                Call adddelmod(BUTTON)
                Call query_mode
                SSTab1.Visible = True
                grddatagrid.Visible = True
                'DB.BeginTrans
                Call adddelmod(BUTTON)
                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                BUTTON(9).ToolTipText = "Delete"
                'BUTTON(10).Enabled = False
                Screen.MousePointer = 0
                
             
            End If
        
''        SSTab1.Visible = True
''        grddatagrid.Visible = True
''
''        Call adddelmod(BUTTON)
''        BUTTON(9).Enabled = True 'Save
''        BUTTON(10).Enabled = True
''        BUTTON(9).ToolTipText = "Delete"
''        Screen.MousePointer = 0
        
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
        'List
''        desc.Caption = "Listing"
''        Set newrs = New Recordset
''        newrs.Open "SELECT * FROM RM_DYINGDET  WHERE DIVCODE ='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
''        If newrs.RecordCount < 1 Then
''            MsgBox "No Records Found", vbInformation, head
''            Exit Sub
''        End If
''
''        Set RPTV = New Report.ReportView
''        z = FreeFile
''        Close
''        Open "d:\dy11.txt" For Output As #z
''
''
''
''
''
''
''        Do While newrs.EOF
''
''
''        newrs.MoveNext
''        Loop
''
''
''        Close #a
''a = FreeFile
''Open "d:\lotwise_diff.bat" For Output As #a
''Print #a, "cd\"
''Print #a, "d:"
''Print #a, "cd\"
''Print #a, "type lotwise_diff.txt>prn"
''Close #a

''        Set dv1 = New DataEnvironment1
''        dv1.Connection1.ConnectionString = connectstring
''        Set cn = New Connection
''        cn.CursorLocation = adUseClient
''    If cn.State = 1 Then
''        cn.Close
''    End If
''        cn.ConnectionString = "provider=msdatashape;" & connectstring
''    If cn.State = adStateclose Then
''        cn.Open
''    End If
''        Call repproc2(rptcount)
''    If dv1.rsCommand1.State = adStateOpen Then
''        dv1.rsCommand1.Close
''    End If
''        dv1.rsCommand1.Open "select a.cntcd,a.cntname,a.mixgrpcd,b.mixgrpname from rm_count a,rm_mixgrp b where a.mixgrpcd = b.mixgrpcd  order by cntcd", cn
''        'SHAPE {select * from rm_mixgrp}  AS Command2 APPEND ({select * from rm_count}  AS Command5 RELATE 'MIXGRPCD' TO 'MIXGRPCD') AS Command5
''    If dv1.rsCommand1.RecordCount <> 0 Then
''        Set rptcount.DataSource = dv1
''        rptcount.Show
''        desc.Caption = "Query"
''    Else
''        MsgBox "No  Records Found", vbInformation, head
''        Exit Sub
''    End If
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
          BUTTON(10).Enabled = False
          Beep
          Exit Sub
GoFirstError:
       MsgBox err.description, vbInformation, head
            
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
   MsgBox err.description, vbInformation, head
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
   MsgBox err.description, vbInformation, head
       
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
       MsgBox err.description, vbInformation, head
Case 9
'Save
        If Opt = "add" Then
 '------------------------------------------------------------------------------
          'opt = ""
        If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.COL = 0
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Party Name Can't be Empty", vbInformation, head
        grddatagrid.COL = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) = "" Then
        MsgBox "Variety Can't be Empty", vbInformation, head
        grddatagrid.COL = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" And grddatagrid.Columns(2) = "" And grddatagrid.Columns(3) = "" Then
        MsgBox "Colour Code Can't be Empty", vbInformation, head
        grddatagrid.COL = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(2) = "" And grddatagrid.Columns(3) = "" And grddatagrid.Columns(4) = "" Then
        MsgBox "Rate Can't be Empty", vbInformation, head
        grddatagrid.COL = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(2) = "" And grddatagrid.Columns(3) = "" And grddatagrid.Columns(5) = "" Then
        MsgBox "Effective Date Can't be Empty", vbInformation, head
        grddatagrid.COL = 2
        grddatagrid.SetFocus
        Exit Sub
      End If
       
         
         
    adoPrimaryRS.MoveFirst
  Do While Not adoPrimaryRS.EOF
    If Trim(grddatagrid.Columns(0).Text) = "" Or Trim(grddatagrid.Columns(0).Text) = Null Then
        adoPrimaryRS.Delete
    ElseIf grddatagrid.Columns(1).Text = "" Or grddatagrid.Columns(1).Text = Null Then
      MsgBox "Please Enter the Party name", vbInformation, head
      grddatagrid.COL = 1
      Screen.MousePointer = 0
      grddatagrid.SetFocus
      Exit Sub
    Else
'        adoprimaryrs("Mixing Group Name") = grdDataGrid.Columns(3).Text
        
    End If
    adoPrimaryRS.MoveNext
  Loop
If adoPrimaryRS.RecordCount = 0 Then
    Opt = "add"
    BUTTON_Click (10)
    'db.RollbackTrans
    Exit Sub
End If
  Opt = "add"
  adoPrimaryRS.MoveFirst
  End If
'-----------------------------------------------------------------------
  If Opt = "add" Or Opt = "mod" Then
           If Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Party code cannot be empty", vbInformation, head
            grddatagrid.COL = 0
            grddatagrid.SetFocus
            Exit Sub
          End If
          
          If Trim(grddatagrid.Columns(1).Text) = "" Then
            MsgBox "Party Name cannot be empty", vbInformation, head
            grddatagrid.COL = 1
            grddatagrid.SetFocus
            Exit Sub
          End If
          
          If Trim(grddatagrid.Columns(2).Text) = "" Then
            MsgBox "Variety code cannot be empty", vbInformation, head
            grddatagrid.COL = 2
            grddatagrid.SetFocus
            Exit Sub
          End If
          
          If Trim(grddatagrid.Columns(3).Text) = "" Then
            MsgBox "Colour code cannot be empty", vbInformation, head
            grddatagrid.COL = 3
            grddatagrid.SetFocus
            Exit Sub
          End If
          If Trim(grddatagrid.Columns(4).Text) = "" Then
            MsgBox "Rate cannot be empty", vbInformation, head
            grddatagrid.COL = 4
            grddatagrid.SetFocus
            Exit Sub
          End If
          If Trim(grddatagrid.Columns(5).Text) = "" Then
            MsgBox "Effective Date cannot be empty", vbInformation, head
            grddatagrid.COL = 5
            grddatagrid.SetFocus
            Exit Sub
          End If
          
          If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
           On Error Resume Next
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           DB.CommitTrans
           MsgBox "Record(s) Added", vbInformation, head
           Opt = ""
          Else
          If Trim(grddatagrid.Columns(0).Text) <> "" Then
            If Trim(grddatagrid.Columns(1).Text) = "" Then
                StatusBar1.Panels(2).Text = "Mixing Count Name cannot be empty"
                grddatagrid.COL = 1
                grddatagrid.SetFocus
                Screen.MousePointer = 0
                Exit Sub
             Else
               StatusBar1.Panels(2).Text = ""
            End If
         End If
       End If
     End If
       If Opt = "add" Then
        tmp = Opt
        Opt = ""
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
        DB.Execute "insert into rm_dyingdet values ('" & Divcode & "','" & grddatagrid.Columns(0).Text & "','" & grddatagrid.Columns(2).Text & "','" & grddatagrid.Columns(3).Text & "'," & grddatagrid.Columns(4).Value & ",'" & Format(grddatagrid.Columns(5).Text, "yyyy-mm-dd") & "')"
        'adoprimaryrs.UpdateBatch adAffectAllChapters
        adoPrimaryRS.MoveNext
        Loop
        Opt = tmp
        'DB.CommitTrans
        MsgBox "Record(s) Added", vbInformation, head
       End If
       If Opt = "mod" Then
         grddatagrid.AllowUpdate = True
         'adoprimaryrs.UpdateBatch adAffectAllChapters
         DB.Execute "update rm_dyingdet set varcode  = '" & grddatagrid.Columns(2).Text & "',colorcode  = '" & grddatagrid.Columns(3).Text & "',rate = " & grddatagrid.Columns(4).Value & " , eff_date ='" & Format(grddatagrid.Columns(5).Text, "yyyy-mm-dd") & "'  where slcode  = '" & grddatagrid.Columns(0).Text & "' and divcode ='" & Divcode & "' "
         DB.CommitTrans
                MsgBox "Record Modified!", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         
         DB.Execute ("delete from rm_dyingdet where slcode='" & grddatagrid.Columns(0).Text & "' and varcode ='" & grddatagrid.Columns(2).Text & "' and colorcode ='" & grddatagrid.Columns(3).Text & "' and eff_date ='" & Format(grddatagrid.Columns(5).Text, "yyyy-mm-dd") & "' and divcode =" & Divcode & " ")
         DB.CommitTrans
         MsgBox "Record Deleted", vbInformation, head
       End If
         Opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
'    Select Case Opt
'    Case "mod"
'        DB.RollbackTrans
'    Case "add"
'        DB.RollbackTrans
'    Case "del"
'        DB.RollbackTrans
'    End Select
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
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If err = -2147217900 Then
        MsgBox "This Area Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf err = -2147217842 Then
        MsgBox "Area Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.COL = 0
    End If
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)
End Sub

Private Sub Command3_Click()
 Select Case ksllist1.listfield1
 Case "cntcd"
        SSTab1.Visible = True
        grddatagrid.Visible = True
        grddatagrid.Enabled = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_count a,rm_mixgrp b  where a.mixgrpcd = b.mixgrpcd and a.cntcd = '" & ksllist1.Code & "' order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoPrimaryRS
          'Set grdDataGrid.DataSource = Adodc1.Recordset
          grddatagrid.Columns(0).Width = 569.7638
          grddatagrid.Columns(1).Width = 3119.811
          grddatagrid.Columns(2).Width = 1214.929
          grddatagrid.Columns(3).Width = 2250.142
          grddatagrid.Columns(0).Locked = True
          grddatagrid.AllowAddNew = False
          grddatagrid.COL = 1
          grddatagrid.row = 0
          grddatagrid.SetFocus
          BUTTON(9).Enabled = True 'Save
          If Opt = "del" Then
          BUTTON(9).SetFocus
          End If
          Frame3.Visible = False
 Case "mixgrpcd"
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          grddatagrid.Columns(2).Text = ksllist1.Code
          grddatagrid.Columns(3).Text = ksllist1.description
If Opt = "add" Then
  If grddatagrid.COL = 2 And Not (Trim(grddatagrid.Columns(2).Text) = "") Then
    adoPrimaryRS.AddNew
    grddatagrid.COL = 0
    'grddatagrid.Row = grddatagrid.Row + 1
    grddatagrid.SetFocus
  End If
End If


Case "Slcode"
    If Opt = "add" Then
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          grddatagrid.Columns(0).Text = ksllist1.Code
          grddatagrid.Columns(1).Text = ksllist1.description
          grddatagrid.COL = 2
          grddatagrid.SetFocus
    End If
    
    If Opt = "mod" Then
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and a.slcode ='" & ksllist1.Code & "' and a.varcode ='" & ksllist1.description & "' order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoPrimaryRS
          Set grddatagrid.DataSource = adoPrimaryRS
          grddatagrid.SetFocus
    End If
    
    If Opt = "del" Then
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and a.slcode ='" & ksllist1.Code & "' and a.varcode ='" & ksllist1.description & "' order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoPrimaryRS
          grddatagrid.SetFocus
    End If
    
If Opt = "add" Then
'  If grdDataGrid.COL = 1 And Not (Trim(grdDataGrid.Columns(1).Text) = "") Then
'    adoPrimaryRS.AddNew
'    grdDataGrid.COL = 0
'    grdDataGrid.SetFocus
'  End If
End If
Case "Varcode"
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          grddatagrid.Columns(2).Text = ksllist1.Code
          'grdDataGrid.Columns().Text = KslList1.description
          grddatagrid.COL = 3
          grddatagrid.SetFocus
If Opt = "add" Then
'  If grdDataGrid.COL = 1 And Not (Trim(grdDataGrid.Columns(1).Text) = "") Then
'    adoPrimaryRS.AddNew
'    grdDataGrid.COL = 0
'    grdDataGrid.SetFocus
'  End If
End If

Case "ColorCode"
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          grddatagrid.Columns(3).Text = ksllist1.Code
          'grdDataGrid.Columns().Text = KslList1.description
          grddatagrid.COL = 4
          grddatagrid.SetFocus

 End Select
BUTTON(10).Enabled = True
End Sub


Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
   
    'sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
grddatagrid.Columns(0).Width = 1000
grddatagrid.Columns(1).Width = 2984.882
grddatagrid.Columns(2).Width = 1214.929
grddatagrid.Columns(3).Width = 2250.142



End Sub

Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1300
'  grddatagrid.Left = 1400
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 3000
'  SSTab1.Height = Me.Height - 3000
'  grddatagrid.Height = SSTab1.Height - 300
'  grddatagrid.Width = SSTab1.Width - 200
   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
If Opt = "add" Then
'  If grddatagrid.COL = 2 Then
'    If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
'      adoPrimaryRS.AddNew
'      grddatagrid.COL = 0
'      grddatagrid.SetFocus
'     End If
'   End If
    If grddatagrid.COL = 0 Then
        a = adoPrimaryRS.AbsolutePosition
        Code = adoPrimaryRS(0)
        Opt = " "
        adoPrimaryRS.MoveFirst
        For i = 1 To adoPrimaryRS.RecordCount - 1
            If adoPrimaryRS(0).Value = Code And Not adoPrimaryRS.AbsolutePosition = a Then
                MsgBox "Mixing Count Code Already Defined!", vbInformation, head
                adoPrimaryRS.AbsolutePosition = a
                adoPrimaryRS(0).Value = ""
                grddatagrid.COL = 0
                grddatagrid.SetFocus
                Opt = "add"
                Exit Sub
            End If
            adoPrimaryRS.MoveNext
        Next i
        Opt = "add"
     End If
End If
If Opt = "mod" Then
    If grddatagrid.COL = 2 Then
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Frame3.Visible = True
        Label15.Caption = "Mixgroup List"
        ksllist1.conn = connectstring
        ksllist1.table = "rm_mixgrp"
        ksllist1.listfield1 = "mixgrpcd"
        ksllist1.listfield2 = "mixgrpname"
        Frame3.Visible = True
        Frame3.ZOrder
        grddatagrid.AllowUpdate = True
    End If
End If
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim rs As Recordset

' Name verify
 If ColIndex = 1 Then
Set rs = New Recordset
rs.Open "select cntname from rm_count where cntname = ltrim( ' " & grddatagrid.Columns(1).Text & " ')", DB, adOpenStatic

If rs.RecordCount <> 0 Then
MsgBox " count name is already exists ", vbInformation, head
grddatagrid.Columns(1).Text = " "
grddatagrid.COL = 0
grddatagrid.SetFocus
Exit Sub
End If

End If

' end name verify


        If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set rs = New Recordset
            rs.Open "select 'X'  from rm_count where cntcd='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not rs.BOF Then
                MsgBox "Mixing Count Code already defined!", vbInformation, head
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
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grddatagrid.Text) = "" Then
        If grddatagrid.COL = 1 Then
            MsgBox ("Party Code Cannot be empty"), vbInformation, head
            st2 = "A"
            Exit Sub
        End If
        If grddatagrid.COL = 0 Then
            MsgBox ("Party Code cannot be empty"), vbInformation, head
            st = "A"
        End If
    End If
    If grddatagrid.Columns(5).Text <> "" Then
        If grddatagrid.COL = 5 Then
            If IsDate(grddatagrid.Columns(5).Text) = False Then
                MsgBox "Enter Valid Date", vbInformation, head
                grddatagrid.Columns(5).Text = ""
                grddatagrid.COL = 5
                grddatagrid.SetFocus
            End If
        End If
    End If
Else
    FLGREPET = False
End If
If Opt = "add" Or Opt = "mod" Then
    'grddatagrid.Columns(3).Locked = True
End If
End Sub
Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
If Opt = "add" Or Opt = "mod" Then
If grddatagrid.COL = 0 Then
    ToAlphaNumber grddatagrid, 10, KeyAscii
    ToUpCase grddatagrid, KeyAscii
   
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
   
ElseIf grddatagrid.COL = 1 Then
    ToAlphaNumber grddatagrid, 20, KeyAscii
    ToUpCase grddatagrid, KeyAscii
ElseIf grddatagrid.COL = 2 Then
    'ToAlphaNumber grdDataGrid, 5, KeyAscii
    'Initials grddatagrid, KEYASCII
ElseIf grddatagrid.COL = 5 Then
    If KeyAscii = 9 And grddatagrid.Columns(5) <> "" Then
    Set newrs = New Recordset
    newrs.Open "select slcode from rm_dyingdet where divcode ='" & Divcode & "' and slcode ='" & grddatagrid.Columns(0).Text & "' and varcode ='" & grddatagrid.Columns(2).Text & "'  and colorcode ='" & grddatagrid.Columns(3).Text & "' and eff_date ='" & Format(grddatagrid.Columns(5).Text, "yyyy-mm-dd") & "'  ", DB, adOpenStatic
    
    If newrs.RecordCount > 0 Then
        MsgBox "Record Already Exists", vbInformation, head
        grddatagrid.Columns(5) = ""
        grddatagrid.COL = 5
        grddatagrid.SetFocus
        Exit Sub
    End If
        grddatagrid.row = grddatagrid.row + 1
        'grddatagrid.AllowAddNew
        grddatagrid.COL = 0
        grddatagrid.SetFocus
     End If
End If
End If
    If Opt = "add" Then
    If grddatagrid.COL = 2 And grddatagrid.Columns(0).Text <> "" Then

''        Frame3.Visible = True
''        Label15.Caption = "Variety Listing"
''        ksllist1.conn = connectstring
''        ksllist1.table = "rm_var"
''        ksllist1.listfield1 = "Varcode"
''        ksllist1.listfield2 = "Varname"
''        Frame3.Visible = True
''        Frame3.ZOrder
            LookUp.clear = True
            LookUp.Query = "Select varcode,varname  from rm_var "
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "varcode"
            LookUp.ALIGN = "3000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grddatagrid.Columns(2).Text = LookUp.Fields(0)
                'grddatagrid.Columns(1).Text = LookUp.Fields(1)
                LookUp.clear = True
                grddatagrid.COL = 3
                grddatagrid.SetFocus
                Exit Sub
            Else
                grddatagrid.COL = 2
                grddatagrid.SetFocus
            End If
            

    End If
    End If
    
    If Opt = "mod" Or Opt = "add" Then
    If grddatagrid.COL = 3 And grddatagrid.Columns(2).Text <> "" Then
''        Frame3.Visible = True
''        Label15.Caption = "Colour Listing"
''        ksllist1.conn = connectstring
''        ksllist1.table = "rm_color"
''        ksllist1.listfield1 = "ColorCode"
''        ksllist1.listfield2 = "ColorName"
''        Frame3.Visible = True
''        Frame3.ZOrder
            LookUp.clear = True
            LookUp.Query = "Select colorcode,colorname  from rm_color "
            LookUp.Caption = "Colour Listing"
            LookUp.DefCol = "colorcode"
            LookUp.ALIGN = "3000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grddatagrid.Columns(3).Text = LookUp.Fields(0)
                grddatagrid.COL = 4
                grddatagrid.SetFocus
            Else
                grddatagrid.COL = 3
                grddatagrid.SetFocus
            End If
            Exit Sub

    End If
    
End If
End Sub

Public Sub query_mode()
On Error GoTo ER1
  grddatagrid.ScrollBars = dbgHorizontal
  Set adoPrimaryRS = New Recordset
  'adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_count a,rm_mixgrp b where a.mixgrpcd = b.mixgrpcd order by cntcd", DB, adOpenStatic, adLockReadOnly
  adoPrimaryRS.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_dyingdet a,fa_slmas b where a.slcode = b.slcode and divcode ='" & Divcode & "'  order by a.slcode", DB, adOpenStatic, adLockReadOnly
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    grddatagrid.Columns(0).Width = 705.2599
grddatagrid.Columns(1).Width = 2984.882
grddatagrid.Columns(2).Width = 1214.929
grddatagrid.Columns(3).Width = 2250.142


    grddatagrid.ScrollBars = dbgBoth
    'grddatagrid.Enabled = False
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    'Calling newform procedure from Module to disable buttons
    Call NEWFORM(BUTTON)
    Opt = " "
    Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
    BUTTON(10).Enabled = False
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    Exit Sub
ER1:
  If err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
If Opt = "add" Or Opt = "mod" Then
If Opt = "add" Then
    If grddatagrid.COL = 1 Then
        '''Frame3.Visible = True
''        Label15.Caption = "Party Listing"
''        ksllist1.conn = connectstring
''        ksllist1.table = "fa_slmas where slcode like 'C%'"
''        ksllist1.listfield1 = "Slcode"
''        ksllist1.listfield2 = "Slname"
''        Frame3.Visible = True
''        Frame3.ZOrder

            
            LookUp.clear = True
            LookUp.Query = "Select slcode,slname  from fa_slmas where slcode like 'C1%'"
            LookUp.Caption = "Party Rate Details"
            LookUp.DefCol = "Slname"
            LookUp.ALIGN = "3000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                LookUp.clear = True
                grddatagrid.Columns(0).Text = LookUp.Fields(0)
                grddatagrid.Columns(1).Text = LookUp.Fields(1)
                grddatagrid.COL = 2
                grddatagrid.SetFocus
                Exit Sub
            Else
                'DB.RollbackTrans
                grddatagrid.COL = 0
                grddatagrid.SetFocus

            End If
            Exit Sub
    End If
    
   If grddatagrid.COL = 2 Then
'        Frame3.Visible = True
'        Label15.Caption = "Colour Listing"
'        ksllist1.conn = connectstring
'        ksllist1.table = "rm_color"
'        ksllist1.listfield1 = "ColorCode"
'        ksllist1.listfield2 = "ColorName"
'        Frame3.Visible = True
'        Frame3.ZOrder
    End If

    
    If Opt = "add" Then
    If grddatagrid.row >= 0 Then
    If grddatagrid.COL = 1 And grddatagrid.Columns(0).Text = "" Then
        grddatagrid.COL = 0
    End If
    End If
    If grddatagrid.row >= 0 And grddatagrid.COL = 1 Then
        ln = Len(grddatagrid.Columns(0).Text)
        'For i = 1 To ln
          '      t = Asc(Mid$(grdDataGrid.Columns(0).Text, i, 1))
                'If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
         '           grdDataGrid.Col = 0
                    'Exit Sub
                'End If
                'Next i
                st = "B"
                'End If
'        If opt = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
        End If
   End If
End If
   If Opt = "add" Or Opt = "mod" Then
     If grddatagrid.COL = 0 Then
          StatusBar1.Panels(2).Text = "Select Party Code "
     End If
     If grddatagrid.COL = 1 Then
          'StatusBar1.Panels(2).Text = " Enter Maximum of 20 Characters"
     End If
     If grddatagrid.COL = 2 Then
          StatusBar1.Panels(2).Text = " Select Variety Code"
     End If
     If grddatagrid.COL = 3 Then
          StatusBar1.Panels(2).Text = " Select Colour Code"
     End If
     If grddatagrid.COL = 4 Then
          StatusBar1.Panels(2).Text = "Enter Rate"
     End If

End If
End If
End Sub

Private Sub ksllist1_GotFocus()
Command3.Default = True
End Sub


