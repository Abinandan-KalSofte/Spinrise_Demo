VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmRepBankStatement 
   Caption         =   "Bank Stock Statement"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10995
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6975
   ScaleWidth      =   10995
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdReport 
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
      Left            =   3855
      TabIndex        =   0
      Top             =   4995
      Width           =   1350
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "&Cancel"
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
      Left            =   5445
      TabIndex        =   1
      Top             =   5010
      Width           =   1350
   End
   Begin VB.Frame fraHeader 
      Height          =   3780
      Left            =   2805
      TabIndex        =   6
      Top             =   1770
      Width           =   5625
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2280
         TabIndex        =   14
         Top             =   2640
         Visible         =   0   'False
         Width           =   2100
      End
      Begin MSComCtl2.DTPicker DTPOnDate 
         Height          =   345
         Left            =   2295
         TabIndex        =   2
         Top             =   630
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   21954561
         CurrentDate     =   37820
      End
      Begin MSDataListLib.DataCombo dcbToLotNo 
         Height          =   360
         Left            =   2295
         TabIndex        =   4
         Top             =   1635
         Width           =   1305
         _ExtentX        =   2302
         _ExtentY        =   635
         _Version        =   393216
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo dcbFromLotNo 
         Height          =   360
         Left            =   2295
         TabIndex        =   3
         Top             =   1125
         Width           =   1305
         _ExtentX        =   2302
         _ExtentY        =   635
         _Version        =   393216
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.ComboBox cmbVar 
         Height          =   315
         Left            =   2280
         TabIndex        =   12
         Top             =   2160
         Width           =   2115
      End
      Begin MSDataListLib.DataCombo dcbGodown 
         Height          =   360
         Left            =   2280
         TabIndex        =   5
         Top             =   2160
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   635
         _Version        =   393216
         Style           =   2
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Godown"
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
         Left            =   885
         TabIndex        =   13
         Top             =   2760
         Visible         =   0   'False
         Width           =   990
      End
      Begin VB.Label lblOnDate 
         AutoSize        =   -1  'True
         Caption         =   "On Date"
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
         Left            =   885
         TabIndex        =   11
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblFrameHeader 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Bank Stock Statement - Lotwise"
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
         TabIndex        =   10
         Top             =   120
         Width           =   5565
      End
      Begin VB.Label lblToLotNo 
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
         Left            =   885
         TabIndex        =   9
         Top             =   1718
         Width           =   930
      End
      Begin VB.Label lblFromLotno 
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
         Left            =   885
         TabIndex        =   8
         Top             =   1208
         Width           =   1110
      End
      Begin VB.Label lblGodown 
         AutoSize        =   -1  'True
         Caption         =   "From Godown"
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
         Left            =   885
         TabIndex        =   7
         Top             =   2280
         Width           =   1170
      End
   End
End
Attribute VB_Name = "frmRepBankStatement"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rep As Report.ReportView
Dim a As Integer
Dim Rs As ADODB.Recordset
Dim rsbale As ADODB.Recordset
Dim rsbales As ADODB.Recordset
Dim rsLot As ADODB.Recordset
Dim rsGd As ADODB.Recordset
Dim rsVar As ADODB.Recordset
Dim strOnDate As String
Dim strRange As String
Dim strGdnRange As String
Dim strDate As String
Dim intpgno As Integer
Dim intlno As Integer
Dim strQuery As String
Dim varcnt As Double

Private Sub Cmdcancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Cmdcancel_Click of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdreport_Click()
On Error GoTo cmdreport_Click_Error

Me.MousePointer = 11
''validations

If Trim(Me.cmbVar.Text) = "" And Repindex = 2 Then
    MsgBox "Select the Godown and then proceed", vbInformation, "RMI-Bank Stock Statement"
    'Me.dcbGodown.SetFocus
    cmbVar.SetFocus
    Me.MousePointer = 0
    Exit Sub
ElseIf Trim(Me.DTPOnDate.Value) = "" Then
    MsgBox "Enter the date and then proceed", vbInformation, "RMI-Bank Stock Statement"
    Me.DTPOnDate.SetFocus
    Me.MousePointer = 0
    Exit Sub
End If

If val(dcbFromLotNo.Text) <> 0 And val(dcbToLotNo.Text) <> 0 Then
    If val(dcbFromLotNo.Text) > val(dcbToLotNo.Text) Then
        MsgBox "From " & IIf(Repindex = 3, "Godown", "Lot No") & " should not be greater than To " & IIf(Repindex = 3, "Godown", "Lot No"), vbInformation
        Me.dcbFromLotNo.SetFocus
        Me.MousePointer = 0
        Exit Sub
    ElseIf val(dcbToLotNo.Text) < val(dcbFromLotNo.Text) Then
        MsgBox "To " & IIf(Repindex = 3, "Godown", "Lot No") & " should be greater than From " & IIf(Repindex = 3, "Godown", "Lot No"), vbInformation
        Me.MousePointer = 0
        Me.dcbToLotNo.SetFocus
        Exit Sub
    End If
End If

strOnDate = ""
strRange = ""

If dcbFromLotNo.Text <> "" And Me.dcbToLotNo.Text <> "" Then
    strRange = " between " & val(Me.dcbFromLotNo.Text) & " and " & val(Me.dcbToLotNo.Text)
ElseIf dcbFromLotNo.Text <> "" And Me.dcbToLotNo.Text = "" Then
    strRange = " >= " & val(Me.dcbFromLotNo.Text)
ElseIf dcbFromLotNo.Text = "" And Me.dcbToLotNo.Text <> "" Then
    strRange = " <= " & val(Me.dcbToLotNo.Text)
End If
DTPOnDate.MaxDate = pdate
strOnDate = Format(DTPOnDate.Value, "yyyy-mm-dd")

If Repindex = 2 Or Repindex = 3 Then
    Call prBankStockStmt
ElseIf Repindex = 1 Then
    Call prCottonStockStmt
ElseIf Repindex = 4 Then
    Call BaleStockStmt
End If
Me.MousePointer = 0

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdreport_Click of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPOnDate_GotFocus()
On Error GoTo DTPOnDate_GotFocus_Error

strDate = Trim(DTPOnDate.Value)

Exit Sub
DTPOnDate_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DTPOnDate_GotFocus of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPOnDate_LostFocus()
On Error GoTo DTPOnDate_LostFocus_Error

If strDate <> Trim(DTPOnDate.Value) And Repindex <> 3 Then
    Set rsLot = New Recordset
    strQuery = "select distinct lotno, lotdt from rm_lot where divcode = '" & Divcode & "' "
                
    If Trim(DTPOnDate.Value) <> "" Then
        strQuery = strQuery & "and (REJFLG = 'N' OR REJDT > '" & Format(DTPOnDate.Value, "YYYY-MM-DD") & "') ORDER BY LOTNO"
    Else
        strQuery = strQuery & "and REJFLG = 'N' ORDER BY LOTNO"
    End If
    rsLot.Open strQuery, Cn, adOpenStatic, adLockBatchOptimistic
    If rsLot.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = rsLot
        Me.dcbFromLotNo.ListField = "lotno"
        Set dcbToLotNo.RowSource = rsLot
        Me.dcbToLotNo.ListField = "lotno"
        rsLot.MoveFirst
        Me.dcbFromLotNo.Text = rsLot("lotno")
        rsLot.MoveLast
        Me.dcbToLotNo.Text = rsLot("lotno")
    End If
End If

Exit Sub
DTPOnDate_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DTPOnDate_LostFocus of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Me.Height = 9000
Me.Width = 12000
Me.DTPOnDate.Value = Format(pdate, "dd-mm-yyyy")
openconnection
strQuery = ""

Select Case Repindex
Case 1
    Me.Caption = "Cotton Stock Statement"
    Me.lblFrameHeader.Caption = "Cotton Stock Statement-Lotwise"
    lblGodown.Visible = True
    dcbGodown.Visible = False
    cmbVar.Visible = True
    
    lblGodown.Caption = "Variety"
    Set rsVar = New Recordset
    rsVar.Open "SELECT varcode,varcode FROM RM_var order by varname", Cn, adOpenStatic, adLockBatchOptimistic
    
    Do While Not rsVar.EOF
        cmbVar.AddItem rsVar("Varcode")
        rsVar.MoveNext
    Loop
    cmbVar.AddItem "All"
    cmbVar.Text = "All"
    
