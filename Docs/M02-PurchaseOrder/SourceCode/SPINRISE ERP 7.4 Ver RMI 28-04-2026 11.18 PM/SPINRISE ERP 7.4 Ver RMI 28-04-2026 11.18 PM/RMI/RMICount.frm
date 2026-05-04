VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmCount 
   Caption         =   "Mixing Count"
   ClientHeight    =   8340
   ClientLeft      =   60
   ClientTop       =   1650
   ClientWidth     =   11250
   DrawWidth       =   2
   ForeColor       =   &H00800000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8340
   ScaleWidth      =   11250
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FraOrd 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6795
      Left            =   2400
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   25
      ToolTipText     =   "Select an item from list"
      Top             =   1200
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CheckBox Check1 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
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
         Left            =   240
         TabIndex        =   29
         Top             =   6480
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.CommandButton CmdOrderOk 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   3060
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   6300
         Width           =   1035
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4260
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   6300
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   1200
         TabIndex        =   26
         Top             =   520
         Width           =   7305
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   30
         Top             =   855
         Width           =   8535
         _Version        =   524288
         _ExtentX        =   15055
         _ExtentY        =   9578
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "RMICount.frx":0000
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Variety List"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   60
         TabIndex        =   32
         Top             =   45
         Width           =   8505
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Find Variety"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   120
         TabIndex        =   31
         Top             =   600
         Width           =   1020
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   4920
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   13
      Left            =   5760
      Picture         =   "RMICount.frx":042A
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   585
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   18
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":086C
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMICount.frx":0B76
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":0F0B
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMICount.frx":1355
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":16A2
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMICount.frx":19AC
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":1D3F
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMICount.frx":2189
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":24EE
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
         Picture         =   "RMICount.frx":27F8
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":2B94
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMICount.frx":2E9E
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
         Picture         =   "RMICount.frx":3218
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":35AF
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMICount.frx":39F9
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":3D49
         Height          =   510
         Index           =   11
         Left            =   6375
         Picture         =   "RMICount.frx":4193
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":4528
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMICount.frx":4832
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":4BD4
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMICount.frx":4EDE
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMICount.frx":525A
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMICount.frx":56A4
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
         TabIndex        =   20
         Top             =   255
         Width           =   750
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
         TabIndex        =   19
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   8040
      Width           =   11250
      _ExtentX        =   19844
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
            TextSave        =   "03/03/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "07:39 PM"
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
      Left            =   900
      TabIndex        =   11
      Top             =   1305
      Width           =   10020
      _ExtentX        =   17674
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "RMICount.frx":5A06
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4065
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   9750
         _ExtentX        =   17198
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
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
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   420
      TabIndex        =   13
      Top             =   1260
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMICount.frx":5A22
         Height          =   615
         Left            =   5220
         Picture         =   "RMICount.frx":5E04
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMICount.frx":61D7
         Height          =   615
         Left            =   3480
         Picture         =   "RMICount.frx":65BD
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   17
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
         TabIndex        =   16
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Mixing Count"
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
      Left            =   930
      TabIndex        =   14
      Top             =   915
      Width           =   1785
   End
End
Attribute VB_Name = "FrmCount"
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
Dim MIxDocNo As String
Private Enum E_SIZELISTDC1
    SPDSCHECK1 = 1
    SPDSSNO
    SPDSBCAT
    SPDSBCATDesc
    SPDSBVARCODE
    SPDSBVARNAME
End Enum

Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Count"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        'addition
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
           
            If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
            End If
        End If
        
        Opt = "add"
        desc.Caption = "Addition"
        st = "B"
        st1 = "B"
        grdDataGrid.Enabled = True
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.CNTCD ""Code"" ,a.CNTNAME ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",catcd""Category"",a.Map_CntCd 'Map_Count',a.Active from rm_COUNT a,rm_mixgrp b where 1=2 order by a.CNTCD", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = adoPrimaryRS
        grdDataGrid.Columns(0).Width = 569.7638
        grdDataGrid.Columns(1).Width = 3119.811
        grdDataGrid.Columns(2).Width = 1514.929
        grdDataGrid.Columns(3).Width = 2250.142
        grdDataGrid.Columns(4).Width = 1514
        grdDataGrid.Columns(6).Width = 1000
        DB.BeginTrans
        grdDataGrid.AllowAddNew = True
        grdDataGrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        grdDataGrid.Columns(6) = "Y"
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        'BUTTON(9).Enabled = False
        'BUTTON(9).ToolTipText = "Add Record"
        'BUTTON(4).Enabled = True
        grdDataGrid.ScrollBars = dbgBoth
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        
        If UCase(CustID) = UCase("Kumaragir") Then
            FraOrd.ZOrder
            FraOrd.Visible = True
            Buttonframe.Enabled = False
            StatusBar1.Panels(2).Text = "Select an Variety from the list"
            Call SETSIZEORDHead
            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset

            ItmRs.Open " select * from VW_RM_VarietyList a ", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("catcd")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("catname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARNAME, RW, ItmRs("varname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARCODE, RW, ItmRs("varcode")

                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdSIZEORD.SetFocus
          
            Buttonframe.Enabled = True
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Columns(0).Width = 1300
        
        End If
Case 1, 4
        'modification
        If Index = 1 Then
        
            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'                If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'                    MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran", vbInformation, head
'                    Exit Sub
'                End If
                 If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
                End If
            End If
        End If
        
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_count", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
'''        SSTab1.Visible = False
'''        grddatagrid.Visible = False
'''        Frame3.Visible = True
'''        Label15.Caption = "Mixing Count List"
'''        KSLLIST1.conn = connectstring
'''        KSLLIST1.table = "rm_count"
'''        KSLLIST1.listfield1 = "cntcd"
'''        KSLLIST1.listfield2 = "cntname"
'''        Frame3.Visible = True
'''        Frame3.ZOrder
            LookUp.Clear = True
            LookUp.query = "select cntcd""Mix Count Code"",cntname""Mix Count Name"",catcd""Category"" from rm_count where divcode='" & Divcode & "'"
            LookUp.DefCol = "Mix Count Name"
            LookUp.ALIGN = "2000,3000,1000"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grdDataGrid.Enabled = True
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",catcd""Category"",a.Map_CntCd 'Map_Count',a.Active from rm_count a left join rm_mixgrp b on a.mixgrpcd = b.mixgrpcd  and a.divcode=b.divcode where a.cntcd = '" & LookUp.Fields(0) & "' and a.DivCode = '" & Divcode & "'  order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                Set grdDataGrid.DataSource = adoPrimaryRS
                grdDataGrid.Columns(0).Width = 569.7638
                grdDataGrid.Columns(1).Width = 3119.811
                grdDataGrid.Columns(2).Width = 1514.929
                grdDataGrid.Columns(3).Width = 2250.142
                grdDataGrid.Columns(4).Width = 1514
                grdDataGrid.Columns(6).Width = 1000
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.AllowAddNew = False
                BUTTON(9).Enabled = True 'Save
                If Opt = "del" Then
                    BUTTON(9).SetFocus
                End If
                Frame3.Visible = False
                BUTTON(4).Enabled = True
                grdDataGrid.AllowUpdate = True
                'calling addmoddel procedure from module
                Call adddelmod(BUTTON)
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(3).Locked = True
                BUTTON(9).ToolTipText = "Modify"
                If Opt = "fnd" Then
                    BUTTON(9).Enabled = False
                End If
                grdDataGrid.Col = 1
                grdDataGrid.Row = 0
                grdDataGrid.SetFocus
                Screen.MousePointer = 0
            Else
                DB.CommitTrans
            End If
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 2

            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
               If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
                End If
            
            End If
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_count", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
'        SSTab1.Visible = False
'        grddatagrid.Visible = False
'        Label15.Caption = "Mixing Count List"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_count"
'        KslList1.listfield1 = "cntcd"
'        KslList1.listfield2 = "cntname"
'        grddatagrid.AllowUpdate = False
'        Frame3.Visible = True
'        Command3.SetFocus
'        Frame3.ZOrder

            LookUp.Clear = True
            LookUp.query = "select cntcd""Mix Count Code"",cntname""Mix Count Name"",catcd ""Category"" from rm_count"
            LookUp.DefCol = "Mix Count Name"
            LookUp.ALIGN = "2000,3000,1000"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grdDataGrid.Enabled = True
                StatusBar1.Panels(2).Text = ""
                Set adoPrimaryRS = New Recordset
               ' adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",catcd""Category"" from rm_count a,rm_mixgrp b  where a.mixgrpcd = b.mixgrpcd and a.cntcd = '" & LookUp.Fields(0) & "' and b.DivCode = '" & Divcode & "' order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
               adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",catcd""Category"",a.Map_CntCd 'Map_Count' from rm_count a left join rm_mixgrp b on a.mixgrpcd = b.mixgrpcd  and a.divcode=b.divcode where a.cntcd = '" & LookUp.Fields(0) & "' and a.DivCode = '" & Divcode & "'  order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
                Set grdDataGrid.DataSource = adoPrimaryRS
                grdDataGrid.Columns(0).Width = 569.7638
                grdDataGrid.Columns(1).Width = 3119.811
                grdDataGrid.Columns(2).Width = 1514.929
                grdDataGrid.Columns(3).Width = 2250.142
                grdDataGrid.Columns(4).Width = 1514
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.AllowAddNew = False
                BUTTON(9).Enabled = True 'Save
            End If
        DB.BeginTrans
        Call adddelmod(BUTTON)
'        BUTTON(9).Enabled = False 'Save
        BUTTON(9).ToolTipText = "Delete"
        BUTTON(10).Enabled = True
        Screen.MousePointer = 0
'        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3
        'List
        desc.Caption = "Listing"
        Set dv1 = New DataEnvironment1
        dv1.Connection1.ConnectionString = connectstring
        Set cn = New Connection
        cn.CursorLocation = adUseClient
    If cn.State = 1 Then
        cn.Close
    End If
        cn.ConnectionString = "provider=msdatashape;" & connectstring
    If cn.State = adStateclose Then
        cn.Open
    End If
        Call repproc2(rptcount)
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
        dv1.rsCommand1.Open "select a.cntcd,a.cntname,a.mixgrpcd,b.mixgrpname,a.Map_CntCd 'Map_Count' from rm_count a,rm_mixgrp b where a.mixgrpcd = b.mixgrpcd  and 1=1 and b.DivCode = '" & Divcode & "' order by cntcd", cn
        'SHAPE {select * from rm_mixgrp}  AS Command2 APPEND ({select * from rm_count}  AS Command5 RELATE 'MIXGRPCD' TO 'MIXGRPCD') AS Command5
    If dv1.rsCommand1.RecordCount <> 0 Then
        Set rptcount.DataSource = dv1
        rptcount.Show
        desc.Caption = "Query"
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
          BUTTON(10).Enabled = False
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
'Save
    If Opt = "add" Then
        If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" Then
            MsgBox "Empty record Cannot be Saved", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text = "" Then
          MsgBox "Mixing Count Name Cannot be Empty", vbInformation, head
          grdDataGrid.Col = 1
          grdDataGrid.SetFocus
          Exit Sub
        End If
      
        If grdDataGrid.Columns(0).Text <> "" And grdDataGrid.Columns(1).Text <> "" And grdDataGrid.Columns(2) = "" Then
          MsgBox "Mixing Group Cannot be Empty", vbInformation, head
          grdDataGrid.Col = 2
          grdDataGrid.SetFocus
          Exit Sub
        End If
        Opt = ""
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            If Trim(grdDataGrid.Columns(0).Text) = "" Or Trim(grdDataGrid.Columns(0).Text) = Null Then
                adoPrimaryRS.Delete
            ElseIf grdDataGrid.Columns(1).Text = "" Or grdDataGrid.Columns(1).Text = Null Then
                MsgBox "Please Enter the Mixing Count name", vbInformation, head
                grdDataGrid.Col = 1
                Screen.MousePointer = 0
                grdDataGrid.SetFocus
                Exit Sub
            Else
            '        adoprimaryrs("Mixing Group Name") = grdDataGrid.Columns(3).Text
        
            End If
            adoPrimaryRS.MoveNext
        Loop
        If adoPrimaryRS.RecordCount = 0 Then
            Opt = "add"
            BUTTON_Click (10)
            'db.RollbackTrans
            Exit Sub
        End If
        adoPrimaryRS.MoveFirst
        Opt = "add"
    End If
'-----------------------------------------------------------------------
    If Opt = "add" Or Opt = "mod" Then
    
        If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(2).Text) <> "" Then
            MsgBox "Mixing Count code cannot be empty", vbInformation, head
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            Exit Sub
        End If
          
        If Trim(grdDataGrid.Columns(1).Text) = "" And Trim(grdDataGrid.Columns(1).Text) <> "" Then
            MsgBox "Mixing Count code cannot be empty", vbInformation, head
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Exit Sub
        End If
          
        If Trim(grdDataGrid.Columns(2).Text) = "" And Trim(grdDataGrid.Columns(1).Text) <> "" Then
            MsgBox "Mixing Count code cannot be empty", vbInformation, head
            grdDataGrid.Col = 2
            grdDataGrid.SetFocus
            Exit Sub
        End If
          
        If Trim(grdDataGrid.Columns(0).Text) = "" And Trim(grdDataGrid.Columns(1).Text) = "" Then
           On Error Resume Next
           adoPrimaryRS.UpdateBatch adAffectAllChapters
           DB.CommitTrans
           MsgBox "Record(s) Saved", vbInformation, head
           Opt = ""
        Else
            If Trim(grdDataGrid.Columns(0).Text) <> "" Then
                If Trim(grdDataGrid.Columns(1).Text) = "" Then
                    StatusBar1.Panels(2).Text = "Mixing Count Name cannot be empty"
                    grdDataGrid.Col = 1
                    grdDataGrid.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                Else
                    StatusBar1.Panels(2).Text = ""
                End If
            End If
        End If
    End If
    If Opt = "add" Then
        tmp = Opt
        Opt = ""
        On Error GoTo deler
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            DB.Execute "insert into rm_count(cntcd,cntname,mixgrpcd,Divcode,catcd,Active) values ('" & grdDataGrid.Columns(0).Text & "','" & grdDataGrid.Columns(1).Text & "','" & grdDataGrid.Columns(2).Text & "','" & Divcode & "','" & grdDataGrid.Columns(4).Text & "','" & grdDataGrid.Columns(6).Text & "')"
        
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Mixing Count"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
        
        adoPrimaryRS.MoveNext
        Loop
        Opt = tmp
        DB.CommitTrans
        MsgBox "Record(s) Saved", vbInformation, head
       End If
       If Opt = "mod" Then
         grdDataGrid.AllowUpdate = True
         DB.Execute "update rm_count set Map_CntCd = '" & Trim(grdDataGrid.Columns(5).Text) & "', CNTCD = '" & grdDataGrid.Columns(0).Text & "',cntname = '" & grdDataGrid.Columns(1).Text & "',mixgrpcd = '" & grdDataGrid.Columns(2).Text & "',catcd='" & grdDataGrid.Columns(4).Text & "', Active='" & grdDataGrid.Columns(6).Text & "' where cntcd = '" & grdDataGrid.Columns(0).Text & "' AND DIVCODE='" & Divcode & "'"
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Mixing Count"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
         
         DB.CommitTrans
                MsgBox "Record(s) Modified.", vbInformation, head
       End If
       If Opt = "del" Then
         On Error GoTo deler
         Dim msg As String
         msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
         If msg = vbYes Then
         
            Set Rs = New Recordset
            Rs.Open "Select BLEND_CODE FROM PPC_BLEND_MAS WHERE bLEND_CODE ='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                MsgBox "This Mixing Count cannot be deleted as dependencies exist", vbInformation, head
                query_mode
                BUTTON_Click (10)
                
                Exit Sub
            End If
            
             Set Rs = New Recordset
            Rs.Open "Select cntcd FROM rm_issh WHERE cntcd ='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                MsgBox "This Mixing Count cannot be deleted as dependencies exist", vbInformation, head
                query_mode
                BUTTON_Click (10)
                
                Exit Sub
            End If
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Mixing Count"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
         
         
            DB.Execute ("delete from rm_count where cntcd=" + "'" + grdDataGrid.Columns(0) + "'")
            DB.CommitTrans
            MsgBox "Record(s) Deleted.", vbInformation, head
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
         desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
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
    'calling cancl procedure from module
    Call cancl(BUTTON)
    ''button(0).enabled = false
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True
    BUTTON(0).SetFocus ''''''''''''''
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
Unload Me

  
Case 13

       Dim clsCryRptVariety As New clsCrystal
       Set clsCryRptVariety.cryRept = Cry_Mix_Count
       clsCryRptVariety.CrystalPrint
                
       CrystalReport1.Reset
       CrystalReport1.Connect = connectstring
       CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
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
        MsgBox "         ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "Area Name cannot be empty", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmCount", vbInformation, head
End Sub

Private Sub CmdOrderOk_Click()
        

VarProd = ""
   chk = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
               ' SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
'                SpdEmpAllocation.SetText SpdAllocation.SPDSupplier, SpdEmpAllocation.MaxRows, Trim(txtfields(8).Text)
'                SpdEmpAllocation.SetText SpdAllocation.SPDCATDESC, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, RW)
                VarProd = VarProd + "/" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)) & ""
'                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)
'                SpdEmpAllocation.SetText SpdAllocation.SPDVarietyName, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, RW)
'
'                SpdEmpAllocation.SetText SpdAllocation.SPDCAT, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, RW)
'                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)
       
    
            End If
        Next
    End With
    
    MIxDocNo = Mid$(VarProd, 2, Len(VarProd))
    
'    Set RsDoc = New Recordset
'    RsDoc.Open "select cntcd from rm_count where divcode='" & Divcode & "' and substring(cntcd,0," & Len(MIxDocNo) + 1 & ")='" & MIxDocNo & "'", DB, adopen
'    If Not RsDoc.EOF Then
'        MsgBox "Record already Exists", vbInformation, head
'        Call BUTTON_Click(10)
'        Exit Sub
'    End If
    
    Set RsDoc = New Recordset
    RsDoc.Open "select isnull(max(right(cntcd,2)),0)+1 from rm_count where divcode='" & Divcode & "' and isnumeric(right(cntcd,2))=1 and substring(cntcd,0," & Len(MIxDocNo) + 1 & ") ='" & MIxDocNo & "'", DB, adopen
    If Not RsDoc.EOF Then
     MIxDocNo = MIxDocNo + "-" + Padl(CStr(RsDoc(0)), 2, "0")
    End If
    
    
    grdDataGrid.Columns(0).Text = MIxDocNo
    FraOrd.Visible = False
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_Load " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: IN_BillEntry"

    
End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
grdDataGrid.Visible = True
Call BUTTON_Click(10)
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

 Select Case Ksllist1.listfield1
 Case "cntcd"
        SSTab1.Visible = True
        grdDataGrid.Visible = True
        grdDataGrid.Enabled = True
          StatusBar1.Panels(2).Text = ""
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",a.Map_CntCd 'Map_Count' from rm_count a,rm_mixgrp b  where a.mixgrpcd = b.mixgrpcd and a.cntcd = '" & Ksllist1.Code & "' and b.DivCode = '" & Divcode & "' order by a.cntcd", DB, adOpenStatic, adLockBatchOptimistic
          Set grdDataGrid.DataSource = adoPrimaryRS
          'Set grdDataGrid.DataSource = Adodc1.Recordset
          grdDataGrid.Columns(0).Width = 569.7638
          grdDataGrid.Columns(1).Width = 3119.811
          grdDataGrid.Columns(2).Width = 1514.929
          grdDataGrid.Columns(3).Width = 2250.142
          grdDataGrid.Columns(0).Locked = True
          grdDataGrid.AllowAddNew = False
          grdDataGrid.Col = 1
          grdDataGrid.Row = 0
          grdDataGrid.SetFocus
          BUTTON(9).Enabled = True 'Save
          If Opt = "del" Then
          BUTTON(9).SetFocus
          End If
          Frame3.Visible = False
          BUTTON(4).Enabled = True
 Case "mixgrpcd"
