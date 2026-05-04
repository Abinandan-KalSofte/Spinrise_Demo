VERSION 5.00
Begin VB.Form DBlogin 
   Caption         =   "Database Login"
   ClientHeight    =   2520
   ClientLeft      =   2850
   ClientTop       =   3495
   ClientWidth     =   5265
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   1  'Arrow
   ScaleHeight     =   1488.899
   ScaleMode       =   0  'User
   ScaleWidth      =   4943.55
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox Text3 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   2040
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   900
      Width           =   1530
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   2040
      TabIndex        =   4
      Top             =   1305
      Width           =   1515
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      IMEMode         =   3  'DISABLE
      Left            =   2040
      TabIndex        =   2
      Top             =   510
      Width           =   1530
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      Left            =   2040
      TabIndex        =   1
      Top             =   120
      Width           =   1125
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   1335
      TabIndex        =   0
      Top             =   1935
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2685
      TabIndex        =   5
      Top             =   1935
      Width           =   1140
   End
   Begin VB.Label lblLabels 
      Caption         =   "User ID"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   3
      Left            =   870
      TabIndex        =   9
      Top             =   525
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "Server"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   2
      Left            =   870
      TabIndex        =   8
      Top             =   135
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "Password"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   870
      TabIndex        =   6
      Top             =   930
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "Database"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   870
      TabIndex        =   7
      Top             =   1320
      Width           =   1080
   End
End
Attribute VB_Name = "DBlogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public LoginSucceeded As Boolean
Private Sub cmdCancel_Click()
    Unload Me
End Sub
Private Sub cmdok_Click()
    Screen.MousePointer = 11
    connectstring = "driver={SQL Server};SERVER=" & Text1.Text & ";uid=" & text2.Text & " ;pwd=" & Text3.Text & ";database=" & Text4.Text & ";"
    Call OpenConnection
    Unload Me
    AppLogin.Show
    Screen.MousePointer = 0
End Sub


Private Sub Form_Load()
Text1.Text = "KSS"
text2.Text = "KSTEX"
Text3.Text = "KSTEX"
Text4.Text = "KSTEX"
End Sub
Private Sub Text1_KeyPress(KeyAscii As Integer)
ToUpCase Text1, KeyAscii
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
ToUpCase text2, KeyAscii
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
ToUpCase Text3, KeyAscii
End Sub
Private Sub Text4_KeyPress(KeyAscii As Integer)
ToUpCase Text4, KeyAscii
End Sub

