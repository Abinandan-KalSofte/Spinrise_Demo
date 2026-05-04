VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmCottonPay 
   Caption         =   "Cotton Payment Report"
   ClientHeight    =   6825
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10380
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6825
   ScaleWidth      =   10380
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   870
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame2 
      Height          =   705
      Left            =   2190
      TabIndex        =   10
      Top             =   4170
      Width           =   7095
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
         Height          =   405
         Left            =   3660
         TabIndex        =   12
         Top             =   150
         Width           =   1395
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
         Height          =   405
         Left            =   2190
         TabIndex        =   11
         Top             =   150
         Width           =   1395
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2775
      Left            =   2190
      TabIndex        =   0
      Top             =   1410
      Width           =   7095
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2190
         TabIndex        =   5
         Text            =   "Combo1"
         Top             =   2100
         Width           =   4485
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2190
         TabIndex        =   4
         Text            =   "Combo1"
         Top             =   1710
         Width           =   4485
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2190
         TabIndex        =   2
         Top             =   870
         Width           =   1515
         _ExtentX        =   2672
         _ExtentY        =   609
         _Version        =   393216
         Format          =   165019649
         CurrentDate     =   41060
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   345
         Left            =   2190
         TabIndex        =   3
         Top             =   1290
         Width           =   1515
         _ExtentX        =   2672
         _ExtentY        =   609
         _Version        =   393216
         Format          =   165019649
         CurrentDate     =   41060
      End
      Begin VB.Label Label5 
         Caption         =   "Lot No."
         Height          =   285
         Left            =   630
         TabIndex        =   9
         Top             =   2115
         Width           =   1545
      End
      Begin VB.Label Label4 
         Caption         =   "Customer"
         Height          =   285
         Left            =   630
         TabIndex        =   8
         Top             =   1725
         Width           =   1545
      End
      Begin VB.Label Label3 
         Caption         =   "To Arrival Date"
         Height          =   285
         Left            =   630
         TabIndex        =   7
         Top             =   1320
         Width           =   1545
      End
      Begin VB.Label Label2 
         Caption         =   "From Arrival Date"
         Height          =   285
         Left            =   630
         TabIndex        =   6
         Top             =   900
         Width           =   1545
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Cotton Payment Report"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   345
         Left            =   0
         TabIndex        =   1
         Top             =   0
         Width           =   7095
      End
   End
End
Attribute VB_Name = "frmCottonPay"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
    Dim Rst1 As New ADODB.Recordset
    Dim strQry As String

Private Sub Combo1_Click()
    load_comboLot
End Sub

Private Sub Command1_Click()
On Error GoTo BUTTON_Click_Error
    strLotNo = Trim(Mid(Combo2.Text, 1, InStr(Combo2.Text, "--") - 1))
    strLotdt = Trim(Mid(Combo2.Text, InStr(Combo2.Text, "--") + 2))
    
    DB.Execute "ksp_MIS_RM_CottonPayRpt '" & Divcode & "'," & strLotNo & ",'" & Format(strLotdt, "yyyy-MM-dd") & "'"
        
    strQry = "SELECT Top 1 a.DIVCODE, c.VOCDT,ISNULL(c.AMOUNT,0) +isnull(TDS_AMOUNT,0) DEBIT "
    strQry = strQry & " FROM RM_LOT AS a INNER JOIN"
    strQry = strQry & " FA_APAYM AS b ON a.DIVCODE = b.DIVCODE AND a.PJTC = b.TC "
    strQry = strQry & " AND a.PJNO = b.VOCNO AND a.PJDT = b.VOCDT"
    strQry = strQry & " AND a.SUPCD = b.SLCODE INNER JOIN"
    strQry = strQry & " FA_APDBTL AS c ON b.DIVCODE = c.DIVCODE AND b.SLCODE = c.SLCODE AND b.TC = c.REFTC"
    strQry = strQry & " AND b.VOCDT = c.REFVOCDT AND b.VOCNO = c.REFVOCNO AND b.VOCSNO = c.REFVOCSNO"
    strQry = strQry & " left  join (select  tc,Divcode,SLCODE,REFTC,REFVOCDT ,REFVOCNO,REFVOCSNO,sum(ISNULL(AMOUNT,0)) TDS_AMOUNT from  FA_APDBTL group by tc,REFVOCSNO,Divcode,SLCODE,REFTC,REFVOCDT ,REFVOCNO,REFVOCSNO) AS c1 ON b.DIVCODE = c1.DIVCODE AND b.SLCODE = c1.SLCODE AND b.TC = c1.REFTC"
    strQry = strQry & " AND b.VOCDT = c1.REFVOCDT AND b.VOCNO = c1.REFVOCNO AND b.VOCSNO = c1.REFVOCSNO and a.pjtc=c1.tc  "
    strQry = strQry & " Where a.DIVCODE='" & Divcode & "' and a.LOTNO=" & strLotNo & " "
    strQry = strQry & " and LOTDT='" & Format(strLotdt, "yyyy-MM-dd") & "'  and a.pjtc<>c.tc  and c.TRNTYPE<>'JV' and c.TRNTYPE<>'JV' and isnull(a.opflg,'N')='N' Order by c.VOCDT,c.VOCNO"
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        If Rst1("DEBIT") > 0 Then
            DB.Execute "UPDATE RM_MIS_CottonPayAdv1 SET BalAmt=BalAmt-" & Rst1("DEBIT") & ",Pay80PerAmt=" & Rst1("DEBIT") & ",Pay80PerDt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "',Per80ActPaiddt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "'"
        End If
    End If
    
    strQry = ";WITH CTE AS(SELECT a.DIVCODE, c.VOCDT,ISNULL(c.AMOUNT,0) DEBIT, ROW_NUMBER() OVER (ORDER BY C.VOCNO) AS RowNum "
    strQry = strQry & " FROM RM_LOT AS a INNER JOIN"
    strQry = strQry & " FA_APAYM AS b ON a.DIVCODE = b.DIVCODE AND a.PJTC = b.TC "
    strQry = strQry & " AND a.PJNO = b.VOCNO AND a.PJDT = b.VOCDT"
    strQry = strQry & " AND a.SUPCD = b.SLCODE INNER JOIN"
    strQry = strQry & " FA_APDBTL AS c ON b.DIVCODE = c.DIVCODE AND b.SLCODE = c.SLCODE AND b.TC = c.REFTC"
    strQry = strQry & " AND b.VOCDT = c.REFVOCDT AND b.VOCNO = c.REFVOCNO AND b.VOCSNO = c.REFVOCSNO"
    strQry = strQry & " Where a.DIVCODE='" & Divcode & "' and a.LOTNO=" & strLotNo & " "
    strQry = strQry & " and LOTDT='" & Format(strLotdt, "yyyy-MM-dd") & "' and a.pjtc<>c.tc  and c.TRNTYPE<>'JV' and isnull(a.opflg,'N')='N'   )SELECT *FROM CTE WHERE RowNum = 2 "
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        If Rst1("DEBIT") > 0 Then
            DB.Execute "UPDATE RM_MIS_CottonPayAdv1 SET BalAmt=BalAmt-" & Rst1("DEBIT") & ",Pay15PerAmt=" & Rst1("DEBIT") & ",Pay15PerDt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "',Per15ActPaiddt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "'"
        End If
    End If
    
    strQry = ";WITH CTE AS(SELECT  a.DIVCODE, c.VOCDT,ISNULL(c.AMOUNT,0)DEBIT , ROW_NUMBER() OVER (ORDER BY C.VOCNO) AS RowNum "
    strQry = strQry & " FROM RM_LOT AS a INNER JOIN"
    strQry = strQry & " FA_APAYM AS b ON a.DIVCODE = b.DIVCODE AND a.PJTC = b.TC "
    strQry = strQry & " AND a.PJNO = b.VOCNO AND a.PJDT = b.VOCDT"
    strQry = strQry & " AND a.SUPCD = b.SLCODE INNER JOIN"
    strQry = strQry & " FA_APDBTL AS c ON b.DIVCODE = c.DIVCODE AND b.SLCODE = c.SLCODE AND b.TC = c.REFTC"
    strQry = strQry & " AND b.VOCDT = c.REFVOCDT AND b.VOCNO = c.REFVOCNO AND b.VOCSNO = c.REFVOCSNO"
    strQry = strQry & " Where a.DIVCODE='" & Divcode & "' and a.LOTNO=" & strLotNo & " "
    strQry = strQry & " and LOTDT='" & Format(strLotdt, "yyyy-MM-dd") & "'  and a.pjtc<>c.tc and c.TRNTYPE<>'JV' and isnull(a.opflg,'N')='N'  )SELECT *FROM CTE WHERE RowNum = 3 "
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        If Rst1("DEBIT") > 0 Then
            DB.Execute "UPDATE RM_MIS_CottonPayAdv1 SET BalAmt=BalAmt-" & Rst1("DEBIT") & ",Pay2PerAmt=" & Rst1("DEBIT") & ",Pay2PerDt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "',Per2ActPaiddt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "'"
        End If
    End If
    
    strQry = ";WITH CTE AS(SELECT Top 4 a.DIVCODE, c.VOCDT,ISNULL(c.AMOUNT,0)DEBIT  , ROW_NUMBER() OVER (ORDER BY C.VOCNO) AS RowNum "
    strQry = strQry & " FROM RM_LOT AS a INNER JOIN"
    strQry = strQry & " FA_APAYM AS b ON a.DIVCODE = b.DIVCODE AND a.PJTC = b.TC "
    strQry = strQry & " AND a.PJNO = b.VOCNO AND a.PJDT = b.VOCDT"
    strQry = strQry & " AND a.SUPCD = b.SLCODE INNER JOIN"
    strQry = strQry & " FA_APDBTL AS c ON b.DIVCODE = c.DIVCODE AND b.SLCODE = c.SLCODE AND b.TC = c.REFTC"
    strQry = strQry & " AND b.VOCDT = c.REFVOCDT AND b.VOCNO = c.REFVOCNO AND b.VOCSNO = c.REFVOCSNO"
    strQry = strQry & " Where a.DIVCODE='" & Divcode & "' and a.LOTNO=" & strLotNo & " "
    strQry = strQry & " and LOTDT='" & Format(strLotdt, "yyyy-MM-dd") & "' and a.pjtc<>c.tc  and c.TRNTYPE<>'JV' and isnull(a.opflg,'N')='N' )SELECT *FROM CTE WHERE RowNum = 4 "
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        If Rst1("DEBIT") > 0 And Rst1.RecordCount = 2 Then
            DB.Execute "UPDATE RM_MIS_CottonPayAdv1 SET Pay100PerDt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "',Per100ActPaiddt='" & Format(Rst1("VOCDT"), "yyyy-MM-dd") & "'"
        End If
    End If
    
