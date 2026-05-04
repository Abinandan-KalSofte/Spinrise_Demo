VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form Varrecchart 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Varitywise Receipt  "
   ClientHeight    =   8130
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12045
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   8130
   ScaleWidth      =   12045
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CmdPrint 
      BackColor       =   &H00FFC0C0&
      Caption         =   "&Print"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   9000
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   6915
      Width           =   1065
   End
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   5625
      Left            =   840
      OleObjectBlob   =   "Varrecchart.frx":0000
      TabIndex        =   4
      Top             =   840
      Width           =   10425
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Height          =   600
      Left            =   6225
      TabIndex        =   1
      Top             =   6885
      Width           =   2355
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0E0FF&
         Caption         =   "2D"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   60
         TabIndex        =   3
         Top             =   180
         Value           =   -1  'True
         Width           =   1155
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0E0FF&
         Caption         =   "3D"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   1290
         TabIndex        =   2
         Top             =   210
         Width           =   945
      End
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00FFC0C0&
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   540
      Left            =   10155
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   6915
      Width           =   1065
   End
End
Attribute VB_Name = "Varrecchart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As Connection
Dim rs As Recordset
Dim dv1 As DataEnvironment
Dim arrValues()
Dim MDAY As String
Dim MONTH As String
Dim Date1 As String
Dim Date2 As String

Private Sub cmdPrint_click()
    On Error Resume Next
    MSChart1.EditCopy
    Printer.Print " "
    Printer.PaintPicture Clipboard.GetData(), 0, 0
    Printer.EndDoc
err:
    If err.Number = 482 Then MsgBox "Default printer does not exist.", vbInformation, head

End Sub

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Screen.MousePointer = 11
Set db = New Connection
db.Open connectstring

VarietywiseReceipt.DataCombo1.Text = VarietywiseReceipt.DTPicker1.value
VarietywiseReceipt.DataCombo2.Text = VarietywiseReceipt.DTPicker2.value

Date1 = VarietywiseReceipt.DataCombo1.Text
Date2 = VarietywiseReceipt.DataCombo2.Text

catcd = Trim(Mid$(VarietywiseReceipt.Combo1.Text, 1, InStr(VarietywiseReceipt.Combo1.Text, "-") - 1))

Set rs = New Recordset
If catcd <> "ALL" Then
    rs.Open "SELECT VARNAME,SUM(NETWT) FROM RM_LOT A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND A.LOTDT BETWEEN '" & Format(Date1, "YYYY-MM-DD") & "' AND '" & Format(Date2, "YYYY-MM-DD") & "' AND A.CATCD='" & catcd & "' GROUP BY VARNAME ", db, adOpenStatic
Else
    rs.Open "SELECT VARNAME,SUM(NETWT) FROM RM_LOT A,RM_VAR B WHERE A.VARCODE=B.VARCODE AND A.LOTDT BETWEEN '" & Format(Date1, "YYYY-MM-DD") & "' AND '" & Format(Date2, "YYYY-MM-DD") & "'  GROUP BY VARNAME ", db, adOpenStatic
End If

If rs.RecordCount = 0 Then
   MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

ReDim arrValues(1 To rs.RecordCount, 1 To 2)
Dim i As Integer
rs.MoveFirst

For i = 1 To rs.RecordCount
    arrValues(i, 1) = rs("VARNAME")
    arrValues(i, 2) = rs(1)
    rs.MoveNext
Next i

MSChart1.ChartData = arrValues
MSChart1.chartType = VtChChartType2dBar
MSChart1.Stacking = False
MSChart1.Column = 1
MSChart1.ColumnLabel = "VARIETY"

MSChart1.Title = "VARIETYWISE RECEIPT CHART  FROM  " & Format(Date1, "DD/MM/YYYY") & "  TO  " & Format(Date2, "DD/MM/YYYY")

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

Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Label2_Click(Index As Integer)

End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

 MSChart1.chartType = VtChChartType2dBar

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option1_Click of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

MSChart1.chartType = VtChChartType3dBar
 With MSChart1.Plot.Backdrop
   .Fill.Style = VtFillStyleNull
   .Fill.Brush.FillColor.Set 100, 255, 200
   .Frame.Style = VtFrameStyleThickInner
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
 With MSChart1.Title.VtFont
End With

Exit Sub
Option2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option2_Click of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option3_Click()
MSChart1.chartType = VtChChartType2dLine
End Sub


Private Sub MON()
On Error GoTo MON_Error

    If MDAY = UCase("April") Then
       MONTH = Format(yfdate, "yyyy") & "04"
    ElseIf MDAY = UCase("May") Then
       MONTH = Format(yfdate, "yyyy") & "05"
    ElseIf MDAY = UCase("June") Then
       MONTH = Format(yfdate, "yyyy") & "06"
    ElseIf MDAY = UCase("July") Then
       MONTH = Format(yfdate, "yyyy") & "07"
    ElseIf MDAY = UCase("August") Then
       MONTH = Format(yfdate, "yyyy") & "08"
    ElseIf MDAY = UCase("September") Then
       MONTH = Format(yfdate, "yyyy") & "09"
    ElseIf MDAY = UCase("October") Then
       MONTH = Format(yfdate, "yyyy") & "10"
    ElseIf MDAY = UCase("November") Then
       MONTH = Format(yfdate, "yyyy") & "11"
    ElseIf MDAY = UCase("December") Then
       MONTH = Format(yfdate, "yyyy") & "12"
    ElseIf MDAY = UCase("January") Then
       MONTH = Format(yldate, ("yyyy")) & "01"
    ElseIf MDAY = UCase("February") Then
       MONTH = Format(yldate, ("yyyy")) & "02"
    ElseIf MDAY = UCase("March") Then
       MONTH = Format(yldate, ("yyyy")) & "03"
    End If
    'S1 = 200301

Exit Sub
MON_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MON of Form Varrecchart", vbInformation, head
Screen.MousePointer = 0
End Sub

