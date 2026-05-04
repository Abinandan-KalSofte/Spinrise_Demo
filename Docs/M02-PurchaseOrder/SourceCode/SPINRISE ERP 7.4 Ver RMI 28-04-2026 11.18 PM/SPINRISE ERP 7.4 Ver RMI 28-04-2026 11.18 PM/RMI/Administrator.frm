VERSION 5.00
Begin VB.Form Administrator 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Kalsoft Paper"
   ClientHeight    =   3675
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4950
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3675
   ScaleWidth      =   4950
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      BackColor       =   &H00C0C0C0&
      Height          =   3750
      Left            =   45
      TabIndex        =   3
      Top             =   -45
      Visible         =   0   'False
      Width           =   4905
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   1305
         Style           =   2  'Dropdown List
         TabIndex        =   10
         Top             =   900
         Width           =   3135
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H00C0C0C0&
         Caption         =   "OK"
         Height          =   375
         Left            =   1890
         Style           =   1  'Graphical
         TabIndex        =   15
         Top             =   3180
         Width           =   1140
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
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   4
         Left            =   1305
         TabIndex        =   14
         Top             =   2580
         Width           =   3135
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
         ForeColor       =   &H00404040&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Index           =   3
         Left            =   1305
         PasswordChar    =   "*"
         TabIndex        =   13
         Top             =   2160
         Width           =   3135
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
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   2
         Left            =   1305
         TabIndex        =   12
         Top             =   1755
         Width           =   3135
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
         ForeColor       =   &H00404040&
         Height          =   285
         Index           =   1
         Left            =   1305
         TabIndex        =   11
         Top             =   1335
         Width           =   3135
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Database Details"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000080&
         Height          =   330
         Index           =   5
         Left            =   1320
         TabIndex        =   9
         Top             =   240
         Width           =   2355
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Database"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   4
         Left            =   345
         TabIndex        =   8
         Top             =   2580
         Width           =   885
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   3
         Left            =   345
         TabIndex        =   7
         Top             =   2190
         Width           =   900
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   2
         Left            =   345
         TabIndex        =   6
         Top             =   1770
         Width           =   750
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Server"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   1
         Left            =   345
         TabIndex        =   5
         Top             =   1350
         Width           =   570
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Driver"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Index           =   0
         Left            =   345
         TabIndex        =   4
         Top             =   930
         Width           =   540
      End
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   1320
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   240
      PasswordChar    =   "*"
      TabIndex        =   0
      Top             =   720
      Width           =   4095
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Enter the Product Key"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   195
      Left            =   1320
      TabIndex        =   1
      Top             =   360
      Width           =   1890
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00800000&
      Height          =   1975
      Left            =   50
      Top             =   50
      Width           =   4550
   End
End
Attribute VB_Name = "Administrator"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 'Option Explicit
Dim cc As Connection
Dim rec As Recordset
Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error
  If Trim(Combo1.Text) = "Sql Server" Then
     Text2(4).Enabled = True
     Text2(4).BackColor = &H80000005
  ElseIf Trim(Combo1.Text) = "Microsoft ODBC for Oracle" Then
     Text2(4).Enabled = False
     Text2(4).BackColor = &H80000004
  End If
Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form Administrator"
End Sub

Private Sub Command1_Click()
 On Error GoTo Command1_Click_Error
If UCase(Text1.Text) = "123" Then
    Frame1.Visible = True
    Me.Width = 5100
    Me.Height = 4155
    Combo1.SetFocus
    Command2.Default = True
Else
    MsgBox "Wrong Product Code", vbInformation, head
    Text1.SetFocus
    SendKeys ("{home}+{END}")
End If
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Administrator"
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
Dim cnt, c As Integer
Dim GENITEMRS As New Recordset
 If Trim(Combo1.Text) = "" Then
    MsgBox "Enter the Database Driver Name ", vbInformation, head
    ''Text2(0).SetFocus
    Exit Sub
 Else
    gl_Driver = Trim(Combo1.Text)
 End If
 
 If Trim(Combo1.Text) = "" Then
    MsgBox "Enter the Server Name", vbInformation, head
    Text2(1).SetFocus
    Exit Sub
 End If
 
 If Trim(Text2(2).Text) = "" Then
    MsgBox "Enter the user ID ", vbInformation, head
    Text2(2).SetFocus
    Exit Sub
 Else
    gl_userId = Trim(Text2(2).Text)
 End If
 
 If Trim(Text2(4).Text) = "" And Combo1.Text = "Sql Server" Then
    MsgBox "Enter the Datebase Name", vbInformation, head
    Text2(4).SetFocus
    Exit Sub
 Else
    gl_Database = Trim(Text2(4).Text)
 End If
 gl_Server = Trim(Text2(1))
 gl_Passwd = Trim(Text2(3).Text)
 
 If Combo1.Text = "Sql Server" Then
   connectstring = "driver={" & Trim(Combo1.Text) & "};server=" & Trim(Text2(1)) & ";uid=" & Trim(Text2(2)) & ";pwd=" & Trim(Text2(3)) & "; database=" & Trim(Text2(4)) & ";"
   gl_Driver = "Sql Server"
 ElseIf Combo1.Text = "Microsoft ODBC for Oracle" Then
    connectstring = "driver={" & Trim(Combo1.Text) & "};server=" & Trim(Text2(1)) & ";uid=" & Trim(Text2(2)) & ";pwd=" & Trim(Text2(3)) & ";BUFFERSIZE=2097152;"
    gl_Driver = "Microsoft ODBC for Oracle"
 Else
    Exit Sub
 End If
 gl_Database = Trim(Text2(4).Text)
 sqluser = Trim(Text2(2).Text)
 sqlpwd = Trim(Text2(3).Text)
 
  
    Dim server, uid, pass, dtb As String

    server = Encrypt(Trim(UCase(Text2(1))), EncryptKey)
    uid = Encrypt(Trim(UCase(Text2(2))), EncryptKey)
    pass = Encrypt(Trim(UCase(Text2(3))), EncryptKey)
    dtb = Encrypt(UCase(gl_Database), EncryptKey)
  connectstring1 = Encrypt("driver={" & Trim(Combo1.Text) & "};server=" & Trim(Text2(1)) & ";uid=" & Trim(Text2(2)) & ";pwd=" & Trim(Text2(3)) & "; database=" & Trim(Text2(4)) & ";", EncryptKey)
 
 
 Set cc = New Connection
 On Error GoTo Conerror
 cc.Open connectstring
 GSTRDBNAME = cc.DefaultDatabase
 MsgBox "Successfully Connected", vbInformation, head
 
   cnt = InStr(connectstring, "server")
        For c = 0 To Len(connectstring)
            If Right(Mid(connectstring, cnt + 7, c), 1) <> ";" Then
                GSERVER = Mid(connectstring, cnt + 7, c)
            Else
                Exit For
            End If
        Next

        cnt = InStr(connectstring, "database")
        For c = 0 To Len(connectstring)
            If Right(Mid(connectstring, cnt + 9, c), 1) <> ";" Then
                GSTRDBNAME = Mid(connectstring, cnt + 9, c)
            Else
                Exit For
            End If
        Next
        cnt = InStr(connectstring, "uid")
        For c = 0 To Len(connectstring)
            If Right(Mid(connectstring, cnt + 4, c), 1) <> ";" Then
                DBUser = Mid(connectstring, cnt + 4, c)
            Else
                Exit For
            End If
        Next
        
        cnt = InStr(connectstring, "pwd")
        For c = 0 To Len(connectstring)
            If Right(Mid(connectstring, cnt + 4, c), 1) <> ";" Then
                DBPWD = Mid(connectstring, cnt + 4, c)
            Else
                Exit For
            End If
        Next
 'Create ini file
 '---------------
 Dim FileName As String
 Dim free As Integer
 FileName = IIf((backend = "Sql Server"), Ini_file, Ini_file & Mid(Trim(Module), 1, 4) & "")
 'If backend = "Sql Server" Then
 free = FreeFile
 On Error Resume Next
 
 'include the reference as Microsoft scripting runtime
 Dim fso1 As New FileSystemObject
 fso1.DeleteFile KALFOLDERINI & FileName & ".ini"
 
 
  Open KALFOLDERINI & FileName & ".ini" For Output As #free
  
  Print #free, "Connect string for - " & backend
  Print #free, "--------------------------------"
  Print #free, connectstring1
  Print #free,
  Close #free
 passthru.Show
 Unload Me
 Exit Sub
