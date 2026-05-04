VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form acceptance 
   Caption         =   "Order Acceptance"
   ClientHeight    =   7185
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10980
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7185
   ScaleWidth      =   10980
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   30
      TabIndex        =   15
      Top             =   -120
      Width           =   11610
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":0000
         Height          =   550
         Index           =   4
         Left            =   2100
         Picture         =   "Acceptance.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":069F
         Height          =   550
         Index           =   6
         Left            =   3150
         Picture         =   "Acceptance.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":0E36
         Height          =   550
         Index           =   0
         Left            =   -15
         Picture         =   "Acceptance.frx":1140
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":14D3
         Height          =   550
         Index           =   5
         Left            =   2625
         Picture         =   "Acceptance.frx":191D
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":1C82
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
         Left            =   1035
         Picture         =   "Acceptance.frx":1F8C
         Style           =   1  'Graphical
         TabIndex        =   2
         Tag             =   " "
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":2328
         Height          =   550
         Index           =   1
         Left            =   510
         Picture         =   "Acceptance.frx":2632
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1560
         Picture         =   "Acceptance.frx":29AC
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":2D43
         Height          =   550
         Index           =   7
         Left            =   3675
         Picture         =   "Acceptance.frx":318D
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":34DD
         Height          =   550
         Index           =   11
         Left            =   5775
         Picture         =   "Acceptance.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":3CBC
         Height          =   550
         Index           =   9
         Left            =   4725
         Picture         =   "Acceptance.frx":3FC6
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":4368
         Height          =   550
         Index           =   10
         Left            =   5250
         Picture         =   "Acceptance.frx":4672
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Acceptance.frx":49EE
         Height          =   550
         Index           =   8
         Left            =   4200
         Picture         =   "Acceptance.frx":4E38
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
         Left            =   8565
         TabIndex        =   17
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
         TabIndex        =   16
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   18
      Top             =   6885
      Width           =   10980
      _ExtentX        =   19368
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
            TextSave        =   "02/07/2011"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "11:34 AM"
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
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7673
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "        "
      TabPicture(0)   =   "Acceptance.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4070
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   6270
         _ExtentX        =   11060
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
      Left            =   315
      TabIndex        =   13
      Top             =   1320
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Acceptance.frx":51B6
         Height          =   615
         Left            =   3000
         Picture         =   "Acceptance.frx":559C
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "Acceptance.frx":5962
         Height          =   615
         Left            =   4710
         Picture         =   "Acceptance.frx":5D44
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4110
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
         TabIndex        =   21
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label label1 
      AutoSize        =   -1  'True
      Caption         =   "Order Acceptance"
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
      Left            =   900
      TabIndex        =   22
      Top             =   900
      Width           =   2280
   End
End
Attribute VB_Name = "acceptance"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim Opt As String
Dim tmp As String
Dim irow As Integer
Dim ipageno As Integer
Dim FLGREPET As Boolean
Dim st, st1, st2 As String
Dim db As Connection

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form acceptance"
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
    adoPrimaryRS.Open "select code ""Code"" ,ANAME ""Person Name"",divcode from RM_ACCEPTANCE where 1=2  order by code", db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 4800.118
    grddatagrid.Columns(2).Visible = False
    db.BeginTrans
    grddatagrid.AllowUpdate = True
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    grddatagrid.Col = 0
    grddatagrid.SetFocus

Case 1, 2, 4
    'modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from RM_ACCEPTANCE where 1=1 and DivCode = '" & Divcode & "'", db
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            'BUTTON(9).ToolTipText = "Modify"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list for modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            'BUTTON(9).ToolTipText = "Delete"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list for Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            'BUTTON(9).ToolTipText = "Find"
            StatusBar1.Panels(2).Text = "Select Godown Code from the list"
        End If
        Screen.MousePointer = 11
        db.BeginTrans
