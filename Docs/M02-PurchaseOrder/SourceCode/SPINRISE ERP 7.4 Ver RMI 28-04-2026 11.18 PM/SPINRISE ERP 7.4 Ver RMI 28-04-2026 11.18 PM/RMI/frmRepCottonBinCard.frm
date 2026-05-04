VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmRepCottonBinCard 
   Caption         =   "Cotton Bin Card"
   ClientHeight    =   6720
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdCrystal 
      Caption         =   "&Crystal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   6645
      TabIndex        =   16
      Top             =   4080
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   2640
      TabIndex        =   12
      Top             =   4920
      Visible         =   0   'False
      Width           =   5700
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
      Left            =   3765
      TabIndex        =   0
      Top             =   4095
      Width           =   915
   End
   Begin VB.CommandButton cmdCancel 
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
      Left            =   5325
      TabIndex        =   1
      Top             =   4095
      Width           =   915
   End
   Begin VB.Frame fraHeader 
      Height          =   3030
      Left            =   2760
      TabIndex        =   5
      Top             =   1680
      Width           =   5400
      Begin MSComCtl2.DTPicker DTPOnDate 
         Height          =   345
         Left            =   2580
         TabIndex        =   2
         Top             =   630
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   609
         _Version        =   393216
         Format          =   165675009
         CurrentDate     =   37820
      End
      Begin MSDataListLib.DataCombo dcbToLotNo 
         Height          =   360
         Left            =   2580
         TabIndex        =   4
         Top             =   1815
         Width           =   2115
         _ExtentX        =   3731
         _ExtentY        =   635
         _Version        =   393216
         MatchEntry      =   -1  'True
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo dcbFromLotNo 
         Height          =   360
         Left            =   2580
         TabIndex        =   3
         Top             =   1140
         Width           =   2160
         _ExtentX        =   3810
         _ExtentY        =   635
         _Version        =   393216
         MatchEntry      =   -1  'True
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo Cbo_Category 
         Height          =   360
         Left            =   2520
         TabIndex        =   17
         Top             =   600
         Width           =   2640
         _ExtentX        =   4657
         _ExtentY        =   635
         _Version        =   393216
         MatchEntry      =   -1  'True
         ForeColor       =   -2147483640
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label lblOnDate 
         AutoSize        =   -1  'True
         Caption         =   "On Date"
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
         Left            =   1140
         TabIndex        =   9
         Top             =   720
         Width           =   735
      End
      Begin VB.Label lblFrameHeader 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Raw Material Bin Card"
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
         Left            =   45
         TabIndex        =   8
         Top             =   120
         Width           =   5370
      End
      Begin VB.Label lblToLotNo 
         AutoSize        =   -1  'True
         Caption         =   "To Lot No."
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
         Left            =   1125
         TabIndex        =   7
         Top             =   1920
         Width           =   930
      End
      Begin VB.Label lblFromLotno 
         AutoSize        =   -1  'True
         Caption         =   "From Lot No."
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
         Left            =   1140
         TabIndex        =   6
         Top             =   1275
         Width           =   1110
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3225
      Left            =   2640
      TabIndex        =   10
      Top             =   1680
      Width           =   5715
      _ExtentX        =   10081
      _ExtentY        =   5689
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "frmRepCottonBinCard.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8400
      TabIndex        =   11
      Top             =   1560
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin Crystal.CrystalReport crr 
      Left            =   2160
      Top             =   2040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "frmRepCottonBinCard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim I As Integer
Dim rep As Report.ReportView
Dim a As Integer
Dim Rs As ADODB.Recordset
Dim rslot As ADODB.Recordset
Dim rsCat As ADODB.Recordset
Dim rsIss As ADODB.Recordset
Dim strRange As String
Dim STRDATE1 As String
Dim intlno As Integer
Dim strQuery As String

Private Sub Cbo_Category_Change()

intervalMinutes = -1
Set rslot = New Recordset
'strQuery = "select distinct lotno as fields from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N' "
'rsLot.Open strQuery, cn, adOpenStatic, adLockBatchOptimistic
'Set rs = New Recordset
'rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL  order by contdt", DB, adOpenStatic, adLockBatchOptimistic
'modified on 16/06/2006
'rsLot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' ORDER BY LOTDT,LOTNO ", Cn, adOpenStatic, adLockBatchOptimistic
'rslot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' and CATCD= '" & Left(Cbo_Category, 1) & "' ORDER BY LOTDT,LOTNO ", cn, adOpenStatic, adLockBatchOptimistic
rslot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotdt>='" & Format(yfdate, "yyyy/MM/dd") & "' and CATCD= '" & Left(Cbo_Category, 1) & "' ORDER BY lotno,LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
CmdCrystal.Visible = True
If rslot.RecordCount > 0 Then
    Set dcbFromLotNo.RowSource = rslot
    Me.dcbFromLotNo.ListField = "FIELDS"
    Set dcbToLotNo.RowSource = rslot
    Me.dcbToLotNo.ListField = "FIELDS"
    rslot.MoveFirst
    Me.dcbFromLotNo.Text = rslot("FIELDS")
    rslot.MoveLast
    Me.dcbToLotNo.Text = rslot("FIELDS")
End If
intervalMinutes = -1
End Sub

Private Sub cmdCancel_Click()
On Error GoTo Cmdcancel_Click_Error

Unload Me
intervalMinutes = -1
Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub CmdCrystal_Click()
Dim TEMP7 As String
Dim TEMP8 As String
Dim TEMP9 As String
Dim TEMP10 As String
Dim TMPCAT As String
intervalMinutes = -1
On Error GoTo cmdCrystal_Click_Error

If dcbFromLotNo.MatchedWithList = False Then
MsgBox "Select the valid From Lot No", vbInformation, "Kalsofte"
dcbFromLotNo.Text = ""
dcbFromLotNo.SetFocus
Me.MousePointer = 0
Exit Sub
End If
If dcbToLotNo.MatchedWithList = False Then
MsgBox "Select the valid To Lot No", vbInformation, "Kalsofte"
dcbToLotNo.Text = ""
dcbToLotNo.SetFocus
Me.MousePointer = 0
Exit Sub
End If


TEMP7 = Right(Format(Me.dcbFromLotNo.Text, "YYYY-MM-DD"), 10)
TEMP8 = Right(Format(Me.dcbToLotNo.Text, "YYYY-MM-DD"), 10)
TEMP9 = InStr(1, Me.dcbFromLotNo.Text, "-")
TEMP9 = Trim(Left(Me.dcbFromLotNo.Text, TEMP9 - 1))
TEMP10 = InStr(1, Me.dcbToLotNo.Text, "-")
TEMP10 = Trim(Left(Me.dcbToLotNo.Text, TEMP10 - 1))
TMPCAT = Trim(Mid(Cbo_Category.Text, 1, InStr(1, Cbo_Category.Text, "--") - 1))
''validations
If val(TEMP9) <> 0 And val(TEMP10) <> 0 Then
    If val(TEMP9) > val(TEMP10) Then
        MsgBox "From Lot No should not be greater than To Lot No", vbInformation
        Me.dcbFromLotNo.SetFocus
        Me.MousePointer = 0
        Exit Sub
    ElseIf val(TEMP10) < val(TEMP9) Then
        MsgBox "To Lot No should be greater than From Lot No", vbInformation
        Me.MousePointer = 0
        Me.dcbToLotNo.SetFocus
        Exit Sub
    End If
