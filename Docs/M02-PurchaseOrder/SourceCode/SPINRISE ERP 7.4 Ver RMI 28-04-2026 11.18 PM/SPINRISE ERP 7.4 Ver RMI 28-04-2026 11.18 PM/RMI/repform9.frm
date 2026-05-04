VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form repform9 
   Caption         =   "Form 9 "
   ClientHeight    =   6675
   ClientLeft      =   2955
   ClientTop       =   2295
   ClientWidth     =   8445
   LinkTopic       =   "Form1"
   ScaleHeight     =   6675
   ScaleWidth      =   8445
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   2025
      Left            =   1590
      TabIndex        =   3
      Top             =   2760
      Width           =   6405
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2460
         TabIndex        =   9
         Top             =   1590
         Width           =   1905
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2460
         TabIndex        =   8
         Top             =   1140
         Width           =   1905
         _ExtentX        =   3360
         _ExtentY        =   556
         _Version        =   393216
         Format          =   142606337
         CurrentDate     =   41871
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2460
         TabIndex        =   7
         Top             =   540
         Width           =   1905
         _ExtentX        =   3360
         _ExtentY        =   609
         _Version        =   393216
         Format          =   142606337
         CurrentDate     =   41871
      End
      Begin VB.Label Label1 
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1080
         TabIndex        =   10
         Top             =   1590
         Width           =   1305
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   -975
         TabIndex        =   6
         Top             =   45
         Width           =   7365
      End
      Begin VB.Label Label4 
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
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1035
         TabIndex        =   5
         Top             =   660
         Width           =   885
      End
      Begin VB.Label Label6 
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
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   1035
         TabIndex        =   4
         Top             =   1170
         Width           =   705
      End
   End
   Begin VB.CommandButton cmd_Exit 
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
      Height          =   435
      Left            =   4800
      TabIndex        =   1
      Top             =   5760
      Width           =   1335
   End
   Begin VB.CommandButton Cmd_windows 
      Caption         =   "&Crystal Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   3120
      TabIndex        =   0
      Top             =   5760
      Width           =   1635
   End
   Begin Crystal.CrystalReport crr 
      Left            =   690
      Top             =   5940
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2220
      Left            =   1470
      TabIndex        =   2
      Top             =   2700
      Width           =   6600
      _ExtentX        =   11642
      _ExtentY        =   3916
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "repform9.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
End
Attribute VB_Name = "repform9"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Cmd_Exit_Click()
intervalMinutes = -1
Unload Me
End Sub

Private Sub Cmd_windows_Click()
intervalMinutes = -1
Screen.MousePointer = 11
fdate = Format(DTPicker1.value, "yyyy-mm-dd"):   tdate = Format(DTPicker2.value, "yyyy-mm-dd")
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
'Call FORM9("Test", CStr(fdate), CStr(tdate))
intervalMinutes = -1
Call FORM9("Test", CStr(fdate), CStr(tdate), Left(Combo1.Text, 1))

intervalMinutes = -1

End Sub

Sub LastINVCost(U As String, v As String)
Dim MFLG  As Boolean
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='IG_RTemp_LastINVCost2' and Type='U'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        DB.Execute "drop table IG_RTemp_LastINVCost2"
    End If
        DB.Execute "Create table IG_RTemp_LastINVCost2(productcode varchar(10),DESCRIPT varchar(100),Opqty numeric(18,2),prdqty numeric(18,2),despqty numeric(18,2),trnsqty numeric(18,2),risueqty numeric(18,2),COST_KG numeric(18,2),market_Rate numeric(18,2))"
    
    Rs.Close
    STKDT = CStr(Format(DateAdd("d", -1, DTPicker1.value), "yyyy/MM/dd"))
    Dim rs1 As New Recordset
    Set rs1 = New Recordset
    rs1.Open "Select Name From sysobjects where Type='v' And name='YARNSTOCK1'", DB, adOpenStatic

    If rs1.RecordCount = 1 Then DB.Execute "DROP VIEW YARNSTOCK1 "

'         DB.Execute "CREATE VIEW YARNSTOCK1 AS SELECT DISTINCT divcode,DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_iss,SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS,RECE_RATE AS RECRATE,PRO_RATE AS PRRATE,TPROD_RATE AS TRRATE,SPROD_RATE AS SARATE FROM ( " & _
'                "SELECT A.divcode,a.DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(b.kgs) AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RPACKHD A,IG_RPACKdt B  WHERE isnull(b.repack_flg,'N')='N' and A.DIVCODE=B.DIVCODE AND A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,A.PRODUCT_CODE,A.RATE  union " & _
'                "SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(NetT_Kgs) P_ISS,0 AS T_ISS,0 AS S_ISS,0 AS RECE_RATE,A.TRATE AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='P' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE UNION " & _
'                "SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='T' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE UNION " & _
'                "SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='J' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE UNION " & _
'                "SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(ProdNetKgs) AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE  FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='S' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE ) A  GROUP BY divcode,DATE,PRODUCT_CODE,RECE_RATE,PRO_RATE,TPROD_RATE,SPROD_RATE "