Case 2
    Me.Caption = "Bank Stock Statement"
    Me.lblFrameHeader.Caption = "Bank Stock Statement-Lotwise"
    lblGodown.Visible = True
    Combo1.Visible = True
    Label1.Visible = True
    dcbGodown.Visible = False
    cmbVar.Visible = True
    Set rsGd = New Recordset
    rsGd.Open "SELECT GCODE,GNAME FROM RM_GOD where 1=1 and DivCode = '" & Divcode & "'", Cn, adOpenStatic, adLockBatchOptimistic
    If rsGd.RecordCount > 0 Then
    Do While Not rsGd.EOF
         cmbVar.AddItem rsGd("GCODE")
         Combo1.AddItem rsGd("GCODE")
        'cmbVar.ListField = "GCODE"
        rsGd.MoveNext
        Loop
        cmbVar.ListIndex = 0
        Combo1.ListIndex = 0
        'cmbVar.AddItem "All"
        'Combo1.AddItem "All"
        'cmbVar.Text = "All"
        'Combo1.Text = "All"
        'Me.dcbGodown.Text = rsGd("GCODE")
        
    End If
Case 3
    Me.Caption = "Bank Stock Statement"
    Me.lblFrameHeader.Caption = "Bank Stock Statement-Godownwise"
    lblGodown.Visible = False
    dcbGodown.Visible = False
    cmbVar.Visible = False
Case 4
    Me.Caption = "Stock Statement - Balewise"
    Me.lblFrameHeader.Caption = "Stock Statement - Balewise"
    lblGodown.Visible = False
    dcbGodown.Visible = False
    cmbVar.Visible = False
    dcbFromLotNo.Width = 2500
    dcbToLotNo.Width = 2500
    Label1.Visible = False
    Combo1.Visible = False
End Select

If Repindex = 1 Or Repindex = 2 Then
    Me.lblFromLotno.Caption = "From Lot No."
    Me.lblToLotNo.Caption = "To Lot No."
   
    Set rsLot = New Recordset
    strQuery = "select distinct lotno from rm_lot where divcode = '" & Divcode & "' "
    'strQuery = "select distinct lotno from rm_lot where divcode = '" & Divcode & "'"
    If Trim(DTPOnDate.Value) <> "" Then
        strQuery = strQuery & "and (REJFLG = 'N' OR REJDT > '" & Format(DTPOnDate.Value, "YYYY-MM-DD") & "') ORDER BY LOTNO"
    Else
        strQuery = strQuery & "and REJFLG = 'N' ORDER BY LOTNO"
    End If
    rsLot.Open strQuery, Cn, adOpenStatic, adLockBatchOptimistic
    If rsLot.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = rsLot
        Me.dcbFromLotNo.ListField = "lotno"
        Set dcbToLotNo.RowSource = rsLot
        Me.dcbToLotNo.ListField = "lotno"
        rsLot.MoveFirst
        Me.dcbFromLotNo.Text = rsLot("lotno")
        rsLot.MoveLast
        Me.dcbToLotNo.Text = rsLot("lotno")
    End If
ElseIf Repindex = 4 Then
    Me.lblFromLotno.Caption = "From Lot No."
    Me.lblToLotNo.Caption = "To Lot No."
   
    Set rsLot = New Recordset
    'strQuery = "select (lotno - lotdt) as Lot from rm_lot where divcode = '" & Divcode & "' "
     strQuery = "select lotno, cast(lotno as varchar)+'-' + cast(year(lotdt) as varchar) lot from rm_lot where divcode = '" & Divcode & "'"
    If Trim(DTPOnDate.Value) <> "" Then
        strQuery = strQuery & "and (REJFLG = 'N' OR REJDT > '" & Format(DTPOnDate.Value, "YYYY-MM-DD") & "') ORDER BY lotno"
    Else
        strQuery = strQuery & "and REJFLG = 'N' ORDER BY lotno"
    End If
    rsLot.Open strQuery, Cn, adOpenStatic, adLockBatchOptimistic
    If rsLot.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = rsLot
        'Me.dcbFromLotNo.ListField = "lotno" - "lotdt"
        Me.dcbFromLotNo.ListField = "lot"
        Set dcbToLotNo.RowSource = rsLot
        Me.dcbToLotNo.ListField = "lot"
        rsLot.MoveFirst
        Me.dcbFromLotNo.Text = rsLot("lot")
        rsLot.MoveLast
        Me.dcbToLotNo.Text = rsLot("lot")
    End If
Else
    Me.lblFromLotno.Caption = "From Godown"
    Me.lblToLotNo.Caption = "To Godown"
    Set rsGd = New Recordset
    rsGd.Open "SELECT GCODE,GNAME FROM RM_GOD where 1=1 and DivCode = '" & Divcode & "'", Cn, adOpenStatic, adLockBatchOptimistic
    If rsGd.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = rsGd
        dcbFromLotNo.ListField = "GCODE"
        Set dcbToLotNo.RowSource = rsGd
        Me.dcbToLotNo.ListField = "GCODE"
        rsGd.MoveFirst
        Me.dcbFromLotNo.Text = rsGd("GCODE")
        rsGd.MoveLast
        Me.dcbToLotNo.Text = rsGd("GCODE")
    End If
    lblGodown.Visible = False
  '  Combo1.Visible = False
  cmbVar.Visible = False
  dcbGodown.Visible = False
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub prBankHeader()
On Error GoTo prBankHeader_Error

Print #a,
Print #a, Space(7); Chr(14); Chr(27) & "E"; DIVNAME; Chr(27) & "F"
Print #a,
If Repindex = 2 Then
    'Print #a, Space(2); Chr(18); Chr(27) & "E"; CENTRE(("GODOWN : " & Trim(dcbGodown.Text) & Space(2) & "BANK STOCK STATEMENT - LOTWISE AS ON " & Format(strOnDate, "dd-mm-yy")), 80, " "); Chr(27) & "F"
    Print #a, Space(2); Chr(18); "GODOWN : " & Trim(dcbGodown.Text) & Space(2) & "BANK STOCK STATEMENT - LOTWISE AS ON " & Format(strOnDate, "dd/mm/yy");
    Else
    Print #a, Space(2); Chr(18); Chr(27) & "E"; CENTRE(("BANK STOCK STATEMENT - GODOWNWISE AS ON " & Format(strOnDate, "dd/mm/yy")), 80, " "); Chr(27) & "F"
End If
Print #a, Space(23); "Pg.: " & intpgno
Print #a, Space(2) & String(86, "=")
Print #a, Space(2) & "LOT NO.  GODOWN SUPPLIER NAME             CANDY RATE BALES    STOCK KGS          VALUE"
'Print #a, Space(2) & "LOT NO.    SUPPLIER NAME                  CANDY RATE BALES    STOCK KGS        VALUE"
Print #a, Space(2) & String(86, "=")
intlno = intlno + 8

Exit Sub
prBankHeader_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prBankHeader of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub prBankStockStmtold()
Dim dblValue As Double
Dim dblTotValue As Double
Dim dblTotStock As Double
Dim dblTotBale As Double
Dim dblSTotValue As Double
Dim dblSTotStock As Double
Dim dblSTotBale As Double
Dim strGodcode As String
Dim intGrpCnt As Integer

On Error GoTo prBankStockStmtold_Error

intlno = 0
intpgno = 1
dblTotValue = 0
dblTotStock = 0
dblTotBale = 0
dblSTotValue = 0
dblSTotStock = 0
dblSTotBale = 0
intGrpCnt = 0
strGodcode = ""

Set Rs = New Recordset
If Repindex = 2 Then   ''Lotwise
'    rs.Open "SELECT L.LOTNO,S.SLNAME,L.RATECY,ISNULL(L.BALES,0) STOCKBALES,ISNULL(L.GRSWGT,0) STOCKKGS, L.RATEKG, L.GODOWN, L.LOTYEAR " & _
'            "FROM RM_LOT L, FA_SLMAS S " & _
'            "WHERE L.SUPCD *= S.SLCODE AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
'            "and L.LOTDT <= '" & strOnDate & "' AND L.LOTNO" & strRange & " " & _
'            "AND LOTYEAR =(SELECT TOP 1 LOTYEAR FROM RM_LOT WHERE LOTNO = L.LOTNO ORDER BY LOTYEAR)" & _
'            "AND L.GODOWN = '" & Me.dcbGodown.Text & "' ORDER BY L.LOTNO", cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE

If cmbVar.Text = "All" Then
    'before 25/11/05
            'rs.Open "SELECT distinct L.LOTNO,S.SLNAME,L.RATECY,ISNULL(L.BALES,0) STOCKBALES,ISNULL(L.GRSWGT,0) STOCKKGS, L.RATEKG, L.GODOWN, L.LOTYEAR " & _
                    "FROM RM_LOT L, FA_SLMAS S,rm_bale b " & _
                    "WHERE L.SUPCD *= S.SLCODE AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
                    "and L.LOTDT <= '" & strOnDate & "' AND L.LOTNO" & strRange & " " & _
                    "AND LOTYEAR =(SELECT TOP 1 LOTYEAR FROM RM_LOT WHERE LOTNO = L.LOTNO ORDER BY LOTYEAR)" & _
                    "AND  l.lotno=b.lotno and l.catcd=b.catcd and l.lotdt=b.lotdt and l.divcode=b.divcode and l.lottype=b.lottype " & _
                    "and  b.lodgdate is not null and b.lodgdate  between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & strOnDate & "'  ORDER BY L.LOTNO", cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
    'after 25/11/05
            Rs.Open "SELECT distinct L.LOTNO,S.SLNAME,L.RATECY,ISNULL(L.BALES,0) STOCKBALES,ISNULL(L.GRSWGT,0) STOCKKGS, L.RATEKG, L.GODOWN, L.LOTYEAR " & _
                    "FROM RM_LOT L, FA_SLMAS S,rm_bale b " & _
                    "WHERE L.SUPCD *= S.SLCODE AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
                    "and L.LOTDT <= '" & strOnDate & "' AND L.LOTNO" & strRange & " " & _
                    "AND LOTYEAR =(SELECT TOP 1 LOTYEAR FROM RM_LOT WHERE LOTNO = L.LOTNO ORDER BY LOTYEAR)" & _
                    "AND  l.lotno=b.lotno and l.catcd=b.catcd and l.lotdt=b.lotdt and l.divcode=b.divcode and l.lottype=b.lottype " & _
                    " ORDER BY L.LOTNO", Cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
            Else
                Rs.Open "SELECT distinct L.LOTNO,S.SLNAME,L.RATECY,ISNULL(L.BALES,0) STOCKBALES,ISNULL(L.GRSWGT,0) STOCKKGS, L.RATEKG, L.GODOWN, L.LOTYEAR " & _
                "FROM RM_LOT L, FA_SLMAS S,rm_bale b " & _
                "WHERE L.SUPCD *= S.SLCODE AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
                "and L.LOTDT <= '" & strOnDate & "' AND L.LOTNO" & strRange & " " & _
                "AND LOTYEAR =(SELECT TOP 1 LOTYEAR FROM RM_LOT WHERE LOTNO = L.LOTNO ORDER BY LOTYEAR)" & _
                "AND L.GODOWN = '" & Me.cmbVar.Text & "' and l.lotno=b.lotno and l.catcd=b.catcd and l.lotdt=b.lotdt and l.divcode=b.divcode and l.lottype=b.lottype " & _
                "and  b.lodgdate is not null and b.lodgdate  between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & strOnDate & "'  ORDER BY L.LOTNO", Cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
            End If
Else                   ''Godownwise
    Rs.Open "SELECT L.LOTNO,S.SLNAME,L.RATECY,ISNULL(L.BALES,0) STOCKBALES,ISNULL(L.GRSWGT,0) STOCKKGS, L.RATEKG, L.GODOWN, L.LOTYEAR " & _
            "FROM RM_LOT L, FA_SLMAS S " & _
            "WHERE L.SUPCD *= S.SLCODE AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
            "and L.LOTDT <= '" & strOnDate & "' AND L.GODOWN" & strRange & " " & _
            "AND LOTYEAR =(SELECT TOP 1 LOTYEAR FROM RM_LOT WHERE LOTNO = L.LOTNO ORDER BY LOTYEAR)" & _
            "ORDER BY L.GODOWN, L.LOTNO", Cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
End If

If Rs.RecordCount > 0 Then
    If Repindex = 2 Then    ''Lotwise Bank Stock
        Set Rep = New Report.ReportView
        a = FreeFile
        Close #a
        Open "C:\BankStockLotwise.txt" For Output As #a
        Call prBankHeader
        While Not Rs.EOF
            If intlno > 60 Then
               intlno = 0
               intpgno = intpgno + 1
               Print #a, Space(2) & String(86, "-")
               Print #a, Chr(12)
               Call prBankHeader
            End If
            dblValue = (Rs("RATEKG") * Rs("stockkgs"))
            dblTotValue = dblTotValue + dblValue
            dblTotStock = dblTotStock + Rs("stockkgs")
            dblTotBale = dblTotBale + Rs("StockBales")
            
            Print #a, Space(2) & Padr(Rs("lotno") & "/" & Rs("lotyear"), 10, " ");
            Print #a, Space(1) & Padr(Rs("slname"), 30, " ");
            Print #a, Space(1) & Padl(Round(Rs("RATECY")), 10, " ");
            Print #a, Space(1) & Padl(Rs("stockBales"), 5, " ");
            Print #a, Space(1) & Padl(Format(Rs("stockkgs"), "########0.000"), 12, " ");
            Print #a, Space(1) & Padl(Format(dblValue, "##########0.00"), 14, " ")
            Print #a,
            Rs.MoveNext
            intlno = intlno + 2
            dblValue = 0
            dblTotValue = 0
        Wend
        Print #a, Space(2) & String(86, "-")
        Print #a, Space(2) & Space(47) & "Total " & Padl(dblTotBale, 5, " ") & Space(1) & Padl(Format(dblTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblTotValue, "##########0.00"), 14, " ")
        Print #a, Space(2) & String(86, "-")
        Print #a, Chr(12)
        Close #a
        a = FreeFile
        Open "c:\BankStockLotwise.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type BankStockLotwise.txt>prn"
        Close #a
        Rep.txtfile = "c:\BankStockLotwise.txt"
        Rep.Batfile = "c:\BankStockLotwise.bat"
    ElseIf Repindex = 3 Then
        Set Rep = New Report.ReportView
        a = FreeFile
        Close
        Close #a
        Open "C:\BankStockGodownwise.txt" For Output As #a
        Call prBankHeader
        Do While Not Rs.EOF
            If intlno > 60 Then
               intlno = 0
               intpgno = intpgno + 1
               Print #a, Space(2) & String(86, "-")
               Print #a, Chr(12)
               Call prBankHeader
            End If
            If strGodcode <> Rs("Godown") Then
                Print #a, Space(2) & Chr(27) & "E" & Padr("Godown : " & Rs("Godown"), 30, " ") & Chr(27) & "F"
                Print #a,
                intlno = intlno + 2
                strGodcode = Rs("Godown")
            End If
            dblValue = (Rs("RATEKG") * Rs("stockkgs"))
            dblTotValue = dblTotValue + dblValue
            dblSTotValue = dblSTotValue + dblValue
            dblTotStock = dblTotStock + Rs("stockkgs")
            dblSTotStock = dblSTotStock + Rs("stockkgs")
            dblTotBale = dblTotBale + Rs("StockBales")
            dblSTotBale = dblSTotBale + Rs("StockBales")
            
            Print #a, Space(2) & Padr(Rs("lotno") & "/" & Rs("lotyear"), 10, " ");
            Print #a, Space(1) & Padr(Rs("slname"), 30, " ");
            Print #a, Space(1) & Padl(Round(Rs("RATECY")), 10, " ");
            Print #a, Space(1) & Padl(Rs("stockBales"), 5, " ");
            Print #a, Space(1) & Padl(Format(Rs("stockkgs"), "########0.000"), 12, " ");
            Print #a, Space(1) & Padl(Format(dblValue, "##########0.00"), 14, " ")
            Print #a,
            Rs.MoveNext
            intlno = intlno + 2
            intGrpCnt = intGrpCnt + 1
            dblValue = 0
            If Rs.EOF Then Exit Do
            If strGodcode <> Rs("Godown") Then
                If intGrpCnt > 1 Then
                    Print #a, Space(2) & String(86, "-")
                    Print #a, Space(2) & Space(47) & "Total " & Padl(dblSTotBale, 5, " ") & Space(1) & Padl(Format(dblSTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblSTotValue, "##########0.00"), 14, " ")
                    Print #a, Space(2) & String(86, "-")
                    intlno = intlno + 3
                    dblSTotValue = 0
                    dblSTotStock = 0
                    dblSTotBale = 0
                End If
                intGrpCnt = 0
            End If
        Loop
        If intlno > 60 Then
           intlno = 0
           intpgno = intpgno + 1
           Print #a, Space(2) & String(86, "-")
           Print #a, Chr(12)
           Call prBankHeader
        Else
            Print #a, Space(2) & String(86, "-")
        End If
        If intGrpCnt > 1 Then
            Print #a, Space(2) & Space(47) & "Total " & Padl(dblSTotBale, 5, " ") & Space(1) & Padl(Format(dblSTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblSTotValue, "##########0.00"), 14, " ")
            Print #a, Space(2) & String(86, "-")
        End If
        Print #a, Space(2) & Space(40) & " Grand Total " & Padl(dblTotBale, 5, " ") & Space(1) & Padl(Format(dblTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblTotValue, "##########0.00"), 14, " ")
        Print #a, Space(2) & String(86, "-")
        Print #a, Chr(12)
        Close #a
        a = FreeFile
        Open "c:\BankStockGodownwise.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type BankStockGodownwise.txt>prn"
        Close #a
        Rep.txtfile = "c:\BankStockGodownwise.txt"
        Rep.Batfile = "c:\BankStockGodownwise.bat"
    End If
Else
    MsgBox "No Records Found", vbInformation, "RMI-Bank Stock Statement"
    Me.MousePointer = 0
    Exit Sub
End If

Exit Sub
prBankStockStmtold_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prBankStockStmtold of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub prCottonStockStmt()
Dim i As Integer
Dim gr As Integer
Dim sno As Integer
Dim RS2 As Recordset
Dim balecnt As Double
Dim varcnt As Double
On Error GoTo prCottonStockStmt_Error

Set Rs = New Recordset

If cmbVar.Text = "All" Then
    'Rs.Open "SELECT L.LOTNO,L.GODOWN,(ISNULL(L.BALES,0)-ISNULL(ISSBALES,0)) STOCKBALES " & _
            "FROM RM_LOT L, (SELECT DIVCODE,CATCD,LOTNO, COUNT(*) ISSBALES FROM RM_ISSB " & _
            "WHERE DOCDT <= '" & strOnDate & "'  GROUP BY DIVCODE,CATCD,LOTNO)I " & _
            "WHERE L.DIVCODE *= I.DIVCODE AND L.CATCD*=I.CATCD " & _
            "AND L.LOTNO*=I.LOTNO AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
            "and L.LOTDT <= '" & strOnDate & "' AND LOTYEAR = (SELECT TOP 1 LOTYEAR FROM RM_LOT A " & _
            "WHERE A.LOTNO = L.LOTNO ORDER BY LOTYEAR) " & _
            "and L.LOTNO" & strRange & _
            "AND L.CATCD='C' ORDER BY L.LOTNO", cn, adOpenDynamic, adLockBatchOptimistic
            
    Rs.Open "SELECT L.LOTNO,L.GODOWN,(ISNULL(L.BALES,0)-ISNULL(ISSBALES,0)) STOCKBALES,l.lotdt,l.varcode " & _
            "FROM RM_LOT L, (SELECT DIVCODE,CATCD,LOTNO, COUNT(*) ISSBALES,lotdt FROM RM_ISSB " & _
            "WHERE DOCDT <= '" & strOnDate & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY DIVCODE,CATCD,LOTNO,lotdt)I " & _
            "WHERE L.DIVCODE *= I.DIVCODE AND L.CATCD*=I.CATCD  and l.lotdt*=i.lotdt " & _
            "AND L.LOTNO*=I.LOTNO AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
            "and L.LOTDT <= '" & strOnDate & "' AND LOTYEAR = '" & Year(yfdate) & "'" & _
            "  " & _
            "and L.LOTNO" & strRange & _
            "AND L.CATCD='C' GROUP BY l.lotno , l.GODOWN, l.bales, IssbalES, ISSBAL, l.lotdt, l.varcode Having l.bales <> IsNull(i.IssbalES, 0) ORDER BY L.LOTNO", Cn, adOpenDynamic, adLockBatchOptimistic
Else
    Rs.Open "SELECT L.LOTNO,L.GODOWN,(ISNULL(L.BALES,0)-ISNULL(ISSBALES,0)) STOCKBALES,l.lotdt,l.varcode " & _
            "FROM RM_LOT L, (SELECT DIVCODE,CATCD,LOTNO, COUNT(*) ISSBALES,lotdt FROM RM_ISSB " & _
            "WHERE DOCDT <= '" & strOnDate & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  GROUP BY DIVCODE,CATCD,LOTNO,lotdt)I " & _
            "WHERE L.DIVCODE *= I.DIVCODE AND L.CATCD*=I.CATCD and l.lotdt*=i.lotdt " & _
            "AND L.LOTNO*=I.LOTNO AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
            "and L.LOTDT <= '" & strOnDate & "' AND LOTYEAR = '" & Year(yfdate) & "'" & _
            " " & _
            "and L.LOTNO" & strRange & _
            "AND L.CATCD='C' and L.varcode = '" & cmbVar.Text & "' GROUP BY l.lotno , l.GODOWN, l.bales, IssbalES, ISSBAL, l.lotdt, l.varcode Having l.bales <> IsNull(i.IssbalES, 0) ORDER BY L.LOTNO", Cn, adOpenDynamic, adLockBatchOptimistic
End If

If Rs.RecordCount <= 0 Then
    MsgBox "No Records Found"
    Screen.MousePointer = 0
    Exit Sub
Else
    Set Rep = New Report.ReportView
    a = FreeFile
    Close
    Close #a
    'Modified BY D.parim
    Open "C:\cottonStockLotwise.txt" For Output As #a
    intlno = 0
    Set rsbale = New Recordset
    rsbale.Open "select * from sysobjects where name ='cotstock'", Cn, adOpenStatic, adLockBatchOptimistic
    If rsbale.RecordCount > 0 Then
        Cn.Execute "drop table cotstock"
    End If
    Cn.Execute "create table cotstock (varcode1 varchar(10),lot1 int,god1 varchar(3),bale1 numeric(6,0),varcode2 varchar(10),lot2 int,god2 varchar(3),bale2 numeric(6,0),varcode3 varchar(10),lot3 int,god3 varchar(3),bale3 numeric(6,0),varcode4 varchar(10),lot4 int,god4 varchar(3),bale4 numeric(6,0),varcode5 varchar(10),lot5 int,god5 varchar(3),bale5 numeric(6,0),sno numeric(6))"
    intpgno = 1
    Call prCottonHeader
    sno = 0
    gr = 0
    Do While Not Rs.EOF
        sno = sno + 1
        gr = gr + 1
        Set rsd = New Recordset
        rsd.Open "select * from rm_god where gcode='" & Rs("godown") & "' and DivCode = '" & Divcode & "'", DB
        If gr <= 25 Then
             'cn.Execute "insert into cotstock(lot1,god1,bale1,lot2,god2,bale2,lot3,god3,bale3,lot4,god4,bale4,lot5,god5,bale5,sno) values (" & rs("lotno") & "," & rs("godown") & "," & rs("stockbales") & ",0,0,0,0,0,0,0,0,0,0,0,0," & sno & ")"
            Cn.Execute "insert into cotstock(varcode1,lot1,god1,bale1,varcode2,lot2,god2,bale2,varcode3,lot3,god3,bale3,varcode4,lot4,god4,bale4,varcode5,lot5,god5,bale5,sno) values ( '" & Rs("varcode") & "' , " & Rs("lotno") & " ,'" & rsd("GCODE") & "'," & Rs("stockbales") & ",'0',0,'0',0,'0',0,'0',0,'0',0,'0',0,'0',0,'0',0," & sno & ")"
        End If
        
