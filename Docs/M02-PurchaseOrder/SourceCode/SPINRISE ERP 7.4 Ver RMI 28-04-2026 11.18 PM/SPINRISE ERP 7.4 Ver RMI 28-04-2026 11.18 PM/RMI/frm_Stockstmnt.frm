VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_Stockstmnt 
   Caption         =   "frm_Stockstmnt"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   2310
      Top             =   6330
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.PictureBox SSTab2 
      Height          =   780
      Left            =   690
      ScaleHeight     =   720
      ScaleWidth      =   5415
      TabIndex        =   7
      Top             =   3705
      Width           =   5475
      Begin VB.Frame Frame5 
         Height          =   570
         Left            =   150
         TabIndex        =   8
         Top             =   60
         Width           =   5190
         Begin VB.OptionButton Option5 
            Caption         =   "No"
            Height          =   285
            Left            =   3360
            TabIndex        =   10
            Top             =   210
            Value           =   -1  'True
            Width           =   1140
         End
         Begin VB.OptionButton Option4 
            Caption         =   "Yes"
            Height          =   330
            Left            =   1785
            TabIndex        =   9
            Top             =   180
            Width           =   1260
         End
         Begin VB.Label Label11 
            Caption         =   "Report Footer"
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
            Left            =   120
            TabIndex        =   11
            Top             =   225
            Width           =   1425
         End
      End
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
      Left            =   3630
      TabIndex        =   1
      Top             =   4815
      Width           =   915
   End
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
      Left            =   2055
      TabIndex        =   0
      Top             =   4815
      Width           =   915
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2370
      Left            =   915
      TabIndex        =   2
      Top             =   1065
      Width           =   5025
      _ExtentX        =   8864
      _ExtentY        =   4180
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "frm_Stockstmnt.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2235
         Left            =   120
         TabIndex        =   3
         Top             =   30
         Width           =   4800
         Begin MSComCtl2.DTPicker dtpDate 
            Height          =   345
            Left            =   1800
            TabIndex        =   4
            Top             =   600
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   169738241
            CurrentDate     =   37578
         End
         Begin VB.Label lblTitle 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Stock Statement-Varietywise"
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
            Left            =   15
            TabIndex        =   6
            Top             =   105
            Width           =   4755
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "As On Date"
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
            Left            =   285
            TabIndex        =   5
            Top             =   660
            Width           =   990
         End
      End
   End
   Begin Crystal.CrystalReport CRVIEWER1 
      Left            =   195
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   6270
      TabIndex        =   12
      Top             =   810
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
End
Attribute VB_Name = "frm_Stockstmnt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim avgdate As String
Private Sub cmdExit_Click()
Unload Me
intervalMinutes = -1
Exit Sub
End Sub

Private Sub cmdReport_Click()
intervalMinutes = -1
Select Case Repindex
Case 0
   Call CrystalFooter(UserFooter1.SelectedStr, 100)
    footervar = CStr(Foot)
    FrmRpt.RptHead = 2
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_rmi_stockstatement.rpt"
    parameter1 = divname
    parameter2 = footervar
    rephead = "Stock Statement-Varietywise as on " & Format(dtpDate.value, "dd/mm/yy")
    Dim STKDT As String
     STKDT = ""
     STKDT = Format(dtpDate.value, "yyyy-mm-dd")
     
     sfdate = Format(yfdate, "yyyy-mm-dd")
     Sldate = Format(yldate, "yyyy-mm-dd")
     LOTYR = Year(yfdate)
     intervalMinutes = -1
  If Table_Exists("stockstatement") = True Then
         DB.Execute "drop view stockstatement"
  End If
   
        DB.Execute "create view stockstatement AS  select k.VARNAME,(k.opbales+k.opbORAS) as Openstock,(k.RECBALES+k.RECBORAS) as Arrival,(k.ISSBALES+k.ISSBORAS) as Issues," & _
    "(k.CLOBALES+k.CLOBORAS)  as Closestock  from (select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0)) " & _
    "+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE, SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+ " & _
    "sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+ " & _
    "sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE FROM (select varcode,LOTNO,LOTDT, sum(opbales-issbales) AS OPENBAL,sum(opboras-issboras) as OPENBOR,sum(opkgs-isskgs) as OPENKGS,sum(OPvalue-issvalue) as OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ," & _
    "0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from (select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,Case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & LOTYR & "') AND (b.lotdt < '" & STKDT & "' or UPPER(OPFLG)='Y') and BALES >0   and (B.rejflg='N' or B.rejdt>='" & sfdate & "') group by b.varcode,b.LOTNO , b.LOTDT, b.bblflg, b.ratekg " & _
    "Union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND (b.lotdt < '" & STKDT & "' OR UPPER(OPFLG)='Y')  and docdt between '" & sfdate & "' and '" & Sldate & "'  and b.lotno=c.lotno and  B.lotyear in ('" & LOTYR & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & STKDT & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg Union " & _
    "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue,0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FAVAOURABLEWGT,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & STKDT & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt < '" & STKDT & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT HAVING sum(opbales-issbales) >0 OR sum(opboras-issboras) > 0 Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as RECBAL,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as RECBOR,Case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as RECKGS,SUM(B.FAVAOURABLEWGT)*RATEKG as RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE , 0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE, 0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS, 0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt> '" & STKDT & "') and B.lotyear= '" & LOTYR & "' AND B.LOTDT = '" & STKDT & "' group by b.varcode,B.LOTNO, b.LOTDT , b.opflg, b.bblflg, ratekg Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 as RECBAL,0 as RECBOR,0 as RECKGS,0 as RECVALUE, isnull(sum(bales),0) as RTNBAL,isnull(sum(FAVAOURABLEWGT),0) as RTNKGS,round((sum(isnull(FAVAOURABLEWGT,0))),3)*cast(ratekg as decimal (12,4))AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot where divcode='" & Divcode & "'  and lotyear='" & LOTYR & "' and lottype='T' and transfertype='JR' and lotdt = '" & STKDT & "'  GROUP BY VARCODE,LOTNO,LOTDT,RATEKG Union " & _
    "SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE,0 AS REJBAL,0 AS REJKGS,0 AS REJVALUE , count(C.baleno) AS LOSSBAL,sum(isnull(C.FAVAOURABLEWGT,0)-isnull(C.FAVAOURABLEWGT,0)) LOSSKGS,round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS LOSSVALUE from RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.lotdt = '" & STKDT & "'  and C.Issued = 'Y' group by C.VARCODE,C.LOTNO,C.LOTDT,B.RATEKG Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,SUM(PRODBAL) AS PRODBAL,SUM(PRODBOR) AS PRODBOR,SUM(PRODKGS) AS PRODKGS,SUM(PRODVALUE) AS PRODVALUE, SUM(SALESBAL) AS SALESBAL,SUM(SALESBOR) AS SALESBOR,SUM(SALESKGS) AS SALESKGS,SUM(SALESVALUE) AS SALESVALUE, SUM(TRANSBAL) AS TRANSBAL,SUM(TRANSBOR) AS TRANSBOR,SUM(TRANSKGS) AS TRANSKGS,SUM(TRANSVALUE) AS TRANSVALUE, SUM(JWBAL) AS JWBAL,SUM(JWBOR) AS JWBOR,SUM(JWKGS) AS JWKGS,SUM(JWVALUE) AS JWVALUE,  0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE From (select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as PRODBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as PRODBOR,sum(ISNULL(C.isskgs,0)) as PRODKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS PRODVALUE,0 as SALESBAL," & _
    "0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='P' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as SALESBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as SALESBOR,sum(ISNULL(C.isskgs,0)) as SALESKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE," & _
    "0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0 AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='S' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS TRANSBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS TRANSBOR,sum(ISNULL(C.isskgs,0)) AS TRANSKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS TRANSVALUE, 0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where " & _
    "C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='T' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE, case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS JWBAL,  case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS JWBOR, sum(ISNULL(C.isskgs,0)) AS JWKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0 " & _
    "AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "' and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='J' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE )X  GROUP BY LOTNO,LOTDT,VARCODE Union SELECT  VARCODE,LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR, 0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE, SUM(REJBAL) AS REJBAL, SUM(REJKGS) AS REJKGS, SUM(REJVALUE) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM ( SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, COUNT(C.BALENO) AS REJBAL, SUM(C.FAVAOURABLEWGT) AS REJKGS, round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.rejflg='Y' and C.Status='RJ' and C.lotdt = '" & STKDT & "' and C.rejdt>= '" & STKDT & "' and C.rejdt<= '" & STKDT & "' GROUP BY C.LOTNO,C.lotdt,C.VARCODE,B.RATEKG UNION select b.varcode,B.LOTNO,B.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE,count(c.baleno) as REJBAL,sum(ISNULL(C.isskgs,0)) as REJKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='R' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE " & _
    ") V GROUP BY VARCODE,LOTNO,LOTDT  ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' and b.divcode ='" & Divcode & "' and b.lotyear= '" & LOTYR & "' and b.lotyear='" & LOTYR & "' group by VARNAME) k "
  
  If Table_Exists("stockstatement1") = True Then
         DB.Execute "drop view stockstatement1"
  End If
  intervalMinutes = -1
      DB.Execute "create view stockstatement1 AS sELECT distinct d.varname,a.QUANTITY,a.RATECY,B.SLNAME AS party,C.SLNAME as agent,arrdate,a.arrno FROM RM_ARRIVAL A INNER JOIN FA_SLMAS B ON  A.SUPCD=B.SLCODE " & _
                "INNER JOIN rm_var d ON  A.varcode=d.varcode and a.catcd=d.catcd left outer JOIN FA_SLMAS C ON  A.BRKCD=C.SLCODE   where a.arrdate = '" & STKDT & "' "
    Set Rs = New Recordset
  Rs.Open "SELECT COUNT(Baleno),SUM(isskgs) FROM rm_issb WHERE docdt BETWEEN '" & Format(fnmfdate(dtpDate.value), "yyyy/MM/dd") & "' AND '" & Format(dtpDate.value, "yyyy/MM/dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
  If Rs.EOF = False Then
    iParameter1 = Round(Rs(0) / Day(CDate(dtpDate.value)), 0)
    parameter4 = INF(Rs(1) / Day(CDate(dtpDate.value)), 3)
    
  Else
   iParameter1 = 1
   parameter4 = 1
  End If
  intervalMinutes = -1
  parameter5 = Format(dtpDate.value, "yyyy/MM/dd")
  FrmRpt.Show

Case 1

    Call CrystalFooter(UserFooter1.SelectedStr, 100)
    footervar = CStr(Foot)
    
''    FrmRpt.RptHead = 2
''    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_rmi_stockposition.rpt"
''    parameter1 = DIVNAME
''    parameter2 = footervar
''    rephead = "Stock Position Varietywise as on " & Format(dtpDate.value, "dd/mm/yy")
     STKDT = ""
     STKDT = Format(dtpDate.value, "yyyy-mm-dd")
     sfdate = Format(yfdate, "yyyy-mm-dd")
     Sldate = Format(yldate, "yyyy-mm-dd")
     LOTYR = Year(yfdate)
    avgdate = CDate(DateAdd("d", -30, dtpDate.value))
    If Table_Exists("stockposition") = True Then
         DB.Execute "drop view stockposition"
    End If
    If UCase(CustID) = "KALPATHARU" Then
    DB.Execute "create view stockposition AS select CATNAME, k.VARNAME as VARNAME,sum(k.clobales) as Bales,sum(k.clokgs) as Weight,sum(k.closevalue) as Value from " & _
        "(select cc.CATNAME, C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0)) " & _
        "+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE, SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+ " & _
        "sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+ " & _
        "sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE FROM (select varcode,LOTNO,LOTDT, sum(opbales-issbales) AS OPENBAL,sum(opboras-issboras) as OPENBOR,sum(opkgs-isskgs) as OPENKGS,sum(OPvalue-issvalue) as OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ," & _
        "0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from (select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,Case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & LOTYR & "') AND (b.lotdt < '" & STKDT & "' or UPPER(OPFLG)='Y') and BALES >0   and (B.rejflg='N' or B.rejdt>='" & sfdate & "') group by b.varcode,b.LOTNO , b.LOTDT, b.bblflg, b.ratekg " & _
        "Union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND (b.lotdt < '" & STKDT & "' OR UPPER(OPFLG)='Y')  and docdt between '" & sfdate & "' and '" & Sldate & "'  and b.lotno=c.lotno and  B.lotyear in ('" & LOTYR & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & STKDT & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg Union " & _
        "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue,0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FAVAOURABLEWGT,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & STKDT & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt < '" & STKDT & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT HAVING sum(opbales-issbales) >0 OR sum(opboras-issboras) > 0 Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as RECBAL,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as RECBOR,Case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as RECKGS,SUM(B.FAVAOURABLEWGT)*RATEKG as RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE , 0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE, 0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS, 0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt> '" & STKDT & "') and B.lotyear= '" & LOTYR & "' AND B.LOTDT = '" & STKDT & "' group by b.varcode,B.LOTNO, b.LOTDT , b.opflg, b.bblflg, ratekg Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 as RECBAL,0 as RECBOR,0 as RECKGS,0 as RECVALUE, isnull(sum(bales),0) as RTNBAL,isnull(sum(FAVAOURABLEWGT),0) as RTNKGS,round((sum(isnull(FAVAOURABLEWGT,0))),3)*cast(ratekg as decimal (12,4))AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot where divcode='" & Divcode & "'  and lotyear='" & LOTYR & "' and lottype='T' and transfertype='JR' and lotdt = '" & STKDT & "'  GROUP BY VARCODE,LOTNO,LOTDT,RATEKG Union " & _
        "SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE,0 AS REJBAL,0 AS REJKGS,0 AS REJVALUE , count(C.baleno) AS LOSSBAL,sum(isnull(C.FAVAOURABLEWGT,0)-isnull(C.FAVAOURABLEWGT,0)) LOSSKGS,round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS LOSSVALUE from RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.lotdt = '" & STKDT & "'  and C.Issued = 'Y' group by C.VARCODE,C.LOTNO,C.LOTDT,B.RATEKG Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,SUM(PRODBAL) AS PRODBAL,SUM(PRODBOR) AS PRODBOR,SUM(PRODKGS) AS PRODKGS,SUM(PRODVALUE) AS PRODVALUE, SUM(SALESBAL) AS SALESBAL,SUM(SALESBOR) AS SALESBOR,SUM(SALESKGS) AS SALESKGS,SUM(SALESVALUE) AS SALESVALUE, SUM(TRANSBAL) AS TRANSBAL,SUM(TRANSBOR) AS TRANSBOR,SUM(TRANSKGS) AS TRANSKGS,SUM(TRANSVALUE) AS TRANSVALUE, SUM(JWBAL) AS JWBAL,SUM(JWBOR) AS JWBOR,SUM(JWKGS) AS JWKGS,SUM(JWVALUE) AS JWVALUE,  0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE From (select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as PRODBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as PRODBOR,sum(ISNULL(C.isskgs,0)) as PRODKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS PRODVALUE,0 as SALESBAL," & _
        "0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='P' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as SALESBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as SALESBOR,sum(ISNULL(C.isskgs,0)) as SALESKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE," & _
        "0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0 AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='S' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS TRANSBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS TRANSBOR,sum(ISNULL(C.isskgs,0)) AS TRANSKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS TRANSVALUE, 0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where " & _
        "C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='T' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE, case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS JWBAL,  case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS JWBOR, sum(ISNULL(C.isskgs,0)) AS JWKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0 " & _
        "AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "' and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='J' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE )X  GROUP BY LOTNO,LOTDT,VARCODE Union SELECT  VARCODE,LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR, 0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE, SUM(REJBAL) AS REJBAL, SUM(REJKGS) AS REJKGS, SUM(REJVALUE) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM ( SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
        "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, COUNT(C.BALENO) AS REJBAL, SUM(C.FAVAOURABLEWGT) AS REJKGS, round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.rejflg='Y' and C.Status='RJ' and C.lotdt = '" & STKDT & "' and C.rejdt>= '" & STKDT & "' and C.rejdt<= '" & STKDT & "' GROUP BY C.LOTNO,C.lotdt,C.VARCODE,B.RATEKG UNION select b.varcode,B.LOTNO,B.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
        "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE,count(c.baleno) as REJBAL,sum(ISNULL(C.isskgs,0)) as REJKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='R' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE " & _
        ") V GROUP BY VARCODE,LOTNO,LOTDT  ) A ,RM_LOT B, RM_VAR C,rm_cat cc  WHERE cc.CATCD=C.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' and b.divcode ='" & Divcode & "' and b.lotyear= '" & LOTYR & "' and b.lotyear='" & LOTYR & "' group by VARNAME,CATNAME) k where varname<>'COTTON' gROUP BY VARNAME,CATNAME"
  Else
    DB.Execute "create view stockposition AS select CATNAME, k.VARNAME as VARNAME,sum(k.clobales) as Bales,sum(k.clokgs) as Weight,sum(k.closevalue) as Value from " & _
        "(select cc.CATNAME, C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0)) " & _
        "+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE, SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+ " & _
        "sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+ " & _
        "sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE FROM (select varcode,LOTNO,LOTDT, sum(opbales-issbales) AS OPENBAL,sum(opboras-issboras) as OPENBOR,sum(opkgs-isskgs) as OPENKGS,sum(OPvalue-issvalue) as OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ," & _
        "0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from (select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,Case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & LOTYR & "') AND (b.lotdt < '" & STKDT & "' or UPPER(OPFLG)='Y') and BALES >0   and (B.rejflg='N' or B.rejdt>='" & sfdate & "') group by b.varcode,b.LOTNO , b.LOTDT, b.bblflg, b.ratekg " & _
        "Union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND (b.lotdt < '" & STKDT & "' OR UPPER(OPFLG)='Y')  and docdt between '" & sfdate & "' and '" & Sldate & "'  and b.lotno=c.lotno and  B.lotyear in ('" & LOTYR & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & STKDT & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg Union " & _
        "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue,0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FAVAOURABLEWGT,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & STKDT & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt < '" & STKDT & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT HAVING sum(opbales-issbales) >0 OR sum(opboras-issboras) > 0 Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as RECBAL,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as RECBOR,Case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as RECKGS,SUM(B.FAVAOURABLEWGT)*RATEKG as RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE , 0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE, 0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS, 0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt> '" & STKDT & "') and B.lotyear= '" & LOTYR & "' AND B.LOTDT = '" & STKDT & "' group by b.varcode,B.LOTNO, b.LOTDT , b.opflg, b.bblflg, ratekg Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 as RECBAL,0 as RECBOR,0 as RECKGS,0 as RECVALUE, isnull(sum(bales),0) as RTNBAL,isnull(sum(FAVAOURABLEWGT),0) as RTNKGS,round((sum(isnull(FAVAOURABLEWGT,0))),3)*cast(ratekg as decimal (12,4))AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot where divcode='" & Divcode & "'  and lotyear='" & LOTYR & "' and lottype='T' and transfertype='JR' and lotdt = '" & STKDT & "'  GROUP BY VARCODE,LOTNO,LOTDT,RATEKG Union " & _
        "SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE,0 AS REJBAL,0 AS REJKGS,0 AS REJVALUE , count(C.baleno) AS LOSSBAL,sum(isnull(C.FAVAOURABLEWGT,0)-isnull(C.FAVAOURABLEWGT,0)) LOSSKGS,round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS LOSSVALUE from RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.lotdt = '" & STKDT & "'  and C.Issued = 'Y' group by C.VARCODE,C.LOTNO,C.LOTDT,B.RATEKG Union " & _
        "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,SUM(PRODBAL) AS PRODBAL,SUM(PRODBOR) AS PRODBOR,SUM(PRODKGS) AS PRODKGS,SUM(PRODVALUE) AS PRODVALUE, SUM(SALESBAL) AS SALESBAL,SUM(SALESBOR) AS SALESBOR,SUM(SALESKGS) AS SALESKGS,SUM(SALESVALUE) AS SALESVALUE, SUM(TRANSBAL) AS TRANSBAL,SUM(TRANSBOR) AS TRANSBOR,SUM(TRANSKGS) AS TRANSKGS,SUM(TRANSVALUE) AS TRANSVALUE, SUM(JWBAL) AS JWBAL,SUM(JWBOR) AS JWBOR,SUM(JWKGS) AS JWKGS,SUM(JWVALUE) AS JWVALUE,  0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE From (select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as PRODBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as PRODBOR,sum(ISNULL(C.isskgs,0)) as PRODKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS PRODVALUE,0 as SALESBAL," & _
        "0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='P' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as SALESBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as SALESBOR,sum(ISNULL(C.isskgs,0)) as SALESKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE," & _
        "0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0 AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='S' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS TRANSBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS TRANSBOR,sum(ISNULL(C.isskgs,0)) AS TRANSKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS TRANSVALUE, 0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where " & _
        "C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='T' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE, case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS JWBAL,  case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS JWBOR, sum(ISNULL(C.isskgs,0)) AS JWKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0 " & _
        "AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "' and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='J' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE )X  GROUP BY LOTNO,LOTDT,VARCODE Union SELECT  VARCODE,LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR, 0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE, SUM(REJBAL) AS REJBAL, SUM(REJKGS) AS REJKGS, SUM(REJVALUE) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM ( SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
        "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, COUNT(C.BALENO) AS REJBAL, SUM(C.FAVAOURABLEWGT) AS REJKGS, round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.rejflg='Y' and C.Status='RJ' and C.lotdt = '" & STKDT & "' and C.rejdt>= '" & STKDT & "' and C.rejdt<= '" & STKDT & "' GROUP BY C.LOTNO,C.lotdt,C.VARCODE,B.RATEKG UNION select b.varcode,B.LOTNO,B.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
        "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE,count(c.baleno) as REJBAL,sum(ISNULL(C.isskgs,0)) as REJKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='R' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE " & _
        ") V GROUP BY VARCODE,LOTNO,LOTDT  ) A ,RM_LOT B, RM_VAR C,rm_cat cc  WHERE cc.CATCD=C.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' and b.divcode ='" & Divcode & "' and b.lotyear= '" & LOTYR & "' and b.lotyear='" & LOTYR & "' group by VARNAME,CATNAME) k gROUP BY VARNAME,CATNAME"
  End If
  intervalMinutes = -1
  If Table_Exists("stockposition1") = True Then
         DB.Execute "drop view stockposition1"
  End If
  
  'DB.Execute "create view stockposition1 AS SELECT distinct d.varname,a.contno as PONO,A.CONTDT AS Date,a.candyrate as Ratecndy,B.SLNAME AS party,C.SLNAME as agent,(isnull(a.ordqty,0)-isnull(a.recqty,0)) as bales FROM RM_cont A INNER JOIN FA_SLMAS B ON  A.SUPCD=B.SLCODE INNER JOIN rm_var d ON  A.varcode=d.varcode left outer JOIN FA_SLMAS C ON  A.BRKCD=C.SLCODE where A.CONTDT  <= '" & STKDT & "' and (isnull(a.ordqty,0)-isnull(a.recqty,0)) > 0  and (isnull(a.ordqty,0) <> (isnull(a.recqty,0) + isnull(a.cancelbales,0))) "
   DB.Execute "create view stockposition1 AS " & _
             " Select x.VARNAME,X.CONTNO AS PONO,x.CONTDT as Date,X.CANDYRATE as Ratecndy,x.slname as party,X.agent, " & _
             " SUM(isnull(x.RecQty,0))Recqty,sum(isnull(x.ORDQTY,0))-SUM(isnull(x.cancelBales,0))-SUM(isnull(x.RecQty,0))BalES " & _
             " FROM(SELECT CONTNO,CONTDT,S.slname,a.VARCODE,V.VARNAME,A.ORDQTY,a.CancelBales,a.CANDYRATE,S1.slname AS agent, " & _
             " (SELECT sum(isnull(Quantity,0)) FROM Rm_Arrival R WHERE a.divcode=r.DIVCODE AND a.CONTNO=r.CONTNO " & _
             " AND a.CONTDT=r.CONTDT AND a.VARCODE=r.VARCODE AND a.SUPCD=r.SUPCD AND r.DIVCODE='" & Divcode & "' and  R.ARRDATE BETWEEN '" & Format(yfdate, "yyyy-mm-DD") & "' AND '" & Format(STKDT, "yyyy-mm-DD") & "'" & _
             " )AS RecQty  FROM RM_CONT A,Fa_Slmas S,RM_VAR V,FA_SLMAS S1 " & _
             " WHERE a.SUPCD=s.slcode AND a.VARCODE=v.VARCODE AND A.BRKCD=S1.slcode AND a.DIVCODE='" & Divcode & "' " & _
             " AND a.CONTDT BETWEEN '" & Format(yfdate, "yyyy-mm-DD") & "' AND '" & Format(STKDT, "yyyy-mm-DD") & "' )x " & _
             " GROUP BY X.CONTNO,x.CONTDT,x.slname,x.VARCODE,x.VARNAME,X.agent,X.CANDYRATE " & _
             " Having Sum(IsNull(X.ORDQTY, 0)) - Sum(IsNull(X.cancelBales, 0)) - Sum(IsNull(X.RecQty, 0)) > 0 "
        

  intervalMinutes = -1
  Set Rs = New Recordset
 
  Rs.Open "SELECT COUNT(Baleno),SUM(isskgs) FROM rm_issb WHERE docdt BETWEEN '" & Format(avgdate, "yyyy/MM/dd") & "' AND '" & Format(dtpDate.value, "yyyy/MM/dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
  If Rs.EOF = False Then
    iParameter1 = Format((Round(Rs(0) / 30)), "0.000")
    parameter4 = Format(((Rs(1) / 30)), "0.000")
  Else
    iParameter1 = 1
    parameter4 = 1
  End If
  parameter5 = Format(dtpDate.value, "yyyy/MM/dd")
  ''FrmRpt.Show
  intervalMinutes = -1
    Dim ClsRMIStockPos As New clsCrystal
    If UCase(CustID) = "COTTON" And UCase(divabbr) = "SCMTS" Then
    Set ClsRMIStockPos.cryRept = Cry_Stock_Position_SCMTS
    Else
    Set ClsRMIStockPos.cryRept = Cry_RMI_MISstockPosition
    End If
    ClsRMIStockPos.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.DiscardSavedData = True
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ReportTitle = "Stock Position Varietywise as on " & Format(dtpDate.value, "dd/mm/yy")
    CrystalReport1.ParameterFields(0) = "divname; " & divname
    CrystalReport1.ParameterFields(1) = "fooetrstr; " & footervar
    CrystalReport1.ParameterFields(2) = "parameter3; " & iParameter1
    CrystalReport1.ParameterFields(3) = "parameter4; " & parameter4
    CrystalReport1.ParameterFields(4) = "Parameter5; " & Format(dtpDate.value, "yyyy/MM/dd")
    CrystalReport1.Formulas(0) = "UnitName='" & PrUnitName & "'"
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 2
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    intervalMinutes = -1
 Case 2000
    
     STKDTNEW = ""
     STKDTNEW = Format(dtpDate.value, "yyyy-mm-dd")
     
     sfdate = Format(yfdate, "yyyy-mm-dd")
     Sldate = Format(yldate, "yyyy-mm-dd")
     LOTYR = Year(yfdate)
     
  If Table_Exists("stockpositionwise") = True Then
         DB.Execute "drop view stockpositionwise"
  End If
   intervalMinutes = -1
        DB.Execute "create view stockpositionwise AS  select  sum(k.clobales) as Bales,sum(k.clokgs) as Weight,sum(k.closevalue) as VALUE,k.lotno,k.lotdt,k1.SUPCD" & _
    "  from (select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0)) " & _
    "+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE, SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+ " & _
    "sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+ " & _
    "sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE,a.lotno,a.lotdt FROM (select varcode,LOTNO,LOTDT, sum(opbales-issbales) AS OPENBAL,sum(opboras-issboras) as OPENBOR,sum(opkgs-isskgs) as OPENKGS,sum(OPvalue-issvalue) as OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ," & _
    "0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from (select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,Case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & LOTYR & "') AND (b.lotdt < '" & STKDT & "' or UPPER(OPFLG)='Y') and BALES >0   and (B.rejflg='N' or B.rejdt>='" & sfdate & "') group by b.varcode,b.LOTNO , b.LOTDT, b.bblflg, b.ratekg " & _
    "Union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND (b.lotdt < '" & STKDT & "' OR UPPER(OPFLG)='Y')  and docdt between '" & sfdate & "' and '" & Sldate & "'  and b.lotno=c.lotno and  B.lotyear in ('" & LOTYR & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & STKDT & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg Union " & _
    "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue,0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FAVAOURABLEWGT,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & STKDT & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt < '" & STKDT & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT HAVING sum(opbales-issbales) >0 OR sum(opboras-issboras) > 0 Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as RECBAL,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as RECBOR,Case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as RECKGS,SUM(B.FAVAOURABLEWGT)*RATEKG as RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE , 0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE, 0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS, 0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt> '" & STKDT & "') and B.lotyear= '" & LOTYR & "' AND B.LOTDT = '" & STKDT & "' group by b.varcode,B.LOTNO, b.LOTDT , b.opflg, b.bblflg, ratekg Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 as RECBAL,0 as RECBOR,0 as RECKGS,0 as RECVALUE, isnull(sum(bales),0) as RTNBAL,isnull(sum(FAVAOURABLEWGT),0) as RTNKGS,round((sum(isnull(FAVAOURABLEWGT,0))),3)*cast(ratekg as decimal (12,4))AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot where divcode='" & Divcode & "'  and lotyear='" & LOTYR & "' and lottype='T' and transfertype='JR' and lotdt = '" & STKDT & "'  GROUP BY VARCODE,LOTNO,LOTDT,RATEKG Union " & _
    "SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE,0 AS REJBAL,0 AS REJKGS,0 AS REJVALUE , count(C.baleno) AS LOSSBAL,sum(isnull(C.FAVAOURABLEWGT,0)-isnull(C.FAVAOURABLEWGT,0)) LOSSKGS,round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS LOSSVALUE from RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.lotdt = '" & STKDT & "'  and C.Issued = 'Y' group by C.VARCODE,C.LOTNO,C.LOTDT,B.RATEKG Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,SUM(PRODBAL) AS PRODBAL,SUM(PRODBOR) AS PRODBOR,SUM(PRODKGS) AS PRODKGS,SUM(PRODVALUE) AS PRODVALUE, SUM(SALESBAL) AS SALESBAL,SUM(SALESBOR) AS SALESBOR,SUM(SALESKGS) AS SALESKGS,SUM(SALESVALUE) AS SALESVALUE, SUM(TRANSBAL) AS TRANSBAL,SUM(TRANSBOR) AS TRANSBOR,SUM(TRANSKGS) AS TRANSKGS,SUM(TRANSVALUE) AS TRANSVALUE, SUM(JWBAL) AS JWBAL,SUM(JWBOR) AS JWBOR,SUM(JWKGS) AS JWKGS,SUM(JWVALUE) AS JWVALUE,  0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE From (select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as PRODBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as PRODBOR,sum(ISNULL(C.isskgs,0)) as PRODKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS PRODVALUE,0 as SALESBAL," & _
    "0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='P' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as SALESBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as SALESBOR,sum(ISNULL(C.isskgs,0)) as SALESKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE," & _
    "0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0 AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='S' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS TRANSBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS TRANSBOR,sum(ISNULL(C.isskgs,0)) AS TRANSKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS TRANSVALUE, 0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where " & _
    "C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='T' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE, case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS JWBAL,  case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS JWBOR, sum(ISNULL(C.isskgs,0)) AS JWKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0 " & _
    "AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "' and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='J' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE )X  GROUP BY LOTNO,LOTDT,VARCODE Union SELECT  VARCODE,LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR, 0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE, SUM(REJBAL) AS REJBAL, SUM(REJKGS) AS REJKGS, SUM(REJVALUE) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM ( SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, COUNT(C.BALENO) AS REJBAL, SUM(C.FAVAOURABLEWGT) AS REJKGS, round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.rejflg='Y' and C.Status='RJ' and C.lotdt = '" & STKDT & "' and C.rejdt>= '" & STKDT & "' and C.rejdt<= '" & STKDT & "' GROUP BY C.LOTNO,C.lotdt,C.VARCODE,B.RATEKG UNION select b.varcode,B.LOTNO,B.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE,count(c.baleno) as REJBAL,sum(ISNULL(C.isskgs,0)) as REJKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='R' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE " & _
    ") V GROUP BY VARCODE,LOTNO,LOTDT  ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' and b.divcode ='" & Divcode & "' and b.lotyear= '" & LOTYR & "' and b.lotyear='" & LOTYR & "'   group by VARNAME,a.lotno,a.lotdt   ) k inner join rm_lot k1 ON k.lotno=k1.lotno AND k.lotdt=k1.lotdt  gROUP BY k.lotno,k.lotdt,k1.SUPCD    "
  
      Dim Clsposition As New clsCrystal
    Set Clsposition.cryRept = Cry_Stockposition_Statewise
    Clsposition.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.DiscardSavedData = True
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ReportTitle = "Stock Position Statewise as on " & Format(dtpDate.value, "dd/mm/yy")
    CrystalReport1.ParameterFields(0) = "@DIVCODE; " & Trim(Divcode)
    CrystalReport1.ParameterFields(1) = "@FDATE; " & Format(dtpDate, "yyyy-MM-dd")
    CrystalReport1.ParameterFields(2) = "@TDATE; " & Format(dtpDate.value, "yyyy-MM-dd")
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 2
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    
    
    intervalMinutes = -1
    
