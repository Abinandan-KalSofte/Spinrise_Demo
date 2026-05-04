VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_MonthwiseRMIssueList 
   Caption         =   "RM Issue List - Month wise"
   ClientHeight    =   9900
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   18810
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9900
   ScaleWidth      =   18810
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   3000
      TabIndex        =   16
      Top             =   3120
      Width           =   3435
   End
   Begin VB.CheckBox Check2 
      Caption         =   "All"
      Height          =   195
      Left            =   2280
      TabIndex        =   15
      Top             =   5400
      Width           =   525
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   12120
      TabIndex        =   12
      Top             =   3000
      Width           =   3435
   End
   Begin VB.CheckBox Check1 
      Caption         =   "All"
      Height          =   195
      Left            =   11400
      TabIndex        =   11
      Top             =   5280
      Width           =   525
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Excel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   8160
      TabIndex        =   10
      Top             =   7320
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   9360
      TabIndex        =   9
      Top             =   7320
      Width           =   975
   End
   Begin VB.CheckBox Check3 
      Caption         =   "All"
      Height          =   195
      Left            =   6840
      TabIndex        =   5
      Top             =   5280
      Width           =   525
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   7560
      TabIndex        =   4
      Top             =   3000
      Width           =   3435
   End
   Begin MSComCtl2.DTPicker dtpToDate 
      Height          =   345
      Left            =   5790
      TabIndex        =   0
      Top             =   2400
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   609
      _Version        =   393216
      Format          =   143589377
      CurrentDate     =   37820
   End
   Begin MSComCtl2.DTPicker dtpFromDate 
      Height          =   345
      Left            =   3270
      TabIndex        =   1
      Top             =   2415
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   609
      _Version        =   393216
      Format          =   143589377
      CurrentDate     =   37578
   End
   Begin MSComctlLib.ListView List_Varcode 
      Height          =   3285
      Left            =   7560
      TabIndex        =   6
      Top             =   3360
      Width           =   3435
      _ExtentX        =   6059
      _ExtentY        =   5794
      View            =   3
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Variety Name"
         Object.Width           =   7938
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2
      EndProperty
   End
   Begin MSComctlLib.ListView List_Mix 
      Height          =   3285
      Left            =   12120
      TabIndex        =   13
      Top             =   3360
      Width           =   3435
      _ExtentX        =   6059
      _ExtentY        =   5794
      View            =   3
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Variety Name"
         Object.Width           =   7938
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2
      EndProperty
   End
   Begin MSComctlLib.ListView List_IssueType 
      Height          =   3285
      Left            =   3000
      TabIndex        =   17
      Top             =   3480
      Width           =   3435
      _ExtentX        =   6059
      _ExtentY        =   5794
      View            =   3
      LabelEdit       =   1
      MultiSelect     =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   0
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Variety Name"
         Object.Width           =   7938
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2
      EndProperty
   End
   Begin VB.Label Label4 
      Caption         =   "Issue Type"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   600
      Left            =   2160
      TabIndex        =   18
      Top             =   3480
      Width           =   615
   End
   Begin VB.Line Line2 
      BorderWidth     =   2
      X1              =   1920
      X2              =   15840
      Y1              =   7080
      Y2              =   7080
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   1920
      X2              =   15840
      Y1              =   2160
      Y2              =   2160
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   2
      Height          =   6615
      Left            =   1920
      Top             =   1320
      Width           =   13935
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Mixing"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   11160
      TabIndex        =   14
      Top             =   3360
      Width           =   600
   End
   Begin VB.Label LBLYarnRecHead 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "RM Issue List - Month wise"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   450
      Left            =   1920
      TabIndex        =   8
      Top             =   1560
      Width           =   13920
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Variety"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   6600
      TabIndex        =   7
      Top             =   3360
      Width           =   720
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "From Date"
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
      Left            =   2160
      TabIndex        =   3
      Top             =   2460
      Width           =   885
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "To Date"
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
      Left            =   4905
      TabIndex        =   2
      Top             =   2460
      Width           =   705
   End
End
Attribute VB_Name = "frm_MonthwiseRMIssueList"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New ADODB.Connection
Dim L_Iss As String
Dim L_Var As String
Dim L_Mix As String

Private Sub Check1_Click()
If Check1.value = 1 Then
        For I = 1 To List_Mix.ListItems.Count
          List_Mix.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Mix.ListItems.Count '- 1
             List_Mix.ListItems.Item(I).Checked = False
        Next I
End If
Call load_StockDetailsSup
End Sub

Private Sub Check2_Click()
    If Check2.value = 1 Then
        For I = 1 To List_IssueType.ListItems.Count
            List_IssueType.ListItems.Item(I).Checked = True
        Next I
    Else
        For I = 1 To List_IssueType.ListItems.Count '- 1
            List_IssueType.ListItems.Item(I).Checked = False
        Next I
    End If
Call load_StockDetailsSup
End Sub

Private Sub Check3_Click()
If Check3.value = 1 Then
        For I = 1 To List_Varcode.ListItems.Count
          List_Varcode.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_Varcode.ListItems.Count '- 1
             List_Varcode.ListItems.Item(I).Checked = False
        Next I
End If
Call load_StockDetailsSup
End Sub

Private Sub Command1_Click()

On Error GoTo MonthwiseIssesExcel_Error

    Call load_StockDetailsSup
      
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

tmpFile = "RM Issue Details"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
            
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        osheet.Cells(1, 5).value = CStr(Rs(0))
        osheet.Range("A1", "R1").MergeCells = True
         osheet.Range("A1", "R1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        osheet.Cells(2, 5).value = Rs(1)
        osheet.Range("A2", "R2").MergeCells = True
        osheet.Range("A2", "R2").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        osheet.Name = "RM Issue Details"
        
                
    intervalMinutes = -1

    Dim issuetype As String, lottype As String

      
        osheet.Cells(3, 5).value = "Month Wise RM Issue Details Form " & Format(dtpFromDate.value, "dd-mm-yyyy") & " to " & Format(dtpToDate.value, "dd-mm-yyyy")
        osheet.Range("A3", "R3").HorizontalAlignment = Excel.xlLeft
        osheet.Range("A3", "R3").MergeCells = True
        With osheet.Range("A3", "R3").Font
        .Bold = True
        .Size = 12
        .Color = vbMagenta
        End With
        

    DB.Execute "Exec ksp_Issue_Monthwise '" & Divcode & "','" & Format(dtpFromDate.value, "yyyy-mm-dd") & "','" & Format(dtpToDate.value, "yyyy-mm-dd") & "','" & Year(yfdate) & "','" & L_Iss & "','" & L_Var & "','" & L_Mix & "'"
    
    Set rsmonth = New Recordset
    'rsmonth.Open "select distinct month from RMIssues_temp", DB, adOpenForwardOnly, adLockReadOnly
    rsmonth.Open "select distinct a.month,b.id from RMIssues_temp a left join mm_month b on a.month=convert(int,b.sno) order by b.id", DB, adOpenForwardOnly, adLockReadOnly
    
    Set rsvariety = New Recordset
    rsvariety.Open "select distinct variety from RMIssues_temp", DB, adOpenForwardOnly, adLockReadOnly
    
    Set rsmixing = New Recordset
    rsmixing.Open "select distinct cntname from RMIssues_temp", DB, adOpenForwardOnly, adLockReadOnly
        
       
        I = 1
        Row = 4
        Dim TotCol As Integer
        TotCol = 0
        osheet.Cells(4, I).value = "S.No."
        TotCol = TotCol + 1
        I = I + 1
        osheet.Cells(4, I).value = "Variety"
        TotCol = TotCol + 1
        I = I + 1
        osheet.Cells(4, I).value = "Mixing Name"
        TotCol = TotCol + 1
        I = I + 1
        Do While Not rsmonth.EOF
            osheet.Cells(Row, I).value = MonthName(rsmonth(0))
            osheet.Cells(Row + 1, I).value = "No. of Bales"
            TotCol = TotCol + 1
            I = I + 1
            osheet.Cells(Row + 1, I).value = "Net Wt."
            TotCol = TotCol + 1
            I = I + 1
            osheet.Cells(Row + 1, I).value = "Avg. Rate/kg"
            TotCol = TotCol + 1
            I = I + 1
            osheet.Cells(Row + 1, I).value = "Amount"
            TotCol = TotCol + 1
            I = I + 1
            If I > 25 Then
'                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).MergeCells = True
'                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).HorizontalAlignment = Excel.xlCenter
            Else
                osheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).MergeCells = True
                osheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).HorizontalAlignment = Excel.xlCenter
            End If
            
        rsmonth.MoveNext
        Loop
        
        With osheet.Range("A4", "AY5").Font
        .Bold = True
        .Size = 11
        .Color = vbRed
        End With
        
        Dim bale(12) As Double
        Dim netkg(12) As Double
        Dim avgkg(12) As Double
        Dim amt(12) As Double
        
        
        Dim Gbale(12) As Double
        Dim Gnetkg(12) As Double
        Dim Gavgkg(12) As Double
        Dim Gamt(12) As Double
        
        
        Row = Row + 2
        Col = I
        I = 2
        SNO = 0
        rsvariety.MoveFirst
        While Not rsvariety.EOF
            SNO = SNO + 1
            osheet.Cells(Row, I - 1).value = SNO
            osheet.Cells(Row, I).value = CStr(rsvariety(0))
            I = I + 1
            subtot = 0
            rsmixing.MoveFirst
            While Not rsmixing.EOF
                Set tmp = New Recordset
                tmp.Open "select * from RMIssues_temp where variety='" & rsvariety(0) & "' and cntname='" & rsmixing(0) & "'", DB, adOpenForwardOnly, adLockReadOnly
                If tmp.RecordCount <> 0 Then
                    osheet.Cells(Row, I).value = CStr(rsmixing(0))
                    I = I + 1
                    rsmonth.MoveFirst
                    While Not rsmonth.EOF
                        Set TmpRs = New Recordset
                        TmpRs.Open "select variety,isnull(cntname,'') cntname,bale,netkg,avgrateperkg,amount from RMIssues_temp where variety='" & rsvariety(0) & "' and cntname='" & rsmixing(0) & "' and month='" & rsmonth(0) & "' order by variety", DB, adOpenForwardOnly, adLockReadOnly
                        If TmpRs.RecordCount > 0 Then
                            osheet.Cells(Row, I).value = TmpRs("bale")
                            osheet.Cells(Row, I + 1).value = TmpRs("netkg")
                            osheet.Cells(Row, I + 2).value = TmpRs("avgrateperkg")
                            osheet.Cells(Row, I + 3).value = TmpRs("amount")
                            bale(rsmonth(0)) = bale(rsmonth(0)) + TmpRs("bale")
                            netkg(rsmonth(0)) = netkg(rsmonth(0)) + TmpRs("netkg")
                            avgkg(rsmonth(0)) = avgkg(rsmonth(0)) + TmpRs("avgrateperkg")
                            amt(rsmonth(0)) = amt(rsmonth(0)) + TmpRs("amount")
                            
                            Gbale(rsmonth(0)) = Gbale(rsmonth(0)) + TmpRs("bale")
                            Gnetkg(rsmonth(0)) = Gnetkg(rsmonth(0)) + TmpRs("netkg")
                            Gavgkg(rsmonth(0)) = Gavgkg(rsmonth(0)) + TmpRs("avgrateperkg")
                            Gamt(rsmonth(0)) = Gamt(rsmonth(0)) + TmpRs("amount")
'                            I = I + 4
                        End If
                        I = I + 4
                        rsmonth.MoveNext
                    Wend
                Row = Row + 1
                I = 3
                End If
                rsmixing.MoveNext
            Wend
            
'            If CStr(rsvariety(0)) = "TENCEL (LYOCEL) STD 1.3 X 38MM - LTL" Then
'                MsgBox "Hai"
'            End If

            arr = MONTH(dtpFromDate)
            For aa = arr To arr + 12
                X = aa
                If X > 12 Then
                    X = aa - 12
                End If
                If bale(X) > 0 Then
'                    Set tmps = New Recordset
'                    tmps.Open "select distinct cntname from RMIssues_temp where variety='" & rsvariety(0) & "'", DB, adOpenForwardOnly, adLockReadOnly
'                    If tmps.RecordCount > 1 Then
                        osheet.Cells(Row, 3).value = "Variety Wise Total"
                        With osheet.Range("A" & Row, "AY" & Row).Font
                            .Bold = True
                            .Size = 12
            '                .Color = RGB(128, 57, 30)
                        End With
                        osheet.Cells(Row, I + 1).value = bale(X)
                        osheet.Cells(Row, I + 2).value = netkg(X)
        '                oSheet.Cells(Row, I + 3).value = avgkg(X)
                        osheet.Cells(Row, I + 4).value = amt(X)
'                    Else
'                        Row = Row - 1
'                    End If
                End If
                rsmonth.MoveFirst
                While Not rsmonth.EOF
                    If rsmonth(0) = X Then
                        I = I + 4
                    End If
                    rsmonth.MoveNext
                Wend
                'I = I + 4
                bale(X) = 0
                netkg(X) = 0
                avgkg(X) = 0
                amt(X) = 0
                X = X + 1
            Next aa
        I = 2
        Row = Row + 1
        rsvariety.MoveNext
        Wend
        
        I = 3
         arr = MONTH(dtpFromDate)
            For aa = arr To arr + 12
                X = aa
                If X > 12 Then
                    X = aa - 12
                End If
                If Gbale(X) > 0 Then
                    osheet.Cells(Row, 3).value = "Grand Total"
                    With osheet.Range("A" & Row, "AY" & Row).Font
                        .Bold = True
                        .Size = 12
                    End With
                    osheet.Cells(Row, I + 1).value = Gbale(X)
                    osheet.Cells(Row, I + 2).value = Gnetkg(X)
                    osheet.Cells(Row, I + 4).value = Gamt(X)
                    
                    Gbale(X) = 0
                    Gnetkg(X) = 0
                    Gamt(X) = 0
                End If
                rsmonth.MoveFirst
                While Not rsmonth.EOF
                    If rsmonth(0) = X Then
                        I = I + 4
                    End If
                    rsmonth.MoveNext
                Wend
'                I = I + 4
                X = X + 1
            Next aa
        
        osheet.Rows.AutoFit
        osheet.Columns.AutoFit
        
        
                m_ROW = osheet.UsedRange.Rows.Count
                m_col = osheet.UsedRange.Columns.Count
      
                lr = "A1"
                HR = "AY" & m_ROW
                
                With osheet.Range(lr, HR)
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
                
                
             MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set osheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
MonthwiseIssesExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Monthwise Issue Details of Form RM Issue List", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
    intervalMinutes = -1
    Screen.MousePointer = 0
    Unload Me
    Exit Sub
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    intervalMinutes = -1
    
    dtpFromDate.value = yfdate
    dtpToDate.value = pdate
    
    Set temprs = New Recordset
    temprs.Open "select DISTINCT a.varcode,b.varname  from rm_lot a inner join rm_var b on a.varcode=b.varcode where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' and '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' order by b.varname ", DB, adOpenForwardOnly, adLockReadOnly
    
    List_Varcode.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_Varcode.ListItems.ADD(, , temprs!VarName)
            List_Varcode.ListItems(List_Varcode.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
            temprs.MoveNext
        Loop
    End If
    
    Set temprs = New Recordset
    temprs.Open "select distinct b.cntcd,b.cntname from rm_issh a inner join rm_count b on a.divcode=b.divcode and a.cntcd=b.cntcd where a.DIVCODE ='" & Divcode & "' and a.docdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' and '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' order by b.cntname ", DB, adOpenForwardOnly, adLockReadOnly
    
    List_Mix.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_Mix.ListItems.ADD(, , temprs!cntname)
            List_Mix.ListItems(List_Mix.ListItems.Count).ListSubItems.ADD , , temprs!cntcd
            temprs.MoveNext
        Loop
    End If
    
    Set temprs = New Recordset
    temprs.Open " Select Distinct Issue_Code  type, Issue_Desc as description from rm_issuetype a  inner join rm_issh b on a.Issue_Code=b.isstype and b.divcode='" & Divcode & "'   where  b.docdt between '" & Format(dtpFromDate.value, "yyyy-MM-dd") & "' and '" & Format(dtpToDate.value, "yyyy-MM-dd") & "'  Order by Type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
    List_IssueType.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_IssueType.ListItems.ADD(, , temprs!Description)
            List_IssueType.ListItems(List_IssueType.ListItems.Count).ListSubItems.ADD , , temprs!Type
            temprs.MoveNext
        Loop
    End If
    Check1.value = 1
    Check2.value = 1
    Check3.value = 1
    
    
    temprs.Close
End Sub

Private Sub List_Mix_Click()
    Call load_StockDetailsSup
End Sub


Private Sub Text1_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmx As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Mix.ListItems.Count
        If Len(Trim(Text1.Text)) > 0 Then
            If InStr(1, List_Mix.ListItems(I).Text, Trim(Text1.Text), vbTextCompare) > 0 Then
                List_Mix.ListItems(I).Selected = True
                List_Mix.ListItems(I).Bold = True
                List_Mix.ListItems(I).ForeColor = vbBlue
                List_Mix.ListItems(I).EnsureVisible
                Exit For
        
            Else
                List_Mix.ListItems(I).Bold = False
                List_Mix.ListItems(I).ForeColor = vbBlack
            End If
        Else
            List_Mix.ListItems(I).Bold = False
            List_Mix.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
       
End Sub

Private Sub List_Varcode_Click()
    Call load_StockDetailsSup
End Sub

Private Sub load_StockDetailsSup()
On Error GoTo DataCombo1_Change_Error

    L_Iss = ""
    For I = 1 To List_IssueType.ListItems.Count
    
        If List_IssueType.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(List_IssueType.ListItems(I).SubItems(1))
            If L_Iss <> "" Then
                L_Iss = L_Iss + "," + "" + Trim(sRecCount) + ""
            Else
                L_Iss = "" + Trim(sRecCount) + ""
            End If
        End If
    Next
    
    L_Var = ""
    For I = 1 To List_Varcode.ListItems.Count
    
        If List_Varcode.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(List_Varcode.ListItems(I).SubItems(1))
            If L_Var <> "" Then
                L_Var = L_Var + "," + "" + Trim(sRecCount) + ""
            Else
                L_Var = "" + Trim(sRecCount) + ""
            End If
        End If
    Next
    
    L_Mix = ""
    For I = 1 To List_Mix.ListItems.Count
    
        If List_Mix.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(List_Mix.ListItems(I).SubItems(1))
            If L_Mix <> "" Then
                L_Mix = L_Mix + "," + "" + Trim(sRecCount) + ""
            Else
                L_Mix = "" + Trim(sRecCount) + ""
            End If
        End If
    Next
            
Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Supplier of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
End Sub



Private Sub Text2_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmx As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Mix.ListItems.Count
        If Len(Trim(Text2.Text)) > 0 Then
            If InStr(1, List_Mix.ListItems(I).Text, Trim(Text2.Text), vbTextCompare) > 0 Then
                List_Mix.ListItems(I).Selected = True
                List_Mix.ListItems(I).Bold = True
                List_Mix.ListItems(I).ForeColor = vbBlue
                List_Mix.ListItems(I).EnsureVisible
                Exit For
        
            Else
                List_Mix.ListItems(I).Bold = False
                List_Mix.ListItems(I).ForeColor = vbBlack
            End If
        Else
            List_Mix.ListItems(I).Bold = False
            List_Mix.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
 
End Sub

Private Sub load_IssueChkListbox()
On Error GoTo DataCombo1_Change_Error
    Dim li As ListItem
    Set temprs = New Recordset
    temprs.Open " Select Distinct Issue_Code  type, Issue_Desc as description from rm_issuetype a  inner join rm_issh b on a.Issue_Code=b.isstype and b.divcode='" & Divcode & "'   where  b.docdt between '" & Format(dtpFromDate.value, "yyyy-MM-dd") & "' and '" & Format(dtpToDate.value, "yyyy-MM-dd") & "'  Order by Type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
    List_IssueType.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_IssueType.ListItems.ADD(, , temprs!Description)
            List_IssueType.ListItems(List_IssueType.ListItems.Count).ListSubItems.ADD , , temprs!Type
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    Check2.value = 1
    Call Check2_Click
    intervalMinutes = -1
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub

