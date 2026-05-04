VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmbsheetcust_peri 
   Caption         =   " Consolidated Stock On Date"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   1440
      Top             =   6960
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame1 
      Height          =   5835
      Left            =   1800
      TabIndex        =   0
      Top             =   120
      Width           =   9855
      Begin VB.CheckBox Check2 
         Caption         =   "Abstract"
         Height          =   195
         Left            =   7080
         TabIndex        =   13
         Top             =   4680
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H0000FF00&
         Caption         =   "Excel"
         Height          =   495
         Left            =   4560
         MaskColor       =   &H0000FF00&
         TabIndex        =   12
         Top             =   5160
         Width           =   1815
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   4560
         TabIndex        =   10
         Text            =   "Combo1"
         Top             =   4680
         Width           =   2175
      End
      Begin VB.CheckBox Check1 
         Caption         =   "All"
         Height          =   195
         Left            =   240
         TabIndex        =   6
         Top             =   120
         Width           =   1215
      End
      Begin VB.CheckBox Check5 
         Caption         =   "All"
         Height          =   195
         Left            =   240
         TabIndex        =   5
         Top             =   1920
         Width           =   1215
      End
      Begin VB.CommandButton ExitButton 
         BackColor       =   &H00C0FFC0&
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   6480
         Style           =   1  'Graphical
         TabIndex        =   2
         Top             =   5160
         Width           =   1815
      End
      Begin VB.CommandButton StmntButton 
         BackColor       =   &H00FFFFC0&
         Caption         =   "Report"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   2640
         Style           =   1  'Graphical
         TabIndex        =   1
         Top             =   5160
         Width           =   1815
      End
      Begin MSComctlLib.ListView lv_div 
         Height          =   2100
         Left            =   240
         TabIndex        =   3
         Top             =   2160
         Width           =   9180
         _ExtentX        =   16193
         _ExtentY        =   3704
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Division Name "
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView Lv_com 
         Height          =   1500
         Left            =   240
         TabIndex        =   7
         Top             =   360
         Width           =   9180
         _ExtentX        =   16193
         _ExtentY        =   2646
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Company Name "
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Index           =   0
         Left            =   4560
         TabIndex        =   8
         Top             =   4320
         Width           =   1260
         _ExtentX        =   2223
         _ExtentY        =   556
         _Version        =   393216
         CalendarForeColor=   -2147483640
         Format          =   156303361
         CurrentDate     =   36193
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Type"
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
         Left            =   2880
         TabIndex        =   11
         Top             =   4680
         Width           =   435
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Stock on Date"
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
         Left            =   2880
         TabIndex        =   9
         Top             =   4320
         Width           =   1245
      End
   End
   Begin Crystal.CrystalReport CR1 
      Left            =   1890
      Top             =   5235
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      PrintFileLinesPerPage=   60
      WindowShowPrintSetupBtn=   -1  'True
      WindowShowRefreshBtn=   -1  'True
   End
   Begin VB.PictureBox KslCompanySelection3 
      Height          =   1095
      Left            =   2520
      ScaleHeight     =   1035
      ScaleWidth      =   4395
      TabIndex        =   4
      Top             =   3630
      Visible         =   0   'False
      Width           =   4455
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   495
      Left            =   -240
      Top             =   5880
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   873
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc2"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   510
      Left            =   1140
      Top             =   5895
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   900
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=ventura;Data Source=kss"
      OLEDBString     =   "Provider=SQLOLEDB.1;Persist Security Info=False;User ID=sa;Initial Catalog=ventura;Data Source=kss"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
End
Attribute VB_Name = "frmbsheetcust_peri"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim DB As Connection
Dim c As Connection
Dim YrMn As String
Dim ym As String
Dim YrMn1 As String
Dim ster As String
Public disdt As Date
Dim RecTypeRs As Recordset
Dim a1
Dim A2
Dim Crys1 As clsCrystal
Dim Myxl As Excel.Application
Private Sub Check1_Click()
intervalMinutes = -1
If Check1.value = 1 Then
    For I = 1 To Lv_com.ListItems.Count ' - 1
        Lv_com.ListItems.Item(I).Checked = True
    Next I
    For I = 1 To lv_div.ListItems.Count ' - 1
        lv_div.ListItems.Item(I).Checked = True
    Next I
    Check5.value = 1
ElseIf Check1.value = 0 Then
    For I = 1 To Lv_com.ListItems.Count '- 1
        Lv_com.ListItems.Item(I).Checked = False
    Next I
       For I = 1 To lv_div.ListItems.Count '- 1
        lv_div.ListItems.Item(I).Checked = False
    Next I
    Check5.value = 0
End If
intervalMinutes = -1
End Sub
Private Sub Check2_Click()
If Check1.value = 1 Then Check1.value = 0
intervalMinutes = -1
End Sub

Private Sub Check5_Click()
intervalMinutes = -1
If Check5.value = 1 Then
    For I = 1 To lv_div.ListItems.Count ' - 1
        lv_div.ListItems.Item(I).Checked = True
    Next I
ElseIf Check5.value = 0 Then
    For I = 1 To lv_div.ListItems.Count '- 1
        lv_div.ListItems.Item(I).Checked = False
    Next I
End If
intervalMinutes = -1
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
        tmpFile = "Agewise Consolidated stock statement"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        'Create the Excel Application Object.
        '11.05.15
        Set Myxl = New Excel.Application
       ' Set Myxl = New ET.Application
        
        'Create new Excel Workbook
        Set XLBook = Myxl.Workbooks.ADD
        Set XLSheet = XLBook.Worksheets(1)
        Myxl.Worksheets(1).Name = "ArrivalDatewise"
        intervalMinutes = -1
        ExcelConvertStock
        intervalMinutes = -1

End Sub

Private Sub Command2_Click()

End Sub

Private Sub ExitButton_Click()
intervalMinutes = -1
    Unload Me
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Call Fill_compList
    Call Fill_DivList
    DTPicker1(0).MinDate = yfdate
    DTPicker1(0).maxdate = pdate
    DTPicker1(0).value = pdate
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    Set c = New Connection
    c.CursorLocation = adUseClient
    c.Open connectstring
    ym = ""
    '
    Check1.value = 1
    Check5.value = 2
    Set rsym = New Recordset
    rsym.Open "select ayear from pp_year where ayfdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and   ayldate<='" & Format(yldate, "yyyy-mm-dd") & "'", DB
  
   
    Set RecTypeRs = New Recordset
    RecTypeRs.Open " Select  'ALL  -  ALL' as Type from RM_Lot " & _
                       " UNION Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype oRDER BY tYPE", DB, adOpenStatic, adLockBatchOptimistic
    Combo1.Clear
    I = 0
    While Not RecTypeRs.EOF
            Combo1.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
    Wend
    Combo1.AddItem "ALL  -  ALL"
    If Combo1.ListCount > 0 Then Combo1.ListIndex = 0
        
  intervalMinutes = -1
       
End Sub
Public Sub REPPROC9(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, AD As Object, cb1 As Object, cb2 As Object)
WindowState = 2
intervalMinutes = -1
AD.ConnectionString = connectstring
If Repindex = 2 Then
    AD.RecordSource = "SELECT  distinct " & codname & "+' - '+" & cod & " fld," & cod & "  FROM(SELECT A.ITEMCODE,  0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0)))  ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,MACNO FROM IN_TRNTAIL A,IN_TC T  WHERE A.DIVCODE = '" & Divcode & "' AND A.TC=T.TC AND (TCTYPE = 4)  GROUP BY A.ITEMCODE,MACNO  UNION ALL    SELECT A.ITEMCODE, 0 AS ALLREC, 0 AS ALLISS, 0 AS TOTQC,  SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,MACNO FROM IN_TRNTAIL A,IN_TC T  WHERE A.DIVCODE = '" & Divcode & "' " & _
    "AND A.TC=T.TC AND (TCTYPE = 3) GROUP BY A.ITEMCODE,MACNO) X    ,in_MAC g,in_item i  where X.MACNO = g.MACNO and x.itemcode=i.itemcode GROUP BY g.MACNO,g.MACDES,x.MACNO,X.ITEMCODE,i.itemname, I.UOM,i.rate,i.catcode HAVING (i.catcode = '" & Opt & "') and  SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) <> 0  ORDER BY " & cod & ""
    'AD.RecordSource = "SELECT  distinct " & codname & "+' - '+" & cod & " fld   FROM(SELECT A.ITEMCODE,  0 AS ALLREC, SUM(ABS(isnull(A.QUANTITY,0)))  ALLISS, 0 AS TOTQC, 0 AS REC, 0 AS ISS,MACNO FROM IN_TRNTAIL A,IN_TC T  WHERE A.DIVCODE = '" & divcode & "' AND A.TC=T.TC AND (TCTYPE = 4)  GROUP BY A.ITEMCODE,MACNO  UNION ALL    SELECT A.ITEMCODE, 0 AS ALLREC, 0 AS ALLISS, 0 AS TOTQC,  SUM(isnull(A.QUANTITY,0)) AS REC, 0 AS ISS,MACNO FROM IN_TRNTAIL A,IN_TC T  WHERE A.DIVCODE = '" & divcode & "' " & _
    "AND A.TC=T.TC AND (TCTYPE = 3) GROUP BY A.ITEMCODE,MACNO) X    ,in_MAC g,in_item i  where X.MACNO = g.MACNO and x.itemcode=i.itemcode GROUP BY g.MACNO,g.MACDES,x.MACNO,X.ITEMCODE,i.itemname, I.UOM,i.rate,i.catcode HAVING (i.catcode = '" & Opt & "') and  SUM(X.ALLREC-X.ALLISS-X.REC+X.ISS) <> 0 OR SUM(X.REC) <> 0 OR  SUM(X.ISS) <> 0 OR SUM(X.ALLREC-X.ALLISS) <> 0 OR SUM(X.TOTQC) <> 0  ORDER BY FLD"
ElseIf cod = "a.slcode" Or cod = "itemcode" Or cod = "grpcode" Or cod = "depcode" Or cod = "str(cccode)" Or cod = "cast(depcode as varchar)" Then
    AD.RecordSource = "select distinct " & codname & "+' - '+" & cod & " fld ," & cod & " from " & recsource & " order by " & cod & ""
Else
    AD.RecordSource = "select distinct " & codname & "+' - '+" & cod & " fld  from " & recsource & " order by 1"
    'AD.RecordSource = "select distinct " & codname & "+' - '+" & cod & " fld  from " & recsource & " order by 1"

End If
intervalMinutes = -1
AD.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
Set cb1.RowSource = AD
Set cb2.RowSource = AD
cb1.ListField = "fld"
cb2.ListField = "fld"
If Not AD.Recordset.BOF Then
    AD.Recordset.MoveFirst
    cb1.Text = AD.Recordset(0)
    AD.Recordset.MoveLast
    cb2.Text = AD.Recordset(0)
End If
  intervalMinutes = -1
Exit Sub


End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Lv_com_Click()
intervalMinutes = -1
ster = ""
      For I = 1 To Lv_com.ListItems.Count
        If Lv_com.ListItems.Item(I).Checked Then
             ster = ster & Trim(Lv_com.ListItems(I).SubItems(1)) & ""
        End If
    Next I
If Trim(ster) = 1 Then
    Dim MyConn As Connection
    Set MyConn = New Connection
    MyConn.CursorLocation = adUseClient
    MyConn.Open "Provider=MSDASQL;" & connectstring
        Dim temprs As Recordset
        Set temprs = New Recordset
        temprs.Open "select *  from dbo.pp_divmas", MyConn, adOpenStatic, adLockReadOnly
        lv_div.ListItems.Clear
        'lv_div.clear
        Dim li As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
              'lv_div.AddItem temprs!divname & "-" & temprs!Divcode
                     Set l1 = lv_div.ListItems.ADD(, , temprs!divname)
                            lv_div.ListItems(lv_div.ListItems.Count).ListSubItems.ADD , , temprs!Divcode
                temprs.MoveNext
            Loop
        temprs.Close
    End If
    MyConn.Close
'ElseIf Trim(ster) = 2 Then
'    Dim MyConn1 As Connection
'    Set MyConn1 = New Connection
'    MyConn1.CursorLocation = adUseClient
'    MyConn1.Open "Provider=MSDASQL;" & connectstring
'        Dim temprs1 As Recordset
'        Set temprs1 = New Recordset
'        temprs1.Open "select *  from Sricheran.dbo.pp_divmas", MyConn1, adOpenStatic, adLockReadOnly
'        lv_div.ListItems.Clear
'        'lv_div.clear
'        Dim li1 As ListItem
'        If temprs1.RecordCount > 0 Then
'            Do While Not temprs1.EOF
'              'lv_div.AddItem temprs!divname & "-" & temprs!Divcode
'                     Set l11 = lv_div.ListItems.ADD(, , temprs1!divname)
'                            lv_div.ListItems(lv_div.ListItems.Count).ListSubItems.ADD , , temprs1!Divcode
'                temprs1.MoveNext
'            Loop
'        temprs1.Close
'    End If
'    MyConn1.Close
Else
    Dim MyConn2 As Connection
    Set MyConn2 = New Connection
    MyConn2.CursorLocation = adUseClient
    MyConn2.Open "Provider=MSDASQL;" & connectstring
        Dim temprs2 As Recordset
        Set temprs2 = New Recordset
'        temprs2.Open "select *  from pallavaa.dbo.pp_divmas union all select * from Sricheran.dbo.pp_divmas", MyConn2, adOpenStatic, adLockReadOnly
        temprs2.Open "select * from pp_divmas", MyConn2, adOpenStatic, adLockReadOnly
        lv_div.ListItems.Clear
        'lv_div.clear
        Dim li2 As ListItem
        If temprs2.RecordCount > 0 Then
            Do While Not temprs2.EOF
                     Set l12 = lv_div.ListItems.ADD(, , temprs2!divname)
                            lv_div.ListItems(lv_div.ListItems.Count).ListSubItems.ADD , , temprs2!Divcode
                temprs2.MoveNext
            Loop
        temprs2.Close
    End If
    MyConn2.Close

End If
intervalMinutes = -1
    
End Sub

Private Sub ShowButton_Click()
    
'    Dim DIVCO As String
'    DIVCO = ""
'    For i = 1 To lv_div.ListItems.count
'        If lv_div.ListItems.item(i).Checked Then
'             DIVCO = DIVCO & ",'" & lv_div.ListItems(i).SubItems(1) & "'"
'        End If
'    Next i
'    DIVCO = "(" & Mid(DIVCO, 2) & ")"
'
'        If Check1.value = 1 Then
'            Call BscryschDIVfrCUSTSCM(DTPicker1.value, DTPicker2.value, " NOT IN ", "PROFIT AND LOSS - SCHEDULE", DIVCO)
'        ElseIf Check2.value = 1 Then
'            Call BscryschDIVfrCUST(DTPicker1.value, DTPicker2.value, " IN ", "BALANCE SHEET - SCHEDULE", DIVCO)
'        Else
'            'Unload Me
'        End If
    
End Sub

Public Sub BsStmntCRYdivfrCUST(Y As String, Y1 As String, Cnd As String, Hd As String, div As String)
'periodical2
intervalMinutes = -1
Dim p As Integer
Dim c As Connection
Dim z As Integer
Dim M1, M2
Dim h As String
Dim Rs As Recordset
Dim Rsbs As Recordset
Dim RsTmp As Recordset
Dim RsUptCur As Recordset
Dim FC, FP, UC, UP
Dim TOTFC, TOTFP, TOTUC, TOTUP
Dim FinTot1, FinTot2, FinTot3, FinTot4
Dim FinTot11, FinTot22, FinTot33, FinTot44
Dim yflg As Boolean
Dim pm
Dim cnt As Integer
Dim VL1
Dim VL2
    
   On Error GoTo BsStmntCRYdiv_Error

    z = 1
    cnt = 0
    p = 0

    Set c = New Connection
    c.Open connectstring
    h = Hd
    
'    If Right(Y, 2) = "01" Then
'        PM = Format(Left(Y, 4) - 1, "0000") & "12"
'    Else
'        PM = Left(Y, 4) & Format(val(Right(Y, 2)) - 1, "00")
'    End If
'
'
'    If (Trim(Year(yfdate)) = Trim(Left(Y, 4))) And (Trim(Right(PM, 2)) = "03") Then
'            yflg = True
'    Else
'            yflg = False
'    End If
    
    
    If div <> "00" Then
        strbDiv = " b.Divcode IN  " & div & " AND "
        strDiv = " Divcode IN " & div & " AND "
    Else
        strbDiv = ""
        strDiv = ""
    End If
    
'
'    Call GenBALSHEETCRYdivfrCUST(DTPicker1.value, DTPicker2.value, DTPicker1.value, DTPicker2.value, Cnd, div)
    c.Execute "DELETE FROM TBSST"
    
    
        yrmon = "" 'Year(M) & "00"
        yrmon = Year(DTPicker2.value) & "00"
    
    Set Rsbs = New Recordset
    Rsbs.Open "SELECT DISTINCT SCCODE,SCNAME FROM TBS2 ORDER BY Sccode", c, adOpenStatic
    
    Rsbs.MoveFirst
    
    While Not Rsbs.EOF
       Set RsUptCur = New Recordset
       
       If Rsbs("sccode") = 23050000 Then
          '' 'RsUptCur.Open "SELECT GLCODE,GLHEAD,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions1,0)) FROM TBS2 WHERE Sccode = '" & Rsbs(0) & "' AND YM <= '" & Year(yfdate) & "04" & "'  GROUP BY GLCODE,GLHEAD ORDER BY GLCODE", c, adOpenStatic
       Else
           If Trim(Cnd) = "IN" Then
                RsUptCur.Open "SELECT GLCODE,GLHEAD,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions,0)) FROM TBS2 WHERE Sccode = '" & Rsbs(0) & "' AND YM='" & yrmon & "'  GROUP BY GLCODE,GLHEAD ORDER BY GLCODE", c, adOpenStatic
           Else
    '           'p& l correct
                RsUptCur.Open "SELECT GLCODE,GLHEAD,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions,0)) FROM TBS2 WHERE Sccode = '" & Rsbs(0) & "' AND YM='" & yrmon & "'  GROUP BY GLCODE,GLHEAD ORDER BY GLCODE", c, adOpenStatic
           End If
       End If
               
        
        If RsUptCur.RecordCount > 0 Then
                RsUptCur.MoveFirst
                
                While Not RsUptCur.EOF
                    
'                    If yflg = False Then
'
'                        Set RsTmp = New Recordset
'
'                       If Rsbs("sccode") = 23050000 Then
'                            '''RsTmp.Open "SELECT GLCODE,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions2,0))  FROM TBS1 WHERE SCCODE = '" & Rsbs(0) & "' AND Ym <= '" & Year(yfdate) & "04" & "' AND GLCODE='" & RsUptCur("Glcode") & "' GROUP BY GLCODE ORDER BY GLCODE", c, adOpenStatic
'                       Else
'                            RsTmp.Open "SELECT GLCODE,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions2,0))  FROM TBS2 WHERE SCCODE = '" & Rsbs(0) & "' AND Ym <= '" & PM & "' AND GLCODE='" & RsUptCur("Glcode") & "' GROUP BY GLCODE ORDER BY GLCODE", c, adOpenStatic
'                       End If
'
'                        If RsTmp.RecordCount > 0 Then
'                            UP = IIf(IsNull(RsTmp(1)), 0, RsTmp(1))
'                        Else
'                            UP = 0
'                        End If
'                    Else
'                            UP = 0
'                    End If

                    
'                  Set RsTmp = New Recordset
'
'                  If Trim(Cnd) = "IN" Then
'                      RsTmp.Open "SELECT GLCODE,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions,0))  FROM TBS2 WHERE SCCODE = '" & Rsbs(0) & "' AND ((Ym >= '" & Y & "' AND YM<='" & y1 & "') OR YM='" & Year(yfdate) & "00" & "') AND GLCODE='" & RsUptCur("Glcode") & "' GROUP BY GLCODE ORDER BY GLCODE", c, adOpenStatic
'                  Else
''                    'p&l correct
'                      RsTmp.Open "SELECT GLCODE,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions,0))  FROM TBS2 WHERE SCCODE = '" & Rsbs(0) & "' AND Ym >= '" & Y & "' AND YM<='" & y1 & "' AND GLCODE='" & RsUptCur("Glcode") & "' GROUP BY GLCODE ORDER BY GLCODE", c, adOpenStatic
'                  End If
                  
'                    If RsTmp.RecordCount > 0 Then
'                        FC = IIf(IsNull(RsTmp(1)), 0, RsTmp(1))
'                    Else
'                        FC = 0
'                    End If
                    
'
'                    If yflg = False Then
'                        Set RsTmp = New Recordset
'                         RsTmp.Open "SELECT GLCODE,SUM(ISNULL(AMOUNT,0))+SUM(ISNULL(provisions,0)) FROM TBS2 WHERE SCCODE = '" & Rsbs(0) & "' AND Ym = '" & PM & "' AND GLCODE='" & RsUptCur("Glcode") & "' GROUP BY GLCODE ORDER BY GLCODE", c, adOpenStatic
'
'                        If RsTmp.RecordCount > 0 Then
'                            FP = IIf(IsNull(RsTmp(1)), 0, RsTmp(1))
'                        Else
'                            FP = 0
'                        End If
'                    Else
'                            FP = 0
'                    End If
'
                    
                    TOTUC = val(TOTUC) + IIf(IsNull(RsUptCur(2)), 0, val(RsUptCur(2)))
                    
                    TOTUP = 0
                    TOTFC = 0
                    TOTFP = 0
                    
                    
'                    TOTUP = val(TOTUP) + IIf(IsNull(UP), 0, val(UP))
'                    TOTFC = val(TOTFC) + IIf(IsNull(FC), 0, val(FC))
'                    TOTFP = val(TOTFP) + IIf(IsNull(FP), 0, val(FP))
'
                RsUptCur.MoveNext
                Wend
        End If
            
       ' c.Execute "INSERT INTO TBSST VALUES ('" & Rsbs("SCCODE") & "','" & Rsbs("SCNAME") & "'," & val(TOTUC) & "," & val(TOTUP) & "," & val(TOTFC) & "," & val(TOTFP) & ")"
       
         c.Execute "INSERT INTO TBSST VALUES ('" & Rsbs("SCCODE") & "','" & Rsbs("SCNAME") & "'," & val(TOTUC) & "," & val(TOTUP) & "," & val(TOTUC) & "," & val(TOTFP) & ")"
        
    TOTUC = 0
    TOTUP = 0
    TOTFC = 0
    TOTFP = 0
    
    Rsbs.MoveNext
    Wend

''      Printing Part
 
    FinTot1 = 0
    FinTot2 = 0
    FinTot3 = 0
    FinTot4 = 0
    FinTot11 = 0
    FinTot22 = 0
    FinTot33 = 0
    FinTot44 = 0
        
    Set Rs = New Recordset
    Rs.Open "select * from pp_divmas where DIVCODE='" & Divcode & "' ", c, adOpenDynamic, adLockOptimistic
    
   If Trim(Cnd) <> "IN" Then
    'UPTO DATE
    Set RsTmp = New Recordset
    RsTmp.Open "SELECT SUM(ISNULL(UC,0)) FROM TBSST WHERE SUBSTRING(SCCODE,1,1) LIKE '3%'", connectstring, adOpenStatic
    FinTot11 = IIf(IsNull(RsTmp(0).value), 0, RsTmp(0).value)
    
    Set RsTmp = New Recordset
    RsTmp.Open "SELECT SUM(ISNULL(UC,0)) FROM TBSST WHERE SUBSTRING(SCCODE,1,1) LIKE '4%'", connectstring, adOpenStatic
    
    FinTot22 = RsTmp(0).value
    VL = Abs(FinTot22) - Abs(FinTot11)
    
    If val(VL) < 0 Then
       VL1 = "NET PROFIT " & Space(2 + 4) & Padl(INF(Abs(VL), 2), 25, " ")
    Else
        VL1 = "NET LOSS  " & Space(2 + 4) & Padl(INF(Abs(VL), 2), 25, " ")
    End If
    
   
'
'    'CURR DATE
'             Set RsTmp = New Recordset
'             RsTmp.Open "SELECT SUM(ISNULL(Debit,0))-SUM(ISNULL(Credit,0))+SUM(ISNULL(PROVISIONS,0)) FROM FA_GLBAL WHERE divcode='" & Divcode & "' and SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND YEARMONTH = '" & Y & "'", connectstring, adOpenStatic
'
'             VL = IIf(IsNull(RsTmp(0)), 0, RsTmp(0))
'
'             If val(VL) < 0 Then
'                VL2 = "NET PROFIT  " & Padr("FOR  " & UCase(Mid(Combo1.text, 1, 3)), 8, " ") & Space(2) & Padl(INF(Abs(VL), 2), 25, " ")
'             Else
'               VL2 = "NET LOSS  " & Padr("FOR  " & UCase(Mid(Combo1.text, 1, 3)), 8, " ") & Space(2) & Padl(INF(Abs(VL), 2), 25, " ")
'             End If

    End If
   
    
      
   If Trim(Cnd) = "IN" Then
        
        Dim Crys1 As clsCrystal
        Set Crys1 = New clsCrystal
        Set Crys1.cryRept = BSSTAT1DIVfr
        Crys1.CrystalPrint
        CR1.Reset
        CR1.Connect = connectstring
        CR1.ReportFileName = KALFOLDERDATA & "RepFA.rpt"


'     a1 = "From " + Trim(DTPicker1.value)
'     a2 = "AS ON " + Trim(CStr(DTPicker2.value))
     CR1.WindowShowPrintSetupBtn = True
'     CR1.Formulas(0) = "mon1='" & Trim(DTPicker1.value) & "'"
'     CR1.Formulas(1) = "div1='" & Trim(Rs(1).value) & "'"
'     CR1.Formulas(2) = "mon2='" & DTPicker2.value & "'"
     CR1.WindowState = crptMaximized
     CR1.Action = 1
     
   Else
 
        Set Crys1 = New clsCrystal
        Set Crys1.cryRept = plstat1DIVfr
        Crys1.CrystalPrint
        CR1.Reset
        CR1.Connect = connectstring
        CR1.ReportFileName = KALFOLDERDATA & "RepFA.rpt"
     
'        a1 = "From " + Trim(DTPicker1.value)
'        a2 = "to " + Trim(DTPicker2.value)
'
        CR1.WindowShowPrintSetupBtn = True
        CR1.Formulas(0) = "mon1='" & Trim(a1) & "'"
        CR1.Formulas(1) = "div='" & Trim(Rs(1).value) & "'"
        CR1.Formulas(2) = "PL1='" & VL1 & "'"
        CR1.Formulas(3) = "PL2='" & 0 & "'" 'Trim(VL2)
        CR1.Formulas(4) = "mon2='" & Trim(A2) & "'"
     
        CR1.WindowState = crptMaximized
        CR1.Action = 1
   End If
   
intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

BsStmntCRYdiv_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BsStmntCRYdiv of Form frmbsheet1"
    
End Sub
Private Sub GenBALSHEETCRYdivfrCUST(yr As String, m As String, YR1 As String, M1 As String, cond As String, div As String)
'periodical -1.1
Dim Rs As Recordset
Dim I As Integer
Dim sql As String
Dim GLC, GLH, DRSCH, CRSCH, amt, sch, AC
Dim yrmon As String
Dim yrmon1 As String

Dim pmdate As Date
Dim pm1date As Date
Dim rf1 As Recordset
Dim rf2 As Recordset
Dim rf3 As Recordset
Dim rf4 As Recordset
intervalMinutes = -1

   'On Error GoTo GenBALSHEETCRYdiv_Error
    
    If div <> "00" Then
        strbDiv = " b.Divcode IN  " & div & " AND "
        strDiv = " Divcode IN " & div & " AND "
    Else
        strbDiv = ""
        strDiv = ""
    End If

        On Error Resume Next
        c.Execute "alter table    TBS1 drop column flg "
        c.Execute "alter table    tbs2 drop column flg"
        On Error Resume Next
        c.Execute "DELETE FROM TBS1"
        c.Execute "DELETE FROM TBSSLBAL"

        YearFirst = Year(yfdate) & "00"
        YearOpening = Year(yfdate) & "04"

        yrmon = "" 'Year(M) & "00"
        yrmon = Year(m) & "00"
        
        'yrmon1 = YR1 & Format(M1, "00")
        
        
'        YrMon = Yr & Format(M, "00")
'        yrmon1 = YR1 & Format(M1, "00")
'        pm1date = Format(("01/" & Right(YrMon, 2) & "/" & Left(YrMon & M, 4)), "dd/mm/yyyy")
'        pmdate = Format(("01/" & Right(yrmon1, 2) & "/" & Left(yrmon1 & M, 4)), "dd/mm/yyyy")
'
'        d1 = DateAdd("d", -1 * Day(DateAdd("m", 1, pm1date)), DateAdd("m", 1, pm1date))
'        D2 = DateAdd("d", -1 * Day(DateAdd("m", 1, pmdate)), DateAdd("m", 1, pmdate))
'        disdt = DateAdd("d", -1 * Day(DateAdd("m", 1, pmdate)), DateAdd("m", 1, pmdate))


        If Trim(cond) = "IN" Then
'
'            ''''     BALANCE SHEET
''
'GL TRNA
  sql = ""
            sql = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
            sql = sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
            sql = sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) "
            sql = sql & "END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT '" & yrmon & "' as YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)),PROVISIONS=0,provisions1=0,provisions2=0 "
            sql = sql & " FROM FA_GLMAS A,FA_CGTRN B WHERE  " & strbDiv & "  A.GLCODE = B.GLCODE AND SUBSTRING(B.GLCODE,1,1)" & cond & "('1','2') AND ((VOCDT  between '" & Format(yr, "yyyy-mm-dd") & "' and  '" & Format(m, "yyyy-mm-dd") & "')) "
            sql = sql & " and a.glcode not in (select distinct GLCODE from fa_PRTY) "
            sql = sql & " and a.glcode not in (select distinct accode from fa_prvl1 where  " & strDiv & "  docdt>='" & Format(yr, "yyyy-mm-dd") & "' and docdt<='" & Format(m, "yyyy-mm-dd") & "') "
            sql = sql & " GROUP BY A.GLCODE "
            sql = sql & "HAVING SUM(ISNULL(B.DEBIT,0)) > 0 OR SUM(ISNULL(B.CREDIT,0)) > 0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"
            
'provision
            sql1 = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.PROVISIONS >0  THEN 'DR' ELSE 'CR' END) BAL,(CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
            sql1 = sql1 & " (CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE))END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 "
            sql1 = sql1 & " From (SELECT '" & yrmon & "' AS YEARMONTH,A.GLCODE,0 AS AMOUNT,PROVISIONS = SUM(ISNULL(B.DEBIT,0)),0 AS provisions1,0 AS provisions2 FROM FA_GLMAS A,FA_PRVL1 B WHERE  " & strDiv & "  A.GLCODE = B.ACCODE AND SUBSTRING(B.ACCODE,1,1) IN ('1','2') AND   B.docdt='" & Format(m, "yyyy-mm-dd") & "' GROUP BY A.GLCODE "
            sql1 = sql1 & " ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE "
            
          ''opening
            Sql2 = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
            Sql2 = Sql2 & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
            Sql2 = Sql2 & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) "
            Sql2 = Sql2 & "END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT '" & yrmon & "' as YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)),PROVISIONS=0,provisions1=0,provisions2=0 "
            Sql2 = Sql2 & " FROM FA_GLMAS A,FA_GLBAL B WHERE  " & strbDiv & "  A.GLCODE = B.GLCODE AND SUBSTRING(B.GLCODE,1,1)" & cond & "('1','2') AND YEARMONTH ='" & YearFirst & "' "
            Sql2 = Sql2 & " and a.glcode not in (select distinct GLCODE from fa_PRTY) "
            Sql2 = Sql2 & " GROUP BY B.YEARMONTH,A.GLCODE "
            Sql2 = Sql2 & "HAVING SUM(ISNULL(B.DEBIT,0)) > 0 OR SUM(ISNULL(B.CREDIT,0)) > 0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"
          ''
                        
            'SL
            SQL3 = "SELECT '" & Divcode & "' AS DIVCODE,B.SLCODE, '" & yrmon & "' AS YEARMONTH,SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)) AS DEBIT,0 AS CREDIT ,0 AS PROVISIONS FROM FA_PRTY A,FA_CSTRN B "
            SQL3 = SQL3 & " WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND ((VOCDT  between '" & Format(yr, "yyyy-mm-dd") & "' and  '" & Format(m, "yyyy-mm-dd") & "')) "
            SQL3 = SQL3 & " GROUP BY B.SLCODE HAVING SUM(ISNULL(B.DEBIT,0))-SUM(ISNULL(B.CREDIT,0))>0  "
            SQL3 = SQL3 & " UNION ALL SELECT '" & Divcode & "' AS DIVCODE,B.SLCODE, '" & yrmon & "' AS YEARMONTH,0 AS DEBIT,SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)) AS CREDIT ,0 AS PROVISIONS FROM FA_PRTY A,FA_CSTRN B "
            SQL3 = SQL3 & " WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND (VOCDT between '" & Format(yr, "yyyy-mm-dd") & "' and  '" & Format(m, "yyyy-mm-dd") & "') "
            SQL3 = SQL3 & " GROUP BY B.SLCODE HAVING SUM(ISNULL(B.DEBIT,0))-SUM(ISNULL(B.CREDIT,0))<0 ORDER BY B.SLCODE "
            
            'SL OPENING
            SQL31 = "SELECT '" & Divcode & "' AS DIVCODE,B.SLCODE, '" & yrmon & "' AS YEARMONTH,SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)) AS DEBIT,0 AS CREDIT ,0 AS PROVISIONS FROM FA_PRTY A,FA_SLBAL B "
            SQL31 = SQL31 & " WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND YEARMONTH ='" & YearFirst & "' "
            SQL31 = SQL31 & " GROUP BY B.SLCODE HAVING SUM(ISNULL(B.DEBIT,0))-SUM(ISNULL(B.CREDIT,0))>0  "
            SQL31 = SQL31 & " UNION ALL SELECT '" & Divcode & "' AS DIVCODE,B.SLCODE, '" & yrmon & "' AS YEARMONTH,0 AS DEBIT,SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)) AS CREDIT ,0 AS PROVISIONS FROM FA_PRTY A,FA_SLBAL B "
            SQL31 = SQL31 & " WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND  YEARMONTH ='" & YearFirst & " "
            SQL31 = SQL31 & " GROUP BY B.SLCODE HAVING SUM(ISNULL(B.DEBIT,0))-SUM(ISNULL(B.CREDIT,0))<0 ORDER BY B.SLCODE "
            

            c.Execute "INSERT INTO TBSSLBAL " & SQL3
            c.Execute "INSERT INTO TBSSLBAL " & SQL31

            sql4 = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
            sql4 = sql4 & " (CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
            sql4 = sql4 & " (CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) "
            sql4 = sql4 & " END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT B.YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) ,PROVISIONS=0,provisions1=0,provisions2=0 "
            sql4 = sql4 & " FROM FA_PRTY A,TBSSLBAL B WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND  YEARMONTH ='" & yrmon & "'  "
            sql4 = sql4 & " GROUP BY B.YEARMONTH,A.GLCODE HAVING SUM(ISNULL(B.DEBIT,0))-SUM(ISNULL(B.CREDIT,0))>0 "
            sql4 = sql4 & " UNION ALL SELECT B.YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.CREDIT,0)) ,PROVISIONS=0,provisions1=0,provisions2=0 "
            sql4 = sql4 & " FROM FA_PRTY A,TBSSLBAL B WHERE  " & strbDiv & "  A.PRTYTYP=LEFT(SLCODE,2) AND  YEARMONTH ='" & yrmon & "' ) "
            sql4 = sql4 & " GROUP BY B.YEARMONTH,A.GLCODE HAVING SUM(ISNULL(B.CREDIT,0))-SUM(ISNULL(B.DEBIT,0))<0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"

            On Error Resume Next
            intervalMinutes = -1
            c.Execute "INSERT INTO TBS1 " & sql
            intervalMinutes = -1
            c.Execute "INSERT INTO TBS1 " & sql1
            intervalMinutes = -1
            c.Execute "INSERT INTO TBS1 " & Sql2
            intervalMinutes = -1
            c.Execute "INSERT INTO TBS1 " & sql4
            intervalMinutes = -1
            c.Execute "delete from tbs2"
            c.Execute "insert into tbs2 select * from tbs1"
            intervalMinutes = -1


    Else

    ''    '   actual qury  p&l

'            Sql = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
'            Sql = Sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
'            Sql = Sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE))"
'            Sql = Sql & "END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT B.YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)),B.PROVISIONS,provisions1=0,provisions2=0"
'            Sql = Sql & " FROM FA_GLMAS A,FA_GLBAL B WHERE  " & strbDiv & "  A.GLCODE = B.GLCODE AND SUBSTRING(B.GLCODE,1,1)" & Cond & "('1','2') AND ((YEARMONTH  between '" & YrMon & "' and  '" & yrmon1 & "' and right(yearmonth,2)<>'00') or ( YEARMONTH ='" & YearFirst & "' )) GROUP BY B.YEARMONTH,A.GLCODE,b.provisions "
'            Sql = Sql & "HAVING SUM(ISNULL(B.DEBIT,0)) > 0 OR SUM(ISNULL(B.CREDIT,0)) > 0 or  SUM(ISNULL(B.provisions,0)) <> 0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"
    
'
'
'            Sql = ""
'
'            Sql = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
'            Sql = Sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
'            Sql = Sql & "(CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE))"
'            Sql = Sql & "END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT B.YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)),PROVISIONS=0,provisions1=0,provisions2=0"
'            Sql = Sql & " FROM FA_GLMAS A,FA_GLBAL B WHERE  " & strbDiv & "  A.GLCODE = B.GLCODE AND SUBSTRING(B.GLCODE,1,1)" & Cond & "('1','2') AND (( YEARMONTH ='" & YM & "' )) GROUP BY B.YEARMONTH,A.GLCODE,b.provisions "
'            Sql = Sql & "HAVING SUM(ISNULL(B.DEBIT,0)) > 0 OR SUM(ISNULL(B.CREDIT,0)) > 0 or  SUM(ISNULL(B.provisions,0)) <> 0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"

intervalMinutes = -1
            sql = ""
            sql = "SELECT X.YEARMONTH as ym,Y.GLCODE,Y.GLHEAD,(X.AMOUNT) AS AMOUNT,(CASE WHEN X.AMOUNT >0  THEN 'DR' ELSE 'CR' END) BAL,"
            sql = sql & " (CASE WHEN X.AMOUNT > 0 THEN (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE) ELSE (SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)END) SCCODE ,"
            sql = sql & " (CASE WHEN X.AMOUNT > 0 THEN (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = (SELECT DRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE)) ELSE (SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE =(SELECT CRSCH FROM FA_GLMAS WHERE GLCODE = X.GLCODE))"
            sql = sql & " END) SCNAME,X.PROVISIONS,X.provisions1,X.provisions2 FROM (SELECT '" & yrmon & "' AS YEARMONTH,A.GLCODE, AMOUNT = SUM(ISNULL(B.DEBIT,0)) - SUM(ISNULL(B.CREDIT,0)),PROVISIONS=0,provisions1=0,provisions2=0"
            sql = sql & " FROM FA_GLMAS A,FA_CGTRN  B WHERE  " & strbDiv & "  A.GLCODE = B.GLCODE AND SUBSTRING(B.GLCODE,1,1)" & cond & "('1','2') AND ( VOCDT between '" & Format(yr, "yyyy-mm-dd") & "' and  '" & Format(m, "yyyy-mm-dd") & "' ) GROUP BY A.GLCODE "
            sql = sql & " HAVING SUM(ISNULL(B.DEBIT,0)) > 0 OR SUM(ISNULL(B.CREDIT,0)) > 0 ) X, FA_GLMAS Y WHERE X.GLCODE = Y.GLCODE ORDER BY SCCODE,Y.GLCODE"

    
    
    
            c.Execute "INSERT INTO TBS1 " & sql
            c.Execute "delete from tbs2"
            '
            
           ' c.Execute "insert into tbs2 select * from tbs1"

           ' c.Execute "insert into tbs2 select * from tbs1 where glcode not in " & _
            '" (select distinct accode  from fa_prvl1 where " & STRDIV & "  docdt>='" & Format(DTPicker1.value, "dd-mmm-yyyy") & "' and docdt<='" & Format(DTPicker2.value, "dd-mmm-yyyy") & "' and (accode like '4%' or accode like '3%') " & _
            '" Union select distinct accode  from fa_prvl where  " & STRDIV & "  docdt>='" & Format(DTPicker1.value, "dd-mmm-yyyy") & "' AND docdt<='" & Format(DTPicker2.value, "dd-mmm-yyyy") & "' and accode like '5%')  "
            
'
'            C.Execute "insert into tbs2 select * from tbs1 where glcode not in " & _
'                      " (select distinct accode  from fa_prvl1 where " & strDiv & "  docdt>='" & Format(DTPicker1.value, "dd-mmm-yyyy") & "' and docdt<='" & Format(DTPicker2.value, "dd-mmm-yyyy") & "' and (accode like '4%' or accode like '3%')) "


            '''--closing
            '''c.Execute "insert into tbs2 select * from tbs1 where glcode in (select  accode  from fa_prvl where divcode='" & div & "' and docdt='" & Format(D2, "dd-mmm-yyyy") & "' and accode like '4%' ) AND YM='" & yrmon1 & "'"

            ''c.Execute "insert into tbs2 select * from tbs1 where glcode in (select  accode  from fa_prvl1 where  " & STRDIV & "  docdt='" & Format(DTPicker2.value, "dd-mmm-yyyy") & "' and (accode like '4%' or accode like '3%')) aND YM='" & yrmon1 & "'"
            
            c.Execute "insert into tbs2 select * from tbs1 where glcode in (select  accode  from fa_prvl1 where  " & strDiv & "  docdt='" & Format(DTPicker2.value, "dd-mmm-yyyy") & "' and (accode like '4%' or accode like '3%')) "

           ''' '--opening
            'c.Execute "insert into tbs2 select * from tbs1 where glcode  in (select  accode  from fa_prvl where  " & STRDIV & "  docdt>='" & Format(pm1date, "dd-mmm-yyyy") & "' AND docdt<='" & Format(D2, "dd-mmm-yyyy") & "' and accode like '5%') AND YM='" & YrMon & "'"
End If

        
        '''   P&L

        If Trim(cond) = "IN" Then
            Set Rs = New Recordset
            'sql2 = sql2 & "SELECT SUM(X.AMT) FROM (SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0)) AS AMT FROM FA_GLBAL WHERE  " & STRDIV & "  SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND YEARMONTH between '" & YrMon & "'  and '" & yrmon1 & "'"
            'sql2 = sql2 & " UNION ALL SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0))+ SUM(ISNULL(PROVISIONS,0)) AS AMT FROM FA_GLBAL WHERE SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND YEARMONTH ='" & YrMon & "'  AND   " & STRDIV & " provisions<>0 and glcode like '5%'"
            'sql2 = sql2 & " UNION ALL SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0))+ SUM(ISNULL(PROVISIONS,0)) AS AMT FROM FA_GLBAL WHERE SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND YEARMONTH='" & yrmon1 & "' and  " & STRDIV & "  provisions<>0 and (glcode like '3%' OR glcode like '4%')) X"
            
            Sql2 = ""
            ''
            Sql2 = Sql2 & "SELECT SUM(X.AMT) FROM (SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0)) AS AMT FROM FA_CGTRN WHERE  " & strDiv & "  SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND VOCDT between '" & Format(yr, "YYYY-MM-DD") & "'  and '" & Format(m, "YYYY-MM-DD") & "'"
            '--sql2 = sql2 & " UNION ALL SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0))+ SUM(ISNULL(PROVISIONS,0)) AS AMT FROM FA_GLBAL WHERE SUBSTRING(GLCODE,1,1) NOT IN ('1','2') AND YEARMONTH ='" & YrMon & "'  AND   " & STRDIV & " provisions<>0 and glcode like '5%'"
            Sql2 = Sql2 & " UNION ALL SELECT SUM(ISNULL(DEBIT,0))-SUM(ISNULL(CREDIT,0))  AS AMT FROM FA_prvl1 WHERE SUBSTRING(ACCODE,1,1) NOT IN ('1','2') AND docdt='" & Format(m, "yyyy-mm-dd") & "' and  " & strDiv & "   (accode like '3%' OR accode like '4%')) X"
            
                        
            Rs.Open Sql2, c, adOpenStatic
            amt = val(IIf(IsNull(Rs(0)), 0, Rs(0)))
            prov = 0
            prov1 = 0
            prov2 = 0
                
            c.Execute "delete from fa_param where lastlisch is null"
        
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM FA_GLMAS WHERE GLCODE = (SELECT PANDLACD FROM FA_PARAM)", c, adOpenStatic
            GLC = Rs("GLCODE")
            GLH = Rs("GLHEAD")
            DRSCH = Rs("DRSCH")
            CRSCH = Rs("CRSCH")
            sch = IIf(val(amt) > 0, DRSCH, CRSCH)
            AC = IIf(val(amt) > 0, "DR", "CR")
        
        intervalMinutes = -1
            Set Rs = New Recordset
            Rs.Open "SELECT SCHEAD FROM FA_SCMAS WHERE SCCODE = '" & sch & "'", c, adOpenStatic
            c.Execute "INSERT INTO TBS2 VALUES('" & yrmon & "','" & GLC & "','" & GLH & "'," & amt & ",'" & AC & "','" & sch & "','" & Rs(0) & "'," & prov & "," & prov1 & "," & prov2 & ")"
            c.Execute "alter table    TBS1 drop column flg "
            c.Execute "alter table    tbs2 drop column flg"
        End If
        intervalMinutes = -1

   On Error GoTo 0
   Exit Sub

GenBALSHEETCRYdiv_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GenBALSHEETCRYdiv of Form frmbsheet1"
End Sub
Private Sub Fill_compList()
intervalMinutes = -1
    '----------- Build Division List
    Dim MyConn As Connection
    Set MyConn = New Connection
    MyConn.CursorLocation = adUseClient
    MyConn.Open "Provider=MSDASQL;" & connectstring
        Dim temprs As Recordset
        Set temprs = New Recordset
'        temprs.Open "select compname,'01' as compcode  from pallavaa.dbo.compmas Union All select left(compname,43) as compname,'02' as compcode from Sricheran.dbo.compmas", MyConn, adOpenStatic, adLockReadOnly
        temprs.Open "select compname,'01' as compcode  from dbo.compmas ", MyConn, adOpenStatic, adLockReadOnly
        lv_div.ListItems.Clear
        'lv_div.clear
        Dim li As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
              'lv_div.AddItem temprs!divname & "-" & temprs!Divcode
                     Set l1 = Lv_com.ListItems.ADD(, , temprs!CompName)
                            Lv_com.ListItems(Lv_com.ListItems.Count).ListSubItems.ADD , , temprs!CompCode
                temprs.MoveNext
            Loop
        temprs.Close
    End If
    MyConn.Close
     For I = 1 To Lv_com.ListItems.Count ' - 1
        Lv_com.ListItems.Item(I).Checked = True
    Next I
    intervalMinutes = -1
End Sub

Private Sub Fill_DivList()
    '----------- Build Division List
    Dim MyConn As Connection
    Set MyConn = New Connection
    MyConn.CursorLocation = adUseClient
    MyConn.Open "Provider=MSDASQL;" & connectstring
        Dim temprs As Recordset
        Set temprs = New Recordset
       ' temprs.Open "select divname, Divcode from pallavaa.dbo.pp_divmas union all select divname, Divcode from Sricheran.dbo.pp_divmas ORDER BY Divname,DIVCODE", MyConn, adOpenStatic, adLockReadOnly
        temprs.Open "select divname, Divcode from dbo.pp_divmas ", MyConn, adOpenStatic, adLockReadOnly
        lv_div.ListItems.Clear
        'lv_div.clear
        Dim li As ListItem
        If temprs.RecordCount > 0 Then
            Do While Not temprs.EOF
              'lv_div.AddItem temprs!divname & "-" & temprs!Divcode
                     Set l1 = lv_div.ListItems.ADD(, , temprs!divname)
                            lv_div.ListItems(lv_div.ListItems.Count).ListSubItems.ADD , , temprs!Divcode
                temprs.MoveNext
            Loop
        temprs.Close
    End If
    MyConn.Close
     For I = 1 To lv_div.ListItems.Count ' - 1
        lv_div.ListItems.Item(I).Checked = True
    Next I
    intervalMinutes = -1
End Sub

Public Sub BscryschDIVfrCUSTSCM(Y As String, YR1 As String, Cnd As String, Hd As String, div As String)
'periodical1
Dim Rsbs As Recordset
Dim RsTmp As Recordset
Dim RsUptCur As Recordset
Dim FC, FP, UC, UP
Dim TOTFC, TOTFP, TOTUC, TOTUP
Dim pm
Dim yflg As Boolean
intervalMinutes = -1
   On Error GoTo BscryschDIV_Error


    If div <> "00" Then
        strbDiv = " b.Divcode IN  " & div & " AND "
        strDiv = " Divcode IN " & div & " AND "
    Else
        strbDiv = ""
        strDiv = ""
    End If
    
    
    z = 1
    p = 0
    cnt = 0
    
'    If Right(Y, 2) = "01" Then
'        PM = Format(Left(Y, 4) - 1, "0000") & "12"
'    Else
'        PM = Left(Y, 4) & Format(val(Right(Y, 2)) - 1, "00")
'    End If
'
'    h = Hd
'
'    If (Trim(Year(yfdate)) = Trim(Left(Y, 4))) And (Trim(Right(PM, 2)) = "03") Then
'            yflg = True
'    Else
'            yflg = False
'    End If
'
    cnt = cnt + 1
    '''Call GenBALSHEETCRYdivfrCUST(Left(Y, 4), Right(Y, 2), Left(YR1, 4), Right(YR1, 2), Cnd, div)
    
'    Call GenBALSHEETCRYdivfrCUST(DTPicker1.value, DTPicker2.value, DTPicker1.value, DTPicker2.value, Cnd, div)
    
    '''Call DisMonCRYfr(Right(Y, 2))
      
    Set Rs = New Recordset
    Rs.Open "select * from pp_divmas where divcode='" & Divcode & "'", c, adOpenDynamic, adLockOptimistic
      
'    a1 = "From " + Trim(DTPicker1.value) 'Combo1.text)
    
    
    
    If Trim(Cnd) = "IN" Then
        A2 = "AS ON " + Trim(CStr(disdt))
    Else
       'a2 = "to " + Trim(Combo2.text)
       A2 = "to " + Trim(DTPicker2.value)
    End If
    
   If Trim(Cnd) = "IN" Then
'       CR1.ReportFileName = KALFOLDERREPORT & "BSSCHdivfr.RPT"
'       CR1.Connect = KslCompanySelection3.SelConnectStr
'       CR1.RetrieveDataFiles
'       CR1.DataFiles(0) = KslCompanySelection3.SelDB & Mid(CR1.DataFiles(0), InStr(1, CR1.DataFiles(0), "."), Len(CR1.DataFiles(0)))
     
     'CR1.WindowParentHandle = frmMain.hwnd
     
     CR1.Formulas(0) = "mon1='" & Trim(a1) & "'"
     CR1.Formulas(1) = "div1='" & Trim(Rs(1).value) & "'"
     'CR1.Formulas(2) = "mon2='" & Trim(a2) & "'"
     
     CR1.Formulas(2) = "mon2='" & A2 & "'"
     
     CR1.Formulas(3) = ""
     CR1.WindowState = crptMaximized
     CR1.Action = 1
     
   Else
    
     
    Dim Crys1 As clsCrystal
    Set Crys1 = New clsCrystal
    Set Crys1.cryRept = PLSCHdivfr
    Crys1.CrystalPrint
    CR1.Reset
    CR1.Connect = connectstring
    CR1.ReportFileName = KALFOLDERDATA & "RepFA.rpt"
     
     CR1.Formulas(0) = "mon1='" & Trim(a1) & "'"
     CR1.Formulas(1) = "div='" & Trim(Rs(1).value) & "'"
     CR1.Formulas(2) = "mon2='" & Trim(A2) & "'"
     CR1.Formulas(3) = ""
         
     CR1.WindowState = crptMaximized
     CR1.Action = 1
   End If
   Screen.MousePointer = 0
intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

BscryschDIV_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BscryschDIV of Form frmbsheet1"
End Sub

Public Sub BscryschDIVfrCUST(Y As String, YR1 As String, Cnd As String, Hd As String, div As String)
intervalMinutes = -1
Dim Rsbs As Recordset
Dim RsTmp As Recordset
Dim RsUptCur As Recordset
Dim FC, FP, UC, UP
Dim TOTFC, TOTFP, TOTUC, TOTUP
Dim pm
Dim yflg As Boolean

   On Error GoTo BscryschDIV_Error


    If div <> "00" Then
        strbDiv = " b.Divcode IN  " & div & " AND "
        strDiv = " Divcode IN " & div & " AND "
    Else
        strbDiv = ""
        strDiv = ""
    End If
    
    
    z = 1
    p = 0
'    cnt = 0
'    If Right(Y, 2) = "01" Then
'        PM = Format(Left(Y, 4) - 1, "0000") & "12"
'    Else
'        PM = Left(Y, 4) & Format(val(Right(Y, 2)) - 1, "00")
'    End If
    
'    h = Hd
'
'    If (Trim(Year(yfdate)) = Trim(Left(Y, 4))) And (Trim(Right(PM, 2)) = "03") Then
'            yflg = True
'    Else
'            yflg = False
'    End If
    
    
    cnt = cnt + 1
    'Call GenBALSHEETCRYdivfrCUST(Left(Y, 4), Right(Y, 2), Left(YR1, 4), Right(YR1, 2), Cnd, div)
    
   ' Call GenBALSHEETCRYdivfrCUST(DTPicker1.value, DTPicker2.value, DTPicker1.value, DTPicker2.value, Cnd, div)
     
     
    ''Call DisMonCRYfr(Right(Y, 2))
     
   
   
    Set Rs = New Recordset
    Rs.Open "select * from pp_divmas where divcode='" & Divcode & "'", c, adOpenDynamic, adLockOptimistic
      
 '   a1 = "From " + Trim(DTPicker1.value)
    
        
    If Trim(Cnd) = "IN" Then
        'a2 = "AS ON " + Trim(CStr(disdt))
     '   a2 = "to " + Trim(CStr(DTPicker1.value))
    Else
       'a2 = "to " + Trim(Combo2.text)
      '  a2 = "to " + Trim(CStr(DTPicker1.value))
    End If
    
    
    
    
   If Trim(Cnd) = "IN" Then
       
        Dim Crys1 As clsCrystal
        Set Crys1 = New clsCrystal
        Set Crys1.cryRept = BSSCHdivfr
        Crys1.CrystalPrint
        CR1.Reset
        CR1.Connect = connectstring
        CR1.ReportFileName = KALFOLDERDATA & "RepFA.rpt"
              
     
        CR1.Formulas(0) = "mon1='" & Trim(a1) & "'"
        CR1.Formulas(1) = "div1='" & Trim(Rs(1).value) & "'"
        CR1.Formulas(2) = "mon2='" & A2 & "'"
        CR1.Formulas(3) = ""
        CR1.WindowState = crptMaximized
        CR1.Action = 1
     
     
     
   Else
          
    
'    CR1.ReportFileName = KALFOLDERREPORT & "PLSCHdivfr.RPT"
'
'    CR1.Connect = KslCompanySelection3.SelConnectStr
'    CR1.RetrieveDataFiles
'    CR1.DataFiles(0) = KslCompanySelection3.SelDB & Mid(CR1.DataFiles(0), InStr(1, CR1.DataFiles(0), "."), Len(CR1.DataFiles(0)))
'
'
'     CR1.Formulas(0) = "mon1='" & Trim(a1) & "'"
'     CR1.Formulas(1) = "div='" & Trim(rs(1).value) & "'"
'     CR1.Formulas(2) = "mon2='" & Trim(a2) & "'"
'     CR1.Formulas(3) = ""
'
'     CR1.WindowState = crptMaximized
'     CR1.Action = 1
   End If
   Screen.MousePointer = 0
intervalMinutes = -1
   On Error GoTo 0
   Exit Sub

BscryschDIV_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BscryschDIV of Form frmbsheet1"
End Sub

Private Sub StmntButton_Click()
STERDIVPALLVAA = ""
STERDIVSRICHERAN = ""

intervalMinutes = -1
    

Screen.MousePointer = 11
'
''DB.Execute "delete from CONSRMI"
''DB.Execute "delete from CONSRMIcat"

DB.Execute "delete from CONSRMIDENIER"
intervalMinutes = -1
Set rs1 = New Recordset

yfdate = fnyfdate(pdate)
yldate = fnyldate(pdate)



ster = ""
      For I = 1 To Lv_com.ListItems.Count
        If Lv_com.ListItems.Item(I).Checked Then
             ster = ster & Trim(Lv_com.ListItems(I).SubItems(1)) & ""
        End If
    Next I
   For I = 1 To lv_div.ListItems.Count
        If lv_div.ListItems.Item(I).Checked Then
        If Left(lv_div.ListItems.Item(I), 7) = "PALLAVA" Then
           STERDIVPALLVAA = STERDIVPALLVAA & "," & lv_div.ListItems(I).SubItems(1) & ""
           Else
           STERDIVSRICHERAN = STERDIVSRICHERAN & "," & lv_div.ListItems(I).SubItems(1) & ""
         End If
        End If
    Next I

STERDIVPALLVAA = "" & Mid(STERDIVPALLVAA, 2) & ""
STERDIVSRICHERAN = "" & Mid(STERDIVSRICHERAN, 2) & ""
On Error Resume Next
vrectype = Trim(Left(Combo1.Text, 3))

''If Trim(ster) = 1 Then
''
''DB.Execute "insert into CONSRMI  exec  pallavaa.dbo.constockstatement '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''DB.Execute "insert into CONSRMIcat  exec  pallavaa.dbo.constockstatementcat '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''
''ElseIf Trim(ster) = 2 Then
''    DB.Execute "insert into CONSRMI  exec Sricheran.dbo.constockstatement '" & STERDIVSRICHERAN & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''    DB.Execute "insert into CONSRMIcat  exec  Sricheran.dbo.constockstatementcat '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''
''Else
''    DB.Execute "insert into CONSRMI  exec pallavaa.dbo.constockstatement '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''    DB.Execute "insert into CONSRMI  exec Sricheran.dbo.constockstatement '" & STERDIVSRICHERAN & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''    DB.Execute "insert into CONSRMIcat  exec  pallavaa.dbo.constockstatementcat '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
''    DB.Execute "insert into CONSRMIcat  exec  Sricheran.dbo.constockstatementcat '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
    
'''End If
       ' db.Execute "insert into CONSRMIDENIER  exec  pallavaa.dbo.constockstatementDenier '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'" '''sasi 25.12.17
       ' db.Execute "insert into CONSRMIDENIER  exec  Sricheran.dbo.constockstatementDenier '" & STERDIVPALLVAA & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "'"
        intervalMinutes = -1
         DB.CommandTimeout = 5000
        DB.Execute "insert into CONSRMIDENIER  exec  dbo.constockstatementDenier '" & STERDIVPALLVAA & "', '" & Format(DateSerial(Year(Date), MONTH(Date), 0) - Day(LastDay) + 1, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "','" & vrectype & "'"
        intervalMinutes = -1
'        DB.CommandTimeout = 5000
'        DB.Execute "insert into CONSRMIDENIER  exec  Sricheran.dbo.constockstatementDenier '" & STERDIVSRICHERAN & "', '" & Format(DateSerial(Year(Date), MONTH(Date), 0) - Day(LastDay) + 1, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "','" & vrectype & "'"
'        intervalMinutes = -1
        Dim ClsfreDtlsDate As New clsCrystal
        ''Set ClsfreDtlsDate.cryRept = ConsolidateReports
        
        'Set ClsfreDtlsDate.cryRept = ConsRMIStockDenierReport
        '1403/17
        If Check2.value = 1 Then
        Set ClsfreDtlsDate.cryRept = Cry_ConsolidatedStockAbs
        Else
        Set ClsfreDtlsDate.cryRept = ConsRMIStockDenierReport140317
        End If
        ClsfreDtlsDate.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'        CrystalReport1.ParameterFields.item(1).AddCurrentValue DIVNAME
'        CrystalReport1.ParameterFields.item(2).AddCurrentValue Format(pdate, "DD-MM-YYYY")
        CrystalReport1.ParameterFields(0) = "DIVNAME;" & divname & ""
        
        'CrystalReport1.ParameterFields(1) = "Fdate;" & Format(pdate, "dd-MM-yyyy") & ""
        
        CrystalReport1.ParameterFields(1) = "Fdate;" & Format(DTPicker1(0).value, "dd-MM-yyyy") & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0

intervalMinutes = -1
      
'
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ConsolidateReports.rpt"
'
'        parameter1 = DIVNAME
'        parameter2 = Format(pdate, "DD-MM-YYYY")
'
'        REPID = "317"
'        FrmRpt.Show
        End Sub

Private Sub ExcelConvertStock()
    Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
co = 0
CustCode = "": custname = "": ContNo = "": sortname = ""
intervalMinutes = -1
        Set XLSheet = Myxl.ActiveSheet
           
        Set rs1 = New Recordset
        rs1.Open "exec  KSP_RMIAGEING_MIS  '" & Divcode & "' ,'" & Format(dtpDate, "yyyy-MM-dd") & "'", DB, adOpenKeyset, adLockReadOnly

        Dim FSort As String
        Dim TSort As String

        FD = Format(DTPicker1(0).value, "yyyy-mm-dd")
       ' TD = Format(DataCombo2.Text, "yyyy-mm-dd")
         
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        
       
        XLSheet.Cells(1, 5).value = "" ' rsnew(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue

        End With
        


        XLSheet.Cells(5, 5).value = " CONSOLIDATED RAW MATERIAL STOCK STATEMENT AS ON DATE - " & Format(DTPicker1(0).value, "DD-MM-YYYY")

        XLSheet.Range("A5", "M5").MergeCells = True
        With XLSheet.Range("A5", "M5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
              
DB.Execute "delete from CONSRMIDENIER_Excel"

Set rs1 = New Recordset

yfdate = fnyfdate(pdate)
yldate = fnyldate(pdate)

intervalMinutes = -1

ster = ""
      For I = 1 To Lv_com.ListItems.Count
        If Lv_com.ListItems.Item(I).Checked Then
             ster = ster & Trim(Lv_com.ListItems(I).SubItems(1)) & ""
        End If
    Next I
   For I = 1 To lv_div.ListItems.Count
        If lv_div.ListItems.Item(I).Checked Then
        If Left(lv_div.ListItems.Item(I), 7) = "PALLAVA" Then
           STERDIVPALLVAA = STERDIVPALLVAA & "," & lv_div.ListItems(I).SubItems(1) & ""
           Else
           STERDIVSRICHERAN = STERDIVSRICHERAN & "," & lv_div.ListItems(I).SubItems(1) & ""
         End If
        End If
    Next I

    STERDIVPALLVAA = "" & Mid(STERDIVPALLVAA, 2) & ""
    STERDIVSRICHERAN = "" & Mid(STERDIVSRICHERAN, 2) & ""
    On Error Resume Next
    vrectype = Trim(Left(Combo1.Text, 3))
            
                gtot1 = 0
                gtot2 = 0
                gtot3 = 0
                gtot4 = 0
                gtot5 = 0
                gtot6 = 0
                
                gtot7 = 0
                gtot8 = 0
                gtot9 = 0
                gtot10 = 0
                gtot11 = 0
                gtot12 = 0
                
                gtot13 = 0
                gtot14 = 0
                gtot15 = 0
                gtot16 = 0
                gtot17 = 0
                gtot18 = 0
                
                intervalMinutes = -1
            DB.Execute "insert into CONSRMIDENIER_Excel  exec  dbo.constockstatementDenier '" & STERDIVPALLVAA & "', '" & Format(DateSerial(Year(Date), MONTH(Date), 0) - Day(LastDay) + 1, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "','" & vrectype & "'"
            intervalMinutes = -1
'            DB.Execute "insert into CONSRMIDENIER_Excel  exec  Sricheran.dbo.constockstatementDenier '" & STERDIVSRICHERAN & "', '" & Format(DateSerial(Year(Date), MONTH(Date), 0) - Day(LastDay) + 1, "YYYY-MM-DD") & "', '" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "', '" & Format(yfdate, "YYYY-MM-DD") & "', '" & Format(yldate, "YYYY-MM-DD") & "','" & vrectype & "'"
'      intervalMinutes = -1

        Set Rs = New Recordset
        Rs.Open "exec SP_CONSRMIDENIER_Excel ", DB, adOpenStatic, adLockBatchOptimistic

       catname = Trim(Rs.Fields("CATNAME"))
            If Rs.RecordCount > 0 Then
            co = 7
                XLSheet.Cells(7, 1).value = " Group Name "

                 XLSheet.Cells(7, 2).value = " Variety Name "
                XLSheet.Cells(7, 3).value = " Raw/Dyed"
                XLSheet.Cells(7, 4).value = " Denier/ Length "
                XLSheet.Cells(7, 5).value = " Supplier Name "

                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & "7"
                HR = "W" & "7"
               ' Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                
                XLSheet.Cells(7, 7).value = "           <-- PTL_I  ---> "
                    XLSheet.Range("F7", "H7").MergeCells = True
                With XLSheet.Range("F7", "H7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Cells(7, 10).value = "           <--- PTL_II ---> "
                 XLSheet.Range("I7", "K7").MergeCells = True
                With XLSheet.Range("I7", "K7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                 XLSheet.Cells(7, 13).value = "         <---- SCSL_I ----> "
                  XLSheet.Range("L7", "N7").MergeCells = True
                With XLSheet.Range("L7", "N7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Cells(7, 16).value = "          <---  SCSL_II ---> "
                 XLSheet.Range("O7", "Q7").MergeCells = True
                With XLSheet.Range("O7", "Q7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Cells(7, 19).value = "         <---  SCSL_III ---> "
                 XLSheet.Range("R7", "T7").MergeCells = True
                With XLSheet.Range("R7", "T7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Cells(7, 22).value = "           <---  Total ---> "
                XLSheet.Range("U7", "W7").MergeCells = True
                With XLSheet.Range("U7", "W7").Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Cells(8, 6).value = " Bales. "
                XLSheet.Cells(8, 7).value = " kgs. "
                XLSheet.Cells(8, 8).value = " Value. "
                
                XLSheet.Cells(8, 9).value = " Bales. "
                XLSheet.Cells(8, 10).value = " kgs. "
                XLSheet.Cells(8, 11).value = " Value. "
                
                XLSheet.Cells(8, 12).value = " Bales. "
                XLSheet.Cells(8, 13).value = " kgs. "
                XLSheet.Cells(8, 14).value = " Value. "
                
                XLSheet.Cells(8, 15).value = " Bales. "
                XLSheet.Cells(8, 16).value = " kgs. "
                XLSheet.Cells(8, 17).value = " Value. "
                
                XLSheet.Cells(8, 18).value = " Bales. "
                XLSheet.Cells(8, 19).value = " kgs. "
                XLSheet.Cells(8, 20).value = " Value. "
                
                XLSheet.Cells(8, 21).value = " Bales. "
                XLSheet.Cells(8, 22).value = " kgs. "
                XLSheet.Cells(8, 23).value = " Value. "
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "W" & m_ROW
               ' Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                intervalMinutes = -1
                m_ROW = XLSheet.UsedRange.Rows.Count

      
                Myxl.Application.Visible = True
         
        XLSheet.Cells(Max, 1) = Trim(Rs.Fields("GROUPNAME"))
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("VARNAME"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("VARDESC"))
        XLSheet.Cells(Max, 4) = Trim(Rs.Fields("DENIER"))
        XLSheet.Cells(Max, 5) = Trim(Rs.Fields("supplier"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("PTL_I_Qty"))
        XLSheet.Cells(Max, 7) = Trim(Rs.Fields("PTL_I_NetKgs"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("PTL_I_Value"))
                 
        XLSheet.Cells(Max, 9) = val(Rs.Fields("PTL_II_Qty"))
        XLSheet.Cells(Max, 10) = val(Rs.Fields("PTL_II_NetKgs"))
        XLSheet.Cells(Max, 11) = val(Rs.Fields("PTL_II_Value"))
        
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("SCSL_I_Qty"))
        XLSheet.Cells(Max, 13) = Trim(Rs.Fields("SCSL_I_NetKgs"))
        XLSheet.Cells(Max, 14) = Trim(Rs.Fields("SCSL_I_Value"))
        
        XLSheet.Cells(Max, 15) = Trim(Rs.Fields("SCSL_II_Qty"))
        XLSheet.Cells(Max, 16) = Trim(Rs.Fields("SCSL_II_NetKgs"))
        XLSheet.Cells(Max, 17) = Trim(Rs.Fields("SCSL_II_Value"))
        
        XLSheet.Cells(Max, 18) = Trim(Rs.Fields("SCSL_III_Qty"))
        XLSheet.Cells(Max, 19) = Trim(Rs.Fields("SCSL_III_NetKgs"))
        XLSheet.Cells(Max, 20) = Trim(Rs.Fields("SCSL_III_Value"))
        
        XLSheet.Cells(Max, 21) = Trim(Rs.Fields("TOTQTY"))
        XLSheet.Cells(Max, 22) = Trim(Rs.Fields("TOTKGS"))
             
        XLSheet.Cells(Max, 23) = Trim(Rs.Fields("TOTVAL"))
    '    XLSheet.Cells(Max, 12) = Trim(rs.Fields("k4"))
           m = XLSheet.UsedRange.Rows.Count
              '  Max = m + 1
      

        
        
        
        
        
            
'               m = XLSheet.UsedRange.Rows.Count
'                Max = m + 1
                
        
        
        
        
   
            
                tot1 = tot1 + val(Rs.Fields("PTL_I_Qty"))
                tot2 = tot2 + val(Rs.Fields("PTL_II_Qty"))
                tot3 = tot3 + val(Rs.Fields("SCSL_I_Qty"))
                tot4 = tot4 + val(Rs.Fields("SCSL_II_Qty"))
                tot5 = tot5 + val(Rs.Fields("SCSL_III_Qty"))
                tot6 = tot6 + val(Rs.Fields("TOTQTY"))
                
                tot7 = tot7 + val(Rs.Fields("PTL_I_NetKgs"))
                tot8 = tot8 + val(Rs.Fields("PTL_II_NetKgs"))
                tot9 = tot9 + val(Rs.Fields("SCSL_I_NetKgs"))
                tot10 = tot10 + val(Rs.Fields("SCSL_II_NetKgs"))
                tot11 = tot11 + val(Rs.Fields("SCSL_III_NetKgs"))
                tot12 = tot12 + val(Rs.Fields("TOTKGS"))
                
 
                
                tot13 = tot13 + val(Rs.Fields("PTL_I_Value"))
                tot14 = tot14 + val(Rs.Fields("PTL_II_Value"))
                tot15 = tot15 + val(Rs.Fields("SCSL_I_Value"))
                tot16 = tot16 + val(Rs.Fields("SCSL_II_Value"))
                tot17 = tot17 + val(Rs.Fields("SCSL_III_Value"))
                tot18 = tot18 + val(Rs.Fields("TOTVAL"))
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
            
           
            
                
                Rs.MoveNext
                
                
             If catname <> Trim(Rs.Fields("CATNAME")) Then
                  
                   m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                  catname = Trim(Rs.Fields("CATNAME"))
                  
                XLSheet.Cells(m_ROW + 1, 5) = "Sub Total"

                XLSheet.Cells(m_ROW + 1, 6) = Round(tot1, 2)
                XLSheet.Cells(m_ROW + 1, 7) = Round(tot7, 2)
                XLSheet.Cells(m_ROW + 1, 8) = Round(tot13, 2)
                            
                XLSheet.Cells(m_ROW + 1, 9) = Round(tot2, 2)
                XLSheet.Cells(m_ROW + 1, 10) = Round(tot8, 2)
                XLSheet.Cells(m_ROW + 1, 11) = Round(tot14, 2)
                
                XLSheet.Cells(m_ROW + 1, 12) = Round(tot3, 2)
                XLSheet.Cells(m_ROW + 1, 13) = Round(tot9, 2)
                XLSheet.Cells(m_ROW + 1, 14) = Round(tot15, 2)
                
                XLSheet.Cells(m_ROW + 1, 15) = Round(tot4, 2)
                XLSheet.Cells(m_ROW + 1, 16) = Round(tot10, 2)
                XLSheet.Cells(m_ROW + 1, 17) = Round(tot16, 2)
                
                XLSheet.Cells(m_ROW + 1, 18) = Round(tot5, 2)
                XLSheet.Cells(m_ROW + 1, 19) = Round(tot11, 2)
                XLSheet.Cells(m_ROW + 1, 20) = Round(tot17, 2)
                  
                XLSheet.Cells(m_ROW + 1, 21) = Round(tot6, 2)
                XLSheet.Cells(m_ROW + 1, 22) = Round(tot12, 2)
                XLSheet.Cells(m_ROW + 1, 23) = Round(tot18, 2)
                
                 lr = "A" & m_ROW + 1
                HR = "W" & m_ROW + 1
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
               
                 gtot1 = gtot1 + tot1
                gtot2 = gtot2 + tot2
                gtot3 = gtot3 + tot3
                gtot4 = gtot4 + tot4
                gtot5 = gtot5 + tot5
                gtot6 = gtot6 + tot6
                
                gtot7 = gtot7 + tot7
                gtot8 = gtot8 + tot8
                gtot9 = gtot9 + tot9
                gtot10 = gtot10 + tot10
                gtot11 = gtot11 + tot11
                gtot12 = gtot12 + tot12
                
                gtot13 = gtot13 + tot13
                gtot14 = gtot14 + tot14
                gtot15 = gtot15 + tot15
                gtot16 = gtot16 + tot16
                gtot17 = gtot17 + tot17
                gtot18 = gtot18 + tot18
                
                tot1 = 0
                tot2 = 0
                tot3 = 0
                tot4 = 0
                tot5 = 0
                tot6 = 0
                tot7 = 0
                tot8 = 0
                tot9 = 0
                tot10 = 0
                tot11 = 0
                tot12 = 0
                tot13 = 0
                tot14 = 0
                tot15 = 0
                tot16 = 0
                tot17 = 0
                tot18 = 0
                m_ROW = XLSheet.UsedRange.Rows.Count
                m = XLSheet.UsedRange.Rows.Count
              '  Max = m + 1
                lr = "A" & m_ROW
                HR = "W" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
        End If
        
                Max = Max + 1
                
                Next I

   

                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                XLSheet.Cells(m_ROW + 1, 1) = "Grand Total"
                 XLSheet.Cells(m_ROW + 1, 6) = Round(gtot1, 2)
                  XLSheet.Cells(m_ROW + 1, 7) = Round(gtot7, 2)
                   XLSheet.Cells(m_ROW + 1, 8) = Round(gtot13, 2)
                   
                XLSheet.Cells(m_ROW + 1, 9) = Round(gtot2, 2)
                XLSheet.Cells(m_ROW + 1, 10) = Round(gtot8, 2)
                XLSheet.Cells(m_ROW + 1, 11) = Round(gtot14, 2)
                
                XLSheet.Cells(m_ROW + 1, 12) = Round(gtot3, 2)
                XLSheet.Cells(m_ROW + 1, 13) = Round(gtot9, 2)
                XLSheet.Cells(m_ROW + 1, 14) = Round(gtot15, 2)
                
                XLSheet.Cells(m_ROW + 1, 15) = Round(gtot4, 2)
                XLSheet.Cells(m_ROW + 1, 16) = Round(gtot10, 2)
                XLSheet.Cells(m_ROW + 1, 17) = Round(gtot16, 2)
                 
                XLSheet.Cells(m_ROW + 1, 18) = Round(gtot5, 2)
                XLSheet.Cells(m_ROW + 1, 19) = Round(gtot11, 2)
                XLSheet.Cells(m_ROW + 1, 20) = Round(gtot17, 2)
                
                XLSheet.Cells(m_ROW + 1, 21) = Round(gtot6, 2)
                XLSheet.Cells(m_ROW + 1, 22) = Round(gtot12, 2)
                XLSheet.Cells(m_ROW + 1, 23) = Round(gtot18, 2)
                
                 lr = "A" & m_ROW + 1
                HR = "W" & m_ROW + 1
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With

                
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit

                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & 1
                HR = "W" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With

                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With

                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
'
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
    Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                 Exit Sub
    End If
               
End Sub

