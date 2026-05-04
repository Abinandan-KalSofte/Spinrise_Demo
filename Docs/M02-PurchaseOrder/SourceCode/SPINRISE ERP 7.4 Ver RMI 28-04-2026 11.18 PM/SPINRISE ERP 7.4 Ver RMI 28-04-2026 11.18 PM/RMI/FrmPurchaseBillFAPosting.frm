VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmPurchaseBillFApproval 
   Caption         =   "Purchase Bill F.A. Posting Approval"
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11400
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7830
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin VB.ComboBox Combo4 
      Height          =   315
      ItemData        =   "FrmPurchaseBillFAPosting.frx":0000
      Left            =   6480
      List            =   "FrmPurchaseBillFAPosting.frx":000A
      TabIndex        =   17
      Text            =   "Purchase Bill"
      Top             =   700
      Width           =   1815
   End
   Begin VB.CommandButton Command9 
      BackColor       =   &H80000003&
      Caption         =   "&Download"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   8280
      Style           =   1  'Graphical
      TabIndex        =   16
      Top             =   650
      Width           =   1095
   End
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   -15
      TabIndex        =   5
      Top             =   -90
      Width           =   12030
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmPurchaseBillFAPosting.frx":002C
         Height          =   510
         Index           =   10
         Left            =   1095
         Picture         =   "FrmPurchaseBillFAPosting.frx":0336
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmPurchaseBillFAPosting.frx":06B2
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "FrmPurchaseBillFAPosting.frx":09BC
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmPurchaseBillFAPosting.frx":0D4F
         Height          =   510
         Index           =   9
         Left            =   570
         Picture         =   "FrmPurchaseBillFAPosting.frx":1059
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmPurchaseBillFAPosting.frx":13FB
         Height          =   510
         Index           =   11
         Left            =   1635
         Picture         =   "FrmPurchaseBillFAPosting.frx":1845
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   105
         Width           =   520
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   9660
         TabIndex        =   11
         Top             =   240
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7125
         TabIndex        =   10
         Top             =   210
         Width           =   615
      End
   End
   Begin FPSpreadADO.fpSpread spdVar 
      Height          =   6420
      Left            =   165
      TabIndex        =   14
      Top             =   1155
      Width           =   11745
      _Version        =   524288
      _ExtentX        =   20717
      _ExtentY        =   11324
      _StockProps     =   64
      ArrowsExitEditMode=   -1  'True
      BackColorStyle  =   1
      DisplayRowHeaders=   0   'False
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MaxCols         =   6
      MaxRows         =   0
      ProcessTab      =   -1  'True
      RowHeaderDisplay=   0
      ScrollBarExtMode=   -1  'True
      SpreadDesigner  =   "FrmPurchaseBillFAPosting.frx":1BDA
      AppearanceStyle =   0
   End
   Begin VB.Frame FrameSelection 
      Enabled         =   0   'False
      Height          =   645
      Left            =   405
      TabIndex        =   1
      Top             =   2295
      Visible         =   0   'False
      Width           =   10965
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   1500
         TabIndex        =   13
         Top             =   195
         Width           =   1260
         _ExtentX        =   2223
         _ExtentY        =   609
         _Version        =   393216
         Format          =   156696577
         CurrentDate     =   39980
      End
      Begin VB.CheckBox ChkByPass 
         Caption         =   "ByPass All"
         Height          =   285
         Left            =   7065
         TabIndex        =   4
         Top             =   240
         Width           =   1125
      End
      Begin VB.CommandButton CmdCancel 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   9540
         TabIndex        =   3
         Top             =   165
         Width           =   1125
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "Show"
         Height          =   390
         Left            =   8310
         TabIndex        =   2
         Top             =   165
         Width           =   1125
      End
      Begin VB.Label Label1 
         Caption         =   "Date"
         Height          =   255
         Left            =   510
         TabIndex        =   12
         Top             =   270
         Width           =   675
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   0
      Top             =   600
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Credit and Debit Amount Tallied Purchase Bill  only Displayed"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   11280
      TabIndex        =   15
      Top             =   600
      Visible         =   0   'False
      Width           =   8100
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Bill First Level Approval"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   165
      TabIndex        =   0
      Top             =   780
      Width           =   4800
   End
End
Attribute VB_Name = "FrmPurchaseBillFApproval"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DBConnect(4) As Connection
Dim DBDnsm As Connection
Dim RstIndent As Recordset

Dim rsQry As Recordset
Dim RSCHECK As Recordset
Dim sQry As String
Dim ConnectCnt As Integer

Dim sTopic As String
Dim fso As New FileSystemObject

Dim Opt                 As String
Dim iID                 As Integer
Dim bolCheck            As Boolean
Dim iCnt                As Integer
Const iCheckBox       As Integer = 1
Const iPjvNo          As Integer = 2
Const iPjvDt          As Integer = 3
Const ISlcode         As Integer = 4
Const iSlName         As Integer = 5
Const iTC             As Integer = 6
Const iTCName         As Integer = 7
Const IBillNo         As Integer = 8
Const IBilldate       As Integer = 9
Const iPurCode        As Integer = 10
Const iPurName        As Integer = 11
Const iQty            As Integer = 12
Const ifavWgt         As Integer = 13
Const iInvWgt         As Integer = 14
Const Ipjamt          As Integer = 15
Const Icashdisper     As Integer = 16
Const Icashdisamt     As Integer = 17
Const Itradedisper    As Integer = 18
Const Itradedisamt    As Integer = 19
Const IFrtper         As Integer = 20
Const IFrtamt         As Integer = 21
Const iDutyPer        As Integer = 22
Const IBedper         As Integer = 23
Const IBedamt         As Integer = 24
Const IEdper          As Integer = 25
Const IEdamt          As Integer = 26
Const IHscessper      As Integer = 27
Const IHscessamt      As Integer = 28
Const Icessper        As Integer = 29
Const Icessamt        As Integer = 30
Const ITaxCode        As Integer = 31
Const ITaxper         As Integer = 32
Const ITaxamt         As Integer = 33
Const IATaxCode       As Integer = 34
Const IATaxper        As Integer = 35
Const IATaxamt        As Integer = 36
Const ICSTPer         As Integer = 37
Const ICSTAmt         As Integer = 38
Const IOthtaxPer      As Integer = 39
Const IothTaxamt      As Integer = 40
Const IRlyfrtper      As Integer = 41
Const IRlyfrtamt      As Integer = 42
Const IInsper         As Integer = 43
Const IInsamt         As Integer = 44
Const ICommper        As Integer = 45
Const ICommAMT        As Integer = 46
Const ILCper          As Integer = 47
Const ILCamt          As Integer = 48
Const iDrnote         As Integer = 49
Const Icharity        As Integer = 50
Const iDamage         As Integer = 51
Const IcustomDuty     As Integer = 52
Const IClearance      As Integer = 53
Const IOthTaxableAmt  As Integer = 54
Const IOthers         As Integer = 55
Const IBrkComm        As Integer = 56
Const IAdjust         As Integer = 57
Const IRateKG         As Integer = 58
Const iBillValue      As Integer = 59
Const iBrCode         As Integer = 60
Const iPOTYPE        As Integer = 61
Const isupfile        As Integer = 62

Private Declare Function GetDesktopWindow Lib "USER32" () As Long

Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
   (ByVal hWnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
        Set Rs = New Recordset
        Rs.Open "select fapostingflg from rm_param", DB, adOpenStatic
        If Rs(0) <> "Y" Then
            MsgBox "Please Set the F.A. Posting Approval Option in Parameter", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
        desc.Caption = "Addition"
        Opt = "add"
        FrameSelection.Enabled = True
        Call adddelmod(BUTTON)
        Call Lotdisplay
        Label2.Visible = False
Case 9
Dim chk      As Integer
Dim bolChk   As Boolean
    If Opt = "add" Then
        chk = 0
        bolChk = False
        
        For RW = 1 To spdVar.MaxRows
            If val(GetText(spdVar, iCheckBox, RW)) = 1 Then bolChk = True
        Next
        
        If bolChk = False Then
            MsgBox "Select atleast one item to complete the transaction", vbInformation, head
            Exit Sub
        End If
        DB.BeginTrans
        With spdVar
            chk = 0
            For RW = 1 To .MaxRows
                .Row = RW
                chk = val(GetText(spdVar, iCheckBox, RW))
                If chk = 1 Then
                     thispjno = 0
                     Dim prs As Recordset
                     Set prs = New Recordset
                     thispjno = val(GetText(spdVar, iPjvNo, RW))
                     
                     Set rsP = New Recordset
                     rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
                     VATFLG = "N"
                     If rsP.RecordCount > 0 Then
                        VATFLG = rsP(0)
                     End If
                     
                     Set RSCHECK = New Recordset
                     RSCHECK.Open "Select FAinstal from rm_param", DB, adOpenStatic
                    
                     If RSCHECK(0) = "Y" Then
                        Set rsQry = New Recordset
                        rsQry.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & val(GetText(spdVar, iTC, RW)) & "", DB, adOpenStatic
                        If Not rsQry.EOF Then thisgl = rsQry(0)
                        
                            a11 = "Pur.Bill " & Trim(GetText(spdVar, IBillNo, RW)) & " Dt. " & Format(Trim(GetText(spdVar, IBilldate, RW)), "dd-mm-yyyy")  '& " , " & Txtfields(3).Text & " , " & Txtfields(22).Text & "  " & Combo1.Text & " , " & adoPrimaryRS("netwt") & " Kgs."
                            a12 = " - " & Format(val(GetText(spdVar, iInvWgt, RW)), "0.000") & " Kgs."
                            a13 = a11 & a12
                            '            a13 = ""
'                            sQry = ""
'                            sQry = sQry & " INSERT INTO FA_PURHD(DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt,"
'                            sQry = sQry & " LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, "
'                            sQry = sQry & " CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, "
'                            sQry = sQry & " BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt, "
'                            sQry = sQry & " addtaxcode,addtaxamount,AdjustAmt,ENTUSRID,BRCODE) "
'                            sQry = sQry & " VALUES "
'                            sQry = sQry & " ('" & Divcode & "'," & val(GetText(spdVar, iTC, RW)) & " ," & val(GetText(spdVar, iPjvNo, RW)) & ",'" & Format(GetText(spdVar, iPjvDt, RW), "yyyy-mm-dd") & "','"
'                            sQry = sQry & Trim(GetText(spdVar, iSlcode, RW)) & "','" & Trim(GetText(spdVar, iBillNo, RW)) & "','" & Format(Trim(GetText(spdVar, iBillDate, RW)), "yyyy-mm-dd") & "'," & val(GetText(spdVar, ITaxamt, RW)) & "," & val(GetText(spdVar, iBillValue, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, Icashdisamt, RW)) & " , " & val(GetText(spdVar, Itradedisamt, RW)) & " , " & val(GetText(spdVar, IFrtamt, RW)) & ", "
'                            sQry = sQry & val(GetText(spdVar, IBedamt, RW)) & "," & val(GetText(spdVar, IEdamt, RW)) & "," & val(GetText(spdVar, IHscessamt, RW)) & " ,"
'                            sQry = sQry & val(GetText(spdVar, Icessamt, RW)) & "," & val(GetText(spdVar, ITaxamt, RW)) & "," & val(GetText(spdVar, ICSTAmt, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, IothTaxamt, RW)) & "," & val(GetText(spdVar, IRlyfrtamt, RW)) & "," & val(GetText(spdVar, IInsamt, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, ICommAMT, RW)) & "," & val(GetText(spdVar, ILCamt, RW)) & "," & val(GetText(spdVar, iDrnote, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, iDamage, RW)) & "," & val(GetText(spdVar, Icharity, RW)) & "," & val(GetText(spdVar, IClearance, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, IOthers, RW)) & "," & val(GetText(spdVar, IcustomDuty, RW)) & "," & val(GetText(spdVar, IBrkComm, RW)) & ","
'                            sQry = sQry & val(GetText(spdVar, Ipjamt, RW)) & ",6,'" & val(GetText(spdVar, iPurCode, RW)) & "','" & Trim(GetText(spdVar, ITaxCode, RW)) & "','" & a13 & "',"
'                            sQry = sQry & val(GetText(spdVar, iDutyPer, RW)) & "," & val(GetText(spdVar, IOthTaxableAmt, RW)) & ",'" & Trim(GetText(spdVar, IATaxCode, RW)) & "',"
'                            sQry = sQry & val(GetText(spdVar, IATaxamt, RW)) & "," & val(GetText(spdVar, IAdjust, RW)) & ",'" & gUserID & "','" & Trim(GetText(spdVar, iBrCode, RW)) & "')"
'
'                            DB.Execute sQry
'
'                            strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT)VALUES('"
'                            strSQL = strSQL & Divcode & "'," & val(GetText(spdVar, iTC, RW)) & "," & val(GetText(spdVar, iPjvNo, RW)) & " ,'"
'                            strSQL = strSQL & Format(GetText(spdVar, iPjvDt, RW), "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(GetText(spdVar, iInvWgt, RW)) & "," & val(GetText(spdVar, IRatekg, RW)) & "," & val(GetText(spdVar, Ipjamt, RW)) & ")"            'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
'
'                            DB.Execute (strSQL)
'
'                            Set Rs = New Recordset
'                            Rs.Open "select * from fa_cstrn where divcode='" & Divcode & "' and tc=" & val(GetText(spdVar, iTC, RW)) & " and vocno=" & val(GetText(spdVar, iPjvNo, RW)) & " and vocdt='" & Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd") & "' and trntype='PU'", DB, adOpenDynamic, adLockOptimistic
'
'                            If Not Rs.EOF Then
'                                DB.Execute "update fa_cstrn set narration1='" & a13 & "' where divcode='" & Divcode & "' and tc=" & val(GetText(spdVar, iTC, RW)) & " and vocno=" & val(GetText(spdVar, iPjvNo, RW)) & " and vocdt='" & Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd") & "' and trntype='PU' and Vocsno=2"
'                            End If

                            Set rsdr_cr = New Recordset
                            rsdr_cr.Open "select (ISNULL(debit,0))Debit,(ISNULL(CREDIT ,0))Credit from fa_purjvline where VOCNO =" & val(GetText(spdVar, iPjvNo, RW)) & " and VOCDT='" & Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd") & "' and tc='" & val(GetText(spdVar, iTC, RW)) & "' and DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
                            If rsdr_cr.EOF Then
                                    MsgBox "The Debit and Credit are not Tallied. You Cannot save this entry"
                                    Opt = "del"
                                    NOT_TALLIED = "True"
                                    DB.RollbackTrans
                                    Exit Sub
                            End If
                            Set rsdr_cr = New Recordset
                            rsdr_cr.Open "select SUM(ISNULL(debit,0))Debit,SUM(ISNULL(CREDIT ,0))Credit from fa_purjvline where VOCNO =" & val(GetText(spdVar, iPjvNo, RW)) & " and VOCDT='" & Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd") & "' and tc='" & val(GetText(spdVar, iTC, RW)) & "' and DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockReadOnly
                            If rsdr_cr.RecordCount > 0 Then
                                If rsdr_cr("Debit") <> rsdr_cr("Credit") Then
                                    MsgBox "The Debit and Credit are not Tallied. You Cannot save this entry"
                                    Opt = "del"
                                    NOT_TALLIED = "True"
                                    DB.RollbackTrans
                                    Exit Sub
                                End If
                            End If

                            
                            DB.Execute ("UPDATE rm_lot SET  purappflg='Y',purappruser = '" & UserName & "',purappdate='" & Format(Now, "YYYY-MM-DD HH:MM:SS AM/PM ") & "' where pjno = " & val(GetText(spdVar, iPjvNo, RW)) & " and pjdt = '" & Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd") & "'  AND divcode ='" & Divcode & "'")
                            
                            
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Purchase Bill Approval"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
  
                
                            TrnLog("slcode") = Trim(GetText(spdVar, ISlcode, RW))
                      
                            TrnLog("tc") = val(GetText(spdVar, iTC, RW))
                  
                            If IsDate(Trim(GetText(spdVar, IBilldate, RW))) = True Then
                                TrnLog("billdate") = Format(Trim(GetText(spdVar, IBilldate, RW)), "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(GetText(spdVar, IBillNo, RW))
                            
                         
                            TrnLog("AssAmount") = val(GetText(spdVar, Ipjamt, RW))
                            TrnLog("netwt") = val(GetText(spdVar, iInvWgt, RW))
                            
                            TrnLog("docno") = val(GetText(spdVar, iPjvNo, RW))
                            If IsDate(Trim(GetText(spdVar, iPjvDt, RW))) = True Then
                                TrnLog("docdt") = Format(Trim(GetText(spdVar, iPjvDt, RW)), "yyyy-mm-dd")
                            End If
                            TrnLog.UpdateBatch adAffectAllChapters
                            
                        End If
                End If
            Next
        End With
        Dim strNo As String
        Dim I As Integer
        
        strNo = ""
        
        
            For I = 1 To spdVar.MaxRows Step 1
                If val(GetText(spdVar, iCheckBox, I)) = 1 Then
                    strNo = strNo + ", " + GetText(spdVar, iPjvNo, I)
                End If
            Next
            
            strNo = Mid(strNo, 2)
        
       intervalMinutes = -1
        DB.CommitTrans
        MsgBox "P.J.V. No. " & strNo & "   Posted Successfully", vbInformation, head
        Call BUTTON_Click(10)
        Label2.Visible = False
    End If
    
Case 10
   Call SetGridHead(0)
   Opt = "Qry"
   desc.Caption = "Query"
   Call NEWFORM(BUTTON)
   FrameSelection.Enabled = True
   ChkByPass.value = 0
   
Case 11
   Unload Me
End Select
intervalMinutes = -1
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmIndentDirectorAppr"
End Sub
Private Sub SetGridHead(totrow As Integer)
On Error GoTo SetGridHead_Error

    SetSpreadCol1 spdVar, iCheckBox, " ", CellTypeCheckBox, 2, , , False
    SetSpreadCol spdVar, iPjvNo, "P.J.V. No", CellTypeStaticText
    SetSpreadCol spdVar, iPjvDt, "P.J.V. Date", CellTypeStaticText
    SetSpreadCol spdVar, iTC, "T.C.", CellTypeEdit
    SetSpreadCol spdVar, iTCName, "T.C. Description", CellTypeStaticText
    SetSpreadCol spdVar, ISlcode, "Supplier Code", CellTypeStaticText
    SetSpreadCol spdVar, iSlName, "Supplier Name", CellTypeStaticText
    SetSpreadCol spdVar, iQty, "Quantity", CellTypeNumber
    SetSpreadCol spdVar, iPurCode, "Pur. Code", CellTypeStaticText
    SetSpreadCol spdVar, iPurName, "Purchase Type Decription", CellTypeStaticText
    SetSpreadCol spdVar, IBillNo, "Bill No.", CellTypeStaticText
    SetSpreadCol spdVar, IBilldate, "Bill Date", CellTypeStaticText
    SetSpreadCol spdVar, iDutyPer, "Duty %", CellTypeNumber, 2
    SetSpreadCol spdVar, ifavWgt, "Favourable. Weight", CellTypeNumber, 5
    SetSpreadCol spdVar, iInvWgt, "Inv. Weight", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipjamt, "Ass. Value", CellTypeNumber, 2
    SetSpreadCol spdVar, Icashdisper, "Cash Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icashdisamt, "Cash Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisper, "Trade Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisamt, "Trade Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtper, "Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtamt, "Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedper, "B.E.D %", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedamt, "B.E.D Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdper, "E.D Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdamt, "E.D Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessper, "HS Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessamt, "HS Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessper, "Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessamt, "Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxCode, "Tax Code", CellTypeStaticText
    SetSpreadCol spdVar, ITaxper, "Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxamt, "Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ICommper, "Commission %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICommAMT, "Commission Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCper, "LC Interest %", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCamt, "LC Interest Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 3
    SetSpreadCol spdVar, IInsamt, "Insurance Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthtaxPer, "Other Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IothTaxamt, "Other Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtper, "Rl. Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtamt, "Rl. Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icharity, "Charity Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthTaxableAmt, "Others (Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthers, "Others (Non-Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IcustomDuty, "Custom Duty Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, iBillValue, "Bill Amount", CellTypeNumber, 2
    SetSpreadCol spdVar, IATaxCode, "Add. Tax Code", CellTypeEdit
    SetSpreadCol spdVar, IATaxper, "Add. Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IATaxamt, "Add. Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ICSTPer, "CST %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICSTAmt, "CST Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, iDamage, "Damage", CellTypeNumber, 2
    SetSpreadCol spdVar, IClearance, "Clearance", CellTypeNumber, 2
    SetSpreadCol spdVar, iDrnote, "Dr. Note", CellTypeNumber, 2
    SetSpreadCol spdVar, IBrkComm, "Br. Comm.", CellTypeNumber, 2
    SetSpreadCol spdVar, IAdjust, "Adjustment", CellTypeNumber, 2
    SetSpreadCol spdVar, IRateKG, "Rate/Kg.", CellTypeNumber, 4
    
    SetSpreadCol spdVar, iBrCode, "Broker Code", CellTypeStaticText
    SetSpreadCol spdVar, iPOTYPE, "Bill Type", CellTypeStaticText
    
    
    SetSpreadCol spdVar, isupfile, "Supp. File Name", CellTypeStaticText
    
    
    
    
    spdVar.Col = ISlcode
    spdVar.ColHidden = True
    spdVar.Col = iPurCode
    spdVar.ColHidden = True
    spdVar.ColWidth(iPjvNo) = 6
    spdVar.ColWidth(iTC) = 5
    spdVar.ColWidth(iTCName) = 18
    spdVar.ColWidth(iPurName) = 18
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    spdVar.ColWidth(iSlName) = 18
    
   
    For iID = 2 To 59
        If iID <> 6 Then
            spdVar.Col = iID
            spdVar.Lock = True
        End If
    Next
    spdVar.Col = 0
    spdVar.Lock = False
    spdVar.Col = 6
    spdVar.Lock = False
'
    Set Rs = New Recordset
    Rs.Open "Select AddtaxRequired from Rm_param", DB, adOpenStatic
    If Rs(0) <> "Y" Then
        spdVar.Col = IATaxCode
        spdVar.ColHidden = True
        spdVar.Col = IATaxper
        spdVar.ColHidden = True
        spdVar.Col = IATaxamt
        spdVar.ColHidden = True
    End If
    
    With spdVar
        .MaxCols = isupfile
        .MaxRows = totrow
        .ColsFrozen = 6
'        .SetActiveCell 11, 1
    End With
    
    Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmIndentDirectorAppr"
End Sub



Private Sub cmdCancel_Click()
Call BUTTON_Click(10)
End Sub

Private Sub Command9_Click()
    'On Error Resume Next
    xx = 1
    Do While xx <= spdVar.MaxRows
        If GetText(spdVar, 1, xx) = "1" Then
            If Combo4.Text = "Purchase Bill" Then
               sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(GetText(spdVar, 2, xx)) + " DT-" + Trim(Format(GetText(spdVar, 3, xx), "dd-mm-yy")) + "-" + Left(Trim(GetText(spdVar, 5, xx)), 15) & ".pdf"
                           
            
                sFile = sFilePath
                If fso.FileExists(sFilePath) Then
                Else
                    'MsgBox "ERP Purchase Bill Copy Not Found", vbInformation, head
                        Call TransactionPrint
                Exit Sub
                End If
                
                Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
        
            ElseIf Combo4.Text = "Supplier Bill" Then
        
                sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(GetText(spdVar, 2, xx)) + "-" + Trim(Format(GetText(spdVar, 3, xx), "dd-mm-yy")) + "-" + Left(Trim(GetText(spdVar, 5, xx)), 4) + "--" & Trim(GetText(spdVar, isupfile, xx))
                sFile = sFilePath
                If fso.FileExists(sFilePath) Then
                Else
                    MsgBox "Supplier Bill Copy Not Found", vbInformation, head
                    Exit Sub
                End If
                
                Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
            End If
        End If
        xx = xx + 1
    Loop
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = 27 Then
 If MsgBox("Do you want to Quit?", vbYesNo, head) = vbYes Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
 End If
End If
    
    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
    Exit Sub
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmIndentDirectorAppr"

End Sub

Private Sub Form_Load()
intervalMinutes = -1
On Error GoTo Form_Load_Error
Dim ConnectStr(10) As String
Dim tempstr As String

Call SetGridHead(0)
Opt = "Qry"
desc.Caption = "Query"
DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
ChkByPass.value = 0
Call SetGridHead(0)
desc.Caption = "Modification"
Opt = "mod"
FrameSelection.Enabled = True
Call adddelmod(BUTTON)
Call NEWFORM(BUTTON)
Call NEWFORM1(BUTTON, GSNO)
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmIndentDirectorAppr"
End Sub

Private Sub Lotdisplay()
Dim iRow As Integer
On Error GoTo Lotdisplay_Error

    strSQL = ""
    strSQL = "SELECT PJNO,PJDT,PJTC,SUPCD,fbillno,fbilldt,dutyper,ptype,SUM(ISNULL(PJAMT,0)) AS PJAMT,SUM(ISNULL(BALES,0)) AS QTY,SUM(ISNULL(Comm_Wt,0)) AS INVWGT,SUM(ISNULL(FAVAOURABLEWGT,0)) AS FavWgt,AVG(ISNULL(CashDisper,0)) AS CashDisper,SUM(ISNULL(CashDisAmt,0)) AS CashDisAmt,"
    strSQL = strSQL & Chr(13) & " AVG(ISNULL(TradeDisper,0)) AS TradeDisper,SUM(ISNULL(TradeDisAmt,0)) AS TradeDisAmt,AVG(ISNULL(LRFRTPER,0)) AS LRFRTPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(LRFRTAMT,0)) AS LRFRTAMT,AVG(ISNULL(BEDPER,0)) AS BEDPER,SUM(ISNULL(BEDAMT,0)) AS BEDAMT,AVG(ISNULL(SEDPER,0)) AS SEDPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(SEDAMT,0)) AS SEDAMT,AVG(ISNULL(AEDPER,0)) AS AEDPER,SUM(ISNULL(AEDAMT,0)) AS AEDAMT,AVG(ISNULL(CESSPER,0)) AS CESSPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(CESSAMT,0)) AS CESSAMT,ISNULL(TAX_CODE,'') AS TAX_CODE,AVG(ISNULL(TAX_PER,0)) AS TAX_PER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(VATAMT,0)) AS VATAMT,ISNULL(ADDTAXCODE,'') AS ADDTAXCODE,AVG(ISNULL(ADDTAXPER,0)) AS ADDTAXPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(ADDTAXAMOUNT,0)) AS ADDTAXAMOUNT,AVG(ISNULL(INSPER,0)) AS INSPER,SUM(ISNULL(INSAMT,0)) AS INSAMT,"
    strSQL = strSQL & Chr(13) & " AVG(ISNULL(CSTPER,0)) AS CSTPER,SUM(ISNULL(CSTAMT,0)) AS CSTAMT,AVG(ISNULL(OTHTAXPER,0)) AS OTHTAXPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(OTHTAXAMT,0)) AS OTHTAXAMT,SUM(ISNULL(OTHERSAMT,0)) AS OTHERSAMT,SUM(ISNULL(OtherTaxableAmt,0)) AS OtherTaxableAmt,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(CHARITYAMT,0)) AS CHARITYAMT,AVG(ISNULL(COMMPER,0)) AS COMMPER,SUM(ISNULL(COMMAMT,0)) AS COMMAMT,"
    strSQL = strSQL & Chr(13) & " AVG(ISNULL(RLYFRTPER,0)) AS RLYFRTPER,SUM(ISNULL(RLYFRTAMT,0)) AS RLYFRTAMT,AVG(ISNULL(LCINTPER,0)) AS LCINTPER,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(LCINTAMT,0)) AS LCINTAMT,SUM(ISNULL(DNAMT1,0)) AS DNAMT1,SUM(ISNULL(DAMAGEAMT,0)) AS DAMAGEAMT,avg(ISNULL(ratekg,0)) AS Ratekg,"
    strSQL = strSQL & Chr(13) & " SUM(ISNULL(CUSTOMSDUTYAMT,0)) AS CUSTOMSDUTYAMT,SUM(ISNULL(CLEARANCEAMT,0)) AS CLEARANCEAMT,SUM(ISNULL(BRKCOM,0)) AS BRKCOM,SUM(ISNULL(fbillvalue,0))  AS billvalue,SUM(ISNULL(adjvalue,0)) AS adjvalue,isnull(BRKCD,'') as BRKCD,supfilename,isnull(potype,'')potype"
    strSQL = strSQL & Chr(13) & " FROM RM_LOT a "
    strSQL = strSQL & Chr(13) & " where LOTTYPE='A' AND isnull(opflg,'N')='N' AND (purappflg='N' or purappflg is null) AND pjno is not null and pjdt is not null and pjtc is not null and a.DIVCODE='" & Divcode & "' GROUP BY PJNO,PJDT,PJTC,SUPCD,TAX_CODE,ADDTAXCODE,fbillno,fbilldt,dutyper,ptype,BRKCD,supfilename,isnull(potype,'')"
    '' inner join (select vocno,vocdt,tc,divcode from fa_purjvline group by vocno,vocdt,tc,divcode having sum(isnull(debit,0))=sum(isnull(credit,0)) ) b on a.pjno=b.vocno and a.pjdt=b.vocdt and a.divcode=b.Divcode and b.tc=a.pjtc
    Set RstIndent = New Recordset
    RstIndent.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
    
    Call SetGridHead(RstIndent.RecordCount)
    iRow = 1
    
    If RstIndent.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Call BUTTON_Click(10)
        Exit Sub
    End If
    RstIndent.MoveFirst
    Do While RstIndent.EOF = False
    
        spdVar.SetText iPjvNo, iRow, RstIndent("PJNO")
        spdVar.SetText iPjvDt, iRow, RstIndent("PJDT")
        spdVar.SetText iTC, iRow, RstIndent("PJTC")
        spdVar.SetText ISlcode, iRow, RstIndent("SUPCD")
        spdVar.SetText iSlName, iRow, getMasterName("slname", "fa_slmas", "slcode", RstIndent("supcd"))
        spdVar.SetText iQty, iRow, RstIndent("QTY")
        spdVar.SetText ifavWgt, iRow, RstIndent("FavWgt")
        spdVar.SetText iInvWgt, iRow, RstIndent("INVWGT")
        spdVar.SetText Ipjamt, iRow, RstIndent("PJAMT")
        spdVar.SetText Icashdisper, iRow, RstIndent("cashdisper")
        spdVar.SetText Icashdisamt, iRow, RstIndent("cashdisamt")
        spdVar.SetText Itradedisper, iRow, RstIndent("tradedisper")
        spdVar.SetText Itradedisamt, iRow, RstIndent("tradedisamt")
        spdVar.SetText IFrtper, iRow, RstIndent("lrfrtper")
        spdVar.SetText IFrtamt, iRow, RstIndent("lrfrtamt")
        spdVar.SetText IBedper, iRow, RstIndent("bedpeR")
        spdVar.SetText IBedamt, iRow, RstIndent("bedamt")
        spdVar.SetText IEdper, iRow, RstIndent("sedpeR")
        spdVar.SetText IEdamt, iRow, RstIndent("sedamt")
        spdVar.SetText IHscessper, iRow, RstIndent("aedper")
        spdVar.SetText IHscessamt, iRow, RstIndent("aedamt")
        spdVar.SetText Icessper, iRow, RstIndent("cessper")
        spdVar.SetText Icessamt, iRow, RstIndent("cessamt")
        spdVar.SetText ITaxCode, iRow, RstIndent("Tax_code")
        spdVar.SetText ITaxper, iRow, RstIndent("Tax_PER")
        spdVar.SetText ITaxamt, iRow, RstIndent("VATAMT")
        spdVar.SetText IATaxCode, iRow, RstIndent("ADDTaxcode")
        spdVar.SetText IATaxper, iRow, RstIndent("ADDTAXPER")
        spdVar.SetText IATaxamt, iRow, RstIndent("ADDTAXAMOUNT")
        spdVar.SetText ICSTPer, iRow, RstIndent("CSTPER")
        spdVar.SetText ICSTAmt, iRow, RstIndent("CSTAMT")
        spdVar.SetText IOthtaxPer, iRow, RstIndent("OTHTAXPER")
        spdVar.SetText IothTaxamt, iRow, RstIndent("OTHTAXAMT")
        spdVar.SetText IRlyfrtper, iRow, RstIndent("RLYFRTPER")
        spdVar.SetText IRlyfrtamt, iRow, RstIndent("RLYFRTAMT")
        spdVar.SetText IInsper, iRow, RstIndent("INSPER")
        spdVar.SetText IInsamt, iRow, RstIndent("INSAMT")
        spdVar.SetText ICommper, iRow, RstIndent("COMMPER")
        spdVar.SetText ICommAMT, iRow, RstIndent("COMMAMT")
        spdVar.SetText ILCper, iRow, RstIndent("LCINTPER")
        spdVar.SetText ILCamt, iRow, RstIndent("LCINTAMT")
        spdVar.SetText Icharity, iRow, RstIndent("CHARITYAMT")
        spdVar.SetText IOthTaxableAmt, iRow, RstIndent("OtherTaxableAmt")
        spdVar.SetText IOthers, iRow, RstIndent("OtherSAmt")
        spdVar.SetText IcustomDuty, iRow, RstIndent("CUSTOMSDUTYAMT")
        spdVar.SetText iDamage, iRow, RstIndent("DAMAGEAMT")
        spdVar.SetText iBillValue, iRow, RstIndent("billvalue")
        
        
        spdVar.SetText IBillNo, iRow, RstIndent("fbillno")
        spdVar.SetText IBilldate, iRow, RstIndent("fbilldt")
        spdVar.SetText iTCName, iRow, getMasterName("tchead", "fa_tcmas", "tc", RstIndent("pjtc"))
        spdVar.SetText iPurCode, iRow, RstIndent("ptype")
        spdVar.SetText iPurName, iRow, getMasterName("purdesc", "RM_PURTYPE", "purtype", RstIndent("ptype"))
        spdVar.SetText iDutyPer, iRow, RstIndent("dutyper")
        spdVar.SetText IBrkComm, iRow, RstIndent("brkcom")
        spdVar.SetText IAdjust, iRow, RstIndent("adjvalue")
        spdVar.SetText IRateKG, iRow, RstIndent("Ratekg")
        
        spdVar.SetText iBrCode, iRow, RstIndent("BRKCD")
        spdVar.SetText iPOTYPE, iRow, RstIndent("potype")
        spdVar.SetText isupfile, iRow, RstIndent("supfilename")
        
        iRow = iRow + 1
        RstIndent.MoveNext
    Loop
            
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
  ' stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
   ' Buttonframe.Width = Me.Width - 200
    
    spdVar.Width = Me.Width - 400
'    FraDespatch.Width = Me.Width - 600
'    SpdEmpAllocation.Width = Me.Width - 1000
    
    spdVar.Height = Me.Height - 2100
'    FraDespatch.Height = Me.Height - 2500
'    SpdEmpAllocation.Height = (SSTab1.Height - 1800) 'Me.Height - 2500
'
''    Label11.Top = Me.Height - 2600
''    txtNarr.Top = Me.Height - 2650
'
'    ''For PO Order List Frame
'    Frame8.Top = (Me.Height / 2) - (Frame8.Height / 2)
'    Frame8.Left = (Me.Width / 2) - (Frame8.Width / 2)
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
If Opt = "add" Then
    If Col = iTC Then
        If val(GetText(spdVar, iCheckBox, spdVar.ActiveRow)) = 1 Then
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM fa_tcmas WHERE tc=" & val(GetText(spdVar, iTC, spdVar.ActiveRow)) & "", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
showLookUp:
                LookUp.Clear = True
                LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a,rm_param_fa b where a.tc = b.tccode and b.divcode='" & Divcode & "'"
    
                LookUp.Caption = "Transaction Code List"
                LookUp.DefCol = "Transaction Type Head"
                LookUp.ALIGN = "1600,3500"
                LookUp.Show vbModal
                
                If LookUp.Cancel = False Then
                    spdVar.SetText iTC, spdVar.ActiveRow, CStr(LookUp.Fields(0))
                    spdVar.SetText iTCName, spdVar.ActiveRow, CStr(LookUp.Fields(1))
                    LookUp.Clear = True
                    spdVar.SetActiveCell IBillNo, Row
                    Exit Sub
                Else
                    GoTo showLookUp
                End If
           End If
       End If
    End If
End If
End Sub

Public Sub RunShellExecute(sTopic As String, _
                           sFile As Variant, _
                           sParams As Variant, _
                           sDirectory As Variant, _
                           nShowCmd As Long)

   Dim hWndDesk As Long
   Dim success As Long
' If Adobe Reader is installed:
'   1. On the Toolbox, right-click and select Components.
'   2. Select the "Adobe Acrobat 7.0 Browser Control Type Library 1.0" and click OK.
'   3. Add a PDF reader to the form and use its src property to open the PDF file.
  'the desktop will be the
  'default for error messages
   hWndDesk = GetDesktopWindow()
  
  'execute the passed operation
   success = ShellExecute(hWndDesk, sTopic, sFile, sParams, sDirectory, nShowCmd)

  'This is optional. Uncomment the three lines
  'below to have the "Open With.." dialog appear
  'when the ShellExecute API call fails
  'If success = SE_ERR_NOASSOC Then
     Call Shell("rundll32.exe shell32.dll,OpenAs_RunDLL " & sFile, vbNormalFocus)
 ' End If
   
End Sub

Private Sub TransactionPrint()
On Error GoTo openconnection_Error
 Dim clsCryRpt2 As New clsCrystal
    If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
            Set rsnew = New Recordset
            rsnew.Open " select isnull(purbillapproval,'N') purbillapproval  from rm_param ", DB, adOpenStatic, adLockReadOnly
            If rsnew.RecordCount > 0 Then
'              If rsnew(0) = "Y" Then
'                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
'              Else
'                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
'              End If
            End If
        If Left(Trim(GetText(spdVar, iPOTYPE, spdVar.ActiveRow)), 1) = "L" Then
            Set Rs = New Recordset
            Rs.Open "select varcode from rm_lot where pjno='" & val(Trim(GetText(spdVar, 2, spdVar.ActiveRow))) & "' and pjdt='" & Format(GetText(spdVar, 3, spdVar.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lotyear='" & Format(yfdate, "yyyy") & "' ", DB, adOpenStatic
            If Rs.RecordCount > 2 Then
                Set clsCryRpt2.cryRept = Cry_purchasebill_pallavaa
            Else
                Set clsCryRpt2.cryRept = Cry_Pur_bill_Cutsheet
            End If
        Else
            Set clsCryRpt2.cryRept = Cry_PurchaseBill_Import
        End If
    Else
    
        Set clsCryRpt2.cryRept = Cry_RMI_PBill_Entry 'RMIPurchaseBill1
    End If
    clsCryRpt2.CrystalPrint

    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    'CrystalReport1.SelectionFormula = "{RM_LOT.DIVCODE}='" & Divcode & "' AND {RM_LOT.PJDT} = cdate('" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "') AND {RM_LOT.PJNO}>=  " & txtFields(304) & " AND {RM_LOT.PJNO} <= " & txtFields(304) & " "
     CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
    CrystalReport1.ParameterFields(1) = "@Date;" & Format(GetText(spdVar, 3, spdVar.ActiveRow), "yyyy-mm-dd") & ""
    CrystalReport1.ParameterFields(2) = "@FMRNo;" & Trim(GetText(spdVar, 2, spdVar.ActiveRow)) & ""
    CrystalReport1.ParameterFields(3) = "@TMRNo;" & Trim(GetText(spdVar, 2, spdVar.ActiveRow)) & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
intervalMinutes = -1
  'If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
    'If PDFExportFlag = 1 Then
            Call ExportERPBillPDF
    'End If

Exit Sub
openconnection_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub

Private Sub ExportERPBillPDF()
On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If


    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMERPBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMERPBill" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
'    CommonDialog1.ShowOpen
'    strNewFile = CommonDialog1.FileTitle
   
'  strNewFile
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(GetText(spdVar, 2, spdVar.ActiveRow)) + " DT-" + Trim(Format(GetText(spdVar, 3, spdVar.ActiveRow), "dd-mm-yy")) + "-" + Left(Trim(GetText(spdVar, 5, spdVar.ActiveRow)), 15) & ".pdf"
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
       If Opt <> "add" Or Opt <> "mod" Then
        If MsgBox("Purchase Bill Already Exists!!! Do you want to override in server?", vbYesNo, head) = vbNo Then Exit Sub
       End If
 
    End If
    
'  If strNewFile <> "" Then
'
'    Dim myPath As String
'    myPath = strNewFile
'    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
'    FileCopy strNewFile, App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + Left(Trim(Text4.Text), 4) + "-" & Right$(CommonDialog1.FileName, 4)
'   End If
   
   Dim CrApp As Craxdrt.Application
           Dim oRpt As Craxdrt.Report


            Set CrApp = New Craxdrt.Application
            Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepRMI.rpt", 1)
            'oRpt.RecordSelectionFormula = "{PO_ORDH.PORDDT} = DATE(" & Val(Year(SPoDT)) & "," & Val(Month(SPoDT)) & "," & Val(Day(SPoDT)) & ")  and {PO_ORDH.PORDNO}=" & Val(sPono) & "  and {PO_ORDH.POGRP}='" & sPOGrp & "'  and {PO_ORDH.DivCode}='" & divcode & "'"

         '   oRpt.RecordSelectionFormula = "{sp_yarninvy_sort.sortno}='" & Trim(txtfields(37).Text) & "'  and {sp_yarninvy_sort.divcode}='" & Divcode & "'"
            '{sp_yarninvy_sort.sortno}={?@Sortcode} and {sp_yarninvy_sort.divcode}={?@divcode}

            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD

'            oRpt.ParameterFields.Item(1).AddCurrentValue (Format(MaskEdBox1(3), "yyyy-mm-dd"))
'            oRpt.ParameterFields.Item(2).AddCurrentValue Trim(txtfields(304).Text)
'            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(txtfields(304).Text)
            
            oRpt.ParameterFields.Item(1).AddCurrentValue (Divcode)
            oRpt.ParameterFields.Item(2).AddCurrentValue Format(GetText(spdVar, 3, spdVar.ActiveRow), "yyyy-mm-dd")
            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(GetText(spdVar, 2, spdVar.ActiveRow))
            oRpt.ParameterFields.Item(4).AddCurrentValue Trim(GetText(spdVar, 2, spdVar.ActiveRow))
'            ''Rept.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
' '           'oRpt.RecordSelectionFormula = Trim(txtFields(37).Text)
'            oRpt.ParameterFields(1).AddCurrentValue Trim(Divcode)
'
'        oRpt.ParameterFields(2).AddCurrentValue Format(MaskEdBox1(3), "yyyy-mm-dd")
'        oRpt.ParameterFields(3).AddCurrentValue Trim(txtfields(304).Text)
'        oRpt.ParameterFields(4).AddCurrentValue Trim(txtfields(304).Text)
'    oRpt.get

            oRpt.ExportOptions.DiskFileName = sFilePath
            oRpt.ExportOptions.DestinationType = crEDTDiskFile
            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            oRpt.ExportOptions.PDFExportAllPages = True
            oRpt.Export False


   
   
   
End If
Exit Sub
openconnection_Error:
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub
