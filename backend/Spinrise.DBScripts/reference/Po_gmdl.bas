Attribute VB_Name = "Mod1"



Global divcode As String
Global db As Connection
Global connectstring As String
Global yfdate As String
Global yldate As String
Global pdate As Date
Global Webpasswd As String
Global timerpara As String
Global timeflag As String
Global intervalminutes As Integer
Global IdealMinutes As Integer
Global Autologoff As String
Global TCSFLAG As String
Global TCSPER1 As Double
Global Timer As Integer
Global gl_Driver As String
Global gl_Server As String
Global gl_userId As String
Global gl_Passwd As String
Global Purstock As String ' added on 10-08-18 by mariyaiya for godownwise stock
Global orderqtynew As String
Global PrPoNo As String
Global prdate As String
Global prcount As Integer
Global SysIP As String
Global Repoption As String
Global TLocalIPAdd, PMUSER, PurTypeFlg, PMGODCODE, PMPURTYPE As String
Public Const EncryptKey As Integer = 4
Global PDFExportFlag As Integer
Global gl_db As String
Global gl_Cmpnylst As Integer
Global gl_Divlst As Integer
Global MFDate, MLDate As String
Global repindex As Integer
Global divname, DIVABBR As String
Global CompCode, CompName As String
Global MibEnableFlg As String
Global usrid As String
Global curstk As Double
Global curstk1 As Double
Global OrderQuantity As Double
Global ulevel As Integer
Global PoConf As String
Global CurrYear As Boolean
Global OrdBalQuantity As Double
Global GSTRDBNAME As String
Global GSERVER As String
Global DBUSER, DBPWD As String
Global itemlen As Integer
Global POConfSlno As Integer
Global Grplen As Integer
Global PartyType As String
Global GSNO As Integer
Global Const CJ As String = "_"
Global UserID As String
Global CustID As String
Global CustID1 As String
Global cval As Double, opstk As Double, clstk As Double, clval As Double
Global Const pagelen As Integer = 60
Global Suplen As Integer
Global ABC As Long
Global SpRW As Long
Global Const backend As String = "Sql Server"
Global Const Module As String = "Purchase Order System"
Global Ini_file As String
Global Const head As String = " Kalsofte "
Global Const SbMsg As String = " Kalsofte "
Global Split_Lines(100) As String
Global Const ModuleNo As Integer = 4
Global PAPERWIDTH As Integer
Global FILENAME1 As String
Global FRONTSPACE As Integer
Global ValidChqDt As Integer
Global rfooter As String   '' to assign report footer
'' ******** For Alert Message *******************
Global FrmAlertMsg_Open As String
Global Auto_Alert As String
Global UserName As String
Global QSLCode As String   ' Query
Global QryStat As String   'Query
'' **********************************************

'' ***************** Constant variable for user level *******************************
Global Const FORM_ITEM = 8
Global Const FORM_SUPPLIER = 9
Global Const FORM_SUPPLIER_ITEM = 10
Global Const FORM_INDENT = 11
Global Const FORM_INDENT_AMEND = 12
Global Const FORM_INDENT_CANCEL = 13
Global Const FORM_INDENT_APP = 14
Global Const FORM_ENQUIRY = 15
Global Const FORM_QUOT = 16
Global Const FORM_INDENT_PO = 17
Global Const FORM_PO = 18
Global Const FORM_PO_AMEND = 19
Global Const FORM_PO_CANCEL = 20
Global Const FORM_ADVANCE = 21
Global Const REP_DAILY = 22
Global Const REP_D_INDENT = 25
Global Const REP_D_ENQ = 26
Global Const REP_D_QUOT = 27
Global Const REP_D_PO_PRE = 28
Global Const REP_D_PO_PLAIN = 29
Global Const REP_D_PO_AMEND = 30
Global Const REP_D_PO_CANCEL = 31
Global Const REP_D_PENDING_INDENT = 32
Global Const REP_D_PENDING_ORDER = 33
Global Const REP_D_REMINDER = 34
Global Const REP_D_REMINDER1 = 35
Global Const REP_D_REMINDER2 = 36

Global Const REP_PERIODIC = 23
Global Const REP_P_IND_RECEIPT = 37
Global Const REP_P_IND = 38
Global Const REP_P_IND_DATE = 39
Global Const REP_P_IND_ITEM = 40
Global Const REP_P_IND_DEPT = 41
Global Const REP_P_ENQ = 42
Global Const REP_P_QUOT = 43
Global Const REP_P_QUOT_DATE = 44
Global Const REP_P_QUOT_ITEM = 45
Global Const REP_P_QUOT_SUPP = 46
Global Const REP_P_COMP_QUOT = 47
Global Const REP_P_COMP_QUOT_IND = 48
Global Const REP_P_COMP_QUOT_PARTY = 49
Global Const REP_P_COMP_QUOT_RATE = 50
Global Const REP_P_ORDER = 51
Global Const REP_P_ORDER_ORDNO = 52
Global Const REP_P_ORDER_DATE = 53
Global Const REP_P_ORDER_ITEM = 54
Global Const REP_P_ORDER_SUPP = 55
Global Const REP_P_PO_AMEND = 56
Global Const REP_P_PO_CANCEL = 57
Global Const REP_P_PO_CANCEL_DATE = 58
Global Const REP_P_PO_CANCEL_ORDER = 59
Global Const REP_P_PO_CANCEL_SUPP = 60
Global Const REP_P_ORDER_MAT = 61
Global Const REP_P_PRICE_COMP = 62
Global Const REP_P_PEN_IND = 63
Global Const REP_P_PEN_IND_DATE = 64
Global Const REP_P_PEN_IND_ITEM = 65
Global Const REP_P_PENDING_ORD = 66
Global Const REP_P_PENDING_ORD_DATE = 67
Global Const REP_P_PENDING_ORD_ITEM = 68
Global Const REP_P_PENDING_ORD_SUPP = 69
Global Const REP_P_COMPLETE_IND = 70
Global Const REP_P_ENQ_NOTSEND = 71
Global Const REP_P_NOT_ORD = 72
Global Const REP_P_CLOSED_ORD = 73

Global Const REP_MIS = 24
Global Const REP_MIS_PURCHASE = 74
Global Const REP_MIS_PURCHASE_ITEM = 75
Global Const REP_MIS_PURCHASE_SUPP = 76
Global Const REP_MIS_VENDOR = 77
Global Const REP_MIS_VENDOR_GRN = 78
Global Const REP_MIS_VENDOR_OVERALL = 79
Global Const REP_MIS_PENDINGBILL = 80
Global Const REP_MIS_SUPP_ASSESS = 81

Global Const QITEM_INDENT = 82
Global Const QINDENT_STATUS = 83
Global Const QITEM_VENDOR = 84
Global Const QVENDOR_ITEM = 85
Global Const QPARTY_ORD = 86
Global Const QORDER_STATUS = 87
Global Const QPURCHASE_DET = 88
Global Const QGENERIC = 89

Global Const VDEPT_INDENT = 90
Global Const VSUPP_PO = 91
Global Const VDEPT_PENDING_IND = 92
Global Const VSUPP_PENDING_PO = 93

Global Const SETUP_IND = 94
Global Const SETUP_CAT = 95
Global Const SETUP_ORDER = 96
Global Const SETUP_CAR = 97
Global Const SETUP_CUR = 98
Global Const SETUP_TAX = 99
Global Const SETUP_DELI = 100
Global Const SETUP_BANK = 101
Global Const SETUP_REPFOOT = 102
Global Const SETUP_USER = 103
Global Const SETUP_ALERT_USER = 104
Global Const SETUP_ALERT_FUN = 105
Global Const SETUP_ALERT_MSG = 106

Global Const DOC_GEN = 107
Global Const ACC_YEAR = 108
Global Const PROCESS_DATE = 109
Public Const SS_SORT_ORDER_ASCENDING = 1

'--- Else comment the next two lines
'Global Const head As String = " Cyber Korp Inc. "  'It may change
'Global Const SbMsg As String = "Cyber Korp Inc."   'It may change

Public Sub ITMLSTCL(st As String, ST1 As String, FRS As String, TOS As String)

Dim rs, rs1 As Recordset
Dim A, C, PC As Integer
Dim RPTV As Report.ReportView
Dim SR As String
Dim Cnn As Connection

Set Cnn = New Connection
Cnn.Open connectstring

If repindex = 5 Then
    Set rs = New Recordset
    Set rs1 = New Recordset

    rs.Open "SELECT GRPCODE,GRPNAME FROM in_grp where grpcode between '" & st & "' and '" & ST1 & "'", Cnn
    If rs.EOF = True Then
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If

Set RPTV = New Report.ReportView
A = FreeFile

Open KALFOLDERDATA & "\poITMDETLSTc.TXT" For Output As #A
Print #A,
Print #A, Space(5) + CENTRE(divname, 96, " ")
PC = 1
SR = CStr(pdate) + Space(2)
Print #A, Space(5) + "Item List" + Space(57) + Format(SR, "dd/mm/yy") + "  Pg.No :" + Space(1) & PC
Print #A, Space(5) + String(96, "-")
Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
Print #A, Space(5) + "Item Code" + Space(1) + "Item Name" + Space(62) + "Unit" + Space(5) + "Active"
Print #A, Space(5) + String(96, "-")
C = 7

Do While Not rs.EOF
  Print #A, Space(5) + rs(0) + Space(5 - Len(rs(0))) + rs(1) + Space(31 - Len(rs(1)))
  C = C + 1
      If C >= pagelen Then
        PC = PC + 1
        Print #A, Space(5) + String(96, "-")
        Print #A, Chr(12)
        Print #A, Space(5) + "Item Code Listing" + Space(46) + SR + "Pg.No :" + Space(1) & PC
        Print #A, Space(5) + String(96, "-")
        Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
        Print #A, Space(5) + "Item Code" + Space(1) + "Item Name" + Space(62) + "Unit" + Space(5) + "Active"
        Print #A, Space(5) + String(96, "-")
        C = 7
      End If
  
    Set rs1 = New Recordset '(case when I.CATFLG = 0 then 'Indgenous' else case when CATFLG = 1 then 'Imported' else '-' end end)'CATFLG',I.CATLNO,(case when I.CATCODE  = 'C' then 'Capital' else case when I.CATCODE = 'S' then 'Stores' else case when I.CATCODE = 'H' then 'Overhaul' else '-' end end end)'CATCODE'
    rs1.Open "SELECT itemCODE,itemNAME,uom,case when IsItemActive='Y' then 'Yes' else 'No' end Active FROM in_item where itemcode like '" & CStr(rs("grpcode")) & "%' and itemcode between '" & FRS & "' and '" & TOS & "'", Cnn
 
    Do While Not rs1.EOF
         Print #A, Space(5) + rs1(0) + Space(10 - Len(rs1(0))) + rs1(1) + Space(71 - Len(rs1(1))) + rs1(2) + Space(5 - Len(rs1(2))) + Space(5) + rs1("Active")
         rs1.MoveNext
         C = C + 1
         If C >= pagelen Then
           PC = PC + 1
           Print #A, Space(5) + String(96, "-")
           Print #A, Chr(12)
           Print #A, Space(5) + "Item Code Listing" + Space(46) + SR + "Pg.No :" + Space(1) & PC
           Print #A, Space(5) + String(96, "-")
           Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
           Print #A, Space(5) + "Item Code" + Space(1) + "Item Name" + Space(62) + "Unit" + Space(5) + "Active"
           Print #A, Space(5) + String(96, "-")
           C = 7
         End If
    Loop
     rs.MoveNext
     Print #A,
     C = C + 1
  
    If C >= pagelen Then
      PC = PC + 1
      Print #A, Space(5) + String(96, "-")
      Print #A, Chr(12)
      Print #A, Space(5) + "Item Code Listing" + Space(46) + SR + "Pg.No :" + Space(1) & PC
      Print #A, Space(5) + String(96, "-")
      Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
      Print #A, Space(5) + "Item Code" + Space(1) + "Item Name" + Space(62) + "Unit" + Space(5) + "Active"
      Print #A, Space(5) + String(96, "-")
      C = 0
    End If
    
