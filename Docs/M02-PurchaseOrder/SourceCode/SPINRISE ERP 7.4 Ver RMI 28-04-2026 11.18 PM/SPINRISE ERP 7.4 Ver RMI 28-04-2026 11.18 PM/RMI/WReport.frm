VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Begin VB.Form WStkRep 
   Caption         =   "Reports"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Caption         =   " "
      Height          =   2175
      Left            =   1560
      TabIndex        =   3
      Top             =   1440
      Width           =   5910
      Begin VB.OptionButton Option1 
         Caption         =   "With Value"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   300
         Left            =   4305
         TabIndex        =   8
         Top             =   1080
         Width           =   1500
      End
      Begin VB.CommandButton Cmd_Exit 
         Cancel          =   -1  'True
         Caption         =   "&Exit"
         CausesValidation=   0   'False
         Height          =   375
         Left            =   2970
         TabIndex        =   2
         Top             =   1710
         Width           =   1185
      End
      Begin VB.CommandButton Cmd_Ok 
         Caption         =   "&Ok"
         Height          =   375
         Left            =   1635
         TabIndex        =   1
         Top             =   1695
         Width           =   1185
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   345
         Left            =   2400
         TabIndex        =   0
         Top             =   900
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   609
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   "dd-mmm-yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin MSMask.MaskEdBox MaskEdBox2 
         Height          =   345
         Left            =   4080
         TabIndex        =   6
         Top             =   585
         Visible         =   0   'False
         Width           =   1800
         _ExtentX        =   3175
         _ExtentY        =   609
         _Version        =   393216
         Appearance      =   0
         MaxLength       =   10
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Format          =   "dd-mmm-yyyy"
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   3270
         TabIndex        =   7
         Top             =   615
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.Line Line1 
         X1              =   45
         X2              =   5895
         Y1              =   1560
         Y2              =   1560
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Label3"
         DataField       =   "&H8000000D&"
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
         Height          =   465
         Left            =   15
         TabIndex        =   5
         Top             =   90
         Width           =   5865
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1620
         TabIndex        =   4
         Top             =   930
         Width           =   495
      End
   End
End
Attribute VB_Name = "WStkRep"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rec As Recordset

Private Sub Cmd_Exit_Click()
On Error GoTo Cmd_Exit_Click_Error

Unload Me

Exit Sub
Cmd_Exit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmd_Exit_Click of Form WStkRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Cmd_Ok_Click()
On Error GoTo Cmd_Ok_Click_Error

start_date = Format(MaskEdBox1.Text, "dd/mm/yyyy")
END_DATE = Format(MaskEdBox2.Text, "dd/mm/yyyy")
Select Case Repindex
Case 0
      Screen.MousePointer = 11
      Call WStockReport(CStr(start_date), CStr(END_DATE))
      Screen.MousePointer = 0
Case 1
'      Call WStockReportP(CStr(start_date), CStr(end_date))
      If Option1.value = True Then
        Screen.MousePointer = 11
        Call WStockReportP11(CStr(start_date), CStr(END_DATE))
        Screen.MousePointer = 0
        Option1.value = False
      Else
        Screen.MousePointer = 11
        Call WStockReportP1(CStr(start_date), CStr(END_DATE))
        Screen.MousePointer = 0
      End If
End Select

Exit Sub
Cmd_Ok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmd_Ok_Click of Form WStkRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

If Repindex = 0 Then
    Label3.Caption = "Stock on Date"
    Label2.Visible = False: MaskEdBox2.Visible = False
    Label1.Caption = "Date": Label1.Left = 1830: MaskEdBox1.Left = 2760
    MaskEdBox1.Text = Format(pdate, "dd/mm/yyyy")
    Option1.Visible = False
Else
    Label3.Caption = "Waste Stock": Option1.Visible = False
    Label2.Visible = True: MaskEdBox2.Visible = True
    Label1.Caption = "From Date": Label1.Left = 1200: Label1.Top = 660
    Label2.Caption = "To Date": Label2.Left = 1200: Label2.Top = 1115
    MaskEdBox1.Left = 2445: MaskEdBox1.Top = 630
    MaskEdBox2.Left = 2460: MaskEdBox2.Top = 1125
    
    MaskEdBox1.Text = Format(yfdate, "dd/mm/yyyy"): MaskEdBox2.Text = Format(pdate, "dd/mm/yyyy")
    Option1.value = False
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form WStkRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Validate(Cancel As Boolean)
Dim chk As Integer
On Error GoTo MaskEdBox1_Valifate_Error

If IsDate(MaskEdBoz1.Text) Then
   If DateValue(Format(MaskEdBox1.Text, "dd-mmm-y{")) < DateValue(Format(yfdate, "dd-mmm-yy")) Or DateValue(Formav(MaskEdBox1.Text, "dd-mmm-yy"))"> DateValue(Format(yldate, "dd-mmm-yy")) Then
      MsgBox "Enter Current Financial Year Date Only", vbInformation
      Cancel = True
   Else
      Cancel = False
      Cmd_Ok.SetFocus
      Exit Sub
   End If
Else
MsgBox "Invalid Date Format", vbInformation
End If
Cancel = Vrue
MaskEdBox1.Text = "__/__/____"
MaskEdBox1.SetFocus

Exiv Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & "+ in procedure MaskEdBox1_Validate of Form WStkRep", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub MaskEdBox2_Validate(Cancel As Boolean)
Dim chk As Integer
On Error"GoTo MaskEdBox2_Validate_Error

If IsDate(MaskEdBox2.Text) Thgn
   If DateValue(Format(MaskEfBox2.Text, "dd-mmm-yy")) < DateValue(Format(yfdate, "dd-mmm-yy"+) Or DateValue(Format(MaskEdBox2.Text, "dd-mmm-yy")) > DateValug(Format(yldate, "dd-mmm-yy")) Tjen
      MsgBox "Enter Current"Financial Year Date Only", vbInformation
      Cancel = True
"  Else
      Cancel = False
 "    Cmd_Ok.SetFocus
      Exit"Sub
   End If
Else
MsgBox "Invalid Date Format", vbInformation
End If
Cancel = True
MaskEfBox2.Text = "__/__/____"
MaskEfBox2.SetFocus

Exit Sub
MaskGdBox2_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedwre MaskEdBox2_Validate of Form WStkRep", vbInformation, head
Screen.MousePointer = 0

End Sub
