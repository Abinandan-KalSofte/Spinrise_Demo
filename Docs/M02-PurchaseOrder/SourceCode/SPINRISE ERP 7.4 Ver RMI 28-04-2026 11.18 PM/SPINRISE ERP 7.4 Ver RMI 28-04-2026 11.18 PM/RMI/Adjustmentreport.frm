VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form AdjustmentReport 
   Caption         =   "Adjustment List"
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8625
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6270
   ScaleWidth      =   8625
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Crystal"
      Default         =   -1  'True
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
      Left            =   2760
      TabIndex        =   9
      Top             =   4260
      Visible         =   0   'False
      Width           =   960
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2595
      Left            =   1500
      TabIndex        =   2
      Top             =   1395
      Width           =   5325
      _ExtentX        =   9393
      _ExtentY        =   4577
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "Adjustmentreport.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2430
         Left            =   150
         TabIndex        =   3
         Top             =   30
         Width           =   5040
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   255
            Left            =   2040
            TabIndex        =   11
            Top             =   1440
            Visible         =   0   'False
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   450
            _Version        =   393216
            Format          =   154730497
            CurrentDate     =   44875
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   255
            Left            =   2040
            TabIndex        =   10
            Top             =   600
            Visible         =   0   'False
            Width           =   2175
            _ExtentX        =   3836
            _ExtentY        =   450
            _Version        =   393216
            Format          =   154730497
            CurrentDate     =   44875
         End
         Begin VB.ComboBox Combo2 
            Height          =   315
            Left            =   2010
            TabIndex        =   5
            Top             =   1590
            Width           =   2265
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "Adjustmentreport.frx":001C
            Left            =   2010
            List            =   "Adjustmentreport.frx":001E
            TabIndex        =   4
            Top             =   900
            Width           =   2265
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            BackColor       =   &H80000002&
            Caption         =   "Adjustment List"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000009&
            Height          =   315
            Left            =   15
            TabIndex        =   8
            Top             =   90
            Width           =   4995
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "To Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   390
            TabIndex        =   7
            Top             =   1620
            Width           =   855
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "From Date"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   390
            TabIndex        =   6
            Top             =   930
            Width           =   1095
         End
      End
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
      Left            =   4920
      TabIndex        =   1
      Top             =   4260
      Width           =   960
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
      Left            =   3840
      TabIndex        =   0
      Top             =   4260
      Width           =   960
   End
   Begin Crystal.CrystalReport CR 
      Left            =   480
      Top             =   2040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "AdjustmentReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim RecRs As Recordset
Dim issrs As Recordset
Dim issless As Recordset
Dim Oprs As Recordset
Dim TEMP As Recordset
Dim rep As Report.ReportView
Dim f As Integer
Dim Date1, Date2, date3 As String
Dim totoprecbale As Double
Dim month_value1 As String
Dim totoprecborah  As Double
Dim totoprectot  As Double
Dim totoprectotkg  As Double
Dim Adjustment As Double
Dim AdjRs As New Recordset
Dim too As Double
Dim too1 As Double
Dim monthmm As String
Dim yearyy As String
Dim var As String
Dim pagein As Integer
Dim cnt As Integer
Dim tot As Double
Dim ttemp As String

Private Sub Command1_Click()
intervalMinutes = -1
On Error GoTo Command1_Click_Error
If Repindex = 155555 Then
    intervalMinutes = -1
    Screen.MousePointer = 11
    ttemp = yfdate
    yfdate = DTPicker1.value
    Call Cotton_Recon.Cotton_Reconcil
    yfdate = ttemp
    intervalMinutes = -1
    Screen.MousePointer = 0
    Exit Sub
End If
Dim rx As Recordset
        Set rep = New Report.ReportView
        pagein = 0
        tot = 0
        f = FreeFile
        cnt = 0
        
        Close
        'Open "C:\formIV.txt" For Output As #f
         Open KALFOLDERDATA & "\formIV.TXT" For Output As #f
        
        Set Rs = New Recordset
        Rs.Open "select distinct lotno,lotdt,adjdt,adjwt,adjust,isnull(adjreason,' ') as adjreason,lotyear from rm_lot where lotyear='" & Year(yfdate) & "' and adjdt is not null and adjdt between '" & Format(Combo1.Text, "yyyy-mm-dd") & "' and '" & Format(Combo2.Text, "yyyy-mm-dd") & "' and DivCode  = '" & Divcode & "' order by adjdt", DB, adOpenStatic
        
        If Rs.RecordCount > 0 Then
            Call prnhead
            cnt = cnt + 7
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
        Do While Not Rs.EOF
            
            Print #f, Space(5) & Padl(INF(Rs("lotno"), 0), 7, " ") & Space(2) & Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") & Space(2) & Padl(Format(Rs("adjdt"), "dd/mm/yy"), 11, " ") & Space(1) & Padl(INF(Rs("adjwt"), 3), 12, " ") & Space(2) & CENTRE(Rs("adjust"), 17, " ") & Space(3) & Padr(Rs("adjreason"), 21, " ")
            cnt = cnt + 1
            Rs.MoveNext
            
            If cnt > 60 Then
                Print #f, Space(5) & String(85, "-")
                Print #f, Chr(12)
                cnt = 0
                Call prnhead
                cnt = cnt + 7
            End If
        Loop
        
        Set rx = New Recordset
        rx.Open "select  SUM(ISNULL(adjwt,0)) AS ADJWT,adjust from rm_lot where lotyear='" & Year(yfdate) & "' and adjdt is not null and adjdt between '" & Format(Combo1.Text, "yyyy-mm-dd") & "' and '" & Format(Combo2.Text, "yyyy-mm-dd") & "' and DivCode  = '" & Divcode & "' group by adjust", DB, adOpenStatic
        
        Print #f, Space(5) & String(85, "-")
        
        Do While Not rx.EOF
            Print #f, Space(15) & "           " & Space(10) & Padl(INF(rx("adjwt"), 3), 12, " ") & Space(2) & CENTRE(rx("adjust"), 17, " ")
            rx.MoveNext
        Loop
        Print #f, Space(5) & String(85, "-")
        
        Print #f, Chr(12)
        Close #f
