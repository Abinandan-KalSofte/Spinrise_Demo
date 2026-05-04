VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form pending_brokerwise 
   AutoRedraw      =   -1  'True
   Caption         =   "Brokerwise"
   ClientHeight    =   5955
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5955
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport crr 
      Left            =   540
      Top             =   5580
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command3 
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
      Left            =   5430
      TabIndex        =   20
      Top             =   5400
      Width           =   1875
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1320
      TabIndex        =   16
      Top             =   4440
      Visible         =   0   'False
      Width           =   6660
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   18
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   17
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.Label Label37 
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
         Left            =   180
         TabIndex        =   19
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame1 
      Height          =   3105
      Left            =   1440
      TabIndex        =   2
      Top             =   1200
      Width           =   6405
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "pending_brokerwise.frx":0000
         Left            =   2505
         List            =   "pending_brokerwise.frx":000A
         TabIndex        =   13
         Text            =   "P-PackWise"
         Top             =   2445
         Width           =   3345
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2490
         TabIndex        =   3
         Top             =   615
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2490
         TabIndex        =   4
         Top             =   1005
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2505
         TabIndex        =   5
         Top             =   1560
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2490
         TabIndex        =   6
         Top             =   1935
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Arrival Type"
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
         TabIndex        =   12
         Top             =   2475
         Width           =   1035
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "From Broker"
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
         Left            =   1050
         TabIndex        =   11
         Top             =   1605
         Width           =   1035
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
         TabIndex        =   10
         Top             =   45
         Width           =   7725
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "To Broker"
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
         TabIndex        =   9
         Top             =   2010
         Width           =   855
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
         TabIndex        =   8
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
         TabIndex        =   7
         Top             =   990
         Width           =   705
      End
   End
   Begin VB.CommandButton Command1 
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
      Height          =   435
      Left            =   2235
      TabIndex        =   1
      Top             =   5400
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
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
      Left            =   3915
      TabIndex        =   0
      Top             =   5400
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3300
      Left            =   1320
      TabIndex        =   14
      Top             =   1080
      Width           =   6600
      _ExtentX        =   11642
      _ExtentY        =   5821
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "pending_brokerwise.frx":0025
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8040
      TabIndex        =   15
      Top             =   960
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "pending_brokerwise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim rs1 As Recordset
Dim a1 As String
Dim A2, a3 As String
Dim U, V, W, X As String
Dim tot As Double
Dim tot1 As Double
Dim i As Integer
Dim rptv As Report.ReportView
Dim a As Integer
Dim z As Integer
Dim pg1 As Integer
Dim fs, ts As String
Dim ssd As String

Private Sub Command1_Click()
intervalMinutes = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim c As Integer
''a1 = Right(DataCombo1.Text, 10)
''b1 = Right(DataCombo2.Text, 10)
''w = Right(DataCombo3.Text, 6)
''X = Right(DataCombo4.Text, 6)
''u = Right(DataCombo1.Text, 10)
''v = Right(DataCombo2.Text, 10)
''a = Left(DataCombo1.Text, 2)
''b = Left(DataCombo2.Text, 2)
On Error GoTo Command1_Click_Error
intervalMinutes = -1
ssd = DataCombo2.Text
Set DB = New Connection
DB.Provider = "MSDATASHAPE"
DB.Open connectstring
Dim rsDu As Recordset
Set rsDu = New Recordset
rsDu.Open "select  convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where divcode='" & Divcode & "' order by CONTDT", DB, adOpenStatic, adLockBatchOptimistic
Do While Not rsDu.EOF
    If DataCombo2.Text = rsDu(0) Then
        GoTo PendingDatesuppwi
    Else
        rsDu.MoveNext
    End If
Loop
MsgBox "Select the valid broker ", vbInformation, head
DataCombo2.Text = ""
DataCombo2.SetFocus
Screen.MousePointer = 0
Exit Sub


