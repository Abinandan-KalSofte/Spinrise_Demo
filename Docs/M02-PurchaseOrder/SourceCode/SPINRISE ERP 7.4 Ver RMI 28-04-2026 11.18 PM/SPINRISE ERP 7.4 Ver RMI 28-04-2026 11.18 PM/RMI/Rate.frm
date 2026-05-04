VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Rate 
   Caption         =   "Rate"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   0
      Top             =   -90
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":0000
         Height          =   550
         Index           =   6
         Left            =   2145
         Picture         =   "Rate.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":0797
         Height          =   550
         Index           =   0
         Left            =   60
         Picture         =   "Rate.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":0E34
         Height          =   550
         Index           =   5
         Left            =   1620
         Picture         =   "Rate.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":15E3
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "Rate.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1095
         Picture         =   "Rate.frx":1C67
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":1FFE
         Height          =   550
         Index           =   7
         Left            =   2670
         Picture         =   "Rate.frx":2448
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":2798
         Height          =   550
         Index           =   11
         Left            =   4770
         Picture         =   "Rate.frx":2BE2
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":2F77
         Height          =   550
         Index           =   9
         Left            =   3720
         Picture         =   "Rate.frx":3281
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":3623
         Height          =   550
         Index           =   10
         Left            =   4245
         Picture         =   "Rate.frx":392D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":3CA9
         Height          =   550
         Index           =   8
         Left            =   3195
         Picture         =   "Rate.frx":40F3
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Rate.frx":4455
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
         Left            =   60
         Picture         =   "Rate.frx":475F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Delete"
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   7965
         TabIndex        =   13
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6195
         TabIndex        =   12
         Top             =   255
         Width           =   840
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   14
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
            Object.Width           =   2542
            MinWidth        =   2542
            TextSave        =   "04/01/2003"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "4:14 PM"
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
      Left            =   705
      TabIndex        =   15
      Top             =   1440
      Width           =   7980
      _ExtentX        =   14076
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      BackColor       =   0
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Rate.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   150
         TabIndex        =   16
         Top             =   135
         Width           =   7710
         _ExtentX        =   13600
         _ExtentY        =   7170
         _Version        =   393216
         AllowArrows     =   -1  'True
         ForeColor       =   8388608
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Saleble Waste Rate "
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
      Left            =   780
      TabIndex        =   17
      Top             =   900
      Width           =   2520
   End
End
Attribute VB_Name = "Rate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRs As Recordset
Attribute adoPrimaryRs.VB_VarHelpID = -1
Dim rs As Recordset
Dim Opt As String
Dim FLGREPET As Boolean
Dim St, st1, st2 As String
Dim db As Connection
Dim Code As String
Dim a As Integer
Public Sub openconnection()
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open connectstring
End Sub
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
        'addition
        Set rs = New Recordset
        rs.Open "Select count(*) from rm_wasterate", db, adOpenStatic
        If rs(0) = 0 Then
        Opt = "add"
        desc.Caption = "Addition"
        St = "B"
        st1 = "B"
        Set adoPrimaryRs = New Recordset
        adoPrimaryRs.Open "SELECT WCODE ""Code"",WDES""Description"",QRATE1""Quater I"",QRATE2""Quater II"",QRATE3""Quater III"",QRATE4""Quater IV"" FROM RM_WASTERATE WHERE 1=2 order by wcode ", db, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRs
        grdDataGrid.AllowUpdate = True
        Call adddelmod(BUTTON)
        Call GRDALIGN
        BUTTON(9).ToolTipText = "Add Record"
        Set ADOSECONDARYRS = New Recordset
        ADOSECONDARYRS.Open "SELECT WCODE,WDES FROM RM_WASTETYPE WHERE TYPE='S'", db, adOpenStatic, adLockBatchOptimistic
        Do While Not ADOSECONDARYRS.EOF
            adoPrimaryRs.AddNew
            grdDataGrid.Columns(0).Text = ADOSECONDARYRS(0)
            grdDataGrid.Columns(1).Text = ADOSECONDARYRS(1)
            ADOSECONDARYRS.MoveNext
            grdDataGrid.AllowAddNew = True
        Loop
        ADOSECONDARYRS.MoveFirst
        grdDataGrid.Row = 0
        grdDataGrid.Col = 2
        grdDataGrid.SetFocus
        Else
            StatusBar1.Panels(2).Text = "All Records has been added Modification can be done"
        End If
        
Case 1
        'modification
        Opt = "mod"
        desc.Caption = "Modification"
        If Record_Exists("rm_Wasterate") = False Then Exit Sub
        Set adoPrimaryRs = New Recordset
        adoPrimaryRs.Open "SELECT WCODE ""Code"",WDES""Description"",QRATE1""Quater I"",QRATE2""Quater II"",QRATE3""Quater III"",QRATE4""Quater IV"" FROM RM_WASTERATE order by wcode ", db, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRs
        Call GRDALIGN
        Call adddelmod(BUTTON)
        grdDataGrid.Col = 2
        grdDataGrid.SetFocus
        StatusBar1.Panels(2).Text = " Modification "
    Case 2
        'Deletion
        Set rs = New Recordset
        rs.Open "select count(*) from rm_area", db
    If Not rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        db.BeginTrans
        SSTab1.Visible = False
        grdDataGrid.Visible = False
        Label15.Caption = "Area List"
        KslList1.conn = connectstring
        KslList1.table = "rm_area"
        KslList1.listfield1 = "areacode"
        KslList1.listfield2 = "areaname"
        grdDataGrid.AllowUpdate = False
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
         Set rs2 = New Recordset
         rs2.Open "SELECT  * FROM  RM_WASTERATE ORDER BY WCODE", db, adOpenStatic, adLockBatchOptimistic
         If rs2.RecordCount <= 0 Then
         MsgBox "No record found", vbInformation
         Exit Sub
         End If
         pg = 1
        Set rev = New Report.ReportView
        Open "c:\usable.txt" For Output As #1
        Print #1,
        Print #1,
        Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); "F"; Chr(27)
        Print #1,
        Print #1, Space(5) & Chr(27); "E"; "Usable Waste Rate               " & Chr(27); "F"; Space(27); "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Padl(pg, 3, " ")
        Print #1, Space(5) & String(81, "-")
        Print #1, Space(5) & "Code" & Space(6) & "Description "; Space(16) & "Quater I" & Space(2); "Quater II"; Space(2); "Quater IIII"; Space(2); "Quater IV"
        Print #1, Space(5) & String(81, "-")
        co = 8
            Do While Not rs2.EOF
                Print #1, Space(5) & Padr(rs2(0), 10, " ") & Padr(rs2(1), 24, " ") & Space(1) & Padl(INF(rs2(2), 2), 11, " "); Padl(INF(rs2(3), 2), 11, " "); Padl(INF(rs2(4), 2), 13, " "); Padl(INF(rs2(5), 2), 11, " ")
                co = co + 1
                rs2.MoveNext
                If co >= pagelen Then
                    Print #1, String(81, "-")
                    Print #1, Chr(12)
                    co = 0
                    pg = pg + 1
                    Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); Chr(27); "F"
                    Print #1, Space(5) & "Usable Waste Rate              " & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; pg
                    Print #1, Space(5) & String(81, "-")
                    Print #1, Space(5) & "Code" & Space(6) & "Description "; Space(30) & "Rate" & Space(12)
                    Print #1, Space(5) & String(81, "-")
                    co = co + 5
                End If
            Loop
        Print #1, Space(5) & String(81, "-")
        Print #1, Chr(12)
        Close #1
        Open "c:\usable.bat" For Output As #1
        Print #1, "cd\"
        Print #1, "c:"
        Print #1, "cd\"
        Print #1, "type usable.txt>prn"
        rev.txtfile = "c:\usable.txt"
        rev.Batfile = "c:\usable.bat"
        Close #1
        

    
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRs.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
          Beep
          Exit Sub
GoFirstError:
       MsgBox err.description, vbInformation, head
            
Case 6
'next
            desc.Caption = "Query"
            On Error GoTo GoNextError
            If Not adoPrimaryRs.EOF Then
                adoPrimaryRs.MoveNext
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
            If adoPrimaryRs.EOF And adoPrimaryRs.RecordCount > 0 Then
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                adoPrimaryRs.MoveLast
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
        If Not adoPrimaryRs.BOF Then
            adoPrimaryRs.MovePrevious
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRs.BOF And adoPrimaryRs.RecordCount > 0 Then
            Beep
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            adoPrimaryRs.MoveFirst
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
         adoPrimaryRs.MoveLast
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
        If Opt = "add" Or Opt = "mod" Then
        db.BeginTrans
        adoPrimaryRs.MoveFirst
        Do While Not adoPrimaryRs.EOF
            If Trim(grdDataGrid.Columns(0).Text) <> "" Then
            Set rs = New Recordset
            rs.Open "Select count(*) from rm_wasterate where wcode ='" & grdDataGrid.Columns(0).Text & "'", db, adOpenStatic
            q1 = IIf((IsNull(grdDataGrid.Columns(2).Text) Or Trim(grdDataGrid.Columns(2).Text) = ""), 0, grdDataGrid.Columns(2).Text)
            q2 = IIf((IsNull(grdDataGrid.Columns(3).Text) Or Trim(grdDataGrid.Columns(3).Text) = ""), 0, grdDataGrid.Columns(3).Text)
            q3 = IIf((IsNull(grdDataGrid.Columns(4).Text) Or Trim(grdDataGrid.Columns(4).Text) = ""), 0, grdDataGrid.Columns(4).Text)
            q4 = IIf((IsNull(grdDataGrid.Columns(5).Text) Or Trim(grdDataGrid.Columns(5).Text) = ""), 0, grdDataGrid.Columns(5).Text)
            If rs(0) > 0 Then
                db.Execute "Update rm_wasterate set qrate1=" & q1 & ",qrate2=" & q2 & ", qrate3=" & q3 & " ,qrate4=" & q4 & " where wcode='" & grdDataGrid.Columns(0).Text & "'"
            Else
                db.Execute "Insert into rm_wasterate(wcode,wdes,qrate1,qrate2,qrate3,qrate4) " & _
                " values('" & grdDataGrid.Columns(0).Text & "','" & grdDataGrid.Columns(1).Text & "'," & q1 & "," & q2 & "," & q3 & " ," & q4 & ")"
            End If
            Else
                adoPrimaryRs.Delete adAffectCurrent
            End If
         adoPrimaryRs.MoveNext
         Loop
        End If
        If Opt = "add" Or Opt = "mod" Then
            db.CommitTrans
            MsgBox "Record Saved", vbInformation, head
        End If

    If Opt = "del" Then
        On Error GoTo deler
        db.Execute ("delete from rm_area where areacode=" + "'" + grdDataGrid.Columns(0) + "'")
        db.CommitTrans
        MsgBox "Record Deleted", vbInformation, head
    End If
        Opt = " "
        Call Query_mode
        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
    Case "mod"
        db.RollbackTrans
    Case "add"
        db.RollbackTrans
    Case "del"
        db.RollbackTrans
    End Select
    Opt = " "
    Call Query_mode
    grdDataGrid.Visible = True
    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    ''button(0).enabled = false
    If adoPrimaryRs.RecordCount = 0 Then
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
       If err = -2147217810 Then
        MsgBox "This  Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf err = -2147217842 Then
        MsgBox "Waste Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This Area Code already exists", vbInformation, head
        Screen.MousePointer = 0
    St = "B"
    grdDataGrid.Col = 0
    End If
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
grdDataGrid.Visible = True
Call BUTTON_Click(10)
End Sub

Private Sub Command3_Click()
  SSTab1.Visible = True
  grdDataGrid.Visible = True
    StatusBar1.Panels(2).Text = ""
    'adoprimaryRs = "select LOCCODE""Code"",LOCNAME ""Location Name"" from LOCMAS where LOCCODE='" & ksllist1.Code & "' Order by LOCCODE"
    'Adodc1.Refresh
    Set adoPrimaryRs = New Recordset
    'adoprimaryrs.Open "select areacode ""Code"" ,areaname ""Area Name"",case l_or_u when 'L' then 'Local' when 'I' then 'Import' else 'Upcountry' end ""Local/Upcountry"" from rm_area  where areacode = '" & KslList1.Code & "' order by areacode", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRs.Open "select areacode ""Code"" ,areaname ""Area Name"",l_or_u""Local/Upcountry"" from rm_area  where areacode = '" & KslList1.Code & "' order by areacode", db, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRs
    'Set grdDataGrid.DataSource = Adodc1.Recordset
    grdDataGrid.Columns(0).Width = 1140.09
    grdDataGrid.Columns(1).Width = 4380.09
    grdDataGrid.Columns(2).Width = 1844.787
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.AllowAddNew = False
    grdDataGrid.EditActive = True
    grdDataGrid.Col = 1
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False
End Sub

Private Sub Form_Load()
    StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call Query_mode
    BUTTON(9).Enabled = False
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
  Screen.MousePointer = vbDefault
End Sub
Private Sub adoprimaryrs_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRs.AbsolutePosition) & " of " & CStr(adoPrimaryRs.RecordCount)
  End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim rs As Recordset
        If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set rs = New Recordset
            rs.Open "select 'X'  from rm_area where areacode='" & grdDataGrid.Columns(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
            If Not rs.BOF Then
                MsgBox "Area Code already defined!", vbInformation, head
                grdDataGrid.Columns(0).Text = " "
                grdDataGrid.SetFocus
                St = "A"
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
adoPrimaryRs.MoveFirst
Do While Not adoPrimaryRs.EOF
If itemc = adoPrimaryRs("Code") Then
cut = cut + 1
End If
adoPrimaryRs.MoveNext
Loop
If cut > 1 Then
MsgBox "Area Code already defined", vbInformation, head
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

End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub

Private Sub grdDataGrid_GotFocus()
    If Opt = "add" Then
        If grdDataGrid.Col = 0 Then
             StatusBar1.Panels(2).Text = " Enter Maximum of 4 Characters"
        End If
    ElseIf Opt = "mod" Then
        If grdDataGrid.Col = 1 Then
             StatusBar1.Panels(2).Text = "Modify Area Description"
        End If
    End If
End Sub


Private Sub grdDataGrid_KeyPress(KeyAscii As Integer)
If grdDataGrid.Col = 5 And KeyAscii = 9 And Opt = "add" Then
    If Trim(grdDataGrid.Text) <> "" Then
        If adoPrimaryRs.RecordCount > adoPrimaryRs.AbsolutePosition Then
            grdDataGrid.Row = grdDataGrid.Row + 1
            grdDataGrid.Col = 1
            grdDataGrid.EditActive = True
            grdDataGrid.SetFocus
            Exit Sub
        End If
    Else
        'KeyAscii = 0
        Exit Sub
    End If
End If



If Opt = "add" Or Opt = "mod" Then
    Select Case grdDataGrid.Col
    Case 2, 3, 4
        Call tonum(grdDataGrid, 8, KeyAscii)
        ToUpCase grdDataGrid, KeyAscii
    End Select
End If

End Sub

Public Sub Query_mode()
On Error GoTo ER1
  Set adoPrimaryRs = New Recordset
  adoPrimaryRs.Open "SELECT WCODE ""Code"",WDES""Description"",QRATE1""Quater I"",QRATE2""Quater II"",QRATE3""Quater III"",QRATE4""Quater IV"" FROM RM_WASTERATE ORDER BY WCODE", db, adOpenStatic, adLockReadOnly
  Set grdDataGrid.DataSource = adoPrimaryRs
  If adoPrimaryRs.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call GRDALIGN
  
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRs.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
     StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRs.AbsolutePosition) & " of " & CStr(adoPrimaryRs.RecordCount)
  Exit Sub
ER1:
  If err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
  End If
  If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub



Private Sub ksllist1_GotFocus()
Command3.Default = True
End Sub

Public Sub GRDALIGN()
grdDataGrid.Columns(0).Width = 705.2599
grdDataGrid.Columns(1).Width = 2475.213
grdDataGrid.Columns(2).Width = 854.9292
grdDataGrid.Columns(3).Width = 1049.813
grdDataGrid.Columns(4).Width = 1065.26
grdDataGrid.Columns(5).Width = 1035.213
grdDataGrid.Columns(0).Locked = True
grdDataGrid.Columns(1).Locked = True
grdDataGrid.Columns(2).NumberFormat = "#0.00"
grdDataGrid.Columns(3).NumberFormat = "#0.00"
grdDataGrid.Columns(4).NumberFormat = "#0.00"
grdDataGrid.Columns(5).NumberFormat = "#0.00"
grdDataGrid.Columns(2).Alignment = dbgRight
grdDataGrid.Columns(3).Alignment = dbgRight
grdDataGrid.Columns(4).Alignment = dbgRight
grdDataGrid.Columns(5).Alignment = dbgRight
grdDataGrid.Columns(2).Caption = "   Quater I"
grdDataGrid.Columns(3).Caption = "   Quater II"
grdDataGrid.Columns(4).Caption = "   Quater III"
grdDataGrid.Columns(5).Caption = "   Quater IV"
End Sub
