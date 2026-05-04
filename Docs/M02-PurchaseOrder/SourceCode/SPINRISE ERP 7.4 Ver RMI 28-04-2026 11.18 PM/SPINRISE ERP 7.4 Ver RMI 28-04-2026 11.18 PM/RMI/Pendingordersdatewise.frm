VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Pendingordersdatewise 
   AutoRedraw      =   -1  'True
   Caption         =   "pendingorderdatewise"
   ClientHeight    =   5745
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11370
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5745
   ScaleWidth      =   11370
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command4 
      Caption         =   "&Excel"
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
      Left            =   2400
      TabIndex        =   19
      Top             =   5010
      Width           =   1335
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
      Height          =   420
      Left            =   5430
      TabIndex        =   18
      Top             =   5025
      Width           =   1665
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1920
      TabIndex        =   12
      Top             =   4200
      Visible         =   0   'False
      Width           =   6660
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   14
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   13
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
         TabIndex        =   15
         Top             =   240
         Width           =   1425
      End
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
      Left            =   7200
      TabIndex        =   7
      Top             =   5010
      Width           =   1335
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
      Left            =   3960
      TabIndex        =   6
      Top             =   5010
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   2490
      Left            =   1995
      TabIndex        =   0
      Top             =   1590
      Width           =   6405
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "Pendingordersdatewise.frx":0000
         Left            =   2520
         List            =   "Pendingordersdatewise.frx":000A
         TabIndex        =   9
         Text            =   "P-PackWise"
         Top             =   1560
         Width           =   3345
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   1
         Top             =   600
         Width           =   3360
         _ExtentX        =   5927
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2535
         TabIndex        =   2
         Top             =   1050
         Width           =   3345
         _ExtentX        =   5900
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   345
         Left            =   2550
         TabIndex        =   16
         Top             =   1020
         Visible         =   0   'False
         Width           =   1875
         _ExtentX        =   3307
         _ExtentY        =   609
         _Version        =   393216
         Format          =   170786817
         CurrentDate     =   37820
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2520
         TabIndex        =   17
         Top             =   600
         Visible         =   0   'False
         Width           =   2055
         _ExtentX        =   3625
         _ExtentY        =   609
         _Version        =   393216
         Format          =   170786817
         CurrentDate     =   37578
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
         Left            =   1080
         TabIndex        =   8
         Top             =   1605
         Width           =   1035
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
         Left            =   1080
         TabIndex        =   5
         Top             =   1110
         Width           =   705
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
         Left            =   1080
         TabIndex        =   4
         Top             =   660
         Width           =   885
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   -975
         TabIndex        =   3
         Top             =   45
         Width           =   7725
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2775
      Left            =   1920
      TabIndex        =   10
      Top             =   1440
      Width           =   6645
      _ExtentX        =   11721
      _ExtentY        =   4895
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "Pendingordersdatewise.frx":0025
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8805
      TabIndex        =   11
      Top             =   1440
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin Crystal.CrystalReport crr 
      Left            =   1020
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      WindowControlBox=   -1  'True
      WindowMaxButton =   -1  'True
      WindowMinButton =   -1  'True
      WindowState     =   2
      PrintFileLinesPerPage=   60
      WindowShowSearchBtn=   -1  'True
   End
End
Attribute VB_Name = "Pendingordersdatewise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim rs1 As Recordset
Dim a1 As String
Dim A2 As String
Dim U, v, W, X As String
Dim tot As Double
Dim tot1 As Double
Dim I As Integer
Dim rptv As Report.ReportView
Dim a As Integer
Dim z As Integer
Dim pg1 As Integer
Dim fs, ts As String

'Developed by pari
Private Sub Command1_Click()
intervalMinutes = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim c As Integer
Dim rsDup As Recordset
On Error GoTo Command1_Click_Error

 
Set rsDup = New Recordset
'rsDup.Open "select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar) from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar) from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by cast(contno aS varchar)", DB, adOpenStatic
rsDup.Open "select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by contdt", DB, adOpenStatic
Do While Not rsDup.EOF
If DataCombo2.Text = rsDup(0) Then
    GoTo PendingDate
Else
    rsDup.MoveNext
End If
Loop
MsgBox "Select the valid To Date ", vbInformation, head
DataCombo2.Text = ""
DataCombo2.SetFocus
Screen.MousePointer = 0
Exit Sub

'DataCombo2.MatchEntry = dblExtendedMatching
PendingDate: If DataCombo1.MatchedWithList = True And DataCombo1.Text <> "" And DataCombo2.Text <> "" Then
a1 = Right(DataCombo1.Text, 10)
b1 = Right(DataCombo2.Text, 10)
W = Right(DataCombo1.Text, 10)
X = Right(DataCombo2.Text, 10)

U = Right(DataCombo1.Text, 10)
v = Right(DataCombo2.Text, 10)
'a = Left(DataCombo1.Text, 3)
'b = Left(DataCombo2.Text, 3)
'a = Trim(Mid$(DataCombo1.Text, 1, InStr(1, DataCombo1.Text, "-") - 1))
'b = Trim(Mid$(DataCombo2.Text, 1, InStr(1, DataCombo2.Text, "-") - 1))
Else
    MsgBox "Select the valid To Date ", vbInformation, head
    DataCombo1.Text = ""
    DataCombo1.SetFocus
    Screen.MousePointer = 0
    Exit Sub
End If
'Exit Sub
'        If CDate(v) < CDate(u) Then
'            MsgBox "To Date should not be less than From Date", vbInformation
'            DataCombo2.SetFocus
'            Screen.MousePointer = 0
'        Exit Sub
'        End If

'correction by Nithya on 10/03/06

Set DB = New Connection
DB.Provider = "MSDATASHAPE"
DB.Open connectstring
Dim ss As String

If Combo1.Text = "P-PackWise" Or Combo1.Text = "K-KgsWise" Then
     GoTo PendingDateordwise
     Else
     MsgBox "Select the Valid Arrival Type", vbInformation, head
     Screen.MousePointer = 0
     Combo1.Text = ""
     Combo1.SetFocus
     Exit Sub
     End If
PendingDateordwise: If Repindex = 1234 Then
    Label5.Caption = "Pending Orders - Datewise"
End If
    Label5.Caption = "Pending Orders - Datewise"
    Set Cnn = New Connection
    
    If Repindex = 1234 Then
        Set rs1 = New Recordset
        If Left(Combo1.Text, 1) = "P" Then
               ' rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' AND  a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.contdt between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(V, "yyyy-mm-dd") & "' AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic
              ' Added on 19-09-19 by mariyaiya
                rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit from  RM_CONT a left join rm_var b on  a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d on a.brkcd= d.slcode" & _
                          "  Where  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and (isnull(a.recqty,0) < isnull(a.ordqty,0))and a.contdt between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic

        Else
               ' rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordKGS""ORDQTY"",a.RCDKGS""recqty"",isnull(cancelKGS,0) as cancelbales,(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' AND  a.varcode*= B.varcode and (isnull(a.rcDKGS,0) < isnull(a.ordKGS,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.contdt between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(V, "yyyy-mm-dd") & "' AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic
                ' Added on 19-09-19 by mariyaiya
                rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordKGS""ORDQTY"",a.RCDKGS""recqty"",isnull(cancelKGS,0) as cancelbales,(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode left join fa_slmas d on a.brkcd= d.slcode" & _
                            " Where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "'  and (isnull(a.rcDKGS,0) < isnull(a.ordKGS,0)) and   a.contdt between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic

        End If
    Else
        Set rs1 = New Recordset
      '  rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where divcode='" & Divcode & "' AND  a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode and a.contdt '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(V, "yyyy-mm-dd") & "'  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic
         ' Added on 19-09-19 by mariyaiya
         rs1.Open "select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.millrefno from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d on a.brkcd= d.slcode  Where divcode='" & Divcode & "' and a.contdt between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "'  order by A.contdt,cast(a.contno as numeric)", DB, adOpenStatic

    End If
        
    If rs1.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 1
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    'Open "C:\peco.TXT" For Output As #z
    Open KALFOLDERDATA & "\peco.TXT" For Output As #z
    pg1 = 1
    co = 0
    Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a), CStr(b))
    tot = 0
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    gtot1 = 0: gtot2 = 0: gtot3 = 0: gtot4 = 0
    co = co + 7

    Do While Not rs1.EOF
    'isnull(cancelbales,0)
        If TEMP <> rs1("contdt") Then
            Print #z,
            co = co + 1
        End If
        If TEMP <> rs1("contdt") Then
            'Print #z, Space(5); Padr(CStr(RS1("brkname")), 25, " "); Space(1) + Padr(CStr(RS1("supname")), 26, " "); Space(1) + Padl(CStr(RS1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(RS1("contdt"), "DD-MM-YY")), 8, " ") + Space(2) + Padr(CStr(RS1("dlytype")), 8, " ") + Space(1) + Padr(CStr(RS1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("CANDYRATE") = 0, " ", RS1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("ordqty") = 0, " ", RS1("ordqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("recqty") = 0, " ", RS1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("bales") = 0, " ", RS1("bales"))), 0)), 12, " ")
            Print #z, Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(CStr(rs1("contno")), 4, " ") + Space(1) + Padr(CStr(rs1("supname")), 25, " ") + Space(1) + Padr(CStr(rs1("brkNAME")), 25, " ") + Space(2) + Padr(CStr(IIf(IsNull(rs1("millrefno")), 0, rs1("millrefno"))), 12, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 5, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 11, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 10, " ")
            co = co + 1
        Else
            Print #z, Padr(" ", 8, " ") + Space(1) + Padl(CStr(rs1("contno")), 4, " ") + Space(1) + Padr(CStr(rs1("supname")), 25, " ") + Space(1) + Padr(CStr(rs1("brkNAME")), 25, " ") + Space(2) + Padr(CStr(IIf(IsNull(rs1("millrefno")), 0, rs1("millrefno"))), 12, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 5, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 11, " ") + Space(1) + Padl(CStr(INF((IIf(IsNull(rs1("recqty")) = True, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 10, " ")
            'Print #z, Space(5); Padr("  ", 25, " "); Space(1) + Padr(CStr(RS1("supname")), 26, " "); Space(1) + Padl(CStr(RS1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(RS1("contdt"), "DD-MM-YY")), 8, " ") + Space(2) + Padr(CStr(RS1("dlytype")), 8, " ") + Space(1) + Padr(CStr(RS1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("CANDYRATE") = 0, " ", RS1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("ordqty") = 0, " ", RS1("ordqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("recqty") = 0, " ", RS1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("bales") = 0, " ", RS1("bales"))), 0)), 12, " ")
            co = co + 1
        End If
        
        
        If co >= 60 Then
            Print #z, Space(5) & String(160, "-")
            Print #z, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a), CStr(b))
        End If
        
        tot1 = tot1 + rs1("ordqty")
        tot2 = tot2 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
        tot4 = tot4 + IIf(IsNull(rs1("cancelbales")), 0, rs1("cancelbales"))
        tot3 = tot3 + rs1("bales")
        TEMP = rs1("contdt")
        rs1.MoveNext
    Loop
    If co >= 60 Then
        Print #z, String(160, "-")
        Print #z, Chr(12)
        pg1 = pg1 + 1
        co = 0
        Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a), CStr(b))
    End If

    Print #z, String(160, "-")
    Print #z, Space(66) + "  **  Grand Total     ** " + Space(18) + Padl(CStr(INF((tot1), 0)), 15, " "); Space(1); Padl(CStr(INF((tot2), 0)), 12, " "); Space(0); Padl(CStr(INF((tot4), 0)), 10, " "); ; Padl(CStr(INF((tot3), 0)), 11, " ")
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

Select Case Repindex
Case 1234, 3023
DataCombo1.SetFocus
End Select

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
intervalMinutes = -1
Select Case Repindex
        Case 1234, 3023
            Dim rec As Recordset
            Dim rsDup As Recordset
            
            Set rsDup = New Recordset
          If globalarrivalorder = "C" Then
             rsDup.Open "select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where isnull(Fclosed,'N')<>'Y' and  ISNULL(ARRIVALTYPE,'P')='P' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where isnull(Fclosed,'N')<>'Y' and  ISNULL(ARRIVALTYPE,'P')='K' AND  (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by contdt", DB, adOpenStatic
          Else
            rsDup.Open "select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where isnull(Fclosed,'N')<>'Y' and  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where isnull(Fclosed,'N')<>'Y' and  ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by contdt", DB, adOpenStatic
          End If
            If Repindex = 1234 Then
                Do While Not rsDup.EOF
                    If DataCombo2.Text = rsDup(0) Then
                        GoTo PendingDate
                    Else
                        rsDup.MoveNext
                    End If
                Loop
                MsgBox "Select the valid To Date ", vbInformation, head
                DataCombo2.Text = ""
                DataCombo2.SetFocus
                Screen.MousePointer = 0
                intervalMinutes = -1
                Exit Sub
            ElseIf Repindex = 3023 Then
