VERSION 5.00
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form passthru 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Welcome to Raw Material Inventory Management System"
   ClientHeight    =   2625
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   8820
   ControlBox      =   0   'False
   FillColor       =   &H00404040&
   Icon            =   "passthru.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   NegotiateMenus  =   0   'False
   ScaleHeight     =   2625
   ScaleWidth      =   8820
   StartUpPosition =   2  'CenterScreen
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   225
      Top             =   1425
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.ComboBox cboCmpny 
      CausesValidation=   0   'False
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   2430
      Style           =   2  'Dropdown List
      TabIndex        =   13
      Top             =   330
      Width           =   6360
   End
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   330
      Left            =   2430
      TabIndex        =   3
      Top             =   1200
      Width           =   6330
   End
   Begin VB.TextBox Text4 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   330
      IMEMode         =   3  'DISABLE
      Left            =   2445
      PasswordChar    =   "*"
      TabIndex        =   5
      Top             =   1680
      Width           =   2610
   End
   Begin VB.ComboBox Combo1 
      CausesValidation=   0   'False
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   345
      Left            =   2445
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   765
      Width           =   6330
   End
   Begin VB.TextBox Text1 
      ForeColor       =   &H00000000&
      Height          =   330
      Left            =   135
      TabIndex        =   10
      Top             =   2205
      Visible         =   0   'False
      Width           =   780
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00C0C0C0&
      Cancel          =   -1  'True
      Caption         =   "&Cancel"
      CausesValidation=   0   'False
      Height          =   375
      Left            =   3960
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   9
      ToolTipText     =   "Exit"
      Top             =   2175
      Width           =   1050
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "&OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2460
      MaskColor       =   &H8000000F&
      Style           =   1  'Graphical
      TabIndex        =   8
      ToolTipText     =   "Launch the Application"
      Top             =   2160
      Width           =   1050
   End
   Begin MSMask.MaskEdBox MaskEdBox1 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "dd/MM/yyyy"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   1033
         SubFormatType   =   3
      EndProperty
      Height          =   330
      Left            =   7395
      TabIndex        =   7
      Top             =   1680
      Width           =   1125
      _ExtentX        =   1984
      _ExtentY        =   582
      _Version        =   393216
      ForeColor       =   -2147483635
      MaxLength       =   10
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Format          =   "dd/mm/yyyy"
      Mask            =   "##/##/####"
      PromptChar      =   "_"
   End
   Begin MSComCtl2.DTPicker DTPicker1 
      Height          =   330
      Left            =   7395
      TabIndex        =   11
      Top             =   1680
      Width           =   1380
      _ExtentX        =   2434
      _ExtentY        =   582
      _Version        =   393216
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Format          =   108199937
      CurrentDate     =   36193
   End
   Begin VB.Label lblCmpny 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Company:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   1440
      TabIndex        =   14
      Top             =   375
      Width           =   705
   End
   Begin VB.Label Label3 
      Caption         =   "Select a Division then Type a User Name and Password to Log on. "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   1425
      TabIndex        =   12
      Top             =   60
      Width           =   6015
   End
   Begin VB.Image Image1 
      Height          =   900
      Left            =   360
      Picture         =   "passthru.frx":030A
      Top             =   195
      Width           =   780
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Division:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   1455
      TabIndex        =   0
      Top             =   810
      Width           =   600
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&User Name:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   1455
      TabIndex        =   2
      Top             =   1245
      Width           =   840
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "&Password:"
      ForeColor       =   &H00000000&
      Height          =   195
      Left            =   1440
      TabIndex        =   4
      Top             =   1725
      Width           =   735
   End
   Begin VB.Label Label6 
      BackStyle       =   0  'Transparent
      Caption         =   "&Transaction Date:"
      ForeColor       =   &H00000000&
      Height          =   210
      Left            =   6030
      TabIndex        =   6
      Top             =   1725
      Width           =   1305
   End
End
Attribute VB_Name = "passthru"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim cnt As Integer
Dim TEMP As Integer
Dim rsSel As New ADODB.Recordset
Dim Rs As Recordset

Private Sub cboCmpny_Click()

    Set adoPrimaryRS = New Recordset
    
    gl_Database = Trim(cboCmpny.Text)
    If gl_Driver = "Sql Server" Then
        connectstring = "driver={" & gl_Driver & "};server=" & gl_Server & ";uid=" & gl_userId & ";pwd=" & gl_Passwd & "; database=" & gl_Database & ""
    ElseIf gl_Server = "Microsoft ODBC for Oracle" Then
        connectstring = "driver={" & gl_Driver & "};server=" & gl_Server & ";uid=" & gl_userId & ";pwd=" & gl_Passwd & ";BUFFERSIZE=2097152;"
    End If
    
    DB.Close
    DB.Open connectstring
    adoPrimaryRS.Open "select divcode,divname from pp_DIVMAS Order by divcode", DB, adLockReadOnly
    
    Combo1.Clear
    
    Do While Not adoPrimaryRS.EOF
        Combo1.AddItem adoPrimaryRS(0) + "  " + adoPrimaryRS(1)
        adoPrimaryRS.MoveNext
    Loop
    Combo1.ListIndex = gl_Divlst
End Sub


Private Sub Combo1_KeyPress(KeyAscii As Integer)
On Error GoTo Combo1_KeyPress_Error

 If KeyAscii = 13 Then Text2.SetFocus

Exit Sub
Combo1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_KeyPress of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_Validate(Cancel As Boolean)
On Error GoTo Combo1_Validate_Error

Text1.Text = ""
Text2.Text = ""
Text4.Text = ""

Exit Sub
Combo1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_Validate of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command1_Click()

On Error GoTo Command1_Click_Error

If IsDate(CDate(MaskEdBox1.Text)) Then

    ddate = Date
    DTPicker1.MinDate = fnyfdate(ddate)
    
    If CDate(MaskEdBox1.Text) > DTPicker1.maxdate Then
        MsgBox "A Future Date Is Not Allowed ", vbInformation, head
        MaskEdBox1.SetFocus
'    ElseIf CDate(MaskEdBox1.Text) < DTPicker1.MinDate Then
'        MsgBox "Processing date cannot be less than Year first date", vbInformation, head
    End If
Else
    MsgBox "Sorry, It is not a valid date", vbInformation, head
    MaskEdBox1.SetFocus
End If

Dim s, c As String
Dim rs1 As Recordset
Dim l As Integer

gl_Cmpnylst = cboCmpny.ListIndex
gl_Divlst = Combo1.ListIndex

If Combo1.Text = "" Then
    MsgBox "Division Code Cannot Be Empty", , head
    Exit Sub
End If

        Set Rs = New Recordset
        Rs.Open "select isnull(activeflg,'N')  activeflg from PP_PASSWD WHERE module =" & ModuleNo & " and divcode='" + Mid$(Combo1.Text, 1, 2) + "' AND User_Name='" + Text2.Text + "'", DB, adOpenStatic
        'isnull(lock_days,0) lock,isnull(PENTRY_LOCK,'N') PENTRY_LOCK,
        If Not Rs.EOF Then
'        Lockdays = Rs(0)
'        Pentrylock = Rs(1)
        If Rs(0) = "N" Then
            MsgBox "Not an Active User!!. Please Contact Administrator !", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        End If


''======================================================================================
'''==================== LICESED DIVCODE VALIDATION =====================================
Divcode = Mid$(Combo1.Text, 1, 2)
Dim rstcomp As New ADODB.Recordset
Set rstcomp = New ADODB.Recordset
rstcomp.Open "SELECT isnull(LIC_DIVNAME,''),isnull(cust_id,'') custid  FROM PP_DIVMAS WHERE isnull(LIC_DIVNAME,'')<>'' and DIVCODE='" & Mid$(Combo1.Text, 1, 2) & "'", DB, adOpenForwardOnly, adLockReadOnly
If Not rstcomp.EOF Then
    CustID = UCase(rstcomp("custid"))
    strcom = gEncriptCompanyname(Trim(Mid$(Combo1.Text, 3)))
    If strcom <> Trim(rstcomp(0)) Then
        MsgBox Trim(Mid$(Combo1.Text, 3)) & " Not Licensed Division Name." & vbCrLf & "Please Contact System Admin.", vbCritical, head
        Exit Sub
    End If
Else
    MsgBox Trim(Mid$(Combo1.Text, 3)) & " Not Licensed Division Name." & vbCrLf & "Please Contact System Admin.", vbCritical, head
    Exit Sub
End If
'''==================== LICESED DIVCODE VALIDATION =====================================
''======================================================================================



Text4.Text = UCase(Text4.Text)
cnt = cnt + 1



Set adoPrimaryRS = New Recordset
adoPrimaryRS.Open "exec ERP_CHECKPASSWORD '" & Trim(Text4.Text) & "','" & Mid$(Combo1.Text, 1, 2) & "','" & Trim(Text2.Text) & "'," & ModuleNo & "", DB, adOpenStatic
'adoPrimaryRS.Open "select isnull(password,'') from pp_passwd where divcode='" + Mid$(Combo1.Text, 1, 2) + "' and user_NAME='" + Text2.Text + "' and module = " & ModuleNo, DB
If adoPrimaryRS.Fields("Passwd") = "FALSE" Then
   MsgBox "Incorrect UserName/Password", vbInformation, head
   Exit Sub
End If


   
On Error GoTo go3021error

If cnt <= 3 And adoPrimaryRS.Fields("Passwd") <> "FALSE" Then
    cnt = 0
    pdate = MaskEdBox1.Text
    yopym = fnyopym(pdate)
    ylastym = fnylastym(pdate)
    yfdate = fnyfdate(pdate)
    yldate = fnyldate(pdate)
    mfdate = fnmfdate(pdate)
    mldate = fnmldate(pdate)
    yearmonth = Mid$(pdate, 7, 4) & Mid$(pdate, 4, 2)
    Divcode = Mid$(Combo1.Text, 1, 2)
    divname = Mid$(Combo1.Text, InStr(Combo1.Text, " "))
    UserName = Trim(Text2.Text)
    gUserID = adoPrimaryRS.Fields("user_ID")
    
    divabbr = adoPrimaryRS.Fields("ABBR")
    divtype = adoPrimaryRS.Fields("Divtype")
    CompCode = adoPrimaryRS.Fields("Compcode")
    CompName = adoPrimaryRS.Fields("Compname")
    
    Set Rs = New Recordset
    Rs.Open "Select Cust_Id,isnull(Div_PrintName,'')Div_PrintName,isnull(Div_UnitName,'')Div_UnitName,LIC_Version,SCRRES_CHANGE,ISNULL(CUST_ID1,'')CUST_ID1 From pp_divmas where Divcode ='" & Divcode & "'", DB, adOpenDynamic, adLockReadOnly
    If Not Rs.EOF Then
        CustID = UCase(Rs.Fields("Cust_Id"))
        CustID1 = UCase(Rs.Fields("CUST_ID1"))
        PrDivname = Rs.Fields("Div_PrintName")
        PrUnitName = Rs.Fields("Div_UnitName")
        StrLIC_Version = Rs.Fields("LIC_Version")
        SCREENRES_CHANGE = NULLCHECK(Rs.Fields("SCRRES_CHANGE"))
    End If
    
        ' added on 01-10-2018 by mariyaiya
    Set rsnew = New Recordset
    rsnew.Open "SELECT isnull(arrivalorder,'') arrivalorder,isnull(poimportdivision,'01') poimportdivision from rm_param ", DB, adLockReadOnly
    If rsnew.RecordCount > 0 Then
        globalarrivalorder = rsnew(0)
        globalimportpo = rsnew(1)
    End If
    
    Call AssignGlobalConnection
    
    Call LotNoGen
    
   Screen.MousePointer = 11
   ''''==========================User Restriction  Start===========================================
    LocalHost = Winsock1.LocalHostName
    LocalIP = Winsock1.LocalIP
    LocalIPAdd = Winsock1.LocalIP
   
     TLocalIPAdd = StrReverse(Mid(StrReverse(Winsock1.LocalIP), 1, InStr(1, StrReverse(Winsock1.LocalIP), ".") - 1))
'
'    testusers = gEncriptUsercountComp(5)  ' Company
'
Dim Chkrs1 As New Recordset, CheckRs2, CChkrs As New Recordset
    
    Set Chkrs2 = New Recordset
    Set CChkrs = New Recordset
    If UCase(CustID) = "SARANYA" Then
        ss = gEncriptUsercountComp(25)
    ElseIf UCase(CustID) = "SHRIGIRI" Then
        ss = gEncriptUsercountComp(20)
    Else
        ss = gEncriptUsercountComp(10)
    End If
    
    Set Rs = New Recordset
    Rs.Open " SELECT DB_NAME(DBID)DBNAME,HOSTNAME From master.dbo.sysprocesses Where spid >= 50 AND dbid = DB_ID('" & GSTRDBNAME & "') GROUP BY DB_NAME(DBID),HOSTNAME ", DB
    If Not Rs.EOF Then
        DB.Execute ("Delete from Systemuser where  Hostname ='" & LocalHost & "' and CmpCode ='" & CompCode & "' and Divcode ='" & Divcode & "' and Module = " & ModuleNo & " ")
        DB.Execute (" INSERT INTO Systemuser(CmpCode,DIVCODE,DBNAME,HOSTNAME,module) VALUES ('" & CompCode & "','" & Divcode & "','" & Rs!dbname & "','" & LocalHost & "'," & ModuleNo & " )")
    End If
    Set CCkrs = New Recordset
    CCkrs.Open "select  isnull(PDFExportFlag,0) PDFExportFlag from po_para where divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not CCkrs.EOF Then
        PDFExportFlag = CCkrs(0)
    End If
    
    
    Set Chkrs2 = New Recordset
    Set CChkrs = New Recordset

'    Chkrs2.Open "Select UserCount from pp_divmas where divcode ='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
'    If Not Chkrs2.EOF Then
'        If IsNull(Chkrs2(0)) = True Or Chkrs2(0) = "" Then
'            TotDivusers = 0
'        Else
'            TotDivusers = gDecriptUsercount(Chkrs2(0))
'        End If
'    End If

    CChkrs.Open "Select UserCount from CompMas ", DB, adOpenStatic, adLockBatchOptimistic
    If Not CChkrs.EOF Then
        If IsNull(CChkrs(0)) = True Or CChkrs(0) = "" Then
            TotCmpUsers = 0
        Else
            TotCmpUsers = gDecriptUsercountComp(CChkrs(0))
        End If
    End If

    If TotCmpUsers > 0 Then
        Set Chkrs1 = New Recordset
        Chkrs1.Open "Select Count(*) from Systemuser where CmpCode ='" & CompCode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Chkrs1.EOF Then
            CurrUsers = Chkrs1(0)
        End If
    End If

    If TotDivusers > 0 Then
        Set Chkrs1 = New Recordset
        Chkrs1.Open "Select Count(*) from Systemuser where divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not Chkrs1.EOF Then
            CurrUsers = Chkrs1(0)
        End If
    End If


    If TotDivusers = 0 And TotCmpUsers = 0 Then
        MsgBox "Access Denied !!! Please Contact System Administrator", vbInformation, head
        Call DelSysUser
        Call Command2_Click
    ElseIf TotDivusers > 0 And TotCmpUsers > 0 Then
        MsgBox "Access Denied !!! Please Contact System Administrator", vbInformation, head
        Call DelSysUser
        Call Command2_Click
    End If
    If TotDivusers > 0 Then
        If CurrUsers > TotDivusers Then
            MsgBox "Access Denied !!! Please Contact System Administrator", vbInformation, head
            Call DelSysUser
            Call Command2_Click
        End If
    ElseIf TotCmpUsers > 0 Then
        If CurrUsers > TotCmpUsers Then
            MsgBox "Access Denied !!! Please Contact System Administrator", vbInformation, head
            Call DelSysUser
            Call Command2_Click
        End If
    End If
    ''''======================================User Restriction   End====================================
    
    Set rsa = New Recordset
    rsa.Open "select * from MasterLen", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Suplen = rsa("Suplen")
        PartyType = IIf(IsNull(rsa("PTypeCotton")), "", rsa("ptypeCotton"))
        PartyBroker = IIf(IsNull(rsa("PtypeBroker")), "", rsa("PtypeBroker"))
    End If
    
    Set rsa = New Recordset
    rsa.Open "SELECT isnull(OpenKeyflg,'N') as Openflg FROM rm_param", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
    Openkeyloanflg = rsa("Openflg")
    End If

    
    Set rsa = New Recordset
    rsa.Open "SELECT isnull(Transflg,'N') as Transflg,isnull(VarietyReqIssue,'N') as VarietyReqIssue FROM rm_param", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
    Transflg = rsa("Transflg")
    reqflg = rsa("VarietyReqIssue")
    End If
    
    If subLen = Empty Then
        Suplen = 7
        PartyType = "C1"
        PartyBroker = "C5"
    End If
     DB.Execute ("update User_log set logouttime=getdate() where moduleno='" & ModuleNo & "' and logouttime is null and divcode='" & Divcode & "' and ipaddress='" & LocalIPAdd & "' and hostname='" & LocalHost & "'")
     ''  and UserID='" & usrid & "'
     DB.Execute ("insert into User_log (UserID,UserName,divcode,Moduleno,logintime,ipaddress,hostname) values ('" & usrid & "','" & Text2.Text & "','" & Divcode & "'," & ModuleNo & ",getdate(),'" & LocalIPAdd & "','" & LocalHost & "')")

On Error GoTo Err_Vercontrol
    
    If SCREENRES_CHANGE = "Y" Then
        Call CheckResolution
    End If
   
    '    strLICVer = gEncriptCompanyname(UCase("Standard"))
    strLICVer = gDecriptCompanyname(Trim(StrLIC_Version))
    If UCase(strLICVer) = UCase("Professional") Then
        MDIRMI_Professional.Show
        MDIRMI_Professional.WindowState = vbMaximized
        Unload Me
    ElseIf UCase(strLICVer) = UCase("Enterprise") Then
        MDIRMI_Enterprise.Show
        MDIRMI_Enterprise.WindowState = vbMaximized
        Unload Me
    ElseIf UCase(strLICVer) = UCase("Standard") Then
        MDIRMI_Standard.Show
        MDIRMI_Standard.WindowState = vbMaximized
        Unload Me
    Else
        MsgBox "Please Contact Administrator" & vbCrLf & "File version not matched", vbCritical, head
        Call ChangeRes(Old_PixelsWidth, Old_PixelsHeight)
    End If

    GoTo err_next

Err_Vercontrol:
    MsgBox "Please Contact Administrator" & vbCrLf & "File version not matched", vbCritical, head
    Exit Sub
''=================================================

err_next:
    
    
    
    Screen.MousePointer = 0
    Exit Sub
End If
 
If cnt < 3 And s <> adoPrimaryRS(0) Then

    If s = Empty Then
        MsgBox "Sorry, You Must Enter A Password", vbInformation, head
        Text4.SetFocus
        Exit Sub
    End If
    
    MsgBox "Incorrect Password", vbInformation, head
    Text4.Text = ""
    Text4.SetFocus
    Exit Sub
End If

If cnt = 3 And s <> adoPrimaryRS(0) Then
    MsgBox "Sorry, Access Denied", vbInformation, head
    End
End If

Exit Sub

go3021error:

If Err = 3021 Then
    MsgBox "Leaving Nulls Will Not Permit Entry", , head
End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
Call DelSysUser
End

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_GotFocus()
On Error GoTo Command2_GotFocus_Error

TEMP = 9

Exit Sub
Command2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_GotFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1.Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    
    gl_Database = "master"
    Set DB = New Connection
    If gl_Driver = "Sql Server" Then
        connectstring = "driver={" & gl_Driver & "};server=" & gl_Server & ";uid=" & gl_userId & ";pwd=" & gl_Passwd & "; database=" & gl_Database & ""
    ElseIf gl_Server = "Microsoft ODBC for Oracle" Then
        connectstring = "driver={" & gl_Driver & "};server=" & gl_Server & ";uid=" & gl_userId & ";pwd=" & gl_Passwd & ";BUFFERSIZE=2097152;"
    End If

    DB.Open connectstring
    
