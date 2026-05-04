VERSION 5.00
Object = "{65E121D4-0C60-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCHRT20.OCX"
Begin VB.Form StockVarierty 
   BackColor       =   &H00C0E0FF&
   Caption         =   "Varietywise Stock - Chart"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
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
      Left            =   8880
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   5910
      Width           =   1065
   End
   Begin MSChart20Lib.MSChart MSChart1 
      Height          =   4755
      Left            =   900
      OleObjectBlob   =   "StockVarierty.frx":0000
      TabIndex        =   4
      Top             =   750
      Width           =   10275
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0E0FF&
      Height          =   600
      Left            =   6300
      TabIndex        =   1
      Top             =   5790
      Width           =   2295
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
         Top             =   150
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
         Top             =   180
         Width           =   885
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
      Left            =   10110
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   5910
      Width           =   1065
   End
End
Attribute VB_Name = "StockVarierty"
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
Dim date1 As String
Dim date2 As String

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

Unload Me

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form StockVarierty", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Screen.MousePointer = 11
Set DB = New Connection
DB.Open connectstring
F_Date = repform1.DTPicker2.value
T_Date = repform1.DTPicker3.value
SR = repform1.Combo2.Text
'isstype = Trim(Mid$(IssurCharrep.Combo1.Text, 1, InStr(IssurCharrep.Combo1.Text, "-") - 1))
SR = Trim(Mid$(repform1.Combo2.Text, 1, InStr(repform1.Combo2.Text, "-") - 1))
Set Rs = New Recordset
If SR = "ALL" Then
    Rs.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where " & _
            "  b.lotdt <'" & Format(F_Date, "YYYY/MM/DD") & "' group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg  IN ('R','H')  then count(baleno) else 0 end as issboras,sum(C.ACTISSKGS-TAREWT/BALES) As isskgs from rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "' " & _
            "group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where   b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(baleno) else 0 end as issboras,sum(C.ACTISSKGS-TAREWT/BALES) As isskgs from " & _
            "rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and   docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", DB, adOpenStatic
Else
    Rs.Open "select a.varcode,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where " & _
            "b.catcd = '" & SR & "'  and b.lotdt <'" & Format(F_Date, "YYYY/MM/DD") & "' group by b.varcode,b.bblflg " & _
            "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(baleno) else 0 end as issboras,sum(C.ACTISSKGS-TAREWT/BALES) As isskgs from rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "' " & _
            "group by b.varcode,b.bblflg) a  group by varcode" & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where b.catcd = '" & SR & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' " & _
            " group by b.varcode,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(baleno) else 0 end as issboras,sum(C.ACTISSKGS-TAREWT/BALES) As isskgs from " & _
            "rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & SR & "' and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.varcode,b.opflg,b.bblflg))a group by a.varcode ", DB, adOpenStatic


End If
If Rs.RecordCount = 0 Then
   MsgBox "No records found", vbInformation, head
   MSChart1.Visible = False
   Screen.MousePointer = 0
   Exit Sub
End If

ReDim arrValues(1 To Rs.RecordCount, 1 To 2)
Dim I As Integer
Rs.MoveFirst

For I = 1 To Rs.RecordCount
    arrValues(I, 1) = Rs(0)
    arrValues(I, 2) = Rs(12)
    Rs.MoveNext
Next I

MSChart1.ChartData = arrValues
MSChart1.ChartType = VtChChartType2dBar
MSChart1.Stacking = False
MSChart1.Column = 1
MSChart1.ColumnLabel = "VARIETY"

With MSChart1.Plot.Backdrop
  .Fill.Style = VtFillStyleBrush
  .Fill.Brush.FillColor.Set 100, 255, 200
  .Frame.Style = VtFrameStyleThickOuter
  .Shadow.Style = VtShadowStyleDrop
End With
MSChart1.Title = "VARIETYWISE STOCK STATEMENT FROM " & Format(F_Date, "dd/mm/yyyy") & " TO " & Format(T_Date, "dd/mm/yyyy")
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form StockVarierty", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Label2_Click(Index As Integer)

End Sub

Private Sub Option1_Click()
On Error GoTo Option1_Click_Error

 MSChart1.ChartType = VtChChartType2dBar

Exit Sub
Option1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option1_Click of Form StockVarierty", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option2_Click()
On Error GoTo Option2_Click_Error

MSChart1.ChartType = VtChChartType3dBar
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option2_Click of Form StockVarierty", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Option3_Click()
MSChart1.ChartType = VtChChartType2dLine
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MON of Form StockVarierty", vbInformation, head
Screen.MousePointer = 0
End Sub

