VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form wastesalesrep 
   Caption         =   "Waste Sales Report"
   ClientHeight    =   6675
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9645
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6675
   ScaleWidth      =   9645
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command2 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   5355
      TabIndex        =   7
      Top             =   4440
      Width           =   1155
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   430
      Left            =   3840
      TabIndex        =   6
      Top             =   4440
      Width           =   1035
   End
   Begin VB.Frame Frame1 
      Height          =   2655
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   6975
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   3240
         TabIndex        =   9
         Top             =   1680
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Format          =   58785793
         CurrentDate     =   39269
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   3240
         TabIndex        =   8
         Top             =   960
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   661
         _Version        =   393216
         Format          =   58785793
         CurrentDate     =   39269
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   3240
         TabIndex        =   3
         Top             =   1680
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   3240
         TabIndex        =   2
         Top             =   960
         Width           =   2535
         _ExtentX        =   4471
         _ExtentY        =   556
         _Version        =   393216
         Text            =   " "
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   1440
         TabIndex        =   5
         Top             =   1680
         Width           =   795
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   1440
         TabIndex        =   4
         Top             =   960
         Width           =   1050
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Waste Sales Report"
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
         Height          =   350
         Left            =   0
         TabIndex        =   1
         Top             =   120
         Width           =   6975
      End
   End
End
Attribute VB_Name = "wastesalesrep"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim RESULT As Recordset
Dim Pg As Integer
Dim c As Integer
Dim rs1 As Recordset
Dim a As Integer
Dim Rep As Report.ReportView

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

 Pg = 1
 c = 0
 Close
 a = FreeFile
 Close #a
 Open "C:\WASTE.TXT" For Output As #a
 Set Rs = New Recordset
 Rs.Open "SELECT A.DATE,A.INV_NO,A.INV_TYPE,A.DESPATCH_TO,A.CESSNO,A.CUST_CODE,(CASE WHEN ISNULL(A.CESSNO,0) > 0 THEN SUM(ISNULL(b.VALUE,0)) ELSE 0 END) AS WITHCESSVALUE, " & _
         "(CASE WHEN ISNULL(A.CESSNO,0) > 0 THEN SUM(ISNULL(B.NETT_KGS,0)) ELSE 0 END) AS WITHCESSKGS,(CASE WHEN ISNULL(A.CESSNO,0) = 0 THEN SUM(ISNULL(b.VALUE,0)) ELSE 0 END) AS WITHOUTCESSVALUE, " & _
         "(CASE WHEN ISNULL(A.CESSNO,0) = 0 THEN SUM(ISNULL(B.NETT_KGS,0)) ELSE 0 END) AS WITHOUTCESSKGS,C.NAME,E.SLNAME FROM IG_INVHD A,IG_INVDT B,IG_AREA C,IG_PRODUCT D,FA_SLMAS E  " & _
         "WHERE A.INV_NO=B.INV_NO AND A.INV_TYPE=B.INV_TYPE AND A.DIVCODE=B.DIVCODE AND A.DESPATCH_TO=C.AREA_CODE AND B.PRODUCT_CODE=D.PRODUCT_CODE AND A.CUST_CODE=E.SLCODE " & _
         "AND A.DATE BETWEEN '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' AND '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' AND D.RG1<>'Y' AND A.INV_TYPE='WS' GROUP BY A.DATE,A.INV_NO,A.INV_TYPE,A.DESPATCH_TO,A.CESSNO,C.NAME,E.SLNAME,A.CUST_CODE ", DB, adOpenStatic, adLockReadOnly
         
 If Rs.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Exit Sub
 End If
   valtot = 0
   KGSTOT = 0
   Call header(Pg, c)
   c = 9
   Do While Not Rs.EOF
        Print #a, Space(5); Padr(Format(Rs("date"), "DD/MM/YY"), 8, " "); Space(2); Padr(Rs("NAME"), 15, " "); Space(2); Padr(Rs("slname"), 35, " "); Space(2); Padl(Rs("INV_NO"), 10, " "); Space(2); Padl(INF(Rs("WITHOUTCESSKGS"), 3), 12, " "); Space(2); Padl(INF(Rs("WITHOUTCESSVALUE"), 2), 11, " "); Space(2); Padl(INF(Rs("WITHCESSKGS"), 3), 11, " "); Space(2); Padl(INF(Rs("WITHCESSVALUE"), 2), 14, " "); Space(1); Padl(Rs("CESSNO"), 11, " ")
        c = c + 1
        valtot = valtot + Rs("WITHCESSVALUE")
        KGSTOT = KGSTOT + Rs("WITHCESSKGS")
        If c > 50 Then
           Print #a, Space(5) & String(142, "-")
           Print #a, Chr(12)
           c = 0
           Pg = Pg + 1
           Call header(Pg, c)
           c = 9
        End If
    Rs.MoveNext
  Loop
 Print #a, Space(5) & String(142, "-")
 Print #a, Space(88) & Chr(27) & "E" & " *** TOTAL ***      "; Padl(INF(KGSTOT, 2), 11, " "); Space(2); Padl(INF(valtot, 2), 14, " "); Chr(27) & "F"
 Print #a, Space(5) & String(142, "-")
 Print #a, Space(5)
 Print #a, Space(5); Chr(18)
 CESSPer = valtot / 100
 Print #a, Space(51); "TOTAL SALES  : "; Padl(INF(valtot, 2), 15, " ")
 Print #a, Space(5)
 Print #a, Space(51); "CESS 1 %     : "; Padl(INF(CESSPer, 2), 15, " ")
 Print #a, Chr(12)
 Close #a
 Set Rep = New Report.ReportView
 Open "C:\WASTE.BAT" For Output As #a
 Print #a, "CD\"
 Print #a, "TYPE WASTE.TXT>PRN"
 Close #a
 Rep.txtfile = "C:\WASTE.TXT"
 Rep.Batfile = "C:\WASTE.BAT"

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form wastesalesrep", vbInformation, head
Screen.MousePointer = 0
 
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

    Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form wastesalesrep", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

 Set DB = New Connection
 DB.CursorLocation = adUseClient
 DB.Provider = "MSDATASHAPE"
 DB.Open connectstring
 DTPicker1.MinDate = yfdate
 DTPicker2.MinDate = yfdate
 DTPicker1.Value = pdate
 DTPicker2.Value = pdate
 
' Set RS = New Recordset
' RS.Open "SELECT DISTINCT A.DATE FROM IG_INVHD A,IG_INVDT B,IG_AREA C,IG_PRODUCT D,FA_SLMAS E WHERE A.INV_NO=B.INV_NO AND A.INV_TYPE=B.INV_TYPE " & _
'         "AND A.DIVCODE=B.DIVCODE AND A.DESPATCH_TO=C.AREA_CODE AND B.PRODUCT_CODE=D.PRODUCT_CODE AND A.CUST_CODE=E.SLCODE " & _
'         "AND A.DATE BETWEEN '" & Format(fnyfdate(Date), "YYYY-MM-DD") & "' AND '" & Format(fnyldate(Date), "YYYY-MM-DD") & "' AND D.RG1<>'Y' AND A.INV_TYPE='WS' ORDER BY DATE", DB, adOpenStatic, adLockReadOnly
' If RS.RecordCount = 0 Then
'    MsgBox "No Records Found", vbInformation, head
'    Exit Sub
' End If
' Set DataCombo1.RowSource = RS
' DataCombo1.ListField = "date"
' Set DataCombo2.RowSource = RS
' DataCombo2.ListField = "date"
' RS.MoveFirst
' DataCombo1.Text = RS(0)
' RS.MoveLast
' DataCombo2.Text = RS(0)

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form wastesalesrep", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub header(Pg As Integer, c As Integer)
Dim ADD1 As String
On Error GoTo header_Error

Set rs1 = New Recordset
rs1.Open "SELECT * FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockReadOnly
ADD1 = Mid$(rs1("ADD2"), 1, InStr(1, rs1("ADD2"), "(") - 1)
Print #a,
Print #a, Space(3); Chr(18) & Chr(27) & "E" & CENTRE("M/s " & rs1("DIVNAME"), 85, " ") & Chr(27) & "F"
Print #a, Space(3) & CENTRE(ADD1, 85, " ")
Print #a,
Print #a, Space(3); "WASTE SALES REPORT FROM "; Padr(Format(DTPicker1.Value, "DD/MM/YY"), 8, " "); " TO "; Padr(Format(DTPicker2.Value, "DD/MM/YY"), 8, " "); Space(28); "Pg.No :"; Padl(Pg, 3, " "); Chr(15)
Print #a, Space(5) & String(142, "-")
Print #a, Space(5); " DATE     PLACE            PARTY NAME                              BILL NO    WITHOUT PAYMENT OF CESS    CESS WITH      PAID VALUE   PERMIT NO"
Print #a, Space(5); "                                                                              WGT IN KGS  VALUE IN RS       IN KGS         IN RS              "
Print #a, Space(5) & String(142, "-")

Exit Sub
header_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure header of Form wastesalesrep", vbInformation, head
Screen.MousePointer = 0
End Sub
