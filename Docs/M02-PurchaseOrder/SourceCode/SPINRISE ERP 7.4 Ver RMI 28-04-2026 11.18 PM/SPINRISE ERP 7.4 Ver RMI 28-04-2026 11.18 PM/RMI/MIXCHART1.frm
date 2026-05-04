VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form MIXCHART1 
   BackColor       =   &H00C0E0FF&
   Caption         =   "MIXCHART1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0FFFF&
      BorderStyle     =   0  'None
      Height          =   600
      Left            =   1905
      TabIndex        =   2
      Top             =   5925
      Width           =   3675
      Begin VB.OptionButton Option1 
         BackColor       =   &H00C0FFFF&
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
         TabIndex        =   5
         Top             =   180
         Value           =   -1  'True
         Width           =   1155
      End
      Begin VB.OptionButton Option2 
         BackColor       =   &H00C0FFFF&
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
         TabIndex        =   4
         Top             =   180
         Width           =   1155
      End
      Begin VB.OptionButton Option3 
         BackColor       =   &H00C0FFFF&
         Caption         =   "CURVES"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   2490
         TabIndex        =   3
         Top             =   210
         Width           =   1155
      End
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H000000FF&
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
      Height          =   540
      Left            =   5925
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   5955
      Width           =   1065
   End
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   5730
      Left            =   0
      OleObjectBlob   =   "MIXCHART1.frx":0000
      TabIndex        =   0
      Top             =   0
      Width           =   9315
   End
End
Attribute VB_Name = "MIXCHART1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim dv1 As DataEnvironment
Dim arrValues()
Dim MDAY As String
Dim MONTH As String
Dim Date1 As String
Dim Date2 As String

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring
Date1 = MixingCostChart.DataCombo1.Text
Date2 = MixingCostChart.DataCombo2.Text
cntcd = MixingCostChart.Combo1.Text

Set Rs = New Recordset
Rs.Open "select distinct f.varname,sum(b.isskgs),round(sum(b.isskgs)/(select sum(isskgs) from rm_issb b,rm_issh a  where a.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.docdt=b.docdt and a.divcode='" & Divcode & "' and a.docno=b.docno and a.cntcd='" & cntcd & "' and a.isstype='P' ),4) *100 ,round(avg((c.ratekg)*355.6187),2)as ratecandy,SUM(b.isskgs)*avg(ratekg) as value,ROUND(avg(ratekg),3) as ratekg from rm_issh a,rm_issb b,rm_lot c,rm_Var f where b.lotno=c.lotno and b.lotdt=c.lotdt and a.docno=b.docno and a.docdt=b.docdt and a.isstype=b.isstype and c.varcode=f.varcode and a.divcode=b.divcode and c.divcode=b.divcode and a.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "'  and a.divcode='" & Divcode & "' and a.cntcd='" & cntcd & "' and a.isstype='P' group by f.varname", DB, adOpenStatic, adLockReadOnly

If Rs.RecordCount = 0 Then
   MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
Dim i As Integer
Rs.MoveFirst

For i = 1 To Rs.RecordCount
    arrValues(i, 1) = Rs("VARNAME")
    arrValues(i, 2) = Rs("RATECANDY")
    Rs.MoveNext
Next i

Option1.Value = True
MSChart1.ChartData = arrValues
MSChart1.chartType = VtChChartType2dLine
MSChart1.Stacking = False

With MSChart1.Plot.Backdrop
  .Fill.Style = VtFillStyleNull
  .Fill.Brush.FillColor.Set 100, 255, 200
  .Frame.Style = VtFrameStyleNull
  .Shadow.Style = VtShadowStyleDrop
End With

With MSChart1.Plot
   .Wall.Brush.Style = VtBrushStyleSolid
End With

With MSChart1.Plot
   .PlotBase.BaseHeight = 0
   .PlotBase.Brush.Style = VtBrushStyleSolid
   .PlotBase.Brush.FillColor.Set 0, 0, 255
End With

Screen.MousePointer = 0

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form MIXCHART1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Label2_Click(Index As Integer)

End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

 MSChart1.chartType = VtChChartType2dBar

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Option1_Click of Form MIXCHART1", vbInformation, head
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
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Option2_Click of Form MIXCHART1", vbInformation, head
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
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MON of Form MIXCHART1", vbInformation, head
Screen.MousePointer = 0
End Sub