End If

intervalMinutes = -1

'If dcbFromLotNo.Text <> "" And Me.dcbToLotNo.Text <> "" Then
'    strRange = " between " & Val(Me.dcbFromLotNo.Text) & " and " & Val(Me.dcbToLotNo.Text)
'ElseIf dcbFromLotNo.Text <> "" And Me.dcbToLotNo.Text = "" Then
'    strRange = " >= " & Val(Me.dcbFromLotNo.Text)
'ElseIf dcbFromLotNo.Text = "" And Me.dcbToLotNo.Text <> "" Then
'    strRange = " <= " & Val(Me.dcbToLotNo.Text)
'End If


'strOnDate = Format(DTPOnDate.Value, "yyyy-mm-dd")
'If rs.RecordCount > 0 Then
        
Call prCotBinCard1(TEMP7, TEMP8, TEMP9, TEMP10, TMPCAT)
intervalMinutes = -1
        Dim clsCryRpt_sup As New clsCrystal
        Set clsCryRpt_sup.cryRept = Rep_Period_Bincard
        clsCryRpt_sup.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.Formulas(0) = "Divname='" & divname & "'"
        crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
        crr.WindowState = crptMaximized
        SendKeys "{Enter}"
        crr.Action = True
        crr.PrinterCopies = 1
intervalMinutes = -1
'Dim CryRep As New rawmaterialbincard
'Set CryRep = New rawmaterialbincard
'    Dim CRXParamDefs As CRAXDDRT.ParameterFieldDefinitions
'    Dim CRXParamDef As CRAXDDRT.ParameterFieldDefinition
'
'    Set CRXParamDefs = CryRep.ParameterFields
'    For Each CRXParamDef In CRXParamDefs
'        With CRXParamDef
'            Select Case .ParameterFieldName
'            Case "@Divname"
'                .ClearCurrentValueAndRange
'                .AddCurrentValue (DIVNAME)
'            Case "@PrNo"
'                .ClearCurrentValueAndRange
'                .AddCurrentValue ("1")
'            End Select
'        End With
'    Next
'
'CryRep.Database.Tables(1).SetLogOnInfo "KalSoftErp", gstrDbName, sqluser, sqlpwd
'CryRep.Database.Tables(1).Location = gstrDbName & ".dbo.RawMaterialBinCard"
'frm_crystalviewer.CRViewer1.ReportSource = CryRep
'frm_crystalviewer.CRViewer1.ViewReport
'frm_crystalviewer.Show
'SendKeys ("enter")
'SendKeys ("{esc}    ")
Screen.MousePointer = 0
intervalMinutes = -1
Exit Sub
er1:
    MsgBox Err.Description, vbInformation, head
SendKeys ("%")
SendKeys ("{esc}")
Screen.MousePointer = 0

Exit Sub
cmdCrystal_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdCrystal_Click of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
intervalMinutes = -1
Dim TEMP7 As String
Dim TEMP8 As String
Dim TEMP9 As String
Dim TEMP10 As String, TEMPCAT As String
On Error GoTo cmdreport_Click_Error

Set rep = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\CotBinCard.txt" For Output As #a
 Open KALFOLDERDATA & "\CotBinCard.TXT" For Output As #a
Me.MousePointer = 11
If dcbFromLotNo.MatchedWithList = False Then
MsgBox "Select the valid From Lot No", vbInformation, "Kalsofte"
dcbFromLotNo.Text = ""
dcbFromLotNo.SetFocus
Me.MousePointer = 0
Exit Sub
End If
If dcbToLotNo.MatchedWithList = False Then
MsgBox "Select the valid To Lot No", vbInformation, "Kalsofte"
dcbToLotNo.Text = ""
dcbToLotNo.SetFocus
Me.MousePointer = 0
Exit Sub
End If
TEMP7 = Right(Format(Me.dcbFromLotNo.Text, "YYYY-MM-DD"), 10)
TEMP8 = Right(Format(Me.dcbToLotNo.Text, "YYYY-MM-DD"), 10)
TEMP9 = InStr(1, Me.dcbFromLotNo.Text, "-")
TEMP9 = Trim(Left(Me.dcbFromLotNo.Text, TEMP9 - 1))
TEMP10 = InStr(1, Me.dcbToLotNo.Text, "-")
TEMP10 = Trim(Left(Me.dcbToLotNo.Text, TEMP10 - 1))
TEMPCAT = Trim(Mid(Cbo_Category.Text, 1, InStr(1, Cbo_Category.Text, "--") - 1))

''validations
If val(TEMP9) <> 0 And val(TEMP10) <> 0 Then
    If val(TEMP9) > val(TEMP10) Then
        MsgBox "From Lot No should not be greater than To Lot No", vbInformation
        Me.dcbFromLotNo.SetFocus
        Me.MousePointer = 0
        Exit Sub
    ElseIf val(TEMP10) < val(TEMP9) Then
        MsgBox "To Lot No should be greater than From Lot No", vbInformation
        Me.MousePointer = 0
        Me.dcbToLotNo.SetFocus
        Exit Sub
    End If
End If
     intervalMinutes = -1
Call prCotBinCard(TEMP7, TEMP8, TEMP9, TEMP10, TEMPCAT)
'End If
Me.MousePointer = 0
intervalMinutes = -1

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub dcbFromLotNo_Change()
'
'Set rsLot = New Recordset
''strQuery = "select distinct lotno as lotno from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N' "
''rsLot.Open strQuery, cn, adOpenStatic, adLockBatchOptimistic
''Set rs = New Recordset
''rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL  order by contdt", DB, adOpenStatic, adLockBatchOptimistic
'rsLot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' ORDER BY 1 ", cn, adOpenStatic, adLockBatchOptimistic
'
'If rsLot.RecordCount > 0 Then
'    Set dcbFromLotNo.RowSource = rsLot
'    Me.dcbFromLotNo.ListField = "FIELDS"
''    Set dcbToLotNo.RowSource = rsLot
''    Me.dcbToLotNo.ListField = "FIELDS"
'    rsLot.MoveFirst
'    Me.dcbFromLotNo.Text = rsLot("FIELDS")
''    rsLot.MoveLast
''    Me.dcbToLotNo.Text = rsLot("FIELDS")
'End If
'
'End Sub

Private Sub dcbFromLotNo_Click(area As Integer)

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
lblOnDate.Caption = "Category"
lblOnDate.Visible = True
Cbo_Category.Visible = True
'lblOnDate.Top = Cbo_Category.Top
Me.Height = 9000
Me.Width = 12000
''Me.DTPOnDate.Value = Format(pdate, "dd-mm-yyyy")
openconnection
strQuery = ""

'Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter


'Me.lblOnDate.Visible = False
Me.DTPOnDate.Visible = False
'DataCombo1


Set rsCat = New Recordset
rsCat.Open "select a.catcd +' -- '+ a.catname AS FIELDS from rm_cat a left join fa_tcmas b on a.fatc = b.tc where a.catcd<>'' order by a.catcd", cn, adOpenStatic, adLockBatchOptimistic
'rscat.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' ORDER BY LOTDT,LOTNO ", Cn, adOpenStatic, adLockBatchOptimistic
'CmdCrystal.Visible = True
If rsCat.RecordCount > 0 Then
    Set Cbo_Category.RowSource = rsCat
    Me.Cbo_Category.ListField = "FIELDS"
    'Set Cbo_Category.RowSource = rsCat
    'Me.Cbo_Category.ListField = "FIELDS"
    rsCat.MoveFirst
    'rsCat.MoveNext
    Me.Cbo_Category.Text = rsCat("FIELDS")
    'rsCat.MoveLast
    'Me.Cbo_Category.Text = rsCat("FIELDS")
