VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form Frm_DeliveryOrder 
   Caption         =   "Delivery Order"
   ClientHeight    =   6315
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10695
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   Begin TabDlg.SSTab SSTab1 
      Height          =   6090
      Left            =   705
      TabIndex        =   15
      Top             =   1320
      Width           =   9900
      _ExtentX        =   17463
      _ExtentY        =   10742
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "Frm_DeliveryOrder.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraApproval"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame FraApproval 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   5835
         Left            =   105
         TabIndex        =   16
         Top             =   75
         Width           =   9735
         Begin VB.TextBox T_VechileNo 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   1425
            TabIndex        =   30
            Top             =   1515
            Width           =   2535
         End
         Begin VB.TextBox T_carName 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2730
            TabIndex        =   28
            Top             =   1155
            Width           =   4500
         End
         Begin VB.TextBox T_Carcode 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   1410
            TabIndex        =   27
            Top             =   1155
            Width           =   1275
         End
         Begin VB.TextBox T_SlName 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   2730
            TabIndex        =   25
            Top             =   750
            Width           =   4500
         End
         Begin VB.TextBox T_Slcode 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   1410
            TabIndex        =   24
            Top             =   750
            Width           =   1275
         End
         Begin VB.TextBox T_DocNo 
            Appearance      =   0  'Flat
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   315
            Left            =   1425
            TabIndex        =   21
            Top             =   330
            Width           =   1245
         End
         Begin FPSpreadADO.fpSpread SpdDO 
            Height          =   3645
            Left            =   75
            TabIndex        =   17
            Top             =   2040
            Width           =   9555
            _Version        =   524288
            _ExtentX        =   16854
            _ExtentY        =   6429
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            EditEnterAction =   5
            EditModePermanent=   -1  'True
            EditModeReplace =   -1  'True
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   7
            MaxRows         =   1
            ProcessTab      =   -1  'True
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "Frm_DeliveryOrder.frx":001C
            Appearance      =   2
         End
         Begin MSComCtl2.DTPicker Dt_DocDt 
            Height          =   315
            Left            =   5820
            TabIndex        =   22
            Top             =   345
            Width           =   1425
            _ExtentX        =   2514
            _ExtentY        =   556
            _Version        =   393216
            Format          =   134938625
            CurrentDate     =   42633
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Vechicle No."
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   405
            TabIndex        =   29
            Top             =   1560
            Width           =   990
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Transport"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   405
            TabIndex        =   26
            Top             =   1185
            Width           =   840
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   405
            TabIndex        =   23
            Top             =   780
            Width           =   690
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   5100
            TabIndex        =   20
            Top             =   405
            Width           =   510
         End
         Begin VB.Label L_Docno 
            AutoSize        =   -1  'True
            Caption         =   "Doc. No."
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   390
            TabIndex        =   19
            Top             =   375
            Width           =   660
         End
      End
   End
   Begin VB.Frame Buttonframe 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   705
      Left            =   -15
      TabIndex        =   0
      Top             =   -90
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":04A0
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   6
         Left            =   3150
         Picture         =   "Frm_DeliveryOrder.frx":08EA
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":0C37
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "Frm_DeliveryOrder.frx":0F41
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":12D4
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   5
         Left            =   2625
         Picture         =   "Frm_DeliveryOrder.frx":171E
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":1A83
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
         Picture         =   "Frm_DeliveryOrder.frx":1D8D
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":2129
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "Frm_DeliveryOrder.frx":2433
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "Frm_DeliveryOrder.frx":27AD
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":2B44
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   7
         Left            =   3675
         Picture         =   "Frm_DeliveryOrder.frx":2F8E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":32DE
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   11
         Left            =   5775
         Picture         =   "Frm_DeliveryOrder.frx":3728
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":3ABD
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   9
         Left            =   4725
         Picture         =   "Frm_DeliveryOrder.frx":3DC7
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":4169
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   10
         Left            =   5250
         Picture         =   "Frm_DeliveryOrder.frx":4473
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":47EF
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   8
         Left            =   4200
         Picture         =   "Frm_DeliveryOrder.frx":4C39
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_DeliveryOrder.frx":4F9B
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "Frm_DeliveryOrder.frx":52A5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Find (Ctrl F)"
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
         Left            =   8565
         TabIndex        =   14
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
         Left            =   7035
         TabIndex        =   13
         Top             =   255
         Width           =   615
      End
   End
   Begin VB.Label Label1 
      Caption         =   "Delivery Order"
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
      Left            =   750
      TabIndex        =   18
      Top             =   915
      Width           =   2160
   End
End
Attribute VB_Name = "Frm_DeliveryOrder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Dim WithEvents adoPrimaryRS As Recordset
'Dim adoSecondaryRS As Recordset
'Dim db As Connection
'Dim rst2 As New ADODB.Recordset
'Dim Opt As String
'Dim Repeat As Boolean
'Dim FinalLevel As Boolean
'Dim DORS As New ADODB.Recordset
'Dim Rs As New Recordset
'
'Private Enum E_SPDDO
'    spdDOContNo = 1
'    spdDOContDt = 2
'    spdDOPRNO = 3
'    spdDOLotNo = 4
'    spdDOQty = 5
'End Enum
'
'Private Sub BUTTON_Click(Index As Integer)
'
'Select Case Index
'
'  Case 0
'
'  Case 1
'
'  Case 2
'
'  Case 3
'
'  Case 4
'
'  Case 5
'
'  Case 6
'
'  Case 7
'
'  Case 8
'
'  Case 9
'
'  Case 10
'
'  Case 11
'
'  Case 12
'
'  Case 13
'
'End Select
'
'
'
'
'
'End Sub
'
'Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
'
'On Error GoTo Form_KeyDown_Error
'
'
'If KeyCode = vbKeyA And Shift = 2 Then
'    If BUTTON(0).Enabled = True Then
'        Call BUTTON_Click(0)    ''Add
'    End If
'ElseIf KeyCode = vbKeyM And Shift = 2 Then
'   If BUTTON(1).Enabled = True Then
'        Call BUTTON_Click(1)    ''Modify
'   End If
'ElseIf KeyCode = vbKeyD And Shift = 2 Then
'    If BUTTON(2).Enabled = True Then
'        Call BUTTON_Click(2)    ''Delete
'    End If
'ElseIf KeyCode = vbKeyL And Shift = 2 Then
'    If BUTTON(3).Enabled = True Then
'        Call BUTTON_Click(3)    ''List
'    End If
'ElseIf KeyCode = vbKeyF And Shift = 2 Then
'    If BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)    ''Find
'    End If
'ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
'    If BUTTON(5).Enabled = True Then
'        Call BUTTON_Click(5)    ''First
'    End If
'ElseIf KeyCode = vbKeyDown And Shift = 2 Then
'    If BUTTON(6).Enabled = True Then
'        Call BUTTON_Click(6)    ''Next
'    End If
'ElseIf KeyCode = vbKeyUp And Shift = 2 Then
'    If BUTTON(7).Enabled = True Then
'        Call BUTTON_Click(7)    ''Previous
'    End If
'ElseIf KeyCode = vbKeyRight And Shift = 2 Then
'    If BUTTON(8).Enabled = True Then
'        Call BUTTON_Click(8)    ''Last
'    End If
'ElseIf KeyCode = vbKeyS And Shift = 2 Then
'    If BUTTON(9).Enabled = True Then
'        Call BUTTON_Click(9)    ''Save
'    End If
'ElseIf KeyCode = vbKeyBack And Shift = 2 Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)    ''Cancel
'    End If
'ElseIf KeyCode = vbKeyQ And Shift = 2 Then
'    If BUTTON(11).Enabled = True Then
'        Call BUTTON_Click(11)   ''Exit
'    End If
'ElseIf KeyCode = vbKeyP And Shift = 2 Then
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
'ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        Call BUTTON_Click(13)   ''Crystal Report
'    End If
'ElseIf KeyCode = vbKeyEscape Then
'    If BUTTON(10).Enabled = True Then
'        Call BUTTON_Click(10)   ''Cancel
'    End If
'End If
'
'    If KeyCode = vbKeyF1 Then
'        Call showForm4FunctionKey("F1")
'    ElseIf KeyCode = vbKeyF2 Then
'        Call showForm4FunctionKey("F2")
'    ElseIf KeyCode = vbKeyF3 Then
'        Call showForm4FunctionKey("F3")
'    ElseIf KeyCode = vbKeyF4 Then
'        Call showForm4FunctionKey("F4")
'    ElseIf KeyCode = vbKeyF5 Then
'        Call showForm4FunctionKey("F5")
'    ElseIf KeyCode = vbKeyF6 Then
'        Call showForm4FunctionKey("F6")
'    ElseIf KeyCode = vbKeyF7 Then
'        Call showForm4FunctionKey("F7")
'    ElseIf KeyCode = vbKeyF8 Then
'        Call showForm4FunctionKey("F8")
'    ElseIf KeyCode = vbKeyF9 Then
'        Call showForm4FunctionKey("F9")
'    ElseIf KeyCode = vbKeyF10 Then
'        Call showForm4FunctionKey("F10")
'    ElseIf KeyCode = vbKeyF11 Then
'        Call showForm4FunctionKey("F11")
'    ElseIf KeyCode = vbKeyF12 Then
'        Call showForm4FunctionKey("F12")
'    End If
'
'
'
'
'Exit Sub
'Form_KeyDown_Error:
'MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form Frm_DeliveryOrder"
'
'End Sub
'Public Sub OpenConnection()
'On Error GoTo OpenConnection_Error
'
'
'    Set db = New Connection
'    db.CursorLocation = adUseClient
'    db.Open connectstring
'
'
'
'Exit Sub
'OpenConnection_Error:
'MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure OpenConnection of Form Frm_DeliveryOrder"
'End Sub
'Private Sub Querymode()
'On Error GoTo Querymode_Error
'
'
'  Set adoPrimaryRS = New Recordset
'  adoPrimaryRS.Open "select areacode ""Code"" ,areaname ""Area"",STATION ""Station Name"",State ""State"",case l_or_u when 'L' then 'Local' when 'I' then 'Import' else 'Upcountry' end ""Local/Upcountry"" from rm_area order by areacode", db, adOpenStatic, adLockReadOnly
'  Set grddatagrid.DataSource = adoPrimaryRS
'  If adoPrimaryRS.BOF Then
'    MsgBox " No Records Found", vbInformation, head
'  End If
'  desc.Caption = "Query"
'  DATLAB.Caption = pdate
'  Opt = " "
'  Screen.MousePointer = 0
'  Call NEWFORM1(BUTTON, GSNO)
'
'
'
'Exit Sub
'Querymode_Error:
'MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Querymode of Form Frm_DeliveryOrder"
'
'End Sub
'Private Sub SpdLoad()
'    SetGridHead
'    RW = 1
'
'    With SpdDO
'        Set APPRS = New ADODB.Recordset
'        APPRS.Open "Select * from RM_DODT  where divcode ='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
'        Do While APPRS.EOF = False
'            .SetText E_SPDPOAPP.spdALevelID, RW, APPRS("AppLevelId")
'            .SetText E_SPDPOAPP.spdALevelName, RW, APPRS("AppLevelName")
'            .SetText E_SPDPOAPP.spdAUserId, RW, APPRS("AppUserId")
'            .SetText E_SPDPOAPP.spdAUserName, RW, APPRS("AppUserName")
'            .SetText E_SPDPOAPP.spdAPrintName, RW, APPRS("AppUserPrintName")
'            .SetText E_SPDPOAPP.spdADesignation, RW, APPRS("AppDesignation")
'            .SetText E_SPDPOAPP.SpdLevel, RW, APPRS("AppLevel")
'            .SetText E_SPDPOAPP.SpdACheck, RW, IIf(APPRS("AppActiveFlg") = "Y", 1, 0)
'            .SetText E_SPDPOAPP.SpdImagePath, RW, APPRS("ImagePath")
'            SPath = GetText(SpdParaPOApp, E_SPDPOAPP.SpdImagePath, RW)
'            If SPath <> "" Then
'                .Col = E_SPDPOAPP.SpdImage
'                .Row = RW
'                .TypePictPicture = LoadPicture(SPath)
'                .TypePictStretch = True
'            End If
'
'            APPRS.MoveNext
'            If APPRS.EOF = True Then Exit Do
'
'            RW = RW + 1
'            .MaxRows = .MaxRows + 1
'
'        Loop
'    End With
'
'End Sub
'
'Private Sub Form_Load()
'On Error GoTo Form_Load_Error
'
'
'    StatusBar1.Panels(1).Text = STBARmsg
'    Call OpenConnection
'    Call QUERY_MODE
'    Call NEWFORM1(BUTTON, GSNO)
'    BUTTON(9).Enabled = False
'    BUTTON(4).Enabled = True
'    Call SetGridHead
'
'
'
'Exit Sub
'Form_Load_Error:
'MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form Frm_DeliveryOrder"
'End Sub
'Private Sub SetGridHead()
'    Dim TmpStr As String
'    With SpdDO
'        .ClearSelection
'        .MaxRows = 0
'        .ColHeadersAutoText = DispBlank
'        .ClearSelection
'        .MaxCols = 11
'        .Row = 1
'        .TypeTextWordWrap = True
'        .FontBold = True
'        If Opt = "qry" Then
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOContNo, "Contract No.", CellTypeEdit, 4, , False, True
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOContDt, "Cont. Date", CellTypeStaticText, 13, , False, True
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOLotNo, "Lot No.", CellTypeStaticText, 4, , False, True
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOPRNO, "PR. No.", CellTypeStaticText, 4, , False, True
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOQty, "Bales Qty", CellTypeNumber, 12, , False, True
'        Else
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOContNo, "Contract No.", CellTypeEdit, 4, , False, False
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOContDt, "Cont. Date", CellTypeStaticText, 13, , False, True
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOLotNo, "Lot No.", CellTypeStaticText, 4, , False, False
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOPRNO, "PR. No.", CellTypeStaticText, 4, , False, False
'            SetSpreadCol_RMI SpdDO, E_SPDDO.spdDOQty, "Bales Qty", CellTypeNumber, 12, , False, False
'        End If
'        .MaxRows = 1
'     End With
'
'
'End Sub
'
'
'
'Private Sub SpdDO_KeyDown(KeyCode As Integer, Shift As Integer)
'With SpdDO
'    Select Case .ActiveCol
'        Case spdDOContNo
'            Call ContLookup
'    End Select
'End With
'
'End Sub
