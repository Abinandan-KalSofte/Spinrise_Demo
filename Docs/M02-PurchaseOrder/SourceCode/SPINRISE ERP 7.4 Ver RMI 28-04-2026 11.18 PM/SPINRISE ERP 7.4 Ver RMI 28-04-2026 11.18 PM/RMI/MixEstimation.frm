VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form MixEstimation 
   Caption         =   "Mixing Estimation"
   ClientHeight    =   7215
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9675
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7215
   ScaleWidth      =   9675
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   8280
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5880
      Picture         =   "MixEstimation.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   585
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   9
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":0442
         Height          =   510
         Index           =   6
         Left            =   3225
         Picture         =   "MixEstimation.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":0BD9
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "MixEstimation.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":1276
         Height          =   510
         Index           =   5
         Left            =   2700
         Picture         =   "MixEstimation.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":1A25
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
         Left            =   1080
         Picture         =   "MixEstimation.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Delete (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1605
         Picture         =   "MixEstimation.frx":20CB
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":2462
         Height          =   510
         Index           =   7
         Left            =   3750
         Picture         =   "MixEstimation.frx":28AC
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":2BFC
         Height          =   510
         Index           =   11
         Left            =   6480
         Picture         =   "MixEstimation.frx":3046
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":33DB
         Height          =   510
         Index           =   9
         Left            =   4815
         Picture         =   "MixEstimation.frx":36E5
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "MixEstimation.frx":3A87
         Height          =   510
         Index           =   10
         Left            =   5355
         Picture         =   "MixEstimation.frx":3D91
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":410D
         Height          =   510
         Index           =   8
         Left            =   4275
         Picture         =   "MixEstimation.frx":4557
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":48B9
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "MixEstimation.frx":4BC3
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "MixEstimation.frx":4F3D
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "MixEstimation.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Find (Ctrl F)"
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
         Left            =   7275
         TabIndex        =   23
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
         Left            =   8805
         TabIndex        =   22
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   8
      Top             =   6915
      Width           =   9675
      _ExtentX        =   17066
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12982
            MinWidth        =   12982
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "01/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "07:50 PM"
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
      TabIndex        =   0
      Top             =   1300
      Width           =   8445
      _ExtentX        =   14896
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "MixEstimation.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   1
         Top             =   135
         Width           =   8205
         _ExtentX        =   14473
         _ExtentY        =   7170
         _Version        =   393216
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483630
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
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
      Left            =   600
      TabIndex        =   2
      Top             =   1440
      Visible         =   0   'False
      Width           =   8865
      Begin KSLDESCOCX.Ksldesc KslList1 
         Height          =   3210
         Left            =   585
         TabIndex        =   3
         Top             =   810
         Width           =   7125
         _ExtentX        =   12568
         _ExtentY        =   5662
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4920
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   4050
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   615
         Left            =   3180
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   4050
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
         Left            =   105
         TabIndex        =   6
         Top             =   660
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mixing Estimation"
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
      Left            =   1020
      TabIndex        =   7
      Top             =   930
      Width           =   2385
   End
End
Attribute VB_Name = "MixEstimation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Opt As String
Dim Rs As Recordset
Dim FLGREPET As Boolean
Dim CntCode As String
Dim cntnam As String
Dim st, st1, st2 As String
Dim I As Integer
Dim DB As Connection
Dim TmpDb As Connection
Dim Code As String
Dim a As Integer
Dim keys As Integer
Dim FLG As String

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Waste Estimation"
End Sub

Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error
intervalMinutes = -1
grdDataGrid.Columns(0).Locked = False
grdDataGrid.Columns(1).Locked = False
grdDataGrid.Columns(2).Locked = False
grdDataGrid.Columns(3).Locked = False
grdDataGrid.Columns(4).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub disablcontls()
On Error GoTo disablcontls_Error