'        Open "C:\formIV.bat" For Output As #f
'        Print #f, "cd\"
'        Print #f, "C:"
'        Print #f, "cd\"
'        Print #f, "type formIV.txt > prn"
'        Close #f
'        Rep.txtfile = "C:\formIV.txt"
'        Rep.Batfile = "C:\formIV.bat"
        f = FreeFile
        Call KALBATPROCESS("formIV")
        Screen.MousePointer = 0
        intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form AdjustmentReport"
End Sub
Private Sub prnhead()
On Error GoTo prnhead_Error
    pagein = pagein + 1
    Print #f, Chr(18)
    Print #f, Space(5) + Chr(27) & "E" & CENTRE(Trim(divname) & Chr(27) & "F", 85, " ")
    Print #f,
    Print #f, Space(5) & Chr(27) & "E" & "Adjustment List from " & Format(Combo1.Text, "dd/mm/yy") & " to " & Format(Combo2.Text, "dd/mm/yy") & Chr(27) & "F" & Space(12) & "" & Format(pdate, "dd/mm/yy") & "  Pg. No. : " & Padl(CStr(pagein), 3, " ")
    Print #f, Space(5) & String(85, "-")
    Print #f, Space(5) & "    Lot       Lot   Adjustment   Adjustment      Adjustment      Adjustment"
    Print #f, Space(5) & "    No.      Date         Date         Kgs.         Type         Reason "
    Print #f, Space(5) & String(85, "-")
Exit Sub
prnhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prnhead of Form AdjustmentReport"
End Sub
Public Sub monval(mothval As String)
On Error GoTo monval_Error
Dim MON As String, Year1 As String, Date1 As String, Date2 As String, date3 As String
    MON = Mid(mothval, 1, InStr(mothval, "-") - 1)
    Year1 = Right(mothval, 4)
    Date1 = Format("01-" & MON & "-" & Year1, "yyyy/mm/dd")
    Date2 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    date3 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    Call date11
    'date3 = Year(date1) & "/" & Month(date1) - 1 & "/" & Day(date2)
    date3 = yearyy & "/" & monthmm & "/" & Day(Date2)
    date3 = Format(date3, "yyyy-mm-dd")
Exit Sub
monval_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monval of Form AdjustmentReport"
End Sub
Public Sub date11()

End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
Screen.MousePointer = 0
Unload Me
intervalMinutes = -1
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form AdjustmentReport"
End Sub

Private Sub Command3_Click()
  Dim clsCryRptBilladd As New clsCrystal
  Set clsCryRptBilladd.cryRept = Cry_LotLossGain
  clsCryRptBilladd.CrystalPrint
  CR.Reset
  CR.Connect = connectstring
  CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
  CR.ParameterFields(0) = "@DivCode;" & Divcode & ""
  CR.ParameterFields(1) = "@Lotyear;" & Trim(Year(yfdate)) & ""
  CR.ParameterFields(2) = "@Fdocdt;" & Format(DTPicker1.value, "yyyy-MM-dd") & ""
  CR.ParameterFields(3) = "@Tdocdt;" & Format(DTPicker2.value, "yyyy-MM-dd") & ""
  CR.WindowShowPrintSetupBtn = True
  CR.WindowShowSearchBtn = True
  CR.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CR.Action = 1
  CR.PrinterCopies = 1
  Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Call openconnection
    If Repindex = 100055 Then
    Set Rs = New Recordset
    'RS.Open "select distinct a.wcode+'--'+b.wdes as variety from rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by variety", DB, adOpenStatic
    
    'rs.Open "select distinct a.wcode+'--'+b.wdes as variety from rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.divcode='" & Divcode & "' order by variety", db, adOpenStatic
    Rs.Open "select distinct adjdt,lotno,lotdt,lotyear from rm_lot where lotyear='" & Year(yfdate) & "' and adjdt is not null and adjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and DivCode  = '" & Divcode & "'", DB, adOpenStatic
    
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If
    
    Do While Not Rs.EOF
        Combo1.AddItem Rs(0)
        Combo2.AddItem Rs(0)
        Rs.MoveNext
    Loop
    Rs.MoveFirst
    Combo1.Text = Rs(0)
    Rs.MoveLast
    Combo2.Text = Rs(0)
   
    Frame1.Visible = True
    Frame1.ZOrder
    intervalMinutes = -1
    ElseIf Repindex = 155555 Then
        Combo1.Visible = False
        Combo2.Visible = False
        DTPicker1.Top = Combo1.Top
        DTPicker2.Top = Combo2.Top
        DTPicker1.value = yfdate
        DTPicker2.value = pdate
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        Command3.Visible = True
        Label6.Caption = "Loss or Gain Report"
        Me.Caption = "Loss or Gain Report"
    End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form AdjustmentReport"
End Sub
Public Sub monval1(month_value As String)
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