Conerror:
 If Err.Number = "-2147467259" Then
    MsgBox "Connection Failure", vbCritical, head
    Combo1.SetFocus
  End If
Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Administrator"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' DateTime  : 07/12/2008 14:21
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Form_Load()
Dim Valid As Integer, I As Integer
On Error GoTo Form_Load_Error
Call isRunning(App.EXEName & ".exe")
 If Apppath Then
 
    Exit Sub
 End If


 If Trim(backend) = "" Then
     MsgBox "Please contact Your Administrator, Your Not Specified Backend", vbInformation, head
     Unload Me
     Exit Sub
 ElseIf Trim(Module) = "" Then
     MsgBox "Please contact Your Administrator, Your Not Specified Module", vbInformation, head
     Unload Me
     Exit Sub
 End If
 If Len(Trim(Module)) < 4 Then
     MsgBox "Module Lenth is More than Four Charater", vbInformation, head
     Unload Me
     Exit Sub
 End If
 
 If backend <> "Sql Server" Then
  If backend <> "Oracle" Then
     MsgBox "Please contact You Administrator, Wrong Backend (or) Upper or Lower case problem", vbInformation, head
     Valid = 1
     Unload Me
     Exit Sub
  End If
 End If
 
 Dim cc As Connection
 'Get The initial value from ini file 1.connectstring
 '---------------------------------------------------
 
 Dim a(25)
 Dim fileno As Integer
 fileno = FreeFile
 
 
 'Find the backend and module from the ini file.
 'We must  declare the variable in module form "Backend","Module"
 'as constant and value are assigned if sql server
 'then copy this word "Sql Server", if oracle then
 'copy this word "Oracle". Mainly For oracle varsion
 '---------------------------------------------------------------
 If backend = "Sql Server" Then
    
    'For Sql Server, only one ini file
    '---------------------------------
    
    Dim fso As New FileSystemObject
   ' Open "C:\textileErp\" & Ini_file & ".ini" For Input As #FILENO
    'fso.
    '"Kalsofte" & ".ini" For Input As #FILENO
    On Error GoTo Suberror1
        Close
        ''As adviced by ChidambaraNathan on 06.03.2007  15.30 HRS
        ''Here removed KalsofteRmi.cfg
        Open App.Path & "\Kalsofte.cfg" For Input As #fileno
        I = 1
        Do While Not EOF(fileno)
         Input #fileno, a(I)
         I = I + 1
        Loop

        KALDRIVE = a(1)
        Ini_file = a(2)
        Call KALCONFIG
        GoTo l1:
Suberror1:
        MsgBox "Configuration File - Kalsofte.cfg not Found", vbInformation, head
       End
l1:
  On Error GoTo Suberror
    
    'For Sql Server, only one ini file
    '---------------------------------
        Close
        Open KALFOLDERINI & Ini_file & ".ini" For Input As #fileno
        I = 1
        Do While Not EOF(fileno)
         Input #fileno, a(I)
         I = I + 1
        Loop
         a(3) = Decrypt(CStr(a(3)), EncryptKey)
        connectstring = a(3)
        sqluser = Mid(a(3), InStr(1, a(3), "uid=") + 4, (InStr(1, a(3), ";pwd") - (InStr(3, a(3), "uid=") + 4)))
        sqlpwd = Mid(a(3), InStr(1, a(3), "pwd=") + 4, (InStr(1, a(3), "; da") - (InStr(3, a(3), "pwd=") + 4)))
        gl_Driver = Mid(a(3), InStr(1, a(3), "driver={") + 8, (InStr(1, a(3), ";server") - (InStr(3, a(3), "driver={") + 10)))
        gl_Server = Mid(a(3), InStr(1, a(3), "server=") + 7, (InStr(1, a(3), ";uid") - (InStr(3, a(3), "server=") + 7)))
        gl_userId = Mid(a(3), InStr(1, a(3), "uid=") + 4, (InStr(1, a(3), ";pwd") - (InStr(3, a(3), "uid=") + 4)))
        gl_Passwd = Mid(a(3), InStr(1, a(3), "pwd=") + 4, (InStr(1, a(3), "; da") - (InStr(3, a(3), "pwd=") + 4)))
        gl_db = Mid(a(3), InStr(1, a(3), "database=") + 9, Len(a(3)))
        gl_db = Mid(gl_db, 1, Len(gl_db) - 1)
        Close #fileno
        Set cc = New Connection
        cc.Open connectstring
        Set NewCon = New Connection
        NewCon.Open "PROVIDER=MSDataShape;" & connectstring
'        Set GENITEMRS = New Recordset
'        GENITEMRS.Open "select ITEMCODE,ITEMNAME,ITEMSPEC1,ITEMSPEC2,ITEMSPEC3,UOM,CUOM,UOMQTY,CUOMQTY,MATYPE,AUTOMRP,CATCODE,CATFLG,CATLNO,MACNO,MAXLEVEL,MINLEVEL,RORDLEVEL,RORDQTY,RATE,PHYSTK,LRECPTDT,LISSUEDT,ABCFLG,FSNFLG,lncode,HIGHSTK,HIGHDATE,LOWSTK,LOWDATE,UDELYTOL,ODELFLG,ODELTOL,LEVYTAX,FREITINS,INDENTREQ,VALUED,DEADSTOCK,SUBSTOREITEM,LIFETYPE,LIFESPAN,GODCODE,dutycat,frequency,drawno,selflife,Itemname + SPACE(50-LEN(ItemName)) + '- ' + ItemCODE itm,APMFlag from in_item order by itemcode", NewCon, adOpenStatic, adLockBatchOptimistic
        Call AssignGlobalConnection
        passthru.Show
        Unload Me
        Exit Sub
   
 End If

Suberror:
   'For creating ini file
   '--------------------
   If Err.Number = 53 Or Err.Number = -2147217843 Or Err.Number = -2147467259 Then
      Me.Width = 4725
      Me.Height = 2475
      Me.Caption = Module
      If backend = "Sql Server" Then
        Combo1.AddItem ("Sql Server")
        Text2(4).Enabled = True
        Text2(4).BackColor = &H80000005
      End If
    End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Administrator", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Text1_GotFocus
' DateTime  : 07/12/2008 14:21
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error

  SendKeys ("{home}+{END}")

Exit Sub
Text1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_GotFocus of Form Administrator", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : text2_GotFocus
' DateTime  : 07/12/2008 14:21
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub text2_GotFocus(Index As Integer)
On Error GoTo text2_GotFocus_Error

  SendKeys ("{home}+{END}")

Exit Sub
text2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure text2_GotFocus of Form Administrator", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Text2_LostFocus
' DateTime  : 07/12/2008 14:21
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Text2_LostFocus(Index As Integer)
'  If Index <> 5 Then Text2(Index).Text = UCase(Text2(Index).Text)
On Error GoTo Text2_LostFocus_Error

Select Case Index
    Case 1, 2, 4
        Text2(Index).Text = UCase(Text2(Index).Text)
End Select

Exit Sub
Text2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_LostFocus of Form Administrator", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Function Apppath() As Boolean

    Dim a(25)
    Dim fileno As Integer
    fileno = FreeFile
        
 If Trim(backend) = "" Then
     MsgBox "Please contact You Administrator, Your Not Specified Backend", vbInformation, head
     Unload Me
     Exit Function
 ElseIf Trim(Module) = "" Then
     MsgBox "Please contact You Administrator, Your Not Specified Module", vbInformation, head
     Unload Me
     Exit Function
 End If
 If Len(Trim(Module)) < 4 Then
     MsgBox "Module Lenth is More than Four Charater", vbInformation, head
     Unload Me
     Exit Function
 End If
 
 If backend <> "Sql Server" Then
  If backend <> "Oracle" Then
     MsgBox "Please contact You Administrator, Wrong Backend (or) Upper or Lower case problem", vbInformation, head
     Valid = 1
     Unload Me
     Exit Function
  End If
 End If
 
 
  On Error GoTo Suberror
    
    'For Sql Server, only one ini file
    '---------------------------------
 
        Dim fso As New FileSystemObject
        Close
        Open App.Path & "\Kalsofte.cfg" For Input As #fileno
        I = 1
        Do While Not EOF(fileno)
         Input #fileno, a(I)
         I = I + 1
        Loop
        KALDRIVE = a(1)
        Ini_file = a(2)
        Call KALCONFIG
    
    
    'For Sql Server, only one ini file
    '---------------------------------
    
        
        Dim siniDBSvr As String
        Dim siniDBName As String
        Dim siniDBUser As String
        Dim siniDBPwd As String

        Dim siniDBPwd1() As String
    
           
        Close
        Open App.Path & "\kalsofte.ini" For Input As #fileno
        I = 1
        Do While Not EOF(fileno)
         Input #fileno, a(I)
         I = I + 1
        Loop
        
'        sss = gEncriptUsercount("KSL@0809")
        
        siniDBSvr = a(3)
        siniDBName = a(4)
        siniDBUser = a(5)
        siniDBPwd1 = Split(a(6), "=")
        siniDBPwd = siniDBPwd1(1) & ""
        siniDBPwd = gDecriptUsercount(siniDBPwd)
        siniDBPwd = "pwd=" & siniDBPwd
        
        
        connectstring = "driver={Sql Server};" & siniDBSvr & ";" & siniDBUser & ";" & siniDBPwd & ";" & siniDBName & ";"

        gl_Driver = Mid(a(3), InStr(1, a(3), "driver={") + 8, (InStr(1, a(3), ";server") - (InStr(3, a(3), "driver={") + 10)))
        gl_Server = siniDBSvr
        gl_userId = siniDBUser
        gl_Passwd = siniDBPwd
        gl_db = siniDBName
         
'        connectstring = "driver={" & Trim(Combo1.Text) & "};server=" & Trim(Text2(1)) & ";uid=" & Trim(Text2(2)) & ";pwd=" & Trim(Text2(3)) & "; database=" & Trim(Text2(4)) & ";"


        Close #fileno
        
        Set cc = New Connection
        cc.Open connectstring
        Set NewCon = New Connection
        NewCon.Open "PROVIDER=MSDataShape;" & connectstring
        
        Call AssignGlobalConnection
        passthru.Show
        Unload Me
        
        Apppath = True
      
        Exit Function
   
 

Suberror:

'      Me.Width = 4725
'      Me.Height = 2475
'      Me.Caption = Module
'      If backend = "Sql Server" Then
'            MsgBox "Access Denied !!! Please Contact System Administrator", vbInformation, head
'            Unload Me
'      End If
End Function

Public Function isRunning(ByVal Process As String) As Boolean
        Dim objWMIService, colProcesses
        Set objWMIService = GetObject("winmgmts:")
        Set colProcesses = objWMIService.ExecQuery("Select * from Win32_Process where name='" & Process & "'")
        If colProcesses.Count > 1 Then
            isRunning = True
            MsgBox "Raw Material Inventory Application already in use your system", vbCritical, head
            End
        Else
            isRunning = False
        End If
    End Function