'    CrystalReport1.Reset
'    CrystalReport1.Connect = ConnectionString
'    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\MIS\CottonPayRpt.rpt"
'    CrystalReport1.Formulas(0) = "Divname='" & divname & "'"
'    CrystalReport1.Formulas(1) = "rpthead='Lot No.: " & strLotNo & " & Date: " & Format(strLotdt, "dd/MM/yy") & " '"
'    CrystalReport1.WindowState = 2
'    CrystalReport1.WindowShowPrintSetupBtn = True
'    SendKeys "{ENTER}"
'    CrystalReport1.Action = True

     Dim clsCryRpt As New clsCrystal
        
        If UCase(CustID) = "COTTON" And UCase(divabbr) = "SCMTS" Then
            Set clsCryRpt.cryRept = Cry_Scm_Cottonpayment
        Else
            Set clsCryRpt.cryRept = Cry_CottonPayment
        End If
        
        clsCryRpt.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
'        CrystalReport1.ParameterFields(1) = "@OrdDate;" & Format(cdt, "yyyy-MM-dd") & ""
'        CrystalReport1.ParameterFields(2) = "@OrdNo;" & cno & ""
'
        CrystalReport1.Formulas(0) = "Divname='" & divname & "'"
        CrystalReport1.Formulas(1) = "rpthead='Lot No.: " & strLotNo & " & Date: " & Format(strLotdt, "dd/MM/yy") & " '"
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowPrintBtn = True
        CrystalReport1.WindowShowExportBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0



'
'    Dim cry As New clsCrystal
'    Set cry.cryRept = Cry_CottonPaymentRpt
''    Set cry.cryRept = RepMIS
'    cry.CrystalPrint
'
'
'    With CrystalReport1
'
'        .Reset
'        .Connect = ConnectionString
'        .ReportFileName = KALFOLDERDATA & "RepMIS.rpt"
''        .Formulas(0) = "Divname='" & divname & "'"
''        .Formulas(1) = "Add1='" & SUBTITLE & "'"
''        .Formulas(2) = "RptHead='Daily MIS Report on " & Format(DTPicker1.Value, "dd/MM/yy") & "' "
'         .Formulas(0) = "Divname='" & divname & "'"
'         .Formulas(1) = "rpthead='Lot No.: " & strLotNo & " & Date: " & Format(strLotdt, "dd/MM/yy") & " '"
''
'        .WindowShowPrintSetupBtn = True
'        .WindowShowSearchBtn = True
'        .WindowState = crptMaximized
'        .Action = 2
'
'
'    End With
'
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure of Form ", vbInformation, head
  
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub

Private Sub DTPicker1_CloseUp()
    Call load_combo
End Sub

Private Sub DTPicker2_CloseUp()
    Call load_combo
End Sub

Private Sub Form_Load()
    Call openconnection
    
    DTPicker1.value = mfdate
    DTPicker2.value = pdate
    Call load_combo
    
End Sub
Private Sub load_combo()
    
    
    strQry = "select Distinct b.slname+' -- '+b.slcode as slname,b.slcode from rm_lot a,FA_SLMAS b"
    strQry = strQry & " Where a.SUPCD = b.slcode"
    strQry = strQry & " and a.DIVCODE='" & Divcode & "' "
    strQry = strQry & " and a.ARRDT Between '" & Format(DTPicker1.value, "yyyy-MM-dd") & "' and '" & Format(DTPicker2.value, "yyyy-MM-dd") & "'"
    
    Combo1.Clear
    Combo2.Clear
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        Combo1.Text = Rst1(0)
        Do While Not Rst1.EOF
            Combo1.AddItem Rst1(0)
            Rst1.MoveNext
        Loop
        
    End If
    
    load_comboLot
    
End Sub

Private Sub load_comboLot()
    
    
    strSupp = Trim(Mid(Combo1.Text, InStr(Combo1.Text, "--") + 2))
    
    strQry = "select Distinct convert(varchar,a.LotNo)+'  --  '+convert(varchar,a.Lotdt,103) as Lotname,a.Lotno from rm_lot a,FA_SLMAS b"
    strQry = strQry & " Where a.SUPCD = b.slcode"
    strQry = strQry & " and a.DIVCODE='" & Divcode & "' and a.SUPCD='" & strSupp & "' "
    strQry = strQry & " and a.ARRDT Between '" & Format(DTPicker1.value, "yyyy-MM-dd") & "' and '" & Format(DTPicker2.value, "yyyy-MM-dd") & "' order by a.Lotno"
    
    Combo2.Clear
    Set Rst1 = New ADODB.Recordset
    Rst1.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not Rst1.EOF Then
        Combo2.Text = Rst1(0)
        Do While Not Rst1.EOF
            
            Combo2.AddItem Rst1(0)
            Rst1.MoveNext
        Loop
    End If
End Sub


