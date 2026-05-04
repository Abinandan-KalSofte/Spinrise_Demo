VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form Rm_Waste_Rate 
   Caption         =   "Waste Rate Entry"
   ClientHeight    =   6660
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9435
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6660
   ScaleWidth      =   9435
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   14
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":0000
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Rm_Waste_Rate.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Rm_Waste_Rate.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Rm_Waste_Rate.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5250
         Picture         =   "Rm_Waste_Rate.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Rm_Waste_Rate.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1575
         Picture         =   "Rm_Waste_Rate.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   525
         Picture         =   "Rm_Waste_Rate.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":2E72
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
         Picture         =   "Rm_Waste_Rate.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "Rm_Waste_Rate.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   0
         Picture         =   "Rm_Waste_Rate.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rm_Waste_Rate.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2625
         Picture         =   "Rm_Waste_Rate.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
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
         Left            =   8085
         TabIndex        =   16
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   6555
         TabIndex        =   15
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   17
      Top             =   6360
      Width           =   9435
      _ExtentX        =   16642
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
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
      Left            =   240
      TabIndex        =   11
      Top             =   1320
      Width           =   11100
      _ExtentX        =   19579
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "Rm_Waste_Rate.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4065
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   10830
         _ExtentX        =   19103
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16777215
         ForeColor       =   0
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
      TabIndex        =   13
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   5220
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   615
         Left            =   3480
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4080
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc ksllist1 
         Height          =   3255
         Left            =   1080
         TabIndex        =   18
         Top             =   720
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
         Left            =   45
         TabIndex        =   21
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Waste Rate Entry"
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
      TabIndex        =   22
      Top             =   795
      Width           =   2205
   End
End
Attribute VB_Name = "Rm_Waste_Rate"
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
Dim Code As String
Dim a As Integer
Dim NewRs As Recordset

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure openconnection of Form Waste Rate"
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
        grddatagrid.Enabled = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.Divcode,a.Product_code""Waste Code"",Description,A.Rate""Rate"",Eff_Date from rm_wastedet a,IG_RPRODUCT b where a.product_code=b.product_code and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.Columns(0).Width = 569.7638
        grddatagrid.Columns(2).Width = 3119.811
        grddatagrid.Columns(1).Width = 1214.929
        grddatagrid.Columns(3).Width = 2250.142
        grddatagrid.Columns(0).Visible = False
        grddatagrid.AllowAddNew = True
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).ToolTipText = "Add Record"
        grddatagrid.ScrollBars = dbgBoth
        grddatagrid.Col = 1
        grddatagrid.SetFocus

Case 1
        'modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_wastedet", DB
        
        If Not Rs(0) = 0 Then
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        
        SSTab1.Visible = False
        grddatagrid.Visible = False
        
         '   DB.BeginTrans
            Screen.MousePointer = 0
            LookUp.clear = True
            LookUp.Query = "Select a.Product_code As Code,Description,a.Rate,Eff_date  from rm_wastedet a,ig_rproduct b where a.product_code=b.product_code and a.divcode ='" & Divcode & "'"
            LookUp.Caption = "Waste Rate Listing"
            LookUp.DefCol = "Description"
            LookUp.ALIGN = "2000,2000,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set NewRs = New Recordset
                NewRs.Open "Select a.Divcode,a.Product_code As Code,Description,a.Rate,Eff_date  from rm_wastedet a,ig_rproduct b where a.product_code=b.product_code and a.divcode ='" & Divcode & "' and a.rate='" & LookUp.Fields(2) & "' and a.product_code='" & LookUp.Fields(0) & "' and eff_date='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = NewRs
                SSTab1.Visible = True
                grddatagrid.Visible = True
                grddatagrid.AllowUpdate = True
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Columns(2).Locked = True
        
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        grddatagrid.Columns(4).Locked = False
        
        grddatagrid.Columns(3).Locked = False
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
            Call QUERY_MODE
            End If
            
'
    Else
        MsgBox "no Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
Case 2
        'Deletion
        
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_wastedet", DB
        If Not Rs(0) = 0 Then
            Opt = "del"
            Screen.MousePointer = 0
            LookUp.clear = True
            LookUp.Query = "Select a.Product_code As Code,Description,a.Rate,Eff_date  from rm_wastedet a,ig_rproduct b where a.product_code=b.product_code and a.divcode ='" & Divcode & "'"
            LookUp.Caption = "Waste Rate Listing"
            LookUp.DefCol = "Description"
            LookUp.ALIGN = "2000,2000,2000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Set NewRs = New Recordset
                NewRs.Open "Select a.Divcode,a.Product_code As Code,Description,a.Rate,Eff_date  from rm_wastedet a,ig_rproduct b where a.product_code=b.product_code and a.divcode ='" & Divcode & "' and a.rate='" & LookUp.Fields(2) & "' and a.product_code='" & LookUp.Fields(0) & "' and eff_date='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = NewRs
                SSTab1.Visible = True
                grddatagrid.Visible = True
                grddatagrid.AllowUpdate = True
                grddatagrid.Columns(1).Locked = True
                grddatagrid.Columns(2).Locked = True
        
        'calling addmoddel procedure from module
        Call adddelmod(BUTTON)
        grddatagrid.Columns(4).Locked = False
        
        grddatagrid.Columns(3).Locked = False
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
            Call QUERY_MODE
            End If
            
    '
        Else
            MsgBox "no Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        


Case 3
        'List
''        desc.Caption = "Listing"
''        Set newrs = New Recordset
''        newrs.Open "SELECT * FROM rm_wastedet  WHERE DIVCODE ='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
''        If newrs.RecordCount < 1 Then
''            MsgBox "No Records Found", vbInformation, head
''            Exit Sub
''        End If
''
''        Set RPTV = New Report.ReportView
''        z = FreeFile
''        Close
''        Open "C:\dy11.txt" For Output As #z
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
''Open "C:\lotwise_diff.bat" For Output As #a
''Print #a, "cd\"
''Print #a, "C:"
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
            Call navi(BUTTON)
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
        Call navi(BUTTON)
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
         Call navi(BUTTON)
         Call las(BUTTON)
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.description, vbInformation, head
Case 9
'Save
        If Opt = "add" Then
 '------------------------------------------------------------------------------
          'opt = ""
        If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      If grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text = "" Then
        MsgBox "Waste Can't be Empty", vbInformation, head
        grddatagrid.Col = 1
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      
      
      If val(grddatagrid.Columns(3)) = 0 Then
        MsgBox "Rate Can't be Empty", vbInformation, head
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        Exit Sub
      End If
      
      If grddatagrid.Columns(4) = "" Then
        MsgBox "Effective Date Can't be Empty", vbInformation, head
        grddatagrid.Col = 4
        grddatagrid.SetFocus
        Exit Sub
      End If
       
         
    opt1 = Opt
    Opt = ""
    adoPrimaryRS.MoveFirst
  Do While Not adoPrimaryRS.EOF
    If Trim(grddatagrid.Columns(1).Text) = "" Or Trim(grddatagrid.Columns(1).Text) = Null Then
        adoPrimaryRS.Delete
    Else
        adoPrimaryRS("divcode") = Divcode
    End If
    adoPrimaryRS.MoveNext
  Loop
    If adoPrimaryRS.RecordCount = 0 Then
        Opt = "add"
        BUTTON_Click (10)
        DB.RollbackTrans
        Exit Sub
    End If
  Opt = opt1
  adoPrimaryRS.MoveFirst
  End If
'-----------------------------------------------------------------------
       If Opt = "add" Then
        tmp = Opt
        Opt = ""
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            DB.Execute "insert into rm_wastedet values ('" & Divcode & "','" & grddatagrid.Columns(1).Text & "','" & grddatagrid.Columns(3).Text & "','" & Format(grddatagrid.Columns(4).Text, "yyyy-mm-dd") & "')"
            adoPrimaryRS.MoveNext
        Loop
        Opt = tmp
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
       End If
       If Opt = "mod" Then
         DB.BeginTrans
         grddatagrid.AllowUpdate = True
         DB.Execute "update rm_wastedet set product_code  = '" & grddatagrid.Columns(1).Text & "',rate = " & val(grddatagrid.Columns(3).value) & " , eff_date ='" & Format(grddatagrid.Columns(4).Text, "yyyy-mm-dd") & "'  where product_code  = '" & LookUp.Fields(0) & "' and divcode ='" & Divcode & "' and rate='" & LookUp.Fields(2) & "' and eff_date='" & Format(LookUp.Fields(3), "yyyy-mm-dd") & "'"
         DB.CommitTrans
        MsgBox "Record(s) Modified", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         DB.BeginTrans
         DB.Execute ("delete from rm_wastedet where rate='" & val(grddatagrid.Columns(3).Text) & "' and product_code='" & grddatagrid.Columns(1).Text & "'  and eff_date ='" & Format(grddatagrid.Columns(4).Text, "yyyy-mm-dd") & "' and divcode =" & Divcode & " ")
         On Error GoTo l1:
         DB.CommitTrans