'                Do While Not rsDup.EOF
'                    If DataCombo2.Text = rsDup(0) Then
                        GoTo PendingDate
'                    Else
'                        rsDup.MoveNext
'                    End If
'                Loop
'                MsgBox "Select the valid To Date ", vbInformation, head
'                DataCombo2.Text = ""
'                DataCombo2.SetFocus
'                Screen.MousePointer = 0
'                Exit Sub
            
            
            End If
intervalMinutes = -1
            'DataCombo2.MatchEntry = dblExtendedMatching
PendingDate:
            If DataCombo1.MatchedWithList = True And DataCombo1.Text <> "" And DataCombo2.Text <> "" Then
                'a = Trim(Mid$(DataCombo1.Text, 1, InStr(1, DataCombo1.Text, "-") - 1))
                'b = Trim(Mid$(DataCombo2.Text, 1, InStr(1, DataCombo2.Text, "-") - 1))
            Else
                MsgBox "Select the valid To Date ", vbInformation, head
                DataCombo1.Text = ""
                DataCombo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            a1 = Right(DataCombo1.Text, 10)
            b1 = Right(DataCombo2.Text, 10)
            W = Right(DataCombo1.Text, 10)
            X = Right(DataCombo2.Text, 10)
            
            U = Right(DataCombo1.Text, 10)
            v = Right(DataCombo2.Text, 10)

            On Error GoTo errorsub
            DB.BeginTrans
        
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='Temp_Periodical_PendingOrdersDatewise'", DB, adOpenStatic

            If Rs.RecordCount > 0 Then
                DB.Execute "Drop table Temp_Periodical_PendingOrdersDatewise"
            End If
            Rs.Close
            Set Rs = Nothing
        
            Set rec = New Recordset
            intervalMinutes = -1
            rec.CursorLocation = adUseClient
          If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then

                   DB.Execute "ksp_pendingorder_datewise '" & Divcode & "','" & Format(U, "YYYY-MM-DD") & "' , '" & Format(v, "YYYY-MM-DD") & "','" & Left(Combo1.Text, 1) & "' "

          Else
            
            If Left(Combo1.Text, 1) = "P" Then
                rec.Open "select distinct Result.contdt,Result.supcd,Result.supname,Result.brkname," & _
                               "Result.brkcd,Result.areacode,Result.varname," & _
                               "cast(Result.contno as int) contno,Result.dlytype," & _
                               "Result.ordqty,Result.recqty,Result.cancelbales," & _
                               "Result.Bales,Result.candyrate,Result.millrefno,RESULT.unit " & _
                   " Into Temp_Periodical_PendingOrdersDatewise " & _
                   " From " & _
                   "(select distinct a.contdt,a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname," & _
                               "isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname," & _
                               "cast(a.contno as varchar)as contno," & _
                               "case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
                               "a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales," & _
                               "(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales," & _
                               "round(a.candyrate,0)as candyrate,a.millrefno," & _
                               "case when bbflag='B' then 'Bales' else 'Borah' end as unit " & _
                   " from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d  on a.brkcd= d.slcode  " & _
                   " Where  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and " & _
                               " A.CONTdt BETWEEN '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "'  and " & _
                               " (isnull(a.recqty,0) < isnull(a.ordqty,0)) and isnull(a.Fclosed,'N')<>'Y' and " & _
                               "  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0)Result order by cast(Result.contno as int),result.contdt", DB, adOpenStatic, adLockBatchOptimistic

