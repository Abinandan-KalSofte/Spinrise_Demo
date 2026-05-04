VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frm_cottonplan 
   Caption         =   "Cotton Bales Requirement Plan"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   17
      Top             =   0
      Width           =   15210
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":0000
         Height          =   510
         Index           =   8
         Left            =   4215
         Picture         =   "frm_cottonplan.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":07AC
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "frm_cottonplan.frx":0AB6
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":0E32
         Height          =   510
         Index           =   9
         Left            =   4740
         Picture         =   "frm_cottonplan.frx":113C
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":14DE
         Height          =   510
         Index           =   11
         Left            =   5775
         Picture         =   "frm_cottonplan.frx":1928
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":1CBD
         Height          =   510
         Index           =   7
         Left            =   3676
         Picture         =   "frm_cottonplan.frx":2107
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1584
         Picture         =   "frm_cottonplan.frx":2457
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":27EE
         Enabled         =   0   'False
         Height          =   510
         Index           =   1
         Left            =   540
         Picture         =   "frm_cottonplan.frx":2AF8
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":2E72
         Enabled         =   0   'False
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
         Left            =   1061
         Picture         =   "frm_cottonplan.frx":317C
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":3518
         Height          =   510
         Index           =   5
         Left            =   2630
         Picture         =   "frm_cottonplan.frx":3962
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":3CC7
         Enabled         =   0   'False
         Height          =   510
         Index           =   0
         Left            =   15
         Picture         =   "frm_cottonplan.frx":3FD1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":4364
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "frm_cottonplan.frx":47AE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_cottonplan.frx":4AFB
         Height          =   510
         Index           =   4
         Left            =   2100
         Picture         =   "frm_cottonplan.frx":4E05
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find"
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
         Left            =   6675
         TabIndex        =   19
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
         Left            =   8085
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   20
      Top             =   2790
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   3704
            MinWidth        =   3704
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
            TextSave        =   "07/10/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:08"
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
      Height          =   1455
      Left            =   90
      TabIndex        =   21
      Top             =   1200
      Width           =   15105
      _ExtentX        =   26644
      _ExtentY        =   2566
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "frm_cottonplan.frx":519A
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1185
         Left            =   90
         TabIndex        =   22
         Top             =   90
         Width           =   14895
         Begin VB.Frame Frame3 
            Caption         =   "Planning Period"
            Height          =   600
            Left            =   120
            TabIndex        =   26
            Top             =   540
            Width           =   8595
            Begin VB.TextBox Text1 
               BackColor       =   &H80000000&
               DataField       =   "NOOFDAYS"
               Height          =   315
               Index           =   1
               Left            =   7005
               TabIndex        =   16
               Top             =   240
               Width           =   1425
            End
            Begin MSComCtl2.DTPicker DTPicker2 
               Height          =   315
               Left            =   1245
               TabIndex        =   14
               Top             =   240
               Width           =   1425
               _ExtentX        =   2514
               _ExtentY        =   556
               _Version        =   393216
               Format          =   68091905
               CurrentDate     =   40039
            End
            Begin MSComCtl2.DTPicker DTPicker3 
               Height          =   315
               Left            =   4080
               TabIndex        =   15
               Top             =   240
               Width           =   1425
               _ExtentX        =   2514
               _ExtentY        =   556
               _Version        =   393216
               Format          =   68091905
               CurrentDate     =   40039
            End
            Begin VB.Label Label3 
               AutoSize        =   -1  'True
               Caption         =   "No of Days"
               Height          =   195
               Left            =   5865
               TabIndex        =   29
               Top             =   300
               Width           =   795
            End
            Begin VB.Label Label2 
               AutoSize        =   -1  'True
               Caption         =   "To Date"
               Height          =   195
               Left            =   2970
               TabIndex        =   28
               Top             =   300
               Width           =   585
            End
            Begin VB.Label Label1 
               AutoSize        =   -1  'True
               Caption         =   "From Date"
               Height          =   195
               Left            =   90
               TabIndex        =   27
               Top             =   300
               Width           =   735
            End
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H80000000&
            DataField       =   "rno"
            Height          =   315
            Index           =   0
            Left            =   1260
            TabIndex        =   12
            Top             =   195
            Width           =   1425
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   3930
            TabIndex        =   13
            Top             =   195
            Width           =   1425
            _ExtentX        =   2514
            _ExtentY        =   556
            _Version        =   393216
            Format          =   68091905
            CurrentDate     =   40039
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Plan No"
            Height          =   195
            Left            =   120
            TabIndex        =   24
            Top             =   255
            Width           =   570
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   2820
            TabIndex        =   23
            Top             =   225
            Width           =   345
         End
      End
   End
   Begin MSDataGridLib.DataGrid grddatagrid 
      CausesValidation=   0   'False
      Height          =   4065
      Left            =   135
      TabIndex        =   30
      Top             =   2700
      Width           =   8550
      _ExtentX        =   15081
      _ExtentY        =   7170
      _Version        =   393216
      AllowUpdate     =   -1  'True
      AllowArrows     =   -1  'True
      ForeColor       =   0
      HeadLines       =   2
      RowHeight       =   15
      TabAction       =   2
      AllowAddNew     =   -1  'True
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Cotton Bales Requirement Plan"
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
      Left            =   60
      TabIndex        =   25
      Top             =   735
      Width           =   4050
   End
End
Attribute VB_Name = "frm_cottonplan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rep As Report.ReportView
Dim a, Pg, C As Integer
Dim Opt As String
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim Rsrno As Recordset
Dim Rs As Recordset
Dim rsHead As Recordset
Dim rstail As Recordset
Dim depcode As String
Dim YEARMON As String
Dim z As Integer
Dim spindlecode(3) As String
Dim Cn As New Connection
Private Enum Gridcall
    GSLNO = 0
    GCNTCODE
    GCNTDESC
    GVARCODE1
    GPER1
    GVARCODE2
    GPER2
    GVARCODE3
    GPER3
    GYR
    GSPINDLE1
    GSPINDLE2
    GSPINDLE3
    GSPINDLE4
    GGPS
    GPRDKGS
    GBALEPERDSAY
    GTOTBALES
End Enum

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Mix Group"
End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
If Not (Opt = "add" Or Opt = "del" Or Opt = "mod" Or Opt = "find") Then
    If Not (adoPrimaryRS.BOF And adoPrimaryRS.EOF) And adoPrimaryRS.RecordCount > 0 Then
        Call BINDCNTLS
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "SELECT a.SNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPINDLE1,A.SPINDLE2,A.SPINDLE3,A.SPINDLE4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A,IG_PRODUCT C WHERE A.DIVCODE=C.DIVCODE AND A.CNTCODE=C.PRODUCT_CODE AND A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.SLNO)", DB, adOpenStatic
        Set grddatagrid.DataSource = adoSecondaryRS
        Call GRIDALIGN
    End If
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form frm_cottonplan"

End Sub

Function chk_db_trans(CON As Variant) As Integer
On Error GoTo Err
    CON.CommitTrans
Err:
If Err.Number = -2147168242 Then
    chk_db_trans = 1
End If
End Function

Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error

'On Error GoTo Tellme
Select Case Index
Case 0
     'add
    Opt = "add"
    desc.Caption = "Addition"
    Call adddelmod(BUTTON)
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select * from RM_COTTONPLAN where divcode ='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "SELECT a.SNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPVAL1,A.SPVAL2,A.SPVAL3,A.SPVAL4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A, IG_PRODUCT C where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = adoSecondaryRS
   
    adoSecondaryRS.AddNew
    Call clear
    Call ENABLECNTLS
    Call GRIDALIGN
        DTPicker1.value = pdate
        DTPicker1.SetFocus
     
Case 1, 2, 4 'mod
        SqlStr = ""
        SqlStr = SqlStr & Chr(13) & "Select DISTINCT PLANNO,Pdate as Date from RM_COTTONPLAN a"
        SqlStr = SqlStr & Chr(13) & "where Rdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and a.divcode ='" & Divcode & "'"
        Lookup.Query = SqlStr
        Lookup.ALIGN = "2000,2000"
        Lookup.Caption = "Record Listing"
        Lookup.Show vbModal
        If Lookup.Cancel = False Then
            If Index = 1 Then
                Opt = "mod"
                desc.Caption = "Modification"
                stbar.Panels(2).Text = "Select a Date for Modification"
            ElseIf Index = 2 Then
                Opt = "del"
                desc.Caption = "Deletion"
                stbar.Panels(2).Text = "Select a Date for Deletion"
            ElseIf Index = 4 Then
                Opt = "fnd"
                desc.Caption = "Find"
                stbar.Panels(2).Text = "Select a Date for Find"
            End If
            If Opt <> "fnd" Then
                Call adddelmod(BUTTON)
            End If

            DTPicker1.value = Lookup.Fields(1)
            Text1(0).Text = Lookup.Fields(0)
            If Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
              Set adoPrimaryRS = New Recordset
              adoPrimaryRS.Open "select DISTINCT DIVCODE,PLANNO,PDATE,FDATE,TODATE,NOOFDAYS from RM_COTTONPLAN where divcode ='" & Divcode & "' and PLANNO='" & Lookup.Fields(0) & "' AND Pdate='" & Format(Lookup.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            End If
            If adoPrimaryRS.RecordCount = 0 Then
                MsgBox "No Records Found", vbInformation, head
                Screen.MousePointer = 0
                Call QUERY_MODE
                Exit Sub
            End If
            Call BINDCNTLS
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "SELECT a.SLNO,a.CNTCODE,C.DESCRIPTION,A.VARCODE1,A.PER1,A.VARCODE2,A.PER2,A.VARCODE3,A.PER3,A.YR,A.SPINDLE1,A.SPINDLE2,A.SPINDLE3,A.SPINDLE4,A.GPS,A.PRDKGS,A.BALE,A.TOTBALE FROM RM_COTTONPLAN A INNER JOIN IG_PRODUCT C WHERE A.DIVCODE=C.DIVCODE AND A.CNTCODE=C.PRODUCT_CODE AND A.DIVCODE='" & Divcode & "' AND A.PLANNO='" & adoPrimaryRS("PLANNO") & "' AND PDATE ='" & Format(adoPrimaryRS("PDATE"), "YYYY-MM-DD") & "' order by A.SLNO)", DB, adOpenStatic
            If adoSecondaryRS.RecordCount > 0 Then
                Set grddatagrid.DataSource = adoSecondaryRS
                Call GRIDALIGN
                Call ENABLECNTLS
                grddatagrid.SetFocus
            End If
            
            If Opt = "find" Then
              BUTTON(9).Enabled = False
              BUTTON(10).SetFocus
              stbar.Panels(2).Text = "Press Cancel Button"
            End If
            stbar.Panels(2).Text = "Press Save Button"
            grddatagrid.Enabled = True
            grddatagrid.AllowUpdate = True
            grddatagrid.EditActive = True
            Lookup.clear = True
        Else
            Opt = "qry"
            Call QUERY_MODE
            BUTTON(0).SetFocus
        End If
        
Case 3
        'list
        Exit Sub

Case 5 'first
    desc.Caption = "Query"
    adoPrimaryRS.MoveFirst
    Call FIR(BUTTON)
    stbar.Panels(2).Text = "First Record"
    Exit Sub
Case 6
   'next
   desc.Caption = "Query"
   If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
    adoPrimaryRS.MoveLast
   Else
    adoPrimaryRS.MoveNext
    BUTTON(5).Enabled = True
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
   End If
   'show the current record
   stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
   Exit Sub
   
Case 7
   'previous
   desc.Caption = "Query"
   If Not adoPrimaryRS.AbsolutePosition = 1 Then
        adoPrimaryRS.MovePrevious
     
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
   End If
   If adoPrimaryRS.AbsolutePosition = 1 Then
        'moved off the end so go back
         BUTTON(5).Enabled = False
         BUTTON(7).Enabled = False
         BUTTON(6).Enabled = True
         BUTTON(8).Enabled = True
         adoPrimaryRS.MoveFirst
   End If
   'show the current record
   stbar.Panels(2).Text = "Record : " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
   Exit Sub

  Case 8
    'last
    desc.Caption = "Query"
    adoPrimaryRS.MoveLast
    stbar.Panels(2).Text = "Last Record"
    'calling las procedure from module
    Call las(BUTTON)
    Exit Sub

Case 9  'save
    If Opt = "add" Or Opt = "mod" Then
        adoSecondaryRS.MoveFirst
        If Opt = "mod" Then
            DB.BeginTrans
            DB.Execute "DELETE FROM RM_COTTONPLAN WHERE divcode ='" & Divcode & "' AND PLANNO=" & Text1(0).Text & " and PDATE='" & Format(DTPicker1.value, "YYYY-MM-DD") & "'"
            DB.CommitTrans
        End If
        tmp = Opt
        Opt = ""
        DB.BeginTrans
        Set rsHead = New Recordset
        rsHead.Open "select * from RM_COTTONPLAN where divcode ='" & Divcode & "' and 1=2", DB, adOpenStatic, adLockBatchOptimistic
        
        If adoSecondaryRS.RecordCount > 0 Then
            adoSecondaryRS.MoveFirst
        End If
        Opt = tmp
        If Opt = "add" Then
            Set Rsrno = New Recordset
            Rsrno.Open "select (isnull(max(PLANno),0)+1) PLANno from RM_COTTONPLAN where divcode ='" & Divcode & "' and unitcode ='" & unitcode & "' ", DB, adOpenStatic, adLockReadOnly
            If Rsrno.RecordCount > 0 Then Text1(0).Text = Rsrno!planno
        End If
        tmp = Opt
        Opt = ""
        Sno = 1
        Do While Not adoSecondaryRS.EOF
            rsHead.AddNew
            rsHead!Divcode = Divcode
            rsHead!planno = Text1(0).Text
            rsHead!pdate = Format(DTPicker1.value, "yyyy-mm-dd")
            rsHead!fdate = Format(DTPicker2.value, "yyyy-mm-dd")
            rsHead!tdate = Format(DTPicker3.value, "yyyy-mm-dd")
            rsHead!noofdays = val(Text1(1).Text)
            rsHead!slno = Sno
            rsHead!cntcode = IIf(IsNull(grddatagrid.Columns(GCNTCODE).Text), "", grddatagrid.Columns(GCNTCODE).Text)
            rsHead!varcode1 = IIf(IsNull(grddatagrid.Columns(GVARCODE1).Text), "", grddatagrid.Columns(GVARCODE1).Text)
            rsHead!varcode2 = IIf(IsNull(grddatagrid.Columns(GVARCODE2).Text), "", grddatagrid.Columns(GVARCODE2).Text)
            rsHead!varcode3 = IIf(IsNull(grddatagrid.Columns(GVARCODE3).Text), "", grddatagrid.Columns(GVARCODE3).Text)
            rsHead!per1 = IIf(IsNull(grddatagrid.Columns(GPER1).Text), "", grddatagrid.Columns(GPER1).Text)
            rsHead!per2 = IIf(IsNull(grddatagrid.Columns(GPER2).Text), "", grddatagrid.Columns(GPER2).Text)
            rsHead!per3 = IIf(IsNull(grddatagrid.Columns(GPER3).Text), "", grddatagrid.Columns(GPER3).Text)
            rsHead!yr = IIf(IsNull(grddatagrid.Columns(GYR).Text), "", grddatagrid.Columns(GYR).Text)
            rsHead!spindle1 = IIf(IsNull(grddatagrid.Columns(GSPINDLE1).Text), "", grddatagrid.Columns(GSPINDLE1).Text)
            rsHead!spindle2 = IIf(IsNull(grddatagrid.Columns(GSPINDLE2).Text), "", grddatagrid.Columns(GSPINDLE2).Text)
            rsHead!spindle3 = IIf(IsNull(grddatagrid.Columns(GSPINDLE3).Text), "", grddatagrid.Columns(GSPINDLE3).Text)
            rsHead!spindle4 = IIf(IsNull(grddatagrid.Columns(GSPINDLE4).Text), "", grddatagrid.Columns(GSPINDLE4).Text)
            rsHead!gps = IIf(IsNull(grddatagrid.Columns(GGPS).Text), "", grddatagrid.Columns(GGPS).Text)
            rsHead!prdkgs = IIf(IsNull(grddatagrid.Columns(GPRDKGS).Text), "", grddatagrid.Columns(GPRDKGS).Text)
            rsHead!bales = IIf(IsNull(grddatagrid.Columns(GBALEPERDSAY).Text), "", grddatagrid.Columns(GBALEPERDSAY).Text)
            rsHead!TOTBALES = IIf(IsNull(grddatagrid.Columns(GTOTBALES).Text), "", grddatagrid.Columns(GTOTBALES).Text)
            Sno = Sno + 1
            adoSecondaryRS.MoveNext
        Loop
        rsHead.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        Opt = tmp
        If Opt = "add" Then
            MsgBox "Record Saved Successfully", vbInformation, head
        ElseIf Opt = "mod" Then
            MsgBox "Record Modified Successfully", vbInformation, head
        End If
        Opt = ""
    End If
    
    If Opt = "del" Then
        DB.BeginTrans
        DB.Execute "DELETE FROM rm_cottonplan WHERE divcode ='" & Divcode & "' AND planNO=" & Text1(0).Text & " and pDATE='" & Format(DTPicker1.value, "YYYY-MM-DD") & "'"
        DB.CommitTrans
        Call clear
        MsgBox "Record Deleted Successfully", vbInformation, head
    End If
        Opt = "qry"
        Call QUERY_MODE
        Call DISABLECNTLS
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    
Case 10 'cancel
    desc.Caption = "Query"
    Opt = "qry"
    Call QUERY_MODE
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    
Case 11 'exit
    Unload Me
    Exit Sub
    
End Select
Screen.MousePointer = 0

''Tellme:
'''MsgBox err.Description
''    If Err.Number Then
''        Select Case Opt
''            Case "add"
'''                db.RollbackTrans
''            Case "mod"
''                'DB.RollbackTrans
''                'Call BUTTON_Click(9)
''                'Exit Sub
''            Case "del"
''                'db.RollbackTrans
''        End Select
''        Opt = "qry"
''        stbar.Panels(2).Text = Err.Description
''        Screen.MousePointer = 0
''        Call QUERY_MODE
''    End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frm_cottonplan"

End Sub



Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form frm_cottonplan"
End Sub

Private Sub DTPicker3_Change()
On Error GoTo DTPicker3_Change_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker3_Change of Form frm_cottonplan"
End Sub

Private Sub DTPicker3_LostFocus()
On Error GoTo DTPicker3_LostFocus_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If
    If Opt <> "qry" And Opt <> "" Then
        grddatagrid.Col = GCNTCODE
        grddatagrid.SetFocus
        Exit Sub
    End If
Exit Sub
DTPicker3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker3_LostFocus of Form frm_cottonplan"
End Sub

Private Sub DTPicker2_LostFocus()
On Error GoTo DTPicker2_LostFocus_Error

    If Opt = "add" Then
        Text1(1).Text = DateDiff("d", DTPicker2.value, DTPicker3.value) + 1
    End If

Exit Sub
DTPicker2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_LostFocus of Form frm_cottonplan"
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next

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
End If

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    LSNo = GSNO
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
    BUTTON(10).ToolTipText = "Cancel (Ctrl Backspace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"

    stbar.Panels(1).Text = sbmsg
    Opt = "qry"
    desc.Caption = "Query"
    DATLAB.Caption = pdate   'This variable is declared as global to show the date
'    grddatagrid.ScrollBars = dbgBoth
    DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    DTPicker2.value = Format(mfdate, "dd/mm/yyyy")
    DTPicker3.value = Format(pdate, "dd/mm/yyyy")
'    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frm_cottonplan"
End Sub

Public Sub QUERY_MODE()
On Error GoTo SHOWME
desc.Caption = "Query"
    If Opt = "qry" Then
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select DISTINCT DIVCODE,planNO,pDATE,fdate,tdate,noofdays from rm_cottonplan where divcode ='" & Divcode & "' order by planno", DB, adOpenStatic, adLockOptimistic
       If adoPrimaryRS.RecordCount = 0 Then
            stbar.Panels(2).Text = "No Records Found"
            Set grddatagrid.DataSource = Nothing
            Call NEWFORM1(BUTTON, GSNO)
            Call clear
            Call DISABLECNTLS
            SSTab1.Enabled = True
       Else
           adoPrimaryRS.MoveLast
           Call BINDCNTLS
           Call NEWFORM1(BUTTON, GSNO)
           Call DISABLECNTLS
           stbar.Panels(2).Text = "Record " & adoPrimaryRS.AbsolutePosition & "/" & adoPrimaryRS.RecordCount
       End If
    End If
SHOWME:
    If Err.Number Then
        MsgBox Err.Description, vbCritical, head
        Screen.MousePointer = 0
    End If
End Sub

Public Sub DISABLECNTLS()
On Error GoTo DISABLECNTLS_Error

    Frame1.Enabled = False
'    Frame2.Enabled = False
    grddatagrid.Enabled = False
    Frame3.Enabled = False
    grddatagrid.AllowUpdate = False

Exit Sub
DISABLECNTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DISABLECNTLS of Form frm_cottonplan"
End Sub

Public Sub ENABLECNTLS()
On Error GoTo ENABLECNTLS_Error

    Frame1.Enabled = True
'    Frame2.Enabled = True
    grddatagrid.Enabled = True
'    'grddatagrid.AllowUpdate = True
    If Opt = "add" Then
        DTPicker1.Enabled = True
        Frame3.Enabled = True
    Else
        DTPicker1.Enabled = False
        Frame3.Enabled = False
    End If

Exit Sub
ENABLECNTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLECNTLS of Form frm_cottonplan"
End Sub

Public Sub clear()
On Error GoTo clear_Error

    Text1(0).Text = ""
    Text1(1).Text = ""

Exit Sub
clear_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CLEAR of Form frm_cottonplan"
End Sub

Public Sub BINDCNTLS()
Dim txt As TextBox
On Error Resume Next

DTPicker1.value = Format(adoPrimaryRS("PDATE"), "dd/mm/yyyy")
DTPicker2.value = Format(adoPrimaryRS("FDATE"), "dd/mm/yyyy")
DTPicker3.value = Format(adoPrimaryRS("TDATE"), "dd/mm/yyyy")
For Each txt In Me.Text1
    Set txt.DataSource = adoPrimaryRS
Next

End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grdDataGrid_AfterColEdit_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case ColIndex
        Case GSPINDLE4
            adoSecondaryRS.AddNew
            grddatagrid.Col = GCNTCODE
            grddatagrid.SetFocus
            Exit Sub
    End Select
End If

Exit Sub
grdDataGrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColEdit of Form frm_cottonplan"
End Sub

Private Sub grddatagrid_DblClick()
On Error GoTo grddatagrid_DblClick_Error

'If Opt = "add" Or Opt = "mod" Then
'    If msg = (MsgBox("Do you want to delete the item?", vbYesNo, head) = vbYes) Then
'        adoSecondaryRS.Delete
'    End If
'End If

Exit Sub
grddatagrid_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_DblClick of Form ac_splice_strength", vbInformation, head
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next

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
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
'    If BUTTON(13).Enabled = True Then
'        Call BUTTON_Click(13)   ''Crystal Report
'    End If
End If
End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)

