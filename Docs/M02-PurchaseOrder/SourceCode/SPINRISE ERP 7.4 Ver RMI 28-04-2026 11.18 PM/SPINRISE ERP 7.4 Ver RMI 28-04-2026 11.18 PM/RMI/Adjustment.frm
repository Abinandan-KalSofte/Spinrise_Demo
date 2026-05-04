VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL [1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form Adjustment 
   Caption         =   "Stock Adjustment"
   ClientHeight    =   6960
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10530
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6960
   ScaleWidth      =   10530
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      DownPicture     =   "Adjustment.frx":0000
      Height          =   495
      Index           =   4
      Left            =   540
      Picture         =   "Adjustment.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   32
      ToolTipText     =   "Modify (Ctrl M)"
      Top             =   30
      Width           =   525
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4455
      Left            =   600
      TabIndex        =   23
      Top             =   1140
      Width           =   7965
      _ExtentX        =   14049
      _ExtentY        =   7858
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "Adjustment.frx":0684
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame2 
         Height          =   2865
         Left            =   150
         TabIndex        =   29
         Top             =   1440
         Width           =   7665
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   2565
            Left            =   120
            TabIndex        =   12
            Top             =   210
            Width           =   7455
            _ExtentX        =   13150
            _ExtentY        =   4524
            _Version        =   393216
            AllowUpdate     =   -1  'True
            ForeColor       =   -2147483635
            HeadLines       =   1
            RowHeight       =   15
            TabAction       =   2
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
      Begin VB.Frame Frame1 
         Height          =   1335
         Left            =   150
         TabIndex        =   24
         Top             =   90
         Width           =   7665
         Begin MSMask.MaskEdBox MaskEdBox1 
            Height          =   315
            Left            =   5670
            TabIndex        =   10
            Top             =   270
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
            _Version        =   393216
            MaxLength       =   10
            Format          =   "dd/mm/yyyy"
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   5670
            TabIndex        =   28
            Top             =   270
            Width           =   1365
            _ExtentX        =   2408
            _ExtentY        =   556
            _Version        =   393216
            Format          =   103219201
            CurrentDate     =   37043
         End
         Begin VB.TextBox txtfields 
            Height          =   315
            Index           =   0
            Left            =   1110
            TabIndex        =   9
            Top             =   270
            Width           =   1125
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "Adjustment.frx":06A0
            Left            =   1110
            List            =   "Adjustment.frx":06AD
            Style           =   2  'Dropdown List
            TabIndex        =   11
            Top             =   780
            Width           =   1515
         End
         Begin VB.TextBox txtfields 
            Height          =   315
            Index           =   1
            Left            =   1110
            TabIndex        =   13
            Top             =   780
            Width           =   1515
         End
         Begin VB.Label Label4 
            Caption         =   "Type"
            Height          =   405
            Left            =   360
            TabIndex        =   27
            Top             =   810
            Width           =   1095
         End
         Begin VB.Label Label3 
            Caption         =   "Date"
            Height          =   345
            Left            =   4950
            TabIndex        =   26
            Top             =   330
            Width           =   1215
         End
         Begin VB.Label Label2 
            Caption         =   "Doc No."
            Height          =   285
            Left            =   360
            TabIndex        =   25
            Top             =   330
            Width           =   885
         End
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   4
      Top             =   -90
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":06D4
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "Adjustment.frx":09DE
         Style           =   1  'Graphical
         TabIndex        =   31
         ToolTipText     =   "Add (Ctrl A) "
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":0D71
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
         Left            =   1110
         Picture         =   "Adjustment.frx":107B
         Style           =   1  'Graphical
         TabIndex        =   30
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":1417
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "Adjustment.frx":1861
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":1BAE
         Height          =   510
         Index           =   5
         Left            =   2160
         Picture         =   "Adjustment.frx":1FF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Adjustment.frx":235D
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":26F4
         Height          =   510
         Index           =   7
         Left            =   3210
         Picture         =   "Adjustment.frx":2B3E
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Previous Record (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":2E8E
         Height          =   510
         Index           =   11
         Left            =   5340
         Picture         =   "Adjustment.frx":32D8
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":366D
         Height          =   510
         Index           =   9
         Left            =   4275
         Picture         =   "Adjustment.frx":3977
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Adjustment.frx":3D19
         Height          =   510
         Index           =   10
         Left            =   4800
         Picture         =   "Adjustment.frx":4023
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Adjustment.frx":439F
         Height          =   510
         Index           =   8
         Left            =   3735
         Picture         =   "Adjustment.frx":47E9
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Last Record (Ctrl Q)"
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
         Left            =   8085
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6555
         TabIndex        =   14
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   16
      Top             =   6660
      Width           =   10530
      _ExtentX        =   18574
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "29/08/2019"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11:58 AM"
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
      Left            =   180
      TabIndex        =   17
      Top             =   810
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Adjustment.frx":4B4B
         Height          =   615
         Left            =   3480
         Picture         =   "Adjustment.frx":4F31
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "Adjustment.frx":52F7
         Height          =   615
         Left            =   5220
         Picture         =   "Adjustment.frx":56D9
         Style           =   1  'Graphical
         TabIndex        =   18
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   20
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
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Stock Adjustment"
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
      Left            =   720
      TabIndex        =   22
      Top             =   660
      Width           =   2205
   End
End
Attribute VB_Name = "Adjustment"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoSecondaryRS As Recordset
Attribute adoSecondaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim REP As Report.ReportView
Dim FLG As String
Dim Rs As Recordset
Dim rss As Recordset
Dim tmp As String
Dim Str As String
Dim pr As String
Dim dr As String
Dim tr As String
Dim rt As String
Dim g As String
Dim t7 As Double
Dim t6 As Double
Dim t0 As Integer
Dim t1 As String
Dim t2 As String
Dim t3 As String
Dim t4 As Integer
Dim t5 As Integer
Dim t8 As String
Dim Date1 As String
Dim Date2 As String
Dim date3 As String
Dim dt As String
Dim errflg As String
Dim Last_docno As Integer
Dim New1DocNo As Integer
Dim SR As String
Dim repo  As Report.ReportView
Dim rs1  As Recordset, rsP As Recordset

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
If Opt <> "add" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
   stbar.Panels(2).Text = "Record: " & CStr(adoPrimaryRS("docno"))
   MaskEdBox1.Text = adoPrimaryRS("docdt")
   TXTFIELDS(0).Text = adoPrimaryRS("docno")
   If adoPrimaryRS("adjst") = "P" Then
      TXTFIELDS(1).Text = "Adjustment (+)"
   Else
      TXTFIELDS(1).Text = "Adjustment (-)"
   End If
End If
Exit Sub
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Adjustment"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Dim i As Integer
Dim netrs  As New Recordset
Select Case Index
Case 0
'addition
    If ToValidFinYear(Divcode) = False Then Exit Sub
        Opt = "add"
        desc.Caption = "Addition"
        DB.BeginTrans
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select docno,docdt,adjst,adjvalue from rm_adjt where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Call ENABLCONTLS
        Call bindcontls
        adoPrimaryRS.AddNew
         SSTab1.Enabled = True
        Combo1.Visible = True
        TXTFIELDS(0).Text = " "
        TXTFIELDS(1).Text = " "
        Combo1.Text = " "
        MaskEdBox1.Text = pdate
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select docno,docdt,adjst, lotno ""Lot No"",baleno ""Bale No"",recwt""Rec. Weight"",adjwt""Adj. Weight"",netwt ""Net Weight"",recvalue ""Rec. Value"",adjvalue ""Adj. Value"",netvalue ""Net Value"",remarks ""Remarks"",lotdt,catcd,divcode from rm_adjt where 1=2", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        grdDataGrid.AllowUpdate = True
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(8).Width = 1739.906
        grdDataGrid.Columns(7).Width = 1140.095
        grdDataGrid.Columns(6).Width = 1454.74
        grdDataGrid.Columns(5).Width = 1365.165
        grdDataGrid.Columns(4).Width = 730.0001
        grdDataGrid.Columns(3).Width = 680
        grdDataGrid.Columns(5).Alignment = dbgRight
        grdDataGrid.Columns(6).Alignment = dbgRight
        grdDataGrid.Columns(7).Alignment = dbgRight
        grdDataGrid.Columns(8).Alignment = dbgRight
        grdDataGrid.Columns(9).Alignment = dbgRight
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(5).NumberFormat = "###.000"
        grdDataGrid.Columns(6).NumberFormat = "###.000"
        grdDataGrid.Columns(7).NumberFormat = "###.000"
        grdDataGrid.Columns(8).NumberFormat = "###.00"
        grdDataGrid.Columns(9).NumberFormat = "###.00"
        grdDataGrid.Columns(10).NumberFormat = "###.00"
        grdDataGrid.Columns(3).Locked = False
        grdDataGrid.Columns(4).Locked = False
        grdDataGrid.Columns(5).Locked = False
        grdDataGrid.Columns(7).Locked = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(11).Visible = True
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        grdDataGrid.Columns(14).Visible = False
        adoSecondaryRS.AddNew
        stbar.Panels(2).Text = "Addition"
        TXTFIELDS(0).Locked = True
        MaskEdBox1.Enabled = True
        MaskEdBox1.SetFocus
        Call adddelmod(BUTTON)
Case 3
        Set repo = New Report.ReportView
        desc.Caption = "Listing"
        Set rs1 = New Recordset
       rs1.Open "select docno,docdt,'adjst'=CASE WHEN adjst='P' then 'Adjustment (+)' else 'Adjustment (-)' end, lotno ""Lot No"",recwt""Rec. Weight"",adjwt""Adj. Weight"",netwt ""Net Weight"",recvalue ""Rec. Value"",adjvalue ""Adj. Value"",netvalue ""Net Value"",remarks ""Remarks"",lotdt,catcd,divcode from rm_adjt where 1=1 and DivCode = '" & Divcode & "' ", DB, adOpenStatic
        If rs1.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
        End If
        pg = 1
        Set rsP = New Recordset
        Close
        Open KALFOLDERDATA & "\red.txt" For Output As #1
            Print #1,
            Print #1,
            Print #1, Space(5) & Chr(27); "E"; CENTRE(divname, 80, " "); "F"; Chr(27)
            Print #1, Chr(15)
            Print #1,
            Print #1, Space(5) & "Adjustment" & Space(98) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg:" & pg
            Print #1, Space(5) & String(130, "-")
            Print #1, Space(5) & "DocNo" & Space(4) & "Docdt" & Space(3) & "Adjst" & Space(2) & "LotNo" & Space(6) & "Rec." & Space(4) & "Adj." & Space(8) & "Net." & Space(7) & "Rec." & Space(3) & "Adj." & Space(10) & "Net." & Space(4) & "Remarks"
            Print #1, Space(40) & "Weight" & Space(2) & "Weight" & Space(6) & "Weight" & Space(5) & "Value" & Space(2) & "Value" & Space(9) & "Value"
            Print #1, Space(5) & String(130, "-")
              co = 8
        Do While Not rs1.EOF
            Print #1, Space(5) & Padr(rs1(0), 4, " ") & Space(2) & Padr(rs1(1), 11, " ") & Space(2) & Padr(rs1(2), 2, " ") & Space(5) & Padr(rs1(3), 6, " ") & Space(1) & Padr(INF(rs1(4), 2), 8, " ") & Space(3) & Padr(INF(rs1(5), 2), 8, " ") & Space(1) & Padr(INF(rs1(6), 2), 8, " ") & Space(2) & Padr(INF(rs1(7), 2), 8, " ") & Space(2) & Padr(INF(rs1(8), 2), 8, " ") & Space(2) & Padr(INF(rs1(9), 2), 10, " ") & Space(2) & Padr(rs1(10), 25, " ")
              co = co + 1
            rs1.MoveNext
         If co >= PageLen Then
            Print #1, Space(5) & String(130, "-")
            Print #1, Chr(12)
              co = 0
              pg = pg + 1
            Print #1, Space(5) & Chr(27); "E"; CENTRE(divname, 56, " "); Chr(27); "F"
            Print #1, Space(5) & "Adjustment            " & Space(98) & "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; pg
            Print #1, Space(5) & String(130, "-")
            Print #1, Space(5) & "DocNo" & Space(4) & "Docdt" & Space(3) & "Adjst" & Space(2) & "LotNo" & Space(6) & "Rec." & Space(4) & "Adj." & Space(8) & "Net." & Space(7) & "Rec." & Space(3) & "Adj." & Space(10) & "Net." & Space(4) & "Remarks"
            Print #1, Space(40) & "Weight" & Space(2) & "Weight" & Space(6) & "Weight" & Space(5) & "Value" & Space(2) & "Value" & Space(9) & "Value"
            Print #1, Space(5) & String(130, "-")
              co = co + 5
         End If
        Loop
            Print #1, Space(5) & String(130, "-")
            Print #1, Chr(12)
         Close #1
'         Open "C:\red.bat" For Output As #1
'            Print #1, "cd\"
'            Print #1, "C:"
'            Print #1, "cd\"
'            Print #1, "type red.txt>prn"
'              repo.txtfile = "C:\red.txt"
'              repo.Batfile = "C:\red.bat"
'         Close #1
        
        Call KALBATPROCESS("red")
Case 4
        
        
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_adjt where 1=1 and DivCode = '" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "mod"
        desc.Caption = "Modification"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_adjt"
        KslList1.listfield1 = "cast(docno as varchar) + ':' +adjst"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        grdDataGrid.AllowUpdate = False
        Frame3.Visible = True
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = False
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
        
        
        
        
        
        
        
        
        
        
        

        
Case 2
    If ToValidFinYear(Divcode) = False Then Exit Sub
    'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_adjt where 1=1 and DivCode = '" & Divcode & "'", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        SSTab1.Visible = False
        Label15.Caption = "Document Number List"
        KslList1.conn = connectstring
        KslList1.Table = "rm_adjt"
        KslList1.listfield1 = "cast(docno as varchar) + ':' +adjst"
        KslList1.listfield2 = "convert(varchar,docdt,103)"
        grdDataGrid.AllowUpdate = False
        Frame3.Visible = True
        Frame3.ZOrder
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = False
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
               
Case 5
        'first
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        stbar.Panels(2).Text = "First Record"
        Call bindcontls
        'calling fir procedure from module
        Call navi1(BUTTON)
        Call FIR(BUTTON)
        Beep
        Exit Sub
GoFirstError:
        MsgBox err.Description, vbInformation, head
Case 6
        'next
'        desc.Caption = "Query"
'        On Error GoTo GoNextError
'    If Not adoprimaryrs.EOF Then
'        If adoprimaryrs.RecordCount > 1 Then
'        adoprimaryrs.MoveNext
'        End If
'        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", db, adOpenStatic, adLockOptimistic
'
'        Set grdDataGrid.DataSource = ADOSECONDARYRS
'        Call bindcontls
'        BUTTON(5).Enabled = True
'        BUTTON(7).Enabled = True
'        BUTTON(6).Enabled = True
'        BUTTON(8).Enabled = True
'    End If
'    If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
'        Beep
'        adoprimaryrs.MoveLast
'        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", db, adOpenStatic, adLockOptimistic
'        stbar.Panels(2).Text = "Last Record"
'        BUTTON(6).Enabled = False
'        BUTTON(8).Enabled = False
'        BUTTON(5).Enabled = True
'        BUTTON(7).Enabled = True
'        Beep
'    End If
'        ' show the current record
'        Call navi1(BUTTON)
'    If adoprimaryrs.AbsolutePosition = adoprimaryrs.RecordCount Then
'        stbar.Panels(2).Text = "Last Record"
'        BUTTON(8).Enabled = False
'        BUTTON(6).Enabled = False
'        Beep
'    Else
'        BUTTON(8).Enabled = True
'        BUTTON(6).Enabled = True
'    End If
'        Exit Sub
'GoNextError:
'        MsgBox err.description, vbInformation, head


'======================================
  desc.Caption = "Query"
        On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        If adoPrimaryRS.RecordCount > 1 Then
         'adoprimaryrs.MoveNext
         pr = adoPrimaryRS("docno")
         dr = adoPrimaryRS("docdt")
         tr = adoPrimaryRS("adjst")
         Do While pr = adoPrimaryRS("docno") And dr = adoPrimaryRS("docdt") And tr = adoPrimaryRS("adjst")
                pr = adoPrimaryRS("docno")
                dr = adoPrimaryRS("docdt")
                tr = adoPrimaryRS("adjst")
            adoPrimaryRS.MoveNext
        
         'adoprimaryrs.MoveNext
         Loop
         
         End If
'        If pr = adoprimaryrs("docno") And dr = adoprimaryrs("docdt") Then
'        adoprimaryrs.MoveNext
'        End If
        'End If
        Set adoSecondaryRS = New Recordset
adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
           
        Set grdDataGrid.DataSource = adoSecondaryRS
        'Call GRIDALIGN
        Call bindcontls
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        pr = adoPrimaryRS("docno")
        dr = adoPrimaryRS("docdt")
         tr = adoPrimaryRS("docdt")
    End If
GoNextError:
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        adoPrimaryRS.MoveLast
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        stbar.Panels(2).Text = "Last Record"
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        Beep
    End If
    
        Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        stbar.Panels(2).Text = "Last Record"
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        Beep
    Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
    End If
        Exit Sub

      '  MsgBox err.description, vbInformation, head


Case 7
        'Previous
'        desc.Caption = "Query"
'        On Error GoTo Gopreverror
'    If Not adoprimaryrs.BOF Then
'        If adoprimaryrs.RecordCount > 1 Then
'        adoprimaryrs.MovePrevious
'        End If
'        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", db, adOpenStatic, adLockOptimistic
'        Set grdDataGrid.DataSource = ADOSECONDARYRS
'        If adoprimaryrs.BOF Then
'            StatusBar1.Panels(2).Text = "First Record"
'        End If
'            Call bindcontls
'            BUTTON(5).Enabled = True
'            BUTTON(7).Enabled = True
'            BUTTON(6).Enabled = True
'            BUTTON(8).Enabled = True
'    End If
'
'    If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
'        Beep
'        'moved off the end so go back
'        BUTTON(5).Enabled = False
'        BUTTON(7).Enabled = False
'        BUTTON(6).Enabled = True
'        BUTTON(8).Enabled = True
'        'Call PREV(BUTTON)
'        adoprimaryrs.MoveFirst
'        Set ADOSECONDARYRS = New Recordset
'        ADOSECONDARYRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", db, adOpenStatic, adLockOptimistic
'        Set grdDataGrid.DataSource = ADOSECONDARYRS
'    End If
'        'show the current record
'        Call navi1(BUTTON)
'    If adoprimaryrs.AbsolutePosition = 1 Then
'        stbar.Panels(2).Text = "First Record"
'        BUTTON(5).Enabled = False
'        BUTTON(7).Enabled = False
'        Beep
'        Else
'        BUTTON(5).Enabled = True
'        BUTTON(7).Enabled = True
'        End If
'    Exit Sub
'
'Gopreverror:
'        MsgBox err.description, vbInformation, head

'==============================================
 desc.Caption = "Query"
        On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        If adoPrimaryRS.RecordCount > 1 Then
        
         st = adoPrimaryRS("docno")
         SR = adoPrimaryRS("docdt")
         rt = adoPrimaryRS("adjst")
         Do While st = adoPrimaryRS("docno") And SR = adoPrimaryRS("docdt") And rt = adoPrimaryRS("adjst")
         
         st = adoPrimaryRS("docno")
         SR = adoPrimaryRS("docdt")
         rt = adoPrimaryRS("adjst")
         adoPrimaryRS.MovePrevious
        
         
         Loop
        End If
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        'Call GRIDALIGN
        If adoPrimaryRS.BOF Then
            stbar.Panels(2).Text = "First Record"
        End If
            Call bindcontls
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            st = adoPrimaryRS("docno")
            SR = adoPrimaryRS("docdt")
            rt = adoPrimaryRS("adjst")
    End If
GoPrevError:
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        'Call GRIDALIGN
    End If
        'show the current record
        Call navi1(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        stbar.Panels(2).Text = "First Record"
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        End If
    Exit Sub

'Gopreverror:
       ' MsgBox err.description, vbInformation, head


Case 8
        'last
        desc.Caption = "Query"
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        stbar.Panels(2).Text = "Last Record"
        Call bindcontls
        'calling las procedure from module
        Call navi1(BUTTON)
        Call las(BUTTON)
        Beep
        Exit Sub
GoLastError:
        MsgBox err.Description, vbInformation, head
Case 9

If Opt = "add" Or Opt = "mod" Then
If Opt = "mod" Then
    DB.Execute "delete from rm_ADJT where DOCNO =" & Trim(pr) & " AND DOCDT='" & Trim(Format(dr, "yyyy-mm-dd")) & "' AND ADJST='" & Str & "'"
End If

tmp = Opt

Opt = " "
 If TXTFIELDS(1).Text = "Adjustment (+)" Then
 Str = "P"
 Else
 Str = "M"
 End If
 adoSecondaryRS.MoveFirst
 Do While Not adoSecondaryRS.EOF
 DB.Execute "INSERT INTO rm_adjt(docno,docdt,lotno,baleno,recwt,adjwt,netwt,adjst,adjvalue,netvalue,recvalue,remarks,LOTDT,CATCD,DIVCODE) VALUES " & _
 " (" & TXTFIELDS(0).Text & ",'" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "' ," & val(grdDataGrid.Columns(3).Text) & ",0," & val(grdDataGrid.Columns(5).Text) & "," & val(grdDataGrid.Columns(6).Text) & "," & grdDataGrid.Columns(7).Text & ",'" & Str & "'," & IIf(grdDataGrid.Columns(9).Text = "", 0, val(grdDataGrid.Columns(9).Text)) & "," & grdDataGrid.Columns(10).Text & "," & grdDataGrid.Columns(8).Text & " ,'" & grdDataGrid.Columns(11).Text & "','" & Format(grdDataGrid.Columns(12).Text, "YYYY-MM-DD") & "','" & grdDataGrid.Columns(13).Text & "','" & Divcode & "')"
 'Ravi DB.Execute ("update rm_BALE set NETWT=" & Val(grdDataGrid.Columns(7).Text) & " WHERE lotno=" & Val(grdDataGrid.Columns(3).Text) & " AND BALENO=" & Val(grdDataGrid.Columns(4).Text) & "")
'    Set Rs = New Recordset
'    Rs.Open "Select * from rm_lot where lotno=" & grddatagrid.Columns(3).Text & " and lotdt= '" & Format(grddatagrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grddatagrid.Columns(13).Text) & "' and (isswt is null or isswt =0) and (issbal is null or issbal =0) ", Db, adOpenStatic
'    If Rs.RecordCount <> 0 Then
        Set rs1 = New Recordset
        rs1.Open "Select count(baleno) from rm_bale where lotno=" & grdDataGrid.Columns(3).Text & " and lotdt= '" & Format(grdDataGrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grdDataGrid.Columns(13).Text) & "'", DB, adOpenStatic
         For i = 1 To rs1(0)
            Set netrs = New Recordset
            netrs.Open "Select isnull(netwt,0) from rm_bale where lotno=" & grdDataGrid.Columns(3).Text & " and lotdt= '" & Format(grdDataGrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grdDataGrid.Columns(13).Text) & "' and baleno= " & i & " ", DB, adOpenStatic
            DB.Execute "Update rm_bale set NETWT= " & val(grdDataGrid.Columns(7).Text) / val(rs1(0)) & " where lotno=" & grdDataGrid.Columns(3).Text & " and lotdt= '" & Format(grdDataGrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grdDataGrid.Columns(13).Text) & "'"
         Next
        DB.Execute ("update rm_lot set GRSWGT=" & val(grdDataGrid.Columns(7).Text) & " ,TOTLANDCOST= " & val(grdDataGrid.Columns(10).Text) & " where lotno=" & grdDataGrid.Columns(3).Text & " and lotdt= '" & Format(grdDataGrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grdDataGrid.Columns(13).Text) & "'")
'    Else
'        Db.Execute ("update rm_lot set TOTLANDCOST= " & Val(grddatagrid.Columns(10).Text) & " where lotno=" & grddatagrid.Columns(3).Text & " and lotdt= '" & Format(grddatagrid.Columns(12).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & Trim(grddatagrid.Columns(13).Text) & "'")
'        MsgBox "Issued Lots Cannot be Adjusted", vbInformation, head
'        Db.RollbackTrans
'        Screen.MousePointer = 0
'        Call BUTTON_Click(10)
'        Exit Sub
'    End If
 adoSecondaryRS.MoveNext
 Loop
 
 DB.CommitTrans
 Opt = tmp
 MsgBox "Record(s) Saved", vbInformation, head
 Opt = " "
 Call QUERY_MODE
End If
If Opt = "del" Then

        DB.Execute ("delete from rm_ADJT where DOCNO =" & Trim(pr) & " AND DOCDT='" & Trim(Format(dr, "yyyy-mm-dd")) & "' AND ADJST='" & Str & "'")
        DB.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
        Opt = " "
        Call QUERY_MODE
End If



        
        Case 10
    desc.Caption = "Query"
     
     stbar.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11

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
    If Opt <> "qry" Then
        Opt = "qry"
    Call QUERY_MODE
    End If
    'calling cancl procedure from module
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
    Unload Me
    
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form Adjustment"
End Sub


Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error
If Opt = "add" Then
  If Combo1.Text = " " And MaskEdBox1.Text <> "__/__/____" Then
     MsgBox "Select any Type from the drop down list", vbInformation, head
     TXTFIELDS(1).Visible = False
     Combo1.Visible = True
     Combo1.SetFocus
     Exit Sub
  Else
     Combo1.Visible = False
     TXTFIELDS(1).Visible = True
     TXTFIELDS(1).Text = Combo1.Text
     Set Rs = New Recordset
     If TXTFIELDS(1).Text = "Adjustment (+)" Then
        Rs.Open "select isnull(max(docno),0) from rm_adjt where adjst='P' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs(0) = 0 Then
           TXTFIELDS(0).Text = Rs(0).value + 1
        Else
           TXTFIELDS(0).Text = Rs(0).value + 1
        End If
     Else
        Rs.Open "select isnull(max(docno),0) from rm_adjt where adjst='M' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs(0) = 0 Then
           TXTFIELDS(0).Text = Rs(0).value + 1
        Else
           TXTFIELDS(0).Text = Rs(0).value + 1
        End If
     End If
  End If
End If
If Opt = "add" Then
   grdDataGrid.Col = 3
   grdDataGrid.SetFocus
   Exit Sub
End If
Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Combo1_LostFocus of Form Adjustment"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Provider = "msdatashape"
DB.Open connectstring
desc.Caption = "query"
DATLAB.Caption = pdate
Opt = "qry"
stbar.Panels(1).Text = head
Call QUERY_MODE
DTPicker1.MinDate = yfdate
DTPicker1.MaxDate = pdate
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form Adjustment"
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error
    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
        'Call Command6_Click
    End If
Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_KeyDown of Form Adjustment"
End Sub
Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error
If Opt = " " Or Opt = "qry" Then
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "select DISTINCT docno,docdt,adjst,lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where 1=1 and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
   If adoPrimaryRS.RecordCount > 0 Then
      adoPrimaryRS.MoveFirst
      Set adoSecondaryRS = New Recordset
      adoSecondaryRS.Open "select distinct lotno ""Lot No"",baleno ""Bale No"",recwt""Rec. Weight"",adjwt""Adj. Weight"",netwt ""Net Weight"",recvalue ""Rec. Value"",adjvalue ""Adj. Value"",netvalue ""Net Value"",remarks ""Remarks"" from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
      Set grdDataGrid.DataSource = adoSecondaryRS
      grdDataGrid.Columns(5).Width = 1739.906
      grdDataGrid.Columns(4).Width = 1140.095
      grdDataGrid.Columns(3).Width = 1454.74
      grdDataGrid.Columns(2).Width = 1365.165
      grdDataGrid.Columns(1).Width = 730.0001
      grdDataGrid.Columns(0).Width = 680
      grdDataGrid.Columns(2).Alignment = dbgRight
      grdDataGrid.Columns(3).Alignment = dbgRight
      grdDataGrid.Columns(4).Alignment = dbgRight
      grdDataGrid.Columns(2).NumberFormat = "###.000"
      grdDataGrid.Columns(3).NumberFormat = "###.000"
      grdDataGrid.Columns(4).NumberFormat = "###.000"
      'Ravi
      grdDataGrid.Columns(1).Visible = False
      grdDataGrid.Columns(5).Alignment = dbgRight
      grdDataGrid.Columns(6).Alignment = dbgRight
      grdDataGrid.Columns(7).Alignment = dbgRight
      grdDataGrid.Columns(5).NumberFormat = "###.00"
      grdDataGrid.Columns(6).NumberFormat = "###.00"
      grdDataGrid.Columns(7).NumberFormat = "###.00"
      Call disablcontls
      Call bindcontls
      TXTFIELDS(1).Visible = True
      Combo1.Visible = False
      SSTab1.Enabled = True
      Call NEWFORM1(BUTTON, GSNO)
   Else
      Call Norecfound(BUTTON)
      MsgBox "No Records Found", vbInformation, head
      Set grdDataGrid.DataSource = Nothing
      Combo1.Text = " "
      TXTFIELDS(0).Text = ""
      TXTFIELDS(1).Text = ""
      MaskEdBox1.Text = "__/__/____"
   End If
End If
If Opt = "mod" Then
   Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "select DISTINCT docno,docdt,adjst,lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & Trim(pr) & " and docDT='" & Trim(Format(dr, "YYYY-MM-DD")) & "' AND ADJST='" & Str & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
   adoPrimaryRS.MoveFirst
   Set adoSecondaryRS = New Recordset
   adoSecondaryRS.Open "select docno,docdt,adjst, lotno ""Lot No"",baleno ""Bale No"",recwt""Rec. Weight"",adjwt""Adj. Weight"",netwt ""Net Weight"",recvalue ""Rec. Value"",adjvalue ""Adj. Value"",netvalue ""Net Value"",remarks ""Remarks"",lotdt,catcd,divcode from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
   Set grdDataGrid.DataSource = adoSecondaryRS
   BUTTON(9).Enabled = True
   BUTTON(10).Enabled = True
   grdDataGrid.Columns(0).Visible = False
   grdDataGrid.Columns(1).Visible = False
   grdDataGrid.Columns(2).Visible = False
   grdDataGrid.Columns(8).Width = 1739.906
        grdDataGrid.Columns(7).Width = 1140.095
        grdDataGrid.Columns(6).Width = 1454.74
        grdDataGrid.Columns(5).Width = 1365.165
        grdDataGrid.Columns(4).Width = 730.0001
        grdDataGrid.Columns(3).Width = 680
        grdDataGrid.Columns(5).Alignment = dbgRight
        grdDataGrid.Columns(6).Alignment = dbgRight
        grdDataGrid.Columns(7).Alignment = dbgRight
        grdDataGrid.Columns(8).Alignment = dbgRight
        grdDataGrid.Columns(9).Alignment = dbgRight
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(5).NumberFormat = "###.000"
        grdDataGrid.Columns(6).NumberFormat = "###.000"
        grdDataGrid.Columns(7).NumberFormat = "###.000"
        grdDataGrid.Columns(8).NumberFormat = "###.00"
        grdDataGrid.Columns(9).NumberFormat = "###.00"
        grdDataGrid.Columns(10).NumberFormat = "###.00"
        grdDataGrid.Columns(3).Locked = False
        grdDataGrid.Columns(4).Locked = False
        grdDataGrid.Columns(5).Locked = False
        grdDataGrid.Columns(7).Locked = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(11).Visible = True
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        grdDataGrid.Columns(14).Visible = False
        grdDataGrid.Columns(6).Locked = False
        grdDataGrid.Columns(7).Locked = True
        grdDataGrid.Columns(7).Locked = True
        grdDataGrid.Columns(8).Locked = True
        grdDataGrid.Columns(9).Locked = False
        grdDataGrid.Columns(10).Locked = True
        grdDataGrid.Columns(5).Locked = True
        grdDataGrid.EditActive = True
        grdDataGrid.AllowUpdate = True
        
  End If
  
  
  
  
  If Opt = "del" Then
  Set adoPrimaryRS = New Recordset
          'adoPrimaryRS.Open "SHAPE {select docno,docdt,adjst from rm_adjt}  AS Command3 APPEND ({select lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",remarks""Remarks"" from rm_adjt } ", db, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select DISTINCT docno,docdt,adjst,lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & Trim(pr) & " and docDT='" & Trim(Format(dr, "YYYY-MM-DD")) & "' AND ADJST='" & Str & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.MoveFirst
  Set adoSecondaryRS = New Recordset
        'ADOSECONDARYRS.Open "select lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", DB, adOpenStatic, adLockOptimistic
'              ADOSECONDARYRS.Open "select lotno ""Lot No"",baleno""Bale No"",recwt"" received Weight"",adjwt""Adjustment weight"",netwt""Net Weight"",adjvalue ""Value"",remarks""Remarks"" from rm_adjt where docno=" & adoprimaryrs("docno") & " and docdt='" & Format(adoprimaryrs("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoprimaryrs("adjst") & "'", DB, adOpenStatic, adLockOptimistic
        adoSecondaryRS.Open "select docno,docdt,adjst, lotno ""Lot No"",baleno ""Bale No"",recwt""Rec. Weight"",adjwt""Adj. Weight"",netwt ""Net Weight"",recvalue ""Rec. Value"",adjvalue ""Adj. Value"",netvalue ""Net Value"",remarks ""Remarks"",lotdt,catcd,divcode from rm_adjt where docno=" & adoPrimaryRS("docno") & " and docdt='" & Format(adoPrimaryRS("docdt"), "yyyy-mm-dd") & "' and adjst='" & adoPrimaryRS("adjst") & "' and DivCode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
        Set grdDataGrid.DataSource = adoSecondaryRS
        BUTTON(9).Enabled = True
        BUTTON(10).Enabled = True
        grdDataGrid.Columns(0).Visible = False
        grdDataGrid.Columns(1).Visible = False
        grdDataGrid.Columns(2).Visible = False
        grdDataGrid.Columns(8).Width = 1739.906
        grdDataGrid.Columns(7).Width = 1140.095
        grdDataGrid.Columns(6).Width = 1454.74
        grdDataGrid.Columns(5).Width = 1365.165
        grdDataGrid.Columns(4).Width = 730.0001
        grdDataGrid.Columns(3).Width = 680
        grdDataGrid.Columns(5).Alignment = dbgRight
        grdDataGrid.Columns(6).Alignment = dbgRight
        grdDataGrid.Columns(7).Alignment = dbgRight
        grdDataGrid.Columns(8).Alignment = dbgRight
        grdDataGrid.Columns(9).Alignment = dbgRight
        grdDataGrid.Columns(10).Alignment = dbgRight
        grdDataGrid.Columns(5).NumberFormat = "###.000"
        grdDataGrid.Columns(6).NumberFormat = "###.000"
        grdDataGrid.Columns(7).NumberFormat = "###.000"
        grdDataGrid.Columns(8).NumberFormat = "###.00"
        grdDataGrid.Columns(9).NumberFormat = "###.00"
        grdDataGrid.Columns(10).NumberFormat = "###.00"
        grdDataGrid.Columns(3).Locked = False
        grdDataGrid.Columns(4).Locked = False
        grdDataGrid.Columns(5).Locked = False
        grdDataGrid.Columns(7).Locked = False
        grdDataGrid.Columns(4).Visible = False
        grdDataGrid.Columns(11).Visible = True
        grdDataGrid.Columns(12).Visible = False
        grdDataGrid.Columns(13).Visible = False
        grdDataGrid.Columns(14).Visible = False
  End If
Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure QUERY_MODE of Form Adjustment"

End Sub
Public Sub bindcontls()
  Dim oText As TextBox
  'Binding  the text boxes to the data source
On Error GoTo bindcontls_Error
   For Each oText In Me.TXTFIELDS
   Set oText.DataSource = adoPrimaryRS
  Next
Exit Sub
bindcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure bindcontls of Form Adjustment"
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
On Error GoTo ENABLCONTLS_Error
For Each X In Me.TXTFIELDS
    X.Locked = False
Next
Frame2.Enabled = True
Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ENABLCONTLS of Form Adjustment"
End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error
For Each tb In Me.TXTFIELDS
    tb.Locked = True
Next
'Frame2.Enabled = False
Exit Sub
disablcontls_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure disablcontls of Form Adjustment"
End Sub
Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error
If Opt = "add" Or Opt = "mod" Then
Select Case grdDataGrid.Col
Case 3
 If Record_Exists("rm_bale") = False Then Exit Sub

        SSTab1.Visible = False
        Frame3.Visible = True
        Frame3.ZOrder
        Buttonframe.Enabled = False
        Label15.Caption = "Lot Number Listing"
        KslList1.conn = connectstring
        KslList1.Table = "rm_lot"
        KslList1.listfield1 = "CAST(lotno AS VARCHAR) +' - '+ catcd"
        KslList1.listfield2 = "convert(varchar,lotdt,103)"
        
    'Ravi KslList1.listfield2 = "CAST(lotdt AS VARCHAR)"
        
        KslList1.SetFocus
        stbar.Panels(2).Text = "Select Lot Number from the List"
Case 6
 'Set rs = New Recordset
 'rs.Open "select netwt from rm_bale where lotno=" & grdDataGrid.Columns(3).Text & " and baleno=" & grdDataGrid.Columns(4).Text & "", DB, adOpenStatic, adLockBatchOptimistic
 'grdDataGrid.Columns(5).Text = rs(0).Value
 
 'grdDataGrid.Col = 9
 'grdDataGrid.SetFocus

 
  End Select
End If
Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyDown of Form Adjustment"
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
Dim row1 As Integer
On Error GoTo GrdDatagrid_KeyPress_Error
Select Case grdDataGrid.Col
 
Case 6
tonum grdDataGrid, 8, KeyAscii
'Case 5

  Case 11
  ToAlphaNumber grdDataGrid, 50, KeyAscii
      If KeyAscii = 9 And grdDataGrid.Columns(8).Text <> "" And Opt = "add" Then
row1 = adoSecondaryRS.AbsolutePosition

grdDataGrid.AllowAddNew = True
grdDataGrid.Row = row1 + 1
grdDataGrid.Col = 0
grdDataGrid.SetFocus
End If
 
'If grddatagrid.Col = 4 Then
'      stbar.Panels(2).Text = "Enter maximum of 4 integers"
'    End If
'    If grddatagrid.Col = 6 Then
'      stbar.Panels(2).Text = "Enter maximum of 6 integers"
'    End If
'    If grddatagrid.Col = 7 Then
'      stbar.Panels(2).Text = "Enter maximum of 6 integers"
'    End If
 
End Select
Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Adjustment"
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
 If Opt = "add" Or Opt = "mod" Then
 If grdDataGrid.Row >= 0 Then
 If TXTFIELDS(1).Text = "Adjustment (-)" Then
    If val(grdDataGrid.Columns(6).Text) > val(grdDataGrid.Columns(5).Text) Then
            MsgBox "Adjustment Quantity Should be less than Received Quantity", vbInformation, head
            grdDataGrid.Columns(6).Text = 0
            grdDataGrid.Col = 6
            grdDataGrid.SetFocus
    End If
End If


If grdDataGrid.Col = 7 And grdDataGrid.Columns(6).Text = "" Then
MsgBox "Adjustment Quantity Cannot be Empty", vbInformation, head
'grddatagrid.Columns(6).Text = " "
grdDataGrid.Col = 6
grdDataGrid.SetFocus
End If
End If
  End If


 If Opt = "add" Or Opt = "mod" Then
Select Case grdDataGrid.Col
 Case 7
 If TXTFIELDS(1).Text = "Adjustment (+)" Then
 grdDataGrid.Columns(7).Text = val(grdDataGrid.Columns(5).Text) + val(grdDataGrid.Columns(6).Text)
 Else
 grdDataGrid.Columns(7).Text = val(grdDataGrid.Columns(5).Text) - val(grdDataGrid.Columns(6).Text)
 End If
 
 Case 10
 'Set rs = New Recordset
' If grdDataGrid.Columns(3).Text <> "" Then
 'rs.Open "select ratekg from rm_lot where lotno=" & Val(grdDataGrid.Columns(3).Text) & " ", DB, adOpenStatic, adLockBatchOptimistic
 'grdDataGrid.Columns(8).Text = rs(0).Value
 'grdDataGrid.Col = 9
 'grdDataGrid.SetFocus
 'End If
 If TXTFIELDS(1).Text = "Adjustment (+)" Then
    grdDataGrid.Columns(10).Text = val(grdDataGrid.Columns(8).Text) + val(grdDataGrid.Columns(9).Text)
 Else
    grdDataGrid.Columns(10).Text = val(grdDataGrid.Columns(8).Text) - val(grdDataGrid.Columns(9).Text)
 End If
        
 End Select
 End If


Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Adjustment"

End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error
If KslList1.listfield1 = "CAST(lotno AS VARCHAR) +' - '+ catcd" Then
    Frame3.Visible = False
    SSTab1.Visible = True
    Buttonframe.Enabled = True
    Exit Sub
End If
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True
Call BUTTON_Click(10)
Call QUERY_MODE
Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Lovcancel_Click of Form Adjustment"
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error
If Opt = "add" And MaskEdBox1 <> "__/__/____" Then
If Not (IsDate(MaskEdBox1.Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1.Text = pdate
        MaskEdBox1.SetFocus
    ElseIf CDate(MaskEdBox1.Text) > pdate Then
            MsgBox ("Document date should not be greater then processing date"), vbInformation, head
            MaskEdBox1.Text = "__/__/____"
            MaskEdBox1.SetFocus
            Exit Sub
    End If
    End If
Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_LostFocus of Form Adjustment"
End Sub

Private Sub MaskEdBox1_Validate(Cancel As Boolean)
On Error GoTo MaskEdBox1_Validate_Error
If Opt = "add" Then
If MaskEdBox1.Text = "__/__/____" Then
MsgBox "Document Date Cannot be empty", vbInformation, head
Cancel = True
MaskEdBox1.SetFocus
Else
Combo1.Visible = True
End If
End If
Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_Validate of Form Adjustment"
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo err
Select Case Index
Case 2
Set Rs = New Recordset
Rs.Open "select * from  fa_slmas where slcode='" & Trim(TXTFIELDS(2).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If (TXTFIELDS(2).Text <> "") Then
TXTFIELDS(2).Text = Rs(0)
TXTFIELDS(3).Text = Rs(1)
Else
        TXTFIELDS(2).Text = ""
        TXTFIELDS(3).Text = ""
End If
End Select
Exit Sub
err:
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error
SSTab1.Visible = True
    Frame3.Visible = False
    Buttonframe.Enabled = True
Select Case KslList1.listfield1
Case "CAST(lotno AS VARCHAR)", "CAST(lotno AS VARCHAR) +' - '+ catcd"
        grdDataGrid.Columns(3).Text = Mid$(KslList1.Code, 1, InStr(1, KslList1.Code, "-") - 1)
        grdDataGrid.Columns(12).Text = Format(KslList1.Description, "yyyy-mm-dd")
        grdDataGrid.Columns(13).Text = Right(KslList1.Code, 1)
        grdDataGrid.Columns(14).Text = Divcode
        Set Rs = New Recordset
        Rs.Open "Select isnull(sum(isnull(GRSWGT,0)),0),isnull(sum(isnull(TOTLANDCOST,0)),0) as netwt from rm_lot where lotno=" & val(grdDataGrid.Columns(3).Text) & " and lotdt= '" & Format(KslList1.Description, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and catcd='" & grdDataGrid.Columns(13).Text & "'", DB, adOpenStatic
        grdDataGrid.Columns(5).Text = Rs(0)
        grdDataGrid.Columns(8).Text = Rs(1)
        grdDataGrid.Columns(5).Locked = True
        grdDataGrid.Col = 6
        grdDataGrid.SetFocus
        
        
Case "cast(docno as varchar) + ':' +adjst"
pr = Mid(KslList1.Code, 1, InStr(KslList1.Code, ":") - 1)
Str = Mid(KslList1.Code, InStr(KslList1.Code, ":") + 1, Len(KslList1.Code))
dr = KslList1.Description
Call QUERY_MODE
End Select

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure lovok_Click of Form Adjustment"
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error
If Not (DTPicker1.value >= yfdate And DTPicker1.value <= pdate) Then
MsgBox "Document date should fall within the processing date", vbInformation, head
Exit Sub
Else
MaskEdBox1.Text = DTPicker1.value
End If
Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_CloseUp of Form Adjustment"
End Sub

Public Sub navi1(tol As Object)
On Error GoTo navi1_Error
    tol(0).Enabled = True 'ADD
    tol(1).Enabled = True 'MOD
    tol(2).Enabled = True 'DEL
    On Error Resume Next
    tol(3).Enabled = True 'LIST
    'tol(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
Exit Sub
navi1_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure navi1 of Form Adjustment"
End Sub
