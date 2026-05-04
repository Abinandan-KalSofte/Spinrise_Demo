VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_Policydetail 
   Caption         =   "Policy Detail"
   ClientHeight    =   5685
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8355
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5685
   ScaleWidth      =   8355
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   7440
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      DownPicture     =   "Frm_Policydetail.frx":0000
      Height          =   510
      Index           =   4
      Left            =   6360
      Picture         =   "Frm_Policydetail.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   18
      ToolTipText     =   "Find (Ctrl F)"
      Top             =   0
      Visible         =   0   'False
      Width           =   555
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   12
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "Frm_Policydetail.frx":069F
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":0AE1
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "Frm_Policydetail.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":128D
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "Frm_Policydetail.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":1913
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "Frm_Policydetail.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":1FBF
         Height          =   510
         Index           =   11
         Left            =   5865
         Picture         =   "Frm_Policydetail.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "Frm_Policydetail.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Frm_Policydetail.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":32CF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_Policydetail.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":3953
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
         Picture         =   "Frm_Policydetail.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":3FF9
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "Frm_Policydetail.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":47A8
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_Policydetail.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_Policydetail.frx":4E45
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "Frm_Policydetail.frx":528F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7320
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   9600
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   5385
      Width           =   8355
      _ExtentX        =   14737
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KalSoft Textile"
            TextSave        =   "KalSoft Textile"
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
            TextSave        =   "14/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "1:11 PM"
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
      Height          =   4935
      Left            =   825
      TabIndex        =   16
      Top             =   1185
      Width           =   8955
      _ExtentX        =   15796
      _ExtentY        =   8705
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Frm_Policydetail.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4665
         Left            =   135
         TabIndex        =   17
         Top             =   135
         Width           =   8700
         _ExtentX        =   15346
         _ExtentY        =   8229
         _Version        =   393216
         AllowUpdate     =   -1  'True
         BackColor       =   16638431
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Transit Policy Details "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   405
      Left            =   840
      TabIndex        =   11
      Top             =   720
      Width           =   3315
   End
End
Attribute VB_Name = "Frm_Policydetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim Rs As Recordset
Dim a As Integer
'Dim dv1 As New DataEnvironment1
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
    adoPrimaryRS.Open "select  Policy_No Policy_No ,FromDate ""FromDate"",ToDate from IG_PolicyDetails  where divcode='" & Divcode & "' and 1=2 Order by Policy_No ", DB, adOpenStatic, adLockBatchOptimistic
    Set grdDataGrid.DataSource = adoPrimaryRS
    Call gridalign
    DB.BeginTrans
    grdDataGrid.AllowAddNew = True
    grdDataGrid.AllowUpdate = True
    adoPrimaryRS.AddNew
    grdDataGrid.Col = 0
    grdDataGrid.Row = 0
    grdDataGrid.SetFocus
    Call adddelmod(BUTTON)
    grdDataGrid.ScrollBars = dbgAutomatic
    stbar.Panels(2).Text = "Code can not exceed 3 characters"
Case 1
'modification
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        Buttonframe.Enabled = False
        DB.BeginTrans
       LookUp.Clear = True
       LookUp.query = "select Policy_No as Policy_No,FromDate,ToDate from IG_PolicyDetails where divcode = '" & Divcode & "'"
       LookUp.Caption = "Driver Listing"
       LookUp.DefCol = "FromDate"
       LookUp.ALIGN = "3500,1500,1500"
       Screen.MousePointer = 0
       
        Call adddelmod(BUTTON)
        LookUp.Show vbModal
       
       If LookUp.Cancel = False Then
        Buttonframe.Enabled = True
            SSTab1.Visible = True
            heading.Visible = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Policy_No  Policy_No,FromDate,ToDate  from IG_PolicyDetails where Policy_No ='" & LookUp.Fields(0) & "' and divcode = '" & Divcode & "' Order by Policy_No ", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            Call gridalign
            grdDataGrid.AllowAddNew = False
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Col = 1
            grdDataGrid.Row = 0
            grdDataGrid.SetFocus
            BUTTON(9).Enabled = True
            If Opt = "del" Then
                BUTTON(9).SetFocus
            End If

            LookUp.Clear = True
       Else
           Buttonframe.Enabled = True
    'Frame3.Visible = False
    Call BUTTON_Click(10)
    Exit Sub
           ' txtFields(0).SetFocus
       End If
        grdDataGrid.AllowUpdate = True
        Call adddelmod(BUTTON)
       ' BUTTON(9).Enabled = False
        Screen.MousePointer = 0
        
Case 2
'Deletion
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
        Buttonframe.Enabled = False
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        LookUp.Clear = True
        Call adddelmod(BUTTON)
       LookUp.query = "select Policy_No ,FromDate,ToDate from IG_PolicyDetails where divcode ='" & Divcode & "'" 'not in (select uom from in_item)"
       LookUp.Caption = "Driver Listing"
       LookUp.DefCol = "FromDate"
       LookUp.ALIGN = "3500,1500,1500"
       Screen.MousePointer = 0
       LookUp.Show vbModal
       If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select Policy_No  ""Policy_No"",FromDate ""FromDate"",ToDate from IG_PolicyDetails where Policy_No ='" & LookUp.Fields(0) & "'  and divcode = '" & Divcode & "' Order by Policy_No ", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            Call gridalign
            grdDataGrid.AllowAddNew = False
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Col = 1
            grdDataGrid.Row = 0
            grdDataGrid.SetFocus
            If Opt = "del" Then
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
            End If
            LookUp.Clear = True
       Else
            Buttonframe.Enabled = True
            Call BUTTON_Click(10)
            Exit Sub
       End If

        grdDataGrid.AllowUpdate = False
        DB.BeginTrans
        Call adddelmod(BUTTON)
        Screen.MousePointer = 0
Case 3
If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
            Screen.MousePointer = 11
            Set rep = New Report.ReportView
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
            Open KALFOLDERDATA & "\unit.txt" For Output As #a
              Set Rs = New Recordset
              Rs.Open "select Policy_No,FromDate,ToDate from IG_PolicyDetails where divcode='" & Divcode & "' order by 1", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No Records Found ", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Call header(pg, co)
            
             For I = 1 To Rs.RecordCount
                'Print #a, Space(5) + Padr(rs(0), 6, " ") + Padr(rs(1), 50, " ")
                Print #a, Space(5) + Padr(Rs(0), 6, " ") + Padr(Rs(1), 50, " ") + Padr(Rs(2), 10, " ")
                
                c = c + 1
                    If c > PageLen Then
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Call header(pg, co)
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(5) + String(70, "-")
            Print #a, Chr(12)
            Close #a
            Call KALBATPROCESS("unit")
            Screen.MousePointer = 0
Case 4
'Query
        Opt = "query"
        desc.Caption = "Query"
Case 5
'first
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:
            
Case 6
'next
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
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
            Exit Sub
GoNextError:

Case 7
 'previous
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
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
        Exit Sub

GoPrevError:
       
Case 8
'last
        If Record_Exists("IG_PolicyDetails where divcode='" & Divcode & "'") = False Then Exit Sub
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         stbar.Panels(2).Text = "Last Record"
         Call las(BUTTON)
         Exit Sub
GoLastError:

Case 9
'Save

        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 11
        
           If Opt = "add" Then
             tmp = Opt
             Opt = ""
             adoPrimaryRS.MoveFirst
             While Not adoPrimaryRS.EOF
                'On Error GoTo ERR
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    adoPrimaryRS.Delete
                    adoPrimaryRS.MoveFirst
                    'GoTo l1
                Else
                    adoPrimaryRS.MoveNext
                End If
            Wend
            If adoPrimaryRS.RecordCount <= 0 Then
                MsgBox "Empty Row(s) Cannot Be Saved", vbInformation, head
                adoPrimaryRS.AddNew
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                grdDataGrid.EditActive = True
                Opt = "add"
                Screen.MousePointer = vbNormal
                Exit Sub
            End If
           adoPrimaryRS.MoveFirst
           While Not adoPrimaryRS.EOF
           If Trim(grdDataGrid.Columns(0).Text) = "" Then
                MsgBox "Code cannot be Empty", vbInformation, head
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Screen.MousePointer = 0
                Exit Sub
           ElseIf Trim(grdDataGrid.Columns(1).Text) = "" Then
                MsgBox "FromDate cannot be Empty", vbInformation, head
                Exit Sub
           End If
                   adoPrimaryRS.MoveNext
           Wend
         Opt = tmp
         'adoprimaryrs.MoveLast
         'adoprimaryrs.UpdateBatch adAffectAll
         Opt = ""
         Set Rs = New Recordset
         Rs.Open "select * from IG_PolicyDetails where divcode='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.MoveFirst
         Do While Not adoPrimaryRS.EOF
            Rs.AddNew
            Rs("divcode") = Divcode
            Rs("Policy_No") = adoPrimaryRS("Policy_No")
            Rs("FromDate") = adoPrimaryRS("FromDate")
            Rs("ToDate") = adoPrimaryRS("ToDate")
            adoPrimaryRS.MoveNext
         Loop
         
         Rs.UpdateBatch adAffectAll
         DB.CommitTrans
              MsgBox "Record Saved Successfully", vbInformation, head
         End If
         
         If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         'rs.UpdateBatch adAffectAll
         adoPrimaryRS.UpdateBatch adAffectAll
         DB.CommitTrans
                MsgBox "Record Modified Successfully", vbInformation, head
         End If
         If Opt = "del" Then
'         Set delrs = New Recordset
'         delrs.Open "select COUNT(*) from IG_PolicyDetails  where divcode='" & DivCode & "' and Policy_No ='" & grdDataGrid.Columns(0) & "'", db
'
'        If delrs(0) > 0 Then
'            MsgBox "This InsuanceDetails cannot be deleted since it have dependencies", vbInformation, head
'            Call BUTTON_Click(10)
'            Exit Sub
'        End If
         DB.Execute ("delete from IG_PolicyDetails where divcode='" & Divcode & "' and Policy_No =" + "'" + grdDataGrid.Columns(0) + "'")
         DB.CommitTrans
           MsgBox "Record Deleted Successfully", vbOKOnly, head
         End If
         Opt = " "
         Call query_mode
         
Case 10
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
    Call query_mode
    SSTab1.Visible = True
    heading.Visible = True
    Frame3.Visible = False
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(10).Enabled = False
Case 11
    'EXIT
    Reset
Unload Me
Case 12
    
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Transit_policy
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
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form SetupDriver"
End Sub




Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
If KeyCode = vbKeyA And Shift = 2 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
    '    Call command6_Click
    End If
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form SetupDriver"
End Sub

Private Sub Form_Load()
'WindowState.enable = False
On Error GoTo Form_Load_Error
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open connectstring
  Call query_mode
  Call NEWFORM1(BUTTON, GSNO)
  stbar.Panels(1).Text = SbMsg
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form SetupDriver"
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
  Screen.MousePointer = vbDefault
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form SetupDriver"
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
  If Opt <> "add" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
       stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
  Else
  'stbar.Panels(2).Text = "No Record Found"
  End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form SetupDriver"
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error
If Opt = "add" Or Opt = "mod" Then
    Dim Rs As Recordset
    If ColIndex = 0 Then
        If grdDataGrid.Columns(0).Text = Empty Or grdDataGrid.Columns(0).Text = "" Then
            MsgBox "Policy_No  cannot be empty", vbInformation, head
        Else
            grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
            Set Rs = New Recordset
            Rs.Open "select 'X'  from IG_PolicyDetails where Policy_No  ='" & grdDataGrid.Columns(0).Text & "' and divcode = '" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Code can not be repeated", vbInformation, head
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
End If
Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form SetupDriver"
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error
If DataError = 7007 Then
    If grdDataGrid.Col = 0 Then
        MsgBox "Code cannot have more than 3 characters", vbInformation, head
        st = "A"
    Else
        MsgBox "FromDate cannot empty and atmost it can be upto twenty characters", vbInformation, head
        st2 = "A"
    End If
End If
Response = 0
Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form SetupDriver"
End Sub
Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error
If Opt = "add" Or Opt = "mod" Then
If KeyCode = vbKeyTab Then
    If Trim(grdDataGrid.Text) = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Unit FromDate Cannot be empty"), vbInformation + vbOKOnly, head
            st2 = "A"
            Exit Sub
            Else
            
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Code cannot be empty"), vbInformation + vbOKOnly, head
            st = "A"
            'Else
            Exit Sub
        End If
        Else
        If grdDataGrid.Col = 1 Then
        If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then
            adoPrimaryRS.AddNew
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            st = "A"
            Exit Sub
            End If
            End If
    End If
End If

End If
Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form SetupDriver"
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error
If Opt = "add" Or Opt = "mod" Then
Select Case grdDataGrid.Col
 Case 0
    If KeyAscii <> 9 Then
       ToAlphaNumber grdDataGrid, 20, KeyAscii
       stbar.Panels(2).Text = "Code can be a maximum of 3 Characters"
   End If
 Case 1
    If KeyAscii <> 9 Then
        ToAlphaNumber grdDataGrid, 50, KeyAscii
        stbar.Panels(2).Text = "FromDate can be a maximum of 50 Characters"
   End If
      

End Select
End If
Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyPress of Form SetupDriver"
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select Policy_No  Policy_No,FromDate ""FromDate"",ToDate from  IG_PolicyDetails  where divcode ='" & Divcode & "' Order by Policy_No ", DB, adLockReadOnly
    Set grdDataGrid.DataSource = adoPrimaryRS
    Call gridalign
    If adoPrimaryRS.BOF Then
        MsgBox " No Records Found", vbInformation, head
        stbar.Panels(2).Text = "No Record Found"
    End If
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    Call NEWFORM1(BUTTON, GSNO)
    Opt = " "
    stbar.Panels(1).Text = "Kalsofte"
    Screen.MousePointer = 0
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Query_Mode of Form SetupDriver"
End Sub

Private Sub grdDataGrid_KeyUp(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyUp_Error
If KeyCode = vbKeyS And Shift = 2 Then
    Call BUTTON_Click(9)
    grdDataGrid.Col = 0
    If grdDataGrid.Columns(0).Text <> "" Then
        BUTTON(1).SetFocus
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    Call BUTTON_Click(10)
    BUTTON(1).SetFocus
End If
Exit Sub
grddatagrid_KeyUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyUp of Form SetupDriver"

End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
If Opt = "add" Then
    If st = "A" Or st1 = "A" Then
        grdDataGrid.Col = 0
        st = "B"
    End If
    If st2 = "A" Then
        grdDataGrid.Col = 1
        st2 = "B"
    End If
'    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
'        grdDataGrid.Col = 0
'    End If
'    If grdDataGrid.Col = 0 And grdDataGrid.Columns(0).Text = "" Then
'
'    End If
   ' If grdDataGrid.Row >= 0 And grdDataGrid.Col = 1 Then
'        ln = Len(grdDataGrid.Columns(0).Text)
'        For I = 1 To ln
''                T = Asc(Mid$(grdDataGrid.Columns(0).Text, I, 1))
''                If Not ((T >= 65 And T <= 90) Or (T >= 97 And T <= 122) Or (T >= 48 And T <= 57)) Then
''                    grdDataGrid.Col = 0
''                    Exit Sub
''                End If
''                Next I
''                st = "B"
'               ' End If
'        If Opt = "add" And grdDataGrid.Col = 1 And grdDataGrid.Columns(0) <> "" Then
'
'        End If
'        If grdDataGrid.Col = 1 Then stbar.Panels(2).Text = "FromDate Can be a Maximum of 50 Characters"
   End If
Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_RowColChange of Form SetupDriver"
End Sub


Public Sub ToLen1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error GoTo ToLen1_Error
If Len(Ofld) > maxlen Then
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
 End If
Exit Sub
ToLen1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToLen1 of Form SetupDriver"
End Sub

Public Sub header(pg As Integer, c As Integer)
On Error GoTo header_Error
Print #a,
Print #a, RTrim(CENTRE(divFromDate, 70, " "))
Print #a,
str1 = CStr(pdate) + Space(2)
Print #a, Space(5) + "Driver Listing" + Space(38) + Format(str1, "dd/mm/yy") + Space(2) + "Pg. :" + Padl(CStr(pg), 3, " ")
Print #a, Space(5) + String(70, "-")
Print #a, Space(5) + "Code  FromDate               "
Print #a, Space(5) + String(70, "-")
Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form SetupDriver"
End Sub

Private Sub gridalign()

grdDataGrid.Columns(0).Width = 2500
grdDataGrid.Columns(1).Width = 1500

End Sub

