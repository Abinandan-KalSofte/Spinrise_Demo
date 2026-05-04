VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form Rpt_Supplierwise_Chart 
   Caption         =   "Supplierwise Receipt Chart"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CmdPrint 
      BackColor       =   &H00C0E0FF&
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   510
      Left            =   11160
      Style           =   1  'Graphical
      TabIndex        =   14
      Top             =   8460
      Visible         =   0   'False
      Width           =   1485
   End
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   7410
      Left            =   720
      OleObjectBlob   =   "Rpt_Supplierwise_Chart.frx":0000
      TabIndex        =   0
      Top             =   840
      Visible         =   0   'False
      Width           =   13650
   End
   Begin MSChart20Lib.MSChart MSChart2 
      Height          =   7170
      Left            =   720
      OleObjectBlob   =   "Rpt_Supplierwise_Chart.frx":2545
      TabIndex        =   13
      Top             =   840
      Visible         =   0   'False
      Width           =   13650
   End
   Begin VB.CommandButton Command3 
      BackColor       =   &H00C0E0FF&
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
      Height          =   510
      Left            =   12825
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   8460
      Visible         =   0   'False
      Width           =   1485
   End
   Begin VB.Frame Frame1 
      Height          =   3785
      Left            =   2265
      TabIndex        =   1
      Top             =   1085
      Visible         =   0   'False
      Width           =   5670
      Begin VB.Frame Frame2 
         Height          =   495
         Left            =   1560
         TabIndex        =   10
         Top             =   1920
         Width           =   3135
         Begin VB.OptionButton Option2 
            Caption         =   "Kgswise"
            Height          =   255
            Left            =   1800
            TabIndex        =   12
            Top             =   120
            Width           =   975
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Balewise"
            Height          =   255
            Left            =   480
            TabIndex        =   11
            Top             =   120
            Value           =   -1  'True
            Width           =   975
         End
      End
      Begin VB.CommandButton Command2 
         Caption         =   "E&xit"
         Height          =   480
         Left            =   3315
         TabIndex        =   8
         Top             =   2520
         Width           =   1350
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Report"
         Height          =   480
         Left            =   1680
         TabIndex        =   7
         Top             =   2520
         Width           =   1350
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   3000
         TabIndex        =   5
         Top             =   795
         Width           =   1485
         _ExtentX        =   2619
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171114497
         CurrentDate     =   39429
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   3000
         TabIndex        =   6
         Top             =   1350
         Width           =   1485
         _ExtentX        =   2619
         _ExtentY        =   661
         _Version        =   393216
         Format          =   171114497
         CurrentDate     =   39429
      End
      Begin VB.Label Label3 
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   1365
         TabIndex        =   4
         Top             =   1470
         Width           =   1200
      End
      Begin VB.Label Label2 
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1320
         TabIndex        =   3
         Top             =   870
         Width           =   1185
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Supplierwise Receipt"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   465
         Left            =   0
         TabIndex        =   2
         Top             =   0
         Width           =   6060
      End
   End
End
Attribute VB_Name = "Rpt_Supplierwise_Chart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As New Recordset
Dim DB As New Connection

Private Sub cmdPrint_Click()
    On Error Resume Next
    MSChart1.EditCopy
    Printer.Print " "
    Printer.PaintPicture Clipboard.GetData(), 0, 0
    Printer.EndDoc
Err:
    If Err.Number = 482 Then MsgBox "Default printer does not exist.", vbInformation, head

End Sub

Private Sub Command1_Click()

On Error GoTo Command1_Click_Error

Set DB = New Connection
DB.Open connectstring

          U = Format(DTPicker1.value, "dd/mm/yyyy"):        v = Format(DTPicker2.value, "dd/mm/yyyy")
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

Dim I As Integer
If Option1.value = True Then
    Set Rs = New Recordset
    Rs.Open "select distinct a.supcd,sum(a.bales) bales,e.slname as supplier,e.abbr from  rm_lot a,fa_slmas e  where a.supcd=e.slcode  and a.LOTDT Between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' group by a.supcd,e.slname,e.abbr order by a.supcd ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    MSChart1.Visible = True
    Frame1.Visible = False
    Command3.Visible = True
    cmdprint.Visible = True
    Rpt_Supplierwise_Chart.BackColor = "12640511"
        
    ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
    
    Rs.MoveFirst
    
    For I = 1 To Rs.RecordCount
        arrValues(I, 1) = Rs("abbr")
        arrValues(I, 2) = Rs("bales")
        Rs.MoveNext
    Next I
    
    MSChart1.ChartData = arrValues
    MSChart1.ChartType = VtChChartType2dBar
    MSChart1.Stacking = False
    MSChart1.Column = 1
    MSChart1.ColumnLabel = "Bales"
    
    MSChart1.Title = "SUPPLIERWISE RECEIPT CHART  FROM  " & Format(DTPicker1.value, "DD/MM/YYYY") & "  TO  " & Format(DTPicker2.value, "DD/MM/YYYY")
    
    
    With MSChart1.Plot.Backdrop
      .Fill.Style = VtFillStyleBrush
      .Fill.Brush.FillColor.Set 200, 255, 200
      .Frame.Style = VtFrameStyleThickOuter
      .Shadow.Style = VtShadowStyleDrop
    End With
    
    With MSChart1.Plot
       .Wall.Brush.Style = VtBrushStyleSolid
    End With
    
    With MSChart1.Plot
       .PlotBase.BaseHeight = 200
       .PlotBase.Brush.Style = VtBrushStyleSolid
       .PlotBase.Brush.FillColor.Set 0, 0, 255
        
    End With
ElseIf Option2.value = True Then
    Set Rs = New Recordset
    Rs.Open "select distinct a.supcd,sum(a.netwt) netwt,e.slname as supplier,e.abbr from  rm_lot a,fa_slmas e  where a.supcd=e.slcode  and a.LOTDT Between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' group by a.supcd,e.slname,e.abbr order by a.supcd ", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    MSChart2.Visible = True
    Frame1.Visible = False
    Command3.Visible = True
    Rpt_Supplierwise_Chart.BackColor = "12640511"
    ''Rpt_Supplierwise_Chart.BackColor
    
    ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
    Rs.MoveFirst
    
    For I = 1 To Rs.RecordCount
        arrValues(I, 1) = Rs("abbr")
        arrValues(I, 2) = Rs("netwt")
        Rs.MoveNext
    Next I
    
    MSChart2.ChartData = arrValues
    MSChart2.ChartType = VtChChartType2dBar
    MSChart2.Stacking = False
    MSChart2.Column = 1
    MSChart2.ColumnLabel = "Qualtity in Kgs"
    
    MSChart2.Title = "SUPPLIERWISE RECEIPT CHART  FROM  " & Format(DTPicker1.value, "DD/MM/YYYY") & "  TO  " & Format(DTPicker2.value, "DD/MM/YYYY")
    
    
    With MSChart2.Plot.Backdrop
      .Fill.Style = VtFillStyleBrush
      .Fill.Brush.FillColor.Set 200, 255, 200
      .Frame.Style = VtFrameStyleThickOuter
      .Shadow.Style = VtShadowStyleDrop
    End With
    
    With MSChart2.Plot
       .Wall.Brush.Style = VtBrushStyleSolid
    End With
    
    With MSChart2.Plot
       .PlotBase.BaseHeight = 200
       .PlotBase.Brush.Style = VtBrushStyleSolid
       .PlotBase.Brush.FillColor.Set 0, 0, 255
        
    End With

End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Frame1.Visible = True
MSChart1.Visible = False
MSChart2.Visible = False
Command3.Visible = False
cmdprint.Visible = False
Rpt_Supplierwise_Chart.BackColor = "-2147483633"

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

Date1 = Format(DTPicker1.value, "yyyy-mm-dd"): Date2 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(Date1) > CDate(Date2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.value = mfdate
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
        
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

If CDate(Date2) < CDate(Date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.value = pdate
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()

 
On Error GoTo Form_Load_Error

DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
DTPicker1.value = mfdate
DTPicker2.MinDate = yfdate
DTPicker2.maxdate = pdate
DTPicker2.value = pdate
Frame1.Visible = True
    ''''''''''''''''''''
Command1.Top = Command1.Top + 500
Command2.Top = Command2.Top + 500
Command1.Caption = "Chart"

    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Option1.tabIndex = 2
    Option2.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Rpt_Supplierwise_Chart", vbInformation, head
Screen.MousePointer = 0
    
End Sub