Loop

    Print #A, Space(5) + String(96, "-")
    Close #A
    
    A = FreeFile
    Call KALBATPROCESS("poITMDETLSTc")

End If

End Sub
Public Sub itmlstDL(st As String, ST1 As String, FRS As String, TOS As String)  ' SF As String, ST As Stringrprs As Recordset, rprs As Recordset
Dim rs, rs1 As Recordset
Dim A, C, PC As Integer
Dim RPTV As Report.ReportView
Dim SR As String
Dim Cnn As Connection
Set Cnn = New Connection
Cnn.Open connectstring
If repindex = 5 Then
Set rs = New Recordset
Set rs1 = New Recordset

rs.Open "SELECT GRPCODE,GRPNAME FROM in_grp where grpcode between '" & st & "' and '" & ST1 & "'", Cnn
If rs.EOF = True Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
End If
Set RPTV = New Report.ReportView
A = FreeFile
Open KALFOLDERDATA & "\poITMDETLSTd.TXT" For Output As #A
Print #A,
SR = CStr(pdate) + Space(2)
          PC = 1
          Print #A,
          Print #A, Space(10) & Chr(27) & "E" & CENTRE(divname, 130, " ") & Chr(27) & "F"
          
          Print #A, Space(90)
          Print #A,
          Print #A, Space(5) + "Item Detailed List" + Space(299) + SR + "Pg.No :" + Space(1) & PC
          Print #A, Space(5) + String(341, "-")
          Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
          Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Unit" + Space(3) + "Phy.Stk" + Space(4) + "Location" + Space(8) + "Material" + Space(31 - 8) + "Size" + Space(27) + "Spec" + Space(34) + "Minimum" + Space(14 - 7) + "Maximum" + Space(14 - 5) + "Level" + Space(14 - 5) + "Quantity" + Space(17 - 8) + "Rate" + Space(5 - 4) + "CatFlg" + Space(4) + "Category" + Space(1) + "CatLogNo." + Space(13) + "ABC Flg" + Space(1) + "FSN Flg" + Space(1)
          Print #A, Space(5) + String(341, "-")
          C = 0
Do While Not rs.EOF
  Print #A, Space(5) + rs(0) + Space(5 - Len(rs(0))) + rs(1) + Space(31 - Len(rs(1)))
  Print #A,
  C = C + 2
  Set rs1 = New Recordset '(case when I.CATFLG = 0 then 'Indgenous' else case when CATFLG = 1 then 'Imported' else '-' end end)'CATFLG',I.CATLNO,(case when I.CATCODE  = 'C' then 'Capital' else case when I.CATCODE = 'S' then 'Stores' else case when I.CATCODE = 'H' then 'Overhaul' else '-' end end end)'CATCODE'
  rs1.Open "SELECT itemCODE,itemNAME,uom,ISNULL(PHYSTK,0)AS PHYSTK,isnull(location,'-'),isnull(itemspec1,'-'),isnull(itemspec2,'-'),isnull(itemspec3,'-'),ISNULL(minlevel,0)AS minlevel,ISNULL(maxlevel,0)AS maxlevel,ISNULL(rordlevel,0)AS rordlevel,ISNULL(rordqty,0)AS rordqty,ISNULL(rate,0)AS rate,(case when CATFLG = 0 then 'Indgenous' else case when CATFLG = 1 then 'Imported' else '-' end end)'CATFLG',(case when CATCODE  = 'C' then 'Capital' else case when CATCODE = 'S' then 'Stores' else case when CATCODE = 'H' then 'Overhaul' else '-' end end end)'CATCODE',isnull(catlno,'-')as catlno,abcflg,fsnflg FROM in_item where itemcode like '" & CStr(rs("grpcode")) & "%' and itemcode between '" & FRS & "' and '" & TOS & "'", Cnn
    Do While Not rs1.EOF
        On Error Resume Next
      'Print #a, Space(5) + rs1(0) + Space(10 - Len(rs1(0))) + rs1(1) + Space(71 - Len(rs1(1))) + rs1(2) + Space(5 - Len(rs1(2))) + CStr(Format(rs1(3), "#0.000")) + Space(13 - Len(CStr(Format(rs1(3), "#0.000")))) + rs1(4) + Space(16 - Len(rs1(4))) + rs1(5) + Space(31 - Len(rs1(5))) + rs1(6) + Space(31 - Len(rs1(6))) + rs1(7) + Space(31 - Len(rs1(7))) + CStr(Format(rs1(8), "#0.000")) + Space(14 - Len(CStr(Format(rs1(8), "#0.000")))) + CStr(Format(rs1(9), "#0.000")) + Space(14 - Len(CStr(Format(rs1(9), "#0.000")))) + CStr(Format(rs1(10), "#0.000")) + Space(14 - Len(CStr(Format(rs1(10), "#0.000")))) + CStr(Format(rs1(11), "#0.000")) + Space(14 - Len(CStr(Format(rs1(11), "#0.000")))) + CStr(Format(rs1(12), "#0.000")) + Space(16 - Len(CStr(Format(rs1(12), "#0.000")))) + CStr(rs1(13)) + Space(10 - Len(CStr(rs1(13)))) + rs1(14) + Space(9 - Len(rs1(14))) + rs1(15) + Space(21 - Len(rs1(15))) + rs1(16) + Space(7 - Len(rs1(16))) + rs1(17) + Space(7 - Len(rs1(17)))
      'Print #a, Space(5) & rs1(0) & Space(10 - Len(rs1(0))) & rs1(1) & Space(71 - Len(rs1(1))) & rs1(2) & Space(5 - Len(rs1(2))) & Space(9 - Len(CStr(Format(rs1(3), "#0.000")))) & CStr(Format(rs1(3), "#0.000")) & Space(4) & rs1(4) & Space(16 - Len(rs1(4))) & rs1(5) & Space(31 - Len(rs1(5))) & rs1(6) & Space(31 - Len(rs1(6))) & rs1(7) & Space(31 - Len(rs1(7))) & Space(14 - Len(CStr(Format(rs1(8), "#0.000")))) & CStr(Format(rs1(8), "#0.000")) & Space(14 - Len(CStr(Format(rs1(9), "#0.000")))) & CStr(Format(rs1(9), "#0.000")) & Space(14 - Len(CStr(Format(rs1(10), "#0.000")))) & CStr(Format(rs1(10), "#0.000")) & Space(17 - Len(CStr(Format(rs1(11), "#0.000")))) & CStr(Format(rs1(11), "#0.000")) & Space(13 - Len(CStr(Format(rs1(12), "#0.000")))) & CStr(Format(rs1(12), "#0.000")) & Space(1) & CStr(rs1(13)) & Space(10 - Len(CStr(rs1(13)))) & rs1(14) & Space(9 - Len(rs1(14))) & Space(25 - Len(rs1(15))) & rs1(15) & Space(1) & rs1(16) & Space(6 - Len(rs1(16))) & Space(2) & rs1(17) & Space(5 - Len(rs1(17)))
      'Print #a, Space(5) & rs1(0) & Space(14 - Trim(Len(rs1(0)))) & rs1(1) & Space(67 - Len(rs1(1))) & rs1(2) & Space(5 - Len(rs1(2))) & Space(9 - Len(CStr(INF(rs1(3), 3)))) & CStr(INF(rs1(3), 3)) & Space(4) & rs1(4) & Space(16 - Len(rs1(4))) & rs1(5) & Space(31 - Len(rs1(5))) & rs1(6) & Space(31 - Len(rs1(6))) & rs1(7) & Space(31 - Len(rs1(7))) & Space(14 - Len(CStr(INF(rs1(8), 3)))) & CStr(INF(rs1(8), 3)) & Space(14 - Len(CStr(INF(rs1(9), 3)))) & CStr(INF(rs1(9), 3)) & Space(14 - Len(CStr(INF(rs1(10), 3)))) & CStr(INF(rs1(10), 3)) & Space(17 - Len(CStr(INF(rs1(11), 3)))) & CStr(INF(rs1(11), 3)) & Space(13 - Len(CStr(INF(rs1(12), 3)))) & CStr(INF(rs1(12), 3)) & Space(1) & CStr(rs1(13)) & Space(10 - Len(CStr(rs1(13)))) & rs1(14) & Space(9 - Len(rs1(14))) & Space(25 - Len(rs1(15))) & rs1(15) & Space(1) & rs1(16) & Space(6 - Len(rs1(16))) & Space(2) & rs1(17) & Space(5 - Len(rs1(17)))
      Print #A, Space(5) & rs1(0) & Space(14 - Trim(Len(rs1(0)))) & rs1(1) & Space(67 - Len(rs1(1))) & Space(4) & rs1(2) & Space(5 - Len(rs1(2))) & Space(9 - Len(CStr(INF(rs1(3), 3)))) & CStr(INF(rs1(3), 3)) & Space(4) & rs1(4) & Space(16 - Len(rs1(4))) & rs1(5) & Space(31 - Len(rs1(5))) & rs1(6) & Space(31 - Len(rs1(6))) & rs1(7) & Space(31 - Len(rs1(7))) & Space(14 - Len(CStr(INF(rs1(8), 3)))) & CStr(INF(rs1(8), 3)) & Space(14 - Len(CStr(INF(rs1(9), 3)))) & CStr(INF(rs1(9), 3)) & Space(14 - Len(CStr(INF(rs1(10), 3)))) & CStr(INF(rs1(10), 3)) & Space(17 - Len(CStr(INF(rs1(11), 3)))) & CStr(INF(rs1(11), 3)) & Space(13 - Len(CStr(INF(rs1(12), 3)))) & CStr(INF(rs1(12), 3)) & Space(1) & CStr(rs1(13)) & Space(10 - Len(CStr(rs1(13)))) & rs1(14) & Space(9 - Len(rs1(14))) & rs1(15) & Space(21 - Len(rs1(15))) & Space(1) & rs1(16) & Space(7) & rs1(17)
      rs1.MoveNext
      C = C + 1
    If C >= pagelen Then
            Print #A, Chr(12)
            PC = PC + 1
            Print #A, Space(5) + "Item Detailed Listing" + Space(299) + SR + "Pg.No :" + Space(1) & PC
            Print #A, Space(5) + String(341, "-")
            Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
            Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Unit" + Space(3) + "Phy.Stk" + Space(4) + "Location" + Space(8) + "Material" + Space(31 - 8) + "Size" + Space(27) + "Spec" + Space(34) + "Minimum" + Space(14 - 7) + "Maximum" + Space(14 - 5) + "Level" + Space(14 - 5) + "Quantity" + Space(17 - 8) + "Rate" + Space(5 - 4) + "CatFlg" + Space(4) + "Category" + Space(1) + "CatLogNo." + Space(13) + "ABC Flg" + Space(1) + "FSN Flg" + Space(1)
            Print #A, Space(5) + String(341, "-")
        C = 0
    End If
    Loop
  rs.MoveNext
  
    If C >= pagelen Then
            Print #A, Space(5) + String(341, "-")
            Print #A, Chr(12)
            PC = PC + 1
            Print #A, Space(5) + "Item Detailed Listing" + Space(299) + SR + "Pg.No :" + Space(1) & PC
            Print #A, Space(5) + String(341, "-")
            Print #A, Space(5) + "Code" + Space(1) + "Group Description" + Space(71 - 9)
            Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Unit" + Space(3) + "Phy.Stk" + Space(4) + "Location" + Space(8) + "Material" + Space(31 - 8) + "Size" + Space(27) + "Spec" + Space(34) + "Minimum" + Space(14 - 7) + "Maximum" + Space(14 - 5) + "Level" + Space(14 - 5) + "Quantity" + Space(17 - 8) + "Rate" + Space(5 - 4) + "CatFlg" + Space(4) + "Category" + Space(1) + "CatLogNo." + Space(13) + "ABC Flg" + Space(1) + "FSN Flg" + Space(1)
            Print #A, Space(5) + String(341, "-")
            C = 0
    End If
  Loop
Print #A, Space(5) + String(341, "-")

Close #A

A = FreeFile
Call KALBATPROCESS("poITMDETLSTd")
End If 'REPINDEX
End Sub

Public Sub adddelmod(tol As Object)
'This is used to disable the required buttons when add  operation performs
On Error Resume Next
                tol(0).Enabled = False  'ADD
                tol(1).Enabled = False  'MOD
                tol(2).Enabled = False  'DEL
                tol(3).Enabled = False  'FIND
                tol(4).Enabled = False  'LIST
                tol(5).Enabled = False  'FIRST
                tol(6).Enabled = False  'NEXT
                tol(7).Enabled = False  'PREVIOUS
                tol(8).Enabled = False  'LAST
                tol(9).Enabled = True  'SAVE
                tol(10).Enabled = True  'CANCEL
                tol(11).Enabled = False 'EXIT
End Sub

Public Sub QUERY(tol As Object)
  On Error Resume Next
    'This procedure for Query
                tol(0).Enabled = False  'ADD
                tol(1).Enabled = False  'MOD
                tol(2).Enabled = False  'DEL
                tol(3).Enabled = True  'LIST
                tol(4).Enabled = True  'Find
                tol(5).Enabled = True   'FIRST
                tol(6).Enabled = True   'NEXT
                tol(7).Enabled = True   'PREVIOUS
                tol(8).Enabled = True   'LAST
                tol(9).Enabled = False 'SAVE
                tol(10).Enabled = True  'CANCEL
                tol(11).Enabled = True 'EXIT
End Sub
Public Sub NEWFORM(tol As Object, SNO As Integer)
'This is used for cancel  and form load button.
On Error GoTo NEWFORM_Error
If SNO <> 0 Then
    On Error Resume Next
    Dim db As New Connection
    db.Open connectstring
    Dim rs As New Recordset
    
    Set rs = New Recordset
    rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =" & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & SNO, db, adOpenStatic
    
        If rs.RecordCount > 0 Then

     
                        
            'If CurrYear = True Then
                If rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
                If rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
                If rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
           ' Else
'                    Set rspara = New Recordset
'                    rspara.Open "select isnull(backdate,'N') from in_para", db, adOpenStatic
'                    If rspara(0) = "N" Then
'                        tol(0).Enabled = False
'                        tol(1).Enabled = False
'                        tol(2).Enabled = False
'                    Else
'                        tol(0).Enabled = True
'                        tol(1).Enabled = True
'                    End If
           ' End If
           
            tol(3).Enabled = True   'LIST
            tol(4).Enabled = True   'FIND
            tol(5).Enabled = True   'FIRST
            tol(6).Enabled = True   'NEXT
            tol(7).Enabled = True   'PREVIOUS
            tol(8).Enabled = True   'LAST
            tol(9).Enabled = False  'SAVE
            tol(10).Enabled = False 'CANCEL
            tol(11).Enabled = True  'EXIT
            
        Else
            tol(0).Enabled = True   'ADD
            tol(1).Enabled = True   'MOD
            tol(2).Enabled = True   'DEL
            tol(3).Enabled = True   'LIST
            tol(4).Enabled = True   'FIND
            tol(5).Enabled = True   'FIRST
            tol(6).Enabled = True   'NEXT
            tol(7).Enabled = True   'PREVIOUS
            tol(8).Enabled = True   'LAST
            tol(9).Enabled = False  'SAVE
            tol(10).Enabled = False 'CANCEL
            tol(11).Enabled = True  'EXIT
        End If
 Else
    tol(0).Enabled = True   'add
    tol(1).Enabled = True   'mod
    tol(2).Enabled = True   'del
    tol(3).Enabled = True   'FIND
    tol(4).Enabled = True   'LIST
    tol(5).Enabled = True   'FIRST
    tol(6).Enabled = True   'NEXT
    tol(7).Enabled = True   'PREVIOUS
    tol(8).Enabled = True   'LAST
    tol(9).Enabled = False  'SAVE
    tol(10).Enabled = False 'CANCEL
    tol(11).Enabled = True  'EXIT
 End If
Exit Sub
Exit Sub
NEWFORM_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure NEWFORM of Module Mod1", vbInformation, head
End Sub

Public Sub las(tol As Object)
  On Error Resume Next
        tol(6).Enabled = False
        tol(8).Enabled = False
        tol(5).Enabled = True
        tol(7).Enabled = True
End Sub
Public Sub FIR(tol As Object)
 On Error Resume Next
        tol(5).Enabled = False
        tol(7).Enabled = False
        tol(6).Enabled = True
        tol(8).Enabled = True
End Sub
Public Sub supprep(ST1 As String, st2 As String)
    Dim rs, rs1 As Recordset
    Dim A, C, PC As Integer
    Dim rep As Report.ReportView
    Dim STR As String
    Dim cn As Connection
    Set cn = New Connection
    cn.CursorLocation = adUseClient
    cn.Open connectstring
    
    Set rep = New Report.ReportView
    A = FreeFile
    'Close #a
    Open KALFOLDERDATA & "\sup10.txt" For Output As #A
    Print #A, Space(202)
    STR = CStr(pdate) + Space(2)
    
    Print #A,
    Print #A, Space(10) + Space(Round((156 - 2 * Len(divname)) / 2)) + Chr(14) + divname + Space(2) + Chr(14) + Space(Round((100 - 2 * Len(divname)) / 2))
    Print #A, Space(90)
    Print #A,
    PC = 1
    Print #A, Space(5) & "Supplier List" + Space(122) + STR + "Pg.No :" + Space(1) & PC
    Set rs = New Recordset
    rs.Open "select DISTINCT a.slcode,b.slname from po_supitem a,fa_slmas b where a.slcode=b.slcode and a.SLCODE  between '" & ST1 & "' and  '" & st2 & "' order by  a.SLCODE", cn, adOpenDynamic, adLockBatchOptimistic
        If rs.BOF Then
          MsgBox "No records found ", vbInformation, head
          Close #A
          Exit Sub
        End If
    Print #A, Space(5) + String(156, "-")
    Print #A, Space(5) + "Code        Description"
    Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Order No." + Space(4) + "Date" + Space(11) + "Rate" + Space(8) + "Tax" + Space(3) + "Exc%" + Space(3) + "AED%" + Space(3) + "Sur%" + Space(2) + "Disc%"
    Print #A, Space(5) + String(156, "-")
    C = 0
    Do While Not rs.EOF
        Print #A,
        'Print #a, Space(5) + RS(0) + Space(7 - Len(RS(0))) + RS(1) '+ Space(41 - Len(RS(0)))
        Print #A, Space(5) + rs(0) + Space(5) + rs(1) '+ Space(41 - Len(RS(0)))
        C = C + 1
        Print #A,
        C = C + 1
        Set rs1 = New Recordset
        'RS1.Open "SELECT a.itemcode,b.itemname,isnull(a.lastpono,''),a.lastpdt,a.lastprt,a.TAXPER,a.EXDPER,a.SEDPER,a.SURPER,a.DISPER from po_supitem a,in_item b where a.itemcode=b.itemcode and  a.SLCODE  between '" & st1 & "' and  '" & st2 & "'", cn, adOpenDynamic, adLockBatchOptimistic
        rs1.Open "SELECT a.itemcode,b.itemname,isnull(a.lastpono,0),a.lastpdt,a.lastprt,a.TAXPER,a.EXDPER,a.SEDPER,a.SURPER,a.DISPER from po_supitem a,in_item b where slcode='" & rs("slcode") & "' and a.itemcode=b.itemcode and  a.SLCODE  between '" & ST1 & "' and  '" & st2 & "'", cn, adOpenDynamic, adLockBatchOptimistic
        Do While Not rs1.EOF
          Print #A, Space(5) & rs1(0) & Space(14 - Len(rs1(0))) & rs1(1) & Space(71 - Len(rs1(1))) & Space(9 - Len(CStr(rs1(2)))) & CStr(rs1(2)) & Space(1) & rs1(3) & Space(11 - Len(rs1(3))) & Space(11 - Len(CStr(INF(rs1(4), 2)))) & CStr(INF(rs1(4), 2)) & Space(11 - Len(CStr(INF(rs1(5), 2)))) & CStr(INF(rs1(5), 2)) & Space(7 - Len(CStr(INF(rs1(6), 2)))) & CStr(INF(rs1(6), 2)) & Space(7 - Len(CStr(INF(rs1(7), 2)))) & CStr(INF(rs1(7), 2)) & Space(7 - Len(CStr(INF(rs1(8), 2)))) & CStr(INF(rs1(8), 2)) & Space(7 - Len(CStr(Format(rs1(9), "#0.00")))) & CStr(INF(rs1(9), 2))
          On Error Resume Next
          rs1.MoveNext
       
          C = C + 1
          If C = pagelen Then
                PC = PC + 1
                Print #A,
                Print #A, Space(5) & "Supplier List" + Space(122) + STR + "Pg.No :" + Space(1) & PC
                Print #A, Space(5) + String(156, "-")
                Print #A, Space(5) + "Code   Description"
                Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Order No." + Space(1) + "Date" + Space(14) + "Rate" + Space(8) + "Tax" + Space(3) + "Exc%" + Space(1) + "Sp.Ex%" + Space(3) + "Sur%" + Space(2) + "Disc%"
                Print #A, Space(5) + String(156, "-")
                C = 0
           End If
        Loop
        rs.MoveNext
        C = C + 1
        If C = pagelen Then
            Print #A,
            Print #A, Space(5) & "Supplier List" + Space(122) + STR + "Pg.No :" + Space(1) & PC
            Print #A, Space(5) + String(156, "-")
            Print #A, Space(5) + "Code   Description"
            Print #A, Space(5) + "Item Code" + Space(5) + "Item Name" + Space(62) + "Order No." + Space(1) + "Date" + Space(14) + "Rate" + Space(8) + "Tax" + Space(3) + "Exc%" + Space(1) + "Sp.Ex%" + Space(3) + "Sur%" + Space(2) + "Disc%"
            Print #A, Space(5) + String(156, "-")
            C = 0
        End If
    Loop
    Print #A, Space(5) + String(156, "-")
    Close #A
    Call KALBATPROCESS("sup10")
End Sub
Public Sub cancl(tol As Object, SNO As Integer)
On Error GoTo cancl_Error
If Opt = 0 Then
Dim db As New Connection
db.Open connectstring
    Set rs = New Recordset
    rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & divcode & "' AND MODULE =" & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & SNO, db, adOpenStatic
    If rs.RecordCount > 0 Then
        If CurrYear = True Then
            If rs("ADD_FLG") = "Y" Then tol(0).Enabled = True Else tol(0).Enabled = False
            If rs("MOD_FLG") = "Y" Then tol(1).Enabled = True Else tol(1).Enabled = False
            If rs("DEL_FLG") = "Y" Then tol(2).Enabled = True Else tol(2).Enabled = False
        Else
            tol(0).Enabled = False
            tol(1).Enabled = False
            tol(2).Enabled = False
        End If
    End If
    tol(3).Enabled = True  'LIST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
Else
    tol(0).Enabled = True  'add
    tol(1).Enabled = True  'mod
    tol(2).Enabled = True  'del
    tol(3).Enabled = True  'LIST
    tol(5).Enabled = True  'FIRST
    tol(6).Enabled = True  'NEXT
    tol(7).Enabled = True  'PREVIOUS
    tol(8).Enabled = True  'LAST
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True 'EXIT
End If

Exit Sub
cancl_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cancl of Module Spinmod", vbInformation, head
End Sub


Public Sub navi(tol As Object)
 On Error Resume Next
    tol(0).Enabled = False 'ADD
    tol(1).Enabled = False 'MOD
    tol(2).Enabled = False 'DEL
    tol(3).Enabled = False 'LIST
    'TOL(4).Enabled = False 'QUERY
    tol(9).Enabled = False 'SAVE
    tol(10).Enabled = True 'CANCEL
    tol(11).Enabled = True  'EXIT
End Sub


Public Sub PREV(tol As Object)
 On Error Resume Next
    tol(5).Enabled = False
    tol(7).Enabled = False
    tol(6).Enabled = True
    tol(8).Enabled = True
End Sub
Public Function Padr(TStr As Variant, Tlen As Integer, Tchar As String) As String
    Dim lnlen As Integer
    If IsNull(TStr) Then
        TStr = ""
    End If
    TStr = Trim(TStr)
    lnlen = Len(TStr)
    Select Case lnlen
        Case Is < Tlen
          ' Padr = Tstr & Replicate_Char(Tlen - lnlen, Tchar)
           Padr = TStr & String(Tlen - lnlen, Tchar)
        Case Is >= Tlen
            Padr = Left(TStr, Tlen)
'        Case Is = Tlen
'            Padr = TStr
    End Select
End Function
Public Function Padl(TStr As Variant, Tlen As Integer, Tchar As String) As String
On Error Resume Next
    Dim lnlen As Integer
    If IsNull(TStr) Then
        TStr = ""
    End If
    TStr = Trim(TStr)
    lnlen = Len(TStr)
    Select Case lnlen
        Case Is < Tlen
'            Padl = String(Tlen - lnlen, Tchar) & TStr
            Padl = String(Tlen - lnlen, Tchar) & TStr
        Case Is >= Tlen
            Padl = Left(TStr, Tlen)
'        Case Is = Tlen
'            Padl = TStr
    End Select
End Function

Public Sub NEX(tol As Object)
 On Error Resume Next
    tol(6).Enabled = False
    tol(8).Enabled = False
    tol(5).Enabled = True
    tol(7).Enabled = True
End Sub
Public Function fnyfdate(dmyr)
On Error Resume Next
C = Mid$(dmyr, 4, 2)
If C = "01" Or C = "02" Or C = "03" Then
    fnyfdate = "01/04/" + CStr(val(Mid$(dmyr, 7, 4)) - 1)
Else
   fnyfdate = "01/04/" + Mid$(dmyr, 7, 4)
End If
End Function

Public Function fnyldate(dmyr)
On Error Resume Next
C = Mid$(dmyr, 4, 2)
If C = "01" Or C = "02" Or C = "03" Then
    fnyldate = "31/03/" + Mid$(dmyr, 7, 4)
Else
    fnyldate = "31/03/" + CStr(val(Mid$(dmyr, 7, 4)) + 1)
End If
End Function

Public Function fnyopym(dmyr)
On Error Resume Next
C = Mid$(dmyr, 4, 2)
If C = "01" Or C = "02" Or C = "03" Then
    fnyopym = CStr(val(Mid$(dmyr, 7, 4)) - 1) + "04"
Else
    fnyopym = Mid$(dmyr, 7, 4) + "04"
End If
End Function

Public Function fnmfdate(dmyr)
On Error Resume Next
fnmfdate = "01/" + Mid$(dmyr, 4, 2) + "/" + Mid$(dmyr, 7, 4)
End Function

Public Function fnylastym(dmyr)
On Error Resume Next
C = Mid$(dmyr, 4, 2)
If C = "01" Or C = "02" Or C = "03" Then
    fnylastym = "03" + Mid$(dmyr, 7, 4)
Else
    fnylastym = "03" + CStr(val(Mid$(dmyr, 7, 4) + 1))
End If
End Function

Public Function fnmldate(dmyr)
On Error Resume Next
Select Case val(Mid$(dmyr, 4, 2))
Case 1, 3, 5, 7, 8, 10, 12
    fnmldate = "31/" + Mid$(dmyr, 4, 7)
Case 4, 6, 9, 11
    fnmldate = "30/" + Mid$(dmyr, 4, 7)
Case 2
    If val(Mid$(dmyr, 7, 4)) Mod 4 = 0 Then
        fnmldate = "29/" + Mid$(dmyr, 4, 7)
    Else
        fnmldate = "28/" + Mid$(dmyr, 4, 7)
    End If
End Select
End Function

Sub repprocList(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt As Object, cb1 As Object, cb2 As Object, List1 As Object)
On Error Resume Next
dt.ConnectionString = connectstring
If repindex = 1 Then
    dt.RecordSource = "select distinct (a.itemname + ' -- '+ a.itemcode ) FLD ,a.itemcode from  in_item a,po_ordl b where a.itemcode=b.itemcode and b.divcode='" & divcode & "' order by 2"
ElseIf repindex = 35 Or repindex = 36 Or repindex = 44 Or repindex = 19 Or repindex = 41 Or repindex = 2 Then
    dt.RecordSource = "select distinct " & cod & "+' -- '+" & codname & "  FLD from " & recsource & " order by " & 1
ElseIf repindex = 17 Then
   dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & " and b.divcode='" & divcode & "' order by " & 1
ElseIf repindex = 10 Then
  dt.RecordSource = "select distinct " & codname & "+' - '+" & cod & "  FLD from " & recsource & " and b.divcode='" & divcode & "' order by " & 1
ElseIf repindex = 31 Then
  dt.RecordSource = "select distinct " & codname & "+' - '+" & cod & "  FLD from " & recsource & " order by " & 1
ElseIf repindex = 5 Then
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & "  order by " & 1
Else
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & " and A.divcode ='" & divcode & "' order by " & 1
End If
dt.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = dt
Set cb2.RowSource = dt
cb1.ListField = "FLD"
cb2.ListField = "FLD"
dt.Recordset.MoveFirst
  Do While Not dt.Recordset.EOF
    List1.AddItem dt.Recordset(0)
    dt.Recordset.MoveNext
  Loop
End Sub
Sub repproc(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt As Object, cb1 As Object, cb2 As Object)
On Error Resume Next
dt.ConnectionString = connectstring
If repindex = 1 Then
    dt.RecordSource = "select distinct (a.itemname + '-'+ a.itemcode ) FLD ,a.itemcode from  in_item a,po_ordl b where a.itemcode=b.itemcode and b.divcode='" & divcode & "' order by 2"
ElseIf repindex = 19 Then
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & " FLD," & codname & "  from " & recsource & " order by " & codname
ElseIf repindex = 35 Or repindex = 36 Or repindex = 44 Or repindex = 19 Or repindex = 41 Or repindex = 2 Then
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & " order by " & 1
ElseIf repindex = 17 Then
   dt.RecordSource = "select distinct " & codname & "+' - '+" & cod & "  FLD," & cod & " from " & recsource & " and b.divcode='" & divcode & "' order by " & 2
ElseIf repindex = 10 Then
  dt.RecordSource = "select distinct " & codname & "+' - '+" & cod & "  FLD," & cod & "  from " & recsource & " and b.divcode='" & divcode & "' order by " & 2
ElseIf repindex = 31 Then
  dt.RecordSource = "select distinct " & codname & "+' - '+" & cod & "  FLD," & cod & " from " & recsource & " order by " & 2
ElseIf repindex = 5 Then
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & "  order by " & 1
ElseIf repindex = 12 Then
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & " and b.divcode='" & divcode & "' order by " & 1

Else
    dt.RecordSource = "select distinct " & cod & "+' - '+" & codname & "  FLD from " & recsource & " order by " & 1
End If
dt.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = dt
Set cb2.RowSource = dt
cb1.ListField = "FLD"
cb2.ListField = "FLD"
dt.Recordset.MoveFirst
  Do While Not dt.Recordset.EOF

   cb1.AddItem dt.Recordset(0)
   cb2.AddItem dt.Recordset(0)

  dt.Recordset.MoveNext
  Loop
'  Do While Not dt.Recordset.EOF
'    List1.AddItem dt.Recordset(0)
'    dt.Recordset.MoveNext
'  Loop
  dt.Recordset.MoveFirst
  cb1.Text = dt.Recordset(0)
  dt.Recordset.MoveLast
  cb2.Text = dt.Recordset(0)
End Sub
Sub repproccode(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt As Object, cb1 As Object, cb2 As Object)
On Error Resume Next
dt.ConnectionString = connectstring
dt.RecordSource = "select " & cod & "+' - '+" & codname & "  FLD from " & recsource & " order by cast( " & cod & " as numeric)"
dt.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = dt
Set cb2.RowSource = dt
cb1.ListField = "FLD"
cb2.ListField = "FLD"
If Not dt.Recordset.BOF Then
  dt.Recordset.MoveFirst
  cb1.Text = dt.Recordset(0)
  dt.Recordset.MoveLast
  cb2.Text = dt.Recordset(0)
End If
End Sub
Public Sub repproc2(r As Object)
On Error Resume Next
Dim l1, l2 As RptLabel
' Dim dv1 As New DataEnvironment1
'To display division name and date as labels in the report
Set l2 = r.Sections.item(2).Controls("PDATE")
r.Title = divname
l2.Caption = pdate
End Sub

Public Sub reppr(AD As Object, LB1 As Object, LB2 As Object, cb1 As Object, cb2 As Object, TBL As String, dt As String, LC1 As String, LC2 As String)
On Error Resume Next
    f = Format(yfdate, "dd-mmm-yyyy")
    t = Format(pdate, "dd-mmm-yyyy")
    AD.ConnectionString = connectstring
    'AD.RecordSource = "select distinct(" & dt & ") FLD from " & TBL & " WHERE  divcode = '" & divcode & "' and isnull(qtyreqd,0)-isnull(qtyord,0)>0 order by " & dt
    If repindex = 50 Then
        AD.RecordSource = "select distinct(" & dt & ") FLD from " & TBL & " WHERE  divcode = '" & divcode & "' and isnull(qtyreqd,0)-isnull(qtyord,0)>0 order by " & dt
    ElseIf repindex = 12 Then
        AD.RecordSource = "select distinct(" & dt & ") FLD from " & TBL & " WHERE  divcode = '" & divcode & "' and prdate between '" & Format(yfdate, "yyyy-mm-dd") & "' And '" & Format(yldate, "yyyy-mm-dd") & "' order by " & dt
    Else
        AD.RecordSource = "select distinct(" & dt & ") FLD from " & TBL & " WHERE  divcode = '" & divcode & "' order by " & dt
    End If
    AD.Refresh
    LB1.Caption = LC1
    LB2.Caption = LC2
    'Filling the comboboxes  with records  from the table
    Set cb1.RowSource = AD
    Set cb2.RowSource = AD
    cb1.ListField = "FLD"
    cb2.ListField = "FLD"
    If Not AD.Recordset.BOF Then
      AD.Recordset.MoveFirst
      cb1.Text = AD.Recordset(0)
      AD.Recordset.MoveLast
      cb2.Text = AD.Recordset(0)
    End If
 
   End Sub