'    Set adoPrimaryRS = New Recordset
'    'db.Execute ("sp_trace_setstatus 1, 0")
'     adoPrimaryRS.Open "select divcode,divname from pp_DIVMAS Order by divcode", DB, adLockReadOnly
'    Do While Not adoPrimaryRS.EOF
'        Combo1.AddItem adoPrimaryRS(0) + "  " + adoPrimaryRS(1)
'        adoPrimaryRS.MoveNext
'    Loop
    
    DTPicker1.maxdate = Date
    DTPicker1.value = Date
    MaskEdBox1.Text = Format(Date, "dd/mm/yyyy")
    rsSel.Open "SELECT name FROM sys.databases WHERE name Not In ('master','tempdb','msdb','model','ReportServer','ReportServerTempDB','pubs','Northwind') order by name", DB, adLockReadOnly
    Do While Not rsSel.EOF
        cboCmpny.AddItem rsSel("name")
        rsSel.MoveNext
    Loop
    
    If GSTRDBNAME <> "" Then
        cboCmpny.Text = GSTRDBNAME
    Else
        cboCmpny.ListIndex = gl_Cmpnylst
    End If
    gl_db = ""
    

    
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
'Call DelSysUser
End Sub

Private Sub MaskEdBox1_KeyPress(KeyAscii As Integer)
On Error GoTo MaskEdBox1_KeyPress_Error

If KeyAscii = 13 Then
  Command1.SetFocus
End If

Exit Sub
MaskEdBox1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyPress of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus()

On Error GoTo MaskEdBox1_LostFocus_Error

If IsDate((MaskEdBox1.Text)) Then
    ddate = Date
    DTPicker1.MinDate = fnyfdate(ddate)
    If CDate(MaskEdBox1.Text) > DTPicker1.maxdate Then
        MsgBox "A Future Date Is Not Allowed ", vbInformation, head
        MaskEdBox1.Text = Date
        MaskEdBox1.SetFocus
    End If
Else
    MsgBox "Please enter a valid date", vbInformation, head
    MaskEdBox1.SetFocus
    MaskEdBox1.Text = Date
End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

Text2.Text = ""
If KeyAscii = 13 Then
  Text4.SetFocus
End If

If KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 32 Or (KeyAscii >= 48 And KeyAscii <= 58) Then Exit Sub
If KeyAscii < 65 Then
    KeyAscii = 0
    Exit Sub
End If

If KeyAscii > 124 Then
    KeyAscii = 0
    Exit Sub
End If

If KeyAscii > 65 And KeyAscii < 124 Then
    If KeyAscii >= 91 And KeyAscii <= 95 Then
        KeyAscii = 0
        Exit Sub
    End If
    If KeyAscii > 96 And KeyAscii < 124 Then KeyAscii = KeyAscii - 32
End If

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form passthru", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text1_LostFocus()

On Error GoTo Text1_LostFocus_Error

If TEMP <> 9 Then

    If Combo1.Text = "" Then
        MsgBox "Division Code Cannot Be Empty", , head
        Combo1.SetFocus
        Exit Sub
    End If
    
    If Text2.Text = "" Then
        MsgBox "User Name Cannot Be Empty", vbInformation, head
        Text2.SetFocus
    Else
        Text2.Text = UCase(Text2.Text)
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select USER_NAME,ALEVEL from pp_passwd WHERE DIVCODE='" + Mid$(Combo1.Text, 1, 2) + "' AND USER_name='" + UCase(Trim(Text1.Text)) + "' and module =  " & ModuleNo, DB, adLockReadOnly
        On Error GoTo GONORECERROR
        Text2.Text = adoPrimaryRS(0)
        ulevel = adoPrimaryRS(1)
    End If
    
    Exit Sub

End If

GONORECERROR:

    If Err = 3021 Then
        MsgBox "Not A Valid User Name", vbInformation, head
        Text1.Text = ""
        Text1.SetFocus
    End If

Exit Sub
Text1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_LostFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub text2_GotFocus()
Text2.BackColor = &HC0FFC0
End Sub

Private Sub Text2_KeyPress(KeyAscii As Integer)
On Error GoTo Text2_KeyPress_Error

If KeyAscii = 39 Then
KeyAscii = 0
End If

Exit Sub
Text2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_KeyPress of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text2_LostFocus()
On Error GoTo Text2_LostFocus_Error

Text2.BackColor = &HFFFFFF
If TEMP <> 9 Then
    If Combo1.Text = "" Then
        MsgBox "Division Code Cannot Be Empty", , head
        Combo1.SetFocus
        Exit Sub
    End If
'    If Text2.Text = "" Then
'        MsgBox "User Name Cannot Be Empty", vbInformation, head
'        Text2.SetFocus
'    Else
'        Text2.Text = UCase(Text2.Text)
'        Set adoprimaryrs = New Recordset
'        adoprimaryrs.Open "select USER_NAME,ALEVEL,USER_ID from pp_passwd WHERE DIVCODE='" + Mid$(Combo1.Text, 1, 2) + "' AND USER_name='" + Text2.Text + "'", db, adLockReadOnly
'        On Error GoTo GONORECERROR
'        Text2.Text = adoprimaryrs(0)
'        ulevel = adoprimaryrs(1)
'        uid = adoprimaryrs(2)
'    End If
    Exit Sub
End If
'GONORECERROR:
'    If err = 3021 Then
'        MsgBox "Not A Valid User Name", vbInformation, head
'        Text2.SetFocus
'        SendKeys ("{HOME}+{END}")
'    End If

Exit Sub
Text2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_LostFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text2_Validate(Cancel As Boolean)
On Error GoTo Text2_Validate_Error

    If Text2.Text = "" Then
        MsgBox "User Name Cannot Be Empty", vbInformation, head
        Cancel = True
    Else
        Set Rs = New Recordset
        Rs.Open "select isnull(activeflg,'N')  activeflg from PP_PASSWD WHERE module =" & ModuleNo & " and divcode='" + Mid$(Combo1.Text, 1, 2) + "' AND User_Name='" + Text2.Text + "'", DB, adOpenStatic
        'isnull(lock_days,0) lock,isnull(PENTRY_LOCK,'N') PENTRY_LOCK,
        If Not Rs.EOF Then
'        Lockdays = Rs(0)
'        Pentrylock = Rs(1)
        If Rs(0) = "N" Then
            Text2.Text = ""
            MsgBox "Not an Active User!!. Please Contact Administrator !", vbInformation, head
            Screen.MousePointer = 0
            Text2.SetFocus
            Exit Sub
        End If
        End If
    
    
        Text2.Text = UCase(Text2.Text)
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select USER_NAME,ALEVEL,USER_ID from pp_passwd WHERE DIVCODE='" + Mid$(Combo1.Text, 1, 2) + "' AND USER_name='" + Text2.Text + "' and module = " & ModuleNo, DB, adLockReadOnly
        On Error GoTo GONORECERROR
        Text2.Text = adoPrimaryRS(0)
        ulevel = adoPrimaryRS(1)
        uid = adoPrimaryRS(2)
        usrid = adoPrimaryRS(2)
    End If
    
    
GONORECERROR:
    If Err = 3021 Then
        MsgBox "Not A Valid User Name", vbInformation, head
        'Text2.SetFocus
        Cancel = True
        SendKeys ("{HOME}+{END}")
    End If

Exit Sub
Text2_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_Validate of Form passthru", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Text4_GotFocus()
On Error GoTo Text4_GotFocus_Error

Text4.BackColor = &HC0FFC0

Exit Sub
Text4_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_GotFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text4_KeyPress(KeyAscii As Integer)
On Error GoTo Text4_KeyPress_Error

If KeyAscii = 13 Then MaskEdBox1.SetFocus
If KeyAscii > 96 And KeyAscii < 124 Then
    KeyAscii = KeyAscii - 32
End If

Exit Sub
Text4_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_KeyPress of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text4_LostFocus()
On Error GoTo Text4_LostFocus_Error

Text4.BackColor = &HFFFFFF

Exit Sub
Text4_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_LostFocus of Form passthru", vbInformation, head
Screen.MousePointer = 0
End Sub


