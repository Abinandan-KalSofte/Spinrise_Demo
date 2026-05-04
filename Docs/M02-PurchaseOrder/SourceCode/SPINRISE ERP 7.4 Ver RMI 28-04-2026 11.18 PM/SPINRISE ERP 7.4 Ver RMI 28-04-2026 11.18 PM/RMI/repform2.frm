VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form repform2 
   Caption         =   "Stock Statement"
   ClientHeight    =   5880
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8610
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5880
   ScaleWidth      =   8610
   WindowState     =   2  'Maximized
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
      Left            =   5520
      TabIndex        =   5
      Top             =   5280
      Width           =   930
   End
   Begin VB.CommandButton cmdreport 
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
      Height          =   390
      Left            =   4080
      TabIndex        =   4
      Top             =   5280
      Width           =   930
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2670
      Left            =   2400
      TabIndex        =   6
      Top             =   2040
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   4710
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "repform2.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2505
         Left            =   150
         TabIndex        =   7
         Top             =   45
         Width           =   5655
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1680
            TabIndex        =   0
            Top             =   600
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   609
            _Version        =   393216
            Format          =   66846721
            CurrentDate     =   37820
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   315
            Left            =   1680
            TabIndex        =   1
            Top             =   1086
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   556
            _Version        =   393216
            Text            =   ""
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   315
            Left            =   1680
            TabIndex        =   2
            Top             =   1542
            Width           =   2820
            _ExtentX        =   4974
            _ExtentY        =   556
            _Version        =   393216
            Text            =   ""
         End
         Begin MSDataListLib.DataCombo DataCombo3 
            Height          =   315
            Left            =   1680
            TabIndex        =   3
            Top             =   2000
            Width           =   2820
            _ExtentX        =   4974
            _ExtentY        =   556
            _Version        =   393216
            Text            =   ""
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "To Variety"
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
            Left            =   360
            TabIndex        =   12
            Top             =   2040
            Width           =   885
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "From Variety"
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
            Left            =   360
            TabIndex        =   11
            Top             =   1560
            Width           =   1065
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   360
            TabIndex        =   10
            Top             =   1080
            Width           =   765
         End
         Begin VB.Label Label3 
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
            Left            =   360
            TabIndex        =   9
            Top             =   720
            Width           =   420
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Stock Statment"
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
            Width           =   5565
         End
      End
   End
End
Attribute VB_Name = "repform2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim db As Connection
Dim Rep As Report.ReportView
Dim heading As String
Dim CATRS As New Recordset
Dim varrs As New Recordset
Dim LotRs As New Recordset
Dim balers As New Recordset
Dim a As Integer
Dim pg1 As Integer
Dim C As Integer

Private Sub cmdexit_Click()
On Error GoTo cmdexit_Click_Error

    Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error

    Set varrs = New Recordset
    varrs.Open "select distinct a.varcode,b.VARNAME from rm_bale A,rm_var b where a.varcode*=b.varcode and  a.catcd ='" & DataCombo1.Text & "' and ((a.varcode between '" & DataCombo2.Text & "' AND '" & DataCombo3.Text & "') OR (a.varcode between '" & DataCombo3.Text & "' AND '" & DataCombo2.Text & "'))", db, adOpenStatic, adLockBatchOptimistic
    
    Varcode = ""
    While Not varrs.EOF
        If Varcode = "" Then
            Varcode = "('" + varrs("Varcode") + "'"
        Else
            Varcode = Varcode + ",'" + varrs("varcode") + "'"
        End If
        varrs.MoveNext
    Wend
    Varcode = Varcode + ")"
    F_Date = DTPicker1.value
    T_Date = DTPicker1.value
    SR = "('" + DataCombo1.Text + "')"
    
    Set rs1 = New Recordset
    rs1.Open "select a.varcode,a.lotno,a.lotdt,sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0)) as opbales,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0))+ sum(isnull(a.recboras,0)) as recbales ,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0))+sum(isnull(a.issboras,0))  as issbales,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0))+sum(isnull(a.recbales,0)))- (sum(isnull(a.issbales,0)) +sum(isnull(a.issboras,0)))  else (sum(isnull(a.recbales,0))+ sum(isnull(a.recboras,0))) -  (sum(isnull(a.issbales,0))+sum(isnull(a.issboras,0))) end  as clobales, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode,lotno,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,b.lotno,b.lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd in " & SR & "  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 AND B.VARCODE IN " & Varcode & "  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,b.lotno,b.lotdt,b.bblflg ,b.ratekg " & _
            "union select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  AND B.VARCODE IN " & Varcode & " and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.varcode,b.lotno,b.lotdt,b.bblflg,b.ratekg) a  group by varcode,lotno,lotdt" & _
            " Union All " & _
            "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd in " & SR & " AND B.VARCODE IN " & Varcode & " and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
            " group by b.varcode,b.lotno,b.lotdt,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " AND B.VARCODE IN " & Varcode & " and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.varcode,b.lotno,b.lotdt,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.lotno,A.lotdt", db, adOpenStatic, adLockBatchOptimistic
            
            
    If rs1.RecordCount = 0 Then
        MsgBox "No records Found", vbInformation, head
        Exit Sub
    End If
  
    C = 0
    pg1 = 0
    Set RPTV = New Report.ReportView
    a = FreeFile
    Close
   ' Open "c:\per_conoils.TXT" For Output As #a
    Open KALFOLDERDATA & "\per_conoils.TXT" For Output As #a
    Call header
         VarName = ""
         LOTNO = ""
         
         baletot = 0
         netwt = 0
         PNETWT = 0
         While Not rs1.EOF
             Set balers = New Recordset
             balers.Open "select baleno,isnull(netwt,0) as netwt,isnull(pnetwt,0) as pnetwt " & _
                         "from rm_bale where lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and catcd='" & DataCombo1.Text & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' AND (isqty is null or issued ='N') and divcode='" & Divcode & "' " & _
                         " Union select baleno,isnull(netwt,0) as netwt,isnull(pnetwt,0) as pnetwt" & _
                         " from rm_bale where baleno in (select baleno from rm_issb where docdt>'" & Format(F_Date, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "') AND divcode='" & Divcode & "' and lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
                         
                         Set rsg = New Recordset
                         rsg.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs1("VARCODE") & "'", db, adOpenStatic
                         
                If VarName <> rsg("varname") Then
                    If VarName = "" Then
                        Print #a, Space(10) & Padr(rsg("varname"), 30, " ")
                        C = C + 1
                        If C > 57 Then
                            C = 0
                            Print #a, Space(10) & String(70, "-")
                            Print #a, Chr(12)
                            Call header
                        End If
                    Else
                        Print #a, Space(25) & String(55, "-")
                        Print #a, Space(25) & Padr("Total", 10, " ") & Padl(baletot, 15, " ") & Padl(INF(netwt, 3), 15, " ") & Padl(INF(PNETWT, 3), 15, " ")
                        Print #a, Space(25) & String(55, "-")
                        baletot = 0
                        netwt = 0
                        PNETWT = 0
                        C = C + 3
                        If C > 57 Then
                            C = 0
                            Print #a, Space(10) & String(70, "-")
                            Print #a, Chr(12)
                            Call header
                        End If
                        Print #a, Space(10) & Padr(rsg("varname"), 30, " ")
                        C = C + 1
                        If C > 57 Then
                            C = 0
                            Print #a, Space(10) & String(70, "-")
                            Print #a, Chr(12)
                            Call header
                        End If
                    End If
               End If
                Do While Not balers.EOF
                    If C > 57 Then
                        C = 0
                        Print #a, Space(10) & String(70, "-")
                        Print #a, Chr(12)
                        Call header
                    End If
                    If LOTNO = rs1("lotno") Then
                        Print #a, Space(28) & Padl(" ", 6, " ") & Space(1) & Padl(balers!baleno, 15, " ") & Padl(INF(balers!netwt, 3), 15, " ") & Padl(INF(balers!PNETWT, 3), 15, " ")
                    Else
                        Print #a, Space(28) & Padl(rs1!LOTNO, 6, " ") & Space(1) & Padl(balers!baleno, 15, " ") & Padl(INF(balers!netwt, 3), 15, " ") & Padl(INF(balers!PNETWT, 3), 15, " ")
                    End If
                    LOTNO = rs1("lotno")
                    C = C + 1
                    baletot = baletot + 1
                    netwt = netwt + balers("netwt")
                    PNETWT = PNETWT + balers("pnetwt")
                balers.MoveNext
                Loop
            VarName = rsg("varname")
            rs1.MoveNext
            If rs1.EOF = True Then
                        Print #a, Space(25) & String(55, "-")
                        Print #a, Space(25) & Padr("Total", 10, " ") & Padl(baletot, 15, " ") & Padl(INF(netwt, 3), 15, " ") & Padl(INF(PNETWT, 3), 15, " ")
                        Print #a, Space(25) & String(55, "-")
                        C = C + 3
                        If C > 57 Then
                            C = 0
                            Print #a, Space(10) & String(70, "-")
                            Print #a, Chr(12)
                            Call header
                        End If
           End If
        Wend
        
    Set rs1 = New Recordset
    rs1.Open "select a.varcode,a.lotno,a.lotdt,sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0)) as opbales,sum(isnull(a.opkgs,0)) as opkgs," & _
            "sum(isnull(a.recbales,0))+ sum(isnull(a.recboras,0)) as recbales ,sum(isnull(a.reckgs,0)) as reckgs," & _
            "sum(isnull(a.issbales,0))+sum(isnull(a.issboras,0))  as issbales,sum(isnull(a.isskgs,0)) as isskgs," & _
            "case when sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0))+sum(isnull(a.recbales,0)))- (sum(isnull(a.issbales,0)) +sum(isnull(a.issboras,0)))  else (sum(isnull(a.recbales,0))+ sum(isnull(a.recboras,0))) -  (sum(isnull(a.issbales,0))+sum(isnull(a.issboras,0))) end  as clobales, " & _
            "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
            " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
            " ((select varcode,lotno,lotdt, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
            "select b.varcode,b.lotno,b.lotdt,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.lotyear IN ('" & Year(yfdate) & "') AND " & _
            "b.catcd in " & SR & "  and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 AND B.VARCODE IN " & Varcode & "  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,b.lotno,b.lotdt,b.bblflg ,b.ratekg " & _
            "union select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c,rm_bale e where (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotdt=e.lotdt  AND B.VARCODE IN " & Varcode & " and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
            " and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') and (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') group by b.varcode,b.lotno,b.lotdt,b.bblflg,b.ratekg) a  group by varcode,lotno,lotdt" & _
            " Union All " & _
            "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, " & _
            "case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
            "case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue " & _
            "from rm_lot b " & _
            " where  upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND b.catcd in " & SR & " AND B.VARCODE IN " & Varcode & " and " & _
            " b.lotdt Between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
            " group by b.varcode,b.lotno,b.lotdt,b.opflg,b.bblflg,RATEKG " & _
            " Union All " & _
            "select b.varcode,b.lotno,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,sum(E.NETWT) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(E.NETWT,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from " & _
            "rm_lot b,rm_issb c,rm_bale e where BALES >0 and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') AND  b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and b.catcd in " & SR & " AND B.VARCODE IN " & Varcode & " and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and b.lotdt=e.lotdt and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno  group by b.varcode,b.lotno,b.lotdt,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.lotno,A.lotdt", db, adOpenStatic, adLockBatchOptimistic
    Print #a,
    Print #a,
    C = C + 2
    If C > 57 Then
        C = 0
        Print #a, Space(10) & String(70, "-")
        Print #a, Chr(12)
        Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ")
        Print #a,
        C = C + 4
    End If

    Call absheader
    
    VarName = ""
        GbaleTOT = 0
        gnetwt = 0
        Gpnetwt = 0
        baletot = 0
        netwt = 0
        PNETWT = 0
        
        While Not rs1.EOF
             
             Set balers = New Recordset
              balers.Open "select baleno,isnull(netwt,0) as netwt,isnull(pnetwt,0) as pnetwt " & _
                         "from rm_bale where lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and catcd='" & DataCombo1.Text & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "' AND (isqty is null or issued ='N') and divcode='" & Divcode & "' " & _
                         " Union select baleno,isnull(netwt,0) as netwt,isnull(pnetwt,0) as pnetwt" & _
                         " from rm_bale where baleno in (select baleno from rm_issb where docdt>'" & Format(F_Date, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "') AND divcode='" & Divcode & "' and lotno ='" & rs1!LOTNO & "' and varcode='" & rs1("varcode") & "' and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
                         
                         Set rsg = New Recordset
                         rsg.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rs1("VARCODE") & "'", db, adOpenStatic
                If VarName <> rsg("varname") Then
                    If VarName <> "" Then
                        Print #a, Space(10) & Padr(VarName, 25, " ") & Padl(baletot, 15, " ") & Padl(INF(netwt, 3), 15, " ") & Padl(INF(PNETWT, 3), 15, " ")
                        baletot = 0
                        netwt = 0
                        PNETWT = 0
                        C = C + 1
                            If C > 57 Then
                                C = 0
                                Print #a, Space(10) & String(70, "-")
                                Print #a, Chr(12)
                                Call absheader
                            End If
                    End If
               End If
                Do While Not balers.EOF
                    baletot = baletot + 1
                    netwt = netwt + balers("netwt")
                    PNETWT = PNETWT + balers("pnetwt")
                    GbaleTOT = GbaleTOT + 1
                    gnetwt = gnetwt + balers("netwt")
                    Gpnetwt = Gpnetwt + balers("pnetwt")
                balers.MoveNext
                Loop
                VarName = rsg("varname")
            rs1.MoveNext
            If rs1.EOF = True Then
                    Print #a, Space(10) & Padr(VarName, 25, " ") & Padl(baletot, 15, " ") & Padl(INF(netwt, 3), 15, " ") & Padl(INF(PNETWT, 3), 15, " ")
                    C = C + 1
                    If C > 57 Then
                          C = 0
                          Print #a, Space(10) & String(70, "-")
                          Print #a, Chr(12)
                          Call absheader
                    End If
            End If
        Wend
        Print #a, Space(10) & String(70, "-")
        Print #a, Space(10) & Padr("Grand Total", 25, " ") & Padl(GbaleTOT, 15, " ") & Padl(INF(gnetwt, 3), 15, " ") & Padl(INF(Gpnetwt, 3), 15, " ")
        Print #a, Space(10) & String(70, "-")
        Print #a, Chr(12)
    Close #a
    a = FreeFile
'    Open "c:\per_conoils.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type per_conoils.TXT>prn"
'    Close #a
'    RPTV.txtfile = "c:\per_conoils.TXT"
'    RPTV.Batfile = "c:\per_conoils.bat"
Call KALBATPROCESS("per_conoils")
    Screen.MousePointer = 0
    Exit Sub


Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form repform2", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub DataCombo1_Change()
On Error GoTo DataCombo1_Change_Error

    Set varrs = New Recordset
    varrs.Open " select distinct varcode from rm_bale where lotdt < '" & Format(DTPicker1.value, "yyyy-mm-dd") & "'  and catcd='" & DataCombo1.Text & "'order by varcode", db, adOpenStatic, adLockBatchOptimistic
    If varrs.RecordCount > 0 Then
        Set DataCombo2.RowSource = varrs
        DataCombo2.ListField = "varcode"
        Set DataCombo3.RowSource = varrs
        DataCombo3.ListField = "varcode"
        varrs.MoveFirst
        DataCombo2.Text = IIf(IsNull(varrs(0)), "", varrs(0))
        varrs.MoveLast
        DataCombo3.Text = IIf(IsNull(varrs(0)), "", varrs(0))
    Else
        Set DataCombo2.RowSource = Nothing
        Set DataCombo3.RowSource = Nothing
    End If

Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_Change of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub DTPicker1_Change()

On Error GoTo DTPicker1_Change_Error

    If DTPicker1.value < yfdate Then
        MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "'", vbInformation, head
        DTPicker1.value = yfdate
        Exit Sub
    ElseIf DTPicker1.value > pdate Then
        MsgBox "Date Should Be Less Than or Equal to " & pdate & "'", vbInformation, head
        DTPicker1.value = pdate
        Exit Sub
    End If
    

    Set CATRS = New Recordset
    CATRS.Open "select distinct catcd from rm_bale where lotdt <='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' ", db, adOpenStatic, adLockBatchOptimistic
    If CATRS.RecordCount > 0 Then
        Set DataCombo1.RowSource = CATRS
        DataCombo1.ListField = "Catcd"
        CATRS.MoveFirst
        DataCombo1.Text = CATRS(0)
        Call DataCombo1_Change
    Else
        Set DataCombo1.RowSource = Nothing
        DataCombo1.Text = ""
        Set DataCombo2.RowSource = Nothing
        Set DataCombo3.RowSource = Nothing
        DataCombo2.Text = ""
        DataCombo3.Text = ""
    End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open "PROVIDER=MSDataShape;" + connectstring
    DTPicker1.MinDate = Format(yfdate, "dd/mm/yy")
    DTPicker1.MaxDate = Format(pdate, "dd/mm/yy")
    DTPicker1.value = Format(pdate, "dd/mm/yy")
    Call DTPicker1_Change

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub header()
On Error GoTo header_Error

    pg1 = pg1 + 1
    Print #a, Space(0) + Chr(27) + "E" + CENTRE(DIVNAME, 80, " ")
    Set CATRS = New Recordset
    CATRS.Open "select catname from rm_cat where catcd ='" & repform2.DataCombo1.Text & "'", db, adOpenStatic, adLockBatchOptimistic
    Print #a,
    Print #a, Space(10) + "Raw Material Closing Stock as on " & Format(repform2.DTPicker1.value, "dd/mm/yy") + Chr(27) + "F" + Space(11) + Format(pdate, "dd/mm/yy") + Space(3) + "Pg.:" + Padl(CStr(pg1), 3, " ")
    Print #a, Space(0) + Chr(27) + "E" + CENTRE("Variety : " & CATRS!CATNAME, 80, " ") + Chr(27) + "F"
    Print #a, Space(10) + String(70, "-")
    Print #a, Space(10) + "Material           Lotno        Bale No.        Net Wt.       Inv. Wt."
    Print #a, Space(10) + String(70, "-")
    C = C + 6

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub absheader()
On Error GoTo absheader_Error

    Print #a, Space(10) + "Raw Material Closing Stock Abstract "
    Print #a, Space(10) + String(70, "-")
    Print #a, Space(10) + "Material                    No. Of Bales        Net Wt.       Inv. Wt."
    Print #a, Space(10) + String(70, "-")
    C = C + 4

Exit Sub
absheader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure absheader of Form repform2", vbInformation, head
Screen.MousePointer = 0
End Sub