End If

Set rslot = New Recordset
'strQuery = "select distinct lotno as fields from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N' "
'rsLot.Open strQuery, cn, adOpenStatic, adLockBatchOptimistic
'Set rs = New Recordset
'rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where ordqty>isnull(recqty,0) and divcode='" & Divcode & "' AND CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND CANCELFLG IS NULL AND CANCELDT IS NULL  order by contdt", DB, adOpenStatic, adLockBatchOptimistic
'modified on 16/06/2006
'rsLot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' ORDER BY LOTDT,LOTNO ", Cn, adOpenStatic, adLockBatchOptimistic
'rslot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotyear='" & Year(yfdate) & "' and CATCD= '" & Left(Cbo_Category, 1) & "' ORDER BY LOTDT,LOTNO ", cn, adOpenStatic, adLockBatchOptimistic
rslot.Open "select CAST(lotno AS VARCHAR)+ ' - '+CONVERT(VARCHAR,LOTDT,103) AS FIELDS from rm_lot where divcode = '" & Divcode & "' and REJFLG = 'N'  and lotdt>='" & Format(yfdate, "yyyy-MM-dd") & "' and CATCD= '" & Left(Cbo_Category, 1) & "' ORDER BY LOTNO,LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
CmdCrystal.Visible = True
If rslot.RecordCount > 0 Then
    Set dcbFromLotNo.RowSource = rslot
    Me.dcbFromLotNo.ListField = "FIELDS"
    Set dcbToLotNo.RowSource = rslot
    Me.dcbToLotNo.ListField = "FIELDS"
    rslot.MoveFirst
    Me.dcbFromLotNo.Text = rslot("FIELDS")
    rslot.MoveLast
    Me.dcbToLotNo.Text = rslot("FIELDS")
End If


intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub prHeader(intlno As Integer)
'Print #A, Chr(18) & Space(2) & String(80, "-")
                    ''12345678901234567890123456789012345678901234567890123456789012345678901234567890
'Print #A, Space(5) & "   Date      Mixing No          Qty Received       Qty Issued        Balance"
 'Print #A, Space(2) & Chr(218) & String(12, Chr(196))
 'Print #A, Space(2) & "                           Qty        Qty "
 'Print #A, Space(2) & "   Date      Mixing No   Received   Issued    Balance"
' Print #A, Space(2) & Chr(218) & String(10, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(194) & String(11, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(191)
 'Print #A, Space(2) & Chr(179) & "          " & Chr(179) & "Mixing    " & Chr(179) & "   Qty     " & Chr(179) & "   Qty    " & Chr(179) & "          " & Chr(179)
 'Print #A, Space(2) & Chr(179) & "  Date    " & Chr(179) & " No      " & Chr(179) & "  Received " & Chr(179) & "  Issued  " & Chr(179) & "  Balance " & Chr(179)
' Print #A, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197) & String(7, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(180)
  'for less spaces (-4)Print #A, Space(2) & Chr(218) & String(10, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(194) & String(8, Chr(196)) & Chr(194) & String(6, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(191)
 'Print #A, Space(2) & Chr(179) & Space(10) & Chr(179) & "Mixing" & Space(1) & Chr(179) & "Qty" & Space(5) & Chr(179) & "Qty " & Space(2) & Chr(179) & Space(7) & Chr(179)
 'Print #A, Space(2) & Chr(179) & "  Date    " & Chr(179) & " No    " & Chr(179) & "Received" & Chr(179) & "Issued" & Chr(179) & "Balance" & Chr(179)
 'Print #A, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197) & String(7, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(180)
 'new
 
' Print #a, Space(2) & Chr(218) & String(10, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(194) & String(11, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(194) & String(9, Chr(196)) & Chr(191)
' Print #a, Space(2) & Chr(179) & Space(10) & Chr(179) & "Mixing" & Space(1) & Chr(179) & "   Qty" & Space(5) & Chr(179) & "   Qty" & Space(4) & Chr(179) & Space(9) & Chr(179)
' Print #a, Space(2) & Chr(179) & "  Date    " & Chr(179) & " No    " & Chr(179) & "  Received " & Chr(179) & "  Issued  " & Chr(179) & " Balance " & Chr(179)
' Print #a, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197) & String(7, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(9, Chr(196)) & Chr(180)
 
 
On Error GoTo prHeader_Error
intervalMinutes = -1
 Print #a, Space(2) & Chr(218) & String(10, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(194) & String(11, Chr(196)) & Chr(194) & String(11, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(194) & String(9, Chr(196)) & Chr(194) & String(9, Chr(196)) & Chr(191)
 Print #a, Space(2) & Chr(179) & Space(10) & Chr(179) & "Mixing" & Space(1) & Chr(179) & "   Qty" & Space(5) & Chr(179) & "   Kgs" & Space(5) & Chr(179) & "   Qty" & Space(4) & Chr(179) & "   Kgs" & Space(4) & Chr(179) & "    Qty" & Space(2) & Chr(179) & "    Kgs" & Space(2) & Chr(179)
 Print #a, Space(2) & Chr(179) & "  Date    " & Chr(179) & " No    " & Chr(179) & "  Received " & Chr(179) & "  Received " & Chr(179) & "  Issued  " & Chr(179) & "  Issued  " & Chr(179) & " Balance " & Chr(179) & " Balance " & Chr(179)
 Print #a, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197) & String(7, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(9, Chr(196)) & Chr(197) & String(9, Chr(196)) & Chr(180)
 
 'Print #A, Space(2) & Chr(218) & String(10, Chr(196)) & Chr(194) & String(7, Chr(196)) & Chr(194) & String(11, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(194) & String(10, Chr(196)) & Chr(191)
 'Print #A, Space(2) & Chr(179) & Space(10) & Chr(179) & "Mixing" & Space(1) & Chr(179) & "   Qty" & Space(5) & Chr(179) & "Qty " & Space(2) & Chr(179) & Space(7) & Chr(179)
 'Print #A, Space(2) & Chr(179) & "  Date    " & Chr(179) & " No    " & Chr(179) & "   Received" & Chr(179) & "Issued" & Chr(179) & "Balance" & Chr(179)
 'Print #A, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197) & String(7, Chr(196)) & Chr(197) & String(11, Chr(196)) & Chr(197) & String(10, Chr(196)) & Chr(197) & String(9, Chr(196)) & Chr(180)
  intlno = intlno + 4

Exit Sub
prHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prHeader of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub prCotBinCardOld()
Dim type1       As String
Dim dblBalance  As Double
Dim rs1         As Recordset
On Error GoTo prCotBinCardOld_Error

intlno = 0
dblBalance = 0
intervalMinutes = -1
Set Rs = New Recordset
Rs.Open "SELECT L.DIVCODE,L.CATCD,L.LOTNO, max(L.LOTDT) LOTDT,L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,isnull(L.NETWT,0) NETWT,A.AREANAME," & _
        "AL.CONTNO FROM RM_LOT L,FA_SLMAS S, RM_VAR V, RM_AREA A,RM_ARRIVAL AL " & _
        "Where L.SUPCD = s.SLCODE And L.VARCODE = V.VARCODE And L.Catcd = V.Catcd AND L.AREACD *= a.AREACODE " & _
        "AND L.DIVCODE = '" & Divcode & "' AND  L.ARRNO*=AL.ARRNO AND L.LOTNO " & strRange & _
        " GROUP BY L.DIVCODE,L.CATCD,L.LOTNO, L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,AL.CONTNO,L.NETWT, A.AREANAME order by l.lotno ", cn, adOpenStatic, adLockBatchOptimistic

''Rs.Open "SELECT L.DIVCODE,L.CATCD,L.LOTNO, max(L.LOTDT) LOTDT,L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,isnull(L.NETWT,0) NETWT,A.AREANAME " & _
''        "FROM RM_LOT L,FA_SLMAS S, RM_VAR V, RM_AREA A " & _
''        "Where L.SUPCD = s.SLCODE And L.VARCODE = V.VARCODE And L.Catcd = V.Catcd AND L.AREACD *= a.AREACODE " & _
''        "AND L.DIVCODE = '" & Divcode & "' AND L.CATCD = 'C' AND L.LOTNO " & strRange & _
''        " GROUP BY L.DIVCODE,L.CATCD,L.LOTNO, L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,L.NETWT, A.AREANAME order by l.lotno ", cn, adOpenStatic, adLockBatchOptimistic



        While Not Rs.EOF
            'intPgNo = 1
        Set rs1 = New Recordset
        rs1.Open "select * from pp_divmas where DIVCODE = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(11) + Chr(14) + Chr(27) + "E" + Padr(Rs("LOTNO"), 4, " ") + Chr(27) + "F" + Chr(15) + Space(11) + Padr(Rs("slname"), 15, " ") + Chr(18)
            Print #a, Space(11) + Padr(Rs("PLOTNO"), 9, " ") & Space(11) + Chr(15) + Padr(Rs("AREANAME") & "", 15, " ") + Chr(18) + Space(5) + Padr(Rs("slname"), 9, " ") + Chr(18)
            Print #a,
            Print #a, Space(11) + Padr(Rs("VARCODE"), 9, " ") & Space(6) & Padr(Rs("CONTNO"), 20, " ")
            Print #a,
            Print #a,
            Set rsIss = New Recordset
            rsIss.Open "SELECT DIVCODE, 0 as docno, LOTDT DATE, ' ' AS ISSTYPE,CATCD, LOTNO, BALES AS RECBALES,0 AS ISSBALES, 0 AS ISSUE " & _
                       "FROM RM_LOT WHERE LOTNO = " & Rs("LOTNO") & " AND LOTDT = '" & Format(Rs("LOTDT"), "YYYY-M-DD") & "' AND DIVCODE = '" & Divcode & "' " & _
                       "Union SELECT DIVCODE, DOCNO, DOCDT DATE, ISNULL(ISSTYPE,' ')AS ISSTYPE,CATCD, LOTNO, 0 AS RECBALES,COUNT(BALENO) AS ISSBALES,1 AS ISSUE " & _
                       "FROM RM_ISSB WHERE LOTNO = " & Rs("LOTNO") & " AND LOTDT = '" & Format(Rs("LOTDT"), "YYYY-M-DD") & "' AND DIVCODE = '" & Divcode & "' " & _
                       "GROUP BY DIVCODE, CATCD,LOTNO, DOCNO, DOCDT,ISSTYPE ORDER BY ISSUE,DATE", cn, adOpenStatic, adLockBatchOptimistic
            intlno = 1
            dblBalance = rsIss("recbales") - rsIss("Issbales")
            Do While Not rsIss.EOF
                If intlno > 35 Then
                    Print #a, Chr(12)
                    Print #a,
                    Print #a,
                    Print #a,
                    Print #a,
                    intlno = 0
                End If
                'for mixing no. & isstype
                If rsIss("isstype") = "P" Then
                   type1 = "I"
                ElseIf rsIss("isstype") = "Q" Then
                    type1 = "II"
                
                Else
                    type1 = " "
                End If
                'not necessary
'                ElseIf rsIss("isstype") = "T" Then
'                    type1 = "T"
'                ElseIf rsIss("ISSTYPE") = "S" Then
'                    type1 = "S"
                

                dblBalance = dblBalance - rsIss("Issbales")
                Print #a, Space(5) & Padr(Format(rsIss("date"), "dd-mm-yy"), 8, " "); Space(2) + Padr(type1 & "-" & rsIss("docno"), 8, " "); Space(2) + Padl(rsIss("RECBALES"), 4, " ") + Space(3) + Space(1) + Padl(rsIss("ISSBALES"), 5, " ") + Space(4) + Space(1) + Padl(dblBalance, 5, " ")
                           'fro isstype
                          'Space(2) + IIf(rsiss("isstype"))= "P",type1 & "-" & rsiss("docno"),8," " & rsiss("isstype")="Q",type1 & "-" & rsIss("docno"), 8, " ")
                          'Space(2) + IIf(type1 = " ", Space(8), Padr(type1 & "-" & rsIss("docno"), 8, " ")) +_
                intlno = intlno + 1
            rsIss.MoveNext
            Loop
            dblBalance = 0
        Rs.MoveNext
        Wend
        Print #a, Chr(12)
        Close #a
        a = FreeFile
        intervalMinutes = -1
'        Open "c:\CotBinCard.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type CotBinCard.txt>prn"
'        Close #a
'        Rep.txtfile = "c:\CotBinCard.txt"
'        Rep.Batfile = "c:\CotBinCard.bat"
         Call KALBATPROCESS("CotBinCard")
'Else
    MsgBox "No Records Found", vbInformation, "RMI-Cotton Bin Card"
    Me.MousePointer = 0
    Exit Sub
'End If
intervalMinutes = -1
Exit Sub
prCotBinCardOld_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prCotBinCardOld of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub prCotBinCard(U As String, v As String, W As String, X As String, cat As String)
Dim dblBalance As Double
Dim dblBalance_Kgs As Double
Dim co As Integer
Dim pg As Integer
Dim type1 As String
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rsPr As Recordset
On Error GoTo prCotBinCard_Error
intervalMinutes = -1
intlno = 0
dblBalance = 0
Dim pr As String
Set Rs = New Recordset


Rs.Open "SELECT DISTINCT L.DIVCODE,L.CATCD,L.LOTNO, max(L.LOTDT) LOTDT,L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,A.AREANAME,l.godown " & _
        "FROM RM_LOT L inner join  FA_SLMAS S on L.SUPCD = s.SLCODE left join  RM_VAR V on L.VARCODE = V.VARCODE  And L.Catcd = V.Catcd  left join  RM_AREA A on L.AREACD = a.AREACODE " & _
        "Where   " & _
        " L.DIVCODE = '" & Divcode & "' AND  L.LOTNO BETWEEN '" & W & "' AND '" & X & "' AND L.LOTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(v, "YYYY-MM-DD") & "' " & _
        "AND L.CatCd='" & cat & "' GROUP BY L.DIVCODE,L.CATCD,L.LOTNO, L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,NETWT, A.AREANAME,l.godown order by lotno ", cn, adOpenStatic, adLockBatchOptimistic
        
Set rsPr = New Recordset
rsPr.Open "select prno from rm_arrival where CATCD='" & cat & "' AND DIVCODE = '" & Divcode & "' AND  LOTNO BETWEEN '" & W & "' AND '" & X & "'", cn

Set rs2 = New Recordset
rs2.Open "select a.contno from rm_cont a,rm_arrival b where a.contno=b.contno and a.contdt=b.contdt and a.divcode=b.divcode", cn, adOpenStatic, adLockBatchOptimistic
            

If rsPr.EOF = False Then
    pr = IIf(IsNull(rsPr("prno")), 0, rsPr("prno"))
Else
    pr = " - "
End If
        Dim I As Integer
intervalMinutes = -1
        Set rs1 = New Recordset
        rs1.Open "select * from pp_divmas where DIVCODE = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
        
                'If intlno > 56 Then
                'intlno = 0
                'Print #A, Chr(12)
                'intlno = 0
                'If intlno <= 56 Then
                        'Print #A, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179)
                        'Print #A, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                 '              intlno = 0
                  '             Print #A, Chr(12)
                  'End If
                'Print #a, "4343434"
    Do While Not Rs.EOF
    intervalMinutes = -1
                intlno = 0
                
                Print #a, Space(2); Chr(27) & "E"; CENTRE(Left(Trim(divname), 47) & IIf(IsNull(rs1("city")), " ", ", " & Trim(Left(rs1("city"), 10))), 80, " "); Chr(27) & "F"
                Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 82, " "); Chr(27) & "F"
                Print #a,
                Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(Rs("Lotno"), 14, " ") & Chr(27) & "F" & Space(32) & "P.Lot  : " & Padr(Rs("PLOTNO"), 12, " ")
                Print #a, Space(3); "Party Name : " & Padr(Rs("slname"), 50, " ")
                Print #a, Space(3); "Station    : " & Padr(Rs("AREANAME"), 20, " ") & Space(30) & Padr("Status : " & "O.K ", 12, " ")
                Print #a, Space(3); "Varcode    : " & Padr(Rs("VARNAME"), 20, " ") & Space(30) & "Press  : " & Padr(pr, 12, " ")
                If rs2.RecordCount >= 1 Then
                Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                Else
                Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                End If
                intlno = intlno + 8
                Call prHeader(intlno)
                Set rsIss = New Recordset
                rsIss.Open "SELECT DIVCODE, 0 as docno, LOTDT DATE, ' ' AS ISSTYPE,CATCD, LOTNO, BALES AS RECBALES,NetWt As RecKgs,0 AS ISSBALES,0 as IssKgs, 0 AS ISSUE,0 as Tare " & _
                          "FROM RM_LOT WHERE CatCd ='" & Rs("CatCd") & "' and  LOTNO = " & Rs("LOTNO") & " AND LOTDT = '" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND DIVCODE = '" & Divcode & "' AND LOTYEAR='" & Year(yfdate) & "'" & _
                          "Union all SELECT a.DIVCODE, a.DOCNO, a.DOCDT DATE, ISNULL(a.ISSTYPE,' ')AS ISSTYPE,a.CATCD,a.LOTNO, 0 AS RECBALES,0 as RecKgs,COUNT(a.BALENO) AS ISSBALES,isnull(Sum(a.ACTIssKgs)-isnull(sum(b.tarewt),0),0) as IssKgs,1 AS ISSUE,sum(b.tarewt)AS Tare " & _
                          "FROM RM_ISSB a,RM_bale b WHERE  a.DIVCODE=b.DIVCODE and a.Catcd=b.Catcd AND a.BALENO=b.BALENO AND a.LOTNO=b.LOTNO AND a.lotdt=b.lotdt and A.CatCd ='" & Rs("CatCd") & "' AND  a.LOTNO = " & Rs("LOTNO") & " AND a.LOTDT = '" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND a.DIVCODE = '" & Divcode & "' AND a.DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-DD") & "' AND '" & Format(yldate, "yyyy-MM-DD") & "'" & _
                          "GROUP BY a.DIVCODE,a.CATCD,a.LOTNO,a.DOCNO,a.DOCDT,a.ISSTYPE ORDER BY docno,DATE", cn, adOpenStatic, adLockBatchOptimistic
                      
                Do While Not rsIss.EOF
                    If rsIss("isstype") = "P" Then
                       type1 = "I"
                    ElseIf rsIss("isstype") = "Q" Then
                        type1 = "II"
                    Else
                        type1 = " "
                    End If
                    dblBalance = dblBalance + rsIss("recbales") - rsIss("Issbales")
                    dblBalance_Kgs = dblBalance_Kgs + rsIss("recKgs") - rsIss("IssKgs")
                    Print #a, Space(2) & Chr(179) & Padr(Format(rsIss("date"), "dd-mm-yyyy"), 10, " ") & Chr(179);
                    Print #a, Padr(rsIss("docno"), 7, " ") & Chr(179);
                    Print #a, Padl(rsIss("RECbales"), 11, " ") & Chr(179);
                    Print #a, Padl(rsIss("RECKgs"), 11, " ") & Chr(179);
                    Print #a, Padl(rsIss("ISSbales"), 10, " ") & Chr(179);
                    Print #a, Padl(rsIss("ISSKgs"), 10, " ") & Chr(179);
                    Print #a, Padl(dblBalance, 9, " ") & Chr(179);
                    Print #a, Padl(dblBalance_Kgs, 9, " ") & Chr(179)
                    If dblBalance = 0 Then
                         Print #a, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                         GoTo 55
                    End If
                
                    intlno = intlno + 1
                    If intlno >= 46 Then
                        Print #a, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179); String(9, " ") & Chr(179)
                        Print #a, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                        intlno = 0
                        Print #a, Chr(12)
                        Print #a, Space(2); Chr(27) & "E"; CENTRE(Left(Trim(divname), 47) & IIf(IsNull(rs1("city")), " ", ", " & Trim(Left(rs1("city"), 10))), 80, " "); Chr(27) & "F"
                        Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 82, " "); Chr(27) & "F"
                        Print #a,
                        Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(Rs("Lotno"), 14, " ") & Chr(27) & "F" & Space(32) & "P.Lot  : " & Padr(Rs("PLOTNO"), 12, " ")
                        Print #a, Space(3); "Party Name : " & Padr(Rs("slname"), 50, " ")
                        Print #a, Space(3); "Station    : " & Padr(Rs("AREANAME"), 20, " ") & Space(30) & Padr("Status : " & "O.K ", 12, " ")
                        Print #a, Space(3); "Varcode    : " & Padr(Rs("VARNAME"), 20, " ") & Space(30) & "Press  : " & Padr(pr, 12, " ")
                        If rs2.RecordCount >= 1 Then
                            Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                        Else
                            Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                        End If
                        intlno = intlno + 8
                        Call prHeader(intlno)
                    End If

                
                    Print #a, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197); String(7, Chr(196)) & Chr(197); String(11, Chr(196)); Chr(197); String(11, Chr(196)) & Chr(197); String(10, Chr(196)) & Chr(197); String(10, Chr(196)) & Chr(197); String(9, Chr(196)); Chr(197); String(9, Chr(196)) & Chr(180)
                    intlno = intlno + 1
                    If rsIss.AbsolutePosition = rsIss.RecordCount Then
                    Dim K As Integer
                    'CHECKING FOR THE RSISSUES
                    For K = rsIss.RecordCount To 14
                        'If rsIss.RecordCount = 10 Then
                        Print #a, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179); String(9, " ") & Chr(179)
                        Print #a, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197); String(7, Chr(196)) & Chr(197); String(11, Chr(196)) & Chr(197); String(11, Chr(196)) & Chr(197); String(10, Chr(196)) & Chr(197); String(10, Chr(196)) & Chr(197); String(9, Chr(196)) & Chr(197); String(9, Chr(196)) & Chr(180)
                        intlno = intlno + 2
                        'PLEASE CHECK HERE TO THE RSISS * LINENO
                        'If intlno = 20 Then
                        'Print #A, Chr(12)
                        'End If
                        If intlno >= 46 Then
                        Print #a, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179); String(9, " ") & Chr(179)
                        Print #a, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                               intlno = 0
                               Print #a, Chr(12)
                              
'                                Print #a, Space(2); Chr(27) & "E"; Padl(Left(Trim(DIVNAME), 47) & IIf(IsNull(RS1("city")), " ", ", " & Trim(Left(RS1("city"), 4))), 47, " "); Chr(27) & "F"
'                                Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 47, " "); Chr(27) & "F"
'                                Print #a,
'                                Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(rs("Lotno"), 14, " ") & Chr(27) & "F" & Space(5) & "P.Lot  : " & Padr(rs("PLOTNO"), 12, " ")
'                                Print #a, Space(3); "Party Name : " & Padr(rs("slname"), 50, " ")
'                                Print #a, Space(3); "Station    : " & Padr(rs("AREANAME"), 20, " ") & Space(3) & Padr("Status : " & "O.K ", 12, " ")
'                                Print #a, Space(3); "Varcode    : " & Padr(rs("VARNAME"), 20, " ") & Space(3) & "Press  : " & Padr(pr, 12, " ")
'                                If rs2.RecordCount >= 1 Then
'                                Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(6) & "Godown : " & Padr(rs("Godown"), 12, " ")
'                                Else
'                                Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(8) & "Godown : " & Padr(rs("Godown"), 12, " ")
'                                End If

                                Print #a, Space(2); Chr(27) & "E"; CENTRE(Left(Trim(divname), 47) & IIf(IsNull(rs1("city")), " ", ", " & Trim(Left(rs1("city"), 10))), 80, " "); Chr(27) & "F"
                                Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 82, " "); Chr(27) & "F"
                                Print #a,
                                Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(Rs("Lotno"), 14, " ") & Chr(27) & "F" & Space(32) & "P.Lot  : " & Padr(Rs("PLOTNO"), 12, " ")
                                Print #a, Space(3); "Party Name : " & Padr(Rs("slname"), 50, " ")
                                Print #a, Space(3); "Station    : " & Padr(Rs("AREANAME"), 20, " ") & Space(30) & Padr("Status : " & "O.K ", 12, " ")
                                Print #a, Space(3); "Varcode    : " & Padr(Rs("VARNAME"), 20, " ") & Space(30) & "Press  : " & Padr(pr, 12, " ")
                                If rs2.RecordCount >= 1 Then
                                Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                                Else
                                Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                                End If

                                intlno = intlno + 8
                                'Print #A, Space(2); Chr(18); Chr(14); Padr("Mill Lot : " & rs("Lotno"), 20, " "); Space(2) & Padr("Party Name : " & rs("slname"), 40, " ") & Space(1) & Padr("Status : " & "", 50, " ") & Chr(18)
                                Call prHeader(intlno)
                        'Print #A, Chr(12)
                        'End If
                        End If
                     Next
                     Print #a, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179); String(9, " ") & Chr(179)
                     Print #a, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                     intlno = intlno + 2
                End If
                
                If intlno >= 46 Then
                    
                    Print #a, Space(2) & Chr(179) & String(10, " ") & Chr(179); String(7, " ") & Chr(179); String(11, " ") & Chr(179); String(11, " ") & Chr(179); String(10, " ") & Chr(179); String(10, " ") & Chr(179); String(9, " ") & Chr(179); String(9, " ") & Chr(179)
                     Print #a, Space(2) & Chr(192); String(10, Chr(196)); Chr(193); String(7, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(11, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(10, Chr(196)); Chr(193); String(9, Chr(196)); Chr(193); String(9, Chr(196)); Chr(217)
                    intlno = 0
                    Print #a, Chr(12)
'                    Print #a, Space(2); Chr(27) & "E"; Padl(Left(Trim(DIVNAME), 47) & IIf(IsNull(RS1("city")), " ", ", " & Trim(Left(RS1("city"), 4))), 47, " "); Chr(27) & "F"
'                    Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 47, " "); Chr(27) & "F"
'                    Print #a,
'                    Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(rs("Lotno"), 20, " ") & Chr(27) & "F" & Space(5) & "P.Lot  : " & Padr(rs("PLOTNO"), 12, " ")
'                    Print #a, Space(3); "Party Name : " & Padr(rs("slname"), 50, " ")
'                    Print #a, Space(3); "Station    : " & Padr(rs("AREANAME"), 20, " ") & Space(5) & Padr("Status : " & "O.K ", 12, " ")
'                    Print #a, Space(3); "Varcode    : " & Padr(rs("VARNAME"), 20, " ") & Space(5) & "Press  : " & Padr(pr, 12, " ")
'                    If rs2.RecordCount >= 1 Then
'                                Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(6) & "Godown : " & Padr(rs("Godown"), 12, " ")
'                                Else
'                                Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(8) & "Godown : " & Padr(rs("Godown"), 12, " ")
'                    End If

                    Print #a, Space(2); Chr(27) & "E"; CENTRE(Left(Trim(divname), 47) & IIf(IsNull(rs1("city")), " ", ", " & Trim(Left(rs1("city"), 10))), 80, " "); Chr(27) & "F"
                    Print #a, Space(2); Chr(27) & "E"; CENTRE("RAW MATERIAL BIN CARD", 82, " "); Chr(27) & "F"
                    Print #a,
                    Print #a, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(Rs("Lotno"), 14, " ") & Chr(27) & "F" & Space(32) & "P.Lot  : " & Padr(Rs("PLOTNO"), 12, " ")
                    Print #a, Space(3); "Party Name : " & Padr(Rs("slname"), 50, " ")
                    Print #a, Space(3); "Station    : " & Padr(Rs("AREANAME"), 20, " ") & Space(30) & Padr("Status : " & "O.K ", 12, " ")
                    Print #a, Space(3); "Varcode    : " & Padr(Rs("VARNAME"), 20, " ") & Space(30) & "Press  : " & Padr(pr, 12, " ")
                    If rs2.RecordCount >= 1 Then
                    Print #a, Space(3); "P.NO.      : " & Padr(rs2("contno"), 8, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                    Else
                    Print #a, Space(3); Padr("P.NO.      : " & "", 28, " ") & Space(42) & "Godown : " & Padr(Rs("Godown"), 12, " ")
                    End If

                   ' Print #A, Space(2); Chr(18); Chr(14); Padr("Mill Lot : " & rs("Lotno"), 20, " "); Space(2) & Padr("Party Name : " & rs("slname"), 40, " ") & Space(1) & Padr("Status : " & "", 50, " ") & Chr(18)
                    intlno = intlno + 2
                    Call prHeader(intlno)
                    
                End If
                
                rsIss.MoveNext
              intervalMinutes = -1
            Loop
            

55:            Rs.MoveNext
            If Rs.EOF = False Then Print #a, Chr(12)
            dblBalance = 0
            dblBalance_Kgs = 0
        Loop
        'Wend
        Print #a, Chr(12) 'page break
         Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
        Close #a
        a = FreeFile
'        Open KALFOLDERDATA & "\CotBinCard.TXT" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type CotBinCard.txt>prn"
'        Close #a
'        Rep.txtfile = "c:\CotBinCard.txt"
'        Rep.Batfile = "c:\CotBinCard.bat"
         Call KALBATPROCESS("CotBinCard")
         intervalMinutes = -1
'Else
'    MsgBox "No Records Found", vbInformation, "RMI-Cotton Bin Card"
'    Me.MousePointer = 0
'    Exit Sub
'End If

Exit Sub
prCotBinCard_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prCotBinCard of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub prCotBinCard1(U As String, v As String, W As String, X As String, cat As String)
Dim dblBalance As Double
Dim dblBalance_Kgs As Double
Dim co As Integer
Dim pg As Integer
Dim type1 As String
Dim rs1 As Recordset
Dim rs2 As Recordset
Dim rsPr As Recordset
Dim RsTmp As Recordset
Dim rsTmp1 As Recordset
Dim rsTmp2 As Recordset
Dim cnRs As Recordset
Dim id As Integer
Dim CntNo, CntDt As String, PressMk As String, Agent As String
intervalMinutes = -1
On Error GoTo prCotBinCard1_Error

intlno = 0
dblBalance = 0
Dim pr As String
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT L.DIVCODE,L.CATCD,L.LOTNO, max(L.LOTDT) LOTDT,L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,A.AREANAME,l.godown " & _
        "FROM RM_LOT L inner join FA_SLMAS S on L.SUPCD = s.SLCODE inner join RM_VAR V on L.VARCODE = V.VARCODE And L.Catcd = V.Catcd left join RM_AREA A on L.AREACD = a.AREACODE " & _
        "Where " & _
        " L.DIVCODE = '" & Divcode & "' AND  L.LOTNO BETWEEN '" & W & "' AND '" & X & "' AND L.LOTDT BETWEEN '" & Format(U, "YYYY-MM-DD") & "' AND '" & Format(v, "YYYY-MM-DD") & "' and L.CATCD= '" & cat & "'  " & _
        "GROUP BY L.DIVCODE,L.CATCD,L.LOTNO, L.LOTTYPE,L.SUPCD,S.SLNAME,L.VARCODE,V.VARNAME,L.PLOTNO,NETWT, A.AREANAME,l.godown order by lotno ", cn, adOpenStatic, adLockBatchOptimistic

        
    Set rsPr = New Recordset
    rsPr.Open "select prno,ContNo,ContDt from rm_arrival where DIVCODE = '" & Divcode & "' AND  LOTNO BETWEEN '" & W & "' AND '" & X & "'", cn

    Set rs2 = New Recordset
    rs2.Open "select a.contno from rm_cont a,rm_arrival b where a.contno=b.contno ", cn, adOpenStatic, adLockBatchOptimistic
            
    If rsPr.EOF = False Then
        pr = IIf(IsNull(rsPr("prno")), 0, rsPr("prno"))
    Else
        pr = " - "
    End If
    
    Dim I As Integer
    Set rs1 = New Recordset
    rs1.Open "select * from pp_divmas where DIVCODE = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    cn.Execute "delete RMatTmp1"
    cn.Execute "delete RawMaterialTemp2"
             
    Do While Not Rs.EOF
        Set cnRs = New Recordset
        cnRs.Open "select ContNo,ContDt,PRMARK,brkcd,Slname as Agent from rm_arrival a left join Fa_slmas S on a.Brkcd = s.Slcode where DIVCODE = '" & Divcode & "' and CatCd='" & Rs("CatCd") & "' AND  LOTNO = '" & Rs("LotNo") & "' and LotDt ='" & Format(Rs("LotDt"), "yyyy-mm-dd") & "'", cn, adOpenDynamic, adLockReadOnly
        If Not cnRs.EOF Then
            CntNo = cnRs("ContNo")
            CntDt = cnRs("ContDt")
            PressMk = cnRs("PRMARK")
            Agent = IIf(IsNull(cnRs("Agent")), "", cnRs("Agent"))
        Else
            CntNo = ""
            CntDt = ""
            PressMk = ""
            Agent = ""
        End If
        
        Set rsTmp1 = New Recordset
        rsTmp1.Open "insert into RMatTmp1(Divcode, CatCd, LOTNO, LOTDT, LOTTYPE, SUPCD, SLNAME, VARCODE, VARNAME, PLOTNO, AREANAME, godown,CONTNO,CONTDT,PRESSMASRK,AGENT) " & _
                    " values ('" & IIf(IsNull(Rs(0)) = True, 0, Rs(0)) & "','" & IIf(IsNull(Rs(1)) = True, 0, Rs(1)) & "'," & IIf(IsNull(Rs(2)) = True, 0, Rs(2)) & ",'" & IIf(IsNull(Rs(3)) = True, 0, Rs(3)) & "','" & IIf(IsNull(Rs(4)) = True, 0, Rs(4)) & "','" & IIf(IsNull(Rs(5)) = True, 0, Rs(5)) & "','" & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "','" & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "','" & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "','" & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "','" & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "','" & IIf(IsNull(Rs(11)) = True, 0, Rs(11)) & "','" & CntNo & "','" & CntDt & "','" & PressMk & "','" & Agent & "') ", cn, adOpenStatic, adLockBatchOptimistic
        Set rsTmp2 = New Recordset
        rsTmp2.Open "Select Max(RMatId) as [RMatId] from RMatTmp1", cn, adOpenStatic, adLockBatchOptimistic
        
        If rsTmp2.RecordCount > 0 Then
             id = rsTmp2("RMatId")
        End If
        dblBalance = 0
        dblBalance_Kgs = 0
        Set rsIss = New Recordset
        rsIss.Open "SELECT L.DIVCODE, 0 as docno, L.LOTDT DATE, ' ' AS ISSTYPE,L.CATCD, L.LOTNO, L.BALES AS RECBALES, case when L.weightflg = 'M' THEN  L.NetWt      WHEN L.weightflg = 'S' THEN L.PNETWT   WHEN L.weightflg = 'C' THEN L.Comm_Wt Else '0' END  As RecKgs, " & _
                   "0 AS ISSBALES,0 as IssKgs, 0 AS ISSUE,L.PLOTNO,S.SLNAME as SLNAME,A.AREANAME as AREANAME,V.VARNAME as VARNAME,l.godown as godown FROM RM_LOT L LEFT OUTER JOIN FA_SLMAS S ON  L.SUPCD = S.slcode LEFT OUTER JOIN RM_VAR V ON L.VARCODE = V.VARCODE And L.Catcd = V.Catcd LEFT OUTER JOIN RM_AREA A ON L.AREACD = a.AREACODE " & _
                   " WHERE LOTNO = " & Rs("LOTNO") & " AND LOTDT = '" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND DIVCODE = '" & Divcode & "' AND LOTYEAR='" & Year(yfdate) & "' and L.CatCd = '" & Rs("CatCd") & "'  Union all " & _
                   "SELECT B.DIVCODE, B.DOCNO, B.DOCDT DATE, ISNULL(B.ISSTYPE,' ')AS ISSTYPE,B.CATCD, B.LOTNO, 0 AS RECBALES," & _
                   "0 as RecKgs,COUNT(B.BALENO) AS ISSBALES,Sum(B.ACTIssKgs) as IssKgs,1 AS ISSUE,'' as PLOTNO,'' as SLNAME,'' as AREANAME,'' as VARNAME,'' as godown FROM RM_ISSB B " & _
                   "WHERE LOTNO = " & Rs("LOTNO") & " AND LOTDT = '" & Format(Rs("LOTDT"), "YYYY-MM-DD") & "' AND DIVCODE = '" & Divcode & "' and B.CatCd = '" & Rs("CatCd") & "' AND DOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-DD") & "' AND '" & Format(yldate, "yyyy-MM-DD") & "'" & _
                   "GROUP BY DIVCODE, CATCD,LOTNO, DOCNO, DOCDT,ISSTYPE ORDER BY ISSUE,DATE", cn, adOpenStatic, adLockBatchOptimistic
        Do While Not rsIss.EOF
            If rsIss("isstype") = "P" Then
               type1 = "I"
            ElseIf rsIss("isstype") = "Q" Then
                type1 = "II"
            Else
                type1 = " "
            End If
            dblBalance = dblBalance + rsIss("recbales") - rsIss("Issbales")
            dblBalance_Kgs = dblBalance_Kgs + rsIss("recKgs") - rsIss("IssKgs")
            If rsIss.RecordCount > 0 Then
                cn.Execute "insert into RawMaterialTemp2(RwHId,LotDt,MixLtNo,QtyRcvd,KgsRcvd,QtyIss,KgsIss,QtyBal,KgsBal)values(" & id & ",'" & rsIss(2) & "'," & IIf(IsNull(rsIss(1)) = True, 0, rsIss(1)) & "," & IIf(IsNull(rsIss(6)) = True, 0, rsIss(6)) & "," & IIf(IsNull(rsIss(7)) = True, 0, rsIss(7)) & "," & IIf(IsNull(rsIss(8)) = True, 0, rsIss(8)) & "," & IIf(IsNull(rsIss(9)) = True, 0, rsIss(9)) & "," & IIf(IsNull(dblBalance) = True, 0, dblBalance) & "," & IIf(IsNull(dblBalance_Kgs) = True, 0, dblBalance_Kgs) & ")"

            End If
            rsIss.MoveNext
            intervalMinutes = -1
        Loop
        Rs.MoveNext
        intervalMinutes = -1
    Loop
