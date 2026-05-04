VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmStockUpdate 
   Caption         =   "Stock Updation"
   ClientHeight    =   7290
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10125
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20280
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Height          =   4395
      Left            =   630
      TabIndex        =   7
      Top             =   2145
      Width           =   10860
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4230
         Left            =   45
         TabIndex        =   8
         Top             =   120
         Width           =   10725
         _ExtentX        =   18918
         _ExtentY        =   7461
         _Version        =   393216
         AllowUpdate     =   0   'False
         BackColor       =   16777215
         ForeColor       =   0
         HeadLines       =   2
         RowHeight       =   15
         TabAction       =   2
         WrapCellPointer =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
   End
   Begin VB.Frame Frame1 
      Height          =   915
      Left            =   660
      TabIndex        =   1
      Top             =   1245
      Width           =   10845
      Begin VB.CommandButton cmdUpdate 
         Caption         =   "&Update"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   7860
         TabIndex        =   5
         Top             =   315
         Width           =   1200
      End
      Begin VB.CommandButton cmdexit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   9075
         TabIndex        =   4
         Top             =   315
         Width           =   1200
      End
      Begin VB.CommandButton cmdview 
         Caption         =   "&View"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   400
         Left            =   6645
         TabIndex        =   2
         Top             =   315
         Width           =   1200
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   330
         Left            =   1455
         TabIndex        =   3
         Top             =   345
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   582
         _Version        =   393216
         Enabled         =   0   'False
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   118161411
         CurrentDate     =   40206
      End
      Begin VB.Label Label1 
         Caption         =   " Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   270
         Left            =   405
         TabIndex        =   6
         Top             =   375
         Width           =   1110
      End
   End
   Begin VB.Label lblupdation 
      AutoSize        =   -1  'True
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
      Left            =   690
      TabIndex        =   9
      Top             =   6585
      Width           =   75
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "STOCK UPDATION"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   375
      Left            =   705
      TabIndex        =   0
      Top             =   645
      Width           =   3150
   End
End
Attribute VB_Name = "frmStockUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'SAKTHI

Dim rstConsumption As Recordset
Dim rstVocno As Recordset
Dim rstmaxDate As Recordset

Dim DB As Connection
Dim iTC As Integer
Dim iVocno As Integer

Private Sub CmdExit_Click()
    intervalMinutes = -1
    Unload Me
    intervalMinutes = -1
End Sub

Private Sub cmdexit_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub cmdUpdate_Click()
intervalMinutes = -1
  strNarr = "Cotton Stock as on " & Format(DTPicker1.value, "dd/MM/yy") & ""
  
  If Not GetStockDetails Then Exit Sub
  
  Set rstConsumption = New Recordset
  
  rstConsumption.Open "SELECT * from RM_Temp_StkFapost where ( isnull(DRStkValue,0)>0 or isnull(CRStkValue,0)>0 )", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstConsumption.EOF Then
  
        '=====
        Set rstVocno = New Recordset
        rstVocno.Open " Select isnull(max(Docno),0) From FA_PRVH Where Divcode='" & Divcode & "' and Docdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstVocno.EOF Then
          iVocno = rstVocno(0) + 1
        Else
          iVocno = 1
        End If
        
        '=====
        iDocsno = 0
    
        DB.Execute "DELETE FROM RM_StkFaUps WHERE Divcode='" & Divcode & "' and Fdate='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'"
        
        If rstConsumption.RecordCount > 0 Then rstConsumption.MoveFirst
        Do While Not rstConsumption.EOF
                
            sprVocNo = 0
            
            Set rstVocno = New Recordset
            rstVocno.Open " Select * From FA_PRVl Where Divcode='" & Divcode & "' and Accode='" & rstConsumption("glcode") & "' and Docdt='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstVocno.EOF Then
                DB.Execute "DELETE FROM FA_PRVl Where Divcode='" & Divcode & "' and Accode='" & rstConsumption("glcode") & "' and DocNo=" & rstVocno("docno") & " and Docdt='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'"
                sprVocNo = rstVocno("docno")
            End If
            
            Set rstVocno = New Recordset
            rstVocno.Open " Select * From FA_PRVl Where Divcode='" & Divcode & "' and DocNo=" & sprVocNo & " and Docdt='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rstVocno.EOF Then
                DB.Execute "DELETE FROM FA_PRVH Where Divcode='" & Divcode & "' and DocNo=" & sprVocNo & " and Docdt='" & Format(DTPicker1.value, "yyyy-MM-dd") & "'"
            End If
            
                           
            rstConsumption.MoveNext
        Loop
        
        '=====
 intervalMinutes = -1
    
        DB.BeginTrans
        
        DB.Execute ("insert into RM_StkFaUps (Divcode,Fdate,TDate,tc,Vocno,vocdt,Userid,Entdate) VALUES" & _
                   "('" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "'," & _
                   " " & 1 & "," & iVocno & ",'" & Format(pdate, "yyyy-MM-dd") & "','" & usrid & "','" & Format(Date, "yyyy-MM-dd") & "')")
         
        DB.Execute ("INSERT INTO FA_PRVH (Divcode,DocNo,Docdt) VALUES ('" & Divcode & "'," & iVocno & ",'" & Format(DTPicker1.value, "yyyy-MM-dd") & "')")
                  
        intervalMinutes = -1
        
        If rstConsumption.RecordCount > 0 Then rstConsumption.MoveFirst
        Do While Not rstConsumption.EOF
                
                iDocsno = iDocsno + 1
                DB.Execute ("INSERT INTO FA_PRVl (Divcode,DocNo,Docdt,Docsno,Accode,Debit,credit,Narration)" & _
                           " VALUES ('" & Divcode & "'," & iVocno & "," & _
                           " '" & Format(DTPicker1.value, "yyyy-MM-dd") & "'," & _
                           " " & iDocsno & ",'" & rstConsumption("glcode") & "'," & _
                           " " & rstConsumption("DRStkValue") & "," & rstConsumption("CRStkValue") & ",'" & strNarr & "')")
                           
            rstConsumption.MoveNext
        Loop
    
      '=====
      
      DB.CommitTrans
      MsgBox "Record Updated Successfully", vbInformation, head

  End If
  
  intervalMinutes = -1
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select Fdate,Tdate from RM_StkFaUps where TDate=(select max(TDate) FROM RM_StkFaUps where Divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        lblupdation.Caption = "Last updation Date " & Format(rstmaxDate(0), "dd/MM/yy") & " "
    Else
        lblupdation.Caption = ""
    End If
    
        Set rstConsumption = New Recordset
        rstConsumption.Open "select GlCode as GLcode,glhead as Description,0 as Debit,0 as Credit From fa_glmas where 1= 2 ", DB, adOpenStatic, adLockBatchOptimistic
        Set grdDataGrid.DataSource = rstConsumption
        GridAllign
        
    End If
  intervalMinutes = -1
End Sub

Private Sub cmdview_Click()
intervalMinutes = -1
GetStockDetails
intervalMinutes = -1
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  
  Set rstConsumption = New Recordset
  rstConsumption.Open "select GlCode as GLcode,glhead as Description,0 as Debit,0 as Credit From fa_glmas where 1= 2 ", DB, adOpenStatic, adLockBatchOptimistic
  Set grdDataGrid.DataSource = rstConsumption
  GridAllign
  
  DTPicker1.value = mldate
  
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select max(TDate) FROM RM_StkFaUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        If mldate < rstmaxDate(0) Then
            MsgBox " Stock date must be grater than last updation date. " & vbCrLf & "Last updation Date  " & Format(rstmaxDate(0), "dd/MM/yy") & "", vbInformation, head
            DTPicker1.value = rstmaxDate(0)
            cmdUpdate.Enabled = False
            cmdview.Enabled = False
        Else
            DTPicker1.value = mldate
        End If
     Else
        DTPicker1.value = mldate
    End If
  End If
  intervalMinutes = -1
    
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select Fdate,Tdate from RM_StkFaUps where TDate=(select max(TDate) FROM RM_StkFaUps where Divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        lblupdation.Caption = "Last updation Date  " & Format(rstmaxDate(0), "dd/MM/yy") & " "
    Else
        lblupdation.Caption = ""
    End If
  End If
  
End Sub

Private Sub GridAllign()

    grdDataGrid.Columns(0).Width = 1200
    grdDataGrid.Columns(1).Width = 5500
    grdDataGrid.Columns(2).Width = 1500
    
    grdDataGrid.Columns(2).Alignment = dbgRight
    grdDataGrid.Columns(2).NumberFormat = "#0.00"
    grdDataGrid.Columns(3).Alignment = dbgRight
    grdDataGrid.Columns(3).NumberFormat = "#0.00"
    

End Sub
Private Function GetStockDetails() As Boolean
    intervalMinutes = -1
    Dim strDate As String
    
    strDate = DTPicker1.value

    
    sCRGL = ""
    sDRGL = ""
    
    Set rstmaxDate = New Recordset
    rstmaxDate.Open "select max(TDate) FROM RM_StkFaUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
    If Not rstmaxDate.EOF Then
      If Not IsNull(rstmaxDate(0)) Then
          If CDate(DTPicker1.value) <= CDate(rstmaxDate(0)) Then
          
            If MsgBox(Format(DTPicker1.value, "dd/MM/yy") & " Stock value already posted." & vbCrLf & "Do you want continue...", vbQuestion + vbYesNo, head) = vbNo Then
                Exit Function
            End If
            
          End If
      End If
    End If
    
    Set rstConsumption = New Recordset
    rstConsumption.Open " Select isnull(StkDRGL,'') as StkDRGL,isnull(StkCRGL,'') as StkCRGL From RM_PARAM", DB, adOpenStatic, adLockBatchOptimistic
    If Not rstConsumption.EOF Then
        sCRGL = rstConsumption("StkCRGL")
        sDRGL = rstConsumption("StkDRGL")
    End If
     
     
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='RM_Temp_StkFapost' and Type='U'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table RM_Temp_StkFapost"
    End If
    DB.Execute "Create table RM_Temp_StkFapost(glcode varchar(10),StkDate datetime,DRStkValue numeric(18,2),CRStkValue numeric(18,2))"
    
intervalMinutes = -1
    strSQL = "Select isnull(sum(CLOSEVALUE),0) as CLOSEVALUE from (select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
    strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
    strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
    strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOSEVALUE"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(strDate, strDate)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE  AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.DIVCODE='" & Divcode & "' "
 ' commented on 12-07-19 by mariyaiya
 '   strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by VARNAME)x"
     strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (isnull(b.transfertype,'')='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by VARNAME)x"
  
     
            
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    If Rs.EOF = True Then
        MsgBox "No Record(s) found", vbInformation, head
        DB.CommitTrans
        Exit Function
    Else
    intervalMinutes = -1
        DB.Execute "Insert into RM_Temp_StkFapost values ('" & Trim(sDRGL) & "','" & Format(strDate, "yyyy-MM-dd") & "'," & val(Rs("CLOSEVALUE")) & ",0)"
        DB.Execute "Insert into RM_Temp_StkFapost values ('" & Trim(sCRGL) & "','" & Format(strDate, "yyyy-MM-dd") & "',0," & val(Rs("CLOSEVALUE")) & ")"
    
    End If
    intervalMinutes = -1
    Set rstConsumption = New Recordset
    rstConsumption.Open " Select a.GlCode,B.glhead as Decription,DRStkValue as Debit,CRStkValue as Credit FROM RM_Temp_StkFapost a,Fa_glmas b where a.glcode=b.glcode", DB, adOpenStatic, adLockBatchOptimistic
    If Not rstConsumption.EOF Then
        Set grdDataGrid.DataSource = rstConsumption
        GridAllign
    End If
    intervalMinutes = -1
    GetStockDetails = True
    
End Function

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

