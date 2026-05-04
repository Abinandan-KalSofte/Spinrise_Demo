VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_SupplierVarietyMap 
   Caption         =   "Supplier and Variety Mapping"
   ClientHeight    =   4275
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13440
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   4275
   ScaleWidth      =   13440
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   12120
      Top             =   840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.PictureBox FraOrd 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6795
      Left            =   2160
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   21
      ToolTipText     =   "Select an item from list"
      Top             =   1920
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text1 
         Height          =   300
         Left            =   1200
         TabIndex        =   33
         Top             =   520
         Width           =   7305
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
         TabIndex        =   24
         Top             =   6300
         UseMaskColor    =   -1  'True
         Width           =   1035
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
         TabIndex        =   23
         Top             =   6300
         Width           =   1035
      End
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
         TabIndex        =   22
         Top             =   6480
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   25
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
         SpreadDesigner  =   "Frm_SupplierVarietyMap.frx":0000
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
         TabIndex        =   34
         Top             =   600
         Width           =   1020
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
         TabIndex        =   26
         Top             =   45
         Width           =   8505
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
   End
   Begin VB.CommandButton CmdCrystal 
      Height          =   510
      Index           =   0
      Left            =   6600
      Picture         =   "Frm_SupplierVarietyMap.frx":042A
      Style           =   1  'Graphical
      TabIndex        =   20
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   120
      Visible         =   0   'False
      Width           =   520
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   3
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5250
         Picture         =   "Frm_SupplierVarietyMap.frx":086C
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   135
         Width           =   615
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":0CAE
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_SupplierVarietyMap.frx":10F8
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_SupplierVarietyMap.frx":145A
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_SupplierVarietyMap.frx":1764
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":1AE0
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_SupplierVarietyMap.frx":1DEA
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":218C
         Height          =   510
         Index           =   11
         Left            =   5880
         Picture         =   "Frm_SupplierVarietyMap.frx":25D6
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":296B
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_SupplierVarietyMap.frx":2DB5
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   7140
         Picture         =   "Frm_SupplierVarietyMap.frx":3105
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":349C
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "Frm_SupplierVarietyMap.frx":37A6
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":3B20
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
         Left            =   1065
         Picture         =   "Frm_SupplierVarietyMap.frx":3E2A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":41C6
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "Frm_SupplierVarietyMap.frx":4610
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":4975
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_SupplierVarietyMap.frx":4C7F
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_SupplierVarietyMap.frx":5012
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "Frm_SupplierVarietyMap.frx":545C
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystal 
         Height          =   510
         Index           =   1
         Left            =   6360
         Picture         =   "Frm_SupplierVarietyMap.frx":57A9
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Delivery Note"
         Top             =   150
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton CmdCrystalGP 
         Height          =   510
         Left            =   10800
         Picture         =   "Frm_SupplierVarietyMap.frx":5BEB
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Gate Pass"
         Top             =   150
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1590
         Picture         =   "Frm_SupplierVarietyMap.frx":602D
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   135
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
         Left            =   7920
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
         Left            =   9120
         TabIndex        =   18
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7125
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   10845
      _ExtentX        =   19129
      _ExtentY        =   12568
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "."
      TabPicture(0)   =   "Frm_SupplierVarietyMap.frx":645F
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraDespatch"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   5895
         Left            =   75
         TabIndex        =   37
         Top             =   1080
         Width           =   10620
         Begin FPSpreadADO.fpSpread SpdEmpAllocation 
            Height          =   5565
            Left            =   120
            TabIndex        =   38
            Top             =   240
            Width           =   10350
            _Version        =   524288
            _ExtentX        =   18256
            _ExtentY        =   9816
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            DisplayRowHeaders=   0   'False
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
            MaxCols         =   10
            MaxRows         =   1
            ProcessTab      =   -1  'True
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "Frm_SupplierVarietyMap.frx":647B
            Appearance      =   2
         End
      End
      Begin VB.PictureBox FraDespatch 
         Appearance      =   0  'Flat
         ForeColor       =   &H80000008&
         Height          =   960
         Left            =   75
         ScaleHeight     =   930
         ScaleWidth      =   10590
         TabIndex        =   28
         Top             =   90
         Width           =   10620
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   2
            Left            =   1440
            TabIndex        =   2
            Top             =   540
            Visible         =   0   'False
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   1
            Left            =   2820
            TabIndex        =   35
            Top             =   525
            Visible         =   0   'False
            Width           =   4230
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   7
            Left            =   2820
            TabIndex        =   29
            Top             =   150
            Width           =   4230
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "Supcd"
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   8
            Left            =   1470
            TabIndex        =   1
            Top             =   150
            Width           =   1320
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   315
            Left            =   8760
            TabIndex        =   30
            Top             =   120
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   141623297
            CurrentDate     =   41403
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   180
            TabIndex        =   36
            Top             =   600
            Visible         =   0   'False
            Width           =   780
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
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
            Left            =   7200
            TabIndex        =   32
            Top             =   180
            Width           =   1320
         End
         Begin VB.Label Label12 
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
            Left            =   180
            TabIndex        =   31
            Top             =   195
            Width           =   690
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   390
      Top             =   8415
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   40
      Top             =   3975
      Width           =   13440
      _ExtentX        =   23707
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   17613
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "18/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "04:51 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Supplier and Variety Mapping"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   390
      Left            =   150
      TabIndex        =   27
      Top             =   750
      Width           =   6870
   End
End
Attribute VB_Name = "Frm_SupplierVarietyMap"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim RW As Double
Dim Loadflg As Integer
Dim VarProd As String
Dim TmpRs As New Recordset
Private Enum E_SIZELISTDC1
    SPDSCHECK1 = 1
    SPDSSNO
    SPDSBCAT
    SPDSBCATDesc
    SPDSBVARCODE
    SPDSBVARNAME
End Enum

Private Enum SpdAllocation
    SPDDSNO = 1
    SPDSupplier
    SPDCAT
    SPDCATDESC
    SPDVariety
    SPDVarietyName

End Enum
Dim EmployeeNo As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    If Opt = "" Or Opt = "qry" Then
        If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
            If adoPrimaryRS("DocDate") <> "" Then
                DTPicker1.value = Format(adoPrimaryRS("DocDate"), "dd/mm/yyyy")
            Else
            
            End If
            
'            If adoPrimaryRS("joDate") <> "" Then
'                MaskEdBox2.Text = Format(adoPrimaryRS("joDate"), "dd/mm/yyyy")
'            Else
'
'            End If
                                              
            Call SETDESPATCHHead
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd where     supcd='" & adoPrimaryRS("supcd") & "' Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoad
        End If
    End If

End Sub
Private Sub SpdLoad()
        Call SETDESPATCHHead
        With SpdEmpAllocation
            .MaxRows = 0
            .MaxCols = SpdAllocation.SPDVarietyName
            .CursorStyle = CursorStyleArrow
        RW = 1
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdAllocation.SPDDSNO, RW, adoSecondaryRS("DOCSNO")

            .SetText SpdAllocation.SPDVariety, RW, adoSecondaryRS("varcode")
            
            If Opt = "mod" Then
                VarProd = VarProd + ",'" & Trim(adoSecondaryRS("varcode")) & "'"
            End If
            
            .SetText SpdAllocation.SPDVarietyName, RW, adoSecondaryRS("VARNAME")
            .SetText SpdAllocation.SPDCATDESC, RW, adoSecondaryRS("CATNAME")
       
            .SetText SpdAllocation.SPDSupplier, RW, adoSecondaryRS("SUPCD")
            .SetText SpdAllocation.SPDCAT, RW, adoSecondaryRS("catcd")
'            .SetText SpdAllocation.SPDCATDESC, RW, adoSecondaryRS("ticketno")
            DTPicker1.value = adoSecondaryRS("docdate")
            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        End With
End Sub

Private Sub BUTTON_Click(Index As Integer)
 intervalMinutes = -1
Select Case Index

    Case 0
    
            Set Servrs = New Recordset
            Servrs.Open "select DATEDIFF(D,'" & Format(pdate, "yyyy-MM-dd") & "',getdate()) as s_day", DB
            Serverday = Servrs("s_day")
            
            If Pentrylock = "Y" And Serverday > Lockdays - 1 Then
                MsgBox "Entry Date Expired For This User !", vbInformation, head
                Screen.MousePointer = 0
            Exit Sub
            End If
            Opt = "add"
            Loadflg = 0
            FraDespatch.Enabled = True
            Txtfields(8).SetFocus
            desc.Caption = "Addition"
            stbar.Panels(2).Text = "Addition"
            Screen.MousePointer = 11
            stbar.Panels(2).Text = "                "
            DTPicker1.value = pdate
            VarProd = "' '"
           ' MaskEdBox2.Text = "__/__/____"
            FraOrd.Visible = False
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select a.divcode,supcd,docdate from RM_Suppliervariety a where    1= 2", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd     where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            Opt = "add"
            adoPrimaryRS.AddNew
            Call bindcontls
            Label4.Visible = True
            Txtfields(2).Visible = True
            Txtfields(1).Visible = True
            tottot = 0
            Txtfields(7).Text = ""
            Txtfields(1).Text = ""
            Txtfields(2).Text = ""
            Txtfields(8).Text = ""
            If DB.State = 0 Then DB.BeginTrans
            Call ENABLCONTLS
            Call adddelmod(BUTTON)
            
            Screen.MousePointer = 0
            Txtfields(8).SetFocus
            Call SETDESPATCHHead
