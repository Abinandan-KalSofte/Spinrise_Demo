VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form misstock 
   AutoRedraw      =   -1  'True
   Caption         =   "Stock Reports"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "EXIT"
      Height          =   375
      Left            =   5445
      TabIndex        =   8
      Top             =   5655
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "REPORT"
      Height          =   375
      Left            =   3150
      TabIndex        =   7
      Top             =   5700
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      Height          =   1980
      Left            =   1800
      TabIndex        =   4
      Top             =   1890
      Width           =   6405
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   420
         Left            =   2835
         TabIndex        =   9
         Top             =   720
         Width           =   1995
         _ExtentX        =   3519
         _ExtentY        =   741
         _Version        =   393216
         Format          =   47841281
         CurrentDate     =   38740
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Date"
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
         Left            =   1845
         TabIndex        =   6
         Top             =   810
         Width           =   420
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         Caption         =   "Stock  Status Reports"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   270
         Left            =   -975
         TabIndex        =   5
         Top             =   45
         Width           =   7725
      End
   End
   Begin VB.Frame Frame2 
      Height          =   795
      Left            =   1845
      TabIndex        =   0
      Top             =   4185
      Width           =   6315
      Begin VB.CheckBox Check1 
         Caption         =   "Cotton Stock Statement Report"
         Height          =   195
         Left            =   360
         TabIndex        =   3
         Top             =   270
         Width           =   2580
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Stationwise - Lotwise Report"
         Height          =   240
         Left            =   3465
         TabIndex        =   2
         Top             =   270
         Width           =   2310
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Statiowise Stock Abstract Report"
         Height          =   195
         Left            =   360
         TabIndex        =   1
         Top             =   810
         Visible         =   0   'False
         Width           =   2805
      End
   End
End
Attribute VB_Name = "misstock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 Dim rs1 As Recordset
Dim ResultRs As Recordset
Dim RPTV As Report.ReportView
Dim VarKg, VarQty, VarVAL As Double
Dim re As String
Dim tot, tot1, tot2, tot3, tot5, candy, gtot5, gcandy As Double
Dim c1 As Integer
Dim cnn As Connection
Dim str1, a1 As String
Dim Y As String
Dim pg1 As Integer
Dim Co As Integer
Dim S As String
Dim s1 As String
Dim z As Integer
Dim SR As String
Dim str As String
Dim sc As Double 'for station count
Dim division As String
Private Sub Command1_Click()
'Developed by D.Parimalam
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
Set cnn = New Connection
str = Format(DTPicker1.value, "yyyy-mm-dd")
F_Date = Format(DTPicker1.value, "yyyy-mm-dd")
T_Date = Format(DTPicker1.value, "yyyy-mm-dd")
a1 = a

If Check1.value = 0 And Check2.value = 0 Then
    MsgBox "Select any one option", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring
a = Trim(a)
a = "C"

    Set RPTV = New Report.ReportView
    z = FreeFile
    Close #z
    Close
    Open "C:\sun.TXT" For Output As #z
    pg1 = 1
    Co = 0
    
    'FUNCTION1 FOR COTTON STOCK STATEMENT
    If Check1.value = 1 Then
        Call VARIETYWISE(F_Date, T_Date)
    End If
    'FUNCTION2 FOR STATIONWISELOTWISE
    If Check2.value = 1 Then
        Call STATIONLOT(F_Date, T_Date)
    End If
    'FUNCTION 3 FOR STATIONWISE AAABSTRACT
    If Check3.value = 1 Then
        Call STATIONABSTRACT(F_Date, T_Date)
    End If
'    If Check4.Value = 0 Then
'        Call VARIETYWISE(F_DATE, T_DATE)
'        Call STATIONLOT(F_DATE, T_DATE)
'        Call STATIONABSTRACT(F_DATE, T_DATE)
'    End If
    
    
    Print #z, Chr(12)
Close #z
 z = FreeFile
Open "c:\sun.bat" For Output As #z
Print #z, "cd\"
Print #z, "c:"
Print #z, "cd\"
Print #z, "type sun.TXT>prn"
Close #z
RPTV.txtfile = "c:\sun.TXT"
RPTV.Batfile = "c:\sun.bat"
Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub
    
    Public Sub VARIETYWISE(F_Date, T_Date)
On Error GoTo VARIETYWISE_Error

    str = Format(DTPicker1.value, "yyyy-mm-dd")
    F_Date = Format(yfdate, "yyyy-mm-dd")
    T_Date = Format(DTPicker1.value, "yyyy-mm-dd")
    
    'If A <> "A" Then
    Set ResultRs = New Recordset
    ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = sum(case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end),Borah = case when a.BBLFLG  IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),3) 'Stock',round(isnull(ratecy,0)/356.6187,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round((a.totlandcost/a.netwt),7) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where  a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and  (a.rejflg='N' or a.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy,a.totlandcost having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),3) > 0 and  (isnull(a.netwt,0)-isnull(a.isswt,0)) * round(a.totlandcost/a.netwt,7) > 0 order by a.LOTNO,a.LOTDT ", cnn, adOpenStatic

    'Else
    'Set ResultRs = New Recordset
    'ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG =  IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),3) 'Stock',isnull(ratekg,0) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(totlandcost/netwt,0),2) 'val'" & _
        " from rm_lot a,rm_cat b,rm_var c where  a.CATCD = b.CATCD and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.lotdt <= '" & Format(str, "yyyy/mm/dd") & "'   and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' order by a.LOTNO,a.LOTDT ", cnn, adOpenStatic
    'End If
'    If ResultRs.EOF Then
'        MsgBox "No Records Found", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
    
    
    Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      VarQty = 0
      varKgs = 0
      VarVAL = 0
      tot5 = 0
      candy = 0
      gtot5 = 0
      gcandy = 0
        Set ResultRs = New Recordset
        'If A <> "A" Then
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where a.varcode=b.varcode and lotdt<='" & Format(str, "yyyy-mm-dd") & "' and  (a.rejflg='N' or a.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
        'Else
        '       ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where a.varcode=b.varcode and lotdt<='" & Format(str, "yyyy-mm-dd") & "'   and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'", Db, adOpenStatic
        'End If
        Do While Not ResultRs.EOF
               If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If
               Set Rs = New Recordset

               'If A <> "A" Then
                    'Set rs = New Recordset
                    'rs.Open "select A.VARNAME,a.lotno,A.LOTDT,ISNULL(A.BALES,0)-ISNULL(B.BALES,0)AS BALES,a.unit,stock=isnull(a.stock,0)-isnull(b.isskgs,0),a.ratekg,a.plotno,a.ratecandy,'val'=(isnull(a.stock,0)-isnull(b.isskgs,0))*a.ratekg,a.slname,a.godown from ( select distinct C.VARNAME,a.LOTNO,a.LOTDT,a.catcd,Bales = case when a.BBLFLG = 'B' then isnull(bales,0) end,UNIT = case when a.BBLFLG = 'B' then 'Bales' else 'Borah' end,round(isnull(a.netwt,0),3) 'Stock',round(a.totlandcost/a.netwt,2) 'Ratekg',isnull(plotno,0)as plotno,round(ratecy,0) as ratecandy,f.slname,a.godown from rm_lot a,rm_cat b,rm_var c,fa_slmas f where  a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.varcode='" & ResultRs("varcode") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' AND A.LOTDT <='" & Format(str, "YYYY-MM-DD") & "' and f.slcode=a.supcd) a," & _
                    '        " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(a.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as Isskgs,f.slname,b.godown  from rm_issb a,rm_lot b ,rm_issh c,rm_bale e,fa_slmas f where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and " & _
                    '        " a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt <= '" & Format(str, "yyyy-mm-dd") & "' and a.docdt between  '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and   lotyear='" & Year(yfdate) & "'  and f.slcode=b.supcd group by a.lotno,a.lotdt,a.catcd,F.SLNAME,B.GODOWN)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd group by A.VARNAME,a.lotno,A.LOTDT,A.BALES,B.BALES,a.unit,a.stock,b.isskgs,a.ratekg,a.plotno,a.ratecandy,a.stock,b.isskgs,a.slname,a.godown  order by a.lotno", cnn, adOpenStatic
                            
                    Rs.Open "select A.VARNAME,a.lotno,A.LOTDT,ISNULL(A.BALES,0)-ISNULL(B.BALES,0)AS BALES,a.unit,stock=isnull(a.stock,0)-isnull(b.isskgs,0),a.ratekg,a.plotno,a.ratecandy,'val'=(isnull(a.stock,0)-isnull(b.isskgs,0))*a.ratekg,a.slname,a.godown from ( select distinct C.VARNAME,a.LOTNO,a.LOTDT,a.catcd,Bales = case when a.BBLFLG = 'B' then isnull(bales,0) end,UNIT = case when a.BBLFLG = 'B' then 'Bales' else 'Borah' end,round(isnull(a.netwt,0),3) 'Stock',round(a.totlandcost/a.netwt,2) 'Ratekg',isnull(plotno,0)as plotno,round(ratecy,0) as ratecandy,f.slname,a.godown from rm_lot a,rm_cat b,rm_var c,fa_slmas f where  a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and  a.varcode='" & ResultRs("varcode") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' AND A.LOTDT <='" & Format(str, "YYYY-MM-DD") & "' and f.slcode=a.supcd) a," & _
                            " (Select a.lotno,a.lotdt,a.catcd,COUNT(*) as bales, round((sum(isnull(e.netwt,0))),3) as Isskgs,f.slname,b.godown  from rm_issb a,rm_lot b ,rm_issh c,rm_bale e,fa_slmas f where  a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and " & _
                            " a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt <= '" & Format(str, "yyyy-mm-dd") & "' and a.docdt between  '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and f.slcode=b.supcd group by a.lotno,a.lotdt,a.catcd,F.SLNAME,B.GODOWN)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd group by A.VARNAME,a.lotno,A.LOTDT,A.BALES,B.BALES,a.unit,a.stock,b.isskgs,a.ratekg,a.plotno,a.ratecandy,a.stock,b.isskgs,a.slname,a.godown  having ISNULL(A.BALES,0)-ISNULL(B.BALES,0)>0 and isnull(a.stock,0)-isnull(b.isskgs,0)>0 order by a.lotno", cnn, adOpenStatic
                            
                            

                'Else
                '    Set rs = New Recordset
                '    rs.Open "select A.VARNAME,a.lotno,A.LOTDT,ISNULL(A.BALES,0)-ISNULL(B.BALES,0)AS BALES,a.unit,stock=isnull(a.stock,0)-isnull(b.isskgs,0),a.ratekg,a.plotno,a.ratecandy,'val'=(isnull(a.stock,0)-isnull(b.isskgs,0))*a.ratekg,a.slname,a.godown from ( select distinct C.VARNAME,a.LOTNO,a.LOTDT,a.catcd,Bales = case when a.BBLFLG = 'B' then isnull(bales,0) end,UNIT = case when a.BBLFLG = 'B' then 'Bales' else 'Borah' end,round(isnull(a.netwt,0),3) 'Stock',round(totlandcost/netwt,2) 'Ratekg',isnull(plotno,0)as plotno,round(ratekg*356.6187,0) as ratecandy,f.slname,a.godown from rm_lot a,rm_cat b,rm_var c,fa_slmas f where  a.CATCD = b.CATCD  and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.lotdt <= '" & Format(str, "yyyy-mm-dd") & "' and a.varcode='" & ResultRs("varcode") & "' and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' and f.slcode=a.supcd) a," & _
                '    " (select lotno,lotdt,catcd,count(baleno)as bales,round(sum(isnull(isskgs,0)),2)as isskgs  from rm_issb a where  docdt <= '" & Format(str, "yyyy-mm-dd") & "'  group by lotno,lotdt,catcd)b where a.lotno*=b.lotno and a.lotdt*=b.lotdt and a.catcd*=b.catcd order by a.lotno", cnn, adOpenStatic
               'End If

               Do While Not Rs.EOF

    'If Trim(A) <> "A" Then
        F_Date = Format(yfdate, "YYYY-MM-DD")
        T_Date = Format(str, "YYYY-MM-DD")
        SR = Left(a, 1)
        YFF = Year(str)
        Set RSV = New Recordset
        RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                 "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                 "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                 "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                 "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                 "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                 " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                 " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                 "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
                 "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' AND B.LOTNO='" & Rs("LOTNO") & "' AND B.LOTDT='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' group by b.varcode,b.bblflg ,b.ratekg " & _
                 "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netwt/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(b.netwt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
                 "group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
                 " Union All " & _
                 "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                 "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                 "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
                 "from rm_lot b " & _
                 " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                 " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' " & _
                 " AND B.LOTNO='" & Rs("LOTNO") & "' AND B.LOTDT='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' group by b.varcode,b.opflg,b.bblflg,RATEKG " & _
                 " Union All " & _
                 "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(b.netwt/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
                 "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & ResultRs("varcode") & "' AND B.LOTNO='" & Rs("LOTNO") & "'AND B.LOTDT='" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "'  group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode HAVING SUM(OPBALES)>=0 ", cnn, adOpenStatic, adLockBatchOptimistic
        
        

'        RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                 "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                 "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                 "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                 "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                 "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                 " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                 " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                 "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & YFF & "','" & Year(F_Date) & "') AND " & _
'                 " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' AND B.LOTNO='" & rs("LOTNO") & "' AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "' group by b.varcode,b.bblflg ,b.ratekg " & _
'                 "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & YFF & "','" & Year(F_Date) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                 "group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
'                 " Union All " & _
'                 "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
'                 "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                 "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
'                 "from rm_lot b " & _
'                 " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND  " & _
'                 " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' " & _
'                 " AND B.LOTNO='" & rs("LOTNO") & "' AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "' group by b.varcode,b.opflg,b.bblflg,RATEKG " & _
'                 " Union All " & _
'                 "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
'                 "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & ResultRs("varcode") & "' AND B.LOTNO='" & rs("LOTNO") & "'AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "'  group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode HAVING SUM(OPBALES)>=0 ", cnn, adOpenStatic, adLockBatchOptimistic

        'Else
        'Set RSV = New Recordset
        'RSV.Open "select a.varcode,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
        '         "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
        '         "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
        '         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
        '         "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
        '         "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
        '         " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
        '         " ((select varcode, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
        '         "select b.varcode,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & YFF & "','" & Year(F_DATE) & "') AND " & _
        '         "(b.lotdt < '" & Format(F_DATE, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.varcode='" & ResultRs("varcode") & "' AND B.LOTNO='" & rs("LOTNO") & "' AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "' group by b.varcode,b.bblflg ,b.ratekg " & _
        '         "union select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & YFF & "','" & Year(F_DATE) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_DATE, "YYYY/MM/DD") & "'" & _
        '         "group by b.varcode,b.bblflg,b.ratekg) a  group by varcode" & _
        '         " Union All " & _
        '         "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
        '         "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
        '         "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,totlandcost as recvalue,0 as issvalue " & _
        '         "from rm_lot b " & _
        '         " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_DATE, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and " & _
        '         " b.lotdt Between '" & Format(F_DATE, "yyyy-mm-dd") & "' and '" & Format(T_DATE, "yyyy-mm-dd") & "' and b.varcode='" & ResultRs("varcode") & "' " & _
        '         " AND B.LOTNO='" & rs("LOTNO") & "'AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "'  group by b.varcode,b.opflg,b.bblflg,totlandcost " & _
        '         " Union All " & _
        '         "select b.varcode,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
        '         "rm_lot b, c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_DATE, "yyyy-mm-dd") & "' and '" & Format(T_DATE, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.varcode='" & ResultRs("varcode") & "'AND B.LOTNO='" & rs("LOTNO") & "' AND B.LOTDT='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "'  group by b.varcode,b.opflg,b.bblflg,b.ratekg))a group by a.varcode HAVING SUM(OPBALES)>=0 ", cnn, adOpenStatic, adLockBatchOptimistic
        'End If
                If Rs("bales") > 0 And Rs("stock") > 0 Then
                    If Co >= 56 Then
                        Print #z, Space(5) & String(80, "-")
                        Print #z, Chr(12)
                        pg1 = pg1 + 1
                        Co = 0
                        Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                    End If
                    tot = tot + Rs("BALES")
                    tot2 = tot2 + Rs("STOCK")
                    tot3 = tot3 + RSV("CLOSEVALUE")
                    VarQty = VarQty + Rs("bales")
                    VarVAL = VarVAL + Rs("val")
                    VarKg = VarKg + Rs("stock")
               End If
               Rs.MoveNext
        Loop
        If VarQty > 0 Then
        Print #z, Space(15) & Padr(ResultRs("varname"), 25, " ");
        Print #z, Space(30) + IIf(IsNull(VarQty), 0, Padl(INF(VarQty, 0), 15, " "))
        Co = Co + 1
        End If
        ResultRs.MoveNext
        If Rs.RecordCount > 1 Then
            Print #z,
            Co = Co + 1
            If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If
            If VarKg > 0 Then
            tot5 = VarVAL / VarKg
            End If
            candy = (Round(tot5 * 356.6187, 2))
            If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If
        End If
        VarKg = 0
        VarVAL = 0
        VarQty = 0
        If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If

    Loop

                Print #z, Space(5) & String(80, "-")
                Co = Co + 1
                If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If
        If tot2 > 0 Then
        gtot5 = tot3 / tot2
        End If
        gcandy = (Round(gtot5 * 356.6187, 2))
        'Print #z, Space(15) & Padr(ResultRs("varname"), 25, " ");
        'Print #z, Space(10) + IIf(IsNull(VarQty), 0, Padl(INF(VarQty, 0), 15, " "))
        Print #z, Space(10) & "** Grand Total   **" + Space(49) + Padl(INF(tot, 0), 7, " ") '& Chr(27) & "F"
        Co = Co + 1
        If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
                End If
        Print #z, Space(5) & String(80, "-")
        Co = Co + 1
        If Co >= 56 Then
                   Print #z, Space(5) & String(80, "-")
                   Print #z, Chr(12)
                   pg1 = pg1 + 1
                   Co = 0
                   Call VarietystockRepHeader1(pg1, Co, str, CStr(a))
        End If

