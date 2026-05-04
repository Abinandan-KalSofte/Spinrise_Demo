VERSION 5.00
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form pending_supplierwise 
   AutoRedraw      =   -1  'True
   Caption         =   "Supplierwise"
   ClientHeight    =   6105
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   6105
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
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
      Left            =   6060
      TabIndex        =   20
      Top             =   5565
      Width           =   1875
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1440
      TabIndex        =   16
      Top             =   4800
      Visible         =   0   'False
      Width           =   6780
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
      Left            =   4170
      TabIndex        =   7
      Top             =   5565
      Width           =   1355
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
      Left            =   2175
      TabIndex        =   6
      Top             =   5565
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Height          =   3105
      Left            =   1635
      TabIndex        =   0
      Top             =   1470
      Width           =   6405
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "pending_supplierwise.frx":0000
         Left            =   2535
         List            =   "pending_supplierwise.frx":000A
         TabIndex        =   13
         Text            =   "P-PackWise"
         Top             =   2460
         Width           =   3345
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2520
         TabIndex        =   8
         Top             =   615
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2520
         TabIndex        =   9
         Top             =   1035
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2520
         TabIndex        =   10
         Top             =   1560
         Width           =   3390
         _ExtentX        =   5980
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2520
         TabIndex        =   11
         Top             =   1965
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
         Height          =   315
         Left            =   1035
         TabIndex        =   5
         Top             =   1200
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
         Left            =   1035
         TabIndex        =   4
         Top             =   660
         Width           =   885
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "To Supplier"
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
         TabIndex        =   3
         Top             =   2040
         Width           =   990
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
         Left            =   -960
         TabIndex        =   2
         Top             =   45
         Width           =   7725
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "From Supplier"
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
         TabIndex        =   1
         Top             =   1605
         Width           =   1170
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3450
      Left            =   1440
      TabIndex        =   14
      Top             =   1320
      Width           =   6750
      _ExtentX        =   11906
      _ExtentY        =   6085
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "pending_supplierwise.frx":0025
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8280
      TabIndex        =   15
      Top             =   1200
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin Crystal.CrystalReport crr 
      Left            =   0
      Top             =   0
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "pending_supplierwise"
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
Dim fs, ts, TEMP As String
'Developed By D.Parimalam


Private Sub Command1_Click()
intervalMinutes = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim c As Integer
Dim U, v As String
intervalMinutes = -1

On Error GoTo Command1_Click_Error

Set DB = New Connection
DB.Provider = "MSDATASHAPE"
DB.Open connectstring

Dim rsDupli As Recordset
Set rsDupli = New Recordset
'rsDupli.Open "select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar) from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar) from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by cast(contno aS varchar)", DB, adOpenStatic
rsDupli.Open "select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by contdt", DB, adOpenStatic
Do While Not rsDupli.EOF
If DataCombo2.Text = rsDupli(0) Then
GoTo PendingDatesuppwi
Else
rsDupli.MoveNext
End If
Loop
 MsgBox "Select the valid To Date ", vbInformation, head
DataCombo2.Text = ""
DataCombo2.SetFocus
Screen.MousePointer = 0
Exit Sub
'correction by Nithya on 10/03/06


PendingDatesuppwi: If DataCombo1.MatchedWithList Then
'U = Trim(Left(DataCombo1.Text, InStr(DataCombo1.Text, "-") - 1))
'V = Trim(Left(DataCombo2.Text, InStr(DataCombo2.Text, "-") - 1))
a1 = Right(DataCombo1.Text, 10)
b1 = Right(DataCombo2.Text, 10)
    Set Rs = New Recordset
    Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
    If Rs.EOF = False Then
        Dim rsFil As Recordset
        
        Set rsFil = New Recordset
        rsFil.Open "select distinct slname + '-' + slcode as slname,slcode  from fa_slmas a,rm_cont b where a.slcode=b.supcd and left(slcode,2) in (select Items from dbo.split('" & Rs(0) & "',',')) order by slcode", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rsFil.EOF
            If DataCombo4.Text = rsFil(0) Then
                GoTo PendingDtsupp
            Else
                rsFil.MoveNext
            End If
        Loop
        
        MsgBox "Select the valid To Supplier Name ", vbInformation, head
        DataCombo4.Text = ""
        DataCombo4.SetFocus
        Screen.MousePointer = 0
    End If
    intervalMinutes = -1
Exit Sub

PendingDtsupp:  W = Right(DataCombo3.Text, 7)
 X = Right(DataCombo4.Text, 7)
 
    If DataCombo3.MatchedWithList Then
    
        If Repindex = 1235 Then
            Label5.Caption = "Pending Orders - Supplierwise"
            Set primaryrs = New Recordset
            If Combo1.Text = "P-PackWise" Or Combo1.Text = "K-KgsWise" Then
            
            Else
                MsgBox "Select the valid Arrival Type", vbInformation, head
                Combo1.Text = ""
                Combo1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
        Else
            Label5.Caption = "Pending Orders - Complete - Supplierwise"
        End If
    Else
        Screen.MousePointer = 0
        If DataCombo3.MatchedWithList = False Then
            MsgBox "Select the valid From Supplier", vbInformation, head
            DataCombo3.Text = ""
            DataCombo3.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If DataCombo4.MatchedWithList = False Then
            MsgBox "Select the valid Supplier", vbInformation, head
            DataCombo4.Text = ""
            DataCombo4.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
       
        Exit Sub
    End If
    intervalMinutes = -1
Else

    If DataCombo1.MatchedWithList = False Then
        MsgBox "Select the valid From Date", vbInformation, head
        DataCombo1.Text = ""
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    
End If
    intervalMinutes = -1
PendingSupplier:
    
    If Repindex = 1235 Then
        Set rs1 = New Recordset
        If Left(Combo1.Text, 1) = "P" Then
           ' rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.MillRefNo from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where ISNULL(ARRIVALTYPE,'P')='P' AND  divcode='" & Divcode & "' and  a.varcode*= B.varcode and (isnull(a.recqty,0) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode AND ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0 and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "'  order by supname,cast(contno as varchar)", DB, adOpenStatic
            rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.MillRefNo from RM_CONT a left join rm_var b on  a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where ISNULL(ARRIVALTYPE,'P')='P' AND  divcode='" & Divcode & "'   and (isnull(a.recqty,0) < isnull(a.ordqty,0))and    ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0 and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "'  order by supname,cast(contno as varchar)", DB, adOpenStatic

        Else
           ' rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ORDKGS""ordqty"",a.RCDKGS""recqty"",isnull(cancelKGS,0) as cancelbales,(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,a.MILLREFNO from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where  ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and  a.varcode*= B.varcode and (isnull(a.rCDKGS,0) < isnull(a.ordKGS,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode AND ORDKGS-ISNULL(rCDKGS,0)-ISNULL(CANCELKGS,0)>0 and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "'  order by supname,cast(contno as varchar)", DB, adOpenStatic
            rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ORDKGS""ordqty"",a.RCDKGS""recqty"",isnull(cancelKGS,0) as cancelbales,(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,0)as candyrate,a.MILLREFNO from RM_CONT a left join rm_var b on  a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where  ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "'  and (isnull(a.rCDKGS,0) < isnull(a.ordKGS,0))and   ORDKGS-ISNULL(rCDKGS,0)-ISNULL(CANCELKGS,0)>0 and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "'  order by supname,cast(contno as varchar)", DB, adOpenStatic

        End If
    Else
          Set rs1 = New Recordset
         ' rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.MillRefNo from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d Where divcode='" & Divcode & "' and  a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "' order by supname,cast(contno as varchar)", DB, adOpenStatic
        rs1.Open "select distinct a.supcd,case when bbflag='B' then 'Bales' else 'Borah' end as unit,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar) as contno,a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales,(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales,round(a.candyrate,0)as candyrate,a.MillRefNo from RM_CONT a left join rm_var b on  a.varcode= B.varcode left join fa_slmas c on a.supcd= c.slcode  left join fa_slmas d on  a.brkcd= d.slcode Where divcode='" & Divcode & "'  and contdt between '" & Format(a1, "yyyy-mm-dd") & "' and '" & Format(b1, "yyyy-mm-dd") & "' order by supname,cast(contno as varchar)", DB, adOpenStatic

    End If
         intervalMinutes = -1
    If rs1.RecordCount = 0 Then
        MsgBox "No Record Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set Cnn = New Connection
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
   ' Open "C:\peco.TXT" For Output As #z
    Open KALFOLDERDATA & "\peco.TXT" For Output As #z
    pg1 = 1
    co = 0
    Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a1), CStr(b1))
    tot = 0
    tot1 = 0
    tot2 = 0
    tot3 = 0
    tot4 = 0
    gtot1 = 0: gtot2 = 0: gtot3 = 0
    co = co + 7
    
        Do While Not rs1.EOF
        'isnull(cancelbales,0)
            If TEMP <> rs1("supname") Then
                Print #z,
                co = co + 1
            End If
            'Print #z, Space(5); Padr(CStr(Format(RS1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(CStr(RS1("contno")), 8, " ") + Space(2) + Padr(CStr(RS1("supname")), 26, " ") + Space(1) + Padr(CStr(RS1("brkNAME")), 25, " ") + Space(1) + Padr(CStr(RS1("dlytype")), 5, " ") + Space(1) + Padr(CStr(RS1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("CANDYRATE") = 0, " ", RS1("CANDYRATE"))), 2)), 10, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("ordqty") = 0, " ", RS1("ordqty"))), 0)), 12, " ") + Space(1) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("recqty") = 0, " ", RS1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(RS1("bales") = 0, " ", RS1("bales"))), 0)), 12, " ")
            If TEMP <> rs1("supname") Then
            Print #z, Space(5); Padr(CStr(rs1("supname")), 26, " "); Space(1) + Padr(CStr(rs1("brkNAME")), 25, " "); Space(1) + Padl(CStr(rs1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(4) + Padr(CStr(IIf(IsNull(rs1("MillRefNo")), 0, rs1("MillRefNo"))), 11, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 8, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 10, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 9, " ")
            co = co + 1
            Else
            Print #z, Space(5); Padr("  ", 26, " "); Space(1) + Padr(CStr(rs1("brkNAME")), 25, " "); Space(1) + Padl(CStr(rs1("contno")), 5, " ") + Space(1) + Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(4) + Padr(CStr(IIf(IsNull(rs1("MillRefNo")), 0, rs1("MillRefNo"))), 11, " ") + Space(1) + Padr(CStr(rs1("dlytype")), 8, " ") + Space(1) + Padr(CStr(IIf(IsNull(rs1("VARNAME")), "", rs1("VARNAME"))), 8, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(1) + Padr(CStr(rs1("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 10, " ") + Space(1) + Padl(CStr(INF((IIf(IsNull(rs1("recqty")), " ", rs1("recqty"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("cancelbales") = 0, " ", rs1("cancelbales"))), 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 9, " ")
            co = co + 1
            End If
            If co >= 60 Then
                      Print #z, Space(5) & String(144, "-")
                      Print #z, Chr(12)
                      pg1 = pg1 + 1
                      co = 0
                      Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a1), CStr(b1))
                      'Call pendconHeader(pg1, co, s, A, b)
            End If
                   tot1 = tot1 + IIf(IsNull(rs1("ordqty")), 0, rs1("ordqty"))
                   tot2 = tot2 + IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
                   tot3 = tot3 + rs1("bales")
                   tot4 = tot4 + rs1("cancelbales")
            TEMP = rs1("supname")
            rs1.MoveNext
    
       Loop
        
        If co >= PageLen Then
            Print #z, Space(5) & String(160, "-")
            Print #z, Chr(12)
            pg1 = pg1 + 1
            co = 0
            Call pendconHeader(pg1, CStr(co), CStr(s), CStr(a1), CStr(b1))
            'Call pendconHeader(pg1, co, s, A, b)
        End If
    intervalMinutes = -1
    Print #z, Space(5) & String(160, "-")
    Print #z, Space(71) + "  **  Grand Total     ** " + Space(26) + Padl(CStr(INF((tot1), 0)), 12, " "); Space(1); Padl(CStr(INF((tot2), 0)), 9, " "); Space(0); Padl(CStr(INF((tot4), 0)), 10, " "); Space(0); Padl(CStr(INF((tot3), 0)), 10, " ")
    Print #z, Space(5) & String(160, "-")

Print #z,
Print #z, Chr(12)
Call footermod(CInt(z), UserFooter1.SelectedStr, 85)
'Print #z, Chr(18)
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
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form pending_supplierwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form pending_supplierwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
    Dim rs1 As Recordset
    Dim rs2 As Recordset
    Dim c As Integer
    Dim U, v As String
    
    intervalMinutes = -1