Public Function NWord(Num As Long) As String
On Error Resume Next
Select Case Num
    Case Is = 1
        NWord = "One"
    Case Is = 2
        NWord = "Two"
    Case Is = 3
        NWord = "Three"
    Case Is = 4
        NWord = "Four"
    Case Is = 5
        NWord = "Five"
    Case Is = 6
        NWord = "Six"
    Case Is = 7
        NWord = "Seven"
    Case Is = 8
        NWord = "Eight"
    Case Is = 9
        NWord = "Nine"
    Case Is = 10
        NWord = "Ten"
    Case Is = 11
        NWord = "Eleven"
    Case Is = 12
        NWord = "Twelve"
    Case Is = 13
        NWord = "Thirteen"
    Case Is = 14
        NWord = "Fourteen"
    Case Is = 15
        NWord = "Fifteen"
    Case Is = 16
        NWord = "Sixteen"
    Case Is = 17
        NWord = "Seventeen"
    Case Is = 18
        NWord = "Eighteen"
    Case Is = 19
        NWord = "Nineteen"
    Case Is = 20
        NWord = "Twenty"
    Case Is = 30
        NWord = "Thirty"
    Case Is = 40
        NWord = "Forty"
    Case Is = 50
        NWord = "Fifty"
    Case Is = 60
        NWord = "Sixty"
    Case Is = 70
        NWord = "Seventy"
    Case Is = 80
        NWord = "Eighty"
    Case Is = 90
        NWord = "Ninety"
    Case Is = 100
        NWord = "Hundred"
End Select
End Function

Public Function Num_To_Word(Numb As Double) As String
On Error Resume Next
Dim Num1 As Double
Dim Numrup As Long, TempNum As Long
Dim NumLen As Integer, LoopLen As Integer, i As Integer
Dim Paise As Double
Dim Word As String, Word1 As String, TWord As String, TWord1 As String
Dim Mvar As Integer, Digi As Long, Digit As Long
Dim SDigi As String

Num1 = Numb
Numrup = Int(Num1)
Paise = Num1 - Numrup
NumLen = Len(CStr(Numrup))
LoopLen = NumLen
TempNum = Numrup
i = 2
If NumLen = 1 Then
    Word = NWord(Numrup)
End If
Do While i <= LoopLen
    SDigi = Right(CStr(TempNum), i)
    Digi = val(SDigi)
    If NumLen = 1 Then
        Word = NWord(TempNum)
    End If
    If Len(CStr(SDigi)) <= 2 Then
        If Mid(Digi, 1, 1) > 1 Then
            If Len(CStr(Digi)) = 2 Then
            If Mid(Digi, 2, 1) = 0 Then
                TWord = NWord(Digi)
            Else
                TWord1 = NWord(Mid(Digi, 2, 1))
                TWord = NWord(Mid(Digi, 1, 1) & "0") & " " & TWord1
            End If
            Else
                TWord = NWord(Left(Digi, 1))
            End If
        Else
            TWord = NWord(Digi)
        End If
        Word = TWord
    ElseIf Len(SDigi) = 3 And val(Left(SDigi, 1)) > 0 Then
        TWord = NWord(Mid(Digi, 1, 1))
        If Len(Word) > 0 Then
            Word = TWord & " Hundred And " & Word
        Else
            Word = TWord & " Hundred"
        End If
    ElseIf Len(SDigi) >= 4 And Len(SDigi) <= 5 Then
        If NumLen = 4 And Len(CStr(TempNum)) <= 4 Then
                TWord = NWord(Mid(Digi, 1, 1))
                Word = TWord & " Thousand " & Word
        Else
            i = i + 1
            
          
            Digit = Right(TempNum, 5)
            If (Mid(Digit, 5, 1)) = "" Then '.........  START CHECKING FOR AVOIDING TRUNCATION OF 0
                TWord = NWord(Left(Digit, 1))
            Else
             
            If Mid(Digit, 1, 1) > 1 Then
                If Mid(Digit, 2, 1) = 0 Then
                    TWord = NWord(Left(Digit, 2))
                Else
                    TWord1 = NWord(Mid(Digit, 2, 1))
                    TWord = NWord((Left(Digit, 1)) & "0") & " " & TWord1
                End If
            ElseIf Mid(Digit, 1, 1) = 1 Then
                TWord = NWord(Left(Digit, 2))
            End If
            End If '.......... END CHECKING
            Word = TWord & " Thousand " & Word
        End If
    ElseIf Len(SDigi) >= 6 And Len(SDigi) <= 7 Then
        If NumLen = 6 And Len(CStr(TempNum)) <= 6 Then
            TWord = NWord(Left(Digi, 1))
            Word = TWord & " Lakh(s) " & Word
        Else
            i = i + 1
            Digit = Right(TempNum, 7)
            If Mid(Digit, 1, 1) > 1 Then
                If Mid(Digit, 2, 1) = 0 Then
                    TWord = NWord(Left(Digit, 2))
                Else
                    TWord1 = NWord(Mid(Digit, 2, 1))
                    TWord = NWord(Left(Digit, 1) & "0") & " " & TWord1
                End If
            ElseIf Mid(Digit, 1, 1) = 1 Then
                TWord = NWord(Left(Digit, 2))
            End If
            Word = TWord & " Lakh(s) " & Word
        End If
    ElseIf Len(SDigi) >= 8 And Len(SDigi) <= 9 Then
        If NumLen = 8 And Len(CStr(TempNum)) <= 8 Then
            TWord = NWord(Left(Digi, 1))
            Word = TWord & " Crore(s) " & Word
        Else
            i = i + 1
            Digit = Right(TempNum, 9)
            If Mid(Digit, 1, 1) > 1 Then
                If Mid(Digit, 2, 1) = 0 Then
                    TWord = NWord(Left(Digit, 2))
                Else
                    TWord1 = NWord(Mid(Digit, 2, 1))
                    TWord = NWord(Left(Digit, 1) & "0") & " " & TWord1
                End If
            ElseIf Mid(Digit, 1, 1) = 1 Then
                TWord = NWord(Left(Digit, 2))
            End If
            Word = TWord & " Crore(s) " & Word
        End If
    End If
    i = i + 1
Loop
Digi = Paise * 100
If Digi <> 0 Then
    Word = Word & " And "
    If Mid(Digi, 1, 1) > 1 Then
        If Mid(Digi, 2, 1) = "" Then
            TWord = NWord(Digi)
        Else
            TWord1 = NWord(Mid(Digi, 2, 1))
            TWord = NWord(Mid(Digi, 1, 1) & "0") & " " & TWord1
        End If
    Else
        TWord = NWord(Digi)
    End If
    Word = Word & TWord & " Paise Only"
Else
    Word = Word & " Only"
End If
Num_To_Word = "Rs. " & Word
End Function
Public Sub reppr1(AD As Object, LB1 As Object, LB2 As Object, cb1 As Object, cb2 As Object, TBL As String, dt1 As String, LC1 As String, LC2 As String)
On Error Resume Next
    f = Format(yfdate, "dd-mmm-yyyy")
    t = Format(pdate, "dd-mmm-yyyy")
    AD.ConnectionString = connectstring
    AD.RecordSource = "select DISTINCT(pordno) FLD from " & TBL & " WHERE " & dt1 & " between '" & f & "' and '" & t & "' and divcode = '" & divcode & "' and canflg is null  order by " & "PORDNO"
    AD.Refresh
    LB1.Caption = LC1
    LB2.Caption = LC2
    'Filling the comboboxes  with records  from the table
    Set cb1.RowSource = AD
    Set cb2.RowSource = AD
    cb1.ListField = "FLD"
    cb2.ListField = "FLD"
    If Not AD.Recordset.BOF Then
      AD.Recordset.MoveFirst
      cb1.Text = AD.Recordset(0)
      AD.Recordset.MoveLast
      cb2.Text = AD.Recordset(0)
   End If

End Sub
Public Sub pro1(ad1 As Adodc, TABNAME As String, cod, cMB1 As Object, CMB2 As Object, COL1 As String, COL2 As String)
On Error Resume Next
'procedure to fill comboboxes with data
ad1.ConnectionString = connectstring
ad1.RecordSource = "SELECT cast(" & COL1 & " as varchar) +'_'+" & COL2 & " FLD FROM " + TABNAME + " order by " + cod
ad1.Refresh
Set cMB1.RowSource = ad1
Set CMB2.RowSource = ad1
cMB1.ListField = "FLD"
CMB2.ListField = "FLD"
ad1.Recordset.MoveFirst
cMB1.Text = ad1.Recordset(0)
ad1.Recordset.MoveLast
CMB2.Text = ad1.Recordset(0)
End Sub

'----------------VINOTH 01/01
Public Function AUTO(MSG, tabl, TYP, tyc)
On Error Resume Next
Set db = New Connection
  db.CursorLocation = adUseClient
  db.Open "PROVIDER=MSDataShape;" & connectstring
  
 If MsgBox(MSG, vbQuestion + vbYesNo, head) = vbYes Then
           Set rs = New Recordset
           Dim A As String
   
           rs.Open "SELECT isnull(MAX(PORDNO),0) FROM " & tabl & " WHERE PORDDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE ='" & divcode & "' and  " & tyc & " ='" & TYP & "' ", db
           ABC = rs(0) + 1
         '  MaskEdBox1(0).SetFocus
 Else
           Call INP(MSG, tabl, TYP, tyc)
 End If
End Function

'--------------VINOTH 01/01
Public Function INP(MSG, tabl, TYP, tyc)
On Error Resume Next
Set db = New Connection
  db.CursorLocation = adUseClient
  db.Open "PROVIDER=MSDataShape;" & connectstring
  INPEX = InputBox("ENTER YOUR PURCHASE ORDER NO", head)
    If INPEX = "" Then
    
    Else
           Set rs = New Recordset
           rs.Open "SELECT COUNT(*) FROM " & tabl & " WHERE " & tyc & " ='" & TYP & "' AND PORDDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE ='" & divcode & "' and PORDNO = " & INPEX & "  ", db
           If rs(0) > 0 Then
            If MsgBox("ALLREADY THIS PURCHASE ORDER NO BEEN USED. DO YOU WANT TO RE-ENTER THE NUMBER ? ", vbYesNo, head) = vbYes Then
             Call INP(MSG, tabl, TYP, tyc)
            Else
             Call AUTO(MSG, tabl, TYP, tyc)
            End If
           Else
            ABC = INPEX
           End If
    End If
End Function

Public Sub stkchk(itm As String, db1 As Connection)
On Error Resume Next
    'This procedure is to compute the current stock from "in_idet" table
    Dim ym As String
    Dim oym As String
    ym = Year(pdate) & Mid(Format(pdate, "dd-mm-yyyy"), 4, 2)
    oym = Year(yfdate) & "00"
    curstk = 0
    cval = 0
    Set rs = New Recordset
    rs.Open "select o.opstk + r.rec - i.iss, oval + rval - ival from " & _
    " (select isnull(sum(quantity),0) as opstk,isnull(sum(value),0) as oval  from in_idet a where divcode = '" & divcode & "' and tc = 0 and itemcode = '" & itm & "' and yearmonth = '" & oym & "') o," & _
    " (select isnull(sum(quantity),0) as rec,isnull(sum(value),0) as rval from in_idet a,in_tc tc where divcode = '" & divcode & "' and a.tc = tc.tc and tc.tctype in (1,3,5,7,9,11,13,15,17,19) and itemcode = '" & itm & "' and yearmonth <= '" & ym & "') r," & _
    " (select isnull(sum(quantity),0) as iss,isnull(sum(value),0) as ival from in_idet a,in_tc tc where divcode = '" & divcode & "' and a.tc = tc.tc and tc.tctype in (2,4,6,8,10,12,14,16,18,20) and itemcode = '" & itm & "' and yearmonth <= '" & ym & "') i", db1

    If rs.RecordCount > 0 Then
        curstk = val(rs(0))
        cval = val(rs(1))
    End If
    
    
End Sub
Public Sub ToAlphanum(obj As Object, maxlen As Integer, KeyAscii As Integer)
'On Error Resume Next
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
             KeyAscii = 32 Or KeyAscii >= 44 And KeyAscii <= 59) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
       KeyAscii = 0
    End If
End Sub
Public Sub ToAlphanumNoSp(obj As Object, maxlen As Integer, KeyAscii As Integer)
'On Error Resume Next
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
         KeyAscii = 32 Or KeyAscii >= 48 And KeyAscii <= 57) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
       KeyAscii = 0
    End If
End Sub
Public Sub ToChrNum(obj As Object, maxlen As Integer, KeyAscii As Integer)
'On Error Resume Next
If Len(Ofld) < maxlen Then
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or _
            KeyAscii = 32 Or KeyAscii = 43 Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 9) Then
        KeyAscii = 0
    End If
 Else
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
 End If
End Sub
Public Sub ToAlphaNumber(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error Resume Next
If Len(Ofld) < maxlen Then
    If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
            KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 9) Then
        KeyAscii = 0
    End If
 Else
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
 End If
End Sub
Public Sub ToNumber(obj As Object, maxlen As Integer, KeyAscii As Integer)
On Error Resume Next
If Len(obj) < maxlen Then
    If Not (((KeyAscii >= 48 And KeyAscii <= 57)) Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
       KeyAscii = 0
    End If
 Else
    If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
End If

End Sub
Public Sub ToNum(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error Resume Next
    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    
    
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = ary And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
         Beep
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub
Public Sub ToNumNoSign(obj As Object, maxlen As Integer, KeyAscii As Integer, DecLen As Integer)

    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If DecLen = 0 Then
        If KeyAscii = 46 Then
            KeyAscii = 0
        End If
    End If
    
    If Not (InStr(obj, ".") = 0) And KeyAscii = 46 Then
        'to check for 2nd occurence of decimal pt
        KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = DecLen And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (obj.SelLength = Len(obj)) Then
        KeyAscii = 0
    End If
    
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
    End If
   
End Sub
Public Sub ToWeight(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
On Error Resume Next
    If KeyAscii = 46 Or KeyAscii = 65 Or KeyAscii = 97 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    
    If KeyAscii = 65 Then
      KeyAscii = 0
    End If
    
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub
Public Function INF(Inval As Variant, dLen As Integer)
On Error Resume Next
    '--- Tested and Corrected By Mr.R.Suresh B.E
    '--- INF Function Developed by Mr.C. Sivakumar
    '--- on behalf of M/s. Kalpatharu Software Limited

    
    
    If IsNull(Inval) Then
        Inval = 0
    End If
    
    Dim cDecimals As String
    Dim cInteger As String
    Dim cMoney As String
    Dim nIntLen As Integer
    Dim ndecimals As Variant
    
    If val(Inval) <> 0 Then
        
      If Inval < 0 Then
        ndecimals = Round(-Inval - Int(-Inval), dLen)
      Else
        ndecimals = Round(Inval - Int(Inval), dLen)
      End If
      
       If Int(Inval) = Inval Then
            cDecimals = "." + String(dLen, "0")
            cInteger = Format(Inval, "##")
        Else
            If Inval < 0 Then
                cDecimals = Format(-Inval - Int(-Inval), "##." + String(dLen, "0"))
                cInteger = "-" + Format(Int(-Inval), "##")
            Else
                cDecimals = Format(Inval - Int(Inval), "##." + String(dLen, "0"))
                cInteger = Format(Int(Inval), "##")
            End If
        End If
        
        If val(cDecimals) >= 1 Then
            cInteger = val(cInteger) + val(cDecimals)
            cDecimals = "." + String(dLen, "0")
        End If
        
        
        
        If val(cInteger) < 0 Then
            nIntLen = Len(CStr(-val(cInteger)))
        Else
            nIntLen = Len(cInteger)
        End If
        
        If nIntLen < 4 Then
            cInteger = cInteger
        ElseIf nIntLen < 6 Then
            cInteger = Left(cInteger, 2 - (5 - Len(cInteger))) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 8 Then
            cInteger = Left(cInteger, 2 - (7 - Len(cInteger))) + "," + Mid(cInteger, 3 - (7 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 11 Then
            cInteger = Left(cInteger, 3 - (10 - Len(cInteger))) + "," + Mid(cInteger, 4 - (10 - Len(cInteger)), 2) + "," + Mid(cInteger, 6 - (10 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 13 Then
            cInteger = Left(cInteger, 2 - (12 - Len(cInteger))) + "," + Mid(cInteger, 3 - (12 - Len(cInteger)), 3) + "," + Mid(cInteger, 6 - (12 - Len(cInteger)), 2) + "," + Mid(cInteger, 8 - (12 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        ElseIf nIntLen < 15 Then
            cInteger = Left(cInteger, 2 - (14 - Len(cInteger))) + "," + Mid(cInteger, 3 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 5 - (14 - Len(cInteger)), 3) + "," + Mid(cInteger, 8 - (14 - Len(cInteger)), 2) + "," + Mid(cInteger, 10 - (14 - Len(cInteger)), 2) + "," + Right(cInteger, 3)
        End If
        
        If nIntLen < 15 Then
            If Not dLen = 0 Then
                INF = cInteger + cDecimals
            Else
                INF = cInteger
            End If
        Else
            INF = "*** Overflow ***"
        End If
    Else
            INF = " "
    End If
    
    
    '--------------------------------------
        If Trim(INF) <> Empty Then
        If Left(INF, 1) = "." Then
            INF = "0" & INF
        End If
    End If
    '-=----------------------------------
End Function
Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)

    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 13 Then
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 2 And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And Not (KeyAscii = 13) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If

End Sub

Public Function Record_Exists(tname As String, Optional NMessage As String, Optional Emessage As String) As Boolean
On Error Resume Next
Set cn2 = New Connection
cn2.CursorLocation = adUseClient
cn2.Open connectstring
Set rs = New Recordset
rs.Open "select count(*) from " & tname & "", cn2
    If Trim(Emessage) = "" Then
    If rs(0) = 0 Then
     If Trim(NMessage) = "" Then
        MsgBox "No Records Found ", vbInformation, head
     Else
        MsgBox NMessage, vbInformation, head
     End If
        Screen.MousePointer = 0
        Record_Exists = False
        Exit Function
    End If
    Record_Exists = True
    Exit Function
Else
    If rs(0) > 0 Then
     If Trim(Emessage) = "" Then
        MsgBox "Records Found ", vbInformation, head
     Else
        MsgBox Emessage, vbInformation, head
     End If
        Screen.MousePointer = 0
        Record_Exists = False
        Exit Function
    End If
    Record_Exists = True
    Exit Function
End If
Screen.MousePointer = 0
End Function

Public Function Table_Exists(table_name As String) As Boolean
    On Error GoTo Err1
    table_name = UCase(table_name)
    Dim tdb As New Connection
    Dim TRS As New Recordset
    tdb.CursorLocation = adUseClient
    tdb.Open connectstring
    TRS.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & table_name & "'", tdb, adOpenStatic, adLockReadOnly
    If TRS.RecordCount > 0 Then
        TRS.Close
        tdb.Close
        Table_Exists = True
        Exit Function
    End If
    TRS.Close
    tdb.Close
    Table_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function

Public Function CENTRE(TStr As Variant, Tlen As Double, Tchar As String) As String
    If IsNull(TStr) Then
        TStr = ""
    End If
    TStr = CStr(TStr)
    Dim Lstr As String
    If Len(TStr) <= Tlen Then
    Lstr = String(Round(Tlen - Len(TStr)) / 2, Tchar) + TStr + String(Round(Tlen - Len(TStr)) / 2, Tchar)
    End If
    CENTRE = Lstr
End Function
Public Sub ToAlpha(fld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(fld) < maxlen Then
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 9 Or KeyAscii = 46 Or KeyAscii = 44 Or KeyAscii = 13) Then
            KeyAscii = 0
    End If
Else
    KeyAscii = 0
End If
End Sub
Public Sub ToAlpha_withSp(fld As Object, maxlen As Integer, KeyAscii As Integer)
    If Len(fld) < maxlen Then
            If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or (KeyAscii >= 44 And KeyAscii <= 46) Or _
                KeyAscii = 32 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 35 Or KeyAscii = 38 Or KeyAscii = 51 Or KeyAscii = 13 _
                Or (KeyAscii >= 48 And KeyAscii <= 57) Or KeyAscii = 47) Then
                KeyAscii = 0
            End If
        Else
            KeyAscii = 0
        End If
End Sub
Public Sub ToAlpha_NoSp(fld As Object, maxlen As Integer, KeyAscii As Integer)
If Len(fld) < maxlen Then
    If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then
            KeyAscii = 0
    End If
End If
If Len(fld) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
   KeyAscii = 0
End If
End Sub
Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
End Sub
Public Sub ToUpCaseNew(Ofld As Object, KeyAscii As Integer, Optional maxlen As Integer)
On Error GoTo ToUpCase_Error
    If maxlen = 0 Then maxlen = 50
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
    If (KeyAscii = 9 Or KeyAscii = 13) Then
        KeyAscii = 0
    End If


Exit Sub
ToUpCase_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ToUpCase of Module Spinmod", vbInformation, head
End Sub
Public Sub Split_Line(SplitText As String, maxlen As String)
    For A = 0 To 100
        Split_Lines(A) = Empty
    Next
    X = 0
    If Len(SplitText) < maxlen Then
        Split_Lines(0) = SplitText
        Exit Sub
    End If
    starting_pos = maxlen
    ending_pos = 1
    For b = 0 To Len(SplitText)
        For A = starting_pos To ending_pos Step -1
            If ending_pos >= Len(SplitText) Then Exit Sub
            Debug.Print Mid(SplitText, A, 1)
            If Mid(SplitText, A, 1) = " " Then
                curpos = A
                GoTo 10
            End If
        Next
        curpos = A
10      If ending_pos = 1 Then
            Split_Lines(X) = Mid(SplitText, ending_pos, curpos)
        Else
            Split_Lines(X) = Mid(SplitText, ending_pos, curpos)
        End If
        If val(starting_pos) + val(maxlen) > Len(SplitText) Then
            Split_Lines(X + 1) = Mid(SplitText, curpos + 1, Len(SplitText))
            Exit Sub
        Else
            starting_pos = curpos + maxlen
            ending_pos = curpos
        End If
        pos = 0
        X = X + 1
    Next
End Sub

Public Sub norecfound(tol As Object)
    'This procedure for Query
    On Error Resume Next
     tol(0).Enabled = True  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     tol(3).Enabled = False  'LIST
     tol(4).Enabled = False  'QUERY
     tol(5).Enabled = False   'FIRST
     tol(6).Enabled = False   'NEXT
     tol(7).Enabled = False   'PREVIOUS
     tol(8).Enabled = False   'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT
     Screen.MousePointer = 0
End Sub

Public Sub stkch(itm As String, db1 As Connection)

    'This procedure is to compute the current stock in a given Godown from "in_idet" table
    Dim ym As String
    Dim oym As String
    ym = Year(pdate) & Mid(Format(pdate, "dd-mm-yyyy"), 4, 2)
    oym = Year(yfdate) & "00"
    sym = Year(yfdate) & "04"
    cym = Year(yldate) & "03"
    curstk = 0
    cval = 0
    Cut = ""
    If Trim(G) = "" Then
        Set RX = New Recordset
        RX.Open "SELECT * FROM IN_GODOWN", db1
        G = RX(1)
    End If
   Set rs = New Recordset
    
'    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL WHERE DIVCODE = '" & divcode & "' AND TC = 1 AND OPFLG='Y' and godcode='" & g & "' GROUP BY ITEMCODE  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9)) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' and a.godcode='" & g & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' and a.godcode='" & g & "' GROUP BY A.ITEMCODE " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' and a.godcode='" & g & "' GROUP BY A.ITEMCODE UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' and a.godcode='" & g & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "'" & _
            " GROUP BY A.ITEMCODE  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db, adOpenStatic
            
    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL WHERE DIVCODE = '" & divcode & "' AND TC = 1 AND OPFLG='Y'  AND DOCDT = '" & Format(yfdate, "YYYY-MM-DD") & "'  GROUP BY ITEMCODE  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9)) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' AND DOCNO <> 0 GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' GROUP BY A.ITEMCODE " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' GROUP BY A.ITEMCODE UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "'" & _
            " GROUP BY A.ITEMCODE  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic
            
    If rs.RecordCount > 0 Then
        curstk = val(rs(6))
        cval = val(rs(7))
        Cut = Trim(rs(2))
    End If
End Sub



Public Function EXIST_VAT(SLCODE As String)
'Set db = New Connection
'db.Open connectstring
'Set NewRs = New Recordset
'NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & SLCODE & "'", db, adOpenStatic, adLockBatchOptimistic
'If NewRs.RecordCount > 0 Then
'    If NewRs("TINNO") = "" Then
'       d = MsgBox("TIN Number Doest Not Exist For This Supplier[ Do You Want To Continue ]", vbYesNo + vbCritical, head)
'       EXIST_VAT = (d)
'    Else
'       EXIST_VAT = 0
'    End If
'Else
'       EXIST_VAT = 0
'End If
End Function

Public Function EXIST_VAT_PARA()
Set db = New Connection
db.Open connectstring
Set newrs = New Recordset
newrs.Open "SELECT ISNULL(VATFLG,'') AS VAT FROM IN_PARA ", db, adOpenStatic, adLockBatchOptimistic
If newrs.RecordCount > 0 Then
    If newrs("VAT") = "Y" Then
        EXIST_VAT_PARA = True
    Else
        EXIST_VAT_PARA = False
    End If
Else
    EXIST_VAT_PARA = False
End If
End Function
Public Function EXIST_STAT_PARA(party As String, db As Connection)
Set newrs = New Recordset
newrs.Open "SELECT a.state_code as Stat FROM pp_divmas a,fa_slmas b where a.state_code=b.state_code and a.state_code is not null and b.state_code is not null and slcode='" & party & "'", db, adOpenStatic
If newrs.RecordCount > 0 Then
    EXIST_STAT_PARA = True
Else
    EXIST_STAT_PARA = False
End If

End Function

Public Function FOOTER_PRINT(PAPERWIDTH As Integer, FILENAME1 As Integer, FRONTSPACE As Integer, POFLG As String)
Dim cnt As Integer
Dim Spe As Integer
Set db = New Connection
db.Open connectstring
Set newrs = New Recordset
newrs.Open "SELECT  ISNULL(DESC1,'') AS DESC1,ISNULL(DESC2,'') AS DESC2,ISNULL(DESC3,'') AS DESC3,ISNULL(DESC4,'') AS DESC4,ISNULL(DESC5,'') AS DESC5,ISNULL(DESC6,'') AS DESC6  FROM SFOOT ", db, adOpenStatic, adLockBatchOptimistic
If newrs.RecordCount > 0 Then
    cnt = 0
    If newrs("desc1") <> "" Then cnt = cnt + 1
    If newrs("desc2") <> "" Then cnt = cnt + 1
    If newrs("desc3") <> "" Then cnt = cnt + 1
    If newrs("desc4") <> "" Then cnt = cnt + 1
    If newrs("desc5") <> "" Then cnt = cnt + 1
    If newrs("desc6") <> "" Then cnt = cnt + 1
    
    If cnt > 0 Then
        Spe = PAPERWIDTH / cnt
    Else
        Spe = 0
    End If
    If POFLG = "Y" Then
        Print #FILENAME1, Space(FRONTSPACE) + Chr(179);
        For i = 0 To 6 - 1
            If newrs(i) <> "" Then
            Print #FILENAME1, CENTRE(newrs(i), CDbl(Spe), " ");
            End If
        Next
        Print #FILENAME1, Chr(179)
    Else
         Print #FILENAME1, Space(FRONTSPACE);
         For i = 0 To 6 - 1
            If newrs(i) <> "" Then
            Print #FILENAME1, CENTRE(newrs(i), CDbl(Spe), " ");
            End If
        Next
        Print #FILENAME1,
    End If

     
Else
    MsgBox "PLEASE DEFINE FOOTER IN SETUP", vbInformation, head
End If
End Function

Public Sub stkchk1(itm As String, db1 As Connection, G As String)
    'This procedure is to compute the current stock in a given Godown from "in_idet" table
    Dim ym As String
    Dim oym As String
    ym = Year(pdate) & Mid(Format(pdate, "dd-mm-yyyy"), 4, 2)
    oym = Year(yfdate) & "00"
    sym = Year(yfdate) & "04"
    cym = Year(yldate) & "03"
    curstk = 0
    cval = 0
    Cut = ""
    If Trim(G) = "" Then
        Set RX = New Recordset
        RX.Open "SELECT * FROM IN_GODOWN", db1
        G = RX(1)
    End If
   Set rs = New Recordset
    On Error Resume Next
    If Purstock <> "" Then
    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL,x.godcode FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval,godcode FROM IN_IDET WHERE DIVCODE = '" & divcode & "' AND YEARMONTH = '" & oym & "' AND TC = 0 GROUP BY ITEMCODE,godcode  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9) Or (TCTYPE = 12) ) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9) OR (TCTYPE = 12) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "'" & _
            " GROUP BY A.ITEMCODE,godcode ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  and X.godcode='" & Purstock & "' GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE,X.godcode " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic, 1
    Else
    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_IDET WHERE DIVCODE = '" & divcode & "' AND YEARMONTH = '" & oym & "' AND TC = 0 GROUP BY ITEMCODE  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9) Or (TCTYPE = 12) ) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9) OR (TCTYPE = 12) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11) ) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(pdate, "dd-mmm-yyyy") & "'" & _
            " GROUP BY A.ITEMCODE  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic, 1

    End If
    If rs.RecordCount > 0 Then
        curstk = val(rs(6))
        cval = val(rs(7))
        Cut = Trim(rs(2))
    End If
End Sub


Public Sub stkchk2(itm As String, db1 As Connection, G As String)

    Dim ym As String
    Dim oym As String
    ym = Year(pdate) & Mid(Format(pdate, "dd-mm-yyyy"), 4, 2)
    oym = Year(yfdate) & "00"
    sym = Year(yfdate) & "04"
    cym = Year(yldate) & "03"
    curstk1 = 0
    cval1 = 0
    cut1 = ""
    
    If Trim(G) = "" Then
        Set RX = New Recordset
        RX.Open "SELECT * FROM IN_GODOWN", db1
        G = RX(1)
    End If
    Set rs = New Recordset
    On Error Resume Next
    If Purstock <> "" Then
    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL,X.godcode FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval,godcode FROM IN_IDET WHERE DIVCODE = '" & divcode & "' AND YEARMONTH = '" & oym & "' AND TC = 0 GROUP BY ITEMCODE,godcode  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9)) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE,godcode  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval,godcode FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "'" & _
            " GROUP BY A.ITEMCODE,godcode  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE,X.godcode " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic, 1
    Else
    rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL FROM   (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_IDET WHERE DIVCODE = '" & divcode & "' AND YEARMONTH = '" & oym & "' AND TC = 0 GROUP BY ITEMCODE  UNION ALL SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval," & _
            " 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND " & _
            " ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9)) " & _
            " AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE " & _
            " UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC , " & _
            " SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "' GROUP BY A.ITEMCODE  UNION ALL  SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "dd-mmm-yyyy") & "' AND A.DOCDT <= '" & Format(yldate, "dd-mmm-yyyy") & "'" & _
            " GROUP BY A.ITEMCODE  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE = '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE " & _
            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic, 1

    End If
    If rs.RecordCount > 0 Then
        curstk1 = val(rs(6))
        cval1 = val(rs(7))
        cut1 = Trim(rs(2))
    End If
End Sub
'Public Sub stkchkBase(itm As String, db1 As Connection)
'    'This procedure is to compute the current stock from "in_idet" table
'    Dim ym As String
'    Dim oym As String
'    ym = Year(pdate) & Mid(Format(pdate, "dd-mm-yyyy"), 4, 2)
'    oym = Year(yfdate) & "00"
'    sym = Year(yfdate) & "04"
'    cym = Year(yldate) & "03"
'    curstk = 0
'    cval = 0
'    cut = ""
'    db1.CommandTimeout = 0
'    Set Rs = New Recordset
'    Rs.Open "SELECT  DISTINCT X.ITEMCODE,i.itemname,I.UOM,SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) AS OPQTY,SUM(X.REC) AS RCDQTY ,SUM(X.ISS) AS ISDQTY,  SUM(X.ALLREC-X.ALLISS) AS BALQTY,(SUM(X.ALLRECval-X.ALLISSval))  AS VALUE, SUM(X.TOTQC) AS QCSTK,(SUM(X.ALLRECval-X.ALLISSval-X.RECval+X.ISSval)) as OPVAL,(SUM(X.RECval)) AS RCVAL,(SUM(X.ISSval)) AS ISDVAL,(SUM(X.TOTQCval)) AS QCVAL FROM " & _
'            " (SELECT ITEMCODE,SUM(isnull(QUANTITY,0))  AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(value,0))  AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL WHERE DIVCODE = '" & divcode & "' and tyear='" & Year(yfdate) & "' and OPFLG='Y' GROUP BY ITEMCODE UNION ALL " & _
'            " SELECT A.ITEMCODE, SUM(isnull(A.QUANTITY,0)) AS ALLREC, 0 AS ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,SUM(isnull(A.value,0)) AS ALLRECval, 0 AS ALLISSval, 0 AS TOTQCval, 0 AS RECval,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) Or (TCTYPE = 3) Or (TCTYPE = 5) Or (TCTYPE = 7) Or (TCTYPE = 9) OR (TCTYPE = 12)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' AND ISNULL(OPFLG,'N')='N'  AND QUANTITY>0  GROUP BY A.ITEMCODE   UNION ALL " & _
'            " SELECT A.ITEMCODE, 0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0))) ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,0 AS ALLRECval, SUM(ABS(isnull(A.value,0))) ALLISSval, 0 AS TOTQCval, 0 AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "'  AND ISNULL(OPFLG,'N')='N'  AND QUANTITY>0 GROUP BY A.ITEMCODE  UNION ALL " & _
'            " SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,SUM(isnull(A.value,0)) AS RECval, 0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1) OR (TCTYPE = 3) OR (TCTYPE = 5) OR (TCTYPE = 7) OR (TCTYPE = 9) OR (TCTYPE = 12)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "'  AND QUANTITY>0 GROUP BY A.ITEMCODE UNION ALL  " & _
'            " SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS, 0 AS TOTQC,0 AS REC,SUM(ABS(isnull(A.QUANTITY,0))) AS ISS,0 AS ALLRECval,0 AS ALLISSval, 0 AS TOTQCval,0 AS RECval ,SUM(ABS(isnull(A.value,0))) AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 2) OR (TCTYPE = 4) OR (TCTYPE = 6) OR (TCTYPE = 8) OR (TCTYPE = 11)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "'   AND ISNULL(OPFLG,'N')='N'  AND QUANTITY>0 GROUP BY A.ITEMCODE UNION ALL " & _
'            " SELECT A.ITEMCODE, 0 AS ALLREC,0 AS ALLISS,SUM(ABS(isnull(A.qcrecdqty,0)))  - SUM(ABS(isnull(A.REJQTY,0))) - SUM(ABS(isnull(A.QUANTITY,0))) AS TOTQC,0 AS REC ,0 AS ISS,0 AS ALLRECval,0 AS ALLISSval,SUM(ABS(isnull(a.value,0))) AS TOTQCval,0 AS RECval ,0 AS ISSval FROM IN_TRNTAIL A,IN_TC T WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND ((TCTYPE = 1)) AND A.DOCDT >= '" & Format(yfdate, "YYYY-MM-DD") & "' AND A.DOCDT <= '" & Format(pdate, "YYYY/MM/DD") & "' AND ISNULL(OPFLG,'N')='N' AND QUANTITY>0   GROUP BY A.ITEMCODE  ) X,in_grp g,in_item i where   x.itemcode=i.itemcode  AND X.ITEMCODE between '" & itm & "' and '" & itm & "'  GROUP BY g.grpcode,g.grpname,X.ITEMCODE,i.itemname,I.UOM,I.RATE " & _
'            " HAVING SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) < 0 ORDER BY 1", db1, adOpenStatic
'    If Rs.RecordCount > 0 Then
'
'        If Rs("balQty") > 0 Then
'            curstk = Val(Rs("balQty"))
'            cval = Val(Rs("Value"))
'            cut = Trim(Rs(2))
'        Else
'            curstk = 0
'            cval = 0
'            cut = ""
'        End If
'    End If
'End Sub
Public Function GetMastervalue(sTbl As String, sFeild As String, sCont As String)
        
    Set db = New ADODB.Connection
    db.Open connectstring
    Dim rstMaster As New ADODB.Recordset
    Set rstMaster = New ADODB.Recordset
    StrQry = "Select " & sFeild & " From " & sTbl & " Where " & sCont
    rstMaster.Open StrQry, db, adOpenForwardOnly, adLockReadOnly
    If Not rstMaster.EOF Then
        If Not IsNull(rstMaster(0)) Then
            GetMastervalue = rstMaster(0)
        Else
            GetMastervalue = ""
        End If
    Else
        GetMastervalue = ""
    End If
            
End Function



Public Sub ToLowCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 65 And KeyAscii <= 90) Then
        KeyAscii = KeyAscii + 32
    End If