'            SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'            SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, RW, SpdEmpAllocation.MaxRows
    Case 1
        If Record_Exists("RM_Suppliervariety") = False Then Exit Sub
        Opt = "mod"
        Set rsk = New Recordset
        FraDespatch.Enabled = True
'        rsk.Open "select TOP 1 A.DocNo,DocDate,Convert(numeric(18,0),Docno) as DocNoss from RM_Suppliervariety A where divcode ='" & Divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By DocNoss Desc", DB, adOpenStatic, adLockReadOnly
'        If rsk.RecordCount > 0 Then
            desc.Caption = "Modify"
             VarProd = "' '"
            LookUp.Clear = True

            LookUp.query = "select distinct a.supcd 'Supplier Code',slname 'Supplier Name' from RM_Suppliervariety A inner join fa_slmas b on a.supcd=b.slcode  "
        
            LookUp.Caption = "Supplier Variety Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,5000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                  
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,supcd from RM_Suppliervariety a where  supcd = '" & LookUp.Fields(0) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                  ' DTPicker1.value = adoPrimaryRS("docdate")
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd where  supcd ='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Loadflg = 1
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
                Label4.Visible = True
                Txtfields(2).Visible = True
                Txtfields(8).Locked = True
                Txtfields(1).Visible = True
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
'        End If
            
    
    
    
                
    Case 2
   ' Exit Sub
        If Record_Exists("RM_Suppliervariety") = False Then Exit Sub
        Opt = "del"
  
            LookUp.query = "select distinct a.supcd 'Supplier Code',slname 'Supplier Name'from RM_Suppliervariety A inner join fa_slmas b on a.supcd=b.slcode and supcd not  in (select supcd from rm_fibrerate ) "
        
            LookUp.Caption = "Supplier Variety Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,5000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                   
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,supcd,Docdate from RM_Suppliervariety a where  supcd = '" & LookUp.Fields(0) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                 
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd where  supcd ='" & adoPrimaryRS("supcd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
        
    Case 4
        Opt = "fnd"
            LookUp.Clear = True
      

            LookUp.query = "select distinct a.supcd 'Supplier Code',slname 'Supplier Name',Docdate 'Entry Date' from RM_Suppliervariety A inner join fa_slmas b on a.supcd=b.slcode  "
        
            LookUp.Caption = "Supplier Variety Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1500,2000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    DTPicker1.value = LookUp.Fields(2)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.divcode,docdate,supcd from RM_Suppliervariety a where  supcd = '" & LookUp.Fields(0) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd where  supcd ='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
             BUTTON(9).Enabled = False
            Buttonframe.Enabled = True
        
    Case 5
            'first
            desc.Caption = "Query"
            On Error GoTo GoFirstError
            adoPrimaryRS.MoveFirst
            'calling fir procedure from module
            Call FIR(BUTTON)
            Exit Sub
GoFirstError:
       
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
                'moved off the end so go back
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
            desc.Caption = "Query"
            On Error GoTo GoLastError
            adoPrimaryRS.MoveLast
            'calling last procedure from module
            Call las(BUTTON)
            Exit Sub
GoLastError:



    Case 9
        'Save
            'Screen.MousePointer = 11
            desc.Caption = "Query"
            On Error GoTo er1
            'Call PoCalculation
            
            bolSave = True
            bolSave = False
            
            If Opt = "add" Then
                If Trim(Txtfields(8).Text) = "" Then
                    MsgBox "Category Cannot be empty", vbInformation, head
                    Txtfields(8).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If
        
                
    
                

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Variety Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                
                
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) = 0 Then
'                           MsgBox "Please Enter Quantity", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidEmp, RW)) = 0 Then
'                          MsgBox "Please Enter Employee Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                         End If
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDExQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidComp, RW)) = 0 Then
'                          MsgBox "Please Enter Company Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                        End If
                         
                    Next
                End With
                
                YearNo = Format(yfdate, "YY")
'                Set TmpRs = New Recordset
'                TmpRs.Open "Select isnull(max(isnull(convert(numeric(18,0),DocNo),0)),0)+1 AS Last_docno From RM_Suppliervariety where Divcode ='" & Divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                If Not TmpRs.EOF Then
'                    Last_docno = TmpRs("Last_docno")
'                End If
'                docNo = (Last_docno)
                