grdDataGrid.Columns(0).Locked = True
grdDataGrid.Columns(1).Locked = True
grdDataGrid.Columns(2).Locked = True
grdDataGrid.Columns(3).Locked = True
grdDataGrid.Columns(4).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub bindcontls()

On Error GoTo bindcontls_Error

    Set grdDataGrid.DataSource = adoPrimaryRS

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
If Opt <> "add" Then
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        If Record_Exists("rm_MixGrp", "Please Define the Mix Group ") = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        DB.BeginTrans
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode order by a.MixGrp", DB, adOpenStatic, adLockReadOnly
        adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
        grdDataGrid.Columns(4).Alignment = dbgRight
        grdDataGrid.Columns(4).Width = 750
        grdDataGrid.Columns(3).Width = 2564.788 - 250
        grdDataGrid.Columns(2).Width = 915.0237
        grdDataGrid.Columns(1).Width = 3179.906 - 500
        grdDataGrid.Columns(0).Width = 1140.095
        
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Columns(1).Locked = True
        grdDataGrid.Columns(2).Locked = False
        grdDataGrid.Columns(3).Locked = True
        grdDataGrid.Columns(4).Locked = False
        grdDataGrid.Columns(4).Width = 750
        grdDataGrid.Columns(3).Width = 2564.788 - 250
        grdDataGrid.Columns(2).Width = 915.0237
        grdDataGrid.Columns(1).Width = 3179.906 - 500
        grdDataGrid.Columns(0).Width = 1140.095
        adoPrimaryRS.AddNew
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Add Record"
        StatusBar1.Panels(2).Text = "Addition"
        'grddatagrid.ScrollBars = dbgBoth
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
Case 1, 2, 4
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_mixingestimate ", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
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
       
        StatusBar1.Panels(2).Text = "Select Mix Group Code from the list for Modification"
        'LookUp.clear = True
'        LookUp.Query = "select DISTINCT  a.MixGrp ""Code"",b.MixGrpname""Name"" from rm_mixingestimate a,rm_MixGrp b where a.MixGrp = b.MixGRpCd"
'        LookUp.DefCol = "Name"
'        LookUp.ALIGN = "2000,3000"
'        LookUp.Caption = "Mixing Group Listing"
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            Set Rs = New Recordset
'            Rs.Open "select a.MixGrp ,b.MixGrpname from rm_mixingestimate a, rm_MixGrp b  where a.MixGrp=b.MixGrpCd and a.MixGrp='" & LookUp.Fields(0) & "' Order by a.MixGrp", DB, adOpenStatic, adLockBatchOptimistic
'            mixgrpcode = Rs("MixGrp")
'            MixGrpname = Rs("MixGrpName")
            
            LookUp.Clear = True
            'LookUp.Query = "select a.MixGrp ""Code"",b.MixGrpname""Name"",a.varcode""Code"",b.varname""Name"" from rm_mixingEstimate a, rm_var b where a.varcode=b.varcode and a.MixGrp='" & mixgrpcode & "'"
            LookUp.query = "select a.MixGrp ""MixGroup Code"",c.MixGrpname""MixGroup Name"",a.varcode""VarietyCode"",b.varname""VarietyName"" from rm_mixingEstimate a, rm_var b,rm_mixgrp c where a.varcode=b.varcode and  a.MixGrp = c.MixGRpCd"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2000,3000,2000,3000"
            LookUp.Caption = "Mixing Group Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                mixgrpcode = LookUp.Fields(0)
                MixGrpname = LookUp.Fields(1)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode and  a.MixGrp='" & mixgrpcode & "' and  a.varcode='" & LookUp.Fields(2) & "'", DB, adOpenStatic, adLockBatchOptimistic
                Call bindcontls
                grdDataGrid.Columns(4).Width = 750
                grdDataGrid.Columns(3).Width = 2564.788 - 250
                grdDataGrid.Columns(2).Width = 915.0237
                grdDataGrid.Columns(1).Width = 3179.906 - 500
                grdDataGrid.Columns(0).Width = 1140.095
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = True
                grdDataGrid.Columns(2).Locked = True
                grdDataGrid.Columns(3).Locked = True
                grdDataGrid.Columns(4).Locked = False
                grdDataGrid.Columns(4).Alignment = dbgRight
                
                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                    Call disablcontls
                    BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
                Call adddelmod(BUTTON)
                If Opt = "fnd" Then
                    BUTTON(9).Enabled = False
                End If
                BUTTON(9).ToolTipText = "Modify"
                grdDataGrid.Columns(4).Locked = False
                grdDataGrid.Col = 4
                grdDataGrid.SetFocus
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        Else
            Call BUTTON_Click(10)
        End If
'    Else
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
    Screen.MousePointer = 0
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_mixingestimate ", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        Label15.Caption = "Count"
        Ksllist1.conn = connectstring
        Ksllist1.Table = "rm_mixingestimate a,rm_MixGrp b where a.MixGrp = b.MixGrpcd"
        
        Ksllist1.listfield1 = "a.MixGrp"
        Ksllist1.listfield2 = "b.MixGrpname"
        ' grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        Ksllist1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(4).Enabled = True
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Mix Group Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
If Record_Exists("rm_mixingestimate") = False And Record_Exists("rm_var") = False And Record_Exists("rm_cntvar") = False Then Exit Sub
            Screen.MousePointer = 11
            Set rep = New Report.ReportView
            Dim a As Integer
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
            'Open "c:\mixest.txt" For Output As #a
             Open KALFOLDERDATA & "\mixest.TXT" For Output As #a
            Call header(pg, co, a)
             For I = 1 To Rs.RecordCount
             '  Print #a, Space(5) + "Group  " + Space(2) + Padr("Group Name", 25, " ") + Space(5) + "Variety" + Space(2) + Padr("Variety Name", 20, " ") + "No. Of Days"
                Print #a, Space(5) + Padr(Rs(0), 7, " ") + Space(2) + Padr(Rs(1), 25, " ") + Space(3) + Padr(Rs(2), 7, " ") + Space(2) + Padr(Rs(3), 20, " ") + Padl(Rs(4), 11, "")
                Print #a,
                c = c + 2
                    If c > PageLen Then
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Call header(pg, co, a)
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(5) + String(77, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\mixest.bat" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type mixest.txt > prn"
'            Close #a
'            Rep.txtfile = "c:\mixest.txt"
'            Rep.Batfile = "c:\mixest.bat"
            a = FreeFile
            Call KALBATPROCESS("mixest")
            Screen.MousePointer = 0

'Case 4
'
'        'Find
'        Set Rs = New Recordset
'        Rs.Open "select count(*) from rm_mixingestimate a,rm_MixGrp b where a.MixGrp = b.MixGrpcd", DB
'        If Not Rs(0) = 0 Then
'        Screen.MousePointer = 11
'        Opt = "fnd"
'        desc.Caption = "Find"
'        Label15.Caption = "Count"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_mixingestimate a,rm_MixGrp b where a.MixGrp = b.MixGrpcd"
'
'        KslList1.listfield1 = "a.MixGrp"
'        KslList1.listfield2 = "b.MixGrpname"
'        flg = "y"
'        ' grddatagrid.AllowUpdate = False
'        Frame3.Visible = True
'        Command3.Default = True
'        Frame3.ZOrder
'        KslList1.SetFocus
'        'db.BeginTrans
'        Call adddelmod(BUTTON)
'        'BUTTON(9).Enabled = False 'Save
'        'BUTTON(10).Enabled = False
'       ' BUTTON(9).Enabled = False
'        StatusBar1.Panels(2).Text = "Select Mix Group Code from the list for Find"
'        Screen.MousePointer = 0
'        Frame3.Visible = True
'    Else
'        MsgBox "No Record Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
'
Case 5
'first
         desc.Caption = "Query"
         BUTTON(4).Enabled = True
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
            'BUTTON(4).Enabled = True
          Beep
          Exit Sub
GoFirstError:
       MsgBox Err.Description, vbInformation, head
            
Case 6
'next
            desc.Caption = "Query"
            BUTTON(4).Enabled = True
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
                'BUTTON(4).Enabled = True
                'Call NEX(BUTTON)
                'moved off the end so go back
                adoPrimaryRS.MoveLast
            End If
            'show the current record
            Call navi(BUTTON)
              BUTTON(4).Enabled = True
            Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head
Case 7
 'previous
        desc.Caption = "Query"
        BUTTON(4).Enabled = True
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
            
            'Call PREV(BUTTON)
           adoPrimaryRS.MoveFirst
        End If
        'show the current record
        Call navi(BUTTON)
        BUTTON(4).Enabled = True
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
         Call navi(BUTTON)
         Call las(BUTTON)
           BUTTON(4).Enabled = True
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
        If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(2).Text = "" Then
            MsgBox "Can't Save Empty records", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
        End If
       
        If grdDataGrid.Columns(2).Text = "" And grdDataGrid.Columns(0).Text <> "" Then
            MsgBox "Variety Cannot be Empty", vbInformation, head
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            Exit Sub
        End If
      
        If Opt = "add" Then
            adoPrimaryRS.MoveFirst
            Opt = ""
            
            Do While Not adoPrimaryRS.EOF
            If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then adoPrimaryRS.Delete
            adoPrimaryRS.MoveNext
            Loop
            
            Set TmpDb = New Connection
            TmpDb.CursorLocation = adUseClient
            TmpDb.Open connectstring
            TmpDb.BeginTrans
            
            Dim NewRs As Recordset
            Set NewRs = New Recordset
            NewRs.Open "SElect Divcode, Mixgrp, Varcode,NoOfDays  from Rm_mixingEstimate  where 1=2", TmpDb, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.MoveFirst
            If adoPrimaryRS.RecordCount > 0 Then
                Do While Not adoPrimaryRS.EOF
                    NewRs.AddNew
                    NewRs("DivCode") = Divcode
                    NewRs("MixGRp") = adoPrimaryRS("Mix Group")
                    NewRs("VarCode") = adoPrimaryRS("Variety")
                    NewRs("NoOFDays") = adoPrimaryRS("Days")
                    
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Mixing Estimation"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = adoPrimaryRS("Mix Group")
            TrnLog("description") = adoPrimaryRS("Variety")
            TrnLog("slcode") = adoPrimaryRS("Variety")
            TrnLog.UpdateBatch adAffectAllChapters
                    
                    adoPrimaryRS.MoveNext
                Loop
            End If
            adoPrimaryRS.MoveFirst
      
            If Not Trim(grdDataGrid.Columns(0).Text) = "" And Not Trim(grdDataGrid.Columns(1).Text) = "" Then
                On Error Resume Next
                NewRs.UpdateBatch adAffectAllChapters
                TmpDb.CommitTrans
                MsgBox "Record(s) Saved.", vbInformation, head
                TmpDb.Close
                DB.CommitTrans
                Set TmpDb = Nothing
            End If
                StatusBar1.Panels(2).Text = ""
        End If
        
        adoPrimaryRS.MoveFirst
        
        If Opt = "mod" Then
            Set TmpDb = New Connection
                TmpDb.CursorLocation = adUseClient
                TmpDb.Open connectstring
                TmpDb.BeginTrans
                TmpDb.Execute "update rm_MixingEstimate set NoofDays=" & val(grdDataGrid.Columns(4).Text) & " where MixGrp='" & grdDataGrid.Columns(0).Text & "' and Varcode='" & grdDataGrid.Columns(2).Text & "'"
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Mixing Estimation"
                TrnLog("Trans_Mod") = "Mod"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                
                TrnLog("code") = grdDataGrid.Columns(0).Text
                TrnLog("description") = grdDataGrid.Columns(2).Text
                TrnLog("slcode") = adoPrimaryRS("Variety")
                TrnLog.UpdateBatch adAffectAllChapters
                
                
                TmpDb.CommitTrans
                MsgBox "Record(s) Modified.", vbInformation, head
                TmpDb.Close
                'DB.CommitTrans
            Set TmpDb = Nothing
        End If
       
    If Opt = "del" Then
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            DB.Execute ("delete from rm_mixingEstimate where MixGrp='" & grdDataGrid.Columns(0).Text & "' and varcode='" & grdDataGrid.Columns(2).Text & "' and NoOfDays=" & val(grdDataGrid.Columns(4).Text))
            
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,slcode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Mixing Estimation"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(2).Text
            TrnLog("slcode") = adoPrimaryRS("Variety")
            TrnLog.UpdateBatch adAffectAllChapters
            MsgBox "Record(s) Deleted.", vbInformation, head
            'DB.RollbackTrans
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
        grdDataGrid.Columns(4).Alignment = dbgRight
        grdDataGrid.Columns(4).Width = 750
        grdDataGrid.Columns(3).Width = 2564.788 - 250
        grdDataGrid.Columns(2).Width = 915.0237
        grdDataGrid.Columns(1).Width = 3179.906 - 500
        grdDataGrid.Columns(0).Width = 1140.095
        


        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        'BUTTON(4).Enabled = True
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "fnd"
        'DB.RollbackTrans
    Case "add"
    
        'TmpDb.RollbackTrans
        DB.RollbackTrans
    Case "mod"
        'DB.RollbackTrans
    Case "del"
        'DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    grdDataGrid.Columns(4).Alignment = dbgRight
    grdDataGrid.Columns(4).Width = 750
    grdDataGrid.Columns(3).Width = 2564.788 - 250
    grdDataGrid.Columns(2).Width = 915.0237
    grdDataGrid.Columns(1).Width = 3179.906 - 500
    grdDataGrid.Columns(0).Width = 1140.095




    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''''
    'BUTTON(4).Enabled = True
    
    
Case 12
    
    Dim Cystalrptmixes As New clsCrystal
    Set Cystalrptmixes.cryRept = Cry_Setup_MixEst
    Cystalrptmixes.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    
    
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This variety Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "variety Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        'Opt = "add"
        GoTo gocancel
        MsgBox "This variety Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
   ' grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form MixEstimation", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Visible = True
'Frame2.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

    Select Case Ksllist1.listfield1
  
        Case "cntcd"
        'If opt = "add" Or opt = "mod" Then
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_mixingestimate where cntcd='" & Ksllist1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            grdDataGrid.Columns(0).Text = Rs("cntcd")
            grdDataGrid.Columns(1).Text = Rs("cntname")
        '    BUTTON(9).Enabled = True 'Save
        '    BUTTON(10).Enabled = True
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            Frame3.Visible = False
    
        Case "varcode"
            If Record_Exists("RM_VAR", "NO RECORDS FOUND") = False Then Exit Sub
            'If opt = "add" Or opt = "mod" Then
            Frame3.Visible = False
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select varcode ,varname from rm_var where varcode='" & Ksllist1.Code & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
            grdDataGrid.Columns(2).Text = Rs("varcode")
            grdDataGrid.Columns(3).Text = Rs("varname")
            grdDataGrid.AllowUpdate = True
            adoPrimaryRS.AddNew
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
            Else
            MsgBox "Select Another Variety", vbInformation, head
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            End If
        '    BUTTON(9).Enabled = True 'Save
        '    BUTTON(10).Enabled = True
            'grddatagrid.Col = 2
            ''grddatagrid.SetFocus
            
      
      Case "b.cntcd"
      If FLG = "y" Then
              FLG = ""
                          Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_mixingestimate where cntcd='" & Ksllist1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            CntCode = Rs("cntcd")
            cntnam = Rs("cntname")

               Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_mixingestimate b,rm_var c where a.cntcd='" & CntCode & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                
                'Call ENABLCONTLS
                
                Call bindcontls
            '    Txtfields(0).Enabled = False
            '    Txtfields(1).SetFocus
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = True
                grdDataGrid.Columns(2).Locked = True
                grdDataGrid.Columns(3).Locked = True
            '    grddatagrid.Columns(4).Locked = False
                grdDataGrid.Columns(4).Width = 750
grdDataGrid.Columns(3).Width = 2564.788 - 250
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906 - 500
 grdDataGrid.Columns(0).Width = 1140.095
                 grdDataGrid.Columns(4).Alignment = dbgRight


                BUTTON(9).Enabled = False 'Save
                BUTTON(10).Enabled = True
                
                If Opt = "del" Then
                Call disablcontls
                BUTTON(9).Enabled = True
                'BUTTON(4).Enabled = False
                End If
                Frame3.Visible = False
      Else
       SSTab1.Visible = False
           Set Rs = New Recordset
            Rs.Open "select cntcd ,cntname from rm_mixingestimate where cntcd='" & Ksllist1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
            CntCode = Rs("cntcd")
            cntnam = Rs("cntname")
'            grddatagrid.Columns(0).Text = rs("cntcd")
 '           grddatagrid.Columns(1).Text = rs("cntname")
            Frame3.Visible = True
            Label15.Caption = "Category"
            Ksllist1.conn = connectstring
            Ksllist1.Table = "  rm_var a,rm_cntvar b where a.varcode=b.varcode and b.cntcd='" & CntCode & "'"
            Ksllist1.listfield1 = "a.varcode"
            Ksllist1.listfield2 = "a.varname"
            Frame3.Visible = True
            Command3.Default = True
            Frame3.ZOrder
            Ksllist1.SetFocus
            End If
'-------------------------------------
    Case "a.varcode"
               'If opt = "mod" Or opt = "del" Then
                SSTab1.Visible = True
                StatusBar1.Panels(2).Text = ""
                'grddatagrid.Columns(2).Text = KslList1.Code
                
            'grddatagrid.Columns(3).Text = KslList1.description
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.cntcd ""Count"" ,b.cntname ""Count Name"",a.varcode ""Variety"",c.varname""Variety Name"" from rm_cntvar a,rm_mixingestimate b,rm_var c where a.cntcd='" & CntCode & "' and  a.varcode='" & Ksllist1.Code & "' and a.cntcd=b.cntcd and a.varcode=c.varcode Order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                
                'Call ENABLCONTLS
                
                Call bindcontls
            '    Txtfields(0).Enabled = False
            '    Txtfields(1).SetFocus
            '    grddatagrid.Columns(0).Locked = True
            '    grddatagrid.Columns(1).Locked = False
            '    grddatagrid.Columns(2).Locked = False
            '    grddatagrid.Columns(3).Locked = True
            '    grddatagrid.Columns(4).Locked = False
                grdDataGrid.Columns(4).Width = 750
            grdDataGrid.Columns(4).Alignment = dbgRight
            
 grdDataGrid.Columns(3).Width = 2564.788 - 250
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906 - 500
 grdDataGrid.Columns(0).Width = 1140.095


                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
    Case "a.MixGrp"
            If Record_Exists("RM_VAR", "NO RECORDS FOUND") = False Then Exit Sub
                'If opt = "add" Or opt = "mod" Then
                Frame3.Visible = False
                SSTab1.Visible = True
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select mixgrp,mixgrpname from rm_mixingestimate a,rm_MixGrp b where a.MixGrp = b.MixGrpcd and a.mixgrp='" & Ksllist1.Code & "'", DB, adOpenStatic
                'Rs.Open "select cntcd ,cntname from rm_mixingestimate where cntcd='" & KslList1.Code & "' Order by cntcd", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.RecordCount > 0 Then
                    grdDataGrid.Columns(0).Text = Rs("mixgrp")
                    grdDataGrid.Columns(1).Text = Rs("mixgrpname")
                    grdDataGrid.AllowUpdate = True
                    adoPrimaryRS.AddNew
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                    Exit Sub
                Else
                    MsgBox "Select Another Variety", vbInformation, head
                    grdDataGrid.Col = 2
                    grdDataGrid.SetFocus
                End If
   End Select


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form MixEstimation", vbInformation, head
   
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
        Call BUTTON_Click(10)   ''Cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
   'grddatagrid.Caption = "Location"
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(4).Enabled = True
    'BUTTON(4).Enabled = True
grdDataGrid.Columns(4).Alignment = dbgRight
 grdDataGrid.Columns(4).Width = 750
 grdDataGrid.Columns(3).Width = 2564.788 - 250
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906 - 500
 grdDataGrid.Columns(0).Width = 1140.095


    'SSTab1.Tabs.Clear
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form MixEstimation", vbInformation, head
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

'Private Sub Form_Resize()
'  On Error Resume Next
'  'This will resize the grid whef the form is resized
'  sstab1.Width = Me.Width - 3000
'  sstab1.Height = Me.Height - 2500
'  grddatagrid.Height = sstab1.Height - 500
'  grddatagrid.Width = sstab1.Width - 800
'   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub


Public Sub query_mode()
On Error GoTo er1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select a.MixGRp ""Mix Group"" ,b.MixGrpname ""Group Name"",a.varcode ""Variety"",c.varname""Variety Name"", A.NoOfDays ""Days"" from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode order by a.MixGrp", DB, adOpenStatic, adLockReadOnly
  Call bindcontls
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call disablcontls
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  Call NEWFORM1(BUTTON, GSNO)
  BUTTON(10).Enabled = False
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  grdDataGrid.Columns(4).Width = 750
grdDataGrid.Columns(3).Width = 2564.788 - 250
 grdDataGrid.Columns(2).Width = 915.0237
 grdDataGrid.Columns(1).Width = 3179.906 - 500
 grdDataGrid.Columns(0).Width = 1140.095


End Sub
Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error

If grdDataGrid.Col = 4 Then
        If Opt = "add" Or Opt = "mod" Then
            grdDataGrid.AllowUpdate = True
            adoPrimaryRS.AddNew
            grdDataGrid.Col = 0
        End If
  End If

Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error

StatusBar1.Panels(2).Text = ""
If Opt = "add" Then
If ColIndex = 0 Then
     Set Rs = New Recordset
     Rs.Open "select varcode from rm_var where varcode = '" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Variety Code Already Defined!", vbInformation, head
        grdDataGrid.Columns(0).Text = " "
        grdDataGrid.Columns(0).Locked = False
        grdDataGrid.Col = ColIndex
        grdDataGrid.SetFocus
        Exit Sub
     End If
     
        StatusBar1.Panels(2).Text = "Enter One Letter Category Code"

 End If
 End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form MixEstimation", vbInformation, head
 
End Sub




Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub
Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

   If grdDataGrid.Col = 0 Then
         StatusBar1.Panels(2).Text = "Select Count From the List"
     End If
    If grdDataGrid.Col = 2 Then
        StatusBar1.Panels(2).Text = "Select Variety From the List"
    End If
''   If grddatagrid.COL = 0 Then
''        If Opt = "add" Then
''            SSTab1.Visible = False
''            Frame3.Visible = True
''            Label15.Caption = "Count"
''            KslList1.conn = connectstring
''            KslList1.table = "rm_mixingestimate"
''            KslList1.listfield1 = "cntcd"
''            KslList1.listfield2 = "cntname"
''            Frame3.Visible = True
''            Command3.Default = True
''            Frame3.ZOrder
''            KslList1.SetFocus
''        End If
''   End If
  
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

If Opt = "mod" Then
    If grdDataGrid.Col = 0 Then
    KeyAscii = 0
    End If
End If
If Opt = "add" Or Opt = "mod" Then
  If grdDataGrid.Col = 2 Then
        If Record_Exists("RM_VAR", "NO RECORDS FOUND") = False Then Exit Sub
        If Opt = "add" Or Opt = "mod" Then
            LookUp.Clear = True
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name"" from rm_var"
            LookUp.DefCol = "Name"
            LookUp.Caption = "Variety Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select varcode ,varname from rm_var where varcode='" & LookUp.Fields(0) & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
                If Rs.RecordCount > 0 Then
                    grdDataGrid.Columns(2).Text = Rs("varcode")
                    grdDataGrid.Columns(3).Text = Rs("varname")
                    grdDataGrid.Col = 4
                    LookUp.Clear = True
                    grdDataGrid.Col = 4
                    grdDataGrid.SetFocus
                    If grdDataGrid.Col = 4 Then
                        tonum grdDataGrid, 4, KeyAscii
                        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
                            KeyAscii = 0
                        End If
                    End If
                    Exit Sub
                Else
                    MsgBox "Select Another Variety", vbInformation, head
                    grdDataGrid.Col = 2
                    grdDataGrid.SetFocus
                End If
            End If
        End If
        
  End If
  
  
  
  If grdDataGrid.Col = 0 Then
        If Opt = "add" Then
            LookUp.Clear = True
            LookUp.query = "SELECT MixGrpCd""MixGroup Code"",MixGRpNAME""MixGroup Name"" FROM rm_mixGRp"
            LookUp.DefCol = "Name"
            LookUp.Caption = "Mixing Group Listing"
            LookUp.ALIGN = "2000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                Set Rs = New Recordset
                Rs.Open "select MixGrpCd ,MixGrpname from rm_mixGrp where MixGrpcd='" & LookUp.Fields(0) & "' Order by MixgrpCd", DB, adOpenStatic, adLockBatchOptimistic
                grdDataGrid.Columns(0).Text = Rs("MixGrpCd")
                grdDataGrid.Columns(1).Text = Rs("MixGrpname")
                grdDataGrid.Col = 1
                LookUp.Clear = True
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Exit Sub
            End If
        End If
   End If
   If grdDataGrid.Col = 4 Then
        tonum grdDataGrid, 4, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    End If
End If


Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form MixEstimation", vbInformation, head

End Sub



Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
intervalMinutes = -1
If Opt = "add" Then
If grdDataGrid.Row >= 0 Then
    If grdDataGrid.Col = 2 And grdDataGrid.Columns(0).Text = "" Then

        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
    End If
    
    
    
 End If
    

End Sub

Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
On Error GoTo ToUpCase_Error

    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If

Exit Sub
ToUpCase_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToUpCase of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub header(pg As Integer, c As Integer, a As Integer)
On Error GoTo header_Error

            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(5) + RTrim(CENTRE(divname, 77, " "))
            Print #a,
            str1 = CStr(Format(pdate, "dd/mm/yy")) + Space(4)
            Print #a, Space(5) + "Mixing Group Estimation List"; Space(28) + str1 + "Pg.No :" + Space(1) + CStr(pg)
            Set Rs = New Recordset
            'adoPrimaryRS.Open "select a.MixGRp,b.MixGrpname,a.varcode,c.varname, a.NoOfDays from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode order by a.MixGrp", DB, adOpenStatic, adLockReadOnly
            Rs.Open "select a.MixGRp,b.MixGrpname,a.varcode,c.varname, a.NoOfDays from rm_mixingestimate  a,rm_Mixgrp b,rm_var c where a.Mixgrp=b.MixGrpCD and a.varcode=c.varcode order by a.MixGrp", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No records found for this month", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Print #a, Space(5) + String(77, "-")
            Print #a, Space(5) + "Group  " + Space(2) + Padr("Group Name", 25, " ") + Space(3) + "Variety" + Space(2) + Padr("Variety Name", 20, " ") + "No. Of Days"
            Print #a, Space(5) + String(77, "-")

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form MixEstimation", vbInformation, head
Screen.MousePointer = 0
End Sub