'        If rsd.RecordCount > 0 Then
'            g1 = RSD("GCODE")
'        Else
'            g1 = " "
'        End If
        If gr > 25 And gr <= 50 Then
        i = (sno - 25)
            Cn.Execute "update cotstock set varcode2='" & Rs("varcode") & "' ,lot2=" & Rs("lotno") & ", god2='" & rsd("GCODE") & "',bale2=" & Rs("stockbales") & " where sno=" & i
            End If
        If gr > 50 And gr <= 75 Then
        i = (sno - 50)
            Cn.Execute "update cotstock set varcode3='" & Rs("varcode") & "',lot3=" & Rs("lotno") & ",god3='" & rsd("GCODE") & "',bale3=" & Rs("stockbales") & " where sno=" & i
           End If
         If gr > 75 And gr <= 100 Then
        i = (sno - 75)
            Cn.Execute "update cotstock set varcode4='" & Rs("varcode") & "' ,lot4=" & Rs("lotno") & ",god4='" & rsd("GCODE") & "',bale4=" & Rs("stockbales") & " where sno=" & i
            End If
         If gr > 100 And gr <= 125 Then
            i = (sno - 100)
            Cn.Execute "update cotstock set varcode5='" & Rs("varcode") & "',lot5=" & Rs("lotno") & ",god5='" & rsd("GCODE") & "',bale5=" & Rs("stockbales") & " where sno=" & i
            End If
         Rs.MoveNext
         If gr >= 125 Then gr = 0
    Loop
    balecnt = 0
    varcnt = 0
    Set RS2 = New Recordset
    RS2.Open "SELECT lot1,god1,bale1,lot2,god2,bale2,lot3,god3,bale3,lot4,god4,bale4,lot5,god5,bale5,varcode1,varcode2,varcode3,varcode4,varcode5 FROM cotstock ORDER BY sno", Cn, adOpenDynamic, adLockOptimistic
    Do While Not RS2.EOF
        'Do While Not rs3.EOF
        If intlno > 56 Then
            Print #a, Chr(27) & Chr(205) & Chr(27) & Chr(77)
            Print #a, Chr(12)
            intpgno = intpgno + 1
            intlno = 0
            Call prCottonHeader
        End If
        'A = rs("varcode")
        'Print #A, Space(5) + Padr(Format(rs2("lot1"), "######"), 6, " ") + "|" + Padr(Format(rs2("god1"), "###"), 3, " ") + "|" + Padl(Format(rs2("bale1"), "#####"), 5, " ") + "|" & _
                  Padr(Format(rs2("lot2"), "######"), 6, " ") + "|" + Padr(Format(rs2("god2"), "###"), 3, " ") + "|" + Padl(Format(rs2("bale2"), "#####"), 5, " ") + "|" & _
                  Padr(Format(rs2("lot3"), "######"), 6, " ") + "|" + Padr(Format(rs2("god3"), "###"), 3, " ") + "|" + Padl(Format(rs2("bale3"), "#####"), 5, " ") + "|" & _
                  Padr(Format(rs2("lot4"), "######"), 6, " ") + "|" + Padr(Format(rs2("god4"), "###"), 3, " ") + "|" + Padl(Format(rs2("bale4"), "#####"), 5, " ") + "|" & _
                  Padr(Format(rs2("lot5"), "######"), 6, " ") + "|" + Padr(Format(rs2("god5"), "###"), 3, " ") + "|" + Padl(Format(rs2("bale5"), "#####"), 5, " ")
                  
        'Print #A, Padl(Format(rs2("god1"), "###"), 3, " ") + "|" + Padl(rs2("varcode"), 6, " ") + "|" + Padl(Format(rs2("lot1"), "######"), 4, " ") + "|" + Padl(Format(rs2("bale1"), "#####"), 3, " ") + "|";
        'Print #A, Padl(Format(rs2("god2"), "###"), 3, " ") + "|" + Padl(rs2("varcode"), 6, " ") + "|" + Padl(Format(rs2("lot2"), "######"), 4, " ") + "|" + Padl(Format(rs2("bale2"), "#####"), 3, " ") + "|";
        'Print #A, Padl(Format(rs2("god3"), "###"), 3, " ") + "|" + Padl(rs2("varcode"), 6, " ") + "|" + Padl(Format(rs2("lot3"), "######"), 4, " ") + "|" + Padl(Format(rs2("bale3"), "#####"), 3, " ") + "|"
        
        Print #a, Space(4) + Padl(Format(RS2("god1"), "###"), 3, " ") + "|" + Padr(Format(RS2("varcode1"), "######"), 6, " ") + "|" + Padl(Format(RS2("lot1"), "###"), 3, " ") + "|" + Padl(Format(RS2("bale1"), "####"), 4, " ") + "|";
        Print #a, Padl(Format(RS2("god2"), "###"), 3, " ") + "|" + Padr(Format(RS2("varcode2"), "######"), 6, " ") + "|" + Padl(Format(RS2("lot2"), "###"), 3, " ") + "|" + Padl(Format(RS2("bale2"), "####"), 4, " ") + "|";
        Print #a, Padl(Format(RS2("god3"), "###"), 3, " ") + "|" + Padr(Format(RS2("varcode3"), "######"), 6, " ") + "|" + Padl(Format(RS2("lot3"), "###"), 3, " ") + "|" + Padl(Format(RS2("bale3"), "####"), 4, " ") + "|";
        Print #a, Padl(Format(RS2("god4"), "###"), 3, " ") + "|" + Padr(Format(RS2("varcode4"), "######"), 6, " ") + "|" + Padl(Format(RS2("lot4"), "###"), 3, " ") + "|" + Padl(Format(RS2("bale4"), "####"), 4, " ") + "|";
        Print #a, Padl(Format(RS2("god5"), "###"), 3, " ") + "|" + Padr(Format(RS2("varcode5"), "######"), 6, " ") + "|" + Padl(Format(RS2("lot5"), "###"), 3, " ") + "|" + Padl(Format(RS2("bale5"), "####"), 4, " ")
        intlno = intlno + 1
        
        'Print #A, Chr(12)
        
        
        'intPgNo = intPgNo + 1
        'intlno = 0
        'Call prCottonHeader2
        'Print #A, Space(5) + Padl(Format(rs3("god4"), "###"), 3, " ") + "|" + Padl(rs3("varcode"), 7, " ") + "|" + Padl(Format(rs3("lot4"), "######"), 6, " ") + "|" + Padl(Format(rs3("bale4"), "#####"), 5, " ") + "|";
        'Print #A, Space(5) + Padl(Format(rs3("god5"), "###"), 3, " ") + "|" + Padl(rs3("varcode"), 7, " ") + "|" + Padl(Format(rs3("lot5"), "######"), 6, " ") + "|" + Padl(Format(rs3("bale5"), "#####"), 5, " ")
        'PRINT #A,SPCAE(5)+STRING(45,"-")
        'rs3.MoveNext
        
        Print #a, Space(4) + String(100, "-")
        intlno = intlno + 1
          'Palecnt = balecnt + rs2("bale1") + rs2("bale2") + rs2("bale3")
        '+ rs3("bale4") + rs3("bale5")
       balecnt = balecnt + RS2("bale1") + RS2("bale2") + RS2("bale3") + RS2("bale4") + RS2("bale5")
    RS2.MoveNext
    'intlno = intlno + 1
    
    Loop
    If cmbVar <> "All" Then
    
        Print #a, Space(57) + "Total No Of Lots  : " + Padl(CStr(sno), 6, " ")
        Print #a, Space(57) + "Total No of Bales : " + Padl(CStr(balecnt), 6, " ")
    End If
   
    
    If cmbVar = "All" Then
        Set rsVar = New Recordset
        rsVar.Open "select distinct v.varcode,v.varname,l.varcode as code from  rm_var v,rm_lot l where l.varcode=v.varcode and l.catcd=v.catcd and l.lotno  " & strRange & " ", Cn, adOpenDynamic, adLockOptimistic
        Dim bales As Double
         Do While Not rsVar.EOF
            Set rsbales = New Recordset
            rsbales.Open "select sum(x.stockbales) Bales from " & _
                    "(SELECT L.LOTNO,L.GODOWN,(ISNULL(L.BALES,0)-ISNULL(ISSBALES,0)) STOCKBALES,l.lotdt,l.varcode " & _
            "FROM RM_LOT L, (SELECT DIVCODE,CATCD,LOTNO, COUNT(*) ISSBALES,lotdt FROM RM_ISSB " & _
            "WHERE DOCDT <= '" & strOnDate & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' GROUP BY DIVCODE,CATCD,LOTNO,lotdt)I " & _
            "WHERE L.DIVCODE *= I.DIVCODE AND L.CATCD*=I.CATCD and l.lotdt *= i.lotdt " & _
            "AND L.LOTNO*=I.LOTNO AND (ISNULL(REJFLG,'N') = 'N' OR REJDT > '" & strOnDate & "') " & _
            "and L.LOTDT <= '" & strOnDate & "' AND LOTYEAR = " & Year(yfdate) & "" & _
            " " & _
            "and L.LOTNO" & strRange & _
            "AND L.CATCD='C'  and varcode='" & rsVar("varcode") & "' )x ", Cn, adOpenDynamic, adLockBatchOptimistic
            'printing the total values
            Print #a, Space(57) + Padr(rsVar("Varname"), 17, " ") + " : " + IIf(rsbales("Bales") = 0 Or IsNull(rsbales("Bales")), Padl("--", 6, " "), Padl(rsbales("Bales"), 6, " "))
            'Print #A, Space(57) + IIf(rsbales("Bales") = 0 Or IsNull(rsbales("Bales")), Padl("--", 6, " "), Padl(rsbales("Bales"), 6, " "))
            rsVar.MoveNext
            varcnt = varcnt + IIf(IsNull(rsbales("Bales")), 0, rsbales("Bales"))
         Loop
         
         Print #a, Space(57) + "Total No Of Lots  : " + Padl(CStr(sno), 6, " ")
         Print #a, Space(57) + "Total No of Bales : " + Padl(balecnt, 6, " ")
     End If
    
   ' Print #A, Space(5) + String(80, "-")
    
    Print #a, Chr(12)
    Close #a
    Close
    a = FreeFile
    Open "c:\cottonStockLotwise.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type cottonStockLotwise.txt>prn"
    Close #a
    Rep.txtfile = "c:\cottonStockLotwise.txt"
    Rep.Batfile = "c:\cottonStockLotwise.bat"

End If

Exit Sub
prCottonStockStmt_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prCottonStockStmt of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub prCottonHeader()
On Error GoTo prCottonHeader_Error

On Error GoTo prCottonHeader_Error

Print #a, Chr(27) & Chr(205) & Chr(27) & Chr(77)
Print #a, CENTRE(DIVNAME, 100, " ")
Print #a,
Print #a, Space(4) + "COTTON STOCK STATEMENT - LOTWISE AS ON " + Format(strOnDate, "dd-mm-yy");
Print #a, Space(46) + "Pg.:" + Padl(CStr(intpgno), 3, " ")
Print #a, Space(4) + String(100, "=")
'Print #A, Space(5) + Padr("LOT No", 6, " ") + "|" + Padr("GDN", 3, " ") + "|" + Padr("BALES", 5, " ") + "|" + Padr("LOT No", 6, " ") + "|" + Padr("GDN", 3, " ") + "|" + Padr("BALES", 5, " ") + "|" & _
          Padr("LOT No", 6, " ") + "|" + Padr("GDN", 3, " ") + "|" + Padr("BALES", 5, " ") + "|" + Padr("LOT No", 6, " ") + "|" + Padr("GDN", 3, " ") + "|" + Padr("BALES", 5, " ") + "|" & _
          Padr("LOT No", 6, " ") + "|" + Padr("GDN", 3, " ") + "|" + Padr("BALES", 5, " ")
'Print #A, Padl(Format(rs2("god5"), "###"), 3, " ") + "|" + Padl(rs2("varcode"), 6, " ") + "|" + Padl(Format(rs2("lot5"), "####"), 4, " ") + "|" + Padl(Format(rs2("bale5"), "###"), 3, " ")
Print #a, Space(4) + Padr("GDN", 3, " ") + "|" + Padr("VARCODE", 6, " ") + "|" + Padr("LOT No", 3, " ") + "|" + Padr("BALES", 4, " ") + "|";
Print #a, Padr("GDN", 3, " ") + "|" + Padl("VARCODE", 6, " ") + "|" + Padl("LOT No", 3, " ") + "|" + Padr("BALES", 4, " ") + "|";
Print #a, Padr("GDN", 3, " ") + "|" + Padl("VARCODE", 6, " ") + "|" + Padl("LOT No", 3, " ") + "|" + Padr("BALES", 4, " ") + "|";
Print #a, Padr("GDN", 3, " ") + "|" + Padl("VARCODE", 6, " ") + "|" + Padl("LOT No", 3, " ") + "|" + Padr("BALES", 4, " ") + "|";
Print #a, Padr("GDN", 3, " ") + "|" + Padl("VARCODE", 6, " ") + "|" + Padl("LOT No", 3, " ") + "|" + Padr("BALES", 4, " ")

                     
Print #a, Space(4) + String(100, "=")
intlno = intlno + 8

Exit Sub
prCottonHeader_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prCottonHeader of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub
'Private Sub PRCOTTONHEADER2()
'Print #A,
'Print #A, Space(5) + String(45, "=")
'Print #A, Space(5) + Padr("GDN", 3, " ") + "|" + Padr("VARCODE", 7, " ") + "|" + Padr("LOT No", 6, " ") + "|" + Padr("BALES", 5, " ") + "|";
'Print #A, Space(5) + Padr("GDN", 3, " ") + "|" + Padr("VARCODE", 7, " ") + "|" + Padr("LOT No", 6, " ") + "|" + Padr("BALES", 5, " ")
'Print #A, Space(5) + String(45, "=")
'INTLO = INTLO + 4
'End Sub

Private Sub BaleStockStmt()
Dim dblValue As Double
Dim dblTotValue As Double
Dim dblTotStock As Double
Dim dblTotBale As Double
Dim dblSTotValue As Double
Dim dblSTotStock As Double
Dim dblSTotBale As Double
Dim strGodcode As String
Dim intGrpCnt As Integer


On Error GoTo BaleStockStmt_Error

Year1 = Right(dcbFromLotNo, 4)
year2 = Right(dcbToLotNo, 4)
ntLno = 0
intpgno = 1
dblTotValue = 0
dblTotStock = 0
dblTotBale = 0
dblSTotValue = 0
dblSTotStock = 0
dblSTotBale = 0
intGrpCnt = 0
strGodcode = ""

'Set rep = New Report.ReportView
'A = FreeFile
'Close #A
'Open "C:\StockBalewise.txt" For Output As #A


Set Rs = New Recordset
'Rs.Open "select i.baleno,b.grwt,i.docdt,i.isstype,i.docno,i.isskgs,l.varcode from rm_issb i,rm_bale b, " & _
        " rm_lot l where i.lotno=b.lotno and i.baleno=b.baleno and i.lotdt=b.lotdt and l.lotno=b.lotno " & _
        " and l.lotdt=b.lotdt and l.lotno " & strRange & "  and year(l.lotdt)='" & year1 & "' and l.lotyear='" & Year(Date) & "'  order by " & _
        " i.baleno ", db
 Rs.Open " select distinct x.lotno,year(x.lotdt) LotYear from " & _
         " (select i.lotno,i.baleno,b.grwt,i.docdt,i.isstype,i.docno,i.isskgs,l.varcode,l.lotdt from rm_issb i,rm_bale b, " & _
         " rm_lot l where i.lotno=b.lotno and i.baleno=b.baleno and i.lotdt=b.lotdt and l.lotno=b.lotno " & _
         "  and l.lotdt=b.lotdt and l.lotno " & strRange & " and year(l.lotdt) between '" & Year(yfdate) & "' and '" & Year(yldate) & "' and l.lotyear='" & Year(yfdate) & "'" & _
         " and i.docdt <= '" & strOnDate & "')x ", DB
         
         
     
If Rs.EOF = True Then
    MsgBox "No Issues Found for the particular lot", vbInformation, "RMI-Balewise Stock Statement"
    Me.MousePointer = 0
    Exit Sub
End If

Set Rep = New Report.ReportView
a = FreeFile
Close #a
Open "C:\StockBalewise.txt" For Output As #a

dbGrKgs = 0
dbIssKgs = 0
intlno = 0
sno = 0
Call StockBaleHeader
Do While Not Rs.EOF

       
        Set rsLot = New Recordset
        rsLot.Open "select f.slname,i.lotno,i.baleno,b.grwt,i.docdt,i.isstype,i.docno, " & _
                   " i.isskgs,l.varcode,l.lotdt from rm_issb i,rm_bale b,rm_lot l,fa_slmas f where i.lotno=b.lotno " & _
                   " and i.baleno=b.baleno and i.lotdt=b.lotdt and l.lotno=b.lotno   and " & _
                   " l.lotdt=b.lotdt and l.lotno ='" & Rs("lotno") & "' and year(l.lotdt) = '" & Rs("lotyear") & "' " & _
                   "  and l.lotyear='" & Year(yfdate) & "' and i.docdt <= '" & strOnDate & "' and f.slcode=l.supcd order by i.baleno", DB
                   
        Set rslotreg = New Recordset
        rslotreg.Open "select grswgt,bales from rm_lot where lotno = '" & Rs("lotno") & "' and lotyear='" & Year(yfdate) & "' and year(lotdt)='" & Rs("lotyear") & "'", DB
                   
        Print #a, Space(5) & "Lot No  : " & Padr(rsLot("Lotno"), 4, " ") & Space(10) & "Supplier  : " & Padr(rsLot("slname"), 40, " ")
        Print #a, Space(5) & "Variety : " & Padr(rsLot("Varcode"), 4, " ")
        Print #a,
        intlno = intlno + 3
        Do While Not rsLot.EOF
            If intlno > 60 Then
               intlno = 0
               intpgno = intpgno + 1
               Print #a, Space(2) & String(86, "-")
               Print #a, Chr(12)
               Call StockBaleHeader
            End If
            
            Print #a, Space(5) & Padl(rsLot("baleno"), 7, " ");
            Print #a, Space(3) & Padl(Format(rsLot("grwt"), "########0.000"), 12, " ");
            Print #a, Space(3) & Format(rsLot("docdt"), "DD-MM-YYYY");
            If rsLot("IssType") = "P" Then
                Print #a, Space(2) & Padr("1", 3, " ");
            ElseIf rsLot("IssType") = "Q" Then
                Print #a, Space(2) & Padr("2", 3, " ");
            ElseIf rsLot("IssType") = "T" Then
                Print #a, Space(2) & Padr("T", 3, " ");
            End If
            Print #a, Space(3) & Padl(rsLot("docno"), 4, " ");
            Print #a, Space(3) & Padl(Format(rsLot("isskgs"), "########0.000"), 12, " ")
            dbGrKgs = dbGrKgs + rsLot("grwt")
            dbIssKgs = dbIssKgs + rsLot("IssKgs")
            sno = sno + 1
            rsLot.MoveNext
            intlno = intlno + 1
        Loop
        Print #a, Space(2) & String(86, "-")
        Print #a, Space(8) & "Total " & Space(1) & Padl(Format(dbGrKgs, "########0.000"), 12, " ") & Space(28) & Padl(Format(dbIssKgs, "########0.000"), 12, " ")
        stkbales = rslotreg("Bales") - sno
        stkkgs = rslotreg("grswgt") - dbGrKgs
        'Print #a, Space(8) & "Stock Bales : " & IIf(stkbales = 0, "0", Padl(stkbales, 5, " ")) & Space(3) & "Stock Kgs : " & IIf(stkkgs = 0, "0", Padl(Format(stkkgs, "########0.000"), 12, " "))
        Print #a, Space(2) & String(86, "-")
        intlno = intlno + 3
'        If intlno > 60 Then
'               intlno = 0
'               intpgno = intpgno + 1
'               Print #a, Space(2) & String(86, "-")
'               Print #a, Chr(12)
'               Call StockBaleHeader
'        End If
  Rs.MoveNext
  dbGrKgs = 0
  dbIssKgs = 0
  sno = 0
Loop
        
Print #a, Chr(12)
Close #a
a = FreeFile
Open "c:\StockBalewise.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type StockBalewise.txt>prn"
Close #a
Rep.txtfile = "c:\StockBalewise.txt"
Rep.Batfile = "c:\StockBalewise.bat"
'Close #A

Exit Sub
BaleStockStmt_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure BaleStockStmt of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub StockBaleHeader()
On Error GoTo StockBaleHeader_Error

Print #a, Chr(18)
Print #a, Space(7); Chr(14); Chr(27) & "E"; DIVNAME; Chr(27) & "F"
Print #a,
'Print #a, Space(2); Chr(18); CENTRE(("BALEWISE LOT STATEMENT - GODOWNWISE AS ON " & Format(strOnDate, "dd-mm-yyyy")), 80, " ");
'Print #a, Space(2); Chr(18); Padl("Pg.: " & intpgno, 80, " ")
Print #a, Space(2); "Balewise Stock Statement as on " & Format(strOnDate, "dd/mm/yy"); Space(10);
Print #a, Space(20); Format(pdate, "dd/mm/yy") & Space(2) & "Pg.: " & intpgno
Print #a, Space(2) & String(86, "-")
             Print #a, Space(5) & Padr("Bale No", 7, " "); Space(3);
            Print #a, Padl("KGS", 12, " ");
            Print #a, Space(3) & Padl("Iss.Date", 10, " ");
            Print #a, Space(2) & Padr("Unit", 4, " ");
            Print #a, Space(2) & Padl("Iss. No", 7, " ");
            Print #a, Padl("Iss. kgs.", 12, " ")
Print #a, Space(2) & String(86, "-")
intlno = intlno + 8

Exit Sub
StockBaleHeader_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure StockBaleHeader of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0
End Sub

'New Development
Private Sub prBankStockStmt()
Dim Ltotal_bale As Double
Dim Ltotal_Kgs As Double
Dim Ltotal_Value As Double


On Error GoTo prBankStockStmt_Error

intpgno = 1
Set Rs = New Recordset
If Repindex = 2 Then
    If cmbVar.Text = "All" And Combo1.Text = "All" Then
    'after 25/11/05
            Rs.Open " Select L.Lotno, Year(L.Lotdt) as Lotyear, Slname,quantity,L.netwt,Pjamt,L.Ratecy,L.godown,D.SHORT_FIELD AS SHORT" & _
                    " From " & _
                    " Rm_lot L,Fa_Slmas as SL,Rm_arrival arr ,rm_bale b " & _
                    " Where " & _
                    " b.openkey = 'Y' and " & _
                    " L.opflg <> 'Y' and " & _
                    " Arr.lotno = l.lotno and " & _
                    " Arr.lotdt = l.lotdt and " & _
                    " Arr.divcode = l.divcode and " & _
                    " Sl.slcode = l.supcd and " & _
                    " b.lotno = l.lotno and " & _
                    " b.lotdt = l.lotdt and " & _
                    " b.divcode = l.divcode and " & _
                    " b.lodgdate is not null and " & _
                    " b.lodgdate  between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & strOnDate & "' and  " & _
                    " L.lotno>=" & val(dcbFromLotNo.Text) & " and " & _
                    " L.lotno<=" & val(dcbToLotNo.Text) & " and " & _
                    " L.lotdt>= '" & Format(yfdate, "yyyy/mm/dd") & "' and " & _
                    " L.lotdt<= '" & Format(yldate, "yyyy/mm/dd") & "' and " & _
                    " L.divcode = '" & Divcode & "'  AND B.BANK=D.GCODE" & _
                    " group by L.Lotno, Year(L.Lotdt), Slname,quantity,L.netwt,Pjamt,L.Ratecy,L.godown,D.SHORT_FIELD   " & _
                    " Order by L.Lotno", Cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
    Else
              Rs.Open " Select L.Lotno, Year(L.Lotdt) as Lotyear, Slname,quantity,L.netwt,Pjamt,L.Ratecy,L.godown,D.GCODE AS SHORT" & _
                    " From " & _
                    " Rm_lot L,Fa_Slmas as SL,Rm_arrival arr ,rm_bale b,RM_GOD D " & _
                    " Where " & _
                    " b.bank between '" & cmbVar.Text & "' and '" & Combo1.Text & "' and  b.openkey = 'Y' and " & _
                    " Arr.lotno = l.lotno and " & _
                    " Arr.lotdt = l.lotdt and " & _
                    " Arr.divcode = l.divcode and " & _
                    " Sl.slcode = l.supcd and " & _
                    " b.lotno = l.lotno and " & _
                    " b.lotdt = l.lotdt and " & _
                    " b.divcode = l.divcode and " & _
                    " b.lodgdate is not null and " & _
                    " b.lodgdate  between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & strOnDate & "' and  " & _
                    " L.lotno>=" & val(dcbFromLotNo.Text) & " and " & _
                    " L.lotno<=" & val(dcbToLotNo.Text) & " and " & _
                    " L.divcode = '" & Divcode & "'  AND B.BANK=D.GCODE" & _
                    " group by L.Lotno, Year(L.Lotdt), Slname,quantity,L.netwt,Pjamt,L.Ratecy,L.godown,D.GCODE" & _
                    " Order by L.Lotno", Cn, adOpenStatic, adLockBatchOptimistic    ''AND L.GODOWN *= G.GCODE
            
    End If