'             If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
               adoPrimaryRS("DIVCODE") = Divcode
           
              adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
              'adoPrimaryRS("SLCODE") = TXTFIELDS(8).Text
                
       
                

               ' adoPrimaryRS("EntryDate") = Now
                Dim inc As Integer
                inc = 1
                Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD from RM_Suppliervariety a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVarietyName, RW)) <> "" And Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW)) <> "" Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd") & " " & Format(Now, "HH:MM:SS")
                            UPDRS("DocSno") = inc
                            UPDRS("SUPCD") = Trim(Txtfields(8).Text)
                            UPDRS("CATCD") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            UPDRS("VARCODE") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW))
                            inc = inc + 1
                        End If
                    Next
                End With
               ' adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
                Dim rs_cust As New ADODB.Recordset

                
        End If
        
        
''09/10/13
        If Opt = "mod" Then

               If Trim(Txtfields(8).Text) = "" Then
                    MsgBox "Supplier Name Cannot be Empty", vbInformation, head
                    Txtfields(8).SetFocus
                    Screen.MousePointer = vbArrow
                    Exit Sub
                End If

            DB.Execute ("Delete From RM_Suppliervariety  WHERE  supcd = '" & Trim(Txtfields(8).Text) & "' "), xx
     
            bolSave = True
            bolSave = False

            'If Opt = "add" Then

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Item Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
'                YearNo = Format(yfdate, "YY")
'
'              With SpdEmpAllocation
'                    For RW = 1 To .MaxRows
'                        .Row = RW
'
'                          If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) = "" Then
'                          MsgBox "Please select PF Status", vbInformation, head
'                          Exit Sub
'                          End If
'
'                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDDDExQty, RW)) = "" Then
'                          MsgBox "Please select ESI Status", vbInformation, head
'                          Exit Sub
'                          End If
'                    Next
'                End With
                

                'Set tmprs = New Recordset
                'tmprs.Open "Select isnull(max(isnull(DocNo,0)),0)+1 AS Last_docno From RM_Suppliervariety where Divcode ='" & divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

                'If Not tmprs.EOF Then
                 '   Last_docno = Right(tmprs("Last_docno"), 6)
                'End If
                'DocNo = YearNo & Padl(CStr(Last_docno), 6, "0")

            Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Divcode,DocNo,DocDate,SLCODE,JONo,JODate,DespatchTo,VechicleNo,RemTime,EntryDate,Description from  RM_Suppliervariety where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
'
'            adoPrimaryRS.ADDNEW


              'docNo = Trim(TXTFIELDS(0).Text)

'              If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
inc = 1
'               Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD from RM_Suppliervariety a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW)) <> "" And Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW)) <> "" Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                      
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd HH:MM:SS")
                            UPDRS("DocSno") = inc
                            UPDRS("SUPCD") = GetText(SpdEmpAllocation, SpdAllocation.SPDSupplier, RW)
                            UPDRS("CATCD") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            UPDRS("VARCODE") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVariety, RW))
                    inc = inc + 1

                        End If
                    Next
                End With

                UPDRS.UpdateBatch adAffectAllChapters
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
        ''End If

        End If
      
        
        
        If Opt = "del" Then

            DB.Execute ("Delete From RM_Suppliervariety  WHERE  supcd = '" & Trim(adoPrimaryRS("supcd")) & "' AND cast(DocDate as date) = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "' "), xx
           ' DB.Execute ("Delete From YN_SizingDeliveryDT  WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' and DocNo = " & Val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'"), xx
            MsgBox "Record deleted Successfully", vbOKOnly, head
        End If
        ' Return to query mode
        Call query_mode(0)

        Call NEWFORM3(BUTTON, GSNO)
Case 10
    If Bud <> "Y" Then
        Bud = ""
        If MsgBox("Do you want to Cancel?", vbQuestion + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Bud = ""

    desc.Caption = "Query"
    Screen.MousePointer = 11
    On Error Resume Next
    'CANCEL
    
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
         
    End Select
    'To return default settings - i.e query mode
    'Call TaxClear(Me)
    Call query_mode(0)
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, GSNO)
    Call NEWFORM3(BUTTON, GSNO)
    BUTTON(12).Enabled = True

Case 11
    'EXIT
    Unload Me
Case 12
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Supplier_VarMap
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

Screen.MousePointer = 0
Exit Sub
er1:
    MsgBox Err.Description, vbInformation, head
SendKeys ("%")

SendKeys ("{esc}")
Screen.MousePointer = 0
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form quotatn", vbInformation, head
End Sub
Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
  'Bind the text boxes to the recordset
  For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
  Next
On Error Resume Next

End Sub

Private Sub CmdRFQItemok_Click()

End Sub

Private Sub Check1_Click()
 For IntRow = 1 To SpdSIZEORD.MaxRows
        SpdSIZEORD.Row = IntRow
        SpdSIZEORD.Col = E_SIZELISTDC1.SPDSCHECK1
        SpdSIZEORD.value = Check1.value
    Next IntRow
