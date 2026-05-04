VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form BillAddress 
   Caption         =   "Billing Address"
   ClientHeight    =   8355
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10740
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   8355
   ScaleWidth      =   10740
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CR 
      Left            =   180
      Top             =   3000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   -30
      TabIndex        =   32
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   570
         Index           =   13
         Left            =   5850
         Picture         =   "BillAddress.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":0442
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "BillAddress.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":0AE1
         Height          =   550
         Index           =   6
         Left            =   3225
         Picture         =   "BillAddress.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Next Record(Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":1278
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "BillAddress.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Add(Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":1915
         Height          =   550
         Index           =   5
         Left            =   2685
         Picture         =   "BillAddress.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record(Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":20C4
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
         Picture         =   "BillAddress.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Delete(Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":276A
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "BillAddress.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Modify(Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "BillAddress.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "List(Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":3185
         Height          =   550
         Index           =   7
         Left            =   3750
         Picture         =   "BillAddress.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record(Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":391F
         Height          =   550
         Index           =   11
         Left            =   6360
         Picture         =   "BillAddress.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit(Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":40FE
         Height          =   550
         Index           =   9
         Left            =   4800
         Picture         =   "BillAddress.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save(Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "BillAddress.frx":47AA
         Height          =   550
         Index           =   10
         Left            =   5325
         Picture         =   "BillAddress.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "BillAddress.frx":4E30
         Height          =   550
         Index           =   8
         Left            =   4275
         Picture         =   "BillAddress.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record(Ctrl Right)"
         Top             =   120
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   9330
         TabIndex        =   34
         Top             =   270
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Query"
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
         Left            =   7350
         TabIndex        =   33
         Top             =   270
         Width           =   615
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
      ScaleWidth      =   10740
      TabIndex        =   31
      Top             =   7755
      Width           =   10740
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   35
      Top             =   8055
      Width           =   10740
      _ExtentX        =   18944
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
            TextSave        =   "16/04/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "05:25 PM"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   5025
      Left            =   900
      TabIndex        =   6
      Top             =   1305
      Width           =   7770
      _ExtentX        =   13705
      _ExtentY        =   8864
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "BillAddress.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4785
         Left            =   150
         TabIndex        =   0
         Top             =   90
         Width           =   7485
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "GSTINNO"
            Height          =   330
            Index           =   15
            Left            =   1350
            MaxLength       =   25
            TabIndex        =   53
            Top             =   3920
            Width           =   2700
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAN"
            Height          =   330
            Index           =   14
            Left            =   4920
            MaxLength       =   25
            TabIndex        =   52
            Top             =   3920
            Width           =   2370
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PhoneNo"
            Height          =   330
            Index           =   11
            Left            =   4920
            MaxLength       =   25
            TabIndex        =   24
            Top             =   3510
            Width           =   2370
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "Courier"
            Height          =   330
            Index           =   12
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   25
            Top             =   4290
            Width           =   5925
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "Country"
            Height          =   330
            Index           =   13
            Left            =   1350
            MaxLength       =   25
            TabIndex        =   23
            Top             =   3540
            Width           =   2700
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "StateCode"
            Height          =   330
            Index           =   10
            Left            =   1350
            MaxLength       =   10
            TabIndex        =   21
            Top             =   3120
            Width           =   990
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            Height          =   330
            Index           =   9
            Left            =   2415
            MaxLength       =   40
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   3120
            Width           =   4875
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "District"
            Height          =   330
            Index           =   8
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   20
            Top             =   2730
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   15
            Top             =   1080
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
            Height          =   330
            Index           =   7
            Left            =   4920
            MaxLength       =   7
            TabIndex        =   19
            Top             =   2325
            Width           =   2385
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
            Height          =   330
            Index           =   6
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   18
            Top             =   2325
            Width           =   2670
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   330
            Index           =   4
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   16
            Top             =   1485
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   5
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   17
            Top             =   1905
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H80000004&
            DataField       =   "SLNAME"
            Height          =   330
            Index           =   1
            Left            =   2400
            MaxLength       =   40
            TabIndex        =   13
            TabStop         =   0   'False
            Top             =   270
            Width           =   4905
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CNAME"
            Height          =   330
            Index           =   2
            Left            =   1350
            MaxLength       =   30
            TabIndex        =   14
            Top             =   675
            Width           =   5970
         End
         Begin VB.TextBox TXTFIELDS 
            BackColor       =   &H00E0E0E0&
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   0
            Left            =   1350
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   12
            Top             =   270
            Width           =   990
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "GSTIN No."
            Height          =   195
            Left            =   480
            TabIndex        =   55
            Top             =   3960
            Width           =   795
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "PAN"
            Height          =   195
            Left            =   4470
            TabIndex        =   54
            Top             =   3930
            Width           =   330
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Line 3"
            Height          =   315
            Left            =   525
            TabIndex        =   51
            Top             =   1920
            Width           =   645
         End
         Begin VB.Label Label3 
            Alignment       =   1  'Right Justify
            Caption         =   "Line 2"
            Height          =   255
            Left            =   645
            TabIndex        =   50
            Top             =   1560
            Width           =   525
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Phone No."
            Height          =   195
            Left            =   4110
            TabIndex        =   48
            Top             =   3600
            Width           =   765
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Courier Through"
            Height          =   195
            Left            =   30
            TabIndex        =   47
            Top             =   4380
            Width           =   1140
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   195
            Left            =   630
            TabIndex        =   46
            Top             =   3630
            Width           =   540
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   195
            Index           =   5
            Left            =   795
            TabIndex        =   45
            Top             =   3195
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "District"
            Height          =   195
            Index           =   4
            Left            =   690
            TabIndex        =   44
            Top             =   2820
            Width           =   480
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Address Line 1"
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   30
            Top             =   1185
            Width           =   1050
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   195
            Index           =   6
            Left            =   4110
            TabIndex        =   29
            Top             =   2400
            Width           =   585
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Company Name"
            ForeColor       =   &H8000000D&
            Height          =   195
            Index           =   3
            Left            =   45
            TabIndex        =   28
            Top             =   720
            Width           =   1125
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
            TabIndex        =   27
            Top             =   2370
            Width           =   255
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
            TabIndex        =   26
            Top             =   315
            Width           =   375
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4830
      Left            =   840
      TabIndex        =   36
      Top             =   1440
      Visible         =   0   'False
      Width           =   7530
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3285
         Left            =   120
         TabIndex        =   39
         Top             =   -60
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5794
         ForeColor       =   -2147483635
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "BillAddress.frx":55F8
         Height          =   660
         Left            =   2355
         Picture         =   "BillAddress.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   38
         Top             =   3975
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "BillAddress.frx":5DA4
         Height          =   660
         Left            =   4050
         Picture         =   "BillAddress.frx":6186
         Style           =   1  'Graphical
         TabIndex        =   37
         Top             =   3975
         Width           =   1185
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
         TabIndex        =   40
         Top             =   120
         Width           =   7725
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Billing Address"
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
      Left            =   960
      TabIndex        =   41
      Top             =   915
      Width           =   1965
   End
End
Attribute VB_Name = "BillAddress"
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
Dim rsa As New Recordset
Public type1 As String
Dim rsCommand1 As Recordset
Dim pg1 As Integer
Dim a As Integer
Dim co As Integer

'---------------------------------------------------------------------------------------
' Procedure : adoPrimaryRS_MoveComplete
' DateTime  : 07/12/2008 14:25
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

intervalMinutes = -1

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index


Case 13
  Dim clsCryRptBilladd As New clsCrystal
  Set clsCryRptBilladd.cryRept = Cry_Setup_BillingAdd
  clsCryRptBilladd.CrystalPrint
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


'    Set rs3 = New Recordset
'    rs3.Open "select * from pp_divmas", DB, adOpenDynamic, adLockOptimistic
'    With CR
'    .Reset
'    CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\BillingAddress.rpt"
'    CR.Formulas(0) = "divname = '" & divname & "'"
'    CR.WindowState = crptMaximized
'    SendKeys "{enter}"
'    CR.Action = True
'    CR.PrinterCopies = 1
'    End With

Case 0
    Opt = "add"
    Desc.Caption = "Addition"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN, District,Courier,PhoneNo, Country, Statecode,GSTINNO,PAN from rm_billadd where 1=2", DB, adOpenStatic, adLockOptimistic
    Call ENABLCONTLS
    Call bindcontls
    txtfields(7).Text = ""
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    txtfields(0).SetFocus
    
    Desc.Caption = "Addition"
    'Screen.MousePointer = 11
       
    ''listlb.Caption = "Supplier Code Selection"
    ''ksldesc1.conn = connectstring
    ''ksldesc1.table = "fa_slmas"
    ''ksldesc1.listfield1 = "slcode"
    ''ksldesc1.listfield2 = "slname"
    ''ksldesc1.SetFocuss
'    Set Rs = New Recordset
'    Rs.Open "Select ptypecotton from masterlen", DB, adOpenStatic
'    PartyType = Rs("ptypecotton") & "%"
'    LookUp.clear = True
'    LookUp.Query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from fa_slmas WHERE SLCODE NOT IN (SELECT SLCODE FROM rm_billadd)  and slcode like '" & PartyType & "'"
'    LookUp.Caption = "Address Listing"
'    LookUp.DefCol = "Supplier Name"
'    LookUp.ALIGN = "2500,2500"
'    LookUp.Show vbModal
'    If LookUp.Cancel = False Then
'        txtFields(0).Text = ""
'        txtFields(1).Text = ""
'        txtFields(0).Text = LookUp.Fields(0)
'        txtFields(1).Text = LookUp.Fields(1)
'        LookUp.clear = True
        txtfields(1).SetFocus
'    Else
'        Call BUTTON_Click(10)
'        Exit Sub
'    End If
    stbar.Panels(2).Text = "Enter the Billing Address Name"
    'Screen.MousePointer = 0
Case 1
    ' Modification
    If Record_Exists("rm_billadd") = False Then Exit Sub
    Opt = "mod"
    Desc.Caption = "Modification"
    'Screen.MousePointer = 11
   
    DB.BeginTrans
''    SSTab1.Visible = False
''    Frame3.Visible = True
''    Frame3.ZOrder
''    Buttonframe.Enabled = False
''    listlb.Caption = "Carrier"
''    ksldesc1.conn = connectstring
''    ksldesc1.table = "rm_billadd"
''    ksldesc1.listfield1 = "SLCODE"
''    ksldesc1.listfield2 = "SLNAME"
''    ksldesc1.SetFocus
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Address Code"",slname""Address Name"" from rm_billadd"
    LookUp.Caption = "Billing Address Listing"
    LookUp.DefCol = "Address Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,Statecode,Country,Phoneno,District,Courier,GSTINNO,PAN FROM rm_billadd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        txtfields(0).Text = SLC("SLCODE")
        txtfields(1).Text = SLC("SLNAME")
        txtfields(2).Text = SLC("CNAME")
        txtfields(3).Text = SLC("ADD1")
        txtfields(4).Text = SLC("ADD2")
        txtfields(5).Text = SLC("ADD3")
        txtfields(6).Text = SLC("CITY")
        txtfields(7).Text = SLC("PIN")
        txtfields(8).Text = IIf(IsNull(SLC("District")), "", SLC("District"))
        txtfields(10).Text = IIf(IsNull(SLC("Statecode")), "", SLC("Statecode"))
        txtfields(11).Text = IIf(IsNull(SLC("Phoneno")), "", SLC("Phoneno"))
        txtfields(12).Text = IIf(IsNull(SLC("Courier")), "", SLC("Courier"))
        txtfields(13).Text = IIf(IsNull(SLC("Country")), "", SLC("Country"))
        txtfields(14).Text = IIf(IsNull(SLC("PAN")), "", SLC("PAN"))
        txtfields(15).Text = IIf(IsNull(SLC("GSTINNO")), "", SLC("GSTINNO"))
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    txtfields(0).Locked = True
    txtfields(1).Locked = True
    txtfields(2).SetFocus
    'Screen.MousePointer = 0

Case 2
    'Deletion
    If Record_Exists("rm_billadd where slcode in (select distinct billadd from rm_cont where billadd is not null)") = True Then Exit Sub
    Opt = "del"
    Desc.Caption = "Deletion"
    'Screen.MousePointer = 11
''    SSTab1.Visible = False
''    Frame3.Visible = True
''    Frame3.ZOrder
''    Buttonframe.Enabled = False
''    listlb.Caption = "Carrier"
''    ksldesc1.conn = connectstring
''    ksldesc1.table = "rm_billadd"
''    ksldesc1.listfield1 = "SLCODE"
''    ksldesc1.listfield2 = "SLNAME"
''    ksldesc1.SetFocus
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Address Code"",slname""Address Name"" from rm_billadd"
    'LookUp.Query = "SELECT slcode""Code"",slname""Name"" from rm_billadd  where slcode in (select distinct billadd from rm_cont where billadd is not null)"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Address Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,Country,StateCode, Phoneno, Courier, District,GSTINNO,PAN FROM rm_billadd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        txtfields(0).Text = SLC("SLCODE")
        txtfields(1).Text = SLC("SLNAME")
        txtfields(2).Text = SLC("CNAME")
        txtfields(3).Text = SLC("ADD1")
        txtfields(4).Text = SLC("ADD2")
        txtfields(5).Text = SLC("ADD3")
        txtfields(6).Text = SLC("CITY")
        txtfields(7).Text = SLC("PIN")
        txtfields(8).Text = SLC("District")
        txtfields(10).Text = SLC("Statecode")
        txtfields(11).Text = SLC("Phoneno")
        txtfields(12).Text = SLC("Courier")
        txtfields(13).Text = SLC("Country")
        txtfields(14).Text = IIf(IsNull(SLC("PAN")), "", SLC("PAN"))
        txtfields(15).Text = IIf(IsNull(SLC("GSTINNO")), "", SLC("GSTINNO"))

    Else
            Call BUTTON_Click(10)
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    'Screen.MousePointer = 0
Case 4
    'Find
    If Record_Exists("rm_billadd where slcode in (select distinct billadd from rm_cont where billadd is not null)") = False Then Exit Sub
    Opt = "fnd"
    Desc.Caption = "Find"
    DB.BeginTrans
    LookUp.Clear = True
    LookUp.query = "SELECT slcode""Supplier Code"",slname""Supplier Name"" from rm_billadd"
    'LookUp.Query = "SELECT slcode""Code"",slname""Name"" from rm_billadd  where slcode in (select distinct billadd from rm_cont where billadd is not null)"
    LookUp.Caption = "Address Listing"
    LookUp.DefCol = "Supplier Name"
    LookUp.ALIGN = "2500,2500"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Set SLC = New Recordset
        SLC.Open "SELECT SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,District, StateCode, PhoneNo,Courier,Country,GSTINNO,PAN FROM rm_billadd WHERE SLCODE='" & Trim(LookUp.Fields(0)) & "' AND SLNAME='" & Trim(LookUp.Fields(1)) & "'", DB, adOpenStatic
        txtfields(0).Text = SLC("SLCODE")
        txtfields(1).Text = SLC("SLNAME")
        txtfields(2).Text = SLC("CNAME")
        txtfields(3).Text = SLC("ADD1")
        txtfields(4).Text = SLC("ADD2")
        txtfields(5).Text = SLC("ADD3")
        txtfields(6).Text = SLC("CITY")
        txtfields(7).Text = SLC("PIN")
        txtfields(8).Text = SLC("District")
        txtfields(10).Text = SLC("Statecode")
        txtfields(11).Text = SLC("Phoneno")
        txtfields(12).Text = SLC("Courier")
        txtfields(13).Text = SLC("Country")
        txtfields(14).Text = IIf(IsNull(SLC("PAN")), "", SLC("PAN"))
        txtfields(15).Text = IIf(IsNull(SLC("GSTINNO")), "", SLC("GSTINNO"))

    Else
            Call BUTTON_Click(10)
            Exit Sub
    End If
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    'Screen.MousePointer = 0

Case 3
    'Listing
