VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form FrmChangePassword 
   Caption         =   "Change Password"
   ClientHeight    =   7815
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11880
   LinkTopic       =   "Form5"
   MDIChild        =   -1  'True
   ScaleHeight     =   7815
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   12
      Top             =   -90
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmChangePassword.frx":0000
         Height          =   600
         Index           =   10
         Left            =   1080
         Picture         =   "FrmChangePassword.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Cancel "
         Top             =   90
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmChangePassword.frx":0686
         Height          =   600
         Index           =   1
         Left            =   0
         Picture         =   "FrmChangePassword.frx":0990
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Modify"
         Top             =   90
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmChangePassword.frx":0D0A
         Height          =   585
         Index           =   9
         Left            =   540
         Picture         =   "FrmChangePassword.frx":1014
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   90
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmChangePassword.frx":13B6
         Height          =   585
         Index           =   11
         Left            =   1620
         Picture         =   "FrmChangePassword.frx":1800
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   90
         Width           =   525
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Modification"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   6390
         TabIndex        =   14
         Top             =   270
         Width           =   1230
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8685
         TabIndex        =   13
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2445
      Left            =   900
      TabIndex        =   4
      Top             =   1300
      Width           =   5310
      _ExtentX        =   9366
      _ExtentY        =   4313
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "FrmChangePassword.frx":1B95
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FramePassword"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame FramePassword 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2235
         Left            =   120
         TabIndex        =   8
         Top             =   30
         Width           =   5055
         Begin VB.TextBox UText 
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
            Height          =   330
            IMEMode         =   3  'DISABLE
            Index           =   0
            Left            =   2550
            MaxLength       =   10
            PasswordChar    =   "*"
            TabIndex        =   0
            Top             =   420
            Width           =   2250
         End
         Begin VB.TextBox UText 
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
            Height          =   330
            IMEMode         =   3  'DISABLE
            Index           =   1
            Left            =   2565
            MaxLength       =   10
            PasswordChar    =   "*"
            TabIndex        =   1
            Top             =   1020
            Width           =   2250
         End
         Begin VB.TextBox UText 
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
            Height          =   330
            IMEMode         =   3  'DISABLE
            Index           =   2
            Left            =   2580
            MaxLength       =   10
            PasswordChar    =   "*"
            TabIndex        =   2
            Top             =   1635
            Width           =   2250
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Old Password"
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
            Left            =   240
            TabIndex        =   11
            Top             =   420
            Width           =   1950
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "New Password"
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
            Left            =   210
            TabIndex        =   10
            Top             =   1050
            Width           =   2040
         End
         Begin VB.Label Label7 
            Caption         =   "Retype New Password"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   450
            Left            =   210
            TabIndex        =   9
            Top             =   1650
            Width           =   2115
         End
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   7
      Top             =   7515
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "27/04/2021"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:09:AM"
         EndProperty
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
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Change Password"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   345
      Left            =   900
      TabIndex        =   6
      Top             =   930
      Width           =   2340
   End
End
Attribute VB_Name = "FrmChangePassword"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As Connection

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Dim RstChek As Recordset
Dim rs1 As Recordset
Dim OldPass As String
Dim s As String
Dim l As Integer
Dim I As Integer
Dim c As Integer
Case 1
     desc.Caption = "Modification"
     BUTTON(9).Enabled = True
     BUTTON(1).Enabled = False
     BUTTON(10).Enabled = True
     TxtLock (True)
     UText(0).SetFocus
Case 9
     If UText(1).Text <> UText(2).Text Or Trim(UText(2).Text) = "" Then
        MsgBox "Retyped password is not correct, Try Again", vbInformation, head
        UText(2).SetFocus
        SendKeys ("{home}+{end}")
        Exit Sub
     End If

        OldPass = ""
        UText(0).Text = UCase(UText(0).Text)
        l = Len(UText(0).Text)
        For I = 1 To l
            Set rs1 = New Recordset
            c = (Asc(Mid$(UText(0).Text, I, 1)) + 30) * 2
            Set rs1 = New Recordset
            rs1.Open "select char(" & c & ") ", DB
            OldPass = OldPass + rs1(0)
        Next


Set RstChek = New Recordset
RstChek.Open "Select * from pp_passwd where module= " & ModuleNo & " and divcode = '" & Divcode & "' and alevel = " & ulevel & " and user_id = '" & usrid & "' and password='" & OldPass & "'", DB
If RstChek.EOF Then
  MsgBox "Invalid Password", vbInformation, head
  UText(0).SetFocus
  Exit Sub
End If
        s = ""
        UText(2).Text = UCase(UText(2).Text)
        l = Len(UText(2).Text)
        For I = 1 To l
            Set rs1 = New Recordset
            c = (Asc(Mid$(UText(2).Text, I, 1)) + 30) * 2
            Set rs1 = New Recordset
            rs1.Open "select char(" & c & ") ", DB
            s = s + rs1(0)
        Next
        DB.Execute ("Update pp_passwd set password='" & s & "' where module= " & ModuleNo & " and divcode = '" & Divcode & "' and alevel = " & ulevel & " and user_id = '" & usrid & "' and password='" & OldPass & "'")
        UText(0).Text = ""
        UText(1).Text = ""
        UText(2).Text = ""
 
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            'TrnLog("TC") = val(txtfields(2).Text)
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Change Password"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                  
                        '    TrnLog("PurType") = Trim(txtfields(0).Text)
'                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                          
'                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
'                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
'                            TrnLog("LotNo") = txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
        
        
        statusbar1.Panels(2).Text = "Password Changed"
        MsgBox "Password Changed", vbInformation, head
        BUTTON(1).Enabled = True
        BUTTON(9).Enabled = False
        TxtLock (False)
        Call NEWFORM1(BUTTON, GSNO)
        desc.Caption = "Query"
        BUTTON(11).SetFocus
Case 10
       If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
       BUTTON(1).Enabled = True
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = False
        TxtLock (False)
        desc.Caption = "Query"
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(1).SetFocus
        
Case 11
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Activate()
On Error GoTo Form_Activate_Error
    If BUTTON(1).Enabled = True Then
        BUTTON(1).SetFocus
    End If
Exit Sub
Form_Activate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.Open connectstring
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    TxtLock (False)
    desc.Caption = "Query"
    Call NEWFORM1(BUTTON, GSNO)
    statusbar1.Panels(2).Text = ""
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub UText_GotFocus(Index As Integer)
On Error GoTo UText_GotFocus_Error

Select Case Index
Case 0
    statusbar1.Panels(2).Text = "Enter Old Password"
Case 1
    statusbar1.Panels(2).Text = "Enter New Password, Maximum 10 Character"
Case 2
    statusbar1.Panels(2).Text = "Enter Retype New Password, Maximum 10 Character"
End Select

Exit Sub
UText_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure UText_GotFocus of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Function TxtLock(Flag As Boolean)
Dim I As Integer
On Error GoTo TxtLock_Error

If Flag = True Then
    For I = 0 To 2
        UText(I).Locked = False
        UText(I).Text = ""
    Next
Else
    For I = 0 To 2
        UText(I).Locked = True
        UText(I).Text = ""
    Next
End If

Exit Function
TxtLock_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TxtLock of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Function

Private Sub UText_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo UText_KeyPress_Error

    If KeyCode = 13 Then
        SendKeys ("{TAB}")
        SendKeys ("{enter}")
        Exit Sub
    End If

Exit Sub
UText_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure UText_KeyPress of Form FrmChangePassword", vbInformation, head
Screen.MousePointer = 0
End Sub