''          grddatagrid.Enabled = True
''          Frame3.Visible = False
''          SSTab1.Visible = True
''          grddatagrid.Visible = True
''          grddatagrid.Columns(2).Text = KslList1.Code
''          grddatagrid.Columns(3).Text = KslList1.Description
''          BUTTON(4).Enabled = True
If Opt = "add" Then
  If grdDataGrid.Col = 2 And Not (Trim(grdDataGrid.Columns(2).Text) = "") Then
    adoPrimaryRS.AddNew
    grdDataGrid.Col = 0
    'grddatagrid.Row = grddatagrid.Row + 1
    grdDataGrid.SetFocus
  End If
End If
 End Select
BUTTON(10).Enabled = True


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmCount", vbInformation, head
End Sub


Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
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
        Call BUTTON_Click(10)
    End If
End If
    
    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
    
    Exit Sub

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
    grdDataGrid.Columns(0).Width = 705.2599
grdDataGrid.Columns(1).Width = 2984.882
grdDataGrid.Columns(2).Width = 1514.929
grdDataGrid.Columns(3).Width = 2250.142

intervalMinutes = -1


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmCount", vbInformation, head

End Sub

Private Sub Form_Resize()
'  On Error Resume Next
'  SSTab1.Left = 1300
'  grddatagrid.Left = 1400
'  'This will resize the grid whef the form is resized
'  SSTab1.Width = Me.Width - 3000
'  SSTab1.Height = Me.Height - 3000
'  grddatagrid.Height = SSTab1.Height - 300
'  grddatagrid.Width = SSTab1.Width - 200
   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  If Opt <> "add" Then
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
  intervalMinutes = -1