End Sub
Public Sub Tolen(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If Len(obj) = maxlen And Not (KeyAscii = 8 Or KeyAscii = 9) Then KeyAscii = 0
End Sub
Public Sub Open_conn()
Set db = New Connection
db.CursorLocation = adUseClient
db.Provider = "MSDatashape"
db.Open connectstring
End Sub
Public Function EXIST_ITC_TAX(db As Connection, Taxcode As String)
Set newrs = New Recordset
newrs.Open "SELECT ISNULL(ITCTAXSTATUS,'N') AS VAT FROM iG_TAX WHERE TAX_CODE='" & Taxcode & "'", db, adOpenStatic
If newrs.RecordCount > 0 Then
If newrs("VAT") = "Y" Then
    EXIST_ITC_TAX = True
Else
    EXIST_ITC_TAX = False
End If
Else
EXIST_ITC_TAX = False
End If

End Function

Public Function EXIST_VAT_TINNo(SLCODE As String, db As Connection)
Set newrs = New Recordset
newrs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & SLCODE & "'", db, adOpenStatic, adLockBatchOptimistic
If newrs("TINNO") = "" Then
   EXIST_VAT_TINNo = False
Else
   EXIST_VAT_TINNo = True
End If

End Function
Public Sub ToQuantity(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
    If ary = 0 Then
        ary = 3
    End If
    
    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
        'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
        Beep
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
        'to check for 2nd occurence of decimal pt
        Beep
        KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = ary And Not (KeyAscii = 8) And Not (KeyAscii = 9) Then
         KeyAscii = 0
         Beep
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
        KeyAscii = 0
        Beep
    End If
                
End Sub


Public Function Num_To_Word_New(what_num As Double, Optional sCurrName As String, Optional sCurrDecName As String) As String
'Parameter what_num
   Dim n_hcrore As Double
   Dim n_bcrore As Double
   Dim n_crores As Double
   Dim n_lacs As Double
   Dim n_thousand As Double
   Dim n_hundred As Double
   Dim n_lt100 As Double
   Dim n_paise As Double
   
   If Trim(sCurrName) = "" Then
      sCurrName = "Rs" + ". "
   Else
      sCurrName = sCurrName + ". "
   End If
   If Trim(sCurrDecName) = "" Then
      sCurrDecName = "Paise" + " "
   Else
      sCurrDecName = sCurrDecName + " "
   End If
   
   'STORE 0 TO n_crores, n_lacs, n_thousand, n_hundred, n_lt100, n_paise
   
   ' Maximum Number is 999,99,99,999.99
   On Error Resume Next
   If what_num <= 0 Or what_num > 9999999999.99 Then
      Num_To_Word_New = " "
      'Exit Sub
   End If
   
   'SET DECIMALS TO 18
   
   If what_num >= 10000000 Then    ' && 1,00,00,000
      n_crores = Int(what_num / 10000000)
   End If
   
   If what_num >= 100000 Then   '  && 1,00,000 THEN
      n_lacs = Int((what_num - (n_crores * 10000000)) / 100000)
   End If
   
   If what_num >= 1000 Then     '&& 1,000
      n_thousand = Int((what_num - (n_crores * 10000000) - (n_lacs * 100000)) / 1000)
   End If
   
   If what_num >= 100 Then     ''&& 100
      n_hundred = Int((what_num - (n_crores * 10000000) - (n_lacs * 100000) - (n_thousand * 1000)) / 100)
   End If
   
   n_lt100a = what_num - (n_crores * 10000000) - (n_lacs * 100000) - (n_thousand * 1000) - (n_hundred * 100)
   
   n_lt100 = Int(n_lt100a)
   
   n_paise = Round(((n_lt100a - n_lt100) * 100), 0)
   
   'SET DECIMALS TO 2
   
   '-------------------
   
   all_word = " "
   
'   If Int(what_num) > 0 Then
'      If Int(what_num) > 1 Then
'         all_word = "Rupees."
'      Else
'         all_word = "Rupee."
'      End If
'   End If
   
   '------------- CRORES
   
   If n_crores > 0 Then
      
      If n_crores > 99 Then
         
         n_hcrore = Int(n_crores / 100)             ''&& HUNDRED CRORES
         n_bcrore = n_crores - (n_hcrore * 100)     ''&& BALANCE CRORES
         
         all_word = all_word + " " + base_num(n_hcrore) + "Hundred"
         
         If n_bcrore > 0 Then
            all_word = all_word + " " + base_num(n_bcrore)
         End If
         
      Else
         all_word = all_word + " " + base_num(n_crores)
      End If
      
      If n_crores = 1 Then
         all_word = all_word + " Crore"
      Else
         all_word = all_word + " Crores"
      End If
      
   End If
   
   
   '------------- LAKHS
   
   If n_lacs > 0 Then
      
      all_word = all_word + " " + base_num(n_lacs)
      
      If n_lacs = 1 Then
         all_word = all_word + " Lakh"
      Else
         all_word = all_word + " Lakhs"
      End If
      
   End If
   
   '------------- THOUSANDS
   
   If n_thousand > 0 Then
      all_word = all_word + " " + base_num(n_thousand) + " Thousand"
   End If
   
   '------------- HUNDREDS
   
   If n_hundred > 0 Then
      all_word = all_word + " " + base_num(n_hundred) + " Hundred"
   End If
   
   '------------- LESS THAN HUNDRED
   
   If n_lt100 > 0 Then
      all_word = all_word + " " + base_num(n_lt100)
   End If
   
   '------------- PAISE
   
   If n_paise > 0 Then
      
      ''all_word = all_word + IIf(Int(what_num) > 0, " And ", "") + "Paise " + base_num(n_paise)
      all_word = all_word + IIf(Int(what_num) > 0, " And ", "") + sCurrDecName + base_num(n_paise)
   End If
   
   '------------
   
   all_word = sCurrName + Trim(all_word) + " Only."
   
   'RETURN (all_word)
   Num_To_Word_New = all_word
End Function

Public Function CheckPOMannualSMS() As Boolean
        
   On Error GoTo CheckPOMannualSMS_Error
    Set rsHead = New Recordset
    rsHead.Open "select ISNULL(Pomannual,'N') as Pomannualflg from PO_Para Where ISNULL(Pomannual,'N')='Y' and divcode='" & Trim(divcode) & "'", db, adOpenStatic, adLockBatchOptimistic
    If Not (rsHead.BOF And rsHead.EOF) Then
        CheckPOMannualSMS = True
    Else
        CheckPOMannualSMS = False
    End If

   On Error GoTo 0
   Exit Function

CheckPOMannualSMS_Error:

'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure CheckAutoMail of Form MIN1"
        
End Function


Public Function NULLCHECK(TextVal)
  If IsNull(TextVal) = True Then
    NULLCHECK = vbNullString
  ElseIf IsNull(TextVal) = False Then
    NULLCHECK = Trim$(TextVal)
  End If
End Function

Public Function Encrypt(Name As String, Key As Long) As String
Dim v As Long, c1 As String, Z As String
For v = 1 To Len(Name)
c1 = Asc(Mid(Name, v, 1))
c1 = Chr(c1 + Key) ' private key here !
Z = Z & c1
Next v
Encrypt = Z
End Function
Public Function Decrypt(Name As String, Key As Long) As String
Dim v As Long, c1 As String, Z As String
For v = 1 To Len(Name)
c1 = Asc(Mid(Name, v, 1))
c1 = Chr(c1 - Key) ' private key here !
Z = Z & c1
Next v
Decrypt = Z
End Function





Public Sub SetSpreadCol1(spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
    With spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth >= 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub
