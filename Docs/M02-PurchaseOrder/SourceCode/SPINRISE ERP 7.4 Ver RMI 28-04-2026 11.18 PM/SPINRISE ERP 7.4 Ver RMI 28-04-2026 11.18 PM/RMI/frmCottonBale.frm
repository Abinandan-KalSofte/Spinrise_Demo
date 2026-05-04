VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmCottonBale 
   Caption         =   "Cotton Bales Receipt"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame fraHeader 
      Height          =   3255
      Left            =   3135
      TabIndex        =   0
      Top             =   1455
      Width           =   5055
      Begin MSDataListLib.DataCombo dcbdate 
         Height          =   315
         Left            =   2280
         TabIndex        =   9
         Top             =   705
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.CommandButton cmdCancel 
         Caption         =   "&Cancel"
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
         Left            =   2535
         TabIndex        =   8
         Top             =   2430
         Width           =   1350
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
         Left            =   840
         TabIndex        =   7
         Top             =   2430
         Width           =   1350
      End
      Begin MSDataListLib.DataCombo dcbToLotNo 
         Height          =   360
         Left            =   2295
         TabIndex        =   1
         Top             =   1635
         Width           =   1350
         _ExtentX        =   2381
         _ExtentY        =   635
         _Version        =   393216
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
         Left            =   2295
         TabIndex        =   2
         Top             =   1125
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   635
         _Version        =   393216
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
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2280
         TabIndex        =   10
         Top             =   720
         Visible         =   0   'False
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   609
         _Version        =   393216
         Format          =   62521345
         CurrentDate     =   37578
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
         Left            =   855
         TabIndex        =   6
         Top             =   1260
         Width           =   1110
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
         Left            =   840
         TabIndex        =   5
         Top             =   1740
         Width           =   930
      End
      Begin VB.Label lblFrameHeader 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Cotton Bales Receipt"
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
         Left            =   60
         TabIndex        =   4
         Top             =   105
         Width           =   4950
      End
      Begin VB.Label lblDate 
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
         Height          =   195
         Left            =   855
         TabIndex        =   3
         Top             =   720
         Width           =   420
      End
   End
End
Attribute VB_Name = "frmCottonBale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Rep As Report.ReportView

Dim a As Integer
Dim rsLot As Recordset
Dim GC As New Recordset
Dim rsdate As Recordset
Dim GNAME As String
Dim strQuery As String
Private Sub Cmdcancel_Click()
Unload Me
End Sub

Private Sub cmdReport_Click()
Screen.MousePointer = 11
Dim lotdate As String

dcbdate.Text = DTPicker1.value '''''''''''

lotdate = Format(dcbdate.Text, "yyyy/mm/dd")
Dim head As String
Dim brokname As String
Dim address As String
Dim lotbale As Recordset
Dim ADD As Recordset
Dim brok As Recordset
Dim area As String
Dim PAGE As Integer
PAGE = 0
If val(dcbFromLotNo.Text) <> 0 And val(dcbToLotNo.Text) <> 0 Then
    If val(dcbFromLotNo.Text) > val(dcbToLotNo.Text) Then
        MsgBox "From Lot No should not be greater than To Lot No", vbInformation
        Me.dcbFromLotNo.SetFocus
        Me.MousePointer = 0
        Exit Sub
    ElseIf val(dcbToLotNo.Text) < val(dcbFromLotNo.Text) Then
        MsgBox "To Lot No should be greater than From Lot No", vbInformation
        Me.MousePointer = 0
        Me.dcbToLotNo.SetFocus
        Exit Sub
    End If
End If

Set lotbale = New Recordset
lotbale.Open "select a.lotno,a.plotno,a.supcd,a.ratecy,a.bales,a.varcode,a.brkcd,a.plotno," & _
              "a.arrdt,a.freght,b.prno,b.contno,b.lorrynos,b.carcode,c.slname,d.carname,f.areaname," & _
              "e.varname,ISNULL(GCNO,0)AS GCNO from rm_lot a,fa_slmas c,rm_arrival b,po_car d,rm_var e,rm_area f where a.arrno=b.arrno " & _
              "and a.lotno between '" & dcbFromLotNo & "' and '" & dcbToLotNo & "' and a.arrdt=b.arrdate and a.divcode=b.divcode " & _
              "and a.catcd=b.catcd and a.lotdt='" & lotdate & "' and a.divcode='" & Divcode & "'" & _
              " and a.supcd=c.slcode and b.carcode*=d.carcode and " & _
              "a.varcode*=e.varcode and b.areacode*=f.areacode", Cn, adOpenDynamic, adLockBatchOptimistic
Set ADD = New Recordset
    ADD.Open "SELECT DIVNAME,ADD1,ADD2,ADD3,CITY,PINCODE,PHONE1,FAX FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", Cn, adOpenDynamic, adLockBatchOptimistic
    address = Trim(ADD!ADD1 & "") + Trim(ADD!add2 & "") + Trim(ADD!add3 & "") + Trim(ADD!CITY & "") + "-" + Trim(ADD!PINCODE & "") + " Ph:" + Trim(ADD!phone1 & "") + " Fax." + Trim(ADD!fax & "")
    
 Set Rep = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    Open "C:\CottonBaleReceipt.txt" For Output As #a
If lotbale.RecordCount <= 0 Then
    Screen.MousePointer = 0
    MsgBox " No Records Found", vbInformation, "Cotton Bale Receipt"
    Exit Sub
Else
  lotbale.MoveFirst
  Do While Not lotbale.EOF
    If lotbale!areaname = " " Or lotbale!areaname = Null Then
        area = Space(18)
    Else
        area = Padr(lotbale!areaname, 18, " ")
    End If

    Set brok = New Recordset
    brok.Open "select slname from fa_slmas where slcode='" & lotbale!brkcd & "'", Cn, adOpenDynamic, adLockBatchOptimistic
    If brok.RecordCount > 0 Then
        brokname = brok(0)
    Else
        brokname = ""
    End If
    Set GC = New Recordset
    GC.Open "select GHEAD from RM_GINNING where Gcode='" & val(lotbale!GCNO) & "'", Cn, adOpenDynamic, adLockBatchOptimistic
    If GC.RecordCount > 0 Then
    GNAME = UCase(GC(0))
    Else
    GNAME = ""
    End If
    Print #a,
    Print #a,
    Print #a, Chr(27) + "E" + CENTRE(DIVNAME, 85, " ") + Chr(27) + "F" + Chr(18)
    Print #a, 'CENTRE(address, 85, " ")
    Print #a,
    Print #a, Chr(27) + "E" + CENTRE("COTTON BALES RECEIPTS - ACKNOWLEDGEMENTS", 85, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + "MILL LOT NO     : " + Padr(lotbale!LOTNO, 18, " ") + Space(15) + "C.T.R DATE  : " + Padr(Format(lotbale!ARRDT, "DD/MM/YY"), 14, " ")
    Print #a, Space(5) + "P.O. NO.        : " + Padr(lotbale!contno, 50, " ")
    Print #a, Space(5) + "SUPPLIER NAME   : " + Padr(lotbale!Slname, 50, " ")
    Print #a, Space(5) + "CANDY           : " + Padr(INF(lotbale!RATECY, 0), 18, " ") + Space(15) + "PARTY LOT NO: " + Padr(lotbale!PlotNo, 18, " ")
    Print #a, Space(5) + "No. OF BALES    : " + Padr(lotbale!bales, 18, " ") + Space(15) + "STATION     : " + area
    Print #a, Space(5) + "GINNING         : " + Padr(GNAME, 18, " ") + Space(15) + "VARIETY     : " + Padr(lotbale!VarName, 20, " ")
    Print #a, Space(5) + "BALECHECKED     : " + Space(18) + Space(15) + "MOISTURE    : "
    Print #a, Space(5) + "BROKER          : " + Padr(brokname, 70, " ")
    Print #a, Space(5) + "P.R. No         : " + Padr(lotbale!PRNO, 50, " ")
    Print #a, Space(5) + "TRANSPORT       : " + Padr(lotbale!carname, 18, " ")
    Print #a, Space(5) + "LORRY NO        : " + Padr(lotbale!LORRYNOS, 18, " ")
    Print #a, Space(5) + "LORRY FREIGHT   : " + Padr(INF(lotbale!freght, 2), 18, " ")
    If lotbale!freght > 0 Then
        Print #a, Space(5) + "(Rs " + Padr(Num_To_Word(lotbale!freght), 75, " ") + ")"
    Else
        Print #a, Space(5) + "(Rs " + Space(75) + ")"
    End If
    Print #a,
    Print #a,
    Print #a,
    Print #a, Space(8) + "COTTON CLERK" + Space(8) + "LORRY DRIVER" + Space(8) + "CASHIER" + Space(8) + "OAI"
    If PAGE = 0 Then
        Print #a,
        Print #a,
        Print #a,
        Print #a,
        PAGE = 1
    ElseIf PAGE = 1 Then
        PAGE = 0
        Print #a, Chr(12)
    End If
lotbale.MoveNext
Loop
    Close #a
    a = FreeFile
    Open "c:\CottonBaleReceipt.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type CottonBaleReceipt.txt>prn"
    Close #a
    Rep.txtfile = "c:\CottonBaleReceipt.txt"
    Rep.Batfile = "c:\CottonBaleReceipt.bat"
End If
Screen.MousePointer = 0
End Sub

Private Sub dcbdate_change()
    Set rsLot = New Recordset
    strQuery = "select distinct lotno from rm_lot where divcode = '" & Divcode & "' and lotdt='" & Format(Me.dcbdate.Text, "YYYY-MM-DD") & "'"
    If Trim(dcbdate.Text) <> "" Then
        strQuery = strQuery & "and (REJFLG = 'N' OR REJDT > '" & Format(dcbdate.Text, "YYYY-MM-DD") & "') ORDER BY LOTNO"
    Else
        strQuery = strQuery & "and REJFLG = 'N' ORDER BY LOTNO"
    End If
    rsLot.Open strQuery, Cn, adOpenStatic, adLockBatchOptimistic
    If rsLot.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = Nothing
        Set dcbFromLotNo.RowSource = rsLot
        Me.dcbFromLotNo.ListField = "lotno"
        Set dcbToLotNo.RowSource = Nothing
        Set dcbToLotNo.RowSource = rsLot
        Me.dcbToLotNo.ListField = "lotno"
        rsLot.MoveFirst
        Me.dcbFromLotNo.Text = rsLot("lotno")
        rsLot.MoveLast
        Me.dcbToLotNo.Text = rsLot("lotno")
    End If
End Sub

Private Sub DTPicker1_Change()
If DTPicker1.value < yfdate Then
    DTPicker1.value = yfdate
    dcbdate.Text = DTPicker1.value
Else
    dcbdate.Text = DTPicker1.value
End If

End Sub

Private Sub Form_Load()
openconnection
Set rsdate = New Recordset
    strQuery = "select distinct lotdt from rm_lot where divcode='" & Divcode & "' and  REJFLG = 'N' ORDER BY LOTDt"
    rsdate.Open strQuery, Cn, adOpenDynamic, adLockBatchOptimistic
    If rsdate.RecordCount > 0 Then
        Set dcbdate.RowSource = rsdate
        dcbdate.ListField = "lotdt"
        Set dcbdate.RowSource = rsdate
        Me.dcbdate.ListField = "lotdt"
        rsdate.MoveFirst
        Me.dcbdate.Text = rsdate("lotdt")
    Else
        MsgBox "No Records Found", vbInformation, "Cotton Bale Receipt-RMI"
        Exit Sub
    End If
    
    ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.MaxDate = pdate
    DTPicker1.value = pdate
    DTPicker1.Left = dcbdate.Left
    DTPicker1.Width = dcbdate.Width
    DTPicker1.Top = dcbdate.Top
   ''''''''''''''''''''''
    
    
Set rsLot = New Recordset
    strQuery = "select distinct lotno from rm_lot where divcode = '" & Divcode & "' and lotdt='" & Format(Me.dcbdate.Text, "YYYY-MM-DD") & "'"
    If Trim(Me.dcbdate.Text) <> "" Then
        strQuery = strQuery & "and (REJFLG = 'N' OR REJDT > '" & Format(Me.dcbdate.Text, "YYYY-MM-DD") & "') ORDER BY LOTNO"
    Else
        strQuery = strQuery & "and REJFLG = 'N' ORDER BY LOTNO"
    End If
    rsLot.Open strQuery, Cn, adOpenStatic, adLockBatchOptimistic
    If rsLot.RecordCount > 0 Then
        Set dcbFromLotNo.RowSource = rsLot
        Me.dcbFromLotNo.ListField = "lotno"
        Set dcbToLotNo.RowSource = rsLot
        Me.dcbToLotNo.ListField = "lotno"
        rsLot.MoveFirst
        Me.dcbFromLotNo.Text = rsLot("lotno")
        rsLot.MoveLast
        Me.dcbToLotNo.Text = rsLot("lotno")
    End If

End Sub