' Commented on 19-09-19 by mariyaiya
'             " from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d " & _
'                   " Where  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and " & _
'                               " A.CONTdt BETWEEN '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(V, "yyyy-mm-dd") & "' AND  a.varcode*= B.varcode and " & _
'                               " (isnull(a.recqty,0) < isnull(a.ordqty,0))and " & _
'                               " a.supcd*= c.slcode and a.brkcd*= d.slcode " & _
'                               " AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0)Result order by result.contno,result.contdt", DB, adOpenStatic, adLockBatchOptimistic
intervalMinutes = -1
            ElseIf Left(Combo1.Text, 1) = "K" Then
                rec.Open "select distinct Result.contdt,Result.supcd,Result.supname,Result.brkname," & _
                                "Result.brkcd,Result.areacode,Result.varname,cast(Result.contno as int) contno," & _
                                "Result.dlytype," & _
                                "Result.ORDQTY ,Result.recqty,Result.cancelbales," & _
                                "Result.Bales,Result.candyrate," & _
                                "RESULT.millrefno, RESULT.unit " & _
                        " Into Temp_Periodical_PendingOrdersDatewise " & _
                        " From " & _
                        " (select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname," & _
                                "isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as numeric)as contno," & _
                                "a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
                                "a.ordKGS as ORDQTY ,a.RCDKGS as recqty,isnull(cancelKGS,0) as cancelbales," & _
                                "(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,4)as candyrate," & _
                                "a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit " & _
                        " from RM_CONT a left join rm_var b on a.varcode= B.varcode left join fa_slmas c on  a.supcd= c.slcode  left join fa_slmas d  on a.brkcd= d.slcode  " & _
                        "  Where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and " & _
                                " A.CONTdt BETWEEN '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "'  " & _
                                " and  (isnull(a.ordKGS,0)-(isnull(a.rcDKGS,0)+ISNULL(CANCELKGS,0))>0) and  isnull(a.Fclosed,'N')<>'Y'   " & _
                                " AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0)Result order by cast(Result.contno as int),result.contdt", DB, adOpenStatic, adLockBatchOptimistic

'' Commented on 19-09-19 by mariyaiya
'            " from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d " & _
'                        " Where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and " & _
'                                " A.CONTdt BETWEEN '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(V, "yyyy-mm-dd") & "' AND  a.varcode*= B.varcode " & _
'                                " and (isnull(a.rcDKGS,0) < isnull(a.ordKGS,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode " & _
'                                " AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0)Result order by result.contno,result.contdt", DB, adOpenStatic, adLockBatchOptimistic
intervalMinutes = -1
            End If
        End If
            DB.CommitTrans
            
'            crr.Reset
'            crr.Connect = connectstring
'            If Repindex = 1234 Then
'                crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PendingOrdersReg.rpt"
'                crr.ParameterFields(0) = "description;" & "Pending Orders From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & ""
'                crr.ParameterFields(1) = "name;" & DIVNAME
'            ElseIf Repindex = 3023 Then
'                crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PendingOrdersRegAreawise.rpt"
'                crr.ParameterFields(0) = "description;" & "Pending Orders From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & ""
'                crr.ParameterFields(1) = "name;" & DIVNAME
'            End If
'            crr.WindowState = crptMaximized
'            SendKeys "{Enter}"
'            crr.Action = True
'            crr.PrinterCopies = 1
            If Repindex = 1234 Then
                'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PendingOrdersReg.rpt"
                
                Dim clsCryRpt_Dt As New clsCrystal
                'Set clsCryRpt_Dt.cryRept = Rep_Period_PendingOrdersReg
                Set clsCryRpt_Dt.cryRept = rep_period_pendingordersreg1
                clsCryRpt_Dt.CrystalPrint
                
                crr.Reset
                crr.Connect = connectstring
                crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
                 
            ElseIf Repindex = 3023 Then
                FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PendingOrdersRegAreawise.rpt"
            End If
            'FrmRpt.RptHead = "2A"
            'parameter1 = "Pending Orders From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & ""
            'parameter2 = DIVNAME
            'FrmRpt.Show
            crr.ParameterFields(0) = "description;" & "Pending Orders List from " & Format(U, "dd/mm/yy") & " to " & Format(v, "dd/mm/yy") & ""
            crr.ParameterFields(1) = "name;" & divname & ""

            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            crr.Action = 1
            crr.PrinterCopies = 1
            intervalMinutes = -1
            Me.MousePointer = 0
            Exit Sub

errorsub:
        MsgBox Err.Description, vbCritical
        Me.MousePointer = 0
        
End Select
intervalMinutes = -1
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
 Pendingpodatewiseexcel
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
Set DB = New Connection
DB.Open connectstring
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter

    If Repindex = 1234 Then
         Set Rs = New Recordset
         Rs.Open "select  DISTINCT  CONTDT as fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='" & Divcode & "' order by contdt", DB, adOpenStatic, adLockBatchOptimistic
         If Rs.RecordCount = 0 Then
             MsgBox "No Record Found", vbInformation, head
        End If
    
    
        Me.Caption = "Pending Orders - Datewise"
        Label5.Caption = "Pending Orders - Datewise"
        Set Rs = New Recordset
        'Qry = "select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by CONTDT,cast(contno aS varchar)"
        qry = "select DISTINCT convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by CONTDT"
        Rs.Open qry, DB, adOpenStatic
        ''rs.Open "select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as numeric) from rm_cont  where divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  order by cast(contno as numeric)", DB, adOpenStatic, adLockBatchOptimistic
        'rs.Open Qry, DB, adOpenStatic, adLockBatchOptimistic
        Command3.Visible = True
        
    ElseIf Repindex = 3023 Then
        Me.Caption = "Pending Orders - Areawise"
        Label5.Caption = "Pending Orders - Areawise"
        Set Rs = New Recordset
        Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as numeric) from rm_cont  where divcode='" & Divcode & "'   order by cast(contno as numeric)", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Label5.Caption = "Pending Orders - Completed - Datewise"
        Set Rs = New Recordset
        Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as numeric) from rm_cont  where divcode='" & Divcode & "'   order by cast(contno as numeric)", DB, adOpenStatic, adLockBatchOptimistic
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
        
        DataCombo2.TabStop = True
        DataCombo1.tabIndex = 0
        DataCombo2.tabIndex = 1
        Combo1.tabIndex = 2
        Command1.tabIndex = 3
        Command2.tabIndex = 4
        Label1.Top = Label1.Top + 100
        Label6.Top = Label6.Top + 50
        Label1.Top = Label1.Top - 50
        DTPicker1.MinDate = yfdate
        DTPicker1.maxdate = yldate
        DTPicker2.MinDate = yfdate
        DTPicker2.maxdate = yldate
    
    End If
    If Repindex = 3023 Then
        Frame5.Visible = False
        Command3.Caption = "Report"
        Command3.Left = Command1.Left
        Command3.Width = Command1.Width
        Command1.Visible = False
    End If
   intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
     
 End Sub
 
Public Sub pendconHeader(pg1 As Integer, co As Integer, s As String, a As String, b As String)
On Error GoTo pendconHeader_Error

a = W
b = X
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, "Pending Orders Datewise" + Space(1) + "from" + Space(1) + Format(Trim(a), "DD/MM/YY") + Space(1) + "to" + Space(1) + Format(Trim(b), "DD/MM/YY") + Space(76) + CStr(SR) + "Pg. : " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, String(160, "-")
          'Print #z, Space(5) & "Date     Order No  Supplier Name              Broker Name           Delivery  Variety  Rate/Candy      Ord.Qty Unit        Rec.Qty      Balance"
          'Print #z, Space(5) & "Date      No  Supplier Name              Broker Name           Delivery  Variety  Rate/Candy  Unit       Ord.Qty      Rec.Qty      Balance"
          Print #z, "        Order                                                              Delivery                 Rate/ Pack       Ordered     Received Cancelled    Balance"
          Print #z, "Date       No Supplier Name             Broker Name                Mill.RefNo  Type   Variety        Unit Type           Qty          Qty       Qty        Qty"
          Print #z, String(160, "-")
          co = co + 8
          
          
          'Print #z, Space(5) + Chr(27) + "E" + "Pending Orders Datewise " + Chr(27) + "F" + Space(1) + "from" + Space(1) + w + Space(1) + "to" + Space(1) + x + Space(74) + Format(CStr(sr), "dd/mm/yy") + Space(1) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          'Print #z, Space(5) & String(144, "-")
          'Print #z, Space(5) & "Broker Name               Supplier Name           Order No Date     Delivery  Variety  Rate/Candy  Unit        Ord.Qty      Rec.Qty      Balance"
          'Print #z, Space(5) & String(144, "-")
          'co = co + 7

Exit Sub
pendconHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pendconHeader of Form Pendingordersdatewise", vbInformation, head
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

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error
intervalMinutes = -1
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form Pendingordersdatewise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form Pendingordersdatewise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form Pendingordersdatewise", vbInformation, head
Screen.MousePointer = 0
End Sub






Private Sub Pendingpodatewiseexcel()

' Purchase Datewise begin

    Set DB = New Connection
DB.Provider = "MSDATASHAPE"
DB.Open connectstring
    
    tmpFile = "Pending Purchase Order Datewise"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    Set Myxl = New Excel.Application
    
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Pending Purchase Order Datewise"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        XLSheet.Range("A1", "M1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        XLSheet.Range("A2", "M2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        
          U = Right(DataCombo1.Text, 10)
            v = Right(DataCombo2.Text, 10)

        XLSheet.Cells(3, 2).value = "Pending Purchase Order List From " & Format(U, "DD/MM/YY") & " To " & Format(v, "DD/MM/YY") & "                                                                                Option : Datewise"

        XLSheet.Range("A3", "M3").MergeCells = True
'        XLSheet.Range("A3", "H3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "M3").Font
        .Bold = True
        .Size = 11
        .Color = vbBlue
        End With
                
'        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
'        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
          

                Set Rs = New Recordset
             ' rs.Open "select * from Temp_Periodical_PendingOrdersDatewise ", DB, adOpenKeyset, adLockReadOnly
               ' rs.Open "exec Ksp_RMI_PendingPODatewiseExcel '" & Divcode & "','" & Format(U, "yyyy-mm-dd") & "','" & Format(v, "yyyy-mm-dd") & "','" & Left(Combo1.Text, 1) & "',", DB
                Rs.Open "Ksp_RMI_PendingPODatewiseExcel '" & Divcode & "','" & Format(U, "yyyy-mm-dd") & "','" & Format(v, "yyyy-mm-dd") & "','" & Left(Combo1.Text, 1) & "'", DB

            If Rs.RecordCount > 0 Then
                
               XLSheet.Cells(4, 9).value = "<----------------                  Pending Quantity                -------------->"
                XLSheet.Range("I4", "L4").MergeCells = True
                 With XLSheet.Range("I4", "K4").Font
                    .Bold = True
                    .Size = 9
                    .Color = vbBlue
                 End With
        
                XLSheet.Cells(5, 1).value = "Order.Date."
                XLSheet.Cells(5, 2).value = "Order.No."
                XLSheet.Cells(5, 3).value = "Supplier Name."
                XLSheet.Cells(5, 4).value = "Agent Name."
                XLSheet.Cells(5, 5).value = "Delivery Type."
                XLSheet.Cells(5, 6).value = "Variety Name."
                XLSheet.Cells(5, 7).value = "Rate/Unit."
                XLSheet.Cells(5, 8).value = "Mill Ref.No."
                XLSheet.Cells(5, 9).value = "Ordered."
                XLSheet.Cells(5, 10).value = "Received."
                XLSheet.Cells(5, 11).value = "Cancelled."
                XLSheet.Cells(5, 12).value = "Balance."
                XLSheet.Cells(5, 13).value = "Unit."
             
                 
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "M" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit

                'XLSheet.Range("H:H").NumberFormat = "#,##,##,##,###.000#"
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1

                    Gbales = 0
                    Gkgs = 0

                 Dim podate, Drecdqty, Dordqty, Dcanqty, Dbalqty, Grecdqty, Gordqty, Gcanqty, Gbalqty As String
                 podate = ""
                
                Drecdqty = 0
                Dordqty = 0
                Dcanqty = 0
                Dbalqty = 0
                Grecdqty = 0
                Gordqty = 0
                Gcanqty = 0
                Gbalqty = 0
                
                For I = 0 To Rs.RecordCount - 1
                    
                    m_ROW = XLSheet.UsedRange.Rows.Count
                      
                    If podate = "" Then
                        XLSheet.Cells(Max, 1) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                        XLSheet.Cells(Max, 1).NumberFormat = "DD/MM/YYYY"
                        podate = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                         
                        
                          Glr = "A" & Max
                            GHR = "A" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 10
                                .Font.Color = vbBlack
                                .Font.Bold = True
                        End With
                        Max = Max + 1
                        
                    ElseIf CDate(podate) <> CDate(Trim(Rs("contdt"))) Then
                         
                          XLSheet.Cells(Max, 4) = "Day Total:"
                         XLSheet.Cells(Max, 9) = Format(Drecdqty, "##,##,##,##,###.###")
                         XLSheet.Cells(Max, 10) = Format(Dordqty, "##,##,##,##,###.###")
                         XLSheet.Cells(Max, 11) = Format(Dcanqty, "##,##,##,##,###.###")
                         XLSheet.Cells(Max, 12) = Format(Dbalqty, "##,##,##,##,###.###")
                            XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 10).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 12).NumberFormat = "#,##,##,##,###.000#"
                
                               Glr = "D" & Max
                            GHR = "L" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 11
                                .Font.Color = vbBlue
                                .Font.Bold = True
                        End With
                       '  Myxl.Application.Visible = True
                          
                            Drecdqty = 0
                            Dordqty = 0
                            Dcanqty = 0
                            Dbalqty = 0
                          
                         Max = Max + 1
                         
                         XLSheet.Cells(Max, 1) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                        XLSheet.Cells(Max, 1).NumberFormat = "DD/MM/YYYY"
                        podate = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
        
                        
                         
                            Glr = "A" & Max
                            GHR = "A" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 10
                                .Font.Color = vbBlack
                                .Font.Bold = True
                        End With
                            Max = Max + 1
                    End If
                    
               
                
                
                   ' XLSheet.Cells(Max, 1) = I + 1
                    XLSheet.Cells(Max, 2) = Trim(Rs("contno"))
                   ' XLSheet.Cells(Max, 3) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                    ' XLSheet.Cells(Max, 3).NumberFormat = "DD/MM/YYYY"
                    XLSheet.Cells(Max, 3) = Trim(Rs("supname"))
                    XLSheet.Cells(Max, 4) = Trim(Rs("brkname"))
                    XLSheet.Cells(Max, 5) = Trim(Rs("dlytype"))
                    XLSheet.Cells(Max, 6) = Trim(Rs("varname"))
                    XLSheet.Cells(Max, 7) = val(Rs("CandyRate"))
                    XLSheet.Cells(Max, 8) = Trim(Rs("millrefno"))
                    XLSheet.Cells(Max, 9) = IIf(IsNull(val(Rs("ordqty"))), 0, val(Rs("ordqty")))
                    XLSheet.Cells(Max, 10) = IIf(IsNull(Rs("recqty")), 0, val(Rs("recqty")))
                    XLSheet.Cells(Max, 11) = IIf(IsNull(val(Rs("cancelbales"))), 0, val(Rs("cancelbales")))
                    XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                    XLSheet.Cells(Max, 10).NumberFormat = "#,##,##,##,###.000#"
                    XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                 
                    XLSheet.Cells(Max, 12) = val(Rs("Bales"))
                     XLSheet.Cells(Max, 12).NumberFormat = "#,##,##,##,###.000#"
                     XLSheet.Cells(Max, 13) = Trim(Rs("abbr"))
                     
                    Drecdqty = Drecdqty + val(Rs("ordqty"))
                    Dordqty = Dordqty + val(Rs("recqty"))
                    Dcanqty = Dcanqty + val(Rs("cancelbales"))
                    Dbalqty = Dbalqty + val(Rs("Bales"))
                            
                    Grecdqty = Grecdqty + val(Rs("ordqty"))
                    Gordqty = Gordqty + val(Rs("recqty"))
                    Gcanqty = Gcanqty + val(Rs("cancelbales"))
                    Gbalqty = Gbalqty + val(Rs("Bales"))
                    
    
                    Rs.MoveNext
                    Max = Max + 1
                
                Next I
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count + 1
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                            
                Max = Max + 1
                
                XLSheet.Cells(Max, 4) = "Grand total"
                
'                XLSheet.Cells(Max, 3) = GBal
'                XLSheet.Cells(Max, 4) = GCommwt
'                XLSheet.Cells(Max, 5) = gnetwt
'                XLSheet.Cells(Max, 6) = GGrswt
'                XLSheet.Cells(Max, 7) = Format(GValue, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 9) = Format(Grecdqty, "##,##,##,##,###.###")
                XLSheet.Cells(Max, 10) = Format(Gordqty, "##,##,##,##,###.###")
                XLSheet.Cells(Max, 11) = Format(Gcanqty, "##,##,##,##,###.###")
                XLSheet.Cells(Max, 12) = Format(Gbalqty, "##,##,##,##,###.###")
                XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 10).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Cells(Max, 12).NumberFormat = "#,##,##,##,###.000#"
                       
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW

                    
          

'                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                m = 4
                lr = "A" & m
                HR = "M" & m_ROW
                
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
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                
                
                  XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                 MsgBox "Excel File Downloaded Succesfully", vbOKCancel, head
                
             Else
                MsgBox "No Record(s)", vbOKCancel, head
                Exit Sub
            End If
                
                

' Purchase Datewise End

End Sub

