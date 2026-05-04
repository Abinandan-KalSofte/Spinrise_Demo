VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form BalewiseStock 
   Caption         =   "Balewise Stock"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Caption         =   " "
      Height          =   2820
      Left            =   1155
      TabIndex        =   4
      Top             =   1560
      Width           =   5910
      Begin VB.CommandButton Cmd_Ok 
         Caption         =   "&Ok"
         Height          =   375
         Left            =   1635
         TabIndex        =   2
         Top             =   2340
         Width           =   1185
      End
      Begin VB.CommandButton Cmd_Exit 
         Caption         =   "&Exit"
         Height          =   375
         Left            =   2970
         TabIndex        =   3
         Top             =   2355
         Width           =   1185
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   345
         Left            =   2400
         TabIndex        =   1
         Top             =   1680
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
         Left            =   2415
         TabIndex        =   0
         Top             =   1155
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
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   390
         Left            =   2400
         TabIndex        =   8
         Top             =   690
         Width           =   2940
         _ExtentX        =   5186
         _ExtentY        =   688
         _Version        =   393216
         Text            =   "DataCombo1"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label1 
         Caption         =   "Product"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Index           =   0
         Left            =   1050
         TabIndex        =   9
         Top             =   735
         Width           =   1920
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
         Index           =   1
         Left            =   1050
         TabIndex        =   7
         Top             =   1725
         Width           =   495
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Borah Wise Stock"
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
         TabIndex        =   6
         Top             =   90
         Width           =   5865
      End
      Begin VB.Line Line1 
         X1              =   45
         X2              =   5895
         Y1              =   2205
         Y2              =   2205
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
         Left            =   1050
         TabIndex        =   5
         Top             =   1155
         Width           =   495
      End
   End
End
Attribute VB_Name = "BalewiseStock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim DB As Connection
Dim Rs As Recordset
Dim Rep As New Report.ReportView

'---------------------------------------------------------------------------------------
' Procedure : Cmd_Exit_Click
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Cmd_Exit_Click()
On Error GoTo Cmd_Exit_Click_Error

    Unload Me

Exit Sub
Cmd_Exit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Cmd_Exit_Click of Form BalewiseStock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Cmd_Ok_Click()
On Error GoTo Cmd_Ok_Click_Error
Dim a As Integer, Pg As Integer, Co As Integer, Sno As Integer
    Screen.MousePointer = 11
    Set DB = New Connection
    DB.Open connectstring
    Set Rep = New Report.ReportView
    a = FreeFile
    Pg = 1
    Co = 0
    Close
    Open "c:\balerep.txt" For Output As #a
    Print #a, Chr(18)
    Set Rs = New Recordset
    Rs.Open "SELECT PACK_NO,A.PACK_WT,B.DESCRIPTION FROM IG_RPACKNOS A,IG_PRODUCT B WHERE A.PRODUCT_CODE=B.PRODUCT_CODE AND INVOICED='N' AND A.PRODUCT_CODE='" & Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1)) & "' and a.DivCode ='" & Divcode & "' AND PROD_DATE BETWEEN '" & Format(MaskEdBox2.Text, "yyyy/mm/dd") & "' and '" & Format(MaskEdBox1.Text, "yyyy/mm/dd") & "'", DB, adOpenStatic
    If Rs.BOF Then
        MsgBox "No records found for this month", vbInformation, head
        Close #a
        Screen.MousePointer = 0
        Exit Sub
    End If
    Print #a, Space(5); CENTRE(DIVNAME, 80, " ")
    Print #a, Space(5)
    Print #a, Space(5) & "Lot No. : W / " & Space(40) & "               Date : " & pdate
    Print #a, Space(5)
    Print #a, Space(5) & "              " & Space(40) & "No. of Bales/Borahs : " & Rs.RecordCount
    Print #a, Space(5)
    
    Print #a, Space(5) & "Variety : " & Rs("DESCRIPTION")
    Print #a, Space(5); String(86, "-")
    Print #a, Space(5) & "S.No." & Space(2) & "Bale No." & Space(5) & "Nt.Weight" '& Space(2) & "S.No." & Space(2) & "Bale No." & Space(5) & "Weight" & Space(2) & "S.No." & Space(2) & "Bale No." & Space(5) & "Weight"
    Print #a, Space(5); String(86, "-")
    Sno = 1
    Do While Not Rs.EOF
        Print #a, Space(5) & Padr(Sno, 5, " ") & Space(2) & Padr(Rs("pack_no"), 6, " ") & Space(2) & Padl(INF(Rs("pack_wt"), 3), 12, " ") '& Space(2) & Padr(sno, 5, " ") & Space(2) & Padr(rs("pack_no"), 6, " ") & Space(2) & Padl(INF(rs("pack_wt"), 3), 12, " ") & Space(2) & Padr(sno, 5, " ") & Space(2) & Padr(rs("pack_no"), 6, " ") & Space(2) & Padl(INF(rs("pack_wt"), 3), 12, " ")
        Rs.MoveNext
        Sno = Sno + 1
    Loop
    Print #a, Space(5); String(86, "-")
    Print #a, Chr(12)
    Close #a
    Open "c:\balerep.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type balerep.txt > prn"
    Close #a
    Rep.txtfile = "c:\balerep.txt"
    Rep.Batfile = "c:\balerep.bat"
    Screen.MousePointer = 0
Exit Sub
Cmd_Ok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Cmd_Ok_Click of Form BalewiseStock"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
    MaskEdBox2.Text = Format(yfdate, "DD/MM/YYYY")
    MaskEdBox1.Text = Format(pdate, "DD/MM/YYYY")
    Set DB = New Connection
    DB.Open connectstring
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT (a.PRODUCT_CODE +'-'+description ) as PRODUCT_CODE FROM IG_RPACKDT a,ig_product b where a.product_code=b.product_code and a.product_code like 'W%' and a.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "PRODUCT_CODE"
    If Not Rs.EOF Then
        DataCombo1.Text = Rs(0)
    Else
        Cmd_Ok.Enabled = False
    End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Form_Load of Form BalewiseStock"
End Sub
