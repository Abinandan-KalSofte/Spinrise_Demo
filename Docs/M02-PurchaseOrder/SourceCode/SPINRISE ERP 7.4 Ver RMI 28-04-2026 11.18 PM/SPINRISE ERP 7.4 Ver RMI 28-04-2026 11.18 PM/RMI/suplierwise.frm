VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form suplierwise 
   Caption         =   "SUPLIER WISE"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   PaletteMode     =   1  'UseZOrder
   ScaleHeight     =   26901.41
   ScaleMode       =   0  'User
   ScaleWidth      =   38686.15
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000001&
      Height          =   4215
      Left            =   1200
      TabIndex        =   0
      Top             =   1680
      Width           =   6135
      Begin MSDataListLib.DataCombo datacombo2 
         Height          =   315
         Left            =   2400
         TabIndex        =   10
         Top             =   2760
         Width           =   3495
         _ExtentX        =   6165
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   2400
         TabIndex        =   8
         Top             =   1320
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   3735553
         CurrentDate     =   39008
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   2400
         TabIndex        =   7
         Top             =   720
         Width           =   1935
         _ExtentX        =   3413
         _ExtentY        =   661
         _Version        =   393216
         Format          =   3735553
         CurrentDate     =   39008
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2400
         TabIndex        =   6
         Top             =   2040
         Width           =   3495
         _ExtentX        =   6165
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin VB.CommandButton Command2 
         Caption         =   "CANCEL"
         Height          =   375
         Left            =   3720
         TabIndex        =   5
         Top             =   3480
         Width           =   1335
      End
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   375
         Left            =   1320
         TabIndex        =   4
         Top             =   3480
         Width           =   1335
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H80000007&
         Caption         =   "SUPPLIERWISE ARRIVAL"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   375
         Left            =   0
         TabIndex        =   11
         Top             =   120
         Width           =   6135
      End
      Begin VB.Label Label4 
         Caption         =   "TO SUPPLIER NAME"
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Top             =   2760
         Width           =   1695
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "FROM  SUPPLIER NAME"
         Height          =   375
         Left            =   120
         TabIndex        =   3
         Top             =   2040
         Width           =   1935
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   " TO   DATE"
         Height          =   195
         Left            =   120
         TabIndex        =   2
         Top             =   1440
         Width           =   840
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "FROM DATE "
         Height          =   195
         Left            =   120
         TabIndex        =   1
         Top             =   840
         Width           =   960
      End
   End
End
Attribute VB_Name = "suplierwise"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim SUPL As Recordset
Dim SUP As Connection
Dim u As Date
Dim t As Date
Dim m As Integer
Dim n As Date
Dim O As Variant
Dim rs As Recordset
Dim tot As Recordset











Private Sub DataList1_Click()

End Sub

Private Sub Command1_Click()
  Screen.MousePointer = 11
    Set SUP = New Connection
    SUP.Open connectstring
    Set rep = New Report.ReportView
    Y = 0
    pg = 1
    co = 0
    Close #a
    a = FreeFile
    Open "c:\balerep.txt" For Output As #a
    Print #a, Chr(18)
    u = Format(DTPicker1.Value, "DD/mm/YYYY")
    t = Format(DTPicker2.Value, "DD/mm/YYYY")
    Set SUPL = New Recordset
    ''''SUPL.Open "SELECT B.SLNAME,A.ARRNO,A.ARRDATE,A.CONTNO,A.CONTDT,C.ORDQTY,A.QUANTITY,A.ACCQTY,A.REJQTY FROM RM_ARRIVAL A,FA_SLMAS B,RM_CONT C WHERE A.SUPCD=B.SLCODE AND A.SUPCD=C.SUPCD AND C.CONTDT=A.CONTDT  AND A.ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' AND A.SUPCD+'-'+B.SLNAME=  '" & DataCombo1.Text & "' ", SUP, adOpenStatic
  ''''  SUPL.Open "SELECT A.CONTNO,A.CONTDT,A.ORDQTY,B.SLNAME FROM RM_CONT A,FA_SLMAS B, RM_ARRIVAL C WHERE A.SUPCD=B.SLCODE  AND A.CONTNO IN (SELECT CONTNO FROM RM_ARRIVAL WHERE ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "') AND C.SUPCD between   substring('" & DataCombo1.Text & "',1, 7 )  and  substring( '" & datacombo2.Text & "', 1, 7 ) GROUP BY A.CONTNO,B.SLNAME,A.CONTDT ,A.ORDQTY ", SUP, adOpenStatic
       SUPL.Open "SELECT A.CONTNO,A.CONTDT,A.ORDQTY,B.SLNAME,A.VARCODE FROM RM_CONT A,FA_SLMAS B, RM_ARRIVAL C WHERE A.SUPCD=B.SLCODE and c.supcd=b.slcode  AND A.CONTNO IN (SELECT CONTNO FROM RM_ARRIVAL WHERE ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "') AND C.SUPCD+'-'+b.slname  between   '" & DataCombo1.Text & "'  and   '" & datacombo2.Text & "' GROUP BY A.CONTNO,B.SLNAME,A.CONTDT ,A.ORDQTY,c.supcd ,A.ORDQTY ,A.VARCODE order by c.supcd ", SUP, adOpenStatic
    If SUPL.BOF Then
        MsgBox "No records found for this month", vbInformation, head
        Close #a
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Print #a, Space(5); CENTRE(DIVNAME, 80, " ")
    Print #a, Space(5)
    Print #a, Space(5) & "SUPPLIER WISE ARRIVAL " & Space(3) & "FROM" & Space(1) & Format(u, "DD/MM/YYYY") & Space(1) & "TO" & Space(1) & Format(t, "DD/MM/YYYY")
    Print #a, Space(5) & String(86, "-")
    
    Print #a, Space(5) & "CONTRACTNO" & Space(3) & "CONTRACTDATE" & Space(4) & "VAREITY" & Space(10) & "SUPPLIER NAME" & Space(13) & "ORDER QUANTITY"
    Print #a,
    Print #a, Space(15) & "ARRIVALNO " & Space(9) & "ARRIVALDATE " & Space(16) & "ARRIVAL QUANTITY"
    Print #a, Space(5) & String(86, "-")
    SUPL.MoveFirst
    Do While Not SUPL.EOF
   
    Print #a, Space(9) & Padr(SUPL(0), 4, " ") & Space(6) & Padr(Format(SUPL(1), "DD/MM/YYYY"), 10, " ") & Space(5) & Padr(SUPL(4), 8, " ") & Space(1) & Padr(SUPL(3), 37, " ") & Space(1) & Padl(SUPL(2), 10, " ")
    Print #a,
    
    Set rs = New Recordset
      
    ''''rs.Open "SELECT A.ARRNO,A.ARRDATE,A.QUANTITY FROM RM_ARRIVAL A WHERE A.CONTNO='" & SUPL(0) & "' AND A.CONTDT='" & Format(SUPL(1), "yyyy/mm/dd") & "' AND A.ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "'", SUP, adOpenStatic
    rs.Open "SELECT A.ARRNO,A.ARRDATE,A.QUANTITY FROM RM_ARRIVAL A ,fa_slmas b WHERE A.CONTNO='" & SUPL(0) & "'  and a.supcd=b.slcode and b.slname= '" & SUPL(3) & "' AND A.CONTDT='" & Format(SUPL(1), "yyyy/mm/dd") & "' AND A.ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "'", SUP, adOpenStatic
    If rs.RecordCount > 0 Then
    
   rs.MoveFirst
End If
   
    
    Do While Not rs.EOF
    
        Print #a, Space(15) & Padr(rs(0), 6, " ") & Space(14) & Padl(rs(1), 10, " ") & Space(24) & Padl(rs(2), 10, " ")
        rs.MoveNext
        
        
     
    Loop
    
    Set tot = New Recordset
      
      tot.Open " select sum(a.quantity) from  RM_ARRIVAL A ,fa_slmas b WHERE A.CONTNO='" & SUPL(0) & "'  and a.supcd=b.slcode and b.slname= '" & SUPL(3) & "' AND A.CONTDT='" & Format(SUPL(1), "yyyy/mm/dd") & "' AND A.ARRDATE BETWEEN '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "'", SUP, adOpenStatic
    
    
    Print #a, Space(75) & String(5, "-")
    
     Print #a, Space(20) & "SUPPLIER WISE TOTAL  " & Space(28) & Padl(tot(0), 10, " ")
     
      Print #a, Space(75) & String(5, "-")
     
      
      Print #a,
      Print #a,
      SUPL.MoveNext
     
    Loop
    Print #a, Space(5); String(86, "-")
    Print #a, Chr(12)
    Close #a
    Open "c:\balerep.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "type balerep.txt > prn"
    Close #a
    rep.txtfile = "c:\balerep.txt"
    rep.Batfile = "c:\balerep.bat"
    Screen.MousePointer = 0
End Sub



Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
''MaskEdBox1.Text = Format(DTPicker1.Value, "DD/MM/YYYY")
Set SUP = New Connection
    SUP.Open connectstring
    Set SUPL = New Recordset
    SUPL.Open "SELECT  distinct A.SUPCD+'-'+B.SLNAME AS SNAME FROM RM_ARRIVAL A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE    ", SUP, adOpenStatic, adLockReadOnly
    Set DataCombo1.RowSource = SUPL
    DataCombo1.ListField = "SNAME"
    Set datacombo2.RowSource = SUPL
      datacombo2.ListField = "SNAME"
    If Not SUPL.EOF Then
        DataCombo1.Text = SUPL(0)
        datacombo2.Text = SUPL(0)
   
    End If




End Sub





