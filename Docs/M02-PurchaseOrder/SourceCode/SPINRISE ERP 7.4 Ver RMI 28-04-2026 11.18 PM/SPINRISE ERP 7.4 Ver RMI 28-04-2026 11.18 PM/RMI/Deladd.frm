VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Deladd 
   Caption         =   "Delivery Address"
   ClientHeight    =   7695
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9495
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7695
   ScaleWidth      =   9495
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR 
      Left            =   300
      Top             =   6390
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4995
      Left            =   900
      TabIndex        =   30
      Top             =   1305
      Width           =   7770
      _ExtentX        =   13705
      _ExtentY        =   8811
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Deladd.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4815
         Left            =   150
         TabIndex        =   37
         Top             =   60
         Width           =   7485
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAN"
            Height          =   330
            Index           =   17
            Left            =   5550
            MaxLength       =   25
            TabIndex        =   56
            Top             =   3495
            Width           =   1750
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "gstinno"
            Height          =   345
            Index           =   15
            Left            =   3165
            MaxLength       =   15
            TabIndex        =   53
            Top             =   3495
            Width           =   1845
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "gststatecode"
            Enabled         =   0   'False
            Height          =   345
            Index           =   14
            Left            =   1350
            TabIndex        =   52
            Top             =   3495
            Width           =   765
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   0
            Left            =   1350
            MaxLength       =   10
            TabIndex        =   0
            Top             =   270
            Width           =   990
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CNAME"
            Height          =   330
            Index           =   2
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   2
            Top             =   675
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000000&
            DataField       =   "SLNAME"
            Height          =   330
            Index           =   1
            Left            =   2430
            MaxLength       =   40
            TabIndex        =   1
            TabStop         =   0   'False
            Top             =   270
            Width           =   4905
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   5
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   5
            Top             =   1905
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   330
            Index           =   4
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   4
            Top             =   1485
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
            Height          =   330
            Index           =   6
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   6
            Top             =   2325
            Width           =   2670
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
            Height          =   330
            Index           =   7
            Left            =   4920
            MaxLength       =   7
            TabIndex        =   7
            Top             =   2325
            Width           =   2385
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   3
            Top             =   1080
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "District"
            Height          =   330
            Index           =   8
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   8
            Top             =   2730
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000000&
            Height          =   330
            Index           =   9
            Left            =   2415
            MaxLength       =   40
            TabIndex        =   38
            TabStop         =   0   'False
            Top             =   3120
            Width           =   4875
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "StateCode"
            Height          =   330
            Index           =   10
            Left            =   1350
            MaxLength       =   10
            TabIndex        =   9
            Top             =   3120
            Width           =   990
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "Country"
            Height          =   330
            Index           =   13
            Left            =   1350
            MaxLength       =   25
            TabIndex        =   10
            Top             =   3945
            Width           =   2700
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "Courier"
            Height          =   330
            Index           =   12
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   12
            Top             =   4335
            Width           =   5925
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PhoneNo"
            Height          =   330
            Index           =   11
            Left            =   4920
            MaxLength       =   25
            TabIndex        =   11
            Top             =   3915
            Width           =   2370
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "PAN"
            Height          =   195
            Left            =   5070
            TabIndex        =   57
            Top             =   3600
            Width           =   330
         End
         Begin VB.Label Label4 
            Caption         =   "GST Number"
            ForeColor       =   &H8000000D&
            Height          =   330
            Left            =   2175
            TabIndex        =   55
            Top             =   3600
            Width           =   1080
         End
         Begin VB.Label Label3 
            Caption         =   "GST StateCode"
            ForeColor       =   &H8000000D&
            Height          =   195
            Left            =   45
            TabIndex        =   54
            Top             =   3600
            Width           =   1245
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Line 2"
            Height          =   195
            Index           =   8
            Left            =   750
            TabIndex        =   51
            Top             =   1590
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Line 3"
            Height          =   195
            Index           =   7
            Left            =   750
            TabIndex        =   50
            Top             =   1980
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "Code"
            ForeColor       =   &H8000000D&
            Height          =   195
            Index           =   1
            Left            =   795
            TabIndex        =   48
            Top             =   315
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            BackColor       =   &H8000000D&
            BackStyle       =   0  'Transparent
            Caption         =   "City"
            ForeColor       =   &H8000000D&
            Height          =   195
            Index           =   2
            Left            =   915
            TabIndex        =   47
            Top             =   2370
            Width           =   255
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Company Name"
            ForeColor       =   &H8000000D&
            Height          =   195
            Index           =   3
            Left            =   45
            TabIndex        =   46
            Top             =   720
            Width           =   1125
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   195
            Index           =   6
            Left            =   4110
            TabIndex        =   45
            Top             =   2400
            Width           =   585
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Address Line 1"
            Height          =   195
            Index           =   0
            Left            =   135
            TabIndex        =   44
            Top             =   1200
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "District"
            Height          =   195
            Index           =   4
            Left            =   690
            TabIndex        =   43
            Top             =   2820
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   195
            Index           =   5
            Left            =   795
            TabIndex        =   42
            Top             =   3195
            Width           =   375
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   195
            Left            =   630
            TabIndex        =   41
            Top             =   4035
            Width           =   540
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Courier Through"
            Height          =   195
            Left            =   30
            TabIndex        =   40
            Top             =   4425
            Width           =   1140
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Phone No."
            Height          =   195
            Left            =   4110
            TabIndex        =   39
            Top             =   4005
            Width           =   765
         End
      End
   End
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawStyle       =   2  'Dot
      DrawWidth       =   17015
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   0
      ScaleHeight     =   300
      ScaleWidth      =   9495
      TabIndex        =   28
      Top             =   7095
      Width           =   9495
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   25
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   570
         Index           =   13
         Left            =   5820
         Picture         =   "Deladd.frx":001C
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":045E
         Height          =   550
         Index           =   4
         Left            =   2145
         Picture         =   "Deladd.frx":0768
         Style           =   1  'Graphical
         TabIndex        =   36
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":0AFD
         Height          =   550
         Index           =   8
         Left            =   4245
         Picture         =   "Deladd.frx":0F47
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Last Record(Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Deladd.frx":12A9
         Height          =   550
         Index           =   10
         Left            =   5295
         Picture         =   "Deladd.frx":15B3
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":192F
         Height          =   550
         Index           =   9
         Left            =   4770
         Picture         =   "Deladd.frx":1C39
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Save(Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":1FDB
         Height          =   550
         Index           =   11
         Left            =   6360
         Picture         =   "Deladd.frx":2425
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Exit(Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":27BA
         Height          =   550
         Index           =   7
         Left            =   3720
         Picture         =   "Deladd.frx":2C04
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Previous Record(Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "Deladd.frx":2F54
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "List(Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":32EB
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "Deladd.frx":35F5
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Modify(Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":396F
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   2
         Left            =   1095
         Picture         =   "Deladd.frx":3C79
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Delete(Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":4015
         Height          =   550
         Index           =   5
         Left            =   2670
         Picture         =   "Deladd.frx":445F
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "First Record(Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":47C4
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "Deladd.frx":4ACE
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Add(Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Deladd.frx":4E61
         Height          =   550
         Index           =   6
         Left            =   3195
         Picture         =   "Deladd.frx":52AB
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "Next Record(Ctrl Down)"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   7470
         TabIndex        =   27
         Top             =   255
         Width           =   840
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   9780
         TabIndex        =   26
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   29
      Top             =   7395
      Width           =   9495
      _ExtentX        =   16748
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "01/11/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07:50 PM"
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
   Begin VB.Frame Frame3 
      Height          =   4725
      Left            =   720
      TabIndex        =   31
      Top             =   1290
      Visible         =   0   'False
      Width           =   7770
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "Deladd.frx":55F8
         Height          =   660
         Left            =   4050
         Picture         =   "Deladd.frx":59DA
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   3975
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Deladd.frx":5DAD
         Height          =   660
         Left            =   2355
         Picture         =   "Deladd.frx":6193
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   3975
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3285
         Left            =   375
         TabIndex        =   34
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5794
         ForeColor       =   -2147483635
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   35
         Top             =   120
         Width           =   7725
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Delivery Address"
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
      Left            =   930
      TabIndex        =   17
      Top             =   915
      Width           =   2145
   End
End
Attribute VB_Name = "Deladd"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim Str As String
Dim PC As String
Dim Rs, rs1 As New Recordset
Public type1 As String
Dim rsCommand1 As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer

'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1
If Opt = "qry" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
   stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 3
    Set rs3 = New Recordset
    rs3.Open "select * from pp_divmas", DB, adOpenDynamic, adLockOptimistic
    With CR
    .Reset
    CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\DeliveryAddress.rpt"
    CR.Formulas(0) = "divname = '" & divname & "'"
    CR.WindowState = crptMaximized
    SendKeys "{enter}"
    CR.Action = True
    CR.PrinterCopies = 1
    End With

Case 0
    Opt = "add"
    desc.Caption = "Addition"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT from rm_deladd where 1=2", DB, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT,gststatecode,gstinno,PAN from rm_deladd where 1=2", DB, adOpenStatic, adLockOptimistic
    Call ENABLCONTLS
    Call bindcontls
    Txtfields(7).Text = ""
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    Txtfields(0).SetFocus
    
    desc.Caption = "Addition"
    'Screen.MousePointer = 11
       
    ''listlb.Caption = "Supplier Code Selection"
    ''ksldesc1.conn = connectstring
    ''ksldesc1.table = "fa_slmas"
    ''ksldesc1.listfield1 = "slcode"
    ''ksldesc1.listfield2 = "slname"
    ''ksldesc1.SetFocus
    Set Rs = New Recordset
    Rs.Open "Select ptypecotton from masterlen", DB, adOpenStatic
    PartyType = Rs("ptypecotton") '& "%"
    LookUp.Clear = True
'    If UCase(CustID) = "SARANYA" Then
'        LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from fa_slmas WHERE SLCODE NOT IN (SELECT SLCODE FROM RM_DELADD) "
'    Else
        LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from fa_slmas WHERE SLCODE NOT IN (SELECT SLCODE FROM RM_DELADD) and left(slcode,2) in (select Items from dbo.split('" & PartyType & "',','))"
   ' End If
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "1700,5500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(0).Text = ""
        Txtfields(1).Text = ""
        Txtfields(0).Text = LookUp.Fields(0)
        Txtfields(1).Text = LookUp.Fields(1)
        LookUp.Clear = True
        Txtfields(0).Locked = True
        Txtfields(1).Locked = True
        Txtfields(2).SetFocus
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    'Screen.MousePointer = 0
Case 1
    ' Modification
    If Record_Exists("rm_deladd") = False Then Exit Sub
    Opt = "mod"
    desc.Caption = "Modification"
    'Screen.MousePointer = 11
   
    DB.BeginTrans
''    SSTab1.Visible = False
''    Frame3.Visible = True
''    Frame3.ZOrder
''    Buttonframe.Enabled = False
''    listlb.Caption = "Carrier"
''    ksldesc1.conn = connectstring
''    ksldesc1.table = "rm_deladd"
''    ksldesc1.listfield1 = "SLCODE"
''    ksldesc1.listfield2 = "SLNAME"
''    ksldesc1.SetFocus
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from rm_deladd"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT,GSTINNO,PAN FROM rm_deladd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        Txtfields(0).Text = SLC("SLCODE")
        Txtfields(1).Text = SLC("SLNAME")
        Txtfields(2).Text = SLC("CNAME")
        Txtfields(3).Text = SLC("ADD1")
        Txtfields(4).Text = SLC("ADD2")
        Txtfields(5).Text = SLC("ADD3")
        Txtfields(6).Text = SLC("CITY")
        Txtfields(7).Text = SLC("PIN")
        Txtfields(8).Text = IIf(IsNull(SLC("DISTRICT")), "", SLC("DISTRICT"))
        Txtfields(11).Text = IIf(IsNull(SLC("PHONENO")), "", SLC("PHONENO"))
        Txtfields(10).Text = IIf(IsNull(SLC("STATECODE")), "", SLC("STATECODE"))
        Txtfields(12).Text = IIf(IsNull(SLC("COURIER")), "", SLC("COURIER"))
        Txtfields(13).Text = IIf(IsNull(SLC("COUNTRY")), "", SLC("COUNTRY"))
        Txtfields(17).Text = IIf(IsNull(SLC("PAN")), "", SLC("PAN"))

        
    Else
            Call BUTTON_Click(10)
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    Txtfields(0).Locked = True
    Txtfields(1).Locked = True
    Txtfields(2).SetFocus
    'Screen.MousePointer = 0

Case 2
    'Deletion
    If Record_Exists("rm_deladd") = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
  
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from rm_deladd"
    'LookUp.Query = "SELECT slcode""Code"",slname""Name"" from rm_deladd where slcode not in (select distinct deladd from rm_delsched)"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT,GSTINNO,PAN FROM rm_deladd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        Txtfields(0).Text = SLC("SLCODE")
        Txtfields(1).Text = SLC("SLNAME")
        Txtfields(2).Text = SLC("CNAME")
        Txtfields(3).Text = SLC("ADD1")
        Txtfields(4).Text = SLC("ADD2")
        Txtfields(5).Text = SLC("ADD3")
        Txtfields(6).Text = SLC("CITY")
        Txtfields(7).Text = SLC("PIN")
        Txtfields(8).Text = SLC("DISTRICT")
        Txtfields(11).Text = SLC("PHONENO")
        Txtfields(10).Text = SLC("STATECODE")
        Txtfields(12).Text = SLC("COURIER")
        Txtfields(13).Text = SLC("COUNTRY")
        Txtfields(17).Text = SLC("PAN")
        
        
    Else
            Call BUTTON_Click(10)
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    'Screen.MousePointer = 0
    
Case 4
    'Find
    If Record_Exists("rm_deladd") = False Then Exit Sub
    Opt = "fnd"
    desc.Caption = "Find"
  
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from rm_deladd"
    'LookUp.Query = "SELECT slcode""Code"",slname""Name"" from rm_deladd where slcode not in (select distinct deladd from rm_delsched)"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT,GSTINNO,PAN FROM rm_deladd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        Txtfields(0).Text = SLC("SLCODE")
        Txtfields(1).Text = SLC("SLNAME")
        Txtfields(2).Text = SLC("CNAME")
        Txtfields(3).Text = SLC("ADD1")
        Txtfields(4).Text = SLC("ADD2")
        Txtfields(5).Text = SLC("ADD3")
        Txtfields(6).Text = SLC("CITY")
        Txtfields(7).Text = SLC("PIN")
        Txtfields(8).Text = SLC("DISTRICT")
        Txtfields(11).Text = SLC("PHONENO")
        Txtfields(10).Text = SLC("STATECODE")
        Txtfields(12).Text = SLC("COURIER")
        Txtfields(13).Text = SLC("COUNTRY")
        Txtfields(17).Text = SLC("PAN")
        

    Else
            Call BUTTON_Click(10)
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    BUTTON(9).Enabled = False
    'Screen.MousePointer = 0
    
Case 13
    'Listing
'    Set Rep = New Report.ReportView
'    a = FreeFile
'    pg1 = 1
'    Co = 0
'    'Open "c:\DELADD.txt" For Output As #a
'    Open KALFOLDERDATA & "\DELADD.TXT" For Output As #a
'    Call header(pg1, Co)
'    Set Rs = New Recordset
'    Rs.Open "select SLCODE,SLNAME from rm_deladd ", DB, adOpenStatic, adLockOptimistic
'
'    If Rs.BOF Then
'        MsgBox "No records found ", vbInformation, head
'        Close #a
'        Exit Sub
'    End If
'
'    Rs.MoveFirst
'    Do While Not Rs.EOF
'        Print #a, Space(5) + Padr(CStr(Rs(0)), 10, " "); Space(2) + Padr(CStr(Rs(1)), 50, " ")
'        C = C + 1
'        Print #a,
'        C = C + 1
'        Set rss = New Recordset
'        rss.Open "select cname,add1,add2,add3,city,pin from rm_deladd where slcode='" & Rs(0) & "' and slname='" & Rs(1) & "'", DB, adOpenStatic
'        Do While Not rss.EOF
'            Print #a, Space(5) & Padr(rss("cname"), 30, " ") & Space(1) & Padr(rss("add1"), 30, " ") & Space(1) & Padr(rss("add2"), 30, " ") & Space(1) & Padr(rss("add3"), 30, " ") & Space(1) & Padr(rss("city"), 28, " ") & Space(1) & Padr(rss("pin"), 7, " ")
'            C = C + 1
'            rss.MoveNext
'            If C > PageLen Then
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            C = 0
'            Call header(pg1, Co)
'            End If
'        Rs.MoveNext
'        If C > PageLen Then
'            Print #a, Chr(12)
'            pg1 = pg1 + 1
'            C = 0
'            Call header(pg1, Co)
'        End If
'        Loop
'        Print #a,
'        C = C + 1
'    Loop
'    Print #a, Space(5) + String(160, "-")
'    Print #a, Chr(12)
'    Close #a
''    Open "c:\DELADD.bat" For Output As #a
''    Print #a, "cd\"
''    Print #a, "c:"
''    Print #a, "cd\"
''    Print #a, "DELADD.txt > prn"
''    Close #a
''    Rep.txtfile = "c:\DELADD.txt"
''    Rep.Batfile = "c:\DELADD.bat"
'    a = FreeFile
'Call KALBATPROCESS("DELADD")
Dim clsCryRptDeladd As New clsCrystal
  Set clsCryRptDeladd.cryRept = Cry_Setupdeladd
  clsCryRptDeladd.CrystalPrint
                
  CR.Reset
  CR.Connect = connectstring
  CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CR.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CR.WindowShowPrintSetupBtn = True
  CR.WindowShowSearchBtn = True
  CR.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CR.Action = 1
  CR.PrinterCopies = 1
  Screen.MousePointer = 0
Case 5
    'first
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoFirstError
    adoPrimaryRS.MoveFirst
    'calling fir procedure from module
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
    Else
        Call FIR(BUTTON)
    End If
    Exit Sub
GoFirstError:

Case 6
    'next
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoNextError
    If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        adoPrimaryRS.MoveLast
    End If
    Exit Sub
GoNextError:

Case 7
    'previous
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoPrevError
    If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
    End If
    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
    End If
    Exit Sub
GoPrevError:
       
Case 8
    'last
    Opt = "qry"
    desc.Caption = "Query"
    On Error GoTo GoLastError
    adoPrimaryRS.MoveLast
    Call las(BUTTON)
    Exit Sub
GoLastError:
           
   
Case 9
    'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(Txtfields(0).Text) = "" Then
            MsgBox "Code can't be Empty", vbInformation, head
            Txtfields(0).SetFocus
            Exit Sub
        End If
        If Trim(Txtfields(1).Text) = "" Then
            MsgBox "Name cannot be empty", vbInformation, head
            Txtfields(1).SetFocus
            Exit Sub
        End If
                
        If Trim(Txtfields(14).Text) = "" Then
            MsgBox "Please Enter State", vbInformation, head
            Txtfields(14).Locked = False
            Txtfields(14).Enabled = True
            Txtfields(14).SetFocus
            Exit Sub
        End If
            
             '30.05
        If Trim(Txtfields(15).Text) = "" Then
            MsgBox "Please enter GST StateCode", vbCritical
            Exit Sub
        End If
            
            
             '30.05
        If Trim(Txtfields(15).Text) = "" Then
            MsgBox "Please enter GST Number", vbCritical
            Txtfields(15).SetFocus
            Exit Sub
        End If
           
     
        If Len(Txtfields(15)) <> 15 Then
            MsgBox "The GST No. Length should be 15 characters...!"
            Txtfields(15).SetFocus
            Exit Sub
        End If
     
        If Left(Txtfields(15), 2) <> Txtfields(14).Text Then
            MsgBox "The first Two digit of GST No. Should be state code...!"
            Txtfields(15).SetFocus
            Exit Sub
        End If
    
    End If
    On Error GoTo saveerror
    Screen.MousePointer = 11
    If Opt = "add" Then
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("SLCODE") = Txtfields(0).Text
            adoPrimaryRS("SLNAME") = Txtfields(1).Text
            adoPrimaryRS("CNAME") = Txtfields(2).Text
            adoPrimaryRS("ADD1") = Txtfields(3).Text
            adoPrimaryRS("ADD2") = Txtfields(4).Text
            adoPrimaryRS("ADD3") = Txtfields(5).Text
            adoPrimaryRS("CITY") = Txtfields(6).Text
            adoPrimaryRS("PIN") = Txtfields(7).Text
            adoPrimaryRS("DISTRICT") = Txtfields(8).Text
            adoPrimaryRS("PHONENO") = Txtfields(11).Text
            adoPrimaryRS("STATECODE") = Txtfields(10).Text
            adoPrimaryRS("COURIER") = Txtfields(12).Text
            adoPrimaryRS("COUNTRY") = Txtfields(13).Text
            '22
            adoPrimaryRS("gststatecode") = Txtfields(14).Text
            adoPrimaryRS("gstinno") = Txtfields(15).Text
            adoPrimaryRS("PAN") = Txtfields(17).Text

            adoPrimaryRS.MoveNext
        Loop
        adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description ,slcode,gstinno,Company,City,hsn ,StateCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Delivery Address"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = Txtfields(0).Text
            TrnLog("description") = Txtfields(1).Text
            TrnLog("slcode") = Txtfields(2).Text
           
     
            TrnLog("CITY") = Txtfields(6).Text
            TrnLog("hsn") = Txtfields(7).Text

            TrnLog("StateCode") = Txtfields(10).Text
            TrnLog("gstinno") = Txtfields(15).Text
            
            
            TrnLog.UpdateBatch adAffectAllChapters
            
        
        
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record(s) Saved", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Saved"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "mod" Then
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("SLCODE") = Txtfields(0).Text
            adoPrimaryRS("SLNAME") = Txtfields(1).Text
            adoPrimaryRS("CNAME") = Txtfields(2).Text
            adoPrimaryRS("ADD1") = Txtfields(3).Text
            adoPrimaryRS("ADD2") = Txtfields(4).Text
            adoPrimaryRS("ADD3") = Txtfields(5).Text
            adoPrimaryRS("CITY") = Txtfields(6).Text
            adoPrimaryRS("PIN") = Txtfields(7).Text
            adoPrimaryRS("DISTRICT") = Txtfields(8).Text
            adoPrimaryRS("PHONENO") = Txtfields(11).Text
            adoPrimaryRS("STATECODE") = Txtfields(10).Text
            adoPrimaryRS("COURIER") = Txtfields(12).Text
            adoPrimaryRS("COUNTRY") = Txtfields(13).Text
            '22
            adoPrimaryRS("gststatecode") = Txtfields(14).Text
            adoPrimaryRS("gstinno") = Txtfields(15).Text
            adoPrimaryRS("PAN") = Txtfields(17).Text
            
            adoPrimaryRS.MoveNext
        Loop
             adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description ,slcode,gstinno,Company,City,hsn ,StateCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Delivery Address"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = Txtfields(0).Text
            TrnLog("description") = Txtfields(1).Text
            TrnLog("slcode") = Txtfields(2).Text
           
     
            TrnLog("CITY") = Txtfields(6).Text
            TrnLog("hsn") = Txtfields(7).Text

            TrnLog("StateCode") = Txtfields(10).Text
            TrnLog("gstinno") = Txtfields(15).Text
            
            
            TrnLog.UpdateBatch adAffectAllChapters
        
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox "Record(s) Modified", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Modified"
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "del" Then
        On Error GoTo delerror
        a = MsgBox("Do you want to delete this Record?", vbYesNo, head)
        If a = 6 Then
            DB.Execute ("delete from rm_deladd where slcode='" + Txtfields(0).Text + "' and slname='" + Txtfields(1).Text + "' and cname='" + Txtfields(2).Text + "'")
            adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description ,slcode,gstinno,Company,City,hsn ,StateCode FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Delivery Address"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = Txtfields(0).Text
            TrnLog("description") = Txtfields(1).Text
            TrnLog("slcode") = Txtfields(2).Text
           
     
            TrnLog("CITY") = Txtfields(6).Text
            TrnLog("hsn") = Txtfields(7).Text

            TrnLog("StateCode") = Txtfields(10).Text
            TrnLog("gstinno") = Txtfields(15).Text
            
            
            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record(s) Deleted", vbInformation, head
            stbar.Panels(2).Text = "Record(s) Deleted"
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            Exit Sub
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
    End If
    
delerror:
    Screen.MousePointer = 0
    MsgBox "This Record Cannot be deleted as Dependencies exists", vbInformation, head
    DB.RollbackTrans
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    Exit Sub
                        
saveerror:
    If Opt = "add" Then
        MsgBox Err.Number, vbInformation, head
        Screen.MousePointer = 0
        DB.RollbackTrans
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    ElseIf Opt = "mod" Then
        MsgBox "Error during Modification", vbInformation, head
        Screen.MousePointer = 0
        DB.RollbackTrans
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(0).SetFocus
        Exit Sub
    End If
        
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    'CANCEL
    On Error Resume Next
    desc.Caption = "Query"
    Screen.MousePointer = 11
    Select Case Opt
        Case "mod"
            DB.RollbackTrans
        Case "add"
            DB.RollbackTrans
        Case "del"
            DB.RollbackTrans
        Case "fnd"
            DB.RollbackTrans
    End Select
    Screen.MousePointer = 0
    stbar.Panels(2).Text = "Operation Cancelled"
    Opt = " "
    Call query_mode
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(0).SetFocus
    
Case 11
    Unload Me
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Deladd", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DATLAB.Caption = pdate
    Opt = "qry"
    stbar.Panels(1).Text = head
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Deladd", vbInformation, head
End Sub

Public Sub query_mode()
intervalMinutes = -1
On Error GoTo query_mode_Error

    Opt = " "
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT from rm_deladd order by SLCODE", DB, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,STATECODE,COUNTRY,PHONENO,COURIER,DISTRICT,gststatecode,gstinno,PAN from rm_deladd order by SLCODE", DB, adOpenStatic, adLockOptimistic
    
    If adoPrimaryRS.RecordCount > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Records Found"
        MsgBox "No Records Found", vbInformation, head
    End If
    
    Call bindcontls
    Call NEWFORM1(BUTTON, GSNO)
'    If adoPrimaryRS.RecordCount = 0 Then
'        BUTTON(5).Enabled = False
'        BUTTON(6).Enabled = False
'        BUTTON(7).Enabled = False
'        BUTTON(8).Enabled = False
'        stbar.Panels(2).Text = "No Records Found"
'    Else
'        Call FIR(BUTTON)
'    End If
    desc.Caption = "Query"
    Call disablcontls


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Deladd", vbInformation, head
End Sub

Public Sub bindcontls()
On Error Resume Next
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
         Set c.DataSource = adoPrimaryRS
    End If
Next
End Sub
Public Sub disablcontls()
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = True
    End If
Next
Frame1.Enabled = False
End Sub
'---------------------------------------------------------------------------------------
' Procedure : ENABLCONTLS
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error
intervalMinutes = -1
Frame1.Enabled = True
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = False
    End If
Next

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Resize
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_Resize()
On Error GoTo Form_Resize_Error

On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)

Exit Sub
Form_Resize_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Resize of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Lovcancel_Click
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

    stbar.Panels(2).Text = ""
    Buttonframe.Enabled = True
    Frame3.Visible = False
    SSTab1.Visible = True
    Frame1.Enabled = True
    'Command1.Visible = True
    DB.RollbackTrans
    Call query_mode
    BUTTON(0).SetFocus

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub lovok_Click()
    
On Error GoTo lovok_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    Buttonframe.Enabled = True
    Frame3.Visible = False
    SSTab1.Visible = True
    If Opt = "add" Then
        Txtfields(0).Text = ""
        Txtfields(1).Text = ""
        Txtfields(0).Text = Ksldesc1.Code
        Txtfields(1).Text = Ksldesc1.Description
        Txtfields(2).SetFocus
        Exit Sub
    End If
    If Opt = "mod" Then
        Select Case Ksldesc1.listfield1
            
            Case "SLCODE"
                Txtfields(0).Text = Ksldesc1.Code
                Txtfields(1).Text = Ksldesc1.Description
                Txtfields(2).Text = ""
                Txtfields(3).Text = ""
                Txtfields(4).Text = ""
                Txtfields(5).Text = ""
                Txtfields(6).Text = ""
                Txtfields(7).Text = ""
                Txtfields(2).SetFocus
            Case "CNAME"
                Txtfields(2).Text = Ksldesc1.Code
                Set SLC = New Recordset
                SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN FROM rm_deladd WHERE SLCODE='" & Trim(Txtfields(0).Text) & "' AND SLNAME='" & Trim(Txtfields(1).Text) & "' AND CNAME='" & Ksldesc1.Code & "'", DB, adOpenStatic
                Txtfields(2).Text = Ksldesc1.Code
                Txtfields(3).Text = SLC("ADD1")
                Txtfields(4).Text = SLC("ADD2")
                Txtfields(5).Text = SLC("ADD3")
                Txtfields(6).Text = SLC("CITY")
                Txtfields(7).Text = SLC("PIN")
        End Select
    ElseIf Opt = "del" Then
    Select Case Ksldesc1.listfield1
        Case "SLCODE"
            Txtfields(0).Text = Ksldesc1.Code
            Txtfields(1).Text = Ksldesc1.Description
            Txtfields(2).Text = ""
            Txtfields(3).Text = ""
            Txtfields(4).Text = ""
            Txtfields(5).Text = ""
            Txtfields(6).Text = ""
            Txtfields(7).Text = ""
            Call ENABLCONTLS
            Frame3.Visible = False
            SSTab1.Visible = True
            Buttonframe.Enabled = True
            Frame3.Visible = False
            Txtfields(2).SetFocus
         Case "CNAME"
            Txtfields(2).Text = Ksldesc1.Code
            Set SLC = New Recordset
            SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN FROM rm_deladd WHERE SLCODE='" & Trim(Txtfields(0).Text) & "' AND SLNAME='" & Trim(Txtfields(1).Text) & "' AND CNAME='" & Ksldesc1.Code & "'", DB, adOpenStatic
            Txtfields(3).Text = SLC("ADD1")
            Txtfields(4).Text = SLC("ADD2")
            Txtfields(5).Text = SLC("ADD3")
            Txtfields(6).Text = SLC("CITY")
            Txtfields(7).Text = SLC("PIN")
            Call disablcontls
            stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button "
            BUTTON(9).SetFocus
    End Select
    End If


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form Deladd", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : SSTab1_KeyDown
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
intervalMinutes = -1
    Txtfields(9).Text = getMasterName("NAME", "IG_STATE", "STATE_CODE", Txtfields(10).Text)
End Sub

Private Sub txtFields_GotFocus(Index As Integer)

On Error GoTo txtFields_GotFocus_Error

    If Opt = "del" Then
        Select Case Index
        Case 2
            SSTab1.Visible = False
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            listlb.Caption = "Company Name"
            Ksldesc1.conn = connectstring
            Ksldesc1.Table = "rm_deladd WHERE SLNAME='" & Trim(Txtfields(1).Text) & "'"
            Ksldesc1.listfield1 = "CNAME"
            Ksldesc1.listfield2 = "SLNAME"
            Ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Company Name from the List"
        End Select
    End If


If Opt = "add" Or Opt = "mod" Then
    Txtfields(Index).BackColor = &HC0FFC0

    Select Case Index
    Case 0
        stbar.Panels(2).Text = "Enter a maximum of 10 Characters"
    Case 1
        stbar.Panels(2).Text = "Enter a maximum of 40 Characters"
    Case 2
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters"
        If Opt = "mod" Then
'            SSTab1.Visible = False
'            Frame3.Visible = True
'            Frame3.ZOrder
'            Buttonframe.Enabled = False
'            listlb.Caption = "Company Name"
'            Ksldesc1.conn = connectstring
'            Ksldesc1.Table = "rm_deladd WHERE SLNAME='" & Trim(txtfields(1).Text) & "'"
'            Ksldesc1.listfield1 = "CNAME"
'            Ksldesc1.listfield2 = "SLNAME"
'            Ksldesc1.SetFocus
'            stbar.Panels(2).Text = "Select Company Name from the List"
        End If
    Case 3
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters"
    Case 4
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters"
    Case 5
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters"
    Case 7
        stbar.Panels(2).Text = "Enter a maximum of 7 Integers"
    Case 8
        stbar.Panels(2).Text = "Use '/'or ',' while entering more than one Phone Number.Maximum Characters is 25"
    Case 9
        stbar.Panels(2).Text = "Enter a maximum of 10 Characters"
    Case 10
        stbar.Panels(2).Text = "Enter a maximum of 15 Characters"
    Case 8, 12
        stbar.Panels(2).Text = "Enter a maximum of 100 Characters"
    Case 10
        stbar.Panels(2).Text = "Select the Statecode from List"
    Case 11
        stbar.Panels(2).Text = "Enter a maximum of 25 Characters"
    Case 13
        stbar.Panels(2).Text = "Enter a maximum of 50 Characters"

    End Select
End If


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Deladd", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtfields_KeyDown
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)    ''Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
   If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)    ''Modify
   End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)    ''Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)    ''First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)    ''Previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)    ''Last
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_KeyPress
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

Call ToUpCase(Txtfields(Index), KeyAscii)
Select Case Index
Case 1, 2
    If Trim(Txtfields(Index).Text) = "" Then
        Call ToAlpha(Txtfields(Index), KeyAscii)
    Else
        Call ToAlphaNumberName(Txtfields(Index), 50, KeyAscii)
    End If
Case 0
    Call ToAlphaNumber(Txtfields(Index), 3, KeyAscii)
Case 7
    Call ToNumber(Txtfields(Index), KeyAscii)
    If Len(Txtfields(7).Text) = 3 Then
        If KeyAscii <> 8 Then KeyAscii = 32
    End If
Case 11
    Call ToNumPhone(Txtfields(Index), KeyAscii)
    
'08.06
Case 15

'        If Len(txtfields(Index)) <> 15 Then
'        If KeyAscii = vbKeyTab Then
'        MsgBox "GST Number should be of 15 Characters", vbInformation, head
'        txtfields(Index).SetFocus
'
'        Exit Sub
'        End If
'        End If

        If (Len(Txtfields(Index).Text)) < 2 Then
        If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
        If KeyAscii <> 8 Then
            MsgBox "First two characters of GST Number should be numeric", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
        
        
        If (Len(Txtfields(Index).Text)) >= 2 And (Len(Txtfields(Index).Text)) < 7 Then
        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        If KeyAscii <> 8 Then
            MsgBox "Third character to Seventh character of GST Number should be Alphabet", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
        
        If (Len(Txtfields(Index).Text)) >= 7 And (Len(Txtfields(Index).Text)) < 11 Then
        If Not ((KeyAscii >= 48 And KeyAscii <= 57)) Then
        If KeyAscii <> 8 Then
            MsgBox "Eigth character to Eleventh character of GST Number should be Numeric", vbInformation, head
            KeyAscii = 0
        End If
        End If
        End If
        If (Len(Txtfields(Index).Text)) = 11 Then
        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        If KeyAscii <> 8 Then
            KeyAscii = 0
            MsgBox "Twelth character of GST Number should be Alphabet", vbInformation, head
        End If
        End If
        End If
    
    
    
End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Then
    Select Case Index
    Case 0
        If Txtfields(0).Text <> "" Then
            Set Rs = New Recordset
            Rs.Open "select CARRIER_CODE from ig_CARRIER where CARRIER_Code='" & Txtfields(0).Text & "'", DB, adOpenStatic, adLockOptimistic
            If Rs.RecordCount > 0 Then
                MsgBox " The Carrier Code already exists", vbInformation, head
                Txtfields(0).Text = ""
                Txtfields(0).SetFocus
                Exit Sub
            End If
        End If
    End Select
End If
If Opt = "add" Or Opt = "mod" Then
    If Not (Txtfields(Index).Text = "") Then
        Txtfields(Index).Text = UCase(Txtfields(Index).Text)
    End If
    
    Select Case Index
    Case 6
        Call CityLookup
    Case 10
        stbar.Panels(2).Text = "Choose either SAVE or Cancel Button"
'        BUTTON(9).SetFocus
    Case 7
        If val(Txtfields(7).Text) = 0 And Txtfields(7).Text <> "" Then
            MsgBox "Pincode cannot be 0", vbInformation, head
            Txtfields(7).Text = ""
            Txtfields(7).SetFocus
        End If
    End Select
End If

Txtfields(Index).BackColor = vbWhite
Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form Deladd", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
    
    If Index = 15 Then
        If Len(Trim(Txtfields(15).Text)) <> 15 Then
            MsgBox "GST Number Should be 15 Characters!", vbCritical
            Txtfields(15).SetFocus
        End If
    End If
    
    If Left(Txtfields(15), 2) <> Txtfields(14).Text Then
        MsgBox "The first Two digits of GST No. Should be state code...!"
        Txtfields(15).SetFocus
        Exit Sub
     End If
    
    
    Select Case Index
    Case 0
'        If Trim(txtfields(0).Text) = "" Then
'            MsgBox "Carrier Code can't be Empty", vbInformation, head
'            Cancel = True
'            Exit Sub
'        End If
    Case 1
        If Trim(Txtfields(1).Text) = "" Then
            MsgBox "Carrier Name cannot be empty", vbInformation, head
            Cancel = True
            Exit Sub
        End If
    Case 10
    Set rsa = New Recordset
    rsa.Open "select * from ig_state", DB, adOpenStatic
    
    If rsa.RecordCount > 0 Then
            Set rsa = New Recordset
            rsa.Open "select State_code as Code,Name as Name from ig_State where state_code='" & Txtfields(10).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = "select State_code as Code,Name as Name from ig_State "
                LookUp.Caption = "State Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "2000,6000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(10).Text = LookUp.Fields(0)
                    Txtfields(9).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                Else
                   Txtfields(10).Text = ""
                   Txtfields(9).Text = ""
                   Txtfields(10).SetFocus
                End If
            Else
                Txtfields(9).Text = rsa("name")
            End If
    Else
        Txtfields(10).Text = ""
        Txtfields(9).Text = ""
    End If

    End Select
End If
End Sub
'---------------------------------------------------------------------------------------
' Procedure : ToAlphaNumber1
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub ToAlphaNumber1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error GoTo ToAlphaNumber1_Error

If Len(Ofld) < maxlen Then
   If Not ((KeyAscii >= 48 And KeyAscii <= 57) Or _
           KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
           (KeyAscii >= 97 And KeyAscii <= 122) Or _
           KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
           KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9 Or KeyAscii = 46) Then
           KeyAscii = 0
   End If
Else
   If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
End If

Exit Sub
ToAlphaNumber1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToAlphaNumber1 of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : header
' DateTime  : 07/12/2008 14:36
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub header(pg1 As Integer, c As Integer)
On Error GoTo header_Error

    Print #a, Chr(18)
    Print #a, Space(5) & Chr(27) & "E" & CENTRE(divname, 108, " ") & Chr(27) & "F" & Chr(15)
    Str = CStr(pdate) + Space(2)
    Print #a, Space(3) + "DELIVERY ADDRESS LISTING" + Space(115) + "Dt: " & Str + "Pg.:" & Padl(CStr(pg1), 3, " ")
    Print #a, Space(5) + String(160, "-")
    Print #a, Space(5) + "Code        Supplier Name"
    Print #a, Space(5) + "Company Name                   Address1                       Address2                       Address3                       City                         Pincode"
    Print #a, Space(5) + String(160, "-")

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form Deladd", vbInformation, head
Screen.MousePointer = 0
End Sub
Sub CityLookup()
On Error GoTo StateLookup_Error
CITY:
    LookUp.Clear = True
    LookUp.query = "SELECT Area_code ""City Code"", a.NAME""City Name"",B.STATE_CODE as ""State Code"",B.NAME AS State,C.NAME AS Country,isnull(b.gststatecode,'0') [GST State Code] FROM IG_AREA a, IG_STATE B,ig_countRY C WHERE A.STATE_CODE=B.STATE_CODE AND A.COUNTRY_CODE=C.COUNTRY_CODE"
    LookUp.Caption = "State Listing"
    LookUp.DefCol = "Area Name"
    LookUp.ALIGN = "1500,2000,0,2000,2000"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Txtfields(6).Text = LookUp.Fields(1)
        Txtfields(10).Text = LookUp.Fields(2)
        Txtfields(9).Text = LookUp.Fields(3)
        Txtfields(13).Text = LookUp.Fields(4)
        '22.06
        If LookUp.Fields(5) <> 0 Then
            Txtfields(14).Text = LookUp.Fields(5)
            Txtfields(15).Text = LookUp.Fields(5)            'GST No's first two digit no is statecode'
            Txtfields(15).SetFocus
        Else
            MsgBox "The Statecode is not mapped for this place...!"
            Txtfields(14).Text = ""
            Txtfields(15).Text = ""
            Txtfields(10).Text = ""
            Txtfields(6).Text = ""
            Txtfields(6).SetFocus
        Exit Sub
                    
        End If
    
        
        Txtfields(13).Locked = True
        Txtfields(6).Locked = True
        Txtfields(10).Locked = True
        Txtfields(9).Locked = True
        'txtfields(7).SetFocus
        LookUp.Clear = True
    Else
        Txtfields(6).Text = ""
        Txtfields(10).Text = ""
        Txtfields(9).Text = ""
        Txtfields(13).Text = ""
        Txtfields(6).SetFocus
        
    End If


Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub


