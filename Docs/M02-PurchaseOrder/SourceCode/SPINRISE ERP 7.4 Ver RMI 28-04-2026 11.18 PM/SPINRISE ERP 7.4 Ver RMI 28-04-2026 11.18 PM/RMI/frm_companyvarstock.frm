VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_companyvarstock 
   Caption         =   "Varietywise Stock Report"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Default         =   -1  'True
      Height          =   375
      Left            =   2715
      TabIndex        =   5
      Top             =   4035
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
      Height          =   375
      Left            =   4680
      TabIndex        =   4
      Top             =   4035
      Width           =   1455
   End
   Begin VB.Frame Frame3 
      Height          =   1530
      Left            =   960
      TabIndex        =   0
      Top             =   2100
      Width           =   6885
      Begin MSComCtl2.DTPicker DTP_1 
         Height          =   330
         Left            =   3120
         TabIndex        =   1
         ToolTipText     =   "Select the date"
         Top             =   720
         Width           =   1320
         _ExtentX        =   2328
         _ExtentY        =   582
         _Version        =   393216
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   135135235
         CurrentDate     =   38763
      End
      Begin VB.Label Label15 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2145
         TabIndex        =   3
         Top             =   780
         Width           =   375
      End
      Begin VB.Label Label17 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Varietywise Stock Report"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   360
         Left            =   0
         TabIndex        =   2
         Top             =   0
         Width           =   6885
      End
   End
   Begin Crystal.CrystalReport Crpt1 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "frm_companyvarstock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim rs1 As New Recordset
Dim Rs As New Recordset
Dim Date1 As String
Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Screen.MousePointer = 11
    Set DB = New Connection
    DB.Open connectstring
    DB.CommandTimeout = 10000
    Set rs1 = New Recordset
    rs1.Open "SELECT * FROM dbo.sysobjects WHERE name = 'tmp_varstock'", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        DB.Execute "delete from tmp_varstock"
    Else
        'DB.Execute "create table tmp_varstock(variety varchar(20),compname varchar(50),divcode varchar(10),div varchar(100),bales numeric(20),kgs numeric(20,3))"
        DB.Execute "create table tmp_varstock(variety varchar(20),compname varchar(50),divcode varchar(10),div varchar(100),bales numeric(20,3),colheader varchar(100))"
    End If

    ConnStr = ""
    ConnStr = connectstring
    ConnStr = Mid(ConnStr, 1, InStrRev(ConnStr, "="))
    ''
    tmp_constr = connectstring
    
    
    '*** Connection for the Database Master ***
    Set DB_Mas = New ADODB.Connection
    DB_Mas.Open ConnStr & "Master;"
    DB_Mas.CommandTimeout = 10000
    
    Set Rs_Mas = New ADODB.Recordset
    Rs_Mas.Open "select Name From sysdatabases where dbid>2 order by dbid", DB_Mas, adOpenStatic, adLockReadOnly

    Do While Not Rs_Mas.EOF
        On Error Resume Next
        Set DB = New ADODB.Connection
        connectstring = ConnStr & Rs_Mas!Name & ";"
        DB.Open connectstring
        DB.CommandTimeout = 10000
        
        If isPP_DivMas("PP_DivMas") Then
        Set Rs_Cmp = New Recordset
        Rs_Cmp.Open "Select Distinct C.CompName from PP_DivMas D Inner Join CompMas C On C.CompCode = D.CompCode", DB, adOpenStatic
        If UCase(VBA.GetSetting("Kalsoft", Rs_Cmp!CompName, "DBName")) = UCase(Rs_Mas!Name) Then
        Tmp_Db = Rs_Mas!Name
        
        Set durs = New Recordset
        durs.Open "Select Divcode,abbr from  PP_divmas ", DB, adOpenStatic
        'durs.Open "Select Divcode,Unitcode,Unitname Abbr from  PP_Unitmas ", DB, adOpenStatic
        
        Do While Not durs.EOF
        
        Tmp_divcode = durs!Divcode
        'tmp_unitcode = DURS!unitcode
        Tmp_divAbbr = durs!abbr
        Date1 = Format(DTP_1.value, "yyyy-MM-dd")
        SqlStr = " "
        SqlStr = SqlStr & Chr(13) & "select a.varcode,c.varname,"
        SqlStr = SqlStr & Chr(13) & "CASE WHEN sum(isnull(a.opbales,0))>0 THEN sum(isnull(a.opbales,0)) ELSE 0 END"
        SqlStr = SqlStr & Chr(13) & "as opbales,CASE WHEN sum(isnull(a.opboras,0)) >0 THEN sum(isnull(a.opboras,0)) ELSE 0 END as opboras,"
        SqlStr = SqlStr & Chr(13) & "CASE WHEN sum(isnull(a.opkgs,0)) >0 THEN sum(isnull(a.opkgs,0)) ELSE 0 END as opkgs, sum(isnull(a.recbales,0))"
        SqlStr = SqlStr & Chr(13) & "as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs, sum(isnull(a.issbales,0))"
        SqlStr = SqlStr & Chr(13) & "as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs, sum(isnull(a.rejbales,0))"
        SqlStr = SqlStr & Chr(13) & "as rejbales,sum(isnull(a.rejboras,0)) as rejboras,sum(isnull(a.rejkgs,0)) as rejkgs, case when"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0)) -"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) - sum(isnull(a.rejbales,0))"
        SqlStr = SqlStr & Chr(13) & "end  as clobales,  case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))-"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))-"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.rejboras,0)) end as cloboras,  case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))-sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.isskgs,0)) - SUM(ISNULL(A.REJKGS,0)) end as clokgs ,CASE WHEN sum(isnull(a.opvalue,0))>0 THEN"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(a.opvalue,0)) ELSE 0 END as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as"
        SqlStr = SqlStr & Chr(13) & "issvalue,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE, case when sum(isnull(a.opvalue,0)) > 0 then"
        SqlStr = SqlStr & Chr(13) & "((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))-sum(isnull(a.REJVALUE,0))) else"
        SqlStr = SqlStr & Chr(13) & "(sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0)) -sum(isnull(a.REJVALUE,0))) end  closevalue  from (("
        SqlStr = SqlStr & Chr(13) & "select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,"
        SqlStr = SqlStr & Chr(13) & "0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales, 0 as rejBoras,"
        SqlStr = SqlStr & Chr(13) & "0 as rejKgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue, 0 AS REJVALUE  from ("
        SqlStr = SqlStr & Chr(13) & "select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,"
        SqlStr = SqlStr & Chr(13) & "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.Favaourablewgt,0)) as opkgs,"
        SqlStr = SqlStr & Chr(13) & "0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.Favaourablewgt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,"
        SqlStr = SqlStr & Chr(13) & "0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Tmp_divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND"
        SqlStr = SqlStr & Chr(13) & "(b.lotdt < '" & Date1 & "' or UPPER(OPFLG)='Y')and b.lotdt < '" & Date1 & "' AND BALES >0  and"
        SqlStr = SqlStr & Chr(13) & "(B.rejflg='N' or B.rejdt>='" & Date1 & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)"
        SqlStr = SqlStr & Chr(13) & "else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,"
        SqlStr = SqlStr & Chr(13) & "SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue"
        SqlStr = SqlStr & Chr(13) & "from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Tmp_divcode & "' AND"
        SqlStr = SqlStr & Chr(13) & "(b.lotdt < '" & Date1 & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
        SqlStr = SqlStr & Chr(13) & "and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd"
        SqlStr = SqlStr & Chr(13) & "and docdt <'" & Date1 & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,"
        SqlStr = SqlStr & Chr(13) & "round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue, 0 as issvalue FROM("
        SqlStr = SqlStr & Chr(13) & "SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,"
        SqlStr = SqlStr & Chr(13) & "round((sum(isnull(e.Favaourablewgt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & Date1 & "') AND"
        SqlStr = SqlStr & Chr(13) & "e.DIVCODE='" & Tmp_divcode & "' and e.lotdt <'" & Date1 & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s"
        SqlStr = SqlStr & Chr(13) & "GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales, 0 AS recboras, 0 AS reckgs,0 as issbales,"
        SqlStr = SqlStr & Chr(13) & "0 as issboras, 0 as isskgs,sum(issBales) AS rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs,"
        SqlStr = SqlStr & Chr(13) & "0 as opvalue,0 as recvalue, 0 as issvalue,round((sum(isnull(isskgs,0))),3)*cast(ratekg as decimal (12,4))"
        SqlStr = SqlStr & Chr(13) & "as REJVALUE FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
        SqlStr = SqlStr & Chr(13) & "0 as issboras,round((sum(isnull(e.Favaourablewgt,0))),3) AS isskgs,B.RATEKG from rm_bale e, RM_LOT B where B.LOTNO=E.LOTNO"
        SqlStr = SqlStr & Chr(13) & "AND B.LOTDT= E.LOTDT AND B.DIVCODE=E.DIVCODE AND (e.rejflg ='Y' or e.rejdt>'" & Date1 & "') AND e.DIVCODE='" & Tmp_divcode & "' AND"
        SqlStr = SqlStr & Chr(13) & "(e.rejflg ='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt >'" & Date1 & "' AND Status='RJ'"
        SqlStr = SqlStr & Chr(13) & "group by e.varcode,e.LOTNO,e.lotdt,baleno,B.RATEKG)s GROUP BY lotno,lotdt, VARCODE,RATEKG"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then"
        SqlStr = SqlStr & Chr(13) & "sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end"
        SqlStr = SqlStr & Chr(13) & "as recboras, case when 'N' = 'N' then sum(isnull(b.Favaourablewgt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,"
        SqlStr = SqlStr & Chr(13) & "0 as isskgs,0 as rejbales,0 as rejboras, 0 as rejkgs,0 as opvalue,SUM(B.Favaourablewgt)*RATEKG as recvalue,0 as issvalue,"
        SqlStr = SqlStr & Chr(13) & "0 AS REJVALUE from rm_lot b where B.DIVCODE='" & Tmp_divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Date1 & "')"
        SqlStr = SqlStr & Chr(13) & " and B.lotyear='" & Year(yfdate) & "'  AND B.LOTDT BETWEEN '" & Date1 & "' and '" & Date1 & "' group by b.varcode,"
        SqlStr = SqlStr & Chr(13) & "b.LOTNO , b.LOTDT, b.opflg, b.bblflg, ratekg"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,"
        SqlStr = SqlStr & Chr(13) & "case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then"
        SqlStr = SqlStr & Chr(13) & "count(c.baleno) else 0 end as issboras,0 as isskgs,0 as rejbales,0 as rejboras , 0 as rejKgs, 0 as opvalue,"
        SqlStr = SqlStr & Chr(13) & "0 as recvalue,0  as issvalue,0 AS REJVALUE from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND"
        SqlStr = SqlStr & Chr(13) & "B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd"
        SqlStr = SqlStr & Chr(13) & "and docdt between '" & Date1 & "' and '" & Date1 & "' and lotyear='" & Year(yfdate) & "' and"
        SqlStr = SqlStr & Chr(13) & "(B.rejflg='N' or B.rejdt>'" & Date1 & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg"
        SqlStr = SqlStr & Chr(13) & "Union"
        SqlStr = SqlStr & Chr(13) & "select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,"
        SqlStr = SqlStr & Chr(13) & "0 as issbales, 0 as issboras,sum(C.isskgs) as isskgs,0 as rejbales, 0 as rejboras, 0 as rejKgs,0 as opvalue,"
        SqlStr = SqlStr & Chr(13) & "0 as recvalue,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue,0 AS REJVALUE"
        SqlStr = SqlStr & Chr(13) & "from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Tmp_divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt="
        SqlStr = SqlStr & Chr(13) & "c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Date1 & "' and '" & Date1 & "' and lotyear='" & Year(yfdate) & "' "
        SqlStr = SqlStr & Chr(13) & "and (B.rejflg='N' or B.rejdt>'" & Date1 & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,"
        SqlStr = SqlStr & Chr(13) & "b.bblflg,b.ratekg ))a,rm_lot b,rm_var c where a.varcode=c.varcode and a.varcode=b.varcode and a.lotno=b.lotno and a.lotdt=b.lotdt and b.divcode ='" & Tmp_divcode & "'"
        SqlStr = SqlStr & Chr(13) & "and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,c.varname"
        
        Set Rs = New Recordset
        Rs.Open SqlStr, DB, adOpenStatic
        
        Set DB = New ADODB.Connection
        connectstring = tmp_constr
        DB.Open connectstring
          
        
        If Rs.RecordCount = 0 Then
        
        Else
            'If (RS!clobales + RS!cloboras) <> 0 Then    'And rs!des = "Average Count"
                Do While Not Rs.EOF
                    bales = (Rs!clobales + Rs!CLOBORAS)
                     If bales > 0 Then
                        'DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, kgs) Values ('" & RS!VarName & "','" & Rs_Mas!Name & "','" & Tmp_divcode & "','" & Tmp_divAbbr & "'," & val(bales) & "," & val(RS!clokgs) & ")"
                        DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, colheader) Values ('" & Rs!VarName & "','" & Rs_Mas!Name & "','" & Tmp_divcode & "','" & Tmp_divAbbr & "'," & val(bales) & ",'No. of Bales')"
                        DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, colheader) Values ('" & Rs!VarName & "','" & Rs_Mas!Name & "','" & Tmp_divcode & "','" & Tmp_divAbbr & "'," & val(Rs!clokgs) & ",'Qty In Kgs')"
                    End If
                    Rs.MoveNext
                Loop
            'End If
        End If
        
        
        durs.MoveNext
        Loop
        
            
        End If
        End If
    Rs_Mas.MoveNext
    Loop
    
'    connectstring = tmp_Constr
        Set DB = New ADODB.Connection
        connectstring = tmp_constr
        DB.Open connectstring
     DB_Mas.CommandTimeout = 10000
    Set Rs = New Recordset
    SqlStr = ""
    SqlStr = SqlStr & Chr(13) & " Select *  from tmp_varstock order by divcode,div"
    
    Rs.Open SqlStr, DB, adOpenStatic
    ' Hide by Rejitha
'
'    Do While Not Rs.EOF
'        bales = (Rs!bales)
'        If bales > 0 Then
'            'DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, kgs) Values ('" & RS!VarName & "','" & Rs_Mas!Name & "','" & Tmp_divcode & "','" & Tmp_divAbbr & "'," & val(bales) & "," & val(RS!clokgs) & ")"
''            DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, colheader) Values ('" & Rs!Variety & "','" & Rs!Compname & "','" & Rs!Divcode & "','" & Rs!div & "'," & val(bales) & ",'" & Rs!Compname & "')"
'            If Rs.EOF = False Then Rs.MoveNext
''            DB.Execute "Insert Into tmp_varstock (variety,compname,divcode, Div, bales, colheader) Values ('" & Rs!Variety & "','" & Rs!Compname & "','" & Rs!Divcode & "','" & Rs!div & "'," & val(bales) & ",'" & Rs!Compname & "')"
'
'
'        End If
'        Rs.MoveNext
'    Loop
    
    
    
    connectstring = tmp_constr
    'FooterStr = Crptfootermod(UserFooter1.SelectedStr, 80)
    Set Rs_Cmp = New Recordset
    Rs_Cmp.Open "Select Distinct C.CompName from PP_DivMas D Inner Join CompMas C On C.CompCode = D.CompCode", DB, adOpenStatic

    With Crpt1
        .Reset
        .Connect = connectstring
        .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\varstockcompanyreport.rpt"
        
        .ParameterFields(0) = "@DivName;" & Rs_Cmp!CompName
        .ReportTitle = "Varietywise Stock Report For the Group As On " & Format(Date1, "dd/mm/yy")
        
        .WindowShowPrintSetupBtn = True
        .WindowState = crptMaximized
        SendKeys "{ENTER}"
        .Action = 1
        
    
    End With
Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frm_companyvarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Me.Hide

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form frm_companyvarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    DTP_1.value = pdate
    Set DB = New Connection
    DB.Open connectstring

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frm_companyvarstock", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Function isPP_DivMas(Tbl As String) As Boolean
On Error GoTo isPP_DivMas_Error
Dim ChTbl As New Recordset
Dim tCon As New Connection

Set tCon = New Connection
tCon.Open connectstring

On Error GoTo isPP_DivMasErr
    Set ChTbl = New Recordset
    ChTbl.Open "Select * from " & Tbl & "", tCon, adOpenStatic
    isPP_DivMas = True
Exit Function
isPP_DivMasErr:
    isPP_DivMas = False

Exit Function
isPP_DivMas_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure isPP_DivMas of Form frm_companyvarstock", vbInformation, head
Screen.MousePointer = 0
End Function


