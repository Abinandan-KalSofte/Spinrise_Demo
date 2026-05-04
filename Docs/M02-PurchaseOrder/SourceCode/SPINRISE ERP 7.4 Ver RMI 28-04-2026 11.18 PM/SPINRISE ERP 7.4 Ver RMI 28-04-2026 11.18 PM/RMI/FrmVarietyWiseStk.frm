VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmVarietyWiseStk 
   Caption         =   "Variety Wise Stock"
   ClientHeight    =   7620
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9870
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7620
   ScaleWidth      =   9870
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
      Left            =   4095
      TabIndex        =   8
      Top             =   4920
      Width           =   915
   End
   Begin VB.CommandButton Command1 
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
      Left            =   2940
      TabIndex        =   7
      Top             =   4920
      Width           =   915
   End
   Begin Crystal.CrystalReport crr 
      Left            =   0
      Top             =   4920
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3210
      Left            =   1380
      TabIndex        =   0
      Top             =   1455
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   5662
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "FrmVarietyWiseStk.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   3030
         Left            =   120
         TabIndex        =   1
         Top             =   45
         Width           =   5655
         Begin RMI.KslCompanySelection Kslcmpsel 
            Height          =   750
            Left            =   105
            TabIndex        =   9
            Top             =   495
            Width           =   5490
            _ExtentX        =   9684
            _ExtentY        =   1323
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.ComboBox Combo2 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   345
            Left            =   1290
            TabIndex        =   3
            Text            =   "Combo2"
            Top             =   1710
            Visible         =   0   'False
            Width           =   3345
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1305
            TabIndex        =   2
            Top             =   1290
            Visible         =   0   'False
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   609
            _Version        =   393216
            Format          =   77856769
            CurrentDate     =   37578
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   210
            TabIndex        =   6
            Top             =   1785
            Width           =   630
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   180
            TabIndex        =   5
            Top             =   1365
            Width           =   345
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Caption"
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
            TabIndex        =   4
            Top             =   120
            Width           =   5565
         End
      End
   End
End
Attribute VB_Name = "FrmVarietyWiseStk"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Set Rss = New Recordset
  Rss.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Kslcmpsel.SelDivCode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
 If Combo2.Text <> "" Then
     Do While Not Rss.EOF
     If Combo2.Text = Rss(0) Or Combo2.Text = "ALL   -   ALL" Then
     GoTo VerietywiseStk
     Else
     Rss.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
VerietywiseStk: Call VarietystockCrystal(DTPicker1.Value, Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
Exit Sub
End Sub
'----
Public Sub VarietystockCrystal(str As String, k As String)
On Error GoTo VarietystockCrystal_Error
Set cnn = New Connection
Dim RstTemp As Recordset
Set RstTemp = New Recordset
RstTemp.Open "Select * from VerietyStkTemp where 1=2", DB, adOpenDynamic, adLockOptimistic
DB.Execute ("Delete From VerietyStkTemp where divcode='" & Kslcmpsel.SelDivCode & "' and username='" & UserName & "'")
str1 = str
k1 = k
cnn.Provider = "MSDATASHAPE"
cnn.Open connectstring

Set cnn = New ADODB.Connection
cnn.ConnectionString = Kslcmpsel.SelConnectStr
cnn.Open

    k = Trim(k)
    If k <> "ALL" Then
            Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where C.CATCD=B.CATCD AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD  and a.DIVCODE ='" & Kslcmpsel.SelDivCode & "' and a.varcode =c.varcode and a.catcd = '" & k & "' and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", cnn, adOpenStatic
    Else
        Set ResultRs = New Recordset
            ResultRs.Open "select distinct C.VARNAME,a.LOTNO,a.LOTDT,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,round(isnull(a.netwt,0)-isnull(a.isswt,0),2) 'Stock',round(isnull(ratecy,0)/355.616,2) 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * round(isnull(ratecy,0)/355.616,2) 'val'" & _
                          " from rm_lot a,rm_cat b,rm_var c where (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD  and a.DIVCODE ='" & Kslcmpsel.SelDivCode & "' and a.varcode =c.varcode and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "' AND C.CATCD=B.CATCD group by C.VARNAME,a.LOTNO,a.LOTDT,a.bales,a.issbal,a.bblflg,a.netwt,a.isswt,ratecy having isnull(a.BALES,0)-isnull(a.ISSBAL,0) > 0 and round(isnull(a.netwt,0)-isnull(a.isswt,0),2) > 0  order by a.LOTNO,a.LOTDT ", cnn, adOpenStatic
    End If
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg1 = 1
    Co = 0
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      VarQty = 0
      varKgs = 0
      VarVAL = 0
        Set ResultRs = New Recordset
        If k <> "ALL" Then
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD AND  (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(str, "yyyy-mm-dd") & "' and a.catcd='" & k & "' and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0   and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
        Else
                ResultRs.Open "Select distinct a.varcode,b.varname,a.catcd from rm_lot a,rm_var b where A.CATCD=B.CATCD AND (a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.varcode=b.varcode and lotdt<='" & Format(str, "yyyy-mm-dd") & "' and  isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0  and (a.rejflg='N' or a.rejdt>'" & Format(str, "yyyy-mm-dd") & "') and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic
        End If
        Do While Not ResultRs.EOF
               Set Rs = New Recordset
               If k <> "ALL" Then
                    Set Rs = New Recordset
                Rs.Open "select varcode,varname,a.lotno,a.lotdt,isnull(a.catcd,' ') as catcd,a.varname,(a.bales-isnull(b.bales,0)) as bales," & _
                      "round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.RATE,2)," & _
                        "a.plotno,a.ratecandy,A.RATE AS ratekg from (" & _
                        "select distinct a.LOTNO,a.LOTDT,A.catcd ,c.varcode,c.VARNAME,a.BALES AS BALES,round(isnull(a.netwt,0),2) 'Stock', " & _
                        "IsNull(ratekg, 0) 'Rate',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO," & _
                        "round((ratecy),0) as ratecandy,ISSBAL from rm_lot a,rm_var c  where " & _
                        "(a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.DIVCODE ='" & Kslcmpsel.SelDivCode & "' and a.catcd='" & Trim(k) & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(str, "yyyy-mm-dd") & "'  and " & _
                        "a.lotyear='" & Year(yfdate) & "' AND (BALES-isnull(ISSBAL,0))>0)a,( " & _
                        " SELECT LOTNO,LOTDT,CATCD,SUM(BALES) AS BALES,SUM(KGS)AS Isskgs FROM( " & _
                        " SELECT LOTNO,LOTDT,CATCD,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
                        " SELECT A.LOTNO,A.LOTDT,A.CATCD,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A WHERE B.DIVCODE=A.DIVCODE AND A.DIVCODE='" & Kslcmpsel.SelDivCode & "' AND status in ('AC','AW')and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(str, "yyyy-mm-dd") & "' and " & _
                        " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " AND A.CATCD=B.CATCD GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.BALENO)X GROUP BY LOTNO,LOTDT,CATCD Union" & _
                        " SELECT A.LOTNO,A.LOTDT,A.CATCD,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A WHERE status in('AC','AW') and  A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(str, "yyyy-mm-dd") & "' and a.catcd='" & Trim(k) & "' and " & _
                        "  A.DIVCODE='" & Kslcmpsel.SelDivCode & "' AND a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                        " GROUP BY A.LOTNO,A.LOTDT,A.CATCD)Y GROUP BY LOTNO,LOTDT,CATCD " & _
                        ")b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  and a.catcd=b.catcd and varcode='" & ResultRs("varcode") & "' " & _
                        " group by a.lotno,a.lotdt,a.catcd,a.varname,a.plotno,a.varcode," & _
                        "a.ratecandy , a.Val, a.bales, b.bales, a.stock, b.isskgs, ISSBAL,A.RATE " & _
                        "having round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 ", DB, adOpenStatic

                Else
                    Set Rs = New Recordset
                    Rs.Open "select varcode,varname,a.lotno,a.lotdt,isnull(a.catcd,' ') as catcd,a.varname,(a.bales-isnull(b.bales,0)) as bales," & _
                          "round(isnull(a.stock,0)-isnull(b.isskgs,0),3) stock,val=round((isnull(a.stock,0)-isnull(b.isskgs,0))*a.RATE,2)," & _
                            "a.plotno,a.ratecandy,A.RATE AS ratekg from (" & _
                            "select distinct a.LOTNO,a.LOTDT,A.catcd ,c.varcode,c.VARNAME,a.BALES AS BALES,round(isnull(a.netwt,0),2) 'Stock', " & _
                            "IsNull(ratekg, 0) 'Rate',round(isnull(ratecy,0)/355.6187,2) 'val',isnull(a.PLOTNO,' ')as PLOTNO," & _
                            "round((ratecy),0) as ratecandy,ISSBAL from rm_lot a,rm_var c  where " & _
                            "(a.rejflg= 'N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.DIVCODE ='" & Kslcmpsel.SelDivCode & "' and a.varcode =c.varcode and A.LOTDT <= '" & Format(str, "yyyy-mm-dd") & "'  and " & _
                            "a.lotyear='" & Year(yfdate) & "' AND (BALES-isnull(ISSBAL,0))>0)a,( " & _
                            " SELECT LOTNO,LOTDT,CATCD,SUM(BALES) AS BALES,SUM(KGS)AS Isskgs FROM( " & _
                            " SELECT LOTNO,LOTDT,CATCD,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
                            " SELECT A.LOTNO,A.LOTDT,A.CATCD,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A WHERE A.DIVCODE=B.DIVCODE AND A.DIVCODE='" & Kslcmpsel.SelDivCode & "' AND status in ('AC','AW')and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(str, "yyyy-mm-dd") & "' and " & _
                            " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                            " AND A.CATCD=B.CATCD GROUP BY A.LOTNO,A.LOTDT,A.CATCD,A.BALENO)X GROUP BY LOTNO,LOTDT,CATCD Union" & _
                            " SELECT A.LOTNO,A.LOTDT,A.CATCD,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A WHERE  A.DIVCODE=B.DIVCODE AND A.DIVCODE='" & Kslcmpsel.SelDivCode & "' AND status in ('AC','AW') and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<='" & Format(str, "yyyy-mm-dd") & "' and " & _
                            " a.docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'" & _
                            " GROUP BY A.LOTNO,A.LOTDT,A.CATCD)Y GROUP BY LOTNO,LOTDT,CATCD " & _
                            ")b where a.lotno*=b.lotno and a.lotdt*=b.lotdt  and a.catcd=b.catcd and varcode='" & ResultRs("varcode") & "' " & _
                            " group by a.lotno,a.lotdt,a.catcd,a.varname,a.plotno,a.varcode," & _
                            "a.ratecandy , a.Val, a.bales, b.bales, a.stock, b.isskgs, ISSBAL,A.RATE " & _
                            "having round(isnull(a.stock,0)-isnull(b.isskgs,0),2) >0 ", DB, adOpenStatic
                End If
                
               Do While Not Rs.EOF
                If Rs("bales") > 0 And Rs("stock") Then
                    ISSBAL = Rs("BALES")
                    tot = tot + ISSBAL
                    tot2 = tot2 + Rs("STOCK")
                    tot3 = tot3 + Rs("VAL")
                    VarQty = VarQty + ISSBAL
                    VarVAL = VarVAL + Rs("val")
                    VarKg = VarKg + Rs("stock")
                    
               End If
               Rs.MoveNext
        Loop
'        If rs.RecordCount > 1 Then
'        Else
           '-----------------------------
           RstTemp.AddNew
           RstTemp("Divcode") = Kslcmpsel.SelDivCode
           RstTemp("Variety") = ResultRs("varname")
           RstTemp("bales") = VarQty
           RstTemp("weight") = VarKg
           RstTemp("value") = VarVAL
           RstTemp("username") = UserName
           RstTemp.Update
           '-----------------------------
                 
'        End If
        ResultRs.MoveNext
        VarKg = 0
        VarVAL = 0
        VarQty = 0
    Loop
    
    
    
    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\VarietywiseStkMis.rpt"
    crr.RetrieveDataFiles
    crr.DataFiles(0) = Kslcmpsel.SelDB & Mid(crr.DataFiles(0), InStr(1, crr.DataFiles(0), "."), Len(crr.DataFiles(0)))
    crr.Formulas(0) = "Rptdate='" & str & "'"
    crr.Formulas(1) = "divname='" & Kslcmpsel.SelDivision & "'"
    crr.SelectionFormula = "{VerietyStkTemp.Divcode}='" & Kslcmpsel.SelDivCode & "' and {VerietyStkTemp.username}='" & UserName & "'"
    crr.Action = 2
    crr.PrinterCopies = 1
    crr.WindowState = crptMaximized
    
    DB.Execute ("Delete From VerietyStkTemp where divcode='" & Kslcmpsel.SelDivCode & "' and username='" & UserName & "'")
Exit Sub
VarietystockCrystal_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure VarietystockCrystal of Form FrmVarietyWiseStk", vbInformation, head
    
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
Unload Me
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Command2_Click of Form FrmVarietyWiseStk", vbInformation, head
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
    Kslcmpsel.ConnStr = connectstring
    Label5.Caption = "Varietywise Stock Position"
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Kslcmpsel.SelDivCode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        If Not Rs.EOF Then
            Rs.MoveFirst
            EXITflg = ""
            Do While Not Rs.EOF
                Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "ALL   -   ALL"
            Rs.MoveFirst
            Combo2.Text = Rs(0)
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
    Combo2.Visible = True
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.Value = pdate
    Frame1.Height = Frame1.Height - 600
    SSTab1.Height = SSTab1.Height - 600
Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form FrmVarietyWiseStk", vbInformation, head

End Sub
