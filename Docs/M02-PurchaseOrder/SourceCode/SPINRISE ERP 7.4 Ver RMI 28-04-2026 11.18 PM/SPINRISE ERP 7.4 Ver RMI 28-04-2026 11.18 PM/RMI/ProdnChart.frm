VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form ProdnChart 
   BackColor       =   &H00C0E0FF&
   ClientHeight    =   6615
   ClientLeft      =   75
   ClientTop       =   360
   ClientWidth     =   7080
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6615
   ScaleWidth      =   7080
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
      Left            =   8640
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   6840
      Width           =   1065
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
      Left            =   9870
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   6840
      Width           =   1065
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Height          =   600
      Left            =   5850
      TabIndex        =   0
      Top             =   6810
      Width           =   2565
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
         Top             =   180
         Width           =   1065
      End
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
         TabIndex        =   1
         Top             =   180
         Value           =   -1  'True
         Width           =   1155
      End
   End
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   5655
      Left            =   870
      OleObjectBlob   =   "ProdnChart.frx":0000
      TabIndex        =   4
      Top             =   690
      Width           =   10095
   End
End
Attribute VB_Name = "ProdnChart"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As Connection
Dim Rs As Recordset
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
On Error GoTo Command1_Click_Error

Unload Me

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Form ProdnChart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

If Repindex = 123 Then
    Screen.MousePointer = 11
    Set db = New Connection
    db.Open connectstring
    Date1 = IssurCharrep.DataCombo1.Text
    Date2 = IssurCharrep.DataCombo2.Text
    ISSTYPE = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
    
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
    '*=
    'Rs.Open "select a.varcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.varcode ", db, adOpenStatic
    Rs.Open "select a.varcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt inner join rm_issh c on C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno left join rm_count d on d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code Where   a.divcode = '" & Divcode & "'  and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.varcode ", db, adOpenStatic
    
    
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
        arrValues(i, 1) = Rs("VARCODE")
        arrValues(i, 2) = Rs("netkgs")
        Rs.MoveNext
    Next i
    
    MSChart1.ChartData = arrValues
    MSChart1.chartType = VtChChartType2dBar
    MSChart1.Stacking = False
    MSChart1.Column = 1
    MSChart1.ColumnLabel = "VARIETY"
    'MSChart1.Title = "VARIETYWISE ISSUE CHART FROM "
    MSChart1.Title = "VARIETYWISE ISSUE CHART  FROM  " & Format(Date1, "DD/MM/YYYY") & "  TO  " & Format(Date2, "DD/MM/YYYY")
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
ElseIf Repindex = 124 Then
    Screen.MousePointer = 11
    Set db = New Connection
    db.Open connectstring
    Date1 = IssurCharrep.DataCombo1.Text
    Date2 = IssurCharrep.DataCombo2.Text
    ISSTYPE = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
    
    Set Rs = New Recordset
    'rs.Open "select a.varcode,round((sum(isnull(b.actisskgs,0))-sum(isnull(e.tarewt,0))),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c, rm_count d,rm_bale e  Where b.lottype=e.lottype and b.lotno=e.lotno  and b.catcd=e.catcd and b.baleno=e.baleno and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and c.docdt between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(date2, "YYYY-MM-DD") & "'  and b.isstype='" & isstype & "' group by  varcode ", DB, adOpenStatic
  '*=
  ''  Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e,rm_issuetype f  Where b.isstype=f.issue_code and c.isstype=f.issue_code and  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "'  and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", db, adOpenStatic
     Rs.Open "select isnull(a.cntcode,'') as cntcode,round(Sum(isnull(b.actisskgs,0)-isnull(e.tarewt,0)),2) 'netkgs'  from rm_lot a " & _
     " inner join rm_issb b on A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt " & _
     " inner join rm_issh c on C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno " & _
     " left join rm_count d on d.cntcd = a.cntcode inner join rm_bale e on b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno inner join rm_issuetype f on b.isstype=f.issue_code and c.isstype=f.issue_code Where a.divcode = '" & Divcode & "' and   c.docdt  between '" & Format(Date1, "YYYY-MM-DD") & "' and '" & Format(Date2, "YYYY-MM-DD") & "' and a.rejflg='N'  and f.isstype='" & ISSTYPE & "' group by a.cntcode ", db, adOpenStatic
    If Rs.RecordCount = 0 Then
       MsgBox "No records found", vbInformation, head
       MSChart1.Visible = False
       Screen.MousePointer = 0
       Exit Sub
    End If
    
    ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
    'Dim i As Integer
    Rs.MoveFirst
    
    For i = 1 To Rs.RecordCount
        arrValues(i, 1) = Rs("cntCODE")
        arrValues(i, 2) = Rs("netkgs")
        Rs.MoveNext
    Next i
    
    MSChart1.ChartData = arrValues
    MSChart1.chartType = VtChChartType2dBar
    MSChart1.Stacking = False
    MSChart1.Column = 1
    MSChart1.ColumnLabel = "COUNT"
    'MSChart1.Title = "VARIETYWISE ISSUE CHART FROM "
    MSChart1.Title = "COUNTWISE ISSUE CHART  FROM  " & Format(Date1, "DD/MM/YYYY") & "  TO  " & Format(Date2, "DD/MM/YYYY")
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
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form ProdnChart", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Label2_Click(Index As Integer)

End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

 MSChart1.chartType = VtChChartType2dBar

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option1_Click of Form ProdnChart", vbInformation, head
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option2_Click of Form ProdnChart", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option3_Click()
On Error GoTo Option3_Click_Error

MSChart1.chartType = VtChChartType2dLine

Exit Sub
Option3_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option3_Click of Form ProdnChart", vbInformation, head
Screen.MousePointer = 0
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MON of Form ProdnChart", vbInformation, head
Screen.MousePointer = 0
End Sub
