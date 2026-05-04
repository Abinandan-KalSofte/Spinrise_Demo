VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmRptAduit 
   Caption         =   "Receipt Reconcilation"
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
      Left            =   4410
      TabIndex        =   8
      Top             =   5520
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
      Left            =   5910
      TabIndex        =   7
      Top             =   5520
      Width           =   915
   End
   Begin Crystal.CrystalReport CR 
      Left            =   2040
      Top             =   3840
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   1980
      Left            =   3300
      TabIndex        =   0
      Top             =   3090
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
         Top             =   30
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
            Format          =   72220673
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
            Format          =   72220673
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
End
Attribute VB_Name = "frmRptAduit"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim strSQL As String
Dim fdate As Date
Dim TDate As Date
Dim dblQty, dblKgs, dblValue As Double
Dim dblBQty, dblBKgs, dblBvalue As Double


Private Sub cmdexit_Click()
    Unload Me
End Sub

Private Sub cmdreport_Click()
On Error GoTo cmdreport_Click_Error

Select Case Repindex
Case 3002
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.Value, "yyyy-mm-dd"):   TDate = Format(dtpToDate.Value, "yyyy-mm-dd")
    If CDate(fdate) > CDate(TDate) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(TDate) < CDate(fdate) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
    End If
    Call AduitReport(fdate, TDate)
    Set Rs = New Recordset
    Rs.Open "Select * from Temp_AduitReport", DB, adOpenStatic
    
    If Rs.EOF = False Then
    
        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ReceiptReconcilationRpt.rpt"
            
            CR.Formulas(0) = "divname = '" & DIVNAME & "'"
            CR.Formulas(1) = "fromdate = '" & Format(fdate, "dd/MM/yy") & "'"
            CR.Formulas(2) = "todate = '" & Format(TDate, "dd/MM/yy") & "'"
            CR.ParameterFields(0) = "@balQty;" & dblBQty
            CR.ParameterFields(1) = "@balkgs;" & dblBKgs
            CR.ParameterFields(2) = "@balval;" & dblBvalue
            CR.WindowState = crptMaximized

            SendKeys "{ENTER}"
            CR.Action = 1
            CR.PrinterCopies = 1
            Screen.MousePointer = 0
        Exit Sub
        Screen.MousePointer = 0
    
    End If
End Select

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cmdReport_Click of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Select Case Repindex
    Case 3002
        lblTitle.Caption = "Receipt Reconciliation"
        Me.Caption = "Receipt Reconciliation"
        dtpFromDate.Value = mfdate
        dtpToDate.Value = pdate
        dtpToDate.MaxDate = pdate
End Select

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub AduitReport(fdate As Date, TDate As Date)
On Error GoTo AduitReport_Error

    If Table_Exists("Temp_AduitReport") = True Then
        DB.Execute "Drop Table Temp_AduitReport"
    End If
    
    DB.Execute "Create table Temp_AduitReport (sno numeric(2),Description varchar(100),Qty numeric(10),Kgs numeric(15,3),TValue  numeric(18,2))"
    

    strSQL = " select CASE WHEN sum(isnull(a.opbales,0))>0 THEN sum(isnull(a.opbales,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.opboras,0)) >0 THEN sum(isnull(a.opboras,0)) ELSE 0 END as opboras,CASE WHEN sum(isnull(a.opkgs,0)) >0 THEN sum(isnull(a.opkgs,0)) ELSE 0 END as opkgs,CASE WHEN sum(isnull(a.opvalue,0))>0 THEN sum(isnull(a.opvalue,0)) ELSE 0 END as opvalue" & _
             " from (( select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras, 0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE " & _
             " from ( select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(fdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.ACTISSKGS,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.ACTISSKGS,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(fdate, "YYYY/MM/DD") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
             " UNION " & _
             " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt <'" & Format(fdate, "YYYY-MM-DD") & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT " & _
             " union " & _
             " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales, 0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(ACTISSKGS,0))),3) AS rejkgs,0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(ACTISSKGS,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS ACTISSkgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') and e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "' and Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue,0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG " & _
             " Union " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg " & _
             " UNION " & _
             " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg" & _
             " ))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt"
             
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
        
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (1,'Opening Balance as per Stock Statement'," & IIf(IsNull(Rs(0)), 0, Rs(0)) + IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & "," & IIf(IsNull(Rs(3)), 0, Rs(3)) & ")"
    dblQty = Rs(0)
    dblKgs = Rs(2)
    dblValue = Rs(3)
    
    strSQL = ""
    strSQL = "select sum(a.bales),sum(a.netwt),sum(a.netwt * a.ratekg) as totalvalue from  rm_lot a where a.LOTdt between '" & Format(fdate, "YYYY-MM-DD") & "' and '" & Format(TDate, "YYYY-MM-DD") & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "'"
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (2,'Receipt as per Receipt Register'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty + IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs + IIf(IsNull(Rs(1)), 0, Rs(1))
    dblValue = dblValue + IIf(IsNull(Rs(2)), 0, Rs(2))

    strSQL = ""
    strSQL = "select sum(issBales) AS rejbales,round((sum(isnull(ACTISSKGS,0))),3) AS rejkgs,round((sum(isnull(ACTISSKGS,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE,"
    strSQL = strSQL + " e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0)))"
    strSQL = strSQL + " ,3) AS ACTISSkgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE"
    strSQL = strSQL + " AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') AND"
    strSQL = strSQL + " e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "'  AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s"
    strSQL = strSQL + " GROUP BY RATEKG "
    
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    If Rs.EOF = False Then
    DB.Execute "INSERT INTO Temp_AduitReport values (3,'Rejected as per Stock Statemnt'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty - IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs - IIf(IsNull(Rs(1)), 0, Rs(1))
    dblValue = dblValue - IIf(IsNull(Rs(2)), 0, Rs(2))

    Else
    DB.Execute "INSERT INTO Temp_AduitReport values (3,'Rejected as per Stock Statemnt',0,0,0)"
    End If
    
    strSQL = ""
    strSQL = strSQL + " SELECT sum(issbales) AS issb,sum(isskgs) AS issk ,sum(issvalue) AS issv FROM (select count(c.baleno)  issbales,sum(C.ACTISSKGS) as isskgs,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from"
    strSQL = strSQL + " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno"
    strSQL = strSQL + " and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "YYYY-MM-DD") & "' and '" & Format(TDate, "YYYY-MM-DD") & "'"
    strSQL = strSQL + " and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "YYYY-MM-DD") & "') group by b.ratekg)i"
    
'    strSQL = "SELECT COUNT(B.BALENO),SUM(B.ACTISSKGS), SUM(B.ACTISSKGS * A.RATEKG) FROM RM_LOT A,RM_ISSB B WHERE A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.LOTTYPE= B.LOTTYPE AND A.DIVCODE= B.DIVCODE AND A.LOTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND B.DOCDT BETWEEN '" & Format(fdate, "YYYY-MM-DD") & "' AND '" & Format(TDate, "YYYY-MM-DD") & "' AND a.DIVCODE ='" & Divcode & "' AND b.ISSUED= 'Y'"
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (4,'Issue as per Issue Register'," & IIf(IsNull(Rs(0)), 0, Rs(0)) & "," & IIf(IsNull(Rs(1)), 0, Rs(1)) & "," & IIf(IsNull(Rs(2)), 0, Rs(2)) & ")"
    dblQty = dblQty - IIf(IsNull(Rs(0)), 0, Rs(0))
    dblKgs = dblKgs - IIf(IsNull(Rs(1)), 0, Rs(1))
    dblValue = dblValue - IIf(IsNull(Rs(2)), 0, Rs(2))
    
    DB.Execute "INSERT INTO Temp_AduitReport values (5,'Closing Value as per stock Statement'," & dblQty & "," & dblKgs & "," & dblValue & ")"
    
    strSQL = ""
    strSQL = strSQL + " select case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0)) end  as clobales,"
    strSQL = strSQL + " case when sum(isnull(a.opboras,0)) > 0 THEN (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
    strSQL = strSQL + " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))-sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) - SUM(ISNULL(A.REJKGS,0)) end as clokgs ,"
    strSQL = strSQL + "  case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))-sum(isnull(a.REJVALUE,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0)) -sum(isnull(a.REJVALUE,0))) end  closevalue"
    strSQL = strSQL + " from (( select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras, 0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE "
    strSQL = strSQL + " from ( select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(fdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.ACTISSKGS,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.ACTISSKGS,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(fdate, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(fdate, "YYYY/MM/DD") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt <'" & Format(fdate, "YYYY-MM-DD") & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT "
    strSQL = strSQL + " union "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales, 0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(ACTISSKGS,0))),3) AS rejkgs,0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(ACTISSKGS,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS ACTISSkgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Format(fdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') and e.lotdt >'" & Format(fdate, "YYYY-MM-DD") & "' and Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue,0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG "
    strSQL = strSQL + " Union "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(fdate, "yyyy-mm-dd") & "' and '" & Format(TDate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(TDate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg"
    strSQL = strSQL + " ))a,rm_lot b where a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt"
        
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'"
     
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    DB.Execute "INSERT INTO Temp_AduitReport values (6,'Actual Closing as per Stock Statement'," & IIf(IsNull(val(Rs(0))), 0, Rs(0)) + IIf(IsNull(val(Rs(1))), 0, Rs(1)) & "," & IIf(IsNull(val(Rs(2))), 0, Rs(2)) & "," & IIf(IsNull(val(Rs(3))), 0, Rs(3)) & ")"
    
    dblBQty = dblQty - IIf(IsNull(val(Rs(0))), 0, Rs(0)) + IIf(IsNull(val(Rs(1))), 0, Rs(1))
    dblBKgs = dblKgs - IIf(IsNull(val(Rs(2))), 0, Rs(2))
    dblBvalue = dblValue - IIf(IsNull(val(Rs(3))), 0, Rs(3))
    

Exit Sub
AduitReport_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure AduitReport of Form frmAduitreport", vbInformation, head
Screen.MousePointer = 0
End Sub