Else                   ''Godownwise

End If

If Rs.RecordCount > 0 Then
    If Repindex = 2 Then    ''Lotwise Bank Stock
        Set Rep = New Report.ReportView
        a = FreeFile
        Close #a
        Open "C:\BankStockLotwise.txt" For Output As #a
        
        Call prBankHeader
        
        While Not Rs.EOF
            If intlno > 60 Then
               intlno = 0
               intpgno = intpgno + 1
               Print #a, Space(2) & String(86, "-")
               Print #a, Chr(12)
               Call prBankHeader
            End If
'            Set RSD = New Recordset
'            RSD.Open "select short_field from rm_god where gcode='" & rs("godown") & "'", DB, adOpenStatic
'            If RSD.RecordCount > 0 Then
'                Short = RSD("GCODE")
'            Else
'                Short = " "
'            End If
            Print #a, Space(2) & Padr(Rs("lotno") & "/" & Rs("lotyear"), 10, " ");
            Print #a, Space(1) & Padl(Rs("Short"), 4, " ");
            Print #a, Space(1) & Padr(Rs("slname"), 25, " ");
            Print #a, Space(1) & Padl(INF(Round(Rs("RATECY")), 0), 10, " ");
            Print #a, Space(1) & Padl(INF(Rs("quantity"), 0), 5, " ");
            Print #a, Space(1) & Padl(INF(Rs("netwt"), 0), 12, " ");
            Print #a, Space(1) & Padl(INF(Rs("Pjamt"), 0), 14, " ")
            'Print #a, Space(1) & Padl(Format(rs("netwt"), "########0.000"), 12, " ");
            'Print #a, Space(1) & Padl(Format(rs("Pjamt"), "##########0.00"), 14, " ")
            
            Ltotal_bale = Ltotal_bale + val(Format(Rs("quantity"), "0.000"))
            Ltotal_Kgs = Ltotal_Kgs + val(Format(Rs("netwt"), "0.000"))
            Ltotal_Value = Ltotal_Value + val(Format(Rs("pjamt"), "0.00"))
            
            Print #a,
            Rs.MoveNext
        Wend
        
        Print #a, Space(2) & String(86, "-")
        Print #a, Space(2) & Space(47) & "Total " & Padl(INF(Ltotal_bale, 0), 5, " ") & Space(1) & Padl(INF(Ltotal_Kgs, 3), 12, " ") & Space(1) & Padl(INF(Ltotal_Value, 2), 14, " ")
        Print #a, Space(2) & String(86, "-")
        Print #a, Chr(12)
        Close #a
        
        a = FreeFile
        Open "c:\BankStockLotwise.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type BankStockLotwise.txt>prn"
        Close #a
        Rep.txtfile = "c:\BankStockLotwise.txt"
        Rep.Batfile = "c:\BankStockLotwise.bat"
        
        
    ElseIf Repindex = 3 Then
        Set Rep = New Report.ReportView
        a = FreeFile
        Close
        Close #a
        Open "C:\BankStockGodownwise.txt" For Output As #a
        Call prBankHeader
        Do While Not Rs.EOF
            If intlno > 60 Then
               intlno = 0
               intpgno = intpgno + 1
               Print #a, Space(2) & String(86, "-")
               Print #a, Chr(12)
               Call prBankHeader
            End If
            If strGodcode <> Rs("Godown") Then
                Print #a, Space(2) & Chr(27) & "E" & Padr("Godown : " & Rs("Godown"), 30, " ") & Chr(27) & "F"
                Print #a,
                intlno = intlno + 2
                strGodcode = Rs("Godown")
            End If
            
            Print #a, Space(2) & Padr(Rs("lotno") & "/" & Rs("lotyear"), 10, " ");
            Print #a, Space(1) & Padr(Rs("slname"), 30, " ");
            Print #a, Space(1) & Padl(Round(Rs("RATECY")), 10, " ");
            Print #a, Space(1) & Padl(Rs("stockBales"), 5, " ");
            Print #a, Space(1) & Padl(Format(Rs("stockkgs"), "########0.000"), 12, " ");
            Print #a, Space(1) & Padl(Format(dblValue, "##########0.00"), 14, " ")
            Print #a,
            
            Rs.MoveNext
            
            intlno = intlno + 2
            intGrpCnt = intGrpCnt + 1
            dblValue = 0
            If Rs.EOF Then Exit Do
            If strGodcode <> Rs("Godown") Then
                If intGrpCnt > 1 Then
                    Print #a, Space(2) & String(86, "-")
                    Print #a, Space(2) & Space(47) & "Total " & Padl(dblSTotBale, 5, " ") & Space(1) & Padl(Format(dblSTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblSTotValue, "##########0.00"), 14, " ")
                    Print #a, Space(2) & String(86, "-")
                    intlno = intlno + 3
                    dblSTotValue = 0
                    dblSTotStock = 0
                    dblSTotBale = 0
                End If
                intGrpCnt = 0
            End If
        Loop
        If intlno > 60 Then
           intlno = 0
           intpgno = intpgno + 1
           Print #a, Space(2) & String(86, "-")
           Print #a, Chr(12)
           Call prBankHeader
        Else
            Print #a, Space(2) & String(86, "-")
        End If
        If intGrpCnt > 1 Then
            Print #a, Space(2) & Space(47) & "Total " & Padl(dblSTotBale, 5, " ") & Space(1) & Padl(Format(dblSTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblSTotValue, "##########0.00"), 14, " ")
            Print #a, Space(2) & String(86, "-")
        End If
        Print #a, Space(2) & Space(40) & " Grand Total " & Padl(dblTotBale, 5, " ") & Space(1) & Padl(Format(dblTotStock, "#######0.000"), 12, " ") & Space(1) & Padl(Format(dblTotValue, "##########0.00"), 14, " ")
        Print #a, Space(2) & String(86, "-")
        Print #a, Chr(12)
        Close #a
        a = FreeFile
        Open "c:\BankStockGodownwise.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "c:"
        Print #a, "cd\"
        Print #a, "type BankStockGodownwise.txt>prn"
        Close #a
        Rep.txtfile = "c:\BankStockGodownwise.txt"
        Rep.Batfile = "c:\BankStockGodownwise.bat"
    End If
Else
    MsgBox "No Records Found", vbInformation, "RMI-Bank Stock Statement"
    Me.MousePointer = 0
    Exit Sub
End If

Exit Sub
prBankStockStmt_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prBankStockStmt of Form frmRepBankStatement", vbInformation, head
Screen.MousePointer = 0

End Sub