Exit Sub
VARIETYWISE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure VARIETYWISE of Form misstock", vbInformation, head
Screen.MousePointer = 0
  End Sub
'Stationwise lotwise stock

Public Sub STATIONLOT(F_Date, T_Date)

Dim rs1 As Recordset
Dim RS2 As Recordset
Dim RESULT As Recordset
Dim TEMP As String
Dim temp1 As String
Dim temp2 As String
Dim hot1, hot2, hot3, hot4, hot5, hot6, hot7, hot8, hot9, hot10, hot11, hot12 As Double
Dim tot4 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double

On Error GoTo STATIONLOT_Error

    str = Format(DTPicker1.value, "yyyy-mm-dd")
    F_Date = Format(yfdate, "yyyy-mm-dd")
    T_Date = Format(DTPicker1.value, "yyyy-mm-dd")
    a1 = a
'sr = Trim(Mid$(sr, 1, InStr(sr, "-") - 1))

'Initilization of variables
TEMP = " "
temp1 = " "
temp2 = " "
tot1 = 0: tot2 = 0: tot3 = 0: tot4 = 0: tot5 = 0
tot6 = 0: tot7 = 0: tot8 = 0: tot9 = 0: tot10 = 0
tot11 = 0: tot12 = 0: tot13 = 0: tot14 = 0: tot15 = 0
tot16 = 0:
vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0
VTOT = 0
hot1 = 0: hot2 = 0: hot3 = 0: hot4 = 0: hot5 = 0: hot6 = 0
hot7 = 0: hot8 = 0: hot9 = 0: hot10 = 0: hot11 = 0: hot12 = 0
te1 = 0
stot = 0
Call PartyHeader1(CStr(pg1), CStr(Co), CStr(F_Date), CStr(catcd))
Set rs1 = New Recordset
rs1.Open "select distinct b.areacd from rm_area a,rm_lot b where a.areacode=b.areacd  ", cnn, adOpenStatic, adLockBatchOptimistic
'If RS1.EOF Then
'   MsgBox "No Records Found", vbInformation, head
'   Close #z
'   Exit Sub
'End If
sc = 0 'for stationwise total
rs1.MoveFirst
Do While Not rs1.EOF
        If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
            YFF = Year(yfdate)
         ElseIf Year(yfdate) + 1 = Year(F_Date) Then
            YFF = Year(yfdate)
         Else
            YFF = Year(yfdate)
         End If


  'If Trim(cat) <> "A" Then
  Set RSV1 = New Recordset
  RSV1.Open "select a.areacd,a.lotno,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select areacd,lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.areacd,b.lotno,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.areacd='" & rs1("areacd") & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.areacd,b.lotno,b.bblflg ,b.ratekg " & _
            "union select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.areacd,b.lotno,b.bblflg,b.ratekg) a  group by areacd,lotno" & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.areacd='" & rs1("areacd") & "' " & _
            " group by b.areacd,b.lotno,b.opflg,b.bblflg,ratekg " & _
            " Union All " & _
            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4))as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "'  group by b.areacd,b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.areacd,a.lotno HAVING SUM(OPBALES)>=0   ", cnn, adOpenStatic, adLockBatchOptimistic
  
  
  
  
  
'  rsv1.Open "select a.areacd,a.lotno,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'            "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'            "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'            " ((select areacd,lotno,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'            "select b.areacd,b.lotno,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'            "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.lotno,b.bblflg ,b.ratekg " & _
'            "union select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'            "group by b.areacd,b.lotno,b.bblflg,b.ratekg) a  group by areacd,lotno" & _
'            " Union All " & _
'            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
'            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
'            "from rm_lot b " & _
'            " where upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
'            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.areacd='" & RS1("areacd") & "'" & _
'            " group by b.areacd,b.lotno,b.opflg,b.bblflg,ratekg " & _
'            " Union All " & _
'            "select b.areacd,b.lotno,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(e.netwt) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4))as issvalue from " & _
'            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & RS1("areacd") & "' group by b.areacd,b.lotno,b.opflg,b.bblflg,b.ratekg))a group by a.areacd,a.lotno HAVING SUM(OPBALES)>=0   ", cnn, adOpenStatic, adLockBatchOptimistic
  
  
  

   'Else
   'Set RSV1 = New Recordset
   'RSV1.Open "select a.AREACD,A.LOTNO,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
   '         "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
   '         "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
   '         "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
   '         "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
   '         "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
   '         " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
   '         " ((select AREACD,LOTNO, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
   '         "select b.AREACD,B.LOTNO,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) * cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & YFF & "','" & Year(F_Date) & "') AND " & _
   '         "(b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and b.AREACD='" & RS1("AREACD") & "' group by b.AREACD,B.LOTNO,b.bblflg ,b.ratekg " & _
   '         "union select b.AREACD,B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & YFF & "','" & Year(F_Date) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
   '         "group by b.AREACD,B.LOTNO,b.bblflg,b.ratekg) a  group by AREACD,LOTNO" & _
   '         " Union All " & _
   '         "select b.AREACD,B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
   '         "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
   '         "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
   '         "from rm_lot b " & _
   '         " where upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and " & _
   '         " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and b.AREACD='" & RS1("AREACD") & "'" & _
   '         " group by b.AREACD,B.LOTNO,b.opflg,b.bblflg,ratekg " & _
   '         " Union All " & _
   '         "select b.AREACD,B.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,sum(C.ACTISSKGS-b.TAREWT/BALES) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3)* cast(b.ratekg as decimal (12,4))as issvalue from " & _
   '         "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.AREACD='" & RS1("AREACD") & "'group by b.AREACD,B.LOTNO,b.opflg,b.bblflg,b.ratekg))a group by a.AREACD,A.LOTNO HAVING SUM(OPvalue)>=0 ", cnn, adOpenStatic, adLockBatchOptimistic
   ' End If
    If RSV1.RecordCount > 0 Then
      RSV1.MoveFirst
    Else
      GoTo 30
    End If

Do While Not RSV1.EOF

   Set Namers = New Recordset
   Namers.Open "Select areaname from rm_area a where  a.areacode='" & rs1("areacd") & "'", cnn, adOpenStatic
   If Not Namers.EOF Then areaname = Namers(0)
   Set opf = New Recordset
        'If Trim(cat) = "A" Then SR1 = "'C','P','V'" Else SR1 = cat
        'If Trim(cat) = "A" Then
        '   opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", cnn
        'Else
           opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0 AND LOTYEAR='" & Year(yfdate) & "'", cnn
        'End If
    If RSV1("clobales") > 0 Then
    If TEMP <> areaname Then
       If temp1 <> " " And sc > 1 Then
        Print #z,
        Co = Co + 1
        Print #z, Space(33) + "** Station Total **" + Space(10) + Padl(INF(stot, 0), 16, " ") '+ Chr(27) + "F"
        Co = Co + 1
        sc = 0
        Print #z,
        Co = Co + 1
        stot = 0
        ElseIf sc = 1 Then
        sc = 0
        stot = 0
       End If
        Print #z,
        Co = Co + 1
        Print #z, Space(13) & Chr(27) & "E" & Padr((CStr(areaname)), 30, " ") & Chr(27) & "F" & Padl(RSV1("lotno"), 10, " ") & Space(7) & Padl(INF(RSV1("clobales"), 0), 18, " ")
        Co = Co + 1
        sc = sc + 1
        TEMP = areaname
        temp1 = areaname

    Else

        Print #z, Space(13) + Padr(" ", 30, " ") & Padl(RSV1("lotno"), 10, " ") & Space(7) & Padl(INF(RSV1("clobales"), 0), 18, " ")
        Co = Co + 1
        sc = sc + 1
    End If
    stot = stot + RSV1("clobales")
    End If
    te1 = te1 + VTOT15
    tot1 = val(tot1) + RSV1("opbales")
    tot2 = val(tot2) + RSV1("opboras")
   tot3 = val(tot3) + RSV1("opkgs")
   tot4 = val(tot4) + RSV1("recbales")
   tot5 = val(tot5) + RSV1("recboras")
   tot6 = val(tot6) + RSV1("reckgs")
   tot7 = val(tot7) + RSV1("issbales")
   tot8 = val(tot8) + RSV1("issboras")
   tot9 = val(tot9) + RSV1("isskgs")
   tot10 = val(tot10) + RSV1("clobales")
   tot11 = val(tot11) + RSV1("cloboras")
   tot12 = val(tot12) + RSV1("clokgs")
   tot13 = val(tot13) + RSV1("opvalue")   'Opening value
   tot14 = val(tot14) + RSV1("recvalue")  'Received value
   tot15 = val(tot15) + RSV1("issvalue")   'Issue VaLUE
   tot16 = val(tot16) + RSV1("closevalue")  'Clse value
    If Co >= 56 Then
      Print #z, Space(5) + String(80, "-");
      Print #z, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      'Print #z, Chr(18) + Chr(27) + "E" + CENTRE(division, 80, " ") + Chr(27) + "F"
      'co = co + 1
      Call PartyHeader1(CStr(pg1), CStr(Co), CStr(F_Date), CStr(catcd))
    End If
    RSV1.MoveNext
Loop
   If Co >= 56 Then
      Print #z, Space(5) + String(80, "-");
      Print #z, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      'Print #z, Chr(18) & Space(5) + Chr(27) + "E" + CENTRE(division, 80, " ") + Chr(27) + "F"
      'co = co + 1
      Call PartyHeader1(CStr(pg1), CStr(Co), CStr(F_Date), CStr(catcd))
   End If
   If Co >= 56 Then
      Print #z, Space(5) + String(80, "-");
      Print #z, Chr(12)
      pg1 = pg1 + 1
      Co = 0
      'Print #z, Chr(18) + Chr(27) + "E" + CENTRE(division, 80, " ") + Chr(27) + "F"
      'co = co + 1
       Call PartyHeader1(CStr(pg1), CStr(Co), CStr(F_Date), CStr(catcd))

   End If
   vtot1 = 0: vtot2 = 0: vtot3 = 0: VTOT4 = 0: VTOT5 = 0
   VTOT6 = 0: VTOT7 = 0: VTOT8 = 0: VTOT9 = 0: VTOT10 = 0
   VTOT11 = 0: VTOT12 = 0: VTOT13 = 0: VTOT14 = 0: VTOT15 = 0: VTOT = 0
30:
   rs1.MoveNext


Loop

hot1 = 0
hot2 = 0
hot3 = 0
If sc > 1 Then
Print #z,
Co = Co + 1

Print #z, Space(33) + "** Station Total **" + Space(10) + Padl(INF(stot, 0), 16, " ")  '+ Chr(27) + "F"
'Print #z, Space(5) + Chr(27) + "E" + "** Stationwise Total **" + Space(5) + Padl(INF(stot, 0), 16, " ") + Chr(27) + "F"
Co = Co + 1
Print #z,
Co = Co + 1
End If
Print #z, Space(5) + String(80, "-")
Co = Co + 1
Print #z, Space(13) + "** Grand Total **" + Space(39) + Padl(INF(tot10, 0), 16, " ") '+ Chr(27) + "F"
'Print #z, Space(5) + Chr(27) & "E" & "** Grand Total **" + " " + Space(16) + Padl(INF(tot10, 0), 10, " ") & Chr(27) & "F"
Co = Co + 1
Print #z, Space(5) + String(80, "-")
Co = Co + 1

Exit Sub
STATIONLOT_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure STATIONLOT of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub
'''Stationwise Stock Abstract
Public Sub STATIONABSTRACT(F_Date, T_Date)
On Error GoTo STATIONABSTRACT_Error

    str = Format(DTPicker1.value, "yyyy-mm-dd")
    F_Date = Format(yfdate, "yyyy-mm-dd")
    T_Date = Format(DTPicker1.value, "yyyy-mm-dd")
    a1 = a
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

        vtot1 = 0
        vtot2 = 0
        vtot3 = 0
        VTOT4 = 0
        VTOT5 = 0
        VTOT6 = 0
        VTOT7 = 0
        VTOT8 = 0
        VTOT9 = 0
        VTOT10 = 0
        VTOT11 = 0
        VTOT12 = 0
        VTOT13 = 0
        VTOT14 = 0
        VTOT15 = 0
        VTOT = 0
        Call PartyHeaderarea(pg1, Co, CStr(F_Date), CStr(T_Date), CStr(catcd))
'Set RS1 = New Recordset
'If Trim(cat) = "C" Then
Set rs1 = New Recordset
 rs1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
            "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.areacd,b.bblflg " & _
            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
            "from rm_lot b " & _
            " where OPFLG='N' AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
            " group by b.areacd,b.opflg,b.bblflg " & _
            " Union All " & _
            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic






'            RS1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
'            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
'            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
'            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'            "from ((select areacd, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'            "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
'            "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0 group by b.areacd,b.bblflg " & _
'            "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(F_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
'            "AND BALES >0 group by b.areacd,b.bblflg) a  group by areacd" & _
'            " Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
'            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
'            "from rm_lot b " & _
'            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND  b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
'            " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
'            " group by b.areacd,b.opflg,b.bblflg " & _
'            " Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(c.baleno) else 0 end as issboras,round((sum(isnull(c.actisskgs,0))-sum(isnull(e.tarewt,0))),3) as isskgs from " & _
'            "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.areacd,b.opflg,b.bblflg))a group by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic

'Else
'            RS1.Open "select a.areacd,sum(isnull(a.opbales,0)),sum(isnull(a.opboras,0)),sum(isnull(a.opkgs,0))," & _
'            "sum(isnull(a.recbales,0)),sum(isnull(a.recboras,0)),sum(isnull(a.reckgs,0))," & _
'            "sum(isnull(a.issbales,0)),sum(isnull(a.issboras,0)),sum(isnull(a.isskgs,0))," & _
'            "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'            "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'            "from ((select b.areacd " & _
'            "case when b.opflg = 'Y' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, " & _
'            "case when b.opflg = 'Y' and b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as opboras, " & _
'            "case when b.opflg = 'Y' then sum(isnull(b.netwt,0)) else 0 end as opkgs,0 as recbales,0 as recboras,0 as reckgs, " & _
'            "0 as issbales,0 as issboras,0 as isskgs from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & cat & "' and b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.areacd,b.opflg,b.bblflg " & _
'            "Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.opflg = 'N' and b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
'            "case when b.bblflg = 'R' then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'            " sum(isnull(b.netwt,0))  as reckgs,0 as issbales,0 as issboras,0 as isskgs " & _
'            "from rm_lot b " & _
'            " where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd = '" & cat & "' And b.lotdt < '" & Format(T_Date, "yyyy-mm-dd") & "' " & _
'            " group by b.areacd,b.opflg,b.bblflg " & _
'            " Union All " & _
'            "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(baleno)  else 0 end as issbales,case when b.bblflg = 'R' then count(baleno) else 0 end as issboras,sum(ISSKGS) As isskgs from " & _
'            "rm_lot b,rm_issb c where b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd = '" & cat & "' and docdt between '" & Format(T_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' group by b.areacd,b.opflg,b.bblflg))a group by a.areacd order by areacd ", cnn, adOpenStatic, adLockBatchOptimistic
'End If



        'If RS1.EOF Then
        '    MsgBox "No Records Found", vbInformation, head
        '    Close #z
        '    Exit Sub
        'End If

        rs1.MoveFirst

        Do While Not rs1.EOF

            Set RSV = New Recordset
            RSV.Open "select a.areacd,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
                     "sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
                     "sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
                     "case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
                     "case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
                     "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
                     " , sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
                     " ((select areacd,sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(opvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
                     "select b.areacd,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND " & _
                     "b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' AND BALES >0  and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.bblflg ,ratekg " & _
                     "union select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(F_Date, "YYYY-MM-DD") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                     "and b.areacd='" & rs1("areacd") & "'AND BALES >0 group by b.areacd,b.bblflg,b.ratekg) a  group by areacd" & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
                     "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
                     "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG  as recvalue,0 as issvalue " & _
                     "from rm_lot b " & _
                     " where OPFLG='N' AND (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "'  and '" & Format(T_Date, "yyyy-mm-dd") & "' and " & _
                     " b.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                     "and  b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,ratekg " & _
                     " Union All " & _
                     "select b.areacd,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(e.netwt,0))),3)* cast(b.ratekg as decimal (12,4)) as issvalue from " & _
                     "rm_lot b,rm_issb c,rm_bale e where BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.areacd='" & rs1("areacd") & "' group by b.areacd,b.opflg,b.bblflg,b.ratekg))a group by a.areacd order by a.areacd ", cnn, adOpenStatic, adLockBatchOptimistic
            
            
            
           Set rsv2 = New Recordset
           rsv2.Open "select distinct a.areaname from rm_area a,rm_lot b where a.areacode=b.areacd and a.areacode='" & RSV("areacd") & "' ", cnn, adOpenStatic
           areaname = rsv2![areaname]
           If rsv2.RecordCount > 0 Then
           rsv2.MoveFirst
           If RSV.RecordCount > 0 Then
           RSV.MoveFirst
           Do While Not RSV.EOF
                        VTOT = VTOT + RSV("opbales")
                        vtot1 = vtot1 + RSV("opboras")
                        vtot2 = vtot2 + RSV("opkgs")
                        vtot3 = vtot3 + RSV("recbales")
                        VTOT4 = VTOT4 + RSV("recboras")
                        VTOT5 = VTOT5 + RSV("reckgs")
                        VTOT6 = VTOT6 + RSV("issbales")
                        VTOT7 = VTOT7 + RSV("issboras")
                        VTOT8 = VTOT8 + RSV("isskgs")

                        If (RSV("CLOBALES") > 0 Or RSV("CLOBORAS") > 0) And RSV("CLOKGS") > 0 And RSV("CLOSEVALUE") > 0 Then
                            VTOT9 = VTOT9 + RSV("clobales")
                            VTOT10 = VTOT10 + RSV("cloboras")
                            VTOT11 = VTOT11 + RSV("clokgs")
                            VTOT15 = VTOT15 + RSV("closevalue")
                        Else
                            VTOT9 = VTOT9 + 0
                            VTOT10 = VTOT10 + 0
                            VTOT11 = VTOT11 + 0
                            VTOT15 = VTOT15 + 0
                        End If

                        VTOT12 = VTOT12 + RSV("opvalue")
                        VTOT13 = VTOT13 + RSV("recvalue")
                        VTOT14 = VTOT14 + RSV("issvalue")

          RSV.MoveNext

         Loop

                Else
                    GoTo 300
                End If
                End If

             If Co >= 56 Then
                    Print #z, Space(5) + String(80, "-");
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    'Print #z, Chr(18) + Chr(27) + "E" + CENTRE(division, 80, " ") + Chr(27) + "F"
                    'co = co + 1
                    Call PartyHeaderarea(pg1, Co, CStr(F_Date), CStr(T_Date), CStr(catcd))
             End If
                Set opf = New Recordset
                If cat = "A" Then SR1 = "'C','P','V'" Else SR1 = cat
                opf.Open "SELECT cast(b.ratekg as decimal (12,4)) as raekg FROM RM_LOT B WHERE b.catcd = '" & SR1 & "' and b.lotdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' AND BALES-ISNULL(ISSBAL,0)>0", cnn
                'calculating average Rate
                If VTOT11 > 0 Then
                    Avg = val(VTOT15) / val(VTOT11)
                 End If
                If VTOT9 > 0 Then
                 Print #z, Space(5); Padr(rsv2("areaname"), 21, " ") & Space(2) & Padl(INF(VTOT9, 0), 9, " ") + Space(2) & Padl(INF(VTOT11, 3), 14, " ") + Space(2) + Padl(INF(VTOT15, 2), 16, " ") & Space(6) & Padl(INF(Avg, 2), 6, " ")
                 Co = Co + 1
                End If
                tot1 = val(tot1 + VTOT)
                tot2 = val(tot2 + vtot1)
                tot3 = val(tot3 + vtot2)
                tot4 = val(tot4 + vtot3)
                tot5 = val(tot5 + VTOT4)
                tot6 = val(tot6 + VTOT5)
                tot7 = val(tot7 + VTOT6)
                tot8 = val(tot8 + VTOT7)

                tot9 = val(tot9 + VTOT8)
                tot10 = val(tot10 + VTOT9)
                tot11 = val(tot11 + VTOT10)
                tot12 = val(tot12 + VTOT11)
                tot13 = val(tot13 + VTOT12)   'Opening value
                tot14 = val(tot14 + VTOT13)   'Received value
                tot15 = val(tot15 + VTOT14)   'Issue VaLUE
                tot16 = val(tot16 + VTOT15)   'Closing value


                If Co >= 56 Then
                    Print #z, Space(5) + String(80, "-");
                    Print #z, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    'Print #z, Chr(18) + Chr(27) + "E" + CENTRE(division, 80, " ") + Chr(27) + "F"
                    'co = co + 1
                    Call PartyHeaderarea(pg1, Co, CStr(F_Date), CStr(T_Date), CStr(catcd))
                End If
                vtot1 = 0
                vtot2 = 0
                vtot3 = 0
                VTOT4 = 0
                VTOT5 = 0
                VTOT6 = 0
                VTOT7 = 0
                VTOT8 = 0
                VTOT9 = 0
                VTOT10 = 0
                VTOT11 = 0
                VTOT12 = 0
                VTOT13 = 0
                VTOT14 = 0
                VTOT15 = 0
                VTOT = 0
300:
            rs1.MoveNext
        Loop
        If tot12 > 0 Then
            tavg = val(tot16) / val(tot12)
        End If
        Print #z,
        Co = Co + 1
        Print #z, Space(5) + String(80, "-")
        Co = Co + 1
        Print #z, Space(5) + "** Total **" + Space(12) + Padl(INF(tot10, 0), 9, " ") + Space(2) & Padl(INF(tot12, 3), 14, " ") + Space(2) & Padl(INF(tot16, 2), 16, " ") & Space(6) & Padl(INF(tavg, 2), 6, " ")  '& Chr(27) & "F"
        Co = Co + 1
        Print #z, Space(5) + String(80, "-")
        Co = Co + 1

Exit Sub
STATIONABSTRACT_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure STATIONABSTRACT of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
    Unload Me
End Sub
'By D.Parimalam
Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set cnn = New Connection
cnn.Open connectstring
Frame2.Visible = True
Check1.Visible = True
Check2.Visible = True
Check3.Visible = True

'     Set Rs = New Recordset
'     Rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where DIVCODE = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by LOTDT", cnn, adOpenStatic, adLockBatchOptimistic
'     If Rs.RecordCount <> 0 Then
'       Set DataCombo1.RowSource = Rs
'       DataCombo1.ListField = "Fields"
'     If Not Rs.EOF Then
'        Rs.MoveFirst
'        DataCombo1.Text = Rs(0)
'     End If
'     End If
DTPicker1.Enabled = True
DTPicker1.value = pdate
DTPicker1.MaxDate = pdate

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form misstock", vbInformation, head
Screen.MousePointer = 0
 End Sub

Public Sub VarietystockRepHeader1(pg1 As Integer, Co As Integer, S As String, a As String)
On Error GoTo VarietystockRepHeader1_Error

          Print #z, Chr(18) & Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(18)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) & Chr(27) + "E" + "Cotton Stock Statement" + Chr(27) + "F" + " as on " + CStr(Format((S), "dd/mm/yyyy")) + Space(32) + " Pg.: " + Padl(CStr(pg1), 3, "  ") '+ Chr(15)
          Print #z, Space(5) & String(80, "-")
          Print #z, Space(5) & "          Variety                                                          Bales "
          Print #z, Space(5) & String(80, "-")
          Co = Co + 6

Exit Sub
VarietystockRepHeader1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure VarietystockRepHeader1 of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub PartyHeader1(pg1 As Integer, Co As Integer, V As String, W As String)
On Error GoTo PartyHeader1_Error

Print #z, Chr(18)
Print #z, Chr(18) & Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #z, Chr(18)
SR = Format(pdate, "dd/mm/yy") + Space(2)
V = Format(DTPicker1.value, "yyyy-mm-dd")
Print #z, Space(5) + Chr(27) & "E" & "Stationwise Lotwise Stock" & Chr(27) & "F" & " as on" & Space(1) & Format(V, "dd/mm/yy") + Space(20) + SR + "Pg. : " + Padl(CStr(pg1), 3, " ") + Chr(18)
Print #z, Space(5) + String(80, "-")
'Print #z, Space(13) + "Station Name                       Lotno                     No.of Bales "
Print #z, Space(13) + "Station Name                     Lot No.              No.of Bales "
Print #z, Space(5) + String(80, "-")
Co = Co + 8

Exit Sub
PartyHeader1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyHeader1 of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub PartyHeaderarea(pg1 As Integer, Co As Integer, V As String, U As String, W As String)
On Error GoTo PartyHeaderarea_Error

          Print #z, Chr(18)
          Print #z, Chr(18) & Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
          Print #z, Chr(18)
          SR = Format(pdate, "dd/mm/yy") + Space(2)
          V = Format(DTPicker1.value, "yyyy-mm-dd")
          Print #z, Space(5) + Chr(27) & "E" & "Stationwise Stock Abstract" & Chr(27) & "F" & " as on" & Space(1) & Format(V, "dd/mm/yy") & Space(1) & Space(20) & SR + "Pg.:" + Space(1) + Padl(CStr(pg1), 3, " ")
          Print #z, Space(5) + String(80, "-")
          Print #z, Space(5) + "Station                    Bales             Kgs             Value    Avg.Rate"
          Print #z, Space(5) + String(80, "-")
          Co = Co + 4

Exit Sub
PartyHeaderarea_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyHeaderarea of Form misstock", vbInformation, head
Screen.MousePointer = 0
End Sub





