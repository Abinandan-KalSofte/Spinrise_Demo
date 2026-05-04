VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmDeliveryChallan 
   Caption         =   "Delivery Challan"
   ClientHeight    =   6675
   ClientLeft      =   2955
   ClientTop       =   2295
   ClientWidth     =   8445
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6675
   ScaleWidth      =   8445
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   600
      Top             =   3600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Crystal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   4560
      TabIndex        =   13
      Top             =   5760
      Width           =   1395
   End
   Begin VB.Frame Frame1 
      Height          =   2745
      Left            =   1590
      TabIndex        =   3
      Top             =   2760
      Width           =   6405
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2460
         TabIndex        =   11
         Top             =   2040
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2460
         TabIndex        =   10
         Top             =   1560
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2460
         TabIndex        =   9
         Top             =   1080
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2460
         TabIndex        =   7
         Top             =   540
         Width           =   3375
         _ExtentX        =   5953
         _ExtentY        =   609
         _Version        =   393216
         Format          =   160366593
         CurrentDate     =   41871
      End
      Begin VB.Label Label2 
         Caption         =   "To Invoice"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1035
         TabIndex        =   12
         Top             =   2040
         Width           =   1305
      End
      Begin VB.Label Label1 
         Caption         =   "From Invoice"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1035
         TabIndex        =   8
         Top             =   1590
         Width           =   1305
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "            Delivery Challan "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   13.5
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   -975
         TabIndex        =   6
         Top             =   45
         Width           =   7365
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Date "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1035
         TabIndex        =   5
         Top             =   660
         Width           =   480
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Invoice Type "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1035
         TabIndex        =   4
         Top             =   1170
         Width           =   1185
      End
   End
   Begin VB.CommandButton cmd_Exit 
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
      Height          =   435
      Left            =   6360
      TabIndex        =   1
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton Cmd_windows 
      Caption         =   "&Pre Print"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   2520
      TabIndex        =   0
      Top             =   5760
      Width           =   1635
   End
   Begin Crystal.CrystalReport crr 
      Left            =   690
      Top             =   5940
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2940
      Left            =   1470
      TabIndex        =   2
      Top             =   2700
      Width           =   6600
      _ExtentX        =   11642
      _ExtentY        =   5186
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "frmDeliveryChallan.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "frmDeliveryChallan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Cmd_Exit_Click()
    intervalMinutes = -1
    Unload Me
End Sub

Private Sub Cmd_windows_Click()
    intervalMinutes = -1
    Screen.MousePointer = 11
    
Dim Jk As Recordset
Dim Rs As New Recordset
Dim rs1, rs2, rs3, rs4, rs5, RS6    As Recordset
Dim pack_no, pack_no1, pack_no2     As String
Dim pack_no3, pack_no4, pack_no5    As String
Dim OrderNo, OrderDate, Blend       As String
Dim Y1, y2, Rup, rup1, Date1        As String
Dim BEDPer, Eduper, HSCESSPER       As Double
Dim Cones, S1, s2                   As String
Dim SpakNo, EpakNo                  As String
Dim DblVat4 As Double
Dim DblVat1 As Double
Dim DblTaxper As Double
Dim cexinvno As String
Dim LotCode As String
Dim tpacks As Integer
Dim tkgs As Double
Dim tamt As Double
Dim BED_AMT As Double

Dim rstOrder As New ADODB.Recordset
Dim Rspack As New ADODB.Recordset
Dim sPendOrder(1 To 30) As String
Dim iPendOrdSno As Integer
Dim sPendProduct_code As String
Dim sPendContNo As String
Dim sPendContType As String

Dim X, Y, z As String

On Error GoTo Inv_PrePrintFormNEW_Error
Set Cnn = New Connection
Cnn.Open connectstring


Set rptv = New Report.ReportView
Close
Close #a
a = FreeFile
'Open "C:\PPINV.TXT" For Output As #a
Open KALFOLDERDATA & "\PPINV.TXT" For Output As #a
SR = CStr(pdate) + Space(2)
X = DataCombo2.Text
Y = DataCombo3.Text
z = Left(DataCombo1.Text, 2)
Date1 = Format(DTPicker1.value, "YYYY-MM-DD")
ltyear = Year(yfdate)

Set RS10 = New Recordset
RS10.Open "SELECT * FROM RM_CINVHD WHERE DIVCODE='" & Divcode & "' AND INV_NO BETWEEN '" & X & "' AND '" & Y & "' AND INV_TYPE='" & z & "'", DB

Do While Not RS10.EOF

pg1 = 1
va = 1
c = 0: I = 0
BEDPer = 0: Eduper = 0: HSCESSPER = 0
OrderNo = "": OrderDate = ""
Y1 = "": y2 = "": S1 = "": s2 = "": Blend = ""
Rup = "": rup1 = "": Cones = ""
pack_no1 = "": pack_no2 = "": pack_no3 = "": pack_no4 = "": pack_no5 = ""

sPendProduct_code = ""
sPendContType = ""
sPendContNo = ""
For I = 1 To 30
    sPendOrder(I) = ""
Next
iPendOrdSno = 0

Dim InvoiceColumn As String
Dim C1 As Integer
Set paramrs = New Recordset
paramrs.Open "select isnull(InvoiceParameter,'I') from ig_param where divcode='" & Divcode & "' ", Cnn, adOpenStatic
 
        Set invrs = New Recordset
        invrs.Open " Exec KSp_CottonSales_DC '" & Divcode & "' ,'" & X & "' ,  '" & Y & "',  '" & z & "' ,'" & ltyear & "','" & Date1 & "' ", Cnn, adOpenStatic
'        invrs.Open " Exec KSp_CottonSales_DC '" & Divcode & "' ,'" & X & "' ,  '" & Y & "',  '" & Z & "' ,'" & LocalIPAdd & "' ", Cnn, adOpenStatic

       If invrs.EOF = True Then
          MsgBox "No Records Found To Print ...!", vbInformation + vbOKOnly
          Set invrs = Nothing
          Exit Sub
       End If
 
        For I = 1 To 3
            Print #a,
        Next
    '''Invoice Details Print

'    Print #a, Space(1) + Space(76) + Padr(Format(Val(Right(invrs("inv_no"), 10)), "#0000"), 6, "")
'    Print #a, Space(1) + Space(76) + Padr(Format(invrs("date"), "dd-mm-yyyy"), 10, "")

    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    
     '''Consignee Details Print

    Print #a, Space(2) + Space(8) + Padr(invrs("consignee_name"), 43, " ")
    Print #a, Space(2) + Space(8) + Padr(invrs("consignee_add1"), 43, " ")
    Print #a, Space(2) + Space(8) + Padr(invrs("consignee_add2"), 43, " ")
    Print #a, Space(2) + Space(8) + Padr(invrs("consignee_add3"), 35, " ")
'    Print #a, Space(1) + Padr(invrs("f_city"), 43, " ") & "-" & Padr(invrs("f_pin"), 7, "");
    Print #a, Space(2) + Space(8) + Padr(invrs("consignee_city") & "   - " & invrs("consignee_pin"), 35, " ");
    Print #a, Space(1) & Space(7) & Format(Right(invrs("inv_no"), 5), "#0000") & Space(10) & Format(invrs("Date"), "DD-MM-YYYY")
'    Print #a, Space(1) + Space(10) + "PAN No : " & Padr(invrs("p_Pan"), 43, " ")
    Print #a, Space(2) + Space(8) + invrs("consignee_statename") '& "   - " & invrs("f_gststatecode")
'    Print #a, Space(1) + Space(5) + Padr(invrs("f_country"), 50, " ") ' & "   - " & invrs("f_gststatecode");
    Print #a, Space(1) + Space(10) + Padr(invrs("consignee_gstinno"), 43, " ")
    Print #a,
    Print #a,
    Print #a,
    
    ''Print Product Details
    SNO = 1
    invrs.MoveFirst
    Do While Not invrs.EOF
'
'    Set RsPack = New Recordset
'    RsPack.Open " select b.spack_no,Epack_no from ig_bohd a inner join ig_bodt b on a.DIVCODE=b.DIVCODE and a.bo_no =b.BO_NO and a.BO_TYPE =b.BO_TYPE " & _
'                " Where a.DIVCODE='" & divcode & "' and a.bo_type='" & U & "'  and  a.INV_TYPE='" & invrs("inv_type") & "' and a.inv_no between '" & invrs("inv_no") & "' and '" & invrs("inv_no") & "' and b.product_code ='" & invrs("Product_code") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
'    SpakNo = ""
'    EpakNo = ""
'
'    If Not RsPack.EOF Then
'        SpakNo = RsPack("spack_no")
'        EpakNo = RsPack("Epack_no")
'    Else
'        SpakNo = ""
'        EpakNo = ""
'    End If
  
    
''                       Sno                 HSN Code                                                Product Desc                                            Quantity                             Identification                                             Total Qty                                  Rate                                        Per                                               Amount
'    Print #a, Space(1) + Padr(Sno, 2, " ") & Space(2) & Padr(invrs("item_hsn"), 10, " ") & Space(1) & Padr(invrs("prod_desc"), 25, " ") & Space(2) & Padr(invrs("packs"), 6, " ") & Space(2) & Padr(SpakNo, 12, " ") & Space(2) & Padl(Format(invrs("nett_kgs"), "#0.00"), 7, " ") & Space(1) & Padl(Format(invrs("rate_ex"), "#0.00"), 7, " ") & Space(1) & Padr(invrs("uom"), 6, " ") & Space(2) & Padl(Format(invrs("itemTaxableValue"), "#0.00"), 12, " ")
'    Print #a, Space(1) + Space(45) + "TO " + Space(2) + Padr(EpakNo, 12, " ")
''    '                        Sno                         Product Desc                                         Total   Quantity                            Total KGS                                                              Amount
'    Print #a, Space(7) + Padr(SNO, 2, " ") & Space(2) & Padr(invrs("prod_desc"), 35, " ") & Space(2) & Padr(invrs("packs"), 6, " ") & Space(2) & Padl(Format(invrs("nett_kgs"), "#0.00"), 7, " ") & Space(4) & Padl(Format(invrs("itemTaxableValue"), "#0.00"), 12, " ")
        Print #a, Space(7) + Padr(SNO, 2, " ") & Space(2) & Padr(invrs("prod_desc"), 35, " ") & Space(2) & Padr(invrs("packs"), 6, " ") & Space(2) & Padl(Format(invrs("nett_kgs"), "#0.00"), 7, " ") ''& Space(4) & Padl(Format(invrs("itemTaxableValue"), "#0.00"), 12, " ")

    SNO = SNO + 1
    invrs.MoveNext
    Loop
    ''Print Product Details End

    invrs.MoveFirst
    Print #a,
        For I = SNO To 8
            Print #a,
        Next
  
    'Delivery Address and Taxable Vales
'    Print #a, Space(5) + Padr(invrs("consignee_name"), 43, " ") & Space(48) & Format(invrs("itemTaxableValue"), "#0.000")
'    Print #a, Space(5) + Padr(invrs("consignee_add1"), 43, " ") & Space(15) & "CGST @ " & Format(invrs("cgstper"), "#0.00") & "  OutWard " & Space(5) & Format(invrs("cgstper"), "#0.00") & Space(9) & Format(invrs("cgstamt"), "#0.00")
'    Print #a, Space(5) + Padr(invrs("consignee_add2"), 43, " ") & Space(15) & "CGST @ " & Format(invrs("cgstper"), "#0.00") & "  OutWard " & Space(5) & Format(invrs("cgstper"), "#0.00") & Space(9) & Format(invrs("cgstamt"), "#0.00")
'    Print #a, Space(5) + Padr(invrs("consignee_add3"), 43, " ") & Space(15) & "TCS %  " & Format(invrs("Tcs_per"), "#0.0000") & Space(26) & Format(invrs("Tcs_Amt"), "#0.00")
'    Print #a, Space(5) + Padr(invrs("consignee_city"), 43, " ") & Space(15) & "Round Off " & Space(29) & Format(invrs("RND_OFF"), "#0.00")
'    Print #a, Space(5) + "Ph " & Padr(invrs("p_PHONE1"), 12, " ") & "," & Space(1) & invrs("p_PHONE2")
'    Print #a, Space(5) + Padr(invrs("p_gstinno"), 43, " ")
'
    Dim TOTVAL As Double
    Dim TotCGst, TotSGst, TotIGst, TotFrt, TotIns, TotPackFrd, TotChty, TotTcs, TotRndf As Double
    TOTVAL = 0: TotCGst = 0: TotSGst = 0: TotIGst = 0: TotFrt = 0: TotIns = 0: TotPackFrd = 0: TotChty = 0: TotTcs = 0: TotRndf = 0
     invrs.MoveFirst
    Do While Not invrs.EOF
        TOTVAL = TOTVAL + invrs("itemTaxableValue")
        tpacks = tpacks + invrs("PACKS")
        tkgs = tkgs + invrs("nett_kgs")
        invrs.MoveNext
    Loop
    invrs.MoveFirst
    
'    '''Taxable Values
'    Print #a, Space(1) + Space(27) + Padl(Format(tpacks, "#0"), 20, " ") + Space(7) + Padl(Format(tkgs, "#0.00"), 7, " ") + Space(1) + Padl(Format(TotVal, "#0.00"), 20, " ")
 
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
    Print #a, Space(1) + Space(55) + Padr(invrs("vehicle_no"), 20, " ")
    Print #a, Space(1) & Space(16) & Format(Right(invrs("inv_no"), 5), "#0000") & "/" & Format(invrs("Date"), "DD-MM-YYYY")
    Print #a,
    Print #a,
    Print #a,
'    Print #a, Chr(18) + Chr(12) + Chr(27) + "F"
'    Print #a, Space(92) + Padr(Format(invrs("TOTAL_AMT"), "#0.00"), 43, " ")
    
'    'Total Value of Goods in Words
'     '-------------- Amount in words Sliptup
'     TAmt = invrs("total_amt")
'     p = 0
'     uu = ""
'     uu = UCase(Left(Mid(Trim(Mid(Num_To_Word(TAmt), 7)), 1, 100), 100))
'     p = InStr(35, uu, " ")
'     l = Len(uu)
'
'     '--------------- Amount in words Sliptup
'
'    Print #a, Space(5) & uu
'    Print #a,
'    'Tax Values  Words
'    '-------------- Amount in words Sliptup
'     TAmt = invrs("tax_amt")
'     p = 0
'     uu = ""
'     uu = UCase(Left(Mid(Trim(Mid(Num_To_Word(TAmt), 7)), 1, 100), 100))
'     p = InStr(35, uu, " ")
'     l = Len(uu)
'     '--------------- Amount in words Sliptup
'     Print #a, Space(5) & uu
'     Print #a,
'     Print #a,
 
RS10.MoveNext
Loop

Close #a
a = FreeFile

Call KALBATPROCESS("PPINV")

Exit Sub
Inv_PrePrintFormNEW_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Inv_PrePrintFormNEW of Module Inv_Preprint", vbInformation, head
    
    intervalMinutes = -1

End Sub

Private Sub Command1_Click()

       Dim clsCryDCRpt As New clsCrystal
       
            Set clsCryDCRpt.cryRept = Cry_RMI_DC_KSPL
            clsCryDCRpt.CrystalPrint
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
            CrystalReport1.ParameterFields(1) = "@FINV_NO;" & DataCombo2.Text & ""
            CrystalReport1.ParameterFields(2) = "@TINV_NO;" & DataCombo3.Text & ""
            CrystalReport1.ParameterFields(3) = "@INV_TYPE;" & Left(DataCombo1.Text, 2) & ""
            CrystalReport1.ParameterFields(4) = "@TempTable;" & Divcode & ""
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
End Sub

Private Sub DataCombo1_Change()
    intervalMinutes = -1
    
  If Left(DataCombo1.Text, 2) <> "" Then
    
    Set rsP = New Recordset
    rsP.Open " select distinct A.inv_type+'--'+A.description AS field,A.inv_type InvTyp from ig_invtype A,RM_CINVHD B where B.DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND A.INV_TYPE=B.INV_TYPE AND A.DIVCODE=B.DIVCODE AND A.divcode='" & Divcode & "' " & _
             "  and A.inv_type='" & Left(DataCombo1.Text, 2) & "' ", DB, adOpenStatic, adLockReadOnly

    If rsP.RecordCount <> 0 Then
'        Set DataCombo1.RowSource = rsP
'        DataCombo1.ListField = "field"
'
'        If Not rsP.EOF Then
'            rsP.MoveFirst
'            DataCombo1.Text = rsP(0)
'        End If
    Else
'        MsgBox ("No Records Found"), vbInformation, head
'        Exit Sub
'    DataCombo1.Text = Clear
    DataCombo1.Text = ""
    DataCombo2.Text = ""
    DataCombo3.Text = ""
    End If
   End If
  If Left(DataCombo1.Text, 2) <> "" Then
  If Not rsP.EOF Then
     Set rsP1 = New Recordset
        rsP1.Open "select INV_NO as name from RM_CINVHD where divcode='" & Divcode & "' and inv_type='" & rsP("InvTyp") & "'  and DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' order by INV_NO asc  ", DB, adOpenStatic, adLockReadOnly

    If rsP1.RecordCount <> 0 Then
        If Not rsP1.EOF Then
            Set DataCombo2.RowSource = rsP1
            DataCombo2.ListField = "name"

            Set DataCombo3.RowSource = rsP1
            DataCombo3.ListField = "name"

            rsP1.MoveFirst
            DataCombo2.Text = rsP1(0)
            
            rsP1.MoveLast
            DataCombo3.Text = rsP1(0)
        End If
    Else
'     DataCombo2.Text = ""
'     DataCombo3.Text = ""
'        MsgBox ("No Records Found"), vbInformation, head
'        Exit Sub
    End If
    End If
 End If
intervalMinutes = -1

End Sub

