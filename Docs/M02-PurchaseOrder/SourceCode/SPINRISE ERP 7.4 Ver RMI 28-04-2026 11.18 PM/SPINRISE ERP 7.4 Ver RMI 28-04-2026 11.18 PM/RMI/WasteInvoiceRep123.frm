VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form WasteInvoiceRep1 
   Caption         =   "Waste Invoice Printing"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
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
      Height          =   3180
      Left            =   1440
      TabIndex        =   0
      Top             =   1620
      Width           =   7455
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   1890
         TabIndex        =   2
         Top             =   2070
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4125
         TabIndex        =   1
         Top             =   2055
         Width           =   1365
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   3600
         TabIndex        =   3
         Top             =   1080
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Pre Prented Invoice"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   360
         Index           =   1
         Left            =   -15
         TabIndex        =   5
         Top             =   135
         Width           =   7455
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
         Index           =   0
         Left            =   1440
         TabIndex        =   4
         Top             =   1125
         Width           =   1920
      End
   End
End
Attribute VB_Name = "WasteInvoiceRep1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection
Dim RPTV As Report.ReportView
Dim a As Integer
Dim wt As Double, TotPacks As Double, TotValue As Double
Dim rss As New Recordset
Dim rs1 As New Recordset
Dim gpass As New Recordset

Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
On Error GoTo KSLRound_Error

Set rrs = New Recordset
rrs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
KSLRound = rrs(0)

Exit Function
KSLRound_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KSLRound of Form WasteInvoiceRep1", vbInformation, head
Screen.MousePointer = 0
End Function



Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form WasteInvoiceRep1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Provider = "msdatashape"
DB.Open connectstring
Set Rs = New Recordset
Rs.Open "Select distinct inv_no inv from IG_RINVDT where INV_TYPE like 'W%' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
If Rs.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, head: Command1.Enabled = False: Exit Sub
Set DataCombo1.RowSource = Rs
DataCombo1.ListField = "inv"
If Not Rs.EOF Then
    DataCombo1.Text = Rs(0)
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form WasteInvoiceRep1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Set cnn = New Connection
cnn.Open connectstring
Dim TotValue As Double
Set RPTV = New Report.ReportView
Set RS2 = New Recordset
RS2.Open "select distinct a.inv_no,a.date,a.cust_code,b.slname,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,c.name as city,a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,a.pay_mode,tngst,a.vehicle_no,PACKS,PRODUCT_cODE" & _
         " from ig_Rinvhd a,fa_slmas b,ig_Rinvdt e,ig_area c,ig_area d,ig_Rbohd f where a.inv_no= f.inv_no and a.divcode='" & Divcode & "' and a.inv_no = '" & DataCombo1.Text & "' AND A.INV_TYPE LIKE 'W%' AND A.BO_NO=F.BO_NO and a.inv_TYPE=e.inv_TYPE  and a.inv_no=e.inv_no and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code", cnn, adOpenStatic, adLockOptimistic
If RS2.EOF = True Then
    MsgBox "No Records found for selected Invoice Number", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

a = FreeFile
Close
Open "C:\prd1.TXT" For Output As #a
TotPacks = 0
If Not RS2.EOF Then RS2.MoveFirst
'Do While Not rs2.EOF
 
 For i = 1 To 2
   If RS2("pay_mode") = "P" Then pay1 = "CASH BILL"
   If RS2("pay_mode") = "D" Then pay1 = "CREDIT BILL"
   Print #a,
 Next
  
    Print #a, Space(5) + Space(28) + Chr(14) + Padr(pay1, 25, " ")
    
    For i = 1 To 5
        Print #a,
    Next
   Print #a, Space(60)
   Print #a,
   Print #a, Space(5) + Padr(CStr(RS2("slname")), 42, " ") + Space(2) + Padl(" ", 2, " "); Space(5) + Chr(14) + Padl(val(Right(RS2(0), 6)), 6, " ") + Chr(18)
   Print #a, Space(5) + Padr(CStr(RS2("add1")), 42, " ")
   Print #a, Space(5) + Padr(CStr(RS2("add2")), 42, " ") + Padl(" ", 2, " ") + Space(2) + Padl(" ", 2, " "); Space(12) + Padr(Format(RS2("date"), "dd/mm/yyyy"), 10, " ")
   Print #a, Space(5) + Padr(CStr(RS2("add3")), 42, " ")
   If RS2("pay_mode") = "D" Then pay = "PAID"
   If RS2("pay_mode") = "A" Then pay = "PAID"
   If RS2("pay_mode") = "P" Then pay = "PAID"
   Print #a, Space(5) + Padr("TNGST : ", 8, " ") + Padr(RS2("tngst"), 34, " ") + Padl(" ", 2, " ") + Space(5) + Padl(" ", 2, " "); Space(9) + Padr(pay, 26, " ")
   For i = 1 To 5
       Print #a, Space(60)
   Next
   Print #a, Space(5) + Padr("Lorry No : ", 10, " ") + Padr(RS2("vehicle_no"), 40, " ")
   For i = 1 To 5
       Print #a, Space(60)
   Next
   Set rs3 = New Recordset
   'rs3.Open "select distinct a.product_code,b.description,a.packs,a.nett_kgs,a.rate_nett,a.bed_per,a.bed_amt,ISNULL(a.aed_per,' ') AS aed_per,a.aed_amt,a.value,a.rate_ex,A.CHARITY,F.TOTAL_AMT,a.tax_per,isnull(a.lsc_per,0) as lsc_per,isnull(cess_per,0) as cess_per from ig_Rinvdt a,ig_product b,ig_Rbodt d,IG_RINVHD F where a.inv_no= f.inv_no and  a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and A.inv_no between '" & v & "' and '" & w & "'and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' AND DATE='" & Format(rs2("DATE"), "YYYY/MM/DD") & "'", cnn, adOpenStatic, adLockBatchOptimistic
   rs3.Open "SELECT DISTINCT C.DESCRIPTION,A.PACKS,A.NETT_KGS,A.RATE_EX,VALUE,B.MATL_VALUE FROM IG_RINVDT A,IG_RINVHD B,IG_RPRODUCT C Where a.INV_TYPE = B.INV_TYPE And a.INV_NO = B.INV_NO And a.PRODUCT_CODE = c.PRODUCT_CODE AND A.INV_NO='" & DataCombo1.Text & "' AND A.INV_TYPE LIKE 'W%' AND A.DIVCODE='" & Divcode & "' AND A.DIVCODE=B.DIVCODE ", cnn, adOpenStatic, adLockBatchOptimistic
    NO_OF_PACKS = 0
   C = 1: Ct = 26
   While Not rs3.EOF
        Dim PACKTYPERS As Recordset
        Set PACKTYPERS = New Recordset
        PACKTYPERS.Open "SELECT PRODUCT_CODE,B.PACK_TYPE,A.DESCRIPTION PACK FROM IG_PACKTYPE A,IG_RPRODUCT B WHERE A.PACK_TYPE=B.PACK_TYPE AND PRODUCT_CODE='" & RS2!PRODUCT_CODE & "' and b.DivCode ='" & Divcode & "'", DB, adOpenStatic
        words = Padr(rs3("description"), 18, " ") & " " & Padl(rs3("PACKS"), 3, " ") & " " & PACKTYPERS!PACK
        NO_OF_PACKS = NO_OF_PACKS + rs3("PACKS")
        If Len(words) > 30 Then
           Print #a, Space(5) + Padr(C, 2, " ") + Space(4) + Padr(Left(words, InStrRev(Left(words, 30), " ")), 30, " ") + Space(4) + Padl(CStr(rs3("packs")), 6, " ") + Space(2) + Space(0); Padl(CStr(INF(rs3("RATE_EX"), 2)), 11, " ") + Space(0) + Padl(CStr(INF(rs3("value"), 2)), 15, " ")
           Print #a, Space(7 + 4) + Padr(Mid$(words, InStrRev(Left(words, 30), " ") + 1, Len(words)), 30, " ")
           C = C + 1
           Ct = Ct - 2
        Else
           Print #a, Space(5) + Padr(C, 2, " ") + Space(4) + Padl(words, 30, " ") + Space(8) + Padl(INF(rs3("NETT_KGS"), 2), 8, " ") + Space(0) + Space(0); Padl(CStr(INF(rs3("RATE_EX"), 2)), 10, " ") + Space(0) + Padl(CStr(INF(rs3("value"), 2)), 14, " ")
           C = C + 1
           Ct = Ct - 1
        End If
        TotValue = TotValue + rs3("value")
        totrate_ex = totrate_ex + rs3("rate_ex")
        TotPacks = TotPacks + rs3("NETT_KGS")
        rs3.MoveNext
   Wend
   Print #a, 'Space(6) + Space(39 + 2) + String(6 + 2 + 11 + 19, "-")
   'Print #a, Space(6) + Space(9) + Padr("GROSS VALUE", 8, " ") + Padl(NO_OF_PACKS, 10, " ") + Space(13) + Space(2) + Padl(INF(TotPacks, 2), 8, " ") + Space(0) + Space(1); Padl(CStr(INF(totrate_ex, 2)), 10, " ") + Space(0) + Padl(CStr(INF(TotValue, 2)), 14, " ")
   Print #a, Space(6) + Space(6) + Padr("GROSS VALUE", 11, " ") + Space(1) + Padl(NO_OF_PACKS, 10, " ") + Space(13) + Space(2) + Padl(INF(TotPacks, 2), 8, " ") + Space(0) + Space(1); Space(9) + Padl(CStr(INF(TotValue, 2)), 14, " ")
   Set taxpar = New Recordset
    taxpar.Open "select description ,SC_PER from ig_tax a,ig_Rinvdt b where a.tax_code=b.tax_code and b.inv_no= '" & DataCombo1.Text & "' and b.DivCode ='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
    Set rs1 = New Recordset
   rs1.Open "SELECT DISTINCT A.CESS_PER,A.CESS_AMT,A.CHARITY,A.BED_AMT,D.TAX_PER,D.LSC_PER,A.AED_AMT,A.TAX_AMT,RND_OFF,TOTAL_AMT,A.LSC_AMT FROM IG_RINVHD A,IG_RPRODUCT B,IG_PRODUCTTYPE C,IG_RINVDT D WHERE A.INV_NO=D.INV_NO AND A.INV_TYPE=D.INV_TYPE AND D.PRODUCT_CODE=B.PRODUCT_CODE AND B.PRODUCT_TYPE=C.PRODUCT_TYPE AND A.INV_NO='" & DataCombo1.Text & "' AND A.INV_TYPE LIKE 'W%' and a.DivCode ='" & Divcode & "'", cnn, adOpenStatic, adLockBatchOptimistic
   If rs1.RecordCount > 0 Then
        Print #a, Space(6) + Space(9) + Padr("ADD : Cess      @", 17, " ") & Space(1) & Padl(INF(rs1("cess_per"), 2), 7, " ") & "%" & Space(25) & Padl(CStr(INF(Round(rs1("CESS_AMT"), 2), 2)), 15, " ")
    End If
    If taxpar.RecordCount > 0 Then Taxamt = 4 Else Taxamt = 0
   Print #a, Space(6) + Space(9) + Padr("ADD : TNGST     @", 17, " ") + Space(1) + Padl(INF(Taxamt, 2), 7, " ") & "%" & Space(25);
   If rs1.RecordCount > 0 Then
        Print #a, Padl(CStr(INF(rs1("TAX_AMT"), 2)), 15, " ") + Space(2)
    Else
        Print #a,
    End If
   Print #a, Space(6) + Space(9) + Padr("ADD : Surcharge @", 17, " ") + Space(1) + Padl(INF("5", 2), 7, " ") & "%" & Space(25);
   If rs1.RecordCount > 0 Then
        Print #a, Padl(CStr(INF(rs1("LSC_AMT"), 2)), 15, " ")
    Else
        Print #a,
    End If
    
   Print #a, Space(6) + Space(9) + Padr("ADD : RND OFF   @", 17, " ") + Space(1) + Space(33);
   If rs1.RecordCount > 0 Then
    Print #a, Padl(CStr(INF(rs1("RND_OFF"), 2)), 15, " ")
    Else
        Print #a,
    End If
   Ct = Ct - 6
   
   '***** TO PRINT PACK NOS *****'
   Dim tmprs As Recordset
   Set tmprs = New Recordset
   tmprs.Open "select a.inv_no,spack_no,epack_no from ig_rinvdt a,ig_rproduct b,ig_rbodt d,ig_rbohd e,IG_rINVHD F where e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.INV_NO= F.INV_NO AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and " & _
              "a.divcode='" & Divcode & "' and a.inv_type like 'W%' and a.inv_no='" & DataCombo1.Text & "' and a.divcode=b.divcode and a.product_code=b.product_code AND f.DATE='" & Format(RS2("date"), "yyyy/mm/dd") & "' ", cnn, adOpenStatic, adLockBatchOptimistic
                 
   While Not tmprs.EOF
      If tmprs("spack_no") <> tmprs("epack_no") Then
         STRPACKNO = STRPACKNO + CStr(tmprs("spack_no")) + "-" + CStr(tmprs("epack_no")) + ","
      Else
         STRPACKNO = STRPACKNO + CStr(tmprs("spack_no")) + ","
      End If
      tmprs.MoveNext
   Wend
   narration = STRPACKNO
   narration = STRPACKNO
     startpt = IIf(InStrRev(Left(narration, 63), ",") = 0, 63, InStrRev(Left(narration, 63), ","))
     If Len(narration) > 63 Then narr1a = Mid$(narration, 1, startpt) Else narr1a = narration
     If Len(narration) > 63 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
     startpt = IIf(InStrRev(Left(narration, 63), ",") = 0, 63, InStrRev(Left(narration, 63), ","))
     If Len(narration) > 63 Then narr2a = Mid$(narration, 1, startpt) Else narr2a = narration
     If Len(narration) > 63 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
     startpt = IIf(InStrRev(Left(narration, 63), ",") = 0, 63, InStrRev(Left(narration, 63), ","))
     If Len(narration) > 63 Then narr3a = Mid$(narration, 1, startpt) Else narr3a = narration
     If Len(narration) > 63 Then narration = Trim(Right(narration, Len(narration) - startpt)) Else narration = ""
     startpt = IIf(InStrRev(Left(narration, 63), ",") = 0, 63, InStrRev(Left(narration, 63), ","))
     If Len(narration) > 63 Then narr4a = Mid$(narration, 1, startpt) Else narr4a = narration
     If Len(narr1a) > 2 Then narr1a = Mid$(narr1a, 1, Len(narr1a) - 1)
     If Len(narr2a) > 2 Then narr2a = Mid$(narr2a, 1, Len(narr2a) - 1)
     If Len(narr3a) > 2 Then narr3a = Mid$(narr3a, 1, Len(narr3a) - 1)
     If Len(narr4a) > 2 Then narr4a = Mid$(narr4a, 1, Len(narr4a) - 1)
                         
     Print #a, ' Space(9); Padr(narr1a, 63, " ")
     Print #a, 'Space(9); Padr(narr2a, 63, " ")
     Print #a, 'Space(9); Padr(narr3a, 63, " ")
     Print #a, 'Space(9); Padr(narr4a, 63, " ")
     Ct = Ct - 5
            '***** END *****'
   
   For i = 1 To Ct
       Print #a,
   Next
   If rs1.RecordCount > 0 Then
        TotValue = TotValue + rs1("CESS_AMT") + rs1("LSC_AMT") + rs1("TAX_AMT") + rs1("RND_OFF")
    Else
        TotValue = TotValue
    End If
   Print #a, Space(6) + Space(44) + Padl(INF(TotPacks, 2), 6, " ") + Space(0) + Space(0); Space(10) + Padl(CStr(INF(TotValue, 2)), 15, " ")
   Print #a,
   Print #a,
   Print #a,
   d = Num_To_Word(TotValue)
   Print #a, Space(5) & Padr(d, 60, " ")
'   rs2.MoveNext
'Loop
Close #a
a = FreeFile
Open "c:\prd1.bat" For Output As #a
Print #a, "cd\"
Print #a, "c:"
Print #a, "cd\"
Print #a, "type prd1.txt>prn"
Close #a
RPTV.txtfile = "c:\prd1.txt"
RPTV.Batfile = "c:\prd1.bat"

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form WasteInvoiceRep1", vbInformation, head
Screen.MousePointer = 0
End Sub

