VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frm_PurchaseAnalysisMonthwise 
   Caption         =   "Purchase Analysis Monthwise"
   ClientHeight    =   9180
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   16950
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9180
   ScaleWidth      =   16950
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   10320
      TabIndex        =   5
      Top             =   3360
      Width           =   3435
   End
   Begin VB.CheckBox Check3 
      Caption         =   "All"
      Height          =   195
      Left            =   9600
      TabIndex        =   4
      Top             =   5520
      Width           =   525
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
      Left            =   9240
      TabIndex        =   3
      Top             =   7560
      Width           =   975
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
      Left            =   8040
      TabIndex        =   2
      Top             =   7560
      Width           =   975
   End
   Begin VB.CheckBox Check2 
      Caption         =   "All"
      Height          =   195
      Left            =   5040
      TabIndex        =   1
      Top             =   5640
      Width           =   525
   End
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   285
      Left            =   5760
      TabIndex        =   0
      Top             =   3360
      Width           =   3435
   End
   Begin MSComCtl2.DTPicker dtpToDate 
      Height          =   345
      Left            =   8550
      TabIndex        =   6
      Top             =   2640
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   609
      _Version        =   393216
      Format          =   156696577
      CurrentDate     =   37820
   End
   Begin MSComCtl2.DTPicker dtpFromDate 
      Height          =   345
      Left            =   6030
      TabIndex        =   7
      Top             =   2655
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   609
      _Version        =   393216
      Format          =   156696577
      CurrentDate     =   37578
   End
   Begin MSComctlLib.ListView List_Varcode 
      Height          =   3285
      Left            =   10320
      TabIndex        =   8
      Top             =   3720
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
      Left            =   5760
      TabIndex        =   9
      Top             =   3720
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
      Left            =   7665
      TabIndex        =   14
      Top             =   2700
      Width           =   705
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
      Left            =   4920
      TabIndex        =   13
      Top             =   2700
      Width           =   885
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
      Left            =   9360
      TabIndex        =   12
      Top             =   3720
      Width           =   720
   End
   Begin VB.Label LBLYarnRecHead 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "Purchase Analysis - Month wise"
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
      Left            =   4680
      TabIndex        =   11
      Top             =   1800
      Width           =   9600
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   2
      Height          =   6615
      Left            =   4680
      Top             =   1560
      Width           =   9615
   End
   Begin VB.Line Line1 
      BorderWidth     =   2
      X1              =   4680
      X2              =   14280
      Y1              =   2400
      Y2              =   2400
   End
   Begin VB.Line Line2 
      BorderWidth     =   2
      X1              =   4680
      X2              =   14280
      Y1              =   7320
      Y2              =   7320
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Supplier"
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
      Left            =   4920
      TabIndex        =   10
      Top             =   3720
      Width           =   780
   End
End
Attribute VB_Name = "frm_PurchaseAnalysisMonthwise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New ADODB.Connection
Dim L_Iss As String
Dim L_Var As String
Dim L_Mix As String

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
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""

tmpFile = "Purchase Analysis"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
            
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = CStr(Rs(0))
        oSheet.Range("A1", "R1").MergeCells = True
         oSheet.Range("A1", "R1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "R2").MergeCells = True
        oSheet.Range("A2", "R2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        oSheet.Name = "Purchase Analysis Report"
        
                
    intervalMinutes = -1

    Dim issuetype As String, lottype As String

      
        oSheet.Cells(3, 5).value = "Month Wise Purchase Analysis Report Form " & Format(dtpFromDate.value, "dd-mm-yyyy") & " to " & Format(dtpToDate.value, "dd-mm-yyyy")
        oSheet.Range("A3", "R3").HorizontalAlignment = Excel.xlLeft
        oSheet.Range("A3", "R3").MergeCells = True
        With oSheet.Range("A3", "R3").Font
        .Bold = True
        .Size = 12
        .Color = vbMagenta
        End With
        

    DB.Execute "Exec ksp_PurchaseAnalysis_Monthwise '" & Divcode & "','" & Format(dtpFromDate.value, "yyyy-mm-dd") & "','" & Format(dtpToDate.value, "yyyy-mm-dd") & "','" & L_Iss & "','" & L_Var & "'"
    
    Set rsmonth = New Recordset
    rsmonth.Open "select distinct month from RMPurchaseAnalysis_temp", DB, adOpenForwardOnly, adLockReadOnly
    
    Set rssupplier = New Recordset
    rssupplier.Open "select distinct slname from RMPurchaseAnalysis_temp", DB, adOpenForwardOnly, adLockReadOnly
    
    Set rsvariety = New Recordset
    rsvariety.Open "select distinct variety from RMPurchaseAnalysis_temp", DB, adOpenForwardOnly, adLockReadOnly
    
'    Set rsmixing = New Recordset
'    rsmixing.Open "select distinct cntname from RMPurchaseAnalysis_temp", DB, adOpenForwardOnly, adLockReadOnly
        
       
        I = 1
        Row = 4
        Dim TotCol As Integer
        TotCol = 0
        oSheet.Cells(4, I).value = "S.No."
        TotCol = TotCol + 1
        I = I + 1
        oSheet.Cells(4, I).value = "Variety"
        TotCol = TotCol + 1
        I = I + 1
        oSheet.Cells(4, I).value = "Mixing Name"
        TotCol = TotCol + 1
        I = I + 1
        Do While Not rsmonth.EOF
            oSheet.Cells(Row, I).value = MonthName(rsmonth(0))
            oSheet.Cells(Row + 1, I).value = "No. of Bales"
            TotCol = TotCol + 1
            I = I + 1
            oSheet.Cells(Row + 1, I).value = "Net Wt."
            TotCol = TotCol + 1
            I = I + 1
            oSheet.Cells(Row + 1, I).value = "Avg. Rate/kg"
            TotCol = TotCol + 1
            I = I + 1
            oSheet.Cells(Row + 1, I).value = "Amount"
            TotCol = TotCol + 1
            I = I + 1
            If I > 25 Then
'                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).MergeCells = True
'                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).HorizontalAlignment = Excel.xlCenter
            Else
                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).MergeCells = True
                oSheet.Range(Chr(65 + I - 5) & Row, Chr(65 + I - 2) & Row).HorizontalAlignment = Excel.xlCenter
            End If
            
        rsmonth.MoveNext
        Loop
        
        With oSheet.Range("A4", "AY5").Font
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
        rssupplier.MoveFirst
        While Not rssupplier.EOF
            SNO = SNO + 1
            oSheet.Cells(Row, I - 1).value = SNO
            oSheet.Cells(Row, I).value = CStr(rssupplier(0))
            I = I + 1
            subtot = 0
            rsvariety.MoveFirst
            While Not rsvariety.EOF
                Set tmp = New Recordset
                tmp.Open "select * from RMPurchaseAnalysis_temp where slname='" & rssupplier(0) & "' and variety='" & rsvariety(0) & "'", DB, adOpenForwardOnly, adLockReadOnly
                If tmp.RecordCount <> 0 Then
                    oSheet.Cells(Row, I).value = CStr(rsvariety(0))
                    I = I + 1
                    rsmonth.MoveFirst
                    While Not rsmonth.EOF
                        Set TmpRs = New Recordset
                        TmpRs.Open "select variety,isnull(variety,'') variety,qty,netkg,avgrateperkg,value from RMPurchaseAnalysis_temp where slname='" & rssupplier(0) & "' and variety='" & rsvariety(0) & "' and month='" & rsmonth(0) & "' order by slname", DB, adOpenForwardOnly, adLockReadOnly
                        If TmpRs.RecordCount > 0 Then
                            oSheet.Cells(Row, I).value = TmpRs("qty")
                            oSheet.Cells(Row, I + 1).value = TmpRs("netkg")
                            oSheet.Cells(Row, I + 2).value = TmpRs("avgrateperkg")
                            oSheet.Cells(Row, I + 3).value = TmpRs("value")
                            bale(rsmonth(0)) = bale(rsmonth(0)) + TmpRs("qty")
                            netkg(rsmonth(0)) = netkg(rsmonth(0)) + TmpRs("netkg")
                            avgkg(rsmonth(0)) = avgkg(rsmonth(0)) + TmpRs("avgrateperkg")
                            amt(rsmonth(0)) = amt(rsmonth(0)) + TmpRs("value")
                            
                            Gbale(rsmonth(0)) = Gbale(rsmonth(0)) + TmpRs("qty")
                            Gnetkg(rsmonth(0)) = Gnetkg(rsmonth(0)) + TmpRs("netkg")
                            Gavgkg(rsmonth(0)) = Gavgkg(rsmonth(0)) + TmpRs("avgrateperkg")
                            Gamt(rsmonth(0)) = Gamt(rsmonth(0)) + TmpRs("value")
                        End If
                        I = I + 4
                        rsmonth.MoveNext
                    Wend
                Row = Row + 1
                I = 3
                End If
                rsvariety.MoveNext
            Wend

            arr = MONTH(dtpFromDate)
            For aa = arr To arr + 12
                X = aa
                If X > 12 Then
                    X = aa - 12
                End If
                If bale(X) > 0 Then
'                    Set tmps = New Recordset
'                    tmps.Open "select distinct cntname from RMPurchaseAnalysis_temp where variety='" & rsvariety(0) & "'", DB, adOpenForwardOnly, adLockReadOnly
'                    If tmps.RecordCount > 1 Then
                        oSheet.Cells(Row, 3).value = "Supplier Wise Total"
                        With oSheet.Range("A" & Row, "AY" & Row).Font
                            .Bold = True
                            .Size = 12
            '                .Color = RGB(128, 57, 30)
                        End With
                        oSheet.Cells(Row, I + 1).value = bale(X)
                        oSheet.Cells(Row, I + 2).value = netkg(X)
        '                oSheet.Cells(Row, I + 3).value = avgkg(X)
                        oSheet.Cells(Row, I + 4).value = amt(X)
'                    Else
'                        Row = Row - 1
'                    End If
                End If
                I = I + 4
                bale(X) = 0
                netkg(X) = 0
                avgkg(X) = 0
                amt(X) = 0
                X = X + 1
            Next aa
        I = 2
        Row = Row + 1
        rssupplier.MoveNext
        Wend
        
        I = 3
         arr = MONTH(dtpFromDate)
            For aa = arr To arr + 12
                X = aa
                If X > 12 Then
                    X = aa - 12
                End If
                If Gbale(X) > 0 Then
                    oSheet.Cells(Row, 3).value = "Grand Total"
                    With oSheet.Range("A" & Row, "AY" & Row).Font
                        .Bold = True
                        .Size = 12
                    End With
                    oSheet.Cells(Row, I + 1).value = Gbale(X)
                    oSheet.Cells(Row, I + 2).value = Gnetkg(X)
                    oSheet.Cells(Row, I + 4).value = Gamt(X)
                    
                    Gbale(X) = 0
                    Gnetkg(X) = 0
                    Gamt(X) = 0
                End If
                I = I + 4
                X = X + 1
            Next aa
        
        oSheet.Rows.AutoFit
        oSheet.Columns.AutoFit
        
        
                m_ROW = oSheet.UsedRange.Rows.Count
                m_col = oSheet.UsedRange.Columns.Count
      
                lr = "A1"
                HR = "AY" & m_ROW
                
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
                
                
             MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set oSheet = Nothing
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
    temprs.Open " Select Distinct slcode SlCode, slname as SlName from rm_lot a inner join fa_slmas b on a.supcd=b.slcode order by slname", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
    List_IssueType.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_IssueType.ListItems.ADD(, , temprs!sLname)
            List_IssueType.ListItems(List_IssueType.ListItems.Count).ListSubItems.ADD , , temprs!slcode
            temprs.MoveNext
        Loop
    End If
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

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_Varcode.ListItems.Count
        If Len(Trim(Text1.Text)) > 0 Then
            If InStr(1, List_Varcode.ListItems(I).Text, Trim(Text1.Text), vbTextCompare) > 0 Then
                List_Varcode.ListItems(I).Selected = True
                List_Varcode.ListItems(I).Bold = True
                List_Varcode.ListItems(I).ForeColor = vbBlue
                List_Varcode.ListItems(I).EnsureVisible
                Exit For
        
            Else
                List_Varcode.ListItems(I).Bold = False
                List_Varcode.ListItems(I).ForeColor = vbBlack
            End If
        Else
            List_Varcode.ListItems(I).Bold = False
            List_Varcode.ListItems(I).ForeColor = vbBlack
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
                
Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Supplier of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
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


Private Sub Text3_Change()
On Error GoTo err_lvsupclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_IssueType.ListItems.Count
        If Len(Trim(Text3.Text)) > 0 Then
            If InStr(1, List_IssueType.ListItems(I).Text, Trim(Text3.Text), vbTextCompare) > 0 Then
                List_IssueType.ListItems(I).Selected = True
                List_IssueType.ListItems(I).Bold = True
                List_IssueType.ListItems(I).ForeColor = vbBlue
                List_IssueType.ListItems(I).EnsureVisible
                Exit For
        
            Else
                List_IssueType.ListItems(I).Bold = False
                List_IssueType.ListItems(I).ForeColor = vbBlack
            End If
        Else
            List_IssueType.ListItems(I).Bold = False
            List_IssueType.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvsupclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
   
End Sub