'' DB.Execute "CREATE VIEW yarnstock1 AS SELECT DISTINCT divcode,DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_iss,  SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS,RECE_RATE AS RECRATE,PRO_RATE AS PRRATE,TPROD_RATE AS TRRATE,SPROD_RATE   AS SARATE ,sum(loosekgs) AS LooseKgs,SUM(ORPacks) AS ORPacks,SUM(ORKgs) AS ORKgs,SUM(OIPacks) as OIPacks,SUM(OIKgs) AS OIKgs,sum(IssNett_Kgs)IssNett_Kgs FROM (" & _
''                    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(kgs) AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='N' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE  UNION ALL " & _
''                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1)  AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(nett_kgs) P_ISS,0 AS T_ISS,0 AS S_ISS,  0 AS RECE_RATE,A.TRATE AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype   iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND   iss.ISStype='P' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
''                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,  0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0   AS P_ISS,SUM(nett_kgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE ,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO   and iss.issue_code=b.issflg AND iss.ISStype='T' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
''                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS   SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(nett_kgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE  AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND   A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='J' GROUP BY A.divcode,  b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
''                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(nett_kgs)   AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg  AND iss.ISStype='S' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
''                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0  AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,SUM(Nett_Kgs) as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
''                    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(EPACK_NO-SPACK_NO+1)  AS ORPacks,SUM((kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='R' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE UNION ALL  " & _
''                    " SELECT A.divcode,a.DATE,b.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(packs)  AS ORPacks,SUM((Nett_kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM ig_rsrhd A,ig_rsrdt B  WHERE  A.DIVCODE=B.DIVCODE AND  A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,b.PRODUCT_CODE  UNION ALL  " & _
''                    " SELECT A.divcode,DocDt as DATE,A.FromPRODUCT,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,isnull(SUM(ProdPacks),0) AS OIPacks,Isnull(SUM(Prodkgs),0)-Isnull(SUM(tarewt),0) as OIKgs,0 as IssNett_Kgs FROM ig_rrepackhd a   GROUP BY A.divcode,a.DocDt,A.FromPRODUCT UNION ALL  " & _
''                    " select a.divcode,a.PDATE AS date,a.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 SPROD_PACKS,  0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,  0 AS  SPROD_RATE, sum" & _
''                    " (isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   from ig_wastetrn a   GROUP BY a.divcode,a.PDATE,a.PRODUCT_CODE  ) A  GROUP BY divcode,DATE,PRODUCT_CODE,RECE_RATE,PRO_RATE,TPROD_RATE,SPROD_RATE,loosekgs"

DB.Execute "CREATE VIEW yarnstock1 AS SELECT DISTINCT divcode,DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_iss,  SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS,RECE_RATE AS RECRATE,PRO_RATE AS PRRATE,TPROD_RATE AS TRRATE,SPROD_RATE   AS SARATE ,sum(loosekgs) AS LooseKgs,SUM(ORPacks) AS ORPacks,SUM(ORKgs) AS ORKgs,SUM(OIPacks) as OIPacks,SUM(OIKgs) AS OIKgs,sum(IssNett_Kgs)IssNett_Kgs FROM (" & _
                    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(kgs) AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='N' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE  UNION ALL " & _
                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1)  AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(ProdNetKgs) P_ISS,0 AS T_ISS,0 AS S_ISS,  0 AS RECE_RATE,A.TRATE AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype   iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND   iss.ISStype='P' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,  0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0   AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE ,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO   and iss.issue_code=b.issflg AND iss.ISStype='T' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS   SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE  AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND   A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='J' GROUP BY A.divcode,  b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(ProdNetKgs)   AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg  AND iss.ISStype='S' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
                    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0  AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,SUM(Nett_Kgs) as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
                    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(EPACK_NO-SPACK_NO+1)  AS ORPacks,SUM((kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='R' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE UNION ALL  " & _
                    " SELECT A.divcode,a.DATE,b.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(packs)  AS ORPacks,SUM((Nett_kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM ig_rsrhd A,ig_rsrdt B  WHERE  A.DIVCODE=B.DIVCODE AND  A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,b.PRODUCT_CODE  UNION ALL  " & _
                    " SELECT A.divcode,DocDt as DATE,A.FromPRODUCT,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,isnull(SUM(ProdPacks),0) AS OIPacks,Isnull(SUM(Prodkgs),0)-Isnull(SUM(tarewt),0) as OIKgs,0 as IssNett_Kgs FROM ig_rrepackhd a   GROUP BY A.divcode,a.DocDt,A.FromPRODUCT UNION ALL  " & _
                    " select a.divcode,a.PDATE AS date,a.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 SPROD_PACKS,  0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,  0 AS  SPROD_RATE, sum" & _
                    " (isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   from ig_wastetrn a   GROUP BY a.divcode,a.PDATE,a.PRODUCT_CODE  ) A  GROUP BY divcode,DATE,PRODUCT_CODE,RECE_RATE,PRO_RATE,TPROD_RATE,SPROD_RATE,loosekgs"
                
intervalMinutes = -1
        Dim STKRS As New Recordset
        
        
        
        'STKRS.Open " SELECT PRODUCT_CODE,SUM(OPENPACK) AS OPENPACK,SUM(OPENING) AS OPENING,SUM(RECPACK) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS,SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS) CLOSEPACK,SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS) CLOSEKGS" & _
        '        " From " & _
        '        " (" & _
        '        "  SELECT PRODUCT_CODE,DATE,SUM(PROD_PACKS-(PPROD_PACKS+TPROD_PACKS+SPROD_PACKS)) OPENPACK,SUM(RECEIPTS-(PROD_ISS+TRN_ISS+SAL_ISS)) AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE  DIVCODE='" & Divcode & "' AND DATE < '" & Format(STKDT, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
       '         "  Union" & _
       '         "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,SUM(PROD_PACKS) AS RECPACK,SUM(RECEIPTS) AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DIVCODE='" & Divcode & "' AND DATE BETWEEN '" & Format(STKDT, "YYYY-MM-DD") & "' AND '" & Format(STKDT, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
       '         "  Union" & _
       '         "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,SUM(PPROD_PACKS) AS PPROD_PACKS,SUM(PROD_ISS) AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DIVCODE='" & Divcode & "' AND DATE BETWEEN '" & Format(STKDT, "YYYY-MM-DD") & "' AND '" & Format(STKDT, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE " & _
       '         "  Union" & _
       '         "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,SUM(TPROD_PACKS) AS TPROD_PACKS,SUM(TRN_ISS) AS TRN_ISS,0 AS SPROD_PACKS,0 AS SAL_ISS FROM YARNSTOCK1 WHERE DIVCODE='" & Divcode & "' AND DATE BETWEEN '" & Format(STKDT, "YYYY-MM-DD") & "' AND '" & Format(STKDT, "YYYY-MM-DD") & "' GROUP BY DATE,PRODUCT_CODE  " & _
       '         "  Union" & _
       '         "  SELECT PRODUCT_CODE,DATE,0 AS OPENPACK,0 AS OPENING,0 AS RECPACK,0 AS RECEIPTS,0 AS PPROD_PACKS,0 AS PROD_ISS,0 AS TPROD_PACKS,0 AS TRN_ISS,SUM(SPROD_PACKS) AS SPROD_PACKS,SUM(SAL_ISS) AS SAL_ISS FROM YARNSTOCK1 WHERE DIVCODE='" & Divcode & "' AND DATE BETWEEN '" & Format(STKDT, "YYYY-MM-DD") & "' AND '" & Format(STKDT, "YYYY-MM-DD") & "' GROUP BY DATE ,PRODUCT_CODE " & _
       '         " ) A  GROUP BY PRODUCT_CODE" & _
       '         " having SUM(OPENPACK)>0 or SUM(OPENING) >0 or SUM(RECPACK)>0 or SUM(RECEIPTS) >0 or SUM(PPROD_PACKS)>0 or SUM(PROD_ISS)>0 or  SUM(TPROD_PACKS)>0 or SUM(TRN_ISS) >0 or SUM(SPROD_PACKS)>0 or  SUM(SAL_ISS)>0 or  (SUM(OPENPACK)+SUM(RECPACK)-SUM(PPROD_PACKS)-SUM(TPROD_PACKS)-SUM(SPROD_PACKS))>0 or SUM(OPENING)+SUM(RECEIPTS)-SUM(PROD_ISS)-SUM(TRN_ISS)-SUM(SAL_ISS)>0 " & _
       '         " ", DB, adOpenStatic

        Set STKRS = New Recordset
        STKRS.Open "Exec ksp_IG_rStockReport_period_form9 '" & Divcode & "' ,'" & U & "','" & v & "'", DB
        
        Dim lstINVRTRS As New Recordset
        Dim MRsqlRS As New Recordset
        Prodvalue = 0
        MNAME = ""
        
        If Not STKRS.EOF Then STKRS.MoveFirst
        intervalMinutes = -1
        Do While Not STKRS.EOF
            If MNAME <> STKRS!Product_code Then
                MOPQTY = 0
                Mdesqty = 0
                Mprdqty = 0
                Mtrnsqty = 0
                mrisueqty = 0
                MNAME = STKRS!Product_code
            End If
            MOPQTY = STKRS!OKgs
            Mdesqty = STKRS!Dep_kgs + STKRS!OIKgs + STKRS!TranKgs - STKRS!IssNett_Kgs
            '{ksp_IG_rStockReport_period;1.Dep_kgs}+{ksp_IG_rStockReport_period;1.OIKgs}+{ksp_IG_rStockReport_period;1.TranKgs}-{ksp_IG_rStockReport_period;1.IssNett_Kgs}
            Mprdqty = STKRS!Rec_kgs + STKRS!ORKgs '+ Mdesqty
            '-,sum(IssNett_Kgs-TranKgs) as IssNett_Kgs
             Mtrnsqty = STKRS!TranKgs
             mrisueqty = STKRS!IssNett_Kgs
             
            STKRS.MoveNext
            K = 1
            If Not STKRS.EOF Then
                    K = 0
                If MNAME <> STKRS!Product_code Then K = 1
            End If
            
            If K = 1 Then
      '  If Option3.value Then
            lstINVRT = "SELECT Distinct b.PRODUCT_CODE, a.DATE, isnull(b.RATE_EX,0)  FROM IG_RINVHD a, IG_RINVDT b "
            lstINVRT = lstINVRT & " Where a.DIVCODE = b.DIVCODE AND "
            lstINVRT = lstINVRT & " a.INV_NO = b.INV_NO AND "
            lstINVRT = lstINVRT & " a.INV_TYPE = b.INV_TYPE  AND "
            lstINVRT = lstINVRT & " a.DIVCODE = " & Trim(Divcode) & " AND "
            lstINVRT = lstINVRT & " b.PRODUCT_CODE = '" & Trim(MNAME) & "' AND "
            lstINVRT = lstINVRT & " a.INV_NO = ("
            lstINVRT = lstINVRT & " SELECT MAX(a.INV_NO)FROM IG_RINVHD a, IG_RINVDT b"
            lstINVRT = lstINVRT & " Where"
            lstINVRT = lstINVRT & " a.DIVCODE = b.DIVCODE AND"
            lstINVRT = lstINVRT & " a.INV_NO = b.INV_NO AND"
            lstINVRT = lstINVRT & " a.INV_TYPE = b.INV_TYPE  AND"
            lstINVRT = lstINVRT & " a.DIVCODE = " & Trim(Divcode) & " AND  "
            lstINVRT = lstINVRT & " b.PRODUCT_CODE = '" & Trim(MNAME) & "' AND "
            lstINVRT = lstINVRT & " a.DATE <= '" & STKDT & "')"
    Set lstINVRTRS = New Recordset
        lstINVRTRS.Open lstINVRT, DB
            rateS = 0
       ' If Option3.value Then
            If lstINVRTRS.EOF And lstINVRTRS.BOF Then
            
            '    mrsql = "SELECT a.marketrate FROM IG_RProductCost A WHERE "
            '    mrsql = mrsql & " a.DIVCODE = " & Trim(Divcode) & " AND  "
             '   mrsql = mrsql & " A.PRODUCT_CODE = '" & Trim(MNAME) & "' "
                
               '05/11/14
                mrsql = "SELECT a.marketrate FROM IG_RProductCost A WHERE "
                mrsql = mrsql & " a.DIVCODE = " & Trim(Divcode) & " AND  "
                mrsql = mrsql & " A.PRODUCT_CODE = '" & Trim(MNAME) & "' AND EFFDATE=(SELECT MAX(EFFDATE) FROM IG_RPRODUCTCOST A WHERE A.DIVCODE =" & Trim(Divcode) & " AND  A.PRODUCT_CODE = '" & Trim(MNAME) & "' AND EFFDATE<='" & STKDT & "')"
                
                
                MRsqlRS.Open mrsql, DB
                If Not (MRsqlRS.EOF And MRsqlRS.BOF) Then
                    rateS = MRsqlRS(0)
                End If
                MRsqlRS.Close
                If rateS = 0 Then
                   ' MsgBox Trim(STKRS(0).value) & "---> " & Trim(STKRS(1).value) & " Market Rate is Not Avaliable", vbInformation + vbOKOnly, head
                   rateS = 0
                End If
            Else
                rateS = lstINVRTRS(2)
            End If
            If Len(Trim(rateS)) = 0 Then
                rateS = 0
            End If
            intervalMinutes = -1
                'mrsql = "SELECT a.marketrate FROM IG_RProductCost A WHERE "
                'mrsql = mrsql & " a.DIVCODE = " & Trim(Divcode) & " AND  "
                'mrsql = mrsql & " A.PRODUCT_CODE = '" & Trim(MNAME) & "' "
                
                '05/11/14
                mrsql = "SELECT a.marketrate FROM IG_RProductCost A WHERE "
                mrsql = mrsql & " a.DIVCODE = " & Trim(Divcode) & " AND  "
                mrsql = mrsql & " A.PRODUCT_CODE = '" & Trim(MNAME) & "' AND EFFDATE=(SELECT MAX(EFFDATE) FROM IG_RPRODUCTCOST A WHERE A.DIVCODE =" & Trim(Divcode) & " AND  A.PRODUCT_CODE = '" & Trim(MNAME) & "' AND EFFDATE<='" & STKDT & "')"
                
                
                Set MRsqlRS = New Recordset
                MRsqlRS.Open mrsql, DB
                If Not (MRsqlRS.EOF And MRsqlRS.BOF) Then
                    rateS1 = MRsqlRS(0)
                End If
                MRsqlRS.Close
                If rateS1 = 0 Then
                   ' MsgBox Trim(STKRS(0).value) & "---> " & Trim(STKRS(1).value) & " Market Rate is Not Avaliable", vbInformation + vbOKOnly, head
                   rateS1 = 0
                End If
       ' End If
        
        
'        If Option1.value Or Option2.value Then
'            If Not (lstINVRTRS.EOF And lstINVRTRS.BOF) Then
'                rateS = lstINVRTRS(0)
'            End If
'        End If
            
          intervalMinutes = -1
            
            'Prodvalue = CDbl(Format(CDbl(Trim(STKRS(2).value)) * CDbl(Trim(rateS)), "#0.00"))
            inssql = "insert into IG_RTemp_LastINVCost2 values ('"
            'Create table IG_RTemp_LastINVCost2(productcode varchar(10),DESCRIPT varchar(100),Opqty numeric(18,2),prdqty numeric(18,2),despqty numeric(18,2),trnsqty numeric(18,2),COST_KG numeric(18,2))
            inssql = inssql & MNAME & "', '"
            
            Set rs3 = New Recordset
            rs3.Open "SELECT  DESCRIPTION,isnull(form9,'N') form9 FROM IG_RPRODUCT  where PRODUCT_CODE  = '" & MNAME & "'", DB
'            MOPQTY = 0
'                mdesqty = 0
'                mprdqty = 0
'                mtrnsqty = 0
'
            inssql = inssql & rs3(0).value & "', " & MOPQTY & " ," & Mprdqty & ", " & val(Mdesqty) & ", " & Mtrnsqty & ", " & mrisueqty & ","
            'If rs3("form9") = "Y" Then
            '  mflg = True
            'Else
            '  mflg = False
            
           ' End If
            rs3.Close
            inssql = inssql & rateS & "," & rateS1 & ")"
            
            DB.Execute inssql
            lstINVRTRS.Close
            End If
            intervalMinutes = -1
        Loop
        STKRS.Close
End Sub
Public Sub FORM9(Str As String, U As String, v As String, W As String)

On Error GoTo StockLotReport4_Error
intervalMinutes = -1
Set Cnn = New Connection
'Dim v As String
str1 = Str
catcd = Str
a1 = U
Cnn.CursorLocation = adUseClient
'V = U
'u = Format(yfdate, "yyyy-mm-dd")
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
Set ResultRs = New Recordset
DB.CommandTimeout = 2000
Cnn.CommandTimeout = 2000
'''        strSQL = " SELECT SUM(yyy.OPKGS) AS clokgs, SUM(yyy.OPVALUE) AS VALUE FROM (select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
'''        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
'''        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
'''        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
'''        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
'''        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
'''        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
'''        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
'''        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
'''        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
'''        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
'''        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
'''        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
'''        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
'''        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
'''        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
'''        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
'''        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VALUE"
'''        strSQL = strSQL + " FROM ("
'''        strSQL = strSQL + gStockStatement(U, V)
'''        strSQL = strSQL + " ) A Inner join RM_LOT B on b.divcode ='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
'''        strSQL = strSQL + " Inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE "
'''        strSQL = strSQL + " inner join rm_CAT D on c.CATCD= D.CATCD  "
'''        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE  "
'''        strSQL = strSQL + " WHERE b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and "
'''        strSQL = strSQL + "  b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname )YYY"
      '   AS RECKGS,AS RECVALUE
        
     If W = "A" Then
        strSQL = " SELECT SUM(yyy.OPKGS) AS opKGS, SUM(yyy.OPVALUE) AS opValue ,sum(RECKGS) AS RECKGS,sum(RECVALUE) AS RECVALUE,sum(ISSKGS) as ISSKGS ,"
        strSQL = strSQL + " sum(ISSVALUE) as ISSVALUE , sum(REJKGS) as REJKGS ,sum(REJVALUE) AS REJVALUE,sum(ISSVALUE) as ISSVALUE , sum(TRNSKGS) as TRNSKGS ,sum(TRNSVALUE) AS TRNSVALUE  FROM ( select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRNSBALES,SUM(ISNULL(A.TRANSKGS,0)) AS TRNSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRNSVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        
        strSQL = strSQL + " ) A Inner join RM_LOT B on b.divcode ='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
        strSQL = strSQL + " Inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE "
        strSQL = strSQL + " inner join rm_CAT D on c.CATCD= D.CATCD  "
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE  "
        strSQL = strSQL + " WHERE b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and "
        strSQL = strSQL + "  b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname )YYY"
    Else
        strSQL = " SELECT SUM(yyy.OPKGS) AS opKGS, SUM(yyy.OPVALUE) AS opValue ,sum(RECKGS) AS RECKGS,sum(RECVALUE) AS RECVALUE,sum(ISSKGS) as ISSKGS ,"
        strSQL = strSQL + " sum(ISSVALUE) as ISSVALUE , sum(REJKGS) as REJKGS ,sum(REJVALUE) AS REJVALUE,sum(ISSVALUE) as ISSVALUE , sum(TRNSKGS) as TRNSKGS ,sum(TRNSVALUE) AS TRNSVALUE  FROM ( select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRNSBALES,SUM(ISNULL(A.TRANSKGS,0)) AS TRNSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRNSVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        
        strSQL = strSQL + " ) A Inner join RM_LOT B on b.divcode ='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
        strSQL = strSQL + " Inner join RM_VAR C on  B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE "
        strSQL = strSQL + " inner join rm_CAT D on c.CATCD= D.CATCD  "
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE  "
        strSQL = strSQL + " WHERE b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and "
        strSQL = strSQL + "  b.lotyear='" & Year(yfdate) & "' AND d.CATCD='" & Trim(W) & "'  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname )YYY"
    
    End If
    

      intervalMinutes = -1
        
    ResultRs.Open strSQL, Cnn, adOpenStatic
intervalMinutes = -1
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set rs4 = New Recordset

'If Table_Exists("yarnstock1") = True Then
'DB.Execute "Drop View yarnstock1"
'End If
'DB.Execute "CREATE VIEW yarnstock1 AS SELECT DISTINCT divcode,DATE,PRODUCT_CODE,SUM(PROD_PACKS) PROD_PACKS,SUM(PPROD_PACKS) PPROD_PACKS,SUM(TPROD_PACKS) TPROD_PACKS,SUM(SPROD_PACKS) SPROD_PACKS,SUM(RECEIPTS) RECEIPTS,SUM(P_ISS) PROD_iss,  SUM(T_ISS) AS TRN_ISS,SUM(S_ISS) AS SAL_ISS,RECE_RATE AS RECRATE,PRO_RATE AS PRRATE,TPROD_RATE AS TRRATE,SPROD_RATE   AS SARATE ,sum(loosekgs) AS LooseKgs,SUM(ORPacks) AS ORPacks,SUM(ORKgs) AS ORKgs,SUM(OIPacks) as OIPacks,SUM(OIKgs) AS OIKgs,sum(IssNett_Kgs)IssNett_Kgs FROM (" & _
'    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,SUM(EPACK_NO-SPACK_NO+1) AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,SUM(kgs) AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='N' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE  UNION ALL " & _
'    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,SUM(EPACK_NO-SPACK_NO+1)  AS PPROD_PACKS,0 AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,SUM(ProdNetKgs) P_ISS,0 AS T_ISS,0 AS S_ISS,  0 AS RECE_RATE,A.TRATE AS PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype   iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND   iss.ISStype='P' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
'    " SELECT A.divcode,b.DATE,PRODUCT_CODE,  0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0   AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE AS TPROD_RATE,0 AS SPROD_RATE ,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO   and iss.issue_code=b.issflg AND iss.ISStype='T' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
'    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS TPROD_PACKS,0 AS   SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,SUM(ProdNetKgs) AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,A.TRATE  AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RBODT A,IG_RBOHD B,rm_issuetype iss  WHERE A.DIVCODE=B.DIVCODE AND   A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg AND iss.ISStype='J' GROUP BY A.divcode,  b.DATE,PRODUCT_CODE,A.TRATE   UNION ALL " & _
'    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,SUM(EPACK_NO-SPACK_NO+1) AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,SUM(ProdNetKgs)   AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg  AND iss.ISStype='S' GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
'    " SELECT A.divcode,b.DATE,PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0  AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,A.TRATE AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,SUM(Nett_Kgs) as IssNett_Kgs  FROM IG_RBODT A,IG_RBOHD  B,rm_issuetype iss WHERE A.DIVCODE=B.DIVCODE AND A.BO_TYPE=B.BO_TYPE AND A.BO_NO=B.BO_NO and iss.issue_code=b.issflg GROUP BY A.divcode,b.DATE,PRODUCT_CODE,A.TRATE  UNION ALL " & _
'    " SELECT A.divcode,a.DATE,A.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, A.RATE AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(EPACK_NO-SPACK_NO+1)  AS ORPacks,SUM((kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM IG_RPACKHD A,IG_RPACKDT B  WHERE isnull(b.repack_flg,'N')='R' and A.DIVCODE=B.DIVCODE AND   A.PRODUCT_CODE=B.PRODUCT_CODE AND A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,  A.PRODUCT_CODE,A.RATE UNION ALL  " & _
'    " SELECT A.divcode,a.DATE,b.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,SUM(packs)  AS ORPacks,SUM((Nett_kgs)) AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs FROM ig_rsrhd A,ig_rsrdt B  WHERE  A.DIVCODE=B.DIVCODE AND  A.DOC_NO=B.DOC_NO AND A.DOC_TYPE=B.DOC_TYPE  GROUP BY A.divcode,a.DATE,b.PRODUCT_CODE  UNION ALL  " & _
'    " SELECT A.divcode,DocDt as DATE,A.FromPRODUCT,0 AS PROD_PACKS,0 AS PPROD_PACKS,0   AS TPROD_PACKS,0 AS SPROD_PACKS,0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS   PRO_RATE,0 AS TPROD_RATE,0 AS SPROD_RATE,0 AS loosekgs,0 AS ORPacks,0 AS ORKgs,isnull(SUM(ProdPacks),0) AS OIPacks,Isnull(SUM(Prodkgs),0)-Isnull(SUM(tarewt),0) as OIKgs,0 as IssNett_Kgs FROM ig_rrepackhd a   GROUP BY A.divcode,a.DocDt,A.FromPRODUCT UNION ALL  " & _
'    " select a.divcode,a.PDATE AS date,a.PRODUCT_CODE,0 AS PROD_PACKS,0 AS PPROD_PACKS,0 AS TPROD_PACKS,0 SPROD_PACKS,  0 AS RECEIPTS,0 AS P_ISS,0 AS T_ISS,0 AS S_ISS, 0 AS RECE_RATE,0 AS PRO_RATE,0 AS TPROD_RATE,  0 AS  SPROD_RATE, sum" & _
'    " (isnull(prod_kgs,0))-sum(isnull(pack_kgs,0)) as loose_kgs,0 AS ORPacks,0 AS ORKgs,0 AS OIPacks,0 as OIKgs,0 as IssNett_Kgs   from ig_wastetrn a   GROUP BY a.divcode,a.PDATE,a.PRODUCT_CODE  ) A  GROUP BY divcode,DATE,PRODUCT_CODE,RECE_RATE,PRO_RATE,TPROD_RATE,SPROD_RATE,loosekgs"
    
    Call LastINVCost(U, v)
    Set rs4 = New Recordset
    Dim opnkgswc As Double
    Dim opnvalwc As Double
       Set rs4 = New Recordset
     opnkgswc = 0
    opnvalwc = 0

mISUQTYCWASTE = 0
mISUVALCWATE = 0

mSGQTYCWPRD = 0
mSGVALCWPRD = 0

mISUQTYCWASTE = 0
mISUVALCWATE = 0
mrqtycw = 0
mrvalue = 0
      rs4.Open "select * from IG_RTemp_LastINVCost2 ", DB
      If Not rs4.EOF Then
        Do While Not rs4.EOF
        intervalMinutes = -1
             opnkgswc = opnkgswc + rs4!Opqty
              mSGQTYCWPRD = mSGQTYCWPRD + rs4!prdqty + (rs4!despqty * -1)
              mISUQTYCWASTE = mISUQTYCWASTE + rs4!trnsqty
             If rs4!Opqty <> 0 And rs4!cOST_KG <> 0 Then
                opnvalwc = opnvalwc + rs4!Opqty * rs4!cOST_KG
             End If
             
             If rs4!prdqty + (rs4!despqty * -1) <> 0 And rs4!cOST_KG <> 0 Then
                ''mSGVALCWPRD = mSGVALCWPRD + (rs4!prdqty + (rs4!despqty * -1)) * rs4!cOST_KG
                mSGVALCWPRD = mSGVALCWPRD + (rs4!prdqty + (rs4!despqty * -1)) * rs4!market_Rate
                ''mSGVALCWPRD = mSGVALCWPRD + (rs4!prdqty) * rs4!market_Rate
             End If
             
             If rs4!trnsqty <> 0 And rs4!cOST_KG <> 0 Then
                mISUVALCWATE = mISUVALCWATE + rs4!trnsqty * rs4!market_Rate
             End If
              
              mrqtycw = mrqtycw + rs4!risueqty
             
              If rs4!risueqty <> 0 And rs4!cOST_KG <> 0 Then
                mrvalue = mrvalue + rs4!risueqty * rs4!market_Rate
             End If
             
            rs4.MoveNext
        Loop
      End If
    
    DB.Execute "delete FROM TMP_TABLEFORM9 WHERE DIVCODE = '" & Divcode & "' and [LOCALIP]  ='1' "
    
    strSQL = ""
    strSQL = strSQL + " insert into TMP_TABLEFORM9 (DIVCODE, LOCALIP ,  OPNQTYCOTTON , OPNVALCOTTON,"
    strSQL = strSQL + " MONQTYREC,MONVALREC,RETQTYCOTTON,"
    strSQL = strSQL + " RETVALCOTTON,ISUQTYCOTTON,ISUVALCOTTON,TRGQTYCOTTON,TRGVALCOTTON,OPNQTYCWASTE,OPNVALCWASTE ,SGQTYCWPRD,SGVALCWPRD,ISUQTYCWASTE,ISUVALCWATE,rqtycw,rvalue) values "
    strSQL = strSQL + "('" & Divcode & "', '1'," & ResultRs!oPKGS & " ,  " & ResultRs!opvalue & " ," & ResultRs!reckgs & " ,  " & ResultRs!recvalue & ","
    strSQL = strSQL + " " & ResultRs!rejkgs & " ,  " & ResultRs!REJVALUE & "," & ResultRs!issKgs & " ,  " & ResultRs!issvalue & ", "
    strSQL = strSQL + " " & ResultRs!trnskgs & " ,  " & ResultRs!trnsVALUE & ", " & opnkgswc & " ,  " & opnvalwc & ", " & mSGQTYCWPRD & " ,  " & mSGVALCWPRD & ", " & mISUQTYCWASTE & " ,  " & mISUVALCWATE & ", " & mrqtycw & " ,  " & mrvalue & ")"
    
    'DB.Execute "insert into TMP_TABLEFORM9 (DIVCODE, LOCALIP ,  OPNQTYCOTTON ,  OPNVALCOTTON,MONQTYREC,MONVALREC ) values "
    
    DB.Execute strSQL
        intervalMinutes = -1
    'End If
    'ResultRs.MoveNext
    
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = CryForm9
    clsCryRpt.CrystalPrint

    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
'    crr.ParameterFields(0) = "@date1;" & Format(DTPicker1.value, "dd/MM/yy") & ""
'    crr.ParameterFields(1) = "@DivName;" & DIVNAME & ""

    mreptitle = CStr(Format(DTPicker1.value, "dd/MM/yyyy")) & " TO " & CStr(Format(DTPicker2.value, "dd/MM/yyyy"))
    crr.Formulas(0) = "RptTitle='" & mreptitle & "'"
    crr.SelectionFormula = "{pp_divmas.divcode} ='" & Divcode & "'"
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 2
    crr.PrinterCopies = 1
    Screen.MousePointer = 0
    intervalMinutes = -1
Exit Sub
StockLotReport4_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport4 of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Frame1.Width = 4900
    SSTab1.Width = 5000 + 100
    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    Label5.Caption = "Form 9"
    Me.Caption = "Form 9"
    
    '05/11/14
    Set rs1 = New Recordset
    rs1.Open "SELECT distinct b.catcd AS CODE,b.catname AS DESCR FROM rm_var a INNER JOIN rm_cat b ON a.catcd = b.catcd Union SELECT 'A' CODE,'ALL' DESCR", DB
      
    If Not rs1.EOF Then
        rs1.MoveFirst
       Do While Not rs1.EOF
        Combo1.AddItem rs1(0) + "-" + rs1(1)
        rs1.MoveNext
       Loop
       Combo1.ListIndex = 0
    End If
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form rmireports", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub
