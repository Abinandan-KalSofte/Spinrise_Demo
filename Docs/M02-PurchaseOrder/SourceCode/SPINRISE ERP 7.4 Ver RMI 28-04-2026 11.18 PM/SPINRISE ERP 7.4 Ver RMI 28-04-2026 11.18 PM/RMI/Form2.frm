VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Begin VB.Form LOT_DETAILS 
   Caption         =   "Form2"
   ClientHeight    =   6705
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   10110
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6705
   ScaleWidth      =   10110
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmd_ok 
      Caption         =   "&Ok"
      Height          =   495
      Left            =   5325
      TabIndex        =   13
      Top             =   5415
      Width           =   1215
   End
   Begin VB.CommandButton BUTTON 
      DownPicture     =   "Form2.frx":0000
      Height          =   510
      Index           =   2
      Left            =   1050
      Picture         =   "Form2.frx":044A
      Style           =   1  'Graphical
      TabIndex        =   11
      ToolTipText     =   "Exit"
      Top             =   15
      Width           =   520
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -30
      TabIndex        =   7
      Top             =   -105
      Width           =   9465
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Form2.frx":07DF
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Form2.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Form2.frx":0E8B
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Form2.frx":1195
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6555
         TabIndex        =   12
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8085
         TabIndex        =   9
         Top             =   255
         Width           =   630
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   " "
      Height          =   3945
      Left            =   1620
      TabIndex        =   0
      Top             =   1230
      Width           =   8055
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3225
         Left            =   645
         TabIndex        =   1
         Top             =   660
         Width           =   7155
         _ExtentX        =   12621
         _ExtentY        =   5689
         ForeColor       =   -2147483635
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   3075
         Locked          =   -1  'True
         TabIndex        =   5
         Text            =   " "
         Top             =   795
         Width           =   1260
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   375
         Left            =   3045
         TabIndex        =   6
         Top             =   1275
         Width           =   2520
         _ExtentX        =   4445
         _ExtentY        =   661
         _Version        =   393216
         MaxLength       =   12
         Format          =   "#.000"
         PromptChar      =   "_"
      End
      Begin VB.Label Label3 
         Caption         =   "LOT NO"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   1605
         TabIndex        =   4
         Top             =   810
         Width           =   960
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "LOT DETAILS"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   495
         Left            =   15
         TabIndex        =   3
         Top             =   90
         Width           =   8025
      End
      Begin VB.Label Label1 
         Caption         =   "NET WEIGHT"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   1575
         TabIndex        =   2
         Top             =   1395
         Width           =   1290
      End
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "LABEL"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   225
      Left            =   6330
      TabIndex        =   14
      Top             =   810
      Visible         =   0   'False
      Width           =   615
   End
End
Attribute VB_Name = "LOT_DETAILS"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim rs1 As Recordset
Dim DB As Connection
Dim netwt As Integer
Dim chk As Integer
Dim newval As Double
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure openconnection of Lot Details"
End Sub
Private Sub Cmd_Ok_Click()
If Trim(KslList1.Code) <> "" Then
    Call EnableControls
    MaskEdBox1.SetFocus
    KslList1.Visible = False
    Cmd_Ok.Visible = False
    Frame1.Height = 2100
    Text2.Text = KslList1.Code
    Set Rs = New Recordset
    Rs.Open "select netwt,bales,(isnull(sum(b.actisskgs),0)-isnull(tarewt,0)) act from rm_lot a,rm_issb b " & _
    " where a.lotno=" & KslList1.Code & " and a.lotno=b.lotno and a.divcode='" & Divcode & "' group by netwt,bales,tarewt", DB, adOpenStatic
    Label4.Visible = True
    Label4.Caption = "ACTUAL ISSUE KGS : " & Rs("act")
    MaskEdBox1.Text = Rs("netwt")
    netwt = Rs("netwt")
End If
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
        If Trim(MaskEdBox1.Text) = "" Then
           MsgBox "Netwt cannot be empty", vbInformation, head
           Cancel = True
           MaskEdBox1.SetFocus
           Exit Sub
        End If
        Rs.MoveFirst
        newwt = CDbl(MaskEdBox1.Text)
        newval = newwt / Rs("bales")
        DB.Execute "update rm_lot set netwt=" & newwt & " where lotno=" & KslList1.Code
        DB.Execute "update rm_bale set netwt=" & newval & " from rm_lot a,rm_bale b where a.lotno=b.lotno and b.lotno=" & KslList1.Code
        MsgBox "Netwt Changed", vbInformation
        Label4.Visible = False
        Frame1.Height = 3945
        Cmd_Ok.Visible = True
        KslList1.Visible = True
        KslList1.ZOrder
        Exit Sub
Case 1
        Label4.Visible = False
        Frame1.Height = 3945
        Cmd_Ok.Visible = True
        KslList1.Visible = True
        KslList1.ZOrder
        Exit Sub
Case 2
      Screen.MousePointer = 0
      Unload Me
End Select
End Sub
Private Sub Form_Load()
act = 0
newwt = 0
newval = 0
Call DisableControls
Call openconnection
desc.Caption = "Modification"
DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
Set Rs = New Recordset
Rs.Open "select distinct lotno from rm_lot where (bales-isnull(issbal,0))=0 and divcode='" & Divcode & "' order by 1", DB, adOpenStatic
If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation
    Screen.MousePointer = 0
    Exit Sub
End If
KslList1.conn = connectstring
KslList1.Table = "rm_lot where (bales-isnull(issbal,0))=0"
KslList1.listfield1 = "cast(lotno as varchar)"
KslList1.listfield2 = "convert(varchar,lotdt,103)"
End Sub
Public Sub DisableControls()
BUTTON(0).Enabled = False
BUTTON(1).Enabled = False
End Sub
Public Sub EnableControls()
BUTTON(0).Enabled = True
BUTTON(1).Enabled = True
End Sub
Private Sub MaskEdBox1_KeyPress(KeyAscii As Integer)
If KeyAscii = 9 Then
   BUTTON(0).SetFocus
End If
End Sub
