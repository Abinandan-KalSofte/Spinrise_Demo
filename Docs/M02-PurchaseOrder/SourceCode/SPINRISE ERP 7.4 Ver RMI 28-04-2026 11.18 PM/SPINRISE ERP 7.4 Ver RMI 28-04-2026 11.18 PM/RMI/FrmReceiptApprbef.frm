VERSION 5.00
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.Form FrmReceiptApprbef 
   Caption         =   "Receipt Approval "
   ClientHeight    =   7830
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11880
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7830
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.TextBox txtSearch 
      Height          =   315
      Left            =   1890
      TabIndex        =   27
      Top             =   1680
      Width           =   1665
   End
   Begin FPSpreadADO.fpSpread SpdInv 
      Height          =   1770
      Left            =   120
      TabIndex        =   24
      Top             =   8175
      Width           =   12330
      _Version        =   524288
      _ExtentX        =   21749
      _ExtentY        =   3122
      _StockProps     =   64
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      SpreadDesigner  =   "FrmReceiptApprbef.frx":0000
      AppearanceStyle =   0
   End
   Begin VB.TextBox Text2 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2057
         SubFormatType   =   1
      EndProperty
      Height          =   405
      Left            =   10260
      Locked          =   -1  'True
      TabIndex        =   23
      Top             =   7500
      Width           =   1815
   End
   Begin VB.TextBox Text1 
      Alignment       =   1  'Right Justify
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "0.00"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2057
         SubFormatType   =   1
      EndProperty
      Height          =   405
      Left            =   8205
      Locked          =   -1  'True
      TabIndex        =   22
      Top             =   7500
      Width           =   1815
   End
   Begin FPSpreadADO.fpSpread iGrid 
      Height          =   5310
      Left            =   75
      TabIndex        =   21
      Top             =   2025
      Width           =   12330
      _Version        =   524288
      _ExtentX        =   21749
      _ExtentY        =   9366
      _StockProps     =   64
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      SpreadDesigner  =   "FrmReceiptApprbef.frx":0481
      AppearanceStyle =   0
   End
   Begin VB.Frame FrameSelection 
      Enabled         =   0   'False
      Height          =   645
      Left            =   60
      TabIndex        =   16
      Top             =   990
      Width           =   12315
      Begin VB.CommandButton CmdShow 
         Caption         =   "Show"
         Height          =   390
         Left            =   9870
         TabIndex        =   19
         Top             =   157
         Width           =   2190
      End
      Begin VB.ComboBox CmbDiv 
         Height          =   315
         Left            =   1875
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   195
         Width           =   4530
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Transaction Code"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   195
         Left            =   120
         TabIndex        =   18
         Top             =   255
         Width           =   1515
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   5
      Top             =   -75
      Width           =   12255
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":0914
         Height          =   510
         Index           =   0
         Left            =   10290
         Picture         =   "FrmReceiptApprbef.frx":0C1E
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   2115
         Picture         =   "FrmReceiptApprbef.frx":0FB1
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   11385
         Picture         =   "FrmReceiptApprbef.frx":13F3
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":178A
         Height          =   510
         Index           =   3
         Left            =   4200
         Picture         =   "FrmReceiptApprbef.frx":1A94
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Find (Ctrl+R)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":1E29
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "FrmReceiptApprbef.frx":2273
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Next Record (Ctrl+N)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":25C0
         Height          =   510
         Index           =   5
         Left            =   2130
         Picture         =   "FrmReceiptApprbef.frx":2A0A
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":2D6F
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   10845
         Picture         =   "FrmReceiptApprbef.frx":3079
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":3415
         Height          =   510
         Index           =   1
         Left            =   0
         Picture         =   "FrmReceiptApprbef.frx":371F
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":3A99
         Height          =   510
         Index           =   7
         Left            =   3165
         Picture         =   "FrmReceiptApprbef.frx":3EE3
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl+O)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":4233
         Height          =   510
         Index           =   11
         Left            =   1605
         Picture         =   "FrmReceiptApprbef.frx":467D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   105
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":4A12
         Height          =   510
         Index           =   9
         Left            =   570
         Picture         =   "FrmReceiptApprbef.frx":4D1C
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":50BE
         Height          =   510
         Index           =   10
         Left            =   1065
         Picture         =   "FrmReceiptApprbef.frx":53C8
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Cancel (Ctrl+Backspace)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmReceiptApprbef.frx":5744
         Height          =   510
         Index           =   8
         Left            =   3690
         Picture         =   "FrmReceiptApprbef.frx":5B8E
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl+L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "d MMMM yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8265
         TabIndex        =   15
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   6045
         TabIndex        =   14
         Top             =   240
         Width           =   840
      End
   End
   Begin FPSpreadADO.fpSpread iGrdDRN 
      Height          =   6360
      Left            =   12540
      TabIndex        =   26
      Top             =   1560
      Visible         =   0   'False
      Width           =   6480
      _Version        =   524288
      _ExtentX        =   11430
      _ExtentY        =   11218
      _StockProps     =   64
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      SpreadDesigner  =   "FrmReceiptApprbef.frx":5EF0
      AppearanceStyle =   0
   End
   Begin VB.Label Label5 
      Caption         =   "TOTAL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6480
      TabIndex        =   30
      Top             =   7560
      Width           =   1455
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "Search Voc. No."
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   195
      Left            =   210
      TabIndex        =   29
      Top             =   1740
      Width           =   1425
   End
   Begin VB.Label Label3 
      Caption         =   "* * * For Search Voc. No. Press Ctrl+F"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   330
      Left            =   600
      TabIndex        =   28
      Top             =   7740
      Width           =   4785
   End
   Begin VB.Label Label1 
      Caption         =   "* * * Right click for ledger code modification"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   330
      Left            =   585
      TabIndex        =   25
      Top             =   7380
      Visible         =   0   'False
      Width           =   4785
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Receipts Approval"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   75
      TabIndex        =   4
      Top             =   600
      Width           =   2325
   End
End
Attribute VB_Name = "FrmReceiptApprbef"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim cn As Connection
Dim RstApp As Recordset
Dim TmpRs As Recordset
Dim adoprimaryrs As New Recordset
Dim adoSecondaryRS As New Recordset
Dim adoSecondaryRS1 As New Recordset
Dim rstdiv As New Recordset


Dim adoSecondaryCG As New Recordset
Dim adoSecondaryCS As New Recordset

Dim MFLG As Integer
Dim Opt As String
Dim nar1
Dim nar2
Dim RW As Integer
Private Enum E_SpdFAApp
    SprdCheck = 1
    Sprddivcode
    Sprdtc
    sprdTChead
    Sprdvocdt
    Sprdvocno
    Sprdamt
    SprdCheqno
    SprdCheqdt
    SprdVocsno
    SprdAccode
    Sprdname
    SprdTin
    SprdNarr1
    SprdNarr2
    SprdDebit
    SprdCredit
    Sprdtrntype
    Sprdsptype
    SprdInvtype
    sprdOldglcode
End Enum

Private Enum E_SpdInv
    Spddivcode = 1
    SpdVocno
    SpdVocdt
    SpdInvtype
    SpdInvTC
    SpdInvNo
    SpdInvDt
    SpdAmt
End Enum
Private Sub BUTTON_Click(Index As Integer)

On Error GoTo BUTTON_Click_Error
Select Case Index
Case 12
With iGrid
   .ReDraw = False
    'Unlock locked cells so they print black, not gray (since we're printing color)
    .Protect = False
    .PrintColHeaders = False
    .PrintRowHeaders = False
    .PrintBorder = False
    .PrintColor = True
    .PrintGrid = True
    .PrintShadows = True
    .PrintUseDataMax = False
    .PrintType = 0 'SS_PRINT_ALL
    .PrintSheet PrintFlagsShowCommonDialog
    .Protect = True
 End With
Case 1
    desc.Caption = "Modification"
    Opt = "mod"
    FrameSelection.Enabled = True
    CmdShow.Enabled = True
     Set rstdiv = New Recordset
     If Repindex = 1 Then
         rstdiv.Open "SELECT DISTINCT A.TC,B.TCHEAD FROM FA_RECHEAD A,FA_TCMAS B where A.TC =B.TC AND A.APPFLG IS NULL AND A.DIVCODE ='" & Divcode & "' order by A.tc ", cn, adOpenStatic, adLockBatchOptimistic
     ElseIf Repindex = 2 Then
         rstdiv.Open "SELECT DISTINCT A.TC,B.TCHEAD FROM FA_PAYHEAD A,FA_TCMAS B where A.TC =B.TC AND A.APPFLG IS NULL AND A.DIVCODE ='" & Divcode & "' order by A.tc ", cn, adOpenStatic, adLockBatchOptimistic
     ElseIf Repindex = 3 Then
       rstdiv.Open "SELECT DISTINCT A.TC,B.TCHEAD FROM fa_Jvhead a,fa_tcmas b where a.tc=b.tc AND A.APPFLG IS NULL AND A.DIVCODE ='" & Divcode & "' order by A.tc ", cn, adOpenStatic, adLockBatchOptimistic
     ElseIf Repindex = 4 Then
        rstdiv.Open "SELECT DISTINCT P.TC,T.tchead FROM FA_SALJVHEAD p,fa_tcmas t WHERE p.TC=T.tc AND P.APPFLG IS NULL AND VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND P.DIVCODE ='" & Divcode & "' AND TRNTYPE='SA' ORDER BY p.TC", cn, adOpenStatic, adLockBatchOptimistic
     ElseIf Repindex = 5 Then
        rstdiv.Open "SELECT DISTINCT P.TC,T.tchead FROM FA_PURJVHEAD p,fa_tcmas t WHERE p.TC=T.tc AND P.APPFLG IS NULL AND VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND P.DIVCODE ='" & Divcode & "' ORDER BY p.TC", cn, adOpenStatic, adLockBatchOptimistic
     
     ElseIf Repindex = 6 Then
        rstdiv.Open "SELECT DISTINCT P.TC,T.tchead FROM FA_SALJVHEAD p,fa_tcmas t WHERE p.TC=T.tc AND P.APPFLG IS NULL AND VOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND P.DIVCODE ='" & Divcode & "' AND TRNTYPE='SR' ORDER BY p.TC", cn, adOpenStatic, adLockBatchOptimistic
          
     End If
         
     
     
    CmbDiv.clear
    If Not rstdiv.EOF Then
        While Not rstdiv.EOF
            CmbDiv.AddItem rstdiv("TC") & "---" & rstdiv("TCHEAD")
            rstdiv.MoveNext
        Wend
        CmbDiv.AddItem "A---ALL"
        MFLG = 0
        
        CmbDiv.ListIndex = 0
        Call adddelmod(BUTTON)
    Else
        MsgBox "No records Found", vbInformation, head
        Exit Sub
        Screen.MousePointer = 0
        Call BUTTON_Click(10)
    End If
    
    
Case 9

   Dim chk As Integer
   Dim CR, dr As Double
   Dim DB As New Connection
   Set DB = New Connection
   DB.Open connectstring
   
    DB.BeginTrans
    If Opt = "mod" Then
        
        Set getd = New Recordset
        getd.Open "Select getdate() as GETDATE ", cn, adOpenStatic, adLockBatchOptimistic
        mvocno1 = Empty
        mvocdt1 = Empty
        mtc1 = Empty
        mdivcode1 = Empty
        
        With iGrid
            chk = 0
            For RW = 1 To .MaxRows
            
                .Row = RW
                .Col = E_SpdFAApp.SprdCheck
                If .value <> "" And .value <> "0" Then
                
                    If GetText(iGrid, E_SpdFAApp.SprdNarr1, RW) = "T O T A L " Then
                    
                        CR = GetText(iGrid, E_SpdFAApp.SprdCredit, RW)
                        dr = GetText(iGrid, E_SpdFAApp.SprdDebit, RW)
                        If CR <> dr Then
                            MsgBox "Credit Amount and Debit amount Should not be tallied", vbInformation, head
                            Exit Sub
                            Screen.MousePointer = 0
                        End If
                    End If
                    
                    Set adoprimaryrs = New Recordset
                    
                    mvocno = GetText(iGrid, E_SpdFAApp.Sprdvocno, RW)
                    mvocsno = GetText(iGrid, E_SpdFAApp.SprdVocsno, RW)
                    mvocdt = Format(GetText(iGrid, E_SpdFAApp.Sprdvocdt, RW), "yyyy-mm-dd")
                    mtc = GetText(iGrid, E_SpdFAApp.Sprdtc, RW)
                    mDivcode = GetText(iGrid, E_SpdFAApp.Sprddivcode, RW)
                    mamount = GetText(iGrid, E_SpdFAApp.Sprdamt, RW)
                    mchqno = GetText(iGrid, E_SpdFAApp.SprdCheqno, RW)
                    mchqdt = GetText(iGrid, E_SpdFAApp.SprdCheqdt, RW)
                    mtrntype = GetText(iGrid, E_SpdFAApp.Sprdtrntype, RW)
                    mGlcode = GetText(iGrid, E_SpdFAApp.SprdAccode, RW)
                    moldgl = GetText(iGrid, E_SpdFAApp.sprdOldglcode, RW)
                    mcredit = GetText(iGrid, E_SpdFAApp.SprdCredit, RW)
                    mdebit = GetText(iGrid, E_SpdFAApp.SprdDebit, RW)
                    
                    Dim RsTmp As Recordset
                    
                    Set RsTmp = New Recordset
                    If Repindex = 1 Then
                         RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from FA_Recline1 where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                         If Not RsTmp.EOF Then
                            If RsTmp(0) <> 0 Then
                                MsgBox "Amount Not Tallied ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            End If
                         End If
                    ElseIf Repindex = 2 Then
                         RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from FA_Payline1 where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                         If Not RsTmp.EOF Then
                            If RsTmp(0) <> 0 Then
                                MsgBox "Amount Not Tallied ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            End If
                         End If
                    ElseIf Repindex = 3 Then
                         RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from FA_Jvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                         If Not RsTmp.EOF Then
                            If RsTmp(0) <> 0 Then
                                MsgBox "Amount Not Tallied ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            End If
                         End If
                         
                    ElseIf Repindex = 4 Then
                         RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from FA_SalJvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype='SA'", DB, adOpenStatic, adLockBatchOptimistic
                         If Not RsTmp.EOF Then
                            If RsTmp(0) <> 0 Then
                                MsgBox "Amount Not Tallied ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            End If
                         End If
                         
                    ElseIf Repindex = 5 Then
                        RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from fa_PurJvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype ='" & mtrntype & "'", DB, adOpenStatic, adLockBatchOptimistic
                        If Not RsTmp.EOF Then
                           If RsTmp(0) <> 0 Then
                               MsgBox "Amount Not Tallied ", vbInformation, head
                               Call BUTTON_Click(10)
                               Exit Sub
                           End If
                        End If
                    ElseIf Repindex = 6 Then
                         RsTmp.Open "select sum(isnull(debit,0))-sum(isnull(Credit,0)) as Bal from FA_SalJvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype='SR'", DB, adOpenStatic, adLockBatchOptimistic
                         If Not RsTmp.EOF Then
                            If RsTmp(0) <> 0 Then
                                MsgBox "Amount Not Tallied ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            End If
                         End If
                    End If
                    
                    
                    If mGlcode <> "" Then
                        'db.BeginTrans
                        If Repindex = 1 Then
                            adoprimaryrs.Open "select * from fa_rechead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        ElseIf Repindex = 2 Then
                            adoprimaryrs.Open "select * from fa_payhead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        ElseIf Repindex = 3 Then
                            adoprimaryrs.Open "select * from fa_jvhead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        ElseIf Repindex = 4 Then
                            adoprimaryrs.Open "select * from FA_SalJvHead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype ='SA'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        ElseIf Repindex = 5 Then
                            adoprimaryrs.Open "select * from fa_PurJvhead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype ='" & mtrntype & "'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        ElseIf Repindex = 6 Then
                            adoprimaryrs.Open "select * from FA_SalJvHead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype ='SR'", DB, adOpenDynamic, adLockBatchOptimistic 'adOpenStatic, adLockBatchOptimistic
                        End If
                        
                        adoprimaryrs("appFlg") = "Y"
                        adoprimaryrs("appusrid") = App_userid
                        adoprimaryrs("Appuser_name") = Appuser_name
                        adoprimaryrs("applevel") = AppLevel
                        adoprimaryrs("APPDATE") = getd("GETDATE")
                        
                        If Repindex = 5 Then
                            Set Rs = New Recordset
                            Rs.Open "SELECT Divcode,PJVNO,PJVDT,TC FROM FA_PURHD WHERE divcode ='" & adoprimaryrs("DIVCODE") & " ' and PJVNO = " & adoprimaryrs("VOCNO") & " and PJVDT = '" & Format(adoprimaryrs("VOCDt"), "yyyy-mm-dd") & "' AND TC ='" & adoprimaryrs("TC") & "'", DB, adOpenStatic, adLockBatchOptimistic
                            If Rs.RecordCount > 0 Then
                               DB.Execute "Update FA_PURHD set AppFlg = 'Y' WHERE divcode ='" & Rs("DIVCODE") & "' and PJVNO = '" & Rs("PJVNO") & "' and PJVDT = '" & Format(Rs("PJVDT"), "yyyy-mm-dd") & "' AND TC =" & Rs("TC") & " "
                            End If

                            If adoprimaryrs("TRNTYPE") = "PU" And adoprimaryrs("PURTYPE") = "S" Then
                                Set Rs = New Recordset
                                Rs.Open "SELECT Divcode,PJVOCNO,PJVOCDT,FATC FROM IN_PJH WHERE divcode ='" & adoprimaryrs("DIVCODE") & " ' and PJVOCNO = " & adoprimaryrs("VOCNO") & " and PJVOCDT = '" & Format(adoprimaryrs("VOCDt"), "yyyy-mm-dd") & "' AND FATC ='" & adoprimaryrs("TC") & "'", DB, adOpenStatic, adLockBatchOptimistic
                                If Rs.RecordCount > 0 Then
                                    DB.Execute "Update IN_PJH set AppFlg = 'Y' WHERE divcode ='" & Rs("DIVCODE") & "' and PJVOCNO = '" & Rs("PJVOCNO") & "' and PJVOCDT = '" & Format(Rs("PJVOCDT"), "yyyy-mm-dd") & "' AND FATC =" & Rs("FATC") & " "
                                End If
                            ElseIf adoprimaryrs("TRNTYPE") = "PU" And adoprimaryrs("PURTYPE") = "R" Then
                                Set Rs = New Recordset
                                Rs.Open "SELECT Divcode,PJNO,PJDT,PJTC FROM RM_LOT WHERE divcode ='" & adoprimaryrs("DIVCODE") & " ' and PJNO = " & adoprimaryrs("VOCNO") & " and PJDT = '" & Format(adoprimaryrs("VOCDt"), "yyyy-mm-dd") & "' AND PJTC ='" & adoprimaryrs("TC") & "'", DB, adOpenStatic, adLockBatchOptimistic
                                If Rs.RecordCount > 0 Then
                                    DB.Execute "Update RM_LOT set AppFlg = 'Y' WHERE divcode ='" & Rs("DIVCODE") & "' and PJNO = '" & Rs("PJNO") & "' and PJDT = '" & Format(Rs("PJDT"), "yyyy-mm-dd") & "' AND PJTC =" & Rs("PJTC") & " "
                                End If
                                
                            ElseIf adoprimaryrs("TRNTYPE") = "PU" And adoprimaryrs("PURTYPE") = "Y" Then
                                Set Rs = New Recordset
                                Rs.Open "SELECT Divcode,DOCNO,DOCDT FROM IG_YARNBILL_HD WHERE divcode ='" & adoprimaryrs("DIVCODE") & " ' and DOCNO = " & adoprimaryrs("LBILLNO") & " and DOCDT = '" & Format(adoprimaryrs("VOCDt"), "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                                If Rs.RecordCount > 0 Then
                                    DB.Execute "Update IG_YARNBILL_HD set AppFlg = 'Y' WHERE divcode ='" & Rs("DIVCODE") & "' and DOCNO = '" & Rs("DOCNO") & "' and DOCDT = '" & Format(Rs("DOCDT"), "yyyy-mm-dd") & "' "
                                End If
                            End If
                        End If
                        Set adoSecondaryRS = New Recordset
                        Set adoSecondaryRS1 = New Recordset
                        If Repindex = 5 Then
                           adoSecondaryRS.Open "select * from fa_PurJvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and trntype ='" & mtrntype & "' AND GLCODE ='" & moldgl & "' and vocsno=" & mvocsno & " and isnull(debit,0) = " & mdebit & " order by vocsno asc", DB, adOpenStatic, adLockBatchOptimistic
                        End If
                        adoprimaryrs.UpdateBatch adAffectAllChapters
                        
                        
                        
                 ' If Not adoSecondaryRS.EOF Then '28/04/11
                  '     adoSecondaryRS.MoveFirst  '28/04/11
                       
                   '  Do While Not adoSecondaryRS.EOF '28/04/11
                        If Repindex = 5 Or Repindex = 4 Or Repindex = 6 Then
                            adoSecondaryRS("AppFlg") = "Y"
                            adoSecondaryRS("glcode") = GetText(iGrid, E_SpdFAApp.SprdAccode, RW)
                            adoSecondaryRS("Divcode") = mDivcode
                        End If
                        
                        adoSecondaryRS("NARRATION1") = GetText(iGrid, E_SpdFAApp.SprdNarr1, RW)
                        adoSecondaryRS("NARRATION2") = GetText(iGrid, E_SpdFAApp.SprdNarr2, RW)
                        adoSecondaryRS.UpdateBatch adAffectCurrent
                        
                                              
                        
                        If Repindex = 1 Or Repindex = 2 Then
                            Set rs13 = New Recordset
                            rs13.Open "select glcode from fa_tcmas where tc=" & mtc, DB, adOpenStatic
                            
                            If rs13.RecordCount > 0 Then
                                Set rs14 = New Recordset
                                If Repindex = 1 Then
                                    rs14.Open "select * from fa_recline1 where divcode ='" & mDivcode & "' and tc=" & mtc & " and vocno=" & mvocno & " and vocdt='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                                Else
                                    rs14.Open "select * from fa_payline1 where Refdivcode ='" & mDivcode & "' and tc=" & mtc & " and vocno=" & mvocno & " and vocdt='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                                End If
                                
                                If rs14.RecordCount > 0 Then
                                    
                                    rs14.MoveFirst
                                     ' mchqno = rs
                                    Set rs15 = New Recordset
                                    If IsNumeric(rs14!accode) Then
                                         rs15.Open "Select glhead from  fa_glmas where glcode = '" & rs14("accode") & "'", DB, adOpenKeyset, adLockReadOnly
                                    Else
                                        rs15.Open "Select slname from  fa_slmas where slcode = '" & rs14("accode") & "'", DB, adOpenKeyset, adLockReadOnly
                                    End If
                                    
                                    mglhead = IIf(IsNull(rs15(0)), "", rs15(0))
                                    
                                    If Repindex = 1 Then
                                        
                                        nar1 = ""
                                        nar2 = ""
                                        If IsNull(rs14("narration1")) Then
                                             nar1 = rs14("narration1")
                                        Else
                                             nar1 = Replace(rs14("narration1"), "'", "''")
                                        End If
                                          
                                        If IsNull(rs14("narration2")) Then
                                            nar2 = rs14("narration2")
                                        Else
                                            nar2 = Replace(rs14("narration2"), "'", "''")
                                        End If
                                    
                                    Else
                                    
                                        nar1 = ""
                                        nar2 = ""
                                        If IsNull(rs14("narration1")) Then
                                            nar1 = rs14("narration1")
                                        Else
                                            nar1 = Replace(rs14("narration1"), "'", "''")
                                        End If
                                         
                                        If IsNull(rs14("narration2")) Then
                                             nar2 = rs14("narration2")
                                        Else
                                             nar2 = Replace(rs14("narration2"), "'", "''")
                                        End If
                                        
                                        
                                        DB.Execute "Update fa_tds  set Approved='Y' where  divcode ='" & mDivcode & "' and tc=" & mtc & " and vocno=" & mvocno & " and vocdt='" & Format(mvocdt, "yyyy-MM-dd") & "'"
                                        DB.Execute "Update FA_SERVICE_TAX  set Approved='Y' where  divcode ='" & mDivcode & "' and tc=" & mtc & " and vocno=" & mvocno & " and vocdt='" & Format(mvocdt, "yyyy-MM-dd") & "'"
                                        
                                    End If
                                End If
                            End If
                        End If
                    End If
                    
                    'db.CommitTrans
                    
                    chk = 1
                    mvocno1 = mvocno
                    mvocdt1 = mvocdt
                    mtc1 = mtc
                    mdivcode1 = mDivcode
                    
                End If
            Next
            
            DB.CommitTrans
            
            
            
            If Repindex = 5 And iGrdDRN.MaxRows > 0 Then
                mvocno1 = Empty
                mvocdt1 = Empty
                mtc1 = Empty
                mdivcode1 = Empty
                
                With iGrdDRN
                    chk = 0
                    For RW = 1 To .MaxRows
                        .Row = RW
                        .Col = E_SpdFAApp.SprdCheck
                        
                        Set adoprimaryrs = New Recordset
                        mvocno = GetText(iGrdDRN, E_SpdFAApp.Sprdvocno, RW)
                        mvocdt = Format(GetText(iGrdDRN, E_SpdFAApp.Sprdvocdt, RW), "yyyy-mm-dd")
                        mtc = GetText(iGrdDRN, E_SpdFAApp.Sprdtc, RW)
                        mDivcode = GetText(iGrdDRN, E_SpdFAApp.Sprddivcode, RW)
                        mamount = GetText(iGrdDRN, E_SpdFAApp.Sprdamt, RW)
                        mchqno = GetText(iGrdDRN, E_SpdFAApp.SprdCheqno, RW)
                        mchqdt = GetText(iGrdDRN, E_SpdFAApp.SprdCheqdt, RW)
                        mtrntype = GetText(iGrdDRN, E_SpdFAApp.Sprdtrntype, RW)
                        mGlcode = GetText(iGrdDRN, E_SpdFAApp.SprdAccode, RW)
                        moldgl = GetText(iGrdDRN, E_SpdFAApp.sprdOldglcode, RW)
                        
                        
                        If mGlcode <> "" Then
                            DB.BeginTrans
                            
                            adoprimaryrs.Open "select * from fa_jvhead where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "'", DB, adOpenStatic, adLockBatchOptimistic
                            
                            adoprimaryrs("appFlg") = "Y"
                            adoprimaryrs("appusrid") = App_userid
                            adoprimaryrs("Appuser_name") = Appuser_name
                            adoprimaryrs("applevel") = AppLevel
                            adoprimaryrs("APPDATE") = getd("GETDATE")
                        
                            Set adoSecondaryRS = New Recordset
                            adoSecondaryRS.Open "select * from fa_jvline where tc = " & mtc & " and divcode ='" & mDivcode & "' and vocno = " & mvocno & " and vocdt ='" & mvocdt & "' and accode='" & moldgl & "' order by vocsno asc", DB, adOpenStatic, adLockBatchOptimistic
                            adoprimaryrs.UpdateBatch adAffectAllChapters
                            
                            adoSecondaryRS("Divcode") = mDivcode
                            
                            adoSecondaryRS.UpdateBatch adAffectAllChapters
                            
                            'db.Execute "ALTER TABLE FA_JVLINE DISABLE TRIGGER UPDJVLINE"
                            DB.CommitTrans
                            'db.Execute "ALTER TABLE FA_JVLINE ENABLE TRIGGER UPDJVLINE"
                                                       
                            '''db.CommitTrans
                            
                            
                            chk = 1
                            mvocno1 = mvocno
                            mvocdt1 = mvocdt
                            mtc1 = mtc
                            mdivcode1 = mDivcode
                        End If
                    Next
                End With
            End If
            
            
            
            If chk = 1 Then
                MsgBox "Approval Completed", vbInformation, head
            ElseIf chk = 0 Then
                MsgBox "Select At Least One Approval To Complete the Transaction", vbInformation, head
            End If
        End With
        
   End If
   
   If chk = 1 Then
    Call BUTTON_Click(10)
   End If
   
   
   
Case 10
    MFLG = 1
   Call SetGridHead
   txtSearch = ""
   Text1 = 0 '""
   Text2 = 0 '""
   SpdInv.Visible = False
   CmdShow.Enabled = False
   Opt = "Qry"
   desc.Caption = "Query"
   Call NEWFORM1(BUTTON, GSNO)
   FrameSelection.Enabled = True
Case 11
   Unload Me
End Select

  
Exit Sub
BUTTON_Click_Error:
DB.RollbackTrans
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmReceiptApprbef"
End Sub

Private Sub CmbDiv_Change()
  CmdShow.Enabled = True
End Sub

Private Sub CmbDiv_Click()
CmdShow.Enabled = True
End Sub

Private Sub CmdShow_Click()
On Error GoTo CmdShow_Click_Error
Dim RstPara As Recordset
Dim RstBudg As Recordset
Dim CondString As String
Dim CheckString As String
MFLG = 1
Text1 = 0
Text2 = 0
Call SetGridHead
Call Invoicehead
SpdInv.Visible = False
With iGrid
    .MaxRows = 0
    .MaxCols = 21
    .CursorStyle = CursorStyleArrow
    RW = 1
    .TextTip = TextTipFloatingFocusOnly
    .CellNoteIndicator = CellNoteIndicatorDoNotShowAndFireEvent
    
    
    If Repindex = 5 Then
        If cn.State = 1 Then cn.Close
        cn.Open connectstring
    
        Set TmpRs = New Recordset
        If Trim(CmbDiv) = "A---ALL" Then
            TmpRs.Open " Select  distinct a.divcode, a.tc,c.tchead, a.vocno,a.vocdt,a.Purtype  FROM FA_PURJVHEAD a , fa_tcmas c " & _
                " where a.appFlg is null  AND  c.tc=a.tc AND  a.divcode = '" & Divcode & "' AND a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by A.vocno,A.vocdt asc", cn, adOpenStatic, adLockBatchOptimistic
                'AND a.vocdt >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND a.vocdt <= '" & Format(yldate, "yyyy-mm-dd") & "'
                
        Else
            TmpRs.Open " Select  distinct a.divcode, a.tc,c.tchead, a.vocno,a.vocdt,a.Purtype  FROM FA_PURJVHEAD a , fa_tcmas c " & _
                " where ISNULL(a.appFlg,'N')='N'  AND  c.tc=a.tc and  A.TC ='" & Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1) & "' AND  a.divcode = '" & Divcode & "' AND a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' order by a.tc,A.vocno,A.vocdt asc", cn, adOpenStatic, adLockBatchOptimistic
                
        End If
        RW = 1
        While Not TmpRs.EOF
            Set RstApp = New Recordset
            If Trim(CmbDiv) = "A---ALL" Then
                RstApp.Open " SELECT a.divcode,a.TC,C.TcHead,a.VOCNO,a.VOCDT,''Chqno,'' as chqdt,0 as amount,Vocsno,b.GLCODE as AcCode, " & _
                        " (case when substring(B.Glcode,1,1) = 'C' or substring(B.glcode,1,1) = 'D' or substring(B.glcode,1,1) = 'O' Then (select slname from fa_slmas where slcode = B.glcode) else (select glhead from fa_glmas where glcode = B.glcode) end) head," & _
                        " case when substring(B.Glcode,1,1) = 'C' or substring(B.Glcode,1,1) = 'D' or substring(B.Glcode,1,1) = 'O' Then (select TinNo from fa_slmas where slcode = B.Glcode) else '' end TinNo, " & _
                        " b.NARRATION1,b.NARRATION2,isnull(b.DEBIT,0)Debit,isnull(b.CREDIT,0)Credit,a.trntype,a.PurType FROM FA_PURJVHEAD A,FA_PURJVLINE B,FA_TCMAS C where  A.TC=B.TC AND A.TC=C.TC AND  A.VOCNO=B.VOCNO AND A.VOCDT=B.VOCDT AND A.DIVCODE =B.DIVCODE " & _
                        " AND a.tc=" & TmpRs("tc") & " AND a.divcode = '" & Divcode & "' AND a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' AND a.vocno ='" & TmpRs("VocNo") & "' and a.vocdt ='" & Format(TmpRs("vocdt"), "yyyy-mm-dd") & "' order by a.tc,A.vocno,A.vocdt,b.vocsno asc", cn, adOpenStatic, adLockBatchOptimistic
                        'a.vocdt >= '" & Format(yfdate, "yyyy-mm-dd") & "' AND a.vocdt <= '" & Format(yldate, "yyyy-mm-dd") & "'
            Else
                RstApp.Open " SELECT a.divcode,a.TC,C.TcHead,a.VOCNO,a.VOCDT,''Chqno,'' as chqdt,0 as amount,Vocsno,b.GLCODE as AcCode, " & _
                        " (Case when substring(B.Glcode,1,1) = 'C' or substring(B.glcode,1,1) = 'D' or substring(B.glcode,1,1) = 'O' Then (select slname from fa_slmas where slcode = B.glcode) else (select glhead from fa_glmas where glcode = B.glcode) end) head," & _
                        " Case when substring(B.Glcode,1,1) = 'C' or substring(B.Glcode,1,1) = 'D' or substring(B.Glcode,1,1) = 'O' Then (select TinNo from fa_slmas where slcode = B.Glcode) else '' end TinNo, " & _
                        " b.NARRATION1,b.NARRATION2,isnull(b.DEBIT,0)Debit,isnull(b.CREDIT,0)Credit,a.trntype,a.PurType FROM FA_PURJVHEAD A,FA_PURJVLINE B,FA_TCMAS C where  A.TC=B.TC AND A.TC=C.TC AND  A.VOCNO=B.VOCNO AND A.VOCDT=B.VOCDT AND A.DIVCODE =B.DIVCODE " & _
                        " AND B.Tc = " & Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1) & " AND  a.divcode = '" & Divcode & "' AND a.vocdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' AND a.vocno ='" & TmpRs("VocNo") & "' and a.vocdt ='" & Format(TmpRs("vocdt"), "yyyy-mm-dd") & "' order by a.tc,A.vocno,A.vocdt,b.vocsno asc", cn, adOpenStatic, adLockBatchOptimistic
                        
            End If
            If Not RstApp.EOF Then
                Call gridload
            End If
            TmpRs.MoveNext
        Wend
        RW = RW + 1
    End If
End With
CmdShow.Enabled = False
iGrid.SetFocus
Exit Sub

CmdShow_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CmdShow_Click of Form FrmReceiptAppr", vbInformation, head
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
If KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = 27 Then
 If MsgBox("Do you want to Quit?", vbYesNo, head) = vbYes Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
 End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    txtSearch = ""
    txtSearch.SetFocus
End If
    
    Exit Sub
Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmReceiptAppr"
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error
Dim RW As Integer
Dim DbCnt As Integer
CmbDiv.clear
Set cn = New Connection
cn.ConnectionTimeout = 0
cn.CommandTimeout = 0

cn.Open connectstring
'CmbDiv.ListIndex = 0
If Repindex = 1 Then
    heading.Caption = " Receipt Approval "
    Me.Caption = "Receipt Approval "
ElseIf Repindex = 2 Then
    heading.Caption = " Payment Approval "
    Me.Caption = "Payment Approval "
ElseIf Repindex = 3 Then
    heading.Caption = " Journal Approval"
    Me.Caption = "Journal Approval "
  '26/06/09
ElseIf Repindex = 4 Then
    heading.Caption = " Sales Approval"
    Me.Caption = " Sales Approval"

ElseIf Repindex = 5 Then
    heading.Caption = " Purchase Approval"
    Me.Caption = " Purchase Approval"

ElseIf Repindex = 6 Then
    heading.Caption = " Sales Return Approval"
    Me.Caption = " Sales Return Approval"

End If

Call SetGridHead
Call Invoicehead
SpdInv.Visible = False
Opt = "Qry"
desc.Caption = "Query"
DATLAB.Caption = Format(pdate, "dd/mm/yyyy")
Call NEWFORM1(BUTTON, GSNO)
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmReceiptAppr"
End Sub

Private Sub fpSpread1_Advance(ByVal AdvanceNext As Boolean)

End Sub

Private Sub IGrid_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
On Error GoTo IGrid_ButtonClicked_Error
With iGrid
    If Col = E_SpdFAApp.SprdCheck Then
            .Row = Row
            .Col = E_SpdFAApp.SprdCheck
        If .value = 1 Then
            .Action = 0
        End If
    End If
        
End With

Exit Sub
IGrid_ButtonClicked_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IGrid_ButtonClicked of Form FrmReceiptAppr"
End Sub

Private Sub iGrid_Change(ByVal Col As Long, ByVal Row As Long)
On Error Resume Next

If Col = 1 Then
    With iGrid
         .Col = E_SpdFAApp.SprdCheck
         If .value = 1 Then
            mvocno = GetText(iGrid, E_SpdFAApp.Sprdvocno, .Row)
            mvocdt = Format(GetText(iGrid, E_SpdFAApp.Sprdvocdt, .Row), "yyyy-mm-dd")
            mtc = GetText(iGrid, E_SpdFAApp.Sprdtc, .Row)
            If mvocno <> "" Then
               For i = 1 To .MaxRows
                  If GetText(iGrid, E_SpdFAApp.Sprdtc, i) = mtc And GetText(iGrid, E_SpdFAApp.Sprdvocno, i) = mvocno And mvocdt = Format(GetText(iGrid, E_SpdFAApp.Sprdvocdt, i), "yyyy-mm-dd") Then
                     .Col = 1
                     .Row = i
                     .value = 1
                  End If
               Next i
            End If
         ElseIf .value = 0 Then
            mvocno = GetText(iGrid, E_SpdFAApp.Sprdvocno, .Row)
            mvocdt = Format(GetText(iGrid, E_SpdFAApp.Sprdvocdt, .Row), "yyyy-mm-dd")
            mtc = GetText(iGrid, E_SpdFAApp.Sprdtc, .Row)
            If mvocno <> "" Then
               For i = 1 To .MaxRows
                  If GetText(iGrid, E_SpdFAApp.Sprdtc, i) = mtc And GetText(iGrid, E_SpdFAApp.Sprdvocno, i) = mvocno And mvocdt = Format(GetText(iGrid, E_SpdFAApp.Sprdvocdt, i), "yyyy-mm-dd") Then
                     .Col = 1
                     .Row = i
                     .value = 0
                  End If
               Next i
            End If
         End If
    End With
End If

End Sub

Private Sub SpdInv_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
On Error GoTo IGrid_ButtonClicked_Error
With SpdInv
    If Col = E_SpdFAApp.SprdCheck Then
            .Row = Row
            .Col = E_SpdFAApp.SprdCheck
        If .value = 1 Then
            .Action = 0
        End If
    End If
        
End With



Exit Sub
IGrid_ButtonClicked_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IGrid_ButtonClicked of Form FrmReceiptAppr"

End Sub

Private Sub SpdInv_Change(ByVal Col As Long, ByVal Row As Long)
Dim RW As Long

If Repindex <> 5 Then Exit Sub
If Col = 1 Then
    With SpdInv
        .Col = E_SpdFAApp.SprdCheck
         If .value = 1 Then
            mvocno = GetText(SpdInv, E_SpdFAApp.Sprdvocno, .Row)
            mvocdt = Format(GetText(SpdInv, E_SpdFAApp.Sprdvocdt, .Row), "yyyy-mm-dd")
            mtc = GetText(SpdInv, E_SpdFAApp.Sprdtc, .Row)
            If mvocno <> "" Then
               For i = 1 To .MaxRows
                  If GetText(SpdInv, E_SpdFAApp.Sprdtc, i) = mtc And GetText(SpdInv, E_SpdFAApp.Sprdvocno, i) = mvocno And mvocdt = Format(GetText(SpdInv, E_SpdFAApp.Sprdvocdt, i), "yyyy-mm-dd") Then
                     .Col = 1
                     .Row = i
                     .value = 1
                     iGrdDRN.MaxRows = iGrdDRN.MaxRows + 1
                     For J = 1 To .MaxCols
                        SetTag iGrdDRN, GetTag(SpdInv, J, i), J, iGrdDRN.MaxRows
                        iGrdDRN.SetText J, iGrdDRN.MaxRows, GetText(SpdInv, J, i)
                     Next J
                  End If
               Next i
            End If
        ElseIf .value = 0 Then
            mvocno = GetText(SpdInv, E_SpdFAApp.Sprdvocno, .Row)
            mvocdt = Format(GetText(SpdInv, E_SpdFAApp.Sprdvocdt, .Row), "yyyy-mm-dd")
            mtc = GetText(SpdInv, E_SpdFAApp.Sprdtc, .Row)
            If mvocno <> "" Then
               For i = 1 To .MaxRows
                  If GetText(SpdInv, E_SpdFAApp.Sprdtc, i) = mtc And GetText(SpdInv, E_SpdFAApp.Sprdvocno, i) = mvocno And mvocdt = Format(GetText(SpdInv, E_SpdFAApp.Sprdvocdt, i), "yyyy-mm-dd") Then
                     .Col = 1
                     .Row = i
                     .value = 0
                  End If
               Next i
               J = 0
               Dim arrDelRows As Long
               arrDelRows = 0
               For i = 1 To iGrdDRN.MaxRows
                  If GetText(iGrdDRN, E_SpdFAApp.Sprdtc, i) = mtc And GetText(iGrdDRN, E_SpdFAApp.Sprdvocno, i) = mvocno And mvocdt = Format(GetText(iGrdDRN, E_SpdFAApp.Sprdvocdt, i), "yyyy-mm-dd") Then
                     J = J + 1
                     If arrDelRows = 0 Then arrDelRows = i
                  End If
               Next i
               If J > 0 Then
                    iGrdDRN.DeleteRows arrDelRows, J
                    iGrdDRN.MaxRows = iGrdDRN.MaxRows - J
               End If
            End If
        End If
    End With
End If
End Sub

Private Sub IGrid_Click(ByVal Col As Long, ByVal Row As Long)
On Error GoTo IGrid_Click_Error

If Row = -1 Then Exit Sub

Dim vocno, VOCDT, TC
If Col <> E_SpdFAApp.SprdAccode Then
    If Repindex <= 3 Then '2
        With iGrid
            .GetText E_SpdFAApp.Sprdvocno, Row, vocno
            .GetText E_SpdFAApp.Sprdvocdt, Row, VOCDT
            .GetText E_SpdFAApp.Sprdtc, Row, TC
            'tc = Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)
            .GetText E_SpdFAApp.SprdAccode, Row, slcode
            Call loadInvoice(vocno, VOCDT, TC, slcode)
        End With
    
    
    ElseIf Repindex = 5 Then
        Dim drnrs As Recordset, strSQL As String, RW As Long
        Dim TDEBIT As Double, TCREDIT As Double
        TDEBIT = 0: TCREDIT = 0
        iGrid.GetText E_SpdFAApp.Sprdvocno, Row, vocno
        iGrid.GetText E_SpdFAApp.Sprdvocdt, Row, VOCDT
        iGrid.GetText E_SpdFAApp.Sprdtc, Row, TC
        
        If Not IsDate(VOCDT) Then SpdInv.Visible = False: Exit Sub
        
        strSQL = "SELECT LT.PJNO,LT.PJDT,LT.PJTC,LT.LOTDT,JL.DIVCODE,JL.TC,TC.TCHEAD,JL.VOCNO,JL.VOCDT,JH.REF_NO CHQNO,JH.REF_DATE CHQDT,0 AMOUNT,VOCSNO,JL.ACCODE,CASE WHEN SUBSTRING(JL.ACCODE,1,1) IN ('C','D','O') THEN (SELECT SLNAME FROM FA_SLMAS WHERE SLCODE=JL.ACCODE) ELSE (SELECT GLHEAD FROM FA_GLMAS WHERE GLCODE=JL.ACCODE) END HEAD,NARRATION1,NARRATION2,ISNULL(DEBIT,0) DEBIT,ISNULL(CREDIT,0) CREDIT FROM FA_JVHEAD JH INNER JOIN FA_JVLINE JL ON JH.DIVCODE=JL.DIVCODE AND JH.TC=JL.TC AND JH.VOCNO=JL.VOCNO AND JH.VOCDT=JL.VOCDT INNER JOIN RM_LOTALLOWANCE LA ON JL.DIVCODE=LA.DIVCODE AND JL.TC=(SELECT DRNOTE FROM FA_PARAM) AND JL.VOCNO=LA.DBNO AND JL.VOCDT=LA.DBDT INNER JOIN RM_LOT LT ON LA.LOTNO=LT.LOTNO AND LA.LOTDT=LT.LOTDT AND LA.DIVCODE=LT.DIVCODE INNER JOIN FA_TCMAS TC ON JL.TC=TC.TC WHERE LT.DIVCODE='" & Divcode & "' AND LT.PJTC=" & TC & " AND LT.PJNO=" & vocno & " AND LT.PJDT='" & Format(CDate(VOCDT), "yyyy-MM-dd") & "' ORDER BY JL.VOCNO,JL.VOCDT,JL.VOCSNO"
        Set drnrs = New Recordset
        Call drnrs.Open(strSQL, cn, adOpenDynamic, adLockReadOnly)
        If Not drnrs.EOF Then
            SpdInv.Visible = True
            SetGridHead1
        Else
            SpdInv.Visible = False
        End If
        RW = 1
        Do While Not drnrs.EOF
            With SpdInv
                cnt = cnt + 1
                .MaxRows = .MaxRows + 1
                 SetTag iGrid, DbCnt, E_SpdFAApp.SprdCheck, RW
                .SetText E_SpdFAApp.Sprddivcode, RW, drnrs("Divcode")
                .SetText E_SpdFAApp.Sprdtc, RW, Format(drnrs("tc"), "#0")
                 SetTag iGrid, drnrs("tchead"), E_SpdFAApp.sprdTChead, RW
                .SetText E_SpdFAApp.Sprdvocno, RW, drnrs("vocno")
                .SetText E_SpdFAApp.Sprdvocdt, RW, drnrs("vocdt")
                .SetText E_SpdFAApp.Sprdamt, RW, drnrs("Amount")
                .SetText E_SpdFAApp.SprdCheqno, RW, IIf(IsNull(drnrs("Chqno")), 0, drnrs("Chqno"))
                .SetText E_SpdFAApp.SprdCheqdt, RW, drnrs("chqdt")
                .SetText E_SpdFAApp.SprdVocsno, RW, Format(drnrs("vocsno"), "#0")
                .SetText E_SpdFAApp.SprdAccode, RW, IIf(IsNull(drnrs("accode")), "", drnrs("accode"))
                .SetText E_SpdFAApp.Sprdname, RW, IIf(IsNull(drnrs("head")), "", drnrs("head"))
                .SetText E_SpdFAApp.SprdNarr1, RW, IIf(IsNull(drnrs("narration1")), "", drnrs("narration1"))
                .SetText E_SpdFAApp.SprdNarr2, RW, IIf(IsNull(drnrs("narration2")), "", drnrs("narration2"))
                .SetText E_SpdFAApp.SprdDebit, RW, drnrs("debit")
                .SetText E_SpdFAApp.SprdCredit, RW, drnrs("credit")
                .SetText E_SpdFAApp.Sprdsptype, RW, " "
                .SetText E_SpdFAApp.SprdInvtype, RW, " "
                .SetText E_SpdFAApp.sprdOldglcode, RW, IIf(IsNull(drnrs("accode")), "", drnrs("accode"))
                .Row = RW
                .Col = -1
                TDEBIT = TDEBIT + drnrs("debit")
                TCREDIT = TCREDIT + drnrs("Credit")
                vocno = drnrs("vocno")
                VOCDT = drnrs("vocdt")
                TC = drnrs("Tc")
                drnrs.MoveNext
                If RW > 1 Then
                    If Not drnrs.EOF Then
                        If GetText(SpdInv, Sprdtc, RW) <> drnrs("TC") Or GetText(SpdInv, Sprdvocno, RW) <> drnrs("VOCNO") Or GetText(SpdInv, Sprdvocdt, RW) <> drnrs("VOCDT") Then
                            If (TCREDIT > 0 Or TDEBIT > 0) And cnt > 1 Then
                                .MaxRows = .MaxRows + 1
                                .RowHeight(.MaxRows) = 13
                                 RW = RW + 1
                                .Row = RW
                                .Row2 = RW
                                .Col = E_SpdFAApp.SprdNarr1
                                .Col2 = E_SpdFAApp.SprdCredit
                                .BlockMode = True
                                .BackColor = RGB(221, 221, 221)
                                .BlockMode = False
                                .Row = RW
                                .Col = -1
                                .SetCellBorder E_SpdFAApp.SprdDebit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                                .SetCellBorder E_SpdFAApp.SprdCredit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                                .SetCellBorder E_SpdFAApp.SprdNarr1, .MaxRows, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                                .FontBold = True
                                .ForeColor = RGB(63, 23, 255)
                                .SetText E_SpdFAApp.SprdNarr1, RW, "T O T A L "
                                .SetText E_SpdFAApp.SprdDebit, RW, TDEBIT
                                .SetText E_SpdFAApp.SprdCredit, RW, TCREDIT
                                .SetText E_SpdFAApp.Sprdtrntype, RW, trntype
                                .FontBold = True
                                If TDEBIT <> TCREDIT Then
                                    .Col = Sprdname
                                    .ForeColor = RGB(228, 70, 31)
                                    .FontBold = True
                                    .SetText E_SpdFAApp.Sprdname, RW, "Not Tallied"
                                End If
                                TDEBIT = 0: TCREDIT = 0
                            End If
                        End If
                    Else
                        .MaxRows = .MaxRows + 1
                        .RowHeight(.MaxRows) = 13
                         RW = RW + 1
                        .Row = RW
                        .Row2 = RW
                        .Col = E_SpdFAApp.SprdNarr1
                        .Col2 = E_SpdFAApp.SprdCredit
                        .BlockMode = True
                        .BackColor = RGB(221, 221, 221)
                        .BlockMode = False
                        .Row = RW
                        .Col = -1
                        .SetCellBorder E_SpdFAApp.SprdDebit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                        .SetCellBorder E_SpdFAApp.SprdCredit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                        .SetCellBorder E_SpdFAApp.SprdNarr1, .MaxRows, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                        .FontBold = True
                        .ForeColor = RGB(63, 23, 255)
                        .SetText E_SpdFAApp.SprdNarr1, RW, "T O T A L "
                        .SetText E_SpdFAApp.SprdDebit, RW, TDEBIT
                        .SetText E_SpdFAApp.SprdCredit, RW, TCREDIT
                        .SetText E_SpdFAApp.Sprdtrntype, RW, trntype
                        .FontBold = True
                        If TDEBIT <> TCREDIT Then
                            .Col = Sprdname
                            .ForeColor = RGB(228, 70, 31)
                            .FontBold = True
                            .SetText E_SpdFAApp.Sprdname, RW, "Not Tallied"
                        End If
                        TDEBIT = 0: TCREDIT = 0
                    End If
                End If
                RW = RW + 1
            End With
        Loop
    End If
End If
    
Exit Sub
IGrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IGrid_Click of Form FrmReceiptAppr"
End Sub

Private Sub loadInvoice(vocno, VOCDT, TC, slcode)
Dim IRw As Long
    Set TmpRs = New Recordset
    
    If vocno <> "" And VOCDT <> "" And TC <> "" And slcode <> "" And IsNumeric(vocno) = True Then
        TmpRs.Open " select * from FA_ARCRDL where vocno=" & vocno & " and vocdt='" & Format(VOCDT, "yyyy-mm-dd") & "' and divcode ='" & Divcode & "' and Slcode ='" & slcode & "'", cn, adOpenStatic, adLockBatchOptimistic
        IRw = 1
        With SpdInv
        .Refresh
        If TmpRs.EOF Then
            .Reset
            .Visible = False
        Else
            .Visible = True
            Call Invoicehead
        End If
        While Not TmpRs.EOF
            .MaxRows = .MaxRows + 1
            IRw = IRw + 1
            .Col = 0
            .FontItalic = True
            .SetText 1, IRw, TmpRs("Divcode")
            .SetText 2, IRw, TmpRs("VocNo")
            .SetText 3, IRw, TmpRs("VocDt")
            .SetText 4, IRw, TmpRs("Reftrntype")
            .SetText 5, IRw, TmpRs("Reftc")
            .SetText 6, IRw, TmpRs("RefVocno")
            .SetText 7, IRw, TmpRs("RefVocDt")
            .SetText 8, IRw, TmpRs("Amount")
            TmpRs.MoveNext
        Wend
        .SetText 0, IRw, " "
        .Row = IRw
        .Col = 8
        .MaxRows = .MaxRows + 1
        .Formula = "SUM(H1:H" & IRw - 1 & ")"
        .SetCellBorder 8, IRw, 8, IRw, CellBorderIndexTop, vbRed, CellBorderStyleSolid
        .MaxRows = IRw
        .MaxCols = 8
        .ReDraw = True
        End With
    End If
End Sub
Private Sub iGrid_DblClick(ByVal Col As Long, ByVal Row As Long)
QryStat = False
With iGrid
    .Row = Row
    .Col = E_SpdFAApp.SprdCheck
    If .value <> "" Then
        If iGrid.Row > 0 Then
            QSLCode = GetText(iGrid, E_SpdFAApp.Sprdtc, Row)
            QSLCode2 = GetText(iGrid, E_SpdFAApp.Sprdvocno, Row)
            QSLCode3 = GetText(iGrid, E_SpdFAApp.Sprdvocdt, Row)
            Set Rs = New Recordset
            QryStat = "True"
            If Repindex = 2 Then
                PAYMENTS.Show
            ElseIf Repindex = 1 Then
                RECEIPTS.Show
            ElseIf Repindex = 3 Then
                JURNL.Show
            End If
        End If
    End If
End With
End Sub
Private Sub IGrid_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
     IGrid_Click NewCol, NEWROW
End Sub

Private Sub IGrid_LeaveRow(ByVal Row As Long, ByVal RowWasLast As Boolean, ByVal RowChanged As Boolean, ByVal AllCellsHaveData As Boolean, ByVal NEWROW As Long, ByVal NewRowIsLast As Long, Cancel As Boolean)
IGrid_Click E_SpdFAApp.Sprdvocno, NEWROW
End Sub

Private Sub Invoicehead()
With SpdInv
    .MaxRows = 0
    .MaxCols = 8
    .Row = 1
    SpdInv.FontBold = True
    .ColHeadersAutoText = DispBlank
    SetSpreadCol1 SpdInv, E_SpdInv.Spddivcode, "Divcode", CellTypeStaticText, 2, , True, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdVocno, "Voucher No.", CellTypeStaticText, 10, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdVocdt, "Date", CellTypeDate, 12, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdInvtype, "TrnStype", CellTypeStaticText, 10, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdInvTC, "Tc", CellTypeStaticText, 8, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdInvNo, "Invoice No.", CellTypeStaticText, 12, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdInvDt, "Inv. Date", CellTypeDate, 12, , False, True
    SetSpreadCol1 SpdInv, E_SpdInv.SpdAmt, "Amount", CellTypeNumber, 15, 2, False, True
    .RowHeadersShow = False
End With
End Sub

Private Sub SetGridHead()
On Error GoTo SetGridHead_Error

With iGrid
    .MaxRows = 0
    .MaxCols = 21
    .Row = 1
    .FontBold = True
    .ColHeadersAutoText = DispBlank
    .CellNoteIndicator = CellNoteIndicatorShowAndFireEvent
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdCheck, "", CellTypeCheckBox, 2, , False, False
    SetSpreadCol1 iGrid, E_SpdFAApp.Sprddivcode, "Divcode", CellTypeStaticText, 3, , True, False
    
    
    
    .Col = E_SpdFAApp.Sprdtc
    .Row = 0
    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 iGrid, E_SpdFAApp.Sprdtc, "TC", CellTypeStaticText, 3, 0 ' , True
    .TypeHAlign = TypeHAlignRight
    
    
    SetSpreadCol1 iGrid, E_SpdFAApp.sprdTChead, "Transaction Head", CellTypeStaticText, , , True
    .Col = Sprdvocno
    .ForeColor = RGB(133, 133, 133)
    
    .Col = E_SpdFAApp.Sprdvocno
    .Row = 0
    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 iGrid, E_SpdFAApp.Sprdvocno, "Voc. No.", CellTypeStaticText, 6, 0 '5
    .TypeHAlign = TypeHAlignRight
    
    
    .Col = Sprdvocdt
    .ForeColor = RGB(133, 133, 133)
    SetSpreadCol1 iGrid, E_SpdFAApp.Sprdvocdt, "Voc. Dt.", CellTypeStaticText, 8
    SetSpreadCol1 iGrid, E_SpdFAApp.Sprdamt, "Amount", CellTypeNumber, 15, 2, True
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdCheqno, "Chq. No.", CellTypeStaticText, 6, , True
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdCheqdt, "Chq. Dt.", CellTypeStaticText, 8, , True
    
   If MFLG = 1 Then
    
      If Len(CmbDiv) > 0 Then
            If val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) >= fbank And val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) <= tbank Then
                .Col = E_SpdFAApp.SprdCheqno
                .Row = 0
                .TypeHAlign = TypeHAlignRight
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdCheqno, "Chq. No.", CellTypeStaticText, 6
                .TypeHAlign = TypeHAlignRight
                
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdCheqdt, "Chq. Dt.", CellTypeStaticText, 8
                SetSpreadCol1 iGrid, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 18
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 14, , , False
            
            Else
                SetSpreadCol1 iGrid, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 23
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 23, , , False
            End If
        
        Else
            '02/198 Nithya require
                SetSpreadCol1 iGrid, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 23
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
                SetSpreadCol1 iGrid, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 23, , , False
      End If
    
     
     Else
     '02/198 Nithya require
            SetSpreadCol1 iGrid, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 23
            SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
            SetSpreadCol1 iGrid, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 23, , , False
    End If
    
    
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdVocsno, "Sl. No.", CellTypeStaticText, 6, , True
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdAccode, "A/C Code", CellTypeStaticText, 7, , False, True
    
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdNarr2, "Narration2", CellTypeEdit, , , True, False
    
    
    .Col = SprdDebit
    .ForeColor = RGB(128, 128, 128)
    .Row = 0
    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdDebit, "Debit", CellTypeNumber, 15, 2, False, True
    .TypeHAlign = TypeHAlignRight
    
    
    .Col = SprdCredit
    .ForeColor = RGB(128, 128, 128)
    .Row = 0
    .TypeHAlign = TypeHAlignRight
    SetSpreadCol1 iGrid, E_SpdFAApp.SprdCredit, "Credit", CellTypeNumber, 15, 2, False, True
    .TypeHAlign = TypeHAlignRight
    
    
    If Repindex = 4 Then
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdtrntype, "TrnType", CellTypeStaticText, 15, False, True
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdsptype, "Sales Type", CellTypeStaticText, 15, False, True
        SetSpreadCol1 iGrid, E_SpdFAApp.SprdInvtype, "Inv. Type", CellTypeStaticText, 15, False, True
    ElseIf Repindex = 5 Then
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdtrntype, "TrnType", CellTypeStaticText, 15, False, True
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdsptype, "Pur.Type", CellTypeStaticText, 15, False, True
        SetSpreadCol1 iGrid, E_SpdFAApp.SprdInvtype, "Inv. Type", CellTypeStaticText, 15, True, True
    Else
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdtrntype, "TrnType", CellTypeStaticText, 15, True, True
        SetSpreadCol1 iGrid, E_SpdFAApp.Sprdsptype, "Pur.Type", CellTypeStaticText, 15, True, True
        SetSpreadCol1 iGrid, E_SpdFAApp.SprdInvtype, "Inv.Type", CellTypeStaticText, 15, True, True
    End If
    
    SetSpreadCol1 iGrid, E_SpdFAApp.sprdOldglcode, "Old Gl", CellTypeStaticText, 15, 0, True, True
    
    .SelBackColor = RGB(255, 255, 164)
    .SelForeColor = RGB(128, 64, 0)
    .OperationMode = OperationModeRow
    .BackColorStyle = BackColorStyleUnderGrid
    .RowHeadersShow = False
    .VScrollSpecial = True
End With

With iGrdDRN
    .MaxRows = 0
    .MaxCols = 20
    .Row = 1
    .FontBold = True
    .ColHeadersAutoText = DispBlank
    .CellNoteIndicator = CellNoteIndicatorShowAndFireEvent
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCheck, "", CellTypeCheckBox, 2, , False, False
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprddivcode, "Divcode", CellTypeStaticText, 3, , True, False
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdtc, "TC", CellTypeStaticText, 3, , True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.sprdTChead, "Transaction Head", CellTypeStaticText, , , True
    .Col = Sprdvocno
    .ForeColor = RGB(133, 133, 133)
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdvocno, "Voc. No.", CellTypeStaticText, 5, 0
    .Col = Sprdvocdt
    .ForeColor = RGB(133, 133, 133)
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdvocdt, "Voc. Dt.", CellTypeStaticText, 8
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdamt, "Amount", CellTypeNumber, 15, 2, True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCheqno, "Chq. No.", CellTypeStaticText, 6, , True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCheqdt, "Chq. Dt.", CellTypeStaticText, 8, , True
    If MFLG = 1 Then
    If Len(CmbDiv) > 0 Then
        If val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) >= fbank And val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) <= tbank Then
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCheqno, "Chq. No.", CellTypeStaticText, 6
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCheqdt, "Chq. Dt.", CellTypeStaticText, 8
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 18
            SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
            'SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeStaticText, 14, , , False
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 14, , , False
        Else
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 23
            SetSpreadCol1 iGrid, E_SpdFAApp.SprdTin, "TIN No.", CellTypeStaticText, 10
            SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeEdit, 23, , , False
        End If
     End If
    End If
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdVocsno, "Sl. No.", CellTypeStaticText, 6, , True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdAccode, "A/C Code", CellTypeStaticText, 7, , False, True
    
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdNarr2, "Narration2", CellTypeEdit, , , True
    
    
    
    
    .Col = SprdDebit
    .ForeColor = RGB(128, 128, 128)

    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdDebit, "Debit", CellTypeNumber, 15, 2, False, True
    .Col = SprdCredit
    .ForeColor = RGB(128, 128, 128)
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdCredit, "Credit", CellTypeNumber, 15, 2, False, True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdtrntype, "TrnType", CellTypeStaticText, 15, True, True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.Sprdsptype, "Pur.Type", CellTypeStaticText, 15, True, True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.SprdInvtype, "Inv. Type", CellTypeStaticText, 15, True, True
    SetSpreadCol1 iGrdDRN, E_SpdFAApp.sprdOldglcode, "Old Gl", CellTypeStaticText, 15, , True, True
    .SelBackColor = RGB(255, 255, 164)
    .SelForeColor = RGB(128, 64, 0)
    .OperationMode = OperationModeRow
    .BackColorStyle = BackColorStyleUnderGrid
    .RowHeadersShow = False
    .VScrollSpecial = True
End With
Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmReceiptAppr"
End Sub
Private Sub gridload()
Dim TDEBIT As Double, TCREDIT As Double
Dim cnt As Integer
Dim TC As Integer
Dim vocno As String
TDEBIT = 0: TCREDIT = 0
cnt = 0

With iGrid
    While Not RstApp.EOF
        cnt = cnt + 1
        .MaxRows = .MaxRows + 1
         SetTag iGrid, DbCnt, E_SpdFAApp.SprdCheck, RW
        .SetText E_SpdFAApp.Sprddivcode, RW, RstApp("Divcode")
        .SetText E_SpdFAApp.Sprdtc, RW, Format(RstApp("tc"), "#0")
         SetTag iGrid, RstApp("tchead"), E_SpdFAApp.sprdTChead, RW
        .SetText E_SpdFAApp.Sprdvocno, RW, RstApp("vocno")
        .SetText E_SpdFAApp.Sprdvocdt, RW, RstApp("vocdt")
        .SetText E_SpdFAApp.Sprdamt, RW, RstApp("Amount")
        .SetText E_SpdFAApp.SprdCheqno, RW, IIf(IsNull(RstApp("Chqno")), 0, RstApp("Chqno"))
        .SetText E_SpdFAApp.SprdCheqdt, RW, RstApp("chqdt")
        .SetText E_SpdFAApp.SprdVocsno, RW, Format(RstApp("vocsno"), "#0")
        .SetText E_SpdFAApp.SprdAccode, RW, IIf(IsNull(RstApp("accode")), "", RstApp("accode"))
        .SetText E_SpdFAApp.Sprdname, RW, IIf(IsNull(RstApp("head")), "", RstApp("head"))
        .SetText E_SpdFAApp.SprdTin, RW, IIf(IsNull(RstApp("TinNo")), "", RstApp("TinNo"))
        .SetText E_SpdFAApp.SprdNarr1, RW, IIf(IsNull(RstApp("narration1")), "", RstApp("narration1"))
        .SetText E_SpdFAApp.SprdNarr2, RW, IIf(IsNull(RstApp("narration2")), "", RstApp("narration2"))
        .SetText E_SpdFAApp.SprdDebit, RW, RstApp("debit")
        .SetText E_SpdFAApp.SprdCredit, RW, RstApp("credit")
        If Repindex = 4 Or Repindex = 5 Then
            .SetText E_SpdFAApp.Sprdtrntype, RW, RstApp("Trntype")
        Else
            .SetText E_SpdFAApp.Sprdtrntype, RW, " "
        End If
        .SetText E_SpdFAApp.Sprdsptype, RW, " "
        .SetText E_SpdFAApp.SprdInvtype, RW, " "
        .SetText E_SpdFAApp.sprdOldglcode, RW, IIf(IsNull(RstApp("accode")), "", RstApp("accode"))
        .Row = RW
        .Col = -1
        Text1 = Format(val(Text1) + IIf(IsNull(RstApp("debit")), 0, RstApp("debit")), "#0.00")
        Text2 = Format(val(Text2) + IIf(IsNull(RstApp("credit")), 0, RstApp("credit")), "#0.00")
        TDEBIT = TDEBIT + RstApp("debit")
        TCREDIT = TCREDIT + RstApp("Credit")
        vocno = RstApp("vocno")
        VOCDT = RstApp("vocdt")
        TC = RstApp("Tc")
        If Repindex = 4 Or Repindex = 5 Then
            trntype = RstApp("Trntype")
        End If
        RstApp.MoveNext
        RW = RW + 1
    Wend
        RstApp.Close
        
            'If (TCREDIT > 0 Or TDEBIT > 0) And cnt > 1 Then 'cr 08/128 p.no.28 sul
                
                .MaxRows = .MaxRows + 1
                .RowHeight(.MaxRows) = 13
                 RW = RW + 1
                .Row = RW
                .Row2 = RW
                .Col = E_SpdFAApp.SprdNarr1
                .Col2 = E_SpdFAApp.SprdCredit
                .BlockMode = True
                .BackColor = RGB(221, 221, 221)
                .BlockMode = False
                .Row = RW
                .Col = -1
                .SetCellBorder E_SpdFAApp.SprdDebit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                .SetCellBorder E_SpdFAApp.SprdCredit, RW, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                .SetCellBorder E_SpdFAApp.SprdNarr1, .MaxRows, .MaxCols, .MaxRows, CellBorderIndexOutline, RGB(0, 0, 183), CellBorderStyleSolid
                .FontBold = True
                .ForeColor = RGB(63, 23, 255)
                .SetText E_SpdFAApp.SprdNarr1, RW, "T O T A L "
                .SetText E_SpdFAApp.SprdDebit, RW, TDEBIT
                .SetText E_SpdFAApp.SprdCredit, RW, TCREDIT
                .SetText E_SpdFAApp.Sprdtrntype, RW, trntype
                .FontBold = True
                If TDEBIT <> TCREDIT Then
                    .Col = Sprdname
                    .ForeColor = RGB(228, 70, 31)
                    .FontBold = True
                    .SetText E_SpdFAApp.Sprdname, RW, "Not Tallied"
                End If
                .Col = 1
                .CellType = CellTypeStaticText
                
            'End If
            
            
            
End With
End Sub
Private Sub SetGridHead1()
On Error GoTo SetGridHead_Error

With SpdInv
    .MaxRows = 0
    .MaxCols = 20
    .Row = 1
    .FontBold = True
    .ColHeadersAutoText = DispBlank
    .CellNoteIndicator = CellNoteIndicatorShowAndFireEvent
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCheck, "", CellTypeCheckBox, 2, , False, False
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprddivcode, "Divcode", CellTypeStaticText, 3, , True, False
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdtc, "TC", CellTypeStaticText, 3, , True
    SetSpreadCol1 SpdInv, E_SpdFAApp.sprdTChead, "Transaction Head", CellTypeStaticText, , , True
    .Col = Sprdvocno
    .ForeColor = RGB(133, 133, 133)
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdvocno, "Voc.No ", CellTypeStaticText, 5, 0
    .Col = Sprdvocdt
    .ForeColor = RGB(133, 133, 133)
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdvocdt, "Voc.Dt", CellTypeStaticText, 8
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdamt, "Amount", CellTypeNumber, 15, 2, True
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCheqno, "Chq. No", CellTypeStaticText, 6, , True
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCheqdt, "Chq Dt", CellTypeStaticText, 8, , True
    
    If MFLG = 1 Then
    
    If Len(CmbDiv) > 0 Then
        If val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) >= fbank And val(Mid(CmbDiv, 1, InStr(1, CmbDiv, "---") - 1)) <= tbank Then
            SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCheqno, "Chq. No", CellTypeStaticText, 6
            SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCheqdt, "Chq Dt", CellTypeStaticText, 8
            SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 18
            SetSpreadCol1 SpdInv, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeStaticText, 14, , , False
            
        Else
            SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdname, "A/C Name", CellTypeStaticText, 23
            SetSpreadCol1 SpdInv, E_SpdFAApp.SprdNarr1, "Narration1", CellTypeStaticText, 23, , , False
            
        End If
     End If
    
    End If
    
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdVocsno, "Sl No", CellTypeStaticText, 6, , True
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdAccode, "A/C Code", CellTypeStaticText, 7, , False, True
    
'    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdNarr2, "Narration2", CellTypeStaticText, , , True
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdNarr2, "Narration2", CellTypeEdit, , , True
    
    
    
    
    .Col = SprdDebit
    .ForeColor = RGB(128, 128, 128)

    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdDebit, "Debit", CellTypeNumber, 15, 2, False, True
    .Col = SprdCredit
    .ForeColor = RGB(128, 128, 128)
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdCredit, "Credit", CellTypeNumber, 15, 2, False, True
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdtrntype, "TrnType", CellTypeStaticText, 15, True, True
    SetSpreadCol1 SpdInv, E_SpdFAApp.Sprdsptype, "Pur.Type", CellTypeStaticText, 15, True, True
    SetSpreadCol1 SpdInv, E_SpdFAApp.SprdInvtype, "Inv. Type", CellTypeStaticText, 15, True, True
    SetSpreadCol1 SpdInv, E_SpdFAApp.sprdOldglcode, "Old Gl", CellTypeStaticText, 15, , True, True
    .SelBackColor = RGB(255, 255, 164)
    .SelForeColor = RGB(128, 64, 0)
    .OperationMode = OperationModeRow
    .BackColorStyle = BackColorStyleUnderGrid
    .RowHeadersShow = False
    .VScrollSpecial = True
End With
Exit Sub
SetGridHead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetGridHead of Form FrmReceiptAppr"
End Sub
Private Sub iGrid_RightClick(ByVal ClickType As Integer, ByVal Col As Long, ByVal Row As Long, ByVal MouseX As Long, ByVal MouseY As Long)
Dim Glcode, glhead As String
If Repindex = 4 Or Repindex = 5 Or Repindex = 6 Then
    If (Opt = "add" Or Opt = "mod") And Col = E_SpdFAApp.SprdAccode Then
        With iGrid
            Glcode = ""
            glhead = ""
            Glcode = GetText(iGrid, SprdAccode, Row)
            glhead = GetText(iGrid, Sprdname, Row)
            If Col = SprdAccode Then
                LookUp.clear = True
                LookUp.Caption = "Ledger Listing"
                If IsNumeric(Left(GetText(iGrid, SprdAccode, Row), 1)) Then
                    ch = 1
                    LookUp.query = "Select Glcode 'Code',Glhead 'Ledger Head' from Fa_Glmas"
                Else
                    ch = 2
                    LookUp.query = "Select slcode 'Code',slname 'Name' from Fa_Slmas"
                End If
                If ch = 1 Then
                    LookUp.DefCol = "Ledger Head"
                ElseIf ch = 2 Then
                    LookUp.DefCol = "Name"
                End If
                LookUp.ALIGN = "1500,7200"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    .SetText E_SpdFAApp.SprdAccode, Row, LookUp.Fields(0)
                    .SetText E_SpdFAApp.Sprdname, Row, CStr(LookUp.Fields(1))
                Else
                   LookUp.clear = True
                    .SetText SprdAccode, Row, Glcode
                    .SetText Sprdname, Row, glhead
                End If
            End If
        End With
    End If
End If
End Sub

Private Sub SpdInv_RightClick(ByVal ClickType As Integer, ByVal Col As Long, ByVal Row As Long, ByVal MouseX As Long, ByVal MouseY As Long)
Dim Glcode, glhead As String
If Repindex = 4 Or Repindex = 5 Then
    If (Opt = "add" Or Opt = "mod") And Col = E_SpdFAApp.SprdAccode Then
        With SpdInv
            Glcode = ""
            glhead = ""
            Glcode = GetText(SpdInv, SprdAccode, Row)
            glhead = GetText(SpdInv, Sprdname, Row)
            If Col = SprdAccode Then
                LookUp.clear = True
                LookUp.Caption = "Ledger Listing"
                If IsNumeric(Left(GetText(SpdInv, SprdAccode, Row), 1)) Then
                    ch = 1
                    LookUp.query = "Select Glcode 'Code',Glhead 'Ledger Head' from Fa_Glmas"
                    
                Else
                    Exit Sub
                    ch = 2
                    LookUp.query = "Select slcode 'Code',slname 'Name' from Fa_Slmas"
                End If
                If ch = 1 Then
                    LookUp.DefCol = "Ledger Head"
                ElseIf ch = 2 Then
                    LookUp.DefCol = "Name"
                End If
                LookUp.ALIGN = "1500,7200"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    .SetText E_SpdFAApp.SprdAccode, Row, LookUp.Fields(0)
                    .SetText E_SpdFAApp.Sprdname, Row, CStr(LookUp.Fields(1))
                Else
                   LookUp.clear = True
                    .SetText SprdAccode, Row, Glcode
                    .SetText Sprdname, Row, glhead
                End If
            End If
        End With
    End If
End If
End Sub

Private Sub txtSearch_Change()
    If Trim(txtSearch) = "" Then Exit Sub
    
    Dim i As Long, J As Long
    
    J = IIf(GetText(iGrid, Sprdvocno, iGrid.Row) = Trim(txtSearch), iGrid.Row + 1, 1)
    For i = J To iGrid.MaxRows
        If GetText(iGrid, Sprdvocno, i) = Trim(txtSearch) Then
            iGrid.Row = i
            iGrid.SetSelection 1, iGrid.Row, iGrid.MaxCols, iGrid.Row
            IGrid_Click iGrid.Col, iGrid.Row
            iGrid.SetFocus
            Exit For
        End If
    Next i
End Sub

Private Sub txtSearch_KeyPress(KeyAscii As Integer)
'10/09/11
tonumaryminus1 txtSearch, 7, KeyAscii
End Sub

Public Sub tonumaryminus1(obj As Object, maxlen As Integer, KeyAscii As Integer)
    If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then  'KeyAscii = 45 Or
        'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
        Beep
    End If
End Sub