'
'Private Sub DataCombo1_Click(area As Integer)
'  intervalMinutes = -1
''''
''''    Set rsP = New Recordset
''''    rsP.Open " select distinct A.inv_type+'--'+A.description AS field,A.inv_type InvTyp from ig_invtype A,RM_CINVHD B where B.DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND A.INV_TYPE=B.INV_TYPE AND A.DIVCODE=B.DIVCODE AND A.divcode='" & Divcode & "' " & _
''''             "  ", db, adOpenStatic, adLockReadOnly
''''
''''    If rsP.RecordCount <> 0 Then
''''        Set DataCombo1.RowSource = rsP
''''        DataCombo1.ListField = "field"
''''
''''        If Not rsP.EOF Then
''''            rsP.MoveFirst
''''            DataCombo1.Text = rsP(0)
''''        End If
''''    Else
'''''        MsgBox ("No Records Found"), vbInformation, head
'''''        Exit Sub
''''    DataCombo1.Text = ""
''''    End If
''''If Not rsP.EOF Then
''''     Set rsP1 = New Recordset
''''        rsP1.Open "select INV_NO as name from RM_CINVHD where divcode='" & Divcode & "' and inv_type='" & rsP("InvTyp") & "'  and DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' order by INV_NO asc  ", db, adOpenStatic, adLockReadOnly
''''
''''    If rsP1.RecordCount <> 0 Then
''''        If Not rsP1.EOF Then
''''            Set DataCombo2.RowSource = rsP1
''''            DataCombo2.ListField = "name"
''''
''''            Set DataCombo3.RowSource = rsP1
''''            DataCombo3.ListField = "name"
''''
''''            rsP1.MoveFirst
''''            DataCombo2.Text = rsP1(0)
''''
''''            rsP1.MoveLast
''''            DataCombo3.Text = rsP1(0)
''''        End If
''''    Else
''''     DataCombo2.Text = ""
''''     DataCombo3.Text = ""
'''''        MsgBox ("No Records Found"), vbInformation, head
'''''        Exit Sub
''''    End If
'''' End If
'intervalMinutes = -1
'End Sub


 

Private Sub DTPicker1_Change()
    intervalMinutes = -1
    
    Set rsP = New Recordset
    rsP.Open " select distinct A.inv_type+'--'+A.description AS field from ig_invtype A,RM_CINVHD B where B.DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND A.INV_TYPE=B.INV_TYPE AND A.DIVCODE=B.DIVCODE AND A.divcode='" & Divcode & "' " & _
             "  ", DB, adOpenStatic, adLockReadOnly
 
    If rsP.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rsP
        DataCombo1.ListField = "field"
            
        If Not rsP.EOF Then
            rsP.MoveFirst
            DataCombo1.Text = rsP(0)
        End If
    Else
        MsgBox ("No Records Found"), vbInformation, head
'        Exit Sub
'        DataCombo1.Text = ""
        DataCombo1.Text = ""
        DataCombo2.Text = ""
        DataCombo3.Text = ""
    End If
    If DataCombo1.Text <> "" Then
     Set rsP1 = New Recordset
        rsP1.Open "select INV_NO as name from RM_CINVHD where divcode='" & Divcode & "' and DATE BETWEEN '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' AND '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and Inv_Type='" & Left(DataCombo1.Text, 2) & "' order by Inv_NO", DB, adOpenStatic, adLockReadOnly
        If Not rsP1.EOF Then
        Set DataCombo2.RowSource = rsP1
        DataCombo2.ListField = "name"
        
        Set DataCombo3.RowSource = rsP1
        DataCombo3.ListField = "name"
        
            rsP1.MoveFirst
            DataCombo2.Text = rsP1(0)
            rsP1.MoveLast
            DataCombo3.Text = rsP1(0)
        End If
    End If
intervalMinutes = -1
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
 
    DTPicker1.value = pdate
    Set rsP = New Recordset
    rsP.Open " select distinct A.inv_type+'--'+A.description AS field from ig_invtype A,RM_CINVHD B where B.DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND A.INV_TYPE=B.INV_TYPE AND A.DIVCODE=B.DIVCODE AND A.divcode='" & Divcode & "' " & _
             "  ", DB, adOpenStatic, adLockReadOnly
 
    If rsP.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rsP
        DataCombo1.ListField = "field"
        
        If Not rsP.EOF Then
            rsP.MoveFirst
            DataCombo1.Text = rsP(0)
        End If
        
    Else
        MsgBox ("No Records Found"), vbInformation, head
        Exit Sub
    End If
    If DataCombo1.Text <> "" Then
     Set rsP1 = New Recordset
        rsP1.Open "select INV_NO as name from RM_CINVHD where divcode='" & Divcode & "'  and DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' order by INV_NO asc ", DB, adOpenStatic, adLockReadOnly
  
        If Not rsP1.EOF Then
            Set DataCombo2.RowSource = rsP1
            DataCombo2.ListField = "name"
            
            Set DataCombo3.RowSource = rsP1
            DataCombo3.ListField = "name"
            
            rsP1.MoveFirst
            DataCombo2.Text = rsP1(0)
            
            rsP1.MoveLast
            DataCombo3.Text = rsP1(0)
        End If
    Else
        DataCombo1.Text = ""
        DataCombo2.Text = ""
        DataCombo3.Text = ""
    End If
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form rmireports", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
    intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    intervalMinutes = -1
End Sub