End Sub



Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColEdit_Error
intervalMinutes = -1
If Opt = "add" Then
        'If grddatagrid.Col = 2 Then
        '  If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition And FLGREPET = True Then
        '    adoPrimaryRS.AddNew
        '    grddatagrid.Col = 0
        '    grddatagrid.SetFocus
        '   End If
        ' End If
    If grdDataGrid.Col = 0 Then
        a = adoPrimaryRS.AbsolutePosition
        Code = adoPrimaryRS(0)
        Opt = " "
        adoPrimaryRS.MoveFirst
        For I = 1 To adoPrimaryRS.RecordCount - 1
            If adoPrimaryRS(0).value = Code And Not adoPrimaryRS.AbsolutePosition = a Then
                MsgBox "Mixing Count Code Already Defined!", vbInformation, head
                adoPrimaryRS.AbsolutePosition = a
                adoPrimaryRS(0).value = ""
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Opt = "add"
                Exit Sub
            End If
            adoPrimaryRS.MoveNext
        Next I
        Opt = "add"
     End If
End If

'If Opt = "mod" Then
'    If GrdDataGrid.Col = 2 Then
'        SSTab1.Visible = False
'        GrdDataGrid.Visible = False
'        Frame3.Visible = True
'        Label15.Caption = "Mixgroup List"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_mixgrp"
'        KslList1.listfield1 = "mixgrpcd"
'        KslList1.listfield2 = "mixgrpname"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        GrdDataGrid.AllowUpdate = True
'    End If
'End If
    If grdDataGrid.Col = 2 And grdDataGrid.Columns(1).Text <> "" Then
         LookUp.Clear = True
         LookUp.query = "select MixGrpcd""MixGroupCode"",mixgrpname""MixGroupName"" from rm_MixGrp    where  DivCode = '" & Divcode & "'"
         LookUp.Caption = "Mixing Group Listing"
         LookUp.DefCol = "Name"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            grdDataGrid.Enabled = True
            grdDataGrid.Visible = True
            grdDataGrid.Columns(2).Text = LookUp.Fields(0)
            grdDataGrid.Columns(3).Text = LookUp.Fields(1)
            grdDataGrid.Columns(2).Text = LookUp.Fields(0)
         
            LookUp.Clear = True
            'Commented on 31-12-2018 ----------------------
