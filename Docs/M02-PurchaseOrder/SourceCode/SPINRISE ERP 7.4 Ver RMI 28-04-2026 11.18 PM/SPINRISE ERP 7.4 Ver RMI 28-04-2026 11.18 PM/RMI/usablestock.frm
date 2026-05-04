VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   2325
      Left            =   1200
      TabIndex        =   0
      Top             =   1080
      Width           =   6135
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   315
         Left            =   2490
         TabIndex        =   5
         Top             =   780
         Width           =   2535
      End
      Begin VB.CommandButton Command2 
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
         Height          =   405
         Left            =   3150
         TabIndex        =   3
         Top             =   1620
         Width           =   1245
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   1620
         TabIndex        =   2
         Top             =   1620
         Width           =   1245
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Useable Waste Stock"
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
         Height          =   345
         Left            =   30
         TabIndex        =   4
         Top             =   120
         Width           =   6105
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Date"
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
         Left            =   1530
         TabIndex        =   1
         Top             =   780
         Width           =   510
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Openkg As Double
Dim a As Integer
Dim Consumkg As Double
Dim IssueKg As Double
Dim Receiptkg As Double
Dim Closekg As Double
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim str1 As String
Dim months As String
Dim MON As String
Dim az As Date
Dim dad As Date
'---------------------------------------------------------------------------------------
' Procedure : Command1_Click
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

If Trim(Combo1.Text) = "" Then
    MsgBox "Please Select the date", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
str1 = Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1))
If str1 = "January" Then
    months = 1
ElseIf str1 = "February" Then
    months = 2
ElseIf str1 = "March" Then
    months = 3
ElseIf str1 = "April" Then
    months = 4
ElseIf str1 = "May" Then
    months = 5
ElseIf str1 = "June" Then
    months = 6
ElseIf str1 = "July" Then
    months = 7
ElseIf str1 = "August" Then
    months = 8
ElseIf str1 = "September" Then
    months = 9
ElseIf str1 = "October" Then
    months = 10
ElseIf str1 = "November" Then
    months = 11
ElseIf str1 = "December" Then
    months = 12
End If
    Set DB = New Connection
    DB.Provider = "msdatashape"
    DB.Open connectstring
    Screen.MousePointer = 11
    If Table_Exists("aaa") = False Then
        DB.Execute "Create table aaa (code varchar(30),countcode varchar(20),opening numeric(13,3),receipt numeric(13,3),consum numeric(13,3),trans numeric(13,3),closing numeric(13,3))"
    Else
        DB.Execute "delete from aaa"
    End If
    
    
    Call monthadd(CStr(months))
    
    
    
    If MON = "01" Or MON = "1" Or MON = "02" Or MON = "2" Or MON = "03" Or MON = "3" Then
        az = Format("01 / " & MON & "/" & Year(yldate), "yyyy-mm-dd")
    Else
       az = Format("01 / " & MON & "/" & Year(yfdate), "yyyy-mm-dd")
    End If
    
    If months = "04" Or months = "4" Then
        months1 = months - 1
        az1 = Format("01 / " & months1 & "/" & Year(yfdate), "dd/MM/YYYY")
    End If
    
    
    If months = "01" Or months = "1" Or months = "02" Or months = "2" Or months = "03" Or months = "3" Then
        dad = Format("01 / " & months & "/" & Year(yldate), "yyyy-mm-dd")
    Else
       dad = Format("01 / " & months & "/" & Year(yfdate), "yyyy-mm-dd")
    End If
    
    Set Rs = New Recordset
    'rs.Open "Select distinct wcode  from rm_waste where month(docdt)=" & months & " and type='U' ", db, adOpenStatic
    Rs.Open "Select distinct wcode  from rm_waste where  type='U' ", DB, adOpenStatic
    If Rs.EOF Then
        MsgBox "No Record Found For This Month", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
    
    Do While Not Rs.EOF
        Set rs3 = New Recordset
        rs3.Open "Select distinct cntcd from rm_waste where wcode='" & Rs(0) & "'", DB, adOpenStatic
        Do While Not rs3.EOF
                
                DB.Execute "insert into aaa(code,countcode) values('" & Rs(0) & "','" & rs3(0) & "')"
                'Opening
                If months = "04" Or months = "4" Then
                    
                    Set rx = New Recordset
                    rx.Open "select isnull(sum(netwt),0) from rm_waste where docdt < ='" & Format(fnmldate(az1), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "' and cntcd='" & rs3(0) & "'", DB, adOpenStatic

                    Set rx1 = New Recordset
                    rx1.Open "select isnull(sum(netwt),0) from rm_wissue where docdt < ='" & Format(fnmldate(az1), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "' and cntcd='" & rs3(0) & "'", DB, adOpenStatic
                Else
                        
                    Set rx = New Recordset
                    rx.Open "select isnull(sum(netwt),0) from rm_waste where docdt < ='" & Format(fnmldate(az), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "' and cntcd='" & rs3(0) & "'", DB, adOpenStatic
                
                    Set rx1 = New Recordset
                    rx1.Open "select isnull(sum(netwt),0) from rm_wissue where docdt < ='" & Format(fnmldate(az), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "' and cntcd='" & rs3(0) & "'", DB, adOpenStatic
                    
                End If
                
'                Set rs1 = New Recordset
'                rs1.Open "Select isnull(sum(netwt),0) from rm_waste where month(docdt)<" & Month(pdate) & " and wcode='" & rs(0) & "' and cntcd='" & rs3(0) & "'", db, adOpenStatic
                
                If Not rx.EOF Or Not rx1.EOF Then
                    DB.Execute "Update aaa set opening=" & rx(0) - rx1(0) & " where code='" & Rs(0) & "' and countcode='" & rs3(0) & "'"
                    Openkg = rx(0) - rx1(0)
                End If
                
                'Receipt
                Set rs1 = New Recordset
                'rs1.Open "Select isnull(sum(netwt),0) from rm_waste where month(docdt)=" & Month(pdate) & " and wcode='" & rs(0) & "'and cntcd='" & rs3(0) & "' ", db, adOpenStatic
                rs1.Open "Select isnull(sum(netwt),0) from rm_waste where docdt between '" & Format(fnmfdate(dad), "yyyy-mm-dd") & "' and '" & Format(fnmldate(dad), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "'and cntcd='" & rs3(0) & "' ", DB, adOpenStatic
                
                If Not rs1.EOF Then
                    DB.Execute "Update aaa set receipt=" & rs1(0) & " where code='" & Rs(0) & "' and countcode='" & rs3(0) & "'"
                    Receiptkg = rs1(0)
                End If
                'Issue
                Set rs1 = New Recordset
                'rs1.Open "Select isnull(sum(netwt),0) from rm_wissue where month(docdt)=" & Month(pdate) & " and wcode='" & rs(0) & "' and isstype='S' and cntcd='" & rs3(0) & "' ", db, adOpenStatic
                rs1.Open "Select isnull(sum(netwt),0) from rm_wissue where docdt between '" & Format(fnmfdate(dad), "yyyy-mm-dd") & "' and '" & Format(fnmldate(dad), "yyyy-mm-dd") & "' and wcode='" & Rs(0) & "' and isstype='R' and cntcd='" & rs3(0) & "' ", DB, adOpenStatic
                
                If Not rs1.EOF Then
                    DB.Execute "Update aaa set trans=" & rs1(0) & " where code='" & Rs(0) & "' and countcode='" & rs3(0) & "'"
                    IssueKg = rs1(0)
                End If
                Consumkg = 0
                'Comsumption
'                Set rs1 = New Recordset
'                rs1.Open "Select isnull(sum(netwt),0) from rm_wissue where month(docdt)=" & MONTH(pdate) & " and wcode='" & Rs(0) & "' and isstype='R' and cntcd='" & rs3(0) & "' ", DB, adOpenStatic
'                If Not rs1.EOF Then
'                    DB.Execute "Update aaa set consum=" & rs1(0) & " where code='" & Rs(0) & "' and countcode='" & rs3(0) & "'"
'                    Consumkg = rs1(0)
'                End If

                Closekg = Openkg + Receiptkg - (IssueKg + Consumkg)
                 DB.Execute "Update aaa set closing=" & Closekg & " where code='" & Rs(0) & "' and countcode='" & rs3(0) & "'"
                rs3.MoveNext
            Loop
        Rs.MoveNext
    Loop

        Set RPTV = New Report.ReportView
        Close
        Open KALFOLDERDATA & "\usable.txt" For Output As #1
        Co = 0
        Pg = 1
        Print #1,
        Print #1,
        Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); Chr(27) & "F"
        Print #1,
        Print #1, Space(5) & "Useable waste stock for the month  of  " & UCase(Mid$(MonthName(months), 1, 3)); "' " & Year(pdate) & Space(19); "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
        Print #1, Space(5) & String(91, "-")
        Print #1, Space(5) & "S.No.               Count            Opening    Receipt     Consum    Trans         Closing"
        Print #1, Space(5); "                                       Stock                 ption      fer           Stock"
        Print #1, Space(5) & String(91, "-")
        Co = Co + 9
        i = 0
        i = i + 1
        Set Rs = New Recordset
        Rs.Open "Select distinct code,b.wdes from aaa a,rm_wastetype b where a.code=b.wcode", DB, adOpenStatic
        Do While Not Rs.EOF
            Print #1, Space(5); Padl(i, 2, " "); Space(2); Padr(Rs(1), 20, " ")
            'co = co + 1
            If Co >= 65 Then
                Print #1,
                Print #1,
                Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); "F"; Chr(27)
                Print #1,
                Print #1, Space(5) & "Usable waste stock for the month  of  " & UCase(Mid$(MonthName(months), 1, 3)); "' " & Year(pdate) & Space(19); "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
                Print #1, Space(5) & String(91, "-")
                Print #1, Space(5) & "S.No.               Count            Opening    Receipt     Consum    Trans         Closing"
                Print #1, Space(5); "                                       Stock                 ption      fer           Stock"
                Print #1, Space(5) & String(91, "-")
            End If
            'Print #1,
            'co = co + 1
            If Co >= 65 Then
                Print #1,
                Print #1,
                Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); "F"; Chr(27)
                Print #1,
                Print #1, Space(5) & "Usable waste stock for the month  of  " & UCase(Mid$(MonthName(months), 1, 3)); "' " & Year(pdate) & Space(19); "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
                Print #1, Space(5) & String(91, "-")
                Print #1, Space(5) & "S.No.               Count            Opening    Receipt     Consum    Trans         Closing"
                Print #1, Space(5); "                                       Stock                 ption      fer           Stock"
                Print #1, Space(5) & String(91, "-")
            End If
            Set RS2 = New Recordset
            RS2.Open "Select  distinct countcode,sum(opening) opening ,sum(receipt) receipt,sum(consum)consumption,sum(trans)trans,sum(closing)clos from aaa where code='" & Rs(0) & "' group by countcode ", DB, adOpenStatic
             Do While Not RS2.EOF
             Print #1, Space(25) & Padr(RS2(0), 10, " "); Space(1); Padl(RS2("opening"), 13, " "); Padl(RS2("receipt"), 11, " "); Padl(RS2("consumption"), 11, " "); Padl(RS2("trans"), 9, " "); Space(3); Padl(RS2("clos"), 13, " ")
             Co = Co + 1
             If Co >= 65 Then
                Print #1,
                Print #1,
                Print #1, Space(5) & Chr(27); "E"; CENTRE(DIVNAME, 81, " "); "F"; Chr(27)
                Print #1,
                Print #1, Space(5) & "Usable waste stock for the month  of  " & UCase(Mid$(MonthName(months), 1, 3)); "' " & Year(pdate) & Space(19); "Dt:"; Format(pdate, "dd/mm/yyyy") & Space(2); "Pg.:"; Pg
                Print #1, Space(5) & String(91, "-")
                Print #1, Space(5) & "S.No.               Count            Opening    Receipt     Consum    Trans         Closing"
                Print #1, Space(5); "                                       Stock                 ption      fer           Stock"
                Print #1, Space(5) & String(91, "-")
            End If
             RS2.MoveNext
             Loop
             i = i + 1
            Rs.MoveNext
        Loop
        Print #1, Space(5) & String(91, "-")
        Set Rs = New Recordset
            Rs.Open "select sum(opening)as opening,sum(receipt)as receipt,sum(consum)as consum,sum(trans)as trans,sum(closing) as closing from aaa", DB
        Print #1, "      Total"; Space(26); Padl(Rs("opening"), 12, " "); ; Padl(Rs("receipt"), 11, " "); Padl(Rs("consum"), 11, " "); Padl(Rs("trans"), 9, " "); Space(1); Padl(Rs("closing"), 15, " ")
        Print #1, Space(5) & String(91, "-")
        
        Print #1, Space(5) & "Abstract"
        Print #1, Space(5) & String(63, "-")
        Print #1, Space(5); "S.No. Count              Qty              Rate            Value    "
        Print #1, Space(5) & String(63, "-")
        Set Rs = New Recordset
        Rs.Open "select distinct z.countcode,sum(z.closing)'closing','rate'=case when sum(z.closing) >0 then round(sum(z.value)/sum(z.closing),2)  else 0 end,'Value'=sum(z.value) from (select distinct a.countcode,sum(closing)closing,avg(rate)rate,sum(closing*rate) value from aaa a,rm_uwasterate b where a.code*=b.wcode group by code,a.countcode)z group by z.countcode", DB, adOpenStatic
        i = 0
        tot1 = 0
        tot2 = 0
        
        Do While Not Rs.EOF
            i = i + 1
            Print #1, Space(5); Padl(i, 5, " "); Space(1); Padr(Rs("countcode"), 10, " "); Padl(INF(Rs("closing"), 2), 12, " "); Space(1); Padl(INF(Rs("rate"), 2), 17, " "); Space(1); Padl(INF(Rs("value"), 2), 16, " ")
            tot1 = tot1 + Rs("closing")
            tot2 = tot2 + Rs("value")
            Rs.MoveNext
        Loop
        Print #1, Space(5) & String(63, "-")
        Print #1, Space(9); "Total  "; Padl(INF(tot1, 2), 17, " "); Space(2); Padl(INF(tot2, 2), 33, " ")
        Print #1, Space(5) & String(63, "-")
        Print #1, Chr(12)
        Close #1
        Open KALFOLDERDATA & "\usable.bat" For Output As #1
        Print #1, "cd\"
        Print #1, KALFOLDERDATA
        Print #1, "cd\"
        Print #1, "type usable.txt>prn"
        RPTV.txtfile = KALFOLDERDATA + "\usable.txt"
        RPTV.Batfile = KALFOLDERDATA + "\usable.bat"
        Close #1
        Screen.MousePointer = 0

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Form1", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Command2_Click
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Form1", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Load()
On Error GoTo Form_Load_Error

On Error GoTo Form_Load_Error

On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.Open connectstring
    Set Rs = New Recordset
    Rs.Open "Select distinct month(docdt)as docdt from rm_waste where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and type='U' ", DB, adOpenStatic
    Do While Not Rs.EOF
        Combo1.AddItem MonthName(Rs("docdt")) & " -- " & Year(pdate)
    Rs.MoveNext
    Loop
    If Not Rs.EOF Then
        Rs.MoveFirst
        Combo1.Text = Rs(0) & " -- " & Year(pdate)
    End If
    Frame1.Visible = True

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Form1", vbInformation, head
Screen.MousePointer = 0

Exit Sub

End Sub


'---------------------------------------------------------------------------------------
' Procedure : monthadd
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub monthadd(months As String)
On Error GoTo monthadd_Error

If months = "01" Or months = "1" Then
    MON = "12"
Else
    MON = months - 1
End If

Exit Sub
monthadd_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monthadd of Form Form1", vbInformation, head
Screen.MousePointer = 0
End Sub
