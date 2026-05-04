VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form ExceptionReport 
   Caption         =   "Exception Report"
   ClientHeight    =   7680
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11970
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7680
   ScaleWidth      =   11970
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR 
      Left            =   30
      Top             =   90
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame1 
      Height          =   5865
      Left            =   630
      TabIndex        =   8
      Top             =   750
      Width           =   10635
      Begin VB.CommandButton cmdPrint 
         BackColor       =   &H00C0C0FF&
         Caption         =   "&Print"
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
         Left            =   7680
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   690
         Width           =   1335
      End
      Begin VB.CommandButton Command3 
         BackColor       =   &H00C0C0FF&
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
         Left            =   9150
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   690
         Width           =   1335
      End
      Begin VB.TextBox txtQty 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   315
         Left            =   9300
         TabIndex        =   2
         ToolTipText     =   "Enter the value"
         Top             =   210
         Width           =   1155
      End
      Begin VB.ComboBox cboCondtion 
         Height          =   315
         ItemData        =   "ExceptionQry.frx":0000
         Left            =   5460
         List            =   "ExceptionQry.frx":0016
         TabIndex        =   1
         Top             =   240
         Width           =   2475
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0C0FF&
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
         Left            =   6240
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   690
         Width           =   1275
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00C0C0FF&
         Caption         =   "&Retrieve"
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
         Left            =   4860
         Style           =   1  'Graphical
         TabIndex        =   3
         Top             =   690
         Width           =   1215
      End
      Begin MSDataListLib.DataCombo cboVariety 
         Height          =   360
         Left            =   930
         TabIndex        =   0
         Top             =   210
         Width           =   2910
         _ExtentX        =   5133
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
      Begin MSDataGridLib.DataGrid grdSTOCK 
         Height          =   4605
         Left            =   0
         TabIndex        =   7
         Top             =   1230
         Width           =   10605
         _ExtentX        =   18706
         _ExtentY        =   8123
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   19
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.Label Variety 
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   210
         TabIndex        =   12
         Top             =   300
         Width           =   765
      End
      Begin VB.Label bales 
         Caption         =   "Quantity"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   8490
         TabIndex        =   11
         Top             =   270
         Width           =   1305
      End
      Begin VB.Label Condition 
         Caption         =   "Stock Condition"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   4020
         TabIndex        =   10
         Top             =   270
         Width           =   1455
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6075
      Left            =   450
      TabIndex        =   9
      Top             =   690
      Width           =   10950
      _ExtentX        =   19315
      _ExtentY        =   10716
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "ExceptionQry.frx":00A5
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Exception Report"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   510
      TabIndex        =   13
      Top             =   330
      Width           =   2220
   End
End
Attribute VB_Name = "ExceptionReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim Rs As New Recordset
Dim rsa As New Recordset
Dim rss As New Recordset
Dim rstLoad As New Recordset

Dim rstQuery As New Recordset
Dim strSQL As String
Dim field_count As Integer
Dim Table_Name As String
Dim query_fileds As String
Dim CONDITION_FIELDS As String
Dim ls_alias As String
Dim ldata As DataEnv_genqry
Dim li_tot_col_qry As Long
Dim iSelect, iLenght As Integer
Dim strVariety, strCond As String
Dim ivalue As Double

Private Sub Command1_Click()
    intervalMinutes = -1
On Error GoTo Command1_Click_Error

    If Trim(cboVariety.Text) = "" Or Trim(cboCondtion.Text) = "" Or val(txtQty.Text) = 0 Then
         If Trim(cboVariety.Text) = "" Then
            MsgBox "Please select the Variety from list", vbInformation, head
            cboVariety.SetFocus
            Exit Sub
         End If
         If Trim(cboCondtion.Text) = "" Then
            MsgBox "Please select the Condition from list", vbInformation, head
            cboCondtion.SetFocus
            Exit Sub
         End If
         If Trim(txtQty.Text) = "" Then
            MsgBox "Please enter the Quantity", vbInformation, head
            txtQty.SetFocus
            Exit Sub
         End If
            
    End If
    
    Screen.MousePointer = 11
    iSelect = Len(cboVariety.Text)
    iLenght = InStr(cboVariety.Text, " --") + 3

    strCond = Left(Trim(cboCondtion.Text), InStr(cboCondtion.Text, " -"))
    Call QueryLoad(Right(Trim(cboVariety.Text), iSelect - iLenght), val(txtQty.Text), cboCondtion.ListIndex + 1)
    Call GridAlignment
    cmdprint.Enabled = True
    Screen.MousePointer = 0
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
    Set grdSTOCK.DataSource = Nothing
    cmdprint.Enabled = False
intervalMinutes = -1
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
intervalMinutes = -1
    Unload Me

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Activate()
On Error GoTo Form_Activate_Error
intervalMinutes = -1
    txtQty.SetFocus

Exit Sub
Form_Activate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New Connection
    DB.Open connectstring


    Set rstLoad = New Recordset
    rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
    
    If Not rstLoad.EOF Then
        Set cboVariety.RowSource = rstLoad
        cboVariety.ListField = "SUP"
        rstLoad.MoveFirst
        cboVariety.Text = rstLoad!sup
    End If
    cboVariety.Text = "All"
    cboCondtion.ListIndex = 0
    cmdprint.Enabled = False
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form GenericQry", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdPrint_Click()
On Error GoTo cmdPrint_click_Error
intervalMinutes = -1
    Set Rs = New Recordset
    Rs.Open "Select * from Temp_ExceptionReport", DB, adOpenStatic
    
    If Rs.EOF = False Then
    
        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ExceptionReport.rpt"
        FrmRpt.RptHead = 1
        parameter1 = divname
        FrmRpt.Show
        Screen.MousePointer = 0
        Exit Sub
        Screen.MousePointer = 0
    
    End If
intervalMinutes = -1
Exit Sub
cmdPrint_click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdPrint_click of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub txtQty_KeyPress(KeyAscii As Integer)
On Error GoTo txtQty_KeyPress_Error
intervalMinutes = -1
    Call ToNumberAssign(txtQty, 10, KeyAscii, 10, 0)

Exit Sub
txtQty_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtQty_KeyPress of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub QueryLoad(Varcode As String, bales As Integer, Condition As Integer)
Dim bolVar As Boolean
On Error GoTo QueryLoad_Error
intervalMinutes = -1
    If Varcode = "" Then
        bolVar = True
    Else
        bolVar = False
    End If
    Set rstQuery = New Recordset
    
    strSQL = "Select * from ("
    strSQL = strSQL + " select a.Lotno,a.Lotdt,varname,b.ratekg, case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0)) end as Bales,"
    strSQL = strSQL + " case when sum(isnull(a.opboras,0)) > 0 THEN (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end""No. of Borahs"","
    strSQL = strSQL + " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))-sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) - SUM(ISNULL(A.REJKGS,0)) end""Stock Kgs"" ,"
    strSQL = strSQL + "  case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))-sum(isnull(a.REJVALUE,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0)) -sum(isnull(a.REJVALUE,0))) end as Value"
    strSQL = strSQL + " from (( select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras, 0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE "
    strSQL = strSQL + " from ( select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND (b.lotdt < '" & Format(pdate, "YYYY/MM/DD") & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Format(pdate, "YYYY/MM/DD") & "' AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(pdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.ACTISSKGS,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.ACTISSKGS,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(pdate, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(pdate, "YYYY/MM/DD") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Format(pdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt <'" & Format(pdate, "YYYY-MM-DD") & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT "
    strSQL = strSQL + " union "
    strSQL = strSQL + " select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales, 0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(ACTISSKGS,0))),3) AS rejkgs,0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(ACTISSKGS,0))),3)*cast(ratekg as decimal (12,4))  as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS ACTISSkgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Format(pdate, "YYYY-MM-DD") & "') AND e.DIVCODE='" & Divcode & "' AND (e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "YYYY-MM-DD") & "') and e.lotdt >'" & Format(pdate, "YYYY-MM-DD") & "' and Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue,0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(pdate, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Format(pdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG "
    strSQL = strSQL + " Union "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(pdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(pdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg "
    strSQL = strSQL + " UNION "
    strSQL = strSQL + " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(pdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(pdate, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg"
    strSQL = strSQL + " ))a,rm_lot b,rm_var c where a.varcode=c.varcode and a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt"
    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "'" & IIf(bolVar, "", " And a.varcode = '" & Varcode & "'") & " Group by varname, a.Lotno,a.Lotdt,b.ratekg"
        
    If Condition = 1 Then
        strSQL = strSQL & " )a Where a.value>0 and a.bales >" & bales & " Order By a.lotdt,a.lotno"
    ElseIf Condition = 2 Then
            strSQL = strSQL & " )a Where a.value>0 and a.bales <" & bales & " Order By a.lotdt,a.lotno"
    ElseIf Condition = 3 Then
            strSQL = strSQL & " )a Where a.value>0 and a.bales =" & bales & " Order By a.lotdt,a.lotno"
    ElseIf Condition = 4 Then
            strSQL = strSQL & " )a Where a.value>0 and a.bales <>" & bales & " Order By a.lotdt,a.lotno"
    ElseIf Condition = 5 Then
        strSQL = strSQL & " )a Where a.value>0 and a.bales >=" & bales & " Order By a.lotdt,a.lotno"
    ElseIf Condition = 6 Then
            strSQL = strSQL & " )a Where a.value>0 and a.bales <=" & bales & " Order By a.lotdt,a.lotno"
    Else
            strSQL = strSQL & " )a Where a.value>0 Order By a.lotdt,a.lotno"
    End If
    
    rstQuery.Open strSQL, DB, adOpenStatic
    If rstQuery.EOF = True Then
        Set grdSTOCK.DataSource = rstQuery
        MsgBox "No Record(s) Found", vbInformation, head
        Exit Sub
    End If
    intervalMinutes = -1
    If Table_Exists("Temp_ExceptionReport") Then
        DB.Execute "Drop table Temp_ExceptionReport"
    End If
    
    DB.Execute "Create table Temp_ExceptionReport (Lotno numeric(10),lotdt varchar(10),varname varchar(50),Ratekg numeric(12,4),bale numeric(12), borah numeric(12),stkKgs numeric(15,3),stkValue numeric(15,2))"
        
    Do While Not rstQuery.EOF
        DB.Execute "Insert into Temp_ExceptionReport values(" & rstQuery(0) & ",'" & Format(rstQuery(1), "dd/MM/yy") & "','" & rstQuery(2) & "'," & rstQuery(3) & "," & rstQuery(4) & "," & rstQuery(5) & "," & rstQuery(6) & "," & rstQuery(7) & ")"
        rstQuery.MoveNext
    Loop
    
    Set grdSTOCK.DataSource = rstQuery
intervalMinutes = -1
Exit Sub
QueryLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QueryLoad of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub GridAlignment()
On Error GoTo GridAlignment_Error
intervalMinutes = -1
    grdSTOCK.Columns(0).Caption = "Mill Lot No."
    grdSTOCK.Columns(1).Caption = "Lot Date"
    grdSTOCK.Columns(2).Caption = "Variety"
    grdSTOCK.Columns(3).Caption = "   Rate/Kg"
    grdSTOCK.Columns(4).Caption = "No. of Bales"
    'grdSTOCK.Columns(5).Caption = "No. of Borahs"
    grdSTOCK.Columns(5).Caption = "No. of Bales"
    grdSTOCK.Columns(6).Caption = "    Stock Kgs"
    grdSTOCK.Columns(7).Caption = "   Stock Value"

    grdSTOCK.Columns(0).Width = 1200   'Lot No
    grdSTOCK.Columns(1).Width = 1050   'Lot Date
    grdSTOCK.Columns(2).Width = 1125   'variety
    grdSTOCK.Columns(3).Width = 1100   'Rate/kg
    grdSTOCK.Columns(4).Width = 1350   'Bales
    'grdSTOCK.Columns(5).Width = 1350   'borahs
    grdSTOCK.Columns(5).Width = 0   'borahs
    grdSTOCK.Columns(6).Width = 1350   'stock qty
    grdSTOCK.Columns(7).Width = 1500   'stock kgs

    grdSTOCK.Columns(0).Alignment = dbgLeft
    grdSTOCK.Columns(1).Alignment = dbgLeft
    grdSTOCK.Columns(2).Alignment = dbgLeft
    grdSTOCK.Columns(3).Alignment = dbgRight
    grdSTOCK.Columns(4).Alignment = dbgRight
    grdSTOCK.Columns(5).Alignment = dbgRight
    grdSTOCK.Columns(6).Alignment = dbgRight
    grdSTOCK.Columns(7).Alignment = dbgRight

    grdSTOCK.Columns(6).NumberFormat = "#0.000"
    grdSTOCK.Columns(3).NumberFormat = "#0.0000"
    grdSTOCK.Columns(7).NumberFormat = "#0.00"

Exit Sub
GridAlignment_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GridAlignment of Form ExceptionReport", vbInformation, head
Screen.MousePointer = 0
End Sub
