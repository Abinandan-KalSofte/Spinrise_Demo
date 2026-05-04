VERSION 5.00
Begin VB.Form opstk 
   Caption         =   "Year End Housekeeping"
   ClientHeight    =   5715
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9870
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5715
   ScaleWidth      =   9870
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   1605
      Left            =   1965
      TabIndex        =   0
      Top             =   1830
      Width           =   6255
      Begin VB.CommandButton Command2 
         Caption         =   "&Exit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   3870
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&Transfer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   1455
         TabIndex        =   1
         Top             =   630
         Width           =   1440
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Year End Housekeeping"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   300
      Left            =   2010
      TabIndex        =   3
      Top             =   1380
      Width           =   2940
   End
End
Attribute VB_Name = "opstk"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim CON As Connection
Dim Rs As Recordset
Dim rx As Recordset
Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

    Set CON = New Connection
    Set Rs = New Recordset
    CON.Open connectstring + "DATA PROVIDER=MSDATASHAPE"
    On Error GoTo xx
    Rs.Open "select top 1 lotyear from rm_lot", CON, adOpenStatic, adLockReadOnly
    GoTo yy
xx:
    CON.Execute "ALTER TABLE RM_LOT ADD LOTYEAR NUMERIC(4)"
    CON.Execute "update rm_lot set lotyear=2002"
    CON.Execute "ALTER TABLE RM_LOT ALTER COLUMN LOTYEAR NUMERIC(4) NOT NULL"
    CON.Execute "ALTER TABLE RM_BALE DROP CONSTRAINT FK_RM_BALE_RM_LOT "
    CON.Execute "ALTER TABLE RM_LOT DROP CONSTRAINT PK_RM_LOT"
    CON.Execute "ALTER TABLE RM_LOT ADD CONSTRAINT PK_RM_LOT PRIMARY KEY (DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,LOTYEAR)"
    GoTo yy
yy:
On Error GoTo jj
'    CON.Execute "insert into rm_lot select DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD,AREACD,VARCODE," & _
                "CNTCODE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,BNKCHG,ODINT," & _
                "FPARTY,FREGHT,RLYFRT,LDGULG,BRKRRT,BRKCOM,CARCHG,DNAMT1,DNAMT2,SPOTEXP," & _
                "INSAMT,BEDAMT,AEDAMT,TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,isnull(NETWT,0)-isnull(ISSWT,0),BBLFLG,isnull(BALES,0)-isnull(issbal,0)," & _
                "RATEKG,RATECY,GODOWN,LGROUP,STAPLEN,SHORT_FIBRE,MICRONAIRE,TRASH_PER,0 as ISSBAL,0 as ISSWT,PJTC,PJNO,PJDT,PJAMT,PTYPE,RG23A,dutydocno,plotno,'Y',staplen50,uniratio,mcoeff,strength," & Year(yldate) & " from rm_lot where isnull(bales,0)-isnull(issbal,0)>0 and lotyear=" & Year(yfdate)
                
                
    'CON.Execute "INSERT INTO RM_LOT SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD," & _
                " AREACD,VARCODE,CNTCODE,ARRNO,BILLNO,BILLDT,PTYWGT, " & _
                " TAXAMT,BNKCHG,ODINT,FPARTY,FREGHT,RLYFRT,LDGULG,BRKRRT, " & _
                " BRKCOM,CARCHG,DNAMT1,DNAMT2,SPOTEXP,INSAMT,BEDAMT,AEDAMT, " & _
                " TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,(isnull(NETWT,0)-isnull(ISSWT,0)) as NETWT, " & _
                " BBLFLG,(isnull(BALES,0)-isnull(issbal,0)) AS BALES,RATEKG,RATECY,GODOWN, " & _
                " LGROUP,STAPLEN,SHORT_FIBRE,MICRONAIRE,TRASH_PER,0 AS ISSBAL,0 AS ISSWT, " & _
                " PJTC,PJNO,PJDT,PJAMT,PTYPE,RG23A,dutydocno,PLOTNO,'Y' AS OPFLG,STAPLEN50, " & _
                " UNIRATIO,MCOEFF,STRENGTH, " & _
                " actisskgs,MODUSERID,MODUSRID,MODDATE,ARRDT,FQI,SCI,MATURE,HMATURE,IMATURE, " & _
                " reason,REJFLG,REJDT, " & Year(yldate) & " AS LOTYEAR, adjwt, adjust,adjreason,adjdt " & _
                " from rm_lot where isnull(bales,0)-isnull(issbal,0)>0  and (isnull(NETWT,0)-isnull(ISSWT,0)) > 0 and lotyear=" & Year(yfdate)
     strSQL = " INSERT INTO RM_LOT select distinct b.DIVCODE,b.CATCD,b.LOTNO,b.LOTDT,b.LOTTYPE,b.SUPCD,b.BRKCD, " & _
                 " b.AREACD,b.VARCODE,b.CNTCODE,b.ARRNO,b.BILLNO,b.BILLDT,b.PTYWGT, b.TAXAMT,b.BNKCHG,b.ODINT,b.FPARTY,b.FREGHT,b.RLYFRT,b.LDGULG,BRKRRT, b.BRKCOM,b.CARCHG,b.DNAMT1,b.DNAMT2,b.SPOTEXP,b.INSAMT,b.BEDAMT,b.AEDAMT, " & _
                 " b.TOTLANDCOST,b.GRSWGT,b.TAREWT,b.SAMPWT,round(isnull(b.netwt,0)-isnull(a.isswt,0),2) as netwt, b.BBLFLG,isnull(b.bales,0)-isnull(a.bales,0) as Bales,b.RATEKG,b.RATECY,b.GODOWN, " & _
                 " b.LGROUP,b.STAPLEN,b.SHORT_FIBRE,b.MICRONAIRE,b.TRASH_PER,0 AS ISSBAL,0 AS ISSWT, b.PJTC,b.PJNO,b.PJDT,b.PJAMT,b.PTYPE,b.RG23A,b.dutydocno,b.PLOTNO,'Y' as OPFLG,b.STAPLEN50, b.UNIRATIO,b.MCOEFF,b.STRENGTH,b.actisskgs,b.MODUSERID,b.MODUSRID,b.MODDATE,b.ARRDT,b.FQI,b.SCI, " & _
                 " b.MATURE,b.HMATURE,b.IMATURE, b.reason,b.REJFLG,b.REJDT, 2004 AS LOTYEAR,b.adjwt, b.adjust,b.adjreason,b.adjdt  from (select distinct a.DIVCODE,a.CATCD,a.LOTNO,a.LOTDT,a.LOTTYPE,a.SUPCD,a.BRKCD,a.AREACD,a.VARCODE,a.CNTCODE,a.ARRNO,a.BILLNO,a.BILLDT,a.PTYWGT, " & _
                 " a.TAXAMT,a.BNKCHG,a.ODINT,a.FPARTY,a.FREGHT,a.RLYFRT,a.LDGULG,BRKRRT,a.BRKCOM,a.CARCHG,a.DNAMT1,a.DNAMT2,a.SPOTEXP,a.INSAMT,a.BEDAMT,a.AEDAMT, a.TOTLANDCOST,a.GRSWGT,a.TAREWT,a.SAMPWT,round(isnull(a.netwt,0),2) as Netwt ,a.BBLFLG,isnull(a.BALES,0) as Bales,a.RATEKG,a.RATECY,a.GODOWN, " & _
                 " a.LGROUP,a.STAPLEN,a.SHORT_FIBRE,a.MICRONAIRE,a.TRASH_PER,0 AS ISSBAL,0 AS ISSWT,a.PJTC,a.PJNO,a.PJDT,a.PJAMT,a.PTYPE,a.RG23A,a.dutydocno,a.PLOTNO,'Y' as OPFLG,a.STAPLEN50,a.UNIRATIO,a.MCOEFF,a.STRENGTH,a.actisskgs,a.MODUSERID,a.MODUSRID,a.MODDATE,a.ARRDT,a.FQI,a.SCI, " & _
                 " a.MATURE,a.HMATURE,a.IMATURE, a.reason,a.REJFLG,a.REJDT, 2004 AS LOTYEAR,a.adjwt,A.adjust , A.adjreason, A.adjdt from rm_lot a  where  a.DIVCODE ='" & Divcode & "' and A.LOTDT <= '" & Format(yldate, "YYYY-MM-DD") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') " & _
                 " and a.lotyear='" & Year(yfdate) & "')b,(Select distinct a.lotno,a.lotdt,a.catcd, COUNT(*) as bales,sum(IsNull(A.actisskgs, 0) - TAREWT / bales) As isswt from rm_issb a,rm_lot b ,rm_issh c where a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(yldate, "YYYY-MM-DD") & "' and  a.catcd='C' and lotyear='" & Year(yfdate) & "' " & _
                 " group by a.lotno,a.lotdt,a.catcd)a where b.lotno*=a.lotno and b.lotdt*=a.lotdt and b.catcd*=a.catcd  Group By b.DIVCODE,b.CATCD,b.LOTNO,b.LOTDT,b.LOTTYPE,b.SUPCD,b.BRKCD,b.AREACD,b.VARCODE,b.CNTCODE,b.ARRNO,b.BILLNO,b.BILLDT,b.PTYWGT, b.TAXAMT,b.BNKCHG,b.ODINT,b.FPARTY,b.FREGHT,b.RLYFRT,b.LDGULG,BRKRRT, b.BRKCOM,b.CARCHG,b.DNAMT1,b.DNAMT2,b.SPOTEXP,b.INSAMT,b.BEDAMT,b.AEDAMT, " & _
                 " b.TOTLANDCOST,b.GRSWGT,b.TAREWT,b.SAMPWT,b.RATEKG,b.RATECY,b.GODOWN,b.BBLFLG,b.LGROUP,b.STAPLEN,b.SHORT_FIBRE,b.MICRONAIRE,b.TRASH_PER,b..ISSBAL,b.ISSWT,b.PJTC,b.PJNO,b.PJDT,b.PJAMT,b.PTYPE,b.RG23A,b.dutydocno,b.PLOTNO,b.OPFLG,b.STAPLEN50,b.UNIRATIO,b.MCOEFF,b.STRENGTH,b.actisskgs,b.MODUSERID,b.MODUSRID,b.MODDATE,b.ARRDT,b.FQI,b.SCI,b.MATURE,b.HMATURE,b.IMATURE, b.reason,b.REJFLG,b.REJDT,b.LOTYEAR,b.adjwt, b.adjust,b.adjreason,b.adjdt,b.netwt,a.isswt,b.bales,a.bales "
           
     CON.Execute " INSERT INTO RM_LOT select distinct b.DIVCODE,b.CATCD,b.LOTNO,b.LOTDT,b.LOTTYPE,b.SUPCD,b.BRKCD, " & _
                 " b.AREACD,b.VARCODE,b.CNTCODE,b.ARRNO,b.BILLNO,b.BILLDT,b.PTYWGT, b.TAXAMT,b.BNKCHG,b.ODINT,b.FPARTY,b.FREGHT,b.RLYFRT,b.LDGULG,BRKRRT, b.BRKCOM,b.CARCHG,b.DNAMT1,b.DNAMT2,b.SPOTEXP,b.INSAMT,b.BEDAMT,b.AEDAMT, " & _
                 " b.TOTLANDCOST,b.GRSWGT,b.TAREWT,b.SAMPWT,round(isnull(b.netwt,0)-isnull(a.isswt,0),2) as netwt, b.BBLFLG,isnull(b.bales,0)-isnull(a.bales,0) as Bales,b.RATEKG,b.RATECY,b.GODOWN, " & _
                 " b.LGROUP,b.STAPLEN,b.SHORT_FIBRE,b.MICRONAIRE,b.TRASH_PER,0 AS ISSBAL,0 AS ISSWT, b.PJTC,b.PJNO,b.PJDT,b.PJAMT,b.PTYPE,b.RG23A,b.dutydocno,b.PLOTNO,'Y' as OPFLG,b.STAPLEN50, b.UNIRATIO,b.MCOEFF,b.STRENGTH,b.actisskgs,b.MODUSERID,b.MODUSRID,b.MODDATE,b.ARRDT,b.FQI,b.SCI, " & _
                 " b.MATURE,b.HMATURE,b.IMATURE, b.reason,b.REJFLG,b.REJDT, 2004 AS LOTYEAR,b.adjwt, b.adjust,b.adjreason,b.adjdt  from (select distinct a.DIVCODE,a.CATCD,a.LOTNO,a.LOTDT,a.LOTTYPE,a.SUPCD,a.BRKCD,a.AREACD,a.VARCODE,a.CNTCODE,a.ARRNO,a.BILLNO,a.BILLDT,a.PTYWGT, " & _
                 " a.TAXAMT,a.BNKCHG,a.ODINT,a.FPARTY,a.FREGHT,a.RLYFRT,a.LDGULG,BRKRRT,a.BRKCOM,a.CARCHG,a.DNAMT1,a.DNAMT2,a.SPOTEXP,a.INSAMT,a.BEDAMT,a.AEDAMT, a.TOTLANDCOST,a.GRSWGT,a.TAREWT,a.SAMPWT,round(isnull(a.netwt,0),2) as Netwt ,a.BBLFLG,isnull(a.BALES,0) as Bales,a.RATEKG,a.RATECY,a.GODOWN, " & _
                 " a.LGROUP,a.STAPLEN,a.SHORT_FIBRE,a.MICRONAIRE,a.TRASH_PER,0 AS ISSBAL,0 AS ISSWT,a.PJTC,a.PJNO,a.PJDT,a.PJAMT,a.PTYPE,a.RG23A,a.dutydocno,a.PLOTNO,'Y' as OPFLG,a.STAPLEN50,a.UNIRATIO,a.MCOEFF,a.STRENGTH,a.actisskgs,a.MODUSERID,a.MODUSRID,a.MODDATE,a.ARRDT,a.FQI,a.SCI, " & _
                 " a.MATURE,a.HMATURE,a.IMATURE, a.reason,a.REJFLG,a.REJDT, 2004 AS LOTYEAR,a.adjwt,A.adjust , A.adjreason, A.adjdt from rm_lot a  where  a.DIVCODE ='" & Divcode & "' and A.LOTDT <= '" & Format(yldate, "YYYY-MM-DD") & "'  and (a.rejflg='N' or a.rejdt>'" & Format(yldate, "YYYY-MM-DD") & "') " & _
                 " and a.lotyear='" & Year(yfdate) & "')b,(Select distinct a.lotno,a.lotdt,a.catcd, COUNT(*) as bales,sum(IsNull(A.actisskgs, 0) - TAREWT / bales) As isswt from rm_issb a,rm_lot b ,rm_issh c where a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and a.docdt<='" & Format(yldate, "YYYY-MM-DD") & "' and  a.catcd='C' and lotyear='" & Year(yfdate) & "' " & _
                 " group by a.lotno,a.lotdt,a.catcd)a where b.lotno*=a.lotno and b.lotdt*=a.lotdt and b.catcd*=a.catcd  Group By b.DIVCODE,b.CATCD,b.LOTNO,b.LOTDT,b.LOTTYPE,b.SUPCD,b.BRKCD,b.AREACD,b.VARCODE,b.CNTCODE,b.ARRNO,b.BILLNO,b.BILLDT,b.PTYWGT, b.TAXAMT,b.BNKCHG,b.ODINT,b.FPARTY,b.FREGHT,b.RLYFRT,b.LDGULG,BRKRRT, b.BRKCOM,b.CARCHG,b.DNAMT1,b.DNAMT2,b.SPOTEXP,b.INSAMT,b.BEDAMT,b.AEDAMT, " & _
                 " b.TOTLANDCOST,b.GRSWGT,b.TAREWT,b.SAMPWT,b.RATEKG,b.RATECY,b.GODOWN,b.BBLFLG,b.LGROUP,b.STAPLEN,b.SHORT_FIBRE,b.MICRONAIRE,b.TRASH_PER,b..ISSBAL,b.ISSWT,b.PJTC,b.PJNO,b.PJDT,b.PJAMT,b.PTYPE,b.RG23A,b.dutydocno,b.PLOTNO,b.OPFLG,b.STAPLEN50,b.UNIRATIO,b.MCOEFF,b.STRENGTH,b.actisskgs,b.MODUSERID,b.MODUSRID,b.MODDATE,b.ARRDT,b.FQI,b.SCI,b.MATURE,b.HMATURE,b.IMATURE, b.reason,b.REJFLG,b.REJDT,b.LOTYEAR,b.adjwt, b.adjust,b.adjreason,b.adjdt,b.netwt,a.isswt,b.bales,a.bales "

    
'    Set RX = New Recordset
'
'    'RX.Open " SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD," & _
'            " AREACD,VARCODE,CNTCODE,ARRNO,BILLNO,BILLDT,PTYWGT, " & _
'            " ISNULL(TAXAMT,0) AS TAXAMT,ISNULL(BNKCHG,0) AS BNKCHG,ISNULL(ODINT,0) AS ODINT,ISNULL(FPARTY,'') AS FPARTY,ISNULL(FREGHT,0) AS FREIGHT,ISNULL(RLYFRT,0) AS RLYFRT,ISNULL(LDGULG,0) AS LDGULG,ISNULL(BRKRRT,0) AS BRKRRT, " & _
'            " BRKCOM,ISNULL(CARCHG,0) AS CARCHG,DNAMT1,DNAMT2,SPOTEXP,INSAMT,BEDAMT,ISNULL(AEDAMT,0) AS AEDAMT, " & _
'            " TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,(isnull(NETWT,0)-isnull(ISSWT,0)) as NETWT, " & _
'            " ISNULL(BBLFLG,'') AS BBLFLG,(isnull(BALES,0)-isnull(issbal,0)) AS BALES,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,ISNULL(GODOWN,0) AS GODOWN, " & _
'            " ISNULL(LGROUP,0) AS LGROUP,ISNULL(STAPLEN,0) AS STAPLEN,ISNULL(SHORT_FIBRE,0) AS SHORT_FIBRE,ISNULL(MICRONAIRE,0) AS MICRONAIRE,ISNULL(TRASH_PER,0) AS TRASH_PER,0 AS ISSBAL,0 AS ISSWT, " & _
'            " ISNULL(PJTC,0) AS PJTC,ISNULL(PJNO,0) AS PJNO,ISNULL(PJDT,0) AS PJDT,ISNULL(PJAMT,0) AS PJAMT,ISNULL(PTYPE,'') AS PTYPE,ISNULL(RG23A,'') AS RG23A,ISNULL(dutydocno,0) AS DUTYDOCNO,ISNULL(PLOTNO,0) AS PLOTNO,'Y' AS OPFLG,ISNULL(STAPLEN50,0) AS STAPLEN50, " & _
'            " ISNULL(UNIRATIO,0) AS UNIRATIO,ISNULL(MCOEFF,0) AS MCOEFF,ISNULL(STRENGTH,0) AS STRENGTH, " & _
'            " ISNULL(actisskgs,0) AS ACTISSKGS,ISNULL(MODUSERID,'') AS MODUSERID,ISNULL(MODUSRID,'') AS MODUSRID,ISNULL(MODDATE,0) AS MODDATE,ISNULL(ARRDT,0) AS ARRDT,ISNULL(FQI,0) AS FQI,ISNULL(SCI,0) AS SCI,ISNULL(MATURE,0) AS MATURE,ISNULL(HMATURE,0) AS HMATURE,ISNULL(IMATURE,0) AS IMATURE, " & _
'            " ISNULL(reason,'') AS REASON ,ISNULL(REJFLG,'') AS REJFLG, ISNULL(REJDT,0) AS REJDT, " & Year(yldate) & " AS LOTYEAR, ISNULL(adjwt,0)AS ADJWT, ISNULL(adjust,'') AS ADJUST, ISNULL(adjreason,'') AS ADJREASON,ISNULL(adjdt,0) AS ADJDT " & _
'           " from rm_lot where isnull(bales,0)-isnull(issbal,0)>0  and (isnull(NETWT,0)-isnull(ISSWT,0)) > 0 and lotyear=" & Year(yfdate), CON, adOpenStatic, adLockBatchOptimistic
'
'
'        RX.Open " SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD," & _
'                " AREACD,VARCODE,CNTCODE,ARRNO,BILLNO,BILLDT,PTYWGT, " & _
'                " TAXAMT,BNKCHG,ODINT,FPARTY,FREGHT,RLYFRT,LDGULG,BRKRRT, " & _
'                " BRKCOM,CARCHG,DNAMT1,DNAMT2,SPOTEXP,INSAMT,BEDAMT,AEDAMT, " & _
'                " TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,(isnull(NETWT,0)-isnull(ISSWT,0)) as NETWT, " & _
'                " BBLFLG,(isnull(BALES,0)-isnull(issbal,0)) AS BALES,RATEKG,RATECY,GODOWN, " & _
'                " LGROUP,STAPLEN,SHORT_FIBRE,MICRONAIRE,TRASH_PER,0 AS ISSBAL,0 AS ISSWT, " & _
'                " PJTC,PJNO,PJDT,PJAMT,PTYPE,RG23A,dutydocno,PLOTNO,'Y' AS OPFLG,STAPLEN50, " & _
'                " UNIRATIO,MCOEFF,STRENGTH, " & _
'                " actisskgs,MODUSERID,MODUSRID,MODDATE,ARRDT,FQI,SCI,MATURE,HMATURE,IMATURE, " & _
'                " reason,REJFLG,REJDT, " & Year(yldate) & " AS LOTYEAR, adjwt, adjust,adjreason,adjdt " & _
'                " from rm_lot where isnull(bales,0)-isnull(issbal,0)>0  and (isnull(NETWT,0)-isnull(ISSWT,0)) > 0 and lotyear=" & Year(yfdate), CON, adOpenStatic, adLockBatchOptimistic
'
'
'           ',adjdt
'    RX.MoveFirst
'    Do While Not RX.EOF
'        CON.Execute "insert into rm_lot (DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD,AREACD,VARCODE,CNTCODE,ARRNO,BILLNO,BILLDT,PTYWGT,TAXAMT,BNKCHG,ODINT,FPARTY,FREGHT,RLYFRT,LDGULG,BRKRRT, " & _
'                    "BRKCOM,CARCHG,DNAMT1,DNAMT2,SPOTEXP,INSAMT,BEDAMT,AEDAMT,TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,RATECY,GODOWN,LGROUP,STAPLEN,SHORT_FIBRE,MICRONAIRE,TRASH_PER,ISSBAL,ISSWT, " & _
'                    "PJTC,PJNO,PJDT,PJAMT,PTYPE,RG23A,dutydocno,PLOTNO,OPFLG,STAPLEN50,UNIRATIO,MCOEFF,STRENGTH,actisskgs,MODUSERID,MODUSRID,MODDATE,ARRDT,FQI,SCI,MATURE,HMATURE,IMATURE,reason,REJFLG,REJDT,LOTYEAR,adjwt,adjust,adjreason)" & _
'                    "VALUES ('" & IIf(IsNull(RX("DIVCODE")) = True, "NULL", RX("DIVCODE")) & "','" & IIf(IsNull(RX("CATCD")) = True, "NULL", RX("CATCD")) & "'," & IIf(IsNull(RX("LOTNO")) = True, "NULL", RX("LOTNO")) & ",'" & IIf(IsNull(RX("LOTDT")) = True, "NULL", Format(RX("LOTDT"), "YYYY-MM-DD")) & "','" & IIf(IsNull(RX("LOTTYPE")) = True, "NULL", RX("LOTTYPE")) & "','" & IIf(IsNull(RX("SUPCD")) = True, "NULL", RX("SUPCD")) & "','" & IIf(IsNull(RX("BRKCD")) = True, "NULL", RX("BRKCD")) & "','" & IIf(IsNull(RX("AREACD")) = True, "NULL", RX("AREACD")) & "','" & IIf(IsNull(RX("VARCODE")) = True, "NULL", RX("VARCODE")) & "','" & IIf(IsNull(RX("CNTCODE")) = True, "NULL", RX("CNTCODE")) & "'," & IIf(IsNull(RX("ARRNO")) = True, "NULL", RX("ARRNO")) & ",'" & IIf(IsNull(RX("BILLNO")) = True, "NULL", RX("BILLNO")) & "','" & IIf(IsNull(RX("BILLDT")) = True, "NULL", Format(RX("BILLDT"), "YYYY-MM-DD")) & "'," & IIf(IsNull(RX("PTYWGT")) = True, 0, RX("PTYWGT")) & ", " & _
'                    " " & IIf(IsNull(RX("TAXAMT")) = True, 0, RX("TAXAMT")) & "," & IIf(IsNull(RX("BNKCHG")) = True, 0, RX("BNKCHG")) & "," & IIf(IsNull(RX("ODINT")) = True, 0, RX("ODINT")) & ",'" & IIf(IsNull(RX("FPARTY")) = True, "NULL", RX("FPARTY")) & "'," & IIf(IsNull(RX("FREGHT")) = True, 0, RX("FREGHT")) & "," & IIf(IsNull(RX("RLYFRT")) = True, 0, RX("RLYFRT")) & "," & IIf(IsNull(RX("LDGULG")) = True, 0, RX("LDGULG")) & "," & IIf(IsNull(RX("BRKRRT")) = True, 0, RX("BRKRRT")) & "," & IIf(IsNull(RX("BRKCOM")) = True, 0, RX("BRKCOM")) & "," & IIf(IsNull(RX("CARCHG")) = True, 0, RX("CARCHG")) & "," & IIf(IsNull(RX("DNAMT1")) = True, 0, RX("DNAMT1")) & "," & IIf(IsNull(RX("DNAMT2")) = True, 0, RX("DNAMT2")) & "," & IIf(IsNull(RX("SPOTEXP")) = True, 0, RX("SPOTEXP")) & "," & IIf(IsNull(RX("INSAMT")) = True, 0, RX("INSAMT")) & ", " & _
'                    " " & IIf(IsNull(RX("BEDAMT")) = True, 0, RX("TAXAMT")) & "," & IIf(IsNull(RX("AEDAMT")) = True, 0, RX("AEDAMT")) & "," & IIf(IsNull(RX("TOTLANDCOST")) = True, 0, RX("TOTLANDCOST")) & "," & IIf(IsNull(RX("GRSWGT")) = True, 0, RX("GRSWGT")) & "," & IIf(IsNull(RX("TAREWT")) = True, 0, RX("TAREWT")) & "," & IIf(IsNull(RX("SAMPWT")) = True, 0, RX("SAMPWT")) & "," & IIf(IsNull(RX("NETWT")) = True, 0, RX("NETWT")) & ",'" & IIf(IsNull(RX("BBLFLG")) = True, "NULL", RX("BBLFLG")) & "'," & IIf(IsNull(RX("BALES")) = True, 0, RX("BALES")) & "," & IIf(IsNull(RX("RATEKG")) = True, 0, RX("RATEKG")) & "," & IIf(IsNull(RX("RATECY")) = True, 0, RX("RATECY")) & ",'" & IIf(IsNull(RX("GODOWN")) = True, "NULL", RX("GODOWN")) & "','" & IIf(IsNull(RX("LGROUP")) = True, "NULL", RX("LGROUP")) & "'," & IIf(IsNull(RX("STAPLEN")) = True, 0, RX("STAPLEN")) & ", " & _
'                    " " & IIf(IsNull(RX("SHORT_FIBRE")) = True, 0, RX("SHORT_FIBRE")) & "," & IIf(IsNull(RX("MICRONAIRE")) = True, 0, RX("MICRONAIRE")) & "," & IIf(IsNull(RX("TRASH_PER")) = True, 0, RX("MICRONAIRE")) & "," & IIf(IsNull(RX("ISSBAL")) = True, 0, RX("ISSBAL")) & "," & IIf(IsNull(RX("ISSWT")) = True, 0, RX("ISSWT")) & "," & IIf(IsNull(RX("PJTC")) = True, 0, RX("PJTC")) & "," & IIf(IsNull(RX("PJNO")) = True, 0, RX("PJNO")) & "," & IIf(IsNull(RX("PJDT")) = True, "NULL", RX("PJDT")) & "," & IIf(IsNull(RX("PJAMT")) = True, 0, RX("PJAMT")) & ",'" & IIf(IsNull(RX("PTYPE")) = True, "NULL", RX("PTYPE")) & "','" & IIf(IsNull(RX("RG23A")) = True, "NULL", RX("RG23A")) & "','" & IIf(IsNull(RX("dutydocno")) = True, "NULL", RX("dutydocno")) & "','" & IIf(IsNull(RX("PLOTNO")) = True, "NULL", RX("PLOTNO")) & "','" & IIf(IsNull(RX("OPFLG")) = True, "NULL", RX("OPFLG")) & "', " & _
'                    " " & IIf(IsNull(RX("STAPLEN50")) = True, 0, RX("STAPLEN50")) & "," & IIf(IsNull(RX("UNIRATIO")) = True, 0, RX("UNIRATIO")) & "," & IIf(IsNull(RX("MCOEFF")) = True, 0, RX("MCOEFF")) & "," & IIf(IsNull(RX("STRENGTH")) = True, 0, RX("STRENGTH")) & "," & IIf(IsNull(RX("actisskgs")) = True, 0, RX("actisskgs")) & ",'" & IIf(IsNull(RX("MODUSERID")) = True, "NULL", RX("MODUSERID")) & "','" & IIf(IsNull(RX("MODUSRID")) = True, "NULL", RX("MODUSRID")) & "'," & IIf(IsNull(RX("MODDATE")) = True, "NULL", RX("MODDATE")) & "," & IIf(IsNull(RX("ARRDT")) = True, "NULL", Format(RX("ARRDT"), "YYYY-MM-DD")) & "," & IIf(IsNull(RX("FQI")) = True, 0, RX("FQI")) & "," & IIf(IsNull(RX("SCI")) = True, 0, RX("SCI")) & "," & IIf(IsNull(RX("MATURE")) = True, 0, RX("MATURE")) & "," & IIf(IsNull(RX("HMATURE")) = True, 0, RX("HMATURE")) & "," & IIf(IsNull(RX("IMATURE")) = True, 0, RX("IMATURE")) & ", " & _
'                    " '" & IIf(IsNull(RX("reason")) = True, "NULL", RX("reason")) & "','" & IIf(IsNull(RX("REJFLG")) = True, "NULL", RX("REJFLG")) & "','" & IIf(IsNull(RX("REJDT")) = True, "NULL", Format(RX("REJDT"), "YYYY-MM-DD")) & "'," & IIf(IsNull(RX("LOTYEAR")) = True, 0, RX("LOTYEAR")) & "," & IIf(IsNull(RX("adjwt")) = True, 0, RX("adjwt")) & ",'" & IIf(IsNull(RX("adjust")) = True, "NULL", RX("adjust")) & "','" & IIf(IsNull(RX("adjreason")) = True, "NULL", RX("adjreason")) & "')"         ','" & IIf(IsNull(RX("adjdt")) = True, "NULL", Format(RX("adjdt"), "YYYY-MM-DD")) & "'
'
'
'        'CON.Execute "insert into rm_lot (DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,SUPCD,BRKCD,AREACD,VARCODE,CNTCODE,ARRNO,BILLNO,BILLDT,PTYWGT,TAXAMT,BNKCHG,ODINT,FPARTY,FREGHT,RLYFRT,LDGULG,BRKRRT, " & _
'                    "BRKCOM,CARCHG,DNAMT1,DNAMT2,SPOTEXP,INSAMT,BEDAMT,AEDAMT,TOTLANDCOST,GRSWGT,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,RATECY,GODOWN,LGROUP,STAPLEN,SHORT_FIBRE,MICRONAIRE,TRASH_PER,ISSBAL,ISSWT, " & _
'                    "PJTC,PJNO,PJDT,PJAMT,PTYPE,RG23A,dutydocno,PLOTNO,OPFLG,STAPLEN50,UNIRATIO,MCOEFF,STRENGTH,actisskgs,MODUSERID,MODUSRID,MODDATE,ARRDT,FQI,SCI,MATURE,HMATURE,IMATURE,reason,REJFLG,REJDT,LOTYEAR,adjwt,adjust,adjreason,adjdt)" & _
'                    "VALUES ('" & IIf(IsNull(RX("DIVCODE")) = True, "NULL", RX("DIVCODE")) & "','" & RX("CATCD") & "','" & RX("LOTNO") & "','" & Format(RX("LOTDT"), "YYYY-MM-DD") & "','" & RX("LOTTYPE") & "','" & RX("SUPCD") & "','" & IIf(IsNull(RX("BRKCD")) = True, "NULL", RX("BRKCD")) & "','" & RX("AREACD") & "','" & RX("VARCODE") & "','" & RX("CNTCODE") & "','" & RX("ARRNO") & "','" & RX("BILLNO") & "','" & RX("BILLDT") & "','" & RX("PTYWGT") & "', " & _
'                    "'" & RX("TAXAMT") & "','" & RX("BNKCHG") & "','" & RX("ODINT") & "','" & IIf(RX("FPARTY") = "", "NULL", RX("FPARTY")) & "','" & RX("FREIGHT") & "','" & RX("RLYFRT") & "','" & RX("LDGULG") & "','" & RX("BRKRRT") & "','" & RX("BRKCOM") & "','" & RX("CARCHG") & "','" & RX("DNAMT1") & "','" & RX("DNAMT2") & "','" & RX("SPOTEXP") & "','" & RX("INSAMT") & "', " & _
'                    "'" & RX("BEDAMT") & "','" & RX("AEDAMT") & "','" & RX("TOTLANDCOST") & "','" & RX("GRSWGT") & "','" & RX("TAREWT") & "','" & RX("SAMPWT") & "','" & RX("NETWT") & "','" & RX("BBLFLG") & "','" & RX("BALES") & "','" & RX("RATEKG") & "','" & RX("RATECY") & "','" & RX("GODOWN") & "','" & RX("LGROUP") & "','" & RX("STAPLEN") & "', " & _
'                    "'" & RX("SHORT_FIBRE") & "','" & RX("MICRONAIRE") & "','" & RX("TRASH_PER") & "','" & RX("ISSBAL") & "','" & RX("ISSWT") & "','" & RX("PJTC") & "','" & RX("PJNO") & "','" & RX("PJDT") & "','" & RX("PJAMT") & "','" & RX("PTYPE") & "','" & RX("RG23A") & "','" & RX("dutydocno") & "','" & RX("PLOTNO") & "','" & RX("OPFLG") & "', " & _
'                    "'" & RX("STAPLEN50") & "','" & RX("UNIRATIO") & "','" & RX("MCOEFF") & "','" & RX("STRENGTH") & "','" & RX("actisskgs") & "','" & RX("MODUSERID") & "','" & RX("MODUSRID") & "','" & RX("MODDATE") & "','" & Format(RX("ARRDT"), "YYYY-MM-DD") & "','" & RX("FQI") & "','" & RX("SCI") & "','" & RX("MATURE") & "','" & RX("HMATURE") & "','" & RX("IMATURE") & "', " & _
'                    "'" & RX("reason") & "','" & IIf(IsNull(RX("REJFLG")) = True, Null, RX("REJFLG")) & "','" & Format(RX("REJDT"), "YYYY-MM-DD") & "','" & RX("LOTYEAR") & "','" & RX("adjwt") & "','" & RX("adjust") & "','" & RX("adjreason") & "','" & Format(RX("adjdt"), "YYYY-MM-DD") & "')"
'        RX.MoveNext
'    Loop
             
   'cashdis,qtydis,lccharge,
    
    MsgBox "Records Transfered", vbInformation
    Command1.Enabled = False
    Exit Sub
jj:
    MsgBox Err.description, vbExclamation
    Command1.Enabled = False

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command1_Click of Form opstk", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure Command2_Click of Form opstk", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
'Call NEWFORM1(BUTTON, 69)
End Sub