PendingDatesuppwi: If DataCombo1.MatchedWithList Then
If DataCombo3.MatchedWithList And DataCombo4.MatchedWithList Then
'a1 = Trim(Mid$(DataCombo1.Text, InStr(1, DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
'a3 = Format(Trim(Mid$(DataCombo1.Text, InStr(1, DataCombo1.Text, "-") + 1, Len(DataCombo1.Text))), "DD/MM/YY")
'b1 = Format(Trim(Mid$(DataCombo2.Text, InStr(1, DataCombo2.Text, "-") + 1, Len(DataCombo2.Text))), "DD/MM/YY")
a3 = Trim(DataCombo1.Text)
b1 = Trim(DataCombo2.Text)
W = Trim(Mid$(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1, Len(DataCombo3.Text)))
X = Trim(Mid$(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1, Len(DataCombo4.Text)))
'U = Trim(Mid$(DataCombo1.Text, InStr(1, DataCombo1.Text, "-") + 1, Len(DataCombo1.Text)))
'V = Trim(Mid$(DataCombo2.Text, InStr(1, DataCombo2.Text, "-") + 1, Len(DataCombo2.Text)))
U = Trim(DataCombo1.Text)
V = Trim(DataCombo2.Text)
'a = Trim(Mid$(DataCombo1.Text, 1, InStr(1, DataCombo1.Text, "-") - 1))
'b = Trim(Mid$(DataCombo2.Text, 1, InStr(1, DataCombo2.Text, "-") - 1))



If Repindex = 1236 Then
    Set primaryrs = New Recordset
    If Combo1.Text = "P-PackWise" Or Combo1.Text = "K-KgsWise" Then
        GoTo Pendingbroker
    Else
        MsgBox "Select the valid Arrival Type", vbInformation, head
        Combo1.Text = ""
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
Else
    Set primaryrs = New Recordset
   ' primaryrs.Open "select DISTINCT a.brkcd from rm_cont a,rm_var b,fa_slmas c Where A.CONTNO BETWEEN '" & a & "' AND '" & B & "'   and a.brkcd*= C.slcode and  a.brkcd between '" & W & "' and '" & X & "'   ORDER BY A.BRKCD", DB, adOpenStatic, adLockBatchOptimistic
    primaryrs.Open "select DISTINCT a.brkcd from rm_cont a inner join rm_var b on a.varcode=b.varcode  left join fa_slmas c on a.brkcd= C.slcode  Where A.CONTNO BETWEEN '" & a & "' AND '" & B & "'  and  a.brkcd between '" & W & "' and '" & X & "'   ORDER BY A.BRKCD", DB, adOpenStatic, adLockBatchOptimistic

End If
Else
MsgBox "Select the valid broker", vbInformation, head
    Screen.MousePointer = 0
    If DataCombo3.MatchedWithList = False Then
    DataCombo3.Text = ""
    DataCombo3.SetFocus
    End If
    If DataCombo4.MatchedWithList = False Then
    DataCombo4.Text = ""
    DataCombo4.SetFocus
    End If
    Exit Sub
End If
Else
MsgBox "Select the valid date", vbInformation, head
    Screen.MousePointer = 0
    If DataCombo1.MatchedWithList = False Then
    DataCombo1.Text = ""
    DataCombo1.SetFocus
    End If
    If DataCombo2.MatchedWithList = False Then
    DataCombo2.Text = ""
    DataCombo2.SetFocus
    End If
    Exit Sub
    End If
    
Pendingbroker:
    Set Cnn = New Connection
           
        If Repindex = 1236 Then
            Set rs1 = New Recordset
            If Left(Combo1.Text, 1) = "P" Then
              '  rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(a.cancelbales,0) as cancelbales,(a.ordqty-isnull(recqty,0)-isnull(a.cancelbales,0))Bales,round(a.candyrate,0)as candyrate,case when bbflag='B' then 'Bales' else 'Borah' end as unit,a.Millrefno from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where  ISNULL(aRRIVALTYPE,'P')='P' AND  divcode ='" & Divcode & "' AND a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.brkcd between '" & W & "' and '" & X & "' AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0 AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic
                rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(a.cancelbales,0) as cancelbales,(a.ordqty-isnull(recqty,0)-isnull(a.cancelbales,0))Bales,round(a.candyrate,0)as candyrate,case when bbflag='B' then 'Bales' else 'Borah' end as unit,a.Millrefno from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on  a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where  ISNULL(aRRIVALTYPE,'P')='P' AND  divcode ='" & Divcode & "'   and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  and a.brkcd between '" & W & "' and '" & X & "' AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0 AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "' order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic

            Else
              '  rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordKGS""ORDQTY"",a.rCDKGS""RECQTY"",isnull(a.cancelKGS,0) as cancelbales,(a.ordKGS-isnull(rCDKGS,0)-isnull(a.cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,case when bbflag='B' then 'Bales' else 'Borah' end as unit,a.Millrefno from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where  ISNULL(aRRIVALTYPE,'P')='K' AND divcode ='" & Divcode & "' AND a.varcode*= B.varcode and (isnull(a.rCDKGS,0) < isnull(a.ordKGS,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.brkcd between '" & W & "' and '" & X & "' AND ORDKGS-isnull(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic
            rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordKGS""ORDQTY"",a.rCDKGS""RECQTY"",isnull(a.cancelKGS,0) as cancelbales,(a.ordKGS-isnull(rCDKGS,0)-isnull(a.cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,case when bbflag='B' then 'Bales' else 'Borah' end as unit,a.Millrefno from  RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on  a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where  ISNULL(aRRIVALTYPE,'P')='K' AND divcode ='" & Divcode & "' AND  (isnull(a.rCDKGS,0) < isnull(a.ordKGS,0))and  a.brkcd between '" & W & "' and '" & X & "' AND ORDKGS-isnull(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic


            End If
        Else
            Set rs1 = New Recordset
           ' rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(a.cancelbales,0) as cancelbales,(a.ordqty-isnull(recqty,0)-isnull(a.cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.Millrefno from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where divcode ='" & Divcode & "' and A.CONTNO BETWEEN " & a & " AND " & B & " AND  a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.brkcd between '" & W & "' and '" & X & "' AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic
             rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(a.cancelbales,0) as cancelbales,(a.ordqty-isnull(recqty,0)-isnull(a.cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.Millrefno from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on  a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where divcode ='" & Divcode & "' and A.CONTNO BETWEEN " & a & " AND " & B & " AND a.brkcd between '" & W & "' and '" & X & "' AND A.CONTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(V, "YYYY-MM-DD") & "'  order by A.BRKCD,cast(a.contno as varchar)", DB, adOpenStatic

        End If
        If rs1.RecordCount = 0 Then
            MsgBox "No Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set rptv = New Report.ReportView
        z = FreeFile
        Close
        'Open "C:\peco.TXT" For Output As #z
         Open KALFOLDERDATA & "\peco.TXT" For Output As #z
        pg1 = 1
        co = 0
        Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a3), CStr(b1))
        tot = 0
        tot1 = 0
        tot2 = 0
        tot3 = 0
        tot4 = 0
        gtot1 = 0: gtot2 = 0: gtot3 = 0
        
        co = co + 7
        Do While Not rs1.EOF
        'isnull(a.cancelbales,0)
            If TEMP <> rs1("brkname") Then
                Print #z,
                co = co + 1
            End If
            If TEMP <> rs1("brkname") Then
                Print #z, Padr(CStr(rs1("brkname")), 26, " "); Space(1) + Padr(CStr(rs1("supNAME")), 25, " "); Space(1) + Padl(CStr(rs1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(4) + Padr(CStr(rs1("MillRefNo")), 11, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 8, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 10, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 9, " ")
                co = co + 1
            Else
                 Print #z, Padr("  ", 26, " "); Space(1) + Padr(CStr(rs1("supNAME")), 25, " "); Space(1) + Padl(CStr(rs1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(4) + Padr(CStr(rs1("MillRefNo")), 11, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 8, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 10, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 9, " ")
                   co = co + 1
             End If
            
            If co >= 58 Then
                      Print #z, Space(5) & String(160, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a3), CStr(b1))
            End If
            tot1 = tot1 + rs1("ordqty")
            tot2 = tot2 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
            tot3 = tot3 + rs1("bales")
            tot4 = tot4 + rs1("cancelbales")
            TEMP = rs1("brkname")
            rs1.MoveNext
        Loop
            'Print #z,
            
            If co >= 58 Then
                      Print #z, Space(5) & String(160, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a3), CStr(b1))
            End If
    
    Print #z, String(160, "-")
    Print #z, Space(65) + "  **  Grand Total     ** " + Space(27) + Padl(CStr(INF((tot1), 0)), 12, " "); Space(1); Padl(CStr(INF((tot2), 0)), 9, " "); Space(0); Padl(CStr(INF((tot4), 0)), 10, " "); Space(0); Padl(CStr(INF((tot3), 0)), 10, " ")

    Print #z, String(160, "-")
    

Print #z,
Print #z, Chr(12)
Call footermod(CInt(z), UserFooter1.SelectedStr, 85)
Close #z
 z = FreeFile
'Open "c:\peco.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type peco.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\peco.TXT"
'RPTV.Batfile = "c:\peco.bat"
Call KALBATPROCESS("peco")
Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DataCombo1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
intervalMinutes = -1
    a1 = Trim(DataCombo1.Text)
    b1 = Trim(DataCombo2.Text)
    If DataCombo3.Text <> "" Then W = Trim(Mid$(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))) Else W = ""
    If DataCombo4.Text <> "" Then X = Trim(Mid$(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") + 1, Len(DataCombo4.Text))) Else X = ""
    If Combo1.Text <> "" Then packtype = Trim(Mid$(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1)) Else packtype = ""
    
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Pending_order_brokerwise.rpt"
'    FrmRpt.RptHead = 7
'    parameter1 = DIVNAME
'    parameter2 = packtype
'    parameter3 = Divcode
'    parameter4 = Format(a1, "yyyy-mm-dd")
'    parameter5 = Format(b1, "yyyy-mm-dd")
'    parameter6 = w
'    parameter7 = X
'    rephead = "From " & Format(a1, "dd/mm/yy") & " To " & Format(b1, "dd/mm/yy")
'    FrmRpt.Show
'    Me.MousePointer = 0
''

W = Trim(Mid$(DataCombo3.Text, InStr(1, DataCombo3.Text, "--") + 2, Len(DataCombo3.Text)))
X = Trim(Mid$(DataCombo4.Text, InStr(1, DataCombo4.Text, "--") + 2, Len(DataCombo4.Text)))

   Dim clsCryRpt_sup As New clsCrystal
        Set clsCryRpt_sup.cryRept = Rep_Pending_orderagentwise
        clsCryRpt_sup.CrystalPrint

        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@divname;" & divname & ""
        crr.ParameterFields(1) = "@arr_type;" & packtype & ""
        crr.ParameterFields(2) = "@divcode;" & Divcode & ""
        crr.ParameterFields(3) = "@fdate;" & Format(a1, "yyyy-mm-dd") & ""
        crr.ParameterFields(4) = "@tdate;" & Format(b1, "yyyy-mm-dd") & ""
        crr.ParameterFields(5) = "@fbcode;" & W & ""
        crr.ParameterFields(6) = "@tbcode;" & X & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1

intervalMinutes = -1
    
    
'
'        Dim clsCryRpt_sup As New clsCrystal
'        Set clsCryRpt_sup.cryRept = Rep_Pending_orderagentwise
'        clsCryRpt_sup.CrystalPrint
'
'       crr.Reset
'        crr.Connect = connectstring
'        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'
'        crr.ParameterFields(0) = "description;" & "Pending Register from  " & Format(a1, "dd/MM/yy") & "  to " & Format(b1, "dd/MM/yy") & ""
'        crr.ParameterFields(1) = "name;" & DIVNAME & ""
'
'      '  crr.ParameterFields(2) = "name;" & packtype & ""
'       ' crr.ParameterFields(3) = "name;" & Divcode & ""
'       ' crr.ParameterFields(4) = "name;" & Format(a1, "yyyy-mm-dd") & ""
'       ' crr.ParameterFields(5) = "name;" & Format(a1, "yyyy-mm-dd") & ""
'       ' crr.ParameterFields(6) = "name;" & w & ""
'       ' crr.ParameterFields(7) = "name;" & X & ""
'
'        crr.WindowShowPrintSetupBtn = True
'        crr.WindowShowSearchBtn = True
'        crr.WindowState = crptMaximized
'        SendKeys "{ENTER}"
'        crr.Action = 1
'        crr.PrinterCopies = 1
'
    
    intervalMinutes = -1
    Exit Sub

Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form pending_brokerwise"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Set DB = New Connection
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
DB.Open connectstring
    If Repindex = 1236 Then
        Set Rs = New Recordset
         Rs.Open "select  DISTINCT  CONTDT as fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='" & Divcode & "' order by contdt", DB, adOpenStatic, adLockBatchOptimistic
         If Rs.RecordCount = 0 Then
             MsgBox "No Record Found", vbInformation, head
        End If
        Label5.Caption = "Pending Orders - Brokerwise"
         Set Rs = New Recordset
        'Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where isnull(arrivaltype,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where isnull(arrivaltype,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-ISNULL(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 order by CONTDT,cast(contno as varchar)", DB, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont where isnull(arrivaltype,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont where isnull(arrivaltype,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-ISNULL(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 order by CONTDT", DB, adOpenStatic, adLockBatchOptimistic
        
    Else
        Label5.Caption = "Pending Orders - Complete- Brokerwise"

        Set Rs = New Recordset
        Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where divcode='" & Divcode & "' order by CONTDT,cast(contno as varchar)", DB, adOpenStatic, adLockBatchOptimistic
    End If
     If Rs.RecordCount <> 0 Then
       Set DataCombo1.RowSource = Rs
       DataCombo1.ListField = "Fields"
       Set DataCombo2.RowSource = Rs
       DataCombo2.ListField = "Fields"
     If Not Rs.EOF Then
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
        Rs.MoveLast
        DataCombo2.Text = Rs(0)
     End If

     End If
     
     'rs1.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "'  order by contdt", db, adOpenStatic, adLockBatchOptimistic
     'RS1.Open "select distinct a.slname + ' - '+ a.slcode as slname,b.supcd,c.dlytype from fa_slmas a,rm_arrival b,rm_cont c where  a.slcode=b.supcd  ", db, adOpenStatic, adLockBatchOptimistic
     'RS1.Open "select distinct a.slname +'-'+a.slcode as slname from fa_slmas a,rm_lot b where a.slcode=b.supcd order by slname", db, adOpenStatic, adLockBatchOptimistic
     
     
     'RS1.Open "select distinct a.slname + ' - '+ a.slcode as slname,b.supcd,c.dlytype from fa_slmas a,rm_arrival b,rm_cont c where  a.slcode=b.supcd  ", db, adOpenStatic, adLockBatchOptimistic
     Set Rs = New Recordset
     Rs.Open "select ptypebroker from masterlen", DB, adOpenStatic
     If Rs.EOF = False Then
     
     
     
     Set rs1 = New Recordset
     rs1.Open "select distinct slname + '--' + slcode as slname,slcode from fa_slmas a,rm_cont b where divcode='" & Divcode & "' and a.slcode=b.brkcd and slcode like'" & Rs(0) & "%' order by slcode", DB, adOpenStatic, adLockBatchOptimistic
     
     If rs1.RecordCount <> 0 Then
       Set DataCombo3.RowSource = rs1
       DataCombo3.ListField = "slname"
       Set DataCombo4.RowSource = rs1
       DataCombo4.ListField = "slname"
     If Not rs1.EOF Then
        rs1.MoveFirst
        DataCombo3.Text = rs1(0)
        rs1.MoveLast
        DataCombo4.Text = rs1(0)
     End If
     End If
     DataCombo3.Top = DataCombo3.Top - 100
     Label2.Top = Label2.Top - 100
     Label3.Top = Label3.Top - 75
     Label6.Top = Label6.Top + 100
     
     

DataCombo1.tabIndex = 0
DataCombo2.tabIndex = 1
DataCombo3.tabIndex = 2
DataCombo4.tabIndex = 3
Combo1.tabIndex = 4
Command1.tabIndex = 5
Command2.tabIndex = 6

     End If
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
 End Sub
 
Public Sub pendconHeader(pg1 As Integer, co As Integer, s As String, a3 As String, b1 As String)
'a = a3
'b = b1
On Error GoTo pendconHeader_Error

          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + Chr(27) + "E" + "Pending Orders Brokerwise " + Chr(27) + "F" + Space(1) + "from" + Space(1) + a3 + Space(1) + "to" + Space(1) + b1 + Space(74) + Format(CStr(SR), "dd/mm/yy") + Space(1) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, String(160, "-")
     '     Print #z, Space(5) & "Broker Name               Supplier Name           Order No Date     Delivery  Variety  Rate/Candy  Unit        Ord.Qty      Rec.Qty      Balance"
          Print #z, "                                                     Order Order       Mill        Delivery               Rate/ Pack      Ordered  Received Cancelled   Balance"
          Print #z, "Broker Name                Supplier Name               No. Date        Ref. No.    Type     Variety        Unit Type          Qty       Qty       Qty       Qty"

          Print #z, String(160, "-")
          co = co + 8

Exit Sub
pendconHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pendconHeader of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
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

'MaskEdBox1.Text = Format(pdate, "dd/mm/yyyy")
'MaskEdBox2.Text = Format(pdate, "dd/mm/yyyy")
'
'    'Label5.Caption = "Categorywise/Department Consumption Report"
'    If (Trim(Combo1.Text) <> Empty And Trim(Combo2.Text) <> Empty) Then
'    Set rs = New Recordset
'    'rs.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", db, adOpenStatic
'    'rs.Open "select catcode + ' - ' + catdesc cat from in_cat order by catcode", db, adOpenStatic
'    If rs.RecordCount <> 0 Then
'        rs.MoveFirst
'        Set DataCombo1.RowSource = rs
'        DataCombo1.ListField = "slname"
'        DataCombo2.ListField = "slname"
'        rs.MoveFirst
'        DataCombo1.Text = rs(0)
'        DataCombo2.Text = rs(0)
'
'    End If
'     End If
'    End If
'End Sub

'padl(Format(ITEM_RATE, "#####0.00"), 12, " ") & Padl(IIf(INF(Trim(rs1("value")), 2) = 0, " ", INF(Trim(rs1("value")), 2)), 14, " ")
'Do While Not rs.EOF
'            Combo1.AddItem rs(0)
'            Combo2.AddItem rs(0)
'            rs.MoveNext
'        Loop
'        rs.MoveFirst
'        Combo1.Text = rs(0)
'        rs.MoveLast
'        Combo2.Text = rs(0)

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form pending_brokerwise", vbInformation, head
Screen.MousePointer = 0
End Sub


