VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL [1].OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form HSN 
   Caption         =   "HSN"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5685
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleMode       =   0  'User
   ScaleWidth      =   6899.744
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      DownPicture     =   "HSN.frx":0000
      Height          =   510
      Index           =   4
      Left            =   2205
      Picture         =   "HSN.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   16
      ToolTipText     =   "Find"
      Top             =   120
      Width           =   520
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   3
      Left            =   1700
      Picture         =   "HSN.frx":069F
      Style           =   1  'Graphical
      TabIndex        =   15
      ToolTipText     =   "List"
      Top             =   120
      Width           =   520
   End
   Begin MSDataGridLib.DataGrid grdDataGrid 
      Height          =   4065
      Left            =   465
      TabIndex        =   0
      Top             =   1080
      Width           =   6270
      _ExtentX        =   11060
      _ExtentY        =   7170
      _Version        =   393216
      AllowUpdate     =   -1  'True
      AllowArrows     =   -1  'True
      HeadLines       =   1
      RowHeight       =   15
      TabAcrossSplits =   -1  'True
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
      Caption         =   "HSN CODE"
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
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":0A36
         Height          =   510
         Index           =   8
         Left            =   4440
         Picture         =   "HSN.frx":0E80
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "HSN.frx":11E2
         Height          =   510
         Index           =   10
         Left            =   5550
         Picture         =   "HSN.frx":14EC
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":1868
         Height          =   510
         Index           =   9
         Left            =   4995
         Picture         =   "HSN.frx":1B72
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":1F14
         Height          =   510
         Index           =   11
         Left            =   6105
         Picture         =   "HSN.frx":235E
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":26F3
         Height          =   510
         Index           =   7
         Left            =   3885
         Picture         =   "HSN.frx":2B3D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":2E8D
         Height          =   510
         Index           =   1
         Left            =   600
         Picture         =   "HSN.frx":3197
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":3511
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
         Left            =   1155
         Picture         =   "HSN.frx":381B
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":3BB7
         Height          =   510
         Index           =   5
         Left            =   2750
         Picture         =   "HSN.frx":4001
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":4366
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "HSN.frx":4670
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "HSN.frx":4A03
         Height          =   510
         Index           =   6
         Left            =   3320
         Picture         =   "HSN.frx":4E4D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   550
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
         Left            =   7530
         TabIndex        =   14
         Top             =   240
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
         Left            =   10380
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   1
      Top             =   2790
      Width           =   5685
      _ExtentX        =   10028
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "21/06/2017"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "1:18 PM"
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
End
Attribute VB_Name = "HSN"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim row1 As Integer
Dim Rs As Recordset
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c As Integer
Dim FLG As String
Dim REP As Report.ReportView
Dim a As Integer
Dim Str As String
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

    If KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    ''    Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    ''    Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If
    
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form HSN", vbInformation, head
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
'addition
        Opt = "add"
         Screen.MousePointer = 11
         desc.Caption = "Addition"
         'stbar.Panels(2).Text = "Addition"
         
         Set adoPrimaryRS = New Recordset
         'adoPrimaryRS.Open "select CODE ""Unit"",DESCRIPTION from ig_HSNCODE where 1=2", DB, adOpenStatic, adLockOptimistic
         adoPrimaryRS.Open "select CODE, DESCRIPTION  from ig_HSNCODE where 1=2", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.AddNew
         Set grdDataGrid.DataSource = adoPrimaryRS
         grdDataGrid.Columns(1).Width = 4000
         grdDataGrid.AllowAddNew = True
         grdDataGrid.AllowUpdate = True
         Call ENABLCONTLS
         Call bindcontls
         'adoprimaryrs.AddNew
         Call adddelmod(BUTTON)
         grdDataGrid.Col = 0
         grdDataGrid.Enabled = True
         grdDataGrid.SetFocus
         Screen.MousePointer = 0
         stbar.Panels(2).Text = "Addition"
         grdDataGrid.Columns(1).Width = 4000

Case 1
'modification
        'Opt = "mod"
        If Record_Exists("ig_HSNCODE", "No Records Found") = False Then Exit Sub
            Opt = "mod"
                'Screen.MousePointer = 11
            desc.Caption = "Modification"
            stbar.Panels(2).Text = "Modification"
            'SSTab1.Visible = False
'            DB.BeginTrans
                'grdDataGrid.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                listlb.Caption = "Unit Listing"
'                Ksldesc1.conn = connectstring
'                Ksldesc1.Table = "ig_HSNCODE"
'                Ksldesc1.listfield1 = "CODE"
'                Ksldesc1.listfield2 = "DESCRIPTION"
'                Ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select HSN Code from the List"
            ''grddatagrid.AllowUpdate = True
            Call adddelmod(BUTTON)
            Call LOOKUPMODIFY
                
            Screen.MousePointer = 0

Case 2
'Deletion
    'Opt = "del"
       If Record_Exists("ig_HSNCODE", "No Records Found") = False Then Exit Sub
            Opt = "del"
            'Screen.MousePointer = 11
            desc.Caption = "Deletion"
            'SSTab1.Visible = False
            'grdDataGrid.Visible = False
'            Frame3.Visible = True
'            Frame3.ZOrder
'            listlb.Caption = "Unit Listing"
'            Ksldesc1.conn = connectstring
'            Ksldesc1.Table = "ig_HSNCODE"
'            Ksldesc1.listfield1 = "CODE"
'            Ksldesc1.listfield2 = "DESCRIPTION "
'            Ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select HSN Code from the List"
            grdDataGrid.AllowUpdate = False
'            DB.BeginTrans
            Call adddelmod(BUTTON)
            Call LOOKUPDELETE
            
            Screen.MousePointer = 0

Case 3
    'list
            If Record_Exists("ig_HSNCODE", "No Records Found") = False Then Exit Sub
            Set REP = New Report.ReportView
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
           ' Open "c:\unit.txt" For Output As #a
           Open KALFOLDERDATA & "\HSN.TXT" For Output As #a

            Call header(pg, co)
             For i = 1 To Rs.RecordCount
                Print #a, Space(5) + Rs(0) & Space(14 - Len(Rs(0))) + Rs(1) & Space(25 - Len(Rs(1)))
                c = c + 1
                    If c > pagelen Then
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Call header(pg, co)
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(5) + String(60, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\unit.bat" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type unit.txt > prn"
'            Close #a
'            REP.txtfile = "c:\unit.txt"
'            REP.Batfile = "c:\unit.bat"
            a = FreeFile
            Call KALBATPROCESS("unit")
            
            
            
'10.06
Case 4
    
    'Query
    Opt = "query"
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'txtfields(0).Enabled = False
    LookUp.clear = True
    LookUp.query = "sELECT code,description from ig_hsncode"
    LookUp.DefCol = "Code"
    LookUp.ALIGN = "1500,5000"
    LookUp.Caption = "HSN Codes"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select * from ig_hsncode WHERE  code='" & LookUp.Fields(0) & "'", DB, adOpenDynamic, adLockBatchOptimistic
        '10.06
        grdDataGrid.Columns(1).Width = 4000
        Call bindcontls
        Call disablcontls
    End If
    Screen.MousePointer = 0
    'calling query procedure from module
    'SSTab1.Enabled = True
    'Call query(BUTTON)
'    Frame2.Enabled = False
'    Frame3.Enabled = False
'    Frame5(77).Enabled = False
'
            
Case 5
    'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         stbar.Panels(2).Text = "First Record"
         'calling fir procedure from module
         Call FIR(BUTTON)
         Exit Sub
GoFirstError:
        If err.Number = 3021 Then
          MsgBox "No HSNs Defined", vbInformation, head
          Exit Sub
        End If
      'MsgBox Err.DESCRIPTION

Case 6
    'next
         desc.Caption = "Query"
         On Error GoTo GoNextError
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
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
                stbar.Panels(2).Text = "Last Record "
            End If
            Exit Sub
GoNextError:

Case 7
 'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
            If Not adoPrimaryRS.BOF Then
                adoPrimaryRS.MovePrevious
                stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
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
                stbar.Panels(2).Text = "First Record "
            End If
            Exit Sub

GoPrevError:

Case 8
    'last
       '10.06
       grdDataGrid.Columns(1).Width = 4000
         
         
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         stbar.Panels(2).Text = "Last Record "
         Call las(BUTTON)
         Exit Sub
GoLastError:

Case 9
'Save
    '10.06
       grdDataGrid.Columns(1).Width = 4000
       
    If Opt = "add" Or Opt = "mod" Then
            If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" Then
                MsgBox "Empty Record Cannot Saved", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If

            If Trim(grdDataGrid.Columns(1).Text) = "" And Not Trim(grdDataGrid.Columns(0).Text) = "" Then
                MsgBox "Please Enter DESCRIPTION", vbInformation, head
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Exit Sub
            End If
            
            If Len(Trim(grdDataGrid.Columns(0).Text)) < 8 Then
                MsgBox "HSN Code Should be 8 digit!", vbCritical
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
            
            
            If adoPrimaryRS.RecordCount > 1 Then



                'adoPrimaryRS.MoveNext


            End If

    End If
        Screen.MousePointer = 11
On Error GoTo AddErr
            DB.BeginTrans
            If Opt = "add" Then
                 adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
                            If Trim(grdDataGrid.Columns(0).Text) = "" Then
                                adoPrimaryRS.Delete
                            End If
                                Opt = ""
                                adoPrimaryRS.MoveNext
                        Loop
                    Opt = "add"
                    temp = "opt"
                    Opt = " "
                    If grdDataGrid.Row = -1 Then
                       grdDataGrid.Row = 0
                    End If
                    adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
                    adoPrimaryRS("DESCRIPTION") = Trim(grdDataGrid.Columns(1).Text)
                    adoPrimaryRS("CODE") = Trim(grdDataGrid.Columns(0).Text)
                    'adoPrimaryRS("user_id") = usrid
                    'adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")

                    adoPrimaryRS.MoveNext
                    Loop
                adoPrimaryRS.UpdateBatch adAffectAll
                Opt = "temp"
                DB.CommitTrans
                Screen.MousePointer = 0
                'stbar.Panels(2).Text = "Record Saved Successfully"
                MsgBox " Record Saved Successfully", vbInformation, head
                Opt = " "

                Call query_mode
                BUTTON(0).Enabled = True
                BUTTON(0).SetFocus
                Exit Sub
            End If

        If Opt = "mod" Then
           ' adoPrimaryRS("user_id") = usrid
            'adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
            adoPrimaryRS("CODE") = Trim(grdDataGrid.Columns(0).Text)
            
            
            
            adoPrimaryRS.UpdateBatch adAffectAll
            DB.CommitTrans
            Screen.MousePointer = 0
            'stbar.Panels(2).Text = "Record Modified Successfully"
            MsgBox "Record Modified Successfully", vbInformation, head
            Opt = " "
            Call query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Exit Sub
        End If

         If Opt = "del" Then
          On Error GoTo delerr:
'            Set rs = New Recordset
'                 rs.Open "select CODE from ig_product where CODE='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'                 If rs.RecordCount > 0 Then
'                     MsgBox "This Record cannot be deleted as it is reffered in another table", vbInformation, head
''                     stbar.Panels(2).Text = "Record Deleted Successfully"
'                     DB.CommitTrans
'                     Opt = " "
'                     Call Query_mode
'                     Screen.MousePointer = 0
'                     Exit Sub
                      a% = MsgBox("Are you sure you want to delete?", vbYesNo, head)
                           If a = 6 Then
                        DB.Execute ("delete from ig_HSNCODE where CODE='" & grdDataGrid.Columns(0).Text & "'")
                        DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Record Deleted Successfully"
                        MsgBox "Record Deleted Successfully", vbInformation, head
                        Opt = " "
                        Call query_mode
                        BUTTON(0).Enabled = True
                        BUTTON(0).SetFocus
                        Exit Sub
                     Else
                     DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Operation Cancelled"
                        MsgBox "Operation Cancelled", vbInformation, head
                        Opt = " "
                        BUTTON(0).Enabled = True
                        Call query_mode
                   Exit Sub
                   End If

                   'End If
    End If
delerr:
'    If CStr(Mid$(err.DESCRIPTION, InStr(err.DESCRIPTION, "ORA") + 4, 5)) = "02292" Then
        If Opt = "del" Then

        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        DB.CommitTrans
        Opt = " "
        Call query_mode
        Screen.MousePointer = 0
        End If
'        Opt = "del"
'        BUTTON_Click (10)
'        Opt = "add"
'        Screen.MousePointer = 0
'        MsgBox "This Unit Code already exists", vbInformation, head
'        st = "B"
'        grdDataGrid.Col = 0
'    '
AddErr:
     If err.Number = "-2147217842" Then
        MsgBox "Empty Records Not saved", vbInformation
        grdDataGrid.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If


Case 10
    'CANCEL
       '10.06
       grdDataGrid.Columns(1).Width = 4000

        
        desc.Caption = "Cancel"
        Screen.MousePointer = 11
    Select Case Opt
'            Case "mod"
'                    DB.RollbackTrans
'            Case "add"
'                    DB.RollbackTrans
'            Case "del"
'                    DB.RollbackTrans
    End Select
        Screen.MousePointer = 0
        Opt = " "
        Call query_mode
'        Call cancl(BUTTON, 80)
Case 11
    'EXIT
        Reset
        Unload Me
End Select
Exit Sub
'deler:
'       If err = -2147217900 Then
'        MsgBox "This unit code cannot be deleted as dependencies exist ", vbInformation, head
'        Screen.MousePointer = 0
'       ElseIf err = -2147217842 Then
'        'MsgBox "Empty Record Cannot be Saved", vbInformation, head
'       If grdDataGrid.Col = 0 And IsNull(grdDataGrid.Columns(0).Text) Then
'            MsgBox "Empty Record Cannot be Saved", vbInformation, head
'            DB.RollbackTrans
'            Call query_mode
'       Else
'             MsgBox "DESCRIPTION should not Empty", vbInformation, head
'             grdDataGrid.Col = 1
'             Opt = tmp
'       End If
'        'DB.RollbackTrans
'        'Call query_mode
'        'MsgBox Err.DESCRIPTION
'        Screen.MousePointer = 0
        grdDataGrid.SetFocus
       '

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form HSN", vbInformation, head

End Sub

Private Sub grddatagrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
'    If Opt = "add" Then
'            If ColIndex = 1 Then
'                    If grdDataGrid.Columns(1).Text <> Empty Then
'                        'grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
'                        Set rs = New Recordset
'                            rs.Open "select 'DESCRIPTION'  from ig_HSNCODE where DESCRIPTION ='" & grdDataGrid.Columns(1).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'                                If Not rs.BOF Then
'                                    MsgBox "Unit DESCRIPTION cannot be repeated", vbInformation, head
'                                    grdDataGrid.Columns(1).Text = "  "
'                                    grdDataGrid.COL = 1
'                                    grdDataGrid.SetFocus
'                                    grdDataGrid.AllowAddNew = False
'                                    Exit Sub
'                                End If
'                    End If
'            End If
'    End If
'    If Opt = "mod" Then
'            If ColIndex = 1 Then
'                    If grdDataGrid.Columns(1).Text <> Empty Then
'                        grdDataGrid.Columns(1).Text = UCase(grdDataGrid.Columns(1).Text)
'                    End If
'            End If
'    End If
On Error GoTo grddatagrid_BeforeColUpdate_Error

    

Exit Sub
grddatagrid_BeforeColUpdate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_BeforeColUpdate of Form HSN", vbInformation, head
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

If DataError = 7007 Then
    If grdDataGrid.Col = 0 Then
        MsgBox "HSN Code should not have more than eight characters", vbInformation, head
        st = "A"
    Else
        MsgBox "Unit DESCRIPTION should not empty and atmost it can be upto fifty characters", vbInformation, head
        st2 = "A"
    End If
End If
Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_Error of Form HSN", vbInformation, head

End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

    If grdDataGrid.Col = 0 Then
       stbar.Panels(2).Text = "Enter a maximum of 8 characters"
    End If
    If grdDataGrid.Col = 1 Then
       stbar.Panels(2).Text = "Enter a maximum of 50 characters"
    End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRDDATAGRID_GotFocus of Form HSN", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error


    If KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    ''    Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    ''    Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If



If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
If KeyCode = 9 Then
    If grdDataGrid.Text <> "" Then

    BUTTON(9).SetFocus
    End If
End If

 '31.05
 If Opt = "add" Then
     If grdDataGrid.Col = 0 And KeyCode = 9 Then
            If Len(Trim(grdDataGrid.Columns(0).Text)) <> 8 Then
            MsgBox "HSN Code Should be 8 digits!", vbCritical
            KeyCode = 0
            'grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            End If
            End If
  End If
End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyDown of Form HSN", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

    Select Case grdDataGrid.Col
        Case 0
                If KeyAscii = 32 Then
                    KeyAscii = 9
                End If
                If KeyAscii <> 9 Then
                    ToAlphaNumber grdDataGrid, 8, KeyAscii
                    ToUpCase grdDataGrid, KeyAscii, 8
                End If
        Case 1
                If Opt = "add" Or Opt = "mod" Then
                    If KeyAscii <> 9 Then
                        Call ToAlphaNumber(grdDataGrid, 50, KeyAscii)
                    End If
                
                    If KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) <> "" Then
'                        BUTTON(9).SetFocus
                       grdDataGrid.AllowAddNew = True
                       adoPrimaryRS.AddNew
                       grdDataGrid.Col = 0
                       grdDataGrid.SetFocus
                        'FLG = "N"
                    ElseIf KeyAscii = 9 Then
                        'st = "A"
                        grdDataGrid.Col = 1
                        grdDataGrid.SetFocus
                        'Exit Sub
                    End If

                    'End If
                End If
                
                'FLG = "N"
                '        If KeyAscii = 9 And grddatagrid.Columns(2).Text <> "" Then
                '       'grddatagrid.Columns(0).Text = divcode
                '        grddatagrid.AllowAddNew = True
                        'flg = "N"
                        'BUTTON(9).SetFocus
                        ' End If
                '        If Opt = "mod" Then
                '                If KeyAscii <> 9 Then
                '                    Call validlenD(grdDataGrid, 25, KeyAscii)
                '                    'ToUpCase grddatagrid, KeyAscii, 25
                '                End If
                '                If KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) <> "" Then
                '                    'grddatagrid.Columns(0).Text = divcode
                '                    'grdDataGrid.AllowAddNew = False
                '                    'FLG = "N"
                '                    'BUTTON(9).SetFocus
                '                End If
                '        End If
                
        Call ToUpCase(grdDataGrid, KeyAscii)
        
    End Select

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyPress of Form HSN", vbInformation, head
End Sub


'31.05
'Private Sub grdDataGrid_LostFocus()
'If grdDataGrid.Col = 0 Then
'If Len(Trim(grdDataGrid.Columns(0).Text)) <> 8 Then
'MsgBox "HSN Code Should be 8 digits!", vbCritical
'grdDataGrid.Col = 0
'grdDataGrid.SetFocus
'End If
'End If
'
'End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
   If Opt = "add" Then
        On Error Resume Next
            If st = "A" Then
                grdDataGrid.Row = grdDataGrid.Row - 1
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                st = ""
                Exit Sub
            End If
            If FLG = "y" Then
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                grdDataGrid.Columns(0).Text = " "
                FLG = ""
                Exit Sub
            End If
'          If grdDataGrid.COL = 1 And Opt <> "save" Then
'               If grdDataGrid.Columns(0).Text = "" Then
'                    MsgBox "Unit code cannot be empty", vbInformation, head
'                    grdDataGrid.COL = 0
'                    grdDataGrid.SetFocus
''                Else
''                    adoPrimaryRS.AddNew
''                    grdDataGrid.COL = 0
''                    grdDataGrid.SetFocus
''                    Exit Sub
'                End If
'           End If
           '31.05
'           If LastCol = 0 And Opt = "add" Then
'                If Trim(grdDataGrid.Columns(0).Text) = "" Then
'                'On Error Resume Next
'                    MsgBox "Please Enter HSN code ", vbInformation, head
'                  '  grdDataGrid.Columns(0).Text = ""
'                    grdDataGrid.Col = 0
''                    grdDataGrid.SetFocus
'                    grdDataGrid.EditActive = True
'                    Exit Sub
'                Else
'                    grdDataGrid.Col = 1
'                    grdDataGrid.SetFocus
'                    Exit Sub
'                End If
'           End If

'           If LastCol = 0 And Opt = "add" Then
'                If Trim(grdDataGrid.Columns(0).Text) = "" Then
'                    'MsgBox "Please Enter HSN Code ", vbInformation, head
'                    grdDataGrid.Col = 0
'                    grdDataGrid.SetFocus
'                Else
'                    adoPrimaryRS.addnew
'                    grdDataGrid.Col = 0
'                    grdDataGrid.SetFocus
'                    Exit Sub
'                End If
'           End If
           
          ' 31.05
        
       


           
           
           
           
           
'           If grdDataGrid.COL = 1 And FLG = "y" Then
'                grdDataGrid.Columns(0).Text = " "
'                grdDataGrid.COL = 0
'                grdDataGrid.SetFocus
'                SendKeys "{delete}"
'                grdDataGrid.Columns(0).Locked = False
'                FLG = ""
'            End If
'            If grdDataGrid.COL = 0 Then
'                stbar.Panels(2).Text = "Enter a maximum of 1 character"
'            ElseIf grdDataGrid.COL = 1 Then
'                stbar.Panels(2).Text = "Enter a maximum of 25 character"
'            End If
  End If
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

        Frame3.Visible = False
'SSTab1.Visible = True
grdDataGrid.Visible = True
DB.RollbackTrans
Buttonframe.Enabled = True
Opt = " "
Call query_mode
BUTTON(0).SetFocus

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure lovcancel_Click of Form HSN", vbInformation, head
End Sub
Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

       Buttonframe.Enabled = True
'       SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE where CODE ='" & Ksldesc1.code & "' Order by CODE", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 4000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       grdDataGrid.Columns(1).Width = 4000
       grdDataGrid.Col = 1
       grdDataGrid.Row = 0
      ' GrdDatagrid.SetFocus
            If Opt = "mod" Then
                stbar.Panels(2).Text = "Modification"
                grdDataGrid.Enabled = True
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = False
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
            End If

            If Opt = "del" Then
                grdDataGrid.Enabled = False
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                stbar.Panels(2).Text = "Click Save for Deletion or Cancel to Quit"
            End If
      Frame3.Visible = False


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure lovok_Click of Form HSN", vbInformation, head

End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"


      Opt = "qry"
      Set DB = New Connection
      DB.CursorLocation = adUseClient
      DB.Open connectstring
      desc.Caption = "Query"
      DATLAB.Caption = pdate
      stbar.Panels(1).Text = head
    'BUTTON(0).Enabled = False
      grdDataGrid.Caption = "HSN"
      '10.06
       grdDataGrid.Columns(1).Width = 4000
      'grddatagrid.Columns(1).Width = 6100
      grdDataGrid.HeadFont.Bold = True
     
      Call query_mode

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form HSN", vbInformation, head
End Sub
Private Sub Form_Resize()
      On Error Resume Next
        '10.06
       grdDataGrid.Columns(1).Width = 4000
        'GrdDatagrid.Columns(1).Width = 5084.788
        stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

        Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Unload of Form HSN", vbInformation, head
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
'10.06
       grdDataGrid.Columns(1).Width = 4000
On Error GoTo adoPrimaryRS_MoveComplete_Error

    If Opt <> "add" Then
            stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    End If
    If adoPrimaryRS.RecordCount = 0 Then
             stbar.Panels(2).Text = "No Records Found"
    End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form HSN", vbInformation, head
End Sub
Private Sub GrdDatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error

    If Opt = "add" Then 'Opt = "mod" Or Opt = "del"
        row1 = grdDataGrid.Row
        If ColIndex = 0 Then
            If grdDataGrid.Columns(0).Text = "" Then
                MsgBox "Please Enter HSN Code ", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
            Set Rs = New Recordset
            Rs.Open "select CODE from ig_HSNCODE where CODE ='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                'flg = "y"
                MsgBox "HSN Code cannot be repeated", vbInformation, head
'                GrdDatagrid.Columns(1).Text = ""
                grdDataGrid.Row = row1
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                FLG = "y"
            End If
        End If
'Dim rs As Recordset
            If ColIndex = 1 Then
                    If grdDataGrid.Columns(0).Text <> Empty Then
                        grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
                    End If
            End If
'            If ColIndex = 1 Then
'                   If grdDataGrid.Columns(1).Text <> Empty Then
'                      'grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
'                        Set rs = New Recordset
'                            rs.Open "select 'X'  from ig_HSNCODE  where DESCRIPTION ='" & Trim(grdDataGrid.Columns(1).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
'
'                            If Not rs.BOF Then
'                                MsgBox "Unit DESCRIPTION should not repeat", vbInformation, head
'                                '    flg = "S"
'                                ' grdDataGrid.Columns(0).Locked = True
'                                grdDataGrid.Columns(1).Text = " "
'                                grdDataGrid.COL = 1
'                                grdDataGrid.SetFocus
'                                grdDataGrid.AllowAddNew = False
'                                FLG = "S"
'                                Exit Sub
'                            End If
'                    End If
'            End If
 End If

Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_AfterColUpdate of Form HSN", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo er1

'10.06
       grdDataGrid.Columns(1).Width = 4000
       
    If Opt = " " Or Opt = "qry" Then
        'Or Opt = "qry" Or Opt = "add"
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select CODE ""Unit"",DESCRIPTION ""DESCRIPTION"" from  ig_HSNCODE  Order by CODE ", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE Order by CODE", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
          Else
        End If

        Call bindcontls
        desc.Caption = "Query"
        stbar.Panels(2).Text = "Query"
        Call NEWFORM(BUTTON, GSNo)
                If adoPrimaryRS.RecordCount = 0 Then
                    BUTTON(5).Enabled = False
                    BUTTON(6).Enabled = False
                    BUTTON(7).Enabled = False
                    BUTTON(8).Enabled = False
                    Else
                    Call FIR(BUTTON)
                End If
        Call disablcontls
   End If

    If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select CODE ""Unit"",DESCRIPTION ""DESCRIPTION"" from ig_HSNCODE where CODE ='" & Trim(Ksldesc1.code) & "' and DESCRIPTION ='" & Trim(Ksldesc1.DESCRIPTION) & "'", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE Order by CODE", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Call ENABLCONTLS
        grdDataGrid.Columns(0).Locked = True
    End If

        If Opt = "del" Then
            Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select CODE ""Unit"",DESCRIPTION ""DESCRIPTION"" from ig_HSNCODE  where CODE ='" & Trim(Ksldesc1.code) & "' and DESCRIPTION ='" & Trim(Ksldesc1.DESCRIPTION) & "'", DB, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE where CODE ='" & Trim(Ksldesc1.code) & "' and DESCRIPTION ='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            Call disablcontls
            BUTTON(10).Enabled = False
        End If


er1:
If err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If

End Sub
Public Sub bindcontls()
'On Error GoTo bindcontls_Error
On Error Resume Next
     '10.06
        grdDataGrid.Columns(1).Width = 4000

    Set grdDataGrid.DataSource = adoPrimaryRS

Exit Sub
bindcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure bindcontls of Form HSN", vbInformation, head
End Sub

Public Sub disablcontls()
'10.06
       grdDataGrid.Columns(1).Width = 4000
       
On Error GoTo disablcontls_Error

    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.Columns(1).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure disablcontls of Form HSN", vbInformation, head
  End Sub
Public Sub ENABLCONTLS()
'10.06
       grdDataGrid.Columns(1).Width = 4000
       
On Error GoTo ENABLCONTLS_Error

    grdDataGrid.Columns(0).Locked = False
    grdDataGrid.Columns(1).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLCONTLS of Form HSN", vbInformation, head
End Sub

Private Sub ksldesc1_GotFocus()
On Error GoTo ksldesc1_GotFocus_Error

    lovok.Default = True

Exit Sub
ksldesc1_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ksldesc1_GotFocus of Form HSN", vbInformation, head
End Sub
Public Sub header(pg As Integer, c As Integer)
On Error GoTo header_Error

            Print #a,
            'Print #a, Space(10) + Space(Round((60 - 2 * Len(divname)) / 2)) + Chr(14) + divname '+ Space(Round((100 - 2 * Len(divname)) / 2))
            Print #a, Space(5) & Chr$(27) + "E" + CENTRE(Trim(divname), 60, " ") + Chr$(27) + "F"
            Print #a, Space(60)
            Str = CStr(pdate) + Space(2)
            Print #a, Space(5) + "HSN LISTING     " + Space(20) + "Dt: " & Str + "Pg.:" + Padl(CStr(pg), 3, " ")


            Set Rs = New Recordset
            Rs.Open "select CODE,DESCRIPTION from ig_HSNCODE", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No records found for this month", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Print #a, Space(5) + String(60, "-")
            Print #a, Space(5) + "PACK TYPE     DESCRIPTION               "
            Print #a, Space(5) + String(60, "-")

'Open "c:\unit.txt" For Output As #a
'          Print #a,
'          Print #a, Space(10) + Space(Round((120 - 2 * Len(divname)) / 2)) + Chr(14) + divname + Space(Round((100 - 2 * Len(divname)) / 2))
'          Print #a, Space(120)
'          STR = CStr(pdate) + Space(2)
'          Print #a, "Unit Listing" + Space(87) + STR + "Pg.No :" + Space(1) + CStr(pg)

Exit Sub
header_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure header of Form HSN", vbInformation, head

End Sub




Public Sub ToAlpha1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error GoTo ToAlpha1_Error

  If Len(Ofld) < maxlen Then
      If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9) Then
            KeyAscii = 0
      End If
    Else
      If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
      End If

Exit Sub
ToAlpha1_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ToAlpha1 of Form HSN", vbInformation, head
End Sub

Public Sub validlenD(obj As Object, maxlen As Integer, KeyAscii As Integer)
' If (KeyAscii >= 97 And KeyAscii <= 122) Then
''    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
''             KeyAscii = 32 Or KeyAscii >= 49 And KeyAscii <= 59) Then
''         KeyAscii = 0
'   End If
On Error GoTo validlenD_Error

    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If

Exit Sub
validlenD_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure validlenD of Form HSN", vbInformation, head
End Sub

Sub LOOKUPMODIFY()

On Error GoTo LOOKUPMODIFY_Error

    LookUp.clear = True
    'LookUp.query = "SELECT CODE""HSN CODE"",DESCRIPTION FROM ig_HSNCODE order by CODE"
    LookUp.query = "SELECT CODE,DESCRIPTION FROM ig_HSNCODE order by CODE"
    LookUp.DefCol = "DESCRIPTION"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "HSN LISTING"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
       Buttonframe.Enabled = True
      ' SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE where CODE ='" & LookUp.Fields(0) & "' Order by CODE", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 4000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       '10.06
       grdDataGrid.Columns(1).Width = 4000
       'grddatagrid.Columns(1).Width = 3084.788
       grdDataGrid.Col = 1
       grdDataGrid.Row = 0
      ' GrdDatagrid.SetFocus
            If Opt = "mod" Then
                stbar.Panels(2).Text = "Modification"
                grdDataGrid.Enabled = True
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = False
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
            End If

             
    Else
            'SSTab1.Visible = True
            grdDataGrid.Visible = True
            'DB.RollbackTrans
            Buttonframe.Enabled = True
            Opt = " "
            Call query_mode
            BUTTON(0).SetFocus
    End If


Exit Sub
LOOKUPMODIFY_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure LOOKUPMODIFY of Form HSN", vbInformation, head
End Sub


Sub LOOKUPDELETE()
On Error GoTo LOOKUPDELETE_Error

    LookUp.clear = True
     LookUp.query = "SELECT CODE""HSN CODE"",DESCRIPTION FROM ig_HSNCODE"
    LookUp.DefCol = "DESCRIPTION"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "HSN LISTING"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            'SSTab1.Visible = True
            grdDataGrid.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select CODE,DESCRIPTION from ig_HSNCODE where CODE ='" & LookUp.Fields(0) & "' Order by CODE", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.Columns(1).Width = 4000
            grdDataGrid.AllowAddNew = False
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Columns(1).Locked = False
            grdDataGrid.Columns(1).Width = 4000
            grdDataGrid.Col = 1
            grdDataGrid.Row = 0
            grdDataGrid.Enabled = False
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
            stbar.Panels(2).Text = "Click Save for Deletion or Cancel to Quit"
        
    Else
            Call BUTTON_Click(10)
            
    End If


Exit Sub
LOOKUPDELETE_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure LOOKUPDELETE of Form HSN", vbInformation, head
End Sub




