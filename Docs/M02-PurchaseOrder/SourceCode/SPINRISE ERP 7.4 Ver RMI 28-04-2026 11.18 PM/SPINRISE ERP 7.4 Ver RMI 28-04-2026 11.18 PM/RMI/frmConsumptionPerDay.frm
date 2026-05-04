VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmConsumptionPerDay 
   Caption         =   "Consumption Per Day"
   ClientHeight    =   9150
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   14370
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   9150
   ScaleWidth      =   14370
   WindowState     =   2  'Maximized
   Begin TabDlg.SSTab SSTab1 
      Height          =   4350
      Left            =   900
      TabIndex        =   17
      Top             =   1425
      Width           =   9195
      _ExtentX        =   16219
      _ExtentY        =   7673
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "        "
      TabPicture(0)   =   "frmConsumptionPerDay.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   18
         Top             =   135
         Width           =   8910
         _ExtentX        =   15716
         _ExtentY        =   7170
         _Version        =   393216
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":001C
         Height          =   550
         Index           =   6
         Left            =   2190
         Picture         =   "frmConsumptionPerDay.frx":0466
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":07B3
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "frmConsumptionPerDay.frx":0ABD
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":0E50
         Height          =   550
         Index           =   5
         Left            =   1665
         Picture         =   "frmConsumptionPerDay.frx":129A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":15FF
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   2
         Left            =   1095
         Picture         =   "frmConsumptionPerDay.frx":1909
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":1CA5
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "frmConsumptionPerDay.frx":1FAF
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   10020
         Picture         =   "frmConsumptionPerDay.frx":2329
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "List (Ctrl L)"
         Top             =   240
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":26C0
         Height          =   550
         Index           =   7
         Left            =   2715
         Picture         =   "frmConsumptionPerDay.frx":2B0A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":2E5A
         Height          =   550
         Index           =   11
         Left            =   4800
         Picture         =   "frmConsumptionPerDay.frx":32A4
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":3639
         Height          =   550
         Index           =   9
         Left            =   3765
         Picture         =   "frmConsumptionPerDay.frx":3943
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":3CE5
         Height          =   550
         Index           =   10
         Left            =   4290
         Picture         =   "frmConsumptionPerDay.frx":3FEF
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":436B
         Height          =   550
         Index           =   8
         Left            =   3240
         Picture         =   "frmConsumptionPerDay.frx":47B5
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmConsumptionPerDay.frx":4B17
         Height          =   550
         Index           =   4
         Left            =   10560
         Picture         =   "frmConsumptionPerDay.frx":4E21
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   240
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   12
         Left            =   9360
         Picture         =   "frmConsumptionPerDay.frx":51B6
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
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
         TabIndex        =   15
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7275
         TabIndex        =   14
         Top             =   255
         Width           =   615
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7560
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   8850
      Width           =   14370
      _ExtentX        =   25347
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "16/02/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "04:27 PM"
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
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "Consumption Per Day (in MT)"
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
      TabIndex        =   19
      Top             =   930
      Width           =   3900
   End
End
Attribute VB_Name = "frmConsumptionPerDay"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Variety"
End Sub
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
'       Adodc1.RecordSource = "select LOCCODE""Code"" ,LOCNAME ""Location Name"" from LOCMAS where 1=2 Order by LOCCODE"
'       Adodc1.Refresh
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
'       Set grdDataGrid.DataSource = Adodc1.Recordset
        grdDataGrid.Columns(0).Width = 1000
        grdDataGrid.Columns(1).Width = 3000
        grdDataGrid.Columns(2).Width = 750
        grdDataGrid.Columns(3).Width = 750
        grdDataGrid.Columns(4).Width = 750
        grdDataGrid.Columns(5).Width = 750
        grdDataGrid.Columns(6).Width = 750
        
'        grdDataGrid.Columns(0).Visible = False
        
        DB.BeginTrans
        grdDataGrid.AllowAddNew = True
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.AddNew
                
        Call adddelmod(BUTTON)
                
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus

Case 1
        'modification
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_ConsumptionPerDay", DB
    If Not Rs(0) = 0 Then
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        DB.BeginTrans
         
         LookUp.Clear = True
         LookUp.query = "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay"
         LookUp.Caption = "Variety Listing"
         LookUp.DefCol = "varName"
         LookUp.ALIGN = "1000,2000,500,500,500,500,500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            SSTab1.Visible = True
            grdDataGrid.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay where varcode='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.Columns(0).Width = 1000
            grdDataGrid.Columns(1).Width = 3000
            grdDataGrid.Columns(2).Width = 750
            grdDataGrid.Columns(3).Width = 750
            grdDataGrid.Columns(4).Width = 750
            grdDataGrid.Columns(5).Width = 750
            grdDataGrid.Columns(6).Width = 750
            
'            grdDataGrid.Columns(0).Visible = False

            grdDataGrid.AllowAddNew = False
            grdDataGrid.Col = 1
            grdDataGrid.Row = 0
            grdDataGrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
            BUTTON(9).SetFocus
            End If
            Call adddelmod(BUTTON)
            'Frame3.Visible = False
         Else
            Call BUTTON_Click(10)
         End If
        grdDataGrid.AllowUpdate = True
        'grdDataGrid.Columns(0).Locked = True
        StatusBar1.Panels(2).Text = "Select variety Code from the list for modification"
        Screen.MousePointer = 0
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from RM_ConsumptionPerDay where 1=1", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        DB.BeginTrans
        LookUp.Clear = True
         LookUp.query = "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay"
         LookUp.Caption = "Variety Listing"
         LookUp.DefCol = "varName"
         LookUp.ALIGN = "1000,2000,500,500,500,500,500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            SSTab1.Visible = True
            grdDataGrid.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay where varcode='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.Columns(0).Width = 1000
            grdDataGrid.Columns(1).Width = 3000
            grdDataGrid.Columns(2).Width = 750
            grdDataGrid.Columns(3).Width = 750
            grdDataGrid.Columns(4).Width = 750
            grdDataGrid.Columns(5).Width = 750
            grdDataGrid.Columns(6).Width = 750
                        
            grdDataGrid.AllowAddNew = False
            grdDataGrid.Col = 1
            grdDataGrid.Row = 0
            grdDataGrid.SetFocus
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                BUTTON(9).SetFocus
            End If
            Call adddelmod(BUTTON)
         Else
            Call BUTTON_Click(10)
         End If
        StatusBar1.Panels(2).Text = "Select Variety Code from the list for deletion"
        Screen.MousePointer = 0
    Else
        MsgBox "No Record Found", vbInformation, head
        Exit Sub
    End If
Case 4
    Opt = "fnd"
    desc.Caption = "Find"
            DB.BeginTrans
            LookUp.Clear = True
            LookUp.query = "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay"
            LookUp.Caption = "Variety Listing"
            LookUp.DefCol = "varName"
            LookUp.ALIGN = "1000,2000,500,500,500,500,500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
               SSTab1.Visible = True
               grdDataGrid.Visible = True
               StatusBar1.Panels(2).Text = ""
               Set adoPrimaryRS = New Recordset
               adoPrimaryRS.Open "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay where varcode='" & LookUp.Fields(0) & "' order by varCode", DB, adOpenStatic, adLockBatchOptimistic
               Set grdDataGrid.DataSource = adoPrimaryRS
               grdDataGrid.Columns(0).Width = 1000
               grdDataGrid.Columns(1).Width = 3000
               grdDataGrid.Columns(2).Width = 750
               grdDataGrid.Columns(3).Width = 750
               grdDataGrid.Columns(4).Width = 750
               grdDataGrid.Columns(5).Width = 750
               grdDataGrid.Columns(6).Width = 750
                                             
               grdDataGrid.Columns(0).Locked = True
               grdDataGrid.AllowAddNew = False
               grdDataGrid.Col = 1
               grdDataGrid.Row = 0
               grdDataGrid.SetFocus
               BUTTON(9).Enabled = True 'Save
               BUTTON(10).Enabled = True
               If Opt = "del" Then
                BUTTON(9).SetFocus
               End If
               Call adddelmod(BUTTON)
               If Opt = "fnd" Then
                   BUTTON(9).Enabled = False
               End If
            Else
               Call BUTTON_Click(10)
            End If
        StatusBar1.Panels(2).Text = "Select Variety Code from the list"
        Screen.MousePointer = 0
Case 3

Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        StatusBar1.Panels(2).Text = "First Record"
        'calling fir procedure from module
        Call navi(BUTTON)
        Call FIR(BUTTON)
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
        Call navi(BUTTON)
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
        Call navi(BUTTON)
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
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
        If Opt = "add" Or Opt = "mod" Then
           If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
        MsgBox "Empty record Can't be Saved", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
      End If
      If grdDataGrid.Columns(1).Text = "" Then
        MsgBox "Variety Name Can't be Empty", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
      End If
      
           tmp = Opt
           Opt = ""
           adoPrimaryRS.MoveFirst
           Do While Not adoPrimaryRS.EOF
           If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" And Trim(grdDataGrid.Columns(3).Text) = "" Then
            adoPrimaryRS.Delete
           Else
           End If
           adoPrimaryRS.MoveNext
           Loop
           If adoPrimaryRS.RecordCount = 0 Then
                DB.RollbackTrans
                Exit Sub
           End If
           
          If adoPrimaryRS.RecordCount = 0 Then
            BUTTON_Click (10)
            DB.RollbackTrans
            Exit Sub
          End If
           Opt = tmp
           adoPrimaryRS.MoveFirst
           adoPrimaryRS.UpdateBatch adAffectAllChapters
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Consumption Per Day"
            TrnLog("Trans_Mod") = Opt
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
           
           DB.CommitTrans
           If Opt = "add" Then
                MsgBox "Record(s) Saved", vbInformation, head
           Else
                MsgBox "Record(s) Modified", vbInformation, head
           End If
            
           Opt = ""
     End If
       If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
       End If
       If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         adoPrimaryRS.UpdateBatch adAffectAllChapters
         
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description  FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Consumption Per Day"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
         
         DB.CommitTrans
                MsgBox "Record(s) Modified", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
            DB.Execute ("delete from RM_ConsumptionPerDay where varcode=" + "'" + grdDataGrid.Columns(0) + "'")
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Consumption Per Day"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            
            DB.CommitTrans
              MsgBox "Record(s) Deleted", vbInformation, head
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
         BUTTON(4).Enabled = True
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
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
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    grdDataGrid.Visible = True
    SSTab1.Visible = True
    
    'calling cancl procedure from module
    Call cancl(BUTTON)
    ''button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''''
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
'    Dim Cystalrptbunk As New clsCrystal
'    Set Cystalrptbunk.cryRept = Cry_Variety
'    Cystalrptbunk.CrystalPrint
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
''    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
'    CrystalReport1.WindowShowPrintSetupBtn = True
'    CrystalReport1.WindowShowSearchBtn = True
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{ENTER}"
'    CrystalReport1.Action = 1
'    CrystalReport1.PrinterCopies = 1
'    Screen.MousePointer = 0

End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Variety Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Variety Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Variety Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grdDataGrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmVariety", vbInformation, head
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
   ' sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    grdDataGrid.Columns(0).Width = 1000
    grdDataGrid.Columns(1).Width = 3000
    grdDataGrid.Columns(2).Width = 750
    grdDataGrid.Columns(3).Width = 750
    grdDataGrid.Columns(4).Width = 750
    grdDataGrid.Columns(5).Width = 750
    grdDataGrid.Columns(6).Width = 750
    
    
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmVariety", vbInformation, head
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt <> "add" Then
      StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
  intervalMinutes = -1
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub


Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error


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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
If grdDataGrid.Col = 0 Then
    ToAlphaNumber grdDataGrid, 3, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
ElseIf grdDataGrid.Col = 1 Then
    ToAlphaNumber grdDataGrid, 100, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
    'Initials grddatagrid, KEYASCII
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
ElseIf grdDataGrid.Col = 2 Then
    ToNumberAssign grdDataGrid, 5, KeyAscii, 5, 0
ElseIf grdDataGrid.Col = 3 Then
    ToNumberAssign grdDataGrid, 5, KeyAscii, 5, 0
ElseIf grdDataGrid.Col = 4 Then
    ToNumberAssign grdDataGrid, 5, KeyAscii, 5, 0
ElseIf grdDataGrid.Col = 5 Then
    ToNumberAssign grdDataGrid, 5, KeyAscii, 5, 0
ElseIf grdDataGrid.Col = 6 Then
    ToNumberAssign grdDataGrid, 5, KeyAscii, 5, 0
End If
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub query_mode()
On Error GoTo er1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select Varcode as Code,varname as Variety,P1,P2,S1,S2,S3 from RM_ConsumptionPerDay order by varcode", DB, adOpenStatic, adLockReadOnly
  Set grdDataGrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  
    grdDataGrid.Columns(0).Width = 1000
    grdDataGrid.Columns(1).Width = 3000
    grdDataGrid.Columns(2).Width = 750
    grdDataGrid.Columns(3).Width = 750
    grdDataGrid.Columns(4).Width = 750
    grdDataGrid.Columns(5).Width = 750
    grdDataGrid.Columns(6).Width = 750
        
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
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
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
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
    If LastCol = 0 And Opt = "add" Then
        LookUp.Clear = True
         LookUp.query = "select Varcode as Code,varname as Variety from RM_var where varcode not in(select varcode from RM_ConsumptionPerDay)"
         LookUp.Caption = "Variety Listing"
         LookUp.DefCol = "varName"
         LookUp.ALIGN = "1500,3000"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            grdDataGrid.Columns(0).Text = LookUp.Fields(0)
            grdDataGrid.Col = 2
            grdDataGrid.Columns(1).Text = LookUp.Fields(1)
         Else
         End If
    End If
End Sub
