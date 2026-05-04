VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form ConsumptionForecast 
   Caption         =   "Consumption ForeCast"
   ClientHeight    =   6900
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11865
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6900
   ScaleWidth      =   11865
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Height          =   345
      Left            =   5490
      TabIndex        =   13
      Top             =   3150
      Width           =   855
   End
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
      Height          =   495
      Left            =   6270
      TabIndex        =   3
      Top             =   4770
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Height          =   495
      Left            =   4590
      TabIndex        =   2
      Top             =   4770
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Height          =   2505
      Left            =   2625
      TabIndex        =   4
      Top             =   2025
      Width           =   6405
      Begin VB.TextBox Text3 
         Height          =   315
         Left            =   4800
         TabIndex        =   16
         Top             =   615
         Width           =   960
      End
      Begin VB.TextBox Text2 
         Height          =   315
         Left            =   2880
         TabIndex        =   15
         Top             =   615
         Width           =   960
      End
      Begin MSComCtl2.DTPicker DTPicker3 
         Height          =   345
         Left            =   2865
         TabIndex        =   9
         Top             =   600
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   103809025
         CurrentDate     =   38068
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2850
         TabIndex        =   0
         Top             =   1665
         Visible         =   0   'False
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   103809025
         CurrentDate     =   38068
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   345
         Left            =   4575
         TabIndex        =   1
         Top             =   1680
         Visible         =   0   'False
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   103809025
         CurrentDate     =   38068
      End
      Begin MSComCtl2.DTPicker DTPicker4 
         Height          =   345
         Left            =   4785
         TabIndex        =   10
         Top             =   600
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   103809025
         CurrentDate     =   38068
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Months"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   4005
         TabIndex        =   14
         Top             =   1215
         Width           =   600
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Planning period from "
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   465
         TabIndex        =   12
         Top             =   630
         Width           =   1740
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Planning based on Previous "
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   450
         TabIndex        =   11
         Top             =   1200
         Width           =   2280
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "To"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   210
         Left            =   4470
         TabIndex        =   8
         Top             =   645
         Width           =   225
      End
      Begin VB.Label Label3 
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   765
         TabIndex        =   6
         Top             =   1650
         Visible         =   0   'False
         Width           =   1065
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "label1"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   420
         Left            =   30
         TabIndex        =   5
         Top             =   120
         Width           =   6330
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   7
      Top             =   6525
      Width           =   11865
      _ExtentX        =   20929
      _ExtentY        =   661
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10583
            MinWidth        =   10583
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "30/10/2018"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            TextSave        =   "9:22 PM"
         EndProperty
      EndProperty
   End
   Begin Crystal.CrystalReport Crr 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "ConsumptionForecast"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim rep As Report.ReportView
Dim rsdate As Recordset
Dim RsDep As Recordset
Dim RSCOUNT As Recordset

Dim Rs_Count As Recordset
Dim rs_adhoc As Recordset, Rs_AdCount As Recordset
Dim Rs_COver As Recordset

Dim dep As String
Dim Str_Count As String
Dim Line_Len As Integer

Dim Sng_Count1 As Single, Sng_Count2 As Single
Dim Sng_Count3 As Single, Sng_Count4 As Single

Dim a As Integer
Dim pg As Integer
Dim c As Integer

Private Sub Command1_Click()
On Error GoTo ErrHandler:
  Screen.MousePointer = 11
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ConsumptionForeCastRpt.rpt"
    FrmRpt.RptHead = "10A"
    parameter1 = Format(DTPicker3.value, "MMM-yy")
    parameter2 = Format(DTPicker4.value, "MMM-yy")
    parameter3 = Format(DTPicker3.value, "yyyy-MM-dd")
    parameter4 = Format(DTPicker4.value, "yyyy-MM-dd")
    parameter5 = Year(DTPicker3.value)
    parameter6 = Divcode
    parameter7 = val(Text1.Text)
    parameter8 = Format(DTPicker3.value, "yyyy-MM-dd")
    parameter9 = Format(DTPicker4.value, "yyyy-MM-dd")
    parameter10 = Format(DTPicker4.value, "MM") + (12 - Format(DTPicker3.value, "MM")) + 1
    FrmRpt.Show
 
  Screen.MousePointer = 0
  Exit Sub
ErrHandler:
  If err.Number Then StatusBar1.Panels(2).Text = err.Description
  Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
'  Set db = Nothing
  Unload Me
End Sub

Private Sub DTPicker3_Change()
    Text2.Text = Format(DTPicker3.value, "MMM-yy")
End Sub

Private Sub DTPicker4_Change()
    Text3.Text = Format(DTPicker4.value, "MMM-yy")
End Sub

Private Sub Form_Load()
  On Error GoTo ErrHandler:
  
  DTPicker1.MinDate = Format(yfdate, "dd/mm/yyyy")
  DTPicker1.MaxDate = Format(yldate, "dd/mm/yyyy")
  DTPicker1.value = Format(mfdate, "dd/mm/yyyy")
  DTPicker2.value = Format(mldate, "dd/mm/yyyy")
  
  DTPicker3.value = Format(mfdate, "dd/mm/yyyy")
  DTPicker4.value = Format(mldate, "dd/mm/yyyy")
  
  label1.Caption = "Consumption ForeCast"
  dep = ""
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  StatusBar1.Panels(1).Text = head
  
  Text2.Text = Format(DTPicker3.value, "MMM-yy")
  Text3.Text = Format(DTPicker4.value, "MMM-yy")
  
ErrHandler:
  If err.Number Then StatusBar1.Panels(2).Text = err.Description
End Sub

Private Sub Text1_Change()
    DTPicker1.value = Format(mfdate, "dd/mm/yyyy")
End Sub
