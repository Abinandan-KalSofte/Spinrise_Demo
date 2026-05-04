VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form wasteinvoice 
   Caption         =   "Waste Invoice"
   ClientHeight    =   6855
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10965
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6855
   ScaleWidth      =   10965
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   2535
      Left            =   2340
      TabIndex        =   0
      Top             =   1800
      Width           =   5955
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         Height          =   345
         Left            =   2535
         TabIndex        =   2
         Top             =   1845
         Width           =   1125
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         Height          =   330
         Left            =   900
         TabIndex        =   1
         Top             =   1860
         Width           =   1095
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2670
         TabIndex        =   3
         Top             =   930
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label1 
         Caption         =   "Select Invoice No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   510
         TabIndex        =   5
         Top             =   975
         Width           =   1920
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Waste Invoice"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   30
         TabIndex        =   4
         Top             =   135
         Width           =   5895
      End
   End
End
Attribute VB_Name = "wasteinvoice"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection
Dim RPTV As Report.ReportView
Dim a As Integer
Dim wt As Double, TotPacks As Double, TotValue As Double
Dim Rss As New Recordset
Dim rs1 As New Recordset

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Set RPTV = New Report.ReportView
a = FreeFile

wt = 0
TotPacks = 0
TotValue = 0

Close
Open "C:\WasteInv.TXT" For Output As #a
Print #a,
Print #a,
Print #a,
Print #a, Space(5) & Space(1)
Print #a, Space(5) & Space(1) & CENTRE(Trim(DIVNAME), 82, " ") & Space(1)
Set Rs = New Recordset
Rs.Open "select divname, isnull(add1,'') add1, isnull(add2,'')add2 , isnull(add3,'') add3, isnull(city,'') city,tngst, cgst, cgstdt,TNGSTDT,pincode from pp_divmas where divcode = '" & Divcode & "'", DB, adOpenStatic
Print #a, Space(5) & Space(1) & CENTRE(Trim(Rs("add1")), 82, " ") & Space(1)
If Len(Rs("add2")) > 0 Then Print #a, Space(5) & Space(1) & CENTRE(Trim(Rs("add2")), 82, " ") & Space(2)
If Len(Rs("add3")) > 0 Then Print #a, Space(5) & Space(1) & CENTRE(Trim(Rs("add3")), 82, " ") & Space(2)
If Len(Rs("city")) > 0 Then Print #a, Space(5) & Space(1) & CENTRE(Trim(Rs("city") & " - " & Rs("pincode")), 82, " ") & Space(2)
Print #a, Space(6); String(82, "~")
Print #a, Space(6); CENTRE("W A S T E     I N V O I C E", 82, " ")
Print #a, Space(6)
Print #a, Space(6)
Print #a, Space(49) & "TNGST No : " + Padr(Rs("TNGST") & " Dt. " & Format(Rs("TNGSTDT"), "dd.mm.yyyy"), 40, " ")
Print #a, Space(49) & "CST No   : " + Padr(Rs("cgst") & " Dt. " & Format(Rs("cgstdt"), "dd.mm.yyyy"), 40, " ")
Print #a, Space(6) & Space(83) & Space(1)
Print #a, Space(5) & Space(1)
Set Rss = New Recordset
Rss.Open "SELECT DATE,INV_NO FROM IG_RINVHD WHERE INV_NO='" & DataCombo1.Text & "' AND INV_TYPE LIKE 'W%' and DivCode ='" & Divcode & "'", DB, adOpenStatic
Set Rs = New Recordset
Rs.Open "select a.vehicle_no, a.cons_add1, a.cons_add2, a.cons_add3,cust_code from IG_RINVHD a where a.divcode = '" & Divcode & "' and inv_no = '" & DataCombo1.Text & "'", DB, adOpenStatic, adLockReadOnly
Print #a, Space(5); Space(42); "INVOICE NO :  "; Padl(val(Right(Rss("INV_NO"), 6)), 10, " ")
Print #a, Space(5); Space(42); "DATE       :  "; Padr(Format(Rss("DATE"), "DD/MM/YYYY"), 10, " ")
Print #a, Space(5)
Print #a, Space(5) & Space(1) & "TO" & Space(80)
Set rs1 = New Recordset
rs1.Open "SELECT SLNAME,ISNULL(ADD1,'') ADD1,ISNULL(ADD2,'')ADD2,ISNULL(ADD3,'') ADD3,ISNULL(CITY,'')CITY,ISNULL(PIN,'') AS  PINCODE from fa_slmas where slcode='" & Rs("cust_code") & "'", DB, adOpenStatic
If rs1.RecordCount > 0 Then
    Print #a, Space(8) & Padr(rs1("slname"), 35, " ") + Space(52)
    Print #a, Space(8) & Padr(rs1("ADD1"), 30, " ") + Space(57)
    Print #a, Space(8) & Padr(rs1("ADD2"), 30, " ") + Space(57)
    Print #a, Space(8) & Padr(rs1("ADD3"), 30, " ") + Space(57)
    If rs1("PINCODE") <> "" Then
        Print #a, Space(8) & Padr(rs1("CITY") & " - " & rs1("PINCODE"), 30, " ") + Space(57)
    End If