On Error GoTo Command3_Click_Error

    Set DB = New Connection
    DB.Provider = "MSDATASHAPE"
    DB.Open connectstring
    
    Dim rsDupli As Recordset
    Set rsDupli = New Recordset
    rsDupli.Open "select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and ordqty>isnull(recqty,0) AND  ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0  UNION select DISTINCT convert(varchar,contdt,103) AS Fields,contdt from rm_cont  where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and ordKGS>isnull(rCDKGS,0) AND  ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0  order by contdt", DB, adOpenStatic
    Do While Not rsDupli.EOF
        If DataCombo2.Text = rsDupli(0) Then
            GoTo PendingDatesuppwi
        Else
            rsDupli.MoveNext
        End If
    Loop
    MsgBox "Select the valid To Date ", vbInformation, head
    DataCombo2.Text = ""
    DataCombo2.SetFocus
    Screen.MousePointer = 0
    Exit Sub
'correction by Nithya on 10/03/06


PendingDatesuppwi:
    If DataCombo1.MatchedWithList Then
'        U = Left(DataCombo1.Text, 2)
'        V = Left(DataCombo2.Text, 2)
'        U = Trim(Left(DataCombo1.Text, InStr(DataCombo1.Text, "-") - 1))
'        V = Trim(Left(DataCombo2.Text, InStr(DataCombo2.Text, "-") - 1))
        a1 = Right(DataCombo1.Text, 10)
        b1 = Right(DataCombo2.Text, 10)
        
        If CDate(a1) > CDate(b1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
    
        Set Rs = New Recordset
        Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
        
        Set rsFil = New Recordset
        rsFil.Open "select distinct slname + '-' + slcode as slname,slcode  from fa_slmas a,rm_cont b where a.slcode=b.supcd and left(slcode,2) in (select Items from dbo.split('" & Rs(0) & "',',')) order by slcode", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rsFil.EOF
            If DataCombo4.Text = rsFil(0) Then
                GoTo PendingDtsupp
            Else
                rsFil.MoveNext
            End If
        Loop
        MsgBox "Select the valid To Supplier Name ", vbInformation, head
        DataCombo4.Text = ""
        DataCombo4.SetFocus
        Screen.MousePointer = 0
        intervalMinutes = -1
        Exit Sub
    
PendingDtsupp:
        W = Right(DataCombo3.Text, 7)
        X = Right(DataCombo4.Text, 7)
        
        If DataCombo3.MatchedWithList Then
            If Repindex = 1235 Then
                Label5.Caption = "Pending Orders - Supplierwise"
                Set primaryrs = New Recordset
                If Combo1.Text = "P-PackWise" Or Combo1.Text = "K-KgsWise" Then
                Else
                    MsgBox "Select the valid Arrival Type", vbInformation, head
                    Combo1.Text = ""
                    Combo1.SetFocus
                    Screen.MousePointer = 0
                    intervalMinutes = -1
                    Exit Sub
                End If
            Else
                Label5.Caption = "Pending Orders - Complete - Supplierwise"
            End If
            intervalMinutes = -1
    Else
        Screen.MousePointer = 0
        If DataCombo3.MatchedWithList = False Then
            MsgBox "Select the valid From Supplier", vbInformation, head
            DataCombo3.Text = ""
            DataCombo3.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If DataCombo4.MatchedWithList = False Then
            MsgBox "Select the valid Supplier", vbInformation, head
            DataCombo4.Text = ""
            DataCombo4.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        intervalMinutes = -1
        Exit Sub
    End If
Else
    If DataCombo1.MatchedWithList = False Then
        MsgBox "Select the valid From Date", vbInformation, head
        DataCombo1.Text = ""
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
End If
    intervalMinutes = -1
PendingSupplier:
    
    Select Case Repindex
        Case 1235
            On Error GoTo errorsub
            DB.BeginTrans
        
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='Temp_Periodical_PendingOrdersSupplierwise'", DB, adOpenStatic

            If Rs.RecordCount > 0 Then
                DB.Execute "Drop table Temp_Periodical_PendingOrdersSupplierwise"
            End If
            Rs.Close
            Set Rs = Nothing
        
            Set rec = New Recordset
            rec.CursorLocation = adUseClient
            If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                DB.Execute "ksp_pendingorder_supplierwise '" & Divcode & "','" & Format(a1, "yyyy-mm-dd") & "', '" & Format(b1, "yyyy-mm-dd") & "','" & W & "' , '" & X & "','" & Left(Combo1.Text, 1) & "' "
            Else
            If Left(Combo1.Text, 1) = "P" Then
                rec.Open "select distinct Result.contdt,Result.supcd,Result.supname,Result.brkname," & _
                               "Result.brkcd,Result.areacode,Result.varname," & _
                               "Result.contno,Result.dlytype," & _
                               "Result.ordqty,Result.recqty,Result.cancelbales," & _
                               "Result.Bales,Result.candyrate,Result.millrefno,RESULT.unit " & _
                   " Into Temp_Periodical_PendingOrdersSupplierwise " & _
                   " From " & _
                   "(select distinct a.contdt,a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname," & _
                               "isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname," & _
                               "cast(a.contno as varchar)as contno," & _
                               "case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
                               "a.ordqty,a.recqty,isnull(cancelbales,0) as cancelbales," & _
                               "(a.ordqty-isnull(a.recqty,0)-isnull(cancelbales,0))Bales," & _
                               "round(a.candyrate,4)as candyrate,a.millrefno," & _
                               "case when bbflag='B' then 'Bales' else 'Borah' end as unit " & _
                   " from  RM_CONT a left join rm_var b on  a.varcode= B.varcode  left join fa_slmas c on a.supcd= c.slcode left join fa_slmas d  on  a.brkcd= d.slcode " & _
                   "  Where  isnull(a.Fclosed,'N')<>'Y' and  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and " & _
                               " A.CONTdt BETWEEN '" & Format(a1, "yyyy-mm-dd") & "' AND '" & Format(b1, "yyyy-mm-dd") & "' and " & _
                               " a.supcd between '" & W & "' and '" & X & "' and " & _
                               " (isnull(a.recqty,0) < isnull(a.ordqty,0)) " & _
                               " AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0)Result", DB, adOpenStatic, adLockBatchOptimistic


'            " from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d " & _
'                   " Where  ISNULL(ARRIVALTYPE,'P')='P' AND divcode='" & Divcode & "' and " & _
'                               " A.CONTdt BETWEEN '" & Format(a1, "yyyy-mm-dd") & "' AND '" & Format(b1, "yyyy-mm-dd") & "' AND  a.varcode*= B.varcode and " & _
'                               " a.supcd between '" & W & "' and '" & X & "' and " & _
'                               " (isnull(a.recqty,0) < isnull(a.ordqty,0))and " & _
'                               " a.supcd*= c.slcode and a.brkcd*= d.slcode " & _
'                               " AND ORDQTY-isnull(recqty,0)-ISNULL(CANCELBALES,0)>0)Result", DB, adOpenStatic, adLockBatchOptimistic

            intervalMinutes = -1
            ElseIf Left(Combo1.Text, 1) = "K" Then
                rec.Open "select distinct Result.contdt,Result.supcd,Result.supname,Result.brkname," & _
                                "Result.brkcd,Result.areacode,Result.varname,Result.contno," & _
                                "Result.dlytype," & _
                                "Result.ORDQTY ,Result.recqty,Result.cancelbales," & _
                                "Result.Bales,Result.candyrate," & _
                                "RESULT.millrefno, RESULT.unit " & _
                        " Into Temp_Periodical_PendingOrdersSupplierwise " & _
                        " From " & _
                        " (select distinct a.supcd,isnull(c.slname, ' ') supname,isnull(d.slname,' ') brkname," & _
                                "isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,cast(a.contno as varchar)as contno," & _
                                "a.contdt,case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
                                "a.ordKGS as ORDQTY ,a.RCDKGS as recqty,isnull(cancelKGS,0) as cancelbales," & _
                                "(a.ordKGS-isnull(a.rCDKGS,0)-isnull(cancelKGS,0))Bales,round(a.candyrate,4)as candyrate," & _
                                "a.millrefno,case when bbflag='B' then 'Bales' else 'Borah' end as unit " & _
                        " from RM_CONT a left join rm_var b on  a.varcode= B.varcode  left join fa_slmas c on a.supcd= c.slcode   left join fa_slmas d  on  a.brkcd= d.slcode " & _
                        " Where isnull(a.Fclosed,'N')<>'Y' and ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and " & _
                                " A.CONTdt BETWEEN '" & Format(a1, "yyyy-mm-dd") & "' AND '" & Format(b1, "yyyy-mm-dd") & "'  and " & _
                                " a.supcd between '" & W & "' and '" & X & "' " & _
                                " and (isnull(a.rcDKGS,0) < isnull(a.ordKGS,0))  " & _
                                " AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0)Result", DB, adOpenStatic, adLockBatchOptimistic
            
            
'          " from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d " & _
'                        " Where ISNULL(ARRIVALTYPE,'P')='K' AND divcode='" & Divcode & "' and " & _
'                                " A.CONTdt BETWEEN '" & Format(a1, "yyyy-mm-dd") & "' AND '" & Format(b1, "yyyy-mm-dd") & "' AND  a.varcode*= B.varcode  and " & _
'                                " a.supcd between '" & W & "' and '" & X & "' " & _
'                                " and (isnull(a.rcDKGS,0) < isnull(a.ordKGS,0))and  a.supcd*= c.slcode and a.brkcd*= d.slcode " & _
'                                " AND ORDKGS-isnull(rCDKGS,0)-ISNULL(CANCELKGS,0)>0)Result", DB, adOpenStatic, adLockBatchOptimistic
   
            End If
            End If
    '        If rec.EOF Then
    '            MsgBox "No Records Found", vbInformation, head
    '            Me.MousePointer = 0
    '            Exit Sub
    '        End If
            DB.CommitTrans
            intervalMinutes = -1
'            MousePointer = 11
'            Dim Rep_Period_PendingOrdersRegSupwise As PendingOrdersSupplierwise
'            Set Rep_Period_PendingOrdersRegSupwise = New PendingOrdersSupplierwise
'
'            Set CRXParamDefs = Rep_Period_PendingOrdersRegSupwise.ParameterFields
'            For Each CRXParamDef In CRXParamDefs
'                With CRXParamDef
'                    Select Case .ParameterFieldName
'
'                    Case "description"
'                        .ClearCurrentValueAndRange
'                        '.AddCurrentValue ("Pending Orders Supplierwise From " & w & " To " & X & "")
'                        .AddCurrentValue ("Pending Orders Supplierwise From  " & Format(a1, "dd/MM/yy") & "  To " & Format(b1, "dd/MM/yy") & "")
'
'                    Case "name"
'                        .ClearCurrentValueAndRange
'                        .AddCurrentValue (DIVNAME)
'                    End Select
'                End With
'                Rep_Period_PendingOrdersRegSupwise.Database.Tables(1).SetLogOnInfo "KalSoftErp", gstrDbName, sqluser, sqlpwd
'                Rep_Period_PendingOrdersRegSupwise.Database.Tables(1).Location = gstrDbName & ".dbo.Temp_Periodical_PendingOrdersSupplierwise"
'            Next
'            Screen.MousePointer = 0
'            frm_crystalviewer.CRViewer1.EnableCloseButton = True
'            frm_crystalviewer.CRViewer1.ReportSource = Rep_Period_PendingOrdersRegSupwise
'            frm_crystalviewer.CRViewer1.ViewReport
'            frm_crystalviewer.Refresh
'            frm_crystalviewer.Show
'            Me.MousePointer = 0
'            Exit Sub
            'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PendingOrdersRegSupwise.rpt"
            'FrmRpt.RptHead = "2A"
            'parameter1 = "Pending Register from  " & Format(a1, "dd/MM/yy") & "  to " & Format(b1, "dd/MM/yy") & ""
            'parameter2 = DIVNAME
            
        Dim clsCryRpt_sup As New clsCrystal
        'Set clsCryRpt_sup.cryRept = Rep_Period_PendingOrdersRegSupwise
      
        Set clsCryRpt_sup.cryRept = rep_period_pendingorderregsuppwise1
        clsCryRpt_sup.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

        crr.ParameterFields(0) = "description;" & "Pending Order List from  " & Format(a1, "dd/MM/yy") & "  to " & Format(b1, "dd/MM/yy") & ""
        crr.ParameterFields(1) = "name;" & divname & ""
        crr.ParameterFields(2) = "@UnitName;" & PrUnitName & ""

        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
            intervalMinutes = -1
            'FrmRpt.Show
            Me.MousePointer = 0
            Exit Sub

errorsub:
        MsgBox Err.Description, vbCritical
        Me.MousePointer = 0
    End Select
intervalMinutes = -1
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form pending_supplierwise", vbInformation, head
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
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter

If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    

    If Repindex = 1235 Then
        Set Rs = New Recordset
        Rs.Open "select  DISTINCT  CONTDT as fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='" & Divcode & "' order by contdt", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount = 0 Then
             MsgBox "No Record Found", vbInformation, head
        End If
        Label5.Caption = "Pending Orders - Supplierwise "
        Me.Caption = "Pending Orders - Supplierwise "
        Set Rs = New Recordset
        'Qry = "select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where isnull(arrivaltype,'P')='P' AND divcode='" & Divcode & "' and  ordqty>isnull(recqty,0) AND  ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0 UNION select DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,cast(contno as varchar),CONTDT from rm_cont  where isnull(arrivaltype,'P')='K' AND divcode='" & Divcode & "' and  ORDKGS>isnull(RCDKGS,0) AND  ORDKGS-ISNULL(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 order by CONTDT,cast(contno as varchar)"
        qry = "select DISTINCT  convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where isnull(arrivaltype,'P')='P' AND divcode='" & Divcode & "' and  ordqty>isnull(recqty,0) AND  ORDQTY-ISNULL(recqty,0)-ISNULL(CANCELBALES,0)>0 UNION select DISTINCT convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where isnull(arrivaltype,'P')='K' AND divcode='" & Divcode & "' and  ORDKGS>isnull(RCDKGS,0) AND  ORDKGS-ISNULL(RCDKGS,0)-ISNULL(CANCELKGS,0)>0 order by CONTDT"
        
        Rs.Open qry, DB, adOpenStatic
        Command3.Visible = True
        
        
        
    Else
        Label5.Caption = "Pending Orders - Completed - Supplierwise "
        Set Rs = New Recordset
        Rs.Open "select DISTINCT  convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where divcode='" & Divcode & "'  order by CONTDT", DB, adOpenStatic, adLockBatchOptimistic
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
     Set Rs = New Recordset
     Rs.Open "Select pTypeCotton from MasterLen", DB, adOpenStatic
     If Rs.EOF = False Then
     
     Set rs1 = New Recordset
     'rs1.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "'  order by contdt", db, adOpenStatic, adLockBatchOptimistic
     'RS1.Open "select distinct a.slname + ' - '+ a.slcode as slname,b.supcd,c.dlytype from fa_slmas a,rm_arrival b,rm_cont c where  a.slcode=b.supcd  ", db, adOpenStatic, adLockBatchOptimistic
     rs1.Open "select distinct slname + '-' + slcode as slname,slcode  from fa_slmas a,rm_cont b where a.slcode=b.supcd and left(slcode,2) in (select Items from dbo.split('" & Rs(0) & "',',')) order by slname", DB, adOpenStatic, adLockBatchOptimistic
     'RS1.Open "select distinct a.slname +'-'+a.slcode as slname from fa_slmas a,rm_lot b where a.slcode=b.supcd order by slcode", db, adOpenStatic, adLockBatchOptimistic
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

    End If
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form pending_supplierwise", vbInformation, head
Screen.MousePointer = 0
 End Sub
 
Public Sub pendconHeader(pg1 As Integer, co As Integer, s As String, a As String, b As String)
'a = w
'b = X
On Error GoTo pendconHeader_Error

          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yyyy")) + Space(2)
          'Print #z, Space(5) + Chr(27) + "E" + "Pending Orders Supplierwise " + Chr(27) + "F" + Space(1) + "from" + Space(1) + w + Space(1) + "to" + Space(1) + X + Space(72) + Format(CStr(SR), "dd/mm/yy") + Space(2) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) + Chr(27) + "E" + "Pending Orders Supplierwise From " + Format(a, "dd/MM/yy") + " To " + Format(b, "dd/MM/yy") + " " + Chr(27) + "F" + Space(76) + Format(CStr(SR), "dd/mm/yy") + Space(2) + "Pg.: " + Padl(CStr(pg1), 3, " ") + Chr(15)
          Print #z, Space(5) & String(160, "-")
          Print #z, Space(5) & "                                                           Order                   Delivery               Rate/ Pack      Ordered  Received Cancelled   Balance"
          Print #z, Space(5) & "Supplier Name              Broker Name            Order No Date        Mill.RefNo  Type      Variety       Unit Type          Qty       Qty       Qty       Qty"
          Print #z, Space(5) & String(160, "-")
          co = co + 7

Exit Sub
pendconHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure pendconHeader of Form pending_supplierwise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form pending_supplierwise", vbInformation, head
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

Screen.MousePointer = 0

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form pending_supplierwise", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form pending_supplierwise", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form pending_supplierwise", vbInformation, head
Screen.MousePointer = 0
End Sub