End Sub

Private Sub CmdCrystal_Click(Index As Integer)
Dim ClsSizeDes As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(Txtfields(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
'

'
End Sub

Private Sub CmdCrystalGP_Click()
    Dim ClsSizeDes1 As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(Txtfields(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
    
    If docNo <> 0 Then
    ' With Wt
        'Set tmprs = New Recordset
        'tmprs.Open "Select DISTINCT * from YN_SizingDeliveryDT where DivCode =" & divcode & " and DocNo=" & val(txtfields(0).Text) & " and DocDate='" & Format(DTPicker1.Value, "yyyy-MM-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        'If tmprs.RecordCount > 4 Then
            'Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGP
        'Else
            Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGPCut
            
        'End If
        
        ClsSizeDes1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWvgPrep.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@DocNo;" & docNo & ""
        CrystalReport1.ParameterFields(2) = "@DocDt;" & DOCDT & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        'CrystalReport1.printers
        Screen.MousePointer = 0
    End If
 
 
End Sub

Private Sub CmdOrderOk_Click()
    'Call SETDESPATCHHead
    chk = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                SpdEmpAllocation.SetText SpdAllocation.SPDSupplier, SpdEmpAllocation.MaxRows, Trim(Txtfields(8).Text)
                SpdEmpAllocation.SetText SpdAllocation.SPDCATDESC, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, RW)
                VarProd = VarProd + ",'" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)) & "'"
                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDVarietyName, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARNAME, RW)
  
                SpdEmpAllocation.SetText SpdAllocation.SPDCAT, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, RW)
                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBVARCODE, RW)
       
    
            End If
        Next
    End With
'     SpdEmpAllocation.Col = SpdAllocation.SPDSupplier
'                SpdEmpAllocation.SetFocus
    FraOrd.Visible = False
   ' If TXTFIELDS(3).Enabled = True Then TXTFIELDS(9).SetFocus
    
End Sub

Private Sub Command2_Click()
FraOrd.Visible = False
End Sub

Private Sub Form_Load()
  
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    desc.Caption = "Query"
    DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
    Opt = "qry"
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
'
    Call query_mode(0)
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
    Call NEWFORM1(BUTTON, GSNO)
    FraDespatch.Enabled = True
    Set RsItem = New Recordset
    intervalMinutes = -1
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.Txtfields
        oText.Locked = True
    Next
    'FraDespatch.Enabled = False
    'MaskEdBox2.Enabled = False
    DTPicker1.Enabled = False
End Sub

Public Sub query_mode(MDOC As Long)
On Error GoTo query_mode_Error
Dim oText As TextBox
    Label4.Visible = False
    Txtfields(2).Visible = False
    Txtfields(1).Visible = False
    bolSave = False
    FraOrd.Visible = False
    Call SETDESPATCHHead
    If Not Opt = "" Then
        Call disablcontls
        Set adoPrimaryRS = New Recordset
        If MDOC = 0 Then
            Call qry1
            Opt = ""
        Else
        Call fnd1(MDOC)
    End If
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
        Call NEWFORM3(BUTTON, GSNO)
        If adoPrimaryRS.AbsolutePosition = -1 Then
            For Each oText In Me.Txtfields
                oText.Text = ""
            Next
        End If
        Exit Sub
    End If
    If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        Call bindcontls
        If Opt <> "add" Then
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveLast
            End If
        End If
        On Error GoTo er1
        desc.Caption = "Query"
    End If
    Call NEWFORM3(BUTTON, GSNO)
    Screen.MousePointer = 0
    Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Set grdDataGrid.DataSource = Nothing
    Screen.MousePointer = 0
    Call BUTTON_Click(10)
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form PO_Quotation", vbInformation, head
End Sub
Public Sub fnd1(MDOC As Long)
On Error GoTo fnd1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct TH.Divcode,TH.supcd,TH.DocDate from  RM_Suppliervariety th  where     " & _
    "  th.supcd >= " & MDOC & " Order by DOCDT,supcd} AS ParentCMD APPEND ({select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd  Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE supcd TO supcd,DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
fnd1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form FrmVariety Mapping"

End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
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
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''ExitCall BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
    Call BUTTON_Click(10)    ''Cancel
    Else
    If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
    End If
End If
End Sub


Private Sub SpdEmpAllocation_KeyDown(KeyCode As Integer, Shift As Integer)
    With SpdEmpAllocation
    
       
            If Opt = "add" Or Opt = "mod" Then
                If .MaxRows > 0 Then
                
                
                If (.ActiveCol = SpdAllocation.SPDCATDESC) And KeyCode = 9 Then

                    Set rsCat = New Recordset
                    rsCat.Open "select  CATNAME 'Category Name',catcd 'Category Code' from rm_cat where catname='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCATDESC, SpdEmpAllocation.ActiveRow)) & "'", DB, adOpenStatic
                    If rsCat.EOF Then

                       LookUp.Clear = True
                       LookUp.query = "select CATNAME 'Category Name',catcd 'Category Code' from rm_cat "
                       
                       LookUp.Caption = "Category Listing"
                       LookUp.DefCol = "Category Name"
                       LookUp.ALIGN = "4500,2500"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, LookUp.Fields(1)
                            .SetText SpdAllocation.SPDCATDESC, .ActiveRow, CStr(LookUp.Fields(0))
                            .Col = SpdAllocation.SPDVarietyName
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SpdAllocation.SPDCATDESC
                            .SetFocus
                            Exit Sub
                       End If
                    Else
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, rsCat(1)
                            .SetText SpdAllocation.SPDCATDESC, .ActiveRow, CStr(rsCat(0))
                    End If
                            
                       
                       
                   End If
                
                
                    If (.ActiveCol = SpdAllocation.SPDVarietyName) And KeyCode = 9 Then

                    Set rsVar = New Recordset
                    rsVar.Open "select VARCODE 'Variety Code',VARNAME 'Variety Name' ,catcd from rm_var where VARNAME='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDVarietyName, SpdEmpAllocation.ActiveRow)) & "' ", DB, adOpenStatic
                    If rsVar.EOF Then

                           LookUp.Clear = True
                           LookUp.query = "select VARCODE 'Variety Code',VARNAME 'Variety Name',CatCD from rm_var a where (catcd='" & Txtfields(2).Text & "' or '" & IIf(Txtfields(2).Text = "", "A", Txtfields(2).Text) & "' ='A') "
                           LookUp.Caption = "Variety Listing"
                           LookUp.DefCol = "Variety Name"
                           LookUp.ALIGN = "2000,3500,0"
                           LookUp.Show vbModal
                           If LookUp.Cancel = False Then
                            
                                .SetText SpdAllocation.SPDVariety, .ActiveRow, LookUp.Fields(0)
                                .SetText SpdAllocation.SPDVarietyName, .ActiveRow, CStr(LookUp.Fields(1))
                                .SetText SpdAllocation.SPDCAT, .ActiveRow, CStr(LookUp.Fields(2))
                                .SetText SpdAllocation.SPDSupplier, .ActiveRow, Trim(Txtfields(8).Text)
                                
                                        If MsgBox("Do you want to add another Variety?", vbYesNo, head) = vbYes Then
                                             SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                    
                                             SpdEmpAllocation.Col = SpdAllocation.SPDVariety
                                             SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                                             SpdEmpAllocation.SetFocus
                
                                         Else
                
                                         End If
                     
'                                .Col = SpdAllocation.SPDVCAPKGS
'                                .SetFocus
                                Exit Sub
    
                           Else
                                .Col = SpdAllocation.SPDVarietyName
                                .SetFocus
                                Exit Sub
                           End If
                      Else
                            .SetText SpdAllocation.SPDVariety, .ActiveRow, rsVar(0)
                            .SetText SpdAllocation.SPDVarietyName, .ActiveRow, CStr(rsVar(1))
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, CStr(rsVar(2))
                      End If
                           
                   End If
                   
 
                
                    If (.ActiveCol = SpdAllocation.SPDVarietyName) And KeyCode = 9 Then
                        If MsgBox("Do you want to add another Variety?", vbYesNo, head) = vbYes Then
                         SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1

                         SpdEmpAllocation.Col = SpdAllocation.SPDCATDESC
                         SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                         SpdEmpAllocation.SetFocus

                         Else

                         End If
                    End If
                    
                    
            End If
        End If
    End With
End Sub

Private Sub SpdSIZEORD_Click(ByVal Col As Long, ByVal Row As Long)
    SpdSIZEORD.OperationMode = OperationModeNormal
End Sub

Private Sub SpdSIZEORD_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
SpdSIZEORD.OperationMode = OperationModeRow
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
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, "Category", CellTypeStaticText, 14, 0, False, True
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

Private Sub SETDESPATCHHead()
With SpdEmpAllocation
        .ClearSelection
        .MaxRows = 0
       ' .ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDCATDESC2DESC
        .MaxCols = SPDVarietyName
        .Row = 1
      '  .TypeTextWordWrap = True
      '  .TypeHAlign = TypeHAlignLeft
        .FontBold = True
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDSNO, "S.No", CellTypeStaticText, 4, , False, True    'a