'            If Opt <> "mod" Then
'                adoPrimaryRS.AddNew
'            End If
'            grdDataGrid.Col = 0
'            grdDataGrid.SetFocus
            'Exit Sub
         Else
            Call BUTTON_Click(10)
         End If
    'Else
    '    grdDataGrid.Col = 1
    '    grdDataGrid.SetFocus
    End If


'Code added on 31-12-2018---------------------------------------------


If grdDataGrid.Col = 4 Then
         LookUp.Clear = True
         LookUp.query = "select CATCD ""Category Code"",CATNAME ""Category Name"" from rm_cat"
         LookUp.Caption = "Category Listing"
         LookUp.DefCol = "Category Name"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
            grdDataGrid.Enabled = True
            grdDataGrid.Visible = True
            grdDataGrid.Columns(4).Text = LookUp.Fields(0)
            LookUp.Clear = True
           
            Exit Sub
         'Else
            'Call BUTTON_Click(10)
         End If
    'Else
    '    grdDataGrid.Col = 1
    '    grdDataGrid.SetFocus
    End If


'---------------------------------------------------------------------




Exit Sub
grddatagrid_AfterColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_AfterColEdit of Form FrmCount", vbInformation, head
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
Dim Rs As Recordset

' Name verify
On Error GoTo GrdDatagrid_AfterColUpdate_Error

 If ColIndex = 1 Then
Set Rs = New Recordset
Rs.Open "select cntname from rm_count where cntname = ltrim( ' " & Trim(grdDataGrid.Columns(1).Text) & " ')", DB, adOpenStatic

If Rs.RecordCount <> 0 Then
MsgBox " Count name is already exists ", vbInformation, head
grdDataGrid.Columns(1).Text = " "
grdDataGrid.Col = 0
grdDataGrid.SetFocus
Exit Sub
End If

End If

' end name verify


        If ColIndex = 0 Then
        If Trim(grdDataGrid.Columns(0).Text) = Empty Or Trim(grdDataGrid.Columns(0).Text) = "" Then
            MsgBox "Area Code cannot be empty!", vbInformation, head
        Else
            Set Rs = New Recordset
            Rs.Open "select 'X'  from rm_count where Divcode='" & Divcode & "' and cntcd='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.BOF Then
                MsgBox "Mixing Count Code already defined!", vbInformation, head
                'GrdDataGrid.Columns(0).Text = " "
                grdDataGrid.Col = 0
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


Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmCount", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
Response = 0
End Sub
Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyTab Then
    FLGREPET = True
    If Trim(grdDataGrid.Text) = "" Then
        If grdDataGrid.Col = 1 Then
            MsgBox ("Mixing Count Name Cannot be empty"), vbInformation, head
            st2 = "A"
            grdDataGrid.SetFocus
            Exit Sub
        End If
        If grdDataGrid.Col = 0 Then
            MsgBox ("Mixing Count Code cannot be empty"), vbInformation, head
            st = "A"
        End If
    End If
Else
    FLGREPET = False
End If
If Opt = "add" Then
 If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount And (KeyCode = 9 Or KeyCode = 13) And grdDataGrid.Col = 6 Then
    adoPrimaryRS.AddNew
    
            grdDataGrid.Col = 0
            grdDataGrid.SetFocus
            grdDataGrid.Columns(6) = "Y"
    End If
    'GrdDataGrid.Columns(3).Locked = True
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
'    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
'        Call BUTTON_Click(5)
'    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
'        Call BUTTON_Click(6)
'    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
'        Call BUTTON_Click(7)
'     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
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
'    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
'        Call BUTTON_Click(5)
'
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
    Call BUTTON_Click(10)
End If
End Sub
Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
If grdDataGrid.Col = 0 Then
    ToAlphaNumber grdDataGrid, 10, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
   
          StatusBar1.Panels(2).Text = "Enter Maximum of 10 Characters"
   
ElseIf grdDataGrid.Col = 1 Then
    ToAlphaNumber grdDataGrid, 20, KeyAscii
    ToUpCase grdDataGrid, KeyAscii
ElseIf grdDataGrid.Col = 2 Then
    ToAlphaNumber grdDataGrid, 10, KeyAscii
    'Initials grddatagrid, KEYASCII
ElseIf grdDataGrid.Col = 6 Then
    If KeyAscii = 121 Or KeyAscii = 89 Or KeyAscii = 8 Or KeyAscii = 78 Or KeyAscii = 110 Then
        ToUpCase grdDataGrid, KeyAscii
    Else
       KeyAscii = 0
    End If
End If
End If
'If Opt = "add" Then
'    If GrdDataGrid.Col = 2 And GrdDataGrid.Columns(0).Text <> "" Then
''        Frame3.Visible = True
''        Label15.Caption = "Mixing Group"
''        KSLLIST1.conn = connectstring
''        KSLLIST1.table = "rm_mixgrp"
''        KSLLIST1.listfield1 = "mixgrpcd"
''        KSLLIST1.listfield2 = "mixgrpname"
''        Frame3.Visible = True
''        Frame3.ZOrder
''         LookUp.clear = True
''         LookUp.query = "select MixGrpcd AS 'MixGroupCode',mixgrpname as 'MixGroupName' from rm_MixGrp"
''         LookUp.Caption = "Rate Unit Listing"
''         LookUp.DefCol = "MixGrpCD"
''         LookUp.ALIGN = "1500,5500"
''         LookUp.Show vbModal
''         If LookUp.cancel = False Then
''            grddatagrid.Enabled = True
''            Frame3.Visible = False
''            SSTab1.Visible = True
''            grddatagrid.Visible = True
''            grddatagrid.Columns(2).Text = LookUp.Fields(0)
''            grddatagrid.Columns(3).Text = LookUp.Fields(1)
''            BUTTON(4).Enabled = False
''         Else
''            Call BUTTON_Click(10)
''         End If
'    End If
'End If
End Sub

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo er1
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select a.cntcd ""Code"" ,a.cntname ""Mixing Count Name"",a.mixgrpcd ""Mixing Group"",b.mixgrpname ""Mixing Group Name"",a.catcd ""Category"",a.Map_CntCd 'Map_Count',a.Active from rm_count a,rm_mixgrp b where a.mixgrpcd = b.mixgrpcd and b.DivCode = '" & Divcode & "' order by cntcd", DB, adOpenStatic, adLockReadOnly
  Set grdDataGrid.DataSource = adoPrimaryRS
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
    grdDataGrid.Columns(0).Width = 1200.2599
    grdDataGrid.Columns(1).Width = 2984.882
    grdDataGrid.Columns(2).Width = 1514.929
    grdDataGrid.Columns(3).Width = 2250.142
    grdDataGrid.Columns(4).Width = 1514
    grdDataGrid.Columns(6).Width = 1000
    

    grdDataGrid.ScrollBars = dbgBoth
    'grddatagrid.Enabled = False
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    'Calling newform procedure from Module to disable buttons
    Call NEWFORM1(BUTTON, GSNO)
'    Call NEWFORM(BUTTON, 44)
    Opt = " "
    Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  Call NEWFORM1(BUTTON, GSNO)
    BUTTON(10).Enabled = False
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
    Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Found", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
If Opt = "add" Then
    '''If grddatagrid.COL = 2 And grddatagrid.Columns(2).Text <> "" Then
''    If grddatagrid.Col = 2 And grddatagrid.Columns(1).Text <> "" Then
''''        Frame3.Visible = True
''''        Label15.Caption = "Mixing Group"
''''       KSLLIST1.conn = connectstring
''''       KSLLIST1.table = "rm_mixgrp"
''''       KSLLIST1.listfield1 = "mixgrpcd"
''''       KSLLIST1.listfield2 = "mixgrpname"
''''       Frame3.Visible = True
''''       Frame3.ZOrder
''         LookUp.clear = True
''         LookUp.query = "select MixGrpcd as [MixGroupCode] ,mixgrpname as [MixGroupName] from rm_MixGrp where DivCode = '" & Divcode & "'"
''         LookUp.Caption = "Mixing Group Listing"
''         LookUp.DefCol = "MixGroupName"
''         LookUp.ALIGN = "1500,5500"
''         'LookUp.Width = "1500,5500"
''         LookUp.Show vbModal
''         If LookUp.Cancel = False Then
''            grddatagrid.Enabled = True
''            grddatagrid.Visible = True
''            msql = LookUp.Fields(0)
''            'grddatagrid.Columns(2).Text = LookUp.Fields(0)
''            grddatagrid.Columns(3).Text = LookUp.Fields(1)
''            grddatagrid.Columns(2).Text = msql
''            LookUp.clear = True
''            adoPrimaryRS.AddNew
''            grddatagrid.Col = 0
''            grddatagrid.SetFocus
''            'BUTTON(4).Enabled = True
''            Exit Sub
''         Else
''            Call BUTTON_Click(10)
''         End If
''    Else
''        grddatagrid.Col = 1
''        grddatagrid.SetFocus
''    End If
    If Opt = "add" Then
    If grdDataGrid.Row >= 0 Then
    If grdDataGrid.Col = 1 And grdDataGrid.Columns(0).Text = "" Then
        grdDataGrid.Col = 0
    End If
    If grdDataGrid.Col = 2 And grdDataGrid.Columns(1).Text = "" Then
        grdDataGrid.Col = 1
        grdDataGrid.SetFocus
    End If
    End If
    If grdDataGrid.Row >= 0 And grdDataGrid.Col = 1 Then
        ln = Len(grdDataGrid.Columns(0).Text)
        'For i = 1 To ln
          '      t = Asc(Mid$(grdDataGrid.Columns(0).Text, i, 1))
                'If Not ((t >= 65 And t <= 90) Or (t >= 97 And t <= 122) Or (t >= 48 And t <= 57)) Then
         '           grdDataGrid.Col = 0
                    'Exit Sub
                'End If
                'Next i
                st = "B"
                
                'End If
'        If opt = "add" And grddatagrid.Col = 1 And grddatagrid.Columns(0) <> "" Then
        End If
   End If
   If Opt = "add" Then
        If ColIndex = 0 Then
             Set Rs = New Recordset
             Rs.Open "select 'X'  from rm_count where cntcd='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
             If Not Rs.BOF Then
                 'MsgBox "Mixing Count Code already defined!", vbInformation, head
                 'GrdDataGrid.Columns(0).Text = " "
                 grdDataGrid.Col = 0
                 st = "A"
                 Exit Sub
              End If
         End If
    Else
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
    End If
End If
   If Opt = "add" Or Opt = "mod" Then
     If grdDataGrid.Col = 0 Then
          StatusBar1.Panels(2).Text = "Enter Maximum of 5 Characters"
     End If
     If grdDataGrid.Col = 1 Then
          StatusBar1.Panels(2).Text = " Enter Maximum of 20 Characters"
     End If
     If grdDataGrid.Col = 2 Then
          StatusBar1.Panels(2).Text = " Select Mixed Group Code From the List"
     End If
End If
End If

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmCount", vbInformation, head

End Sub


Private Sub SETSIZEORDHead()
With SpdSIZEORD
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = E_SIZELISTDC1.SPDSBVARNAME
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSCHECK1, " ", CellTypeCheckBox, 4, , False, False
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSSNO, "S.No.", CellTypeStaticText, 4, , False, True
    
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, "Category Code", CellTypeStaticText, 14, 0, True, True
    .Col = E_SIZELISTDC1.SPDSBCAT
    .TypeHAlign = TypeHAlignLeft
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, "Category", CellTypeStaticText, 14, 0, True, True
    .Col = E_SIZELISTDC1.SPDSBCATDesc
    .TypeHAlign = TypeHAlignLeft
    
    .Col = SPDSBVARCODE

    .TypeDateCentury = True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, "Variety Code", CellTypeStaticText, 20, 0, False, True
    .Col = E_SIZELISTDC1.SPDSBVARCODE
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, "Variety", CellTypeStaticText, 25, 0, False, True
    .Col = E_SIZELISTDC1.SPDSBVARNAME
    .TypeHAlign = TypeHAlignLeft
    


End With
Check1.value = False



End Sub

Private Sub KslList1_GotFocus()
Command3.Default = True
End Sub