'    Set Rep = New Report.ReportView
'    a = FreeFile
'    pg1 = 1
'    Co = 0
'    'Open "c:\DELADD.txt" For Output As #a
'     Open KALFOLDERDATA & "\DELADD.TXT" For Output As #a
'    Call header(pg1, Co)
'    Set Rs = New Recordset
'    Rs.Open "select SLCODE,SLNAME from rm_billadd ", DB, adOpenStatic, adLockOptimistic
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
'        rss.Open "select cname,add1,add2,add3,city,pin from rm_billadd where slcode='" & Rs(0) & "' and slname='" & Rs(1) & "'", DB, adOpenStatic
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
'    Call KALBATPROCESS("DELADD")
Dim clsCryRptBill As New clsCrystal
  Set clsCryRptBill.cryRept = Cry_SetupBill
  clsCryRptBill.CrystalPrint
                
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
    Desc.Caption = "Query"
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
    Desc.Caption = "Query"
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
    Desc.Caption = "Query"
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
    Desc.Caption = "Query"
    On Error GoTo GoLastError
    adoPrimaryRS.MoveLast
    Call las(BUTTON)
    Exit Sub
GoLastError:
           
   
Case 9
    'Save
    If Opt = "add" Or Opt = "mod" Then
'        If Trim(txtFields(0).Text) = "" Then
'            MsgBox "Code can't be Empty", vbInformation, head
'            txtFields(0).SetFocus
'            Exit Sub
'        End If
        If Trim(txtfields(1).Text) = "" Then
            MsgBox "Please Enter the Billing Address Name", vbInformation, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        
        If Trim(txtfields(6).Text) = "" Then
            MsgBox "Please Enter the Billing Address City Name", vbInformation, head
            txtfields(6).SetFocus
            Exit Sub
        End If
        
    End If
    On Error GoTo saveerror
    Screen.MousePointer = 11
    If Opt = "add" Then
        Set rs1 = New Recordset
        rs1.Open "SELECT isnull(max(slcode),0)+1  AS code FROM RM_BILLADD", DB, adOpenStatic
         
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("SLCODE") = rs1("Code")
            adoPrimaryRS("SLNAME") = txtfields(1).Text
            adoPrimaryRS("CNAME") = txtfields(2).Text
            adoPrimaryRS("ADD1") = txtfields(3).Text
            adoPrimaryRS("ADD2") = txtfields(4).Text
            adoPrimaryRS("ADD3") = txtfields(5).Text
            adoPrimaryRS("CITY") = txtfields(6).Text
            adoPrimaryRS("PIN") = txtfields(7).Text
            adoPrimaryRS("District") = txtfields(8).Text
            adoPrimaryRS("Statecode") = txtfields(10).Text
            adoPrimaryRS("Phoneno") = txtfields(11).Text
            adoPrimaryRS("Courier") = txtfields(12).Text
            adoPrimaryRS("Country") = txtfields(13).Text
            adoPrimaryRS("PAN") = txtfields(14).Text
            adoPrimaryRS("GSTINNO") = txtfields(15).Text

            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Billing Address"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = adoPrimaryRS("SLCODE")
            TrnLog("description") = txtfields(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
            adoPrimaryRS.MoveNext
            
            
        Loop
        
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record(s) Saved", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Saved"
        Call query_mode
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "mod" Then
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("SLCODE") = txtfields(0).Text
            adoPrimaryRS("SLNAME") = txtfields(1).Text
            adoPrimaryRS("CNAME") = txtfields(2).Text
            adoPrimaryRS("ADD1") = txtfields(3).Text
            adoPrimaryRS("ADD2") = txtfields(4).Text
            adoPrimaryRS("ADD3") = txtfields(5).Text
            adoPrimaryRS("CITY") = txtfields(6).Text
            adoPrimaryRS("PIN") = txtfields(7).Text
            adoPrimaryRS("District") = txtfields(8).Text
            adoPrimaryRS("Statecode") = txtfields(10).Text
            adoPrimaryRS("Phoneno") = txtfields(11).Text
            adoPrimaryRS("Courier") = txtfields(12).Text
            adoPrimaryRS("Country") = txtfields(13).Text
            adoPrimaryRS("PAN") = txtfields(14).Text
            adoPrimaryRS("GSTINNO") = txtfields(15).Text
  
            
            adoPrimaryRS.MoveNext
        Loop
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Billing Address"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = txtfields(0).Text
            TrnLog("description") = txtfields(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox "Record(s) Modified", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Modified"
        Call query_mode
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "del" Then
        On Error GoTo delerror
        a = MsgBox("Do you want to delete this Record?", vbYesNo, head)
        If a = 6 Then
            DB.Execute ("delete from rm_billadd where slcode='" + txtfields(0).Text + "' and slname='" + txtfields(1).Text + "' and cname='" + txtfields(2).Text + "'")
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Billing Address"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
            TrnLog("code") = txtfields(0).Text
            TrnLog("description") = txtfields(2).Text
            TrnLog.UpdateBatch adAffectAllChapters
            
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record(s) Deleted", vbInformation, head
            stbar.Panels(2).Text = "Record(s) Deleted"
            Call query_mode
            BUTTON(0).SetFocus
            Exit Sub
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
            Call query_mode
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
        BUTTON(0).SetFocus
        Exit Sub
    ElseIf Opt = "mod" Then
        MsgBox "Error during Modification", vbInformation, head
        Screen.MousePointer = 0
        DB.RollbackTrans
        Call query_mode
        BUTTON(0).SetFocus
        Exit Sub
    End If
        
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    'CANCEL
    On Error Resume Next
    Desc.Caption = "Query"
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form BillAddress", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : BUTTON_KeyDown
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0

End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_KeyDown
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DATLAB.Caption = pdate
    Opt = "qry"
    stbar.Panels(1).Text = head
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form BillAddress", vbInformation, head
End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error

    Opt = " "
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,Statecode, Country, Phoneno,District,Courier,GSTINNO,PAN from rm_billadd order by SLCODE", DB, adOpenStatic, adLockOptimistic
    
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
    Call NEWFORM1(BUTTON, GSNO)
    Desc.Caption = "Query"
    Call disablcontls


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form BillAddress", vbInformation, head
End Sub

Public Sub bindcontls()
On Error Resume Next
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
         Set c.DataSource = adoPrimaryRS
    End If
Next
End Sub
'---------------------------------------------------------------------------------------
' Procedure : disablcontls
' DateTime  : 07/12/2008 14:25
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub disablcontls()
On Error GoTo disablcontls_Error

For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = True
    End If
Next
Frame1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ENABLCONTLS()
Frame1.Enabled = True
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = False
    End If
Next
End Sub
'
'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Lovcancel_Click
' DateTime  : 07/12/2008 14:25
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form BillAddress", vbInformation, head
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
        txtfields(0).Text = ""
        txtfields(1).Text = ""
        txtfields(0).Text = Ksldesc1.Code
        txtfields(1).Text = Ksldesc1.Description
        txtfields(2).SetFocus
        Exit Sub
    End If
    If Opt = "mod" Then
        Select Case Ksldesc1.listfield1
            
            Case "SLCODE"
                txtfields(0).Text = Ksldesc1.Code
                txtfields(1).Text = Ksldesc1.Description
                txtfields(2).Text = ""
                txtfields(3).Text = ""
                txtfields(4).Text = ""
                txtfields(5).Text = ""
                txtfields(6).Text = ""
                txtfields(7).Text = ""
                txtfields(2).SetFocus
            Case "CNAME"
                txtfields(2).Text = Ksldesc1.Code
                Set SLC = New Recordset
                SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN FROM rm_billadd WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND SLNAME='" & Trim(txtfields(1).Text) & "' AND CNAME='" & Ksldesc1.Code & "'", DB, adOpenStatic
                txtfields(2).Text = Ksldesc1.Code
                txtfields(3).Text = SLC("ADD1")
                txtfields(4).Text = SLC("ADD2")
                txtfields(5).Text = SLC("ADD3")
                txtfields(6).Text = SLC("CITY")
                txtfields(7).Text = SLC("PIN")
        End Select
    ElseIf Opt = "del" Then
    Select Case Ksldesc1.listfield1
        Case "SLCODE"
            txtfields(0).Text = Ksldesc1.Code
            txtfields(1).Text = Ksldesc1.Description
            txtfields(2).Text = ""
            txtfields(3).Text = ""
            txtfields(4).Text = ""
            txtfields(5).Text = ""
            txtfields(6).Text = ""
            txtfields(7).Text = ""
            Call ENABLCONTLS
            Frame3.Visible = False
            SSTab1.Visible = True
            Buttonframe.Enabled = True
            Frame3.Visible = False
            txtfields(2).SetFocus
         Case "CNAME"
            txtfields(2).Text = Ksldesc1.Code
            Set SLC = New Recordset
            SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN FROM rm_billadd WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND SLNAME='" & Trim(txtfields(1).Text) & "' AND CNAME='" & Ksldesc1.Code & "'", DB, adOpenStatic
            txtfields(3).Text = SLC("ADD1")
            txtfields(4).Text = SLC("ADD2")
            txtfields(5).Text = SLC("ADD3")
            txtfields(6).Text = SLC("CITY")
            txtfields(7).Text = SLC("PIN")
            Call disablcontls
            stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button "
            BUTTON(9).SetFocus
    End Select
    End If


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form BillAddress", vbInformation, head
End Sub

'---------------------------------------------------------------------------------------
' Procedure : SSTab1_KeyDown
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error
intervalMinutes = -1
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
    txtfields(9).Text = getMasterName("Name", "ig_State", "state_code", txtfields(10).Text)
    intervalMinutes = -1
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
intervalMinutes = -1
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
            Ksldesc1.Table = "rm_billadd WHERE SLNAME='" & Trim(txtfields(1).Text) & "'"
            Ksldesc1.listfield1 = "CNAME"
            Ksldesc1.listfield2 = "SLNAME"
            Ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Company Name from the List"
        End Select
    End If


If Opt = "add" Or Opt = "mod" Then
    txtfields(Index).BackColor = &HC0FFC0
    Select Case Index
    Case 0
        stbar.Panels(2).Text = "Enter a maximum of 10 Characters"
    Case 1
        stbar.Panels(2).Text = "Enter a maximum of 40 Characters"
    Case 2
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters"
'        If Opt = "mod" Then
'            SSTab1.Visible = False
'            Frame3.Visible = True
'            Frame3.ZOrder
'            Buttonframe.Enabled = False
'            listlb.Caption = "Company Name"
'            Ksldesc1.conn = connectstring
'            Ksldesc1.Table = "rm_billadd WHERE SLNAME='" & Trim(txtfields(1).Text) & "'"
'            Ksldesc1.listfield1 = "CNAME"
'            Ksldesc1.listfield2 = "SLNAME"
'            Ksldesc1.SetFocus
'            stbar.Panels(2).Text = "Select Company Name from the List"
'        End If
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
        
'    Case 2

    End Select
End If


Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form BillAddress", vbInformation, head
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0) 'Add
    End If
ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1) 'modify
    End If
ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2) ' Delete
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3) ' List
    End If
ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)    ''Find
    End If
ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5) 'First
    End If
ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6) 'next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7) 'previous
    End If
ElseIf KeyCode = vbKeyRight And Shift = 2 Then
    If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8) 'last
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9) 'Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10) 'Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11) 'exit
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtFields_KeyPress
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error
intervalMinutes = -1
Call ToUpCase(txtfields(Index), KeyAscii)
Select Case Index
Case 1, 2
    If Trim(txtfields(Index).Text) = "" Then
        Call ToAlphaOnly(txtfields(Index), KeyAscii)
    Else
        Call ToAlphaNumberName(txtfields(Index), 50, KeyAscii)
    End If
Case 0
    Call ToAlphaNumber(txtfields(Index), 3, KeyAscii)
    If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
        KeyAscii = 0
    End If
Case 7
    Call ToNumber(txtfields(Index), KeyAscii)
    If Len(txtfields(7).Text) = 3 Then
        If KeyAscii <> 8 Then KeyAscii = 32
    End If
Case 11
    Call ToNumPhone(txtfields(Index), KeyAscii)
End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Then
    Select Case Index
    
    
    Case 0
        If txtfields(0).Text <> "" Then
            Set Rs = New Recordset
            Rs.Open "select CARRIER_CODE from ig_CARRIER where CARRIER_Code='" & txtfields(0).Text & "'", DB, adOpenStatic, adLockOptimistic
            If Rs.RecordCount > 0 Then
                MsgBox " The Carrier Code already exists", vbInformation, head
                txtfields(0).Text = ""
                txtfields(0).SetFocus
                Exit Sub
            End If
        End If
    End Select
End If
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 1
        If Trim(txtfields(Index).Text) = "" Then
            MsgBox "Please enter the Billing Address Name", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        End If
    Case 6
'        If Trim(txtFields(Index).Text) = "" Then
            Call CityLookup
'        End If
    Case 2
        If Trim(txtfields(Index).Text) = "" Then
            MsgBox "Please enter the Billing Address Company Name", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        End If

    Case 10
        stbar.Panels(2).Text = "Choose either SAVE or Cancel Button"
'        BUTTON(9).SetFocus
    End Select
End If
If Opt = "add" Or Opt = "mod" Then
    If val(txtfields(7).Text) = 0 And txtfields(7).Text <> "" Then
        MsgBox "Please Enter the valid Pincode", vbInformation, head
        txtfields(7).Text = ""
        txtfields(7).SetFocus
    End If
End If
    txtfields(Index).BackColor = vbWhite


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form BillAddress", vbInformation, head
End Sub
'---------------------------------------------------------------------------------------
' Procedure : Txtfields_Validate
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    Case 6
       ' Call CityLookup
    Case 10
    Set rsa = New Recordset
    rsa.Open "select * from ig_state", DB, adOpenStatic
    
    If rsa.RecordCount > 0 Then
            Set rsa = New Recordset
            rsa.Open "select State_code as Code,Name as Name from ig_State where state_code='" & txtfields(10).Text & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = "select State_code as Code,Name as Name from ig_State "
                LookUp.Caption = "State Listing"
                LookUp.DefCol = "Name"
                LookUp.ALIGN = "2000,6000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(10).Text = LookUp.Fields(0)
                    txtfields(9).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                Else
                   txtfields(10).Text = ""
                   txtfields(9).Text = ""
                   txtfields(10).SetFocus
                End If
            Else
                txtfields(9).Text = rsa("name")
            End If
    Else
        txtfields(10).Text = ""
        txtfields(9).Text = ""
    End If



    
    End Select
