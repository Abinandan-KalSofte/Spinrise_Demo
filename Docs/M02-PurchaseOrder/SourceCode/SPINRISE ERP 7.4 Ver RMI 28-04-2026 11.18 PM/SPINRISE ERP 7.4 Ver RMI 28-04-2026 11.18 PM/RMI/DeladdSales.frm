VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Begin VB.Form DeladdSales 
   Caption         =   "Sales Delivery Address"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.TextBox TXTFIELDS 
      DataField       =   "gstinno"
      Height          =   345
      Index           =   14
      Left            =   6120
      MaxLength       =   15
      TabIndex        =   20
      Top             =   4845
      Width           =   2445
   End
   Begin VB.TextBox TXTFIELDS 
      Enabled         =   0   'False
      Height          =   345
      Index           =   13
      Left            =   3120
      TabIndex        =   44
      Top             =   4455
      Width           =   2955
   End
   Begin VB.TextBox TXTFIELDS 
      DataField       =   "gststatecode"
      Enabled         =   0   'False
      Height          =   345
      Index           =   12
      Left            =   3120
      TabIndex        =   43
      Top             =   4845
      Width           =   1725
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4770
      Left            =   1440
      TabIndex        =   28
      Top             =   1560
      Width           =   7785
      _ExtentX        =   13732
      _ExtentY        =   8414
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "DeladdSales.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4560
         Left            =   120
         TabIndex        =   29
         Top             =   120
         Width           =   7485
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PAN"
            Height          =   345
            Index           =   11
            Left            =   5400
            MaxLength       =   15
            TabIndex        =   51
            Top             =   3600
            Width           =   1605
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CSTNO"
            Height          =   330
            Index           =   10
            Left            =   1560
            MaxLength       =   15
            TabIndex        =   22
            Top             =   3960
            Visible         =   0   'False
            Width           =   2955
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "Phone"
            Height          =   330
            Index           =   9
            Left            =   1560
            MaxLength       =   15
            TabIndex        =   21
            Top             =   3555
            Width           =   2955
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "delcode"
            Height          =   330
            Index           =   8
            Left            =   1560
            MaxLength       =   10
            TabIndex        =   40
            Top             =   742
            Width           =   990
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLCODE"
            Height          =   330
            Index           =   0
            Left            =   1560
            MaxLength       =   10
            TabIndex        =   12
            Top             =   337
            Width           =   990
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CNAME"
            Height          =   330
            Index           =   2
            Left            =   2580
            MaxLength       =   30
            TabIndex        =   13
            Top             =   742
            Width           =   4425
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "SLNAME"
            Enabled         =   0   'False
            Height          =   330
            Index           =   1
            Left            =   2610
            MaxLength       =   50
            TabIndex        =   39
            Top             =   330
            Width           =   4395
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD3"
            Height          =   330
            Index           =   5
            Left            =   1560
            MaxLength       =   40
            TabIndex        =   17
            Top             =   1995
            Width           =   5445
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD2"
            Height          =   345
            Index           =   4
            Left            =   1560
            MaxLength       =   40
            TabIndex        =   16
            Top             =   1575
            Width           =   5445
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "CITY"
            Height          =   330
            Index           =   6
            Left            =   1560
            MaxLength       =   30
            TabIndex        =   19
            Top             =   2422
            Width           =   2955
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "PIN"
            Height          =   330
            Index           =   7
            Left            =   5400
            MaxLength       =   7
            TabIndex        =   23
            Top             =   2422
            Width           =   1605
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "ADD1"
            Height          =   330
            Index           =   3
            Left            =   1560
            MaxLength       =   40
            TabIndex        =   15
            Top             =   1177
            Width           =   5445
         End
         Begin VB.Label Label8 
            Caption         =   "PAN"
            ForeColor       =   &H00FF0000&
            Height          =   255
            Left            =   4680
            TabIndex        =   52
            Top             =   3675
            Width           =   735
         End
         Begin VB.Label Label7 
            Caption         =   "State"
            ForeColor       =   &H00FF0000&
            Height          =   255
            Left            =   255
            TabIndex        =   50
            Top             =   2835
            Width           =   1095
         End
         Begin VB.Label Label6 
            Caption         =   "GST Number"
            ForeColor       =   &H00FF0000&
            Height          =   330
            Left            =   3480
            TabIndex        =   49
            Top             =   3240
            Width           =   930
         End
         Begin VB.Label Label5 
            Caption         =   "GST StateCode"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   255
            TabIndex        =   48
            Top             =   3225
            Width           =   1290
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "C.S.T No."
            Height          =   195
            Index           =   5
            Left            =   255
            TabIndex        =   42
            Top             =   4005
            Visible         =   0   'False
            Width           =   705
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Phone"
            Height          =   195
            Index           =   4
            Left            =   255
            TabIndex        =   41
            Top             =   3630
            Width           =   465
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Code"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   14
            Top             =   405
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Area/Place"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   38
            Top             =   2490
            Width           =   810
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Company Name"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   3
            Left            =   240
            TabIndex        =   37
            Top             =   810
            Width           =   1125
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Pincode"
            Height          =   195
            Index           =   6
            Left            =   4620
            TabIndex        =   36
            Top             =   2490
            Width           =   585
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Address"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   30
            Top             =   1200
            Width           =   570
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
      ScaleWidth      =   4680
      TabIndex        =   26
      Top             =   2595
      Width           =   4680
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   18
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":001C
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "DeladdSales.frx":0466
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "DeladdSales.frx":07C8
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "DeladdSales.frx":0AD2
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":0E4E
         Height          =   550
         Index           =   9
         Left            =   4245
         Picture         =   "DeladdSales.frx":1158
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":14FA
         Height          =   550
         Index           =   11
         Left            =   5295
         Picture         =   "DeladdSales.frx":1944
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":1CD9
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "DeladdSales.frx":2123
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "DeladdSales.frx":2473
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":280A
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "DeladdSales.frx":2B14
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":2E8E
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
         Picture         =   "DeladdSales.frx":3198
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":3534
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "DeladdSales.frx":397E
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":3CE3
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "DeladdSales.frx":3FED
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "DeladdSales.frx":4380
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "DeladdSales.frx":47CA
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl N)"
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
         Left            =   6090
         TabIndex        =   25
         Top             =   270
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
         Left            =   10380
         TabIndex        =   24
         Top             =   300
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   27
      Top             =   2895
      Width           =   4680
      _ExtentX        =   8255
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
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "06:49 PM"
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
      Height          =   5700
      Left            =   1440
      TabIndex        =   31
      Top             =   1440
      Visible         =   0   'False
      Width           =   7770
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         DownPicture     =   "DeladdSales.frx":4B17
         Height          =   660
         Left            =   4050
         Picture         =   "DeladdSales.frx":4EF9
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   4980
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "DeladdSales.frx":52CC
         Height          =   660
         Left            =   2355
         Picture         =   "DeladdSales.frx":56B2
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   4980
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3285
         Left            =   375
         TabIndex        =   34
         Top             =   570
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
   Begin VB.Label Label4 
      Caption         =   "State"
      ForeColor       =   &H00FF0000&
      Height          =   255
      Left            =   1800
      TabIndex        =   47
      Top             =   4530
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "GST Number"
      ForeColor       =   &H00FF0000&
      Height          =   330
      Left            =   3960
      TabIndex        =   46
      Top             =   4920
      Width           =   1080
   End
   Begin VB.Label Label2 
      Caption         =   "GST StateCode"
      ForeColor       =   &H00FF0000&
      Height          =   195
      Left            =   1800
      TabIndex        =   45
      Top             =   4920
      Width           =   1245
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Sales Delivery Address"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   1530
      TabIndex        =   4
      Top             =   885
      Width           =   2895
   End
End
Attribute VB_Name = "DeladdSales"
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
Dim da As String
Dim LSNo As Integer
Dim stflg As String
Dim SuppType As String


Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error

If Opt = "qry" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Deladd", vbInformation, head
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
    Opt = "add"
    desc.Caption = "Addition"
    Frame1.Enabled = True
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,delcode,TINNo,CSTNo from ig_DELADD where 1=2", db, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,delcode,Phone,CSTNo,gststatecode,gstinno,PAN from ig_DELADD where 1=2", DB, adOpenStatic, adLockOptimistic
    Call ENABLCONTLS
    Call bindcontls
    txtfields(7).Text = ""
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    txtfields(0).SetFocus
    desc.Caption = "Addition"
    Screen.MousePointer = 11
'    SSTab1.Visible = False
'    Frame3.Visible = True
'    Frame3.ZOrder
'    Buttonframe.Enabled = False
'    listlb.Caption = "Supplier Code Selection"
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "fa_slmas where slcode like 'D%'"
'    Ksldesc1.listfield1 = "slcode"
'    Ksldesc1.listfield2 = "slname"
'    Ksldesc1.SetFocus
'    stbar.Panels(2).Text = "Select Code from the List"
'    Screen.MousePointer = 0
            
Case 1
    ' Modification
'    If Record_Exists("ig_DELADD") = False Then Exit Sub
'    Opt = "mod"
'    desc.Caption = "Modification"
'    Screen.MousePointer = 11
'    SSTab1.Visible = False
'    DB.BeginTrans
'    Frame1.Enabled = True
'    Frame3.Visible = True
'    Frame3.ZOrder
'    Buttonframe.Enabled = False
'    listlb.Caption = "Carrier"
'    Ksldesc1.conn = connectstring
'    Ksldesc1.Table = "ig_DELADD"
'    Ksldesc1.listfield1 = "SLCODE"
'    Ksldesc1.listfield2 = "SLNAME"
'    Ksldesc1.SetFocus
'        '16
'        '14.06
'                If IsNull(adoPrimaryRS("gststatecode")) Then
'                    TXTFIELDS(12).Text = ""
'                Else
'                    TXTFIELDS(12).Text = adoPrimaryRS("gststatecode")
'                End If
'                If IsNull(adoPrimaryRS("gstinno")) Then
'                    TXTFIELDS(14).Text = ""
'                Else
'                    TXTFIELDS(14).Text = adoPrimaryRS("gstinno")
'                End If
'                If TXTFIELDS(6).Text = "" Then
'                    TXTFIELDS(13).Text = ""
'                End If
'
'
'    stbar.Panels(2).Text = "Select Code from the List"
'    Call adddelmod(BUTTON)
'    Call ENABLCONTLS
'    Screen.MousePointer = 0
'
   If Record_Exists("ig_DELADD") = False Then Exit Sub
    Opt = "mod"
    desc.Caption = "Modification"
    Screen.MousePointer = 11
'    SSTab1.Visible = False
    DB.BeginTrans
        
    LookUp.Clear = True
    LookUp.query = "SELECT DISTINCT slcode as Code, Slname as Description from Ig_Deladd"
    LookUp.ALIGN = "1500,3500"
    LookUp.DefCol = "Description"
    LookUp.Caption = "Customer Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
       txtfields(0).Text = LookUp.Fields(0)
       txtfields(1).Text = LookUp.Fields(1)
     '  txtFields(8).Text = LookUp.Fields(2)
       LookUp.Clear = True
        LookUp.query = "SELECT Delcode as Code,CName as Description,City,gstinno,gststatecode from Ig_Deladd Where slcode='" & txtfields(0).Text & "'"
        LookUp.ALIGN = "1500,3500"
        LookUp.DefCol = "Description"
        LookUp.Caption = "Customer Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then

                txtfields(2).Text = ""
                txtfields(3).Text = ""
                txtfields(4).Text = ""
                txtfields(5).Text = ""
                txtfields(6).Text = ""
                txtfields(7).Text = ""
                txtfields(9).Text = ""
                txtfields(10).Text = ""
                txtfields(8).Text = LookUp.Fields(0)
                
                Set rsstate = New Recordset
                rsstate.Open "select name as statename from ig_state where gststatecode='" & IIf(IsNull(LookUp.Fields(4)), 0, LookUp.Fields(4)) & "'", DB, adOpenStatic, adLockOptimistic
                
                If rsstate.RecordCount > 0 Then
                    txtfields(12).Text = LookUp.Fields(4)
                    txtfields(13).Text = rsstate("statename")
                    txtfields(14).Text = LookUp.Fields(3)
                End If
                Set SLC = New Recordset
                SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN,delcode,phone,CSTNO ,pan FROM IG_DELADD WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND delcode='" & LookUp.Fields(0) & "'", DB, adOpenStatic

                Set adoPrimaryRS = New Recordset
'                adoPrimaryRS.Open "SELECT isnull(slcode,'') as slcode,isnull(Slname,'') as Slname," & _
'                                  " isnull(ADD1,'') as ADD1,isnull(CName,'') as CName,isnull(ADD2,'') as ADD2," & _
'                                  " isnull(ADD3,'') as ADD3,isnull(CITY,'') as CITY,isnull(PIN,'') as PIN," & _
'                                  " isnull(delcode,'') as delcode,isnull(TINNO,'') as TINNO,isnull(CSTNO,'') as CSTNO,isnull(Phone,'') as Phone FROM IG_DELADD WHERE SLCODE='" & Trim(TXTFIELDS(0).Text) & "' AND delcode='" & TXTFIELDS(8).Text & "'", db, adOpenStatic, adLockBatchOptimistic
                                  
                adoPrimaryRS.Open "SELECT slcode,Slname," & _
                                  " ADD1,CName ,ADD2," & _
                                  " ADD3,CITY,PIN," & _
                                  " delcode,phone,CSTNO,Phone,gstinno,gststatecode,pan FROM IG_DELADD WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND delcode='" & txtfields(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
                                  
                Set RSS = New Recordset
                RSS.Open "select isnull(supptype ,'R') supptype from fa_slmas where slcode='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
                If Not RSS.EOF Then
                    SuppType = RSS(0)
                End If
                stflg = "I"
                Set RSS = New Recordset
                RSS.Open "select a.NAME as [Area Name],b.NAME as [State Name],isnull(gststatecode,'0') [GST State Code],isnull(STATE_FLAG,'') STATE_FLAG  from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE and a.name='" & Trim(adoPrimaryRS("city") & "") & "'", DB, adOpenStatic
                If Not RSS.EOF Then
                    stflg = RSS("STATE_FLAG")
                End If
                If IsNull(adoPrimaryRS("CName")) Then
                    txtfields(2).Text = ""
                Else
                    txtfields(2).Text = adoPrimaryRS("CName")
                End If
                If IsNull(adoPrimaryRS("ADD1")) Then
                    txtfields(3).Text = ""
                Else
                     txtfields(3).Text = adoPrimaryRS("ADD1")
                End If
                If IsNull(adoPrimaryRS("ADD2")) Then
                    txtfields(4).Text = ""
                Else
                    txtfields(4).Text = adoPrimaryRS("ADD2")
                End If
                If IsNull(adoPrimaryRS("ADD3")) Then
                    txtfields(5).Text = ""
                Else
                    txtfields(5).Text = adoPrimaryRS("ADD3")
                End If
                If IsNull(adoPrimaryRS("CITY")) Then
                    txtfields(6).Text = ""
                Else
                    txtfields(6).Text = adoPrimaryRS("CITY")
                End If
                If IsNull(adoPrimaryRS("PIN")) Then
                    txtfields(7).Text = ""
                Else
                    txtfields(7).Text = adoPrimaryRS("PIN")
                End If
                If IsNull(adoPrimaryRS("delcode")) Then
                    txtfields(8).Text = ""
                Else
                    txtfields(8).Text = adoPrimaryRS("delcode")
                End If
                If IsNull(adoPrimaryRS("phone")) Then
                    txtfields(9).Text = ""
                Else
                    txtfields(9).Text = adoPrimaryRS("phone")
                End If
                If IsNull(txtfields(9).Text = adoPrimaryRS("CSTNO")) Then
                    txtfields(10).Text = ""
                Else
                    txtfields(10).Text = adoPrimaryRS("CSTNO")
                End If
                If IsNull(adoPrimaryRS("pan")) Then
                    txtfields(11).Text = ""
                Else
                    txtfields(11).Text = adoPrimaryRS("pan")
                End If

        Else
            BUTTON_Click (10)
        End If
        
    Else
        BUTTON_Click (10)
    End If
    
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    Screen.MousePointer = 0


Case 2
    'Deletion
    If Record_Exists("ig_DELADD") = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Modification"
    Screen.MousePointer = 11
    SSTab1.Visible = False
    DB.BeginTrans
    Frame1.Enabled = False
    Frame3.Visible = True
    Frame3.ZOrder
    Buttonframe.Enabled = False
    listlb.Caption = "Carrier"
    ksldesc1.conn = connectstring
    ksldesc1.table = "ig_DELADD"
    ksldesc1.listfield1 = "SLCODE"
    ksldesc1.listfield2 = "SLNAME"
    ksldesc1.SetFocus
    
    '16
    
   If IsNull(adoPrimaryRS("gststatecode")) Then
                    txtfields(12).Text = ""
                Else
                    txtfields(12).Text = adoPrimaryRS("gststatecode")
                End If
                If IsNull(adoPrimaryRS("gstinno")) Then
                    txtfields(14).Text = ""
                Else
                    txtfields(14).Text = adoPrimaryRS("gstinno")
                End If
                If txtfields(6).Text = "" Then
                    txtfields(13).Text = ""
                End If

                
    stbar.Panels(2).Text = "Select Code from the List"
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    Screen.MousePointer = 0
Case 3
    'Listing
    Set REP = New Report.ReportView
    a = FreeFile
    pg1 = 1
    co = 0
    Open "c:\DELADD.txt" For Output As #a
    Call header(pg1, co)
    Set Rs = New Recordset
    Rs.Open "select SLCODE,SLNAME from ig_DELADD ", DB, adOpenStatic, adLockOptimistic
    
    If Rs.BOF Then
        MsgBox "No records found ", vbInformation, head
        Close #a
        Exit Sub
    End If
   
    Rs.MoveFirst
    Do While Not Rs.EOF
        Print #a, Space(5) + Padr(CStr(Rs(0)), 10, " "); Space(2) + Padr(CStr(Rs(1)), 50, " ")
        c = c + 1
        Print #a,
        c = c + 1
        Set RSS = New Recordset
'        rss.Open "select cname,add1,add2,add3,city,pin from ig_deladd where slcode='" & Rs(0) & "' and slname='" & Rs(1) & "'", DB, adOpenStatic
         RSS.Open "select cname,add1,add2,add3,city,pin from ig_deladd where slcode='" & Rs(0) & "'", DB, adOpenStatic
        Do While Not RSS.EOF
            Print #a, Space(5) & Padr(RSS("cname"), 30, " ") & Space(1) & Padr(RSS("add1"), 30, " ") & Space(1) & Padr(RSS("add2"), 30, " ") & Space(1) & Padr(RSS("add3"), 30, " ") & Space(1) & Padr(RSS("city"), 28, " ") & Space(1) & Padr(RSS("pin"), 7, " ")
            c = c + 1
            RSS.MoveNext
            If c > pagelen Then
            Print #a, Chr(12)
            pg1 = pg1 + 1
            c = 0
            Call header(pg1, co)
            End If
        Rs.MoveNext
        If c > pagelen Then
            Print #a, Chr(12)
            pg1 = pg1 + 1
            c = 0
            Call header(pg1, co)
        End If
        Loop
        Print #a,
        c = c + 1
    Loop
    Print #a, Space(5) + String(160, "-")
    Print #a, Chr(12)
    Close #a
    Open "c:\DELADD.bat" For Output As #a
    Print #a, "cd\"
    Print #a, "c:"
    Print #a, "cd\"
    Print #a, "DELADD.txt > prn"
    Close #a
    REP.txtfile = "c:\DELADD.txt"
    REP.Batfile = "c:\DELADD.bat"
    
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
        If txtfields(12).Text <> "" Then
            Set rsstate = New Recordset
            rsstate.Open "select name as statename from ig_state where gststatecode='" & txtfields(12).Text & "'", DB, adOpenStatic, adLockOptimistic
            txtfields(13).Text = rsstate("statename")
        Else
            txtfields(13).Text = ""
        End If
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
        If txtfields(12).Text <> "" Then
            Set rsstate = New Recordset
            rsstate.Open "select name as statename from ig_state where gststatecode='" & txtfields(12).Text & "'", DB, adOpenStatic, adLockOptimistic
            txtfields(13).Text = rsstate("statename")
        Else
            txtfields(13).Text = ""
        End If
        
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
        
        If txtfields(12).Text <> "" Then
            Set rsstate = New Recordset
            rsstate.Open "select name as statename from ig_state where gststatecode='" & txtfields(12).Text & "'", DB, adOpenStatic, adLockOptimistic
            txtfields(13).Text = rsstate("statename")
        Else
                If adoPrimaryRS.BOF <> True Then
                    txtfields(13).Text = ""
                End If

        End If
        
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
    
       
    If txtfields(12).Text <> "" Then
        Set rsstate = New Recordset
        rsstate.Open "select name as statename from ig_state where gststatecode='" & txtfields(12).Text & "'", DB, adOpenStatic, adLockOptimistic
        txtfields(13).Text = rsstate("statename")
    Else
        txtfields(13).Text = ""
    End If
    
    Call las(BUTTON)
    Exit Sub
GoLastError:
           
   
Case 9
    'Save
    If Opt = "add" Or Opt = "mod" Then
    
        If Trim(txtfields(0).Text) = "" Then
            MsgBox "Please Enter Code ", vbInformation, head
            txtfields(0).SetFocus
            Exit Sub
        End If
        
        If Trim(txtfields(7).Text) = "" Then
            MsgBox "Please Enter Pin Code ", vbInformation, head
            txtfields(0).SetFocus
            Exit Sub
        End If
        If Trim(txtfields(1).Text) = "" Then
            MsgBox "Please Enter Name ", vbInformation, head
            txtfields(1).SetFocus
            Exit Sub
        End If
        If Trim(txtfields(2).Text) = "" Then
            MsgBox "Please Enter Company Name ", vbInformation, head
            txtfields(2).SetFocus
            Exit Sub
        End If
         Set Rs = New Recordset
         Rs.Open "select isnull(STATE_FLAG,'') STATE_FLAG from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE and a.name='" & Trim(txtfields(6).Text) & "' ", DB
         If Not Rs.EOF Then
         stflg = Rs("STATE_FLAG")
         End If
         
        If stflg <> "F" And SuppType <> "U" Then
        
        If Trim(txtfields(14).Text) <> "" Then
            If Trim(Mid(Trim(txtfields(14).Text), 3, 10)) <> Trim(txtfields(11).Text) Then
                MsgBox "From  3 to 12 Character of GST NO and PAN No Shoud be same!!! ", vbInformation, head
                Exit Sub
            End If
        End If
        
        
        If Trim(txtfields(14).Text) = "" Then
            MsgBox "Please Enter the GSTNo...!"
            txtfields(14).SetFocus
            Exit Sub
        End If
     
     
        If txtfields(12).Text = "" Then
            MsgBox "The state code should not be empty"
            Exit Sub
        End If
     If stflg <> "F" Then
        If Len(txtfields(14)) <> 15 Then
            MsgBox "The GST No. Length should be 15 character...!"
            txtfields(14).SetFocus
        Exit Sub
        End If
     
        If Trim(txtfields(14).Text) <> "" Then
            If Left(txtfields(14), 2) <> txtfields(12).Text Then
                MsgBox "The first Two digits of GST No. Should be state code...!"
                txtfields(14).SetFocus
            Exit Sub
            End If
        End If
      End If
         End If
                
        If txtfields(3).Text = "" And txtfields(4).Text = "" And txtfields(5).Text = "" Then
            MsgBox "Please Enter Contact Address", vbCritical, head
            txtfields(3).SetFocus
            Exit Sub
        End If
            
        If txtfields(6).Text = "" Then
            MsgBox "Please Enter Place", vbCritical, head
            txtfields(6).SetFocus
            Exit Sub
        End If
        
      
        
        
   End If
    On Error GoTo saveerror
    Screen.MousePointer = 11
    If Opt = "add" Then
        Do While Not adoPrimaryRS.EOF
            adoPrimaryRS("SLCODE") = txtfields(0).Text
            adoPrimaryRS("SLNAME") = txtfields(1).Text
            adoPrimaryRS("CNAME") = txtfields(2).Text
            adoPrimaryRS("ADD1") = txtfields(3).Text
            adoPrimaryRS("ADD2") = txtfields(4).Text
            adoPrimaryRS("ADD3") = txtfields(5).Text
            adoPrimaryRS("CITY") = txtfields(6).Text
            adoPrimaryRS("PIN") = txtfields(7).Text
            adoPrimaryRS("Phone") = txtfields(9).Text
            adoPrimaryRS("CSTNO") = txtfields(10).Text
            adoPrimaryRS("pan") = Trim(txtfields(11).Text)
            '16
             adoPrimaryRS("gststatecode") = txtfields(12).Text
             adoPrimaryRS("gstinno") = txtfields(14).Text
            
            adoPrimaryRS.MoveNext
        Loop
        
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record Saved Successfully", vbInformation, head
        stbar.Panels(2).Text = "Record Saved Successfully"
        Call query_mode
        BUTTON(0).Enabled = True
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
            adoPrimaryRS("delcode") = txtfields(8).Text
            adoPrimaryRS("Phone") = txtfields(9).Text
            adoPrimaryRS("CSTNO") = txtfields(10).Text
            adoPrimaryRS("pan") = Trim(txtfields(11).Text)
            '19
            adoPrimaryRS("gststatecode") = txtfields(12).Text
            adoPrimaryRS("gstinno") = txtfields(14).Text
            adoPrimaryRS.MoveNext
        Loop
        adoPrimaryRS.UpdateBatch adAffectAll
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox "Record Modified Successfully", vbInformation, head
        stbar.Panels(2).Text = "Record Modified Successfully"
        Call query_mode
        BUTTON(0).Enabled = True
        BUTTON(0).SetFocus
        Exit Sub
    End If
    If Opt = "del" Then
        On Error GoTo delerror
        a = MsgBox("Do you want to delete this Record?", vbYesNo, head)
        If a = 6 Then
            DB.Execute ("delete from ig_deladd where slcode='" + txtfields(0).Text + "' and slname='" + txtfields(1).Text + "' and cname='" + txtfields(2).Text + "'")
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record Deleted Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Deleted Successfully"
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
    End Select
    Screen.MousePointer = 0
    stbar.Panels(2).Text = "Operation Cancelled"
    Opt = " "
    Call query_mode
'    Call cancl(BUTTON, 6)
    BUTTON(0).SetFocus
    
Case 11
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Deladd", vbInformation, head
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    DATLAB.Caption = pdate
    LSNo = GSNO
    Opt = "qry"
    stbar.Panels(1).Text = head
    Call query_mode

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Deladd", vbInformation, head
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

     If KeyCode = 13 Then
        SendKeys ("{tab}")
    ElseIf KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
'        If BUTTON(4).Enabled Then Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        If BUTTON(12).Enabled Then Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
'        If BUTTON(13).Enabled Then Call BUTTON_Click(13)
    End If


Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Deladd", vbInformation, head
End Sub


Public Sub query_mode()
On Error GoTo query_mode_Error

    Opt = " "
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,delcode,TinNo,CStNo from ig_DELADD order by SLCODE", db, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "select SLCODE,SLNAME,CNAME,ADD1,ADD2,ADD3,CITY,PIN,delcode,Phone,CStNo,gststatecode,gstinno,PAN from ig_DELADD order by SLCODE", DB, adOpenStatic, adLockOptimistic
    If Not adoPrimaryRS.EOF Then
        txtfields(8).Text = IIf(IsNull(adoPrimaryRS("DELCODE")), "", adoPrimaryRS("DELCODE"))
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & "  of  " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Records Found"
        MsgBox "No Records Found", vbInformation, head
    End If
    
    Call bindcontls
    If adoPrimaryRS.RecordCount > 0 Then
    'Call NEWFORM(BUTTON, 67)
    Call NEWFORM1(BUTTON, LSNo)
    
    
    Else
    Call Norecfound(BUTTON)
    End If
    If adoPrimaryRS.RecordCount = 0 Then
        BUTTON(5).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(8).Enabled = False
        stbar.Panels(2).Text = "No Records Found"
    Else
        Call FIR(BUTTON)
    End If
    Call NEWFORM1(BUTTON, LSNo)
    desc.Caption = "Query"
    Call disablcontls

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure query_mode of Form Deladd", vbInformation, head
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
On Error GoTo disablcontls_Error

For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = True
    End If
Next
Frame1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form Deladd", vbInformation, head
End Sub
Public Sub ENABLCONTLS()
Frame1.Enabled = True
For Each c In Me.Controls
    If TypeOf c Is TextBox Then
        c.Locked = False
    End If
Next
End Sub
Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

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
    BUTTON(0).Enabled = True
    BUTTON(0).SetFocus

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovcancel_Click of Form Deladd", vbInformation, head
End Sub
Private Sub lovok_Click()
    
On Error GoTo lovok_Click_Error

    Frame3.Visible = False
    SSTab1.Visible = True
    Buttonframe.Enabled = True
    Frame3.Visible = False
    SSTab1.Visible = True
    If Opt = "add" Then
        Set sl = New Recordset
        sl.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN FROM fa_slmas WHERE SLCODE='" & ksldesc1.code & "'", DB
        txtfields(0).Text = ksldesc1.code
        txtfields(1).Text = ksldesc1.Description
        s = "DA"
        Set Rs = New Recordset
        Rs.Open "select max(CAST(substring(delcode,4,5) AS NUMERIC)) from ig_deladd where delcode like '" & d & "%' ", DB, adOpenStatic, adLockBatchOptimistic
           If Not (Rs.BOF Or IsNull(Rs(0))) Then
                  If val(Rs(0)) < 9 Then
                       txtfields(8).Text = s & "0000" & val(Rs(0)) + 1
                  ElseIf val(Rs(0)) < 99 Then
                       txtfields(8).Text = s & "000" & val(Rs(0)) + 1
                  ElseIf val(Rs(0)) < 999 Then
                       txtfields(8).Text = s & "00" & val(Rs(0)) + 1
                  ElseIf val(Rs(0)) < 9999 Then
                       txtfields(8).Text = s & "00" & val(Rs(0)) + 1
                  Else
                       txtfields(8).Text = s & val(Rs(0)) + 1
                  End If
           Else
                 txtfields(8).Text = s & "0001"
           End If
'        TXTFIELDS(3).Text = IIf(IsNull(sl("ADD1")), "", sl("add1"))
'        TXTFIELDS(4).Text = IIf(IsNull(sl("ADD2")), "", sl("ADD2"))
'        TXTFIELDS(5).Text = IIf(IsNull(sl("ADD3")), "", sl("ADD3"))
'        TXTFIELDS(6).Text = IIf(IsNull(sl("CITY")), "", sl("CITY"))
'        TXTFIELDS(7).Text = IIf(IsNull(sl("PIN")), "", sl("PIN"))
        'da = ""
        Set sl = Nothing
        txtfields(2).SetFocus
        Exit Sub
    ElseIf Opt = "add" Then
        txtfields(0).Text = ""
        txtfields(1).Text = ""
        txtfields(0).Text = ksldesc1.code
        txtfields(1).Text = ksldesc1.Description
        txtfields(2).SetFocus
        Exit Sub
    End If
    
    If Opt = "mod" Then
        Select Case ksldesc1.listfield1
            Case "SLCODE"
                txtfields(0).Text = ksldesc1.code
                txtfields(1).Text = ksldesc1.Description
                txtfields(2).Text = ""
                txtfields(3).Text = ""
                txtfields(4).Text = ""
                txtfields(5).Text = ""
                txtfields(6).Text = ""
                txtfields(7).Text = ""
                txtfields(9).Text = ""
                txtfields(10).Text = ""
                txtfields(11).Text = ""
                txtfields(8).SetFocus
            Case "DELCODE"
                txtfields(8).Text = ksldesc1.code
                txtfields(2).Text = ksldesc1.Description
                Set SLC = New Recordset
                SLC.Open "SELECT isnull(ADD1,'') as add1,isnull(ADD2,'') as add2,isnull(ADD3,'') as add3,isnull(CITY,'') as city,isnull(PIN,'') as pin,isnull(delcode,'') as delcode,isnull(Phone,'') as Phone,isnull(CSTNO,'') as cstno,isnull(gststatecode,'') gststatecode,isnull(gstinno,'') gstinno,PAN FROM IG_DELADD WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND DELCODE='" & ksldesc1.code & "'", DB, adOpenStatic
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "SELECT * FROM IG_DELADD WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND DELCODE='" & ksldesc1.code & "'", DB, adOpenStatic, adLockBatchOptimistic
                txtfields(3).Text = SLC("ADD1")
                txtfields(4).Text = SLC("ADD2")
                txtfields(5).Text = SLC("ADD3")
                txtfields(6).Text = SLC("CITY")
                txtfields(7).Text = SLC("PIN")
                txtfields(8).Text = SLC("delcode")
                txtfields(9).Text = SLC("Phone")
                txtfields(10).Text = SLC("CSTNO")
                
                txtfields(12).Text = SLC("gststatecode")
                txtfields(14).Text = SLC("gstinno")
                txtfields(11).Text = IIf(IsNull(SLC("pan")), "", SLC("pan"))
                
                
                Set rst = New Recordset
                rst.Open "select a.NAME as [Area Name],b.NAME as [State Name],isnull(gststatecode,'0') [GST State Code],isnull(STATE_FLAG,'') STATE_FLAG  from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE and a.name='" & txtfields(6).Text & "' ", DB
                If Not rst.EOF Then
                      txtfields(13).Text = rst(1)
                End If
                
                txtfields(7).SetFocus
        End Select
    ElseIf Opt = "del" Then
        Select Case ksldesc1.listfield1
        Case "SLCODE"
                txtfields(0).Text = ksldesc1.code
                txtfields(1).Text = ksldesc1.Description
                txtfields(2).Text = ""
                txtfields(3).Text = ""
                txtfields(4).Text = ""
                txtfields(5).Text = ""
                txtfields(6).Text = ""
                txtfields(7).Text = ""
                txtfields(9).Text = ""
                txtfields(10).Text = ""
                txtfields(11).Text = ""
                txtfields(8).SetFocus
            Case "DELCODE"
                txtfields(8).Text = ksldesc1.code
                txtfields(2).Text = ksldesc1.Description
                Set SLC = New Recordset
                SLC.Open "SELECT ADD1,ADD2,ADD3,CITY,PIN,delcode,Phone,CSTNO,isnull(gststatecode,'') gststatecode,isnull(gstinno,'') gstinno,PAN FROM IG_DELADD WHERE SLCODE='" & Trim(txtfields(0).Text) & "' AND DELCODE='" & ksldesc1.code & "'", DB, adOpenStatic
                txtfields(3).Text = SLC("ADD1")
                txtfields(4).Text = SLC("ADD2")
                txtfields(5).Text = SLC("ADD3")
                txtfields(6).Text = SLC("CITY")
                txtfields(7).Text = SLC("PIN")
                txtfields(8).Text = SLC("delcode")
                txtfields(9).Text = SLC("Phone")
                txtfields(10).Text = SLC("CSTNO")
                  txtfields(12).Text = SLC("gststatecode")
                txtfields(14).Text = SLC("gstinno")
                 txtfields(11).Text = IIf(IsNull(SLC("pan")), "", SLC("pan"))
                
                Set rst = New Recordset
                rst.Open "select a.NAME as [Area Name],b.NAME as [State Name],isnull(gststatecode,'0') [GST State Code],isnull(STATE_FLAG,'') STATE_FLAG  from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE and a.name='" & txtfields(6).Text & "' ", DB
                If Not rst.EOF Then
                      txtfields(13).Text = rst(1)
                End If
                
                stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button "
                txtfields(7).SetFocus
    End Select
    End If

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form Deladd", vbInformation, head
End Sub
Private Sub txtFields_GotFocus(Index As Integer)

On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Select Case Index
    Case 0
        stbar.Panels(2).Text = "Enter a maximum of 3 Characters"
    Case 3
        stbar.Panels(2).Text = "Enter a maximum of 35 Characters"
    Case 4
        stbar.Panels(2).Text = "Enter a maximum of 35 Characters"
    Case 5
        stbar.Panels(2).Text = "Enter a maximum of 35 Characters"
    Case 6
        stbar.Panels(2).Text = "Enter a maximum of 30 Characters "
    Case 7
        stbar.Panels(2).Text = "Enter a maximum of 6 Characters "
    Case 8
        stbar.Panels(2).Text = "Select Delivery Address From the List"
        If Opt = "mod" Or Opt = "del" Then
            SSTab1.Visible = False
            Frame3.Visible = True
            Frame3.ZOrder
            Buttonframe.Enabled = False
            listlb.Caption = "Company Name"
            ksldesc1.conn = connectstring
            ksldesc1.table = "ig_deladd WHERE SLCODE='" & Trim(txtfields(0).Text) & "'"
            ksldesc1.listfield1 = "DELCODE"
            ksldesc1.listfield2 = "CNAME"
            ksldesc1.SetFocus
            stbar.Panels(2).Text = "Select Company Name from the List"
        End If
    Case 9
        stbar.Panels(2).Text = "Enter Phone maximum of 15 Characters"
    Case 10
        stbar.Panels(2).Text = "Enter CstNo maximum of 15 Characters"
    End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Deladd", vbInformation, head
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

    'Call ToUpCase(txtfields(Index), KeyAscii, 3)

    Select Case Index
    Case 0
        Call ToAlphaNumber(txtfields(Index), 3, KeyAscii)
    Case 8
         Call ToAlphaNumber(txtfields(Index), 10, KeyAscii)
    Case 2
         Call ToAlphaNumber(txtfields(Index), 25, KeyAscii)
    Case 6
        Call ToAlphaNumber(txtfields(Index), 30, KeyAscii)
    Case 7
        If Len(txtfields(Index).Text) = 3 And KeyAscii <> 8 Then
           iKeyAscii = KeyAscii
           KeyAscii = 0
           KeyAscii = 32
           SendKeys Chr(iKeyAscii)
        Else
           Call tonum(txtfields(Index), 7, KeyAscii)
        End If
    Case 9
        Call tonum(txtfields(Index), 15, KeyAscii)
    Case 10
        Call ToAlphaNumber(txtfields(Index), 15, KeyAscii)
                 '08.06
Case 14

'        If Len(txtfields(Index)) <> 15 Then
'        If KeyAscii = vbKeyTab Then
'        MsgBox "GST Number should be of 15 Characters", vbInformation, head
'        txtfields(Index).SetFocus
'
'        Exit Sub
'        End If
'        End If
If stflg <> "F" And SuppType <> "U" Then
        If (Len(txtfields(Index).Text)) < 2 Then
        If Not (KeyAscii >= 48 And KeyAscii <= 57) Then
        If KeyAscii <> 8 Then
        MsgBox "First two characters of GST Number should be numeric", vbInformation, head
        KeyAscii = 0
        End If
        End If
        End If
        
        
        If (Len(txtfields(Index).Text)) >= 2 And (Len(txtfields(Index).Text)) < 7 Then
        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        If KeyAscii <> 8 Then
        MsgBox "Third character to Seventh character of GST Number should be Alphabet", vbInformation, head
        KeyAscii = 0
        End If
        End If
        End If
        
        If (Len(txtfields(Index).Text)) >= 7 And (Len(txtfields(Index).Text)) < 11 Then
        If Not ((KeyAscii >= 48 And KeyAscii <= 57)) Then
        If KeyAscii <> 8 Then
        MsgBox "Eigth character to Eleventh character of GST Number should be Numeric", vbInformation, head
        KeyAscii = 0
        End If
        End If
        End If
        
        If (Len(txtfields(Index).Text)) >= 11 And (Len(txtfields(Index).Text)) < 15 Then
        'If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
        'If KeyAscii <> 8 Then
'

        'MsgBox "Twelth to Fifteenth character of GST Number should be Alphabet", vbInformation, head
       ' KeyAscii = 0
       ' End If
       ' End If
        End If
 End If
        
'        If (Len(txtfields(Index).Text)) = 11 Then
'        If Not ((KeyAscii >= 65 And KeyAscii <= 90) Or (KeyAscii >= 97 And KeyAscii <= 122)) Then
'        If KeyAscii <> 8 Then
'
'
'        MsgBox "Twelth character of GST Number should be Alphabet", vbInformation, head
'        KeyAscii = 0
'        End If
'        End If
'        End If

        
        

    End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form Deladd", vbInformation, head
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then
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
     Case 7
'        BUTTON(9).SetFocus
     End Select
End If
If Opt = "add" Or Opt = "mod" Then

    If Not (txtfields(Index).Text = "") Then
        txtfields(Index).Text = UCase(txtfields(Index).Text)
    End If

    Select Case Index
    Case 10
        stbar.Panels(2).Text = "Choose either SAVE or Cancel Button"
        BUTTON(9).SetFocus
    End Select
End If

   If Index = 7 Then
        If Len(txtfields(Index).Text) < 7 And Len(txtfields(Index).Text) > 0 Then
           txtfields(Index).Text = ""
           MsgBox "Please enter valid Pincode", vbInformation, head
           txtfields(Index).SetFocus
           Exit Sub
        ElseIf Len(txtfields(Index).Text) = 7 And Len(txtfields(Index).Text) > 0 Then
           If Mid(txtfields(Index).Text, 4, 1) <> Chr(32) Then
                txtfields(Index).Text = ""
                MsgBox "Please enter valid Pincode", vbInformation, head
                txtfields(Index).SetFocus
                Exit Sub
            End If
        End If
    End If

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LostFocus of Form Deladd", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then

If Index = 14 Then
    If stflg <> "F" And SuppType <> "U" Then
        If Left(txtfields(14), 2) <> txtfields(12).Text Then
            MsgBox "The first Two digit of GST No. Should be state code...!"
            txtfields(14).SetFocus
            
            Exit Sub
        End If
       

       
        If Len(Trim(txtfields(14).Text)) <> 15 Then
            MsgBox "GST Number Should be 15 Characters!", vbCritical
            txtfields(14).SetFocus
            Exit Sub
      
        
    End If
    txtfields(11).Text = Trim(Mid(Trim(txtfields(14).Text), 3, 10))
     End If
End If
        
    Select Case Index
    Case 0
        
' If Record_Exists("FA_SLMAS WHERE SLCODE LIKE 'D%'") = False Then Exit Sub
        Set rec = New Recordset
        rec.Open "select slcode,slname from FA_SLMAS WHERE  slcode='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic
        If rec.RecordCount > 0 Then
            txtfields(0).Text = rec("slcode")
            txtfields(1).Text = rec("slname")
            txtfields(8).SetFocus
            Exit Sub
        Else
        
            
            FLG = "a"
            stbar.Panels(2).Text = "Select Customer Code  from the List"
            LookUp.Clear = True
            
             Set rs1 = New Recordset
         rs1.Open "Select * from masterlen", DB, adOpenStatic
         
          sup = rs1("ptypecottonsales")

            
            
            LookUp.query = "select slcode""Code"",slname""Description"",Add1 as Address, City,Agent_code,supptype from fa_slmas where  left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) and isnull(isactive,'N')='Y'"
            LookUp.DefCol = "Description"
            LookUp.ALIGN = "1200,3300,2500,2000"
            LookUp.Caption = "Customer Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            
                txtfields(0).Text = LookUp.Fields(0)
                txtfields(1).Text = LookUp.Fields(1)
                SuppType = LookUp.Fields("supptype")
                FLG = ""
                LookUp.Clear = True
                
                 s = "DA"
            Set Rs = New Recordset
           '
           If UCase(CustID) = "SARANYA" Then
                'Rs.Open "SELECT MAX(delcod) from(select   case when  isnumeric(right(left(delcode,3) ,1))=0 then max(cast(substring(delcode,3,8)  as NUMERIC) )ELSE max(cast(substring(delcode,4,8) as NUMERIC)) end delcod from ig_deladds where delcode like '" & d & "%'  GROUP BY delcode) x ", DB, adOpenStatic, adLockBatchOptimistic
                Rs.Open "SELECT max(delcod) delcod FROM (SELECT max(cast(substring(delcode,3,8) as NUMERIC)) delcod FROM ig_deladd where delcode like '" & d & "%' and isnumeric(right(left(delcode,3) ,1))=1 GROUP BY delcode " & _
                        "  Union SELECT max(cast(substring(delcode,4,8) as NUMERIC))delcod FROM ig_deladd where delcode like '" & d & "%' and isnumeric(right(left(delcode,3) ,1))=0 GROUP BY delcode) a ", DB, adOpenStatic, adLockBatchOptimistic
           Else
                Rs.Open "select max(CAST(substring(delcode,3,5) AS NUMERIC)) from ig_deladd where delcode like '" & d & "%' ", DB, adOpenStatic, adLockBatchOptimistic
           End If
           
               If Not (Rs.BOF Or IsNull(Rs(0))) Then
                      If val(Rs(0)) < 9 Then
                           txtfields(8).Text = s & "00" & val(Rs(0)) + 1
                      ElseIf val(Rs(0)) < 99 Then
                           txtfields(8).Text = s & "0" & val(Rs(0)) + 1
                      Else
                           txtfields(8).Text = s & val(Rs(0)) + 1
                      End If
               Else
                     txtfields(8).Text = s & "001"
               End If
    
            Set sl = Nothing
            txtfields(2).SetFocus
            Exit Sub
                
                
                
                
                txtfields(8).SetFocus
                Exit Sub
                        
            Else
                txtfields(0).Text = ""
                txtfields(1).Text = ""
                Cancel = True
                Exit Sub
            End If
        End If
    Case 1
        If Trim(txtfields(1).Text) = "" Then
            MsgBox "Please Enter Carrier Name ", vbInformation, head
            Cancel = True
            Exit Sub
        End If
     Case 6
            LookUp.Clear = True
            LookUp.query = "select a.NAME as [Area Name],b.NAME as [State Name],isnull(gststatecode,'0') [GST State Code],isnull(STATE_FLAG,'') STATE_FLAG  from IG_AREA a,IG_STATE b where a.STATE_CODE=b.STATE_CODE"
            LookUp.DefCol = "Area Name"
            LookUp.ALIGN = "3300,3300"
            LookUp.Caption = "Area Name Listing"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            stflg = LookUp.Fields(3)
                txtfields(6).Text = LookUp.Fields(0)
                If stflg <> "F" Then
                If LookUp.Fields(2) <> "0" Then
                    txtfields(12).Text = LookUp.Fields(2)
                    txtfields(14).Text = LookUp.Fields(2) 'GST No's first two digit no is statecode'
                Else
                    MsgBox "The Statecode is not mapped for this place...!"
                    txtfields(12).Text = ""
                    txtfields(14).Text = ""
                    txtfields(13).Text = ""
                    txtfields(6).SetFocus
                    Exit Sub
                    
                End If
                End If
                txtfields(13).Text = LookUp.Fields(1)
                    
                LookUp.Clear = True
            Else
                txtfields(6).Text = ""
            End If
            
        Case 14
'            If Len(TXTFIELDS(14).Text) <> 15 Then
'                MsgBox "The GST Number should be 15 characters...!"
'                TXTFIELDS(14).SetFocus
'                Exit Sub
'            End If
    End Select
End If

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form Deladd", vbInformation, head
End Sub
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
End Sub
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
End Sub


