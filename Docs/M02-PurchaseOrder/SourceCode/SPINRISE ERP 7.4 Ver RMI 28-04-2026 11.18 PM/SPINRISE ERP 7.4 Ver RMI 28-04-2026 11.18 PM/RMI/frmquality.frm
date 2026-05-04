VERSION 5.00
Begin VB.Form frmquality 
   Caption         =   "qualityparameters"
   ClientHeight    =   3180
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
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
      Left            =   5625
      TabIndex        =   7
      Tag             =   "11"
      Top             =   4290
      Width           =   1455
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
      Left            =   3105
      TabIndex        =   6
      Tag             =   "10"
      Top             =   4230
      Width           =   1455
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Height          =   2895
      Left            =   1560
      TabIndex        =   0
      Top             =   930
      Width           =   7050
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   3300
         TabIndex        =   9
         Text            =   "Combo3"
         Top             =   2325
         Width           =   2190
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   3300
         TabIndex        =   2
         Text            =   "Combo1"
         Top             =   1080
         Width           =   2190
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         Left            =   3300
         TabIndex        =   1
         Text            =   "Combo2"
         Top             =   1770
         Width           =   2190
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "To Value"
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
         Left            =   2040
         TabIndex        =   8
         Top             =   2295
         Width           =   915
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Paramters"
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
         Left            =   2040
         TabIndex        =   5
         Top             =   1095
         Width           =   1035
      End
      Begin VB.Label Label5 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Quality parameters"
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
         Left            =   30
         TabIndex        =   4
         Top             =   45
         Width           =   7005
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "From Value"
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
         Left            =   2040
         TabIndex        =   3
         Top             =   1800
         Width           =   1170
      End
   End
End
Attribute VB_Name = "frmquality"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a, LENLEN As Integer
Dim Rs As Recordset
Dim PlotNo As Integer
Dim RS2 As Recordset
Dim Cn As Connection
Dim pg1 As Integer
Dim Pg As Integer
Dim Co As Integer
Dim ree As Double
Dim rev As Report.ReportView
Dim Pgcount As Integer
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim frommonth As String
Dim fmonth As Integer
Dim tomonth As String
Dim tmonth As Integer
Private Sub Combo1_Click()
'modified by parim
Set Rs = New Recordset
Rs.Open "select distinct " & Combo1.Text & " from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenStatic
Combo2.clear
Combo3.clear
If Rs.RecordCount > 0 Then
    For i = 1 To Rs.RecordCount
    Combo2.AddItem IIf(IsNull(Rs(0)), 0, Rs(0))
    Combo3.AddItem IIf(IsNull(Rs(0)), 0, Rs(0))
    Rs.MoveNext
    Next
   
Else
    MsgBox "Selected item not in the list ", vbInformation
    Exit Sub
End If
Rs.MoveFirst
Combo2.Text = IIf(IsNull(Rs(0)), 0, Rs(0))
Rs.MoveLast
Combo3.Text = IIf(IsNull(Rs(0)), 0, Rs(0))
End Sub
Private Sub Command1_Click()
Dim str As String
Pg = 1
div = DIVNAME
'modified by D.Parim
Set Cn = New Connection
Cn.Provider = "msdatashape"
Cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Co = 0
tot1 = 0
'Modified  by parim
Dim r As String
Dim S As String
ree = 0
r = a
S = b
Set Cn = New Connection
Cn.Provider = "msdatashape"
Cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close #1
Open "c:\soon.txt" For Output As #1
pg1 = 1
Call callhead(r, S, CInt(pg1))
'Modified by parim
U = Combo2.Text
V = Combo3.Text
If val(U) > val(V) Then
    MsgBox "From value Should be less than the to value ", vbInformation, head
    Exit Sub
End If
'Set rs = New Recordset
'rs.Open "select distinct a.lotno,0 plotno,f.slname,c.areaname,d.varcode,a.bales,e.bbflag,a.staplen,a.staplen50 , a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,isnull(mature,0) as mature,isnull(hmature,0) as hmature,isnull(a.imature,0) as imature,isnull(a.moisture,0) from rm_lot a, rm_area c,rm_var d,fa_slmas f,rm_cont e where a.varcode = d.varcode And a.AREACD = c.areacode and a.supcd = f.slcode and  a.lotdt Between '" & Format(r, "yyyy-mm-dd") & "' and ' " & Format(s, "yyyy-mm-dd") & "' AND A.LOTYEAR='" & Year(yfdate) & "'", cn, adOpenStatic
'If rs.RecordCount <= 0 Then
'    MsgBox "No record found", vbInformation
'    Exit Sub
'    Close #1
'End If
        Set RS2 = New Recordset
        RS2.Open "select distinct a.lotno,a.lotdt,f.slname,c.areaname,d.varname, a.bales,unit=case when e.bbflag = 'b' then 'Bales' else 'Borah' end,a.staplen,a.staplen50 , a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,a.catcd,a.divcode,a.lotdt,STAPLEN,a.UNIRATIO,fqi,MATURE,HMATURE,IMATURE,ROUND(ratecy,0) AS RATECANDY from rm_lot a, rm_area c,rm_var d,fa_slmas f,rm_cont e where a.varcode = d.varcode and a.AREACD = c.areacode and a.supcd = f.slcode and a.varcode=e.varcode and a.divcode='" & Divcode & "' and a.supcd=e.supcd and a.lotdt  between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & " ' and isnull(a." & Combo1.Text & " ,0) between " & Combo2.Text & " and " & Combo3.Text & "  ", DB, adOpenStatic
        
                 ' select distinct a.lotno,a.lotdt,plotno,f.slname,c.areaname,d.varname, a.bales,unit=case when e.bbflag = 'b' then 'Bales' else 'Borah' end,a.staplen,a.staplen50 ,a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,a.catcd,a.divcode,a.lotdt,STAPLEN,a.UNIRATIO,fqi,MATURE,HMATURE,IMATURE,ROUND(ratecy,0) AS RATECANDY,isnull(a.moisture,0)as moisture from rm_lot a, rm_area c,rm_var d,fa_slmas f,rm_cont e where a.varcode = d.varcode and a.AREACD = c.areacode and a.supcd = f.slcode and a.varcode=e.varcode and a.divcode='" & DIVCODE & "' and a.supcd=e.supcd and  a.lotdt  between '2005-04-01' and '2006-03-31' and a.FQI between 42 and 19305.8
        
        If RS2.RecordCount <= 0 Then
           MsgBox "No record found", vbInformation
           Exit Sub
        End If
        
            Do While Not RS2.EOF
                Print #1, Space(3) & Padr(Format(RS2("lotdt"), "dd/mm/yy"), 8, " ") & Space(1) & Padr(RS2("slname"), 24, " ") & Space(2) & Padr(RS2("varname"), 9, " ") & Space(3) & Padr(RS2("areaname"), 12, " ") & Space(1) & Padl(" ", 8, " ") & Space(2) & Padl(RS2("lotno"), 6, " ") & Space(2) & Padl(RS2("bales"), 5, " ") & Space(2) & Padl(INF(RS2("STAPLEN"), 2), 10, " ") & Space(1) & Padl(INF(RS2("STAPLEN50"), 2), 9, " "); Padl(INF(RS2("uniratio"), 2), 10, " "); Padl(INF(RS2("micronaire"), 2), 10, " "); Space(1); Padl(INF(RS2("strength"), 2), 10, " ");
                Print #1, Space(1); Padl(INF(RS2("MATURE"), 2), 9, " "); Padl(INF(RS2("HMATURE"), 2), 11, " "); Padl(INF(RS2("IMATURE"), 2), 10, " "); Padl(Format(RS2("mcoeff"), "#0.00"), 12, " "); Padl(INF(RS2("fqi"), 2), 10, " "); Padl(INF(RS2("RATECANDY"), 0), 10, " "); Padl(INF(0, 2), 11, " "); Padl(INF(RS2("trash_per"), 2), 10, " ")
                Co = Co + 1
                If Co >= 60 Then
                    Print #1, Space(3) & String(230, "-")
                    Print #1, Chr(12)
                    pg1 = pg1 + 1
                    Co = 0
                    Call callhead(CStr(a), CStr(b), CStr(pg1))
                End If
            RS2.MoveNext
            Loop
            
Print #1, Space(3) & String(230, "-")
Print #1, Chr(12)
Close #1
Open "c:\soon.bat" For Output As #1
Print #1, "cd\"
Print #1, "c:"
Print #1, "cd\"
Print #1, "type soon.txt>prn"
rev.txtfile = "c:\soon.txt"
rev.Batfile = "c:\soon.bat"
Close #17
End Sub

Private Sub callhead(S As String, q As String, pg1 As String)
Dim div As String
Print #1, Chr(18)
Print #1, Space(10) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
Print #1,
Print #1, Chr(15)
Print #1, Space(3) + "Quality Parameters " & Padr(Combo1.Text, 12, " ") & "between " & Padr(Combo2.Text, 5, " ") & "To" & Space(2) & Padr(Combo3.Text, 5, " ") & Space(147) & Space(8) & Format(Date, "dd/mm/yy") & Space(7) & "Pg.:" & Padl(pg1, 3, " ") & Chr(15)
Print #1, Space(3) & String(230, "-")
Print #1, Space(3); " Date of                                                       Party   Mill   No of        2.5%       50%     U.R %       M/C   Strength                                   Maturity               Rate/                                  "
Print #1, Space(3); " Receipt     Supplier Name         Variety     Station       Lot No. Lot No.  Bales          SL        SL               Value      g/tex    Mature   H.Mature  Immature     Co-effi       FQI     Candy   Moisture    Trash%  Remarks   "
Print #1, Space(3) & String(230, "-")
Co = Co + 9
End Sub
  
Private Sub Command2_Click()
Unload Me
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
    Dim s1 As String
        Command1.Enabled = True
        Command2.Enabled = True
        'Command1.TabIndex = 0
        Screen.MousePointer = 0
        paraadd
End Sub
Function paraadd()
'Combo1.AddItem ("Moisture")
Combo1.AddItem ("Trash_Per")
Combo1.AddItem ("FQI")
Combo1.AddItem ("Micronaire")
Combo1.AddItem ("Mcoeff")
'Combo1.AddItem ("Mature")
Combo1.AddItem ("Imature")
Combo1.AddItem ("Staplen50")
Combo1.AddItem ("Staplen")
Combo1.AddItem ("Hmature")
Combo1.AddItem ("Strength")
Combo1.AddItem ("Uniratio")
Combo1.ListIndex = 0
End Function