l1:
         MsgBox "Record(s) Deleted", vbInformation, head
       End If
         Opt = " "
         Call QUERY_MODE
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'Cancel
    Select Case Opt
    Case "mod"
        'DB.RollbackTrans
    Case "add"
        'DB.RollbackTrans
    Case "del"
       ' DB.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
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
    BUTTON(0).SetFocus ''''''''''
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Area Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Area Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 1
    End If
    
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click", vbInformation, head

End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

 Select Case KslList1.listfield1
 Case "cntcd"
        SSTab1.Visible = True
        grddatagrid.Visible = True
        grddatagrid.Enabled = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_count a,rm_mixgrp b  where a.mixgrpcd = b.mixgrpcd and a.cntcd = '" & KslList1.Code & "' and b.DivCode = '" & Divcode & "' order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
          Set grddatagrid.DataSource = adoPrimaryRS
          'Set grdDataGrid.DataSource = Adodc1.Recordset
          grddatagrid.Columns(0).Width = 569.7638
          grddatagrid.Columns(1).Width = 3119.811
          grddatagrid.Columns(2).Width = 1214.929
          grddatagrid.Columns(3).Width = 2250.142
          grddatagrid.Columns(0).Locked = True
          grddatagrid.AllowAddNew = False
          grddatagrid.Col = 1
          grddatagrid.Row = 0
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
          grddatagrid.Columns(2).Text = KslList1.Code
          grddatagrid.Columns(3).Text = KslList1.description
If Opt = "add" Then
  If grddatagrid.Col = 2 And Not (Trim(grddatagrid.Columns(2).Text) = "") Then
    adoPrimaryRS.AddNew
    grddatagrid.Col = 1
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
          grddatagrid.Columns(0).Text = KslList1.Code
          grddatagrid.Columns(1).Text = KslList1.description
          grddatagrid.Col = 2
          grddatagrid.SetFocus
    End If
    
    If Opt = "mod" Then
          grddatagrid.Enabled = True
          Frame3.Visible = False
          SSTab1.Visible = True
          grddatagrid.Visible = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select Divcode,Product_code,Rate,Eff_Date from rm_wastedet where product_code ='" & KslList1.Code & "' and a.varcode ='" & KslList1.description & "' order by product_code", DB, adOpenStatic, adLockBatchOptimistic
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
          adoPrimaryRS.Open "select a.slcode  ""Party Code"" ,b.slname ""Party Name"",a.Varcode  ""Variety Code"",a.colorcode  ""Colour Code"",a.Rate  ""Rate/Kg"",a.eff_date ""Effective Date""  from rm_wastedet a,fa_slmas b where a.slcode = b.slcode and a.slcode ='" & KslList1.Code & "' and a.varcode ='" & KslList1.description & "' order by a.slcode", DB, adOpenStatic, adLockBatchOptimistic
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
          grddatagrid.Columns(2).Text = KslList1.Code
          'grdDataGrid.Columns().Text = KslList1.description
          grddatagrid.Col = 3
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
          grddatagrid.Columns(3).Text = KslList1.Code
          'grdDataGrid.Columns().Text = KslList1.description
          grddatagrid.Col = 4
          grddatagrid.SetFocus

 End Select
BUTTON(10).Enabled = True

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

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
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_KeyDown of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call QUERY_MODE
   
    'sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
grddatagrid.Columns(0).Width = 1000
grddatagrid.Columns(2).Width = 2984.882
grddatagrid.Columns(1).Width = 1214.929
grddatagrid.Columns(3).Width = 2250.142



Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0

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
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form Rm_Waste_Rate", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
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
    
End If
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset

' Name verify
On Error GoTo grddatagrid_AfterColUpdate_Error

 If ColIndex = 1 Then
Set Rs = New Recordset
Rs.Open "select description from ig_rproduct where product_code = ltrim( ' " & grddatagrid.Columns(2).Text & " ')", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
MsgBox " Waste name is already exists ", vbInformation, head
grddatagrid.Columns(2).Text = " "
grddatagrid.Col = 1
grddatagrid.SetFocus
Exit Sub
End If

End If

' end name verify


If Opt = "add" Then
If Trim(grddatagrid.Columns(0)) <> "" Then
    BUTTON(9).Enabled = True
End If
End If

Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_AfterColUpdate of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub
Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grddatagrid.Text) = "" Then
        If grddatagrid.Col = 1 Then
           ' MsgBox ("Waste Cannot be empty"), vbInformation, head
            'st2 = "A"
           ' Exit Sub
        End If
        If grddatagrid.Col = 1 Then
           ' MsgBox ("Waste cannot be empty"), vbInformation, head
            st = "A"
        End If
    End If
    If grddatagrid.Columns(4).Text <> "" Then
        If grddatagrid.Col = 4 Then
            If IsDate(grddatagrid.Columns(4).Text) = False Then
                MsgBox "Enter Valid Date", vbInformation, head
                grddatagrid.Columns(4).Text = ""
                grddatagrid.Col = 4
                grddatagrid.SetFocus
            End If
        End If
    End If
Else
    FLGREPET = False
End If

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_KeyDown of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 1 Then
        ToAlphaNumber grddatagrid, 6, KeyAscii
        ToUpCase grddatagrid, KeyAscii
    ElseIf grddatagrid.Col = 3 Then
        ToAlphaNumber grddatagrid, 12, KeyAscii
    ElseIf grddatagrid.Col = 4 Then
        If KeyAscii = 9 And grddatagrid.Columns(4) <> "" Then
        Set NewRs = New Recordset
        NewRs.Open "select product_code from rm_wastedet where divcode ='" & Divcode & "' and product_code ='" & grddatagrid.Columns(1).Text & "' and eff_date ='" & Format(grddatagrid.Columns(4).Text, "yyyy-mm-dd") & "'  ", DB, adOpenStatic
        If NewRs.RecordCount > 0 Then
            MsgBox "Record Already Exists", vbInformation, head
            grddatagrid.Columns(4) = ""
            grddatagrid.Col = 4
            grddatagrid.SetFocus
            Exit Sub
        End If
            grddatagrid.Row = grddatagrid.Row + 1
            'grddatagrid.AllowAddNew
            grddatagrid.Col = 1
            grddatagrid.SetFocus
         End If
    End If
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

On Error GoTo ER1
  grddatagrid.ScrollBars = dbgHorizontal
  Set adoPrimaryRS = New Recordset
  'adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"" from rm_count a,rm_mixgrp b where a.mixgrpcd = b.mixgrpcd order by cntcd", DB, adOpenStatic, adLockReadOnly
    adoPrimaryRS.Open "select a.Divcode,a.Product_code ""Waste Code"",Description,A.Rate,Eff_Date from rm_wastedet a,IG_RPRODUCT b where a.product_code=b.product_code and a.divcode ='" & Divcode & "'  order by a.product_code", DB, adOpenStatic, adLockReadOnly
    Set grddatagrid.DataSource = adoPrimaryRS
    If adoPrimaryRS.BOF Then
    
      MsgBox " No Records Found", vbInformation, head
    End If
    grddatagrid.Columns(0).Width = 705.2599
    grddatagrid.Columns(2).Width = 2984.882
    grddatagrid.Columns(1).Width = 1214.929
    grddatagrid.Columns(3).Width = 2250.142
    grddatagrid.Columns(0).Visible = False

    grddatagrid.ScrollBars = dbgBoth
    'grddatagrid.Enabled = False
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    'Calling newform procedure from Module to disable buttons
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Opt = " "
    Screen.MousePointer = 0
    If adoPrimaryRS.RecordCount = 0 Then
        StatusBar1.Panels(2).Text = "No Records Found"
        Call Norecfound(BUTTON)
    Else
        StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
        Call Recfound(BUTTON)
    End If
    BUTTON(10).Enabled = False
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

If Opt = "add" Or Opt = "mod" Then
If Opt = "add" Then
    If grddatagrid.Col = 0 Then
            Call WasteLookup
    End If
    If LastCol = 1 Then
        Call WasteLookup
    End If
    
    

    
    If Opt = "add" Then
    If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 1 And grddatagrid.Columns(1).Text = "" Then
        grddatagrid.Col = 1
    End If
    End If
    If grddatagrid.Row >= 0 And grddatagrid.Col = 1 Then
            ln = Len(grddatagrid.Columns(1).Text)
            st = "B"
        End If
   End If
End If
If Opt = "add" Then
  If grddatagrid.Col = 4 And Not (Trim(grddatagrid.Columns(4).Text) = "") Then
    adoPrimaryRS.AddNew
    grddatagrid.Col = 1
    'grddatagrid.Row = grddatagrid.Row + 1
    grddatagrid.SetFocus
  End If
End If
   If Opt = "add" Or Opt = "mod" Then
     If grddatagrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Select Waste Code "
     End If
     
     If grddatagrid.Col = 2 Then
          StatusBar1.Panels(2).Text = " Select Waste Description"
     End If
     If grddatagrid.Col = 3 Then
          StatusBar1.Panels(2).Text = " Enter Rate"
     End If
     If grddatagrid.Col = 4 Then
          StatusBar1.Panels(2).Text = "Enter Effective Date"
     End If

End If
End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_RowColChange of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub



Sub WasteLookup()
On Error GoTo WasteLookup_Error

    Set Rs = New Recordset
    Rs.Open "Select Product_code as Waste,Description  from IG_RPRODUCT where product_code='" & grddatagrid.Columns(1).Text & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
            LookUp.clear = True
            LookUp.Query = "Select Product_code as Waste,Description  from IG_RPRODUCT "
            LookUp.Caption = "Waste Listing"
            LookUp.DefCol = "Description"
            LookUp.ALIGN = "3000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                LookUp.clear = True
                grddatagrid.Columns(1).Text = LookUp.Fields(0)
                grddatagrid.Columns(2).Text = LookUp.Fields(1)
                grddatagrid.Col = 3
                grddatagrid.SetFocus
                Exit Sub
            Else
                'DB.RollbackTrans
                grddatagrid.Col = 1
                grddatagrid.SetFocus

            End If
            Exit Sub
    Else
        grddatagrid.Columns(2).Text = Rs("Description")
        grddatagrid.Col = 3
        grddatagrid.SetFocus
    End If

Exit Sub
WasteLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure WasteLookup of Form Rm_Waste_Rate", vbInformation, head
Screen.MousePointer = 0
End Sub