intervalMinutes = -1
Exit Sub
prCotBinCard1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prCotBinCard1 of Form frmRepCottonBinCard", vbInformation, head
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

'Private Sub header2(co As Integer, pg As Integer, pr As Integer)
'Print #A, Space(2); Chr(27) & "E"; CENTRE("COTTON BIN CARD", 47, " "); Chr(27) & "F"
''Print #A,
'Print #A, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(rs("Lotno"), 20, " ") & Chr(27) & "F" & Space(5) & "P.Lot  : " & Padr(rs("PLOTNO"), 12, " ")
'Print #A, Space(3); "Party Name : " & Padr(rs("slname"), 50, " ")
'Print #A, Space(3); "Station    : " & Padr(rs("AREANAME"), 20, " ") & Space(5) & Padr("status : " & "O.K ", 12, " ")
'Print #A, Space(3); "VAR        : " & Padr(rs("VARNAME"), 20, " ") & Space(5) & "Press  : " & Padr(pr, 12, " ")
'Print #A, Space(3); "P.NO.      : " & Padr(rs2("contno"), 20, " ") & Space(5) & "Godown : " & Padr(rs("Godown"), 12, " ")
'Print #A, Space(2); Chr(18); Chr(14); Padr("Mill Lot : " & rs("Lotno"), 20, " "); Space(2) & Padr("Party Name : " & rs("slname"), 40, " ") & Space(1) & Padr("Status : " & "", 50, " ") & Chr(18)
'Print #A, Space(2); Chr(18); Padr("P.LOT    : " & rs("PLOTNO"), 20, " ") & Space(2) & Padr("Station    : " & rs("AREANAME") & "", 40, " ") & Space(1) & Padr("Press : " & pr, 50, " ") & Chr(18)
'Print #A, Space(2); Chr(18); Padr("VAR      : " & rs("VARNAME"), 20, " ") & Space(2) & Padr("P.NO.      : " & "", 40, " ") & Space(1) & Padr("Godwn : " & rs("Godown"), 50, " ") & Chr(18)
'co = co + 8
'''            Call prHeader(intLno)
'''            End If
'End Sub

'Public Sub firstheader()
'End Sub
'Print #A, Space(2); Chr(27) & "E"; Padl(Left(Trim(DIVNAME), 47) & IIf(IsNull(RS1("city")), " ", ", " & Trim(Left(RS1("city"), 4))), 47, " "); Chr(27) & "F"
'            For co = 20 To 50 - rsIss.RecordCount - 1
'            Print #A, Space(2); Chr(27) & "E"; CENTRE("COTTON BIN CARD", 47, " "); Chr(27) & "F"
'            Print #A, Space(3); "Mill Lot   : " & Chr(27) & "E" & Padr(rs("Lotno"), 20, " ") & Chr(27) & "F" & Space(5) & "P.Lot  : " & Padr(rs("PLOTNO"), 12, " ")
'            Print #A, Space(3); "Party Name : " & Padr(rs("slname"), 50, " ")
'            Print #A, Space(3); "Station    : " & Padr(rs("AREANAME"), 20, " ") & Space(5) & Padr("status : " & "O.K ", 12, " ")
'            Print #A, Space(3); "VAR        : " & Padr(rs("VARNAME"), 20, " ") & Space(5) & "Press  : " & Padr(pr, 12, " ")
'            Print #A, Space(3); "P.NO.      : " & Padr(rs2("contno"), 20, " ") & Space(5) & "Godown : " & Padr(rs("Godown"), 12, " ")
'           'Print #A, Space(2); Chr(18); Chr(14); Padr("Mill Lot : " & Rs("Lotno"), 20, " "); Space(2) & Padr("Party Name : " & Rs("slname"), 40, " ") & Space(1) & Padr("Status : " & "", 50, " ") & Chr(18)
'           'Print #A, Space(2); Chr(18); Padr("P.LOT    : " & Rs("PLOTNO"), 20, " ") & Space(2) & Padr("Station    : " & Rs("AREANAME") & "", 40, " ") & Space(1) & Padr("Press : " & pr, 50, " ") & Chr(18)
'''            'Print #A, Space(2); Chr(18); Padr("VAR      : " & Rs("VARNAME"), 20, " ") & Space(2) & Padr("P.NO.      : " & "", 40, " ") & Space(1) & Padr("Godwn : " & Rs("Godown"), 50, " ") & Chr(18)
'           intlno = intlno + 8
'            Call prHeader(intlno)
'            Next
'
'                        'Print #A, Space(2) & Chr(195) & String(10, Chr(196)) & Chr(197); String(7, Chr(196)) & Chr(197); String(11, Chr(196)) & Chr(197); String(10, Chr(196)) & Chr(197); String(9, Chr(196)) & Chr(180)
'                        'Print #A, Space(2) & Chr(192) & String(10, Chr(196)) & Chr(193); String(7, Chr(196)) & Chr(193); String(11, Chr(196)) & Chr(193); String(10, Chr(196)) & Chr(193); String(9, Chr(196)) & Chr(217)
'                        'if intlno
Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
intervalMinutes = -1
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form frmRepCottonBinCard", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form frmRepCottonBinCard", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form frmRepCottonBinCard", vbInformation, head
Screen.MousePointer = 0
End Sub

