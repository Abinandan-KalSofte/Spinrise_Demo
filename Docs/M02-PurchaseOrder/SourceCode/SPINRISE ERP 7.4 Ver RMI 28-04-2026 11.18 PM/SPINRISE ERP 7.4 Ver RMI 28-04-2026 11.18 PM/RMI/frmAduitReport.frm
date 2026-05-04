VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmRptAduit 
   Caption         =   "Aduit Report"
   ClientHeight    =   7185
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11010
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7185
   ScaleWidth      =   11010
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
      Left            =   2910
      TabIndex        =   8
      Top             =   3690
      Width           =   915
   End
   Begin VB.CommandButton cmdExit 
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
      Height          =   375
      Left            =   4365
      TabIndex        =   7
      Top             =   3690
      Width           =   915
   End
   Begin Crystal.CrystalReport CR 
      Left            =   1035
      Top             =   2310
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   1980
      Left            =   1900
      TabIndex        =   0
      Top             =   1150
      Width           =   4545
      _ExtentX        =   8017
      _ExtentY        =   3493
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmAduitReport.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1815
         Left            =   120
         TabIndex        =   1
         Top             =   60
         Width           =   4290
         Begin MSComCtl2.DTPicker dtpToDate 
            Height          =   345
            Left            =   2250
            TabIndex        =   2
            Top             =   1140
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   411500545
            CurrentDate     =   37820
         End
         Begin MSComCtl2.DTPicker dtpFromDate 
            Height          =   345
            Left            =   2250
            TabIndex        =   3
            Top             =   600
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   411500545
            CurrentDate     =   37578
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
            Left            =   570
            TabIndex        =   6
            Top             =   645
            Width           =   885
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
            Left            =   540
            TabIndex        =   5
            Top             =   1200
            Width           =   705
         End
         Begin VB.Label lblTitle 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Caption"
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
            Left            =   30
            TabIndex        =   4
            Top             =   90
            Width           =   4245
         End
      End
   End
   Begin MSDataListLib.DataCombo DataCombo2 
      Height          =   360
      Left            =   4260
      TabIndex        =   9
      Top             =   2340
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   635
      _Version        =   393216
      MatchEntry      =   -1  'True
      ForeColor       =   -2147483646
      Text            =   " "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSDataListLib.DataCombo DataCombo1 
      Height          =   360
      Left            =   4260
      TabIndex        =   10
      Top             =   1800
      Width           =   1500
      _ExtentX        =   2646
      _ExtentY        =   635
      _Version        =   393216
      MatchEntry      =   -1  'True
      ForeColor       =   -2147483646
      Text            =   " "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "frmRptAduit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim strSQL As String
Dim fdate As Date
Dim tdate As Date
Dim dblQty, dblKgs, Dblvalue As Double
Dim dblBQty, dblBKgs, dblBValue As Double

Private Sub CmdExit_Click()
On Error GoTo cmdexit_Click_Error
    Unload Me
Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmdexit_Click of Form frmRptAduit", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error
Dim U As String
Dim V As String
Select Case Repindex
Case 3015
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_StockReport_Abstract'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_StockReport_Abstract"
            End If
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
            U = fdate:    V = tdate
            
            If CDate(fdate) > CDate(tdate) Then
                MsgBox "From Date should not be greater than To Date", vbInformation, head
                DataCombo2.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            If CDate(tdate) < CDate(fdate) Then
                MsgBox "To Date should not be less than From Date", vbInformation, head
                DataCombo2.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            strSQL = " select CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + "Into RMI_Temp_StockReport_Abstract"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, V)
            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
            strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
                     
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
    
            With CR
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customised_RMIStockAbstract.rpt"
        
                .ParameterFields(0) = "name;" & "Raw Material Stock Abstract from " & Format(U, "dd/MM/yy") & " to " & Format(V, "dd/MM/yy") & ""
                .ParameterFields(1) = "divname;" & divname
                
                .WindowState = crptMaximized
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub


Case 3011
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
    If CDate(fdate) > CDate(tdate) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(tdate) < CDate(fdate) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    
    CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Customised_Unitwise_Issue_Reg.rpt"
    CR.Connect = connectstring
    CR.Formulas(0) = "divname = '" & divname & "'"
    CR.Formulas(1) = "period = '" & " from " & Format(fdate, "dd/MM/yy") & " to " & Format(tdate, "dd/MM/yy") & "'"
    CR.StoredProcParam(0) = Format(dtpFromDate.value, "yyyy-mm-dd")
    CR.StoredProcParam(1) = Format(dtpToDate.value, "yyyy-mm-dd")
    CR.StoredProcParam(2) = Divcode
    CR.WindowState = crptMaximized
    
    SendKeys "{ENTER}"
    CR.Action = 1
    CR.PrinterCopies = 1
    Screen.MousePointer = 0
Case 3099
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
    If CDate(fdate) > CDate(tdate) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(tdate) < CDate(fdate) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    Call IssueReturnRegister(CDate(fdate), CDate(tdate))
    Screen.MousePointer = 0
Case 3002
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
    If CDate(fdate) > CDate(tdate) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(tdate) < CDate(fdate) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    Call AduitReport(fdate, tdate)
    Set Rs = New Recordset
    Rs.Open "Select * from Temp_AduitReport", DB, adOpenStatic
    
    If Rs.EOF = False Then
    
            CR.Reset
            CR.Connect = connectstring
            CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockReconcilation.rpt"

            CR.Formulas(0) = "Divname = '" & divname & "'"
            CR.Formulas(1) = "fromdate = '" & Format(fdate, "dd/MM/yy") & "'"
            CR.Formulas(2) = "todate = '" & Format(tdate, "dd/MM/yy") & "'"
            CR.ParameterFields(0) = "@balqty;" & dblBQty
            CR.ParameterFields(1) = "@balkgs;" & dblBKgs
            CR.ParameterFields(2) = "@balval;" & dblBValue
            CR.WindowState = crptMaximized

            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            Screen.MousePointer = 0
        Exit Sub
        Screen.MousePointer = 0
    
    End If

Case 3003

    If val(DataCombo1.Text) > val(DataCombo2.Text) Then
            MsgBox "From Year should not be greater than To Year", vbInformation, head
            'Text2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If val(DataCombo2.Text) < val(DataCombo1.Text) Then
            MsgBox "To Year should not be less than From Year", vbInformation, head
            'Text2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    Call ReceiptRegister("01/01/" & val(DataCombo1.Text), "31/12/" & val(DataCombo2.Text))
Case 3018
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
    If CDate(fdate) > CDate(tdate) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(tdate) < CDate(fdate) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    U = fdate
    V = tdate
    
    Call PendingBillReceipt(U, V)
    
End Select

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure cmdReport_Click of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub ReceiptRegister(dtpFromDate As Date, dtpToDate As Date)
'On Error GoTo RR_Error
    Dim FrmMonth As Integer
    Dim tomonth As Integer
    Dim rs1 As Recordset
    Dim temprs As Recordset
    Dim intMon As Integer
    Dim strMon As String
    Dim strRate As String
    Dim intCount As Integer
      
    Me.MousePointer = vbHourglass
    Set REP = New Report.ReportView
    z = FreeFile
    Close #z
    Close
   ' Open "C:\Receipt.TXT" For Output As #z
   Open KALFOLDERDATA & "\Receipt.TXT" For Output As #z
    pg1 = 1
    co = 0
   
    For i = Format(dtpFromDate, "yyyy") To Format(dtpToDate, "yyyy")
        
        If co = 0 Or co = 46 Then
            Print #z, Chr(18)
            Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 120, " ") + Chr(27) + "F"
            Print #z, Chr(15)
            SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
            Print #z, Space(3) & Chr(27) + "E" + "Receipt List" + Chr(27) + "F" + " for the Year " + CStr(i) + Space(63); CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
            Print #z, Space(3) + String(120, "-")
            Print #z, Space(3) + "Variety" & Space(10) & "Jan" & Space(6) & "Feb" & Space(6) & "Mar" & Space(6) & "Apr" & Space(6) & "May" & Space(6) & "Jun" & Space(6) & "Jul" & Space(6) & "Aug" & Space(6) & "Sep" & Space(6) & "Oct" & Space(6) & "Nov" & Space(6) & "Dec"
            Print #z, Space(3) + Space(13) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty" & Space(2) & "    Qty"
            Print #z, Space(3) + Space(13) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs" & Space(2) & "LakhKgs"
            Print #z, Space(3) + Space(13) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate" & Space(2) & "   Rate"
            Print #z, Space(3) + String(120, "-")
            co = 6
        End If
        
        strMon = "01"
        
        Set Rs = New Recordset
        Rs.Open "Select * from rm_Var ", DB, adOpenStatic
            
            Do While Not Rs.EOF
                
                Set temprs = New Recordset
                temprs.Open " Select Varname, Sum(JanBALES) Jan, Sum(FebBALES) Feb, Sum(MarBALES) Mar, Sum(AprBALES) Apr, Sum(MayBALES) May, Sum(JunBALES) Jun, Sum(JulBALES) Jul, Sum(AugBALES) Aug, Sum(SepBALES) Sep, Sum(OctBALES) Oct, Sum(NovBALES) Nov, Sum(DecBALES) Dec" & _
                         " From (Select b.Varname, case when month(a.lotdt)='01' then (A.BALES) else 0 end as JanBALES, " & _
                         " case when month(a.lotdt)='02' then (A.BALES) else 0 end as FebBALES, " & _
                         " case when month(a.lotdt)='03' then (A.BALES) else 0 end as MarBALES, " & _
                         " case when month(a.lotdt)='04' then (A.BALES) else 0 end as AprBALES, " & _
                         " case when month(a.lotdt)='05' then (A.BALES) else 0 end as MayBALES, " & _
                         " case when month(a.lotdt)='06' then (A.BALES) else 0 end as JunBALES, " & _
                         " case when month(a.lotdt)='07' then (A.BALES) else 0 end as JulBALES, " & _
                         " case when month(a.lotdt)='08' then (A.BALES) else 0 end as AugBALES, " & _
                         " case when month(a.lotdt)='09' then (A.BALES) else 0 end as SepBALES, " & _
                         " case when month(a.lotdt)='10' then (A.BALES) else 0 end as OctBALES, " & _
                         " case when month(a.lotdt)='11' then (A.BALES) else 0 end as NovBALES, " & _
                         " case when month(a.lotdt)='12' then (A.BALES) else 0 end as DecBALES " & _
                         " FROM  RM_LOT A, RM_VAR B WHERE A.VARCODE=B.VARCODE AND month(A.lotdt) BETWEEN '" & Format(dtpFromDate, "mm") & "' AND '" & Format(dtpToDate, "mm") & "'" & _
                         " And   opflg='N' and a.rejflg='N' and  a.lotyear= '" & i & "' and a.divcode='" & Divcode & "'" & _
                         " And   a.Varcode = '" & Rs.Fields(0) & "' Group By b.Varname, a.lotdt,A.BALES)x Group by Varname ", DB, adOpenStatic
                If temprs.RecordCount > 0 Then
                
                        Set rs1 = New Recordset
                        rs1.Open " Select Varname, Sum(JanBALES) Jan, Sum(FebBALES) Feb, Sum(MarBALES) Mar, Sum(AprBALES) Apr, Sum(MayBALES) May, Sum(JunBALES) Jun, Sum(JulBALES) Jul, Sum(AugBALES) Aug, Sum(SepBALES) Sep, Sum(OctBALES) Oct, Sum(NovBALES) Nov, Sum(DecBALES) Dec" & _
                                 " From (Select b.Varname, case when month(a.lotdt)='01' then SUM(A.BALES) else 0 end as JanBALES, " & _
                                 " case when month(a.lotdt)='02' then SUM(A.BALES) else 0 end as FebBALES, " & _
                                 " case when month(a.lotdt)='03' then SUM(A.BALES) else 0 end as MarBALES, " & _
                                 " case when month(a.lotdt)='04' then SUM(A.BALES) else 0 end as AprBALES, " & _
                                 " case when month(a.lotdt)='05' then SUM(A.BALES) else 0 end as MayBALES, " & _
                                 " case when month(a.lotdt)='06' then SUM(A.BALES) else 0 end as JunBALES, " & _
                                 " case when month(a.lotdt)='07' then SUM(A.BALES) else 0 end as JulBALES, " & _
                                 " case when month(a.lotdt)='08' then SUM(A.BALES) else 0 end as AugBALES, " & _
                                 " case when month(a.lotdt)='09' then SUM(A.BALES) else 0 end as SepBALES, " & _
                                 " case when month(a.lotdt)='10' then SUM(A.BALES) else 0 end as OctBALES, " & _
                                 " case when month(a.lotdt)='11' then SUM(A.BALES) else 0 end as NovBALES, " & _
                                 " case when month(a.lotdt)='12' then SUM(A.BALES) else 0 end as DecBALES " & _
                                 " FROM RM_LOT A, RM_VAR B WHERE A.VARCODE=B.VARCODE AND month(A.lotdt) BETWEEN '" & strMon & "' AND '" & 12 & "'" & _
                                 " And  opflg='N' and a.rejflg='N' and  YEAR(a.lotdt)= '" & i & "' and a.divcode='" & Divcode & "'" & _
                                 " And  a.Varcode = '" & Rs.Fields(0) & "' Group By b.Varname, a.lotdt)x Group by Varname ", DB, adOpenStatic
                                 
                        If rs1.RecordCount = 1 Then
                            Print #z, Space(3) + Padr(rs1(0), 10, " ") & Space(4) + Padl(IIf(rs1(1) = 0, "", rs1(1)), 6, "") & Space(3) & Padl(IIf(rs1(2) = 0, "", rs1(2)), 6, "") & Space(3) & Padl(IIf(rs1(3) = 0, "", rs1(3)), 6, "") & Space(3) & Padl(IIf(rs1(4) = 0, "", rs1(4)), 6, "") & Space(3) & Padl(IIf(rs1(5) = 0, "", rs1(5)), 6, "") & Space(3) & Padl(IIf(rs1(6) = 0, "", rs1(6)), 6, "") & Space(3) & Padl(IIf(rs1(7) = 0, "", rs1(7)), 6, "") & Space(3);
                            Print #z, Padl(IIf(rs1(8) = 0, "", rs1(8)), 6, "") & Space(3) & Padl(IIf(rs1(9) = 0, "", rs1(9)), 6, "") & Space(3) & Padl(IIf(rs1(10) = 0, "", rs1(10)), 6, "") & Space(3) & Padl(IIf(rs1(11) = 0, "", rs1(11)), 6, "") & Space(3) & Padl(IIf(rs1(12) = 0, "", rs1(12)), 6, "")
                            co = co + 1
                        End If
                        
                        Set rs1 = New Recordset
                        rs1.Open " Select Sum(JanBALES)/100000 Jan, Sum(FebBALES)/100000 Feb, Sum(MarBALES)/100000 Mar, Sum(AprBALES)/100000 Apr, Sum(MayBALES)/100000 May, Sum(JunBALES)/100000 Jun, Sum(JulBALES)/100000 Jul, Sum(AugBALES)/100000 Aug, Sum(SepBALES)/100000 Sep, Sum(OctBALES)/100000 Oct, Sum(NovBALES)/100000 Nov, Sum(DecBALES)/100000 Dec" & _
                                 " From (Select case when month(a.lotdt)='01' then round(sum(A.FavaourableWgt),2) else 0 end as JanBALES, " & _
                                 " case when month(a.lotdt)='02' then round(sum(A.FavaourableWgt),2) else 0 end as FebBALES, " & _
                                 " case when month(a.lotdt)='03' then round(sum(A.FavaourableWgt),2) else 0 end as MarBALES, " & _
                                 " case when month(a.lotdt)='04' then round(sum(A.FavaourableWgt),2) else 0 end as AprBALES, " & _
                                 " case when month(a.lotdt)='05' then round(sum(A.FavaourableWgt),2) else 0 end as MayBALES, " & _
                                 " case when month(a.lotdt)='06' then round(sum(A.FavaourableWgt),2) else 0 end as JunBALES, " & _
                                 " case when month(a.lotdt)='07' then round(sum(A.FavaourableWgt),2) else 0 end as JulBALES, " & _
                                 " case when month(a.lotdt)='08' then round(sum(A.FavaourableWgt),2) else 0 end as AugBALES, " & _
                                 " case when month(a.lotdt)='09' then round(sum(A.FavaourableWgt),2) else 0 end as SepBALES, " & _
                                 " case when month(a.lotdt)='10' then round(sum(A.FavaourableWgt),2) else 0 end as OctBALES, " & _
                                 " case when month(a.lotdt)='11' then round(sum(A.FavaourableWgt),2) else 0 end as NovBALES, " & _
                                 " case when month(a.lotdt)='12' then round(sum(A.FavaourableWgt),2) else 0 end as DecBALES " & _
                                 " FROM  RM_LOT A, RM_VAR B WHERE A.VARCODE=B.VARCODE AND month(A.lotdt) BETWEEN '" & strMon & "' AND '" & 12 & "'" & _
                                 " And   opflg='N' and a.rejflg='N' and  year(a.lotDt)= '" & i & "' and a.divcode='" & Divcode & "'" & _
                                 " And   a.Varcode = '" & Rs.Fields(0) & "' Group By a.lotdt)x ", DB, adOpenStatic
                                 
                        If rs1.RecordCount = 1 Then
                            Print #z, Space(13) + Padl(IIf(rs1(0) = 0, "", Format(rs1(0), "#.00")), 10, " ") & Space(3) + Padl(IIf(rs1(1) = 0, "", Format(rs1(1), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(2) = 0, "", Format(rs1(2), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(3) = 0, "", Format(rs1(3), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(4) = 0, "", Format(rs1(4), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(5) = 0, "", Format(rs1(5), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(6) = 0, "", Format(rs1(6), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(7) = 0, "", Format(rs1(7), "#.00")), 6, "") & Space(3);
                            Print #z, Padl(IIf(rs1(8) = 0, "", Format(rs1(8), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(9) = 0, "", Format(rs1(9), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(10) = 0, "", Format(rs1(10), "#.00")), 6, "") & Space(3) & Padl(IIf(rs1(11) = 0, "", Format(rs1(11), "#.00")), 6, "")
                            co = co + 1
                        End If
                        
                                 
                        For intMon = 1 To 12
                            If Len(CStr(intMon)) = 1 Then
                                strMon = "0" & CStr(intMon)
                            Else
                                strMon = CStr(intMon)
                            End If

                            Set rs1 = New Recordset
                            rs1.Open " Select (Sum(TOTLANDCOST) / sum(FavaourableWgt)) as RateKg from rm_lot a" & _
                                     " WHERE  month(A.lotdt) BETWEEN '" & strMon & "' AND '" & strMon & "'" & _
                                     " And  opflg='N' and a.rejflg='N' and  year(a.lotdt)= '" & i & "' and a.divcode='" & Divcode & "'" & _
                                     " And  a.Varcode = '" & Rs.Fields(0) & "' Group By a.Varcode", DB, adOpenStatic
                            If rs1.RecordCount > 0 Then
                                strRate = strRate & Padl(Format(rs1.Fields(0), "#.00"), 6, "") & Space(3)
                            Else
                                strRate = strRate & Space(9)
                            End If
                        Next
                            
                            Print #z, Space(17) + strRate
                            strRate = ""
                            strMon = ""
                            Print #z,
                            co = co + 1
                    End If
                    
            Rs.MoveNext
            Loop
            
            If co <> 45 Then
                Print #z,
                Print #z, Space(3) + String(120, "-")
                For intCount = co To 45
                    Print #z,
                    co = co + 1
                Next
            End If
            
    Next
    
    Me.MousePointer = vbNormal
    
'    Print #z, Space(3) + String(120, "-")
    Close #z
    z = FreeFile
'    Open "c:\Receipt.bat" For Output As #z
'    Print #z, "cd\"
'    Print #z, "c:"
'    Print #z, "cd\"
'    Print #z, "type Receipt.txt>prn"
'    Close #z
'    Rep.txtfile = "c:\Receipt.txt"
'    Rep.Batfile = "c:\Receipt.bat"
     Call KALBATPROCESS("Receipt")

'RR_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form " & Me.Caption, vbInformation, head
'    Screen.MousePointer = 0
    
End Sub

Private Sub dtpFromDate_Change()
    If Repindex = 3003 Then Text2.Text = Format(dtpFromDate.value, "YYYY")
End Sub

Private Sub DTPicker4_Change()
End Sub

Public Sub LotstockRepHeader(pg1 As Integer, co As Integer, s As String, U As String, a As Integer)
          Print #z, Chr(18)
          Print #z, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(3) & Chr(27) + "E" + "Lotwise Stock Position" + Chr(27) + "F" + " As On " + Format(Trim(U), "DD/MM/YY"); Space(74); CStr(SR) + "Pg.:" + Padl(CStr(pg1), 3, "  ")
        If a = 0 Then
          Print #z, Space(5) & String(130, "-")
          Print #z, Space(5) & "                                                                  Party              <- Closing Stock ->    Rate/ "
          'Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty  Unit           Kgs      Candy             Value"
          Print #z, Space(5) & "S.No  Lot No   Supplier Name                      Variety        Lot No  Rate/Kg     Qty             Kgs    Candy            Value"
          Print #z, Space(5) & String(130, "-")
        ElseIf a = 1 Then
          Print #z, Space(5) & String(153, "-")
          Print #z, Space(5) & "                      Lot                               Party          <----Closing Stock---->    Rate/                  "
          'Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty  Unit           Kgs      Candy             Value Mod_User Name Mod_Date  "
          Print #z, Space(5) & "Category  Lot No     Date      Variety                 Lot No Rate/Kg     Qty           Kgs      Candy            Value Mod_User Name Mod_Date  "
          Print #z, Space(5) & String(153, "-")
        End If
          co = co + 9
End Sub


Private Sub dtpToDate_Change()
   If Repindex = 3003 Then Text3.Text = Format(dtpToDate.value, "YYYY")
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Select Case Repindex
    Case 3099
        lblTitle.Caption = "Issue Return List"
        Me.Caption = "Issue Return List"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate
    Case 3023
        lblTitle.Caption = "Pending Order - Areawise"
        Me.Caption = "Pending Order - Atreawise"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate
    Case 3011
        lblTitle.Caption = "Issue List - Unitwise"
        Me.Caption = "Issue List - Unitwise"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate
        
    Case 3002
        lblTitle.Caption = "Stock Reconcilation"
        Me.Caption = "Stock Reconcilation"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate
        
    Case 3015
        lblTitle.Caption = "Raw Material Stock Abstract"
        Me.Caption = "Raw Material Stock Abstract"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate
    Case 3018
        lblTitle.Caption = "Pending Bill Receipt"
        Me.Caption = "Pending Bill Receipt"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.MaxDate = pdate

    Case 3003
        DataCombo1.Visible = True
        DataCombo1.ZOrder 0
        DataCombo2.Visible = True
        DataCombo2.ZOrder 0
        DataCombo2.Top = DataCombo2.Top - 30
'        dtpFromDate.Value = yfdate
'        dtpToDate.Value = pdate
'        dtpToDate.MaxDate = pdate
'        Text2.Text = Format(dtpFromDate.Value, "YYYY")
'        Text3.Text = Format(dtpToDate.Value, "YYYY")
        Set Rs = New Recordset
        Rs.Open "SELECT year(lotdt) as lotno FROM rm_lot GROUP BY year(lotdt) order by year(lotdt)", DB, adOpenStatic
        
        If Not Rs.EOF Then
            Set DataCombo1.RowSource = Rs
            DataCombo1.ListField = "LotNo"
            Rs.MoveFirst
            DataCombo1.Text = Rs!LOTNO
            Set DataCombo2.RowSource = Rs
            DataCombo2.ListField = "LotNo"
            Rs.MoveLast
            DataCombo2.Text = Rs!LOTNO
        End If



        lblTitle.Caption = "Receipt List - Yearly Report"
        Me.Caption = "Receipt List - Yearly Report"
        Label2.Caption = "From Year"
        Label3.Caption = "To Year"

End Select

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub AduitReport(fdate As Date, tdate As Date)
On Error GoTo AduitReport_Error

    If Table_Exists("Temp_AduitReport") = True Then
        DB.Execute "Drop Table Temp_AduitReport"
    End If
    
    DB.Execute "Create table Temp_AduitReport (sno numeric(2),Description varchar(100),Qty numeric(10),Kgs numeric(15,3),TValue  numeric(18,2))"
    

    strSQL = " select CASE WHEN sum(isnull(a.opbales,0))>0 THEN sum(isnull(a.opbales,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.opboras,0)) >0 THEN sum(isnull(a.opboras,0)) ELSE 0 END as opboras,CASE WHEN sum(isnull(a.opkgs,0)) >0 THEN sum(isnull(a.opkgs,0)) ELSE 0 END as opkgs,CASE WHEN sum(isnull(a.opvalue,0))>0 THEN sum(isnull(a.opvalue,0)) ELSE 0 END as opvalue" & _
             " from (( select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras, 0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE " & _
             " from ( select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FavaourableWgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FavaourableWgt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(fdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.Isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.Isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(fdate, "YYYY/MM/DD") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
             " UNION " & _
             " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FavaourableWgt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt <'" & Format(fdate, "YYYY-MM-DD") & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT " & _
             " union " & _
             " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales, 0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(Isskgs,0))),3) AS rejkgs,0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(Isskgs,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FavaourableWgt,0))),3) AS Isskgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') and e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "' and Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.FavaourableWgt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.FavaourableWgt)*RATEKG as recvalue,0 as issvalue,0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG " & _
             " Union " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg" & _
             " ))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt"
             
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
        
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (1,'Opening Stock as per Stock Statement'," & IIf(IsNull(Rs(0)), 0, Rs(0)) + IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & "," & IIf(IsNull(Rs(3)), 0, Rs(3)) & ")"
    dblQty = Rs(0)
    dblKgs = Rs(2)
    Dblvalue = Rs(3)
    
    strSQL = ""
    strSQL = "select sum(a.bales),sum(a.FavaourableWgt),sum(a.FavaourableWgt * a.ratekg) as totalvalue from  rm_lot a where a.LOTdt between '" & Format(fdate, "YYYY-MM-DD") & "' and '" & Format(tdate, "YYYY-MM-DD") & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "'"
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (2,'Receipt as per Receipt List'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty + IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs + IIf(IsNull(Rs(1)), 0, Rs(1))
    Dblvalue = Dblvalue + IIf(IsNull(Rs(2)), 0, Rs(2))

    strSQL = ""
    strSQL = "select sum(issBales) AS rejbales,round((sum(isnull(ISSKGS,0))),3) AS rejkgs,round((sum(isnull(ISSKGS,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE,"
    strSQL = strSQL + " e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FavaourableWgt,0)))"
    strSQL = strSQL + " ,3) AS ISSkgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE"
    strSQL = strSQL + " AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') AND"
    strSQL = strSQL + " e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "'  AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s"
    strSQL = strSQL + " GROUP BY RATEKG "
    
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    If Rs.EOF = False Then
    DB.Execute "INSERT INTO Temp_AduitReport values (3,'Rejected as per Stock Statement'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty - IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs - IIf(IsNull(Rs(1)), 0, Rs(1))
    Dblvalue = Dblvalue - IIf(IsNull(Rs(2)), 0, Rs(2))

    Else
    DB.Execute "INSERT INTO Temp_AduitReport values (3,'Rejected as per Stock Statemnt',0,0,0)"
    End If
    
    strSQL = ""
    strSQL = strSQL + " SELECT sum(issbales) AS issb,sum(isskgs) AS issk ,sum(issvalue) AS issv FROM (select count(c.baleno)  issbales,sum(C.ISSKGS) as isskgs,round((sum(isnull(C.ISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from"
    strSQL = strSQL + " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno"
    strSQL = strSQL + " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "YYYY-MM-DD") & "' and '" & Format(tdate, "YYYY-MM-DD") & "'"
    strSQL = strSQL + " and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "YYYY-MM-DD") & "') group by b.ratekg)i"
    
'    strSQL = "SELECT COUNT(B.BALENO),SUM(B.ACTISSKGS), SUM(B.ACTISSKGS * A.RATEKG) FROM RM_LOT A,RM_ISSB B WHERE A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.LOTTYPE= B.LOTTYPE AND A.DIVCODE= B.DIVCODE AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND B.DOCDT BETWEEN '" & Format(fdate, "YYYY-MM-DD") & "' AND '" & Format(TDate, "YYYY-MM-DD") & "' AND a.DIVCODE ='" & Divcode & "' AND b.ISSUED= 'Y'"
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (4,'Issue as per Issue List'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty - IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs - IIf(IsNull(Rs(1)), 0, Rs(1))
    Dblvalue = Dblvalue - IIf(IsNull(Rs(2)), 0, Rs(2))
    
    DB.Execute "INSERT INTO Temp_AduitReport values (5,'Closing Stock as per stock Statement'," & dblQty & "," & dblKgs & "," & Dblvalue & ")"
    
    strSQL = ""
    strSQL = strSQL + " select case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0)) end  as clobales,"
    strSQL = strSQL + " case when sum(isnull(a.opboras,0)) > 0 THEN (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
    strSQL = strSQL + " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))-sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) - SUM(ISNULL(A.REJKGS,0)) end as clokgs ,"
    strSQL = strSQL + "  case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))-sum(isnull(a.REJVALUE,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0)) -sum(isnull(a.REJVALUE,0))) end  closevalue"
    strSQL = strSQL + " from (( select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras, 0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE "
    strSQL = strSQL + " from ( select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FavaourableWgt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FavaourableWgt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(fdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.Isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.Isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(fdate, "YYYY/MM/DD") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FavaourableWgt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt <'" & Format(fdate, "YYYY-MM-DD") & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT "
    strSQL = strSQL + " union "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales, 0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(Isskgs,0))),3) AS rejkgs,0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(Isskgs,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FavaourableWgt,0))),3) AS Isskgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') and e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "' and Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.FavaourableWgt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.FavaourableWgt)*RATEKG as recvalue,0 as issvalue,0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG "
    strSQL = strSQL + " Union "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.Isskgs) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.Isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(tdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(tdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg"
    strSQL = strSQL + " ))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt"
        
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
     
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (6,'Actual Closing Stock '," & IIf(IsNull(val(Rs(0))), 0, Rs(0)) + IIf(IsNull(val(Rs(1))), 0, Rs(1)) & "," & IIf(IsNull(val(Rs(2))), 0, Rs(2)) & "," & IIf(IsNull(val(Rs(3))), 0, Rs(3)) & ")"
    
    dblBQty = dblQty - IIf(IsNull(val(Rs(0))), 0, Rs(0)) + IIf(IsNull(val(Rs(1))), 0, Rs(1))
    dblBKgs = dblKgs - IIf(IsNull(val(Rs(2))), 0, Rs(2))
    dblBValue = Dblvalue - IIf(IsNull(val(Rs(3))), 0, Rs(3))
    

Exit Sub
AduitReport_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AduitReport of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub PendingBillReceipt(fdate As String, tdate As String)
Screen.MousePointer = 11
Dim DayTotal As Integer
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim U, V As String
Dim z As String
Dim a As String
Dim dDayTot1, dDayTot2 As Double
Dim dGndTot1, dGndTot2 As Double

    ''Datewise
    Set REP = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    'Open "C:\inv.txt" For Output As #a
     Open KALFOLDERDATA & "\inv.TXT" For Output As #a
    Dim co As Integer
    Dim pg As Integer
    Dim s1, s2, s3 As String
    Dim d As String
    Dim TEMP As String
        
    U = Trim(Right(DataCombo1.Text, 7))
    V = Trim(Right(DataCombo2.Text, 7))
    
        Set Rs = New Recordset
        Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.FavaourableWgt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,A.FavaourableWgt,A.FavaourableWgt,c.contno,a.fbillno, a.AssValue,A.FBILLVALUE, a.OthersAmt, a.RateKg,a.commamt,a.brkcom,a.vcatcd,isnull(cashdisamt,0) as cashdis,isnull(tradedisamt,0) as tradedis,A.TOTLANDCOST,A.Tax_code from " & _
                " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,RM_VAR F " & _
                " where A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                " and a.supcd=e.slcode and b.contdt=c.contdt and b.divcode=c.divcode " & _
                " and a.LOTdt between '" & Format(fdate, "YYYY-MM-DD") & "' and '" & Format(tdate, "YYYY-MM-DD") & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' AND ISNULL(INS_FLG,'N')='Y' AND PJNO IS NULL and a.lottype='A' order by a.lotdt,a.lotno ", DB, adOpenStatic, adLockBatchOptimistic
    
    
           
        If Rs.RecordCount <= 0 Then
          Screen.MousePointer = 0
          MsgBox " No Records Found", vbInformation, head
          Exit Sub
        Else
        Rs.MoveFirst
       
        Print #a, Chr(18)
        Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
        Print #a, Chr(15)
        SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
        Print #a, Space(2) & Chr(27) + "E" + "Pending Bill Receipt from " + Chr(27) + "F" + Format(Trim(fdate), "DD/MM/YY") + " to " + Format(Trim(tdate), "DD/MM/YY") + Space(14); CStr(SR) + "Pg. No. :" + Padl("1", 3, "  ")
        Print #a, Space(2) & String(89, "-")
        Print #a, Space(2) & Padl("Lot Date", 8, " ")
        Print #a, Space(2) & Padl("Lot No.", 7, " "); Space(1); Padr("Supplier", 18, " "); Space(1); Padr("Variety", 7, " "); Space(1); Padl("PO No.", 6, " "); Space(1); Padl("Bill No.", 8, " "); Space(1); Padl("Qty", 5, " "); Space(1); Padl("Net Wt.", 10, " "); Space(1); Padl("Rate/Kg", 8, "  "); Space(1); Padl("Landed Cost", 12, "  ")
        Print #a, Space(2) & String(89, "-")
        co = co + 8
    Dim RECCOUNT As Integer
    recount = 0
    Do While Rs.EOF = False
      
      If TEMP <> Rs("lotdt") Then
      PageLen1 = 60
      If co >= PageLen1 Then
            Print #a, Space(2) & String(89, "-")
            Print #a, Chr(12)
            pg = pg + 1
            co = 10
            Print #a, Chr(18)
            Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
            Print #a, Chr(15)
            SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
            Print #a, Space(2) & Chr(27) + "E" + "Pending Bill Receipt(s) from " + Chr(27) + "F" + Format(Trim(fdate), "DD/MM/YY") + " to " + Format(Trim(tdate), "DD/MM/YY") + Space(11); CStr(SR) + "Pg. No. :" + Padl(CStr(pg), 3, "  ")
            Print #a, Space(2) & String(89, "-")
            Print #a, Space(2) & Padl("Lot Date", 8, " ")
            Print #a, Space(2) & Padl("Lot No.", 7, " "); Space(1); Padr("Supplier", 18, " "); Space(1); Padr("Variety", 7, " "); Space(1); Padl("PO No.", 6, " "); Space(1); Padl("Bill No.", 8, " "); Space(1); Padl("Qty", 5, " "); Space(1); Padl("Net Wt.", 10, " "); Space(1); Padl("Rate/Kg", 8, "  "); Space(1); Padl("Landed Cost", 12, "  ")
            Print #a, Space(2) & String(89, "-")
            co = co + 8
        End If
        
        If co > 8 And DayTotal > 1 Then
            'Print #a,
            Print #a, Space(2) & Padl("", 7, " "); Space(1); Padr("Day Total", 18, " "); Space(1); Padr("", 7, " "); Space(1); Padl("", 6, " "); Space(1); Padl("", 8, " "); Space(1); Padl(INF(dDayTot1, 0), 5, " "); Space(1); Padl(INF(dDayTot2, 2), 10, " "); Space(1); Padl("", 8, "  "); Space(1); Padl("", 12, "  ")
            co = co + 3
            Print #a,
            dDayTot1 = 0
            dDayTot2 = 0
            DayTotal = 0
        End If
        
        If DayTotal = 1 Then
'            Print #a,
'            Co = Co + 1
            DayTotal = 0
        End If
        dDayTot1 = 0
        dDayTot2 = 0
        'Print #a,
        
        TEMP = Format(Rs("lotdt"), "dd/mm/yyyy")
        
        Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
        co = co + 1
      End If
      
    Dim billvalue, purcost, ratekg, cstval As Double
    billvalue = Rs!fBillValue
    purcost = Rs("TOTLANDCOST")
    ratekg = val(purcost) / IIf(IsNull(Rs("FavaourableWgt")), 0, Rs("FavaourableWgt"))
    
    
       
        Print #a, Space(2) & Padr(Rs("lotno"), 7, " "); Space(1); Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padr(Rs("varcode"), 7, " "); Space(1); Padl(Rs("contno"), 6, " "); Space(1); Padl(Rs("fbillno"), 8, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("FavaourableWgt"), 2), 10, " "); Space(1); Padl(INF(Rs!ratekg, 4), 8, " "); Space(1); Padl(INF(purcost, 2), 12, "  ")
        Print #a,
        co = co + 2
        DayTotal = DayTotal + 1
        
        dDayTot1 = dDayTot1 + Rs("bales")
        dDayTot2 = dDayTot2 + Rs("FavaourableWgt")
        
        dGndTot1 = dGndTot1 + Rs("bales")
        dGndTot2 = dGndTot2 + Rs("FavaourableWgt")
        
        Rs.MoveNext
           
           If co > 60 Then
               If co > 9 And DayTotal > 1 Then
                    'Print #a,
                        Print #a, Space(2) & Padl("", 7, " "); Space(1); Padr("Day Total", 18, " "); Space(1); Padr("", 7, " "); Space(1); Padl("", 6, " "); Space(1); Padl("", 8, " "); Space(1); Padl(INF(dDayTot1, 0), 5, " "); Space(1); Padl(INF(dDayTot2, 2), 10, " "); Space(1); Padl("", 8, "  "); Space(1); Padl("", 12, "  ")
                        co = co + 3
                        Print #a,
                        dDayTot1 = 0
                        dDayTot2 = 0
                        DayTotal = 0
                End If

                Print #a, Space(2) & String(89, "-")
                Print #a, Chr(12)
                co = 0
                pg = pg + 1
                Print #a, Chr(18)
                Print #a, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
                Print #a, Chr(15)
                SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
                Print #a, Space(2) & Chr(27) + "E" + "Pending Bill Receipt(s) from " + Chr(27) + "F" + Format(Trim(fdate), "DD/MM/YY") + " to " + Format(Trim(tdate), "DD/MM/YY") + Space(11); CStr(SR) + "Pg. No. :" + Padl(CStr(pg), 3, "  ")
                Print #a, Space(2) & String(89, "-")
                Print #a, Space(2) & Padl("Lot Date", 8, " ")
                Print #a, Space(2) & Padl("Lot No.", 7, " "); Space(1); Padr("Supplier", 18, " "); Space(1); Padr("Variety", 7, " "); Space(1); Padl("PO No.", 6, " "); Space(1); Padl("Bill No.", 8, " "); Space(1); Padl("Qty", 5, " "); Space(1); Padl("Net Wt.", 10, " "); Space(1); Padl("Rate/Kg", 8, "  "); Space(1); Padl("Landed Cost", 12, "  ")
                Print #a, Space(2) & String(89, "-")
                co = co + 8
           End If
    Loop
    If co > 9 And DayTotal > 1 Then
        Print #a,
            Print #a, Space(2) & Padl("", 7, " "); Space(1); Padr("Day Total", 18, " "); Space(1); Padr("", 7, " "); Space(1); Padl("", 6, " "); Space(1); Padl("", 8, " "); Space(1); Padl(INF(dDayTot1, 0), 5, " "); Space(1); Padl(INF(dDayTot2, 2), 10, " "); Space(1); Padl("", 8, "  "); Space(1); Padl("", 12, "  ")
            co = co + 3
            Print #a,
            dDayTot1 = 0
            dDayTot2 = 0
            DayTotal = 0
    End If
    Print #a, Space(2) & String(89, "-")

    Print #a, Space(2) & Padl("", 7, " "); Space(1); Padr("Grand Total", 18, " "); Space(1); Padr("", 7, " "); Space(1); Padl("", 6, " "); Space(1); Padl("", 8, " "); Space(1); Padl(INF(dGndTot1, 0), 5, " "); Space(1); Padl(INF(dGndTot2, 2), 10, " "); Space(1); Padl("", 8, "  "); Space(1); Padl("", 12, "  ")
    co = co + 3

    Print #a, Space(2) & String(89, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    'Call footermod(CInt(a), UserFooter1.SelectedStr, 135)
    Print #a, Chr(12) 'page break
    Close #a
    a = FreeFile
'    Open "c:\inv.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type inv.txt>prn"
'    Close #a
'    Rep.txtfile = "c:\inv.txt"
'    Rep.Batfile = "c:\inv.bat"
Call KALBATPROCESS("inv")
End If
Screen.MousePointer = 0
Exit Sub
End Sub
Public Sub IssueReturnRegister(sFromDate As String, sToDate As String)
Dim Str As String
Dim tot5, tot6, tot7, gtot5, gtot6, gtot7 As Double
Dim r As String
Dim s, mix As String
Dim sLotYear As String
Dim temp1 As String
Dim dupNo As String
Dim iCnt As Integer

pg = 1
div = divname
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring

Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Close
'Open "c:\carr.txt" For Output As #1
Open KALFOLDERDATA & "\carr.TXT" For Output As #1
pg1 = 1

co = 9
Set rs2 = New Recordset
rs2.Open "SELECT DIVCODE,LOTNO,ISSDOCNO,ISSDOCDT,MIXGRP,lotdt, COUNT(Baleno) AS Qty,SUM(isskgs) AS Kgs,SUM(Actisskgs) AS ActKgs FROM rm_issue_return WHERE Docdt  between '" & Format(sFromDate, "YYYY/MM/DD") & "' and '" & Format(sToDate, "YYYY/MM/DD") & "' and divcode='" & Divcode & "' GROUP BY divcode,lotno,ISSDOCNO,ISSDOCDT,DOCDT,lotdt,MIXGRP ORDER BY issdocdt,issdocno", DB, adOpenStatic
If rs2.RecordCount = 0 Then
    MsgBox "No records Found ", vbInformation, head
    Screen.MousePointer = 0
     Exit Sub
End If
co = 0: c1 = 0
tot5 = 0: tot6 = 0: tot7 = 0: tot8 = 0: gtot6 = 0: gtot7 = 0
temp1 = "": Str = ""
iCnt = 0
    Call IssueRtnRegHeader(CStr(sFromDate), CStr(sToDate), CInt(pg1))
    co = co + 9
    Do While Not rs2.EOF
       
        If co >= 58 Then
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call IssueRtnRegHeader(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
        
        Set Rs = New Recordset
        Rs.Open "Select MixGrpname From RM_mixgrp Where Divcode='" & Divcode & "' and MixGrpCD ='" & rs2("MixGrp") & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            mix = Rs(0)
        Else
            mix = ""
        End If
        
        Set Rs = New Recordset
        Rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs2("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs2("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
        If Rs.EOF = False Then
            sLotYear = Format(Rs("AYFDATE"), "YY")
        Else
            sLotYear = Format(rs2("LOTDT"), "YY")
        End If
        
        If dupNo <> rs2("issdocno") Or co = 9 Then
            Print #1, Space(3) & Padr(rs2("issdocno"), 8, " ") & Space(2) & Padr(Format(rs2("issdocdt"), "DD/MM/YY"), 8, " ") & Space(2) & Padr(rs2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padr(mix, 13, " ") & Space(2) & Padl(rs2("Qty"), 6, " ") & Space(2) & Padl(INF(rs2("Kgs"), 3), 12, " ") & Space(2) & Padl(INF(rs2("ActKgs"), 3), 12, " ")
        Else
            Print #1, Space(3) & Padr("", 8, " ") & Space(2) & Padr("", 8, " ") & Space(2) & Padr(rs2("lotno") & "/" & sLotYear, 8, " ") & Space(2) & Padr(mix, 13, " ") & Space(2) & Padl(rs2("Qty"), 6, " ") & Space(2) & Padl(INF(rs2("Kgs"), 3), 12, " ") & Space(2) & Padl(INF(rs2("ActKgs"), 3), 12, " ")
        End If
        dupNo = rs2("Issdocno")
        co = co + 1
        c1 = c1 + 1
        If co >= 58 Then
            Print #1, Space(2) & String(80, "-")
            Print #1, Chr(12)
            pg1 = pg1 + 1
            Call IssueRtnRegHeader(CStr(sFromDate), CStr(sToDate), CStr(pg1))
            co = 9
        End If
        ''Sub Total
        tot5 = tot5 + rs2("Qty")
        tot6 = tot6 + rs2("Kgs")
        tot7 = tot7 + rs2("ActKgs")
        rs2.MoveNext
    Loop
    
    Print #1, Space(2) & String(80, "-")
    Print #1, Space(2) & Padl("", 8, " ") & Space(0) & Padl("Grand Total", 11, " ") & Space(1) & Padr("", 16, " ") & Space(2) & Padl(tot5, 14, " ") & Space(2) & Padl(INF(tot6, 3), 12, " ") & Space(2) & Padl(INF(tot7, 3), 12, " ")
    Print #1, Space(2) & String(80, "=")
    Print #1,
    Print #1,
    Print #1,
    'Call footermod(CInt(1), footerstr, 85)
    Print #1, Chr(12)
    Screen.MousePointer = 0
    Close #1
'Open "c:\carr.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type carr.txt>prn"
'rev.txtfile = "c:\carr.txt"
'rev.Batfile = "c:\carr.bat"
'Close #1
'1 = FreeFile
Call KALBATPROCESS("carr")
End Sub
Public Sub IssueRtnRegHeader(a As String, B As String, pg1 As Integer)
Print #1, Chr(18)
Print #1, Space(2) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #1, Chr(18)
Print #1, Space(2) & Chr(27) & "E" & Padr("Issue Return Regsiter from", 20, " ") & Chr(27) & "F" & " from " & Padr(Format(a, "dd/mm/yy"), 8, " ") & " to " & Padr(Format(B, "dd/mm/yy"), 8, " ") & Space(11) & Padr(Format(pdate, "dd/mm/yy"), 8, " ") & Space(2) & "Pg. No. :" & Padl(pg1, 3, " ")
Print #1, Space(2) & String(80, "-")
Print #1, Space(3) & Padr("Issue ", 8, " ") & Space(2) & Padr("Issue", 8, " ") & Space(2) & Padr("Mill ", 8, " ") & Space(2) & Padr("Mix Group", 11, " ") & Space(2) & Padl("Quantity", 8, " ") & Space(2) & Padl("Nett", 12, " ") & Space(2) & Padl("Actual", 12, " ")
Print #1, Space(3) & Padr("Doc. No.", 8, " ") & Space(2) & Padr("Doc. Dt.", 8, " ") & Space(2) & Padr("Lot No. ", 8, " ") & Space(2) & Padr("", 11, " ") & Space(2) & Padl("", 8, " ") & Space(2) & Padl("Weight", 12, " ") & Space(2) & Padl("Issue Weight", 12, " ")
Print #1, Space(2) & String(80, "-")

End Sub
