VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form frm_hsn 
   Caption         =   "HSN"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawStyle       =   2  'Dot
      DrawWidth       =   17015
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   1
      ScaleHeight     =   300
      ScaleWidth      =   4680
      TabIndex        =   14
      Top             =   2595
      Width           =   4680
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   0
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":0000
         Height          =   510
         Index           =   8
         Left            =   3930
         Picture         =   "frm_hsn.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "frm_hsn.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   5040
         Picture         =   "frm_hsn.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4485
         Picture         =   "frm_hsn.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5595
         Picture         =   "frm_hsn.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3375
         Picture         =   "frm_hsn.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1710
         Picture         =   "frm_hsn.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "List"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":27EE
         Height          =   510
         Index           =   1
         Left            =   600
         Picture         =   "frm_hsn.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":2E72
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
         Picture         =   "frm_hsn.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2265
         Picture         =   "frm_hsn.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":3CC7
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_hsn.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_hsn.frx":4364
         Height          =   510
         Index           =   6
         Left            =   2820
         Picture         =   "frm_hsn.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Next Record"
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
         Left            =   6465
         TabIndex        =   13
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
         Left            =   7725
         TabIndex        =   12
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   2895
      Width           =   4680
      _ExtentX        =   8255
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
            TextSave        =   "22/11/2019"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "7:21 PM"
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
      Left            =   1485
      TabIndex        =   16
      Top             =   1425
      Width           =   7035
      _ExtentX        =   12409
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "frm_hsn.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4065
         Left            =   150
         TabIndex        =   17
         Top             =   120
         Width           =   6750
         _ExtentX        =   11906
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         HeadLines       =   1
         RowHeight       =   15
         TabAcrossSplits =   -1  'True
         TabAction       =   2
         WrapCellPointer =   -1  'True
         FormatLocked    =   -1  'True
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
         Caption         =   "HSN"
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   "code"
            Caption         =   "Code"
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
            DataField       =   "description"
            Caption         =   "Description                                                                                     "
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
               ColumnWidth     =   824.882
            EndProperty
            BeginProperty Column01 
               ColumnWidth     =   3569.953
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4710
      Left            =   811
      TabIndex        =   18
      Top             =   1095
      Visible         =   0   'False
      Width           =   7800
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "frm_hsn.frx":4B17
         Height          =   660
         Left            =   2355
         Picture         =   "frm_hsn.frx":4EFD
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   3960
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "frm_hsn.frx":52C3
         Height          =   660
         Left            =   4050
         Picture         =   "frm_hsn.frx":56A5
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   3990
         Width           =   1185
      End
      Begin listacx.codelist Ksldesc1 
         Height          =   3375
         Left            =   510
         TabIndex        =   21
         Top             =   510
         Width           =   7335
         _ExtentX        =   12938
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.Label listlb 
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
         Width           =   7725
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "HSN"
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
      Left            =   1530
      TabIndex        =   23
      Top             =   990
      Width           =   600
   End
End
Attribute VB_Name = "frm_hsn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim row1 As Integer
Dim Rs As Recordset
Dim Count1 As Integer
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

Private Sub BUTTON_Click(Index As Integer)
intervalMinutes = -1
Select Case Index
Case 0
'addition
        Opt = "add"
         Screen.MousePointer = 11
         desc.Caption = "Addition"
         stbar.Panels(2).Text = "Addition"
         DB.BeginTrans
         Set adoPrimaryRS = New Recordset
         'adoPrimaryRS.Open "select code ""Unit"",Description from IG_HSNCODE where 1=2", DB, adOpenStatic, adLockOptimistic
         adoPrimaryRS.Open "select code, Description,user_id,entdate  from IG_HSNCODE where 1=2", DB, adOpenStatic, adLockOptimistic
         adoPrimaryRS.AddNew
         Set grdDataGrid.DataSource = adoPrimaryRS
         grdDataGrid.Columns(1).Width = 4000
         grdDataGrid.AllowAddNew = True
         grdDataGrid.AllowUpdate = True
         Call ENABLCONTLS
         Call bindcontls
         'adoprimaryrs.AddNew
         Call adddelmod(BUTTON)
         'grdDataGrid.COL = 0
         grdDataGrid.Enabled = True
         ''grdDataGrid.SetFocus
         Screen.MousePointer = 0
         stbar.Panels(2).Text = "Addition"
         grdDataGrid.Columns(0).Width = 1500
         grdDataGrid.Columns(1).Width = 4500
''         Set Rs = New Recordset
''         Rs.Open "Select isnull(max(isnull(code,0)),0)+1 from IG_HSNCODE ", DB, adOpenStatic
''         grdDataGrid.Columns(0).Text = Rs(0)
''         grdDataGrid.Columns(0).Locked = True
'         Count1 = Rs(0)
         grdDataGrid.Col = 0
         grdDataGrid.SetFocus

Case 1
'modification
        'Opt = "mod"
        If Record_Exists("IG_HSNCODE", "No Records Found") = False Then Exit Sub
            Opt = "mod"
                Screen.MousePointer = 11
                desc.Caption = "Modification"
                stbar.Panels(2).Text = "Modification"
'                SSTab1.Visible = False
                DB.BeginTrans
                'grdDataGrid.Visible = False
'                Frame3.Visible = True
'                Frame3.ZOrder
'                listlb.Caption = "Product Category Listing"
'                Ksldesc1.conn = connectstring
'                Ksldesc1.Table = "IG_HSNCODE"
'                Ksldesc1.listfield1 = "code"
'                Ksldesc1.listfield2 = "Description"
'                Ksldesc1.SetFocus
        LookUp.clear = True
        LookUp.query = "select code  ,Description  from IG_HSNCODE"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "HSN Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
       SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select code,Description,user_id,entdate from IG_HSNCODE where code ='" & LookUp.Fields(0) & "' Order by code", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 3000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       grdDataGrid.Columns(1).Width = 5084.788
       grdDataGrid.Col = 1
       grdDataGrid.Row = 0
      ' GrdDatagrid.SetFocus
            If Opt = "mod" Then
                stbar.Panels(2).Text = "Modification"
                grdDataGrid.Enabled = True
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = False
                 grdDataGrid.Columns(0).Width = 1500
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
        Else
        Call BUTTON_Click(10)
        End If
        

       
                stbar.Panels(2).Text = "Select Unit Code from the List"
  '              Buttonframe.Enabled = False
                grdDataGrid.AllowUpdate = True
                'calling addmoddel procedure from module
                Call adddelmod(BUTTON)
                Screen.MousePointer = 0

Case 2
'Deletion
    'Opt = "del"
       If Record_Exists("IG_HSNCODE", "No Records Found") = False Then Exit Sub
            Opt = "del"
            Screen.MousePointer = 11
            desc.Caption = "Deletion"
            DB.BeginTrans
        LookUp.clear = True
        LookUp.query = "select code  ,Description  from IG_HSNCODE"
        LookUp.DefCol = "Description"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "HSN Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
       SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select code,Description,user_id,entdate from IG_HSNCODE where code ='" & LookUp.Fields(0) & "' Order by code", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 3000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       grdDataGrid.Columns(1).Width = 5084.788
       grdDataGrid.Col = 1
       grdDataGrid.Row = 0
      ' GrdDatagrid.SetFocus
            If Opt = "mod" Then
                stbar.Panels(2).Text = "Modification"
                grdDataGrid.Enabled = True
                 grdDataGrid.Columns(0).Width = 1500
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
        Else
        Call BUTTON_Click(10)
        End If
        

                grdDataGrid.AllowUpdate = True
                Call adddelmod(BUTTON)
                Screen.MousePointer = 0
            Call adddelmod(BUTTON)
            Screen.MousePointer = 0

Case 3
    'list
            If Record_Exists("IG_HSNCODE", "No Records Found") = False Then Exit Sub
            Set REP = New Report.ReportView
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
            Open "c:\unit.txt" For Output As #a
            Call header(pg, co)
             For i = 1 To Rs.RecordCount
                Print #a, Space(5) + Padr(Rs(0), 5, " "); Space(4); Padr(Rs(1), 20, " ")
                c = c + 1
                    If c > PageLen Then
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
            Open "c:\unit.bat" For Output As #a
            Print #a, "cd\"
            Print #a, "c:"
            Print #a, "cd\"
            Print #a, "type unit.txt > prn"
            Close #a
            REP.txtfile = "c:\unit.txt"
            REP.Batfile = "c:\unit.bat"

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
        If Err.Number = 3021 Then
          MsgBox "No Units Defined", vbInformation, head
          Exit Sub
        End If
      'MsgBox Err.Description

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
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         stbar.Panels(2).Text = "Last Record "
         Call las(BUTTON)
         Exit Sub
GoLastError:

Case 9
'Save
    If Opt = "add" Or Opt = "mod" Then
            If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" Then
                MsgBox "Can't Save Empty Records", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If

'            If (Trim(grdDataGrid.Columns(1).Text) = "" And Not Trim(grdDataGrid.Columns(0).Text) = "") Then
'                MsgBox "Description cannot be empty", vbInformation, head
'                grdDataGrid.COL = 1
'                grdDataGrid.SetFocus
'                Exit Sub
'            End If
            If adoPrimaryRS.RecordCount > 1 Then



                'adoPrimaryRS.MoveNext


            End If

    End If
        Screen.MousePointer = 11
On Error GoTo AddErr
            If Opt = "add" Then
                 adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
                            If Trim(grdDataGrid.Columns(0).Text) = "" Or Trim(grdDataGrid.Columns(1).Text) = "" Then
                                adoPrimaryRS.Delete
                            End If
                            If Len(Trim(grdDataGrid.Columns(0).Text)) > 8 Then
                                    MsgBox "HSN Code Should be 8 digit!", vbCritical
                                    grdDataGrid.Col = 0
                                    grdDataGrid.SetFocus
                                    Exit Sub
                            End If
                            Opt = ""
                            adoPrimaryRS.MoveNext
                        Loop
                    Opt = "add"
                    TEMP = "opt"
                    Opt = " "
                    If grdDataGrid.Row = -1 Then
                       grdDataGrid.Row = 0
                    End If
                    adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
                    adoPrimaryRS("description") = Trim(grdDataGrid.Columns(1).Text)
                    adoPrimaryRS("user_id") = usrid
                    adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "HSN"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("code") = grdDataGrid.Columns(0).Text
                    TrnLog("description") = grdDataGrid.Columns(1).Text
     
                    TrnLog.UpdateBatch adAffectAllChapters
                    

                    adoPrimaryRS.MoveNext
                    Loop
                adoPrimaryRS.UpdateBatch adAffectAll
                Opt = "temp"
                DB.CommitTrans
                Screen.MousePointer = 0
                stbar.Panels(2).Text = "Record Saved Successfully"
                MsgBox " Record Saved Successfully", vbInformation, head
                Opt = " "

                Call QUERY_MODE
                BUTTON(0).SetFocus
                Exit Sub
            End If

        If Opt = "mod" Then
            adoPrimaryRS("user_id") = usrid
            adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
            adoPrimaryRS.UpdateBatch adAffectAll
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "HSN"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")

                    TrnLog("code") = grdDataGrid.Columns(0).Text
                    TrnLog("description") = grdDataGrid.Columns(1).Text
     
                    TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record Modified Successfully"
            MsgBox "Record Modified Successfully", vbInformation, head
            Opt = " "
            Call QUERY_MODE
            BUTTON(0).SetFocus
            Exit Sub
        End If

         If Opt = "del" Then
          On Error GoTo delerr:
'            Set rs = New Recordset
'                 rs.Open "select code from ig_product where code='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
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
                        DB.Execute ("delete from IG_HSNCODE where code='" & grdDataGrid.Columns(0).Text & "'")
                        
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "HSN"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grdDataGrid.Columns(0).Text
                        TrnLog("description") = grdDataGrid.Columns(1).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
                        
                        DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Record Deleted Successfully"
                        MsgBox "Record Deleted Successfully", vbInformation, head
                        Opt = " "
                        Call QUERY_MODE
                        BUTTON(0).SetFocus
                        Exit Sub
                     Else
                     DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Operation Cancelled"
                        MsgBox "Operation Cancelled", vbInformation, head
                        Opt = " "
                        Call QUERY_MODE
                   Exit Sub
                   End If

                   'End If
    End If
delerr:
'    If CStr(Mid$(err.Description, InStr(err.Description, "ORA") + 4, 5)) = "02292" Then
        If Opt = "del" Then

        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        DB.CommitTrans
        Opt = " "
        Call QUERY_MODE
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
     If Err.Number = "-2147217842" Then
        MsgBox "Empty Records Not saved", vbInformation
        grdDataGrid.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If


Case 10
    'CANCEL
        desc.Caption = "Cancel"
        Screen.MousePointer = 11
    Select Case Opt
            Case "mod"
                    DB.RollbackTrans
            Case "add"
                    DB.RollbackTrans
            Case "del"
                    DB.RollbackTrans
    End Select
        Screen.MousePointer = 0
        Opt = " "
        Call QUERY_MODE
        Call cancl(BUTTON)
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
'             MsgBox "Description should not Empty", vbInformation, head
'             grdDataGrid.Col = 1
'             Opt = tmp
'       End If
'        'DB.RollbackTrans
'        'Call query_mode
'        'MsgBox Err.Description
'        Screen.MousePointer = 0
        grdDataGrid.SetFocus
       '

End Sub
Private Sub grddatagrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
'    If Opt = "add" Then
'            If ColIndex = 1 Then
'                    If grdDataGrid.Columns(1).Text <> Empty Then
'                        'grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
'                        Set rs = New Recordset
'                            rs.Open "select 'Description'  from IG_HSNCODE where Description ='" & grdDataGrid.Columns(1).Text & "'", db, adOpenStatic, adLockBatchOptimistic
'                                If Not rs.BOF Then
'                                    MsgBox "Unit Description cannot be repeated", vbInformation, head
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
End Sub
Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
If DataError = 7007 Then
    If grdDataGrid.Col = 0 Then
        MsgBox " Code should not have more than three characters", vbInformation, head
        st = "A"
    Else
        MsgBox " Description should not empty and atmost it can be upto twenty characters", vbInformation, head
        st2 = "A"
    End If
End If
Response = 0

End Sub

Private Sub GRDDATAGRID_GotFocus()
    If grdDataGrid.Col = 0 Then
       stbar.Panels(2).Text = "Enter a maximum of 1 character"
    End If
    If grdDataGrid.Col = 1 Then
       stbar.Panels(2).Text = "Enter a maximum of 25 character"
    End If
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
'If KeyCode = 9 Then
'    If grdDataGrid.Text = "" Then
'        If grdDataGrid.COL = 1 Then
'            MsgBox ("Description Cannot be empty"), vbInformation, head
'
'            st2 = "pp3"
'            Exit Sub
'        End If
'    End If
'End If

'            If Trim(GrdDatagrid.COL) = 1 Then
'            If Trim(GrdDatagrid.Columns(1).Text) = "" And KeyCode = 32 Then
'
'                GrdDatagrid.COL = 1
'                GrdDatagrid.SetFocus
'                'SendKeys "{delete}"
'                st2 = "pp3"
'                Exit Sub
'            End If
'        End If
If grdDataGrid.Col = 1 And Opt = "add" And KeyCode = 9 Then
    adoPrimaryRS.AddNew
'    Count1 = Count1 + 1
'    grdDataGrid.Columns(0).Text = Count1
    grdDataGrid.Col = 0
    grdDataGrid.SetFocus
    Exit Sub
End If



End If
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
    Select Case grdDataGrid.Col
        Case 0
                If KeyAscii = 32 Then
                    KeyAscii = 9
                End If
                If KeyAscii <> 9 Then
                   ' to grdDataGrid, 5, KeyAscii
                     Call validlenD(grdDataGrid, 8, KeyAscii)
                    'ToUpCase grdDataGrid, KeyAscii, 8
                    ToAlphaNumber grdDataGrid, 8, KeyAscii
                    ToUpCase grdDataGrid, KeyAscii
                    
                    Call ToUpCase(grdDataGrid, KeyAscii)
                End If
        Case 1
                If Opt = "add" Then
                    If KeyAscii <> 9 Then
                        Call validlenD(grdDataGrid, 30, KeyAscii)
                        ToUpCase grdDataGrid, KeyAscii
                    End If
                Else
                    If KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) <> "" Then
                        'grdDataGrid.AllowAddNew = True
'                       grddatagrid.Col = 0
'                       grddatagrid.SetFocus
                        'FLG = "N"
                    ElseIf KeyAscii = 9 Then
                        'st = "A"
                        'grdDataGrid.COL = 1
                        'grdDataGrid.SetFocus
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
    End Select
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
intervalMinutes = -1
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
           If LastCol = 0 And Opt = "add" Then
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                'On Error Resume Next
                    MsgBox "Code cannot be empty", vbInformation, head
                  '  grdDataGrid.Columns(0).Text = ""
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                    grdDataGrid.EditActive = True
                    Exit Sub
                Else
                    grdDataGrid.Col = 1
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
           End If

           If LastCol = 0 And Opt = "add" Then
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    MsgBox "Code be empty", vbInformation, head
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                Else
                    adoPrimaryRS.AddNew
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
           End If
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
  intervalMinutes = -1
End Sub

Private Sub lovcancel_Click()
    Frame3.Visible = False
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    DB.RollbackTrans
    Buttonframe.Enabled = True
    Opt = " "
    Call QUERY_MODE
    BUTTON(0).SetFocus
    intervalMinutes = -1
End Sub
Private Sub lovok_Click()
     intervalMinutes = -1
       Buttonframe.Enabled = True
       SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select code,Description,user_id,entdate from IG_HSNCODE where code ='" & Ksldesc1.Code & "' Order by code", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 3000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       grdDataGrid.Columns(1).Width = 5084.788
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


End Sub
Private Sub Form_Load()
    Opt = "qry"
        Set DB = New Connection
        DB.CursorLocation = adUseClient
        DB.Open connectstring
        desc.Caption = "Query"
        DATLAB.Caption = Date
        stbar.Panels(1).Text = head
      'BUTTON(0).Enabled = False
        grdDataGrid.Caption = "HSN"
        grdDataGrid.Columns(1).Width = 4700
        grdDataGrid.HeadFont.Bold = True
        SSTab1.Tabs = 1
        Call QUERY_MODE
        intervalMinutes = -1
End Sub
Private Sub Form_Resize()
      On Error Resume Next
        'GrdDatagrid.Columns(1).Width = 5084.788
        stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub
Private Sub Form_Unload(Cancel As Integer)
        Screen.MousePointer = vbDefault
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    If Opt <> "add" Then
            stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    End If
    If adoPrimaryRS.RecordCount = 0 Then
             stbar.Panels(2).Text = "No Records Found"
    End If
    intervalMinutes = -1
