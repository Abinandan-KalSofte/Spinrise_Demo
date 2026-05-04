VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmFaPostingVerification 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "ACCOUNTS POSTING DETAILS"
   ClientHeight    =   5385
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   13215
   LinkTopic       =   "Form6"
   LockControls    =   -1  'True
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5385
   ScaleWidth      =   13215
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox TxtPjvno 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   11700
      TabIndex        =   15
      Top             =   660
      Width           =   1425
   End
   Begin VB.TextBox TxtPjvdt 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   11715
      TabIndex        =   14
      Top             =   1125
      Width           =   1425
   End
   Begin VB.TextBox TxtBillDt 
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1575
      TabIndex        =   13
      Top             =   1125
      Width           =   1425
   End
   Begin VB.TextBox TxtBillNo 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H00FFFFC0&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   345
      Left            =   1590
      TabIndex        =   12
      Top             =   660
      Width           =   1425
   End
   Begin VB.Frame Frame1 
      Height          =   3885
      Left            =   90
      TabIndex        =   0
      Top             =   1440
      Width           =   13080
      Begin VB.TextBox txtCredit 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "#,##,##,###.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   390
         Left            =   11295
         Locked          =   -1  'True
         TabIndex        =   5
         Top             =   3375
         Width           =   1665
      End
      Begin VB.TextBox txtDebit 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "#,##,##,###.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   390
         Left            =   9435
         Locked          =   -1  'True
         TabIndex        =   4
         Top             =   3375
         Width           =   1665
      End
      Begin VB.CommandButton cmdOK 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   4965
         TabIndex        =   3
         Top             =   3360
         Width           =   1275
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   3120
         Left            =   30
         TabIndex        =   1
         Top             =   150
         Width           =   13005
         _ExtentX        =   22939
         _ExtentY        =   5503
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         BackColor       =   16776960
         HeadLines       =   2
         RowHeight       =   22
         TabAction       =   1
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
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
      Begin VB.Label Label2 
         Caption         =   "Total"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   8310
         TabIndex        =   10
         Top             =   3450
         Width           =   1215
      End
      Begin VB.Label lblStatus 
         AutoSize        =   -1  'True
         Caption         =   "######"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF8080&
         Height          =   240
         Left            =   120
         TabIndex        =   2
         Top             =   3435
         Width           =   735
      End
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00D5D5D5&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Accounts Posting Details"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000006&
      Height          =   405
      Left            =   0
      TabIndex        =   11
      Top             =   -15
      Width           =   13170
   End
   Begin VB.Label Lblpjvdt 
      AutoSize        =   -1  'True
      Caption         =   "Voucher Date"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   10335
      TabIndex        =   9
      Top             =   1170
      Width           =   1335
   End
   Begin VB.Label LBLPjvno 
      AutoSize        =   -1  'True
      Caption         =   "Voucher No."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   10335
      TabIndex        =   8
      Top             =   705
      Width           =   1170
   End
   Begin VB.Label LblBillDate 
      AutoSize        =   -1  'True
      Caption         =   "Bill Date"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   330
      TabIndex        =   7
      Top             =   1170
      Width           =   780
   End
   Begin VB.Label LBLBillNo 
      AutoSize        =   -1  'True
      Caption         =   "Bill No."
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   330
      TabIndex        =   6
      Top             =   690
      Width           =   615
   End
End
Attribute VB_Name = "frmFaPostingVerification"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'-- SAKTHI
Dim rstdts As New ADODB.Recordset
Dim DB As New ADODB.Connection

Dim sFAVocno As String
Dim sFAVocDt As String
Dim sFATC As String

Dim sFATrnType As String
Dim sFABillno As String
Dim sFABillDt As String

Dim bTally As Boolean
Public Property Let sVocno(strVocno As String)
    sFAVocno = strVocno
End Property
Public Property Let sVocdt(strVocdt As String)
    sFAVocDt = strVocdt
End Property

Public Property Let sTC(strTC As String)
    sFATC = strTC
End Property
Public Property Let sTrnType(strTrnType As String)
    sFATrnType = strTrnType
End Property
Public Property Let sBillNo(strBillNo As String)
    sFABillno = strBillNo
End Property
Public Property Let sBillDt(strBillDt As String)
    sFABillDt = strBillDt
End Property

Public Property Get bolTally()
    bolTally = bTally
End Property

Private Sub cmdOK_Click()
    If val(txtDebit.Text) = val(txtCredit.Text) Then
        bTally = True
    Else
        bTally = False
    End If
    
    Unload Me
    
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    
    Call Loadfarecord
    
End Sub

Private Sub Loadfarecord()

    Set FaPara = New ADODB.Recordset
    FaPara.Open "Select isnull(Purapp,'N')Purapp,isnull(Salapp,'N')Salapp from Fa_paraM", DB
    
    TxtBillNo.Text = sFABillno
    TxtBillDt.Text = sFABillDt
    TxtPjvno.Text = sFAVocno
    TxtPjvdt.Text = sFAVocDt
    If sFATrnType = "SA" Then
        LBLBillNo.Caption = "Invoice No."
        LblBillDate.Caption = "Invoice Date"
    ElseIf sFATrnType = "PU" Then
        LBLBillNo.Caption = "S.Bill No."
        LblBillDate.Caption = "S.Bill Date"
    End If
    If sFATrnType = "PU" Then
        If FaPara(0) = "Y" Then
            Set rstdts = New ADODB.Recordset
            strQry = "SELECT a.GLCODE as 'A/c Code',b.glhead as 'Account Head',isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_PURJVLINE a ,fa_glmas b"
            strQry = strQry & " WHERE a.GLCODE=b.glcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "'"
            strQry = strQry & " Union All"
            strQry = strQry & " SELECT a.GLCODE,b.Slname,isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_PURJVLINE a ,fa_Slmas b"
            strQry = strQry & " WHERE a.GLCODE=b.Slcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "' ORDER BY CREDIT DESC"
        Else
            Set rstdts = New ADODB.Recordset
            strQry = "SELECT a.GLCODE as 'A/c Code',b.glhead as 'Account Head',isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_CGTRN a ,fa_glmas b"
            strQry = strQry & " WHERE a.GLCODE=b.glcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "'"
            strQry = strQry & " Union All"
            strQry = strQry & " SELECT a.SLCODE,b.Slname,isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_CSTRN a ,fa_Slmas b"
            strQry = strQry & " WHERE a.SLCODE=b.Slcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "' ORDER BY CREDIT DESC"
        End If
    ElseIf sFATrnType = "SA" Or sFATrnType = "SR" Then
        If FaPara(1) = "Y" Then
            Set rstdts = New ADODB.Recordset
            strQry = "SELECT a.GLCODE as 'A/c Code',b.glhead as 'Account Head',isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_SALJVLINE a ,fa_glmas b"
            strQry = strQry & " WHERE a.GLCODE=b.glcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "'"
            strQry = strQry & " Union All"
            strQry = strQry & " SELECT a.GLCODE,b.Slname,isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_SALJVLINE a ,fa_Slmas b"
            strQry = strQry & " WHERE a.GLCODE=b.Slcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "' ORDER BY CREDIT DESC"
        Else
            Set rstdts = New ADODB.Recordset
            strQry = "SELECT a.GLCODE as 'A/c Code',b.glhead as 'Account Head',isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_CGTRN a ,fa_glmas b"
            strQry = strQry & " WHERE a.GLCODE=b.glcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "'"
            strQry = strQry & " Union All"
            strQry = strQry & " SELECT a.SLCODE,b.Slname,isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_CSTRN a ,fa_Slmas b"
            strQry = strQry & " WHERE a.SLCODE=b.Slcode and"
            strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
            strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' and trntype='" & sFATrnType & "' ORDER BY CREDIT DESC"
        End If
    ElseIf sFATrnType = "JV" Then
        Set rstdts = New ADODB.Recordset
        strQry = "SELECT a.ACCODE as 'A/C Code',b.glhead as 'Account Head',isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_JVLINE a ,fa_glmas b"
        strQry = strQry & " WHERE a.ACCODE=b.glcode and"
        strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
        strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "'"
        strQry = strQry & " Union All"
        strQry = strQry & " SELECT a.ACCODE,b.Slname ,isnull(a.narration1,'') narration1,isnull(a.DEBIT,0) as Debit,isnull(a.CREDIT,0) as Credit FROM FA_JVLINE a ,fa_Slmas b"
        strQry = strQry & " WHERE a.ACCODE=b.Slcode and"
        strQry = strQry & " a.tc=" & sFATC & " AND a.DIVCODE='" & Divcode & "' AND a.VOCNO IN (" & sFAVocno & ") "
        strQry = strQry & " AND a.VOCDT BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' ORDER BY CREDIT DESC"
    End If
    rstdts.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    Set grdDataGrid.DataSource = Nothing
    
    Set grdDataGrid.DataSource = rstdts
    
    txtDebit.Text = ""
    txtCredit.Text = ""
    
    If rstdts.RecordCount > 0 Then rstdts.MoveFirst
    Do While Not rstdts.EOF
        txtDebit.Text = Format(val(txtDebit.Text) + rstdts("Debit"), "##.00")
        txtCredit.Text = Format(val(txtCredit.Text) + rstdts("Credit"), "##.00")
        rstdts.MoveNext
    Loop
'    txtDebit.Text = Format(txtDebit.Text, "#,##,##,###.00")
'    txtCredit.Text = Format(txtCredit.Text, "#,##,##,###.00")
    Call GridAllign

    If val(txtDebit.Text) = val(txtCredit.Text) Then
        lblStatus.Caption = "Debit and Credit are Tallied"
    Else
        lblStatus.Caption = "Debit and Credit are not Tallied"
    End If
    
End Sub

Private Sub GridAllign()
On Error Resume Next
    grdDataGrid.Columns(0).Width = 1100
    grdDataGrid.Columns(1).Width = 3700
    grdDataGrid.Columns(2).Width = 4500
    grdDataGrid.Columns(3).Width = 1655
    grdDataGrid.Columns(4).Width = 1655
    grdDataGrid.Columns(2).Caption = "Narration"
'    grdDataGrid.Columns(3).NumberFormat = "##,##,##,#0.00"
'    grdDataGrid.Columns(4).NumberFormat = "##,##,##,#0.00"
    grdDataGrid.Columns(3).NumberFormat = "#0.00"
    grdDataGrid.Columns(4).NumberFormat = "#0.00"
    
    grdDataGrid.Columns(3).Alignment = dbgRight
    grdDataGrid.Columns(4).Alignment = dbgRight
    grdDataGrid.Columns(3).Caption = "                          Debit"
    grdDataGrid.Columns(4).Caption = "                         Credit"

End Sub

Private Sub Form_Unload(Cancel As Integer)
    If val(txtDebit.Text) = val(txtCredit.Text) Then
        bTally = True
    Else
        bTally = False
    End If
    Unload Me
End Sub
