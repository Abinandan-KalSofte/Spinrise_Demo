VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Reptmixing 
   ClientHeight    =   6795
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9480
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6795
   ScaleWidth      =   9480
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Crystal"
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
      Left            =   3120
      TabIndex        =   30
      Top             =   4920
      Visible         =   0   'False
      Width           =   915
   End
   Begin Crystal.CrystalReport CrystalReport3 
      Left            =   3960
      Top             =   3000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Abstract"
      Height          =   270
      Left            =   5850
      TabIndex        =   24
      Top             =   2340
      Visible         =   0   'False
      Width           =   1605
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3390
      Left            =   1800
      TabIndex        =   0
      Top             =   1155
      Width           =   6135
      _ExtentX        =   10821
      _ExtentY        =   5980
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Reptmixing.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   3090
         Left            =   150
         TabIndex        =   1
         Top             =   45
         Width           =   5895
         Begin VB.OptionButton OptWithParty 
            Caption         =   "With Party"
            Height          =   255
            Left            =   3600
            TabIndex        =   29
            Top             =   2880
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.OptionButton OptAll 
            Caption         =   "All"
            Height          =   255
            Left            =   2040
            TabIndex        =   28
            Top             =   2880
            Value           =   -1  'True
            Visible         =   0   'False
            Width           =   735
         End
         Begin VB.OptionButton OptDirect 
            Caption         =   "Direct"
            Height          =   255
            Left            =   2760
            TabIndex        =   27
            Top             =   2880
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.ComboBox Combo4 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   3
            Top             =   2520
            Visible         =   0   'False
            Width           =   3375
         End
         Begin VB.ComboBox Combo3 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   4
            Top             =   2640
            Visible         =   0   'False
            Width           =   3375
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   345
            Left            =   1710
            TabIndex        =   21
            Top             =   1080
            Visible         =   0   'False
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   609
            _Version        =   393216
            Format          =   108658689
            CurrentDate     =   37820
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   345
            Left            =   1710
            TabIndex        =   20
            Top             =   630
            Visible         =   0   'False
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   609
            _Version        =   393216
            Format          =   108658689
            CurrentDate     =   37820
         End
         Begin VB.CheckBox ChkUsr 
            Caption         =   "Modify User Name"
            Height          =   270
            Left            =   3780
            TabIndex        =   19
            Top             =   1590
            Visible         =   0   'False
            Width           =   1605
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   360
            Left            =   1695
            TabIndex        =   6
            Top             =   600
            Width           =   2070
            _ExtentX        =   3651
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1710
            TabIndex        =   13
            Top             =   600
            Visible         =   0   'False
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   609
            _Version        =   393216
            Format          =   108658689
            CurrentDate     =   37578
         End
         Begin VB.ComboBox Combo1 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   1710
            Style           =   2  'Dropdown List
            TabIndex        =   5
            Top             =   2040
            Visible         =   0   'False
            Width           =   3375
         End
         Begin MSDataListLib.DataCombo DataCombo3 
            Height          =   360
            Left            =   1695
            TabIndex        =   9
            Top             =   1110
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   360
            Left            =   1710
            TabIndex        =   2
            Top             =   1560
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   635
            _Version        =   393216
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.ComboBox Combo2 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   345
            Left            =   1710
            TabIndex        =   14
            Text            =   "Combo2"
            Top             =   1560
            Visible         =   0   'False
            Width           =   3345
         End
         Begin MSDataListLib.DataCombo DCmbFLtN 
            Height          =   360
            Left            =   2475
            TabIndex        =   15
            Top             =   1785
            Visible         =   0   'False
            Width           =   2070
            _ExtentX        =   3651
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DCmbTLtN 
            Height          =   360
            Left            =   2475
            TabIndex        =   16
            Top             =   2265
            Visible         =   0   'False
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo4 
            Height          =   360
            Left            =   1665
            TabIndex        =   22
            Top             =   615
            Visible         =   0   'False
            Width           =   3330
            _ExtentX        =   5874
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
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
            Left            =   270
            TabIndex        =   23
            Top             =   525
            Visible         =   0   'False
            Width           =   705
         End
         Begin VB.Label LblFLTN 
            AutoSize        =   -1  'True
            Caption         =   "From Lot No."
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
            Left            =   1020
            TabIndex        =   18
            Top             =   1905
            Visible         =   0   'False
            Width           =   1110
         End
         Begin VB.Label LblTLtN 
            AutoSize        =   -1  'True
            Caption         =   "To Lot No."
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
            Left            =   1020
            TabIndex        =   17
            Top             =   2385
            Visible         =   0   'False
            Width           =   930
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Type"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   240
            TabIndex        =   12
            Top             =   2040
            Visible         =   0   'False
            Width           =   435
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
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
            ForeColor       =   &H80000009&
            Height          =   315
            Left            =   45
            TabIndex        =   11
            Top             =   120
            Width           =   5805
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Date"
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
            Left            =   240
            TabIndex        =   10
            Top             =   1200
            Width           =   420
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Date"
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
            Left            =   240
            TabIndex        =   8
            Top             =   720
            Width           =   660
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   240
            TabIndex        =   7
            Top             =   1680
            Width           =   765
         End
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4200
      TabIndex        =   25
      Top             =   4920
      Width           =   915
   End
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5280
      TabIndex        =   26
      Top             =   4920
      Width           =   915
   End
End
Attribute VB_Name = "Reptmixing"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim pogrp As String
Dim Date1 As String, Date2 As String, Code As String
Dim cnt As Integer
Dim TOTVAL As Double
Dim Namers As Recordset
Dim a As String, b As String
Dim I As Long, j As Long, K As Long
Dim PROJNO As Long, PORDNO As Long, porddt As String
Dim Rs As New Recordset, rs1 As New Recordset, rs2 As New Recordset, rs3 As New Recordset, rs4 As New Recordset, rs5 As New Recordset, RS6 As New Recordset
Public rec As Recordset
Dim LB() As RptLabel, LB2 As RptLabel, LB3 As RptLabel, LB4 As RptLabel, LB5 As RptLabel, LB6 As RptLabel, LB7 As RptLabel, LB8 As RptLabel, LB9 As RptLabel, LB10 As RptLabel, LB11 As RptLabel, LB12 As RptLabel
Dim rep As Report.ReportView
Dim f As Integer
Dim pg As Integer
Dim date111 As Date
Dim gmix, gtmix As Double

Private Sub Combo2_Validate(Cancel As Boolean)
intervalMinutes = -1
If Repindex = 999 Then
    Set Rs = New Recordset
    If Trim(Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1)) <> "ALL" Then
        Set Rs = New Recordset
        Rs.Open "select distinct a.CntCode1  +  '   -   '  + b.MixGrpName as Count from RM_MixGrp b,rm_lot a  where a.divcode = '" & Divcode & "' and a.CntCode1 = b.MixGrpCd and a.CntCode='" & Trim(Mid(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1)) & "' ", cn, adOpenStatic, adLockBatchOptimistic
        If Rs.EOF Then MsgBox "No Count Found ", vbInformation, head
        Combo4.Clear
        While Not Rs.EOF
            Combo4.AddItem Rs("Count")
            Rs.MoveNext
        Wend
        Combo4.AddItem "ALL   -   ALL"
        If Combo4.ListCount > 0 Then Combo4.ListIndex = 0
    Else
        Set Rs = New Recordset
        Rs.Open "select distinct a.CntCode1  +  '   -   '  + b.MixGrpName as Count from RM_MixGrp b,rm_lot a  where a.divcode = '" & Divcode & "' and a.CntCode1 = b.MixGrpCd ", cn, adOpenStatic, adLockBatchOptimistic
        Combo4.Clear
        While Not Rs.EOF
            Combo4.AddItem Rs("Count")
            Rs.MoveNext
        Wend
        Combo4.AddItem "ALL   -   ALL"
        If Combo4.ListCount > 0 Then Combo4.ListIndex = 0
    End If
    Combo4.SetFocus
End If
End Sub

Private Sub Combo3_Validate(Cancel As Boolean)
If Repindex = 999 Then
    Set Rs = New Recordset
    Rs.Open "select distinct a.Iss_PartyCode  +  '   -   '  + b.SlName as Party from FA_SlMas b,rm_lot a  where a.divcode = '" & Divcode & "' and a.Iss_PartyCode = b.SlCode  and a.VarCode='" & Trim(Mid(Combo3.Text, 1, InStr(1, Combo3.Text, "-") - 1)) & "' ", cn, adOpenStatic, adLockBatchOptimistic
    If UCase(Trim(Mid(Combo3.Text, 1, InStr(1, Combo3.Text, "-") - 1))) <> "ALL" Then
        If Rs.RecordCount <> 0 Then
            Set DCmbFLtN.RowSource = Rs
            DCmbFLtN.ListField = "Party"
            Set DCmbTLtN.RowSource = Rs
            DCmbTLtN.ListField = "Party"
            If Not Rs.EOF Then
                Rs.MoveFirst
                DCmbFLtN.Text = Rs(0)
                Rs.MoveLast
                DCmbTLtN.Text = Rs(0)
            End If
        Else
            MsgBox "No Party's Found ", vbInformation, head
            DCmbFLtN.Text = ""
            DCmbTLtN.Text = ""
            Set DCmbFLtN.RowSource = Nothing
            Set DCmbTLtN.RowSource = Nothing
            
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "select distinct a.Iss_PartyCode  +  '   -   '  + b.SlName as Party from FA_SlMas b,rm_lot a  where a.divcode = '" & Divcode & "' and a.Iss_PartyCode = b.SlCode ", cn, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount <> 0 Then
            Set DCmbFLtN.RowSource = Rs
            DCmbFLtN.ListField = "Party"
            Set DCmbTLtN.RowSource = Rs
            DCmbTLtN.ListField = "Party"
            If Not Rs.EOF Then
                Rs.MoveFirst
                DCmbFLtN.Text = Rs(0)
                Rs.MoveLast
                DCmbTLtN.Text = Rs(0)
            End If
        End If
    End If
End If
End Sub

Private Sub Combo4_Validate(Cancel As Boolean)
    If Repindex = 999 Then
        Set Rs = New Recordset
        If Trim(Mid(Combo4.Text, 1, InStr(1, Combo4.Text, "-") - 1)) <> "ALL" Then
            Rs.Open "select distinct a.VarCode +  '   -   '  + b.VarName as Variety from RM_Var b,rm_lot a  where a.divcode = '" & Divcode & "' and a.VArcode= b.VArcode and a.CatCd='" & Trim(Mid(Combo4.Text, 1, InStr(1, Combo4.Text, "-") - 1)) & "'", cn, adOpenStatic, adLockBatchOptimistic
            If Rs.EOF Then MsgBox "No Variety Found ", vbInformation, head
            Combo3.Clear
            While Not Rs.EOF
                Combo3.AddItem Rs("Variety")
                Rs.MoveNext
            Wend
            Combo3.AddItem "ALL   -   ALL"
            If Combo3.ListCount > 0 Then Combo3.ListIndex = 0
        Else
            Rs.Open "select distinct a.VarCode +  '   -   '  + b.VarName as Variety from RM_Var b,rm_lot a  where a.divcode = '" & Divcode & "' and a.VArcode= b.VArcode  ", cn, adOpenStatic, adLockBatchOptimistic
            Combo3.Clear
            While Not Rs.EOF
                Combo3.AddItem Rs("Variety")
                Rs.MoveNext
            Wend
            Combo3.AddItem "ALL   -   ALL"
            If Combo3.ListCount > 0 Then Combo3.ListIndex = 0
        End If
    End If

End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Dim l1, l2 As RptLabel
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim LTNo As Integer
Dim tot As Double
Dim tot1 As Double
Dim gtot As Double
Dim gtot1 As Double
Dim str1 As String
Dim a1 As String
Dim a As String

Screen.MousePointer = 11
Select Case Repindex

Case 786 'Added
    Dim str3 As String
    Dim str4 As String
    
    Screen.MousePointer = 11
    a = Format(DataCombo2.Text, "yyyy-mm-dd")
    b = Format(DataCombo3.Text, "yyyy-mm-dd")
    
    str3 = DataCombo1.Text
    str4 = DataCombo4.Text
    
    If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
    Call Cotton_Issue(a, b, divname, str3, str4)
    
    Screen.MousePointer = 0
    

Case 787
    Dim S1 As String
    
    Screen.MousePointer = 11
    U = Format(DataCombo2.Text, "dd/mm/yyyy")
    S1 = DataCombo3.Text
    Call Quality_Exp(CStr(U), divname, CStr(S1))
    Screen.MousePointer = 0
    
Case 788
    Dim s As String
    
    Screen.MousePointer = 11
    U = Format(DataCombo2.Text, "dd/mm/yyyy")
    s = DataCombo3.Text
    Call Detailed_mixing(CStr(U), divname, CStr(s))
    Screen.MousePointer = 0

    
Case 200
'   If DataCombo1.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
'            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
'            str1 = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
'            a1 = Format(DTPicker1.value, "yyyy-mm-dd")
'            Call LotstockledgerReport(CStr(str1), CStr(a1), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0))
'            Screen.MousePointer = 0
'            Exit Sub
'   End If
   Exit Sub
        'Call repproc2(Lotstock)
        If dv1.rsCommand1.State = adStateOpen Then
            dv1.rsCommand1.Close
        End If
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG = 'R' then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If

Case 1
    Screen.MousePointer = 0
Case 2 ' lotstockwise
    Dim Str As String
    
'   If DataCombo1.Text <> "" And DataCombo2.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
'            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
'            str = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
'            a = Format(DTPicker1.value, "yyyy-mm-dd")
'            Call LotstockReport(CStr(str), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0))
'            Screen.MousePointer = 0
'            Exit Sub
'   End If
        'Call repproc2(Lotstock)
        If dv1.rsCommand1.State = adStateOpen Then
            dv1.rsCommand1.Close
        End If
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG = 'R' then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If
'        Else
'            MsgBox ("Please Give Date Value")
'            DataCombo1.SetFocus
'            Exit Sub
'            End If

Case 303  'Varietywise Stock Chart
        StockVarierty.Show
Case 511
         a1 = Format(DTPicker2.value, "dd/mm/yyyy")
         A2 = Format(DTPicker3.value, "dd/mm/yyyy")
         If CDate(a1) > CDate(A2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(A2) < CDate(a1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
         
         str1 = Combo2.Text
         If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
            Call VarietystockledgerReport(CStr(a1), CStr(A2), CStr(str1), DCmbFLtN.Text, DCmbTLtN.Text)
            'Public Sub LotstockledgerReport(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
         Else
            MsgBox "Please select the  Lot Nos", vbInformation, head
            Exit Sub
         End If
        Screen.MousePointer = 0
        
        
Case 522
         a1 = Format(DTPicker2.value, "dd/mm/yyyy")
         A2 = Format(DTPicker3.value, "dd/mm/yyyy")
         str1 = Combo2.Text
         
         If CDate(a1) > CDate(A2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(A2) < CDate(a1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
'         If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
'            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
'            Call LotstockledgerReport(CStr(a1), CStr(A2), CStr(str1), DCmbFLtN.Text, DCmbTLtN.Text)
'            'Public Sub LotstockledgerReport(str1 As String, a1 As String, LtNF As Integer, LtNT As Integer, u As Integer)
'         Else
'            MsgBox "Please select the  Lot Nos", vbInformation, head
'            Exit Sub
'         End If
        Screen.MousePointer = 0
        
Case 444

        U = Format(DTPicker2.value, "yyyy-mm-dd")
       ' Call CottRecn1(CDate(U))

        
Case 3 'PENDING CONTRACTS
      'Dim a As String
      a = Format(DataCombo2.Text, "yyyy-mm-dd") 'from
      b = Format(DataCombo1.Text, "yyyy-mm-dd") 'to
      If Trim(DataCombo2.Text) <> Empty Then
      a1 = Right(Format(DataCombo2.Text, "yyyy-mm-dd"), 10) 'from
      b1 = Right(Format(DataCombo1.Text, "yyyy-mm-dd"), 10) 'to
      If CDate(a1) > CDate(b1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b1) < CDate(a1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
     ' Call pendconReport(CStr(a), CStr(b))
      Screen.MousePointer = 0
   End If
'     Call repproc2(Pendcont)
'     If dv1.rsCommand2_Grouping.State = adStateOpen Then
'         dv1.rsCommand2_Grouping.Close
'     End If
'     Set LB1 = Pendcont.Sections(2).Controls("LIST1")
'     LB1.Caption = "Pending Contract As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
'     dv1.rsCommand2_Grouping.Open "SHAPE {select a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'Mill'  else 'Spot' end as dlytype,(a.ordqty-isnull(a.recqty,0))Bales,a.candyrate from rm_cont a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & divcode & "' and a.varcode = B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd = c.slcode and a.brkcd = d.slcode and contdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'brkname','brkcd'", cn, adOpenStatic, adLockBatchOptimistic
'     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'     Else
'        Set Pendcont.DataSource = dv1
'        Pendcont.Show
'        Screen.MousePointer = 0
'     End If


Case 199 'order cancellation report
      'If Trim(DataCombo2.Text) <> Empty Then
      a = DataCombo2.Text
      b = DataCombo1.Text
      U = Right(Format(DataCombo2.Text, "yyyy-mm-dd"), 10)
      v = Right(Format(DataCombo1.Text, "yyyy-mm-dd"), 10)
      If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
      
        
    '  Call ordercancellationReport(CStr(a), CStr(b))
    '  Screen.MousePointer = 0
   'End If

Case 167
        U = Format(DTPicker2.value, "yyyy-mm-dd")
        Call Cottweight(CDate(U))

Case 4                 'Arrivals  to be Inspected
        If Trim(DataCombo2.Text) <> Empty Then
            a = Format(DataCombo2.Text, "yyyy-mm-dd")
           ' Call arrtoboinsReport(CStr(a))
            Screen.MousePointer = 0
         End If
     
'     Call repproc2(notinsarrival)
'     If dv1.rsCommand2_Grouping.State = adStateOpen Then
'         dv1.rsCommand2_Grouping.Close
'     End If
'     Set LB1 = notinsarrival.Sections(2).Controls("LIST1")
'     LB1.Caption = "Not Inspected Cases As on :" & Format(DataCombo2.Text, "dd/mm/yyyy")
'     'dv1.rsCommand2_Grouping.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N' or passed='Y') and e.slcode = a.brkcd and A.divcode='" & divcode & "' AND arrdate<='" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cn, adOpenStatic, adLockBatchOptimistic
'     dv1.rsCommand2_Grouping.Open "SHAPE {select a.brkcd,e.slname as brname,a.supcd,c.slname,areaname,a.Quantity,a.plotno,a.varcode,a.arrno,a.arrdate,ratecy,dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d,fa_slmas e where a.contno=d.contno and a.areacode=d.areacode and a.bbflag=d.bbflag and d.supcd=c.slcode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode and  (passed is null or passed='N') and e.slcode = a.brkcd and A.divcode='" & divcode & "' AND arrdate<='" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'brkcd','brname'", cn, adOpenStatic, adLockBatchOptimistic
'     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'     Else
'        Set notinsarrival.DataSource = dv1
'        notinsarrival.Show
'        Screen.MousePointer = 0
'     End If

Case 5                 'Rejecdted Arrivals
   If Trim(DataCombo2.Text) <> Empty Then
      a = Format(DataCombo2.Text, "yyyy-mm-dd")
      b = Right$(DataCombo3.Text, 6)
      
     ' Call rejarrReport(CStr(a), CStr(b))
     ' Screen.MousePointer = 0
   End If
'     Call repproc2(Rejarrival)
'     If dv1.rsCommand2_Grouping.State = adStateOpen Then
'         dv1.rsCommand2_Grouping.Close
'     End If
'     Set LB1 = Rejarrival.Sections(2).Controls("LIST1")
'     LB1.Caption = "Rejected  Cases As on :" & Format(DataCombo2.Text, "dd/mm/yyyy")
'     Set LB2 = Rejarrival.Sections(2).Controls("pdate")
'     LB2.Caption = pdate
'     dv1.rsCommand2_Grouping.Open "SHAPE {select a.supcd,slname,areaname,plotno,a.varcode,arrno,arrdate,ratecy,'qty'=quantity-isnull(passbl,0),dlytype=case dlytype when 'M' then 'Mill' when 'S' then 'Spot'  end  from rm_arrival a,rm_area b,fa_slmas c,rm_cont d where a.contno=d.contno and a.areacode=d.areacode and a.supcd=c.slcode  and a.areacode=b.areacode and b.areacode=d.areacode  AND A.divcode='" & divcode & "' and isnull(quantity,0)-isnull(passbl,0) > 0 AND arrdate<='" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'}  AS Command2 COMPUTE Command2 BY 'supcd','slname'", cn, adOpenStatic, adLockBatchOptimistic
'     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'     Else
'        Set Rejarrival.DataSource = dv1
'        Rejarrival.Show
'        Screen.MousePointer = 0
'     End If

Case 6
   If Trim(DataCombo2.Text) <> Empty Then
      a = Format(DataCombo2.Text, "yyyy-mm-dd")
     ' Call wetbenReport(CStr(a))
Screen.MousePointer = 0
   End If
'     Call repproc2(Weighment)
'     If dv1.rsCommand2_Grouping.State = adStateOpen Then
'         dv1.rsCommand2_Grouping.Close
'     End If
'     Set LB1 = Weighment.Sections(2).Controls("LIST1")
'     LB1.Caption = "Weighment Not Entered As On " & Format(DataCombo2.Text, "dd/mm/yyyy")
'     dv1.rsCommand2_Grouping.Open "SHAPE {select a.supcd,b.slname,a.areacode,c.areaname,case when d.dlytype = 'M' then 'Mill' else 'Spot' end as dlytype,a.plotno,a.arrno,a.arrdate,a.varcode,a.ratecy,a.Quantity,f.varname,case when upper(a.bbflag) = 'B' then 'Bale' else 'Bora' end as Unit,a.brkcd,e.slname brkname from rm_arrival a,fa_slmas b,Rm_area c,rm_cont d,fa_slmas e,rm_var f where d.divcode='" & divcode & "' and a.supcd *= b.slcode and a.areacode *= c.areacode and a.contno *= d.contno and a.varcode *=  f.varcode and a.arrdate <= ' " & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.brkcd = e.slcode and upper(a.passed) = 'Y'  and a.lotno is null  }  AS Command2 COMPUTE Command2 BY 'brkcd','brkname'", cn, adOpenStatic, adLockBatchOptimistic
'     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'     Else
'        Set Weighment.DataSource = dv1
'        Weighment.Show
'        Screen.MousePointer = 0
'     End If
Case 18 'COST AUDIT REPORT
Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    'extracting classcode,groupcode and section
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo3.Text, "yyyy-mm-dd")
    If CDate(Date1) > CDate(Date2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(Date2) < CDate(Date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    
    'se = Trim(DataCombo3.Text)
    sno1 = 0
    cnt = 0
    Open "c:\castaudit.txt" For Output As #f
    Set rs2 = New Recordset
    rs2.Open "select C.CNTcd from rm_issb a,rm_lot b,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lotno = b.lotno and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd  and a.divcode = '" & Divcode & "' and a.docdt between '" & Date1 & "' and '" & Date2 & "' group by C.CNTcd ", cn, adOpenStatic, adLockBatchOptimistic
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
        Close #f
        Exit Sub
    End If
    pg = 1
    Call prnhead(pg)
    cnt = 8
    rs2.MoveFirst
    For I = 1 To rs2.RecordCount
        
        Print #f, Space(6) & Padr(rs2(0), rs2(0).DefinedSize, " ")
        cnt = cnt + 1
        If cnt >= PageLen Then
                    pg = pg + 1
                    Print #f, Chr(12)
                    Print #f, Space(5) & String(80, "-")
                    cnt = 0
                    Call prnhead(pg)
                    'cnt = 7
                End If
            
            Set rs3 = New Recordset
            rs3.Open "select C.cntcd,z.varname as varcod,round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',c.docno,b.bales,Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end),isnull(b.ratecy,0)  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and C.cntcd = '" & rs2(0) & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(Date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by C.cntcd,z.varname,b.ratecy,c.docno,b.bales,b.bblflg", cn, adOpenStatic
            rs3.MoveFirst
            For j = 1 To rs3.RecordCount
            Dim rscount As Recordset
            Set rscount = New Recordset
            rscount.Open "SELECT QUANTITY=COUNT(A.BALENO) FROM RM_ISSB A,RM_LOT B,RM_VAR Z WHERE  Z.VARNAME='" & rs3(1) & "' AND LOTYEAR='" & Year(yfdate) & "' AND a.lotno = b.lotno and a.lotdt = b.lotdt  and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode ='" & Divcode & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(Date2, "YYYY/MM/DD") & "' and b.varcode=z.varcode and b.ratecy='" & rs3(7) & "' and a.docno='" & rs3(4) & "'", cn, adOpenStatic

'                Print #f, Space(14) & Trim(CStr(rs3(1)))  & Space(18 - Len(Trim(rs3(1))) - Len(Trim(rs3(2)))) & Trim(CStr(rs3(2))) & Space(15 - Len(Trim(rs3(3)))) & Trim(CStr(rs3(3)))
                'Print #f, Space(18) & Padr(rs3(1), rs3(1).DefinedSize, " ") & Space(2) & Padl(Format(IIf(rs3(2) = 0, " ", rs3(2)), "###,###,##0.000"), 15, " ") & Space(5) & Padl(Format(IIf(rs3(3) = 0, " ", rs3(3)), "###,###,##0.00"), 16, " ")
                Print #f, Space(10) & Padl(rs3("docno"), 12, " ") & Space(3) & Padr(rs3("varcod"), 10, " ") & Space(1) & Padl(INF(rscount("quantity"), 0), 8, " ") & Space(3) & Padr(rs3("unit"), 5, " ") & Space(1) & Padl(Format(IIf(rs3(2) = 0, " ", rs3(2)), "###,###,##0.000"), 15, " ") & Space(1) & Padl(Format(IIf(rs3(3) = 0, " ", rs3(3)), "###,###,##0.00"), 16, " ")
                
                cnt = cnt + 1
                If cnt >= 60 Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                End If
                tot = tot + rs3(2)
                tot1 = tot1 + rs3(3)
                tot5 = tot5 + rscount("quantity")
                rs3.MoveNext
            Next j
           
            Set rs4 = New Recordset
            'rs4.Open "select sum(a.isskgs),sum(a.isskgs) * avg(b.ratekg)  from rm_issb a,rm_lot b where a.lotno = b.lotno and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and b.cntcode = '" & rs2(0) & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(date2, "YYYY/MM/DD") & "'", cn, adOpenStatic
            rs4.Open "select round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',SUM(b.bales) AS BALES  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "'  and c.cntcd = '" & rs2(0) & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(Date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by ratecy", cn, adOpenStatic
    
'            tot = 0
'            tot1 = 0
'            tot5 = 0
'            rs4.MoveFirst
'            Do While Not rs4.EOF
'                tot = tot + rs4(0)
'                tot1 = tot1 + rs4(1)
'                tot5 = tot5 + rs4("BALES")
'                rs4.MoveNext
'            Loop
            
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    'cnt = 8
                End If
            If rs3.RecordCount > 1 Then
                
                Print #f, Space(21) & "**  Total   **" & Space(4) & Padl(INF(tot5, 0), 5, " ") & Space(9) & Padl(INF(tot, 3), 15, " ") & Space(3) & Padl(INF(tot1, 2), 14, " ") ' & Chr(27) & "F"
                cnt = cnt + 1
            End If
            If cnt >= PageLen Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    'cnt = 7
                End If
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                    pg = pg + 1
                    'Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
     rs2.MoveNext
    Next
    Set rs5 = New Recordset
    'rs5.Open "select sum(a.isskgs),sum(a.isskgs) * avg(b.ratekg)  from rm_issb a,rm_lot b where a.lotno = b.lotno and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(date2, "YYYY/MM/DD") & "' ", cn, adOpenStatic
    rs5.Open "select round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',SUM(B.BALES) AS BALES  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and a.docdt between '" & Format(Date1, "YYYY/MM/DD") & "' and '" & Format(Date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by ratecy", cn, adOpenStatic
    
    gtot = 0
    gtot1 = 0
    gtot5 = 0
    rs5.MoveFirst
    Do While Not rs5.EOF
        gtot = gtot + rs5(0)
        gtot1 = gtot1 + rs5(1)
        gtot5 = gtot5 + rs5("BALES")
        rs5.MoveNext
    Loop
    Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                    pg = pg + 1
                    'Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    'Print #f, Space(18) & "**  Grand Total  **" & Space(3) & Padl(INF(rs5(0), 3), 15, " ") & Space(6) & Padl(INF(rs5(1), 2), 15, " ")
    
    'Print #f, Space(21) & "**  Total   **" & Space(4) & Padl(INF(tot5, 0), 5, " ") & Space(9) & Padl(INF(tot, 3), 15, " ") & Space(3) & Padl(INF(tot1, 2), 14, " ")
    Print #f, Space(16) & "**  Grand Total  **" & Space(1) & Padl(INF(tot5, 0), 8, " ") & Space(9) & Padl(INF(gtot, 3), 15, " ") & Space(3) & Padl(INF(gtot1, 2), 14, " ") '& Chr(27) & "F"
    cnt = cnt + 1
            If cnt >= PageLen Then
                    pg = pg + 1
                    'Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                    pg = pg + 1
                    'Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    Print #f, Chr(12)
    Close #f
    Open "c:\castaudit.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type castaudit.txt > prn"
    Close #f
    rep.txtfile = "c:\castaudit.txt"
    rep.Batfile = "c:\castaudit.bat"
    Screen.MousePointer = 0

Case 65

    Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    Open "C:\dailyctnstk" For Output As #f
    pg = 1
    Call prnhead(pg)
    cnt = 10
    Print #f, Chr(12)
    Close #f
    Open "c:\dailyiss.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type dailyiss.txt > prn"
    Close #f
    rep.txtfile = "c:\dailyiss.txt"
    rep.Batfile = "c:\dailyiss.bat"
    Screen.MousePointer = 0
    
Case 19
    Dim weigh As Double
    Dim qtyt As Double
    Dim amt As Double
    
    weigh = 0
    qtyt = 0
    amt = 0
    Gamt = 0
    
    Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    TOTVAL = 0
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    cnt = 0
    Close
    Open "c:\dailyiss.txt" For Output As #f
    Dim typeflg As String
    If Combo1.Text = "P-Unit 1-Production" Then
        typeflg = "P"
    ElseIf Combo1.Text = "Q-Unit 2-Production" Then
        typeflg = "Q"
    ElseIf Combo1.Text = "A-All Unit Production" Then
        typeflg = "A"
    End If
    If typeflg <> "A" Then
    Set rs2 = New Recordset
    rs2.Open "select distinct c.cntcd from rm_issb b,rm_issh c,rm_count d Where b.isstype='" & typeflg & "'and b.isstype=c.isstype and C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Date1 & "' and '" & Date2 & "' and b.isstype='" & typeflg & "' group by c.cntcd", cn, adOpenStatic, adLockBatchOptimistic
    Else
    Set rs2 = New Recordset
    rs2.Open "select distinct c.cntcd from rm_issb b,rm_issh c,rm_count d Where b.isstype in ('P','Q') and b.isstype=c.isstype and C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Date1 & "' and '" & Date2 & "' and b.isstype in ('P','Q') group by c.cntcd", cn, adOpenStatic, adLockBatchOptimistic
    End If
    
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg = 1
    Call prnhead(pg)
    cnt = 10
    rs2.MoveFirst
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    gtmix = 0
    gmix = 0
    Do While Not rs2.EOF
            gmix = 0
            Print #f, Space(6); Padr(CStr(rs2(0)), 10, " ")
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            If typeflg <> "A" Then
                Set rs4 = New Recordset
                 rs4.Open "select A.DOCDT,A.CNTCD,a.varcode,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum(isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',round((sum(isnull(e.netwt,0)))*ROUND(a.ratekg,4),2) 'Amount' " & _
                          " ,a.ratekg as ratekg,round((ratecy),0)  ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e  Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and b.isstype='" & typeflg & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  " & _
                          " c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and b.isstype='" & typeflg & "'and b.isstype=c.isstype group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a  group by varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno", DB, adOpenStatic
                          
            Else
                Set rs4 = New Recordset
                 rs4.Open "select A.DOCDT,A.CNTCD,a.varcode,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),a.plotno,round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum(isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',round((sum(isnull(e.netwt,0)))*ROUND(a.ratekg,4),2) 'Amount' " & _
                          " ,a.ratekg as ratekg,round((ratecy),0)  ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e  Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and b.isstype in ('P','Q') and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  " & _
                          " c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and b.isstype in ('P','Q') and b.isstype=c.isstype group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a  group by varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno", DB, adOpenStatic
            End If
                                   
                
                Do While Not rs4.EOF
                    If typeflg <> "A" Then
                    Set Rs = New Recordset
                    Rs.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum (isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',a.ratekg*sum(b.actisskgs) 'Amount',avg(ratekg)as ratekg,round((ratecy),0)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and" & _
                            " a.divcode = '" & Divcode & "' and b.isstype='" & typeflg & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a ", DB, adOpenStatic
                    Else
                    
                    Set Rs = New Recordset
                    Rs.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum (isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',a.ratekg*sum(b.actisskgs) 'Amount',avg(ratekg)as ratekg,round((ratecy),0)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and" & _
                            " a.divcode = '" & Divcode & "' and b.isstype in('P','Q') and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a ", DB, adOpenStatic
                    
                    End If
                     If Rs("netkg") > 0 Then
                        mix = Round((rs4(6) / Rs("netkg")) * 100, 2)
                     Else
                        mix = 0
                     End If
                     
                     
                     Set Namers = New Recordset
                     Namers.Open "Select varname from rm_var where varcode='" & rs4("varcode") & "'", DB, adOpenStatic
                     
                     Print #f, Space(13); Padl(rs4("lotno"), 7, " "); Space(4); Padr(Namers("varname"), 15, " ") & Padl(rs4("plotno"), 9, " ") & Padl(INF(rs4(4), 0), 8, " ") & Space(3); Padr(rs4(5), 5, " "); Padl(INF(rs4(6), 2), 16, " "); ; Padl(INF(mix, 2), 8, " "); Padl(INF(rs4(9), 2), 11, " "); Padl(INF(rs4("ratecandy"), 0), 15, " "); Padl(INF(rs4(8), 2), 21, " ")
                     gmix = gmix + mix
                     gtmix = gtmix + mix
                     amt = amt + rs4("amount")
                     cnt = cnt + 1
                     If cnt >= PageLen Then
                        Print #f, Space(5) & String(130, "-")
                        Print #f, Chr(12)
                        pg = pg + 1
                        cnt = 0
                        Call prnhead(pg)
                        cnt = 10
                    End If
                     TOTVAL = TOTVAL + rs4(8)
                     tottVal = tottVal + rs4(8)
                     rs4.MoveNext
            Loop
            If rs4.RecordCount > 1 Then
            If typeflg <> "A" Then
            Set RS6 = New Recordset
            RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(sum(ratecandy),2)as ratecandy from (select Bale=(count(b.baleno)),round(Sum (e.netwt),2) 'netkgs',avg(a.ratekg)'quintal',avg(a.ratekg)*sum(e.netwt) 'Amount',avg(ratekg)as ratekg,round((ratekg*355.6187),2)ratecandy " & _
                     "from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where b.isstype ='" & typeflg & _
                     "' and b.isstype=c.isstype and a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and c.isstype='" & typeflg & "' and  c.docno=b.docno and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "' and b.isstype='" & typeflg & "'  AND c.cntcd='" & rs2(0) & "' " & _
            "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'group by a.bblflg,RATEKG ) a ", DB, adOpenStatic
            Else
            Set RS6 = New Recordset
            RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(sum(ratecandy),2)as ratecandy from (select Bale=(count(b.baleno)),round(Sum (e.netwt),2) 'netkgs',avg(a.ratekg)'quintal',avg(a.ratekg)*sum(e.netwt) 'Amount',avg(ratekg)as ratekg,round((ratekg*355.6187),2)ratecandy " & _
                     "from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where b.isstype in ('P','Q')  " & _
                     " and b.isstype=c.isstype and a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and c.isstype in ('P','Q') and  c.docno=b.docno and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "' and b.isstype in ('P','Q')  AND c.cntcd='" & rs2(0) & "' " & _
            "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'group by a.bblflg,RATEKG ) a ", DB, adOpenStatic
            
            
            End If
            
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            'Print #f, Space(23) & Chr(27); "E"; " **   Total **"; Padl(rs6("bale"), 19, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(Round(gmix, 0), 2), 6, " "); Padl(INF(rs6("amount"), 2), 47, " "); Chr(27); "F"
            'Print #f, Space(23) & Chr(27); "E"; " **   Total **"; Padl(RS6("bale"), 19, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(gmix, 2), 6, " "); Padl(INF(amt, 2), 47, " "); Chr(27); "F"
            Print #f, Space(23) & " **   Total **"; Padl(RS6("bale"), 19, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(gmix, 2), 6, " "); Padl(INF(amt, 2), 47, " ")
            Gamt = Gamt + amt
            amt = 0
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            End If
        rs2.MoveNext
      Loop
        gtmix = gtmix / rs2.RecordCount
    If typeflg <> "A" Then
    Set RS6 = New Recordset
    RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount from (select Bale=(count(b.baleno)),round(Sum (isnull(e.netwt,0)),2) 'netkgs',sum(a.ratekg)*100'quintal',round(avg(a.ratekg)*sum(e.netwt),2) 'Amount'  " & _
             "from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where b.isstype='" & typeflg & "' and b.isstype=c.isstype " & _
             "and a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and b.isstype='" & typeflg & "' and b.isstype='" & typeflg & "'  and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and b.isstype='" & typeflg & "'  and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'" & _
             "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by a.bblflg) a   ", DB, adOpenStatic

    Else
    Set RS6 = New Recordset
    RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount from (select Bale=(count(b.baleno)),round(Sum (isnull(e.netwt,0)),2) 'netkgs',sum(a.ratekg)*100'quintal',round(avg(a.ratekg)*sum(e.netwt),2) 'Amount'  " & _
             "from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where b.isstype in ('P','Q') and b.isstype=c.isstype " & _
             "and a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and b.isstype in ('P','Q') and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and b.isstype in ('P','Q')  and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'" & _
             "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by a.bblflg) a   ", DB, adOpenStatic
    End If
    
    
    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    'Print #f, Space(23); Chr(27); "E" & " ** Grand Total **"; Padl(rs6("bale"), 15, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(rs6("amount"), 2), 47, " "); Chr(27); "F"
    Print #f, Space(23); " ** Grand Total **"; Padl(RS6("bale"), 15, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(Gamt, 2), 47, " ")
    'Print #f, Space(23); Chr(27); "E" & " ** Grand Total **"; Padl(RS6("bale"), 15, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(gamt, 2), 47, " "); Chr(27); "F"
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Chr(12)
    Close #f
    Open "c:\dailyiss.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type dailyiss.txt > prn"
    Close #f
    rep.txtfile = "c:\dailyiss.txt"
    rep.Batfile = "c:\dailyiss.bat"
    Screen.MousePointer = 0
    
Case 1998 'Transfer Register
    
    
    weigh = 0
    qtyt = 0
    amt = 0
    
    Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    TOTVAL = 0
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    cnt = 0
    Close
    Open "c:\dailytrans.txt" For Output As #f
    Set rs2 = New Recordset
    rs2.Open "select distinct c.cntcd from rm_issb b,rm_issh c,rm_count d Where C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & Date1 & "' and '" & Date2 & "' and b.isstype='T' group by c.cntcd", cn, adOpenStatic, adLockBatchOptimistic
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg = 1
    Call prnhead(pg)
    cnt = 10
    rs2.MoveFirst
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    gtmix = 0
    gmix = 0
    Do While Not rs2.EOF
            gmix = 0
            Print #f, Space(6); Padr(CStr(rs2(0)), 10, " ")
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            Set rs4 = New Recordset
                
                 rs4.Open "select A.DOCDT,A.CNTCD,a.varcode,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,ROUND((ISNULL(RATECANDY,0)/355.6187),2) AS RATEKG,a.plotno,ISNULL(RATECANDY,0) as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum(isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',round((sum(isnull(e.netwt,0)))*ROUND((ISNULL(RATECY,0)/355.6187),2),2) 'Amount' " & _
                          " ,ROUND((ISNULL(RATECY,0)/355.6187),2) AS RATEKG,ISNULL(ratecy,0)  ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e  Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and b.isstype='T' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  " & _
                          " c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a  group by varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,RATECANDY", DB, adOpenStatic
                 
                  
                
                Do While Not rs4.EOF
                    Set Rs = New Recordset
                    Rs.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum (isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',a.ratekg*sum(b.actisskgs) 'Amount',avg(ratekg)as ratekg,round((ratecy),0)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and" & _
                            " a.divcode = '" & Divcode & "' and b.isstype='T' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & rs2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a ", DB, adOpenStatic
                     If Rs("netkg") > 0 Then
                        mix = Round((rs4(6) / Rs("netkg")) * 100, 2)
                     Else
                        mix = 0
                     End If
                     Set Namers = New Recordset
                     Namers.Open "Select varname from rm_var where varcode='" & rs4("varcode") & "'", DB, adOpenStatic
                     
                     Print #f, Space(13); Padl(rs4("lotno"), 5, " "); Space(6); Padr(Namers("varname"), 15, " ") & Padl(rs4("plotno"), 9, " ") & Padl(INF(rs4(4), 0), 8, " ") & Space(3); Padr(rs4(5), 5, " "); Padl(INF(rs4(6), 2), 16, " "); ; Padl(INF(mix, 2), 8, " "); Padl(INF(rs4(9), 2), 11, " "); Padl(INF(rs4("ratecandy"), 0), 15, " "); Padl(INF(rs4(8), 2), 21, " ")
                     gmix = gmix + mix
                     gtmix = gtmix + mix
                     amt = amt + rs4("amount")
                     cnt = cnt + 1
                     If cnt >= PageLen Then
                        Print #f, Space(5) & String(130, "-")
                        Print #f, Chr(12)
                        pg = pg + 1
                        cnt = 0
                        Call prnhead(pg)
                        cnt = 10
                    End If
                     TOTVAL = TOTVAL + rs4(8)
                     tottVal = tottVal + rs4(8)
                     rs4.MoveNext
            Loop
            If rs4.RecordCount > 1 Then
            Set RS6 = New Recordset
            RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(sum(ratecandy),2)as ratecandy from (select Bale=(count(b.baleno)),round(Sum (e.netwt),2) 'netkgs',avg(a.ratekg)'quintal',avg(a.ratekg)*sum(e.netwt) 'Amount',avg(ratekg)as ratekg,round((ratekg*355.6187),2)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_bale e  Where   a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and c.isstype='T' and  c.docno=b.docno and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "' and b.isstype='T'  AND c.cntcd='" & rs2(0) & "' " & _
            "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'group by a.bblflg,RATEKG ) a ", DB, adOpenStatic
            Print #f,
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            'Print #f, Space(23) & Chr(27); "E"; " **   Total **"; Padl(rs6("bale"), 19, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(Round(gmix, 0), 2), 6, " "); Padl(INF(rs6("amount"), 2), 47, " "); Chr(27); "F"
            Print #f, Space(23); " **   Total **"; Padl(RS6("bale"), 19, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(Round(gmix, 0), 2), 6, " "); Padl(INF(amt, 2), 47, " ") '; Chr(27); "F"
            cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            End If
        rs2.MoveNext
      Loop
        gtmix = gtmix / rs2.RecordCount
    Set RS6 = New Recordset
    RS6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount from (select Bale=(count(b.baleno)),round(Sum (e.netwt,0)),2) 'netkgs',sum(a.ratekg)*100'quintal',round(avg(a.ratekg)*sum(e.netwt),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and b.isstype='T' and b.isstype='T'  and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and b.isstype='T'  and  c.docdt  between '" & Format(Date1, "yyyy-mm-dd") & "' and  '" & Format(Date1, "yyyy-mm-dd") & "'" & _
         "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by a.bblflg) a   ", DB, adOpenStatic

    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    'Print #f, Space(23); Chr(27); "E" & " ** Grand Total **"; Padl(rs6("bale"), 15, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(rs6("amount"), 2), 47, " "); Chr(27); "F"
    Print #f, Space(23) & " ** Grand Total **"; Padl(RS6("bale"), 15, " "); Padl(INF(RS6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(amt, 2), 47, " ") '; Chr(27); "F"
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= PageLen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Chr(12)
    Close #f
    Open "c:\dailytrans.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type dailytrans.txt > prn"
    Close #f
    rep.txtfile = "c:\dailytrans.txt"
    rep.Batfile = "c:\dailytrans.bat"
    Screen.MousePointer = 0
    

    
Case 20
    Set rep = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo3.Text, "yyyy-mm-dd")
    cnt = 0
    Open "c:\daterecp.txt" For Output As #f
    Set rs2 = New Recordset
    rs2.Open "select d.lotdt from rm_lot am_issb b,rm_issh c,rm_count d Where  a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and  a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & Date1 & "' and '" & Date2 & "' group by d.mixgrpcd ", cn, adOpenStatic, adLockBatchOptimistic
    If rs2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
        Close #f
        Exit Sub
    End If
    Call prnhead(pg)
    rs2.MoveFirst
    For I = 1 To rs2.RecordCount
        Print #f, Space(1) & Space(3 - Len(Trim(rs2(0)))) & Trim(CStr(rs2(0)))
        cnt = cnt + 2
            Set rs3 = New Recordset
            rs3.Open "select b.docdt,a.cntcode from rm_lot a,rm_issb b,rm_issh c,rm_count d Where  a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and " & _
                     "a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & Date1 & "' and  '" & Date2 & "' and d.mixgrpcd = '" & rs2(0) & "'  group by b.docdt,a.cntcode ", cn, adOpenStatic, adLockBatchOptimistic
            rs3.MoveFirst
            For j = 1 To rs3.RecordCount
                Print #f, Space(9) & Trim(CStr(rs3(0))) & Space(4) & Trim(CStr(rs3(1)))
                If cnt >= 53 Then
                    Call prnhead(pg)
                    cnt = 0
                End If
            Set rs4 = New Recordset
            rs4.Open "select a.varcode,a.lotno,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'rate/quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where   d.cntcd = a.cntcode and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and  d.mixgrpcd = '" & rs2(0) & "' and  b.docdt = '" & Format(rs3(0), "yyyy-mm-dd") & "' and a.cntcode = '" & rs3(1) & "' group by a.varcode,a.lotno,a.bblflg,a.ratekg", cn, adOpenStatic
              rs4.MoveFirst
              For K = 1 To rs4.RecordCount
                If Not IsNull(rs4(2)) Then
                  Print #f, Space(34) & Trim(CStr(rs4(0))) & Space(17 - Len(Trim(rs4(0))) - Len(Trim(rs4(1)))) & Trim(CStr(rs4(1))) & Space(9 - Len(Trim(IIf(IsNull(rs4(2)), "", rs4(2))))) & Trim(CStr(IIf(IsNull(rs4(2)), "", rs4(2)))) & Space(18 - Len(Trim(rs4(4)))) & Trim(CStr(rs4(4))) & Space(14 - Len(Trim(rs4(5)))) & Trim(CStr(rs4(5))) & Space(15 - Len(Trim(rs4(6)))) & Trim(CStr(rs4(6)))
                ElseIf Not IsNull(rs4(3)) Then
                  Print #f, Space(34) & Trim(CStr(rs4(0))) & Space(17 - Len(Trim(rs4(0))) - Len(Trim(rs4(1)))) & Trim(CStr(rs4(1))) & Space(16 - Len(Trim(IIf(IsNull(rs4(3)), "", rs4(3))))) & Trim(CStr(IIf(IsNull(rs4(3)), "", rs4(3)))) & Space(11 - Len(Trim(rs4(4)))) & Trim(CStr(rs4(4))) & Space(14 - Len(Trim(rs4(5)))) & Trim(CStr(rs4(5))) & Space(15 - Len(Trim(rs4(6)))) & Trim(CStr(rs4(6)))
                End If
                If cnt >= 53 Then
                    Call prnhead(pg)
                    cnt = 0
                End If
               rs4.MoveNext
            Next K
           rs3.MoveNext
           Next j
           
           Set rs5 = New Recordset
           rs5.Open "select sum(isnull(a.bale,0)),sum(isnull(a.bora,0)),sum(isnull(a.netkgs,0)),sum(isnull(a.quintal,0)),sum(isnull(a.Amount,0)) from (select d.mixgrpcd,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where   a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & Date1 & "' and  '" & Date2 & "'  and d.mixgrpcd = '" & rs2(0) & "' group by d.mixgrpcd,a.bblflg,a.ratekg) a group by a.mixgrpcd", cn, adOpenStatic
           Print #f,
           Print #f, " * Total *" & Space(60 - Len(" * Total *") - Len(Trim(CStr(IIf(IsNull(rs5(0)), "", rs5(0)))))) & Trim(CStr(IIf(IsNull(rs5(0)), "", rs5(0)))) & Space(7 - Len(Trim(IIf(IsNull(rs5(1)), "", rs5(1))))) & Trim(CStr(IIf(IsNull(rs5(1)), "", rs5(1)))) & Space(11 - Len(Trim(rs5(2)))) & Trim(CStr(rs5(2))) & Space(14 - Len(Trim(rs5(3)))) & Trim(CStr(rs5(3))) & Space(15 - Len(Trim(rs5(4)))) & Trim(CStr(rs5(4)))
        
        cnt = cnt + 2
        If cnt >= 53 Then
            Print #f, Chr(12)
            Call prnhead(pg)
            cnt = 0
        End If
     rs2.MoveNext
    Next
    Set RS6 = New Recordset
    RS6.Open "select sum(isnull(a.bale,0)),sum(isnull(a.bora,0)),sum(isnull(a.netkgs,0)),sum(isnull(a.quintal,0)),sum(isnull(a.Amount,0)) from (select d.mixgrpcd,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and  c.docdt between '" & Date1 & "' and  '" & Date2 & "' group by d.mixgrpcd,a.bblflg,a.ratekg) a ", cn, adOpenStatic

    Print #f, String(120, "-")
    Print #f, " * Grand Total *" & Space(60 - Len(" * Grand Total *") - Len(Trim(CStr(IIf(IsNull(RS6(0)), "", RS6(0)))))) & Trim(CStr(IIf(IsNull(RS6(0)), "", RS6(0)))) & Space(7 - Len(Trim(IIf(IsNull(RS6(1)), "", RS6(1))))) & Trim(CStr(IIf(IsNull(RS6(1)), "", RS6(1)))) & Space(11 - Len(Trim(RS6(2)))) & Trim(CStr(RS6(2))) & Space(14 - Len(Trim(RS6(3)))) & Trim(CStr(RS6(3))) & Space(15 - Len(Trim(RS6(4)))) & Trim(CStr(RS6(4)))
    Print #f, String(120, "-")
    'Print #f, Chr(15)
    Close #f
    Open "c:\dailyiss.bat" For Output As #f
    Print #f, "cd\"
    Print #f, "c:"
    Print #f, "cd\"
    Print #f, "type dailyiss.txt > prn"
    Close #f
    rep.txtfile = "c:\dailyiss.txt"
    rep.Batfile = "c:\dailyiss.bat"
    Screen.MousePointer = 0
Case 28

'    Call repproc2(lotstockperiod)
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    Set LB1 = lotstockperiod.Sections(2).Controls("lb_list")
'    LB1.Caption = "Lotwise stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")
'    dv1.rsCommand1.Open " select k.divcode,k.catcd,k.lotno,k.lotdt,sum(isnull(k.openbal,0)) as opkgs, sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah',sum(isnull(g.ratekg,0)) * 100 'ratequn',f.varname 'varname',(sum(isnull(g.ratekg,0)) * (sum(isnull(k.Openbal,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)))) 'Value' from (( " & _
'                        " select e.divcode 'divcode' ,e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',(isnull(e.netwt,0) - isnull(t.issuekgs,0)) 'openbal',(case when e.bblflg = 'B' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBale',(case when e.bblflg = 'R' then isnull(e.bales,0) - isnull(t.Bales,0) end) as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'Issue',0 as IssBale,0 as IssBorah from  " & _
'                        " (select c.divcode 'divcode',c.catcd 'catcd',c.lotno 'lotno',c.lotdt 'lotdt',sum(isnull(c.isskgs,0)) 'issuekgs',count(c.baleno)'Bales' from rm_issb c,rm_lot b where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and c.lotno = b.lotno and c.lotdt = b.lotdt and c.catcd = b.catcd and c.divcode = b.divcode and b.divcode = '" & Divcode & "' group by c.lotno,c.catcd,c.divcode,c.lotdt)t ,rm_lot e where e.lotdt <  '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and e.divcode = t.divcode and t.divcode = '" & Divcode & "' and t.lotno = e.lotno and e.lotdt = t.lotdt and t.catcd = e.catcd and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and (isnull(e.netwt,0) - isnull(t.issuekgs,0)) > 0 union " & _
'                        " select e.divcode 'divcode',e.catcd 'catcd',e.lotno 'lotno',e.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',e.netwt as 'Recep',case when e.bblflg = 'B' then e.bales end 'recpBale',case when e.bblflg = 'R' then e.bales end 'recpBorah',0 as 'Issue',0 as IssBale,0 as IssBorah from rm_lot e,rm_issb c where e.lotdt between  '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.lotno = c.lotno union " & _
'                        " select a.divcode 'divcode',a.catcd 'catcd',a.lotno 'lotno',a.lotdt 'lotdt',0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah' from rm_issb a,rm_lot c where a.docdt between  '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd  and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'" & _
'                        " group by a.divcode,a.catcd,a.lotno,a.lotdt,c.bblflg) )k ,rm_lot g ,rm_var f" & _
'                        " where g.lotno = k.lotno and g.lotdt = k.lotdt and g.varcode = f.varcode and g.catcd = k.catcd and  g.divcode = k.divcode and g.divcode = '" & Divcode & "' and  g.lotdt between  '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' group by k.divcode,k.catcd,k.lotno,k.lotdt,f.varname", cn, adOpenStatic, adLockBatchOptimistic
'    If dv1.rsCommand1.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'        Set lotstockperiod.DataSource = dv1
'        lotstockperiod.Show

         DTPicker3.maxdate = pdate
         DTPicker2.maxdate = pdate
         
         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

         
         
         
         If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
           ' Call StocklotReport(CStr(U), CStr(V), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text)
         Else
            MsgBox "Please select then  Lot Nos", vbInformation, head
            Exit Sub
         End If
        Screen.MousePointer = 0
'    End If

Case 29
 
'    Call StockDetailReport(DataCombo2.Text, DataCombo3.Text, DataCombo1.Text, DIVNAME)
'    Exit Sub
    D1 = CStr(Format(DataCombo2.Text, "yyyy-mm-dd"))
    D2 = CStr(Format(DataCombo3.Text, "yyyy-mm-dd"))
    'Call repproc2(stockdetperiod)
    cn.Execute "create table temp_details(det_date datetime,op_bale numeric(6),op_borah numeric(6),op_kgs numeric(10,3),recp_bale numeric(6),recp_borah numeric(6),recp_kgs numeric(10,2),iss_bale numeric(6),iss_borah numeric(6),iss_kgs numeric(10,2),clo_bale numeric(6),clo_borah numeric(6),clo_kgs numeric(10,2),open_val numeric(12,0),recp_val numeric(12,0),iss_val numeric(12,0),clos_val numeric(12,0))"

    For I = 0 To DateDiff("d", D1, D2)
       fdate = DateAdd("d", I, D1)
       Set Rs = New Recordset
'      Rs.Open "select sum(isnull(k.openkgs,0)) as opkgs, sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.Openbale,0)) 'openbale',sum(isnull(k.recpBale,0)) 'recpbale', sum(isnull(k.Openbale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', " & _
'            "sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah',sum(isnull(k.OpenBorah,0)) 'openborah',sum(isnull(k.recpBorah,0)) 'recpborah',sum(isnull(k.issborah,0)) 'issborah',sum(isnull(k.issbale,0)) 'issbale' ,sum(isnull(k.openval,0)) 'openvalu',sum(isnull(k.recval,0)) 'recvalu',sum(isnull(k.issval,0)) 'issvalu',sum(isnull(k.openval,0)) + sum(isnull(k.recval,0)) - sum(isnull(k.issval,0)) 'clovalu' " & _
'            "from ((select isnull(a.netwt,0) - isnull(b.isskgs,0) 'Openkgs',isnull(Openbale,0) -isnull(issbale,0)'OpenBale',isnull(Openborah,0) -isnull(issborah,0)'OpenBorah',0 as recep,0 as recpbale,0 as recpborah,0 as 'Issue',0 as IssBale,0 as IssBorah,isnull(a.val1,0) - isnull(b.val2,0) 'openval',0 as recval,0 as issval  from (select sum(isnull(netwt,0)) 'netwt',case when bblflg = 'B' then sum(isnull(bales,0)) end 'OpenBale', case when bblflg = 'R' then " & _
'            "sum(isnull(bales,0)) end 'OpenBorah',sum(isnull(netwt,0) * ratekg) 'val1' from rm_lot where lotdt < '" & Format(fdate, "yyyy-mm-dd") & "' group by bblflg) a , (select sum(isnull(c.isskgs,0)) 'isskgs', case when d.bblflg = 'B' then count(isnull(c.baleno,0))end 'issbale' , case when d.bblflg = 'B' then count(isnull(c.baleno,0))end 'issborah' ,sum(isnull(c.isskgs,0) * d.ratekg) 'val2' from rm_issb c,rm_lot d  where c.docdt < '" & Format(fdate, "yyyy-mm-dd") & "' and c.lotno = d.lotno " & _
'            "and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode group by d.bblflg ) b union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',sum(isnull(e.netwt,0)) as 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',0 as 'Issue',0 as IssBale,0 as IssBorah,0 as openval,sum(isnull(e.netwt,0) * e.ratekg) 'recval',0 as issval  from rm_lot e " & _
'            "where e.lotdt = '" & Format(fdate, "yyyy-mm-dd") & "' group by bblflg union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when b.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when b.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',0 as openval,0 as recval,sum(isnull(a.isskgs,0) * b.ratekg) 'issval'  from rm_issb a,rm_lot b " & _
'            "where a.docdt = '" & Format(fdate, "yyyy-mm-dd") & "'  and a.lotno = b.lotno and a.lotdt = b.lotdt and a.catcd = b.catcd and  a.divcode = b.divcode group by b.bblflg) )k", Db, adOpenStatic, adLockBatchOptimistic
        Rs.Open " select sum(isnull(k.openkgs,0)) as opkgs, sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.Openbale,0)) 'openbale',sum(isnull(k.recpBale,0)) 'recpbale',sum(isnull(k.Openbale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', " & _
                " sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah',sum(isnull(k.OpenBorah,0)) 'openborah',sum(isnull(k.recpBorah,0)) 'recpborah',sum(isnull(k.issborah,0)) 'issborah',sum(isnull(k.issbale,0)) 'issbale' ,sum(isnull(k.openval,0)) 'openvalu',sum(isnull(k.recval,0)) 'recvalu',sum(isnull(k.issval,0)) 'issvalu',sum(isnull(k.openval,0)) + sum(isnull(k.recval,0)) - sum(isnull(k.issval,0)) 'clovalu' " & _
                " from ((select isnull(a.netwt,0) - isnull(b.isskgs,0) 'Openkgs',isnull(Openbale,0) -isnull(issbale,0)'OpenBale',isnull(Openborah,0) -isnull(issborah,0)'OpenBorah',0 as recep,0 as recpbale,0 as recpborah,0 as 'Issue',0 as IssBale,0 as IssBorah,isnull(a.val1,0) - isnull(b.val2,0) 'openval',0 as recval,0 as issval  from (select sum(isnull(netwt,0)) 'netwt',case when bblflg = 'B' then " & _
                " sum(isnull(bales,0)) end 'OpenBale', case when bblflg = 'R' then sum(isnull(bales,0)) end 'OpenBorah',sum(isnull(netwt,0) * ratekg) 'val1'  from rm_lot  where lotdt < '" & Format(fdate, "yyyy-mm-dd") & "' and divcode = '" & Divcode & "' and  catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  group by bblflg) a , (select sum(isnull(c.isskgs,0)) 'isskgs', case when d.bblflg = 'B'" & _
                " then count(isnull(c.baleno,0))end 'issbale' , case when d.bblflg = 'B' then count(isnull(c.baleno,0))end 'issborah' ,sum(isnull(c.isskgs,0) * d.ratekg) 'val2' from rm_issb c,rm_lot d  where c.docdt < '" & Format(fdate, "yyyy-mm-dd") & "' and c.divcode = '" & Divcode & "' and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode " & _
                " group by d.bblflg ) b union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',sum(isnull(e.netwt,0)) as 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',0 as 'Issue',0 as IssBale ,0 as IssBorah,0 as openval,sum(isnull(e.netwt,0) * e.ratekg) 'recval',0 as issval  from rm_lot e " & _
                " where e.lotdt = '" & Format(fdate, "yyyy-mm-dd") & "' and e.divcode = '" & Divcode & "' and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  group by bblflg union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when b.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when b.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah', " & _
                " 0 as openval,0 as recval,sum(isnull(a.isskgs,0) * b.ratekg) 'issval'  from rm_issb a,rm_lot b where a.docdt = '" & Format(fdate, "yyyy-mm-dd") & "' and  a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  and a.lotno = b.lotno and a.lotdt = b.lotdt and a.catcd = b.catcd and  a.divcode = b.divcode group by b.bblflg) )k", cn, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            cn.Execute ("insert into temp_details values('" & Format(fdate, "yyyy-mm-dd") & "'," & IIf(IsNull(Rs(4)) = True, 0, Rs(4)) & "," & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "," & IIf(IsNull(Rs(0)) = True, 0, Rs(0)) & "," & IIf(IsNull(Rs(5)) = True, 0, Rs(5)) & "," & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "," & IIf(IsNull(Rs(1)) = True, 0, Rs(1)) & ", " & IIf(IsNull(Rs(11)) = True, 0, Rs(11)) & ", " & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "," & IIf(IsNull(Rs(2)) = True, 0, Rs(2)) & "," & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "," & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "," & IIf(IsNull(Rs(3)) = True, 0, Rs(3)) & "," & IIf(IsNull(Rs(12)) = True, 0, Rs(12)) & "," & IIf(IsNull(Rs(13)) = True, 0, Rs(13)) & "," & IIf(IsNull(Rs(14)) = True, 0, Rs(14)) & "," & IIf(IsNull(Rs(15)) = True, 0, Rs(15)) & ")")
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
    Next
    Set Rs = New Recordset
    Rs.Open "select det_date,op_bale,op_borah,op_kgs,recp_bale,recp_borah,recp_kgs,iss_bale,iss_borah,iss_kgs,clo_bale as clos_bal,clo_borah as clos_borah,clo_kgs clos_kgs,open_val,recp_val,iss_val,clos_val from temp_details", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.EOF Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
    Else
        Rs.MoveFirst
        Set LB1 = stockdetperiod.Sections(5).Controls("opbale")
        LB1.Caption = Format(Rs(1), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("opborah")
        LB1.Caption = Format(Rs(2), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("opkgs")
        LB1.Caption = Format(Rs(3), "#,##,##,###.00")
        Set LB1 = stockdetperiod.Sections(5).Controls("opval")
        LB1.Caption = Format(Rs(13), "#,##,##,###.00")
        Rs.MoveLast
        Set LB1 = stockdetperiod.Sections(5).Controls("clobale")
        LB1.Caption = Format(Rs(10), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("cloborah")
        LB1.Caption = Format(Rs(11), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("clokgs")
        LB1.Caption = Format(Rs(12), "#,##,##,###.00")
        Set LB1 = stockdetperiod.Sections(5).Controls("cloval")
        LB1.Caption = Format(Rs(16), "#,##,##,###.00")
    End If
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    Set LB1 = stockdetperiod.Sections(2).Controls("lb_list")
    LB1.Caption = " Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & "  To  " & Format(DataCombo3.Text, "dd/mm/yyyy")
    dv1.rsCommand1.Open "select det_date,op_bale,op_borah,op_kgs,recp_bale,recp_borah,recp_kgs,iss_bale,iss_borah,iss_kgs,clo_bale as clos_bal,clo_borah as clos_borah,clo_kgs clos_kgs,open_val,recp_val,iss_val,clos_val from temp_details", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set stockdetperiod.DataSource = dv1
        stockdetperiod.Show
        cn.Execute ("drop table temp_details")
        Screen.MousePointer = 0
     End If
    
Case 30
'    Call repproc2(stockvarperiod)
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    Set LB1 = stockvarperiod.Sections(2).Controls("lb_list")
'    LB1.Caption = "Varietywise  Statement From  " & Format(DataCombo2.Text, "dd/mm/yyyy") & "  To  " & Format(DataCombo3.Text, "dd/mm/yyyy")
'    dv1.rsCommand1.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
'                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
'                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
'                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
'                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
'                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.divcode = '" & Divcode & "' group by a.varcode,a.bblflg )y," & _
'                        " (select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
'                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
'                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
'                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
'                        " from rm_lot e ,rm_var f where e.lotdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.divcode = '" & Divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
'                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'" & _
'                        " and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & Divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode and isnull(k.Openval,0) + isnull(k.recpval,0) - isnull(k.Issval,0) > 0 group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
'    If dv1.rsCommand1.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'        Set stockvarperiod.DataSource = dv1
'        stockvarperiod.Show
'    End If
'    Exit Sub
         DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
        ' Call StockVarietyReport(CStr(U), CStr(V), CStr(W), Mid$(DataCombo2.Text, 1, InStr(DataCombo2.Text, "-") - 1), Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1))
        Screen.MousePointer = 0
'    End If

Case 88

         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
         Call StockareaReport(CStr(U), CStr(v), CStr(W))
        Screen.MousePointer = 0
Case 880

         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
         
         X = DCmbFLtN.Text
         Y = DCmbTLtN.Text
       ' Call StocklotareaReport(CStr(U), CStr(V), CStr(W), CStr(X), CStr(Y))
        Screen.MousePointer = 0

Case 31
'    Call repproc2(stkweekperiod)
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    Set LB1 = stkweekperiod.Sections(2).Controls("lb_list")
'    LB1.Caption = "Varietywise  Statement From  " & Format(DataCombo2.Text, "dd/mm/yyyy") & "  To  " & Format(DataCombo3.Text, "dd/mm/yyyy") & "               (" & Mid$(DataCombo1.Text, 3) & ")"
'    dv1.rsCommand1.Open " select f.varname,sum(isnull(k.openkgs,0)) as opkgs,sum(isnull(k.openbale,0)) as opbale,sum(isnull(k.openborah,0)) as opborah,sum(isnull(k.openval,0)) as opval, sum(isnull(recep,0)) as reckgs, sum(isnull(recpbale,0)) as recbale, sum(isnull(recpborah,0)) as recborah ," & _
'                        " sum(isnull(k.recpval,0)) as recval,sum(isnull(k.issbale,0)) as issbale,sum(isnull(issborah,0)) as issborah,sum(isnull(k.issue,0)) 'isskgs',sum(isnull(k.issval,0)) as issval,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
'                        " sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'" & _
'                        " from ((select y.varcode,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as 'Recep',0 as recpBale," & _
'                        " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,sum(isnull(a.netwt,0)) 'kgs1',(case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end) as 'Bale1',(case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end) as 'Borah1'," & _
'                        " sum (IsNull(a.ratekg, 0) * IsNull(a.netwt, 0)) 'val1' from rm_lot a,rm_var v  where a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and a.varcode = v.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.divcode = '" & divcode & "' group by a.varcode,a.bblflg )y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2'," & _
'                        " (case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d,rm_var e where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and d.varcode = e.varcode and " & _
'                        " c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode and d.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and d.divcode = '" & divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode union select e.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval'," & _
'                        " sum (IsNull(e.netwt, 0)) 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval'" & _
'                        " from rm_lot e ,rm_var f where e.lotdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.divcode = '" & divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.bblflg union select c.varcode,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval'," & _
'                        " sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "'  and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'" & _
'                        " and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotno = c.lotno and a.lotdt = c.lotdt and a.divcode = c.divcode and c.divcode = '" & divcode & "' and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.bblflg) )k,rm_var f where k.varcode = f.varcode group by f.varname", cn, adOpenStatic, adLockBatchOptimistic
'    If dv1.rsCommand1.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'        Set stkweekperiod.DataSource = dv1
'        stkweekperiod.Show
'        Screen.MousePointer = 0
'    End If
U = Format(DataCombo2.Text, "dd/mm/yyyy")
         v = Format(DataCombo3.Text, "dd/mm/yyyy")
         W = DataCombo1.Text
        ' Call StockWeekReport(CStr(U), CStr(V), CStr(W), DIVNAME)
        Screen.MousePointer = 0

Case 32
'    Call repproc2(stkgodownperiod)
'    If dv1.rsCommand2_Grouping.State = adStateOpen Then
'        dv1.rsCommand2_Grouping.Close
'    End If
'    Set LB1 = stkgodownperiod.Sections(2).Controls("lb_list")
'    LB1.Caption = "Varietywise Godownwise Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy") & "           " & Mid$(DataCombo1.Text, 3) & ")"
'    dv1.rsCommand2_Grouping.Open " shape{select k.varcode 'varcode',k.godown,sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs', sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ," & _
'                                 " sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval'from ((select y.varcode,y.godown,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale," & _
'                                 " 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,a.godown,sum(isnull(a.netwt,0)) 'kgs1',case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1',case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end as 'Borah1',sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a,rm_var v " & _
'                                 " where a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.varcode = v.varcode and a.catcd ='C' and a.divcode = '" & divcode & "' group by a.varcode,a.godown,a.bblflg )y,(select d.varcode,d.godown,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2', " & _
'                                 " sum (IsNull(C.isskgs, 0) * IsNull(d.ratekg, 0)) 'val2' from rm_issb c ,rm_lot d,rm_var e where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and d.varcode = e.varcode and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode and d.divcode = '" & divcode & "' group by d.varcode,d.godown,d.bblflg)t where y.godown *= t.godown and y.varcode *= t.varcode " & _
'                                 " union select e.varcode,e.godown,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' " & _
'                                 " from rm_lot e ,rm_var f where e.lotdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and e.divcode = '" & divcode & "' and e.varcode  = f.varcode  group by e.varcode,e.godown,e.bblflg  union select c.varcode,c.godown,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
'                                 " case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.divcode = '" & divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt " & _
'                                 " and a.catcd = c.catcd and c.varcode = g.varcode  group by c.varcode,c.godown,c.bblflg) )k group by k.varcode,k.godown } as command2 compute command2 by 'varcode','godown'", cn, adOpenStatic, adLockBatchOptimistic
'    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'        Set stkgodownperiod.DataSource = dv1
'        stkgodownperiod.Show
'        Screen.MousePointer = 0
'    End If
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'    dv1.rsCommand1.Open " select k.godown,sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs', sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from " & _
'                        " ((select y.godown,isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah', isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale,0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval " & _
'                        " from (select a.godown,sum(isnull(a.netwt,0)) 'kgs1',case when a.bblflg = 'B'  then sum(isnull(a.bales,0)) end as 'Bale1',case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end as 'Borah1',sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a,rm_var v where a.lotdt < '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.varcode = v.varcode and a.catcd ='C' and a.divcode =  '" & divcode & "' " & _
'                        " group by a.godown,a.bblflg )y,(select d.godown,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2',(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum (IsNull(C.isskgs, 0) * IsNull(d.ratekg, 0)) 'val2' from rm_issb c ,rm_lot d where c.docdt < '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and   d.divcode =  '" & divcode & "' " & _
'                        " group by d.godown,d.bblflg)t where y.godown *= t.godown union  select e.godown,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale," & _
'                        " 0 as IssBorah ,0 as 'issval' from rm_lot e where e.lotdt = '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and e.divcode =  '" & divcode & "'  group by e.godown,e.bblflg union  select c.godown,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah', 0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
'                        " case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0)) end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,rm_var g where a.docdt = '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.divcode =  '" & divcode & "'  and a.lotno = c.lotno and a.lotdt = c.lotdt and a.catcd = c.catcd   group by c.godown,c.bblflg ) )k group by k.godown", cn, adOpenStatic, adLockBatchOptimistic
'    If dv1.rsCommand1.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    Else
'
'        Screen.MousePointer = 0
'    End If
         
         'u = Format(DataCombo2.Text, "dd/mm/yyyy")
         'v = Format(DataCombo3.Text, "dd/mm/yyyy")
         
         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
         
         X = DCmbFLtN.Text
         Y = DCmbTLtN.Text
         z = Check1.value
         If z = 0 Then
         '   Call StockGodownReport(CStr(U), CStr(V), CStr(W), DIVNAME, CStr(X), CStr(Y), "N")
         Else
          '  Call StockGodownReport(CStr(U), CStr(V), CStr(W), DIVNAME, CStr(X), CStr(Y), "Y")
            '''Call StockGodownAReport(CStr(u), CStr(v), CStr(w), DIVNAME, CStr(x), CStr(y))
         End If
         Screen.MousePointer = 0

Case 33
    U = Format(DataCombo2.Text, "dd/mm/yyyy")
         v = Format(DataCombo3.Text, "dd/mm/yyyy")
         W = DataCombo1.Text
     Call StockVariety1Report(CStr(U), CStr(v), CStr(W), divname)
'         Call CloseVReport(CStr(u), CStr(v), CStr(w), DIVNAME)
        Screen.MousePointer = 0
        Exit Sub
    
    'Call repproc2(clovarstock)
    If dv1.rsCommand2_Grouping.State = adStateOpen Then
        dv1.rsCommand2_Grouping.Close
    End If
    Set LB1 = clovarstock.Sections(2).Controls("lb_list")
    LB1.Caption = "Varietywise Closing Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "DD/MM/YYYY") & "                                               (" & Mid$(DataCombo1.Text, 3) & ")"
    dv1.rsCommand2_Grouping.Open " shape {select k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale'," & _
                                 " sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.varcode,y.slname,y.lotdt,y.plotno,y.lotno,y.catcd,y.ratecy,y.ratekg, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs'," & _
                                 " isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,b.slname,a.lotdt,c.plotno," & _
                                 " a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1', case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1', case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end as 'Borah1', sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a, fa_slmas b,rm_arrival c " & _
                                 " where a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and  a.lotno = c.lotno and a.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  and a.divcode = c.divcode and  a.catcd ='C'" & _
                                 " and a.divcode = '" & Divcode & "'  group by a.varcode,b.slname,a.lotdt,c.plotno,a.lotno,a.catcd,a.ratecy,a.bblflg,a.ratekg)y,(select d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.ratecy,d.ratekg,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                                 " (case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
                                 " and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and d.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and  d.divcode = b.divcode  and d.divcode = '" & Divcode & "' group by d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.bblflg,d.ratecy,d.ratekg)t where " & _
                                 " y.varcode *= t.varcode and y.lotno *= t.lotno and y.lotdt *= t.lotdt and y.catcd *= t.catcd and y.slname *= t.slname and  y.plotno *= t.plotno  union  select e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.ratecy,e.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs'," & _
                                 " case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e,fa_slmas b,rm_arrival c where e.lotdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' " & _
                                 " and e.supcd = b.slcode and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.divcode = c.divcode and  e.divcode = '" & Divcode & "' group by e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.bblflg  ," & _
                                 " e.ratecy,e.ratekg  union  select c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd, c.ratecy,c.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
                                 " case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where a.docdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and " & _
                                 " c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno = d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and c.divcode = d.divcode and a.divcode = '" & Divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd " & _
                                 " group by c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd,c.bblflg," & _
                                 " c.ratecy,c.ratekg) )k group by k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,k.ratekg }as command2 compute command2 by 'varcode'", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set clovarstock.DataSource = dv1
        clovarstock.Show
        Screen.MousePointer = 0
    End If

Case 35
'     Call repproc2(clomixstock)
'     If dv1.rsCommand2_Grouping.State = adStateOpen Then
'         dv1.rsCommand2_Grouping.Close
'     End If
'     Set LB1 = clomixstock.Sections(2).Controls("lb_list")
'     LB1.Caption = "Mixcountwise Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "DD/MM/YYYY") & "                                               (" & Mid$(DataCombo1.Text, 3) & ")"
'     dv1.rsCommand2_Grouping.Open "shape {select k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale'," & _
'                                "sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.cntcode,y.varcode,y.slname,y.lotdt,y.plotno,y.lotno,y.catcd,y.ratecy,y.ratekg, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs'," & _
'                                "isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno," & _
'                                "a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1', case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1', case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end as 'Borah1', sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a, fa_slmas b,rm_arrival c " & _
'                                "where a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and  a.lotno = c.lotno and a.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  and a.divcode = c.divcode and  a.catcd ='C'" & _
'                                "and a.divcode = '" & divcode & "'  group by a.cntcode,a.varcode,b.slname,a.lotdt,c.plotno,a.lotno,a.catcd,a.ratecy,a.bblflg,a.ratekg)y,(select d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.ratecy,d.ratekg,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
'                                "(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
'                                "and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and d.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and  d.divcode = b.divcode  and d.divcode = '" & divcode & "' group by d.cntcode,d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.bblflg,d.ratecy,d.ratekg)t where " & _
'                                "y.cntcode *= t.cntcode and y.varcode *= t.varcode and y.lotno *= t.lotno and y.lotdt *= t.lotdt and y.catcd *= t.catcd and y.slname *= t.slname and  y.plotno *= t.plotno  union  select e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.ratecy,e.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs'," & _
'                                "case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e,fa_slmas b,rm_arrival c where e.lotdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' " & _
'                                "and e.supcd = b.slcode and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.divcode = c.divcode and  e.divcode = '" & divcode & "' group by e.cntcode,e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.bblflg  ," & _
'                                "e.ratecy,e.ratekg  union  select c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd, c.ratecy,c.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
'                                "case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg = 'R' then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where a.docdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and " & _
'                                "c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno = d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and c.divcode = d.divcode and a.divcode = '" & divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd " & _
'                                "group by c.cntcode,c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd,c.bblflg," & _
'                                "c.ratecy,c.ratekg) )k group by k.cntcode,k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,k.ratekg }as command2 compute command2 by 'cntcode'", cn, adOpenStatic, adLockBatchOptimistic
'
'     If dv1.rsCommand2_Grouping.RecordCount = 0 Then
'        MsgBox "No records found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'     Else
'        Set clomixstock.DataSource = dv1
'        clomixstock.Show
'        Screen.MousePointer = 0
'     End If
'     Exit Sub
     U = Format(DataCombo2.Text, "dd/mm/yyyy")
     v = Format(DataCombo3.Text, "dd/mm/yyyy")
     W = DataCombo1.Text
     Call CloseMReport(CStr(U), CStr(v), CStr(W), divname)
     Screen.MousePointer = 0

Case 34
    'Call repproc2(clovarstocksum)
    'Set dv1 = New DataEnvironment1
    If dv1.rsCommand1.State = adStateOpen Then
    dv1.rsCommand1.Close
    End If
    Set LB1 = clovarstock.Sections(2).Controls("list")
    LB1.Caption = "Varietywise Godownwise Stock Statement As On  " & Format(DataCombo4.Text, "dd/mm/yyyy") & "                                               (" & Mid$(DataCombo3.Text, 3) & ")" & "                                                               " & Format(DataCombo4.Text, "dd/mm/yyyy")
    dv1.rsCommand1.Open "select k.varcode,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
                        "sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ," & _
                        "sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.varcode, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale'," & _
                        "isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval," & _
                        "0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,b.slname,a.lotdt,c.plotno," & _
                        "a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1',case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1'," & _
                        "case when a.bblflg = 'R' then sum(isnull(a.bales,0)) end as 'Borah1',sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a " & _
                        "where a.lotdt < '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "' and a.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "'  and " & _
                        "a.catcd ='C'  group by a.varcode,a.bblflg)y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                        "(case when d.bblflg = 'R' then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d where c.docdt < '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "'" & _
                        "and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode  and d.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and " & _
                        "d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode   union  select e.varcode,0 as Openbal,0 as 'OpenBale'," & _
                        "0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg = 'R' then sum(isnull(e.bales,0)) end 'recpBorah'," & _
                        "Sum (IsNull(e.ratekg, 0) * IsNull(e.netwt, 0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e  where e.lotdt = '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "'" & _
                        "e.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and e.divcode = '" & Divcode & "' group by e.varcode,e.bblflg union  select c.varcode,0 as Openbal,0 as 'OpenBale'," & _
                        "0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale'," & _
                        "case when c.bblflg = 'R' then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c, where a.docdt = '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "' and " & _
                        "a.catcd = c.catcd and a.divcode = c.divcode and a.lotno = c.lotno and a.lotdt = b.lotdt and c.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and  a.divcode = '" & Divcode & "' " & _
                        "group by c.varcode,c.bblflg  ) )k group by k.varcode", DB, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand1.RecordCount = 0 Then
    MsgBox "No records found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
    Else
    Set clovarstocksum.DataSource = dv1
    clovarstocksum.Show
    Screen.MousePointer = 0
    End If
   
Case 78
   To_Date = Format(DataCombo2.Text, "dd/mm/yyyy")
   From_Date = Format(DataCombo3.Text, "dd/mm/yyyy")
   Call rct_reg_dt(CStr(From_Date), CStr(To_Date), divname)
   
Case 79
    U = Format(DataCombo2.Text, "yyyy-mm-dd")
    v = Format(DataCombo3.Text, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

   ' Call Lotwise_Weight_Difference(DataCombo2.Text, DataCombo3.Text, DIVNAME)
   
   
Case 100
        'u = Format(DataCombo2.Text, "dd/mm/yyyy")
        'v = Format(DataCombo3.Text, "dd/mm/yyyy")
        
        U = Format(DTPicker1.value, "dd/mm/yyyy")
        v = Format(DTPicker2.value, "dd/mm/yyyy")
        If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        Call StockLReport(CStr(U), CStr(v))
        Screen.MousePointer = 0
        Exit Sub
               
            LotDatestock.Title = divname
            If dv1.rsCommand8.State = adStateOpen Then
                dv1.rsCommand8.Close
            End If
            Set LB1 = LotDatestock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "Datewise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")

             dv1.rsCommand8.Open " SHAPE {select distinct a.arrdt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  group by arrdt}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'}  AS Command9 RELATE 'arrdt' TO 'arrdt') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic

            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotDatestock.DataSource = dv1
               LotDatestock.Show
               Screen.MousePointer = 0
            End If
    
Case 101
    
    U = Format(DTPicker2.value, "dd/mm/yyyy")
    v = Format(DTPicker3.value, "dd/mm/yyyy")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    W = Combo2.Text
    Call Varietywisedetaily(CDate(U), CDate(v), CStr(W))
    Screen.MousePointer = 0
    Exit Sub
                LotVarstock.Title = divname
                    If dv1.rsCommand8.State = adStateOpen Then
                            dv1.rsCommand8.Close
                    End If

            Set LB1 = LotVarstock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "DateWise Variety Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")

             dv1.rsCommand8.Open " SHAPE {select distinct d.varname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  group by d.varname}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' }  AS Command9 RELATE 'varname' TO 'varname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic

            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotVarstock.DataSource = dv1
               LotVarstock.Show
               Screen.MousePointer = 0
            End If
    
Case 102
        
   ' Call proc_date_upcountry(DataCombo2.Text, DataCombo3.Text)
    Screen.MousePointer = 0
    Exit Sub

        

                LotLustock.Title = divname
                    If dv1.rsCommand8.State = adStateOpen Then
                            dv1.rsCommand8.Close
                    End If
            
            Set LB1 = LotLustock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "DateWise Local/upcountry Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")
                         
             dv1.rsCommand8.Open " SHAPE {select distinct z.Areaname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and  a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and z.areacode=a.areacd group by z.areaname}  AS Command8 APPEND ({select a.lotdt,a.lotno,z.areaname,a.arrdt,b.slname,(a.ratecy/355.6187) 'rate',x.cntname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt,(a.netwt*(a.ratecy/355.6187)) 'value'  from rm_lot a,fa_slmas b,rm_cat c,rm_var d,rm_count x,rm_area z where b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'" & _
              "  and z.areacode=a.areacd and x.cntcd=a.cntcode  }  AS Command9 RELATE 'areaname' TO 'areaname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic
            
            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotLustock.DataSource = dv1
               LotLustock.Show
               Screen.MousePointer = 0
            End If

Case 66

    U = DTPicker2.value
    v = DTPicker3.value
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    W = CStr(Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
    xx = CStr(DCmbFLtN)
    yy = CStr(DCmbTLtN)
  '  Call enjoy(CStr(U), CStr(V), DIVNAME, DataCombo4.Text, CStr(xx), CStr(yy))
'


'    u = CStr(Format(DataCombo2.Text, "dd/mm/yyyy"))
'    v = CStr(Format(DataCombo3.Text, "dd/mm/yyyy"))
'    w = CStr(Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
'    xx = CStr(DCmbFLtN)
'    yy = CStr(DCmbTLtN)
'    Call enjoy(CStr(u), CStr(v), DIVNAME, DataCombo4.Text, CStr(xx), CStr(yy))
Case 350
U = CStr(Format(DataCombo2.Text, "dd/mm/yyyy"))
    v = CStr(Format(DataCombo3.Text, "dd/mm/yyyy"))
    W = CStr(Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
    
    
    xx = CStr(DCmbFLtN)
    yy = CStr(DCmbTLtN)
    Call DetIss.DetIss(CStr(U), CStr(v), divname, CStr(W), CStr(xx), CStr(yy))
        
Case 99
    U = CStr(Format(DataCombo2.Text, "dd/mm/yyyy"))
    v = CStr(Format(DataCombo3.Text, "dd/mm/yyyy"))
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
    
    
    
    
    Call rec_varity(CStr(U), CStr(v), divname)

    
Case 77
    If Combo1.Text = "" Then
        MsgBox "Type cannot be Empty", vbInformation, head
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    U = Format(DataCombo2.Text, "yyyy-mm-dd")
    v = Format(DataCombo3.Text, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
   ' Call Purchase_Day_Book(DataCombo2.Text, DataCombo3.Text, Left(DataCombo1.Text, 1), Combo1.Text, DIVNAME)

Case 52
   ' Call OpenKey(DataCombo2.Text, CStr(Format(DataCombo1.Text, "dd/mm/yyyy")), DIVNAME)
Case 228
     Screen.MousePointer = 11
     U = Format(DataCombo2.Text, "dd/mm/yyyy")
     v = Format(DataCombo3.Text, "dd/mm/yyyy")
     If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
   '  Call con_varity(CStr(U), CStr(V), DIVNAME)
    Screen.MousePointer = 0
    
Case 89
    Screen.MousePointer = 11
     U = Format(DataCombo2.Text, "dd/mm/yyyy")
     Call con_varity2(CStr(U), divname)
    Screen.MousePointer = 0
    
    
Case 352
     Screen.MousePointer = 11
     Call SalConf(CStr(DataCombo2.Text), divname)
     Screen.MousePointer = 0
    
Case 999
    Screen.MousePointer = 11
   ' Call variety_stoct.VarietystockReport(DTPicker1.value, Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1), Mid$(DCmbFLtN.Text, 1, InStr(DCmbFLtN.Text, "-") - 1), Mid$(DCmbTLtN.Text, 1, InStr(DCmbTLtN.Text, "-") - 1), Mid$(Combo3.Text, 1, InStr(Combo3.Text, "-") - 1), Mid$(Combo4.Text, 1, InStr(Combo4.Text, "-") - 1), OptAll.value, OptDirect.value, OptWithParty.value)
    Screen.MousePointer = 0
Case 500
    Screen.MousePointer = 11
    a = Format(DataCombo2.Text, "yyyy-mm-dd")
    b = Format(DataCombo3.Text, "yyyy-mm-dd")
    If CDate(a) > CDate(b) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(b) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    Call qu_para(a, b, divname)
    Screen.MousePointer = 0
Case 111
    
'    u = Format(DataCombo2.Text, "dd/mm/yyyy")
'    v = Format(DataCombo3.Text, "dd/mm/yyyy")
    
    U = Format(DTPicker1.value, "dd/mm/yyyy")
    v = Format(DTPicker2.value, "dd/mm/yyyy")
    Call stockledger_stock(CStr(U), CStr(v), divname)
    Screen.MousePointer = 0
    Exit Sub
                LotVarstock.Title = divname
                    If dv1.rsCommand8.State = adStateOpen Then
                            dv1.rsCommand8.Close
                    End If

            Set LB1 = LotVarstock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "DateWise Variety Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")

             dv1.rsCommand8.Open " SHAPE {select distinct d.varname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  group by d.varname}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' }  AS Command9 RELATE 'varname' TO 'varname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic

            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotVarstock.DataSource = dv1
               LotVarstock.Show
               Screen.MousePointer = 0
            End If
Case 115
         U = Format(DTPicker2.value, "dd/mm/yyyy")
         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         
         
         'Call StockVarietyReport(CStr(u), CStr(v), CStr(w))
         Call StockAbsStatement1(CStr(U), CStr(v), CStr(W))
        Screen.MousePointer = 0
Case 143
       ' Call LodReleaseReport(DTPicker1.value)
Case 311
    If Len(DataCombo1.Text) > 0 And IsNumeric(DataCombo1.Text) Then
        LTNo = DataCombo1.Text
        If Combo1.Text = "P-Unit 1-Production" Then
            typeflg = "P"
        ElseIf Combo1.Text = "Q-Unit 2-Production" Then
            typeflg = "Q"
        ElseIf Combo1.Text = "A-All Unit Production" Then
            typeflg = "A"
        End If
        
     '   Call CottRecn(DataCombo1.Text, typeflg)
    Else
        MsgBox "Please Select the Lot No", vbInformation, head
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
 Case 870
 
 Dim mixnew As String
    
    Screen.MousePointer = 11
    U = Format(DataCombo2.Text, "YYYY-MM-DD")
    If DataCombo3.Text = "ALL - ALL" Then
        mixnew = "A"
    Else
        mixnew = DataCombo3.Text
    End If
    
    Dim clsCryRptnew As New clsCrystal
    Set clsCryRptnew.cryRept = Cry_MixingAllocate_rpt
    clsCryRptnew.CrystalPrint

    CrystalReport3.Reset
    CrystalReport3.Connect = connectstring
    CrystalReport3.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport3.ParameterFields(0) = "@Divcode;" & Divcode & ""
    CrystalReport3.ParameterFields(1) = "@FromDate;" & Format(DataCombo1.Text, "YYYY-MM-DD") & ""
    CrystalReport3.ParameterFields(2) = "@ToDate;" & Format(DataCombo2.Text, "YYYY-MM-DD") & ""
    CrystalReport3.ParameterFields(3) = "@Mixgrp;" & mixnew & ""
    CrystalReport3.WindowShowPrintSetupBtn = True
    CrystalReport3.WindowShowSearchBtn = True
    CrystalReport3.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport3.Action = 1
    CrystalReport3.PrinterCopies = 1
    Screen.MousePointer = 0

    Exit Sub
    
    Screen.MousePointer = 0
End Select
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()
 Unload Me
End Sub

Private Sub Command3_Click()
 
Screen.MousePointer = 11
intervalMinutes = -1
Select Case Repindex

Case 787
 U = Format(DataCombo2.Text, "dd/mm/yyyy")
    S1 = DataCombo3.Text
    
 Dim clsCryRptmtixqty As New clsCrystal
    Set clsCryRptmtixqty.cryRept = Cry_Mix_Qty
    clsCryRptmtixqty.CrystalPrint

    CrystalReport3.Reset
        CrystalReport3.DiscardSavedData = True
        CrystalReport3.Connect = connectstring
        CrystalReport3.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport3.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport3.ParameterFields(1) = "@docdt;" & Format(U, "yyyy-mm-dd") & ""
        CrystalReport3.ParameterFields(2) = "@mixgrp;" & S1 & ""
        CrystalReport3.WindowShowPrintSetupBtn = True
        CrystalReport3.WindowShowSearchBtn = True
        CrystalReport3.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport3.Action = 1
        CrystalReport3.PrinterCopies = 1
        Screen.MousePointer = 0


Case 788
 U = Format(DataCombo2.Text, "dd/mm/yyyy")
    S1 = DataCombo3.Text
    
 Dim clsCryRptm As New clsCrystal
    Set clsCryRptm.cryRept = Cry_Mix_Detail
    clsCryRptm.CrystalPrint

    CrystalReport3.Reset
        CrystalReport3.DiscardSavedData = True
        CrystalReport3.Connect = connectstring
        CrystalReport3.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport3.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport3.ParameterFields(1) = "@docdt;" & Format(U, "yyyy-mm-dd") & ""
        CrystalReport3.ParameterFields(2) = "@mixgrp;" & S1 & ""

        CrystalReport3.WindowShowPrintSetupBtn = True
        CrystalReport3.WindowShowSearchBtn = True
        CrystalReport3.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport3.Action = 1
        CrystalReport3.PrinterCopies = 1
        Screen.MousePointer = 0
        
Case 789

    Call StockLotReport2(CStr(Format(yfdate, "yyyy-mm-dd")), CStr(Format(pdate, "yyyy-mm-dd")), "", "1", "1", "", "")
    

    Call PUTDATADATE2
    
    Screen.MousePointer = 0

 End Select

End Sub

Private Sub DataCombo1_Change()
'Call DataCombo2_GotFocus
End Sub

Private Sub datacombo1_LostFocus()
Select Case Repindex
Case 6
    If DataCombo1.Text <> "" Then
        Code = Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1))
    End If
    

End Select
End Sub
Private Sub DataCombo13_GotFocus()
Select Case Repindex
Case 25
    Set Rs = New Recordset
    Rs.Open "select distinct contdt from rm_cont where divcode='" & Divcode & "' and (isnull(ordqty,0) > isnull(recqty,0)) and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
      If Rs.RecordCount <> 0 Then
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "contdt"
        If Not Rs.EOF Then
            Rs.MoveFirst
            Rs.MoveNext
            DataCombo13.Text = Rs(0)
        End If
      Else
       MsgBox "No Pending Contract For this Period", vbInformation
       Exit Sub
       
      End If
Case 6
   Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where divcode='" & Divcode & "' and upper(passed) = 'Y' and  lotno is null and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "arrdate"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo13.Text = Rs(0)
        End If
    End If

End Select
End Sub

Private Sub DataCombo1_GotFocus()
Select Case Repindex
Case 1, 2
    Set Rs = New Recordset
    'rAVI rs.Open "select distinct a.CATCd  +  '-'  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt='" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' ", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        Combo2.Visible = True
        DataCombo1.ListField = "field"
        If Not Rs.EOF Then
            Rs.MoveFirst
            Do While Not Rs.EOF
                    Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "A   -  ALL"
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            Combo2.Text = Rs(0)
            EXITflg = ""
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If

Case 28, 29, 31, 32, 33, 35, 522, 511
    If DataCombo2.Text = " " Then
        Exit Sub
    End If
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -   '  + b.catname as catcdname from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt between '" & Format(DataCombo2.Text, "yyyy/mm/dd") & "' and '" & Format(DataCombo3.Text, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
        Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
        Combo2.AddItem "A   -  ALL"
        Rs.MoveFirst
        Combo2.Text = Rs(0)
     End If
Case 200
    Set Rs = New Recordset
    'rAVI rs.Open "select distinct a.CATCd  +  '-'  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt='" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' ", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where A.OPFLG='Y' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotYEAR='" & Year(yfdate) & "' order by field ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        Combo2.Visible = True
        DataCombo1.ListField = "field"
        If Not Rs.EOF Then
            Rs.MoveFirst
            Do While Not Rs.EOF
                    Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "A   -  ALL"
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            Combo2.Text = Rs(0)
            EXITflg = ""
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
End Select
End Sub



Private Sub DataCombo2_GotFocus()
Select Case Repindex


Case 1, 2
    If Repindex = 1 Then
        Set Rs = New Recordset
        ' rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where DIVCODE = '" & Divcode & "' and CATCD = '" & Trim(Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
         Rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where DIVCODE = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
    Else
        Set Rs = New Recordset
        'raVI rs.Open "select a.LOTDT as fields from rm_lot a where isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "'   order by a.LOTNO,a.LOTDT ", cn, adOpenStatic
        Rs.Open "select DISTINCT a.LOTDT as fields from rm_lot a where a.DIVCODE ='" & Divcode & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by a.LOTDT ", cn, adOpenStatic
    End If
    
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "fields"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
            EXITflg = ""
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        EXITflg = "EXIT"
    End If
Case 3 '
    Set Rs = New Recordset
   ' rs.Open "select distinct convert(varchar,CONTDT,103) as Fields from RM_CONT where DIVCODE = '" & divcode & "' and (isnull(ORDQTY,0) > isnull(RECQTY,0)) and CONTDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' order by convert(varchar,CONTDT,103) asc", cn, adOpenStatic, adLockBatchOptimistic
'    rs.Open "select distinct CONTDT as Fields from RM_CONT where DIVCODE = '" & Divcode & "' and (isnull(ORDQTY,0) > isnull(RECQTY,0)) and CONTDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' order by CONTDT", cn, adOpenStatic, adLockBatchOptimistic
     'rs.Open "select distinct CONTDT as Fields from RM_CONT where DIVCODE = '" & Divcode & "' and (isnull(ORDQTY,0) > isnull(RECQTY,0)) and CONTDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and (godown not in ('C','G','M') or godown is null) order by CONTDT", cn, adOpenStatic, adLockBatchOptimistic
     Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) and divcode='" & Divcode & "'  AND CANCELFLG IS NULL AND CANCELDT IS NULL order by contdt", DB, adOpenStatic, adLockBatchOptimistic
     'rs.Open "select distinct CONTDT as Fields from RM_CONT where DIVCODE = '" & Divcode & "' and (isnull(ORDQTY,0) > isnull(RECQTY,0)) and CONTDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' order by CONTDT", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "Fields"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo1.Text = Rs(0)
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
        End If
'    Else
'        MsgBox "No Record Found", vbInformation
'        DataCombo2.ListField = ""
'        DataCombo2.Text = ""
'        EXITflg = "EXIT"
    End If
    
 Case 199
    Set Rs = New Recordset
    Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  AND CANCELFLG IS not NULL AND CANCELDT IS not NULL order by contdt", DB, adOpenStatic, adLockBatchOptimistic
    'Rs.Open "select  cast(docno as varchar)+' - '+ convert(varchar,docdt,103) AS Fields from rm_ordcancel  where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) and divcode='" & Divcode & "'  AND CANCELFLG IS NULL AND CANCELDT IS NULL order by docdt", Db, adOpenStatic, adLockBatchOptimistic
    'Rs.Open "select  cast(docno as varchar)+' - '+ convert(varchar,docdt,103) AS Fields from rm_ordcancel  where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' order by docdt", Db, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "Fields"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo1.Text = Rs(0)
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
        End If

    End If
    
    
       
    
Case 4
    
    Set Rs = New Recordset
    Rs.Open "select distinct ARRDATE as Fields from RM_ARRIVAL where  DIVCODE = '" & Divcode & "' and ARRDATE between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and (passed is null or passed = 'N')", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
        End If
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        Exit Sub
        'EXITflg = "EXIT"
    End If
    
    
    
Case 77

    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "select distinct a.catcd+'-'+b.catname as cat from rm_lot a,rm_cat b where a.catcd=b.catcd and  a.divcode = '" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "cat"
    DataCombo1.Text = Rs(0)
    End If
Case 66
'    Set cn = New Connection
'    cn.Open connectstring
'    Set RS = New Recordset
''    RS.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
'    'RAvi rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
'    RS.Open "select distinct arrdt as lotdt from rm_lot where lotYEAR='" & Year(yfdate) & "' and divcode='" & Divcode & "' and arrdt is not null  and rejflg='N' and lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
'    If RS.RecordCount <> 0 Then
'        Set DataCombo2.RowSource = RS
'        Set DataCombo3.RowSource = RS
'        DataCombo2.ListField = "lotdt"
'        DataCombo3.ListField = "lotdt"
'        RS.MoveFirst
'        If Not IsNull(RS(0)) Then DataCombo2.Text = RS(0)
'        RS.MoveLast
'        If Not IsNull(RS(0)) Then DataCombo3.Text = RS(0)
'    Else
'        MsgBox "No Record Found", vbInformation
'        DataCombo2.ListField = ""
'        DataCombo2.Text = ""
'        DataCombo3.ListField = ""
'        DataCombo3.Text = ""
'    End If

    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt as lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Call DataCombo4_Change

Case 350

    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt as lotdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", cn, adOpenStatic
    'Rs.Open "select distinct lotdt as lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
'    Else
'        MsgBox "No Record Found", vbInformation
'        DataCombo2.ListField = ""
'        DataCombo2.Text = ""
'        DataCombo3.ListField = ""
'        DataCombo3.Text = ""
    End If
    Call DataCombo4_Change

Case 5
    Set Rs = New Recordset
    Rs.Open "select distinct isnull(PASSDT,0) arrdate from rm_arrival where  PASSED='Y' and passbl=0 and passdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and isnull(quantity,0)-isnull(passbl,0) > 0 ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        'EXITflg = "EXIT"
        Exit Sub
    End If

Case 6
   
    Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where divcode='" & Divcode & "' and upper(passed) = 'Y' and  lotno is not null and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        Rs.MoveLast
        DataCombo2.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        'EXITflg = "EXIT"
    End If

Case 28, 29, 31, 32, 33, 35, 522, 511
    'If DataCombo1.Text = " " Then
    '    Exit Sub
    'End If
    Set Rs = New Recordset
    'rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a,rm_cat b where a.divcode = '" & divcode & "' and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'", cn, adOpenStatic, adLockBatchOptimistic
    'rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic

    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    DTPicker3.maxdate = pdate
    If Repindex <> 32 Then
        DataCombo2.Text = yfdate
        DataCombo3.Text = pdate
    ElseIf Repindex = 32 Then
        DataCombo2.Visible = False
        DataCombo3.Visible = False
        DTPicker2.Visible = True
        DTPicker3.Visible = True
        DTPicker2.value = Rs(0)
        DTPicker2.value = yfdate
        DTPicker3.value = pdate
        DTPicker3.maxdate = pdate
        DTPicker2.maxdate = pdate
        Check1.Visible = True
    End If

    End Select
End Sub

Private Sub DataCombo2_LostFocus()
If reptindex = 100 Then
If DataCombo1.Text <> "" And DataCombo1.Text <> "" Then
If IsDate(DataCombo2.Text) > IsDate(DataCombo3.Text) Then
MsgBox ("From Date Should be Greater than To Date")
DataCombo2.Text = ""
End If
End If
End If
If Repindex = 2 Then
    Call DataCombo1_GotFocus
End If
End Sub


Private Sub DataCombo3_Change()
Select Case Repindex
Case 870
    If DataCombo3.Text <> "ALL - ALL" Then
    Dim rsa As Recordset
    Set rsa = New Recordset
    rsa.Open "select 'ALL - ALL' as mixno  union all select distinct cntcd mixno from RM_issReqH where cntcd like '%" & DataCombo3.Text & "%' ", DB, adOpenStatic
    If rsa.EOF = False Then
       Set DataCombo3.RowSource = rsa
        DataCombo3.ListField = "mixno"
    End If
    'rsa.MoveFirst
    'DataCombo2.Text = rsa("cntcd")
   Else
        Set recnew = New Recordset
        recnew.Open " select 'ALL - ALL' as mixno  union all select distinct cntcd  mixno from RM_issReqH where docdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' ", cn, adOpenStatic, adLockBatchOptimistic
            If recnew.RecordCount <> 0 Then

                Set DataCombo3.RowSource = recnew
                DataCombo3.ListField = "mixno"
                    If Not recnew.EOF Then
                          recnew.MoveFirst
                          DataCombo3.Text = recnew(0)
                    End If
            End If
   End If
End Select
End Sub

Private Sub DataCombo3_Click(area As Integer)
Select Case Repindex
Case 787, 788
On Error Resume Next
    Dim rsa As Recordset
    Set rsa = New Recordset
    rsa.Open "select DOCDT from RM_issReqH where MIXgrp = '" & DataCombo3.Text & "' and  divcode='" & Divcode & "'", DB, adOpenStatic
    If rsa.EOF = False Then
       Set DataCombo2.RowSource = rsa
        DataCombo2.ListField = "DOCDT"
    End If
    rsa.MoveFirst
    DataCombo2.Text = rsa("DOCDT")
Case 870

'        Set recnew = New Recordset
'        recnew.Open " select 'ALL - ALL' as mixno  union all select distinct cntcd  mixno from RM_issReqH where docdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' ", cn, adOpenStatic, adLockBatchOptimistic
'            If recnew.RecordCount <> 0 Then
'
'                Set DataCombo3.RowSource = recnew
'                DataCombo3.ListField = ""
'                DataCombo3.ListField = "mixno"
'                    If Not recnew.EOF Then
'                          recnew.MoveFirst
'                          DataCombo3.Text = recnew(0)
'                    End If
'            End If

End Select
End Sub

Private Sub DataCombo3_LostFocus()
Select Case Repindex
Case 100
        If DataCombo1.Text <> "" And DataCombo1.Text <> "" Then
        If IsDate(DataCombo2.Text) > IsDate(DataCombo3.Text) Then
        MsgBox ("From Date Should be Greater than To Date")
        DataCombo2.Text = ""
        End If
        End If
Case 27
     Set rs1 = New Recordset
     rs1.Open "select distinct a.lotdt ""lotdt"" from rm_lot a,rm_cat b where a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
     If rs1.RecordCount <> 0 Then
       Set DataCombo4.RowSource = rs1
       DataCombo4.ListField = "lotdt"
       If Not rs1.EOF Then
         rs1.MoveFirst
         DataCombo4.Text = rs1(0)
       End If
     End If
End Select
End Sub
Private Sub DataCombo4_Change()
    If DataCombo4.Text <> Empty Then
    Set Rs = New Recordset
    'rs.Open "select distinct b.lotdt as lotdt from rm_arrival a,rm_lot b,rm_cont c where a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt and b.supcd='" & Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1) & "' order by b.lotdt", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "Select Distinct b.lotdt as lotdt from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt " & _
            " order by b.lotdt", cn, adOpenStatic, adLockBatchOptimistic
'    If Rs.RecordCount <> 0 Then
'        Set DataCombo2.RowSource = Rs
'        Set DataCombo3.RowSource = Rs
'        DataCombo2.ListField = "lotdt"
'        DataCombo3.ListField = "lotdt"
'        Rs.MoveFirst
'        If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
'        Rs.MoveLast
'        If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
'    Else
'        DataCombo2.ListField = Empty
'        DataCombo3.ListField = Empty
'        DataCombo2.Text = Empty
'        DataCombo3.Text = Empty
'    End If
    Set Rs = New Recordset
    'rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt and b.supcd='" & Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1) & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt  order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    'query on 03/10/2005
    'select distinct lotno from rm_lot where opflg='N' and lotdt between '2005-04-01' and '2005-12-31'
    If Rs.RecordCount <> 0 Then
        Set DCmbFLtN.RowSource = Rs
        Set DCmbTLtN.RowSource = Rs
        DCmbFLtN.ListField = "lotno"
        DCmbTLtN.ListField = "lotno"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DCmbTLtN.Text = Rs(0)
    Else
        DCmbFLtN.ListField = Empty
        DCmbTLtN.ListField = Empty
        DCmbFLtN.Text = Empty
        DCmbTLtN.Text = Empty
    End If
    End If
End Sub
Private Sub DataCombo5_GotFocus()
'Select Case REPINDEX
'Case 28
     Set Rs = New Recordset
     Rs.Open "select catcd  +  '-'  + catname as catcdname from rm_cat", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
       Set DataCombo3.RowSource = Rs
       DataCombo5.ListField = "catcdname"
       If Not Rs.EOF Then
         Rs.MoveFirst
         DataCombo5.Text = Rs(0)
       End If
     End If
'End Select
End Sub

Private Sub DataCombo5_LostFocus()
Set rs1 = New Recordset
Select Case Repindex
Case 28, 522, 511
    rs1.Open "select distinct a.lotdt ""lotdt"" from rm_lot a,rm_cat b where a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(DataCombo5.Text, 1, (InStr(DataCombo5.Text, "-") - 1))) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If rs1.RecordCount <> 0 Then
    Set DataCombo1.RowSource = rs1
    Set DataCombo2.RowSource = rs1
    DataCombo1.ListField = "lotdt"
    DataCombo2.ListField = "lotdt"
    If Not rs1.EOF Then
    rs1.MoveFirst
    DataCombo1.Text = rs1(0)
    End If
    If Not rs1.EOF Then
    rs1.MoveLast
    DataCombo2.Text = rs1(0)
    End If
    End If
    End Select
End Sub

Private Sub DTPicker1_Click()
DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
End Sub

Private Sub DTPicker2_Change()
    DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','1','1000','" & Trim(Year(DTPicker3.value) - 1) & "'"
    
    Set TmpRs = New Recordset
    TmpRs.Open "select distinct issdocno from tmp_MixChart order by issdocno", cn, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        TmpRs.MoveFirst
        Combo1.Clear
        Combo4.Clear
        While Not TmpRs.EOF
            Combo1.AddItem TmpRs(0)
            Combo4.AddItem TmpRs(0)
            TmpRs.MoveNext
        Wend
        TmpRs.MoveFirst
        Combo1.Text = TmpRs(0)
        TmpRs.MoveLast
        Combo4.Text = TmpRs(0)
    End If
End Sub

Private Sub DTPicker3_Change()
    DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','1','1000','" & Trim(Year(DTPicker3.value) - 1) & "'"
    
    Set TmpRs = New Recordset
    TmpRs.Open "select distinct issdocno from tmp_MixChart order by issdocno", cn, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        TmpRs.MoveFirst
        Combo1.Clear
        Combo4.Clear
        While Not TmpRs.EOF
            Combo1.AddItem TmpRs(0)
            Combo4.AddItem TmpRs(0)
            TmpRs.MoveNext
        Wend
        TmpRs.MoveFirst
        Combo1.Text = TmpRs(0)
        TmpRs.MoveLast
        Combo4.Text = TmpRs(0)
    End If
End Sub

Private Sub Form_Activate()
'If EXITflg <> "" Then
   ' Unload Me
'End If
If Repindex = "789" Then
    Call StockLotReport2(CStr(Format(yfdate, "yyyy-mm-dd")), CStr(Format(pdate, "yyyy-mm-dd")), "", "1", "1", "", "")

    'Call PUTDATADATE2
    'DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Trim(Year(DTPicker3.value) - 1) & "'"
    'DB.Execute "exec SP_Mix_Chart '" & Divcode & "','2000-01-01','2023-01-01','1','1000','" & Trim(Year(DTPicker3.value) - 1) & "'"
    DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format("01" & Right(pdate, 8), "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','1','1000','" & Trim(Year(DTPicker3.value) - 1) & "'"
    
    Set TmpRs = New Recordset
    TmpRs.Open "select distinct issdocno from tmp_MixChart order by issdocno", cn, adOpenStatic, adLockBatchOptimistic
    If Not TmpRs.EOF Then
        TmpRs.MoveFirst
        Combo1.Clear
        Combo4.Clear
        While Not TmpRs.EOF
            Combo1.AddItem TmpRs(0)
            Combo4.AddItem TmpRs(0)
            TmpRs.MoveNext
        Wend
        TmpRs.MoveFirst
        Combo1.Text = TmpRs(0)
        TmpRs.MoveLast
        Combo4.Text = TmpRs(0)
    End If
End If
intervalMinutes = -1
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
Command1.Top = 5500
Command2.Top = 5500
Screen.MousePointer = 0
Call openconnection
intervalMinutes = -1
EXITflg = ""
Select Case Repindex

'Added
Case 786
    'Cotton Mixwise Issue Abstract

    Label5.Caption = "Cotton Mixwise Issue Abstract Report"
    
    Label2.Caption = " From Date"
    Label3.Caption = " To Date"
    
    
    Call DataCombo2_GotFocus

    DataCombo1.Visible = True
    DataCombo4.Visible = True
    
    Label1.Caption = " From Mixing"
    Label6.Caption = " To Mixing"
    
    Set cn = New Connection
    cn.Open connectstring
    
    Set Rs = New Recordset

'    RS.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic

    Rs.Open "Select distinct docdt from rm_issh where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic

    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "docdt"
        DataCombo3.ListField = "docdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    
    Set rec = New Recordset
    
    rec.Open "Select distinct cntcd from rm_issh where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    
    If rec.RecordCount <> 0 Then
        
        Set DataCombo1.RowSource = rec
        Set DataCombo4.RowSource = rec
                
        DataCombo1.ListField = "cntcd"
        DataCombo4.ListField = "cntcd"
        
        If Not rec.EOF Then
            rec.MoveFirst
            DataCombo1.Text = rec(0)
            rec.MoveLast
            DataCombo4.Text = rec(0)
        End If
        
    End If
            
        Label2.Top = 700
        DataCombo2.Top = 600
        
        Label3.Top = 1200
        DataCombo3.Top = 1100
        
        Label1.Top = 1700
        DataCombo1.Top = 1600
        DataCombo1.Width = 2070
        
        Label6.Visible = True
        Label6.Top = 2300
        DataCombo4.Top = 2200
        DataCombo4.Width = 2070
        
    Frame1.Height = Frame1.Height + 700
    SSTab1.Height = SSTab1.Height + 700
    
    
    'Command1.Top = Command1.Top - 1900
    'Command2.Top = Command2.Top - 1900

Case 787 'Quality Export

        Label2.Caption = "Date"
        Label3.Visible = True
        Label3.Caption = "Mixing"
        Label5.Caption = "Quality Report For Mixing Request"
        Me.Caption = "Quality Report For Mixing Request"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = True
        DataCombo1.Visible = False
        
        Label2.Top = 700
        DataCombo2.Top = 600
        
        Label3.Top = 1200
        DataCombo3.Top = 1100
        
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        
        
        Command1.Top = Command1.Top - 1200
        Command2.Top = Command2.Top - 1200
        Command3.Visible = True
        Command3.Top = Command2.Top
        Set rec = New Recordset
        openconnection
        
        'rec.Open "select distinct lotdt from RM_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        rec.Open "select docdt,mixgrp mixno from RM_issReqH where divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "docdt"
                Set DataCombo3.RowSource = rec
                DataCombo3.ListField = "mixno"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(1)
                    End If
             Else
                MsgBox "No record Found", vbInformation, head
                Exit Sub
             
            End If

Case 788 'Detailed Mixing Report

        Label2.Caption = "Date"
        Label3.Visible = True
        Label3.Caption = "Mixing"
        Label5.Caption = "Detailed Report For Mixing Request"
        Me.Caption = "Detailed Report For Mixing Request"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = True
        DataCombo1.Visible = False
        
        Label2.Top = 700
        DataCombo2.Top = 600
        
        Label3.Top = 1200
        DataCombo3.Top = 1100
        
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        
        
        Command1.Top = Command1.Top - 1200
        Command2.Top = Command2.Top - 1200
         Command3.Visible = True
        Command3.Top = Command2.Top
        
        Set rec = New Recordset
        openconnection
        
        'rec.Open "select distinct lotdt from RM_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        rec.Open "select docdt,mixgrp mixno from RM_issReqH where divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "docdt"
                Set DataCombo3.RowSource = rec
                DataCombo3.ListField = "mixno"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(1)
                    End If
            Else
                MsgBox "No record Found", vbInformation, head
                Exit Sub
            End If
Case 789 'Mixing Chart
        
        Label2.Visible = True
        Label3.Visible = True
        DTPicker2.Visible = True
        DTPicker3.Visible = True
        LblFLTN.Visible = True
        LblTLtN.Visible = True
        Combo1.Visible = True
        Combo4.Visible = True
        LblFLTN.Caption = "From Iss Doc No."
        LblTLtN.Caption = "To Iss Doc No."
        DTPicker2.value = pdate
        DTPicker3.value = pdate
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Mixing Chart Report"
        Me.Caption = "Mixing Chart Report"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        
        DataCombo2.Visible = False
        Command1.Visible = False
        
        Label3.Top = 1200
        DataCombo3.Top = 1100
        LblFLTN.Top = Label3.Top + 480
        LblFLTN.Left = Label3.Left
        LblTLtN.Top = LblFLTN.Top + 480
        LblTLtN.Left = Label3.Left
        
        Combo1.Top = DTPicker3.Top + 480
        Combo4.Top = DTPicker3.Top + 960
        
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        
        
        Command1.Top = Command1.Top - 1200
        Command2.Top = Command2.Top - 1200
        Command3.Visible = True
        Command3.Caption = "Excel"
        Command3.Top = Command2.Top
        
        Set rec = New Recordset
        openconnection
        
        'rec.Open "select distinct lotdt from RM_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
'        rec.Open "select docdt,mixgrp mixno from RM_issReqH where divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
'            If rec.RecordCount <> 0 Then
'                Set DataCombo2.RowSource = rec
'                DataCombo2.ListField = "docdt"
'                Set DataCombo3.RowSource = rec
'                DataCombo3.ListField = "mixno"
'                    If Not rec.EOF Then
'                          rec.MoveFirst
'                          DataCombo2.Text = rec(0)
'                          DataCombo3.Text = rec(1)
'                    End If
'            Else
'                MsgBox "No record Found", vbInformation, head
'                Exit Sub
'            End If


Case 167
    Label5.Caption = "Cotton weight List"
    DataCombo2.Visible = False
    Label2.Visible = False
    DataCombo3.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = False
    Label1.Visible = True
    'Label1.Caption = "Lot No"
    Label1.Caption = "Date"
    Label1.Left = 800
    Label1.Top = 1180
    'DataCombo1.Top = 1080
    DTPicker2.Top = 1180
    DTPicker2.Visible = True
    DTPicker2.value = pdate
    DTPicker2.maxdate = pdate
    
    Combo1.Top = 1750
    Label4.Top = 1750
    Combo1.Visible = False
    Label4.Visible = False
    'Combo1.AddItem "P-Unit 1-Production"
    'Combo1.AddItem "Q-Unit 2-Production"
    'Combo1.AddItem "A-All Unit Production"
   '
    'Combo1.Text = "P-Unit 1-Production"
    
    Command1.Top = 4000
    Command2.Top = 4000
Case 200

   Label5.Caption = "Lotwise Stock Ledger"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    ChkUsr.Visible = True
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and A.OPFLG='Y' AND a.lotYEAR='" & Year(yfdate) & "'  order by a.LOTNo ", cn, adOpenStatic
    'a.lotno between " & LtNF & " and " & LtNT & "
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1200
    Combo2.Top = 1100
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1700
    LblTLtN.Top = 2200
    LblFLTN.Left = 240
    LblTLtN.Left = 240
    
Case 1998   'Transfer Register
        Label2.Caption = "Date"
        Label3.Caption = "To TransferDate"
        Label5.Caption = "Daily Transfer List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        'Ravi
        Frame1.Height = Frame1.Height - 1000
        SSTab1.Height = SSTab1.Height - 900
        Command1.Top = Command1.Top - 1500
        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISSTYPE ='T' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False

Case 18
        Label2.Caption = "From IssueDate"
        Label3.Caption = "To IssueDate"
        Label3.Visible = True
        Label5.Caption = "Cost Audit Report"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
Case 19
        Label2.Caption = "Date"
        Label3.Caption = "To IssueDate"
        Label5.Caption = "Issue List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        
        Combo1.Top = 1500
        Label4.Top = 1500
        Combo1.Visible = True
        Label4.Visible = True
        Combo1.AddItem "P-Unit 1-Production"
        Combo1.AddItem "Q-Unit 2-Production"
        Combo1.AddItem "A-All Unit Production"
        
        'Combo1.Text = "P-Unit 1-Production"
        Combo1.ListIndex = 0
        Command1.Top = 4000
        Command2.Top = 4000
        'Ravi
'        Frame1.Height = Frame1.Height - 1000
'        SSTab1.Height = SSTab1.Height - 900
'        Command1.Top = Command1.Top - 1500
'        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
Case 20
        Label2.Caption = "From Date"
        Label3.Caption = "To   Date"
        Label5.Caption = "Datewise Receipt List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct lotdt from rm_lot order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
  
Case 52
        Label2.Caption = "Category"
        Label1.Caption = "Date"
        Label5.Caption = "Open Key Loan"
        Label1.Visible = True
        Label2.Visible = True
        Frame1.Visible = True
        DataCombo1.Visible = True
        DataCombo3.Visible = False
        Label3.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "SELECT DISTINCT CATNAME FROM RM_CAT", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
            Set DataCombo2.RowSource = rec
            DataCombo2.ListField = "catname"
            If Not rec.EOF Then
                rec.MoveFirst
                DataCombo2.Text = rec(0)
            End If
        End If
        Set rec = New Recordset
        rec.Open "SELECT DISTINCT LOTDT FROM RM_LOT where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
            Set DataCombo1.RowSource = rec
            DataCombo1.ListField = "LOTDT"
            If Not rec.EOF Then
                rec.MoveFirst
                DataCombo1.Text = rec(0)
            End If
        End If
Case 99
    Label5.Caption = "VarietyWise Receipt List"
    Label1.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    Call DataCombo2_GotFocus
    Set cn = New Connection
    cn.Open connectstring
    
    Set Rs = New Recordset
    'RS.Open "select distinct lotdt as lotdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' and rejflg='N' and lotyear='" & Year(yfdate) & "' ", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct arrdt as lotdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
    
    If Rs.RecordCount <> 0 Then
    Set DataCombo2.RowSource = Rs
    Set DataCombo3.RowSource = Rs
    DataCombo2.ListField = "lotdt"
    DataCombo3.ListField = "lotdt"
    Rs.MoveFirst
    If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
    Rs.MoveLast
    If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
    Else
    MsgBox "No Record found", vbInformation
    DataCombo2.Text = ""
    DataCombo2.ListField = ""
    DataCombo3.Text = ""
    DataCombo3.ListField = ""
    End If
        
Case 100
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Lotwise Lot Stock"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        DTPicker2.Top = 1080
        DTPicker2.Left = 1695
        DTPicker1.Top = 600
        DTPicker1.Left = 1695
        
        rec.Open "select distinct lotdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' and divcode='" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
'            If rec.RecordCount <> 0 Then
'                Set DataCombo2.RowSource = rec
'                Set DataCombo3.RowSource = rec
'                DataCombo2.ListField = "lotdt"
'                DataCombo3.ListField = "lotdt"
'                    If Not rec.EOF Then
'                            rec.MoveFirst
'                          DataCombo2.Text = rec(0)
'                          rec.MoveLast
'                          DataCombo3.Text = rec(0)
'                    End If
'            End If
        
        DataCombo3.Visible = False
        DataCombo2.Visible = False
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.Width = 2055
        DTPicker2.Width = 2055
        DTPicker1.value = Format(fnmfdate(pdate), "dd/mm/yyyy")
        DTPicker2.value = pdate
        
    
Case 78
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Detailed Receipt List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
'        Set rec = New Recordset
'        openconnection
'        rec.Open "select distinct arrdt from rm_lot order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
'            If rec.RecordCount <> 0 Then
'                Set DataCombo2.RowSource = rec
'                Set DataCombo3.RowSource = rec
'                DataCombo2.ListField = "arrdt"
'                DataCombo3.ListField = "arrdt"
'                    If Not rec.EOF Then
'                            rec.MoveFirst
'                          DataCombo2.Text = rec(0)
'                          rec.MoveLast
'                          DataCombo3.Text = rec(0)
'                    End If
'            End If

Case 228

        
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Purchase Order"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = True
        DataCombo1.Visible = False
        'Ravi
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        Command1.Top = Command1.Top - 1500
        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by contdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "contdt"
                DataCombo3.ListField = "contdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = True
            
            
Case 89 'PURCHASE REGISRER AS ON DATE
' developed by pari
        Label2.Caption = "From Date"
        Label3.Visible = False
        'Label3.Caption = "To Date"
        Label5.Caption = "Purchase Order"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Label2.Top = 1100
        DataCombo2.Top = 1000
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        Command1.Top = Command1.Top - 1500
        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by contdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "contdt"
                DataCombo3.ListField = "contdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False


Case 352
        Label2.Caption = "PO No."
        'Label3.Caption = "To Date"
        Label5.Caption = "Sales Confirmation Memo"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        'Ravi
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        Command1.Top = Command1.Top - 1500
        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        
        rec.Open "select distinct cast(contno as numeric) as contno from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by cast(contno as numeric)", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                'Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "contno"
                'DataCombo3.ListField = "contdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          'DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
        
Case 79
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Lot wise Weight Difference"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        rec.Open "select distinct arrdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "arrdt"
                DataCombo3.ListField = "arrdt"
                    If Not rec.EOF Then
                            rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            
            'Label5.Caption = "Rejected Arrivals"
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = True
    Label3.Caption = "Supplier"
    DataCombo3.Visible = True
    'DataCombo3.Visible = False
    'Label7.Visible = False
    Call DataCombo2_GotFocus
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    Command1.Top = Command1.Top - 1500
    Command2.Top = Command2.Top - 1500
        



Case 101
        Label2.Caption = "From Date"
        Label3.Caption = "  To Date"
        Label5.Caption = "Varierty Wise Lot Stock Ledger"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct lotdt from rm_lot WHERE LOTYEAR ='" & Year(yfdate) & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        DataCombo2.Visible = False
        DataCombo3.Visible = False
        DTPicker2.Visible = True
        DTPicker2.value = rec(0)
        DTPicker2.ZOrder
        DTPicker3.Visible = True
        DTPicker3.ZOrder
        DTPicker3.value = pdate
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
     DataCombo1.Visible = True
     Label1.Visible = True
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
         
         Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
            Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo2.AddItem "A   -  All"
     End If
        
Case 111
'        Label2.Caption = "From ArrivalDate"
'        Label3.Caption = "To ArrivalDate"
        
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        
        Label5.Caption = "Stock Ledger - Varietywise"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        
        DTPicker2.Top = 1080
        DTPicker2.Left = 1695
        DTPicker1.Top = 600
        DTPicker1.Left = 1695
                
        rec.Open "select distinct arrdt from rm_lot where LOTYEAR ='" & Year(yfdate) & "' and divcode='" & Divcode & "'  AND ARRDT IS NOT NULL order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
'            If rec.RecordCount <> 0 Then
'                Set DataCombo2.RowSource = rec
'                Set DataCombo3.RowSource = rec
'                DataCombo2.ListField = "arrdt"
'                DataCombo3.ListField = "arrdt"
'                    If Not rec.EOF Then
'                            rec.MoveLast
'                          DataCombo3.Text = rec(0)
'                          rec.MoveFirst
'                          DataCombo2.Text = rec(0)
'                    End If
'            End If
        
        DataCombo3.Visible = False
        DataCombo2.Visible = False
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.Width = 2055
        DTPicker2.Width = 2055
        
        DTPicker1.MinDate = yfdate
        DTPicker1.maxdate = yldate
        DTPicker2.MinDate = yfdate
        DTPicker2.maxdate = yldate
        
        DTPicker1.value = Format(fnmfdate(pdate), "dd/mm/yyyy")
        DTPicker2.value = pdate
Case 102
        Label2.Caption = "From ArrivalDate"
        Label3.Caption = "To ArrivalDate"
        Label5.Caption = "DateWise Local/UpCountry Lot Stock"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct arrdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "arrdt"
                DataCombo3.ListField = "arrdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If

Case 1
    
    Label5.Caption = "Daily Issue List"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo1_GotFocus
    If EXITflg = "" Then
        Call DataCombo2_GotFocus
    Else
        Unload Me
        Exit Sub
    End If
Case 2
    
    Label5.Caption = "Lotwise Stock Position"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    ChkUsr.Visible = False
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    'Set rs2 = New Recordset
    'rs2.Open "select DISTINCT a.LOTDT as fields from rm_lot a where a.DIVCODE ='" & Divcode & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by a.LOTDT ", cn, adOpenStatic
    
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and lotyear='" & Year(yfdate) & "' Order by a.LOTNo ", cn, adOpenStatic
    
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1200
    Combo2.Top = 1100
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1700
    LblTLtN.Top = 2200
    LblFLTN.Left = 240
    LblTLtN.Left = 240
    
Case 3
    
    Label5.Caption = "Pending Orders-Datewise"
    Label1.Visible = True
    DataCombo1.Visible = True
    Label1.Caption = "To Date"
    Label2.Caption = "From Date"
    Label3.Visible = False
    DataCombo3.Visible = False
    DataCombo1.Width = 3000
    DataCombo2.Width = 3000
    Call DataCombo2_GotFocus
    'Ravi
'    Frame1.Height = Frame1.Height - 1000
'    SSTab1.Height = SSTab1.Height - 900
'    Command1.Top = Command1.Top - 1500
'    Command2.Top = Command2.Top - 1500
    Frame1.Height = Frame1.Height
    SSTab1.Height = SSTab1.Height
    Command1.Top = Command1.Top
    Command2.Top = Command2.Top

'    If EXITflg = "EXIT" Then
'        Unload Me
'        Exit Sub
'    End If


Case 199
    Label5.Caption = "Order cancellation"
    Label1.Visible = True
    DataCombo1.Visible = True
    Label1.Caption = "To Date"
    Label2.Caption = "From Date"
    Label3.Visible = False
    DataCombo3.Visible = False
    DataCombo1.Width = 3000
    DataCombo2.Width = 3000
    Call DataCombo2_GotFocus
    Frame1.Height = Frame1.Height
    SSTab1.Height = SSTab1.Height
    Command1.Top = Command1.Top
    Command2.Top = Command2.Top

Case 77
    Label4.Visible = True
    Combo1.Visible = True
    Set rec = New Recordset
    rec.Open "select distinct purtype+ '-'+purdesc from rm_purtype", cn, adOpenStatic, adLockBatchOptimistic
    If rec.RecordCount > 0 Then
    rec.MoveFirst
    Do While Not rec.EOF
    Combo1.AddItem (rec(0))
    rec.MoveNext
    Loop
    Combo1.ListIndex = 0
    End If
    Label5.Caption = "Purchase Day Book"
    Call DataCombo2_GotFocus

Case 4              'Arrivals to be inspected
    Label5.Caption = "Arrivals to be Inspected"
    'Label5.Caption = "Arrivals to be Inspected"
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    'Ravi
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    Command1.Top = Command1.Top - 1500
    Command2.Top = Command2.Top - 1500


Case 5            'Rejected Arrivals

    Label5.Caption = "Rejected Arrivals"
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = True
    Label3.Caption = "Supplier"
    DataCombo3.Visible = True
    DataCombo3.Move (1700)
    'DataCombo3.Visible = False
    'Label7.Visible = False
    Call DataCombo2_GotFocus
    
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    Command1.Top = Command1.Top - 1500
    Command2.Top = Command2.Top - 1500
    
    Set rs1 = New Recordset
    rs1.Open "select distinct a.slname + ' - '+ a.slcode as slname from fa_slmas a,rm_arrival b where a.slcode=b.supcd and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "'and '" & Format(pdate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    'RS1.Open "select distinct a.slname from fa_slmas a,rm_arrival b where b.divcode='" & Divcode & "'and b.upper(passed)='Y'and b.lotno is null and b.arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", cn, adOpenStatic, adLockBatchOptimistic
    'RS1.Open "select distinct slname  "
     If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "slname"
        rs1.MoveLast
        DataCombo3.Text = rs1(0)
     Else
        MsgBox "No record found", vbInformation
        DataCombo3.ListField = " "
        DataCombo3.Text = " "
     End If

    
Case 6
    
    Label5.Caption = "Weighment To Be Entered"
    Label1.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    'Ravi
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    Command1.Top = Command1.Top - 1500
    Command2.Top = Command2.Top - 1500
    

Case 28, 29, 30, 31, 32, 33, 35, 128, 88, 522, 880, 511
    EXITflg = ""
    If Repindex = 28 Then
        Label5.Caption = "Stock Statement - Lotwise"
    ElseIf Repindex = 522 Then
        Label5.Caption = "Lotwise Stock Ledger"
    ElseIf Repindex = 29 Then
        Label5.Caption = "Detailed Stock Statement"
    ElseIf Repindex = 30 Then
        Label5.Caption = "Stock Statement - Varietywise"
    ElseIf Repindex = 88 Then
        Label5.Caption = "Stock Statement - Stationwise"
    ElseIf Repindex = 880 Then
        Label5.Caption = "Stock Statement Stationwise - Lotwise"
    ElseIf Repindex = 31 Then
        Label5.Caption = "Weekly Stock Statement"
    ElseIf Repindex = 32 Then
        Label5.Caption = "Godownwise Stock Statement"
    ElseIf Repindex = 33 Then
        Label5.Caption = "Closing Stock - Varietywise"
    ElseIf Repindex = 35 Then
        Label5.Caption = "Closing Stock - Mixgroupwise"
    ElseIf Repindex = 115 Then
        Label5.Caption = "Stock - Abstract Report"
    ElseIf Repindex = 128 Then
    Label5.Caption = "Stock Statement - Balewise"
    ElseIf Repindex = 511 Then
    Label5.Caption = "Varietywise Stock Ledger"
    End If
    Call DataCombo2_GotFocus
    Call DataCombo1_GotFocus
    DataCombo1.Visible = False
    Combo2.Visible = True
    Combo2.ZOrder
    If EXITflg = "EXIT" Then
        Unload Me
        Exit Sub
    Else
        Call DataCombo2_GotFocus
    End If
    If Repindex = 30 Or Repindex = 28 Or Repindex = 88 Or Repindex = 522 Or Repindex = 880 Or Repindex = 511 Then
                    
                    Set Rs = New Recordset
                    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
            '
            '    If rs.RecordCount <> 0 Then
            '
            '        Set DataCombo2.RowSource = rs
            '        Set DataCombo3.RowSource = rs
            '        DataCombo2.ListField = "lotdt"
            '        DataCombo3.ListField = "lotdt"
            '        rs.MoveFirst
            '        DataCombo2.Text = rs(0)
            '        rs.MoveLast
            '        DataCombo3.Text = rs(0)
            '    Else
            '        MsgBox "No Record Found", vbInformation
            '        DataCombo2.ListField = ""
            '        DataCombo2.Text = ""
            '        DataCombo3.ListField = ""
            '        DataCombo3.Text = ""
            '    End If
            '
            '    If DataCombo2.Text = " " Then
            '        Exit Sub
            '    End If
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = Rs(0)
    DTPicker2.value = yfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
         
         Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
            Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo2.AddItem "A   -  All"
     End If
     End If
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"

    Set rs1 = New Recordset
    rs1.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "' order by a.LOTNo ", cn, adOpenStatic
    
    Set DCmbFLtN.RowSource = rs1
    Set DCmbTLtN.RowSource = rs1
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If rs1.EOF <> True Then
        rs1.MoveFirst
        DCmbFLtN.Text = rs1(0)
        rs1.MoveLast
        DCmbTLtN.Text = rs1(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = False
    LblFLTN.Caption = "From/To LotNo."
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 2060
    DCmbFLtN.Width = 1500
    DCmbTLtN.Left = 3475
    DCmbTLtN.Width = DCmbFLtN.Width + 80
    DCmbTLtN.Top = DCmbFLtN.Top
    LblFLTN.Top = 2100 + 80
    LblFLTN.Left = 240
    
'-----ANBU
    DataCombo2.Visible = True
    DataCombo3.Visible = True
    Frame1.Height = Frame1.Height + 150
    DataCombo3.Top = DCmbFLtN.Top + 500
    DataCombo2.Top = DataCombo3.Top
    DataCombo2.Left = DCmbFLtN.Left
    DataCombo2.Width = DCmbTLtN.Width
    DataCombo3.Width = DataCombo2.Width
    DataCombo3.Left = DCmbTLtN.Left
    Label4.Visible = True
    Label6.Visible = True
    Label4.Caption = "From Issue Party"
    Label6.Caption = "To Issue Party"
    Label4.Left = Label3.Left
    Label4.Top = DataCombo3.Top
    Label6.Top = Label4.Top + 400
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.Iss_PartyCode  +  '   -   '  + b.SlName as Party from FA_SlMas b,rm_lot a  where a.divcode = '" & Divcode & "' and a.Iss_PartyCode = b.SlCode  ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Party"
        Set DataCombo3.RowSource = Rs
        DataCombo3.ListField = "Party"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
            Rs.MoveLast
            DataCombo3.Text = Rs(0)
        End If
    End If
    
    DTPicker2.Top = DTPicker2.Top - 100
    Label2.Top = DTPicker2.Top
    DTPicker3.Top = DTPicker2.Top + 400
    Label3.Top = DTPicker3.Top
    Combo2.Top = DTPicker3.Top + 400
    Label1.Top = Combo2.Top
    DCmbFLtN.Top = Combo2.Top + 400
    LblFLTN.Top = DCmbFLtN.Top
    DCmbTLtN.Top = DCmbFLtN.Top
    LblTLtN.Top = DCmbTLtN.Top
    DataCombo2.Top = DCmbTLtN.Top + 400
    DataCombo3.Top = DCmbTLtN.Top + 400
    Label4.Top = DataCombo3.Top
    DataCombo3.Top = DataCombo2.Top + 400
    DataCombo3.Left = DataCombo2.Left
    DataCombo2.Width = Combo2.Width
    DataCombo3.Width = Combo2.Width
    Label6.Top = DataCombo3.Top


Case 66



'    Label5.Caption = "Detailed Receipt Register"
'    Label1.Visible = False
'    Label2.Caption = " From Date"
'    Label3.Caption = "To Date"
'    DataCombo1.Visible = False
'    Call DataCombo2_GotFocus
'    Label6.Visible = True
'    DataCombo4.Visible = True
'    DataCombo4.Visible = False
'    Set rs1 = New Recordset
'    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic
'    If rs1.RecordCount <> 0 Then
'        Set DataCombo4.RowSource = rs1
'        DataCombo4.ListField = "slname"
'        rs1.MoveFirst
'        DataCombo4.Text = rs1(0)
'    End If
'    Label3.Top = 1800
'    Label2.Top = 1200
'    DataCombo2.Top = 1200
'    DataCombo3.Top = 1800
'    LblFLTN.Visible = True
'    LblTLtN.Visible = True
'    DCmbFLtN.Visible = True
'    DCmbTLtN.Visible = True
'    Label6.Top = 515
'    DataCombo4.Top = 500
'    Label2.Top = 950
'    DataCombo2.Top = 950
'    Label3.Top = 1400
'    DataCombo3.Top = 1400
'    LblFLTN.Top = 1800
'    DCmbFLtN.Top = 1800
'    LblFLTN.Left = 280
'    DCmbFLtN.Left = 1680
'    LblTLtN.Top = 2200
'    DCmbTLtN.Top = 2200
'    LblTLtN.Left = 280
'    DCmbTLtN.Left = 1680
'    SSTab1.Height = 3000
'    Frame1.Height = 2800
'    Screen.MousePointer = 0
'modified on 31/12/2005
    'Label5.Caption = "Detailed Receipt Register"
    Label5.Caption = "Cotton weight List"
    Label1.Visible = False
    Label2.Visible = True
    Label3.Visible = True
    Label2.Top = 800
    DTPicker2.Top = 800
    Label3.Top = 1300
    DTPicker3.Top = 1300
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = yfdate
    DTPicker3.value = pdate
    'Call DataCombo2_GotFocus
    Label6.Visible = True
    DataCombo4.Visible = True
    '24-11-05
    DataCombo4.Visible = False
    Set rs1 = New Recordset
    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic
    If rs1.RecordCount <> 0 Then
        Set DataCombo4.RowSource = rs1
        DataCombo4.ListField = "slname"
        rs1.MoveFirst
        DataCombo4.Text = rs1(0)
    End If
    DataCombo2.Top = 1200
    DataCombo3.Top = 1800
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    Label6.Top = 515
    DataCombo4.Top = 500
    DataCombo2.Top = 950
    DataCombo3.Top = 1400
    LblFLTN.Top = 1800
    DCmbFLtN.Top = 1800
    LblFLTN.Left = 280
    DCmbFLtN.Left = 1680
    LblTLtN.Top = 2200
    DCmbTLtN.Top = 2200
    LblTLtN.Left = 280
    DCmbTLtN.Left = 1680
    SSTab1.Height = 3000
    Frame1.Height = 2800
    Screen.MousePointer = 0




    
    
Case 350

    Label5.Caption = "Detailed Issue List"
    Label1.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    Call DataCombo2_GotFocus
    Label6.Visible = False
    DataCombo4.Visible = True
    Set rs1 = New Recordset
    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where LOTYEAR='" & Year(yfdate) & "' AND a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic
    If rs1.RecordCount <> 0 Then
        Set DataCombo4.RowSource = rs1
        DataCombo4.ListField = "slname"
        rs1.MoveFirst
        DataCombo4.Text = rs1(0)
    End If
    DataCombo4.Visible = False
    Label3.Top = 1800
    Label2.Top = 1200
    DataCombo2.Top = 1200
    DataCombo3.Top = 1800
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    Label6.Top = 515
    DataCombo4.Top = 500
    Label2.Top = 950
    DataCombo2.Top = 950
    Label3.Top = 1400
    DataCombo3.Top = 1400
    LblFLTN.Top = 1800
    DCmbFLtN.Top = 1800
    LblFLTN.Left = 280
    DCmbFLtN.Left = 1680
    
    LblTLtN.Top = 2200
    DCmbTLtN.Top = 2200
    LblTLtN.Left = 280
    DCmbTLtN.Left = 1680
    
    SSTab1.Height = 3000
    Frame1.Height = 2800
    Screen.MousePointer = 0

    
Case 999
    Label5.Caption = "Varietywise Stock Position"
    ChkUsr.Visible = False
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo2.Visible = True

    If Repindex = 1 Then
         Set Rs = New Recordset
        ' rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where DIVCODE = '" & Divcode & "' and CATCD = '" & Trim(Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
         Rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where DIVCODE = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
    Else
        Set Rs = New Recordset
        Rs.Open "select a.LOTDT as fields from rm_lot a where isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "'  and a.rejflg='N'  and a.lotyear='" & Year(yfdate) & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic
    End If
    
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "fields"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
            EXITflg = ""
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        EXITflg = "EXIT"
    End If


    
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "field"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            EXITflg = ""
            
            Do While Not Rs.EOF
                Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "ALL   -   ALL"
            Rs.MoveFirst
            Combo2.Text = Rs(0)
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
    DataCombo2.Visible = False
    Combo2.Visible = True
    DataCombo1.Visible = False
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.value = pdate
'-------ANBU
    DTPicker1.Top = DTPicker1.Top - 100
    Label2.Top = DTPicker1.Top + 100
    Combo2.Top = DTPicker1.Top + 500
    Label1.Top = Combo2.Top
    Combo3.Visible = True
    Combo2.Top = DTPicker1.Top + 400
    Combo3.Width = Combo2.Width
    Combo3.Top = DCmbFLtN.Top - 100
    Label6.Visible = True
    Label6.Caption = "Variety"
    Label6.Top = Combo3.Top + 100
    Combo4.Visible = True
    Combo4.Width = Combo2.Width
    Combo4.Top = Combo2.Top + 400
    DCmbFLtN.Top = Combo3.Top + 400
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    DCmbTLtN.Top = DCmbFLtN.Top + 400
    DCmbFLtN.Left = Combo2.Left
    DCmbTLtN.Left = DCmbFLtN.Left
    LblFLTN.Visible = True
    LblFLTN.Top = DCmbFLtN.Top + 70
    LblTLtN.Visible = True
    LblTLtN.Top = DCmbTLtN.Top + 70
    LblFLTN.Left = Label1.Left
    LblTLtN.Left = LblFLTN.Left
    LblFLTN.Caption = "From Iss. Party"
    LblTLtN.Caption = "To Iss. Party"
    DCmbFLtN.Width = Combo2.Width
    DCmbTLtN.Width = DCmbFLtN.Width
    Frame1.Height = Frame1.Height + 150
    Label3.Visible = True
    Label3.Caption = "Count"
    Label3.Top = Combo4.Top + 100
    OptDirect.Visible = True
    OptAll.Visible = True
    OptWithParty.Visible = True
    
    
    
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.VarCode +  '   -   '  + b.VarName as Variety from RM_Var b,rm_lot a  where a.divcode = '" & Divcode & "' and a.VArcode= b.VArcode ", cn, adOpenStatic, adLockBatchOptimistic
    Combo3.Clear
    While Not Rs.EOF
        Combo3.AddItem Rs("Variety")
        Rs.MoveNext
    Wend
    Combo3.AddItem "ALL   -   ALL"
    If Combo3.ListCount > 0 Then Combo3.ListIndex = 0
    
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.Iss_PartyCode  +  '   -   '  + b.SlName as Party from FA_SlMas b,rm_lot a  where a.divcode = '" & Divcode & "' and a.Iss_PartyCode = b.SlCode  ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DCmbFLtN.RowSource = Rs
        DCmbFLtN.ListField = "Party"
        Set DCmbTLtN.RowSource = Rs
        DCmbTLtN.ListField = "Party"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DCmbFLtN.Text = Rs(0)
            Rs.MoveLast
            DCmbTLtN.Text = Rs(0)
        End If
    End If
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.CntCode1  +  '   -   '  + b.MixGrpName as Count from RM_MixGrp b,rm_lot a  where a.divcode = '" & Divcode & "' and a.CntCode1 = b.MixGrpCd ", cn, adOpenStatic, adLockBatchOptimistic
    Combo4.Clear
    While Not Rs.EOF
        Combo4.AddItem Rs("Count")
        Rs.MoveNext
    Wend
    Combo4.AddItem "ALL   -   ALL"
    If Combo4.ListCount > 0 Then Combo4.ListIndex = 0
    
Case 500
    'Quality Parameter

    Label5.Caption = "Cotton Passing Report"
    Label1.Visible = False
'    Label3.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    Call DataCombo2_GotFocus


    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
'    RS.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select distinct LOTdt as lotdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and LOttype='A'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 1000
    Command1.Top = Command1.Top - 400
    Command2.Top = Command2.Top - 400
    

Case 115
    EXITflg = ""
    Label5.Caption = "Stock - Abstract Report"
    Call DataCombo2_GotFocus
    Call DataCombo1_GotFocus
    DataCombo1.Visible = False
    Combo2.Visible = True
    Combo2.ZOrder
    If EXITflg = "EXIT" Then
        Unload Me
        Exit Sub
    Else
        Call DataCombo2_GotFocus
    End If
    
                    
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic

    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = Rs(0)
    DTPicker2.value = yfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    Set Rs = New Recordset
    Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
       Set DataCombo1.RowSource = Rs
       DataCombo1.ListField = "catcdname"
       Rs.MoveFirst
       DataCombo1.Text = Rs(0)
        
        Do While Not Rs.EOF
           Combo2.AddItem Rs(0)
           Rs.MoveNext
       Loop
           Rs.MoveFirst
       Combo2.Text = Rs(0)
       Combo2.AddItem "A   -  All"
    End If
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"

'    Set RS1 = New Recordset
'    RS1.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "' order by a.LOTNo ", cn, adOpenStatic
'
'    Set DCmbFLtN.RowSource = RS1
'    Set DCmbTLtN.RowSource = RS1
'    DCmbFLtN.ListField = "lotno"
'    DCmbTLtN.ListField = "Lotno"
'    If RS1.EOF <> True Then
'        RS1.MoveFirst
'        DCmbFLtN.Text = RS1(0)
'        RS1.MoveLast
'        DCmbTLtN.Text = RS1(0)
'    End If
'    DCmbFLtN.Visible = True
'    DCmbTLtN.Visible = True
'    LblFLTN.Visible = True
'    LblTLtN.Visible = False
'    LblFLTN.Caption = "From/To LotNo."
'    DCmbFLtN.Left = 1710
'    DCmbFLtN.Top = 2060
'    DCmbFLtN.Width = 1500
'    DCmbTLtN.Left = 3475
'    DCmbTLtN.Width = DCmbFLtN.Width + 80
'    DCmbTLtN.Top = DCmbFLtN.Top
'    LblFLTN.Top = 2100 + 80
'    LblFLTN.Left = 240

Case 143
    Label5.Caption = "Lodgement/Release"
    Label3.Visible = False
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    'Call DataCombo1_GotFocus
    'Ravi
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    Command1.Top = Command1.Top - 1500
    Command2.Top = Command2.Top - 1500
    'Call DataCombo2_GotFocus
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    Combo2.Visible = False
    Label1.Visible = False
    DataCombo3.Visible = False
Case 311
    Label5.Caption = "Issue Weight Listing"
    DataCombo2.Visible = False
    Label2.Visible = False
    DataCombo3.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = True
    Label1.Visible = True
    'Label1.Caption = "Lot No"
    Label1.Caption = "Document No"
    Label1.Top = 1180
    DataCombo1.Top = 1080
    
    Combo1.Top = 1750
    Label4.Top = 1750
    Combo1.Visible = True
    Label4.Visible = True
    Combo1.AddItem "P-Unit 1-Production"
    Combo1.AddItem "Q-Unit 2-Production"
    Combo1.AddItem "A-All Unit Production"
    
    Combo1.Text = "P-Unit 1-Production"
    
    Command1.Top = 4000
    Command2.Top = 4000
    Set Rs = New Recordset
    'rs.Open "select LotNo from rm_lot order by lotno", cn, adOpenStatic, adLockBatchOptimistic
'    rs.Open "select distinct a.LotNo from rm_lot a,rm_bale b,rm_issb c where a.LotNo=b.LotNo and b.LotNo=c.LotNo and b.baleno=c.baleno and (b.IsQty>0 and b.ActIssKgs>0 ) order by a.lotno ", db, adOpenStatic, adLockBatchOptimistic
     Rs.Open "select distinct docno from rm_issb where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by docno", DB, adOpenStatic
    If Rs.EOF <> True Then
        Rs.MoveFirst
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "DocNo"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
    End If
    
Case 444
    Label5.Caption = "Cotton weight List(Loss or Gain)"
    DataCombo2.Visible = False
    Label2.Visible = False
    DataCombo3.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = False
    Label1.Visible = True
    Label1.Caption = "Date"
    Label1.Left = 800
    Label1.Top = 1180
    DTPicker2.Top = 1180
    DTPicker2.Visible = True
    DTPicker2.value = pdate
    DTPicker2.maxdate = pdate
    Combo1.Top = 1750
    Label4.Top = 1750
    Combo1.Visible = False
    Label4.Visible = False
    Command1.Top = 4000
    Command2.Top = 4000
   
Case 870

        Label2.Caption = "Date"
        Label3.Visible = True
        Label3.Caption = "Mixing"
        Label5.Caption = "Mixing Allocation Report"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = True
        DataCombo1.Visible = False
        
        Label2.Top = 900
        DataCombo2.Top = 800
        
        Label3.Top = 1600
        DataCombo3.Top = 1500
        Label3.Left = 300
        Label2.Left = 300
        
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        
        
        Command1.Top = Command1.Top - 1300
        Command2.Top = Command2.Top - 1300
        Set rec = New Recordset
        openconnection
        
        'rec.Open "select distinct lotdt from RM_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        rec.Open "select  docdt from RM_issReqH order by docdt desc", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "docdt"
              '  Set DataCombo3.RowSource = rec
              '  DataCombo3.ListField = "mixno"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                        '  DataCombo3.Text = rec(1)
                    End If
            End If
        
        Set Rsrec = New Recordset
        Rsrec.Open "select  docdt from RM_issReqH order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If Rsrec.RecordCount <> 0 Then
                Set DataCombo1.RowSource = Rsrec
                DataCombo1.ListField = "docdt"
              '  Set DataCombo3.RowSource = rec
              '  DataCombo3.ListField = "mixno"
                    If Not Rsrec.EOF Then
                          Rsrec.MoveFirst
                          DataCombo1.Text = Rsrec(0)
                        '  DataCombo3.Text = rec(1)
                    End If
            End If
            
         DataCombo1.Visible = True
         DataCombo1.Top = 700
         DataCombo2.Top = 1200
         DataCombo3.Top = 1700
         Label1.Visible = True
         Label1.Caption = "From Date"
         Label2.Caption = "To Date"
         Label1.Top = 700
         Label2.Top = 1200
         Label3.Top = 1700
         DataCombo1.Width = 2070
        Set recnew = New Recordset
        recnew.Open " select 'ALL - ALL' as mixno  union all select distinct cntcd  mixno from RM_issReqH where docdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' ", cn, adOpenStatic, adLockBatchOptimistic
            If recnew.RecordCount <> 0 Then

                Set DataCombo3.RowSource = recnew
                DataCombo3.ListField = "mixno"
                    If Not recnew.EOF Then
                          recnew.MoveFirst
                          DataCombo3.Text = recnew(0)
                    End If
            End If


   
End Select
intervalMinutes = -1
End Sub

Public Sub prnhead(pg As Integer)
intervalMinutes = -1
If Repindex = 18 Then
    Date1 = Format(DataCombo2.Text, "DD/mm/YY")
    Date2 = Format(DataCombo3.Text, "DD/MM/YY")
    Print #f,
    Print #f, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #f,
    SR = CStr(pdate) + Space(2)
    Print #f, Space(5) + "Cost Auditing Report from  " & Date1 & " to " & Date2;
    Print #f, Space(5) + Space(9) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Space(1) + Padl(CStr(pg), 3, " ")
    Print #f, Space(5) + String(80, "-")
    Print #f, Space(5) + "Count  Mixing No.   Variety         Qty   Unit          Net wt.            Value"
    Print #f, Space(5) + String(80, "-")
End If
If Repindex = 19 Then
    Print #f,
    Date1 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Date2 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f, Chr(15)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Daily Issues to Mixing Statement " + "on " & Format(Date1, "dd/mm/yy") & Space(63) & Space(4) + SR + Space(2) + "Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(130, "-")
    Print #f, Space(5) & Space(1) + "Mixing" + Space(3) + "Mill."; Space(4) + "Variety" + Space(12) + "Party " + Space(3) + " Qty   Unit" + Space(8) + "Issue Kgs" + Space(2); "Mixing" + Space(6) + "Rate/" + Space(9) + "Rate/" + Space(17); "Value"
    Print #f, Space(5) & Space(1) + " Count" + Space(1); "Lot No."; Space(5) + "      " + Space(10) + "Lot No." + "         " + Space(11) + "      " + Space(8) + "     %"; Space(8) + "Kg     "; Space(5); "Candy"
    Print #f, Space(5) & String(130, "-")
End If

If Repindex = 1998 Then    'Transfer Register
    Print #f,
    Date1 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Date2 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f,
    Print #f, Space(2) & Space(1) + Chr(27) + "E" + "Daily Transfer Statement " + Chr(27) + "F" + "For the Date of" & Format(Date1, "dd/mm/yyyy") & Space(11) + "Dt:"; CStr(Date) + Space(2) + "Pg. : " & pg; Chr(15)
    Print #f, Space(5) & String(130, "-")
    Print #f, Space(5) & Space(1) + "Mixing" + Space(2) + "Mill."; Space(5) + "Variety" + Space(13) + "Party " + Space(2) + " Qty   Unit" + Space(8) + "Issue Kgs" + Space(2); "Mixing" + Space(6) + "Rate/" + Space(9) + "Rate/" + Space(17); "Value"
    Print #f, Space(5) & Space(1) + " Count" + Space(2); " Lot"; Space(5) + "      " + Space(17) + "Lot   " + "         " + Space(11) + "      " + Space(4) + "     %"; Space(8) + "Kg     "; Space(5); "Candy"
    Print #f, Space(5) & String(130, "-")
End If

If Repindex = 20 Then
    Date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    Date2 = Format(DataCombo3.Text, "yyyy-mm-dd")
    Print #f,
    Print #f, Space(Round(60 / 2 - Len(divname) / 2)) & Chr(27) & divname & Chr(27)
    Print #f,
    Print #f, Space(1) + Chr(27) & "Datewise Receipts List From  " & Date1 & "  To  " & Date2 & Space(30) & "(" & Mid$(DataCombo1.Text, (InStr(DataCombo1.Text, "-") + 1)) & ")" & pdate
    Print #f,
    Print #f, String(120, "-")
    Print #f, Space(1) + "Receipt" + Space(4) + "Code" + Space(3) + "Party Name" + Space(30) + "Broker" + Space(34) + "Party " + Space(1) + "Mill  " + Space(5) + "Iss-kg" + Space(10) + "Qntl" + Space(10) + "Value"
    Print #f, Space(1) + "Date   " + Space(4) + "    " + Space(3) + "          " + Space(30) + "      " + Space(34) + "Lot No" + Space(1) + "Lot No" + Space(5) + "      " + Space(10) + "Rate" + Space(10) + "     "
    Print #f, String(120, "-")
End If


End Sub

Public Sub Varietywisedetaily(fromdate As Date, ToDate As Date, Category As String)
Dim str_lotno As String
Dim temp_lotdt As Date
Dim temp_issdt As Date
Dim str_issno As String
Dim dbl_receiptvalue As Double
Dim dbl_issuevalue As Double
Dim dbl_openvalue As Double
Dim dbl_openqty As Double
a = FreeFile
Close #a
Close
Open "C:\stkledgerdetail.txt" For Output As #a
pg = 1
co = 0
BlockCode = Empty
CategoryCode = Empty
Category = Left(Category, 1)
If Category = "A" Then
    CategoryCode = "'C','P','V'"
ElseIf Category = "S" Then
    CategoryCode = "'P','V'"
Else
    CategoryCode = "'" & Category & "'"
End If
Set rs3 = New Recordset

Set Rs = New Recordset
Rs.Open "select  DISTINCT a.varcode,b.varname from rm_lot a,rm_var b where a.varcode=b.varcode and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ")  and isnull(a.NETWT,0)>0 order by a.varcode", DB, adOpenStatic
If Rs.RecordCount > 0 Then
Call stkvarietydetailheader(fromdate, ToDate, Category)
    Do Until Rs.EOF
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
        Print #a, Space(3) & Padr(Rs("varname").value, 20, " ")
        co = co + 1
        Print #a,
        Set rs2 = New Recordset
        'rs2.Open "select sum(a.NETWT),sum(a.NETWT*a.ratekg) from rm_lot a where a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & RS("varcode").Value & "'  and  OPFLG='Y'", DB, adOpenStatic
        rs2.Open "select lotno,lotdt,sum(a.NETWT) as netwt,sum(a.NETWT) * round((isnull(ratecy,0)/355.6187),2) as value from rm_lot a where a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "'  and  OPFLG='Y' group by lotno,lotdt,ratecy", DB, adOpenStatic
        
        Do While Not rs2.EOF
            dbl_openqty = dbl_openqty + rs2("netwt")
            dbl_openvalue = dbl_openvalue + rs2("value")
            rs2.MoveNext
        Loop
        rs2.MoveFirst
        
        
        If rs2.EOF = False Then
            Print #a, Space(75) & Padr("***OPENING STOCK***", 21, " ") '& Padl(INF(rs2(0).Value, 2), 20, " ") & Padl(INF(rs2(1).Value, 2), 20, " ")
'            dbl_openqty = IIf(IsNull(rs2(0)), 0, rs2(0))
'            dbl_openvalue = IIf(IsNull(rs2(1)), 0, rs2(1))
            dbl_openqty = 0
            dbl_openvalue = 0
            co = co + 1
        End If
        co = co + 1
        
        Set rs1 = New Recordset
        'RS1.Open "select a.lotno,a.lotdt,isnull(a.NETWT,0) recqty,a.nETwt*a.ratekg recvalue,a.ratekg from rm_lot a where a.divcode='" & Divcode & "'  and a.catcd IN (" & CategoryCode & ") and a.varcode='" & RS("varcode").Value & "' and a.opflg='N'  ORDER BY a.lotdt", DB, adOpenStatic
        rs1.Open "select a.lotno,a.lotdt,isnull(a.NETWT,0) recqty,a.nETwt*round((isnull(ratecy,0)/355.6187),2) recvalue,a.ratekg from rm_lot a where a.divcode='" & Divcode & "'  and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "' and a.opflg='N'  ORDER BY a.lotdt", DB, adOpenStatic
        
        If rs1.RecordCount > 0 Then
            Do Until rs1.EOF
                If temp_lotdt <> Format(rs1("lotdt").value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(Format(rs1("lotdt").value, "DD/MM/YY"), 10, " ") & Padr(rs1("lotno").value, 10, " ") & Padl(INF(rs1("recqty").value, 3), 20, "") & Padl(INF(rs1("recvalue").value, 2), 20, "")
                ElseIf temp_lotdt = Format(rs1("lotdt").value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(rs1("lotno").value, 10, " ") & Padl(INF(rs1("recqty").value, 3), 20, "") & Padl(INF(rs1("recvalue").value, 2), 20, "")
                End If
                dbl_receiptvalue = dbl_receiptvalue + Round(rs1("recvalue").value, 3)
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, ToDate, Category)
                End If
                'Print #a, Space(3) & Padl(" ", 10, " ") & Padl(INF(rs1("recqty").Value, 3), 20, "") & Padl(INF(rs1("recvalue").Value, 3), 20, "")
                Set rs2 = New Recordset
                'rs2.Open "select DOCNO,DOCDT,sum(isnull(ISSKGS,0)) ISSKGS from rm_issb a,rm_lot b where b.VARCODE='" & RS("VARCODE").Value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.lotno=" & RS1("lotno") & " and a.lotdt='" & Format(RS1("lotdt").Value, "DD/MMM/YYYY") & "' and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N' group by DOCNO,DOCDT", DB, adOpenStatic
                rs2.Open "select a.DOCNO,a.DOCDT,round((sum(isnull(e.netwt,0))),2) as ISSKGS from rm_issb a,rm_lot b,rm_issh c,rm_bale e where a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and b.VARCODE='" & Rs("VARCODE").value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.lotno=" & rs1("lotno") & " and a.lotdt='" & Format(rs1("lotdt").value, "DD/MMM/YYYY") & "' and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N' group by a.DOCNO,a.DOCDT", DB, adOpenStatic
                
                If rs2.RecordCount > 0 Then
                    Do Until rs2.EOF
                        dbl_issuevalue = dbl_issuevalue + rs2("ISSKGS").value * IIf(IsNull(rs1("ratekg").value), 0, rs1("ratekg").value)
                        If temp_issdt <> Format(rs2("DOCDT").value, "DD/MM/YY") Then
                            If str_issno = rs2("DOCNO").value Then
                                Print #a, Space(3) & Padr(Format(rs2("DOCDT").value, "DD/MM/YY"), 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").value * rs1("ratekg").value, 3), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> rs2("DOCNO").value Then
                                Print #a, Space(3) & Padr(Format(rs2("DOCDT").value, "DD/MM/YY"), 10, " ") & Padr(rs2("DOCNO").value, 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, ToDate, Category)
                            End If
                        ElseIf temp_issdt = Format(rs2("DOCDT").value, "DD/MM/YY") Then
                            If str_issno = rs2("DOCNO").value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> rs2("DOCNO").value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(rs2("DOCNO").value, 10, " ") & Space(30) & Padl(INF(rs2("ISSKGS").value, 3), 20, " ") & Padl(INF(rs2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, ToDate, Category)
                            End If
                        End If
                    str_issno = rs2("DOCNO").value
                    temp_issdt = Format(rs2("DOCDT").value, "DD/MM/YY")
                    rs2.MoveNext
                    Loop
                ElseIf rs2.RecordCount = 0 Then
                   'Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(" ", 20, " ") & Padl(" ", 20, " ") & Space(3) & Padl(INF(rs1("recqty").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                End If
                temp_lotdt = Format(rs1("lotdt").value, "DD/MM/YY")
                str_lotno = rs1("lotno").value
            rs1.MoveNext
                Print #a,
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, ToDate, Category)
                End If
            Loop
        End If
        Set rs1 = New Recordset
        rs1.Open "select sum(isnull(a.NETWT,0)) recqty from rm_lot a where a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "' and a.opflg='N' ", DB, adOpenStatic
        Set rs2 = New Recordset
        'rs2.Open "select sum(isnull(ISSKGS,0)) ISSKGS from rm_issb a,rm_lot b where b.VARCODE='" & RS("VARCODE").Value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N'", DB, adOpenStatic
        rs2.Open "select round((sum(isnull(e.netwt,0))),2) as ISSKGS from rm_issb a,rm_lot b,rm_issh c,rm_bale e where a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and b.VARCODE='" & Rs("VARCODE").value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N'", DB, adOpenStatic
    '    Print #a, Space(3) & Padr(" ", 2, " ") & Padr("VARIETY WISE TOTAL", 18, " ") & Padl(INF(rs1(0).Value, 3), 20, "") & Padl(INF(dbl_receiptvalue, 3), 20, "") & Space(3) & Padr(INF(rs2(0).Value, 3), 20, "") & Padl(INF(dbl_issuevalue, 3), 20, "")
        Print #a, Space(3) & Padr(" ", 2, " ") & Padr("VARIETY TOTAL     ", 18, " ") & Padl(INF(rs1(0).value, 3), 20, "") & Space(3) & Padl(INF(dbl_receiptvalue, 3), 17, "") & Space(3) & Padr(INF(rs2(0).value, 3), 18, "") & Padr(INF(dbl_issuevalue, 2), 13, "") '& Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, ToDate, Category)
        End If
        If rs1(0).value - IIf(IsNull(rs2(0).value), 0, rs2(0).value) = 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(Format(dbl_openqty + rs1(0).value - IIf(IsNull(rs2(0).value), 0, rs2(0).value), "##.###"), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        ElseIf rs1(0).value - IIf(IsNull(rs2(0).value), 0, rs2(0).value) > 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(INF(dbl_openqty + rs1(0).value - IIf(IsNull(rs2(0).value), 0, rs2(0).value), 2), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        End If
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
            co = co + 1
            If co = 60 Then
                 Print #a, Space(3) & String(132, "-")
                 Print #a, Chr(12)
                 Call stkvarietydetailheader(fromdate, ToDate, Category)
            End If
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, ToDate, Category)
        End If
    Rs.MoveNext
    Loop
Else
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Close #a
Open "C:\stkledgerdetail.bat" For Output As #a
Print #a, "type C:\stkledgerdetail.txt > prn"
Close #a
Set rptv = New Report.ReportView
rptv.txtfile = "C:\stkledgerdetail.txt"
rptv.Batfile = "C:\stkledgerdetail.bat"
Screen.MousePointer = 0
End Sub
Public Sub stkvarietydetailheader(fromdate As Date, ToDate As Date, Category As String)
    co = 0
    Print #a, Chr(18)
    Print #a, Space(3) & CENTRE(Chr(14) & divname & Chr(14), 90, " ")
    Print #a,
    Print #a, Space(3) & CENTRE(Chr(27) & "E" & " STOCK LEDGER VARIETY WISE FOR THE DATE BETWEEN " & Format(fromdate, "DD/MM/YYYY") & " AND " & Format(ToDate, "DD/MM/YYYY") & ". " & Chr(27) & "F", 130, " ")
    Print #a,
    Print #a, Space(3) & Padr(" ", 100, " ") & "Date: " & Format(Date, "dd/mm/yyyy") & " Page: " & pg
    Print #a, Space(3) & String(132, "-")
    Print #a, Space(3) & Padr("VARIETY", 20, " ") & Space(14) & "<-----" & CENTRE("RECEIPTS", 10, " ") & "----->" & Space(6) & "<-----" & CENTRE("ISSUES", 10, " ") & "----->" & Space(20) & "<-----" & CENTRE("STOCK", 10, " ") & "----->"
    Print #a, Space(3) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ") '& Space(39) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ")
    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Padl("QUANTITY", 20, "") & Space(3) & Padl("VALUE", 17, "") & Space(2) & Padr("QUANTITY", 20, "") & Space(3) & Padr("VALUE", 18, "") & Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
    Print #a, Space(3) & String(132, "-")
    co = co + 11
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
Public Sub StockLotReport2(U As String, v As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim PageLen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim totbal As Double
Dim Cnn As Connection
'Dim f As New repform1
On Error GoTo StockLotReport2_Error

Set Cnn = New Connection
Set rs2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.CursorLocation = adUseClient
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))
    Set rs1 = New Recordset
        
  strSQL = ""
  strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0))AS ISSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        'strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-sum(isnull(a.ISSRETBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))  )) END CLOBALES," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)) -sum(isnull(a.ISSRETBAL,0)) )) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)) )-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0))))"
    '   strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-sum(isnull(a.ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0)) ))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0))   )) END CLOVALUE"
        strSQL = strSQL + ",ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY, "
        strSQL = strSQL + " (SUM(ISNULL(A.RECbal,0))+SUM(ISNULL(A.ISSRETBAL,0))+ sum(isnull(a.recBOR,0))+ sum(isnull(a.ISSRETBOR,0))) AS RECBAL,(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)))+(sum(isnull(a.PRODbor,0))+ sum(isnull(a.TRANSbor,0))+sum(isnull(a.SALESbor,0))+sum(isnull(a.JWbor,0))) ISSBAL ,SUM(ISNULL(A.REJKGS,0)) AS REJKGS, sum(IsNull(a.REJBAL, 0)) As REJBALES "
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
        strSQL = strSQL + " , sum(IsNull(a.Comm_wt, 0)) As Comm_wt "
        End If
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
       '' 'strSQL = strSQL + " ) A , RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        strSQL = strSQL + " ) A inner join RM_LOT B on b.divcode='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   "
        strSQL = strSQL + "  inner join RM_VAR C on  B.CATCD=C.CATCD AND b.VARCODE=C.VARCODE  "
        strSQL = strSQL + "  inner join rm_CAT D on B.CATCD= D.CATCD"
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE"
        strSQL = strSQL + " inner join  RM_ProductprintDet Param on Param.SUPCD=b.supcd and Param.lotno=b.lotno and param.lotdt=b.lotdt and Param.varcode=b.varcode and Param.lotyear=b.lotyear and Param.divcode=b.divcode and Param.lottype=b.lottype and IPadd='" & LocalIPAdd & "'"
        strSQL = strSQL + " WHERE "

        'strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.GODOWN in (" & L_God & ")  and  (b.transfertype in (" & L_Rec & ") or b.lottype  in (" & L_Rec & ") )  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
        strSQL = strSQL & "  b.divcode ='" & Divcode & "'   and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"



        
        
                    
'        If Trim(Left(W, 3)) <> "ALL" Then
'
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & "  (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                Else
'                    strSQL = strSQL & "  b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                End If
'            Else
'                    strSQL = strSQL & "  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'            End If
'        Else
'            If vrectype <> "ALL" Then
'                If vrectype = "A" Then
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                Else
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'                End If
'            Else
'                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
'            End If
'        End If
Set rs1 = New Recordset
'Cnn.ConnectionTimeout = 5000
rs1.Open strSQL, Cnn, adOpenStatic

If rs1.EOF Then
'   MsgBox "No Stock found for this month", vbInformation, head
'   Screen.MousePointer = 0
'    Exit Sub
End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisetemp1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table StockLotwisetemp1"
End If
If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
    DB.Execute "Create table StockLotwisetemp1(Catname char(40),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(80),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),RecBales numeric(10),IssBales numeric(10),REJKGS numeric(18,3),REJBALES numeric(10),Comm_wt numeric(15,3) )"
    Do While Not rs1.EOF
        'SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
        DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & "," & rs1("Comm_wt") & ")"
        rs1.MoveNext
    Loop
Else
    DB.Execute "Create table StockLotwisetemp1(Catname char(40),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(80),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),RecBales numeric(10),IssBales numeric(10),REJKGS numeric(18,3),REJBALES numeric(10) )"
    Do While Not rs1.EOF
        'SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
        DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
        rs1.MoveNext
    Loop
End If

Exit Sub

StockLotReport2_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Stock Lot Report of Form Mixing Chart"
End Sub

Private Sub PUTDATADATE2()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
tmpFile = "Cost sheet"
tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
'Set oExcel = CreateObject("Excel.Application")

Set oExcel = CreateObject("ket.Application")
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)
'    oExcel.Visible = True
'    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        
        Set Rs = New Recordset
        Rs.Open "select div_printname,div_unitname from pp_divmas where divcode='" & Divcode & "'", DB
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "T1").MergeCells = True
        oSheet.Range("A1", "T1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 18
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "T2").MergeCells = True
        oSheet.Range("A2", "T2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 15
        .Color = vbBlue
        End With
        

      
        oSheet.Cells(4, 5).value = "Mixing Chart Report from " & Format(DTPicker2.value, "DD/MM/YYYY") & " to " & Format(DTPicker3.value, "DD/MM/YYYY")
      
        oSheet.Range("A4", "T4").MergeCells = True
        With oSheet.Range("A4", "T4").Font
        .Bold = True
        .Size = 12
        .Color = vbMagenta
        End With
    
   
  
  Dim exorder, domestic As String
  Dim m_col As Integer
  Dim lotno As Integer
  xorder = ""
        'DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Trim(Year(DTPicker3.value) - 1) & "'"
        DB.Execute "exec SP_Mix_Chart '" & Divcode & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Trim(Combo1.Text) & "','" & Trim(Combo4.Text) & "','" & Trim(Year(DTPicker3.value) - 1) & "'"
        Set Rs = New Recordset
        Rs.Open "select * from tmp_MixChart order by lotno,issdocno", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                oSheet.Cells(6, 1).value = "S.No"
                oSheet.Cells(6, 2).value = "Remain "
                oSheet.Cells(6, 3).value = "Mill Lot No."
                oSheet.Cells(6, 4).value = "Party Lot No."
                oSheet.Cells(6, 5).value = "Variety"
                oSheet.Cells(6, 6).value = "State"
                oSheet.Cells(6, 7).value = "Stock"
                oSheet.Cells(6, 8).value = "2.5% S.L"
                oSheet.Cells(6, 9).value = "MIC"
                oSheet.Cells(6, 10).value = "RD"
                oSheet.Cells(6, 11).value = "+B"
                
                Set rs1 = New Recordset
                rs1.Open "select min(issdocno),max(issdocno) from tmp_MixChart", DB, adOpenStatic
                X = 12
                For I = rs1(0) To rs1(1)
                    oSheet.Cells(6, X).value = I
                    X = X + 1
                Next I
                oSheet.Cells(6, X).value = "Total Issued"
                X = X + 1

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                m_col = oSheet.UsedRange.Columns.Count
                
                Rs.MoveFirst
                rs1.MoveFirst
                VarName = ""
                lotno = Rs("lotno")
                SNO = 1
                docNo = rs1(0)
                oSheet.Cells(m_ROW, 1).value = SNO
                oSheet.Cells(m_ROW, 2).value = Rs("clsstock")
                oSheet.Cells(m_ROW, 3).value = Rs("lotno")
                oSheet.Cells(m_ROW, 4).value = Rs("plotno")
                oSheet.Cells(m_ROW, 5).value = Rs("varname")
                oSheet.Cells(m_ROW, 6).value = Rs("state")
                oSheet.Cells(m_ROW, 7).value = Rs("stock")
                oSheet.Cells(m_ROW, 8).value = Rs("SL")
                oSheet.Cells(m_ROW, 9).value = Rs("MIC")
                oSheet.Cells(m_ROW, 10).value = Rs("RD")
                oSheet.Cells(m_ROW, 11).value = Rs("bb")
                m_col = 12
                While Not Rs.EOF
                    'If VarName <> Rs("VARNAME") Then
'                    If docNo <> Rs("issdocno") Then
'                    If m_col > rs1(1) Then
                    If lotno <> Rs("lotno") Then
                        Set tmprss = New Recordset
                        tmprss.Open "select isnull(sum(issuebale),'0') from tmp_MixChart where lotno='" & Rs("lotno") - 1 & "'", DB, adOpenStatic
                        oSheet.Cells(m_ROW, CInt(rs1(1) - rs1(0)) + 13).value = tmprss(0)
                        m_ROW = m_ROW + 1
                        SNO = SNO + 1
                        oSheet.Cells(m_ROW, 1).value = SNO
                        oSheet.Cells(m_ROW, 2).value = Rs("clsstock")
                        oSheet.Cells(m_ROW, 3).value = Rs("lotno")
                        oSheet.Cells(m_ROW, 4).value = Rs("plotno")
                        oSheet.Cells(m_ROW, 5).value = Rs("varname")
                        oSheet.Cells(m_ROW, 6).value = Rs("state")
                        oSheet.Cells(m_ROW, 7).value = Rs("stock")
                        oSheet.Cells(m_ROW, 8).value = Rs("SL")
                        oSheet.Cells(m_ROW, 9).value = Rs("MIC")
                        oSheet.Cells(m_ROW, 10).value = Rs("RD")
                        oSheet.Cells(m_ROW, 11).value = Rs("bb")
                        
                        'm_col = 11 + Rs("issdocno")
                        m_col = 12 + Rs("issdocno") - rs1(0)
'                        m_col = 12
'                        docNo = rs1(0)
                        docNo = Rs("issdocno")
                    End If
                    If docNo = Rs("issdocno") Then
                        oSheet.Cells(m_ROW, m_col).value = Rs("issueBale")
'                        osheet.Cells(m_row, 20).value = Rs("issueBale")
                    Else
'                        m_col = m_col + (Rs("issdocno") - docNo)
'                        docNo = Rs("issdocno")
                    End If
                    m_col = m_col + 1
                    docNo = docNo + 1
                    'VarName = Rs("VARNAME")
                    lotno = Rs("lotno")
                    Rs.MoveNext
                Wend
                
                Rs.MovePrevious
                Set tmprss = New Recordset
                tmprss.Open "select isnull(sum(issuebale),'0') from tmp_MixChart where lotno='" & Rs("lotno") & "'", DB, adOpenStatic
                oSheet.Cells(m_ROW, CInt(rs1(1) - rs1(0)) + 13).value = tmprss(0)
                
                
                Set tmprss = New Recordset
                tmprss.Open "select isnull(sum(stock),'0') from tmp_MixChart ", DB, adOpenStatic
                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
                m_ROW = m_ROW + 1
                
                oSheet.Cells(m_ROW + 1, 11).value = "Len"
                oSheet.Cells(m_ROW + 2, 11).value = "Str"
                oSheet.Cells(m_ROW + 3, 11).value = "Mic"
                oSheet.Cells(m_ROW + 4, 11).value = "UR"
                oSheet.Cells(m_ROW + 5, 11).value = "Rd"
                oSheet.Cells(m_ROW + 6, 11).value = "+b"
                
                DB.Execute "Exec SP_Mix_ChartAbs"
                
                Set rss = New Recordset
                'rss.Open "select lotno,sum(len) len,sum(str) str,sum(mic) mic,sum(ur) ur,sum(rd) rd,sum(bb) bb from tmp_MixChart group by lotno order by lotno ", DB, adOpenStatic
                rss.Open "select issdocno,sum(len) len,sum(str) str,sum(mic) mic,sum(ur) ur,sum(rd) rd,sum(bb) bb from tmp_MixChart group by issdocno order by issdocno ", DB, adOpenStatic
                rss.MoveFirst
                
                'Rs.MoveFirst
                rss.MoveFirst
                'While Not Rs.EOF
                m_col = 12
                tmpcol = 11
                While Not rss.EOF
                    'm_col = 11 + rss("issdocno")
                                        
                    If m_col <= 26 Then
                        'position = Chr(65 + 10 + Trim(rss("issdocno")))
                        position = Chr(65 + Trim(tmpcol))
                    ElseIf m_col > 286 Then
                        'position = "K" & Chr(65 + 10 + Trim(rss("issdocno") - 286))
                        position = "K" & Chr(65 + Trim(tmpcol - 286))
                    ElseIf m_col > 260 Then
                        'position = "J" & Chr(65 + 10 + Trim(rss("issdocno") - 260))
                        position = "J" & Chr(65 + Trim(tmpcol - 260))
                    ElseIf m_col > 234 Then
                        'position = "I" & Chr(65 + 10 + Trim(rss("issdocno") - 234))
                        position = "I" & Chr(65 + Trim(tmpcol - 234))
                    ElseIf m_col > 208 Then
                        'position = "H" & Chr(65 + 10 + Trim(rss("issdocno") - 208))
                        position = "H" & Chr(65 + Trim(tmpcol - 208))
                    ElseIf m_col > 182 Then
                        'position = "G" & Chr(65 + 10 + Trim(rss("issdocno") - 182))
                        position = "G" & Chr(65 + Trim(tmpcol - 182))
                    ElseIf m_col > 156 Then
                        'position = "F" & Chr(65 + 10 + Trim(rss("issdocno") - 156))
                        position = "F" & Chr(65 + Trim(tmpcol - 156))
                    ElseIf m_col > 130 Then
                        'position = "E" & Chr(65 + 10 + Trim(rss("issdocno") - 130))
                        position = "E" & Chr(65 + Trim(tmpcol - 130))
                    ElseIf m_col > 104 Then
                        'position = "D" & Chr(65 + 10 + Trim(rss("issdocno") - 104))
                        position = "D" & Chr(65 + Trim(tmpcol - 104))
                    ElseIf m_col > 78 Then
                        'position = "C" & Chr(65 + 10 + Trim(rss("issdocno") - 78))
                        position = "C" & Chr(65 + Trim(tmpcol - 78))
                    ElseIf m_col > 52 Then
                        'position = "B" & Chr(65 + 10 + Trim(rss("issdocno") - 52))
                        position = "B" & Chr(65 + Trim(tmpcol - 52))
                    ElseIf m_col >= 26 Then
                        'position = "A" & Chr(65 + 10 + Trim(rss("issdocno") - 26))
                        position = "A" & Chr(65 + Trim(tmpcol - 26))
                    End If
                    oSheet.Cells(m_ROW, m_col).Formula = "=SUM(" & position & "7:" & position & "" & m_ROW - 1 & ")"
                    
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(len),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(SL,'###.00') SL from tmp_MixChartAbs where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 1, m_col) = "" Then
                        oSheet.Cells(m_ROW + 1, m_col) = tmprss(0)
                    End If
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(STR),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(STR,'###.00') STR from tmp_MixChartAbs where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 2, m_col) = "" Then
                        oSheet.Cells(m_ROW + 2, m_col) = tmprss(0)
                    End If
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(mic),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(MIC,'###.00') MIC from tmp_MixChartAbs where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 3, m_col) = "" Then
                        oSheet.Cells(m_ROW + 3, m_col) = tmprss(0)
                    End If
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(UR),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(UR,'###.00') UR from tmp_MixChart where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 4, m_col) = "" Then
                        oSheet.Cells(m_ROW + 4, m_col) = tmprss(0)
                    End If
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(rd),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(RD,'###.00') RD from tmp_MixChartAbs where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 5, m_col) = "" Then
                        oSheet.Cells(m_ROW + 5, m_col) = tmprss(0)
                    End If
                    Set tmprss = New Recordset
                    'tmprss.Open "select isnull(sum(bb),'0') from tmp_MixChart where lotno='" & rss("issdocno") & "'", DB, adOpenStatic
                    tmprss.Open "select format(bb,'###.00') bb from tmp_MixChartAbs where issdocno='" & rss("issdocno") & "'", DB, adOpenStatic
                    If oSheet.Cells(m_ROW + 6, m_col) = "" Then
                        oSheet.Cells(m_ROW + 6, m_col) = tmprss(0)
                    End If
                    m_col = m_col + 1
                    tmpcol = tmpcol + 1
                    rss.MoveNext
'                    Rs.MoveNext
                Wend
                
'                    rss.MovePrevious
'                    m_col = m_col + 1
'                    If m_col <= 26 Then
'                        position = Chr(65 + 10 + Trim(rss("issdocno")))
'                    ElseIf m_col > 286 Then
'                        position = "K" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 286))
'                    ElseIf m_col > 260 Then
'                        position = "J" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 260))
'                    ElseIf m_col > 234 Then
'                        position = "I" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 234))
'                    ElseIf m_col > 208 Then
'                        position = "H" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 208))
'                    ElseIf m_col > 182 Then
'                        position = "G" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 182))
'                    ElseIf m_col > 156 Then
'                        position = "F" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 156))
'                    ElseIf m_col > 130 Then
'                        position = "E" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 130))
'                    ElseIf m_col > 104 Then
'                        position = "D" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 104))
'                    ElseIf m_col > 78 Then
'                        position = "C" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 78))
'                    ElseIf m_col > 52 Then
'                        position = "B" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 52))
'                    ElseIf m_col > 26 Then
'                        position = "A" & Chr(65 + 10 + Trim(rss("issdocno") + 1 - 26))
'                    End If
'                    osheet.Cells(m_ROW, m_col).Formula = "=SUM(" & position & "7:" & position & "" & m_ROW - 1 & ")"

                    If m_col <= 26 Then
                        'position = Chr(65 + 10 + Trim(rss("issdocno")))
                        position = Chr(65 + Trim(tmpcol))
                    ElseIf m_col > 286 Then
                        'position = "K" & Chr(65 + 10 + Trim(rss("issdocno") - 286))
                        position = "K" & Chr(65 + Trim(tmpcol - 286))
                    ElseIf m_col > 260 Then
                        'position = "J" & Chr(65 + 10 + Trim(rss("issdocno") - 260))
                        position = "J" & Chr(65 + Trim(tmpcol - 260))
                    ElseIf m_col > 234 Then
                        'position = "I" & Chr(65 + 10 + Trim(rss("issdocno") - 234))
                        position = "I" & Chr(65 + Trim(tmpcol - 234))
                    ElseIf m_col > 208 Then
                        'position = "H" & Chr(65 + 10 + Trim(rss("issdocno") - 208))
                        position = "H" & Chr(65 + Trim(tmpcol - 208))
                    ElseIf m_col > 182 Then
                        'position = "G" & Chr(65 + 10 + Trim(rss("issdocno") - 182))
                        position = "G" & Chr(65 + Trim(tmpcol - 182))
                    ElseIf m_col > 156 Then
                        'position = "F" & Chr(65 + 10 + Trim(rss("issdocno") - 156))
                        position = "F" & Chr(65 + Trim(tmpcol - 156))
                    ElseIf m_col > 130 Then
                        'position = "E" & Chr(65 + 10 + Trim(rss("issdocno") - 130))
                        position = "E" & Chr(65 + Trim(tmpcol - 130))
                    ElseIf m_col > 104 Then
                        'position = "D" & Chr(65 + 10 + Trim(rss("issdocno") - 104))
                        position = "D" & Chr(65 + Trim(tmpcol - 104))
                    ElseIf m_col > 78 Then
                        'position = "C" & Chr(65 + 10 + Trim(rss("issdocno") - 78))
                        position = "C" & Chr(65 + Trim(tmpcol - 78))
                    ElseIf m_col > 52 Then
                        'position = "B" & Chr(65 + 10 + Trim(rss("issdocno") - 52))
                        position = "B" & Chr(65 + Trim(tmpcol - 52))
                    ElseIf m_col >= 26 Then
                        'position = "A" & Chr(65 + 10 + Trim(rss("issdocno") - 26))
                        position = "A" & Chr(65 + Trim(tmpcol - 26))
                    End If
                
                lr = "A6"
                HR = position & "6"
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 10
                .Color = vbRed
                End With
               
                lr = "A" & m_ROW
                HR = position & "" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 10
                .Color = vbRed
                End With
                
                oSheet.Range("B" & m_ROW, "E" & m_ROW).MergeCells = True
                'osheet.Cells("B" & m_row, "E" & m_row).value = "Total"
                oSheet.Cells(m_ROW, 2).value = "Total"
                oSheet.Range("B" & m_ROW, "E" & m_ROW).HorizontalAlignment = Excel.xlCenter
                                                
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                
                                
                lr = "A6"
                HR = position & "" & m_ROW
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                                
               ' Myxl.Application.Visible = True
                
                Set oSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub
