VERSION 5.00
Begin VB.Form cotton_month 
   Caption         =   "cotton_month"
   ClientHeight    =   6975
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   11565
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6975
   ScaleWidth      =   11565
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   2895
      Left            =   2340
      TabIndex        =   4
      Top             =   1665
      Width           =   7050
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   3285
         TabIndex        =   1
         Text            =   "Combo2"
         Top             =   1770
         Width           =   1635
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3285
         TabIndex        =   0
         Text            =   "Combo1"
         Top             =   1080
         Width           =   1635
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "To Month"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Left            =   1830
         TabIndex        =   7
         Top             =   1785
         Width           =   1005
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Cotton Monthwise Stock Report"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   375
         Left            =   15
         TabIndex        =   6
         Top             =   45
         Width           =   7005
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "From Month"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   285
         Index           =   2
         Left            =   1830
         TabIndex        =   5
         Top             =   1095
         Width           =   1260
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4455
      TabIndex        =   2
      Tag             =   "10"
      Top             =   4905
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6255
      TabIndex        =   3
      Tag             =   "11"
      Top             =   4905
      Width           =   1455
   End
End
Attribute VB_Name = "cotton_month"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, LENLEN As Integer
Dim DB As Connection
Dim Pgcount As Integer
Dim pg1 As Integer
Dim Rs As Recordset
Dim ResultRs As Recordset
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim frommonth As String
Dim fmonth As Integer
Dim tomonth As String
Dim j As Integer
Dim tmonth As Integer
Dim MONSTR As String
Dim MONSTR1 As String
Dim TEMPTOMONTH As Integer
Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
        frommonth = Combo1.Text
        tomonth = Combo2.Text
        fmonth = monthadd1(frommonth)
        tmonth = monthadd1(tomonth)
        Dim str As String
        Set Rep = New Report.ReportView
            a = FreeFile
            Dim Pg As Integer
            Dim Co As Integer
            Pg = 1
            Co = 0
            tot1 = 0
            Open "c:\cott.txt" For Output As #a
            Call cottHeader(pg1, Co, frommonth, tomonth)
            header
    If fmonth <> tmonth Then
        If tmonth <= 3 Then
            Select Case tmonth
            Case 1
                TEMPTOMONTH = 13
            Case 2
                TEMPTOMONTH = 14
            Case 3
                TEMPTOMONTH = 15
            End Select
        Else
            TEMPTOMONTH = tmonth
        End If
    Else
        TEMPTOMONTH = tmonth
    End If
    For i = fmonth To TEMPTOMONTH
        If i <= 12 Then
            LYEAR = Year(yfdate)
            j = i
        Else
        
            LYEAR = Year(yfdate)
            
            Select Case i
            Case 13
               j = 1
            Case 14
                j = 2
            Case 15
                j = 3
            End Select
            
        End If
        Date1 = MONTHTODAY(j)
        Date2 = MONTHTODAY1(j)
                Set Rs = New Recordset
                    s = "select sum(isnull(opbales,0)) opbales,sum(isnull(opboras,0)) opboras,sum(isnull(opkgs,0)) opkgs,sum(isnull(recbales,0)) recbales,sum(isnull(recboras,0)) recboras,sum(isnull(reckgs,0)) reckgs,sum(isnull(rejbales,0)) rejbales,sum(isnull(rejboras,0)) rejboras,sum(isnull(rejkgs,0)) rejkgs,sum(isnull(totbales,0)) totbales,sum(isnull(totkgs,0)) totkgs,sum(isnull(issbales,0)) issbales,sum(isnull(issboras,0)) issboras, " & _
                    "sum(isnull(isskgs,0)) isskgs,sum(isnull(tranbales,0)) tranbales,sum(isnull(tranboras,0)) tranboras,sum(isnull(trankgs,0)) trankgs,sum(isnull(clobales,0)) clobales,sum(isnull(cloboras,0)) cloboras,sum(isnull(clokgs,0)) clokgs from (select a.LOTNO,sum(isnull(a.opbales,0)) opbales,sum(isnull(a.opboras,0)) opboras ,sum(isnull(a.opkgs,0)) opkgs,sum(isnull(a.recbales,0)) recbales,sum(isnull(a.recboras,0)) recboras," & _
                    "sum(isnull(a.reckgs,0)) reckgs,sum(isnull(a.rejbales,0)) rejbales,sum(isnull(a.rejboras,0)) rejboras,sum(isnull(a.rejkgs,0)) rejkgs,sum(isnull(a.opbales,0))+sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) totbales,sum(isnull(a.opkgs,0))+sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) totkgs,sum(isnull(a.issbales,0)) issbales,sum(isnull(a.issboras,0)) issboras,sum(isnull(a.isskgs,0)) isskgs,sum(isnull(a.tranbales,0)) tranbales," & _
                    "sum(isnull(a.tranboras,0)) tranboras,sum(isnull(a.trankgs,0)) trankgs,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0))- sum(isnull(a.rejbales,0)))- sum(isnull(a.issbales,0)) - sum(isnull(a.tranbales,0))  else sum(isnull(a.recbales,0))-sum(isnull(a.rejbales,0)) -  sum(isnull(a.issbales,0))-sum(isnull(a.tranbales,0)) end  as clobales,case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ " & _
                    "sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0)) else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.rejkgs,0)))- sum(isnull(a.isskgs,0)) - sum(isnull(a.trankgs,0)) else sum(isnull(a.reckgs,0))-sum(isnull(a.rejkgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.trankgs,0))  end as clokgs from ((select LOTNO, sum(opbales-issbales) opbales," & _
                    "sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs, 0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from (select b.LOTNO,case when b.bblflg ='B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs  from rm_lot b " & _
                    "where B.DIVCODE='" & Divcode & "' AND (B.rejflg = 'N' or B.rejdt>" & Format(yldate, "YYYY-MM-DD") & ") and B.lotyear='" & LYEAR & "'  and b.lotdt < '" & Date1 & "'  group by b.LOTNO,b.bblflg union select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg    IN ('R','H') then count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  " & _
                    "and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Date1 & "') and B.lotyear='" & LYEAR & "' and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt < '" & Date1 & "'  and docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' group by b.LOTNO,b.bblflg ) a  group by LOTNO Union All select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then " & _
                    " sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then  sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b  where b.lotdt between '" & Format(Date1, "yyyy-mm-dd") & "' and '" & Format(Date2, "yyyy-mm-dd") & "' and B.DIVCODE='" & Divcode & "'  and (B.rejflg='N' or B.rejdt > '" & Date2 & "') and B.lotyear='" & LYEAR & "' and b.lotdt <= '" & Date2 & "'  " & _
                    " AND  b.lotdt Between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'  group by b.LOTNO,b.opflg,b.bblflg  Union All select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as rejbales, case when b.bblflg  IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as rejboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as rejkgs,0 as issbales,0 as issboras,0 as isskgs,0 as tranbales,0 as tranboras,0 as trankgs from rm_lot B " & _
                    " where B.DIVCODE='" & Divcode & "'  and (B.rejflg='Y' or B.rejdt > '" & Date2 & "') and B.lotyear='" & LYEAR & "' and b.lotdt<'" & Date2 & "' and  b.lotdt Between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'  group by b.LOTNO,b.opflg,b.bblflg " & _
                    " Union All select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then " & _
                    "count(c.baleno) else 0 end as issboras,round((sum(isnull(e.netwt,0))),3) as isskgs,  0 as tranbales,0 as tranboras,0 as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "'  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and  c.docdt BETWEEN '" & Date1 & "' AND '" & Date2 & "' and lotyear='" & LYEAR & "' and left(c.isstype,1) <> 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno " & _
                    "group by b.LOTNO,b.opflg,b.bblflg union all select b.LOTNO,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as rejbales,0 as rejboras,0 as rejkgs,0 as issbales,0 as issboras,0 as isskgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as tranbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as tranboras," & _
                    "round((sum(isnull(e.netwt,0))),3) as trankgs from rm_lot b,rm_issb c,rm_bale e where E.DIVCODE='" & Divcode & "' AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and  c.docdt between '" & Date1 & "' and '" & Date2 & "' and lotyear='" & LYEAR & "' and left(c.isstype,1) = 'T' and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno group by b.LOTNO,b.opflg,b.bblflg ))a group by a.LOTNO ) xx"
            
                Rs.Open s, DB, adOpenStatic, adLockBatchOptimistic
                MONSTR = 0
                MONSTR1 = 0
                mona = DATTOMON(CStr(j))
                MONSTR = Mid(Year(yfdate), 3, 2)
                MONSTR1 = Mid(Year(yldate), 3, 2)
                MONSTR = MONSTR + "-" + MONSTR1
                For j = 1 To Rs.RecordCount
                    Print #a, Space(2) + Chr(179) + Padr(mona, 3, " ") + "  " + MONSTR + Chr(179) + Padl(Rs("opbales"), 5, " ") + Chr(179) + Padl(INF(Rs("opkgs"), 2), 15, " ") + Chr(179) + Padl(Rs("recbales"), 5, " ") + Chr(179) + Padl(INF(Rs("reckgs"), 2), 15, " ") + Chr(179) + Padl(Rs("totbales"), 5, " ") + Chr(179) + Padl(INF(Rs("totkgs"), 2), 15, " ") + Chr(179) + Padl(Rs("issbales"), 5, " ") + Chr(179) + Padl(INF(Rs("isskgs"), 2), 15, " ");
                    Print #a, Chr(179) + Padl(Rs("tranbales"), 5, " ") + Chr(179) + Padl(INF(Rs("trankgs"), 2), 15, " "); Chr(179) + Padl(Rs("rejbales"), 5, " ") + Chr(179) + Padl(INF(Rs("rejkgs"), 2), 15, " ") + Chr(179) + Padl(Rs("clobales"), 5, " ") + Chr(179) + Padl(INF(Rs("clokgs"), 2), 15, " ") + Chr(179)
                    If Rs.RecordCount > 1 Then
                        Print #a, Space(2) + Chr(179) + Padr(mona, 3, " ") + "  " + MONSTR + Chr(197) + Padl(Rs("opbales"), 5, " ") + Chr(197) + Padl(INF(Rs("opkgs"), 2), 15, " ") + Chr(197) + Padl(Rs("recbales"), 5, " ") + Chr(179) + Padl(INF(Rs("reckgs"), 2), 15, " ") + Chr(179) + Padl(Rs("totbales"), 5, " ") + Chr(179) + Padl(INF(Rs("totkgs"), 2), 15, " ") + Chr(179) + Padl(Rs("issbales"), 5, " ") + Chr(179) + Padl(INF(Rs("isskgs"), 2), 15, " ");
                        Print #a, Chr(179) + Padl(Rs("tranbales"), 5, " ") + Chr(179) + Padl(INF(Rs("trankgs"), 2), 15, " "); Chr(179) + Padl(Rs("rejbales"), 5, " ") + Chr(179) + Padl(INF(Rs("rejkgs"), 2), 15, " ") + Chr(179) + Padl(Rs("clobales"), 5, " ") + Chr(179) + Padl(INF(Rs("clokgs"), 2), 15, " ") + Chr(179)
                        Print #a, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(180)
                    ElseIf i = TEMPTOMONTH Then
                        Print #a, Space(2) + Chr(192) + String(10, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(193) + String(5, Chr(196)) + Chr(193) + String(15, Chr(196)) + Chr(217)
                    Else
                        Print #a, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(180)
                    End If
                Next
                Rs.MoveNext
            Next
       
       
            
            
            Close #a
            Open "c:\cott.bat" For Output As #a
            Print #a, "cd\"
            Print #a, "c:"
            Print #a, "cd\"
            Print #a, "type cott.txt > prn"
            Close #a
            Rep.txtfile = "c:\cott.txt"
            Rep.Batfile = "c:\cott.bat"
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command1_Click of Form cotton_month"
End Sub
    
'---------------------------------------------------------------------------------------
' Procedure : Command2_Click
' DateTime  : 07/12/2008 14:29
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form cotton_month", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
    Dim s1 As String
    
On Error GoTo Form_Load_Error
    monthadd
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    
    
    Command1.Enabled = True
    Command2.Enabled = True
    
    Screen.MousePointer = 0
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form cotton_month"
    
End Sub
Function monthadd()
On Error GoTo monthadd_Error
Combo1.AddItem ("April")
Combo1.AddItem ("May")
Combo1.AddItem ("June")
Combo1.AddItem ("July")
Combo1.AddItem ("August")
Combo1.AddItem ("September")
Combo1.AddItem ("October")
Combo1.AddItem ("November")
Combo1.AddItem ("December")
Combo1.AddItem ("January")
Combo1.AddItem ("February")
Combo1.AddItem ("March")
Combo1.ListIndex = 0

Combo2.AddItem ("April")
Combo2.AddItem ("May")
Combo2.AddItem ("June")
Combo2.AddItem ("July")
Combo2.AddItem ("August")
Combo2.AddItem ("September")
Combo2.AddItem ("October")
Combo2.AddItem ("November")
Combo2.AddItem ("December")
Combo2.AddItem ("January")
Combo2.AddItem ("February")
Combo2.AddItem ("March")
Combo2.ListIndex = 0
Exit Function
monthadd_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure monthadd of Form cotton_month"

End Function
Public Function monthadd1(xx As String) As Integer
Dim zz As Integer
On Error GoTo monthadd1_Error
If xx = "April" Then
   zz = "4"
ElseIf xx = "May" Then
   zz = "5"
ElseIf xx = "June" Then
   zz = "6"
ElseIf xx = "July" Then
   zz = "7"
ElseIf xx = "August" Then
   zz = "8"
ElseIf xx = "September" Then
   zz = "9"
ElseIf xx = "October" Then
   zz = "10"
ElseIf xx = "November" Then
   zz = "11"
ElseIf xx = "December" Then
   zz = "12"
ElseIf xx = "January" Then
   zz = "1"
ElseIf xx = "February" Then
   zz = "2"
ElseIf xx = "March" Then
   zz = "3"
End If
monthadd1 = zz
Exit Function
monthadd1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure monthadd1 of Form cotton_month"
End Function

Public Function DATTOMON(xx As String) As String
Dim zz As String
On Error GoTo DATTOMON_Error
If xx = "4" Then
   zz = "April"
ElseIf xx = "5" Then
   zz = "May"
ElseIf xx = "6" Then
   zz = "June"
ElseIf xx = "7" Then
   zz = "July"
ElseIf xx = "8" Then
   zz = "August"
ElseIf xx = "9" Then
   zz = "September"
ElseIf xx = "10" Then
   zz = "October"
ElseIf xx = "11" Then
   zz = "November"
ElseIf xx = "12" Then
   zz = "December"
ElseIf xx = "1" Then
   zz = "January"
ElseIf xx = "2" Then
   zz = "February"
ElseIf xx = "3" Then
   zz = "March"
End If
DATTOMON = zz
Exit Function
DATTOMON_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DATTOMON of Form cotton_month"
End Function

'---------------------------------------------------------------------------------------
' Procedure : header
' DateTime  : 07/12/2008 14:30
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Function header()
'Print #A, Space(2) + Chr(179) + Padr(mona, 10, " ") + Chr(179) + Padl(rs("opbales"), 5, " ") + Chr(179) + Padl(INF(rs("opkgs"), 2), 15, " ") + Chr(179) + Padl(rs("recbales"), 5, " ") + Chr(179) + Padl(INF(rs("reckgs"), 2), 15, " ") + Chr(179) + Padl(rs("totbales"), 5, " ") + Chr(179) + Padl(INF(rs("totkgs"), 2), 15, " ") + Chr(179) + Padl(rs("issbales"), 5, " ") + Chr(179) + Padl(INF(rs("isskgs"), 2), 15, " ");
'Print #A, Chr(179) + Padl(rs("tranbales"), 5, " ") + Chr(179) + Padl(INF(rs("trankgs"), 2), 15, " "); Chr(179) + Padl(rs("rejbales"), 5, " ") + Chr(179) + Padl(INF(rs("rejkgs"), 2), 15, " ") + Chr(179) + Padl(rs("clobales"), 5, " ") + Chr(179) + Padl(INF(rs("clokgs"), 2), 15, " ") + Chr(179)

'Print #A, Space(2) + Chr(218) + String(20, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(191)
'Print #A, Space(2) + Chr(179) + Padr("MONTH", 10, " ") + Chr(179) + Padr("OPENING", 17, " ") + Padr("RECEIPT", 17, " ") + Padr("TOTAL", 17, " ") + Padr("ISSUED", 17, " ") + Padr("TRANSFER", 17, " ") + Padr("RETURN", 17, " ") + Padr("CLOSING", 17, " ") + Chr(179)

On Error GoTo header_Error

On Error GoTo header_Error
Print #a, Space(2) + Chr(218) + String(10, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(194) + String(21, Chr(196)) + Chr(191)
Print #a, Space(2) + Chr(179) + CENTRE(" MONTH", 10, " ") + Chr(179) + CENTRE("     OPENING ", 20, " ") + Chr(179) + CENTRE("      RECEIPT    ", 20, " ") + Chr(179) + CENTRE("TOTAL", 20, " ") + Chr(179) + CENTRE(" ISSUED", 20, " ") + Space(2) + Chr(179) + CENTRE("TRANSFER", 20, " ") + Space(1) + Chr(179) + CENTRE("RETURN", 20, " ") + Space(1) + Chr(179) + CENTRE("CLOSING", 20, " ") + Space(2) + Chr(179)
Print #a, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(194) + String(15, Chr(196)) + Chr(180)
Print #a, Space(2) + Chr(179) + String(10, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 15, " ") + Chr(179)
Print #a, Space(2) + Chr(195) + String(10, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(15, Chr(196)) + Chr(180)

'Print #A, Space(2) + Chr(218) + String(20, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(194) + String(17, Chr(196)) + Chr(191)
'Print #A, Space(2) + Chr(179) + Padr("MONTH", 20, " ") + Chr(179) + Padr("OPENING", 17, " ") + Padr("RECEIPT", 17, " ") + Padr("TOTAL", 17, " ") + Padr("ISSUED", 17, " ") + Padr("TRANSFER", 17, " ") + Padr("RETURN", 17, " ") + Padr("CLOSING", 17, " ") + Chr(179)
'Print #A, Space(2) + Chr(179) + String(20, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(180)
'Print #A, Space(2) + Chr(179) + String(20, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Padr("BALES", 5, " ") + Chr(179) + Padr("KGS", 12, " ") + Chr(179) + Chr(179)
'Print #A, Space(2) + Chr(179) + String(20, Chr(196)) + Chr(179) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(197) + String(5, Chr(196)) + Chr(197) + String(12, Chr(196)) + Chr(180)
Co = Co + 5
header_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure header of Form cotton_month", vbInformation, head
Screen.MousePointer = 0
End Function
Public Sub cottHeader(pg1 As Integer, Co As Integer, u As String, v As String)
On Error GoTo cottHeader_Error
Co = 0
Print #a,
Print #a, Chr(15) + Chr(27); "E"; CENTRE(DIVNAME, 130, " ") + Chr(27) + "F"
Print #a,
SR = CStr(pdate) + Space(2)
Print #a, Space(2) + Chr(15) + Chr(27); "E"; "COTTON MONTHWISE STOCK REPORT "; " FROM" & Space(2) & u & Space(2) & "TO" & Space(2) & v & Chr(27); "F"
Co = Co + 4
Exit Sub
cottHeader_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure cottHeader of Form cotton_month"
End Sub
Function MONTHTODAY(MON As Integer) As String
Dim DY As String

On Error GoTo MONTHTODAY_Error
Select Case MON
Case "4"
    DY = Year(yfdate) & "-04-01"
Case "5"
    DY = Year(yfdate) & "-05-01"
Case "6"
    DY = Year(yfdate) & "-06-01"
Case "7"
    DY = Year(yfdate) & "-07-01"
Case "8"
    DY = Year(yfdate) & "-08-01"
Case "9"
    DY = Year(yfdate) & "-09-01"
Case "10"
    DY = Year(yfdate) & "-10-01"
Case "11"
    DY = Year(yfdate) & "-11-01"
Case "12"
    DY = Year(yfdate) & "-12-01"
Case "1"
    DY = Year(yldate) & "-01-01"
Case "2"
    DY = Year(yldate) & "-02-01"
Case "3"
    DY = Year(yldate) & "-03-01"


End Select
MONTHTODAY = DY
Exit Function
MONTHTODAY_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MONTHTODAY of Form cotton_month"
End Function
Function MONTHTODAY1(MON As Integer) As String
Dim DY1 As String

On Error GoTo MONTHTODAY1_Error
Select Case MON
Case "4"
    DY1 = Year(yfdate) & "-04-30"
Case "5"
    DY1 = Year(yfdate) & "-05-31"
Case "6"
    DY1 = Year(yfdate) & "-06-30"
Case "7"
    DY1 = Year(yfdate) & "-07-31"
Case "8"
    DY1 = Year(yfdate) & "-08-31"
Case "9"
    DY1 = Year(yfdate) & "-09-30"
Case "10"
    DY1 = Year(yfdate) & "-10-31"
Case "11"
    DY1 = Year(yfdate) & "-11-30"
Case "12"
    DY1 = Year(yfdate) & "-12-31"
Case "1"
    DY1 = Year(yldate) & "-01-31"
Case "2"
    DY1 = Year(yldate) & "-02-28"
Case "3"
    DY1 = Year(yldate) & "-03-31"


End Select
MONTHTODAY1 = DY1
Exit Function
MONTHTODAY1_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure MONTHTODAY1 of Form cotton_month"
End Function

