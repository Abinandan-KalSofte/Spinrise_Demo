VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmConsumptionUpdate 
   Caption         =   "Consuption Updation"
   ClientHeight    =   7215
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10245
   LinkTopic       =   "Form5"
   MDIChild        =   -1  'True
   ScaleHeight     =   7215
   ScaleWidth      =   10245
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Height          =   4395
      Left            =   840
      TabIndex        =   9
      Top             =   1935
      Width           =   10860
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   4230
         Left            =   45
         TabIndex        =   10
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
      Left            =   870
      TabIndex        =   0
      Top             =   1005
      Width           =   10845
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
         TabIndex        =   8
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
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   140967939
         CurrentDate     =   40206
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
         TabIndex        =   2
         Top             =   315
         Width           =   1200
      End
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
         TabIndex        =   1
         Top             =   315
         Width           =   1200
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   4110
         TabIndex        =   4
         Top             =   345
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   582
         _Version        =   393216
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   140967939
         CurrentDate     =   40206
      End
      Begin VB.Label Label2 
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
         ForeColor       =   &H00FF0000&
         Height          =   270
         Left            =   2985
         TabIndex        =   6
         Top             =   375
         Width           =   1110
      End
      Begin VB.Label Label1 
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
         ForeColor       =   &H00FF0000&
         Height          =   270
         Left            =   405
         TabIndex        =   5
         Top             =   375
         Width           =   1110
      End
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "CONSUMPTION UPDATION"
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
      Left            =   225
      TabIndex        =   11
      Top             =   510
      Width           =   4530
   End
   Begin VB.Label lblupdation 
      AutoSize        =   -1  'True
      Caption         =   "##########"
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
      Left            =   900
      TabIndex        =   7
      Top             =   6390
      Width           =   1215
   End
End
Attribute VB_Name = "frmConsumptionUpdate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rstConsumption As Recordset
Dim rstVocno As Recordset
Dim rstmaxDate As Recordset

Dim DB As Connection
Dim iTC As Integer
Dim iVocno As Integer

Private Sub CmdExit_Click()
intervalMinutes = -1
    Unload Me
End Sub

Private Sub cmdUpdate_Click()
  intervalMinutes = -1
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        If CDate(DTPicker1.value) <= CDate(rstmaxDate(0)) Then
            MsgBox "Select from date must be grater than last updation date", vbInformation, head
            DTPicker1.value = rstmaxDate(0) + 1
            DTPicker2.value = rstmaxDate(0) + 1
            Exit Sub
        End If
    End If
    End If
    
    If DTPicker1.value > DTPicker2.value Then
         MsgBox "Select to date must be grater than from date", vbInformation, head
         DTPicker2.value = DTPicker1.value
         Exit Sub
     End If
  
  intervalMinutes = -1
  If MsgBox("R u Sure ", vbYesNo, head) = vbNo Then Exit Sub
  
  Set rstConsumption = New Recordset
  rstConsumption.Open " Select isnull(fromjvtc,0) From fa_param", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstConsumption.EOF Then
    iTC = rstConsumption(0)
  End If
  intervalMinutes = -1
  strNarr = "COTTON CONSUMPTION AS PER INVENTORY FOR PERIOD FORM " & Format(DTPicker1.value, "dd/MM/yy") & " TO " & Format(DTPicker2.value, "dd/MM/yy") & ""
  
  Set rstConsumption = New Recordset
  'rstConsumption.Open " exec ksp_Comsumption_RMI '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','G'", DB, adOpenStatic, adLockBatchOptimistic
  rstConsumption.Open " exec KSP_RMI_P_IssueList_Date_Consump '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','A','A'", DB, adOpenStatic, adLockBatchOptimistic
  
  If Not rstConsumption.EOF Then
    DB.BeginTrans
    'Do While Not rstConsumption.EOF
          Set rstVocno = New Recordset
          rstVocno.Open " Select isnull(max(Vocno),0) From fa_JvHead Where Divcode='" & Divcode & "' AND TC=" & iTC & " AND Vocdt Between '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
          If Not rstVocno.EOF Then
            iVocno = rstVocno(0) + 1
          Else
            iVocno = 1
          End If
            intervalMinutes = -1
            DB.Execute ("insert into RMI_ConsUps (Divcode,Fdate,TDate,tc,Vocno,vocdt,Userid,Entdate) VALUES" & _
                       "('" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "'," & _
                       " " & iTC & "," & iVocno & ",'" & Format(pdate, "yyyy-MM-dd") & "','" & usrid & "','" & Format(Date, "yyyy-MM-dd") & "')")
            
            DB.Execute ("INSERT INTO fa_jvhead (Divcode,tc,VocNo,Vocdt,EntUsrid,EntDate) VALUES ('" & Divcode & "'," & iTC & "," & iVocno & ",'" & Format(pdate, "yyyy-MM-dd") & "','" & usrid & "','" & Format(Date, "yyyy-MM-dd") & "')")
            
            'DB.Execute ("INSERT INTO fa_jvline (Divcode,tc,VocNo,Vocdt,Vocsno,Accode,Narration1," & _
                       " Debit,credit,Amtdue,Docno) VALUES ('" & Divcode & "'," & iTC & "," & iVocno & "," & _
                       " '" & Format(pdate, "yyyy-MM-dd") & "',1,'" & rstConsumption("Consu_DrGlcode") & "','" & strNarr & "'," & _
                       " " & rstConsumption("value") & ",0," & rstConsumption("Value") & "," & iVocno & ")")
            'DB.Execute ("INSERT INTO fa_jvline (Divcode,tc,VocNo,Vocdt,Vocsno,Accode,Narration1," & _
                       " Debit,credit,Amtdue,Docno) VALUES ('" & Divcode & "'," & iTC & "," & iVocno & "," & _
                       " '" & Format(pdate, "yyyy-MM-dd") & "',2,'" & rstConsumption("Consu_CrGlcode") & "','" & strNarr & "'," & _
                       " 0," & rstConsumption("Value") & "," & rstConsumption("Value") & "," & iVocno & ")")
           intervalMinutes = -1
          Do While Not rstConsumption.EOF
                       
           If rstConsumption("debit") > 0 Then
            DB.Execute ("INSERT INTO fa_jvline (Divcode,tc,VocNo,Vocdt,Vocsno,Accode,Narration1," & _
                       " Debit,credit,Amtdue,Docno) VALUES ('" & Divcode & "'," & iTC & "," & iVocno & "," & _
                       " '" & Format(pdate, "yyyy-MM-dd") & "',1,'" & rstConsumption("Glcode") & "','" & strNarr & "'," & _
                       " " & rstConsumption("debit") & ",0," & rstConsumption("debit") & "," & iVocno & ")")
           Else
            DB.Execute ("INSERT INTO fa_jvline (Divcode,tc,VocNo,Vocdt,Vocsno,Accode,Narration1," & _
                       " Debit,credit,Amtdue,Docno) VALUES ('" & Divcode & "'," & iTC & "," & iVocno & "," & _
                       " '" & Format(pdate, "yyyy-MM-dd") & "',2,'" & rstConsumption("Glcode") & "','" & strNarr & "'," & _
                       " 0," & rstConsumption("credit") & "," & rstConsumption("credit") & "," & iVocno & ")")
           End If
          rstConsumption.MoveNext
        Loop
      DB.CommitTrans
      MsgBox "Record Updated Successfully", vbInformation, head

  End If
  
  intervalMinutes = -1
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select Fdate,Tdate from RMI_ConsUps where TDate=(select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        lblupdation.Caption = "Last updation Date From " & Format(rstmaxDate(0), "dd/MM/yy") & " TO " & Format(rstmaxDate(1), "dd/MM/yy") & ""
    Else
        lblupdation.Caption = ""
    End If
  End If
  
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
            DTPicker1.value = rstmaxDate(0) + 1
            DTPicker2.value = rstmaxDate(0) + 1
    End If
  End If
intervalMinutes = -1
End Sub

Private Sub cmdview_Click()

  Set rstConsumption = New Recordset
  'rstConsumption.Open " exec ksp_Comsumption_View_Rmi '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','G'", DB, adOpenStatic, adLockBatchOptimistic
  
  rstConsumption.Open " exec KSP_RMI_P_IssueList_Date_Consump '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker2.value, "yyyy-MM-dd") & "','A','ALL'", DB, adOpenStatic, adLockBatchOptimistic
  Set grdDataGrid.DataSource = rstConsumption
  GridAllign

End Sub

Private Sub DTPicker1_CloseUp()

  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        If DTPicker1.value <= rstmaxDate(0) Then
            MsgBox "Select from date must be grater than last updation date", vbInformation, head
            DTPicker1.value = rstmaxDate(0) + 1
        End If
    End If
  End If
    
End Sub

Private Sub DTPicker2_CloseUp()
        If DTPicker1.value > DTPicker2.value Then
            MsgBox "Select to date must be grater than from date", vbInformation, head
            DTPicker2.value = DTPicker1.value
        End If
        intervalMinutes = -1
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
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
  
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        DTPicker1.MinDate = CDate(DateAdd("d", 1, rstmaxDate(0)))
        DTPicker2.MinDate = CDate(DateAdd("d", 1, rstmaxDate(0)))
    Else
        DTPicker1.MinDate = yfdate
        DTPicker2.MinDate = yfdate
    End If
  Else
        DTPicker1.MinDate = yfdate
        DTPicker2.MinDate = yfdate
  End If
  
'    DTPicker1.MinDate = mfdate
    DTPicker1.maxdate = yldate
    DTPicker2.maxdate = yldate
    
  Set rstmaxDate = New Recordset
  rstmaxDate.Open "select Fdate,Tdate from RMI_ConsUps where TDate=(select max(TDate) FROM RMI_ConsUps where Divcode='" & Divcode & "')", DB, adOpenStatic, adLockBatchOptimistic
  If Not rstmaxDate.EOF Then
    If Not IsNull(rstmaxDate(0)) Then
        lblupdation.Caption = "Last updation Date From " & Format(rstmaxDate(0), "dd/MM/yy") & " TO " & Format(rstmaxDate(1), "dd/MM/yy") & ""
    Else
        lblupdation.Caption = ""
    End If
  End If
    intervalMinutes = -1
End Sub

Private Sub GridAllign()
intervalMinutes = -1
    grdDataGrid.Columns(0).Width = 1200
    grdDataGrid.Columns(1).Width = 5500
    grdDataGrid.Columns(2).Width = 1500
    
    grdDataGrid.Columns(2).Alignment = dbgRight
    grdDataGrid.Columns(2).NumberFormat = "#0.00"
    grdDataGrid.Columns(3).Alignment = dbgRight
    grdDataGrid.Columns(3).NumberFormat = "#0.00"
    

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