Case 5000
            Call CrystalFooter(UserFooter1.SelectedStr, 100)
    footervar = CStr(Foot)
   ' FrmRpt.RptHead = 2
   ' FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_rmi_stockstatement.rpt"
    parameter1 = divname
    parameter2 = footervar
    rephead = "Stock Statement-Varietywise as on " & Format(dtpDate.value, "dd/mm/yy")
   ' Dim STKDT As String
     STKDT = ""
     STKDT = Format(dtpDate.value, "yyyy-mm-dd")
     
     sfdate = Format(yfdate, "yyyy-mm-dd")
     Sldate = Format(yldate, "yyyy-mm-dd")
     LOTYR = Year(yfdate)
     
  If Table_Exists("stockstatement") = True Then
         DB.Execute "drop view stockstatement"
  End If
   
        DB.Execute "create view stockstatement AS  select '" & LocalIP & "' as Ipaddress, k.VARNAME,(k.opbales+k.opbORAS) as Openstock,(k.RECBALES+k.RECBORAS) as Arrival,(k.ISSBALES+k.ISSBORAS) as Issues," & _
    "(k.CLOBALES+k.CLOBORAS)  as Closestock  from (select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0)) " & _
    "+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE, SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+ " & _
    "sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+ " & _
    "sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE FROM (select varcode,LOTNO,LOTDT, sum(opbales-issbales) AS OPENBAL,sum(opboras-issboras) as OPENBOR,sum(opkgs-isskgs) as OPENKGS,sum(OPvalue-issvalue) as OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ," & _
    "0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from (select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales,Case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.FAVAOURABLEWGT,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.FAVAOURABLEWGT,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & LOTYR & "') AND (b.lotdt < '" & STKDT & "' or UPPER(OPFLG)='Y') and BALES >0   and (B.rejflg='N' or B.rejdt>='" & sfdate & "') group by b.varcode,b.LOTNO , b.LOTDT, b.bblflg, b.ratekg " & _
    "Union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,SUM(ISNULL(C.isskgs,0)) as isskgs ,0 as opvalue,0 as recvalue,SUM(ISNULL(C.isskgs,0)) * B.RATEKG as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND (b.lotdt < '" & STKDT & "' OR UPPER(OPFLG)='Y')  and docdt between '" & sfdate & "' and '" & Sldate & "'  and b.lotno=c.lotno and  B.lotyear in ('" & LOTYR & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & STKDT & "' group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg Union " & _
    "select VARCODE,LOTNO,Lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull(isskgs,0))),3) AS isskgs,0 as opvalue,0 as recvalue,0 as issvalue FROM(SELECT E.VARCODE, e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.FAVAOURABLEWGT,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>='" & STKDT & "') AND e.DIVCODE='" & Divcode & "' and e.lotdt < '" & STKDT & "' AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt, VARCODE ) A GROUP BY A.VARCODE,A.LOTNO,A.LOTDT HAVING sum(opbales-issbales) >0 OR sum(opboras-issboras) > 0 Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as RECBAL,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as RECBOR,Case when 'N' = 'N' then sum(isnull(b.FAVAOURABLEWGT,0)) else 0 end as RECKGS,SUM(B.FAVAOURABLEWGT)*RATEKG as RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE , 0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE, 0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS, 0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt> '" & STKDT & "') and B.lotyear= '" & LOTYR & "' AND B.LOTDT = '" & STKDT & "' group by b.varcode,B.LOTNO, b.LOTDT , b.opflg, b.bblflg, ratekg Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 as RECBAL,0 as RECBOR,0 as RECKGS,0 as RECVALUE, isnull(sum(bales),0) as RTNBAL,isnull(sum(FAVAOURABLEWGT),0) as RTNKGS,round((sum(isnull(FAVAOURABLEWGT,0))),3)*cast(ratekg as decimal (12,4))AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, 0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot where divcode='" & Divcode & "'  and lotyear='" & LOTYR & "' and lottype='T' and transfertype='JR' and lotdt = '" & STKDT & "'  GROUP BY VARCODE,LOTNO,LOTDT,RATEKG Union " & _
    "SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE ,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE,0 AS REJBAL,0 AS REJKGS,0 AS REJVALUE , count(C.baleno) AS LOSSBAL,sum(isnull(C.FAVAOURABLEWGT,0)-isnull(C.FAVAOURABLEWGT,0)) LOSSKGS,round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS LOSSVALUE from RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.lotdt = '" & STKDT & "'  and C.Issued = 'Y' group by C.VARCODE,C.LOTNO,C.LOTDT,B.RATEKG Union " & _
    "SELECT  VARCODE, LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR,0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,SUM(PRODBAL) AS PRODBAL,SUM(PRODBOR) AS PRODBOR,SUM(PRODKGS) AS PRODKGS,SUM(PRODVALUE) AS PRODVALUE, SUM(SALESBAL) AS SALESBAL,SUM(SALESBOR) AS SALESBOR,SUM(SALESKGS) AS SALESKGS,SUM(SALESVALUE) AS SALESVALUE, SUM(TRANSBAL) AS TRANSBAL,SUM(TRANSBOR) AS TRANSBOR,SUM(TRANSKGS) AS TRANSKGS,SUM(TRANSVALUE) AS TRANSVALUE, SUM(JWBAL) AS JWBAL,SUM(JWBOR) AS JWBOR,SUM(JWKGS) AS JWKGS,SUM(JWVALUE) AS JWVALUE,  0 AS REJBAL, 0 AS REJKGS,0 AS REJVALUE, 0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE From (select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as PRODBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as PRODBOR,sum(ISNULL(C.isskgs,0)) as PRODKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS PRODVALUE,0 as SALESBAL," & _
    "0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='P' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END as SALESBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END as SALESBOR,sum(ISNULL(C.isskgs,0)) as SALESKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE," & _
    "0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0 AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='S' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS TRANSBAL,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS TRANSBOR,sum(ISNULL(C.isskgs,0)) AS TRANSKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS TRANSVALUE, 0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where " & _
    "C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='T' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE Union select b.varcode,B.LOTNO,B.LOTDT,I.ISSTYPE,0 as PRODBAL,0 as PRODBOR,0 as PRODKGS,0 AS PRODVALUE,0 as SALESBAL, 0 as SALESBOR,0 as SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE, case when b.bblflg = 'B' then count(c.baleno)  else 0 END AS JWBAL,  case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 END AS JWBOR, sum(ISNULL(C.isskgs,0)) AS JWKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS JWVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "'  AND BALES >0 " & _
    "AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "' and lotyear= '" & LOTYR & "'and (B.rejflg='N' OR B.rejdt> '" & STKDT & "') AND I.Isstype='J' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE )X  GROUP BY LOTNO,LOTDT,VARCODE Union SELECT  VARCODE,LOTNO,LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR, 0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE, SUM(REJBAL) AS REJBAL, SUM(REJKGS) AS REJKGS, SUM(REJVALUE) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM ( SELECT  C.VARCODE,C.LOTNO,C.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR,0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR,0 AS JWKGS,0 AS JWVALUE, COUNT(C.BALENO) AS REJBAL, SUM(C.FAVAOURABLEWGT) AS REJKGS, round((sum(isnull(C.FAVAOURABLEWGT,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE FROM RM_BALE C,RM_LOT B Where C.LOTNO = b.LOTNO And C.LOTDT = b.LOTDT And C.catcd = b.catcd And C.Divcode = b.Divcode And C.lottype = b.lottype AND C.rejflg='Y' and C.Status='RJ' and C.lotdt = '" & STKDT & "' and C.rejdt>= '" & STKDT & "' and C.rejdt<= '" & STKDT & "' GROUP BY C.LOTNO,C.lotdt,C.VARCODE,B.RATEKG UNION select b.varcode,B.LOTNO,B.LOTDT,0 AS OPENBAL,0 AS OPENBOR,0 AS OPENKGS,0 AS OPENVALUE,0 AS RECBAL,0 AS RECBOR," & _
    "0 AS RECKGS,0 AS RECVALUE, 0 AS RTNBAL,0 AS RTNKGS,0 AS RTNVALUE,0 AS PRODBAL,0 AS PRODBOR,0 AS PRODKGS,0 AS PRODVALUE,0 AS SALESBAL,0 AS SALESBOR, 0 AS SALESKGS,0 AS SALESVALUE,0 AS TRANSBAL,0 AS TRANSBOR,0 AS TRANSKGS,0 AS TRANSVALUE,0 AS JWBAL,0 AS JWBOR, 0 AS JWKGS,0 AS JWVALUE,count(c.baleno) as REJBAL,sum(ISNULL(C.isskgs,0)) as REJKGS,round((sum(isnull(C.isskgs,0))),3)*cast(b.ratekg as decimal (12,4)) AS REJVALUE,0 AS LOSSBAL,0 AS LOSSKGS,0 AS LOSSVALUE from rm_lot b,rm_issb c,rm_issuetype i where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd AND I.issue_code=C.ISSTYPE and docdt = '" & STKDT & "'  and lotyear= '" & LOTYR & "' and (B.rejflg='N' OR B.rejdt>'" & STKDT & "') AND I.Isstype='R' group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg,I.ISSTYPE " & _
    ") V GROUP BY VARCODE,LOTNO,LOTDT  ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' and b.divcode ='" & Divcode & "' and b.lotyear= '" & LOTYR & "' and b.lotyear='" & LOTYR & "' group by VARNAME) k "
  
  If View_Exists("stockstatement1") = True Then
         DB.Execute "drop view stockstatement1"
  End If
  
      DB.Execute "create view stockstatement1 AS sELECT distinct '" & LocalIP & "' as Ipaddress, d.varname,a.QUANTITY,a.RATECY,B.SLNAME AS party,C.SLNAME as agent,arrdate,a.arrno FROM RM_ARRIVAL A INNER JOIN FA_SLMAS B ON  A.SUPCD=B.SLCODE " & _
                "INNER JOIN rm_var d ON  A.varcode=d.varcode and a.catcd=d.catcd left outer JOIN FA_SLMAS C ON  A.BRKCD=C.SLCODE   where a.arrdate = '" & STKDT & "' "
    Set Rs = New Recordset
  Rs.Open "SELECT COUNT(Baleno),SUM(isskgs) FROM rm_issb WHERE docdt BETWEEN '" & Format(fnmfdate(dtpDate.value), "yyyy/MM/dd") & "' AND '" & Format(dtpDate.value, "yyyy/MM/dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
  If Rs.EOF = False Then
    iParameter1 = Round(Rs(0) / Day(CDate(dtpDate.value)), 0)
    parameter4 = INF(Rs(1) / Day(CDate(dtpDate.value)), 3)
    
  Else
   iParameter1 = 1
   parameter4 = 1
  End If
  parameter5 = Format(dtpDate.value, "yyyy/MM/dd")
 ' FrmRpt.Show
   
            Dim clsCryRptVariety As New clsCrystal
            Set clsCryRptVariety.cryRept = Cry_StkStmt_Varietywise_SCM
            clsCryRptVariety.CrystalPrint
         
            CRVIEWER1.Reset
            CRVIEWER1.Connect = connectstring
            CRVIEWER1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

            'CrystalReport.SelectionFormula = "{RM_ARRIVAL.DIVCODE}='" & Divcode & "' AND {RM_ARRIVAL.ARRDATE} = cdate('" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "') AND {RM_ARRIVAL.ARRNO}>= " & val(TXTFIELDS(1).Text) & " AND  {RM_ARRIVAL.ARRNO}<=  " & val(TXTFIELDS(1).Text) & ""
            CRVIEWER1.ParameterFields(0) = "@divcode;" & Divcode & ""
            CRVIEWER1.ParameterFields(1) = "@ipaddress;" & LocalIP & ""
            CRVIEWER1.ParameterFields(2) = "footerstr;" & footervar & ""
            'rpttitle = "Stock Statement Varietywise as on " & Format(dtpDate.value, "DD/MM/YY")
            CRVIEWER1.Formulas(0) = "Rep_Title= '" & rephead & "'"
            CRVIEWER1.WindowShowPrintSetupBtn = True
            CRVIEWER1.WindowShowSearchBtn = True
            CRVIEWER1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            
            CRVIEWER1.Action = 1
            CRVIEWER1.PrinterCopies = 1
            Screen.MousePointer = 0
            
End Select
intervalMinutes = -1
End Sub

Private Sub dtpDate_Change()
If dtpDate.value > pdate Then
   dtpDate = pdate
End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
Select Case Repindex

Case 0



Case 1, 2000
dtpDate.maxdate = pdate
dtpDate.MinDate = yfdate
dtpDate.value = pdate
lblTitle.Caption = "Stock Position Abstract"
If Repindex = 2000 Then
lblTitle.Caption = "Stock Position Statewise Abstract"
Me.Caption = "Stock Position Statewise Abstract"
End If
If Repindex = 1 Then
    Me.Caption = "Stock Position Abstract"
End If
intervalMinutes = -1
End Select
dtpDate.value = pdate
dtpDate.maxdate = pdate
dtpDate.MinDate = yfdate
intervalMinutes = -1
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option4_Click()
UserFooter1.Visible = True
UserFooter1.Load
End Sub
Private Sub Option5_Click()
UserFooter1.ClearFooter
UserFooter1.Visible = False
End Sub

