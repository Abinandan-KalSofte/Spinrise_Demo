VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmpmode 
   Caption         =   "Mode of Payment"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9900
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   9900
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   8880
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "           "
      TabPicture(0)   =   "RMIpmode.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   120
         TabIndex        =   12
         Top             =   120
         Width           =   6270
         _ExtentX        =   11060
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
      Height          =   645
      Left            =   -15
      TabIndex        =   18
      Top             =   -105
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5760
         Picture         =   "RMIpmode.frx":001C
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":045E
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMIpmode.frx":0768
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":0AFD
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMIpmode.frx":0F47
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":1294
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIpmode.frx":159E
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":1931
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMIpmode.frx":1D7B
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":20E0
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
         Picture         =   "RMIpmode.frx":23EA
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":2786
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIpmode.frx":2A90
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
         Picture         =   "RMIpmode.frx":2E0A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":31A1
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMIpmode.frx":35EB
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":393B
         Height          =   510
         Index           =   11
         Left            =   6375
         Picture         =   "RMIpmode.frx":3D85
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":411A
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMIpmode.frx":4424
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":47C6
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMIpmode.frx":4AD0
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIpmode.frx":4E4C
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMIpmode.frx":5296
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8685
         TabIndex        =   20
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
         Left            =   7155
         TabIndex        =   19
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   22
      Top             =   2895
      Width           =   9900
      _ExtentX        =   17463
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
            TextSave        =   "13/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "5:38 PM"
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
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   240
      TabIndex        =   13
      Top             =   1200
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIpmode.frx":55F8
         Height          =   615
         Left            =   3000
         Picture         =   "RMIpmode.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   16
         Top             =   4050
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIpmode.frx":5DA4
         Height          =   615
         Left            =   4740
         Picture         =   "RMIpmode.frx":6186
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   4050
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   14
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   17
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label label1 
      Caption         =   "Mode of Payment"
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
      Height          =   375
      Left            =   1020
      TabIndex        =   21
      Top             =   870
      Width           =   2760
   End
End
Attribute VB_Name = "frmpmode"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim DB As Connection
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Purchase Mode"
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'This will display the current record position for this recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
    If Not Opt = "add" Then
        StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
    Case 0
        'addition
        Opt = "add"
        If Opt = "add" Then
            desc.Caption = "Addition"
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select paymode ""Code"",paydesc ""Description"" from rm_pmode where 1 = 2 ", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.Columns(0).Width = 1140.095
            grdDataGrid.Columns(1).Width = 4754.835
            adoPrimaryRS.AddNew
            DB.BeginTrans
            Call adddelmod(BUTTON)
            grdDataGrid.AllowUpdate = True
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            'BUTTON(9).ToolTipText = "Add Record"
        End If
    Case 1, 2, 4
        'modification
        Set Rs = New Recordset
        Rs.Open "select * from rm_pmode", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            Screen.MousePointer = 11
            If Index = 1 Then
                Opt = "mod"
                desc.Caption = "Modification"
                'BUTTON(9).ToolTipText = "Modify"
                StatusBar1.Panels(2).Text = "Select Payment Mode from the list for modification"
            ElseIf Index = 2 Then
                Opt = "del"
                desc.Caption = "Deletion"
                'BUTTON(9).ToolTipText = "Delete"
                StatusBar1.Panels(2).Text = "Select Payment Mode from the list for Deletion"
            ElseIf Index = 4 Then
                Opt = "fnd"
                desc.Caption = "Find"
                'BUTTON(9).ToolTipText = "Find"
                StatusBar1.Panels(2).Text = "Select Payment Mode from the list"
            End If
            DB.BeginTrans
'''            SSTab1.Visible = False
'''            Frame3.Visible = True
'''            grddatagrid.Visible = True
'''            Label15.Caption = "Mode of Payment List"
'''            KSLLIST1.conn = connectstring
'''            KSLLIST1.table = "rm_pmode"
'''            KSLLIST1.listfield1 = "paymode"
'''            KSLLIST1.listfield2 = "paydesc"
'''            Command3.SetFocus
'''            Frame3.ZOrder
                LookUp.Clear = True
                LookUp.query = "SELECT PAYMODE""PaymentMode"",PAYDESC""Description"" FROM RM_PMODE"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "2000,4000"
                LookUp.Caption = "Mode of Payment Listing"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    grdDataGrid.Visible = True
                    StatusBar1.Panels(2).Text = ""
                    Set adoPrimaryRS = New Recordset
                    adoPrimaryRS.Open "select paymode""Code"",paydesc ""Description"" from rm_pmode where paymode = '" & LookUp.Fields(0) & "' order by paymode", DB, adOpenStatic, adLockBatchOptimistic
                    Set grdDataGrid.DataSource = adoPrimaryRS
                    grdDataGrid.Columns(0).Width = 1140.095
                    grdDataGrid.Columns(1).Width = 4754.835
                    If Opt = "mod" Then
                        grdDataGrid.Columns(0).Locked = True
                    End If
                    If Opt = "del" Then
                        grdDataGrid.Columns(0).Locked = True
                        grdDataGrid.Columns(1).Locked = True
                    End If
                    grdDataGrid.AllowAddNew = False
                    grdDataGrid.Col = 1
                    grdDataGrid.Row = 0
                    grdDataGrid.SetFocus
                    BUTTON(9).Enabled = True 'Save
                    BUTTON(10).Enabled = True 'cancel
                    If Opt = "del" Then
                        BUTTON(9).SetFocus
                    End If
                    Frame3.Visible = False
            
                    grdDataGrid.AllowUpdate = True
                    Call adddelmod(BUTTON)
                    grdDataGrid.Columns(0).Locked = True
                    If Opt = "fnd" Then
                        BUTTON(9).Enabled = False
                    End If
                    Screen.MousePointer = 0
                Else
                    Call BUTTON_Click(10)
                End If
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
    Case 2
        'deletion
        Set Rs = New Recordset
        Rs.Open "select * from rm_pmode", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then
            Opt = "del"
            desc.Caption = "Deletion"
            DB.BeginTrans
            SSTab1.Visible = False
            grdDataGrid.Visible = False
            Label15.Caption = "Mode of Payment List"
            KslList1.conn = connectstring
            KslList1.Table = "rm_pmode"
            KslList1.listfield1 = "paymode"
            KslList1.listfield2 = "paydesc"
            'Command3.SetFocus
            Frame3.Visible = True
            Frame3.ZOrder
            grdDataGrid.AllowUpdate = True
            Call adddelmod(BUTTON)
            grdDataGrid.Columns(0).Locked = True
            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select Payment Mode from the list for modification"
            Screen.MousePointer = 0
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
    Case 3  'List
        desc.Caption = "Listing"
        Set dv1 = New DataEnvironment1
        dv1.Connection1.ConnectionString = connectstring
        Set DB = New Connection
        DB.CursorLocation = adUseClient
        DB.Provider = "msdatashape"
        DB.Open connectstring
        Call repproc2(rptpmode)
        dv1.rsCommand1.Open "select paymode,paydesc from rm_pmode", DB, adOpenStatic, adLockBatchOptimistic
        If dv1.rsCommand1.RecordCount > 0 Then
            Set rptpmode.DataSource = dv1
            rptpmode.Show
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
        
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
       If Opt = "add" Then
        If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
        MsgBox "Empty record Cannot be Saved", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
      End If
      If Trim(grdDataGrid.Columns(0).Text) = "" Then
        MsgBox "Code Cannot be Empty", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
      End If
      If grdDataGrid.Columns(1).Text = "" Then
        MsgBox "Description Cannot be Empty", vbInformation, head
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
        Exit Sub
      End If
            If Trim(grdDataGrid.Columns(0).Text) = "" And adoPrimaryRS.RecordCount = 0 Then
               MsgBox "Please Enter the Values", vbInformation, head
               Exit Sub
            End If
            tmp = Opt
            Opt = ""
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    adoPrimaryRS.Delete
                End If
                adoPrimaryRS.MoveNext
            Loop
                        adoPrimaryRS.MoveFirst
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Mode of Payment"
                        TrnLog("Trans_Mod") = "Add"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grdDataGrid.Columns(0).Text
                        TrnLog("description") = grdDataGrid.Columns(1).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            adoPrimaryRS.MoveFirst
            MsgBox "Records Added", vbInformation, head
            Opt = ""
       End If
       If Opt = "mod" Then
            If Trim(grdDataGrid.Columns(0).Text) = "" And adoPrimaryRS.RecordCount = 0 Then
               MsgBox "Please Enter the Values", vbInformation, head
               Exit Sub
            End If
            adoPrimaryRS.MoveFirst
            Do While Not adoPrimaryRS.EOF
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    adoPrimaryRS.Delete
                End If
                adoPrimaryRS.MoveNext
            Loop
       
            
                            adoPrimaryRS.MoveFirst
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Mode of Payment"
                        TrnLog("Trans_Mod") = "Mod"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grdDataGrid.Columns(0).Text
                        TrnLog("description") = grdDataGrid.Columns(1).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            DB.CommitTrans
            MsgBox "Records Modified", vbInformation, head
            Opt = ""
       End If
       If Opt = "del" Then
         On Error GoTo deler
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
                                       
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Mode of Payment"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grdDataGrid.Columns(0).Text
                        TrnLog("description") = grdDataGrid.Columns(1).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
            DB.Execute ("delete from rm_pmode where paymode=" + "'" + grdDataGrid.Columns(0) + "'")
            
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
         BUTTON(0).SetFocus
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
        desc.Caption = "Query"
        Screen.MousePointer = 11
        'cancel
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
    Frame3.Visible = False
    Call cancl(BUTTON)
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus '''''''''''''
Case 11
    'EXIT
    Reset
    Unload Me
    
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_ModeOfPay
    Cystalrptbunk.CrystalPrint
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

End Select
    Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Paymode cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Description cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grdDataGrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frmpmode", vbInformation, head
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

 If Opt = "mod" Or Opt = "del" Or Opt = "add" Then
        SSTab1.Visible = True
        grdDataGrid.Visible = True
        StatusBar1.Panels(2).Text = ""
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select paymode""Code"",paydesc ""Description"" from rm_pmode where paymode = '" & KslList1.Code & "' order by paymode", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
        grdDataGrid.Columns(0).Width = 1140.095
        grdDataGrid.Columns(1).Width = 4754.835
        If Opt = "mod" Then
            grdDataGrid.Columns(0).Locked = True
        End If
        If Opt = "del" Then
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Columns(1).Locked = True
        End If
        grdDataGrid.AllowAddNew = False
        grdDataGrid.Col = 1
        grdDataGrid.Row = 0
        grdDataGrid.SetFocus
        BUTTON(9).Enabled = True 'Save
        BUTTON(10).Enabled = True 'cancel
        If Opt = "del" Then
            BUTTON(9).SetFocus
        End If
        Frame3.Visible = False
    End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form frmpmode", vbInformation, head
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
 If KeyCode = vbKeyA And Shift = 2 Then  ''''''''''' ADDITION
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then ''''''''' MODIFY
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then    '''''DELETE
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then    '''' LIST
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then ''''''''SAVE
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then ''''' UNDO
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then    ''' EXIT
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
'    ElseIf KeyCode = vbKeyW And Shift = 2 Then
'        Call Command6_Click
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        Call BUTTON_Click(10)
    End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    'sstab1.Tabs.Clear
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub query_mode()
intervalMinutes = -1
    On Error GoTo Err1
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select paymode""Code"",paydesc""Description"" from rm_pmode order by paymode", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    If adoPrimaryRS.BOF Then
        MsgBox "No Records Found", vbInformation, head
    End If
    grdDataGrid.Columns(0).Width = 1140.095
    grdDataGrid.Columns(1).Width = 4754.835
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
Err1:
  If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub


Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
  'rs.Open "select 'X'  from rm_pmode where paymode='" & grdDataGrid.Columns(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
  Dim Rs As Recordset
On Error GoTo GrdDatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Paymode Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_pmode where paymode='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Paymode already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = " "
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                st = "A"
                Exit Sub
             End If
        End If
        End If
If Opt = "add" Then
If Trim(grdDataGrid.Columns(0)) <> "" Then
    BUTTON(9).Enabled = True
End If
End If
  
If st1 = "A" Then
    grdDataGrid.Col = 1
    grdDataGrid.SetFocus
End If


If ColIndex = 0 And Opt = "add" Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
row1 = grdDataGrid.Row
'flg = "n"
itemc = grdDataGrid.Columns(0).Text
adoPrimaryRS.MoveFirst
Do While Not adoPrimaryRS.EOF
If itemc = adoPrimaryRS("Code") Then
cut = cut + 1
End If
adoPrimaryRS.MoveNext
Loop
If cut > 1 Then
MsgBox "Paymode already defined", vbInformation, head
'flg = "y"
grdDataGrid.Row = row1
grdDataGrid.Columns(0).Text = " "
grdDataGrid.Col = 0
grdDataGrid.SetFocus
Else
grdDataGrid.Row = row1
grdDataGrid.Col = 0
grdDataGrid.SetFocus
End If
End If


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form frmpmode", vbInformation, head
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

If Opt = "add" Then
     If grdDataGrid.Col = 0 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 2 Character"
     End If
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 25 Character"
     End If
 ElseIf Opt = "mod" Then
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 25 Character"
     End If
 End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

If Opt = "add" Or Opt = "mod" Then
'     If KeyCode = vbKeyTab Then
'        If grdDataGrid.Col = 1 Then
'            If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text = "" Then
'                    MsgBox "Enter the description", vbInformation, head
'                    grdDataGrid.Col = 1
'                    grdDataGrid.SetFocus
'                    Exit Sub
'            End If
'        End If
'    End If
    If Opt = "add" And grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text <> "" Then
        If KeyCode = vbKeyTab Then
            If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
                adoPrimaryRS.AddNew
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
            End If
        End If
    End If
 End If
 
  If KeyCode = vbKeyA And Shift = 2 Then  ''''''''''' ADDITION
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then ''''''''' MODIFY
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then    '''''DELETE
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then    '''' LIST
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then ''''''''SAVE
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then ''''' UNDO
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then    ''' EXIT
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
'    ElseIf KeyCode = vbKeyW And Shift = 2 Then
'        Call Command6_Click
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        Call BUTTON_Click(10)
    End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
intervalMinutes = -1
 If Opt = "add" Then
    If grdDataGrid.Col = 0 Then
    StatusBar1.Panels(2).Text = "Enter Maximum of 2 Character"
        Call ToAlphaNumber(grdDataGrid, 2, KeyAscii)
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    End If
    If grdDataGrid.Col = 1 Then
    StatusBar1.Panels(2).Text = "Enter Maximum of 25 Character"
        Call ToAlphaNumber(grdDataGrid, 25, KeyAscii)
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    End If
End If
If Opt = "mod" And grdDataGrid.Col = 1 Then
    Call ToAlphaNumber(grdDataGrid, 25, KeyAscii)
End If

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form frmpmode", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then
If grdDataGrid.Row >= 0 Then
'If grdDataGrid.Columns(0).Text = "" And grdDataGrid.Col = 1 Then
'MsgBox "Paymode Code Cannot Be Empty", vbInformation, head
'grdDataGrid.Col = 0
'grdDataGrid.SetFocus
'End If
If st = "A" Then
grdDataGrid.Col = 0
grdDataGrid.SetFocus
st = ""
End If
If ColIndex = 0 Then
    If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
        MsgBox "Paymode Code cannot be empty!", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        st = "A"
    Else
        Set Rs = New Recordset
        Rs.Open "select 'X'  from rm_pmode where paymode='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            'MsgBox "Paymode already defined!", vbInformation, head
            'GrdDataGrid.Columns(0).Text = ""
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            st = "A"
            Exit Sub
         End If
    End If
End If
'    If GrdDataGrid.Col = 1 And Trim(GrdDataGrid.Columns(0).Text) = "" Then
''        Code = adoprimaryrs(0)
''        rmark = adoprimaryrs.AbsolutePosition
''        adoprimaryrs.MoveFirst
''        Do While Not adoprimaryrs.EOF
''            If adoprimaryrs(0).Value = Code And Not adoprimaryrs.AbsolutePosition = rmark Then
''                MsgBox "Code Already Defined", vbInformation, head
''                adoprimaryrs.AbsolutePosition = rmark
''                adoprimaryrs(0).Value = " "
''                grdDataGrid.Col = 0
''                grdDataGrid.SetFocus
''                Exit Sub
''            End If
''            adoprimaryrs.MoveNext
''        Loop
''        adoprimaryrs.AbsolutePosition = rmark
''    End If
'    MsgBox "Payment Code cannot be empty", vbInformation, head
'    GrdDataGrid.Col = 0
'    GrdDataGrid.SetFocus
'    Exit Sub
'  End If
 End If
 End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form frmpmode", vbInformation, head
End Sub

