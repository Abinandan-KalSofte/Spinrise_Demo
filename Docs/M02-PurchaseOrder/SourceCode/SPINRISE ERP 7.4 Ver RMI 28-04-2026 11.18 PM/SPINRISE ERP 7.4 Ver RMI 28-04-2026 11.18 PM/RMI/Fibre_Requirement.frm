VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Fibre_Requirement 
   Caption         =   "Fibre Requirement"
   ClientHeight    =   9120
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   15960
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9120
   ScaleWidth      =   15960
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text3 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   15600
      TabIndex        =   23
      Top             =   5280
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ComboBox Combo3 
      Height          =   315
      Left            =   14280
      TabIndex        =   21
      Top             =   5280
      Width           =   735
   End
   Begin VB.TextBox Text2 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   15600
      TabIndex        =   19
      Top             =   4800
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ComboBox Combo2 
      Height          =   315
      Left            =   14280
      TabIndex        =   17
      Top             =   4800
      Width           =   735
   End
   Begin VB.TextBox Text1 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   15600
      TabIndex        =   15
      Top             =   4320
      Visible         =   0   'False
      Width           =   855
   End
   Begin VB.ComboBox Combo1 
      Height          =   315
      Left            =   14280
      TabIndex        =   13
      Top             =   4320
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7920
      TabIndex        =   9
      Top             =   8520
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Excel"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6240
      TabIndex        =   8
      Top             =   8520
      Width           =   1215
   End
   Begin VB.CheckBox Check3 
      Caption         =   "All"
      Height          =   195
      Left            =   2640
      TabIndex        =   7
      Top             =   6000
      Width           =   615
   End
   Begin VB.CheckBox Check2 
      Caption         =   "All"
      Height          =   195
      Left            =   2640
      TabIndex        =   5
      Top             =   3720
      Width           =   615
   End
   Begin VB.CheckBox Check1 
      Caption         =   "All"
      Height          =   195
      Left            =   2640
      TabIndex        =   0
      Top             =   1440
      Visible         =   0   'False
      Width           =   615
   End
   Begin MSComctlLib.ListView lv_div 
      Height          =   2100
      Left            =   3360
      TabIndex        =   1
      Top             =   1440
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   3704
      View            =   3
      LabelEdit       =   1
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Division Name "
         Object.Width           =   12347
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2540
      EndProperty
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   315
      Left            =   3960
      TabIndex        =   2
      Top             =   840
      Width           =   1260
      _ExtentX        =   2223
      _ExtentY        =   556
      _Version        =   393216
      CalendarForeColor=   -2147483640
      Format          =   141164545
      CurrentDate     =   36193
   End
   Begin MSComctlLib.ListView lv_cat 
      Height          =   2100
      Left            =   3360
      TabIndex        =   4
      Top             =   3720
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   3704
      View            =   3
      LabelEdit       =   1
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Category Name "
         Object.Width           =   12347
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2540
      EndProperty
   End
   Begin MSComctlLib.ListView lv_var 
      Height          =   2100
      Left            =   3360
      TabIndex        =   6
      Top             =   6000
      Width           =   9180
      _ExtentX        =   16193
      _ExtentY        =   3704
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Variety Name "
         Object.Width           =   12347
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2540
      EndProperty
   End
   Begin MSComCtl2.DTPicker DTPicker2 
      Height          =   315
      Left            =   10800
      TabIndex        =   10
      Top             =   840
      Width           =   1260
      _ExtentX        =   2223
      _ExtentY        =   556
      _Version        =   393216
      CalendarForeColor=   -2147483640
      Format          =   141623297
      CurrentDate     =   36193
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "days"
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
      Left            =   15120
      TabIndex        =   22
      Top             =   5325
      Width           =   405
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Consumption"
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
      Left            =   13080
      TabIndex        =   20
      Top             =   5325
      Width           =   1095
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "days"
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
      Left            =   15120
      TabIndex        =   18
      Top             =   4845
      Width           =   405
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "Consumption"
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
      Left            =   13080
      TabIndex        =   16
      Top             =   4845
      Width           =   1095
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "days"
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
      Left            =   15120
      TabIndex        =   14
      Top             =   4365
      Width           =   405
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Consumption"
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
      Left            =   13080
      TabIndex        =   12
      Top             =   4365
      Width           =   1095
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Required Stock upto"
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
      Left            =   8880
      TabIndex        =   11
      Top             =   840
      Width           =   1770
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
      Left            =   3360
      TabIndex        =   3
      Top             =   840
      Width           =   420
   End
End
Attribute VB_Name = "Fibre_Requirement"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim MyConn As Connection
Dim Divcodetmp As String
Dim L_Cat As String
Dim L_Var As String

Private Sub Check1_Click()
    If Check1.value = 1 Then
        For I = 1 To lv_div.ListItems.Count
            lv_div.ListItems.Item(I).Checked = True
        Next I
        Call load_catChkListbox
    Else
        For I = 1 To lv_div.ListItems.Count
            lv_div.ListItems.Item(I).Checked = False
            lv_cat.ListItems.Clear
            lv_var.ListItems.Clear
        Next I
    End If
End Sub

Private Sub Check2_Click()
    L_Cat = ""
    If Check2.value = 1 Then
        For I = 1 To lv_cat.ListItems.Count
            lv_cat.ListItems.Item(I).Checked = True
            L_Cat = L_Cat + lv_cat.ListItems(I).ListSubItems(1) + ","
        Next I
        Call load_varChkListbox
    Else
        For I = 1 To lv_cat.ListItems.Count
            lv_var.ListItems.Clear
            lv_cat.ListItems.Item(I).Checked = False
        Next I
    End If
End Sub

Private Sub Check3_Click()
    If Check3.value = 1 Then
        For I = 1 To lv_var.ListItems.Count
            lv_var.ListItems.Item(I).Checked = True
            L_Var = L_Var + lv_var.ListItems(I).ListSubItems(1) + ","
        Next I
    Else
        For I = 1 To lv_var.ListItems.Count
            lv_var.ListItems.Item(I).Checked = False
        Next I
    End If
End Sub


Private Sub Command1_Click()
On Error GoTo FibreRequirementExcel_Error

tmpFile = "Fibre Requirement"
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
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcodetmp & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
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

      
        oSheet.Name = "Fibre requirement"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")
      
        oSheet.Cells(3, 5).value = "Fibre Requirement - " & MonthName(MONTH(DTPicker1.value)) & " " & Year(DTPicker1.value)
'        oSheet.Range("A3", "R3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "Q3").MergeCells = True
        With oSheet.Range("A3", "R3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        oSheet.Cells(3, 18).value = "Qty (MT)"
        
        I = 1: TotCol = 0
        oSheet.Cells(4, I).value = "Name"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Raw Material"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Stock"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Transit"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "To be Dispatched"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Buffer"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Net Stock"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Consum/Day"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Stock As on"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Usable Days"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Usable Upto"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Required Stock Upto"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Diff. Days"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Required Qty"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Rounded Qty"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Consumption last " & Combo1.Text & " days"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Consumption last " & Combo2.Text & " days"
        I = I + 1: TotCol = TotCol + 1
        oSheet.Cells(4, I).value = "Consumption last " & Combo3.Text & " days"
        I = I + 1: TotCol = TotCol + 2
        
        With oSheet.Range("A4", "R4").Font
        .Bold = True
        .Size = 10
        .Color = vbMagenta
        End With
        
        Set Rs = New Recordset
        Rs.Open "Exec ksp_RMI_FibreRequirement '" & Divcodetmp & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Format(mfdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "','" & Trim(Year(yfdate)) & "','" & Trim(L_Cat) & "','" & Trim(L_Var) & "','" & Trim(LocalIP) & "'", DB
        
        If Not Rs.EOF Then
            I = 1
            TotCol = 0
            Row = 5
            Rs.MoveFirst
            Do While Not Rs.EOF
                I = 1
                oSheet.Cells(Row, I).value = Rs("unitshort")
                I = I + 1
                oSheet.Cells(Row, I).value = Rs("rawmaterial")
                I = I + 1
'                If Rs("rawmaterial") = "COTTON FLEECE - INDIAN " Then
'                    MsgBox "Hai"
'                End If
                oSheet.Cells(Row, I).value = Rs("OpeningStock")
                I = I + 1
                oSheet.Cells(Row, I).value = Rs("Transit")
                I = I + 1
                oSheet.Cells(Row, I).value = Rs("tobedespatch")
                I = I + 1
                oSheet.Cells(Row, I).value = 15 * Rs("conspday")
                I = I + 1
                netstock = Rs("OpeningStock") + Rs("Transit") + Rs("tobedespatch") - (15 * Rs("conspday"))
                oSheet.Cells(Row, I).value = netstock
                I = I + 1
                oSheet.Cells(Row, I).value = Rs("conspday")
                I = I + 1
                oSheet.Cells(Row, I).value = DTPicker1.value
                I = I + 1
                oSheet.Cells(Row, I).value = Round(netstock / Rs("conspday"), 0)
                I = I + 1
                oSheet.Cells(Row, I).value = DTPicker1.value + Trim(Round(netstock / Rs("conspday"), 0))
                I = I + 1
                oSheet.Cells(Row, I).value = DTPicker2.value
                I = I + 1
                DiffDays = DTPicker2.value - (DTPicker1.value + Trim(Round(netstock / Rs("conspday"), 0))) + 1
                oSheet.Cells(Row, I).value = DiffDays
                I = I + 1
                oSheet.Cells(Row, I).value = DiffDays * Rs("conspday")
                I = I + 1
                If (DiffDays * Rs("conspday")) Mod 50 = 0 Then
                    oSheet.Cells(Row, I).value = Int(DiffDays * Rs("conspday") / 50) * 50
                Else
                    oSheet.Cells(Row, I).value = Int(DiffDays * Rs("conspday") / 50) * 50 + 50
                End If
                I = I + 1
                Set TmpRs = New Recordset
                TmpRs.Open "select round((sum(isskgs)/1000)/" & Trim(Combo1.Text) & ",0) from rm_issb where docdt between '" & Format(DTPicker1.value - (Combo1.Text - 1), "yyyy-mm-dd") & "' and '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and varcode='" & Rs("varcode") & "' and divcode='" & Divcode & "'", MyConn, adOpenStatic, adLockReadOnly
                oSheet.Cells(Row, I).value = TmpRs(0)
                I = I + 1
                Set TmpRs = New Recordset
                TmpRs.Open "select round((sum(isskgs)/1000)/" & Trim(Combo2.Text) & ",0) from rm_issb where docdt between '" & Format(DTPicker1.value - (Combo2.Text - 1), "yyyy-mm-dd") & "' and '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and varcode='" & Rs("varcode") & "' and divcode='" & Divcode & "'", MyConn, adOpenStatic, adLockReadOnly
                oSheet.Cells(Row, I).value = TmpRs(0)
                I = I + 1
                Set TmpRs = New Recordset
                TmpRs.Open "select round((sum(isskgs)/1000)/" & Trim(Combo3.Text) & ",0) from rm_issb where docdt between '" & Format(DTPicker1.value - (Combo3.Text - 1), "yyyy-mm-dd") & "' and '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and varcode='" & Rs("varcode") & "' and divcode='" & Divcode & "'", MyConn, adOpenStatic, adLockReadOnly
                oSheet.Cells(Row, I).value = TmpRs(0)
                Row = Row + 1
                I = I + 1
                Rs.MoveNext
            Loop
        Else
            MsgBox "No Record(s) Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        oSheet.Cells(Row + 1, 2).value = "Total"
        
        oSheet.Cells(Row + 1, 3).Formula = "=SUM(C5:C" & Row & ")"
        oSheet.Cells(Row + 1, 4).Formula = "=SUM(D5:D" & Row & ")"
        oSheet.Cells(Row + 1, 5).Formula = "=SUM(E5:E" & Row & ")"
        oSheet.Cells(Row + 1, 6).Formula = "=SUM(F5:F" & Row & ")"
        oSheet.Cells(Row + 1, 7).Formula = "=SUM(G5:G" & Row & ")"
        oSheet.Cells(Row + 1, 8).Formula = "=SUM(H5:H" & Row & ")"
        oSheet.Cells(Row + 1, 14).Formula = "=SUM(N5:N" & Row & ")"
        oSheet.Cells(Row + 1, 15).Formula = "=SUM(O5:O" & Row & ")"
        oSheet.Cells(Row + 1, 16).Formula = "=SUM(P5:P" & Row & ")"
        oSheet.Cells(Row + 1, 17).Formula = "=SUM(Q5:Q" & Row & ")"
        oSheet.Cells(Row + 1, 18).Formula = "=SUM(R5:R" & Row & ")"
                        
        oSheet.Rows.AutoFit
        oSheet.Columns.AutoFit
        
        lr = "A" & Row + 1
        HR = "R" & Row + 1
        With oSheet.Range(lr, HR).Font
            .Bold = True
            .Size = 10
            .Color = vbMagenta
        End With
        
        lr = "A" & 1
        HR = "R" & Row + 1
        
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
        
        Set oBook = Nothing
        Set oSheet = Nothing
        Set Myxl = Nothing
        Set oExcel = Nothing
        
        Exit Sub
'                  With oSheet.Range(lr, HR).Interior
'
'                     .Color = &HE0E0E0
'
'                 End With
'
'
'
'        Set RsDiv = New Recordset
'
'
'
'
'
'
'
'     Set Rs = New Recordset
'
'       Rs.Open "select * from VW_RM_TransferReceipt order by ISSUE_DESC,Supplier,lotno   ", DB
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'           co = 7
'            i1 = 1
'
'            oSheet.Cells(5, i1).CopyFromRecordset Rs
'
'
'
'
'                m = oSheet.UsedRange.Rows.Count
'                Max = m + 1
'
''                osheet.Columns.AutoFit
'                oSheet.Rows.AutoFit
'
'
'
'                m_Row = oSheet.UsedRange.Rows.Count + 1
'                MR = "O" & m_Row
'
'
'                            m_Row = oSheet.UsedRange.Rows.Count + 1
'                            lr = "A" & m_Row
'                            HR = "O" & m_Row
'                            With oSheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 9
'                            .Color = vbBlue
'                        End With
'
'
''
''                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
''
'
'                m_Row = oSheet.UsedRange.Rows.Count
'                ''
'
'                lr = "A" & 1
'                HR = "O" & m_Row
'                oSheet.Rows.AutoFit
'
'                oSheet.Columns.AutoFit
'
'
'
'                With oSheet.Range(lr, HR)
'                .Borders.LineStyle = xlThin
'
'                With .Borders(xlInsideHorizontal)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlInsideVertical)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlEdgeTop)
'                .Weight = xlThin
'                End With
'
'                With .Borders(xlEdgeBottom)
'                .Weight = xlThin
'                End With
'                End With
'
'
'                      '   Max = Max + 1
'                            m_Row = oSheet.UsedRange.Rows.Count
'                            lr = "A" & m_Row - 1
'                            HR = "O" & m_Row - 1
'                            With oSheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 11
'                            .Color = vbBlue
'                        End With
'
'
'
'                For I = 6 To m_Row
'                If InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Supplier Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Then
'                      If InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Then
'                            oSheet.Cells(I, 1) = ""
'                             oSheet.Cells(I, 4) = ""
'                            oSheet.Cells(I, 2) = "Grand Total"
'                            oSheet.Cells(I, 5) = ""
'                             lr = "A" & I
'                            HR = "N" & I
'                            With oSheet.Range(lr, HR).Font
'                                .Bold = True
'                                .Size = 10
'                                .Color = &H80&
'                              '  .Interior.Color = &HE0E0E0
'                            End With
'                            With oSheet.Range(lr, HR).Interior
'
'                                .Color = &HC0E0FF
'
'                            End With
'
'
'                      Else
'                            oSheet.Cells(I, 1) = ""
''                            osheet.Cells(i, 2) = ""
'                            oSheet.Cells(I, 4) = ""
'                             oSheet.Cells(I, 5) = ""
'                       oSheet.Cells(I, 6) = ""
'                            lr = "A" & I
'                            HR = "N" & I
'                            With oSheet.Range(lr, HR).Font
'                                .Bold = True
'                                .Size = 10
'                                .Color = &H80&
'                              '  .Interior.Color = &HE0E0E0
'                            End With
'                            With oSheet.Range(lr, HR).Interior
'
'                                .Color = &HC0E0FF
'
'                            End With
'                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'                    End If
'                 End If
'
'
'            Next I
'
'
'             MsgBox "Excel File Downloaded Successfully", vbInformation, head
'
'                Set oBook = Nothing
'                Set oSheet = Nothing
'                Set Myxl = Nothing
'                Set oExcel = Nothing


Exit Sub
FibreRequirementExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub Form_Activate()
    Dim temprs As Recordset
    Set temprs = New Recordset
    temprs.Open "select *  from dbo.pp_divmas order by divcode", MyConn, adOpenStatic, adLockReadOnly
    lv_div.ListItems.Clear
    Dim li As ListItem
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = lv_div.ListItems.ADD(, , temprs!divname)
                lv_div.ListItems(lv_div.ListItems.Count).ListSubItems.ADD , , temprs!Divcode
            temprs.MoveNext
        Loop
        temprs.Close
    End If
    
    For I = 1 To 31
        Combo1.AddItem I
        Combo2.AddItem I
        Combo3.AddItem I
    Next I
    
    Combo1.Text = "7"
    Combo2.Text = "15"
    Combo3.Text = "30"
End Sub

Private Sub Form_Load()
    Set MyConn = New Connection
    MyConn.CursorLocation = adUseClient
    MyConn.Open "Provider=MSDASQL;" & connectstring
    
    DTPicker1.value = pdate
    DTPicker2.value = pdate + 25
End Sub

Private Sub lv_cat_Click()
    lv_var.ListItems.Clear
    Call load_varChkListbox
End Sub

Private Sub lv_div_Click()
    lv_cat.ListItems.Clear
    Call load_catChkListbox
End Sub

Private Sub load_catChkListbox()
On Error GoTo catChkListbox_Change_Error
    Screen.MousePointer = 11
    lv_cat.ListItems.Clear
    xx = 0
    For I = 1 To lv_div.ListItems.Count
        If lv_div.ListItems.Item(I).Checked = True Then
            xx = 1
        End If
    Next I
    If xx = 0 Then
        Screen.MousePointer = 0
        Exit Sub
    End If
    Dim li As ListItem
    Set temprs = New Recordset
    temprs.Open "select * from dbo.rm_cat order by catcd", MyConn, adOpenStatic, adLockReadOnly
    
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = lv_cat.ListItems.ADD(, , temprs!catname)
            'lv_cat.ListItems(lv_cat.ListItems.Count).ListSubItems.ADD , , temprs!catname
            lv_cat.ListItems(lv_cat.ListItems.Count).ListSubItems.ADD , , temprs!catcd
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    intervalMinutes = -1
    Screen.MousePointer = 0
 Exit Sub
catChkListbox_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
End Sub
Private Sub load_varChkListbox()
On Error GoTo varChkListbox_Change_Error
    Screen.MousePointer = 11
    Dim li As ListItem
    Dim a As String
    a = "'"
    L_Cat = ""
    For I = 1 To lv_cat.ListItems.Count
        If lv_cat.ListItems.Item(I).Checked = True Then
            a = a + lv_cat.ListItems(I).ListSubItems(1) + "','"
            L_Cat = L_Cat + lv_cat.ListItems(I).ListSubItems(1) + ","
        End If
    Next I
    If Len(a) > 1 Then
        a = Left(a, Len(a) - 2)
    Else
        lv_var.ListItems.Clear
        intervalMinutes = -1
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Set temprs = New Recordset
    temprs.Open "select * from dbo.rm_var where catcd in(" & a & ") order by varname", MyConn, adOpenStatic, adLockReadOnly
   
    lv_var.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = lv_var.ListItems.ADD(, , temprs!VarName)
            lv_var.ListItems(lv_var.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    intervalMinutes = -1
    Screen.MousePointer = 0
 Exit Sub
varChkListbox_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
End Sub

Private Sub lv_div_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    lv_var.ListItems.Clear
    For I = 1 To lv_div.ListItems.Count
        If lv_div.ListItems.Item(I) = Item And lv_div.ListItems.Item(I).Checked = True Then
            lv_div.ListItems.Item(I).Checked = True
            Divcodetmp = lv_div.ListItems.Item(I).SubItems(1)
        Else
            lv_div.ListItems.Item(I).Checked = False
        End If
    Next I
End Sub

Private Sub lv_var_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    L_Var = ""
    For I = 1 To lv_var.ListItems.Count
        If lv_var.ListItems.Item(I).Checked = True Then
            'L_Var = L_Var + lv_div.ListItems.Item(I).SubItems(1) + ","
            L_Var = L_Var + lv_var.ListItems.Item(I).SubItems(1) + ","
        End If
    Next I
End Sub
