VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmcar 
   Caption         =   "Carrier"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10485
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5685
   ScaleWidth      =   10485
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   9480
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5760
      Picture         =   "Car.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   585
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   225
      Top             =   7710
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   17
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "Car.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":0AE1
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "Car.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":1278
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Car.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":1915
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "Car.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":20C4
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
         Picture         =   "Car.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":276A
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Car.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Car.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":3185
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "Car.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":391F
         Height          =   510
         Index           =   11
         Left            =   6375
         Picture         =   "Car.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":40FE
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "Car.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":47AA
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "Car.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Car.frx":4E30
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "Car.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
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
         Left            =   8925
         TabIndex        =   19
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
         Left            =   7275
         TabIndex        =   18
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   5385
      Width           =   10485
      _ExtentX        =   18494
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   14905
            MinWidth        =   14905
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:06 PM"
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
      Height          =   6135
      Left            =   900
      TabIndex        =   11
      Top             =   1305
      Width           =   10125
      _ExtentX        =   17859
      _ExtentY        =   10821
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Car.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   5970
         Left            =   75
         TabIndex        =   12
         Top             =   75
         Width           =   9945
         _ExtentX        =   17542
         _ExtentY        =   10530
         _Version        =   393216
         AllowUpdate     =   -1  'True
         ForeColor       =   -2147483630
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
      TabIndex        =   13
      Top             =   1080
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Caption         =   "&Cancel"
         DownPicture     =   "Car.frx":55F8
         Height          =   615
         Left            =   4740
         Picture         =   "Car.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Car.frx":5DAD
         Height          =   615
         Left            =   3000
         Picture         =   "Car.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4080
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3255
         Left            =   840
         TabIndex        =   14
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
            Size            =   8.25
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
      Caption         =   "Carrier"
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
      Left            =   930
      TabIndex        =   15
      Top             =   885
      Width           =   960
   End
End
Attribute VB_Name = "frmcar"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim rstupdate As New ADODB.Recordset
Dim rst1 As New ADODB.Recordset

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.CARCODE ""Code"" ,a.CARNAME ""Carrier Name"",a.slcode,b.slname from po_car a,fa_slmas b where 1=2 Order by a.CARCODE", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select a.CARCODE ""Code"" ,a.CARNAME ""Carrier Name"",a.slcode,b.slname,a.ccode ""CCode"",c.cchead ""Head"" from po_car a,fa_slmas b,fa_ccmas c where 1=2 Order by a.CARCODE", DB, adOpenStatic, adLockBatchOptimistic
        
        Set grdDataGrid.DataSource = adoPrimaryRS
        GridAllign
        DB.BeginTrans
        stbar.Panels(2).Text = "Addition"
        grdDataGrid.AllowAddNew = True
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        grdDataGrid.Col = 0
        grdDataGrid.Row = 0
        grdDataGrid.SetFocus
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(4).Enabled = True
        grdDataGrid.ScrollBars = dbgAutomatic
Case 1, 2, 4
    If Record_Exists("po_car") = False Then Exit Sub
    If Index = 1 Then
        Opt = "mod"
        desc.Caption = "Modification"
        stbar.Panels(2).Text = "Select Carrier Code for Modification"
    ElseIf Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
        stbar.Panels(2).Text = "Select Carrier Code for Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
        stbar.Panels(2).Text = "Select Carrier Code from the list"
    End If
    Screen.MousePointer = 11
    DB.BeginTrans
    Set Rs = New Recordset
    Rs.Open "select count(*) from po_car", DB
    If Rs(0) = 0 Then
        Call BUTTON_Click(10)
        Exit Sub
    End If
    

    LookUp.Clear = True
    LookUp.query = "SELECT CARCODE""Carrier Code"",CARNAME""Carrier Name"" FROM PO_CAR"
    LookUp.DefCol = "Name"
    LookUp.Caption = "Carrier Listing"
    LookUp.ALIGN = "2000,5000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.CARCODE ""Code"",a.CARNAME ""Carrier Name"",a.slcode,b.slname from po_car a,fa_slmas b where a.CARCODE='" & LookUp.Fields(0) & "' and a.slcode*=b.slcode Order by a.CARCODE", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select a.CARCODE ""Code"",a.CARNAME ""Carrier Name"",a.slcode,b.slname,c.cccode,c.cchead from po_car a left join fa_slmas b on a.slcode=b.slcode  left join fa_ccmas c on  a.ccode=c.cccode where a.CARCODE='" & LookUp.Fields(0) & "'  Order by a.CARCODE", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
        GridAllign
        grdDataGrid.AllowAddNew = False
        grdDataGrid.Columns(0).Locked = True
        grdDataGrid.AllowUpdate = True
        grdDataGrid.Col = 1
        BUTTON(9).Enabled = True
        Call adddelmod(BUTTON)
        '----ganesh
        If grdDataGrid.Row = -1 Then
          GoTo X:
        Else
        '----ganesh
          grdDataGrid.Row = 0
          grdDataGrid.SetFocus
        End If
X:      If Opt = "del" Then
          BUTTON(9).SetFocus
        End If
        If Opt = "fnd" Then
            BUTTON(9).Enabled = False
        End If
    Else
        Call BUTTON_Click(10)
    End If
    Screen.MousePointer = 0
Case 2
        'Deletion
        If Record_Exists("po_car") = False Then Exit Sub
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        stbar.Panels(2).Text = "Select Carrier Code for Modification"
        Set Rs = New Recordset
        Rs.Open "select count(*) from po_car", DB
        If Rs(0) = 0 Then
            Call BUTTON_Click(10)
            Exit Sub
        End If
    
    SSTab1.Visible = False
    heading.Visible = False
    Frame3.Visible = True
    Listcap.Caption = "Carrier Listing"
    Ksldesc1.conn = connectstring
    Ksldesc1.Table = "po_car"
    Ksldesc1.listfield1 = "carcode"
    Ksldesc1.listfield2 = "carname"
    grdDataGrid.AllowUpdate = False
    DB.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    Screen.MousePointer = 0
Case 3
'    If Record_Exists("po_car") = False Then Exit Sub
'    'list
'    Dim dv1 As New DataEnvironment1
'    Dim Cn As Connection
'    Set dv1 = New DataEnvironment1
'    Set Cn = dv1.Connections("connection1")
'    If Cn.State = 1 Then
'    Cn.Close
'    End If
'    Call repproc2(Carlst)
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
'    dv1.rsCommand1.Open "SELECT * FROM po_car", DB, adOpenKeyset, adLockBatchOptimistic
'    Set Carlst.DataSource = dv1
'    Carlst.Show
Dim clsCryRptCarrier As New clsCrystal
  Set clsCryRptCarrier.cryRept = Cry_SetupCarrier
  clsCryRptCarrier.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
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

      ' 'Save
      
      desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        
      If Opt = "add" Then
        opt1 = Opt
        Opt = ""
        
        If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveFirst
         Do While Not adoPrimaryRS.EOF
            If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
              MsgBox "Empty record Cannot be Saved", vbInformation, head
              grdDataGrid.Col = 0
              grdDataGrid.SetFocus
              Exit Sub
            End If
      
            If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text = "" Then
              MsgBox "Carrier Name Cannot be Empty", vbInformation, head
              grdDataGrid.Col = 1
              grdDataGrid.SetFocus
              Exit Sub
            End If
         
              adoPrimaryRS.MoveNext
         Loop
         
         Screen.MousePointer = 11
         On Error GoTo deler
         
         Set rstupdate = New ADODB.Recordset
         rstupdate.Open "Select CARCODE,CARNAME,slcode,ccode From po_car where 1=2", DB, adOpenKeyset, adLockOptimistic
         
         If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveFirst
         
         Do While Not adoPrimaryRS.EOF
            rstupdate.AddNew
            rstupdate("CARCODE") = adoPrimaryRS(0)
            rstupdate("CARNAME") = adoPrimaryRS(1)
            rstupdate("slcode") = adoPrimaryRS(2)
            rstupdate("ccode") = adoPrimaryRS(4)
            rstupdate.Update
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Carrier"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
             TrnLog("DrGlCode") = grdDataGrid.Columns(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            adoPrimaryRS.MoveNext
         Loop
         
         
         
'''         adoPrimaryRS.UpdateBatch adAffectAll
         
         DB.CommitTrans
         MsgBox "Record(s) Saved", vbInformation, head
         Opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         End If
         
      If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
            If Frame3.Visible = False Then
                DB.Execute "Update po_car set carname='" & Trim(grdDataGrid.Columns(1).Text) & "',slcode='" & Trim(grdDataGrid.Columns(2).Text) & "',ccode='" & Trim(grdDataGrid.Columns(4).Text) & "' where carcode='" & grdDataGrid.Columns(0).Text & "'"
             Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,DrGlCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Carrier"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog("DrGlCode") = grdDataGrid.Columns(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            
            DB.CommitTrans
            
         MsgBox "Record(s) Modified.", vbInformation, head
         Opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         BUTTON(4).Enabled = True
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
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
         
             Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code,DrGlCode ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Carrier"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog("DrGlCode") = grdDataGrid.Columns(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
         
            DB.Execute ("delete from po_car where CARCODE=" + "'" + grdDataGrid.Columns(0) + "'")
            DB.CommitTrans
              MsgBox "Record(s) Deleted", vbInformation, head
         Else
            Call BUTTON_Click(10)
            Exit Sub
         End If
         End If
         Opt = " "
         Call query_mode
         'calling newform_cancel procedure from module (also for save)
         Call NEWFORM(BUTTON)
         Call NEWFORM1(BUTTON, GSNO)
         BUTTON(4).Enabled = True
         End If
         If Opt = "fnd" Then
            DB.CommitTrans
            Opt = " "
             Call query_mode
             'calling newform_cancel procedure from module (also for save)
             Call NEWFORM(BUTTON)
             Call NEWFORM1(BUTTON, GSNO)
             BUTTON(4).Enabled = True
    '         Call NEWFORM(BUTTON, 48)
         End If
         
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
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
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    heading.Visible = True
    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus '''''''''''''
    BUTTON(4).Enabled = True
'    BUTTON(0).Enabled = False
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Carrier
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
    grdDataGrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmcar", vbInformation, head
End Sub

Private Sub Command1_Click()
Call BUTTON_Click(10)
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  heading.Visible = True
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select a.CARCODE ""Code"",a.CARNAME ""Carrier Name"",a.slcode,b.slname,c.cccode,c.cchead  from po_car a,fa_slmas b,fa_ccmas c where a.CARCODE='" & Ksldesc1.Code & "' and a.slcode=b.slcode  and a.ccode=c.cccode  Order by CARCODE", DB, adOpenStatic, adLockBatchOptimistic

  'adoPrimaryRS.Open "select CARCODE ""Code"",CARNAME ""Carrier Name"" from po_car where CARCODE='" & Ksldesc1.Code & "' Order by CARCODE", DB, adOpenStatic, adLockBatchOptimistic
  
  Set grdDataGrid.DataSource = adoPrimaryRS
    GridAllign

  grdDataGrid.AllowAddNew = False
  grdDataGrid.Columns(0).Locked = True
  grdDataGrid.Col = 1
  BUTTON(9).Enabled = True
'----ganesh
  If grdDataGrid.Row = -1 Then
  GoTo X:
  Else
'----ganesh
  grdDataGrid.Row = 0
  grdDataGrid.SetFocus
  End If
X:  If Opt = "del" Then
  BUTTON(9).SetFocus
  End If
  Frame3.Visible = False


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmcar", vbInformation, head
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
        Call BUTTON_Click(10)   ''CANCEL
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmcar", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    stbar.Panels(1).Text = STBARmsg
    Set DB = New Connection
  DB.CursorLocation = adUseClient
  'connectstring = "PROVIDER=MSDataShape;Data PROVIDER=MSDASQL;driver={SQL Server};SERVER=kss;uid=sa;pwd=;database=kstex"
  DB.Open connectstring
  Call query_mode
  Call NEWFORM1(BUTTON, GSNO)
 ' 'button(0).enabled = false
' grddatagrid.Columns(0).Width = 929.7639
 BUTTON(4).Enabled = True
'    grddatagrid.Columns(1).Width = 5000

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmcar", vbInformation, head

End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form frmcar", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If Opt <> "add" Then
  stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frmcar", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If grdDataGrid.Columns(0).Text = Empty Or grdDataGrid.Columns(0).Text = "" Then
            MsgBox "Carrier Code cannot be empty", vbInformation, head
        Else
            grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
            Set Rs = New Recordset
            Rs.Open "select 'X'  from po_car where carcode ='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Carrier Code should not repeat", vbInformation, head
                grdDataGrid.Columns(0).Text = "  "
                st = "A"
                Exit Sub
             End If
        End If
        End If
       If ColIndex = 1 Then
       If grdDataGrid.Columns(1).Text <> Empty Then
           grdDataGrid.Columns(1).Text = UCase(grdDataGrid.Columns(1).Text)
       End If
    End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form frmcar", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
If DataError = 7007 Then
'    If grddatagrid.Col = 0 Then
'        MsgBox "Carrier Code should not have more than four characters", vbInformation, head
'        st = "A"
'    Else
'        MsgBox "Carrier Name should not have more than thirty characters", vbInformation, head
'        st2 = "A"
'    End If
End If
Response = 0
End Sub


Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
If KeyCode = vbKeyTab Then
If Opt = "add" Then
    If grdDataGrid.Text = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Carrier Name cannot be empty"), vbInformation, head
            st2 = "A"
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Carrier Code cannot be empty"), vbInformation, head
            st = "A"
        End If
   End If
End If
End If
End If

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
        Call BUTTON_Click(10)   ''CANCEL
    End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form frmcar", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" And Opt = "mod" Then
    If grdDataGrid.Col = 0 Then
        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122) Or (KeyAscii >= 48 And KeyAscii <= 57) Or (KeyAscii = 9 Or KeyAscii = 13 Or KeyAscii = 8) Or KeyAscii = 27) Then
            MsgBox "Invalid Character", vbInformation, head
            grdDataGrid.Col = 0
            st1 = "A"
            grdDataGrid.SetFocus
        Else
            st1 = "B"
        End If
    End If
End If

Select Case grdDataGrid.Col
 Case 0
    If KeyAscii <> 9 Then
       ToAlphaNumber grdDataGrid, 4, KeyAscii
       If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
       stbar.Panels(2).Text = "Enter Maximum of 4 Character"
    End If
 Case 1
    If KeyAscii <> 9 Then
        ToAlphaNumber grdDataGrid, 35, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
        stbar.Panels(2).Text = "Enter Maximum of 35 Character"
    End If
End Select

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form frmcar", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo er1
 Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select a.CARCODE ""Code"",a.CARNAME ""Carrier Name"",a.slcode,b.slname,a.ccode,c.cchead  from  po_car a left join fa_slmas b on a.slcode=b.slcode  left join fa_ccmas c on  a.ccode=c.cccode   Order by a.CARCODE", DB, adLockReadOnly
  
  Set grdDataGrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    stbar.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    GridAllign

  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No Records Found", vbInformation, head
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
  
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then
    If st = "A" Or st1 = "A" Then
        grdDataGrid.Col = 0
        st = "B"
    End If
    If st2 = "A" Then
        grdDataGrid.Col = 1
        st2 = "B"
    End If
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        grdDataGrid.Col = 0
    End If
    If grdDataGrid.Col = 0 And grdDataGrid.Columns(0).Text = "" Then
'
    End If
    If grdDataGrid.Row >= 0 And grdDataGrid.Col = 1 Then
        ln = Len(grdDataGrid.Columns(0).Text)
        For I = 1 To ln
                t = Asc(Mid$(grdDataGrid.Columns(0).Text, I, 1))
                If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
                    grdDataGrid.Col = 0
                    Exit Sub
                End If
                Next I
                st = "B"
                End If
        If Opt = "add" And grdDataGrid.Col = 1 And grdDataGrid.Columns(0) <> "" Then
'
        End If
   End If
   
If Opt = "add" Or Opt = "mod" Then
    Select Case grdDataGrid.Col
     Case 0
           stbar.Panels(2).Text = "Enter Maximum of 4 Character"
     Case 1
            stbar.Panels(2).Text = "Enter Maximum of 35 Character"
    End Select
End If

    If (Opt = "add" Or Opt = "mod") And LastCol = 2 Then
        Set rst1 = New ADODB.Recordset
        rst1.Open "select slname FROM FA_SLMAS WHERE Slcode='" & Trim(grdDataGrid.Columns(2)) & "'", DB, adOpenForwardOnly, adLockReadOnly
        
        If rst1.EOF Then
            LookUp.Clear = True
            LookUp.query = "Select slcode as [AcCode],slname as [AcName] From Fa_slmas"
            LookUp.DefCol = "AcName"
            LookUp.Caption = "Ac Name Listing"
            LookUp.ALIGN = "1000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
               grdDataGrid.Columns(2) = LookUp.Fields(0)
               grdDataGrid.Columns(3) = LookUp.Fields(1)
            Else
               grdDataGrid.Columns(2) = ""
               grdDataGrid.Columns(3) = ""
            End If
        Else
        
        End If
    End If
    
'07/03/14

    If (Opt = "add" Or Opt = "mod") And LastCol = 4 Then
        Set rst1 = New ADODB.Recordset
        rst1.Open "select CCHEAD FROM FA_CCMAS WHERE CCCODE='" & Trim(grdDataGrid.Columns(4)) & "'", DB, adOpenForwardOnly, adLockReadOnly
        
        If rst1.EOF Then
            LookUp.Clear = True
            LookUp.query = "Select CCcode as [CCode],CCHEAD as [CName],EXISTINGCCCODE AS [Ex-Code] From Fa_CCMAS"
            LookUp.DefCol = "CCode"
            LookUp.Caption = "Cost Centre  Listing"
            LookUp.ALIGN = "1000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
               grdDataGrid.Columns(4) = LookUp.Fields(0)
               grdDataGrid.Columns(5) = LookUp.Fields(1)
            Else
               grdDataGrid.Columns(4) = ""
               grdDataGrid.Columns(5) = ""
            End If
        Else
        
        End If
    End If
    
    
    

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form frmcar", vbInformation, head
End Sub

Private Sub scodlist1_GotFocus()
On Error GoTo scodlist1_GotFocus_Error

Command3.Default = True

Exit Sub
scodlist1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure scodlist1_GotFocus of Form frmcar", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GridAllign()

    grdDataGrid.Columns(0).Caption = "Code"
    grdDataGrid.Columns(1).Caption = "Carrier Name"
    grdDataGrid.Columns(2).Caption = "Ac Code"
    grdDataGrid.Columns(3).Caption = "Ac Name"
    grdDataGrid.Columns(4).Caption = "Cost Code"
    grdDataGrid.Columns(5).Caption = "Cost Head"
    
    grdDataGrid.Columns(0).Width = 1000
    grdDataGrid.Columns(1).Width = 3500
    grdDataGrid.Columns(2).Width = 1000
    grdDataGrid.Columns(3).Width = 3600
    grdDataGrid.Columns(4).Width = 1000
    grdDataGrid.Columns(5).Width = 3600
    
    grdDataGrid.Columns(3).Locked = True
    grdDataGrid.Columns(5).Locked = True
        
End Sub