On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case grddatagrid.Col
    Case GPER1, GPER2, GPER3, GYR
        Call ToNumberAssign(grddatagrid, 2, KeyAscii, 2, 2)
    Case GSPINDLE1, GSPINDLE2, GSPINDLE3, GSPINDLE4
        Call ToNumberAssign(grddatagrid, 4, KeyAscii, 4, 0)

    End Select
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyPress of Form frm_cottonplan"
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error

    If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Row <> -1 Then
            Select Case LastCol
                Case GCNTCODE
                    If Record_Exists("ig_product WHERE divcode='" & Divcode & "'", "No Record Found") = True Then
                    Set Rs = New Recordset
                    Rs.Open "SELECT product_code,description FROM ig_product WHERE divcode='" & Divcode & "' and product_code='" & grddatagrid.Columns(GCNTCODE) & "'", DB, adOpenStatic
                    If Rs.RecordCount = 0 Then
                        Lookup.clear = True
                        Lookup.Query = "SELECT product_code""Count Code"",Description FROM ig_product WHERE divcode='" & Divcode & "'"
                        Lookup.ALIGN = "1500,5000"
                        Lookup.Caption = "Count Listing"
                        Lookup.Show vbModal
                        If Lookup.Cancel = False Then
                            grddatagrid.Columns(GCNTCODE).Text = Lookup.Fields(0)
                            grddatagrid.Columns(GCNTDESC).Text = Lookup.Fields(1)
                            Lookup.clear = True
                            Exit Sub
                        Else
                            Call BUTTON_Click(10)
                            Exit Sub
                        End If
                    Else
                        grddatagrid.Columns(GCNTCODE).Text = Rs(0)
                        grddatagrid.Columns(GCNTDESC).Text = Rs(1)
                    End If
                Else
                    Opt = "qry"
                    Call QUERY_MODE
                    BUTTON(0).SetFocus
                    Exit Sub
                End If
                
                If grddatagrid.Columns(GCNTCODE).Text <> "" Then
                    Set Rs = New Recordset
                    Rs.Open "select isnull(targetgps,0) as targetgps from scount where divcode='" & Divcode & "' and cntcode='" & grddatagrid.Columns(GCNTCODE).Text & "'", DB, adOpenStatic
                    If Rs.RecordCount > 0 Then
                        grddatagrid.Columns(GGPS).Text = Rs(0)
                    End If
                End If
            End Select
        End If
    End If

Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_RowColChange of Form frm_cottonplan"
End Sub



Private Sub GRIDALIGN()
On Error Resume Next
    grddatagrid.Columns(GSLNO).Visible = False
    grddatagrid.Columns(GCNTCODE).Caption = "Count"
    grddatagrid.Columns(GCNTDESC).Caption = "Description"
    grddatagrid.Columns(GVARCODE1).Caption = "Variety"
    grddatagrid.Columns(GVARCODE2).Caption = "Variety"
    grddatagrid.Columns(GVARCODE3).Caption = "Variety"
    grddatagrid.Columns(GPER1).Caption = "   %"
    grddatagrid.Columns(GPER2).Caption = "   %"
    grddatagrid.Columns(GPER3).Caption = "   %"
    grddatagrid.Columns(GYR).Caption = "Expected YR"
    grddatagrid.Columns(GGPS).Caption = "Gms/Spl"
    grddatagrid.Columns(GPRDKGS).Caption = "Prodn/Day in Kgs."
    grddatagrid.Columns(GBALEPERDSAY).Caption = "Bales Req./Day"
    grddatagrid.Columns(GTOTBALES).Caption = "Total No of Bales Req."
    
    grddatagrid.Columns(GCNTDESC).Width = 800
    grddatagrid.Columns(GCNTDESC).Width = 2500
    grddatagrid.Columns(GVARCODE1).Width = 800
    grddatagrid.Columns(GVARCODE2).Width = 800
    grddatagrid.Columns(GVARCODE3).Width = 800
    grddatagrid.Columns(GPER1).Width = 800
    grddatagrid.Columns(GPER2).Width = 800
    grddatagrid.Columns(GPER3).Width = 800
    grddatagrid.Columns(GYR).Width = 1000
    grddatagrid.Columns(GGPS).Width = 1000
    grddatagrid.Columns(GPRDKGS).Width = 1000
    grddatagrid.Columns(GBALEPERDSAY).Width = 1200
    grddatagrid.Columns(GTOTBALES).Width = 1200
    