'
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVariety, "Variety Code", CellTypeStaticText, 20, , False, True 'd
        
           SpdEmpAllocation.Col = SpdAllocation.SPDVariety
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDVarietyName, "Variety", CellTypeEdit, 45, , False, False 'e
         SpdEmpAllocation.Col = SpdAllocation.SPDVarietyName
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft
        .Col = SpdAllocation.SPDSupplier
     '  .TypeNumberDecPlaces = "0"
         SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDSupplier, "Supplier", CellTypeStaticText, 12, , True, True 'i
         
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDCATDESC, "Category", CellTypeStaticText, 28, , True, True 'f
        SpdEmpAllocation.Col = SpdAllocation.SPDCATDESC
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft

        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDCAT, "Category Code", CellTypeStaticText, 12, , True, True  'i
        


        
    End With
End Sub

Public Sub qry1()
On Error GoTo qry1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct a.divcode,supcd,cast(DocDate as date) DocDate from RM_Suppliervariety a     " & _
    " Order by cast(DocDate as date) asc,supcd} AS ParentCMD APPEND ({select a.Divcode,a.docsno,Docdate,a.CATCD,a.VARCODE,a.SUPCD,c.CATNAME,bb.VARNAME  from RM_Suppliervariety a inner join rm_var bb on bb.varcode=a.varcode left join rm_cat c on a.catcd=c.catcd   Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE supcd TO supcd,DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub
qry1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmVariety Mapping"

End Sub
Private Sub Form_Resize()
    Buttonframe.Width = Me.Width
    intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Me.SetFocus
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            'Me.SetFocus
            Cancel = True
            Exit Sub
        End If
    End If

    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
intervalMinutes = -1
End Sub


Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.Txtfields
        oText.Locked = False
    Next
    'MaskEdBox2.Enabled = True
    If Opt = "add" Then
        DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    End If
    'FraDespatch.Enabled = True
End Sub


Private Sub Text1_Change()
     Dim position As Integer


            If Trim(Text1.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(SpdSIZEORD, SPDSBVARNAME, SpdSIZEORD.Row))) = UCase(Trim(Text1)), SpdSIZEORD.Row + 1, 1)
            For I = j To SpdSIZEORD.MaxRows + 1
            position = InStr(1, UCase(GetText(SpdSIZEORD, SPDSBVARNAME, I)), UCase(Trim(Text1)))
            
              '  If GetText(SPDPIECE, G_PieceNo, i) = Trim(txtfields(29)) Then
              If position > 0 Then
                    SpdSIZEORD.Row = I
                    SpdSIZEORD.SetSelection 1, SpdSIZEORD.Row, SpdSIZEORD.MaxCols, SpdSIZEORD.Row
                   ' IGrid_Click SPDPIECE.Col, SPDPIECE.Row
                    SpdSIZEORD.SetFocus
                     Text1.SetFocus
                    Exit For
                End If
            Next I
             Text1.SetFocus
End Sub

Private Sub txtFields_Change(Index As Integer)
Select Case Index
    Case 8
    Set TmpRs = New Recordset

    TmpRs.Open "Select slcode,slname From fa_slmas where slcode ='" & Txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
 
    If Not TmpRs.EOF Then
        Txtfields(7).Text = TmpRs("slname")
    Else
        Txtfields(7).Text = ""
    End If
    
'    Case 2
'    Set TmpRs = New Recordset
'    TmpRs.Open "Select VARCODE,depname From fa_slmas where slcode ='" & TXTFIELDS(2).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
'    If Not TmpRs.EOF Then
'        TXTFIELDS(1).Text = TmpRs("depname")
'    Else
'        TXTFIELDS(1).Text = ""
'    End If
    

    
    
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
'    Case 5
'        Call ToUpCase(TXTFIELDS(Index), KeyAscii, 15)
'        Call ToAlphaNumber(TXTFIELDS(Index), 15, KeyAscii)
'    Case 6
'        If Len(TXTFIELDS(Index).Text) = 2 And KeyAscii <> 8 Then
'            iKeyAscii = KeyAscii
'            KeyAscii = 0
'            KeyAscii = 58
'            SendKeys Chr(iKeyAscii)
'        ElseIf Len(TXTFIELDS(Index).Text) = 5 And KeyAscii <> 8 Then
'            iKeyAscii = KeyAscii
'            KeyAscii = 0
'            KeyAscii = 32
'            SendKeys Chr(iKeyAscii)
'        ElseIf Len(TXTFIELDS(Index).Text) > 5 And KeyAscii <> 8 Then
'            Call ToUpCase(TXTFIELDS(Index), KeyAscii, 8)
'            If KeyAscii = 65 Then
'                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "AM"
'            ElseIf KeyAscii = 80 Then
'                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "PM"
'            ElseIf (Right(TXTFIELDS(Index).Text, 2) <> "AM" And Right(TXTFIELDS(Index).Text, 2) <> "PM") Then
'                KeyAscii = 0
'            End If
'        ElseIf Len(TXTFIELDS(Index).Text) < 6 And KeyAscii <> 8 Then
'           ' Call ToNumNew(TXTFIELDS(Index), 8, KeyAscii)
'        End If
    
End Select
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 6
          '  BUTTON(9).SetFocus
    End Select

End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

If Opt = "add" Or Opt = "mod" Then
Select Case Index


Case 8
If Opt <> "add" Then
Exit Sub
End If
    If Txtfields(8).Text = "" Then
    
    
             Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sup = rs1("ptypecotton") ' & "%"
            Else
                sup = ""
            End If
        LookUp.Clear = True
  
        LookUp.query = "Select slcode ""Supplier Code"",slname  ""Supplier Name"" from  fa_slmas WHERE  left(slcode,2) in (select Items from dbo.split('" & sup & "',','))  and isnull(isactive,'N')='Y' and slcode not in (select distinct supcd from RM_Suppliervariety) and   country='INDIA'"
        
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
     
        LookUp.ALIGN = "1800,5500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(8).Text = LookUp.Fields(0)
        
            Txtfields(7).Text = LookUp.Fields(1)
            Txtfields(2).SetFocus
            
        Else
        
        End If
    End If

Case 2


    If Txtfields(2).Text = "" Then
        If Txtfields(8).Text = "" Then
            MsgBox "Please select Supplier ", vbInformation, head
            Txtfields(8).SetFocus
            Cancel = True
            Exit Sub
        End If
    
        LookUp.Clear = True
        LookUp.query = "Select catcd 'Category Code',CATname 'Category Name' FROM rm_cat  union select 'A', ' ALL' "
        
        LookUp.Caption = "Category Listing"
        LookUp.DefCol = "Category Name"

        LookUp.ALIGN = "1800,4500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(2).Text = LookUp.Fields(0)
            Txtfields(1).Text = LookUp.Fields(1)
            Text1.Text = ""
            If Opt = "add" And Loadflg = 0 Then
             Call SETDESPATCHHead
             Loadflg = 1
            End If
 

             FraOrd.ZOrder
            FraOrd.Visible = True
            Buttonframe.Enabled = False
            stbar.Panels(2).Text = "Select an Variety from the list"
            Call SETSIZEORDHead
            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset

            ItmRs.Open " select * from vw_VarietyList a wHERE (A.CATCD ='" & Trim(Txtfields(2).Text) & "' or '" & Trim(Txtfields(2).Text) & "'='A') and varcode not in (" & VarProd & ") and varcode not in (select varcode from RM_Suppliervariety where supcd='" & Trim(Txtfields(8).Text) & "')", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("catcd")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("catname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARNAME, RW, ItmRs("varname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBVARCODE, RW, ItmRs("varcode")

                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdSIZEORD.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            
'            FraOrd.ZOrder
'            FraOrd.Visible = True
'            Buttonframe.Enabled = False
'            stbar.Panels(2).Text = "Select an Employee from the list"
'            Call SETSIZEORDHead
'            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset
 Exit Sub
            ItmRs.Open " select distinct SUPCD,CATNAME,CATCD,VARCODE,ticketno from Vw_EmployeeAllocate a wHERE A.DIVCODE='" & Divcode & "' AND A.CATCD ='" & Trim(Txtfields(8).Text) & "' and A.VARCODE ='" & Trim(Txtfields(9).Text) & "' and doj<='" & Format(pdate, "yyyy-mm-dd") & "' and (dor is null or dor>='" & Format(pdate, "yyyy-mm-dd") & "') and  SUPCD not in (select SUPCD from RM_Suppliervariety where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and CATCD='" & Txtfields(8).Text & "' and VARCODE='" & Txtfields(9).Text & "') ", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("VARNAME")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("ticketno")
                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, RW, SpdEmpAllocation.MaxRows
                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, RW, ItmRs("SUPCD")
               

                SpdEmpAllocation.SetText SpdAllocation.SPDVarietyName, RW, ItmRs("CATNAME")
                SpdEmpAllocation.SetText SpdAllocation.SPDCATDESC, RW, ItmRs("ticketno")
                SpdEmpAllocation.SetText SpdAllocation.SPDCAT, RW, ItmRs("CATCD")
                SpdEmpAllocation.SetText SpdAllocation.SPDVariety, RW, ItmRs("VARCODE")
            
     
                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdEmpAllocation.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            Exit Sub
            
        Else
        
        End If
    End If


End Select
End If
End Sub




