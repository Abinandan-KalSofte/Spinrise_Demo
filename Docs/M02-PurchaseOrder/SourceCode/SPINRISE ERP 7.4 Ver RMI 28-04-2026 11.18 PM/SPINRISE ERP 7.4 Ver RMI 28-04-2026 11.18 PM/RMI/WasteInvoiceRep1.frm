VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form WasteInvoiceRep1 
   Caption         =   "Invoice Pre Printing"
   ClientHeight    =   6540
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10935
   BeginProperty Font 
      Name            =   "Tahoma"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6540
   ScaleWidth      =   10935
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport cr1 
      Left            =   1320
      Top             =   5520
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
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
      Height          =   3540
      Left            =   1800
      TabIndex        =   0
      Top             =   1800
      Width           =   7455
      Begin VB.CommandButton Command3 
         Caption         =   "&Crystal"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   3240
         TabIndex        =   8
         Top             =   2520
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   435
         Left            =   1680
         TabIndex        =   3
         Top             =   2520
         Width           =   1455
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   465
         Left            =   4920
         TabIndex        =   4
         Top             =   2520
         Width           =   1365
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   3600
         TabIndex        =   2
         Top             =   1080
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   3600
         TabIndex        =   1
         Top             =   600
         Width           =   2100
         _ExtentX        =   3704
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   3600
         TabIndex        =   10
         Top             =   1665
         Width           =   2175
         _ExtentX        =   3836
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label4 
         Caption         =   "To Invoice No"
         Height          =   270
         Left            =   1320
         TabIndex        =   9
         Top             =   1680
         Width           =   1665
      End
      Begin VB.Label Label1 
         Caption         =   "Invoice Type"
         Height          =   270
         Index           =   2
         Left            =   1320
         TabIndex        =   7
         Top             =   645
         Width           =   1920
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Invoice Pre Printing"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   465
         Index           =   1
         Left            =   -15
         TabIndex        =   6
         Top             =   0
         Width           =   7455
      End
      Begin VB.Label Label1 
         Caption         =   "From Invoice No"
         Height          =   270
         Index           =   0
         Left            =   1320
         TabIndex        =   5
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
Dim rptv As Report.ReportView
Dim a As Integer
Dim wt As Double, TotPacks As Double, TotValue As Double
Dim rss As New Recordset
Dim rs1 As New Recordset
Dim gpass As New Recordset
Private Function KSLRound(Rval As Double, Rdeci As Integer) As Double
intervalMinutes = -1
On Error GoTo KSLRound_Error
Set RRs = New Recordset
RRs.Open "select Round(" & Rval & "," & Rdeci & ")", DB
KSLRound = RRs(0)
Exit Function
KSLRound_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KSLRound of Form WasteInvoiceRep1", vbInformation, head
End Function

'Private Sub COMMAND1_CLICK()
'Dim rs2 As Recordset
'Set RPTV = New Report.ReportView
'a = FreeFile
'Wt = 0
'TotPacks = 0
'totvalue = 0
'Close
'Open "C:\WasteInv.TXT" For Output As #a
'Print #a,
'Print #a,
'Print #a,
'Set rs = New Recordset
'rs.Open "select divname, add1, add2, add3, city,tngst, cgst, cgstdt from pp_divmas where divcode = '" & divcode & "'", DB, adOpenStatic, adLockReadOnly
'Set RSS = New Recordset
'RSS.Open "SELECT DATE FROM RM_CINVHD WHERE INV_NO='" & DataCombo1.Text & "' AND INV_TYPE LIKE 'W%'", DB, adOpenStatic
'Set rs = New Recordset
'rs.Open "select a.vehicle_no, a.cons_add1, a.cons_add2, a.cons_add3,CESS_PER,CESS_AMT,TAX_AMT,0 AS rcno,0 AS cessno,NULL cessdt,0 AS formxxno,NULL AS formxxdt,cust_code from RM_CINVHD a where a.divcode = '" & divcode & "' and inv_no = '" & DataCombo1.Text & "' and inv_type like 'W%'", DB, adOpenStatic, adLockReadOnly
'Dim taxpar As New ADODB.Recordset
'Set taxpar = New Recordset
'taxpar.Open "select description ,SC_PER from ig_tax a,RM_CINVdt b where a.tax_code=b.tax_code and b.inv_no= '" & DataCombo1.Text & "' ", DB, adOpenStatic, adLockReadOnly
'If rs.EOF = False Then
'    Dim MEMCESPER As Variant
'    Dim MEMCESAMT As Variant
'    Dim MEMTAXAMT As Variant
'    MEMCESPER = rs("CESS_PER")
'    MEMCESAMT = rs("CESS_AMT")
'    MEMTAXAMT = rs("TAX_AMT")
'Else
'    MEMCESPER = 0
'    MEMCESAMT = 0
'    MEMTAXAMT = 0
'End If
'Set rs2 = New ADODB.Recordset
'rs2.Open "select a.inv_no,a.cess_amt,a.ins_per as insper ,isnull(a.freight,0) as freight,a.ins_amt,a.cex_inv_no,a.date,a.cust_code,a.matl_value,a.charity,a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,a.lr_no as lrno,a.lr_date as lrdate,a.cons_add1 as cadd1,a.cons_add2 as cadd2,a.cons_add3 as cadd3,a.cons_add4 as cadd4,isnull(a.cex_inv_no,'   ') as ceino,a.date as cedate,b.slname,isnull(b.tngst,' ') as tngst,isnull(b.tngstdt, ' ') as tngstdt,isnull(b.ecc,0) as ecc,isnull(b.cgst,' ') as cgst,ISNULL(b.cgstdt,' ') AS cgstdt,b.add1,isnull(b.add2,' ') as add2,isnull(b.add3,'') as add3,c.name as city,a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,a.lr_no as lr_no,a.lr_date,a.pre_time,a.rem_time,a.vehicle_no,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,a.cess_per,a.inv_type,e.name as carname, a.VEHICLE_NO  " & _
'"from RM_CINVHD a,fa_slmas b,ig_area c,ig_area d,ig_carrier e where divcode='" & divcode & "' and a.inv_type like 'W%' and inv_no ='" & DataCombo1.Text & "' and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code  and e.carrier_code =* a.carrier_code", DB, adOpenStatic
'For i = 0 To 4
'    Print #a,
'Next
'If rs2.RecordCount > 0 Then
'    Print #a, Space(7) + Padl(Val(Right(rs2(0), 6)), 10, " ") + Space(44) + Format(rs2("date"), "dd/mm/yyyy")
'    Print #a,
'    Print #a,
'    Print #a, Space(20) + Chr(27) & "E" & Padr(CStr(rs2("slname")), 39, " ") & Chr(27) & "F"
'    Print #a, Space(20) & Padr(rs2("add1"), 40, " ")
'    Print #a,
'    Print #a, Space(20) + Padr(rs2("add2") + ", " + rs2("add3"), 80, " ")
'    Print #a,
'    Print #a, Space(10) + Padr(" ", 40, " ") & Space(5) & Padr(rs2("tngst"), 15, " ")
'Else
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'    Print #a,
'End If
'Print #a,
'Print #a,
'Print #a,
'
''Print #a,
'Print #a,
'If rs2.RecordCount > 0 Then Print #a, Space(28) + Padr(rs2("VEHICLE_NO"), 15, " ")
'Print #a,
'Print #a,
'Print #a,
'Dim a1 As String
'Print #a,
'Print #a,
'Print #a,
'Set RS1 = New Recordset
'RS1.Open "SELECT slname,isnull(tngst,' ') as tngst,isnull(tngstdt,' ')as tngstdt,isnull(cgst,' ') as cgst,isnull(cgstdt,' ') as cgstdt from fa_slmas where slcode='" & rs("cust_code") & "'", DB, adOpenStatic
'Set rs = New Recordset
'rs.Open "select a.description, b.packs, b.nett_kgs, b.RATE_EX as rate_nett, b.value,C.DESCRIPTION AS TYPE from IG_RPRODUCT a, RM_CINVdt b,IG_PACKTYPE C where a.divcode = b.divcode and a.product_code = b.product_code AND A.PACK_TYPE=C.PACK_TYPE and b.inv_no = '" & DataCombo1.Text & "' and b.inv_type like 'W%' ", DB, adOpenStatic, adLockReadOnly
'rs.MoveFirst
'Wt = 0
'TotPacks = 0
'totvalue = 0
'totqty = 0
'serial_no = 1
'tsno = 1
'Do While Not rs.EOF
'   'Print #a, Space(5) & Padr(serial_no, 6, " ") & Padr(rs("description"), 19, " ") & Padl(rs("packs"), 5, " ") & Space(1) & Padr(rs("TYPE"), 7, " ") & Padl(INF(rs("nett_kgs"), 0), 5, " ") & Space(1) & Padl(Right(INF(rs("nett_kgs"), 3), 3), 6, " ") & Padl(INF(rs("rate_nett"), 0), 4, " ") & Space(2) & Padl(Right(INF(rs("rate_nett"), 2), 2), 2, " ") & Space(1) & Padl(INF(rs("value"), 0), 8, " ") & Space(2) & Padl(Right(INF(rs("value"), 2), 2), 3, " ")
'   'Print #a, Space(5) & Padr(serial_no, 6, " ") & Padr(rs("description"), 19, " ") & Padl(rs("packs"), 5, " ") & Space(1) & Padr(rs("TYPE"), 7, " ") + Space(1) & Padl(Format(rs("nett_kgs"), "#.000"), 10, " ") & Padl(INF(rs("rate_nett"), 2), 9, " ") & Space(2) & Padl(INF(rs("value"), 2), 12, " ") & Space(2)
'    Print #a, Space(5) + Padr(serial_no, 3, " ") + Space(2) + Padl(INF(rs("rate_nett"), 2), 6, " ") + Space(2) + Padr(rs("Description"), 27, " ") + Space(1) + Padl(rs("packs"), 5, " ") + Space(4) + Padl(Format(KSLRound(Val(rs("nett_kgs")), 0), "#.000"), 10, " ") + Space(1) + Padl(INF(KSLRound(Val(rs("value")), 0), 2), 14, " ")
'    Print #a,
'   Wt = Wt + rs("nett_kgs")
'   TotPacks = TotPacks + rs("packs")
'   totqty = totqty + rs("nett_kgs")
'   totvalue = totvalue + (rs("value"))
'   rs.MoveNext
'   serial_no = serial_no + 1
'   tsno = tsno + 2
'Loop
'lent = 18 - tsno
'
'Print #a, Space(42) & "    ---------" & Space(1) & "-----------" & Space(1) & "-------------" '4) &'  Padl(INF(TotValue, 2), 20, " ") & Chr(179)
''Print #a, Space(5) & Padr(serial_no, 4, " ") & Padr(RS("description"), 19, " ") & Space(3) & Padl(RS("packs"), 5, " ") & Space(1) & Padr(RS("TYPE"), 7, " ") & Padl(INF(RS("nett_kgs"), 0), 5, " ") & Space(1) & Padl(Right(INF(RS("nett_kgs"), 3), 3), 6, " ") & Padl(INF(RS("rate_nett"), 0), 4, " ") & Space(2) & Padl(Right(INF(RS("rate_nett"), 2), 2), 2, " ") & Padl(INF(RS("value"), 0), 6, " ") & Space(2) & Padl(Right(INF(RS("value"), 2), 2), 3, " ")
''Print #a, Space(30) & Padl(TotPacks, 5, " ") & Space(1) & Padr("BALES", 7, " ") & Padl(INF(totqty, 0), 5, " ") & Padl(Right(INF(totqty, 3), 3), 7, " ") & Space(9) & Padl(INF(TotValue, 0), 8, " ") & Space(2) & Padl(Right(INF(TotValue, 2), 2), 3, " ")
'Print #a, Space(44) & Padl(TotPacks, 7, " ") & Space(3) & Padl(INF(KSLRound(Val(totqty), 0), 3), 11, " ") & Space(2) & Padl(INF(KSLRound(Val(totvalue), 0), 2), 13, " ")
'Print #a, Space(42) & "    ---------" & Space(1) & "-----------" & Space(1) & "-------------" '4) &'  Padl(INF(TotValue, 2), 20, " ") & Chr(179)
'For i = 1 To lent - 2
'Print #a,
'Next
'
''If Not MEMCESAMT = 0 Then
''    Print #a,
''    Print #a, Space(15) & "Market Committe Cess " & Padl(MEMCESPER, 3, " ") & "%    " & Space(19) & Padl(INF(MEMCESAMT, 0), 9, " ") & Space(2) & Padl(Right(INF(MEMCESAMT, 2), 2), 3, " ")
''    Print #a, Space(67) & "----------"
'''    Print #a, Space(59) & Padl(INF(Val(MEMCESAMT) + TotValue, 2), 14, " ")
''    Print #a, Space(66) & Padl(INF(Val(MEMCESAMT) + TotValue, 0), 6, " ") & Space(2) & Padl(Right(INF(Val(MEMCESAMT) + TotValue, 2), 2), 3, " ")
''    Print #a,
''End If
'Print #a,
'Print #a,
'Print #a, Space(67) + Padl(INF(KSLRound(Val(totvalue), 0), 2), 13, " ")
'Print #a,
'If taxpar.RecordCount > 0 Then
'    'Print #a, Space(15) & Padr(" ", 28, " ") & Space(23) & Padl(INF(MEMTAXAMT, 0), 6, " ") & Space(2) & Padl(Right(INF(MEMTAXAMT, 2), 2), 3, " ")
'    Print #a, Space(63) & Padr("4", 2, " ") & Space(2) & Padl(INF(KSLRound(Val(MEMTAXAMT), 0), 2), 13, " ")
'Else
'    Print #a, Space(63) & Padr(" ", 2, " ") & Space(2) & Padl(INF(KSLRound(Val(MEMTAXAMT), 0), 6), 13, " ")
'End If
'memsur = ((Val(MEMTAXAMT) * 5) / 100)
'Print #a,
'Print #a, Space(63) & Padr("5", 2, " ") + Space(2); Padl(INF(KSLRound(Val(memsur), 0), 2), 13, " ")
'Print #a, Space(64) & "            "
'
'totvalue = totvalue + Val(MEMCESAMT) + Val(MEMTAXAMT) + Val(memsur)
'
''Print #a, Space(15) & "Market Committe Cess " & Padl(MEMCESPER, 3, " ") & "%    " & Space(19) & Padl(INF(MEMCESAMT, 0), 9, " ") & Space(2) & Padl(Right(INF(MEMCESAMT, 2), 2), 3, " ")
'If MEMCESPER > 0 Then
'    Print #a, Space(63) & Padr(MEMCESPER, 2, " ") + Space(2) + Padl(INF(KSLRound(Val(MEMCESAMT), 0), 2), 13, " ")
'Else
'    Print #a,
'End If
'Print #a,
'Print #a, Space(65) & Padl(INF(KSLRound(Val(totvalue), 0), 2), 15, " ")
'Print #a,
'Print #a,
'Print #a, Space(10) & Chr(15) & Padr(Num_To_Word(totvalue), 90, " ") & Chr(18)
'Print #a,
'Print #a,
'Print #a,
''If rs2.RecordCount > 0 Then Print #a, Space(10) & "LORRY NO : " & Padr(rs2("lrno"), 15, " ")
'Print #a, Space(5)
'Close #a
'a = FreeFile
'Open "C:\WasteInv.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type WasteInv.TXT>prn"
'Close #a
'RPTV.txtfile = "C:\WasteInv.TXT"
'RPTV.Batfile = "C:\WasteInv.bat"
'End Sub

Private Sub Command2_Click()
Unload Me
intervalMinutes = -1
End Sub

Private Sub Command3_Click()
   intervalMinutes = -1
  On Error GoTo Command3_Click_Error
  Set Rs = New Recordset
   Rs.Open "Select * from pp_divmas where divcode='" & Divcode & "' and divname like 'Shiva TexFabs Ltd%'", DB, adOpenStatic
   If Rs.EOF = False Then
    amt = 0
    tmp = 0
         Set Jk = New Recordset
         If Jk.State = 1 Then rs1.Close
          Jk.Open "Select * from RM_CINVHD a,RM_CINVdt b,ig_rproduct c,fa_slmas d where a.inv_no=b.inv_no and d.slcode=a.cust_code and a.divcode=b.divcode and  b.product_code=c.product_code and a.inv_type=b.inv_type and  a.divcode = '" & Divcode & "' and a.inv_no = '" & Trim(Mid(DataCombo1.Text, 1, 8)) & "' and a.inv_type = '" & Left(DataCombo2.Text, 2) & "'", DB, adOpenStatic
           If Jk.EOF = False Then
              iNo = Trim(Mid(Jk("Inv_no"), 3, Len(Jk("Inv_No"))))
              Do While Not Jk.EOF
                 tmp = Jk("Nett_kgs") * Jk("rate_Ex")
                 'amt = amt + jk("Value")
                 amt = amt + tmp
                 Jk.MoveNext
              Loop
           End If
        Set Rs = New Recordset
        Rs.Open "select * from pp_divmas where divcode='" & Divcode & "' ", DB, adOpenStatic
        If Rs.RecordCount > 0 Then


                    cr1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\WasteInvoice.rpt"

                    cr1.Formulas(0) = "divname = '" & Rs(1).value & "'"
                    cr1.Formulas(1) = "F1= '" & Rs(3).value & "'"
                    cr1.Formulas(2) = "F2 = '" & Rs(6).value & "'"
                    cr1.Formulas(3) = "F3 = " & tmp & ""
                    cr1.Formulas(4) = "F4 = " & amt & ""
                    cr1.ParameterFields(0) = "@DIVCODE;" & Divcode
                    cr1.ParameterFields(1) = "@INVNO;" & Trim(Mid(DataCombo1.Text, 1, 8))
                    cr1.ParameterFields(2) = "@INVTYPE;" & Left(DataCombo2.Text, 2)
                    
                    'cr1.SelectionFormula = "{ig_invhd.DIVCODE}='" & divcode & "' AND {IG_INVHD.INV_NO}='" & txtfields(1).Text & "' AND {IG_INVHD.INV_TYPE}='" & txtfields(0).Text & "' "
                    cr1.WindowState = crptMaximized
                    cr1.WindowShowPrintSetupBtn = True
                    cr1.WindowShowPrintBtn = True
                    'cr1.DiscardSavedData = True
                    cr1.Action = 2
                    cr1.PrinterCopies = 1
         End If
Else
Set tr = New Recordset
tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='winvtmp1'", DB
If tr.RecordCount = 1 Then
    DB.Execute "drop table winvtmp1"
End If

Set tr = New Recordset
tr.Open "SELECT * FROM SYSOBJECTS WHERE NAME='winvtmp2'", DB
If tr.RecordCount = 1 Then
    DB.Execute "drop table winvtmp2"
End If

'db.Execute "select * into winvtmp1 from RM_CINVHD where inv_type='" & Left(DataCombo2.Text, 2) & "' and inv_no between '" & Trim(Mid(DataCombo1.Text, 1, 8)) & "' and '" & Trim(Mid(DataCombo3.Text, 1, 8)) & "'  and divcode='" & divcode & "'"
'db.Execute "select * into winvtmp2 from RM_CINVdt where inv_type='" & Left(DataCombo2.Text, 2) & "' and inv_no between '" & Trim(Mid(DataCombo1.Text, 1, 8)) & "' and '" & Trim(Mid(DataCombo3.Text, 1, 8)) & "' and divcode='" & divcode & "'"

DB.Execute "select * into winvtmp1 from RM_CINVHD where inv_type='" & Left(DataCombo2.Text, 2) & "' and inv_no = '" & Trim(Mid(DataCombo1.Text, 1, 8)) & "'  and divcode='" & Divcode & "'"
DB.Execute "select * into winvtmp2 from RM_CINVdt where inv_type='" & Left(DataCombo2.Text, 2) & "' and inv_no = '" & Trim(Mid(DataCombo1.Text, 1, 8)) & "'  and divcode='" & Divcode & "'"

Set Rs = New Recordset
Rs.Open "select * from winvtmp1", DB, adOpenDynamic, adLockOptimistic

'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "\Report\WasteSales\Wasteinvoice.RPT"
'        cfdate = Format(Round(Rs("total_amt"), 0), "##.00")
'        ctdate = Num_To_Word(Round(Rs("total_amt"), 0))
'        dCRindex = 10
'        FrmRpt.Show

        Dim CryCls_Wsales_WasteInvoice As New clsCrystal
        Set CryCls_Wsales_WasteInvoice.cryRept = Cry_Wsales_WasteInvoice
        CryCls_Wsales_WasteInvoice.CrystalPrint

        cr1.Reset
        cr1.Connect = connectstring
        cr1.ReportFileName = KALFOLDERDATA & "RepWSales.rpt"

'        INVNO = Val(txtfields(1).Text)
'        Invdt = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
'        cfdate = Val(txtfields(47).Text)

'        CrystalReport1.SelectionFormula = "{winvtmp1.DATE} = DATE(" & Val(Year(Invdt)) & "," & Val(Month(Invdt)) & "," & Val(Day(Invdt)) & ")  and {winvtmp1.INV_NO} IN '" & INVNO & "' and '" & INVNO & "' and {winvtmp1.DIVCODE}='" & divcode & "'"
        'CrystalReport1.ParameterFields(0) = "@fd;" & cfdate
        'CrystalReport1.ParameterFields(1) = "@td;" & Num_To_Word(Round(Rs("total_amt"), 0))
        cr1.WindowShowPrintSetupBtn = True
        cr1.WindowShowSearchBtn = True
        cr1.WindowState = crptMaximized

        'SendKeys "{ENTER}"
        cr1.Action = 1
        cr1.PrinterCopies = 1
        Screen.MousePointer = 0
        '------------------------------------------

End If
intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

Command3_Click_Error:
intervalMinutes = -1
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form WasteInvoiceRep1", vbInformation, head
End Sub

Private Sub DataCombo2_Change()
On Error GoTo DataCombo2_Change_Error
Set Rs = New Recordset
Rs.Open "Select distinct inv_no inv from RM_CINVHD where inv_type='" & Left(DataCombo2.Text, 2) & "' and divcode='" & Divcode & "' AND DATE Between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockReadOnly
If Rs.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, head: Command1.Enabled = False: Exit Sub Else Command1.Enabled = True
Set DataCombo1.RowSource = Rs
Set DataCombo3.RowSource = Rs
DataCombo1.ListField = "inv"
DataCombo3.ListField = "inv"
If Not Rs.EOF Then
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo3.Text = Rs(0)
End If
Exit Sub
DataCombo2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo2_Change of Form WasteInvoiceRep1", vbInformation, head
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Provider = "msdatashape"
    DB.Open connectstring
    Set Rs = New Recordset
    Rs.Open "Select distinct inv_type invtype from RM_CINVdt where divcode='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
    If Rs.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, head: Command1.Enabled = False: Exit Sub

    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "invtype"
    If Not Rs.EOF Then
        DataCombo2.Text = Rs(0)
    End If

    Set Rs = New Recordset
    Rs.Open "Select distinct inv_no inv from RM_CINVHD where inv_type='" & Left(DataCombo2.Text, 2) & "' and divcode='" & Divcode & "' AND DATE Between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockReadOnly
    If Rs.RecordCount <= 0 Then MsgBox "No Records Found", vbInformation, head: Command1.Enabled = False: Exit Sub
    Set DataCombo1.RowSource = Rs
    Set DataCombo3.RowSource = Rs
    DataCombo1.ListField = "inv"
    DataCombo3.ListField = "inv"
    If Not Rs.EOF Then
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0).value
    End If
    Command3.Visible = False
    
    
    Screen.MousePointer = 11
    
    rfooter = ""
    

    Screen.MousePointer = 0

 intervalMinutes = -1
    
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form WasteInvoiceRep1", vbInformation, head
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Dim U, V, W As String
'u = "W%"
'On Error GoTo Command1_Click_Error
U = Left(DataCombo2.Text, 2)
V = Trim(Mid(DataCombo1.Text, 1, 8))
W = Trim(Mid(DataCombo3.Text, 1, 8))

rh1 = " "
ln = " "
    
    
    If UCase(CustID) = "LMW" Then
         rfooter = ""
        a = 0
        bol1 = False
    
    
        U = Left(DataCombo2.Text, 2)
        V = Trim(Mid(DataCombo1.Text, 1, 8))
        W = Trim(Mid(DataCombo3.Text, 1, 8))

       Call PrePrint_LMW(CStr(V), CStr(W), CStr(U), CStr(rfooter))
      ' Call PrePrint_Southern(CStr(V), CStr(W), CStr(U), CStr(rfooter))
      
'    Else
'        Call WasteInv_PrePrintFormShivatex(CStr(U), CStr(V), CStr(W))
    Else
        If Trim(V) <> "" Then
            Set TmpRs = New Recordset
            TmpRs.Open " Select Date From RM_CinvHd where divcode ='" & Divcode & "' " & _
                "And Inv_no='" & V & "' and Divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            If TmpRs.EOF = False Then
                Invdt = Format(TmpRs("Date"), "yyyy-mm-dd")
            End If
            
            Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = CottonSales_Print
            clsCryRpt.CrystalPrint
                        
            cr1.Reset
            cr1.Connect = connectstring
            cr1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
            cr1.ParameterFields(0) = "@bale;" & Divcode & ""
            cr1.ParameterFields(1) = "@Divcode;" & Divcode & ""
            cr1.ParameterFields(2) = "@InvNo;" & V & ""
            cr1.ParameterFields(3) = "@InvDt;" & Format(Invdt, "yyyy-MM-dd") & ""
            cr1.ParameterFields(4) = "@Lotyear;" & Format(yfdate, "yyyy") & ""
        
            cr1.WindowShowPrintSetupBtn = True
            cr1.WindowShowSearchBtn = True
            cr1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            cr1.Action = 1
            cr1.PrinterCopies = 1
        End If
intervalMinutes = -1
    End If
    intervalMinutes = -1
End Sub

Public Sub PrePrint_Southern1(finvno As String, tinvno As String, INVTYPE As String, sHead As String)

    Set DB = New Connection
    DB.Open connectstring
    
    Dim rst1 As New ADODB.Recordset
    Dim Rst2 As New ADODB.Recordset
    
    Dim STotPacks(10) As String
    Dim sCustAdd(10) As String
    Dim sDelAdd(10) As String
    
    Set rsnew = New Recordset
    rsnew.Open "Select Inv_no from RM_CINVHD WHERE Divcode='" & Divcode & "' AND Inv_type='" & INVTYPE & "' and Inv_no Between '" & finvno & "' and '" & tinvno & "'", DB, adOpenForwardOnly, adLockReadOnly
    If rsnew.EOF Then
        MsgBox "No Records to found", vbInformation, head
        Exit Sub
    End If
    
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    z = 1
    Open "C:\g1.TXT" For Output As #z
    
    Set Rst2 = New ADODB.Recordset
    Rst2.Open "Select Inv_no from RM_CINVHD WHERE Divcode='" & Divcode & "' AND Inv_type='" & INVTYPE & "' and Inv_no Between '" & finvno & "' and '" & tinvno & "'", DB, adOpenForwardOnly, adLockReadOnly
    Do While Not Rst2.EOF
          
          
    Set rsnew = New Recordset
    'RsNew.Open "select * from wvg_invhd where inv_type='" & InvType & "' and inv_no = '" & INVNO & "'  and divcode='" & divcode & "'", Db, adOpenStatic
    rsnew.Open "ksp_IG_RInvPrePrint '" & Divcode & "','" & Rst2("Inv_no") & "','" & INVTYPE & "'", DB, adOpenKeyset, adLockOptimistic
    If rsnew.EOF Then
        MsgBox "No Records to found", vbInformation, head
        Exit Sub
    End If

    pg = 1
    co = 0
    SNO = 1
    TOTBALES = 0
    
'    RSnew.MoveFirst
'    Do While Not RSnew.EOF
'        totbales = Val(totbales) + Val(RSnew("Packs") & "")
'
'        RSnew.MoveNext
'    Loop
'
    


rsnew.MoveFirst
Do While Not rsnew.EOF
        
        
        For i = 1 To 6
            sDelAdd(i) = ""
        Next


        Set rst1 = New ADODB.Recordset
        strQty = "SELECT c.cname,c.add1,c.add2,c.add3,c.City,c.pin,c.phone"
        strQty = strQty & " FROM RM_CINVHD AS a INNER JOIN IG_RBOHD b ON a.DIVCODE = b.DIVCODE"
        strQty = strQty & " AND a.BO_TYPE = b.BO_TYPE AND a.BO_NO = b.BO_NO INNER JOIN ig_deladd c ON b.CUST_CODE=c.slcode and b.delcode=c.delcode "
        strQty = strQty & " WHERE a.Divcode='" & Divcode & "' AND a.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND a.INV_NO='" & rsnew("Inv_no") & "' "
                
        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        If Not rst1.EOF Then
            
            
            i = 0
            If Trim(rst1("cname") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = rst1("cname")
            End If
            If Trim(rst1("add1") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = rst1("add1")
            End If
            If Trim(rst1("add2") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = rst1("add2")
            End If
            If Trim(rst1("add3") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = rst1("add3")
            End If
            If Trim(rst1("City") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = rst1("City") & IIf(Trim(rst1("pin") & "") <> "", " - " & rst1("pin"), "")
                
            End If
            If Trim(rst1("phone") & "") <> "" Then
                i = i + 1
                sDelAdd(i) = "Phone :" & rst1("phone")
                
            End If
            
        Else
            sDelName = ""
            sDelCity = ""
            sDelAdd1 = ""
        End If
        

        
        Set rst1 = New ADODB.Recordset
               
        strQty = " SELECT TOP (1) IG_RCONTHD.ORDREFNO, Ig_PayTerm.PayTerm_Desc, IG_RCONTHD.DATE"
        strQty = strQty & " FROM RM_CINVHD INNER JOIN"
        strQty = strQty & " IG_RBODT ON RM_CINVHD.DIVCODE = IG_RBODT.DIVCODE AND RM_CINVHD.BO_TYPE = IG_RBODT.BO_TYPE AND"
        strQty = strQty & " RM_CINVHD.BO_NO = IG_RBODT.BO_NO INNER JOIN"
        strQty = strQty & " IG_RCONTHD ON IG_RBODT.DIVCODE = IG_RCONTHD.DIVCODE AND IG_RBODT.CONT_TYPE = IG_RCONTHD.CONT_TYPE AND"
        strQty = strQty & " IG_RBODT.CONT_NO = IG_RCONTHD.CONT_NO LEFT OUTER JOIN"
        strQty = strQty & " Ig_PayTerm ON IG_RCONTHD.PAY_TERMS = Ig_PayTerm.PayTerm_Code"
        strQty = strQty & " WHERE RM_CINVHD.Divcode='" & Divcode & "' AND RM_CINVHD.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND RM_CINVHD.INV_NO='" & rsnew("Inv_no") & "' "
        strQty = strQty & " ORDER BY IG_RCONTHD.DATE"

        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        If Not rst1.EOF Then
            CustRefNo = rst1("ORDREFNO")
            payterm_Desc = rst1("PayTerm_Desc")
        Else
            CustRefNo = ""
            payterm_Desc = ""
        End If
        
        
        For i = 1 To 6
            STotPacks(i) = ""
        Next
        dbltotPack = 0
        
        Set rst1 = New ADODB.Recordset
        strQty = "SELECT sum(a.Packs)Packs,b.DESCRIPTION"
        strQty = strQty & " FROM RM_CINVdt AS a INNER JOIN IG_PACKTYPE b ON a.PACK_TYPE=b.PACK_TYPE"
        strQty = strQty & " WHERE a.Divcode='" & Divcode & "' AND a.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND a.INV_NO='" & rsnew("Inv_no") & "' Group by b.DESCRIPTION "
                
        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        i = 0
        If Not rst1.EOF Then
            Do While Not rst1.EOF
                i = i + 1
                STotPacks(i) = rst1(0) & " " & rst1(1)
                dbltotPack = val(dbltotPack) + rst1(0)
                rst1.MoveNext
            Loop
        End If
        
        
        
        sTARIFFHEAD1 = "": sTARIFFHEAD2 = "": sTARIFFHEAD = ""
        sTARIFFHEAD = rsnew("TARIFFHEAD")
        If Len(sTARIFFHEAD) > 25 Then
            sTARIFFHEAD1 = Mid(sTARIFFHEAD, 1, InStrRev(Left(sTARIFFHEAD, 25), " ") - 1)
            sTARIFFHEAD2 = Mid(sTARIFFHEAD, InStrRev(Left(sTARIFFHEAD, 25), " "))
        Else
            sTARIFFHEAD1 = sTARIFFHEAD
            sTARIFFHEAD2 = ""
        End If
        
        sNOTIFY1 = "": sNOTIFY2 = "": sNOTIFY = ""
        sNOTIFY = rsnew("NOTIFY")
        If Len(sNOTIFY) > 25 Then
            sNOTIFY1 = Mid(sNOTIFY, 1, InStrRev(Left(sNOTIFY, 25), " ") - 1)
            sNOTIFY2 = Mid(sNOTIFY, InStrRev(Left(sNOTIFY, 25), " "))
        Else
            sNOTIFY1 = sNOTIFY
            sNOTIFY2 = ""
        End If
        
        sAEDNOTIFY1 = "": sAEDNOTIFY2 = "": sAEDNOTIFY = ""
        sAEDNOTIFY = rsnew("NOTIFYAED")
        If Len(sAEDNOTIFY) > 25 Then
            sAEDNOTIFY1 = Mid(sAEDNOTIFY, 1, InStrRev(Left(sAEDNOTIFY, 25), " ") - 1)
            sAEDNOTIFY2 = Mid(sAEDNOTIFY, InStrRev(Left(sAEDNOTIFY, 25), " "))
        Else
            sAEDNOTIFY1 = sAEDNOTIFY
            sAEDNOTIFY2 = ""
        End If
        
        For i = 1 To 6
            sCustAdd(i) = ""
        Next
        i = 0
        
        If Trim(rsnew("C_Add1") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add1")
        End If
        If Trim(rsnew("C_Add2") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add2")
        End If
        If Trim(rsnew("C_Add3") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add3")
        End If
        If Trim(rsnew("C_City") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_City") & " " & rsnew("C_State") & IIf(rsnew("C_Country") = "", "", " " & rsnew("C_Country"))
        End If
        
        
    sprinthead = "": sprinthead1 = "": sprinthead2 = ""
    sprinthead = rsnew("invPrintHead")
    If Len(sprinthead) > 16 Then
        sprinthead1 = Mid(sprinthead, 1, InStrRev(Left(sprinthead, 16), " ") - 1)
        sprinthead2 = Mid(sprinthead, InStrRev(Left(sprinthead, 16), " "))
    Else
        sprinthead1 = sprinthead
        sprinthead2 = ""
    End If
    
    sTARIFFHEAD = "": sTARIFFHEAD1 = "": sTARIFFHEAD2 = ""
    sTARIFFHEAD = rsnew("TARIFFHEAD")
    If InStr(sTARIFFHEAD, "-") > 0 Then
        sTARIFFHEAD1 = Mid(sTARIFFHEAD, 1, InStr(sTARIFFHEAD, "-") - 1)
        sTARIFFHEAD2 = Mid(sTARIFFHEAD, InStr(sTARIFFHEAD, "-") + 1)
    Else
        sTARIFFHEAD1 = " "
        sTARIFFHEAD2 = sTARIFFHEAD
    End If
    
    
    
    For i = 1 To 3
        Print #z,
    Next
    
    Print #z, Space(49) + Chr(27) + "E" + Padr(sprinthead1, 13, " ") + Chr(27) + "F" + Space(10) + Space(49) + Chr(27) + "E" + Padr(sprinthead1, 13, " ") + Chr(27) + "F"
    Print #z, Space(49) + Chr(27) + "E" + Padr(sprinthead2, 13, " ") + Chr(27) + "F" + Space(10) + Space(49) + Chr(27) + "E" + Padr(sprinthead2, 13, " ") + Chr(27) + "F"
    
    'Print #z, Space(50) + Chr(27) + "E" + Padr(IIf(RSnew("YarnInvPrefix") <> "", RSnew("YarnInvPrefix") & "-", " ") & RSnew("INV_TYPE") & "/" & Format(Val(Right(RSnew("inv_no"), 6)), "#0000"), 15, " ") + Chr(27) + "F" + Space(7) + Space(49) + Chr(27) + "E" + Padr(IIf(RSnew("YarnInvPrefix") <> "", RSnew("YarnInvPrefix") & "-", " ") & RSnew("INV_TYPE") & "/" & Format(Val(Right(RSnew("inv_no"), 6)), "#0000"), 13, " ") + Chr(27) + "F"
    Print #z, Space(10) + Padr(" ", 37, " ") + Padr(" ", 16, " "); Space(7) + Space(10)
    Print #z, Space(12) + Padr(sTARIFFHEAD1 & Space(10) & sTARIFFHEAD2, 38, " ") + Chr(27) + "E" + Padr(Format(rsnew("date"), "dd/mm/yy"), 15, " ") + Chr(27) + "F" + Space(7) + Space(12) + Padr(sTARIFFHEAD1 & Space(10) & sTARIFFHEAD2, 37, " ") + Chr(27) + "E" + Padr(Format(rsnew("date"), "dd/mm/yy"), 13, " ") + Chr(27) + "F"
    Print #z, Space(12) + Padr(sNOTIFY1 & " " & sNOTIFY2, 38, " ") + Padr(" ", 15, " ") + Space(7) + Space(12) + Padr(sNOTIFY1 & " " & sNOTIFY2, 37, " ")
    Print #z, Space(12) + Padr(sAEDNOTIFY1 & " " & sAEDNOTIFY2, 38, " ") + Padr(Format(rsnew("date"), "dd/mm/yy"), 15, " ") + Space(7) + Space(12) + Padr(sAEDNOTIFY1 & " " & sAEDNOTIFY2, 37, " ") + Padr(Format(rsnew("date"), "dd/mm/yy"), 13, " ")
    Print #z, Space(13) + Padr("CSY & NCSY", 37, " ") + Padr(Format(rsnew("REM_TIME"), "hh:nn AM/PM"), 15, " ") + Space(7) + Space(13) + Padr("CSY & NCSY", 36, " ") + Padr(Format(rsnew("REM_TIME"), "hh:nn AM/PM"), 13, " ")
    Print #z, Space(13) + Padr(" ", 36, " ") + Padr(" ", 16, " ") + Space(7) + Space(13)
    Print #z,
    
    Print #z, Chr(27) + "E" + Padr(rsnew("C_SlName"), 37, " ") + Chr(27) + "F" + Space(13) + Padr(CustRefNo, 15, " ") + Space(7) + Chr(27) + "E" + Padr(rsnew("C_SlName"), 40, " ") + Chr(27) + "E" + Space(12) + Padr(CustRefNo, 10, " ")
    Print #z, Padr(sCustAdd(1), 37, " ") + Space(13) + Padr(" ", 15, " ") + Space(7) + Padr(sCustAdd(1), 40, " ") + Space(12) + Padr(" ", 10, " ")
    Print #z, Padr(sCustAdd(2), 37, " ") + Space(13) + Padr(" ", 15, " ") + Space(7) + Padr(sCustAdd(2), 40, " ")
    Print #z, Padr(sCustAdd(3), 37, " ") + Space(13) + Padr(rsnew("Agent"), 15, " ") + Space(7) + Padr(sCustAdd(3), 40, " ") + Space(9) + Padr(rsnew("Agent"), 13, " ")
    Print #z, Padr(sCustAdd(4), 37, " ") + Space(13) + Padr(" ", 15, " ") + Space(7) + Padr(sCustAdd(4), 40, " ") + Space(12) + Padr(" ", 10, " ")
   ' Print #z, Padr("TIN No. " & RSnew("C_TIN"), 37, " ") + Space(13) + Padr(INF(Val(RSnew("PLA_NO") & ""), 2), 15, " ") + Space(7) + Padr("TIN No. " & RSnew("C_TIN"), 40, " ") + Space(12) + Padr(INF(Val(RSnew("PANNO") & ""), 2), 10, " ")
    'Print #z, Padr("CST No. " & RSnew("C_tngst") & " Dt. " & Format(RSnew("C_cgstdt"), "dd/MM/yyyy"), 37, " ") + Space(13) + Padr(INF(Val(RSnew("RG23A_NO") & ""), 2), 15, " ") + Space(7) + Padr("CST No. " & RSnew("C_tngst") & " Dt. " & Format(RSnew("C_cgstdt"), "dd/MM/yyyy"), 40, " ") + Space(12) + Padr(INF(Val(RSnew("RG23A_NO") & ""), 2), 10, " ")
        
'    Print #Z, Space(13) & Padr(C_cgstdt, 27, " ")
'    Print #Z, Space(13) & Padr(sDelAdd1 & " " & sDelCity, 30, " ") & Space(12) & Padr(RSnew("Agent"), 25, " ")
'    Print #Z,
        
        Set rst1 = New ADODB.Recordset
        
        strQty = "SELECT a.DIVCODE, b.SPACK_NO, b.EPACK_NO "
        strQty = strQty & " FROM RM_CINVHD AS a INNER JOIN IG_RBODT b ON a.DIVCODE = b.DIVCODE"
        strQty = strQty & " AND a.BO_TYPE = b.BO_TYPE AND a.BO_NO = b.BO_NO"
        strQty = strQty & " WHERE a.Divcode='" & Divcode & "' AND a.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND a.INV_NO='" & rsnew("Inv_no") & "' AND b.Product_code='" & rsnew("Product_code") & "'"
        
        SPackno = ""
        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        Do While Not rst1.EOF
            
            If val(rst1("SPACK_NO") & "") = val(rst1("EPACK_NO") & "") Then
                SPackno = SPackno & "," & val(rst1("SPACK_NO") & "")
            Else
                SPackno = SPackno & "," & val(rst1("SPACK_NO") & "") & "-" & val(rst1("EPACK_NO") & "")
            End If
            
            rst1.MoveNext
        Loop
        If SPackno <> "" Then
            SPackno = Mid(SPackno, 2)
        End If
        
'        Print #Z,
        Print #z, Space(11) + Padr(rsnew("Description"), 54, " ") + Space(7) + Space(11) + Padr(rsnew("Description"), 50, " ")
        Print #z,
        Print #z, Space(11) + Padr(SPackno, 54, " ") + Space(7) + Space(11) + Padr(SPackno, 50, " ")
        Print #z,
        Print #z,
        Print #z, Padl(rsnew("Packs"), 6, " ") + Padl(INF(rsnew("NETT_KGS") / rsnew("Packs"), 3), 15, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 16, " ") + Padl(INF(rsnew("RATE_EX"), 2), 12, " ") + Padl(INF(rsnew("Value"), 2), 16, " ") + Space(3) + Padl(rsnew("Packs"), 9, " ") + Padl(INF(rsnew("NETT_KGS") / rsnew("Packs"), 3), 15, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 16, " ") + Padl(INF(rsnew("RATE_EX"), 2), 12, " ") + Padl(INF(rsnew("Value"), 2), 14, " ")
        Print #z, Padl("Bags", 6, " ") + Padl("Kgs.", 15, " ") + Padl("Kgs.", 16, " ") + Padl("Per Kgs.", 12, " ") + Padl(" ", 16, " ") + Space(3) + Padl("Bags", 9, " ") + Padl("Kgs.", 15, " ") + Padl("Kgs.", 16, " ") + Padl("Per Kgs.", 12, " ")
        
        
        rsnew.MoveFirst
    
        ExciseAmt = val(rsnew("Exise") & "")
        sExAmtiswd = "": sExAmtiswd1 = "": sExAmtiswd2 = ""
        If val(rsnew("Exise") & "") > 0 Then
            sExAmtiswd = Replace(Num_To_Word(CDbl(val(ExciseAmt & ""))), "Rupees", "")
            If Len(Trim(sExAmtiswd & "")) > 30 Then
                sExAmtiswd1 = Mid(sExAmtiswd, 1, InStr(Left(sExAmtiswd, 30), " "))
                sExAmtiswd2 = Mid(sExAmtiswd, Len(Trim(sExAmtiswd1 & "")) + 1)
            Else
                sExAmtiswd1 = sExAmtiswd
                sExAmtiswd2 = ""
            End If
            
        End If
        
'        Print #Z,
        'Print #z, Padr(" ", 33, " "); Padr(IIf(Val(RSnew("DiscountAmt") & "") > 0, "Discount:" & Format(RSnew("discountper"), "#0.00") & "%", " "), 16, " ") + Padl(" ", 1, " "); Padl(INF(RSnew("DiscountAmt"), 2), 15, " ") + Space(4) + Padr(" ", 36, " "); Padr(IIf(Val(RSnew("DiscountAmt") & "") > 0, "Discount:" & Format(RSnew("discountper"), "#0.00") & "%", " "), 16, " ") + Padl(" ", 1, " "); Padl(INF(RSnew("DiscountAmt"), 2), 12, " ")
        
        Print #z, Space(7) + Padr(INF(ExciseAmt, 2), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(ExciseAmt, 2), 16, " ") + Space(4) + Space(10) + Padr(INF(ExciseAmt, 2), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(ExciseAmt, 2), 13, " ")
        Print #z, Space(7) + Padr(sExAmtiswd1, 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 16, " ") + Space(4) + Space(10) + Padr(sExAmtiswd1, 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 13, " ")
        'Print #z, Space(7) + Padr(sExAmtiswd2, 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("AED_AMT") & ""), 2), 16, " ") + Space(4) + Space(10) + Padr(sExAmtiswd2, 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("AED_AMT") & ""), 2), 13, " ")
        'Print #z,
        'Print #z, Space(7) + Padr(Trim(RSnew("CARRIER") & ""), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("MATL_VALUE") & "") + Val(ExciseAmt & "") + Val(RSnew("AED_AMT") & "") + Val(RSnew("DiscountAmt") & ""), 2), 16, " ") + Space(4) + Space(10) + Padr(Trim(RSnew("CARRIER") & ""), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("MATL_VALUE") & "") + Val(ExciseAmt & "") + Val(RSnew("AED_AMT") & "") + Val(RSnew("DiscountAmt") & ""), 2), 13, " ")
        Print #z,
       ' Print #z, Space(7) + Padr(Trim(RSnew("VEHICLE_NO") & ""), 30, " ") + Space(7) + Padr(IIf(Val(RSnew("VAT") & "") > 0, Format(RSnew("tax_per"), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("VAT") & ""), 2), 14, " ") + Space(4) + Space(10) + Padr(Trim(RSnew("VEHICLE_NO") & ""), 30, " ") + Space(3) + Padr(IIf(Val(RSnew("VAT") & "") > 0, Format(RSnew("tax_per"), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("VAT") & ""), 2), 15, " ")
        'Print #z,
        'Print #z, Space(7) + Padr(IIf(Trim(RSnew("LR_NO") & "") <> "", Trim(RSnew("LR_NO") & "") & "-" & Format(RSnew("LR_Date"), "dd/MM/yy"), " "), 30, " ") + Space(7) + Padr(IIf(Val(RSnew("CST") & "") > 0, Format(RSnew("tax_per"), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("CST") & ""), 2), 14, " ") + Space(4) + Space(10) + Padr(IIf(Trim(RSnew("LR_NO") & "") <> "", Trim(RSnew("LR_NO") & "") & "-" & Format(RSnew("LR_Date"), "dd/MM/yy"), " "), 30, " ") + Space(3) + Padr(IIf(Val(RSnew("CST") & "") > 0, Format(RSnew("tax_per"), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("CST") & ""), 2), 15, " ")
        'Print #z,
        'Print #z, Space(7) + Padr(Trim(RSnew("Area") & ""), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 16, " ") + Space(14) + Padr(Trim(RSnew("Area") & ""), 30, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 13, " ")
        Print #z,
       ' Print #z, Padr(" ", 37, " ") + Space(7) + Padr(IIf(Val(RSnew("ins_per") & "") > 0, Format(Val(RSnew("ins_per") & ""), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("ins_amt") & ""), 2), 14, " ") + Space(7) + Padr(" ", 40, " ") + Space(3) + Padr(IIf(Val(RSnew("ins_per") & "") > 0, Format(Val(RSnew("ins_per") & ""), "#0.00") & "%", " "), 7, " ") + Padl(INF(Val(RSnew("ins_amt") & ""), 2), 12, " ")
        Print #z, Padr(sDelAdd(1), 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 16, " ") + Space(7) + Padr(sDelAdd(1), 40, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 10, " ")
       ' Print #z, Padr(sDelAdd(2), 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("freight") & ""), 2), 16, " ") + Space(7) + Padr(sDelAdd(2), 40, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(Val(RSnew("freight") & ""), 2), 10, " ")
        Print #z, Padr(sDelAdd(3), 37, " ") + Space(2) + Padr(IIf(val(rsnew("Others") & "") > 0, "Others", " "), 10, " ") + Padl(INF(val(rsnew("Others") & ""), 2), 16, " ") + Space(7) + Padr(sDelAdd(3), 40, " ") + Space(5) + Padr(IIf(val(rsnew("Others") & "") > 0, "Others", " "), 7, " ") + Padl(INF(val(rsnew("Others") & ""), 2), 10, " ")
        Print #z, Padr(sDelAdd(4), 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(val(rsnew("TOTAL_AMT") & "") - val(rsnew("RND_OFF") & ""), 2), 16, " ") + Space(7) + Padr(sDelAdd(4), 40, " ") + Space(4) + Padl(" ", 6, " ") + Padl(INF(val(rsnew("TOTAL_AMT") & "") - val(rsnew("RND_OFF") & ""), 2), 12, " ")
        Print #z, Padr(sDelAdd(5), 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(" ", 16, " ") + Space(7) + Padr(sDelAdd(5), 40, " ") + Space(5) + Padl(" ", 7, " ")
        Print #z, Padr(sDelAdd(6), 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(IIf(val(rsnew("RND_OFF") & "") <> 0, Format(rsnew("RND_OFF"), "#0.00"), " "), 16, " ") + Space(4) + Padr(sDelAdd(6), 40, " ") + Space(5) + Padl(" ", 7, " ") + Padl(IIf(val(rsnew("RND_OFF") & "") <> 0, Format(rsnew("RND_OFF"), "#0.00"), " "), 13, " ")
        Print #z,
         Print #z, Padr(" ", 37, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(rsnew("TOTAL_AMT"), 2), 16, " ") + Space(4) + Padr(" ", 40, " ") + Space(5) + Padl(" ", 7, " ") + Padl(INF(rsnew("TOTAL_AMT"), 2), 13, " ")
        Print #z,
        Print #z,
        
        sAmtinword = "": sAmtinword1 = "": sAmtinword2 = ""
        sAmtinword = Num_To_Word(CDbl(rsnew("TOTAL_AMT")))
        If Len(sAmtinword) > 60 Then
            sAmtinword1 = Mid(sAmtinword, 1, InStrRev(Left(sAmtinword, 60), " ") - 1)
            sAmtinword2 = Mid(sAmtinword, InStrRev(Left(sAmtinword, 60), " "))
        Else
            sAmtinword1 = sAmtinword
            sAmtinword2 = ""
        End If
        
        Print #z, Space(2) + Padr(sAmtinword1, 63, " ") + Space(6) + Padr(sAmtinword1, 60, " ")
        Print #z, Space(2) + Padr(sAmtinword2, 63, " ") + Space(6) + Padr(sAmtinword2, 60, " ")
        Print #z,
        
        Print #z,
        'Print #z, Space(2) + Padr(Trim(RSnew("REMARKS") & ""), 63, " ") + Space(7) + Padr(Trim(RSnew("REMARKS") & ""), 59, " ")
        
        Print #z, Chr(12) + Chr(18)
        
        Do While Not rsnew.EOF
            rsnew.MoveNext
        Loop

  Loop

    
    Rst2.MoveNext
Loop

Close #z
z = FreeFile
Open "c:\g1.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type g1.txt>prn"
Close #z
rptv.txtfile = "c:\g1.txt"
rptv.Batfile = "c:\g1.bat"
Screen.MousePointer = 0




End Sub
Public Sub Inv_PrePrintFormNEW(U As String, V As String, W As String, rh As String, ln As String, c As Integer)
On Error GoTo Inv_PrePrintFormNEW_Error
On Error Resume Next
Dim va As Integer
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim HHAD As String
Dim memtax As String
Dim rup1 As String
Dim rup2 As String
Dim rup3 As String
Dim rup4 As String
Dim X As String
Dim tot As Double
Dim SNO As Integer
Dim crdate As String
Dim crdate1 As String
Dim descrip As String
Set Cnn = New Connection
Cnn.Open connectstring
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim pack_no As String
Dim pack_no1 As String
Dim pack_no2 As String
Dim pack_no3 As String
Dim pack_no4 As String
Dim pack_no5 As String
Dim pack_no6 As String
Dim pack_no7 As String
Dim per As String
Dim i As Integer
    Set rs2 = New Recordset
    rs2.Open "select a.inv_no,a.inv_type,right(a.pre_time,8)as ptime,right(a.rem_time,8)as rtime,a.pre_time,a.rem_time,a.cr_days,a.pay_mode,a.cess_amt,a.pla_bed,a.pla_aed,a.rg23a_bed,a.delivery_dt,a.despatch_to,a.bo_no,isnull(a.freight,0) as freight,isnull(a.ins_amt,0) AS INS ,a.cex_inv_no,a.date,a.cust_code,a.matl_value,isnull(a.charity,0) AS CHARITY," & _
    "a.bed_amt,a.aed_amt,a.tax_amt,a.lsc_amt,a.total_amt,b.slname,isnull(b.cgst,0) as cgst,b.cgstdt,b.add1,isnull(b.add2,'') as add2,isnull(b.add3,'') as add3,isnull(c.name,'')as  city, " & _
    "a.cons_add1,a.cons_add2,a.cons_add3,a.cons_add4,isnull(a.lr_no,'') as lr_no,a.lr_date,isnull(a.pre_time,' ') ptime,isnull(a.rem_time,' ') rtime,a.pla_no,a.rg23a_no,a.rg23c_no,a.rnd_off,isnull(a.cess_per,0) cp,isnull(a.ins_per,0) ip,a.inv_type,isnull(a.vehicle_no,'') as vehicle_no,isnull(C.NAME,' ') despto,e.ordrefno,e.ordredate,d.name,RND_OFF,isnull(a.brok_code,'') brcode,n.BED_NOTIFY ,B.rc_no,A.PRE_TIME,A.REM_TIME,A.DELIVERY_DT,A.INS_AMT,e.ordrefno,e.ordredate  " & _
             " from RM_CINVHD a,fa_slmas b,ig_area c,ig_area d ,ig_rbohd e, ig_notify n where a.divcode='" & Divcode & "' and a.inv_type like 'W%' and a.inv_no between '" & Trim(Mid(V, 1, 8)) & "' and '" & Trim(Mid(W, 1, 8)) & "' and a.cust_code=b.slcode and b.areacode *=d.area_code and a.despatch_to *=c.area_code and a.inv_no*=e.inv_no and a.inv_type*=e.inv_type and a.CEX_INV_TYPE *= n.NOTIFY_CODE order by a.inv_no", Cnn, adOpenStatic
    If rs2.EOF = True Then
        MsgBox "No Records found for selected Invoice Number", vbInformation, head
        Exit Sub
    End If
    If rs2("vehicle_no") <> "" Then
        lorr = rs2("vehicle_no")
    Else
        lorr = " "
    End If
    Set rs1 = New Recordset
    rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,tngstdt,isnull(cgst,'') as cgst,cgstdt,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3 from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
    If rs1.EOF Then
        MsgBox "No Record Found"
        Exit Sub
    End If
    
    Set temprs = New Recordset
    Set rptv = New Report.ReportView
    Close #a
    Close
    a = FreeFile
'    Open "C:\WStkINVP.txt" For Output As #a
    Open KALFOLDERDATA & "\WStkINVP.TXT" For Output As #a
    
    SR = CStr(pdate) + Space(2)
    pg1 = 1
    va = 1
    
    Set rs1 = New Recordset
    rs1.Open "select divname,add1,add2,isnull(add3,'') as add3,city,rc_no,pincode,phone1,fax,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt,isnull(cgst,'') as cgst,isnull(cgstdt,'') as cgstdt ,ce_code,range,range_addr1,range_addr2,range_addr3,division,isNull(division_addr1,'') as division_addr1,isNull(division_addr2,'') as division_addr2,isnull(division_addr3,'') as division_addr3,collectorate,pincode from pp_divmas where divcode='" & Divcode & "'", Cnn, adOpenStatic
    
    Do While Not rs2.EOF
        tot1 = 0
        tot2 = 0
        tot3 = 0
        
        Set rs4 = New Recordset
        rs4.Open "select slname,add1,add2,isnull(add3,'') as add3,city,pin,isnull(tngst,'') as tngst,isnull(tngstdt,'') as tngstdt, isnull(ecc,' ') as ecc,isnull(cgst,'')as cgst,isnull(cgstdt,'') as cgstdt,rc_no,phone1,tinno from fa_slmas where slcode='" & rs2("cust_code") & "'", Cnn, adOpenStatic
        
        Set rs3 = New Recordset
        rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle," & _
        "a.inv_type,E.DESCRIPTION AS NAME from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_PRODUCTTYPE E where a.divcode='" & Divcode & "' and a.inv_type = '" & rs2("inv_type") & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' AND E.PRODUCT_TYPE=B.PRODUCT_TYPE", Cnn, adOpenStatic, adLockBatchOptimistic
        
        'rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle," & _
        "a.inv_type,E.DESCRIPTION AS NAME from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_PRODUCTTYPE E where a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' AND E.PRODUCT_TYPE=B.PRODUCT_TYPE", cnn, adOpenStatic, adLockBatchOptimistic
      
          
        Dim IR As Integer
        IR = 0
        SNO = 0
        
        Set rsc = New Recordset
        rsc.Open "select name,lr_no,isnull(b.rnd_off,0) as round ,isnull(total_amt,0) as total from ig_carrier a,RM_CINVHD b where a.carrier_code=b.carrier_code and b.inv_no='" & rs2("inv_no") & "'", Cnn
        Set RSNOT = New Recordset
        RSNOT.Open "select a.bed_notify,a.aed_notify,b.cone_wt,b.tariffhead,c.description type,c.bed_per,c.aed_per,c.cess_per,d.lsc_per,d.tax_per,e.description from ig_notify a," & _
        "IG_RPRODUCT b,IG_PRODUCTtype c,RM_CINVdt d ,ig_tax e where d.inv_no= '" & rs2("inv_no") & "' and d.inv_type= '" & rs2("inv_type") & "' and b.product_code = d.product_code and c.product_type = b.product_type and a.product_cat = c.product_cat and d.divcode = '" & Divcode & "' and b.ltax_code=e.tax_code and  d.divcode=b.divcode and b.divcode='" & Divcode & "'", Cnn, adOpenStatic

        If Not rsc.EOF Then car = rsc(0)

            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Chr(15)
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            co = co + 15
            If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Then
            Print #a, Space(30) & Chr(14) + Chr(27) + "E" + "WASTE INVOICE " + Chr(27) + "F"; Space(20) & Chr(14) + Chr(27) + "E" + "WASTE INVOICE " + Chr(27) + "F"
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(17) & Chr(27) & "E" & Padr(rs4("slname"), 55, " ") & Space(2) & Padr(Format(val(Right(rs2("inv_no"), 8)), "#0000"), 8, " ") & Chr(27) & "F"; Space(43) + Chr(27) & "E" & Padr(rs4("slname"), 55, " ") & Padr(Format(val(Right(rs2("inv_no"), 8)), "#0000"), 8, " ") & Chr(27) & "F"
            co = co + 8
            Else
            Print #a, Space(25) & Chr(27) & "E" & Padr(rs4("slname"), 55, " ") & Chr(27) & "F" & Space(15) & Padr(Format(val(Right(rs2("inv_no"), 8)), "#0000"), 8, " "); Space(47) + Chr(27) & "E" & Padr(rs4("slname"), 55, " ") & Chr(27) & "F" & Space(18) & Padr(Format(val(Right(rs2("inv_no"), 8)), "#0000"), 8, " ")
            co = co + 1
            End If
            If rs3("inv_type") = "EX" Or rs3("inv_type") = "EE" Or rs3("inv_type") = "EM" Then
                Print #a, Space(25) & Padr(rs4("add1"), 45, " ") & Space(14); Space(39) + Space(27) & Padr(rs4("add1"), 45, " ") & Space(27) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
                Print #a, Space(25) & Padr(rs4("add2"), 45, " ") & Space(24) & Padl(rs2("ptime"), 8, " ") & Space(2) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " "); Space(38) + Padr(rs4("add2"), 45, " ") '& Space(27) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ") '& Padl(rs2("ptime"), 8, " ") ' & Space(2) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
                Print #a, Space(25) & Space(45) & Space(24) & Space(8) & Space(2) & Space(8) & Space(38) + Space(45) & Space(27) & Padl(rs2("ptime"), 8, " ") ' & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
                co = co + 3
            Else
                Print #a, Space(25) & Padr(rs4("add2"), 45, " ") & Space(24) & Space(0) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " "); Space(48) + Padr(rs4("add2"), 45, " ") & Space(27) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")  '& Padl(rs2("ptime"), 8, " ") ' & Space(2) & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
                Print #a, Space(25) & Space(45) & Space(24) & Padl(rs2("ptime"), 8, " ") & Space(2) & Space(8) & Space(38) + Space(45) & Space(27) & Padl(rs2("ptime"), 8, " ") ' & Padr(Format(rs2("DELIVERY_DT"), "DD/MM/YY"), 8, " ")
                co = co + 2
            End If
            Print #a, Space(25) & Padr(rs2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 50, " "); Space(75) + Padr(rs2("city") & IIf(IsNull(rs4("pin")), " ", IIf(rs4("PIN") = "", " ", "-" & rs4("pin"))), 50, " ")
            co = co + 1
            If rs4("PHONE1") = "" Then
                Print #a, Space(83) & Padr(rs2("DESPTO"), 25, " "); Space(42) + Padr(rs2("DESPTO"), 25, " ")
                co = co + 1
            Else
                Print #a, Space(25) & "PH.NO :" & IIf(IsNull(rs4("PHONE1")), Space(35), Padr(rs4("phone1"), 35, " ")) & Space(10) & Space(8) & Space(9) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " "); Space(48) & "PH.NO :" & Padr(rs4("phone1"), 35, " ") & Space(10) & Space(8) & Space(12) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " ")
                Print #a, Space(25) & Space(69) & Padl(rs2("rtime"), 8, " ") & Space(43) & Space(77) & Padl(rs2("rtime"), 8, " ")   ' & Space(2) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " ")
                co = co + 2
            End If
        'If rs2("cr_days") <> " " Or rs2("cr_days") >= 0 Then
        crdate = rs2("cr_days")
        crdate1 = DateAdd("d", crdate, rs2("date"))
        'End If

        Print #a, Space(25) & "R.C.No  :" & IIf(IsNull(rs2("rc_no")), Space(23), Padr(rs2("RC_NO"), 14, " ")) & Space(1) & "TIN No. : " & Padr(rs4("tinno"), 20, " ") & Space(14) & Space(2) & Space(8); Space(38) & "R.C.No  :" & IIf(IsNull(rs2("rc_no")), Space(23), Padr(rs2("RC_NO"), 14, " ")) & Space(3) & "TIN No. : " & Padr(rs4("tinno"), 23, " ") ' & Space(22) & Space(18) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " ")  '& Space(2) & Padr(Format(rs2("date"), "DD/MM/YY"), 8, " ")
        co = co + 1
        descrip = rs3("description")
        Set rs3 = New Recordset
        'rs3.Source "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,d.lot_code,b.pack_type ,B.PRODUCT_TYPE  from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_rBOHD E " & _
        " where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE and a.invsno = d.sl_no AND a.divcode='" & divcode & "' and a.inv_type like 'W%' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type " & _
        " and a.product_code=d.product_code group by a.product_code,b.description,lot_code,b.pack_type,B.PRODUCT_TYPE ORDER BY A.product_code", cnn, adOpenStatic
        rs3.Open "select distinct a.product_code,b.description,a.cont_no,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,ISNULL(a.aed_per,0) AS aed_per,a.aed_amt,a.value,a.rate_ex,0 AS rate_units,a.tax_per,a.tax_amt,a.lsc_per,a.lsc_amt,isnull(b.bundle_wt,1) as bundle," & _
        "a.inv_type,E.DESCRIPTION AS NAME from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_PRODUCTTYPE E where a.divcode='" & Divcode & "' and a.inv_type = '" & rs2("inv_type") & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' AND E.PRODUCT_TYPE=B.PRODUCT_TYPE", Cnn, adOpenStatic, adLockBatchOptimistic
        'rs3.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,d.lot_code,b.pack_type ,B.PRODUCT_TYPE,(d.case_rate) as case_rate ,d.packchrg_wt  from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_rBOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
        "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE and a.invsno = d.sl_no AND a.divcode='" & divcode & "' and a.inv_type like 'W%' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type " & _
        "and a.product_code=d.product_code group by a.product_code,b.description,lot_code,b.pack_type,d.packchrg_wt,case_rate,B.PRODUCT_TYPE ORDER BY A.product_code", cnn, adOpenStatic
                
        Set rsb = New Recordset
        
        rsb.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,d.lot_code,b.pack_type,sum(d.case_rate) as case_rate,a.invsno,d.packno_code from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_rBOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND " & _
        " D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type= '" & rs2("inv_type") & "'   and  a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code AND A.NETT_KGS=D.NETT_KGS  group by a.product_code,b.description,lot_code,b.pack_type,d.packchrg_wt,a.invsno,d.packno_code ORDER BY A.product_code", Cnn, adOpenStatic
        
        'rsb.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(D.nett_kgs) as nett_kgs,a.value  as value,sum(a.rate_ex)/count(*) as rate_ex,b.pack_type,sum(d.case_rate) as case_rate,a.invsno from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_rBOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE AND " & _
        " D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "'  and  a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code group by a.product_code,b.description,b.pack_type,d.packchrg_wt,a.invsno,A.VALUE ORDER BY A.product_code,INVSNO", cnn, adOpenStatic
        
        Set KK = New Recordset
        KK.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
        'kk.Open "select distinct a.description from ig_packtype a,ig_packnos b where a.pack_type=b.pack_type  and a.pack_type='" & rsb("pack_type") & "'", cnn, adOpenStatic
        Print #a,
        Print #a,
        'Print #a,
        co = co + 2
        val1 = 0
        Do While Not rs3.EOF
            RATE1 = IIf(val(rs3("rate_ex")) > 0, val(rs3("rate_ex")), 0)
            SNO = SNO + 1
            V = 0
            V = rs3("VALUE") + rs2("CHARITY")
            
             'Print #a,
             'Print #a,
'             Print #a,
'             Print #a,
'             Print #a,
            Print #a, Space(2) & Padr(rs3("description"), 45, " ") & Space(0) & Padl(rs3("packs"), 4, " ") & Space(5) & Padl(INF(rs3("nett_kgs"), 3), 8, " ") & Space(2) & Padl(INF(rs3("rate_ex"), 2), 12, " ") & Space(7) + Space(2 + 5) & Padl(INF(rs3("value"), 2), 14, " "); Space(23) + Padr(rs3("description"), 45, " ") & Space(0) & Padl(rs3("packs"), 4, " ") & Space(5) & Padl(INF(rs3("nett_kgs"), 3), 8, " ") & Space(2) & Padl(INF(rs3("rate_ex"), 2), 12, " ") & Space(4) + Space(2 + 5) & Padl(INF(rs3("value"), 2), 14, " ")
            Print #a, Space(2) & Padr(" ", 35, " ") & Padl(KK("description"), 15, " ") & Space(5) & Padl(" ", 8, " ") & Space(2) & Padl(" ", 12, " ") & Space(7) + Space(2 + 5) & Padl(" ", 14, " "); Space(23) + Padr(" ", 34, " ") & Padl(KK("description"), 15, " ") & Space(5) & Padl(" ", 8, " ") & Space(2) & Padl(" ", 12, " ") & Space(4) + Space(2 + 5) & Padl(" ", 14, " ")
            co = co + 2
            val1 = val1 + rs3("VALUE")
            'Print #a, Space(2) & Padr(" ", 45, " ") & Padr(kk("description"), 15, " ")
           'Print #a, Space(45) & "        Charity" & Space(1) & Padr(INF(rs2("CHARITY"), 2), 14, " ")
'            For c = 29 To 34
'              Print #a,
'            Next
            Set rsd = New Recordset
            rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,IG_rBOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
                "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & Divcode & "' and a.inv_type= '" & rs2("inv_type") & "'  and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,lot_code,b.pack_type ORDER BY A.product_code", Cnn, adOpenStatic

             Do While Not rsd.EOF
             
            If rs5.State = adStateOpen Then rs5.Close
            Set rs5 = New Recordset
            'rs5.Open "select distinct a.product_code,b.spack_no,b.epack_no,b.lot_code as ldesc,b.pack_year  from ig_packnos a,ig_rbodt b where a.product_code=b.product_code and a.packno_code=b.packno_code" & _
                " and a.pack_type=b.pack_type and a.lot_code=b.lot_code and a.divcode=b.divcode " & _
                " and a.pack_no>=spack_no and a.pack_no<=epack_no and  bo_no='" & rs2("BO_no") & "' and a.product_code='" & rsd("product_code") & "'", cnn, adOpenStatic, adLockBatchOptimistic
            rs5.Open "select distinct a.product_code,b.description,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,ig_rbohd e,ig_lot l where  e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
             " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & rs2("inv_type") & "' and a.divcode=b.divcode and " & _
             " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
             " and a.inv_no='" & rs2("inv_no") & "'", Cnn, adOpenStatic, adLockBatchOptimistic

            pack_no = " "
            rs5.MoveFirst
            lot_des = " "
            GG = 1
            lot_desc = ""
            While Not rs5.EOF
                If pack_no = " " Then
                    If rs5("spack_no") = rs5("epack_no") Then
                        pack_no = CStr(rs5("spack_no"))
                    ElseIf rs5("spack_no") <> rs5("epack_no") Then
                        pack_no = CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
                    End If
                Else
                    If CStr(rs5("spack_no")) = rs5("epack_no") Then
                        pack_no = pack_no & "," & CStr(rs5("spack_no"))
                    ElseIf rs5("spack_no") <> rs5("epack_no") Then
                        pack_no = pack_no & "," & CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
                    End If
                End If
                
                If rs5("ldesc") <> lot_des Then
                    If GG = 1 Then
                        lot_desc = rs5("ldesc")
                    Else
                        lot_desc = lot_desc + " , " + rs5("ldesc")
                    End If
                    lot_des = rs5("LDESC")
                End If
                GG = GG + 1
                rs5.MoveNext
             Wend
'             pack_no1 = Mid$(pack_no, 1, 60)
'             pack_no2 = Mid$(pack_no, 61, 120)
'             pack_no3 = Mid$(pack_no, 121, 180)
'             pack_no4 = Mid$(pack_no, 181, 240)
'             pack_no5 = Mid$(pack_no, 241, 300)
'             pack_no6 = Mid$(pack_no, 301, 360)
'             pack_no7 = Mid$(pack_no, 361, 420)
'             tcnt = 0
'             'Print #a, Space(15) & Padr(LOT_DESC, 60, " "); Space(68) & Padr(LOT_DESC, 60, " ")
'             If Len(pack_no1) > 0 Then
'                tcnt = tcnt + 1
'                 Print #a, Space(15) & Padr(Trim(CStr(pack_no1)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no1)), 61, " ")
'             End If
'             If Len(pack_no2) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no2)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no2)), 61, " ")
'             End If
'             If Len(pack_no3) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no3)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no3)), 61, " ")
'             End If
'             If Len(pack_no4) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no4)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no4)), 61, " ")
'             End If
'             If Len(pack_no5) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no5)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no5)), 61, " ")
'             End If
'             If Len(pack_no6) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no6)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no6)), 61, " ")
'             End If
'             If Len(pack_no7) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no7)), 61, " "); Space(67) + Padr(Trim(CStr(pack_no7)), 61, " ")
'             End If
             rsd.MoveNext
             Loop
'             Print #a,
'             Print #a,
'             Print #a,
'             Print #a,
'             Print #a,
'             Print #a,
'             Print #a,
'             Print #a, Space(91) & Padl(INF(rs3("value"), 2), 14, " "); Space(111) + Padl(INF(rs3("value"), 2), 14, " ")
            Set UOMRS = New Recordset
            UOMRS.Open "SELECT DESCRIPTION FROM IG_PACKTYPE WHERE PACK_TYPE='" & rs3!pack_type & "'", Cnn, adOpenStatic, adLockBatchOptimistic
            UOMRS.MoveFirst
            
            Set COMMODITY = New Recordset
            COMMODITY.Open "SELECT DESCRIPTION FROM IG_PRODUCTTYPE WHERE PRODUCT_TYPE='" & rs3("PRODUCT_TYPE") & "' ", Cnn, adOpenStatic
            COMMODITY.MoveFirst

            UNT = UOMRS("description")
            'If RS5.State = adStateOpen Then RS5.Close
            Set rs5 = New Recordset
            ' rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_invdt a,IG_RPRODUCT b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
             " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and a.inv_no between '" & Trim(Mid(v, 1, 8)) & "' and '" & Trim(Mid(w, 1, 8)) & "'and a.divcode=b.divcode and " & _
             " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
             " and a.inv_no='" & rs2("inv_no") & "' and d.packchrg_wt=" & rs3("packchrg_wt") & " ", cnn, adOpenStatic, adLockBatchOptimistic
             rs5.Open "select distinct a.product_code,b.description,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from RM_CINVdt a,IG_RPRODUCT b,ig_rbodt d,ig_rbohd e,ig_lot l where  e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
             " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & Divcode & "' and a.inv_type='" & rs2("INV_TYPE") & "' and a.inv_no = '" & rs2("INV_NO") & "'and a.divcode=b.divcode and " & _
             " a.product_code=b.product_code and a.product_code='" & rs3("product_code") & "' and a.invsno=d.sl_no" & _
             " and a.inv_no='" & rs2("inv_no") & "'", Cnn, adOpenStatic, adLockBatchOptimistic

            pack_no = " "
            tot1 = tot1 + rs3!value
            rs3.MoveNext
            ci = ci + 1
            rsb.MoveNext
        Loop
            K = co
            If K < 34 Then
            For ii = K To 34
              Print #a,
            Next
            End If

             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             Print #a,
             'Print #a,

                    Print #a, Space(91) & Padl(INF(val1, 2), 14, " "); Space(111) + Padl(INF(val1, 2), 14, " ")
                    Print #a,
        t1 = 0
        If ci <= 3 Then 'starting if for 1 to 3 items edited on 08-09-2005
        If SNO = 1 Then
            Print #a,
        End If
        If SNO = 2 Then
            'Print #a,
            'Print #a,
            'Print #a,
        End If
        Else
        If SNO = 4 Then
     Print #a,
     Print #a,
     End If
        End If 'Closing if for items ranging 1 to 3 on 08-09-2005
    
    If RSNOT.RecordCount > 0 Then
      '  Print #a, Space(18) & Padr(UOMRS("description"), 15, " ") & Space(14) & IIf(IsNull(rsnot("bed_per")), "0.00", Padl(rsnot("bed_per"), 5, " ")) & "% on TAV   " & Space(2) & Padl(INF(rs2("bed_amt"), 2), 14, " "); Space(60) + Padr(UOMRS("pack_type"), 15, " ") & Space(14) & IIf(IsNull(rsnot("bed_per")), "0.00", Padl(rsnot("bed_per"), 5, " ")) & "% on TAV   " & Space(2) & Padl(INF(rs2("bed_amt"), 2), 14, " ")
        'Print #a, Space(18) & Padr(rsnot("tariffhead"), 12, " ") & Space(22) & Padl(rsnot("aed_per"), 5, " ") & "% on CENVAT" & Space(2) & Padl(INF(rs2("aed_amt"), 2), 14, " "); Space(20) + Padr(rsnot("tariffhead"), 12, " ") & Space(22) & Padl(rsnot("aed_per"), 5, " ") & "% on CENVAT" & Space(2) & Padl(INF(rs2("aed_amt"), 2), 14, " ")
   Else
        Print #a, Space(18) & Padr(UOMRS("description"), 15, " ") & Space(14) & Space(5) & "           " & Space(2) & Padl(INF(rs2("bed_amt"), 2), 14, " "); Space(60) + Padr(UOMRS("pack_type"), 15, " ") & Space(14) & Space(5) & "           " & Space(2) & Padl(INF(rs2("bed_amt"), 2), 14, " ")
        Print #a, Space(18) & Space(12) & Space(22) & Space(5) & "           " & Space(2) & Padl(INF(rs2("aed_amt"), 2), 14, " "); Space(20) + Space(12) & Space(22) & Space(5) & "           " & Space(2) & Padl(INF(rs2("aed_amt"), 2), 14, " ")
   End If
        Print #a,
        Print #a,
'        Print #a,
'        Print #a,
'        Print #a,
'        Print #a,
        
             Set Rs = New Recordset
             Rs.Open "select distinct d.tax_per,d.lsc_per,c.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME," & _
                     " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off, a.total_Amt,c.ordrefno," & _
                     " c.ordredate,a.entdate,a.charity,A.REMARKS  from RM_CINVHD A,ig_rbohd c,RM_CINVdt d where " & _
                     " a.inv_no='" & rs2(0) & "' and a.date='" & Format(rs2("DATE"), "yyyy/mm/dd") & "' " & _
                     " AND a.INV_TYPE='" & rs2("inv_type") & "' and a.inv_no=d.inv_no" & _
                     " and a.inv_type=d.inv_type  and a.divcode=d.divcode  and" & _
                     " a.DATE=c.DATE and a.divcode=c.divcode and a.bo_no=c.bo_no and a.inv_no=c.inv_no and a.divcode=d.divcode", Cnn, adOpenStatic
             'rs.Open "select distinct d.tax_per,d.lsc_per,c.vehicle_no AS VEHICLE,PRE_TIME,REM_TIME,a.PONO,a.PODATE," & _
                     " a.bed_amt,a.aed_amt,a.cess_amt,a.tax_Amt,a.lsc_Amt,a.rnd_off,total_Amt,c.ordrefno," & _
                     " c.ordredate,a.entdate,a.charity,A.REMARKS  from ig_invhd A,ig_bohd c,ig_invdt d where " & _
                     " a.inv_no='" & rs2(0) & "' and a.date='" & Format(rs2("DATE"), "yyyy/mm/dd") & "' " & _
                     " AND a.INV_TYPE='" & rs2("inv_type") & "' and a.inv_no=d.inv_no" & _
                     " and a.inv_type=d.inv_type  and a.divcode=d.divcode  and" & _
                     " a.DATE=c.DATE and a.divcode=c.divcode and a.bo_no=c.bo_no and a.inv_no=c.inv_no and a.cust_code=c.cust_code and a.divcode=d.divcode", cnn, adOpenStatic
             
             X = Num_To_Word(Round(Rs("total_amt"), 0))
             tot3 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!tax_Amt + Rs!lsc_Amt + Rs!rnd_off
             tot1 = tot1 + Rs!bed_amt + Rs!aed_amt + Rs!cess_amt + Rs!Charity
             Print #a,
             If RSNOT.RecordCount > 0 Then
               Print #a, Space(30) & Padr(" ", 40, " ") & Space(2) & Padl(" ", 5, " ") & " " & Space(13) & Padl(INF(Rs("cess_amt"), 2), 14, " "); Space(45) + Padr(" ", 40, " ") & Space(7) & Padl(" ", 5, " ") & " " & Space(13) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " ")); Space(96 + 15) + IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " "))
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " ")); Space(111) + IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " "))
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & Padl(INF(tot1, 2), 14, " "); Space(111) + Padl(INF(tot1, 2), 14, " ")
             Else
               Print #a, Space(20) & Space(40) & Space(2) & Space(15) & "%          " & Space(3) & Padl(INF(Rs("cess_amt"), 2), 14, " "); Space(50) & Space(40) & Space(2) & Space(5) & "%          " & Space(3) & Padl(INF(Rs("cess_amt"), 2), 14, " ")
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " ")); Space(96 + 15) + IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " "))
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " ")); Space(111) + IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " "))
               Print #a, Space(30) & Padr(" ", 40, " "); Space(45) + Padr(" ", 40, " ")
               Print #a, Space(91) & Padl(INF(tot1, 2), 14, " "); Space(111) + Padl(INF(tot1, 2), 14, " ")
             End If
             Print #a,
             If Rs("tax_amt") <> Empty And Rs("tax_amt") <> "0" Then
                  Print #a, Space(72) & Padl("Vat " & Rs("tax_per") & "%", 6, " ") & Space(6 + 7) & Padl(INF(Rs("tax_amt"), 2), 14, " "); Space(92) + Padl("Vat " & Rs("tax_per") & "%", 6, " ") & Space(6 + 7) & Padl(INF(Rs("tax_amt"), 2), 14, " ")
             End If
             If rs2("tax_amt") = Empty Or rs2("tax_amt") = 0 Then
             End If

             If Rs("lsc_per") <> Empty And Rs("lsc_per") <> "0" Then
                Print #a, 'Space(70) & Padl(rs("lsc_per") & "%", 5, " ") & Space(6) & Padl(INF(rs("lsc_Amt"), 2), 14, " "); Space(70) + Padl(rs("lsc_per") & "%", 5, " ") & Space(6) & Padl(INF(rs("lsc_Amt"), 2), 14, " ")
             Else
                Print #a, Space(85)
             End If
             'Print #a, Space(91) & IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " ")); Space(96 + 15) + IIf(IsNull(rs2("FREIGHT")), " ", Padl(INF(rs2("FREIGHT"), 2), 14, " "))
             Print #a,
             'Print #a, 'Space(91) & IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " ")); Space(111) + IIf(IsNull(rs2("INS_AMT")), " ", Padl(INF(rs2("INS_AMT"), 2), 14, " "))
             'Print #a,
             'Print #a,
             'Print #a, Space(25) & Padr(lorr, 15, " ") & Space(51) & Padl(" ", 14, " "); Space(45) & Padr(lorr, 15, " ") & Space(51) & Padl(" ", 14, " ")
             Print #a, Space(25) & Padr(lorr, 15, " ") & Space(51) & Chr(27) + "E" & Padl(INF(Rs("total_amt"), 2), 14, " ") & Chr(27) + "F"; Space(45) & Padr(lorr, 15, " ") & Space(51) & Chr(27) + "E" & Padl(INF(Rs("total_amt"), 2), 14, " ") & Chr(27) + "F"
             Print #a, Space(91) ' & Chr(27) + "E" & Padl(INF(RS("total_amt"), 2), 14, " ") & Chr(27) + "F"; Space(111) & Chr(27) + "E" & Padl(INF(RS("total_amt"), 2), 14, " ") & Chr(27) + "F"
             Print #a, Space(85)
             aa = "": B = 0:
             'Print #a,
             Print #a,
             Print #a, Space(28) + Padr(Trim(Mid$(Num_To_Word(CStr(Rs("total_amt"))), 8, Len(Num_To_Word(CStr(Rs("total_amt")))))), 65, " "); Space(65) + Padr(Trim(Mid$(Num_To_Word(CStr(Rs("total_amt"))), 8, Len(Num_To_Word(CStr(Rs("total_amt")))))), 65, " ")
             Print #a,
             If Rs("remarks") <> "" Or Rs("remarks") <> Null Then
                Print #a, Space(20) & Padr(Rs("REMARKS"), 75, " "); Space(20) + Padr(Rs("REMARKS"), 75, " ")
             End If
             Print #a,
             Print #a, Space(74)
             If Rs("tax_per") <> Empty And Rs("tax_per") <> "0" Then
               ' *** Total AED & BED amt in Words ***
                 X = IIf(Rs!bed_amt + Rs!aed_amt = 0, " ", Replace(Num_To_Word(Round(Rs!bed_amt + Rs!aed_amt, 0)), "  ", " "))
                 X = Replace(X, "RUPEES ", "")
                 If Len(X) > 40 Then
                    If Mid(X, 40, 1) = " " Or Mid(X, 41, 1) = " " Then
                        Print #a, Space(10) & Padr(Mid(X, 1, 40), 40, " "); Space(20) + Padr(Mid(X, 1, 40), 40, " ")
                        Print #a, Padr(Mid(X, 41, Len(X)), 40, " "); Space(20) + Padr(Mid(X, 41, Len(X)), 40, " ")
                    Else
                        aa = Right(X, 8)
                        For J = 1 To 8
                            If Mid(aa, J, 1) = " " Then
                                Exit For
                            End If
                        Next J
                        B = 40 - 8 + (J - 1)
                        'Print #a, Space(6) & Padr(Mid(x, 1, B), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                        Print #a, Space(10) & Padr(Mid(X, 1, B), 40, " "); Space(20) + Padr(Mid(X, 1, B), 40, " ")
                        Print #a, Padr(Mid(X, B + 1, Len(X)), 40, " "); Space(20) + Padr(Mid(X, B + 1, Len(X)), 40, " ")
                    End If
                ElseIf Len(X) > 0 Then
                        'Print #a, Space(6) & Padr(Mid(x, 1, Len(x)), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                        'Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 40, " "); Space(20) + Padr(Mid(X, 1, Len(X)), 40, " ")
                      End If
                If Len(X) = 0 Then
                        Print #a, Space(10) & "Nill"
                End If
             
             Else
                       
                         'x = IIf(rs!remarks , " ", Replace(Num_To_Word(Round(rs!bed_amt + rs!aed_amt, 0)), "  ", " "))
                         'x = Replace(x, "RUPEES ", "")
                          X = Rs("remarks")
                            
                    If Len(X) > 70 Then
                    If Mid(X, 70, 1) = " " Or Mid(X, 71, 1) = " " Then
                        Print #a, Space(10) & Padr(Mid(X, 1, 70), 70, " "); Space(20) + Padr(Mid(X, 1, 70), 70, " ")
                        Print #a, Space(10) & Padr(Mid(X, 71, Len(X)), 70, " "); Space(20) + Padr(Mid(X, 71, Len(X)), 70, " ")
                    Else
                        aa = Right(X, 8)
                        For J = 1 To 8
                            If Mid(aa, J, 1) = " " Then
                                Exit For
                            End If
                        Next J
                        B = 80 - 8 + (J - 1)
                        'Print #a, Space(6) & Padr(Mid(x, 1, B), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                        Print #a, Space(10) & Padr(Mid(X, 1, B), 70, " "); Space(20) + Padr(Mid(X, 1, B), 70, " ")
                        Print #a, Space(10) & Padr(Mid(X, B + 1, Len(X)), 70, " "); Space(20) + Padr(Mid(X, B + 1, Len(X)), 70, " ")
                    End If
                ElseIf Len(X) > 0 Then
                        'Print #a, Space(6) & Padr(Mid(x, 1, Len(x)), 40, " ") & Space(18) & Padl(INF(rs("total_amt"), 2), 12, " ")
                        Print #a, Space(10) & Padr(Mid(X, 1, Len(X)), 70, " "); Space(20) + Padr(Mid(X, 1, Len(X)), 70, " ")
                End If
'                If Len(X) = 0 Then
'                        Print #a, Space(10) & "Nill"
'                End If
                    
             End If
             
             Print #a,
             Print #a,
'            Set rsd = New Recordset
'            rsd.Open "select distinct a.product_code,b.description,sum(a.packs) as packs,sum(a.nett_kgs) as nett_kgs,sum(a.value) as value,sum(a.rate_ex) as rate_ex,b.pack_type,(d.case_rate) as case_rate ,d.packchrg_wt from ig_invdt a,IG_RPRODUCT b,ig_bodt d,IG_BOHD E where D.BO_NO=E.BO_NO AND D.BO_TYPE=E.BO_TYPE " & _
'                "AND D.DIVCODE=E.DIVCODE AND A.DIVCODE=D.DIVCODE AND a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and a.divcode=b.divcode and a.product_code=b.product_code and a.inv_no='" & rs2("inv_no") & "' and a.inv_no=E.INV_no and a.inv_type=E.INV_type and a.product_code=d.product_code  group by a.product_code,b.description,lot_code,b.pack_type,d.packchrg_wt,case_rate ORDER BY A.product_code", cnn, adOpenStatic
'
'             Do While Not rsd.EOF
'
'            If rs5.State = adStateOpen Then rs5.Close
'            Set rs5 = New Recordset
'             rs5.Open "select distinct a.product_code,b.description,l.description as ldesc,a.packs,a.nett_kgs,a.bed_per,a.bed_amt,a.aed_per,a.aed_amt,a.value,a.rate_ex,1 as rate_units,d.bo_type,d.bo_no,spack_no,epack_no,packno_code,a.invsno from ig_invdt a,IG_RPRODUCT b,ig_bodt d,ig_bohd e,ig_lot l where l.lot_code = d.lot_code and e.bo_type=d.bo_type and e.bo_no=d.bo_no and e.divcode=a.divcode and" & _
'             " e.inv_no=a.inv_no and e.inv_type=a.inv_type and A.divcode=b.divcode AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.divcode=D.divcode AND A.PRODUCT_CODE=D.PRODUCT_CODE AND A.CONT_TYPE=D.CONT_TYPE AND A.CONT_NO=D.CONT_NO and a.divcode='" & divcode & "' and a.inv_type='" & Trim(Mid(u, 1, 2)) & "' and a.divcode=b.divcode and " & _
'             " a.product_code=b.product_code and a.product_code='" & rsd("product_code") & "' " & _
'             " and a.inv_no='" & rs2("inv_no") & "' ", cnn, adOpenStatic, adLockBatchOptimistic
'
'            pack_no = " "
'            rs5.MoveFirst
'            lot_des = " "
'            GG = 1
'            While Not rs5.EOF
'                If pack_no = " " Then
'                    If rs5("spack_no") = rs5("epack_no") Then
'                        pack_no = CStr(rs5("spack_no"))
'                    ElseIf rs5("spack_no") <> rs5("epack_no") Then
'                        pack_no = CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
'                    End If
'                Else
'                    If CStr(rs5("spack_no")) = rs5("epack_no") Then
'                        pack_no = pack_no & "," & CStr(rs5("spack_no"))
'                    ElseIf rs5("spack_no") <> rs5("epack_no") Then
'                        pack_no = pack_no & "," & CStr(rs5("spack_no")) & "-" & CStr(rs5("epack_no"))
'                    End If
'                End If
'
'                If rs5("ldesc") <> lot_desc Then
'                    If GG = 1 Then
'                        lot_desc = rs5("ldesc")
'                    Else
'                        lot_desc = lot_desc + " , " + rs5("ldesc")
'                    End If
'                End If
'                GG = GG + 1
'                rs5.MoveNext
'             Wend
'             pack_no1 = Mid$(pack_no, 1, 60)
'             pack_no2 = Mid$(pack_no, 61, 120)
'             pack_no3 = Mid$(pack_no, 121, 180)
'             pack_no4 = Mid$(pack_no, 181, 240)
'             pack_no5 = Mid$(pack_no, 241, 300)
'             pack_no6 = Mid$(pack_no, 301, 360)
'             pack_no7 = Mid$(pack_no, 361, 420)
'             tcnt = 0
'             Print #a, Space(10) & Padr(lot_desc, 60, " ")
'             If Len(pack_no1) > 0 Then
'                tcnt = tcnt + 1
'                 Print #a, Space(10) & Padr(Trim(CStr(pack_no1)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no1)), 61, " ")
'             End If
'             If Len(pack_no2) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no2)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no2)), 61, " ")
'             End If
'             If Len(pack_no3) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no3)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no3)), 61, " ")
'             End If
'             If Len(pack_no4) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no4)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no4)), 61, " ")
'             End If
'             If Len(pack_no5) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no5)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no5)), 61, " ")
'             End If
'             If Len(pack_no6) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no6)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no6)), 61, " ")
'             End If
'             If Len(pack_no7) > 0 Then
'                tcnt = tcnt + 1
'                Print #a, Space(10) & Padr(Trim(CStr(pack_no7)), 61, " "); Space(20) + Padr(Trim(CStr(pack_no7)), 61, " ")
'             End If
'             rsd.MoveNext
'             Loop
             Print #a,
             Print #a,
             Print #a,
             'Print #a, Space(14) & Format(rs2("DATE"), "DD/MM/YY") & Space(4) & Format(rs2("DATE"), "DD/MM/YY"); Space(20) + Format(rs2("DATE"), "DD/MM/YY") & Space(4) & Format(rs2("DATE"), "DD/MM/YY")
             'Print #a, Space(15) & Format(rs2("PRE_TIME"), "HH:MM") & Space(7) & Format(rs2("REM_TIME"), "HH:MM"); Space(20) + Format(rs2("PRE_TIME"), "HH:MM") & Space(7) & Format(rs2("REM_TIME"), "HH:MM")
                       
             rs2.MoveNext
             Print #a, Chr(18)
             Print #a, Chr(12)
    Loop
Close #a
a = FreeFile
Call KALBATPROCESS("WStkINVP")

'Open "c:\WStkINVP.bat" For Output As #a
'Print #a, "cd\"
'Print #a, "c:"
'Print #a, "cd\"
'Print #a, "type WStkINVP.txt>prn"
'Close #a
'rptv.txtfile = "c:\WStkINVP.txt"
'rptv.Batfile = "c:\WStkINVP.bat"

er1:
    If Err.Number = 3021 Then
        MsgBox "Please enter the family details for this employee", vbInformation, head
        Close
    End If
Exit Sub
Inv_PrePrintFormNEW_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Inv_PrePrintFormNEW of Form WasteInvoiceRep1", vbInformation, head

End Sub

Public Sub PrePrint_LMW(finvno As String, tinvno As String, INVTYPE As String, sHead As String)
    Set DB = New Connection
    DB.Open connectstring
    
    Dim STotPacks(10) As String
    Dim sCustAdd(10) As String
    
    Dim rst1 As New ADODB.Recordset
    Dim Rst2 As New ADODB.Recordset
    
    Set rsnew = New Recordset
    rsnew.Open "Select Inv_no from RM_CINVHD WHERE Divcode='" & Divcode & "' AND Inv_type='" & INVTYPE & "' and Inv_no Between '" & finvno & "' and '" & tinvno & "'", DB, adOpenForwardOnly, adLockReadOnly
    If rsnew.EOF Then
        MsgBox "No Records to found", vbInformation, head
        Exit Sub
    End If
    
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    z = 1
    Open "C:\g1.TXT" For Output As #z
    
    Set Rst2 = New ADODB.Recordset
    Rst2.Open "Select Inv_no from RM_CINVHD WHERE Divcode='" & Divcode & "' AND Inv_type='" & INVTYPE & "' and Inv_no Between '" & finvno & "' and '" & tinvno & "'", DB, adOpenForwardOnly, adLockReadOnly
    
    
    Do While Not Rst2.EOF
          
          
    Set rsnew = New Recordset
    'RsNew.Open "select * from wvg_invhd where inv_type='" & InvType & "' and inv_no = '" & INVNO & "'  and divcode='" & divcode & "'", Db, adOpenStatic
    rsnew.Open "[KSG_RM_CottonInvoice] '" & Divcode & "','" & Rst2("Inv_no") & "','" & INVTYPE & "'", DB, adOpenStatic, adLockOptimistic
    
    If rsnew.EOF Then
        MsgBox "No Records to found", vbInformation, head
        Exit Sub
    End If



    pg = 1
    co = 0
    SNO = 1
    TOTBALES = 0
    totbales1 = 0
    totbales2 = 0
    totkgs = 0
    
    rsnew.MoveFirst
    Do While Not rsnew.EOF
        TOTBALES = val(TOTBALES) + val(rsnew("Packs") & "")
        totkgs = val(totkgs) + val(rsnew("gross_kgs") & "")
        
        If rsnew("uom") = "BALES" Then
          totbales1 = val(totbales1) + val(rsnew("Packs") & "")
        Else
          totbales2 = val(totbales2) + val(rsnew("Packs") & "")
        End If
        
        rsnew.MoveNext
    Loop


rsnew.MoveFirst
Do While Not rsnew.EOF


        Set rst1 = New ADODB.Recordset
        strQty = "SELECT c.cname,c.add1,c.City,c.add2,c.pin"
        strQty = strQty & " FROM RM_CINVHD AS a INNER JOIN IG_RBOHD b ON a.DIVCODE = b.DIVCODE"
        strQty = strQty & " AND a.BO_TYPE = b.BO_TYPE AND a.BO_NO = b.BO_NO INNER JOIN ig_deladd c ON b.CUST_CODE=c.slcode and b.delcode=c.delcode "
        strQty = strQty & " WHERE a.Divcode='" & Divcode & "' AND a.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND a.INV_NO='" & rsnew("Inv_no") & "' "
                
        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        If Not rst1.EOF Then
            sDelName = rst1("cname")
            sDelCity = rst1("City") + "-" + rst1("pin")
            sDelAdd1 = rst1("add1")
            sDelAdd2 = rst1("add2")
        Else
            sDelName = ""
            sDelCity = ""
            sDelAdd1 = ""
            sDelAdd2 = ""
        End If
        
        
        
        Set rst1 = New ADODB.Recordset
        
        strQty = " SELECT TOP (1) IG_RCONTHD.ORDREFNO, Ig_PayTerm.PayTerm_Desc, IG_RCONTHD.DATE    "
        strQty = strQty & " FROM RM_CINVHD INNER JOIN"
        strQty = strQty & " IG_RBODT ON RM_CINVHD.DIVCODE = IG_RBODT.DIVCODE AND RM_CINVHD.BO_TYPE = IG_RBODT.BO_TYPE AND"
        strQty = strQty & " RM_CINVHD.BO_NO = IG_RBODT.BO_NO INNER JOIN"
        strQty = strQty & " IG_RCONTHD ON IG_RBODT.DIVCODE = IG_RCONTHD.DIVCODE AND IG_RBODT.CONT_TYPE = IG_RCONTHD.CONT_TYPE AND"
        strQty = strQty & " IG_RBODT.CONT_NO = IG_RCONTHD.CONT_NO LEFT OUTER JOIN"
        strQty = strQty & " Ig_PayTerm ON IG_RCONTHD.PAY_TERMS = Ig_PayTerm.PayTerm_Code"
        strQty = strQty & " WHERE RM_CINVHD.Divcode='" & Divcode & "' AND RM_CINVHD.INV_TYPE='" & rsnew("Inv_Type") & "' "
        strQty = strQty & " AND RM_CINVHD.INV_NO='" & rsnew("Inv_no") & "' "
        strQty = strQty & " ORDER BY IG_RCONTHD.DATE"

        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
        If Not rst1.EOF Then
            CustRefNo = rst1("ORDREFNO")
            payterm_Desc = rst1("PayTerm_Desc")
        Else
            CustRefNo = ""
            payterm_Desc = ""
        End If
        
        If Not rsnew.EOF Then
            Lrno = IIf(IsNull(rsnew("Lr_No")), "", rsnew("Lr_No"))
            LorryNo = IIf(IsNull(rsnew("Vehicle_No")), "", rsnew("Vehicle_No"))
        End If
              
        
        For i = 1 To 6
            STotPacks(i) = ""
        Next
        
'''        Set rst1 = New ADODB.Recordset
'''        strQty = "SELECT sum(a.Packs)Packs,b.DESCRIPTION"
'''        strQty = strQty & " FROM RM_CINVdt AS a INNER JOIN IG_PACKTYPE b ON a.PACK_TYPE=b.PACK_TYPE"
'''        strQty = strQty & " WHERE a.Divcode='" & Divcode & "' AND a.INV_TYPE='" & RSnew("Inv_Type") & "' "
'''        strQty = strQty & " AND a.INV_NO='" & RSnew("Inv_no") & "' Group by b.DESCRIPTION "
'''
'''        rst1.Open strQty, DB, adOpenForwardOnly, adLockReadOnly
'''        i = 0
'''        If Not rst1.EOF Then
'''            Do While Not rst1.EOF
'''                i = i + 1
'''                STotPacks(i) = rst1(0) & " " & rst1(1)
'''
'''                rst1.MoveNext
'''            Loop
        'End If
        
        
        sTARIFFHEAD1 = "": sTARIFFHEAD2 = "": sTARIFFHEAD = ""
        'sTARIFFHEAD = RSnew("TARIFFHEAD")
        If Len(sTARIFFHEAD) > 25 Then
            sTARIFFHEAD1 = Mid(sTARIFFHEAD, 1, InStrRev(Left(sTARIFFHEAD, 25), " ") - 1)
            sTARIFFHEAD2 = Mid(sTARIFFHEAD, InStrRev(Left(sTARIFFHEAD, 25), " "))
        Else
            sTARIFFHEAD1 = sTARIFFHEAD
            sTARIFFHEAD2 = ""
        End If
        
        sNOTIFY1 = "": sNOTIFY2 = "": sNOTIFY = ""
'        sNOTIFY = RSnew("NOTIFY")
        If Len(sNOTIFY) > 25 Then
            sNOTIFY1 = Mid(sNOTIFY, 1, InStrRev(Left(sNOTIFY, 25), " ") - 1)
            sNOTIFY2 = Mid(sNOTIFY, InStrRev(Left(sNOTIFY, 25), " "))
        Else
            sNOTIFY1 = sNOTIFY
            sNOTIFY2 = ""
        End If
        
        
        sAEDNOTIFY1 = "": sAEDNOTIFY2 = "": sAEDNOTIFY = ""
'        sAEDNOTIFY = RSnew("NOTIFYAED")
        If Len(sAEDNOTIFY) > 25 Then
            sAEDNOTIFY1 = Mid(sAEDNOTIFY, 1, InStrRev(Left(sAEDNOTIFY, 25), " ") - 1)
            sAEDNOTIFY2 = Mid(sAEDNOTIFY, InStrRev(Left(sAEDNOTIFY, 25), " "))
        Else
            sAEDNOTIFY1 = sAEDNOTIFY
            sAEDNOTIFY2 = ""
        End If
        
        For i = 1 To 6
            sCustAdd(i) = ""
        Next
        i = 0
        
        If Trim(rsnew("C_Add1") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add1")
        End If
        If Trim(rsnew("C_Add2") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add2")
        End If
        If Trim(rsnew("C_Add3") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_Add3")
        End If
        If Trim(rsnew("C_City") & "") <> "" Then
            i = i + 1
            sCustAdd(i) = rsnew("C_City") & " " & rsnew("C_State") & IIf(rsnew("C_Country") = "", "", " " & rsnew("C_Country"))
        End If
        
''
''
'''    For i = 1 To 3
'''        Print #z,
'''    Next
''''
''   ' Print #z, Space(60) + Chr(27) + "E" + Padr(sHead, 20, " ") + Chr(27) + "F"
'''    For i = 1 To 7
'''        Print #z,
'''    Next
''

'19/04/14
'
'        slname = "": slname1 = "": slname2 = ""
'        slname = rsnew("Cons_add1")
'        If Len(slname) > 24 Then
'            slname1 = Mid(slname, 1, InStrRev(Left(slname, 24), " ") - 1)
'            slname2 = Mid(slname, InStrRev(Left(slname, 24), " "))
'        Else
'            slname1 = slname
'            slname2 = ""
'        End If
'
'      Slnamecons = "": Slnamecons1 = "": Slnamecons2 = ""
'        Slnamecons = rsnew("Cons_add2")
'
'        If Len(Slnamecons) > 35 Then '24
'            Slnamecons1 = Mid(Slnamecons, 1, InStrRev(Left(Slnamecons, 35), " ") - 1) '24
'            Slnamecons2 = Mid(Slnamecons, InStrRev(Left(Slnamecons, 35), " ")) '24
'        Else
'            Slnamecons1 = Slnamecons
'            Slnamecons2 = ""
'        End If
'
'        '1.
'        Slnames = "": slnames1 = "": slnames2 = ""
'        Slnames = rsnew("C_SlName")
'        If Len(Slnames) > 35 Then
'            slnames1 = Mid(Slnames, 1, InStrRev(Left(Slnames, 35), " ") - 1)
'            slnames2 = Mid(Slnames, InStrRev(Left(Slnames, 35), " "))
'        Else
'            slnames1 = Slnames
'            slnames2 = ""
'        End If
'
'        Slnameadd = "": Slnameadd1 = "": Slnameadd2 = ""
'        Slnameadd = rsnew("Cons_add2")
'        If Len(Slnameadd) > 35 Then '30
'            Slnameadd1 = Mid(Slnameadd, 1, InStrRev(Left(Slnameadd, 35), " ") - 1) '30
'            Slnameadd2 = Mid(Slnameadd, InStrRev(Left(Slnameadd, 35), " ")) '30
'        Else
'            Slnameadd1 = Slnameadd
'            Slnameadd2 = ""
'        End If
'
'        cSlnameadd = "": cSlnameadd1 = "": cSlnameadd2 = ""
'        cSlnameadd = sCustAdd(1) 'rsnew("C_city") + "-" + rsnew("C_pin")
'
'        If Len(cSlnameadd) > 35 Then '30
'            cSlnameadd1 = Mid(cSlnameadd, 1, InStrRev(Left(cSlnameadd, 35), " ") - 1) '30
'            cSlnameadd2 = Mid(cSlnameadd, InStrRev(Left(cSlnameadd, 35), " ")) '30
'        Else
'            cSlnameadd1 = cSlnameadd
'            cSlnameadd2 = ""
'        End If
'
        

If Trim(sDelName) <> "" Then
       '''1.
        Slnames = "": slnames1 = "": slnames2 = ""
        Slnames = rsnew("C_SlName")
        If Len(Slnames) > 35 Then
            slnames1 = Mid(Slnames, 1, InStrRev(Left(Slnames, 35), " ") - 1)
            slnames2 = Mid(Slnames, InStrRev(Left(Slnames, 35), " "))
        Else
            slnames1 = Slnames
            slnames2 = ""
        End If
        
       
        '''1.1
        dSlnames = "": dslnames1 = "": dslnames2 = ""
        dSlnames = sDelName
        If Len(dSlnames) > 35 Then
            dslnames1 = Mid(dSlnames, 1, InStrRev(Left(dSlnames, 35), " ") - 1)
            dslnames2 = Mid(dSlnames, InStrRev(Left(dSlnames, 35), " "))
        Else
            dslnames1 = dSlnames
            dslnames2 = ""
        End If
        
               
        ''2.
        cSlnameadd = "": cSlnameadd1 = "": cSlnameadd2 = ""
        cSlnameadd = rsnew("C_add1")
        If Len(cSlnameadd) > 35 Then '30
            cSlnameadd1 = Mid(cSlnameadd, 1, InStrRev(Left(cSlnameadd, 35), " ") - 1) '30
            cSlnameadd2 = Mid(cSlnameadd, InStrRev(Left(cSlnameadd, 35), " ")) '30
        Else
            cSlnameadd1 = cSlnameadd
            cSlnameadd2 = ""
        End If
        
        ''2.1
        dcSlnameadd = "": dcSlnameadd1 = "": dcSlnameadd2 = ""
        dcSlnameadd = sDelAdd1
        If Len(dcSlnameadd) > 35 Then '30
            dcSlnameadd1 = Mid(dcSlnameadd, 1, InStrRev(Left(dcSlnameadd, 35), " ") - 1) '30
            dcSlnameadd2 = Mid(dcSlnameadd, InStrRev(Left(dcSlnameadd, 35), " ")) '30
        Else
            dcSlnameadd1 = dcSlnameadd
            dcSlnameadd2 = ""
        End If
        


        ''3.
        cSlnameadd2 = "": cSlnameadd21 = "": cSlnameadd22 = ""
        cSlnameadd2 = rsnew("C_add2")
        
        If Len(cSlnameadd2) > 35 Then '30
            cSlnameadd21 = Mid(cSlnameadd2, 1, InStrRev(Left(cSlnameadd2, 35), " ") - 1) '30
            cSlnameadd22 = Mid(cSlnameadd2, InStrRev(Left(cSlnameadd2, 35), " ")) '30
        Else
            cSlnameadd21 = cSlnameadd2
            cSlnameadd22 = ""
        End If
        
        

        ''3.1
        dcSlnameadd2 = "": dcSlnameadd21 = "": dcSlnameadd22 = ""
        dcSlnameadd2 = sDelAdd2
        
        If Len(dcSlnameadd2) > 35 Then '30
            dcSlnameadd21 = Mid(dcSlnameadd2, 1, InStrRev(Left(dcSlnameadd2, 35), " ") - 1) '30
            dcSlnameadd22 = Mid(dcSlnameadd2, InStrRev(Left(dcSlnameadd2, 35), " ")) '30
        Else
            dcSlnameadd21 = dcSlnameadd2
            dcSlnameadd22 = ""
        End If
        

        ''4.
        cSlnamecity = "": cSlnamecity1 = "": cSlnamecity2 = ""
        cSlnamecity = rsnew("C_city") + "-" + rsnew("C_pin")
        
        If Len(cSlnamecity) > 35 Then '30
            cSlnamecity1 = Mid(cSlnamecity, 1, InStrRev(Left(cSlnamecity, 35), " ") - 1) '30
            cSlnamecity2 = Mid(cSlnamecity, InStrRev(Left(cSlnamecity, 35), " ")) '30
        Else
            cSlnamecity1 = cSlnamecity
            cSlnamecity2 = ""
        End If
        

        ''4.1
        dcSlnamecity = "": dcSlnamecity1 = "": dcSlnamecity2 = ""
        dcSlnamecity = sDelCity
        
        If Len(dcSlnamecity) > 35 Then '30
            dcSlnamecity1 = Mid(dcSlnamecity, 1, InStrRev(Left(dcSlnamecity, 35), " ") - 1) '30
            dcSlnamecity2 = Mid(dcSlnamecity, InStrRev(Left(dcSlnamecity, 35), " ")) '30
        Else
            dcSlnamecity1 = dcSlnamecity
            dcSlnamecity2 = ""
        End If
Else
        '''1.
        Slnames = "": slnames1 = "": slnames2 = ""
        Slnames = rsnew("C_SlName")
        If Len(Slnames) > 35 Then
            slnames1 = Mid(Slnames, 1, InStrRev(Left(Slnames, 35), " ") - 1)
            slnames2 = Mid(Slnames, InStrRev(Left(Slnames, 35), " "))
        Else
            slnames1 = Slnames
            slnames2 = ""
        End If
        
        
        '''1.1
        dSlnames = "": dslnames1 = "": dslnames2 = ""
        dSlnames = rsnew("C_SlName")
        If Len(dSlnames) > 35 Then
            dslnames1 = Mid(dSlnames, 1, InStrRev(Left(dSlnames, 35), " ") - 1)
            dslnames2 = Mid(dSlnames, InStrRev(Left(dSlnames, 35), " "))
        Else
            dslnames1 = dSlnames
            dslnames2 = ""
        End If
        
                
        ''2.
        cSlnameadd = "": cSlnameadd1 = "": cSlnameadd2 = ""
        cSlnameadd = rsnew("C_add1")
        If Len(cSlnameadd) > 35 Then '30
            cSlnameadd1 = Mid(cSlnameadd, 1, InStrRev(Left(cSlnameadd, 35), " ") - 1) '30
            cSlnameadd2 = Mid(cSlnameadd, InStrRev(Left(cSlnameadd, 35), " ")) '30
        Else
            cSlnameadd1 = cSlnameadd
            cSlnameadd2 = ""
        End If
        
        ''2.1
        dcSlnameadd = "": dcSlnameadd1 = "": dcSlnameadd2 = ""
        dcSlnameadd = rsnew("C_add1")
        If Len(dcSlnameadd) > 35 Then '30
            dcSlnameadd1 = Mid(dcSlnameadd, 1, InStrRev(Left(dcSlnameadd, 35), " ") - 1) '30
            dcSlnameadd2 = Mid(dcSlnameadd, InStrRev(Left(dcSlnameadd, 35), " ")) '30
        Else
            dcSlnameadd1 = cSlnameadd
            dcSlnameadd2 = ""
        End If
        
        ''3.
        cSlnameadd2 = "": cSlnameadd21 = "": cSlnameadd22 = ""
        cSlnameadd2 = rsnew("C_add2")
        
        If Len(cSlnameadd2) > 35 Then '30
            cSlnameadd21 = Mid(cSlnameadd2, 1, InStrRev(Left(cSlnameadd2, 35), " ") - 1) '30
            cSlnameadd22 = Mid(cSlnameadd2, InStrRev(Left(cSlnameadd2, 35), " ")) '30
        Else
            cSlnameadd21 = cSlnameadd2
            cSlnameadd22 = ""
        End If
        
        
        ''3.1
        dcSlnameadd2 = "": dcSlnameadd21 = "": dcSlnameadd22 = ""
        dcSlnameadd2 = rsnew("C_add2")
        
        If Len(dcSlnameadd2) > 35 Then '30
            dcSlnameadd21 = Mid(dcSlnameadd2, 1, InStrRev(Left(dcSlnameadd2, 35), " ") - 1) '30
            dcSlnameadd22 = Mid(dcSlnameadd2, InStrRev(Left(dcSlnameadd2, 35), " ")) '30
        Else
            dcSlnameadd21 = dcSlnameadd2
            dcSlnameadd22 = ""
        End If
        

        ''4.
        cSlnamecity = "": cSlnamecity1 = "": cSlnamecity2 = ""
        cSlnamecity = rsnew("C_city") + "-" + rsnew("C_pin")
        
        If Len(cSlnamecity) > 35 Then '30
            cSlnamecity1 = Mid(cSlnamecity, 1, InStrRev(Left(cSlnamecity, 35), " ") - 1) '30
            cSlnamecity2 = Mid(cSlnamecity, InStrRev(Left(cSlnamecity, 35), " ")) '30
        Else
            cSlnamecity1 = cSlnamecity
            cSlnamecity2 = ""
        End If
        

        ''4.1
        dcSlnamecity = "": dcSlnamecity1 = "": dcSlnamecity2 = ""
        dcSlnamecity = rsnew("C_city") + "-" + rsnew("C_pin")
        
        If Len(dcSlnamecity) > 35 Then '30
            dcSlnamecity1 = Mid(dcSlnamecity, 1, InStrRev(Left(dcSlnamecity, 35), " ") - 1) '30
            dcSlnamecity2 = Mid(dcSlnamecity, InStrRev(Left(dcSlnamecity, 35), " ")) '30
        Else
            dcSlnamecity1 = cSlnamecity
            dcSlnamecity2 = ""
        End If

End If

        
        
        
    Print #z,
    co = co + 2
    
    '03/04/14
    Print #z,
    Print #z,
    Print #z,
    Print #z,
        
'
'    Print #z, Space(4) + Padr(slnames1, 35, " ") + Space(2) + Padr(RSnew("Cons_Add1"), 30, " ") + Space(3) + Padr(RSnew("C_SlName"), 35, " ") + Space(2) + Padr(slname1, 24, " ")
'    Print #z, Space(4) + Padr(slnames2, 35, " ") + Space(2) + Padr("", 30, " ") + Space(3) + Padr(slnames2, 35, " ") + Space(2) + Padr(slname2, 24, " ")
'    Print #z, Space(4) + Padr(cSlnameadd1, 30, " ") + Space(7) + Padr(Slnameadd1, 30, " ") + Space(3) + Padr(cSlnameadd1, 30, " ") + Space(7) + Padr(Slnamecons1, 24, " ")
'    Print #z, Space(4) + Padr(cSlnameadd2, 35, " ") + Space(2) + Padr(Slnameadd2, 30, " ") + Space(3) + Padr(cSlnameadd2, 35, " ") + Space(2) + Padr(Slnamecons2, 24, " ")
'    Print #z, Space(4) + Padr(sCustAdd(2) + "-" + RSnew("pin"), 35, " ") + Space(2) + Padr(RSnew("Cons_Add3") + "-" + RSnew("pin"), 30, " ") + Space(3) + Padr(sCustAdd(2) + "-" + RSnew("pin"), 35, " ") + Space(2) + Padr(RSnew("Cons_Add3") + "-" + RSnew("pin"), 30, " ")
            
    Print #z,
    '19/04/14
    Print #z,
    '19/04/14
'    Print #z, Space(4) + Padr(slnames1, 35, " ") + Space(2) + Padr(slnames1, 30, " ") + Space(3) + Padr(slnames1, 35 - 1, " ") + Space(2 - 1) + Padr(slnames1, 25 + 1, " ")
'    Print #z, Space(4) + Padr(cSlnameadd1, 35, " ") + Space(2) + Padr(cSlnameadd1, 30, " ") + Space(3) + Padr(cSlnameadd1, 35 - 1, " ") + Space(7 - 6) + Padr(cSlnameadd1, 25 + 1, " ")
'    Print #z, Space(4) + Padr(cSlnameadd2, 35, " ") + Space(2) + Padr(cSlnameadd2, 30, " ") + Space(3) + Padr(cSlnameadd2, 35 - 1, " ") + Space(2 - 1) + Padr(cSlnameadd2, 25 + 1, " ")
'    'Print #z, Space(4) + Padr(sCustAdd(2) + "-" + rsnew("pin"), 35, " ") + Space(2) + Padr(sCustAdd(2) + "-" + rsnew("pin"), 30, " ") + Space(3) + Padr(sCustAdd(2) + "-" + rsnew("pin"), 35 - 1, " ") + Space(2 - 1) + Padr(sCustAdd(2) + "-" + rsnew("pin"), 25 + 1, " ")
'    Print #z, Space(4) + Padr(cSlnamecity1, 35, " ") + Space(2) + Padr(cSlnamecity1, 30, " ") + Space(3) + Padr(cSlnamecity1, 35 - 1, " ") + Space(2 - 1) + Padr(cSlnamecity1, 25 + 1, " ")
    
    
    Print #z, Space(4) + Padr(slnames1, 35, " ") + Space(2) + Padr(dslnames1, 30, " ") + Space(3) + Padr(slnames1, 34, " ") + Space(1) + Padr(dslnames1, 26, " ")
    Print #z, Space(4) + Padr(cSlnameadd1, 35, " ") + Space(2) + Padr(dcSlnameadd1, 30, " ") + Space(3) + Padr(cSlnameadd1, 34, " ") + Space(1) + Padr(dcSlnameadd1, 26, " ")
    Print #z, Space(4) + Padr(cSlnameadd21, 35, " ") + Space(2) + Padr(dcSlnameadd21, 30, " ") + Space(3) + Padr(cSlnameadd21, 34, " ") + Space(1) + Padr(dcSlnameadd21, 26, " ")
    Print #z, Space(4) + Padr(cSlnamecity1, 35, " ") + Space(2) + Padr(dcSlnamecity1, 30, " ") + Space(3) + Padr(cSlnamecity1, 34, " ") + Space(1) + Padr(dcSlnamecity1, 26, " ")
        
    
    
    ''Print #z, Space(4) + Padr(sCustAdd(3), 35, " ") + Space(1) + Padr(sCustAdd(3), 35, " ")
    ''Print #z, Space(4) + Padr(sCustAdd(4), 35, " ") + Space(1) + Padr(sCustAdd(4), 35, " ")
    
    '19/04/14
    'Print #z,
    
    If rsnew("CIN") <> "" Then
        Print #z, Space(21 - 10) & Chr(27) + "E" + Padl("CIN", 21, " ") & Padr(" : ", 3, " ") & Padr(rsnew("CIN"), 21, " ") + Chr(27) + "F" + Space(35 - 5) + Chr(27) + "E" + Padl("CIN", 15, " ") & Padr(" : ", 3, " ") & Padr(rsnew("CIN"), 21, " ") + Chr(27) + "F"
    Else
        Print #z,
    End If
    
    
    '''Print #z, Space(15) + Padr(RSnew("Inv_No"), 20, "") + Padr("PAN : ", 6, "") + Padr(RSnew("pan"), 20, "") + Padr(RSnew("C_tngst"), 20, "") + Space(3) + Padr(RSnew("Inv_No"), 20, "") + Padr("PAN :  ", 6, "") + Padr(RSnew("pan"), 20, "") + Padr(RSnew("C_tngst"), 20, "")
    ''Print #z, Space(15) + Padr(RSnew("Inv_No"), 20, "") + Space(6 + 20) + Padr(RSnew("oldslcode"), 20, "") + Space(3) + Padr(RSnew("Inv_No"), 20, "") + Space(6 + 20) + Padr(RSnew("oldslcode"), 20, "")
    
    If rsnew("inv_no") <> "" Then
        INVNO = "199" & Left(rsnew("inv_no"), 2) & Right(rsnew("inv_no"), 5)
        Print #z, Space(15 - 2) + Padr(INVNO, 20, "") + Space(6 + 20 - 4) + Padr(rsnew("oldslcode"), 20, "") + Space(3 + 4) + Padr(INVNO, 20, "") + Space(6 + 20 - 4) + Padr(rsnew("oldslcode"), 20, "")
    End If
    
    'Print #z,
    'Print #z, Space(15) + Padr(Format(RSnew("date"), "dd/mm/yy"), 10, " ") + Space(60) + Padr(Format(RSnew("date"), "dd/mm/yy"), 10, " ")
    
    
    If rsnew("c_tngst") <> "" Then
        Print #z, Space(49 + 6 - 4) & Padl(rsnew("c_tngst"), 11, " ") + Space(58) + Padl(rsnew("c_tngst"), 11, " ")
    Else
        Print #z,
    End If
    
    
    
    If rsnew("C_TIN") <> "" Then
        Print #z, Space(15 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(26 + 3 + 2) + Padr(rsnew("C_TIN"), 20, "") + Space(14 - 3 - 4) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(26 + 3 + 4 - 2) + Padr(rsnew("C_TIN"), 20, "")
    Else
        Print #z, Space(15 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(60 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ")
    End If
    
    
    co = co + 11 - 1
    
   'Print #z,
   'Print #z, Space(0) + Padr(IIf(Trim(RSnew("C_ecc") & "") <> "", "ECC No. : " & RSnew("C_ecc"), " "), 40, " ")
   'Print #z, Space(13) & Padr(rsnew("C_TIN"), 27, " ") & Space(15) & Padr(CustRefNo, 25, " ")
    
    Print #z, 'Space(14) + Padr(CustRefNo, 25, " ") + Space(53) + Padr(CustRefNo, 25, " ")
    Print #z, Space(14) '+ Padr(payterm_Desc, 25, " ") + Space(53) + Padr(payterm_Desc, 25, " ")
    
    
    'Print #z, Space(14) + Padr(payterm_Desc, 25, " ") + Space(53) + Padr(payterm_Desc, 25, " ") '+ Padr(RSnew("Carrier"), 27, " ") + Space(53 - 5) + Padr(RSnew("Carrier"), 27, " ")
    'Print #z, Space(14) + Padr(RSnew("Carrier"), 27, " ") + Space(53 - 5) + Padr(RSnew("Carrier"), 27, " ") 'Space(14) + Padr(Lrno, 27, " ") + Space(43 + 10 - 5) + Padr(Lrno, 27, " ")
    
    
    If payterm_Desc <> "" Then
        Print #z, Space(14) & Padr((payterm_Desc), 30, " ") + Space(41) + Padr((payterm_Desc), 30, " ")
    Else
        Print #z,
    End If
    
    If rsnew("carrier") <> "" Then
        Print #z, Space(14) & Padr((rsnew("carrier")), 30, " ") + Space(41) + Padr((rsnew("carrier")), 30, " ")
    Else
        Print #z,
    End If
    
    
    'Print #z, 'Space(14) + Padr(LorryNo, 27, " ") + Space(53 - 5) + Padr(LorryNo, 27, " ")
    
  
  
  '  Print #z, Space(2) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(14) & Padr(" : " & Format(RSnew("date"), "dd/mm/yy") & " " & Format(RSnew("PRE_TIME"), "HH:MM AM/PM"), 22, " ") + Space(1) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(11) & Padr(" : " & Format(RSnew("date"), "dd/mm/yy") & " " & Format(RSnew("PRE_TIME"), "HH:MM AM/PM"), 22, " ")
  '  Print #z, Space(2) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(14) & Padr(" : " & Format(RSnew("date"), "dd/mm/yy") & " " & Format(RSnew("REM_TIME"), "HH:MM AM/PM"), 22, " ") + Space(1) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(11) & Padr(" : " & Format(RSnew("date"), "dd/mm/yy") & " " & Format(RSnew("REM_TIME"), "HH:MM AM/PM"), 22, " ")
  
   ' Print #z, Space(2) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(14 - 4 + 2) & Padr(Format(rsnew("date"), "dd-mmm-yyyy") & " " & Format(rsnew("PRE_TIME"), "HH:MM AM/PM"), 22 + 3, " ") + Space(1) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(11 - 1) & Padr(Format(rsnew("date"), "dd-mmm-yyyy") & " " & Format(rsnew("PRE_TIME"), "HH:MM AM/PM"), 22 + 3, " ")
   ' Print #z, Space(2) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(14 - 4 + 2) & Padr(Format(rsnew("date"), "dd-mmm-yyyy") & " " & Format(rsnew("REM_TIME"), "HH:MM AM/PM"), 22 + 3, " ") + Space(1) + Padr(" ", 20, " "); Space(2) + Padr(" ", 11, " ") & Space(11 - 1) & Padr(Format(rsnew("date"), "dd-mmm-yyyy") & " " & Format(rsnew("REM_TIME"), "HH:MM AM/PM"), 22 + 3, " ")
    
    
    
  '  Print #z, Space(14) + Padr(Lrno, 27, " "); Space(4) & Padr(Format(RSnew("date"), "dd-mmm-yyyy") & " " & Format(RSnew("PRE_TIME"), "HH:MM AM/PM"), 22 + 3, " ") + Space(1) + Padr(" ", 20 - 4, " "); Padr(Lrno, 27, " ") & Padr(Format(RSnew("date"), "dd-mmm-yyyy") & " " & Format(RSnew("PRE_TIME"), "HH:MM AM/PM"), 22 + 3, " ")
  '  Print #z, Space(14) + Padr(LorryNo, 27, " ") + Space(4) & Padr(Format(RSnew("date"), "dd-mmm-yyyy") & " " & Format(RSnew("REM_TIME"), "HH:MM AM/PM"), 22 + 3, " ") + Space(1) + Padr(" ", 20 - 4, " "); Padr(LorryNo, 27, " ") & Padr(Format(RSnew("date"), "dd-mmm-yyyy") & " " & Format(RSnew("REM_TIME"), "HH:MM AM/PM"), 22 + 3, " ")
       
    If rsnew("lr_no") <> "" Then
        Print #z, Space(14) & Padr((rsnew("lr_no")), 8, " ") + Space(26) + Space(20) + Space(17) + Padr((rsnew("lr_no")), 8, " ") + Space(23) + Space(20)
    Else
         Print #z,
    End If
           
    Print #z, Space(13); Padl(" ", 14, " ") & Space(25 - 2) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!pre_time, "hh:mm"), 8 - 3, " ") + Space(13 + 2) + Padl(" ", 14, " ") & Space(25 - 4) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!pre_time, "hh:mm"), 8 - 3, " ")
       
  
    If rsnew!vehicle_no <> "" Then
                Print #z, Space(13 - 5); Padl(rsnew!vehicle_no, 14, " ") & Space(25 - 2 + 5) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ") + Space(15 + 2 - 5) + Padl(rsnew!vehicle_no, 14, " ") & Space(23 - 4 + 5) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ")
     Else
        Print #z, Space(13); Padl(" ", 14, " ") & Space(25 - 2) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ") + Space(15) + Padl(" ", 14, " ") & Space(23 - 1 - 1) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ")
    End If
    
  
  
  
'  ''  Print #z, Space(13) & Padr(sDelAdd1 & " " & sDelCity, 30, " ") & Space(12) & Padr(RsNew("Agent"), 25, " ")
     
     'Print #z,
    
 ''   'Print #z,
     
     'Print #z,
'
'Print #z, Space(0) + Padl(" ", 2, " ") + Space(1) + Padr(" ", 30, " ") + Padl(" ", 9, " ") & Space(2) + CENTRE("Per Kg.", 9, " ") & Space(3) + CENTRE("Kgs.", 9, " ")
'    'Print #z,
     
    co = co + 9
    isno = 0
    iDSno = 0
    
    'Print #z, Space(7) + Padl("DRAW.NO./DESC.", 12, "") + Padl("CHAP.", 6, "") + Padl("EX.RATE", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Padl("RATE", 8, "") + Padl("VALUE", 10, "") + Space(9) + Padl("DRAW.NO./DESC.", 12, "") + Padl("CHAP.", 6, "") + Padl("EX.RATE", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
    'Print #z, Space(5) + Padl("DRAW.NO./DESC.", 12, "") + Padl("CHAP.", 6, "") + Padl("EX.RATE", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Padl("RATE", 8, "") + Padl("VALUE", 10, "") + Space(9) + Padl("DRAW.NO./DESC.", 12, "") + Padl("CHAP.", 6, "") + Padl("EX.RATE", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
    
    'Print #z, Space(5) + Padl("DRAW.NO/DESC", 14, "") + Padl("    ", 6, "") + Padl("       ", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "") + Space(9 - 2) + Padl("DRAW.NO/DESC", 14, "") + Padl("    ", 8, "") + Padl("       ", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
    'Print #z, Space(4) + Padl("DRAW.NO/DESC", 12, "") + Padl("No.of Bales/Borah", 17, "") + Padl("QTY.", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "") + Space(9 - 2) + Padl("DRAW.NO/DESC", 14, "") + Padl("    ", 8, "") + Padl("       ", 8, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
    
    Print #z, Space(17 + 4) + Padr("No.of", 6, "") + Space(50 + 11 - 2 + 1) + Padl("No.of", 6, "")
    Print #z, Space(5 + 1) + Padl("DRAW.NO/DESC", 12, "") + Padl("Bales/Borah", 14, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8 - 1, "") + Padl("VALUE", 10 + 1, "") + Space(9 - 2 + 2) + Padl("DRAW.NO/DESC", 12, "") + Padl("Bales/Borah", 14, "") + Space(1) + Padl("QTY", 8, "") + Space(1) + Padl("UOM", 5, "") + Space(1 - 1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
    Print #z,
    Dim Tot_val1 As Double
    Tot_val1 = 0
    rsnew.MoveFirst
    co = co + 3
       
    Do While Not rsnew.EOF
    
        isno = isno + 1
        iDSno = iDSno + 1
        
        Sortname_1 = "": Sortname_2 = ""
        If iDSno = 1 Or iDSno = 2 Then
            If Len(rsnew("Description")) > 30 Then
                Sortname_1 = Mid(rsnew("Description"), 1, InStrRev(Left(rsnew("Description"), 30), " ") - 1)
                Sortname_2 = Mid(rsnew("Description"), InStrRev(Left(rsnew("Description"), 30), " "))
            Else
                Sortname_1 = rsnew("Description")
            End If
                   
            ''Print #z, Space(7) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("Product_code"), 10, " ") + Padl("0.00", 4, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 10, " ") + Padl(RSnew("UOM"), 7, " ") + Padl(INF(RSnew("Rate_Nett"), 2), 7, " ") + Padl(INF(RSnew("Value"), 2), 12, " ") + Space(4) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("Product_code"), 10, " ") + Padl("0.00", 4, " ") + Padl(INF(RSnew("RATE_EX"), 2), 8, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 10, " ") + Padl(RSnew("UOM"), 7, " ") + Padl(INF(RSnew("Rate_Nett"), 2), 8, " ") + Padl(INF(RSnew("Value"), 2), 12, " ")
            
            ''Print #z, Space(7) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 10, " ") + Padl("0.00", 4, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 10, " ") + Padl(RSnew("UOM"), 7, " ") + Padl(INF(RSnew("Rate_Nett"), 2), 7, " ") + Padl(INF(RSnew("Value"), 2), 12, " ") + Space(4) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 10, " ") + Padl("0.00", 4, " ") + Padl(INF(RSnew("RATE_EX"), 2), 8, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 10, " ") + Padl(RSnew("UOM"), 7, " ") + Padl(INF(RSnew("Rate_Nett"), 2), 8, " ") + Padl(INF(RSnew("Value"), 2), 12, " ")
            '''Print #z, Space(5) + Padl(ISNO, 2, " ") + Space(1) + Padr(oldprod, 13, " ") + Padl("    ", 4, " ") + Space(1) + Padl("    ", 6, " ") + Padl(Format(RSnew!nett_Kgs, "0.000"), 9, " ") + Padl(UOM, 5, " ") + Padl(Format(RSnew("rate_ex"), "0.00"), 11 - 2, " ") + Space(1) + Padl(Format(RSnew("Matl_value"), "0.00"), 9 + 2, " ") + Space(7 - 2) + Padl(ISNO, 2, " ") + Space(1) + Padr(oldprod, 12, " ") + Space(3) + Padl("    ", 4, " ") + Padl("    ", 7, " ") + Padl(Format(RSnew!nett_Kgs, "0.000"), 9, " ") + Padl(UOM, 5, " ") + Padl(Format(RSnew("rate_ex"), "0.00"), 11 - 2, " ") + Space(1) + Padl(Format(RSnew!matl_value, "0.00"), 9 + 2, " ")
                        
            'Print #z, Space(5) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 13, " ") + Padl("    ", 4, " ") + Space(1) + Padl("    ", 6, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(RSnew("UOM"), 5, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(RSnew("Value"), 2), 12, " ") + Space(4 + 2 - 1) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 12, " ") + Space(3) + Padl("    ", 4, " ") + Padl("    ", 7, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(RSnew("UOM"), 5, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(RSnew("Value"), 2), 12, " ")
            'Set rsuom = New Recordset
           ' Set rsuom = DB.Execute("SELECT UOM FROM IG_RPRODUCT WHERE PRODUCT_CODE='" & RSnew("PRODUCT_CODE") & "'")
           ' UOM = rsuom(0)
           UOM = "K"
                If UCase(UOM) = "K" Then
                    UOM = "Kgs"
                Else
                    UOM = "Meters"
                End If
    
            
            
            'Print #z, Space(4) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 13, " ") + Padl("    ", 4, " ") + Space(1) + Padl("    ", 6, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(RSnew("UOM"), 5, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(RSnew("Value"), 2), 12, " ") + Space(4 + 2 - 1) + Padl(isno, 2, " ") + Space(1) + Padr(RSnew("OLDProduct_code"), 12, " ") + Space(3) + Padl("    ", 4, " ") + Padl("    ", 7, " ") + Padl(INF(RSnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(RSnew("UOM"), 5, " ") + Padl(INF(RSnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(RSnew("Value"), 2), 12, " ")
            
            Print #z, Space(4) + Padl(isno, 2, " ") + Space(1) + Padr(rsnew("OLDProduct_code"), 13, " ") + Padl("    ", 4, " ") + Space(1) + Padl("    ", 6, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(UOM, 5, " ") + Padl(INF(rsnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(rsnew("Value"), 2), 12, " ") + Space(4 + 2 - 1) + Padl(isno, 2, " ") + Space(1) + Padr(rsnew("OLDProduct_code"), 12, " ") + Space(3) + Padl("    ", 4, " ") + Padl("    ", 7, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(UOM, 5, " ") + Padl(INF(rsnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(rsnew("Value"), 2), 12, " ")
     
            'Print #z, Space(9) + Padr(Sortname_1, 25, "") + Space(40) + Padr(Sortname_1, 25, "")
            
            Print #z, Space(9 - 2) + Padr(Sortname_1, 25 - 5, "") + Padr(rsnew("packs"), 4, "") + Space(40 - 10 + 6 + 5 + 2) + Padr(Sortname_1, 25 - 5, "") + Padr(rsnew("packs"), 4, "")
            
            If Sortname_2 <> "" Then
                Print #z, Space(5) + Padl(" ", 2, " ") + Space(1) + Padr(Sortname_2, 30, " ") + Space(50 + 2) + Padr(Sortname_2, 30, " ")
                iDSno = iDSno + 1
            End If
            Print #z, 'Space(10) + Padl("No Of Bales  :", 10 + 5, "") + Space(2) + Padl(RSnew("packs"), 10, "") + Space(43) + Padl("No Of Bales  :", 15, "") + Space(2) + Padl(RSnew("packs"), 10, "")
            Print #z, 'Space(10) + Padl("Gross Weight  :", 12, "") + Space(2) + Padl(INF(RSnew("gross_kgs"), 3), 10, "") + Space(40) + Padl("Gross Weight  :", 12, "") + Space(2) + Padl(INF(RSnew("gross_kgs"), 3), 10, "")
          co = co + 5
         End If
            rsnew.MoveNext
        Loop
      
    For i = 1 To (5 - iDSno)
        Print #z,
        co = co + i
    Next
        
        rsnew.MoveFirst
    
        ExciseAmt = val(rsnew("Exise") & "")
        
        'If Trim(RSnew("Receiptno") & "") > 0 Then
        '    sReceiptno = Trim(RSnew("Receiptno") & "")
        '    sReceiptDate = Format(RSnew("ReceiptDate"), "dd/MM/yy")
        'Else
            sReceiptno = ""
            sReceiptDate = ""
        'End If
                
        Set Rs_grs = New Recordset
        Rs_grs.Open "Select Sum(Gross_kgs) as Grs_Kgs from RM_CINVdt where INV_NO='" & rsnew("Inv_no") & "'", DB, adOpenKeyset, adLockBatchOptimistic
               
        
        'Print #z, Space(0) + Padl(" ", 10, " ") + Padr(IIf(sReceiptno <> "", "Cess No: " & sReceiptno & "/" & sReceiptDate, " "), 32, " ") + Padl(" ", 11, " ") + Padl(" ", 11, " ") + Padl(INF(rsNew("MATL_VALUE"), 2), 14, " ")
        
'        Print #z, Space(0) + Padl(" ", 3, " ") + Padr(" ", 30, " ") + Padl(" ", 9, " ") + Padl(" ", 2, " ") + Padl(IIf(Val(rsNew("cess_amt") & "") > 0, "Cess Amt. :" & Format(rsNew("CESS_PER"), "#0.00") & "%", " "), 20, " ") + Padl(INF(Val(rsNew("cess_amt") & ""), 2), 14, " ")
'        Print #z, Space(0) + Padl(" ", 3, " ") + Padr(" ", 30, " ") + Padl(" ", 9, " ") + Padl(" ", 11, " ") + Padl(IIf(Val(rsNew("TAX_AMT") & "") > 0, Format(rsNew("TAX_PER"), "#0.00") & "%", " "), 11, " ") + Padl(INF(rsNew("TAX_AMT"), 2), 14, " ")
'        Print #z, Space(0) + Padl(" ", 3, " ") + Padr(" ", 30, " ") + Padr(" ", 20, " ") + Padr(IIf(Val(rsNew("Others") & "") > 0, "Others", " "), 11, " ") + Padl(INF(rsNew("Others"), 2), 14, " ")
'        Print #z, Space(0) + Padl(" ", 3, " ") + Padr(" ", 30, " ") + Padr(IIf(Val(ExciseAmt & "") > 0, "Excise Amt. :" + INF(Val(ExciseAmt & ""), 2), " "), 20, " ") + Padr(IIf(Val(rsNew("RND_OFF") & "") > 0, "Roundoff", " "), 11, " ") + Padl(INF(rsNew("RND_OFF"), 2), 14, " ")
        
       ' Print #z, Space(8) + Padl("Transporter Name :", 18, " ") + Padr(Trim(RSnew("CARRIER") & ""), 30, " ") + Space(30) + Padl("Transporter Name :", 18, " ") + Padr(Trim(RSnew("CARRIER") & ""), 30, " ")
        'If RSnew("LR_NO") <> "" Then
       '     Print #z, Space(8) + Padl("LR Number        :", 18, " ") + Padr(IIf(Trim(RSnew("LR_NO") & "") <> "", Trim(RSnew("LR_NO") & "") & "/" & Format(RSnew("LR_Date"), "dd/MM/yy"), " "), 30, " ") + Padr("NIL", 1, " ") + Space(57) + Padl("LR Number        :", 18, " ") + Padr(IIf(Trim(RSnew("LR_NO") & "") <> "", Trim(RSnew("LR_NO") & "") & "/" & Format(RSnew("LR_Date"), "dd/MM/yy"), " "), 30, " ") + Padr("NIL", 1, " ")
       ' Else
       '     Print #z, Space(8) +  Padl("LR Number        :", 18, " ") + Padr("NIL", 3, " ") + Space(57) + Padl("LR Number        :", 18, " ") + Padr("NIL", 3, " ")
       ' End If
        
       ' Print #z, Space(8) + Padl("Lorry No         :", 18, " ") + Padr(Trim(RSnew("VEHICLE_NO") & ""), 30, " ") + Space(30) + Padl("Lorry No         :", 18, " ") + Padr(Trim(RSnew("VEHICLE_NO") & ""), 30, " ")
     
        
        
        
       ' Print #z, Space(8) + Padl("No Of Bales/Borah:", 18, " ") + Padr(Trim(totbales & ""), 30, " ") + Space(30) + Padl("No Of Bales/Borah:", 18, " ") + Padr(Trim(totbales & ""), 30, " ")
        'Print #z, Space(8) + Padl("Bale No.         :", 18, "") + Padr("  ", 8, "") + Space(50 + 2) + Padl("Bale No.         :", 18, "") + Padr(" ", 8, "")
'
        If rsnew("uom") = "BALES" Then
          Print #z, Space(8) + Padr("No. Of Bales     :", 18, " ") + Padr(Trim(totbales1 & ""), 30, " ") + Space(30) + Padr("No. Of Bales     :", 18, " ") + Padr(Trim(totbales1 & ""), 30, " ")
        Else
          Print #z, Space(8) + Padr("No. Of Borah     :", 18, " ") + Padr(Trim(totbales2 & ""), 30, " ") + Space(30) + Padr("No. Of Borah     :", 18, " ") + Padr(Trim(totbales2 & ""), 30, " ")
        End If
        
        
        'Print #z, Space(8) + Padl("Gross Weight     :", 18, " ") + Padr(INF(Rs_grs("Grs_Kgs"), 3), 30, "") + Space(30) + Padl("Gross Weight     :", 18, " ") + Padr(INF(Rs_grs("Grs_Kgs"), 3), 30, " ")
        Print #z, Space(8) + Padl("Gross Weight     :", 18, " ") + Padr(INF(totkgs, 3), 30, "") + Space(30) + Padl("Gross Weight     :", 18, " ") + Padr(INF(totkgs, 3), 30, " ")

'        Print #z, Space(8) + Padl("SER.TAX R.C No   :", 18, "") + Padr(RSnew("rc_no"), 30, " ") + Space(30) + Padl("SER.TAX R.C No   :", 18, "") + Padr(RSnew("rc_no"), 30, " ")
'        '''Print #z, Space(0) + Padl("Forward Charges  :", 18, " ") + Padr(Trim(rsnew("FWd_Chrg") & ""), 30, " ")
'        Print #z, Space(8) + Padl("Others           :", 18, "") + Padr(Trim(RSnew("Others") & ""), 30, " ") + Space(30) + Padl("Others           :", 18, "") + Padr(Trim(RSnew("Others") & ""), 30, " ")
        
        
        des = rsnew("DESPATCH_TO")
        Set rst = New Recordset
        If des <> "" Then
            Set rst = DB.Execute("SELECT NAME FROM IG_AREA WHERE AREA_CODE='" & (des) & "'")
        End If
        If rst.RecordCount <> 0 Then
            DESTO = rst(0)
        End If
        Print #z, Space(8) & Padl("Despatch To      : ", 18, " ") & Space(1 - 1) & Padr(DESTO, 35, " ") + Space(16 + 8 + 1) + Padl("Despatch To      : ", 18, " ") & Space(2 - 2) & Padr(DESTO, 35, " ")
        
        If sReceiptno <> "" Then
            Print #z, Space(8) + Padl("Cess Permit No.  :", 18, " ") + Padr(sReceiptno, 12, "") + Padl("Dt.", 3, ""), Padr(Format(sReceiptDate, "dd-mmm-yyyy"), 11, "") + Space(34 - 1) + Padl("Cess Permit No.  :", 18, " ") + Padr(sReceiptno, 12, "") + Padl("Dt.", 3, "") + Padr(Format(sReceiptDate, "dd-mmm-yyyy"), 11, "")
        Else
             Print #z, Space(8) + Padl("Cess Permit No.  :", 18, " ") + Space(60) + Padl("Cess Permit No.  :", 18, " ")
        End If
      
        
        'Print #z,
        Print #z,
        
        
        Print #z,
        co = co + 7
        sAmtinwordtes = "": sAmtinword1tes = "": sAmtinword2tes = "": samtinwordtot = ""
        samtinwordtot = Num_To_Word(CDbl(rsnew("total_amt")))
        
        sAmtinwordtes = Num_To_Word(CDbl(rsnew("TCS")))  'TCSFWD
        If Len(sAmtinwordtes) > 55 Then
            sAmtinword1tes = Mid(sAmtinwordtes, 1, InStrRev(Left(sAmtinwordtes, 55), " ") - 1)
            sAmtinword2tes = Mid(sAmtinwordtes, InStrRev(Left(sAmtinwordtes, 55), " "))
        Else
            sAmtinword1tes = sAmtinwordtes
            sAmtinword2tes = ""
        End If
        '''Print #z, Space(0) + Padl("IT+P&F @% ", 8, " ") + Replace(Num_To_Word(CDbl(rsnew("TCSAMt"))), "Rupees.", "")
        Print #z, 'Space(6) + Padl("IT+P&F @% ", 8, " ") + Padl(sAmtinword1tes, 55, " ") + Space(4) + Padl("IT+P&F @% ", 8, " ") + Padl(sAmtinword1tes, 55, " ")
        Print #z, 'Space(6) + Padl(sAmtinword2tes, 55, " ") + Space(4) + Padl(sAmtinword2tes, 55, " ")
        
        sAmtinword = "": sAmtinword1 = "": sAmtinword2 = ""
        sAmtinword = Num_To_Word(CDbl(rsnew("cess_amt")))
        If Len(sAmtinword) > 55 Then
            sAmtinword1 = Mid(sAmtinword, 1, InStrRev(Left(sAmtinword, 55), " ") - 1)
            sAmtinword2 = Mid(sAmtinword, InStrRev(Left(sAmtinword, 55), " "))
        Else
            sAmtinword1 = sAmtinword
            sAmtinword2 = ""
        End If
        ''Print #z, Space(2) + Padl("CESS :- ", 8, " ") + Replace(Num_To_Word(CDbl(RSnew("cess_amt"))), "Rupees Only.", "") + Padl("(Payable)", 10, "")
        Print #z, 'Space(5) + Padl("CESS :- ", 8, " ") + Padl(sAmtinword1, 55, " ") + Space(4) + Padl("CESS :- ", 8, " ") + Padl(sAmtinword1, 55, " ")
        Print #z, 'Space(6) + Padl(sAmtinword2, 55, " ") + Space(6) + Padl(sAmtinword2, 55, " ") + Space(4) + Padl(sAmtinword2, 55, " ") + Space(6) + Padl(sAmtinword2, 55, " ")
        Print #z,
        Print #z, 'Space(5) + Padl("Despatch To :", 14, "") + Space(54) + Padl("Despatch To :", 14, "")
        Print #z, 'Space(4) + Padl(IIf(Val(RSnew("Tax_Amt") & "") > 0, Padl(RSnew("Tax_desc"), 20, " "), " "), 11, " ") + Space(57) + Padl(IIf(Val(RSnew("Tax_Amt") & "") > 0, Padl(RSnew("Tax_desc"), 20, " "), " "), 11, " ")
        ''Print #z, Chr(12) + Chr(18)
        Print #z, Space(5) + "Amount in Words :" & Space(55 - 3 + 1) & "Amount in Words :"
        
        If Len(samtinwordtot) > 55 Then
        'Print #z, Space(5) + samtinwordtot
        'Padr(Mid(nw, 1, InStrRev(nw, " ", 55)), 45 + 10, " ")
        'Padr(Mid(nw, InStrRev(nw, " ", 55), 45), 45, " ")
            Print #z, Space(5) & Padr(Mid(samtinwordtot, 1, InStrRev(samtinwordtot, " ", 55)), 45 + 10, " ") & Space(25 - 10) & Padr(Mid(samtinwordtot, 1, InStrRev(samtinwordtot, " ", 55)), 45 + 10, " ")
            Print #z, Space(5) & Padr(Mid(samtinwordtot, InStrRev(samtinwordtot, " ", 55), 45), 45, " ") & Space(25) & Padr(Mid(samtinwordtot, InStrRev(samtinwordtot, " ", 55), 45), 45, " ")
        Else
            Print #z, Space(5) & Padr(Mid(samtinwordtot, 1, InStrRev(samtinwordtot, " ", 55)), 45 + 10, " ") & Space(25 - 10) & Padr(Mid(samtinwordtot, 1, InStrRev(samtinwordtot, " ", 55)), 45 + 10, " ")
            Print #z,
        End If
        
        
        'bg
        Print #z,
        Print #z,
        Print #z,
        'Print #z,
        'end
               
        Print #z,
        Print #z,
               
               
       ' Print #z, Space(2) + Padl(("GROSS"), 10, "") + Padl("B.E.D/CESS", 15, " ") + Padl(RSnew("Tax_desc"), 15, " ") + Padl("IT+P&F @% ", 22, " ") + Space(9); Padl(("GROSS"), 10, "") + Padl("B.E.D/CESS", 15, " ") + Padl(RSnew("Tax_desc"), 15, " ") + Padl("IT+P&F @% ", 22, " ")
        
        Print #z, Space(2) + Padl(("GROSS"), 10, "");
        
        If val(rsnew("CESS_AMT")) > 0 Then
          Print #z, Padl("CESS", 15 - 3, " ");
        Else
          Print #z, Padl(" ", 15 - 3, " ");
        End If
     
                
        If val(rsnew("FWD")) > 0 Then
          Print #z, Padl("P&F", 11, " ");
        Else
          Print #z, Padl(" ", 11, " ");
        End If
                
        Print #z, Padl(rsnew("Tax_desc"), 15 + 1, " ");
                
        If val(rsnew("TCS")) > 0 Then
          Print #z, Padl("TCS @%", 11, " ");
        Else
          Print #z, Padl(" ", 11, " ");
        End If
        Print #z, Space(9);
        
        Print #z, Space(2) + Padl(("GROSS"), 10, "");
        
        If val(rsnew("CESS_AMT")) > 0 Then
          Print #z, Padl("CESS", 15 - 3, " ");
        Else
          Print #z, Padl(" ", 15 - 3, " ");
        End If
        
                
        If val(rsnew("FWD")) > 0 Then
          Print #z, Padl("P&F", 11, " ");
        Else
          Print #z, Padl(" ", 11, " ");
        End If
        Print #z, Space(3);
        
        Print #z, Padl(rsnew("Tax_desc"), 15, " ");
                
        If val(rsnew("TCS")) > 0 Then
          Print #z, Padl("TCS @%", 11, " ");
        Else
          Print #z, Padl(" ", 11, " ");
        End If
        Print #z, Space(9);
        
        
        
        
        
        
        '+ Padl("B.E.D/CESS", 15, " ") + Padl(RSnew("Tax_desc"), 15, " ") + Padl("IT+P&F @% ", 22, " ") + Space(9); Padl(("GROSS"), 10, "") + Padl("B.E.D/CESS", 15, " ") + Padl(RSnew("Tax_desc"), 15, " ") + Padl("IT+P&F @% ", 22, " ")
        
        
        Print #z,
        
        'Print #z, Padl(INF(RSnew("Matl_value"), 2), 15, " ") + Padl(INF(Val(RSnew("cess_amt") & ""), 2), 12, " ") + Padl(INF(RSnew("TAX_AMT"), 2), 14, " ") + Space(10) + Padl(INF(RSnew("TCSFWD"), 2), 12, " ") + Space(8) + Padl(INF(RSnew("MATL_VALUE"), 2), 14, " ") + Padl(INF(Val(RSnew("cess_amt") & ""), 2), 14, " ") + Padl(INF(RSnew("TAX_AMT"), 2), 14, " ") + Space(10) + Padl(INF(RSnew("TCSFWD"), 2), 12, " ")
        'Print #z, Padl(INF(RSnew("Matl_value"), 2), 15, " ") + Padl(INF(Val(RSnew("cess_amt") & ""), 2), 12, " ") + Padl(INF(RSnew("TAX_AMT"), 2), 14, " ") + Padl(INF(RSnew("TCS"), 2), 10, " ") + Padl(INF(RSnew("TCS"), 2), 12, " ") + Space(8) + Padl(INF(RSnew("MATL_VALUE"), 2), 14, " ") + Padl(INF(Val(RSnew("cess_amt") & ""), 2), 14, " ") + Padl(INF(RSnew("TAX_AMT"), 2), 14, " ") + Padl(INF(RSnew("FWD"), 2), 10, " ") + Padl(INF(RSnew("TCS"), 2), 12, " ")
        
        Print #z, Padl(INF(rsnew("Matl_value"), 2), 15, " ") + Padl(INF(val(rsnew("cess_amt") & ""), 2), 12, " ") + Padl(INF(rsnew("FWD"), 2), 10, " ") + Padl(INF(rsnew("TAX_AMT"), 2), 14, " ") + Padl(INF(rsnew("TCS"), 2), 12, " ") + Space(8) + Padl(INF(rsnew("MATL_VALUE"), 2), 14, " ") + Padl(INF(val(rsnew("cess_amt") & ""), 2), 14 - 3, " ") + Padl(INF(rsnew("FWD"), 2), 10 + 3, " ") + Padl(INF(rsnew("TAX_AMT"), 2), 14, " ") + Padl(INF(rsnew("TCS"), 2), 12, " ")
        
        
        Print #z,
        Print #z,
        Print #z,
        Print #z, Space(39); Padl(INF(rsnew("Total_Amt"), 2), 27, " ") + Space(41) + Padl(INF(rsnew("Total_Amt"), 2), 27, " ")
        Print #z, Chr(12) + Chr(18)
        
        
        
        co = co + 16
        
        If iDSno > 2 Then
            iDSno = 0
            isno = 0
            Dim Tot_val As Double
            Tot_val = 0
            rsnew.MoveFirst
        
        
        '-1.
            Do While Not rsnew.EOF
                isno = isno + 1
                iDSno = iDSno + 1
                Sortname_1 = "": Sortname_2 = ""
      
                If iDSno = 1 Or iDSno = 2 Then
                    
                Else
                    
                    If iDSno >= 3 Then
                        pg = pg + 1
                        Str_pg = "B"
                        
                         Print #z,
                         Print #z,
                         Print #z,
                         Print #z,
                         Print #z,
                         Print #z,
                         Print #z,
                         Print #z, Space(4) + Padr(slnames1, 35, " ") + Space(2) + Padr(dslnames1, 30, " ") + Space(3) + Padr(slnames1, 34, " ") + Space(1) + Padr(dslnames1, 26, " ")
                         Print #z, Space(4) + Padr(cSlnameadd1, 35, " ") + Space(2) + Padr(dcSlnameadd1, 30, " ") + Space(3) + Padr(cSlnameadd1, 34, " ") + Space(1) + Padr(dcSlnameadd1, 26, " ")
                         Print #z, Space(4) + Padr(cSlnameadd21, 35, " ") + Space(2) + Padr(dcSlnameadd21, 30, " ") + Space(3) + Padr(cSlnameadd21, 34, " ") + Space(1) + Padr(dcSlnameadd21, 26, " ")
                         Print #z, Space(4) + Padr(cSlnamecity1, 35, " ") + Space(2) + Padr(dcSlnamecity1, 30, " ") + Space(3) + Padr(cSlnamecity1, 34, " ") + Space(1) + Padr(dcSlnamecity1, 26, " ")
                        If rsnew("CIN") <> "" Then
                         Print #z, Space(21 - 10) & Chr(27) + "E" + Padl("CIN", 21, " ") & Padr(" : ", 3, " ") & Padr(rsnew("CIN"), 21, " ") + Chr(27) + "F" + Space(35 - 5) + Chr(27) + "E" + Padl("CIN", 15, " ") & Padr(" : ", 3, " ") & Padr(rsnew("CIN"), 21, " ") + Chr(27) + "F"
                        Else
                            Print #z,
                        End If
    
                    If rsnew("inv_no") <> "" Then
                        INVNO = "199" & Left(rsnew("inv_no"), 2) & Right(rsnew("inv_no"), 5)
                        Print #z, Space(15 - 2) + Padr(INVNO, 20, "") + Space(6 + 20 - 4) + Padr(rsnew("oldslcode"), 20, "") + Space(3 + 4) + Padr(INVNO, 20, "") + Space(6 + 20 - 4) + Padr(rsnew("oldslcode"), 20, "")
                    End If
     
    
                    If rsnew("c_tngst") <> "" Then
                        Print #z, Space(49 + 6 - 4) & Padl(rsnew("c_tngst"), 11, " ") + Space(58) + Padl(rsnew("c_tngst"), 11, " ")
                    Else
                        Print #z,
                    End If
    
    
                    If rsnew("C_TIN") <> "" Then
                    Print #z, Space(15 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(26 + 3 + 2) + Padr(rsnew("C_TIN"), 20, "") + Space(14 - 3 - 4) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(26 + 3 + 4 - 2) + Padr(rsnew("C_TIN"), 20, "")
                    Else
                    Print #z, Space(15 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ") + Space(60 - 2) + Padr(Format(rsnew("date"), "dd-mmm-yyyy"), 11, " ")
                    End If
                    Print #z,
                    Print #z, Space(14)
                    If payterm_Desc <> "" Then
                    Print #z, Space(14) & Padr((payterm_Desc), 30, " ") + Space(41) + Padr((payterm_Desc), 30, " ")
                    Else
                    Print #z,
                    End If
    
                    If rsnew("carrier") <> "" Then
                    Print #z, Space(14) & Padr((rsnew("carrier")), 30, " ") + Space(41) + Padr((rsnew("carrier")), 30, " ")
                    Else
                    Print #z,
                    End If
    
    
                    If rsnew("lr_no") <> "" Then
                    Print #z, Space(14) & Padr((rsnew("lr_no")), 8, " ") + Space(26) + Space(20) + Space(17) + Padr((rsnew("lr_no")), 8, " ") + Space(23) + Space(20)
                    Else
                    Print #z,
                    End If
           
                    Print #z, Space(13); Padl(" ", 14, " ") & Space(25 - 2) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!pre_time, "hh:mm"), 8 - 3, " ") + Space(13 + 2) + Padl(" ", 14, " ") & Space(25 - 4) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!pre_time, "hh:mm"), 8 - 3, " ")
     
  
                    If rsnew!vehicle_no <> "" Then
                        Print #z, Space(13 - 5); Padl(rsnew!vehicle_no, 14, " ") & Space(25 - 2 + 5) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ") + Space(15 + 2 - 5) + Padl(rsnew!vehicle_no, 14, " ") & Space(23 - 4 + 5) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ")
                    Else
                        Print #z, Space(13); Padl(" ", 14, " ") & Space(25 - 2) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ") + Space(15) + Padl(" ", 14, " ") & Space(23 - 1 - 1) & Padl(Format(rsnew!Date, "DD-MMM-YYYY"), 8 + 4, " ") & Space(1) & Padr(Format(rsnew!rem_time, "hh:mm"), 8 - 3, " ")
                    End If
                    isno = 0
                    iDSno = 0
                    Print #z, Space(17 + 4) + Padr("No.of", 6, "") + Space(50 + 11 - 2 + 1) + Padl("No.of", 6, "")
                    Print #z, Space(5 + 1) + Padl("DRAW.NO/DESC", 12, "") + Padl("Bales/Borah", 14, "") + Padl("QTY", 8, "") + Padl("UOM", 5, "") + Space(1) + Padl("RATE", 8 - 1, "") + Padl("VALUE", 10 + 1, "") + Space(9 - 2 + 2) + Padl("DRAW.NO/DESC", 12, "") + Padl("Bales/Borah", 14, "") + Space(1) + Padl("QTY", 8, "") + Space(1) + Padl("UOM", 5, "") + Space(1 - 1) + Padl("RATE", 8, "") + Padl("VALUE", 10, "")
                    Print #z,
                    
                   'detail
                   'Dim Tot_val1 As Double
                   
                       Tot_val1 = 0
                        
                       rsnew.MoveFirst
    
                        Do While Not rsnew.EOF
                         isno = isno + 1
                         iDSno = iDSno + 1
        
                        Sortname_1 = "": Sortname_2 = ""
                        If iDSno >= 3 Then
                            If Len(rsnew("Description")) > 30 Then
                            Sortname_1 = Mid(rsnew("Description"), 1, InStrRev(Left(rsnew("Description"), 30), " ") - 1)
                            Sortname_2 = Mid(rsnew("Description"), InStrRev(Left(rsnew("Description"), 30), " "))
                            Else
                            Sortname_1 = rsnew("Description")
                            End If
            
                            Set rsuom = New Recordset
                            Set rsuom = DB.Execute("SELECT UOM FROM IG_RPRODUCT WHERE PRODUCT_CODE='" & rsnew("PRODUCT_CODE") & "'")
                            UOM = rsuom(0)
                            If UCase(UOM) = "K" Then
                                UOM = "Kgs"
                            Else
                            UOM = "Meters"
                            End If
            
                            Print #z, Space(4) + Padl(isno, 2, " ") + Space(1) + Padr(rsnew("OLDProduct_code"), 13, " ") + Padl("    ", 4, " ") + Space(1) + Padl("    ", 6, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(UOM, 5, " ") + Padl(INF(rsnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(rsnew("Value"), 2), 12, " ") + Space(4 + 2 - 1) + Padl(isno, 2, " ") + Space(1) + Padr(rsnew("OLDProduct_code"), 12, " ") + Space(3) + Padl("    ", 4, " ") + Padl("    ", 7, " ") + Padl(INF(rsnew("NETT_KGS"), 3), 9, " ") + Space(1) + Padl(UOM, 5, " ") + Padl(INF(rsnew("RATE_EX"), 2), 7, " ") + Space(1) + Padl(INF(rsnew("Value"), 2), 12, " ")
                            Print #z, Space(9 - 2) + Padr(Sortname_1, 25 - 5, "") + Padr(rsnew("packs"), 4, "") + Space(40 - 10 + 6 + 5 + 2) + Padr(Sortname_1, 25 - 5, "") + Padr(rsnew("packs"), 4, "")
            
                            If Sortname_2 <> "" Then
                                Print #z, Space(5) + Padl(" ", 2, " ") + Space(1) + Padr(Sortname_2, 30, " ") + Space(50 + 2) + Padr(Sortname_2, 30, " ")
                                iDSno = iDSno + 1
                            End If
                            Print #z,
                            Print #z,
                            co = co + 5
                            End If
                            rsnew.MoveNext
                          Loop
                    
                    
                    
                    
                    End If '3
                    
                    
                    
                    
                    
             End If
             
             
             
                    ' Do While Not RSnew.EOF
                     '   RSnew.MoveNext
                     'Loop
             
               'RSnew.MoveNext
            Loop '--1
                   
            
        End If 'dsn>2
        
        Do While Not rsnew.EOF
            rsnew.MoveNext
        Loop

  Loop
    
    
    Rst2.MoveNext
Loop

Close #z
z = FreeFile
Open "c:\g1.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type g1.txt>prn"
Close #z
rptv.txtfile = "c:\g1.txt"
rptv.Batfile = "c:\g1.bat"
Screen.MousePointer = 0
End Sub


Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
