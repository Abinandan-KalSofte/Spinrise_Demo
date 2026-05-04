VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Useablewasterate 
   Caption         =   "Useable Waste Rate"
   ClientHeight    =   6510
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8940
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6510
   ScaleWidth      =   8940
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -90
      TabIndex        =   0
      Top             =   -120
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":0000
         Height          =   550
         Index           =   8
         Left            =   3255
         Picture         =   "Useablewasterate.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":07AC
         Height          =   550
         Index           =   10
         Left            =   4305
         Picture         =   "Useablewasterate.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":0E32
         Height          =   550
         Index           =   9
         Left            =   3780
         Picture         =   "Useablewasterate.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":14DE
         Height          =   550
         Index           =   11
         Left            =   4830
         Picture         =   "Useablewasterate.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":1CBD
         Height          =   550
         Index           =   7
         Left            =   2730
         Picture         =   "Useablewasterate.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1155
         Picture         =   "Useablewasterate.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":27EE
         Height          =   550
         Index           =   1
         Left            =   630
         Picture         =   "Useablewasterate.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":2E72
         Height          =   550
         Index           =   5
         Left            =   1680
         Picture         =   "Useablewasterate.frx":32BC
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":3621
         Height          =   550
         Index           =   0
         Left            =   105
         Picture         =   "Useablewasterate.frx":392B
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":3CBE
         Height          =   550
         Index           =   6
         Left            =   2205
         Picture         =   "Useablewasterate.frx":4108
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Useablewasterate.frx":4455
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
         Left            =   90
         Picture         =   "Useablewasterate.frx":475F
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Delete"
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
         Left            =   6195
         TabIndex        =   12
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
         Left            =   7965
         TabIndex        =   11
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   13
      Top             =   6210
      Width           =   8940
      _ExtentX        =   15769
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
            Object.Width           =   2542
            MinWidth        =   2542
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
      Height          =   3735
      Left            =   1080
      TabIndex        =   14
      Top             =   1350
      Width           =   6720
      _ExtentX        =   11853
      _ExtentY        =   6588
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   0
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Useablewasterate.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   3375
         Left            =   240
         TabIndex        =   15
         Top             =   180
         Width           =   6330
         _ExtentX        =   11165
         _ExtentY        =   5953
         _Version        =   393216
         AllowArrows     =   -1  'True
         ForeColor       =   8388608
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
            Size            =   9.75
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Useable Waste Rate "
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
      Left            =   1140
      TabIndex        =   16
      Top             =   960
      Width           =   2610
   End
End
Attribute VB_Name = "Useablewasterate"
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
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure openconnection of Usable Waste"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
        'addition
        Set Rs = New Recordset
        Rs.Open "Select count(*) from rm_uwasterate", DB, adOpenStatic
        If Rs(0) = 0 Then
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT WCODE ""Code"",WDES""Description"",rate""            Rate"" FROM RM_UWASTERATE WHERE 1=2 order by wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        grddatagrid.AllowUpdate = True
        Call adddelmod(BUTTON)
        Call GRDALIGN
        BUTTON(9).ToolTipText = "Add Record"
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT WCODE,WDES FROM RM_WASTETYPE WHERE TYPE='U'", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not adoSecondaryRS.EOF
            adoPrimaryRS.AddNew
            grddatagrid.Columns(0).Text = adoSecondaryRS(0)
            grddatagrid.Columns(1).Text = adoSecondaryRS(1)
            adoSecondaryRS.MoveNext
            grddatagrid.AllowAddNew = True
        Loop
        adoSecondaryRS.MoveFirst
        grddatagrid.Row = 0
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        Else
            StatusBar1.Panels(2).Text = "All Records has been added Modification can be done"
        End If
        
Case 1
        'modification
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("rm_uWasterate") = False Then Exit Sub
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT WCODE ""Code"",WDES""Description"",rate""            Rate"" FROM RM_UWASTERATE order by wcode ", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = adoPrimaryRS
        Call GRDALIGN
        Call adddelmod(BUTTON)
        grddatagrid.Col = 2
        grddatagrid.SetFocus
        StatusBar1.Panels(2).Text = "Modification"
    Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_area", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        DB.BeginTrans
        SSTab1.Visible = False
        grddatagrid.Visible = False
        Label15.Caption = "Area List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_area"
        KslList1.listfield1 = "areacode"
        KslList1.listfield2 = "areaname"
        grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.SetFocus
        Frame3.ZOrder
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Area Code from the list for Deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
      
         desc.Caption = "Listing"
         Set RS2 = New Recordset
         RS2.Open "SELECT  * FROM  RM_UWASTERATE ORDER BY WCODE", DB, adOpenStatic, adLockBatchOptimistic
         If RS2.RecordCount <= 0 Then
         MsgBox "No record found", vbInformation
         Exit Sub
         End If
         Pg = 1
        Set rev = New Report.ReportView
        Open "C:\usable.txt" For Output As #1
        Print #1,
        Print #1,
        Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); "F"; Chr(27)
        Print #1,
        Print #1, Space(5) & "Usable Waste Rate               " & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
        Print #1, Space(5) & String(56, "-")
        Print #1, Space(5) & "Code" & Space(6) & "Description "; Space(30) & "Rate" & Space(12)
        Print #1, Space(5) & String(56, "-")
        Co = 8
            Do While Not RS2.EOF
                Print #1, Space(5) & Padr(RS2(0), 10, " ") & Padr(RS2(1), 30, " ") & Space(1) & Padl(INF(RS2(2), 2), 15, " ")
                Co = Co + 1
                RS2.MoveNext
                If Co >= PageLen Then
                    Print #1, String(56, "-")
                    Print #1, Chr(12)
                    Co = 0
                    Pg = Pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 56, " "); Chr(27); "F"
                    Print #1, Space(5) & "Usable Waste Rate              " & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
                    Print #1, Space(5) & String(56, "-")
                    Print #1, Space(5) & "Code" & Space(6) & "Description "; Space(30) & "Rate" & Space(12)
                    Print #1, Space(5) & String(56, "-")
                    Co = Co + 5
                End If
            Loop
        Print #1, Space(5) & String(56, "-")
        Print #1, Chr(12)
        Close #1
        Open "C:\usable.bat" For Output As #1
        Print #1, "cd\"
        Print #1, "C:"
        Print #1, "cd\"
        Print #1, "type usable.txt>prn"
        rev.txtfile = "C:\usable.txt"
        rev.Batfile = "C:\usable.bat"
        Close #1
        
        
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
        If Opt = "add" Or Opt = "mod" Then
        DB.BeginTrans
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            If Trim(grddatagrid.Columns(0).Text) <> "" Then
            Set Rs = New Recordset
            Rs.Open "Select count(*) from rm_uwasterate where wcode ='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic
            q1 = IIf((IsNull(grddatagrid.Columns(2).Text) Or Trim(grddatagrid.Columns(2).Text) = ""), 0, grddatagrid.Columns(2).Text)
            If Rs(0) > 0 Then
                DB.Execute "Update rm_uwasterate set rate=" & q1 & " where wcode='" & grddatagrid.Columns(0).Text & "'"
            Else
                DB.Execute "Insert into rm_uwasterate(wcode,wdes,rate) " & _
                " values('" & grddatagrid.Columns(0).Text & "','" & grddatagrid.Columns(1).Text & "'," & q1 & ")"
            End If
            Else
                adoPrimaryRS.Delete adAffectCurrent
            End If
         adoPrimaryRS.MoveNext
         Loop
        End If
        If Opt = "add" Or Opt = "mod" Then
            DB.CommitTrans
            MsgBox "Record(s) Saved", vbInformation, head
        End If

    If Opt = "del" Then
        On Error GoTo deler
        DB.Execute ("delete from rm_area where areacode=" + "'" + grddatagrid.Columns(0) + "'")
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
    End If
        Opt = " "
        Call QUERY_MODE
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM1(BUTTON, GSNO)
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
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
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This  Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Waste Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
    grddatagrid.Col = 0
    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure BUTTON_Click of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grddatagrid.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

  SSTab1.Visible = True
  grddatagrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & ksllist1.Code & "' Order by LOCCODE"
    'Adodc1.Refresh
    Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "select areacode ""Code"" ,areaname ""Area Name"",case l_or_u when 'L' then 'Local' when 'I' then 'Import' else 'Upcountry' end ""Local/Upcountry"" from rm_area  where areacode = '" & KslList1.Code & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select areacode ""Code"" ,areaname ""Area Name"",l_or_u""Local/Upcountry"" from rm_area  where areacode = '" & KslList1.Code & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoPrimaryRS
    'Set grdDataGrid.DataSource = Adodc1.Recordset
    grddatagrid.Columns(0).Width = 1140.095
    grddatagrid.Columns(1).Width = 4380.095
    grddatagrid.Columns(2).Width = 1844.787
    grddatagrid.Columns(0).Locked = True
    grddatagrid.AllowAddNew = False
    grddatagrid.EditActive = True
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command3_Click of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call QUERY_MODE
    BUTTON(9).Enabled = False

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1000
'  grddatagrid.Left = 1100
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 2160
'  SSTab1.Height = Me.Height - 3100
'  grddatagrid.Height = SSTab1.Height - 260
'  grddatagrid.Width = SSTab1.Width - 200
'   End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Unload of Form Useablewasterate", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure adoPrimaryRS_MoveComplete of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset
On Error GoTo grddatagrid_AfterColUpdate_Error

        If ColIndex = 0 Then
        If Trim(grddatagrid.Columns(0).Text) = Empty Or Trim(grddatagrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_area where areacode='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Area Code already defined!", vbInformation, head
                grddatagrid.Columns(0).Text = " "
                grddatagrid.SetFocus
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
  
If st1 = "A" Then
    grddatagrid.Col = 1
    grddatagrid.SetFocus
End If


If ColIndex = 0 And Opt = "add" Then
Dim cut As Integer
Dim row1 As Integer
Dim itemc As String
row1 = grddatagrid.Row
'flg = "n"
itemc = grddatagrid.Columns(0).Text
adoPrimaryRS.MoveFirst
Do While Not adoPrimaryRS.EOF
If itemc = adoPrimaryRS("Code") Then
cut = cut + 1
End If
adoPrimaryRS.MoveNext
Loop
If cut > 1 Then
MsgBox "Area Code already defined", vbInformation, head
'flg = "y"
grddatagrid.Row = row1
grddatagrid.Columns(0).Text = " "
grddatagrid.Col = 0
grddatagrid.SetFocus
Else
grddatagrid.Row = row1
grddatagrid.Col = 0
grddatagrid.SetFocus
End If
End If

Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grddatagrid_AfterColUpdate of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_Error of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_GotFocus()
On Error GoTo grdDataGrid_GotFocus_Error

    If Opt = "add" Then
        If grddatagrid.Col = 0 Then
             StatusBar1.Panels(2).Text = " Enter Maximum of 4 Characters"
        End If
    ElseIf Opt = "mod" Then
        If grddatagrid.Col = 1 Then
             StatusBar1.Panels(2).Text = "Modify Area Description"
        End If
    End If

Exit Sub
grdDataGrid_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure grdDataGrid_GotFocus of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If grddatagrid.Col = 2 And KeyAscii = 13 And (Opt = "add" Or Opt = "mod") Then
    If Trim(grddatagrid.Text) <> "" Then
        If adoPrimaryRS.RecordCount > adoPrimaryRS.AbsolutePosition Then
            grddatagrid.Row = grddatagrid.Row + 1
            grddatagrid.Col = 2
            grddatagrid.EditActive = True
            grddatagrid.SetFocus
            Exit Sub
        End If
    Else
        'KeyAscii = 0
        Exit Sub
    End If
End If



If Opt = "add" Or Opt = "mod" Then
    Select Case grddatagrid.Col
    Case 2, 3, 4
        Call tonum(grddatagrid, 8, KeyAscii)
        ToUpCase grddatagrid, KeyAscii
    End Select
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDDATAGRID_KeyPress of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

On Error GoTo ER1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "SELECT WCODE ""Code"",WDES""Description"",rate""            Rate"" FROM RM_UWASTERATE ORDER BY WCODE", DB, adOpenStatic, adLockReadOnly
  Set grddatagrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call GRDALIGN
  
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
     StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
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
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure QUERY_MODE of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure KslList1_GotFocus of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub GRDALIGN()
On Error GoTo GRDALIGN_Error

grddatagrid.Columns(0).Width = 810.1418
grddatagrid.Columns(1).Width = 3945.26
grddatagrid.Columns(2).Width = 1230.236
grddatagrid.Columns(0).Locked = True
grddatagrid.Columns(1).Locked = True
grddatagrid.Columns(2).NumberFormat = "#0.00"
grddatagrid.Columns(2).Alignment = dbgRight

Exit Sub
GRDALIGN_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure GRDALIGN of Form Useablewasterate", vbInformation, head
Screen.MousePointer = 0
End Sub


