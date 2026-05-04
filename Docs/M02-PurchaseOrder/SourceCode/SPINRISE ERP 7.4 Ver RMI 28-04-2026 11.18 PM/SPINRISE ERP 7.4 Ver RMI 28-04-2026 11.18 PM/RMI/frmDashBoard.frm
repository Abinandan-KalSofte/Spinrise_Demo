VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form frmDashBoard 
   BackColor       =   &H00FFF4E1&
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   10005
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   14535
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   10005
   ScaleWidth      =   14535
   ShowInTaskbar   =   0   'False
   Begin MSComctlLib.ProgressBar Pbar 
      Height          =   195
      Left            =   300
      TabIndex        =   32
      Top             =   9690
      Visible         =   0   'False
      Width           =   11040
      _ExtentX        =   19473
      _ExtentY        =   344
      _Version        =   393216
      BorderStyle     =   1
      Appearance      =   0
      OLEDropMode     =   1
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Refresh"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   12135
      Style           =   1  'Graphical
      TabIndex        =   31
      Top             =   9585
      Width           =   1005
   End
   Begin VB.CommandButton Command1 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Palatino Linotype"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   13230
      Style           =   1  'Graphical
      TabIndex        =   30
      Top             =   9585
      Width           =   1005
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2535
      Left            =   3885
      TabIndex        =   0
      Top             =   90
      Width           =   6930
      _ExtentX        =   12224
      _ExtentY        =   4471
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   2475
         Left            =   15
         TabIndex        =   1
         Top             =   30
         Width           =   6885
         Begin FPSpreadADO.fpSpread spdRec 
            Height          =   2190
            Left            =   60
            TabIndex        =   2
            Top             =   210
            Width           =   6750
            _Version        =   524288
            _ExtentX        =   11906
            _ExtentY        =   3863
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   4
            MaxRows         =   5
            OperationMode   =   1
            ScrollBars      =   2
            SelectBlockOptions=   0
            ShadowColor     =   14005696
            ShadowDark      =   16777215
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":001C
            ScrollBarTrack  =   1
            ShowScrollTips  =   1
            AppearanceStyle =   0
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Varietywise Receipt"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   210
            TabIndex        =   6
            Top             =   -30
            Width           =   6495
         End
      End
   End
   Begin TabDlg.SSTab SSTab2 
      Height          =   2580
      Left            =   300
      TabIndex        =   3
      Top             =   2715
      Width           =   6945
      _ExtentX        =   12250
      _ExtentY        =   4551
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":0706
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame2 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   2520
         Left            =   15
         TabIndex        =   4
         Top             =   30
         Width           =   6885
         Begin FPSpreadADO.fpSpread spdVarIss 
            Height          =   2190
            Left            =   105
            TabIndex        =   5
            Top             =   270
            Width           =   6750
            _Version        =   524288
            _ExtentX        =   11906
            _ExtentY        =   3863
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   4
            MaxRows         =   5
            OperationMode   =   1
            ScrollBars      =   2
            ShadowColor     =   15661779
            ShadowDark      =   14613142
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":0722
            ScrollBarTrack  =   1
            ShowScrollTips  =   1
            AppearanceStyle =   0
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Varietywise Issue"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   255
            Left            =   225
            TabIndex        =   7
            Top             =   0
            Width           =   6675
         End
      End
   End
   Begin TabDlg.SSTab SSTab3 
      Height          =   2580
      Left            =   7290
      TabIndex        =   8
      Top             =   2670
      Width           =   6945
      _ExtentX        =   12250
      _ExtentY        =   4551
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":0E7C
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame3"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame3 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   2520
         Left            =   30
         TabIndex        =   9
         Top             =   30
         Width           =   6900
         Begin FPSpreadADO.fpSpread spdMix 
            Height          =   2190
            Left            =   60
            TabIndex        =   10
            Top             =   270
            Width           =   6750
            _Version        =   524288
            _ExtentX        =   11906
            _ExtentY        =   3863
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   4
            MaxRows         =   5
            OperationMode   =   1
            ScrollBars      =   2
            ShadowColor     =   15661779
            ShadowDark      =   16777215
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":0E98
            ScrollBarTrack  =   1
            ShowScrollTips  =   1
            AppearanceStyle =   0
         End
         Begin VB.Label Label3 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Mixwise Issue"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   255
            Left            =   30
            TabIndex        =   11
            Top             =   0
            Width           =   7005
         End
      End
   End
   Begin TabDlg.SSTab SSTab4 
      Height          =   2265
      Left            =   300
      TabIndex        =   12
      Top             =   5295
      Width           =   6945
      _ExtentX        =   12250
      _ExtentY        =   3995
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":15EA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame4 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   2190
         Left            =   30
         TabIndex        =   13
         Top             =   30
         Width           =   6885
         Begin FPSpreadADO.fpSpread spdStk 
            Height          =   1620
            Left            =   60
            TabIndex        =   14
            Top             =   270
            Width           =   6750
            _Version        =   524288
            _ExtentX        =   11906
            _ExtentY        =   2858
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   4
            MaxRows         =   5
            OperationMode   =   1
            ScrollBarExtMode=   -1  'True
            ScrollBars      =   2
            ShadowColor     =   16764671
            ShadowDark      =   16777215
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":1606
            ScrollBarTrack  =   3
            AppearanceStyle =   0
         End
         Begin VB.Label lblstkUp 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Stock Will Last Up To : "
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00C000C0&
            Height          =   300
            Left            =   120
            TabIndex        =   24
            Top             =   1905
            Width           =   6360
         End
         Begin VB.Label lblStk 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Varietywise Stock As On"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   0
            TabIndex        =   15
            Top             =   0
            Width           =   6765
         End
      End
   End
   Begin TabDlg.SSTab SSTab5 
      Height          =   2280
      Left            =   7290
      TabIndex        =   16
      Top             =   5280
      Width           =   6945
      _ExtentX        =   12250
      _ExtentY        =   4022
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":1C96
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame5"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame5 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   2190
         Left            =   30
         TabIndex        =   17
         Top             =   30
         Width           =   6870
         Begin MSChart20Lib.MSChart MSChart1 
            Height          =   2025
            Left            =   450
            OleObjectBlob   =   "frmDashBoard.frx":1CB2
            TabIndex        =   20
            Top             =   360
            Width           =   6120
         End
         Begin VB.Label Label4 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "   Values In Lakhs"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   225
            Left            =   4980
            TabIndex        =   33
            Top             =   60
            Width           =   1440
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Variety Vs Stock Value"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   345
            Left            =   30
            TabIndex        =   19
            Top             =   90
            Width           =   6525
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "  "
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   480
            Left            =   0
            TabIndex        =   18
            Top             =   0
            Width           =   6525
         End
      End
   End
   Begin TabDlg.SSTab SSTab6 
      Height          =   1965
      Left            =   300
      TabIndex        =   21
      Top             =   7605
      Width           =   6930
      _ExtentX        =   12224
      _ExtentY        =   3466
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":43AA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame6"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame6 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   1905
         Left            =   30
         TabIndex        =   22
         Top             =   30
         Width           =   6870
         Begin FPSpreadADO.fpSpread spdSup 
            Height          =   1620
            Left            =   60
            TabIndex        =   25
            Top             =   210
            Width           =   6735
            _Version        =   524288
            _ExtentX        =   11880
            _ExtentY        =   2858
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   3
            MaxRows         =   5
            OperationMode   =   1
            ScrollBars      =   0
            ShadowColor     =   12308991
            ShadowDark      =   16777215
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":43C6
            AppearanceStyle =   0
         End
         Begin VB.Label lblSup 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Top 5 Suppliers For The Month Of"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   240
            Left            =   60
            TabIndex        =   23
            Top             =   -30
            Width           =   6690
         End
      End
   End
   Begin TabDlg.SSTab SSTab7 
      Height          =   1965
      Left            =   7290
      TabIndex        =   26
      Top             =   7590
      Width           =   6930
      _ExtentX        =   12224
      _ExtentY        =   3466
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BackColor       =   0
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmDashBoard.frx":4987
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         BackColor       =   &H00FFF4E1&
         BorderStyle     =   0  'None
         Height          =   1905
         Left            =   30
         TabIndex        =   27
         Top             =   30
         Width           =   6840
         Begin FPSpreadADO.fpSpread spdarea 
            Height          =   1620
            Left            =   60
            TabIndex        =   28
            Top             =   210
            Width           =   6705
            _Version        =   524288
            _ExtentX        =   11827
            _ExtentY        =   2858
            _StockProps     =   64
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Palatino Linotype"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            MaxCols         =   3
            MaxRows         =   5
            OperationMode   =   1
            ScrollBars      =   0
            ShadowColor     =   12308991
            ShadowDark      =   16777215
            ShadowText      =   0
            SpreadDesigner  =   "frmDashBoard.frx":49A3
            AppearanceStyle =   0
         End
         Begin VB.Label lblSta 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "Top 5 Stations For The Month Of"
            BeginProperty Font 
               Name            =   "Palatino Linotype"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000C0&
            Height          =   270
            Left            =   120
            TabIndex        =   29
            Top             =   -30
            Width           =   6600
         End
      End
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   135
      Top             =   2625
   End
   Begin VB.Image Image2 
      Height          =   2505
      Left            =   10905
      Stretch         =   -1  'True
      Top             =   90
      Width           =   3270
   End
   Begin VB.Image Image1 
      Height          =   1950
      Left            =   255
      Stretch         =   -1  'True
      Top             =   135
      Width           =   3450
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   9945
      Left            =   60
      Top             =   30
      Width           =   14415
   End
End
Attribute VB_Name = "frmDashBoard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Option Explicit
'Option Compare Text
'Dim Rs As Recordset
'Dim iIndex As Integer
'Private fblnLoad As Boolean
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Command1_Click
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Command1_Click()
'On Error GoTo Command1_Click_Error
'
'Unload Me
'
'Exit Sub
'Command1_Click_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
''---------------------------------------------------------------------------------------
'' Procedure : Command2_Click
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Command2_Click()
'On Error GoTo Command2_Click_Error
'
'Load_all
'
'Exit Sub
'Command2_Click_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
''---------------------------------------------------------------------------------------
'' Procedure : Form_Activate
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Form_Activate()
'On Error GoTo Form_Activate_Error
'
'Me.Move Screen.Width / 96, Screen.Height / 96
'If fblnLoad Then Exit Sub
'fblnLoad = True
'Load_all
'
'Exit Sub
'Form_Activate_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
''---------------------------------------------------------------------------------------
'' Procedure : Form_Load
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Form_Load()
'On Error GoTo Form_Load_Error
'Dim fso As New FileSystemObject
'
'    If fso.FileExists(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Logo\DivLogo.JPG") Then
'        Image1.Picture = LoadPicture(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Logo\DivLogo.JPG")
'    End If
'    If fso.FileExists(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Logo\Cotton.JPG") Then
'        Image2.Picture = LoadPicture(Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Logo\Cotton.JPG")
'    End If
'
'Exit Sub
'Form_Load_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
''---------------------------------------------------------------------------------------
'' Procedure : Form_QueryUnload
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
'On Error GoTo Form_QueryUnload_Error
'
'Set frmDashBoard = Nothing
'
'Exit Sub
'Form_QueryUnload_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_QueryUnload of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_VarietyWiseReceipt
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_VarietyWiseReceipt()
'Dim Lrs As New ADODB.Recordset
'Dim lstrSql As String
'Dim llngtrow As Long
'
'On Error GoTo Load_VarietyWiseReceipt_Error
'Set Rs = New Recordset
'
'Rs.Open "SELECT b.varcode FROM rm_lot a,Rm_var b WHERE a.VARCODE=b.varcode AND A.OPFLG = 'N' GROUP BY b.VARCODE", DB, adOpenStatic
'If Rs.EOF = False Then
'    spdRec.MaxRows = Rs.RecordCount '+ 1
'Else
'    spdRec.MaxRows = 5
'End If
'
'If spdRec.MaxRows >= 5 Then spdRec.MaxRows = 5
'
'lstrSql = " SELECT TOP " & spdRec.MaxRows & " (SELECT Varname FROM RM_VAR WHERE VARCODE = a.VARCODE) AS Varcode, (SELECT  sum(NETWT * ratekg) FROM RM_LOT WHERE OPFLG = 'N' AND LOTDT = '" & Format(pdate, "yyyy-MM-dd") & "'  AND  VARCODE = a.varcode) AS ForDay,"
'lstrSql = lstrSql & " (SELECT  sum(NETWT * ratekg) FROM RM_LOT WHERE OPFLG = 'N' AND month(LOTDT) = '" & MONTH(pdate) & "'  AND  VARCODE = a.varcode) AS ForMon ,"
'lstrSql = lstrSql & " (SELECT  sum(NETWT * ratekg) FROM RM_LOT WHERE OPFLG = 'N' AND year(LOTDT) = '" & Year(pdate) & "'  AND   VARCODE = a.varcode) AS ForYr"
'lstrSql = lstrSql & " FROM RM_LOT AS A WHERE A.OPFLG = 'N' GROUP BY A.VARCODE  ORDER BY 2 desc"
'
'spdRec.ClearRange 1, 1, spdRec.MaxCols, spdRec.MaxRows, True
'
'Set Lrs = DB.Execute(lstrSql)
'
'If Not Lrs.EOF Then
'    Do While Not Lrs.EOF
'        llngtrow = llngtrow + 1
'        spdRec.SetText 1, llngtrow, Lrs(0)
'        spdRec.SetText 2, llngtrow, Lrs(1)
'        spdRec.SetText 3, llngtrow, Lrs(2)
'        spdRec.SetText 4, llngtrow, Lrs(3)
'
'        Lrs.MoveNext
'
'    Loop
'End If
'
'Lrs.Close
'
'
'Exit Sub
'Load_VarietyWiseReceipt_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_VarietyWiseReceipt of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_VarietyWiseissue
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_VarietyWiseissue()
'Dim Lrs As New ADODB.Recordset
'Dim lrsNew As New ADODB.Recordset
'Dim lstrSql As String
'Dim llngRow As Long
'
'On Error GoTo Load_VarietyWiseissue_Error
'Set Rs = New Recordset
'Rs.Open "SELECT a.varcode FROM RM_VAR a, Rm_issb b WHERE a.VARCODE=b.varcode GROUP BY a.varcode", DB, adOpenStatic
'If Rs.EOF = False Then
'    spdVarIss.MaxRows = Rs.RecordCount
'Else
'    spdVarIss.MaxRows = 5
'End If
'
'If spdVarIss.MaxRows > 5 Then spdVarIss.MaxRows = 5
'lstrSql = " SELECT   top " & spdVarIss.MaxRows & "  (SELECT Varname FROM RM_VAR WHERE VARCODE = a.VARCODE), (SELECT   sum(isskgs)   FROM RM_ISSB where DOCDT = '" & Format(pdate, "yyyy/MM/dd") & "' and VARCODE = a.varcode ) AS isskgs ,  "
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB where  month (DOCDT) = '" & MONTH(pdate) & "' and VARCODE = a.varcode ) AS IssMon,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)  FROM RM_ISSB where  year (DOCDT) = '" & Year(pdate) & "' and VARCODE = a.varcode  ) AS IssYr"
'lstrSql = lstrSql & " FROM RM_ISSB AS A  GROUP BY VARCODE  order by 2 DESC "
'
'spdVarIss.ClearRange 1, 1, spdVarIss.MaxCols, spdVarIss.MaxRows, True
'Set Lrs = DB.Execute(lstrSql)
'
'If Not Lrs.EOF Then
'    Do While Not Lrs.EOF
'        llngRow = llngRow + 1
'
'        spdVarIss.SetText 1, llngRow, Lrs(0)
'        spdVarIss.SetText 2, llngRow, Lrs(1)
'        spdVarIss.SetText 3, llngRow, Lrs(2)
'        spdVarIss.SetText 4, llngRow, Lrs(3)
'
'        Lrs.MoveNext
'    Loop
'End If
'
'
'Exit Sub
'Load_VarietyWiseissue_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_VarietyWiseissue of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
'Private Sub Load_MixWiseIssue()
'Dim Lrs As New ADODB.Recordset
'Dim lstrSql As String
'Dim llngRow As Long
'
'On Error GoTo Load_MixWiseIssue_Error
'Set Rs = New Recordset
'Rs.Open "SELECT a.varcode FROM RM_VAR a, Rm_issb b WHERE a.VARCODE=b.varcode GROUP BY a.varcode", DB, adOpenStatic
'If Rs.EOF = False Then
'    spdMix.MaxRows = Rs.RecordCount
'Else
'    spdMix.MaxRows = 5
'End If
'
'If spdMix.MaxRows >= 5 Then spdMix.MaxRows = 5
'
'lstrSql = " SELECT   top " & spdMix.MaxRows & "  (SELECT mixGrpName FROM RM_MIxGrp WHERE MixGrpCd = H.MIXGRP) as mix ,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where  RM_ISSB.DOCNO = RM_ISSH.DOCNO AND RM_ISSB.DIVCODE = RM_ISSH.DIVCODE"
'lstrSql = lstrSql & " AND    RM_ISSB.DOCDT = '" & Format(pdate, "yyyy-MM-dd") & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ) AS IssDay,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where  RM_ISSB.DOCNO = RM_ISSH.DOCNO AND RM_ISSB.DIVCODE = RM_ISSH.DIVCODE"
'lstrSql = lstrSql & " AND    month (RM_ISSB.DOCDT) = '" & MONTH(pdate) & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ) AS IssMon,"
'lstrSql = lstrSql & " (SELECT   sum(isskgs)  FROM RM_ISSB,RM_ISSH where  year (RM_ISSB.DOCDT) = '" & Year(pdate) & "'  AND"
'lstrSql = lstrSql & " RM_ISSB.docNo = RM_ISSH.docNo And RM_ISSB.Divcode = RM_ISSH.Divcode And RM_ISSH.mixgrp = h.mixgrp And RM_ISSH.Divcode = h.Divcode"
'lstrSql = lstrSql & " ) AS IssYr FROM RM_ISSB AS A , RM_ISSH AS H  WHERE  H.DivCode  = '" & Divcode & "' AND (SELECT mixGrpName FROM RM_MIxGrp WHERE MixGrpCd = H.MIXGRP) is not null "
'lstrSql = lstrSql & " GROUP BY MIXGRP,h.DIVCODE "
''lstrSql = lstrSql & " Having "
''lstrSql = lstrSql & " isnull((SELECT   sum(isskgs)   FROM RM_ISSB , RM_ISSH where"
''lstrSql = lstrSql & " RM_ISSB.docNo = RM_ISSH.docNo And RM_ISSB.Divcode = RM_ISSH.Divcode"
''lstrSql = lstrSql & " and  month (RM_ISSB.DOCDT) = '" & MONTH(pdate) & "' and RM_ISSH.MIXGRP = H.MIXGRP AND RM_ISSH.DIVCODE = h.DIVCODE ),0) > 0"
''lstrSql = lstrSql & "  order by 2 DESC"
'
'spdMix.ClearRange 1, 1, spdMix.MaxCols, spdMix.MaxRows, True
'Set Lrs = DB.Execute(lstrSql)
'
'If Not Lrs.EOF Then
'    Do While Not Lrs.EOF
'
'        llngRow = llngRow + 1
'
'        spdMix.SetText 1, llngRow, Lrs(0)
'        spdMix.SetText 2, llngRow, Lrs(1)
'        spdMix.SetText 3, llngRow, Lrs(2)
'        spdMix.SetText 4, llngRow, Lrs(3)
'        Lrs.MoveNext
'    Loop
'End If
'
'Lrs.Close
'
'Exit Sub
'Load_MixWiseIssue_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_MixWiseIssue of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_StoCk
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_StoCk()
'
'Dim lstrSql As String
'Dim Lrs As New ADODB.Recordset
'Dim llngRow As Long
'Dim arr() As String
'Dim F_Date As String
'Dim T_Date As String
'
'On Error GoTo Load_StoCk_Error
'
' F_Date = Format(pdate, "dd-mm-yyyy")
' T_Date = Format(pdate, "dd-mm-yyyy")
'
' Lrs.Open " SELECT Top 5 Varn, sum(Bales),sum(Stock), sum(val) FROM (select b.varcode,a.varname as Varn,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,a.varname, (Result.clobales + Result.cloboras) as bales," & _
'                            " Result.clokgs as stock,closevalue as val," & _
'                            " b.plotno,b.ratecy as RateCandy ,b.ratekg from " & _
'                            " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                            " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                            " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                            " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                            " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                            " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                            " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                            " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                            " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                            " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                            " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                            " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'   AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                            " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                            " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                            " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'   and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                            " rm_lot b,rm_Var a,RM_Cat c where (b.TransferType='' OR b.TransferType='JR')  and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd  group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                            " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg ) as x GROUP BY x.varcode,Varn order by  2 desc ", DB, adOpenStatic, adLockBatchOptimistic
'
'
'
'spdStk.ClearRange 1, 1, spdStk.MaxCols, 5, True
'
''Set Lrs = DB.Execute(lstrSql)
'ReDim arr(4, 1)
'
'MSChart1.ColumnCount = 5
'
'If Not Lrs.EOF Then
'    Do While Not Lrs.EOF
'        llngRow = llngRow + 1
'
'        spdStk.SetText 1, llngRow, Lrs(0)
'        spdStk.SetText 2, llngRow, Lrs(1)
'        spdStk.SetText 3, llngRow, Lrs(2)
'        spdStk.SetText 4, llngRow, Lrs(3)
'
'        arr(llngRow - 1, 0) = Lrs(0)
'        arr(llngRow - 1, 1) = (Lrs(3) / 100000)
'
'        MSChart1.Column = llngRow
'        MSChart1.ColumnLabel = Lrs(0)
'
'        Lrs.MoveNext
'    Loop
'End If
'
'MSChart1.ChartData = arr
'
'Lrs.Close
'
'Exit Sub
'Load_StoCk_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_StoCk of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_To5Sup
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_To5Sup()
'Dim Lrs As New ADODB.Recordset
'Dim lstrSql As String
'Dim llngRow As Long
'
'
'On Error GoTo Load_To5Sup_Error
'
'lstrSql = " SELECT TOP 5 (SELECT slname FROM FA_SLMAS WHERE slcode = a.SUPCD) AS Varcode, sum(NETWT * ratekg) AS Value ,sum(NetWt) AS Weght"
'
'lstrSql = lstrSql & " FROM RM_LOT AS A WHERE A.OPFLG = 'N' AND month( A.LOTDT) =  '" & MONTH(pdate) & "'  GROUP BY A.SUPCD  ORDER BY 2 DESC"
'
'
'spdSup.ClearRange 1, 1, spdStk.MaxCols, 5, True
'
'Set Lrs = DB.Execute(lstrSql)
'
'If Not Lrs.EOF Then
'    Do While Not Lrs.EOF
'        llngRow = llngRow + 1
'
'        spdSup.SetText 1, llngRow, Lrs(0)
'        spdSup.SetText 2, llngRow, Lrs(2)
'        spdSup.SetText 3, llngRow, Lrs(1)
'
'
'        Lrs.MoveNext
'    Loop
'End If
'Lrs.Close
'
'Exit Sub
'Load_To5Sup_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_To5Sup of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_TopArea
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_TopArea()
'Dim lstrSql As String
'Dim Lrs As New ADODB.Recordset
'Dim llngRow As Long
'
'On Error GoTo Load_TopArea_Error
'
'lstrSql = " SELECT TOP 5 (SELECT AreaName FROM Rm_Area WHERE AreaCode = a.AREACD) AS Area, sum(NETWT * ratekg) AS Value ,sum(NetWt) AS Weght "
'
'lstrSql = lstrSql & " FROM RM_LOT AS A WHERE A.OPFLG = 'N' AND month( A.LOTDT) =  '" & MONTH(pdate) & "'   GROUP BY A.AREACD  ORDER BY 2 DESC "
'
'Set Lrs = DB.Execute(lstrSql)
'spdarea.ClearRange 1, 1, spdarea.MaxCols, 5, True
'If Not Lrs.EOF Then
'
'    Do While Not Lrs.EOF
'        llngRow = llngRow + 1
'        spdarea.SetText 1, llngRow, Lrs(0)
'        spdarea.SetText 2, llngRow, Lrs(2)
'        spdarea.SetText 3, llngRow, Lrs(1)
'        Lrs.MoveNext
'    Loop
'End If
'
'Lrs.Close
'
'Exit Sub
'Load_TopArea_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_TopArea of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'End Sub
'
'
''---------------------------------------------------------------------------------------
'' Procedure : Load_All
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub Load_all()
'On Error GoTo Load_All_Error
'
'lblStk.Caption = "Varietywise Stock As On " & Format(pdate, "dd/mm/yyyy")
'lblSup.Caption = "Top 5 Suppliers For The Month Of " & MonthName(MONTH(pdate), False)
'lblSta.Caption = "Top 5 Stations For The Month Of " & MonthName(MONTH(pdate), False)
'
'spdarea.ClearRange 1, 1, 3, 5, True
'spdMix.ClearRange 1, 1, 4, 5, True
'spdVarIss.ClearRange 1, 1, 4, 5, True
'spdRec.ClearRange 1, 1, 4, 5, True
'spdStk.ClearRange 1, 1, 4, 5, True
'spdSup.ClearRange 1, 1, 3, 5, True
'
'spdarea.ReDraw = False
'spdMix.ReDraw = False
'spdVarIss.ReDraw = False
'spdRec.ReDraw = False
'spdStk.ReDraw = False
'spdSup.ReDraw = False
'
'
'Load_VarietyWiseissue
'Load_MixWiseIssue
'Load_StoCk
'Load_VarietyWiseReceipt
'Load_To5Sup
'Load_TopArea
'LoadStkUpTo
'
'spdarea.ReDraw = True
'spdMix.ReDraw = True
'spdVarIss.ReDraw = True
'spdRec.ReDraw = True
'spdStk.ReDraw = True
'spdSup.ReDraw = True
'
'
'Exit Sub
'Load_All_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load_All of Form frmDashBoard", vbInformation, head
'Screen.MousePointer = 0
'
'End Sub
'
'
''---------------------------------------------------------------------------------------
'' Procedure : LoadStkUpTo
'' DateTime  : 07/12/2008 14:57
'' Author    : S.VinothKumar
'' Purpose   : Error Handling
''---------------------------------------------------------------------------------------
''
'Private Sub LoadStkUpTo()
'Dim lstrSql As String
'Dim ldblAvgStk As Double
'Dim ldblCurStk As Double
'
'Dim Lrs As New ADODB.Recordset
'
'On Error GoTo LoadStkUpTo_Error
'
'lstrSql = " SELECT sum(x.kgs) / 10 AS kg FROM(SELECT TOP 10  sum(isskgs) AS Kgs FROM RM_ISSB where  DOCDT <= '" & Format(pdate, "yyyy-mm-dd") & "'   GROUP BY DOCDT ORDER BY 1 DESC ) AS x"
'
'Set Lrs = DB.Execute(lstrSql)
'
'If Not Lrs.EOF Then
'    ldblAvgStk = Lrs(0)
'End If
'Lrs.Close
'
'lstrSql = " SELECT   sum(Stock) from "
'lstrSql = lstrSql & "   ("
'lstrSql = lstrSql & " select distinct C.VARNAME AS Varn,"
'lstrSql = lstrSql & " Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,"
'lstrSql = lstrSql & " Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,"
'lstrSql = lstrSql & " round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',"
'lstrSql = lstrSql & " round(isnull(ratecy,0)/355.616,2) 'Rate/qu',"
'lstrSql = lstrSql & " (isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'"
'lstrSql = lstrSql & " from rm_lot a,rm_cat b,rm_var c"
'lstrSql = lstrSql & " where (a.rejflg= 'N' or a.rejdt>'" & Format(pdate, "yyyy-mm-dd") & "')"
'lstrSql = lstrSql & " and a.CATCD = b.CATCD and a.TransferType=''"
'lstrSql = lstrSql & " and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode"
'lstrSql = lstrSql & " and (a.rejflg='N' or a.rejdt>'" & Format(pdate, "yyyy-mm-dd") & "') and a.lotyear ='" & Year(yfdate) & "'"
'lstrSql = lstrSql & " AND C.CATCD=B.CATCD group by C.VARNAME , a.BALES , a.ISSBAL,a.bblflg , a.netwt, a.ISSWT,a.RATECY) X"
''lstrSql = lstrSql & " GROUP BY x.Varn ORDER BY 2 desc"
'
'    Set Lrs = DB.Execute(lstrSql)
'
'    If Not Lrs.EOF Then
'        ldblCurStk = IIf(IsNull(Lrs(0)), 0, Lrs(0))
'    End If
'    Lrs.Close
'
'    If ldblAvgStk > 0 Then
'        lblstkUp.Caption = "Stock Will Last Up To : " & DateAdd("D", Round(Format(val(ldblCurStk / ldblAvgStk), ".000")), pdate)
'        RTBHead1.Text = "Stock Will Last Up To : "
'        RTBHead2.Text = DateAdd("D", Round(Format(val(ldblCurStk / ldblAvgStk), ".000")), pdate)
'
'    Else
'    End If
'
'    Exit Sub
'LoadStkUpTo_Error:
'        MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LoadStkUpTo of Form frmDashBoard", vbInformation, head
'    Screen.MousePointer = 0
'
'End Sub
'
'Private Sub Timer1_Timer()
'Timer1.Interval = 1000
'    iIndex = iIndex + 1
'
'    RTBHead1.SelStart = 0
'    RTBHead1.SelLength = Len(RTBHead1.Text)
'    RTBHead1.SelColor = &HC0&
'
'    If Len(RTBHead2.Text) > 0 Then
'        If (iIndex / 2) = 1 Then
'            RTBHead2.SelStart = 0
'            RTBHead2.SelLength = Len(RTBHead2.Text)
'            RTBHead2.SelColor = &HFF0000
'            iIndex = 0
'        Else
'            RTBHead2.SelStart = 0
'            RTBHead2.SelLength = Len(RTBHead2.Text)
'            RTBHead2.SelColor = &HFF00&
'        End If
'
''        If Len(RTBHead.Text) > iIndex Then
''
''            RTBHead1.SelStart = iIndex
''            RTBHead1.SelLength = 1
''            RTBHead1.SelColor = &HFF&
''
''        Else
''
''            iIndex = -1
''            RTBHead1.SelStart = 0
''            RTBHead1.SelLength = Len(RTBHead.Text)
''            RTBHead1.SelColor = &HFF0000
''
''        End If
'
''         iIndex = iIndex + 1
'
'    End If
'
'End Sub