'    grddatagrid.Columns(GCNTDESC).Locked = True
    grddatagrid.Columns(GGPS).Locked = True
    grddatagrid.Columns(GPRDKGS).Locked = True
    grddatagrid.Columns(GBALEPERDSAY).Locked = True
    grddatagrid.Columns(GTOTBALES).Locked = True
    
    grddatagrid.Columns(GPER1).Alignment = dbgRight
    grddatagrid.Columns(GPER2).Alignment = dbgRight
    grddatagrid.Columns(GPER3).Alignment = dbgRight
    grddatagrid.Columns(GYR).Alignment = dbgRight
    grddatagrid.Columns(GGPS).Alignment = dbgRight
    grddatagrid.Columns(GPRDKGS).Alignment = dbgRight
    grddatagrid.Columns(GBALEPERDSAY).Alignment = dbgRight
    grddatagrid.Columns(GTOTBALES).Alignment = dbgRight
    
    
    Set parars = New Recordset
    parars.Open "select isnull(spindle1,0) as spindle1,isnull(spindle2,0) as spindle2,isnull(spindle3,0) as spindle3,isnull(spindle4,0) as spindle4 from rm_param", DB, adOpenStatic
    If parars.RecordCount > 0 Then
        grddatagrid.Columns(GSPINDLE1).Caption = parars("spindle1")
        grddatagrid.Columns(GSPINDLE2).Caption = parars("spindle2")
        grddatagrid.Columns(GSPINDLE3).Caption = parars("spindle3")
        grddatagrid.Columns(GSPINDLE4).Caption = parars("spindle4")
        spindlecode(0) = parars("spindle1")
        spindlecode(1) = parars("spindle2")
        spindlecode(2) = parars("spindle3")
        spindlecode(3) = parars("spindle4")
    End If
End Sub






