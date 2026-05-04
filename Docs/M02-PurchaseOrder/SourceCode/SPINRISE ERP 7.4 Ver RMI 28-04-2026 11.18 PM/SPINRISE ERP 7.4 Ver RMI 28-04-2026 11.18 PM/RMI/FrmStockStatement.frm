VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmStockStatement 
   Caption         =   "Stock Stament"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   585
      Left            =   765
      ScaleHeight     =   555
      ScaleWidth      =   8445
      TabIndex        =   10
      Top             =   6285
      Width           =   8475
      Begin VB.CommandButton CmdCrystal 
         Caption         =   "&Report"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2550
         TabIndex        =   12
         ToolTipText     =   "(Alt R)"
         Top             =   45
         Width           =   1305
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3975
         TabIndex        =   11
         ToolTipText     =   "(Alt x)"
         Top             =   45
         Width           =   1485
      End
   End
   Begin VB.PictureBox FraVarStocktype 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   3045
      Left            =   1995
      ScaleHeight     =   3015
      ScaleWidth      =   6615
      TabIndex        =   0
      Top             =   2625
      Visible         =   0   'False
      Width           =   6645
      Begin MSComCtl2.DTPicker Dt_From 
         Height          =   375
         Left            =   2205
         TabIndex        =   1
         Top             =   720
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   78905345
         CurrentDate     =   39256
      End
      Begin MSComCtl2.DTPicker Dt_To 
         Height          =   375
         Left            =   2205
         TabIndex        =   2
         Top             =   1215
         Width           =   1425
         _ExtentX        =   2514
         _ExtentY        =   661
         _Version        =   393216
         Format          =   78905345
         CurrentDate     =   39256
      End
      Begin MSDataListLib.DataCombo cmb_FromVariety 
         Height          =   315
         Left            =   2205
         TabIndex        =   3
         Top             =   1710
         Width           =   4260
         _ExtentX        =   7514
         _ExtentY        =   556
         _Version        =   393216
         Appearance      =   0
         Style           =   2
         Text            =   ""
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
      Begin MSDataListLib.DataCombo cmb_Tovariety 
         Height          =   315
         Left            =   2205
         TabIndex        =   4
         Top             =   2175
         Width           =   4200
         _ExtentX        =   7408
         _ExtentY        =   556
         _Version        =   393216
         Appearance      =   0
         Style           =   2
         Text            =   ""
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
      Begin VB.Label L_FraHead 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Stock Statement"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   0
         TabIndex        =   9
         Top             =   -15
         Width           =   6615
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
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
         Index           =   0
         Left            =   645
         TabIndex        =   8
         Top             =   810
         Width           =   885
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
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
         Index           =   3
         Left            =   645
         TabIndex        =   7
         Top             =   1305
         Width           =   705
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Variety"
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
         Index           =   4
         Left            =   645
         TabIndex        =   6
         Top             =   1770
         Width           =   1065
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Variety"
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
         Index           =   5
         Left            =   630
         TabIndex        =   5
         Top             =   2220
         Width           =   885
      End
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   780
      Top             =   7845
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   1020
      Top             =   7860
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   360
      Top             =   7950
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   705
      Top             =   4755
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "FrmStockStatement"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As New Connection
Dim TmpRs As New Recordset
Dim subrs As New Recordset
Dim temprs, rscn As New Recordset
Dim Rs As New Recordset
Dim Rptname As eRepName

Public Enum eRepName
    RptStockStamentType = 1
End Enum

Public Property Let eReportName(eRep As eRepName)
    Rptname = eRep
End Property
Private Sub Form_Load()
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open "PROVIDER=MSDataShape;" + connectstring
    
End Sub

Private Sub loadBottomframe(obj As Object)
    FraPrint.Move obj.Left, obj.Top + obj.Height + 100, obj.Width, FraPrint.Height
    CmdCrystal.Move (FraPrint.Width - CmdCrystal.Width - CmdExit.Width - 100) / 2, CmdCrystal.Top, CmdCrystal.Width, CmdCrystal.Height
    CmdExit.Move CmdCrystal.Width + CmdCrystal.Left + 100, CmdExit.Top, CmdExit.Width, CmdExit.Height

End Sub
Private Sub CmdExit_Click()
Unload Me
End Sub
Private Sub Form_Resize()
Select Case Rptname
Case RptStockStamentType
    FraVarStocktype.Move (FrmStockStatement.Width - FraPRNote.Width - 500) / 2, (FrmStockStatement.Height - FraVarStocktype.Height - FraPrint.Height) / 2 - 1000, FraVarStocktype.Width, FraVarStocktype.Height
    loadBottomframe FraVarStocktype

End Select

End Sub