End Sub
Private Sub GrdDatagrid_AfterColUpdate(ByVal ColIndex As Integer)
    If Opt = "add" Then 'Opt = "mod" Or Opt = "del"
        row1 = grdDataGrid.Row
        If ColIndex = 0 Then
            If grdDataGrid.Columns(0).Text = "" Then
                MsgBox "Code cannot be empty", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
            Set Rs = New Recordset
            Rs.Open "select code from IG_HSNCODE where code ='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                'flg = "y"
                MsgBox "Category Code cannot be repeated", vbInformation, head
                'grdDataGrid.Columns(0).Text = " "
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
'                            rs.Open "select 'X'  from IG_HSNCODE  where Description ='" & Trim(grdDataGrid.Columns(1).Text) & "'", db, adOpenStatic, adLockBatchOptimistic
'
'                            If Not rs.BOF Then
'                                MsgBox "Unit Description should not repeat", vbInformation, head
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
End Sub
Public Sub QUERY_MODE()
intervalMinutes = -1
On Error GoTo er1
    If Opt = " " Or Opt = "qry" Then
    'Or Opt = "qry" Or Opt = "add"
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select code ""Unit"",Description ""Description"" from  IG_HSNCODE  Order by code ", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select code,Description from IG_HSNCODE Order by code", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
          Else
        End If

        Call bindcontls
        desc.Caption = "Query"
        stbar.Panels(2).Text = "Query"
         grdDataGrid.Columns(0).Width = 1500
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
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
        'adoPrimaryRS.Open "select code ""Unit"",Description ""Description"" from IG_HSNCODE where code ='" & Trim(Ksldesc1.code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select code,Description from IG_HSNCODE where code ='" & Trim(Ksldesc1.Code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Call ENABLCONTLS
        grdDataGrid.Columns(0).Locked = True
        grdDataGrid.Columns(0).Width = 1500
    End If

        If Opt = "del" Then
            Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select code ""Unit"",Description ""Description"" from IG_HSNCODE  where code ='" & Trim(Ksldesc1.code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
            adoPrimaryRS.Open "select code ,Description from IG_HSNCODE where code ='" & Trim(Ksldesc1.Code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            Call disablcontls
            BUTTON(10).Enabled = False
             grdDataGrid.Columns(0).Width = 1500
        End If


er1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If

End Sub
Public Sub bindcontls()
    Set grdDataGrid.DataSource = adoPrimaryRS
End Sub

Public Sub disablcontls()
    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.Columns(1).Locked = True
  End Sub
Public Sub ENABLCONTLS()
    grdDataGrid.Columns(0).Locked = False
    grdDataGrid.Columns(1).Locked = False
End Sub

Private Sub ksldesc1_GotFocus()
    lovok.Default = True
End Sub
Public Sub header(pg As Integer, c As Integer)
            Print #a,
            'Print #a, Space(10) + Space(Round((60 - 2 * Len(divname)) / 2)) + Chr(14) + divname '+ Space(Round((100 - 2 * Len(divname)) / 2))
            Print #a, Space(5) & Chr$(27) + "E" + CENTRE(Trim(divname), 60, " ") + Chr$(27) + "F"
            Print #a, Space(60)
            Str = CStr(pdate) + Space(2)
            Print #a, Space(5) + "Product Category Listing" + Space(13) + "Dt: " & Str + "Pg.:" + Padl(CStr(pg), 3, " ")
            Set Rs = New Recordset
            Rs.Open "select code,DESCRIPTION from IG_HSNCODE", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No records found for this month", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Print #a, Space(5) + String(60, "-")
            Print #a, Space(5) + "Code     Description               "
            Print #a, Space(5) + String(60, "-")

End Sub




Public Sub ToAlpha1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
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
End Sub

Public Sub validlenD(obj As Object, maxlen As Integer, KeyAscii As Integer)
' If (KeyAscii >= 97 And KeyAscii <= 122) Then
''    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
''             KeyAscii = 32 Or KeyAscii >= 49 And KeyAscii <= 59) Then
''         KeyAscii = 0
'   End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If
End Sub