End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : ToAlphaNumber1
' DateTime  : 07/12/2008 14:26
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToAlphaNumber1 of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub
'---------------------------------------------------------------------------------------
' Procedure : header
' DateTime  : 07/12/2008 14:26
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Public Sub header(pg1 As Integer, c As Integer)
On Error GoTo header_Error

    Print #a, Chr(18)
    Print #a, Space(5) & Chr(27) & "E" & CENTRE(divname, 108, " ") & Chr(27) & "F" & Chr(15)
    Str = CStr(pdate) + Space(2)
    Print #a, Space(3) + "Billing ADDRESS LISTING" + Space(115) + "Dt: " & Str + "Pg.:" & Padl(CStr(pg1), 3, " ")
    Print #a, Space(5) + String(160, "-")
    Print #a, Space(5) + "Code        Supplier Name"
    Print #a, Space(5) + "Company Name                   Address1                       Address2                       Address3                       City                         Pincode"
    Print #a, Space(5) + String(160, "-")

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form BillAddress", vbInformation, head
Screen.MousePointer = 0
End Sub

Sub CityLookup()
On Error GoTo StateLookup_Error
CITY:
    LookUp.Clear = True
    LookUp.query = "SELECT Area_code ""City Code"", a.NAME""City Name"",B.STATE_CODE as ""State Code"",B.NAME AS State,C.NAME AS Country FROM IG_AREA a, IG_STATE B,ig_countRY C WHERE A.STATE_CODE=B.STATE_CODE AND A.COUNTRY_CODE=C.COUNTRY_CODE"
    LookUp.Caption = "State Listing"
    LookUp.DefCol = "Area Name"
    LookUp.ALIGN = "1500,2000,0,2000,2000"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(6).Text = LookUp.Fields(1)
        txtfields(10).Text = LookUp.Fields(2)
        txtfields(9).Text = LookUp.Fields(3)
        txtfields(13).Text = LookUp.Fields(4)
        txtfields(13).Locked = True
        txtfields(6).Locked = True
        txtfields(10).Locked = True
        txtfields(9).Locked = True
        txtfields(7).SetFocus
        LookUp.Clear = True
    Else
        txtfields(6).Text = ""
        txtfields(10).Text = ""
        txtfields(9).Text = ""
        txtfields(13).Text = ""
        txtfields(6).SetFocus
        
    End If


Exit Sub
StateLookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StateLookup of Form slmaster", vbInformation, head
End Sub