'''        SSTab1.Visible = False
'''        grddatagrid.Visible = False
'''        Frame3.Visible = True
'''        Label15.Caption = "Godown List"
'''        KSLLIST1.conn = connectstring
'''        KSLLIST1.table = "RM_ACCEPTANCE"
'''        KSLLIST1.listfield1 = "code"
'''        KSLLIST1.listfield2 = "ANAME"
'''        Frame3.Visible = True
'''        Command3.SetFocus
'''        Frame3.ZOrder
            Lookup.clear = True
            Lookup.Query = "select Code,aname""Person Name"" from rm_acceptance where 1=1 and DivCode = '" & Divcode & "'"
            Lookup.DefCol = "Name"
            Lookup.ALIGN = "2000,4000"
            Lookup.Caption = "Order Accecptance Listing"
            Lookup.Show vbModal
            If Lookup.Cancel = False Then
                SSTab1.Visible = True
                grddatagrid.Visible = True
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select code ""Code"" ,ANAME ""Person Name"",DIVCODE from RM_ACCEPTANCE where code = '" & Lookup.Fields(0) & "' and DivCode = '" & Divcode & "' order by code", db, adOpenStatic, adLockBatchOptimistic
                Set grddatagrid.DataSource = adoPrimaryRS
                grddatagrid.Columns(0).Width = 1140.095
                grddatagrid.Columns(1).Width = 4800.118
                grddatagrid.Columns(0).Locked = True
                grddatagrid.AllowAddNew = False
                grddatagrid.Col = 1
                grddatagrid.Row = 0
                grddatagrid.SetFocus
                BUTTON(9).Enabled = True 'Save
                BUTTON(10).Enabled = True
                If Opt = "del" Then
                    BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
                grddatagrid.AllowUpdate = True
                Call adddelmod(BUTTON)
                If Opt = "fnd" Then
                    BUTTON(9).Enabled = False
                End If
                grddatagrid.Columns(0).Locked = True
            Else
                Call BUTTON_Click(10)
            End If
        Screen.MousePointer = 0
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Case 2
    'Deletion
    Set Rs = New Recordset
    Rs.Open "select count(*) from RM_ACCEPTANCE where 1=1 and DivCode = '" & Divcode & "'", db
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Label15.Caption = "Godown List"
        KslList1.conn = connectstring
        KslList1.Table = "RM_ACCEPTANCE"
        KslList1.listfield1 = "code"
        KslList1.listfield2 = "ANAME"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.SetFocus
        Frame3.ZOrder
        db.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        'BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Godown Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
Case 3
'    list
    desc.Caption = "Listing"
    Dim iCount As Integer
    Set Rs = New Recordset
    Rs.Open "select code,ANAME from RM_ACCEPTANCE Order by code", db, adOpenStatic
    If Rs.RecordCount <= 0 Then
        MsgBox "No  Records Found", vbInformation, head
        desc.Caption = "Query"
        Exit Sub
    End If

        ipageno = 1
'        Set rsP = New Recordset
        Close
       ' Open KALFOLDERDATA + "red.txt" For Output As #1
        iCount = 1
        'Open "C:\red.txt" For Output As #1
        Open KALFOLDERDATA & "\red.TXT" For Output As #1

            irow = 0
            Call listHeader
            irow = irow + 9
            Rs.MoveFirst
            Do While Not Rs.EOF
                Print #1, Space(3); Padr(iCount, 10, " ") + Space(4) + Padr(Rs("Code"), 20, " ") + Space(4) + Padr(Rs("aname"), 41, " ")
                irow = irow + 1
                iCount = iCount + 1
                    If irow > 60 Then
                        Print #1,
                        Print #1, Space(2) & String(80, "-")
                        Print #1, Chr(12)
                        irow = irow + 3
                        
                        Print #1, Chr(12)
'                        Co = 0
                        ipageno = ipageno + 1
                        Call listHeader
                    End If
                Rs.MoveNext
            Loop
            
            Print #1,
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            irow = irow + 3
            
        Close #1
        Call KALBATPROCESS("Red")
        Screen.MousePointer = 0



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
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
     End If
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
    Call navi(BUTTON)
    Call las(BUTTON)
    Beep
    Exit Sub
GoLastError:
    MsgBox Err.Description, vbInformation, head
Case 9
'Save
    If Opt = "add" Or Opt = "mod" Then
        If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(0).Text = "" Then
            MsgBox "Empty record Cannot be Saved", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If
        If Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Person Code Cannot be Empty", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            Exit Sub
        End If
        If Trim(grddatagrid.Columns(1).Text) = "" Then
            MsgBox "Person Name Cannot be Empty", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Exit Sub
        End If
        tmp = Opt
        Opt = ""
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("DIVCODE") = Divcode
            If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
                adoPrimaryRS.Delete
            End If
            adoPrimaryRS.MoveNext
        Loop
        If adoPrimaryRS.RecordCount = 0 Then
            BUTTON_Click (10)
            db.RollbackTrans
            Exit Sub
        End If
        On Error Resume Next
        Opt = tmp
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        db.CommitTrans
        If Opt = "add" Then
            StatusBar1.Panels(2).Text = "Record(s) Saved"
            MsgBox "Record(s) Saved.", vbInformation, head
        ElseIf Opt = "mod" Then
            StatusBar1.Panels(2).Text = "Records Modified"
            MsgBox "Record(s) Modified.", vbInformation, head
        End If
        Opt = ""
    End If
    If Opt = "add" Then
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        db.CommitTrans
        MsgBox "Record(s) Saved.", vbInformation, head
    End If
    If Opt = "mod" Then
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        db.CommitTrans
        MsgBox "Record(s) Modified.", vbInformation, head
    End If
    If Opt = "del" Then
        On Error GoTo deler
        Dim msg As String
        msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
        If msg = vbYes Then
            Set Rs = New Recordset
            Rs.Open "Select * FROM RM_Cont WHERE Acceptance ='" & Trim(grddatagrid.Columns(0).Text) & "'", db, adOpenStatic
            If Rs.EOF = False Then
                MsgBox "This Order Acceptance code cannot be deleted as dependencies exist", vbInformation, head
                QUERY_MODE
                BUTTON_Click (10)
                db.CommitTrans
                Exit Sub
            End If
            
  
            StatusBar1.Panels(2).Text = "Records Deleted"
            db.Execute ("delete from RM_ACCEPTANCE where code=" + "'" + grddatagrid.Columns(0) + "'")
            db.CommitTrans
            MsgBox "Record(s) Deleted.", vbInformation, head
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
    If Opt = "fnd" Then
        db.CommitTrans
    End If
    Opt = " "
    Call QUERY_MODE
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus
    desc.Caption = "Query"
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
  
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    Case "fnd"
        db.RollbackTrans
    End Select
    Opt = " "
    Call QUERY_MODE
    grddatagrid.Visible = True
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
    BUTTON(0).SetFocus ''''''''''
Case 11
    'EXIT
    Reset
    Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Person Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 0
    End If
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form acceptance"
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
    Frame3.Visible = False
    SSTab1.Visible = True
    grddatagrid.Visible = True
    Call BUTTON_Click(10)
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form acceptance"
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
    SSTab1.Visible = True
    grddatagrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code ""Code"" ,ANAME ""Person Name"" from RM_ACCEPTANCE where code = '" & KslList1.Code & "' and DivCode = '" & Divcode & "' order by code", db, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 4800.118
    grddatagrid.Columns(0).Locked = True
    grddatagrid.AllowAddNew = False
    grddatagrid.Col = 1
    grddatagrid.Row = 0
    grddatagrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form acceptance"
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form acceptance"

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
    StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call QUERY_MODE
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 4800.118
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form acceptance"
End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  If Opt <> "add" Then
      StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
    Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error
    If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from RM_ACCEPTANCE where code='" & grddatagrid.Columns(0).Text & "' and DivCode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Code already defined!", vbInformation, head
                grddatagrid.Columns(0).Text = " "
                st = "A"
                Exit Sub
             End If
        End If
    End If
Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form acceptance"
End Sub
Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
Dim a As Integer
Dim i As Integer
On Error GoTo grdDataGrid_AfterColEdit_Error
    If Opt = "add" Then
        If Trim(grddatagrid.Columns(0)) <> "" Then
            BUTTON(9).Enabled = True
        End If
    End If
    If Opt = "add" Then
        If grddatagrid.Col = 1 Then
            If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
                adoPrimaryRS.AddNew
                grddatagrid.Col = 0
                grddatagrid.Columns(2).value = Divcode
                grddatagrid.SetFocus
            End If
        End If
        If grddatagrid.Col = 0 Then
        a = adoPrimaryRS.AbsolutePosition
        Dim Code As String
        Code = adoPrimaryRS(0)
        Opt = " "
        adoPrimaryRS.MoveFirst
        For i = 1 To adoPrimaryRS.RecordCount - 1
            If adoPrimaryRS(0).value = Code And Not adoPrimaryRS.AbsolutePosition = a Then
                MsgBox "Weighment Code Already Defined!", vbInformation, head
                adoPrimaryRS.AbsolutePosition = a
                adoPrimaryRS(0).value = ""
                grddatagrid.Columns(0).Locked = False
                grddatagrid.Col = 0
                grddatagrid.Columns(2).value = Divcode
                grddatagrid.SetFocus
                Opt = "add"
                Exit Sub
            End If
            adoPrimaryRS.MoveNext
        Next i
        Opt = "add"
    End If
End If
If st1 = "A" Then
    grddatagrid.Col = 1
    grddatagrid.SetFocus
End If
Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form acceptance"
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error
    Response = 0
Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form acceptance"
End Sub

Private Sub grdDataGrid_GotFocus()
On Error GoTo grdDataGrid_GotFocus_Error
    If Opt = "add" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 6 Character"
        End If
    ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 50 Character"
        End If
    End If
Exit Sub
grdDataGrid_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_GotFocus of Form acceptance"
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error
If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grddatagrid.Text) = "" Then
        If grddatagrid.Col = 1 Then
            MsgBox ("Person Name Cannot be empty"), vbInformation, head
            st2 = "A"
            grddatagrid.Col = 1
            grddatagrid.Row = grddatagrid.Row
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 0 Then
            MsgBox ("Code cannot be empty"), vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
            st = "A"
        End If
    End If
Else
    FLGREPET = False
End If

'If KeyCode = 65 And Shift = 2 Then ''''''''''' ADDITION
'        Call BUTTON_Click(0)
'    ElseIf KeyCode = 77 And Shift = 2 Then ''''''''' MODIFY
'        Call BUTTON_Click(1)
'    ElseIf KeyCode = 68 And Shift = 2 Then    '''''DELETE
'        Call BUTTON_Click(2)
'    ElseIf KeyCode = 76 And Shift = 2 Then    '''' LIST
'        Call BUTTON_Click(3)
'    'ElseIf KeyCode = vbKeyR And Shift = 2 Then
'        'Call BUTTON_Click(3)
'    ElseIf KeyCode = vbKeyF And Shift = 2 Then
'        Call BUTTON_Click(5)
'    ElseIf KeyCode = vbKeyN And Shift = 2 Then
'        Call BUTTON_Click(6)
'    ElseIf KeyCode = vbKeyO And Shift = 2 Then
'        Call BUTTON_Click(7)
'     ElseIf KeyCode = vbKeyE And Shift = 2 Then
'        Call BUTTON_Click(8)
'    ElseIf KeyCode = 83 And Shift = 2 Then ''''''''SAVE
'        Call BUTTON_Click(9)
'    ElseIf KeyCode = 27 Then ''''' UNDO
'        Call BUTTON_Click(10)
'    ElseIf KeyCode = 88 And Shift = 2 Then    ''' EXIT
'        Call BUTTON_Click(11)
'    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        Call BUTTON_Click(12)
''    ElseIf KeyCode = vbKeyW And Shift = 2 Then
''        Call Command6_Click
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form acceptance"
End Sub
Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 0 Then
'        ToAlphaNumber GrdDataGrid, 6, KeyAscii
'        ToUpCase GrdDataGrid, KeyAscii
        ToAlphaNumber grddatagrid, 6, KeyAscii
        ToUpCase grddatagrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    ElseIf grddatagrid.Col = 1 Then
'        ToAlphaNumber GrdDataGrid, 50, KeyAscii
'        ToUpCase GrdDataGrid, KeyAscii
        ToAlphaNumber grddatagrid, 50, KeyAscii
        ToUpCase grddatagrid, KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    End If
End If
Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form acceptance"
End Sub

Public Sub QUERY_MODE()
    On Error GoTo ER1
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select code ""Code"" ,ANAME ""Person Name"" from RM_ACCEPTANCE where 1=1 and DivCode = '" & Divcode & "' order by code", db, adOpenStatic, adLockReadOnly
    Set grddatagrid.DataSource = adoPrimaryRS
    If adoPrimaryRS.BOF Then
        MsgBox " No Records Found", vbInformation, head
    End If
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 4800.118
    desc.Caption = "Query"
    DATLAB.Caption = pdate
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
ER1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
    End If
    grddatagrid.Columns(0).Locked = True
    grddatagrid.Columns(1).Locked = True
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
Dim ln As Integer
Dim i As Integer
Dim t As Integer
On Error GoTo GRDDATAGRID_RowColChange_Error
If Opt = "add" Then
    If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = "" Then
        grddatagrid.Col = 0
    End If
    If grddatagrid.Col = 0 And grddatagrid.Columns(0).Text <> "" Then
        grddatagrid.Col = 1
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
If Opt = "add" Then
    If grddatagrid.Col = 0 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 2 Character"
    End If
    If grddatagrid.Col = 1 Then
        StatusBar1.Panels(2).Text = "Enter Maximum of 50 Character"
    End If
ElseIf Opt = "mod" Then
     If grddatagrid.Col = 1 Then
          StatusBar1.Panels(2).Text = "Modify Godown Description"
     End If
End If
Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form acceptance"
End Sub

Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub

Private Sub listHeader()
'    Print #1,
    Print #1, Chr(18)
    Print #1, Space(2) & Chr(27); "E"; CENTRE(DIVNAME, 80, " "); Chr(27); "F"
     ' Call Module2.addresshead
    Print #1,
    Print #1, Space(2); "Order Acceptance Listing" & Space(34); Format(pdate, "dd/mm/yy") + Space(2); "Pg No. : " & ipageno
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(2); " Sl No.        Acceptance Code         Acceptance Description "
    Print #1, Space(2) & String(80, "-")
End Sub

