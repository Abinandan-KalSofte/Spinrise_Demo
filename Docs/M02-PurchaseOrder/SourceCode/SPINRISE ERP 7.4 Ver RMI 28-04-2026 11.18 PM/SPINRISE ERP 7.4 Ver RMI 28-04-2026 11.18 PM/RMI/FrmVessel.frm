VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmVessel 
   Caption         =   "Vessel Details"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13995
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   13995
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   10200
      Top             =   1200
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "FrmVessel.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":0442
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "FrmVessel.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":0BEE
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "FrmVessel.frx":0EF8
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":1274
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "FrmVessel.frx":157E
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":1920
         Height          =   510
         Index           =   11
         Left            =   5775
         Picture         =   "FrmVessel.frx":1D6A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":20FF
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "FrmVessel.frx":2549
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "FrmVessel.frx":2899
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":2C30
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "FrmVessel.frx":2F3A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":32B4
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
         Picture         =   "FrmVessel.frx":35BE
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":395A
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "FrmVessel.frx":3DA4
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":4109
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmVessel.frx":4413
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmVessel.frx":47A6
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "FrmVessel.frx":4BF0
         Style           =   1  'Graphical
         TabIndex        =   1
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
         TabIndex        =   13
         Top             =   255
         Width           =   600
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
         TabIndex        =   12
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   14
      Top             =   2790
      Width           =   13995
      _ExtentX        =   24686
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   10178
            MinWidth        =   10178
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "12/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Object.Width           =   2542
            MinWidth        =   2542
            TextSave        =   "11:38 AM"
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
      Left            =   1440
      TabIndex        =   15
      Top             =   1320
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                 "
      TabPicture(0)   =   "FrmVessel.frx":4F3D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   16
         Top             =   150
         Width           =   6285
         _ExtentX        =   11086
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         BackColor       =   16777215
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
            ScrollBars      =   3
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Vessel Details"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   1500
      TabIndex        =   17
      Top             =   825
      Width           =   1785
   End
End
Attribute VB_Name = "FrmVessel"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim dv1 As New DataEnvironment1
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim rec As New Recordset
Dim Opt As String
Dim FLGREPET As Boolean
Dim st, st1, st2 As String
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim rptv As Report.ReportView
Dim r1 As String
Dim LSNo As Integer
Public Sub openconnection()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
     intervalMinutes = -1
    End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
 intervalMinutes = -1
End Sub

Private Sub BUTTON_Click(Index As Integer)
   On Error GoTo BUTTON_Click_Error
    intervalMinutes = -1
Select Case Index
Case 0
   Screen.MousePointer = 11
    Opt = "add"
    desc.Caption = "Addition"
    SSTab1.Enabled = True
    StatusBar1.Panels(2).Text = "Enter Code Upto 3 Characters "
    st = "B"
    st1 = "B"
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code ""Vessel Code"" ,description ""Description"",divcode from IM_Vessel where 1 = 2", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    grdDataGrid.ScrollBars = dbgNone
    DB.BeginTrans
    grdDataGrid.Columns(0).Width = 1500
    grdDataGrid.Columns(1).Width = 3000
    grdDataGrid.Columns(2).Width = 0
    grdDataGrid.AllowUpdate = True
    adoPrimaryRS.AddNew
    
    grdDataGrid.Col = 0
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    'Calling adddelmod procedure
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0

Case 1
        'modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from IM_Vessel where divcode='" & Divcode & "'", DB
        If Not Rs(0) = 0 Then
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        Set Rs = New Recordset
        Rs.Open "select code as VesselCode ,description as Description from IM_Vessel where divcode='" & Divcode & "' order by code", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Call query_mode
            Exit Sub
        End If
        LookUp.Clear = True
        LookUp.query = "Select Cast(Code as Varchar)""Code"",Description from IM_Vessel where divcode='" & Divcode & "'"
        LookUp.Caption = "Vessel Type Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1000,2500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            DB.BeginTrans
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Code,Description from IM_Vessel where divcode='" & Divcode & "' and code='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not adoPrimaryRS.EOF Then
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.AllowUpdate = True
            grdDataGrid.Columns(0).Width = 1500
            grdDataGrid.Columns(1).Width = 3000
            'calling addmoddel procedure from module
            Call adddelmod(BUTTON)
            grdDataGrid.Columns(0).Locked = True
            End If
            Else
            Opt = " "
            Call query_mode
            Exit Sub
        End If
        StatusBar1.Panels(2).Text = "select the Vessel Code from the list for modification"
        Screen.MousePointer = 0
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from IM_Vessel where divcode='" & Divcode & "'", DB
        If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        Set rec = New Recordset
        rec.Open "select code ""VesselCode"" ,description ""Description"" from IM_Vessel where divcode='" & Divcode & "' order by code", DB, adOpenDynamic, adLockBatchOptimistic
        If Rs.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
            Call query_mode
            Exit Sub
        End If
        LookUp.Clear = True
        LookUp.query = "Select Cast(Code as Varchar)""Code"",Description from IM_Vessel where divcode='" & Divcode & "'"
        LookUp.Caption = "Vessel Type Listing"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "1000,2500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Code,Description from IM_Vessel where divcode='" & Divcode & "' and code='" & LookUp.Fields(0) & "'", DB
            If Not adoPrimaryRS.EOF Then
            Set grdDataGrid.DataSource = adoPrimaryRS
             grdDataGrid.AllowUpdate = False
            Call adddelmod(BUTTON)
            BUTTON(9).ToolTipText = "Delete"
            grdDataGrid.Columns(0).Width = 1500
            grdDataGrid.Columns(1).Width = 3000
            DB.BeginTrans
            End If
        Else
        Opt = " "
        Call query_mode
        Exit Sub
        End If
       
        StatusBar1.Panels(2).Text = "select the Vessel Code from the list for deletion"
        Screen.MousePointer = 0
       
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3        'List
        
        Set rptv = New Report.ReportView
        a = FreeFile
        Close #a
        'Open "C:\Vessel.TXT" For Output As #a
        Open KALFOLDERDATA & "\Vessel.TXT" For Output As #a
        Dim pg1, co, PageLen As Integer
        PageLen = 60
        pg1 = 1
        co = 0
        Set Rs = New Recordset
        Rs.Open "select code,description from IM_Vessel where divcode='" & Divcode & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
        
        If Rs.RecordCount = 0 Then
            MsgBox "No Record found", vbInformation, head
            Exit Sub
        End If
        Call idleheader(CInt(pg1), CInt(co))
        
            co = co + 1
            If co > PageLen Then
                Print #a, Space(5) + String(57, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                co = 0
                Call idleheader(CInt(pg1), CInt(co))
            End If
         
         Set rs1 = New Recordset
         rs1.Open "select code,description from IM_Vessel where divcode='" & Divcode & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
         rs1.MoveFirst
         Do While Not rs1.EOF
         Print #a, Space(5) + Padr(CStr(rs1(0)), 17, " ") + Padr(CStr(rs1(1)), 40, " ")
         
         rs1.MoveNext
         Loop


       
        Print #a, Space(5) + String(57, "-")
       ' Print #a, Chr(12)
        Close #a
        a = FreeFile
'        Open "c:\Vessel.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type Vessel.txt>prn"
'        Close #a
'        rptv.txtfile = "c:\Vessel.txt"
'        rptv.Batfile = "c:\Vessel.bat"
Call KALBATPROCESS("Vessel")
        Screen.MousePointer = 0
        
Case 5

    On Error GoTo GoFirstError
    desc.Caption = "Query"
    
    adoPrimaryRS.MoveFirst
    StatusBar1.Panels(2).Text = "First Record"
    BUTTON(5).Enabled = False
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = True
    Exit Sub
GoFirstError:
    StatusBar1.Panels(2).Text = Err.Description
    
Case 6

    'On Error GoTo GoNextError
    desc.Caption = "Query"
'
'    BUTTON(5).Enabled = False
'    BUTTON(6).Enabled = False
'    BUTTON(7).Enabled = False
'    BUTTON(8).Enabled = False
    If adoPrimaryRS.RecordCount > 0 Then
       If Not adoPrimaryRS.EOF Then
          adoPrimaryRS.MoveNext
          If Not adoPrimaryRS.EOF Then
              StatusBar1.Panels(2).Text = "Records " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
          Else
              StatusBar1.Panels(2).Text = "Last Record"
              adoPrimaryRS.MoveLast
          End If
       End If
       If adoPrimaryRS.RecordCount > 1 Then
           If adoPrimaryRS.AbsolutePosition <> adoPrimaryRS.RecordCount Then
               BUTTON(6).Enabled = True
               BUTTON(8).Enabled = True
           End If
           If adoPrimaryRS.AbsolutePosition <> 1 Then
               BUTTON(5).Enabled = True
               BUTTON(7).Enabled = True
           End If
       End If
    End If
    Exit Sub
    
GoNextError:
    StatusBar1.Panels(2).Text = Err.Description
    
Case 7

   On Error GoTo GoPrevError
   desc.Caption = "Query"
   
'   BUTTON(5).Enabled = False
'   BUTTON(6).Enabled = False
'   BUTTON(7).Enabled = False
'   BUTTON(8).Enabled = False
   If adoPrimaryRS.RecordCount > 0 Then
      If Not adoPrimaryRS.BOF Then
         adoPrimaryRS.MovePrevious
         If Not adoPrimaryRS.BOF Then
            StatusBar1.Panels(2).Text = "Records" & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
         Else
           
            adoPrimaryRS.MoveFirst
         End If
      End If
      If adoPrimaryRS.RecordCount > 1 Then
         If adoPrimaryRS.AbsolutePosition <> adoPrimaryRS.RecordCount Then
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
         End If
         If adoPrimaryRS.AbsolutePosition <> 1 Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
         End If
      End If
   End If
   Exit Sub
   
GoPrevError:
   StatusBar1.Panels(2).Text = Err.Description
   
Case 8                                 'Last

   On Error GoTo GoLastError
   desc.Caption = "Query"
   
   adoPrimaryRS.MoveLast
   StatusBar1.Panels(2).Text = "Last Record "
   BUTTON(5).Enabled = True
   BUTTON(7).Enabled = True
   BUTTON(6).Enabled = False
   BUTTON(8).Enabled = False
   Exit Sub

GoLastError:

   StatusBar1.Panels(2).Text = Err.Description
Case 9
       'Save
    If Opt = "add" Or Opt = "mod" Then
    tmp = Opt
    'Opt = "SAVE"
    If adoPrimaryRS.RecordCount = 1 Then
        adoPrimaryRS.MoveFirst
      If Trim(grdDataGrid.Columns(0).Text) = "" Or Trim(grdDataGrid.Columns(0).Text) = Empty Then
          MsgBox "Please Enter Vessel Code", vbInformation, head
          grdDataGrid.Col = 0
          grdDataGrid.SetFocus
          Exit Sub
      ElseIf Trim(grdDataGrid.Columns(1).Text) = "" Or Trim(grdDataGrid.Columns(1).Text) = Empty Then
          MsgBox "Please Enter Description", vbInformation, head
          grdDataGrid.Col = 1
          grdDataGrid.SetFocus
          Exit Sub
      End If
    End If
    End If
    'opt = ""
    adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        If Trim(grdDataGrid.Columns(0).Text) = "" Or Trim(grdDataGrid.Columns(0).Text) = Empty Then
            adoPrimaryRS.Delete
        End If
        adoPrimaryRS.MoveNext
    Loop
    adoPrimaryRS.MoveFirst
    Do While Not adoPrimaryRS.EOF
        If Trim(grdDataGrid.Columns(1).Text) = "" Then
            MsgBox "Please Enter Description", vbInformation, head
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
          Exit Sub
        End If
        adoPrimaryRS.MoveNext
     Loop
    If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
        adoPrimaryRS("Divcode") = Divcode
        
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code,Description,AntiDumRate,STATE_FLAG,country_code,accno FROM IM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Vessel Details"
                        TrnLog("Trans_Mod") = "Add"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                        TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                        TrnLog("code") = grdDataGrid.Columns(0)
                        TrnLog("description") = grdDataGrid.Columns(1)
                       ' TrnLog("AntiDumRate") = Trim(grdDataGrid.Columns(2).Text)
                       ' TrnLog("country_code") = Trim(grdDataGrid.Columns(2).Text)
                        TrnLog.UpdateBatch adAffectAllChapters
        adoPrimaryRS.MoveNext
        Loop
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Records Saved  Successfully", vbInformation, head
        
    End If
    If Opt = "mod" Then
        grdDataGrid.AllowUpdate = True
        'adoPrimaryRS("Divcode") = divcode
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
         adoPrimaryRS.MoveFirst
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code,Description,AntiDumRate,STATE_FLAG,country_code,accno FROM IM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Vessel Details"
                        TrnLog("Trans_Mod") = "Mod"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                        TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                        TrnLog("code") = grdDataGrid.Columns(0)
                        TrnLog("description") = grdDataGrid.Columns(1)
                       ' TrnLog("AntiDumRate") = Trim(grdDataGrid.Columns(2).Text)
                       ' TrnLog("country_code") = Trim(grdDataGrid.Columns(2).Text)
                        TrnLog.UpdateBatch adAffectAllChapters
        MsgBox "Record Modified Successfully", vbInformation, head
        End If
        If Opt = "del" Then
            On Error GoTo deler
            a = MsgBox("Do you want to delete this Record?", vbYesNo, head)
            If a = 6 Then
            adoPrimaryRS.MoveFirst
            DB.Execute ("delete from IM_Vessel where divcode='" & Divcode & "' and code=" + "'" + grdDataGrid.Columns(0) + "'")
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code,Description,AntiDumRate,STATE_FLAG,country_code,accno FROM IM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Vessel Details"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                        TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                        TrnLog("code") = grdDataGrid.Columns(0)
                        TrnLog("description") = grdDataGrid.Columns(1)
                       ' TrnLog("AntiDumRate") = Trim(grdDataGrid.Columns(2).Text)
                       ' TrnLog("country_code") = Trim(grdDataGrid.Columns(2).Text)
                        TrnLog.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Records Deleted Sucessfully", vbOKOnly, head
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            Opt = " "
            Call query_mode
            BUTTON(0).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        End If
            Opt = " "
            Call query_mode
            'calling newform_cancel procedure from module (also for save)
            Call NEWFORM1(BUTTON, LSNo)
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED

Case 10
gocancel:
    
    desc.Caption = "Query"
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
    Call query_mode
    grdDataGrid.Visible = True
    SSTab1.Visible = True
    'calling cancl procedure from module
'    Call cancl(BUTTON, 0)
    ''button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
'    Else
'        Call Recfound(BUTTON)
    End If
    BUTTON(9).Enabled = False
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Vessel
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
        MsgBox "This Vessel Code cannot be deleted as dependencies exist ", vbCritical, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox " Please Enter Description", vbCritical, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Vessel Code already exists", vbCritical + vbOKOnly, head
        Screen.MousePointer = 0
    st = "B"
    grdDataGrid.Col = 0
    End If

   On Error GoTo 0
   Exit Sub

BUTTON_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmVesselType", vbInformation, head
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
heading.Visible = True
grdDataGrid.Visible = True
Call BUTTON_Click(10)
End Sub
Private Sub Command3_Click()
   On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  grdDataGrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code as VesselCode ,description as description,divcode from IM_Vessel where divcode='" & Divcode & "' and code = '" & KslList1.Code & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
    grdDataGrid.Columns(0).Width = 1500
    grdDataGrid.Columns(1).Width = 3000
    grdDataGrid.Columns(2).Width = 0

    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.AllowAddNew = False
    grdDataGrid.Col = 1
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    StatusBar1.Panels(2).Text = "Press Save Button To Delete"
    BUTTON(9).SetFocus
    ElseIf Opt = "mod" Then
    StatusBar1.Panels(2).Text = "Modify the data"
    End If
    heading.Visible = True
    Frame3.Visible = False

   On Error GoTo 0
   Exit Sub

Command3_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure command3_click of Form frmVesselType", vbInformation, head
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
   On Error Resume Next
    intervalMinutes = -1
    If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If



   On Error GoTo 0
   Exit Sub

Form_KeyDown_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmVesselType", vbInformation, head

End Sub

Private Sub Form_Load()
   On Error GoTo Form_Load_Error
 intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    LSNo = GSNO
    Call query_mode
    BUTTON(9).Enabled = False
    'grdDataGrid.Columns(0).Width = 1140.095
    'grdDataGrid.Columns(1).Width = 4800.118
    
       BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    'BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    'BUTTON(12).ToolTipText = "Print (Ctrl P)"
   ' BUTTON(13).ToolTipText = "Crystal (Ctrl Y)"
 intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

Form_Load_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmVesselType", vbInformation, head

End Sub
Private Sub Form_Resize()
On Error Resume Next
StatusBar1.Panels(2).Width = Me.Width - val(StatusBar1.Panels(1).Width + StatusBar1.Panels(3).Width + StatusBar1.Panels(4).Width)
End Sub
Private Sub Form_Unload(Cancel As Integer)
   On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault
 intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

Form_Unload_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form frmVesselType", vbInformation, head
End Sub
'Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'  'This will display the current record position for this recordset
'  If Opt <> "add" Then
'  statusbar1.Panels(2).Text = "Record: " & CStr(adoprimaryrs.AbsolutePosition) & " of " & CStr(adoprimaryrs.RecordCount)
'  End If
'End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
   On Error GoTo grddatagrid_AfterColEdit_Error

If ColIndex = 0 Then
    If grdDataGrid.Columns(0).Text = Empty Or grdDataGrid.Columns(0).Text = "" Then
         StatusBar1.Panels(2).Text = "Please Enter Vessel Code"
    Else
        Set Rs = New Recordset
        Rs.Open "select 'X' from IM_Vessel where divcode='" & Divcode & "' and code = '" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        r = grdDataGrid.Row
        txt = grdDataGrid.Text
        grdDataGrid.Row = 0
        B = 0
        For I = 0 To r
            If txt <> grdDataGrid.Text Then
                grdDataGrid.Row = grdDataGrid.Row + 1
             Else
                    B = B + 1
            End If
        Next
        If Not Rs.BOF Or B > 1 Then
            StatusBar1.Panels(2).Text = "Vessel Code Must not repeat"
            MsgBox "Vessel Code Must not repeat", vbInformation, head
           ' ADOPRIMARYRS(0).Value = ""
            grdDataGrid.Col = 0
            grdDataGrid.Row = r
            SendKeys "{LEFT}"
            SendKeys "{delete}"
            'grdDataGrid.SetFocus
            st = ""
            Exit Sub
        End If
        Opt = " "
        Code = grdDataGrid.Columns(0).Text
        a = adoPrimaryRS.AbsolutePosition
        adoPrimaryRS.MoveFirst
        For I = 1 To adoPrimaryRS.RecordCount
            If val(a) <> I Then
            If Code = adoPrimaryRS(0).value Then
                StatusBar1.Panels(2).Text = "Vessel Code should not repeat"
                adoPrimaryRS.AbsolutePosition = a
              '  adoPrimaryRS(0).Value = ""
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                st = "A"
                Opt = "add"
                Exit Sub
            End If
            End If
            If I <> adoPrimaryRS.RecordCount Then
                adoPrimaryRS.MoveNext
            End If
        Next I
        Opt = "add"
    End If
End If

   On Error GoTo 0
   Exit Sub

grddatagrid_AfterColEdit_Error:

    MsgBox "Error " & Err.Nuber & " (" & Err.Description & ") in procedure grddatagrid_AfterColEdit of Form frmVesselType", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
    If DataError = 6160 Then
          MsgBox " Please Enter Vessel code", vbInformation, haed
          grdDataGrid.Col = 0
          grdDataGrid.SetFocus
          Exit Sub
        
    End If
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
   
   On Error Resume Next
   
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If
    

If KeyCode = vbKeyTab Then
If grdDataGrid.Text = "" Then
        If grdDataGrid.Col = 1 Then
            StatusBar1.Panels(2).Text = "Please Enter Description"
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            st2 = "A"
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Please Enter Vessel Code"
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            st = "A"
        End If
    End If
End If
If KeyCode = 9 And Opt = "add" Then
    If grdDataGrid.Col = 1 Then
        AddNew = "YES"
    End If

Else
    AddNew = "NO"
End If

    If grdDataGrid.Col = 1 And Opt = "add" Then
        If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And AddNew = "YES" Then
            adoPrimaryRS.AddNew
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
       End If
    ElseIf grdDataGrid.Col = 1 And Opt = "mod" And KeyCode = 9 Then
        BUTTON(9).SetFocus
    End If


   On Error GoTo 0
   Exit Sub

GrdDatagrid_KeyDown_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_KeyDown of Form frmVesselType", vbInformation, head

End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
 intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
Select Case grdDataGrid.Col
        Case 0
            If KeyAscii <> 9 Then
               Call ToAlphanum(grdDataGrid, 3, KeyAscii)
                ToUpCase grdDataGrid, KeyAscii
                 StatusBar1.Panels(2).Text = "Please Enter Vessel Code"
            End If
        Case 1
            If KeyAscii <> 9 Then
                Call ToAlphanum(grdDataGrid, 50, KeyAscii)
                ToUpCase grdDataGrid, KeyAscii
                 StatusBar1.Panels(2).Text = "Please Enter Description"
            End If
    End Select
End If
End Sub
Public Sub query_mode()
   On Error GoTo query_mode_Error
 intervalMinutes = -1
On Error GoTo er1
  If Opt = "" Then
    SSTab1.Enabled = False
  End If
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select code ""Vessel Code"" ,description ""Description"",divcode from IM_Vessel where divcode='" & Divcode & "' order by code", DB, adOpenStatic, adLockBatchOptimistic
  If adoPrimaryRS.RecordCount = 0 Then
    MsgBox " No Records Found", vbInformation, head
     Call Norecfound(BUTTON)
  End If
  Set grdDataGrid.DataSource = adoPrimaryRS
  grdDataGrid.Columns(0).Width = 1500
  grdDataGrid.Columns(1).Width = 3000
  grdDataGrid.Columns(2).Width = 0
  
  grdDataGrid.Columns(0).Locked = True
  grdDataGrid.Columns(1).Locked = True
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM1(BUTTON, LSNo)
  Opt = " "
  Screen.MousePointer = 0
  BUTTON(10).Enabled = False
  StatusBar1.Panels(1).Text = head
  If adoPrimaryRS.RecordCount > 0 Then
  StatusBar1.Panels(2).Text = "Recors " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
'  statusbar1.Panels(2).Text = "Records : " & adoprimaryrs.RecordCount
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  grdDataGrid.Columns(0).Locked = True
  grdDataGrid.Columns(1).Locked = True

   On Error GoTo 0
   Exit Sub

query_mode_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form frmVesselType", vbInformation, head
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
   On Error GoTo grddatagrid_RowCoVesselhange_Error

If Not (Opt = "add" Or Opt = "mod") Then
    Exit Sub
End If
If grdDataGrid.Col = 2 Then
    If grdDataGrid.Columns(1).Text = Empty Or grdDataGrid.Columns(0).Text = "" Then
         StatusBar1.Panels(2).Text = "Please Enter Vessel Code"
    Else
        Set Rs = New Recordset
        Rs.Open "select 'X'  from IM_Vessel where divcode='" & Divcode & "' and code = '" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        r = grdDataGrid.Row
        grdDataGrid.Col = 0
        txt = grdDataGrid.Text
        grdDataGrid.Row = 0
        B = 0
        For I = 0 To r
            If txt <> grdDataGrid.Text Then
                grdDataGrid.Row = grdDataGrid.Row + 1
             Else
                    B = B + 1
            End If
        Next
        If Not Rs.BOF Or B > 1 Then
            StatusBar1.Panels(2).Text = "Vessel Code Must not repeat"
             MsgBox "Vessel Code Must not repeat", vbInformation, head
           ' ADOPRIMARYRS(0).Value = ""
            grdDataGrid.Col = 0
            grdDataGrid.Row = r
            'SendKeys "{LEFT}"
            'grdDataGrid.SetFocus
            st = ""
            Exit Sub
 End If
  grdDataGrid.Col = 1
            grdDataGrid.Row = r
 End If
 End If
If grdDataGrid.Col = 1 Then
    If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
    If grdDataGrid.Columns(0).Text = "" Then
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Maximum of 40 Characters"
        If st = "A" Then
            st = ""
           ' MsgBox "Vessel Code Should Not be Repeated", vbInformation, head
            StatusBar1.Panels(2).Text = "Vessel Code Must Not be Repeated"
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
        End If
        Exit Sub
    ElseIf grdDataGrid.Columns(1).Text = "" Then
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
        StatusBar1.Panels(2).Text = "Enter Maximum of 40 Characters"
        Exit Sub
    End If
    End If
End If
If grdDataGrid.Col = 0 And st2 = "A" Then
    st2 = ""
    If grdDataGrid.Row > 1 Then
        adoPrimaryRS.AbsolutePosition = adoPrimaryRS.AbsolutePosition - 1
    End If
    grdDataGrid.Col = 1
    grdDataGrid.SetFocus
    StatusBar1.Panels(2).Text = "Enter Maximum of 40 Characters"
ElseIf grdDataGrid.Col = 1 And st = "A" Then
    st = ""
    StatusBar1.Panels(2).Text = "Vessel Code Should Not be Repeated"
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus
    StatusBar1.Panels(2).Text = "Enter Maximum of 6 Characters"
End If
If grdDataGrid.Col = 0 Then
    StatusBar1.Panels(2).Text = "Enter Maximum of 6 Characters"
ElseIf grdDataGrid.Col = 1 Then
    StatusBar1.Panels(2).Text = "Enter Maximum of 40 Characters"
End If

   On Error GoTo 0
   Exit Sub

grddatagrid_RowCoVesselhange_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_RowCoVesselhange of Form frmVesselType", vbInformation, head
End Sub
Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub
Public Sub idleheader(pg1 As Integer, c As Integer)
   On Error GoTo idleheader_Error

          Print #a,
          Print #a, Space(10) + Chr(14) + CENTRE(divname, 60, "") + Chr(14)
          Dim Str As String
          Str = CStr(pdate) + Space(2)
          Print #a,
          Print #a, Space(5) + "Vessel Type" + Space(29) + Str + "Pg.:" + Space(1) + CStr(pg1)
          Print #a, Space(5) + String(57, "-")
          Print #a, Space(5) + "Code             Description "
          Print #a, Space(5) + String(57, "-")

   On Error GoTo 0
   Exit Sub

idleheader_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure idleheader of Form frmVesselType", vbInformation, head
End Sub

