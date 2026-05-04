VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.UserControl usrProgBarCntl 
   ClientHeight    =   765
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4425
   ScaleHeight     =   765
   ScaleWidth      =   4425
   Begin MSComctlLib.ProgressBar ProgBar 
      Height          =   465
      Left            =   105
      TabIndex        =   0
      Top             =   225
      Width           =   4275
      _ExtentX        =   7541
      _ExtentY        =   820
      _Version        =   393216
      Appearance      =   1
   End
   Begin VB.Label lblProgBar 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   0
      Width           =   4305
   End
End
Attribute VB_Name = "usrProgBarCntl"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Public Sub ProgView(reccnt As Integer, RecNo As Integer, FrmName As Form)
         
'         ProgBar.Max = reccnt
''         ProgBar.value = Abs(RecNo)
'         FrmName.Refresh
'         lblProgBar.Caption = "Processing " & Round(RecNo / reccnt * 100) & "%."
End Sub

Public Sub ProgClear()
    ProgBar.value = 0
    lblProgBar.Caption = ""
End Sub

