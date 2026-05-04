VERSION 5.00
Begin VB.Form WasteLedger 
   ClientHeight    =   6270
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8625
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   6270
   ScaleWidth      =   8625
   WindowState     =   2  'Maximized
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
      Height          =   375
      Left            =   5070
      TabIndex        =   2
      Top             =   4500
      Width           =   960
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Default         =   -1  'True
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
      Left            =   3885
      TabIndex        =   1
      Top             =   4500
      Width           =   960
   End
   Begin VB.Frame Frame1 
      Height          =   2430
      Left            =   2520
      TabIndex        =   0
      Top             =   1635
      Visible         =   0   'False
      Width           =   5040
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "WasteLedger.frx":0000
         Left            =   2010
         List            =   "WasteLedger.frx":0002
         TabIndex        =   7
         Top             =   900
         Width           =   2265
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   2010
         TabIndex        =   5
         Top             =   1590
         Width           =   2265
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Month"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   870
         TabIndex        =   6
         Top             =   930
         Width           =   630
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   870
         TabIndex        =   4
         Top             =   1627
         Width           =   750
      End
      Begin VB.Label Label6 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Waste - Varieywise Stock Ledger"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   3
         Top             =   120
         Width           =   4965
      End
   End
End
Attribute VB_Name = "WasteLedger"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim RecRs As Recordset
Dim issrs As Recordset
Dim issless As Recordset
Dim Oprs As Recordset
Dim TEMP As Recordset
Dim Rep As Report.ReportView
Dim f As Integer
Dim Date1, Date2, date3 As String
Dim totoprecbale As Double
Dim month_value1 As String
Dim totoprecborah  As Double
Dim totoprectot  As Double
Dim totoprectotkg  As Double
Dim Adjustment As Double
Dim AdjRs As New Recordset
Dim too As Double
Dim too1 As Double
Dim monthmm As String
Dim yearyy As String
Dim var As String

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

        month_value = Combo1.Text
        var = Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)
        Set Rep = New Report.ReportView
        pagein = 0
        Adjustment = 0
        cont = 0
        f = FreeFile
        cnt = 0
        too = 0
        monthmm = 0
        month_value1 = month_value
        Close
        Open KALFOLDERDATA + "\formIV.txt" For Output As #f
        Call monval1(CStr(month_value))
        Set Rs = New Recordset
        Rs.Open "select  distinct docdt from rm_waste where docdt between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' group by docdt", Cn, adOpenStatic, adLockBatchOptimistic
        date3 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
        dayval = 1
        
        Call date11
        date3 = yearyy & "/" & monthmm & "/" & dayval
        date3 = Format(date3, "dd-mm-yyyy")
        date3 = Format(fnmldate(date3), "YYYY-MM-DD")
        Do While Not IsDate(date3)
            Call date11
            date3 = yearyy & "/" & monthmm & "/" & dayval - 1
        Loop
        
        If Table_Exists("wasteledger") Then
            DB.Execute "drop table wasteledger"
        End If
        
        DB.Execute "Create table Wasteledger (date1 datetime,Opkgs numeric(8),arrkgs numeric(8),isskgs numeric(8),closekgs numeric(8))"
        
        Set issless = New Recordset
        'issless.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as Isskgs from RM_WISSUE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='01'  AND A.DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  and a.docdt<='" & Format(date3, "YYYY-MM-DD") & "'  AND A.WCODE='" & var & "'", DB, adOpenStatic
        issless.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as Isskgs from RM_WISSUE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='" & Divcode & "' AND A.WCODE='" & var & "'  and a.docdt<='" & Format(date3, "YYYY-MM-DD") & "'  ", DB, adOpenStatic
        
        If issless.RecordCount >= 0 Then
            issvalue = issless("ISSKGS")
        Else
            issvalue = 0
        End If
        
        Set Oprs = New Recordset
        'Oprs.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as kgs from RM_WASTE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='01' and a.type='U'  AND A.DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  and a.docdt<='" & Format(date3, "YYYY-MM-DD") & "'  AND A.WCODE='" & var & "'", DB, adOpenStatic
        Oprs.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as kgs from RM_WASTE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='" & Divcode & "' and a.type='U' AND A.WCODE='" & var & "'  and a.docdt<='" & Format(date3, "YYYY-MM-DD") & "'  ", DB, adOpenStatic
        
        DB.Execute "Insert into Wasteledger (date1,opkgs) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs("kgs") - (val(issvalue)) & ")"
        Openkgs = Oprs("kgs") + (val(issvalue))
        
        For i = 1 To Mid$(Date2, 9, 10)
             totoprecbale = 0
             totoprecborah = 0
             totoprectot = 0
             totoprectotkg = 0
            
            'Receipt Values
            Date1 = Date1
            Set RecRs = New Recordset
            RecRs.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as Arrkgs from RM_WASTE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='01' and a.type='U'  AND A.DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  and a.docdt='" & Format(Date1, "YYYY-MM-DD") & "'  AND A.WCODE='" & var & "'", DB, adOpenStatic
            
            DB.Execute "Update Wasteledger set arrkgs=" & RecRs("Arrkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "' "
            Receiptkg = Receiptkg + RecRs("Arrkgs")
            
            
            'Issue Values
            Set issrs = New Recordset
            issrs.Open "Select ISNULL(sum(isnull(a.NETWT,0)),0) as Isskgs from RM_WISSUE a,rm_WASTETYPE b  where a.WCODE=B.WCODE and a.dIVCODE='01' AND A.DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  and a.docdt='" & Format(Date1, "YYYY-MM-DD") & "'  AND A.WCODE='" & var & "'", DB, adOpenStatic
            
            DB.Execute "Update Wasteledger set isskgs=" & issrs("isskgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
            Consumption = Consumption + issrs("isskgs")
            

            'Closing Values
            
            Set Oprs = New Recordset
            Oprs.Open "Select (sum(isnull(opkgs,0))+sum(isnull(arrkgs,0)))-sum(isnull(isskgs,0)) as Closingkgs from Wasteledger where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
            
            DB.Execute "Update Wasteledger set closekgs=" & Oprs("Closingkgs") & " where date1='" & Format(Date1, "yyyy-mm-dd") & "'"
           
             
             'Opening Balance for the next day
             Set Oprs = New Recordset
             Oprs.Open "Select sum(isnull(closekgs,0)) from wasteledger where date1='" & Format(Date1, "yyyy-mm-dd") & "'", DB, adOpenStatic
             Date1 = DateAdd("d", 1, Date1)
             DB.Execute "Insert into Wasteledger(date1,opkgs) values('" & Format(Date1, "yyyy-mm-dd") & "'," & Oprs(0) & ")"
    
        Next
        
'        Print #f, Chr(15)
        Call prnhead
             
        Set RS2 = New Recordset
        RS2.Open "Select date1,opkgs as Openingkgs,arrkgs as arrivalkgs,isskgs as issuekgs,closekgs  as closingkgs from wasteledger where Date1 <= '" & Format(Date1, "dd/mmm/yyyy") & "' order by date1 ", DB, adOpenStatic
        RS2.MoveFirst
        For i = 1 To RS2.RecordCount - 1
            Print #f, Space(10) & Padr(Format(RS2("date1"), "dd/mm/yyyy"), 10, " ") & Space(2) & Padl(INF(RS2("openingkgs"), 3), 10, " ") & Space(2) & Padl(INF(RS2("arrivalkgs"), 3), 10, " ") & Space(2) & Padl(INF(RS2("openingkgs") + RS2("arrivalkgs"), 3), 10, " ") & Space(2) & Padl(INF(RS2("issuekgs"), 3), 10, " ") & Space(2); Padl(INF(RS2("Closingkgs"), 3), 10, " ")
    
         RS2.MoveNext
        Next
        cnt = cnt + 1
        If cnt >= PageLen Then
            Call prnhead
            cnt = 0
        End If
        Print #f, Space(10) & String(70, "-")
        Print #f, Chr(12)
        Close #f
        Open KALFOLDERDATA + "\formIV.bat" For Output As #f
        Print #f, "cd\"
        Print #f, KALFOLDERDATA
        Print #f, "cd\"
        Print #f, "type formIV.txt > prn"
        Close #f
        Rep.txtfile = KALFOLDERDATA + "\formIV.txt"
        Rep.Batfile = KALFOLDERDATA + "\formIV.bat"
        Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
    Private Sub prnhead()
On Error GoTo prnhead_Error

    Print #f,
    Print #f, Chr(18)
    Print #f, Space(10) + Chr(27) & "E" & CENTRE(Trim(DIVNAME) & Chr(27) & "F", 70, " ")
    Print #f,
    Print #f, Space(10) & Chr(27) & "E" & "Waste Ledger For The Month of " & UCase(Combo1.Text) & Chr(27) & "F"
    
    Set rx = New Recordset
    rx.Open "select wdes from rm_wastetype where wcode='" & var & "'", DB, adOpenStatic
    If rx.RecordCount > 0 Then
        Print #f, Space(10) & Chr(27) & "E" & CENTRE("Variety : " & rx("wdes"), 70, " ") & Chr(27) & "F"
    End If
    Print #f, Space(10) & Padl("Dt: " & Format(pdate, "dd/mm/yyyy") & Space(2) & "Pg.: " & Padl(pg1, 3, " "), 70, " ")
    Print #f, Space(10) & String(70, "-")
    Print #f, Space(10) & "   Date        Opening     Arrival       Total       Issue     Closing"
    Print #f, Space(10) & "                  Kgs.        Kgs.        Kgs.        Kgs.        Kgs."
    Print #f, Space(10) & String(70, "-")

Exit Sub
prnhead_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure prnhead of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub monval(mothval As String)
On Error GoTo monval_Error

    MON = Mid(mothval, 1, InStr(mothval, "-") - 1)
    Year1 = Right(mothval, 4)
    Date1 = Format("01-" & MON & "-" & Year1, "yyyy/mm/dd")
    Date2 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    date3 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
    Call date11
    'date3 = Year(date1) & "/" & Month(date1) - 1 & "/" & Day(date2)
    date3 = yearyy & "/" & monthmm & "/" & Day(Date2)
    date3 = Format(date3, "yyyy-mm-dd")

Exit Sub
monval_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure monval of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub date11()
On Error GoTo date11_Error

If MONTH(Date1) = "1" Or MONTH(Date1) = "01" Then
    monthmm = "12"
    yearyy = Year(Date1) - 1
Else
    monthmm = MONTH(Date1) - 1
    yearyy = Year(Date1)
End If

Exit Sub
date11_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure date11 of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Screen.MousePointer = 0
Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Call openconnection
    Frame1.Visible = True
    'Frame1.ZOrder = True
    Set Rs = New Recordset
    'RS.Open "select distinct a.wcode+'--'+b.wdes as variety from rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by variety", DB, adOpenStatic
    
    Rs.Open "select distinct a.wcode+'--'+b.wdes as variety from rm_waste a,rm_wastetype b where a.wcode=b.wcode and a.divcode='" & Divcode & "' order by variety", DB, adOpenStatic
    
    If Rs.RecordCount > 0 Then
        Rs.MoveFirst
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Dim MON1 As Integer
    Dim DATEA As String
    MON1 = DateDiff("M", yfdate, yldate) + 1
    DATEA = yfdate
    
    For i = 1 To MON1
        Combo1.AddItem Format(DATEA, "MMMM") & " - " & Format(DATEA, "YYYY")
        DATEA = DateAdd("M", 1, DATEA)
    Next i
    
    Do While Not Rs.EOF
        Combo2.AddItem Rs(0)
        Rs.MoveNext
    Loop
    Rs.MoveFirst
    Combo2.Text = Rs(0)
    
    If MONTH(pdate) > 3 And MONTH(pdate) <= 12 Then
        Combo1.ListIndex = MONTH(pdate) - 4
    ElseIf MONTH(pdate) = "01" Or MONTH(pdate) = "1" Then
        Combo1.ListIndex = 12 - 3
    ElseIf MONTH(pdate) = "02" Or MONTH(pdate) = "2" Then
        Combo1.ListIndex = 12 - 2
    ElseIf MONTH(pdate) = "02" Or MONTH(pdate) = "3" Then
        Combo1.ListIndex = 12 - 1
    End If
    
    Frame1.Visible = True
    Frame1.ZOrder

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub monval1(month_value As String)
On Error GoTo monval1_Error

MON = Mid(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)
Year1 = Right(Combo1.Text, 4)
Date1 = Format("01-" & MON & "-" & Year1, "yyyy/mm/dd")
Date2 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
date3 = Format(DateAdd("m", 1, Date1) - 1, "yyyy/mm/dd")
date3 = Year(Date1) & "/" & MONTH(Date1) - 1 & "/" & Day(Date2)
date3 = Format(date3, "yyyy-mm-dd")

Exit Sub
monval1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure monval1 of Form WasteLedger", vbInformation, head
Screen.MousePointer = 0
End Sub