End If
Print #a, Space(6); String(85, "~")
Print #a, Space(6); "DESCRIPTION  OF GOODS             BALES          KGS       RATE/QNTL.          AMOUNT"
Print #a, Space(6); String(85, "~")
Set Rs = New Recordset
Rs.Open "select a.description, b.packs, b.nett_kgs, b.rate_ex, b.value from ig_rproduct a, IG_RINVDT b where a.divcode = b.divcode and a.product_code = b.product_code and b.inv_no = '" & DataCombo1.Text & "' and a.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
Rs.MoveFirst
wt = 0
TotPacks = 0
TotValue = 0
Do While Not Rs.EOF
    Print #a, Space(5) & Space(1) & Padr(Rs("description"), 26, " ") & Space(2) & Padl(Rs("packs"), 11, " ") & Padl(INF(Rs("nett_kgs"), 3), 13, " ") & Space(1) & Padl(INF(Rs("rate_ex") * 100, 2), 16, " ") & Space(1) & Padl(INF(Rs("nett_kgs") * Rs("rate_ex"), 2), 15, " ")
    wt = wt + Rs("nett_kgs")
    TotPacks = TotPacks + Rs("packs")
    TotValue = TotValue + (Rs("nett_kgs") * Rs("rate_ex"))
    Rs.MoveNext
Loop
Print #a, Space(6); String(85, "~")
Set Rs = New Recordset
Rs.Open "select  ISNULL(B.CESS_PER,0) AS CESS_PER,SUM(ISNULL(B.CESS_AMT,0)) AS CESS_AMT,tax_per,sum(A.tax_amt) AS TAX_AMT,lsc_per,sum(A.lsc_amt) AS LSC_AMT,B.Total_amt from IG_RINVDT A,IG_RINVHD B where A.inv_no= '" & DataCombo1.Text & "' AND A.INV_NO=B.INV_NO AND A.INV_TYPE=B.INV_TYPE a.DivCode = b.DivCode and a.DivCode = '" & Divcode & "' group by tax_per,lsc_per,B.CESS_PER,b.total_amt ", DB, adOpenStatic
Print #a, Space(6)
Print #a, Space(6); "CESS      @ "; Rs(0); " ST  Rs.  " & Padl(INF(TotValue, 2), 10, " ") & Space(30); Padl(INF(Rs("CESS_AMT"), 2), 20, " ")
Print #a, Space(5)
Print #a, Space(6); "SALES TAX @ "; Rs(2); " ST  Rs.  " & Padl(INF(TotValue + Rs("cess_amt"), 2), 10, " ") & Space(30); Padl(INF(Rs("TAX_AMT"), 2), 20, " ")
Print #a, Space(5)
Print #a, Space(6); Space(43); "SURCHARGE  "; Padl(Rs("LSC_PER"), 3, " "); "% ON TAX"; Padl(INF(Rs("LSC_AMT"), 2), 20, " ")
Print #a, Space(5)
Print #a, Space(6); Space(43); "PACKING               "; Padl(Format("0.00", "#0.00"), 20, " ") ' Padl(INF(rs("LSC_AMT"), 2), 20, " ")
Print #a, Space(5)
Print #a, Space(6); Space(43); "HANDLING CHARGES      "; Padl(Format("0.00", "#0.00"), 20, " ") 'Padl(INF(rs("LSC_AMT"), 2), 20, " ")
Print #a, Space(5)
'Print #a, Space(6); Space(43) & Padl(rs("CESS_PER"), 3, " ") & " % ON TURNOVER"; Space(5); Padl(INF(rs("LSC_AMT"), 2), 20, " ")
'Print #a, Space(5)
Print #a, Space(6); Space(43); "NET TOTAL             "; Padl(INF(Rs("total_AMT"), 2), 20, " ")
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(60)
Print #a, Space(5) & Space(1) & "Prepared By" & Space(23) & "Checked By" & Space(23) & "Accounts   Officer  " & Space(1)

Close #a
a = FreeFile
Open "C:\WasteInv.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type WasteInv.TXT>prn"
Close #a
RPTV.txtfile = "C:\WasteInv.TXT"
RPTV.Batfile = "C:\WasteInv.bat"

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form wasteinvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form wasteinvoice", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()

On Error GoTo Form_Load_Error

Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Provider = "msdatashape"
DB.Open connectstring

Set Rs = New Recordset
'RS.Open "Select distinct inv_no inv from IG_RINVDT where INV_TYPE = 'WS'", DB, adOpenStatic, adLockReadOnly
Rs.Open "Select distinct inv_no inv from ig_Rinvdt where INV_TYPE like 'W%' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
Set DataCombo1.RowSource = Rs
DataCombo1.ListField = "inv"
If Not Rs.EOF Then
    DataCombo1.Text = Rs(0)
Else
Command1.Enabled = False
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form wasteinvoice", vbInformation, head
Screen.MousePointer = 0

End Sub



