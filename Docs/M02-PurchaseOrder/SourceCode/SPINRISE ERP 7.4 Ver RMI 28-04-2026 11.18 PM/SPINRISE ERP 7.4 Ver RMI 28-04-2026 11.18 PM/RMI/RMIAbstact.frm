VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Frmissueabstact 
   Caption         =   "Form2"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdreport 
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
      Height          =   390
      Left            =   3780
      TabIndex        =   8
      Top             =   4140
      Width           =   930
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "&Exit"
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
      Left            =   5220
      TabIndex        =   7
      Top             =   4140
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2655
      Left            =   2100
      TabIndex        =   0
      Top             =   1260
      Width           =   5445
      _ExtentX        =   9604
      _ExtentY        =   4683
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "RMIAbstact.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2340
         Left            =   120
         TabIndex        =   1
         Top             =   120
         Width           =   5190
         Begin VB.ComboBox Combo1 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   2070
            Style           =   2  'Dropdown List
            TabIndex        =   11
            Top             =   1800
            Visible         =   0   'False
            Width           =   2535
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   375
            Left            =   2040
            TabIndex        =   10
            Top             =   1290
            Width           =   1830
            _ExtentX        =   3228
            _ExtentY        =   661
            _Version        =   393216
            Format          =   47841281
            CurrentDate     =   38147
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   2025
            TabIndex        =   9
            Top             =   750
            Width           =   1860
            _ExtentX        =   3281
            _ExtentY        =   609
            _Version        =   393216
            Format          =   47841281
            CurrentDate     =   38147
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   360
            Left            =   2040
            TabIndex        =   2
            Top             =   1290
            Width           =   1830
            _ExtentX        =   3228
            _ExtentY        =   635
            _Version        =   393216
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   360
            Left            =   2040
            TabIndex        =   3
            Top             =   750
            Width           =   1845
            _ExtentX        =   3254
            _ExtentY        =   635
            _Version        =   393216
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Type"
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
            Left            =   600
            TabIndex        =   12
            Top             =   1800
            Visible         =   0   'False
            Width           =   1155
         End
         Begin VB.Label Label1 
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
            Height          =   195
            Left            =   660
            TabIndex        =   6
            Top             =   750
            Width           =   885
         End
         Begin VB.Label Label2 
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
            Height          =   195
            Left            =   660
            TabIndex        =   5
            Top             =   1290
            Width           =   705
         End
         Begin VB.Label Label4 
            Alignment       =   2  'Center
            BackColor       =   &H80000002&
            Caption         =   "Issue Abstract"
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
            Left            =   30
            TabIndex        =   4
            Top             =   120
            Width           =   5130
         End
      End
   End
End
Attribute VB_Name = "Frmissueabstact"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As Recordset
Dim DB As Connection
Dim rsissuerep As Recordset
Dim rsdett As Recordset
Dim rsdet As Recordset
Dim a As Integer
Dim Pg As Integer
Dim C As Integer
Dim Rep As Report.ReportView

Private Sub cmdExit_Click()
    Unload Me
End Sub

Private Sub cmdReport_Click()
On Error Resume Next
    Set rsissuerep = New Recordset
    '''under commented line is due to dtpicker replacement
    '''rsissuerep.Open "select distinct docdt,count(baleno) totbal,sum(actisskgs) totkgs from rm_issb where docdt between '" & Format(DataCombo1.Text, "yyyy/mm/dd") & "' and '" & Format(DataCombo2.Text, "yyyy/mm/dd") & "' group by docdt order by docdt", DB, adOpenStatic, adLockReadOnly
    '''correction
'    If Combo1.Text = "P-Unit 1-Production" Then
'        typeflg = "P"
'    ElseIf Combo1.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'    ElseIf Combo1.Text = "A-All Unit Production" Then
'        typeflg = "A"
'    End If
    typeflg = Trim(Left(Combo1.Text, 2))
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    V = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(U) > CDate(V) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(V) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    
    
    a = FreeFile
    Pg = 1
    C = 0
    Close
    Open "c:\group.txt" For Output As #a
    Call abstractheader(Pg, C)
    C = 7
    
'    Set rsUnit = New Recordset
'    If typeflg = "A" Then
'        rsUnit.Open "select distinct b.isstype from rm_lot l,rm_issb b where b.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' " & _
'                    " and l.lotno=b.lotno and l.lotdt=b.lotdt and b.isstype <> 'T' order by b.isstype", db, adOpenStatic, adLockReadOnly
'    Else
'        rsUnit.Open "select distinct b.isstype from rm_lot l,rm_issb b where b.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' " & _
'                    " and l.lotno=b.lotno and l.lotdt=b.lotdt and b.isstype <> 'T' and b.isstype = '" & typeflg & "' order by b.isstype", db, adOpenStatic, adLockReadOnly
'    End If
'
'    Do While Not rsUnit.EOF
'        If rsUnit("IssType") = "P" Then
'            Print #A,
'            Print #A, Space(15) + "Unit - I"
'            Print #A,
'        ElseIf rsUnit("IssType") = "Q" Then
'            Print #A,
'            Print #A, Space(15) + "Unit - II"
'            Print #A,
'        End If
'        C = C + 3
    Set rsdate = New Recordset
    If typeflg = "A" Then
        rsdate.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype <> 'T' order by docdt", DB, adOpenStatic, adLockReadOnly
    Else
        rsdate.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype <> 'T' and isstype ='" & typeflg & "' order by docdt", DB, adOpenStatic, adLockReadOnly
    End If

    Do While Not rsdate.EOF
    boo = True
            Set RsUnit = New Recordset
            If typeflg = "A" Then
                RsUnit.Open "select distinct isstype from rm_issb where divcode='" & Divcode & "' and docdt ='" & Format(rsdate("docdt"), "yyyy-mm-dd") & "' and isstype <> 'T' order by isstype", DB
            Else
                RsUnit.Open "select distinct isstype from rm_issb where  divcode='" & Divcode & "' and docdt ='" & Format(rsdate("docdt"), "yyyy-mm-dd") & "' and isstype <> 'T' and isstype = '" & typeflg & "' order by isstype", DB
            End If
            Print #a, Space(5) + Chr(27) + "E" + Padr(Format(rsdate("docdt"), "dd-mm-yy"), 8, " ") + Chr(27) + "F";
            C = C + 1
            
            Do While Not RsUnit.EOF
            
                Set rsdet = New Recordset
                    rsdet.Open "select i.docdt,unit = (CASE WHEN i.isstype = 'P' then 1 else 2 end),l.varcode,i.docno,count(i.baleno) bales,sum(i.actisskgs) Kgs,sum(isnull(i.actisskgs,0)*round(l.ratekg,5)) 'Amount',l.ratekg from " & _
                               " rm_issb i,rm_lot l  where i.divcode=l.divcode and i.divcode='" & Divcode & "' and i.lotno=l.lotno and i.lotdt=l.lotdt and " & _
                               " i.docdt ='" & Format(rsdate("docdt"), "yyyy-mm-dd") & "'  and i.isstype <> 'T' and i.isstype='" & RsUnit("isstype") & "'and l.lotyear='" & Year(yfdate) & "' group by i.docdt,i.docno,l.varcode,i.isstype,L.RATEKG " & _
                               " order by l.varcode,i.docno", DB, adOpenStatic, adLockReadOnly
                               
                               
                               
                
                               
                               
                               
                If C >= 63 Then
                    Print #a, Space(5) & String(80, "-")
                    Print #a, Chr(12)
                    C = 0
                    Pg = Pg + 1
                    Call abstractheader(Pg, C)
                    C = 7
                End If
               Do While Not rsdet.EOF
                                avg1 = rsdet("amount") / rsdet("kgs")
                
                               
                               Set rsdett = New Recordset
                            rsdett.Open "select l.varcode,count(i.baleno) as bales from " & _
                            " rm_issb i,rm_lot l  where l.varcode= '" & rsdet("varcode") & "' and i.divcode=l.divcode and i.divcode='" & Divcode & "' and i.lotno=l.lotno and i.lotdt=l.lotdt and " & _
                            " i.docdt ='" & Format(rsdet("docdt"), "yyyy-mm-dd") & "'  and i.isstype <> 'T' and i.isstype='" & RsUnit("isstype") & "'and l.lotyear='" & Year(yfdate) & "' and i.issued='Y' group by i.docdt,i.docno,l.varcode,i.isstype " & _
                            " order by l.varcode,i.docno", DB, adOpenStatic, adLockReadOnly
 
              '  Do While Not rsdett.EOF
                    If rsdet("unit") <> unit Then
                        Print #a, Space(1) + Space(3) + Padr(rsdet("varcode"), 5, " ") + Space(2) + Padl(rsdet("docno"), 5, " ") + Space(4) + Padl(rsdett("Bales"), 6, " ") + Space(3) + Padl(INF(rsdet("kgs"), 3), 14, " ") + Space(2) + Padl(INF(rsdet("amount"), 3), 18, " ") + Space(1) + Padl(INF(rsdet("ratekg"), 2), 8, " ")
                        C = C + 1
                    Else
                        If rsdet("Varcode") <> var Then
                            Print #a, Space(12) + Space(5) + Padr(rsdet("varcode"), 5, " ") + Space(2) + Padl(rsdet("docno"), 5, " ") + Space(4) + Padl(rsdett("Bales"), 6, " ") + Space(3) + Padl(INF(rsdet("kgs"), 3), 14, " ") + Space(2) + Padl(INF(rsdet("amount"), 3), 18, " ") + Space(1) + Padl(INF(rsdet("ratekg"), 2), 8, " ")
                        Else
                            Print #a, Space(12) + Space(10) + Space(2) + Padl(rsdet("docno"), 5, " ") + Space(4) + Padl(rsdett("Bales"), 6, " ") + Space(3) + Padl(INF(rsdet("kgs"), 3), 14, " ") + Space(2) + Padl(INF(rsdet("amount"), 3), 18, " ") + Space(1) + Padl(INF(rsdet("ratekg"), 2), 8, " ")
                        End If
                        C = C + 1
                    End If
                    If boo = True Then
                    Print #a, Space(3)
            'boo = False
                   End If
            
                    var = rsdet("Varcode")
                    
                    unit = rsdet("unit")
                    
                    bal = bal + rsdett("Bales")
                    kg = kg + rsdet("Kgs")
                    value = value + rsdet("amount")
                '    Unbal = Unbal + rsDet("Bales")
                '    Unkg = Unkgs + rsDet("Kgs")
                
                
                
                
               ' rsdett.MoveNext
                'Exit Sub
              '  Loop
                    rsdet.MoveNext
                
                    'Exit Sub
                        If C >= 60 Then
                             Print #a, Space(5) & String(80, "-")
                        Print #a, Chr(12)
                        C = 0
                        Pg = Pg + 1
                        Call abstractheader(Pg, C)
                        C = 7
                    End If
                    
                    
             'If rsdet.RecordCount > 1 Then
            'Print #a, Space(33) & String(9, "-") & Space(0) & String(16, "-") & Space(0) & String(19, "-") & Space(0) & String(8, "-")
            'Print #a, Space(10) + Padl("   **  Total  ** ", 20, " ") + Space(3) + Padl(bal, 6, " ") + Space(3) + Padl(INF(kg, 3), 14, " ") + Space(2) + Padl(INF(Value, 3), 18, " ") + Space(1) + Padl(INF(avgratekg, 2), 8, " ")
            'Print #a, Space(33) & String(9, "-") & Space(0) & String(16, "-") & Space(0) & String(19, "-") & Space(0) & String(8, "-")
            'c = c + 3
            'End If

                    
                Loop
                'Print #A, Space(10) + Padl(" ** Unit Total  ** ", 20, " ") + Space(3) + Padl(Unbal, 6, " ") + Space(3) + Padl(INF(Unkg, 3), 14, " ")
                'Unbal = 0
                'Unkg = 0
            RsUnit.MoveNext
            unit = 0
            'var = " "
            If C >= 60 Then
                Print #a, Space(5) & String(80, "-")
                Print #a, Chr(12)
                C = 0
                Pg = Pg + 1
                Call abstractheader(Pg, C)
                C = 7
            End If
            Loop
            avgratekg = value / kg
            If rsdet.RecordCount > 1 Then
            Print #a, Space(17) & String(25, "-") & Space(0) & String(16, "-") & Space(0) & String(19, "-") & Space(0) & String(8, "-")
            Print #a, Space(0) + Chr(27) + "E" + Padl("Total", 22, " ") + Space(5 + 6) + Padl(bal, 6, " ") + Space(3) + Padl(INF(kg, 3), 14, " ") + Space(2) + Padl(INF(value, 3), 18, " ") + Space(1) + Padl(INF(avgratekg, 2), 8, " ") + Chr(27) + "F"
            Print #a, Space(17) & String(25, "-") & Space(0) & String(16, "-") & Space(0) & String(19, "-") & Space(0) & String(8, "-")
            C = C + 3
            boo = False
            End If
            
            rsdate.MoveNext
            bal = 0
            kg = 0
            value = 0
     Loop
            ''Print #a,
            ''c = c + 1
            ''Print #a, Space(28) + Padl("   **  Average Rate/Kg  ** ", 28, " ") & Padl(INF(avgratekg, 2), 15, "")
            ''c = c + 1
        '----------------Commented on 20050630 ------------
'          Set rsDet = New Recordset
'            rsDet.Open "select i.docdt,unit = (CASE WHEN i.isstype = 'P' then 1 else 2 end),l.varcode,i.docno,count(i.baleno) bales,sum(i.isskgs) Kgs from " & _
'                       " rm_issb i,rm_lot l  where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and " & _
'                       " i.docdt ='" & Format(rsdate("docdt"), "yyyy-mm-dd") & "'  and i.isstype <> 'T'  group by i.docdt,i.docno,l.varcode,i.isstype " & _
'                       " order by i.docno,l.varcode", db, adOpenStatic, adLockReadOnly
'
'            Print #A, Space(5) + Chr(27) + "E" + Padr(Format(rsdate("docdt"), "dd-mm-yyyy"), 10, " ") + Chr(27) + "F"
'            bal = 0
'            kg = 0
'
'            Do While Not rsDet.EOF
'                If rsDet("Unit") <> unit Then
'                    Print #A, Space(10) + Padr(rsDet("Unit"), 2, " ") + Space(5) + Padr(rsDet("varcode"), 5, " ") + Space(2) + Padl(rsDet("docno"), 5, " ") + Space(4) + Padl(rsDet("Bales"), 6, " ") + Space(3) + Padl(INF(rsDet("kgs"), 3), 14, " ")
'                Else
'                    If rsDet("VarCode") <> var Then
'                        Print #A, Space(12) + Space(5) + Padr(rsDet("varcode"), 5, " ") + Space(2) + Padl(rsDet("docno"), 5, " ") + Space(4) + Padl(rsDet("Bales"), 6, " ") + Space(3) + Padl(INF(rsDet("kgs"), 3), 14, " ")
'                    Else
'                        Print #A, Space(12) + Space(10) + Space(2) + Padl(rsDet("docno"), 5, " ") + Space(4) + Padl(rsDet("Bales"), 6, " ") + Space(3) + Padl(INF(rsDet("kgs"), 3), 14, " ")
'                    End If
'                    var = rsDet("Varcode")
'                End If
'                unit = rsDet("Unit")
'                bal = bal + rsDet("Bales")
'                kg = kg + rsDet("Kgs")
'                rsDet.MoveNext
'            Loop
'            Print #A, Space(10) + Padl("   **  Total  ** ", 20, " ") + Space(3) + Padl(bal, 6, " ") + Space(3) + Padl(INF(kg, 3), 14, " ")
'    rsdate.MoveNext
'    Loop
    '----------------Commented on 20050630 ------------

        'Set rsVar = New Recordset
        'rsVar.Open "select distinct l.varcode from rm_lot l,rm_issb b where b.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' " & _
                   " and l.lotno=b.lotno and l.lotdt=b.lotdt order by l.varcode", db, adOpenStatic, adLockReadOnly
'        Set rsVar = New Recordset
'        rsVar.Open "select distinct l.varcode from rm_issb i,rm_lot l where i.lotno=l.lotno and i.divcode=l.divcode and " & _
'                   " i.lotdt=l.lotdt and i.lottype=l.lottype and i.catcd=l.catcd and " & _
'                   " i.docdt Between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' and i.isstype='" & rsUnit("Isstype") & "'", db, adOpenStatic, adLockReadOnly
'
'        Do While Not rsVar.EOF
'            Set rsdet = New Recordset
'            rsdet.Open "select i.docdt,l.varcode,i.docno,count(i.baleno) bales,sum(i.isskgs) Kgs,i.isstype from rm_issb i,rm_lot l " & _
'                       " where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and i.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' " & _
'                       " and i.isstype <> 'T' and i.isstype='" & rsUnit("Isstype") & "' and l.varcode='" & rsVar("Varcode") & "'" & _
'                       " group by i.docdt,i.docno,l.varcode,i.isstype order by i.docdt,i.docno", db, adOpenStatic, adLockReadOnly
'            Print #A, Space(5) + Chr(27) + "E" + Padr(rsVar("Varcode"), 5, " ") + Chr(27) + "F"
'            C = C + 1
'            If C >= 60 Then
'                     Print #A, Space(5) & String(80, "-")
'                     Print #A, Chr(12)
'                     C = 0
'                     PG = PG + 1
'                     Call abstractheader(PG, C)
'                     C = 7
'            End If
'            Do While Not rsdet.EOF
'                If docdt <> rsdet("docdt") Then
'                    Print #A, Space(5) + Padr(rsdet("docdt"), 10, " ") + Space(5) + Padl(rsdet("docno"), 5, " ") + Space(4) + Padl(rsdet("Bales"), 6, " ") + Space(3) + Padl(INF(rsdet("kgs"), 3), 14, " ")
'                Else
'                    Print #A, Space(15) + Space(5) + Padl(rsdet("docno"), 5, " ") + Space(4) + Padl(rsdet("Bales"), 6, " ") + Space(3) + Padl(INF(rsdet("kgs"), 3), 14, " ")
'                End If
'                C = C + 1
'                docdt = rsdet("docdt")
'                If C >= 60 Then
'                     Print #A, Space(5) & String(80, "-")
'                     Print #A, Chr(12)
'                     C = 0
'                     PG = PG + 1
'                     Call abstractheader(PG, C)
'                     C = 7
'                 End If
'                rsdet.MoveNext
'            Loop
'            rsVar.MoveNext
'        Loop
'        rsUnit.MoveNext
'    Loop
 
    
    
    If typeflg = "A" Then
        rsissuerep.Open "select distinct docdt,count(baleno) totbal,sum(actisskgs) totkgs from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype <> 'T' group by docdt order by docdt", DB, adOpenStatic, adLockReadOnly
    Else
        rsissuerep.Open "select distinct docdt,count(baleno) totbal,sum(actisskgs) totkgs from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype='" & typeflg & "' group by docdt order by docdt", DB, adOpenStatic, adLockReadOnly
    End If
    'Set rsdate = New Recordset
    'rsdate.Open "select distinct docdt from rm_issb where docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' and isstype <> 'T'", db, adOpenStatic, adLockReadOnly
    
    'Do While Not rsdate.EOF
    
    'If typeflg = "A" Then
    
       ' rsissuerep.Open "select i.docdt,l.varcode,i.docno,count(i.baleno) bales,sum(i.isskgs) Kgs,i.isstype from rm_issb i,rm_lot l " & _
                        "where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and i.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' " & _
                        "and i.isstype <> 'T' " & _
                        " group by i.isstype,l.varcode,i.docdt,i.docno,i.isstype order by i.docdt,i.docno", db, adOpenStatic, adLockReadOnly
                    
        ' rsissuerep.Open "SELECT PDocdt,PVarcode,pdocno,pbales,pkgs,QDocdt,QVarcode,Qdocno,Qbales,Qkgs,pkgs+qkgs as Totkgs,PBales+QBales as TotBales from ( " & _
                         " select i.docdt Pdocdt,l.varcode PVarcode,i.docno Pdocno,count(i.baleno) Pbales,sum(i.isskgs) PKgs,0 as Qdocdt,'z' as QVarcode,0 AS Qdocno,0 AS  Qbales,0 AS QKgs from rm_issb i,rm_lot l" & _
                         " where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and i.docdt = '" & Format(rsdate("Docdt"), "yyyy-mm-dd") & "' and i.isstype='P' " & _
                         " group by i.isstype,i.docdt,i.docno,l.varcode,i.isstype " & _
                         " Union All " & _
                         " select 0 as PDocdt,'z' as PVarcode,0 AS  Pdocno,0 AS Pbales,0 AS PKgs,i.docdt QDocdt,l.varcode QVarcode,i.docno Qdocno,count(i.baleno) Qbales,sum(i.isskgs) QKgs from rm_issb i,rm_lot l " & _
                         " where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and i.docdt ='" & Format(rsdate("Docdt"), "yyyy-mm-dd") & "'  and i.isstype='Q' " & _
                         " group by i.isstype,i.docdt,i.docno,l.varcode,i.isstype)x order  by pdocdt,qdocdt", db
    'Else
     '   rsissuerep.Open "select i.docdt,l.varcode,i.docno,count(i.baleno) bales,sum(i.isskgs) Kgs,i.isstype from rm_issb i,rm_lot l " & _
                        "where i.divcode=l.divcode and i.lotno=l.lotno and i.lotdt=l.lotdt and i.docdt between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "'  " & _
                        "and i.isstype <> 'T' and i.issType ='" & typeflg & "'" & _
                        " group by i.isstype,l.varcode,i.docdt,i.docno,i.isstype order by i.docdt,i.docno", db, adOpenStatic, adLockReadOnly
    'End If
    
    
    
'    Do While Not rsissuerep.EOF
'        Print #A, Space(5) + Padr(rsissuerep("Pdocdt"), 10, " ") + Space(2) + Padr(rsissuerep("Pvarcode"), 4, " ") + Space(2) + Padl(rsissuerep("Pdocno"), 4, " ") + Space(1) + Padl(rsissuerep("PBales"), 5, " ") + Space(1) + Padl(rsissuerep("PKgs"), 8, " ") + Space(1) + Padr(rsissuerep("Qdocdt"), 10, " ") + Space(2) + Padr(rsissuerep("Qvarcode"), 4, " ") + Space(2) + Padl(rsissuerep("Qdocno"), 4, " ") + Space(1) + Padl(rsissuerep("QBales"), 5, " ") + Padl(rsissuerep("QKgs"), 8, " ")
'        rsissuerep.MoveNext
'    Loop
'
'    rsdate.MoveNext
'    Loop
    
'    Do While Not rsissuerep.EOF
'        Print #A, Space(5) + Padr(rsissuerep("docdt"), 10, " ") + Space(10) + Padl(rsissuerep("totbal"), 10, " ") + Space(6); Padl(INF(rsissuerep("totkgs"), 3), 14, " ")
'
'        C = C + 1
'        If C >= 60 Then
'            Print #A, Space(5) & String(80, "-")
'            Print #A, Chr(12)
'            C = 0
'            PG = PG + 1
'            Call abstractheader(PG, C)
'            C = 7
'        End If
'        totbl = totbl + rsissuerep("totbal")
'        totkg = totkg + rsissuerep("totKgs")
'        rsissuerep.MoveNext
'
'    Loop
'    If typeflg <> "A" Then
'        Print #A, Space(5) & String(80, "-")
'        Print #A, Space(15) & "Total    :" & Padl(totbl, 10, " ") & Space(6) & Padl(INF(totkg, 3), 14, " ")
'        C = C + 2
'    End If
    Print #a, Space(5) & String(80, "-")
   ' If typeflg = "A" Then
           ' Print #a, Space(7) & "Abstract :"
            Set RsUnit = New Recordset
            If typeflg = "A" Then
                RsUnit.Open "select distinct isstype from rm_issb where divcode='" & Divcode & "' and  docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype <> 'T' order by isstype", DB
            Else
                RsUnit.Open "select distinct isstype from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and isstype <> 'T' and isstype = '" & typeflg & "' order by isstype", DB
            End If
            FLG1 = 0
            flg2 = 0
            Do While Not RsUnit.EOF
                Set rsabs = New Recordset
               'rsAbs.Open "select sum(a.totbal) totbal,sum(a.totkgs) totkgs from " & _
                           "(select distinct docdt,count(baleno) totbal,sum(actisskgs) totkgs " & _
                           " from rm_issb where docdt Between '" & Format(DTPicker1.Value, "yyyy/mm/dd") & "' and " & _
                           " '" & Format(DTPicker2.Value, "yyyy/mm/dd") & "' and isstype = '" & rsunit("Isstype") & "'  group by docdt)a", db
                rsabs.Open "select sum(a.totbal) totbal,sum(a.totkgs) totkgs,varcode,sum(a.amount)value,avg(ratekg)ratekg from (select distinct i.docdt,totbal=(case when i.issued in('y','Y')then count(i.baleno)else 0 end), " & _
                           " sum(i.actisskgs) totkgs,l.varcode,sum(isnull(i.actisskgs,0)*round(l.ratekg,5)) 'Amount',avg(l.ratekg)ratekg   from rm_issb i,rm_lot l where i.divcode=l.divcode and i.divcode='" & Divcode & "' and i.lotno=l.lotno and " & _
                           " i.lotdt=l.lotdt and i.docdt Between '" & Format(DTPicker1.value, "yyyy/mm/dd") & "' and  '" & Format(DTPicker2.value, "yyyy/mm/dd") & "' and i.isstype = '" & RsUnit("Isstype") & "' and l.lotyear='" & Year(yfdate) & "' group by " & _
                           " i.docdt,l.varcode,i.issued)a group by varcode", DB, adOpenStatic, adLockReadOnly
                Do While Not rsabs.EOF
                    If C >= 60 Then
                        Print #a, Space(5) & String(80, "-")
                        Print #a, Chr(12)
                        C = 0
                        Pg = Pg + 1
                        Call abstractheader(Pg, C)
                        C = 7
                    End If

                    If RsUnit("Isstype") = "P" Then
                        If FLG1 = 0 Or FLG1 = 101 Then
                          If FLG1 = 0 Then
                            'Print #A, Space(15) & "Unit  I  :" & Padl(rsAbs("totbal"), 10, " ") & Space(6) & Padl(INF(rsAbs("totkgs"), 3), 14, " ")
                                Print #a, Space(7) & "Unit  I  :" + Padr(rsabs("Varcode"), 5, " ") + Space(11) + Padl(rsabs("totbal"), 6, " ") & Space(3) & Padl(INF(rsabs("totkgs"), 3), 14, " ") + Space(2) + Padl(INF(rsabs("value"), 3), 18, " ") + Space(1) + Padl(INF(rsabs("ratekg"), 2), 8, " ")
                                FLG1 = 1
                           ElseIf FLG1 = 101 Then
                                Print #a, Space(17) & Padr(rsabs("Varcode"), 5, " ") + Space(11) + Padl(rsabs("totbal"), 6, " ") & Space(3) & Padl(INF(rsabs("totkgs"), 3), 14, " ") + Space(2) + Padl(INF(rsabs("value"), 3), 18, " ") + Space(1) + Padl(INF(rsabs("ratekg"), 2), 8, " ")
                           End If
                           If rsabs.RecordCount > 0 Then
                               FLG1 = 101
                           End If
                        ElseIf FLG1 = 0 Then
                            Print #a, Space(7) & "Unit  I  :"
                            FLG1 = 1
                        End If
                    End If
                    If RsUnit("Isstype") = "Q" Then
                        If flg2 = 0 Or flg2 = 201 Then
                            If flg2 = 0 Then
                                Print #a, Space(7) & "Unit II  :" + Padr(rsabs("Varcode"), 5, " ") + Space(11) + Padl(rsabs("totbal"), 6, " ") & Space(3) & Padl(INF(rsabs("totkgs"), 3), 14, " ") + Space(2) + Padl(INF(rsabs("value"), 3), 18, " ") + Space(1) + Padl(INF(rsabs("ratekg"), 2), 8, " ")
                                flg2 = 1
                            ElseIf flg2 = 201 Then
                                Print #a, Space(17) + Padr(rsabs("Varcode"), 5, " ") + Space(11) + Padl(rsabs("totbal"), 6, " ") & Space(3) & Padl(INF(rsabs("totkgs"), 3), 14, " ") + Space(2) + Padl(INF(rsabs("value"), 3), 18, " ") + Space(1) + Padl(INF(rsabs("ratekg"), 2), 8, " ")
                            End If
                            If rsabs.RecordCount > 1 Then
                                flg2 = 201
                            End If
                        ElseIf flg2 = 0 Then
                            Print #a, Space(7) & "Unit II  :"
                            flg2 = 1
                        End If
                    End If
                   totbal = totbal + rsabs("totBal")
                   totkgs = totkgs + rsabs("totkgs")
                   totVal = totVal + rsabs("value")
                   rsabs.MoveNext
                   
                Loop
                RsUnit.MoveNext
            Loop
            If flg2 = 0 Then
                'Print #a, Space(7) & "Unit II  :"
                flg2 = 1
            End If
            totavgratekg = totVal / totkgs
           ' Print #a, Space(33) & String(6, "-") & Space(3) & String(14, "-") + Space(2) + String(18, "-") + Space(1) + String(8, "-")
             'Print #a, Space(0) + Padl("Total", 22, " ") + Space(5 + 6) + Padl(bal, 6, " ") + Space(3) + Padl(INF(kg, 3), 14, " ") + Space(2) + Padl(INF(Value, 3), 18, " ") + Space(1) + Padl(INF(avgratekg, 2), 8, " ")
            Print #a, Space(15) + Chr(27) + "E" + "  Grand Total " & Space(0) & Padl(totbal, 10, " ") & Space(3) & Padl(INF(totkgs, 3), 14, " ") + Space(2) + Padl(INF(totVal, 3), 18, " ") + Space(1) + Padl(INF(totavgratekg, 2), 8, "") + Chr(27) + "F"
            C = C + 3
            Print #a, Space(5) & String(80, "-")
''            Print #a,
''            c = c + 1
''            Print #a, Space(28) + Padl("   **  Average Rate/Kg  ** ", 28, " ") & Padl(INF(totavgratekg, 2), 15, "")
''            c = c + 1
            
            
            
'            If C >= 60 Then
'                Print #A, Space(5) & String(80, "-")
'                Print #A, Chr(12)
'                C = 0
'                PG = PG + 1
'                Call abstractheader(PG, C)
'                C = 7
'            End If
'    End If
    
    Close #a
    Set Rep = New Report.ReportView
    Open "c:\group.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Rep.txtfile = "c:\group.txt"
    Rep.Batfile = "c:\group.bat"
    Close #a
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct docdt from rm_issb where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by docdt", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "docdt"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "docdt"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
        Rs.MoveLast
        DataCombo2.Text = Rs(0)
        
        '''correction
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.value = Rs(0)
        DTPicker2.value = pdate
        DTPicker1.MaxDate = pdate
        DTPicker2.MaxDate = pdate
        
        Label3.Visible = True
'        Combo1.AddItem "P-Unit 1-Production"
'        Combo1.AddItem "Q-Unit 2-Production"
'        Combo1.AddItem "A-All Unit Production"
'        Combo1.Text = "A-All Unit Production"
        Call IssLoad(Combo1)
        Combo1.Visible = True
        
    Else
        MsgBox "No Record Found For This Month", vbInformation, head
        Exit Sub
    End If
    
    
    
End Sub

Public Sub abstractheader(Pg As Integer, C As Integer)
    Print #a,
    Print #a, Space(5) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ") + Chr(27) + "F"
    Print #a,
    Print #a, Space(5) + "Issue Abstract between " + Chr(27) + "E" + Format(DTPicker1.value, "dd/mm/yy") + Chr(27) + "F" + " And " + Chr(27) + "E" + Format(DTPicker2.value, "dd/mm/yy") + Chr(27) + "F" + Space(10 + 8) + Format(pdate, "dd/mm/yy") + "  Pg.: " + Padl(Pg, 3, " ")
    Print #a, Space(5) + String(80, "-")
    'Print #a, Space(5) + "Issue Date                                                                   Avg"
    'Print #a, Space(5) + "  Unit      Varcode  Mix No  Bales              Kgs               Value  Rate/Kg"
    'Print #a, Space(5) + "Issue Date                                                                   Avg"
    Print #a, Space(5) + "Issue Date  Variety  Mix No  Bales              Kgs               Value  Rate/Kg"
    Print #a, Space(5) + String(80, "-")
    C = 8
   ' Exit Sub
End Sub

