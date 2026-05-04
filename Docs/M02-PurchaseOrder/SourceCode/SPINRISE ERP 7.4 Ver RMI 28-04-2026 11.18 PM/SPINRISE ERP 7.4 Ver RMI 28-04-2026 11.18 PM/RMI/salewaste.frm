VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form salewaste 
   Caption         =   "Waste"
   ClientHeight    =   7680
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10155
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7680
   ScaleWidth      =   10155
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   520
      Index           =   13
      Left            =   5760
      Picture         =   "salewaste.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   57
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   0
      Width           =   540
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   225
      Top             =   6315
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   40
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":0442
         Height          =   510
         Index           =   6
         Left            =   3135
         Picture         =   "salewaste.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   52
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":0BD9
         Height          =   510
         Index           =   0
         Left            =   0
         Picture         =   "salewaste.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   51
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":1276
         Height          =   510
         Index           =   5
         Left            =   2610
         Picture         =   "salewaste.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   50
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":1A25
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
         Left            =   1035
         Picture         =   "salewaste.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   510
         Picture         =   "salewaste.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   48
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":274F
         Height          =   510
         Index           =   7
         Left            =   3660
         Picture         =   "salewaste.frx":2B99
         Style           =   1  'Graphical
         TabIndex        =   47
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":2EE9
         Height          =   510
         Index           =   11
         Left            =   6310
         Picture         =   "salewaste.frx":3333
         Style           =   1  'Graphical
         TabIndex        =   46
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":36C8
         Height          =   510
         Index           =   9
         Left            =   4710
         Picture         =   "salewaste.frx":39D2
         Style           =   1  'Graphical
         TabIndex        =   45
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":3D74
         Height          =   510
         Index           =   10
         Left            =   5235
         Picture         =   "salewaste.frx":407E
         Style           =   1  'Graphical
         TabIndex        =   44
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":43FA
         Height          =   510
         Index           =   8
         Left            =   4185
         Picture         =   "salewaste.frx":4844
         Style           =   1  'Graphical
         TabIndex        =   43
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "salewaste.frx":4BA6
         Height          =   510
         Index           =   4
         Left            =   2070
         Picture         =   "salewaste.frx":4EB0
         Style           =   1  'Graphical
         TabIndex        =   42
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1560
         Picture         =   "salewaste.frx":5245
         Style           =   1  'Graphical
         TabIndex        =   41
         ToolTipText     =   "List (Ctrl L)"
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   9480
         TabIndex        =   54
         Top             =   255
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7080
         TabIndex        =   53
         Top             =   270
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   22
      Top             =   7380
      Width           =   10155
      _ExtentX        =   17912
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
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "10:23 AM"
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
      Height          =   4425
      Left            =   1110
      TabIndex        =   23
      Top             =   1575
      Width           =   6825
      _ExtentX        =   12039
      _ExtentY        =   7805
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "         "
      TabPicture(0)   =   "salewaste.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4200
         Left            =   180
         TabIndex        =   24
         Top             =   75
         Width           =   6510
         Begin VB.TextBox txtfields 
            Height          =   285
            Index           =   42
            Left            =   3105
            TabIndex        =   55
            Top             =   975
            Width           =   3135
         End
         Begin VB.TextBox txtfields 
            DataField       =   "hsn"
            Height          =   285
            Index           =   41
            Left            =   1380
            TabIndex        =   4
            Top             =   975
            Width           =   1695
         End
         Begin VB.OptionButton Option2 
            Caption         =   "Option2"
            Height          =   255
            Left            =   3840
            TabIndex        =   2
            Top             =   300
            Width           =   255
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Option1"
            Height          =   255
            Left            =   2400
            TabIndex        =   1
            Top             =   300
            Value           =   -1  'True
            Width           =   255
         End
         Begin VB.TextBox txtfields 
            CausesValidation=   0   'False
            DataField       =   "tariffhead"
            Height          =   285
            Index           =   3
            Left            =   4935
            MaxLength       =   10
            TabIndex        =   8
            Top             =   1710
            Width           =   1305
         End
         Begin VB.TextBox txtfields 
            DataField       =   "description"
            Height          =   285
            Index           =   2
            Left            =   1380
            MaxLength       =   50
            TabIndex        =   3
            Top             =   633
            Width           =   4860
         End
         Begin VB.ComboBox Combo5 
            DataField       =   "rg1"
            Height          =   315
            ItemData        =   "salewaste.frx":55F8
            Left            =   4920
            List            =   "salewaste.frx":5602
            Style           =   2  'Dropdown List
            TabIndex        =   6
            Top             =   1320
            Width           =   1320
         End
         Begin VB.ComboBox Combo4 
            DataField       =   "uom"
            Height          =   315
            ItemData        =   "salewaste.frx":5613
            Left            =   1380
            List            =   "salewaste.frx":561D
            Style           =   2  'Dropdown List
            TabIndex        =   7
            Top             =   1695
            Width           =   1155
         End
         Begin VB.TextBox txtfields 
            DataField       =   "short_code"
            Height          =   285
            Index           =   13
            Left            =   1380
            MaxLength       =   14
            TabIndex        =   5
            Top             =   1335
            Width           =   2580
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   285
            Index           =   18
            Left            =   2070
            MaxLength       =   35
            TabIndex        =   14
            TabStop         =   0   'False
            Top             =   2760
            Width           =   4170
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   285
            Index           =   17
            Left            =   2070
            MaxLength       =   35
            TabIndex        =   12
            TabStop         =   0   'False
            Top             =   2415
            Width           =   4170
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   285
            Index           =   16
            Left            =   2070
            MaxLength       =   35
            TabIndex        =   10
            TabStop         =   0   'False
            Top             =   2070
            Visible         =   0   'False
            Width           =   4170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ctax_code"
            Enabled         =   0   'False
            Height          =   285
            Index           =   14
            Left            =   1380
            MaxLength       =   3
            TabIndex        =   11
            Top             =   2415
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            DataField       =   "Product_type"
            Height          =   285
            Index           =   4
            Left            =   1380
            MaxLength       =   2
            TabIndex        =   16
            Top             =   3480
            Visible         =   0   'False
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   285
            Index           =   5
            Left            =   2070
            MaxLength       =   35
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   3465
            Visible         =   0   'False
            Width           =   4170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "ltax_code"
            Enabled         =   0   'False
            Height          =   285
            Index           =   8
            Left            =   1380
            MaxLength       =   3
            TabIndex        =   9
            Top             =   2070
            Visible         =   0   'False
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "pack_wt"
            Height          =   285
            Index           =   10
            Left            =   1380
            MaxLength       =   6
            TabIndex        =   15
            Top             =   3105
            Visible         =   0   'False
            Width           =   855
         End
         Begin VB.TextBox txtfields 
            DataField       =   "pack_type"
            Height          =   285
            Index           =   12
            Left            =   1380
            MaxLength       =   1
            TabIndex        =   13
            Top             =   2760
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            Height          =   285
            Index           =   1
            Left            =   1380
            MaxLength       =   6
            TabIndex        =   0
            Top             =   285
            Width           =   975
         End
         Begin VB.Label Label6 
            Caption         =   "HSN Code"
            ForeColor       =   &H00FF0000&
            Height          =   255
            Left            =   240
            TabIndex        =   56
            Top             =   975
            Width           =   855
         End
         Begin VB.Label Label5 
            Caption         =   "Saleable"
            Height          =   255
            Left            =   4320
            TabIndex        =   39
            Top             =   300
            Width           =   1215
         End
         Begin VB.Label Label4 
            Caption         =   "Usable"
            Height          =   255
            Left            =   2760
            TabIndex        =   38
            Top             =   300
            Width           =   975
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Tariff Head"
            Height          =   195
            Left            =   4050
            TabIndex        =   36
            Top             =   1755
            Width           =   795
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "UOM"
            Height          =   195
            Index           =   8
            Left            =   255
            TabIndex        =   34
            Top             =   1755
            Width           =   375
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Short Code"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   14
            Left            =   240
            TabIndex        =   33
            Top             =   1380
            Width           =   795
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Rg1 Count"
            Height          =   195
            Index           =   10
            Left            =   4065
            TabIndex        =   32
            Top             =   1380
            Width           =   765
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "GST %"
            Height          =   195
            Index           =   13
            Left            =   240
            TabIndex        =   31
            Top             =   2460
            Width           =   495
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Waste Code"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   30
            Top             =   330
            Width           =   885
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Description"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   29
            Top             =   678
            Width           =   795
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Product Type"
            Height          =   195
            Index           =   5
            Left            =   240
            TabIndex        =   28
            Top             =   3510
            Visible         =   0   'False
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "LST %"
            Height          =   195
            Index           =   12
            Left            =   240
            TabIndex        =   27
            Top             =   2115
            Visible         =   0   'False
            Width           =   465
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Pack Type"
            Height          =   195
            Index           =   29
            Left            =   240
            TabIndex        =   26
            Top             =   2805
            Width           =   780
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Pack Wt"
            Height          =   195
            Index           =   27
            Left            =   240
            TabIndex        =   25
            Top             =   3150
            Visible         =   0   'False
            Width           =   630
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   840
      TabIndex        =   18
      Top             =   840
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   615
         Left            =   3000
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4740
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4080
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3375
         Left            =   690
         TabIndex        =   37
         Top             =   630
         Width           =   7230
         _ExtentX        =   12753
         _ExtentY        =   5953
         caption         =   ""
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
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   45
         TabIndex        =   21
         Top             =   120
         Width           =   8805
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   " Waste"
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
      Left            =   1200
      TabIndex        =   35
      Top             =   1155
      Width           =   840
   End
End
Attribute VB_Name = "salewaste"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim rep As Report.ReportView
Dim FLG As String
Dim Rs, TrnLog As Recordset
Dim Str As String
Dim pr As String
Dim wtype As String
Dim G As String
Dim errflg As String

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'addition
        Opt = "add"
        desc.Caption = "Addition"
        DB.BeginTrans
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select divcode,entdate,user_id,finishing,product_code,description,kcs,wht,product_type,ro,uom,rg1,ltax_code,ctax_code,pack_wt,pack_type,short_code,tariffhead,wastetype,HSN from ig_rproduct where divcode = '" & Divcode & "' and 1=2", DB, adOpenStatic, adLockOptimistic
        Call ENABLCONTLS
        Call bindcontls
        adoPrimaryRS.AddNew
        stbar.Panels(2).Text = "Addition"
        Call adddelmod(BUTTON)
        'txtFields(0).Text = "W"
        'txtFields(0).Locked = True
        'txtFields(15).Visible = False
        'txtFields(0).Visible = True
        txtfields(1).Visible = True
        txtfields(1).Text = ""
        txtfields(5).Locked = True
        txtfields(16).Locked = True
        txtfields(17).Locked = True
        txtfields(1).Locked = False
        txtfields(18).Locked = True
        'txtFields(1).SetFocus
        Combo4.Locked = False
        Combo5.Locked = False
        Combo4.Text = "K-Kgs"
        Combo5.Text = "N-No"
        
        txtfields(42).Text = ""
        txtfields(5).Text = ""
        txtfields(16).Text = ""
        txtfields(17).Text = ""
        txtfields(18).Text = ""
'        txtfields(1).SetFocus
        
        Set Rs = New Recordset
        Rs.Open "SELECT PACK_TYPE,DESCRIPTION FROM IG_PACKTYPE WHERE DESCRIPTION LIKE 'BOR%'", DB, adOpenStatic
        If Not Rs.EOF Then
            txtfields(12).Text = Rs(0)
            txtfields(18).Text = Rs(1)
        End If
Case 1
'modification
       If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
         stbar.Panels(2).Text = "Modification"
        DB.BeginTrans
        Call itemlookup
        stbar.Panels(2).Text = "Select Product Code  from the List"
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
        Call bindcontls
        txtfields(1).Enabled = False
        txtfields(16).Enabled = False
        txtfields(17).Enabled = False
        txtfields(18).Enabled = False
        Screen.MousePointer = 0
        txtfields(5).Locked = True
        Combo4.Locked = False
        Combo5.Locked = False
        txtfields(1).Visible = True
Case 2
'Deletion
    If Record_Exists("ig_Rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
    If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
           stbar.Panels(2).Text = "Deletion"
        Screen.MousePointer = 11
       ' SSTab1.Visible = False
''         Frame3.Visible = True
''        Frame3.ZOrder
''        Buttonframe.Enabled = False
''        listlb.Caption = "Product Detail Listing"
''        ksldesc1.conn = connectstring
''        ksldesc1.table = "ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')"
''        ksldesc1.listfield1 = "product_code"
''        ksldesc1.listfield2 = "description,wastetype"
''        ksldesc1.SetFocus
''        stbar.Panels(2).Text = "Select Product Code from the List"

        
        stbar.Panels(2).Text = "Select Product Code  from the List"
        Call adddelmod(BUTTON)
        Call ENABLCONTLS
        Call bindcontls
        txtfields(1).Enabled = False
        txtfields(16).Enabled = False
        txtfields(17).Enabled = False
        txtfields(18).Enabled = False
        Screen.MousePointer = 0
        txtfields(5).Locked = True
        Combo4.Locked = False
        Combo5.Locked = False
        txtfields(1).Visible = True
        DB.BeginTrans
        Call adddelmod(BUTTON)
        Screen.MousePointer = 0
        Call itemlookup
       


    
    Case 3, 13
'    If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
'    Set Rep = New Report.ReportView
'    a = FreeFile
'    Pg = 1
'    Co = 0
'
'          Call header(Pg, Co)
'          Set Rs = New Recordset
'          Rs.Open "select isnull(a.product_code,'')product_code,isnull(a.description,'') as description,isnull(a.short_code,'') short_code,case when a.wastetype='S' then 'Saleable' else 'Usable' end as wasteType,0 as st_per from ig_rproduct a where (wastetype like 'U%' or wastetype like 'S%') and  a.divcode = '" & Divcode & "'", DB, adOpenStatic
'          If Rs.BOF Then
'          MsgBox "No records found", vbInformation, head
'          Close #f
'          Exit Sub
'          End If
'          On Error Resume Next
'          Print #a, Space(5); String(91, "-")
'          Print #a, Space(5) + "Waste Code  Waste Descripion             Short Code          Waste Type         TAX %   "
'
'          Print #a, Space(5); String(91, "-")
'          For i = 1 To Rs.RecordCount
'          Print #a, Space(5) + Rs(0) & Space(12 - Len(Rs(0))) + Rs(1) & Space(28 - Len(Rs(1))) + " " + Rs(2) & Space(20 - Len(Rs(2))) + Rs(3) & Space(18 - Len(Rs(3))) + Space(5 - Len(Rs(4))) + CStr(Rs(4)) + "%"
'          Co = Co + 1
'          If Co > 65 Then
'            Pg = Pg + 1
'          Co = 0
'          Call header(Pg, Co)
'          End If
'
'          Rs.MoveNext
'          Next
'
'      Print #a, Space(5); String(91, "-")
'      Print #a, Chr(12)
'      Close #a
''      Open "c:\sale.bat" For Output As #a
''      Print #a, "cd\"
''      Print #a, "c:"
''      Print #a, "cd\"
''      Print #a, "type sale.txt > prn"
''    Close #a
''    Rep.txtfile = "c:\sale.txt"
''    Rep.Batfile = "c:\sale.bat"
'     a = FreeFile
'     Call KALBATPROCESS("sale")
Dim clsCryRptWaste As New clsCrystal
  Set clsCryRptWaste.cryRept = Cry_SetupWaste
  clsCryRptWaste.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0

Case 4

    If Record_Exists("ig_Rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
    If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
        Opt = "fnd"
        desc.Caption = "Find"
        stbar.Panels(2).Text = "Find"
        Screen.MousePointer = 11
        stbar.Panels(2).Text = "Select Product Code  from the List"
'        TXTFIELDS(1).Enabled = False
'        TXTFIELDS(16).Enabled = False
'        TXTFIELDS(17).Enabled = False
'        TXTFIELDS(18).Enabled = False
'        Screen.MousePointer = 0
'        TXTFIELDS(5).Locked = True
'        Combo4.Locked = False
'        Combo5.Locked = False
'        TXTFIELDS(1).Visible = True
        Call adddelmod(BUTTON)
        BUTTON(4).Enabled = False
        BUTTON(9).Enabled = False
        BUTTON(10).Enabled = True
        Screen.MousePointer = 0
        Call itemlookup
        
        
Case 5

        'txtfields(42).Text = ""

'first
        If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
        desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First record"
        Call FIR(BUTTON)
        Exit Sub

GoFirstError:

'            MsgBox " No Records Found", vbInformation, head
            
Case 6

        'txtfields(42).Text = ""
'next
       If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
       desc.Caption = "Query"
        On Error GoTo GoNextError

        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
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
            stbar.Panels(2).Text = "Last record"


        End If

        Exit Sub

GoNextError:

 '      MsgBox " No Records Found", vbCritical, head



Case 7
        'txtfields(42).Text = ""
 'previous
       If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
       desc.Caption = "Query"

        On Error GoTo GoPrevError

        If Not adoPrimaryRS.BOF Then

            adoPrimaryRS.MovePrevious
            stbar.Panels(2).Text = "Record No :" & adoPrimaryRS.AbsolutePosition
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
            stbar.Panels(2).Text = "First Record"
        End If

        Exit Sub

GoPrevError:

        MsgBox " No Records Found", vbCritical, head


Case 8

        'txtfields(42).Text = ""
'last
         If Record_Exists("ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')") = False Then Exit Sub
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:
       MsgBox " No Records Found", vbCritical, head



Case 9
'Save
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(2).Text) = "" Then
            MsgBox "Description cannot be empty", vbInformation, head
            txtfields(2).SetFocus
            Exit Sub
        End If
        
    'masked 14-june-2006
'     If Trim(txtFields(4).Text) = "" Then
'        MsgBox "Product Type cannot be empty", vbInformation, head
'        txtFields(4).SetFocus
'      Exit Sub
'     End If
'--------------------

'        If Trim(txtfields(8).Text) = "" Then
'        MsgBox "LTAX cannot be empty", vbInformation, head
'      txtfields(8).SetFocus
'      Exit Sub
'      End If
 
'        If Trim(txtfields(14).Text) = "" Then
'        MsgBox "CTAX cannot be empty", vbInformation, head
'       txtfields(14).SetFocus
'      Exit Sub
'      End If
      
      If Trim(txtfields(10).Text) = "" Then txtfields(10).Text = 0
        'MsgBox "Pack Wt Cannot be empty", vbInformation, head
        'txtfields(10).SetFocus
      'Exit Sub
      'End If
      
       If Trim(txtfields(12).Text) = "" Then
        MsgBox "Pack Type Cannot be empty", vbInformation, head
        txtfields(12).SetFocus
      Exit Sub
      End If
      If Trim(txtfields(13).Text) = "" Then
        MsgBox "Short Code Cannot be empty", vbInformation, head
        txtfields(13).SetFocus
      Exit Sub
      End If
      
        '31.05
      If Trim(txtfields(41).Text) = "" Then
        MsgBox "Please Enter HSN Code", vbInformation, head
        txtfields(41).SetFocus
        Exit Sub
      End If

      
    If Opt = "add" Then
    If Trim(txtfields(1).Text) = "" Then
        MsgBox "Please enter the Waste Code", vbInformation, head
        txtfields(1).Locked = False
        txtfields(1).SetFocus
      Exit Sub
    End If
    End If
If Combo4.Text = "" Then
MsgBox "Select UOM from the List", vbInformation, head
Combo4.SetFocus
Exit Sub
End If
If Combo5.Text = "" Then
MsgBox "Select Rg1 from the List", vbInformation, head
Combo5.SetFocus
Exit Sub

End If
If Option1.value = True Then
 wtype = "U"
Else
wtype = "S"
End If
       Screen.MousePointer = 11

    If Opt = "add" Then
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("user_id") = usrid
        adoPrimaryRS("kcs") = "N"
        adoPrimaryRS("wht") = "N"
        adoPrimaryRS("ro") = "R"
        adoPrimaryRS("uom") = Left(Combo4.Text, 1)
        adoPrimaryRS("rg1") = Left(Combo5.Text, 1)
        adoPrimaryRS("finishing") = "CO"
        adoPrimaryRS("product_code") = Trim(txtfields(1).Text)
        adoPrimaryRS("description") = Trim(txtfields(2).Text)
        adoPrimaryRS("ltax_code") = Trim(txtfields(8).Text)
        adoPrimaryRS("ctax_code") = Trim(txtfields(14).Text)
        adoPrimaryRS("divcode") = Divcode
        adoPrimaryRS("product_type") = "CM"
        adoPrimaryRS("short_code") = txtfields(13).Text
        adoPrimaryRS("Wastetype") = Trim(wtype)
        adoPrimaryRS("tariffhead") = Trim(txtfields(3).Text)
        
        '22
        adoPrimaryRS("HSN") = Trim(txtfields(41).Text)
        adoPrimaryRS.UpdateBatch adAffectAll
        
        
        
         Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode

        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Waste Product"
        TrnLog("Trans_Mod") = "Add"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
        TrnLog("varcode") = Trim(txtfields(1).Text)
                   
        TrnLog("potype") = Trim(wtype)
        TrnLog("HSN") = Trim(txtfields(41).Text)
        TrnLog("Line_No") = txtfields(13).Text

        TrnLog.UpdateBatch adAffectAllChapters
        
        
        
        'Set rs = New Recordset
        'rs.Open "select count(*) from ig_packnotype where packno_code='" & adoPrimaryRS("product_code") & "' and divcode='" & divcode & "'", DB, adOpenStatic
        'If rs(0) = 0 Then
         '   DB.Execute "insert into ig_packnotype(divcode,packno_code,description) values ('" & divcode & "','" & adoPrimaryRS("product_code") & "','" & adoPrimaryRS("description") & "' )"
        'End If
        DB.CommitTrans
        Screen.MousePointer = 0
        MsgBox " Record(s) Saved", vbInformation, head
        stbar.Panels(2).Text = "Record(s) Saved"
        Opt = " "
        Call query_mode
        BUTTON(0).SetFocus
        Exit Sub
        End If

        If Opt = "mod" Then
         adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
         adoPrimaryRS("user_id") = usrid
        adoPrimaryRS("kcs") = "N"
        adoPrimaryRS("wht") = "N"
        adoPrimaryRS("ro") = "R"
        adoPrimaryRS("uom") = Left(Combo4.Text, 1)
        adoPrimaryRS("rg1") = Left(Combo5.Text, 1)
        adoPrimaryRS("finishing") = "CO"
        adoPrimaryRS("Wastetype") = Trim(wtype)
        adoPrimaryRS("tariffhead") = Trim(txtfields(3).Text)
        
        '22
        adoPrimaryRS("HSN") = Trim(txtfields(41).Text)

        adoPrimaryRS.UpdateBatch adAffectAll
        
         Set TrnLog = New Recordset
        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
        TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode

        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Waste Product"
        TrnLog("Trans_Mod") = "Mod"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                   
        TrnLog("varcode") = Trim(txtfields(1).Text)
                   
        TrnLog("potype") = Trim(wtype)
        TrnLog("HSN") = Trim(txtfields(41).Text)
        TrnLog("Line_No") = txtfields(13).Text

        TrnLog.UpdateBatch adAffectAllChapters
        
'        Set rs = New Recordset
'        rs.Open "select count(*) from ig_packnotype where packno_code='" & adoPrimaryRS("product_code") & "' and divcode='" & divcode & "'", db, adOpenStatic
'        If rs(0) = 0 Then
'            db.Execute "insert into ig_packnotype(divcode,packno_code,description) values ('" & divcode & "','" & adoPrimaryRS("product_code") & "','" & adoPrimaryRS("description") & "' )"
'        Else
'            db.Execute "update ig_packnotype set description='" & adoPrimaryRS("description") & "' where packno_code='" & adoPrimaryRS("product_code") & "'"
'        End If
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record(s) Modified", vbInformation, head
            stbar.Panels(2).Text = "Record(s) Modified"
            Opt = " "
            Call query_mode
            BUTTON(0).SetFocus
            Exit Sub

        End If
    End If

      If Opt = "del" Then
      On Error GoTo delerr
             a% = MsgBox("Do you want to delete?", vbYesNo, head)
             
             If a = 6 Then
               DB.Execute ("delete from ig_rproduct where product_code='" & txtfields(1).Text & "'")
               
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
        
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Waste Product"
                TrnLog("Trans_Mod") = "Del"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                           
                TrnLog("varcode") = Trim(txtfields(1).Text)
                           
                TrnLog("potype") = Trim(wtype)
                TrnLog("HSN") = Trim(txtfields(41).Text)
                TrnLog("Line_No") = txtfields(13).Text
        
                TrnLog.UpdateBatch adAffectAllChapters
               'db.Execute ("delete from ig_packnotype where packno_code='" & txtFields(15).Text & "'")
                DB.CommitTrans
                Screen.MousePointer = 0
                MsgBox "Record(s) Deleted ", vbInformation, head
                stbar.Panels(2).Text = "Record(s) Deleted"
                Opt = " "
                Call query_mode
                BUTTON(0).SetFocus
                Exit Sub
            Else
                 Screen.MousePointer = 0
                 MsgBox "Deletion cancelled", vbInformation, head
                 DB.CommitTrans
                 Opt = " "
                 Call query_mode
                 Screen.MousePointer = 0
                                
            End If
          End If
delerr:
     If Err.Number = -2147217900 Then
    MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
    
    BUTTON_Click (10)
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If

Case 10
    'CANCEL
'If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
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
         Call cancl1(BUTTON, 4)
        Call query_mode
        BUTTON(0).SetFocus

Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Reset
Unload Me
End Select
Exit Sub


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form salewaste", vbInformation, head
End Sub
Private Sub Combo1_GotFocus()
    stbar.Panels(2).Text = "Select K,C,S,N From the Drop Down List"
End Sub
Private Sub Combo2_GotFocus()
    stbar.Panels(2).Text = "Select W,H,T,N From the Drop Down List"
End Sub
Private Sub Combo3_GotFocus()
    stbar.Panels(2).Text = "Select R,O From the Drop Down List"
End Sub
Private Sub Combo4_GotFocus()
    stbar.Panels(2).Text = "Select K,M From the Drop Down List"
End Sub
Private Sub Combo5_GotFocus()
    stbar.Panels(2).Text = "Select Y,N From the Drop Down List"
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
        If BUTTON(4).Enabled = True Then
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
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        If BUTTON(12).Enabled = True Then
            Call BUTTON_Click(12)   ''Print Option
        End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
        If BUTTON(13).Enabled = True Then
            Call BUTTON_Click(13)   ''Crystal Report
        End If
    End If

    If KeyCode = vbKeyF1 Then
        Call showForm4FunctionKey("F1")
    ElseIf KeyCode = vbKeyF2 Then
        Call showForm4FunctionKey("F2")
    ElseIf KeyCode = vbKeyF3 Then
        Call showForm4FunctionKey("F3")
    ElseIf KeyCode = vbKeyF4 Then
        Call showForm4FunctionKey("F4")
    ElseIf KeyCode = vbKeyF5 Then
        Call showForm4FunctionKey("F5")
    ElseIf KeyCode = vbKeyF6 Then
        Call showForm4FunctionKey("F6")
    ElseIf KeyCode = vbKeyF7 Then
        Call showForm4FunctionKey("F7")
    ElseIf KeyCode = vbKeyF8 Then
        Call showForm4FunctionKey("F8")
    ElseIf KeyCode = vbKeyF9 Then
        Call showForm4FunctionKey("F9")
    ElseIf KeyCode = vbKeyF10 Then
        Call showForm4FunctionKey("F10")
    ElseIf KeyCode = vbKeyF11 Then
        Call showForm4FunctionKey("F11")
    ElseIf KeyCode = vbKeyF12 Then
        Call showForm4FunctionKey("F12")
    End If
End Sub


Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

If Opt = "add" Then
If Ksldesc1.listfield1 <> "product_type" Then
 '   DB.RollbackTrans
  '  Opt = " "
   ' Call query_mode
'Else
    SSTab1.Visible = True
    txtfields(4).Text = ""
    txtfields(8).SetFocus
    txtfields(5).Text = ""
End If
End If
If (Opt = "mod" Or Opt = "del") And (Ksldesc1.listfield1 = "product_code") Then
    DB.RollbackTrans
    Opt = " "
    Call query_mode
End If
Frame3.Visible = False
SSTab1.Visible = True
Buttonframe.Enabled = True


Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form salewaste", vbInformation, head
End Sub

Private Sub lovok_Click()
''    On Error Resume Next
On Error GoTo lovok_Click_Error

    Frame3.Visible = False
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Select Case Ksldesc1.listfield1
        Case "product_code"
            txtfields(15).Text = Ksldesc1.Code
            txtfields(2).Text = Ksldesc1.Description
'            txtfields(15).Locked = True
        Call query_mode
'            txtfields(15).Text = Ksldesc1.code
            'txtfields(15).Locked = True
            txtfields(2).Enabled = True
            If Opt = "del" Then
            BUTTON(9).SetFocus
            End If
            If Opt = "mod" Then
                txtfields(2).SetFocus
            End If
            

        Case "product_type"
              txtfields(4).Text = Ksldesc1.Code
              txtfields(5).Text = Ksldesc1.Description
              txtfields(8).SetFocus
        Case "tax_code"
             If FLG = "l" Then
                txtfields(8).Text = Ksldesc1.Code
                txtfields(16).Text = Ksldesc1.Description
                FLG = ""
             txtfields(14).SetFocus
             End If
             If FLG = "c" Then
                txtfields(14).Text = Ksldesc1.Code
                txtfields(17).Text = Ksldesc1.Description
                FLG = ""
                txtfields(12).SetFocus
             End If
          
        Case "pack_type"
            txtfields(12).Text = Ksldesc1.Code
            txtfields(18).Text = Ksldesc1.Description
            txtfields(13).SetFocus
            'txtFields(10).SetFocus
             End Select
        End If


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form salewaste", vbInformation, head
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

  Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring

    desc.Caption = "query"
    DATLAB.Caption = Date
    Opt = "qry"
    stbar.Panels(1).Text = head
    Call query_mode


Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form salewaste", vbInformation, head

End Sub

Private Sub Form_Resize()
  On Error Resume Next
  'This will resize the grid whef the form is resized
 'SSTab1.Width = Me.Width - 3255
 ' SSTab1.Height = Me.Height - 2910
  stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
   End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  intervalMinutes = -1
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    On Error Resume Next
    intervalMinutes = -1
  If Opt <> "add" And adoPrimaryRS.RecordCount > 0 Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " to " & CStr(adoPrimaryRS.RecordCount)
  
On Error GoTo Err
intervalMinutes = -1
   txtfields(1).Text = adoPrimaryRS("product_code")
   

    Set Rs = New Recordset
    Rs.Open "select pack_type,description from ig_packtype where pack_type = '" & adoPrimaryRS("pack_type") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
        txtfields(12).Text = Rs("pack_type")
        txtfields(18).Text = Rs("description")
    Else
        txtfields(12).Text = ""
        txtfields(18).Text = ""
    End If
   
     If adoPrimaryRS("uom") = "K" Then
       Combo4.Text = "K-Kgs"
       Else:
      Combo4.Text = "M-Meters"
     End If
     If adoPrimaryRS("rg1") = "Y" Then
      Combo5.Text = "Y-Yes"
       Else:
      Combo5.Text = "N-No"
     End If
     If adoPrimaryRS("Wastetype") = "U" Then
     Option1.value = True
       Else:
      Option2.value = True
     End If
     End If
     intervalMinutes = -1
   Exit Sub
Err:

End Sub


Public Sub query_mode()
On Error GoTo query_mode_Error
  
        If Opt = " " Or Opt = "qry" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select Top 30 a.product_code,a.finishing,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,a.tariffhead,wastetype from ig_rproduct a where (a.wastetype like'U%' or a.wastetype like'S%') and divcode = '" & Divcode & "' order by a.product_code", DB, adOpenStatic, adLockOptimistic
        adoPrimaryRS.Open "select Top 30 a.product_code,a.finishing,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,a.tariffhead,wastetype,a.HSN from ig_rproduct a where (a.wastetype like'U%' or a.wastetype like'S%') and divcode = '" & Divcode & "' order by a.product_code", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        desc.Caption = "Query"
        Call NEWFORM1(BUTTON, GSNO)
        Call disablcontls
        'txtFields(15).Visible = True
        'txtFields(0).Visible = False
        If adoPrimaryRS.RecordCount > 0 Then
        txtfields(1).Text = adoPrimaryRS("product_code")
        End If
        txtfields(1).Visible = True
        Combo4.Locked = True
        Combo5.Locked = True
        
        End If
        
        If Opt = "mod" Then
        Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select a.product_code,a.entdate,a.user_id,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.finishing,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,wastetype,a.tariffhead from ig_Rproduct a where a.product_code='" & LookUp.Fields(0) & "' and a.divcode ='" & Divcode & "' AND WASTETYPE = '" & LookUp.Fields(2) & "' ", DB, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select a.product_code,a.entdate,a.user_id,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.finishing,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,wastetype,a.tariffhead,a.HSN from ig_Rproduct a where a.product_code='" & LookUp.Fields(0) & "' and a.divcode ='" & Divcode & "' AND WASTETYPE = '" & LookUp.Fields(2) & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Call ENABLCONTLS
        txtfields(5).Enabled = False
        txtfields(16).Enabled = False
        txtfields(17).Enabled = False
        txtfields(18).Enabled = False

        'txtfields(14).Locked = True
        'TXTFIELDS(5).Locked = True
        'TXTFIELDS(0).Visible = False
        txtfields(1).Visible = False
        'TXTFIELDS(15).Visible = True
        
        End If
        
        If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        ''adoPrimaryRS.Open "select a.product_code,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.finishing,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,tariffhead from ig_product a where a.product_code='" & LookUp.Fields(0) & "' AND WASTETYPE = '" & LookUp.Fields(2) & "' and a.divcode = '" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
        adoPrimaryRS.Open "select a.product_code,a.entdate,a.user_id,a.description,a.kcs,a.wht,a.product_type,a.ro,a.uom,a.rg1,a.finishing,a.ltax_code,a.ctax_code,a.pack_wt,a.pack_type,a.short_code,wastetype, a.tariffhead,a.HSN from ig_Rproduct a where a.product_code='" & LookUp.Fields(0) & "' and a.divcode ='" & Divcode & "' AND WASTETYPE = '" & LookUp.Fields(2) & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Call disablcontls
        Combo4.Locked = True
        Combo5.Locked = True
       ' TXTFIELDS(0).Visible = False
       ' TXTFIELDS(1).Visible = False
        'TXTFIELDS(15).Visible = True
        End If
 intervalMinutes = -1

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form salewaste", vbInformation, head
        
End Sub


Private Sub ksldesc1_GotFocus()
On Error GoTo ksldesc1_GotFocus_Error

lovok.Default = True

Exit Sub
ksldesc1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ksldesc1_GotFocus of Form salewaste", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub header(pg As Integer, co As Integer)
On Error GoTo header_Error

          Close
         ' Open "c:\sale.txt" For Output As #a
          Open KALFOLDERDATA & "\sale.TXT" For Output As #a
          Print #a, Chr(18)
          Print #a, Space(10) + CENTRE(divname, 80, " ")
          Print #a, Space(120); Chr(15)
          Str = CStr(pdate) + Space(2)
          Print #a, Space(5); "Waste Product Listing" + Space(48) + Format(Str, "dd/MM/yy") + "  " + "Pg.No :" + Space(1) + CStr(pg)

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form salewaste", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub bindcontls()
On Error GoTo bindcontls_Error

On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
   Set oText.DataSource = adoPrimaryRS
  Next

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form salewaste", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
On Error GoTo ENABLCONTLS_Error

For Each X In Me.txtfields
    X.Locked = False
Next
Frame1.Enabled = True

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form salewaste", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error

For Each tb In Me.txtfields
    tb.Locked = True
Next
Frame1.Enabled = False

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form salewaste", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error

On Error GoTo txtfields_Change_Error

If Opt = " " Or Opt = "qry" Then
Select Case Index
Case 4
Set Rs = New Recordset
Rs.Open "select * from  ig_producttype where product_type='" & Trim(txtfields(4).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If Rs.RecordCount > 0 Then
    If (txtfields(4).Text <> "") Then
        txtfields(4).Text = Rs(0)
        txtfields(5).Text = Rs(1)
    Else
        txtfields(4).Text = ""
        txtfields(5).Text = ""
    End If
End If
Case 8
Set Rs = New Recordset
Rs.Open "select * from  ig_tax where tax_code='" & Trim(txtfields(8).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If Not Rs.EOF Then
'txtfields(8).Text = rs(0)
txtfields(16).Text = Rs(1)
Else
'        txtfields(8).Text = ""
        txtfields(16).Text = ""
End If
Case 14
Set Rs = New Recordset
Rs.Open "select * from  ig_tax where tax_code='" & Trim(txtfields(14).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If (txtfields(14).Text <> "") Then
txtfields(14).Text = Rs(0)
txtfields(17).Text = Rs(1)
Else
        txtfields(14).Text = ""
        txtfields(17).Text = ""
End If
Case 12
Set Rs = New Recordset
Rs.Open "select * from  ig_packtype where pack_type='W'", DB, adOpenDynamic, adLockOptimistic
If (txtfields(12).Text <> "") Then
    If Rs.RecordCount > 0 Then
        txtfields(12).Text = Rs(0)
        txtfields(18).Text = Rs(1)
    End If
Else
        txtfields(12).Text = ""
        txtfields(18).Text = ""
End If
End Select
End If
'08.06

If Opt = " " Or Opt = "qry" Or Opt = "del" Or Opt = "mod" Then
If Index = 41 Then
    Set Rs = New Recordset
    Rs.Open "SELECT DESCRIPTION FROM IG_HSNCODE where CODE='" & Trim(txtfields(41).Text) & "'", DB, adOpenDynamic, adLockOptimistic
    If Not Rs.EOF Then
    
    If Not IsNull(Rs(0)) Then
    txtfields(42).Text = Rs(0)
    End If
    Else
       txtfields(42).Text = ""
    End If
End If

End If

Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form salewaste", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 1
    stbar.Panels(2).Text = "Enter Maximum of 5 Characters"
Case 2
    stbar.Panels(2).Text = "Enter Maximum of 50 Characters"
Case 3
    stbar.Panels(2).Text = "Enter Tariff Heading No"
Case 6, 9, 10
stbar.Panels(2).Text = "Enter Maximum 5 Numbers with 2 Decimals "
Case 11
stbar.Panels(2).Text = "Enter Maximum 5 Numbers with 3 Decimals "
Case 13
stbar.Panels(2).Text = "Enter Maximum of 14 Characters"
End Select
End If

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 2
 If Opt = "add" Then
     'txtFields(15).Text = txtFields(0).Text + txtFields(1).Text
    'txtFields(15).Locked = True
 End If

Case 4
If Record_Exists("ig_producttype") = False Then Exit Sub
'        Screen.MousePointer = 11
''        SSTab1.Visible = False
''        Frame3.Visible = True
''        Frame3.ZOrder
''        Buttonframe.Enabled = False
''        listlb.Caption = "Product Type Listing"
''        Ksldesc1.conn = connectstring
''        Ksldesc1.Table = "ig_producttype"
''        Ksldesc1.listfield1 = "product_type"
''        Ksldesc1.listfield2 = "description"
''        Ksldesc1.SetFocus
''        stbar.Panels(2).Text = "Select Product Type from the List"
   
   
   Case 8
    If Record_Exists("ig_tax") = False Then Exit Sub
'        Screen.MousePointer = 11
'        SSTab1.Visible = False
'        FLG = "l"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Taxcode Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_tax"
'        Ksldesc1.listfield1 = "tax_code"
'        Ksldesc1.listfield2 = "description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select Tax Code  from the List"

   Case 14
If Record_Exists("ig_tax") = False Then Exit Sub
'        Screen.MousePointer = 11
'        SSTab1.Visible = False
'        FLG = "c"
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Taxcode Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_tax"
'        Ksldesc1.listfield1 = "tax_code"
'        Ksldesc1.listfield2 = "description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select Tax Code  from the List"
 Case 12
If Record_Exists("ig_packtype") = False Then Exit Sub
'        Screen.MousePointer = 11
'        SSTab1.Visible = False
'
'        Frame3.Visible = True
'        Frame3.ZOrder
'        Buttonframe.Enabled = False
'        listlb.Caption = "Pack Type Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_packtype"
'        Ksldesc1.listfield1 = "pack_type"
'        Ksldesc1.listfield2 = "description"
'        Ksldesc1.SetFocus
'        stbar.Panels(2).Text = "Select Tax Code  from the List"

   
End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form salewaste", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 1
   ToAlphanum txtfields(1), 5, KeyAscii
   ToUpCase1 txtfields(1), KeyAscii, 5
   Case 13
   ToAlphanum txtfields(13), 14, KeyAscii
   ToUpCase1 txtfields(1), KeyAscii, 14
Case 2
   ToAlphanum txtfields(2), 50, KeyAscii
   ToUpCase1 txtfields(2), KeyAscii, 50
'Case 3
'If Not (KeyAscii = 49 Or KeyAscii = 50 Or KeyAscii = 51 Or KeyAscii = 52 Or KeyAscii = 53) Then
'MsgBox "Enter either 1,2,3,4,5", vbInformation, head
'KeyAscii = 0
'End If
'ToNumber TXTFIELDS, 1, KeyAscii
Case 6, 9
ToFloatNo txtfields, KeyAscii
Case 10
ToFloatNo txtfields, KeyAscii
If txtfields(10).Text <> "" And KeyAscii = 9 Then
    BUTTON(9).Enabled = True
    BUTTON(9).SetFocus
 End If

Case 11
ToFloatNo txtfields, KeyAscii
End Select
End If


Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form salewaste", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'If Frame3.Visible = True Then ksldesc1.SetFocus
On Error GoTo txtfields_LostFocus_Error

On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 1
'txtFields(15).Text = txtFields(0).Text + txtFields(1).Text
'txtFields(15).Locked = True
   Set rec = New Recordset
   rec.Open "SELECT PRODUCT_code from ig_Rproduct where product_code='" & txtfields(1).Text & "' and divcode = '" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
      If rec.RecordCount > 0 Then
          MsgBox "Waste Code already exists", vbInformation, head
          txtfields(1).Text = ""
          txtfields(1).SetFocus
          Exit Sub
      End If

Case 8

    Case 14
    Set Rs = New Recordset
                    Rs.Open "select tax_code,description from ig_tax where tax_code = '" & Trim(txtfields(14).Text) & "'", DB, adOpenStatic
                    If Rs.RecordCount > 0 Then
                        txtfields(14).Text = Rs("tax_code")
                        txtfields(17).Text = Rs("description")
                        txtfields(12).SetFocus
                        Exit Sub
                    Else
                    Set Rs = New Recordset
                    Rs.Open "select tax_code,description from ig_tax", DB, adOpenStatic
                    
                    If Rs.RecordCount = 0 Then
                        MsgBox "No taxcode Details", vbInformation, head
                    End If
                        stbar.Panels(2).Text = "Select Tax Code  from the List"
                        LookUp.Clear = True
                        LookUp.query = "select tax_code as Code,description as Name from ig_tax"
                        LookUp.DefCol = "Code"
                        LookUp.Caption = "TaxCode Listing"
                        LookUp.ALIGN = "1500,2500"
                        LookUp.Show vbModal
                        
                        If LookUp.Cancel = False Then
                            txtfields(14).Text = LookUp.Fields(0)
                            txtfields(17).Text = LookUp.Fields(1)
                            txtfields(12).SetFocus
                            LookUp.Clear = True
                        Else
                            txtfields(14).Text = ""
                            txtfields(17).Text = ""
                            txtfields(12).SetFocus
                        End If
                        Exit Sub
                    End If


End Select
End If

If Opt = "add" Or Opt = "mod" Then

Select Case Index

Case 10
If txtfields(10).Text <> "" And IsNull(txtfields(10).Text) = False Then
 If txtfields(10).Text > 999.99 Then
      MsgBox "Invalid entry", vbInformation, head
      errflg = "h"
      txtfields(10).Text = " "
      txtfields(10).SetFocus
      Exit Sub
      Else
      If txtfields(10).Text = "" Then
      MsgBox "Enter Pack Wt", vbInformation, head
      Exit Sub
      Else
'      txtfields(11).SetFocus
      Exit Sub
      End If
      Exit Sub
      End If
      End If

 End Select
End If


Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form salewaste", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

On Error GoTo txtfields_Validate_Error

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 1
                If txtfields(1).Text = "" Then
                    MsgBox "Waste Code cannot be empty", vbInformation, head
                    Cancel = True
                End If
            Case 2
                If txtfields(2).Text = "" Then
                    MsgBox "Description cannot be empty", vbInformation, head
                    Cancel = True
                End If
            Case 10
                If Trim(txtfields(10).Text) = "" Or Trim(txtfields(18).Text) = "" Then Exit Sub
                If txtfields(10).Text = "" Then
                    MsgBox "Pack Wt Cannot be empty", vbInformation, head
                    Cancel = True
                ElseIf Opt = "add" Or Opt = "mod" Then
                    'BUTTON(9).SetFocus
                    Exit Sub
                End If
                
                
            Case 4
                If Trim(txtfields(4).Text) <> "" Then
                    Set Rs = New Recordset
                    Rs.Open "select product_type,description from ig_producttype where product_type = '" & Trim(txtfields(4).Text) & "'", DB, adOpenStatic
                        If Rs.RecordCount > 0 Then
                        txtfields(4).Text = Rs("product_type")
                        txtfields(5).Text = Rs("description")
                        txtfields(8).SetFocus
                        Exit Sub
                    Else
                        'SSTab1.Visible = False
                        Frame3.Visible = True
                        Frame3.ZOrder
                        Buttonframe.Enabled = False
                        listlb.Caption = "Product Type Listing"
                        Ksldesc1.conn = connectstring
                        Ksldesc1.Table = "ig_producttype"
                        Ksldesc1.listfield1 = "product_type"
                        Ksldesc1.listfield2 = "description"
                        stbar.Panels(2).Text = "Select Product Type from the List"
                        Ksldesc1.SetFocus
                       Exit Sub
                        
                        
                        
                    End If
                End If
      
            Case 8
                
                    Set Rs = New Recordset
                    Rs.Open "select tax_code,description from ig_tax where tax_code = '" & Trim(txtfields(8).Text) & "'", DB, adOpenStatic
                    If Rs.RecordCount > 0 Then
                        txtfields(8).Text = Rs("tax_code")
                        txtfields(16).Text = Rs("description")
                        txtfields(14).SetFocus
                        Exit Sub
                    Else
                    
                    Set Rs = New Recordset
                    Rs.Open "select tax_code,description from ig_tax", DB, adOpenStatic
                    
                    If Rs.RecordCount = 0 Then
                        MsgBox "No taxcode Details", vbInformation, head
                    End If
 
                        FLG = "l"
                        stbar.Panels(2).Text = "Select Tax Code  from the List"
                        LookUp.Clear = True
                        LookUp.query = "select tax_code as Code,description as Name from ig_tax"
                        LookUp.DefCol = "Code"
                        LookUp.Caption = "TaxCode Listing"
                        LookUp.ALIGN = "1500,2500"
                        LookUp.Show vbModal
                        
                        If LookUp.Cancel = False Then
                            txtfields(8).Text = LookUp.Fields(0)
                            txtfields(16).Text = LookUp.Fields(1)
                            LookUp.Clear = True
                            Exit Sub
                        Else
                            txtfields(8).Text = ""
                            txtfields(16).Text = ""
                            txtfields(14).SetFocus
                            Exit Sub
                        End If
                    End If
            Case 14
                
                    
            Case 12
                    Set Rs = New Recordset
                    Rs.Open "select pack_type,description from ig_packtype where pack_type = '" & Trim(txtfields(12).Text) & "'", DB, adOpenStatic
                    If Rs.RecordCount > 0 Then
                        txtfields(12).Text = Rs("pack_type")
                        txtfields(18).Text = Rs("description")
                        Exit Sub
                    Else
                       stbar.Panels(2).Text = "Select Tax Code  from the List"
                     
                        Set Rs = New Recordset
                        Rs.Open "select * from ig_packtype", DB, adOpenStatic
                        
                        If Rs.RecordCount = 0 Then
                            MsgBox "No Packtype  Details", vbInformation, head
                        End If
                            FLG = "l"
                            stbar.Panels(2).Text = "Select PackType from the List"
                            LookUp.Clear = True
                            LookUp.query = "select pack_type as Type,description as Name from ig_packtype"
                            LookUp.DefCol = "Type"
                            LookUp.Caption = "PackType Listing"
                            LookUp.ALIGN = "1500,2500"
                            LookUp.Show vbModal
                            
                            If LookUp.Cancel = False Then
                                txtfields(12).Text = LookUp.Fields(0)
                                txtfields(18).Text = LookUp.Fields(1)
                                LookUp.Clear = True
                                BUTTON(9).SetFocus
                                Exit Sub
                            Else
                                txtfields(12).Text = ""
                                txtfields(18).Text = ""
                                BUTTON(9).SetFocus
                                Exit Sub
                            End If
                    End If
            Case 13
                If Trim(txtfields(13).Text) = "" Then
                    MsgBox "Short Code Cannot be empty", vbInformation, head
                    Cancel = True
                End If
                
                '08.06
            Case 41
                LookUp.Clear = True
                LookUp.query = "select Code ""HSN Code"",Description ""DESCRIPTION"" from ig_HSNCODE"
                LookUp.ALIGN = "2000,2500"
                LookUp.Caption = "HSN Code Listing"
                LookUp.DefCol = "DESCRIPTION"
                LookUp.Show vbModal

                If LookUp.Cancel = False Then
                    Buttonframe.Enabled = True
                    txtfields(41).Text = LookUp.Fields(0)
                    txtfields(42).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    'Exit Sub
                Else
                    txtfields(41).Text = ""
                    txtfields(42).Text = ""
                    txtfields(41).SetFocus
                    LookUp.Clear = True
                End If
                Exit Sub
    
        End Select
    End If
    Exit Sub


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form salewaste", vbInformation, head

Screen.MousePointer = 0
End Sub
    
Sub itemlookup()
On Error GoTo itemlookup_Error

On Error GoTo itemlookup_Error

      LookUp.Clear = True
      LookUp.query = "select Product_Code""Waste Code"",Description""Waste Description"",Wastetype""Waste Type""  from ig_rproduct where (wastetype like 'U%' or wastetype like 'S%')"
      LookUp.Caption = "Waste Listing"
      LookUp.DefCol = "Description"
      LookUp.ALIGN = "1200,3000,1500"
      LookUp.Show vbModal
            
    If LookUp.Cancel = False Then
            txtfields(1).Visible = True
            txtfields(1).Text = LookUp.Fields(0)
            txtfields(2).Text = LookUp.Fields(1)
            Call query_mode
''            TXTFIELDS(2).Enabled = True
''            If Opt = "del" Then
''            BUTTON(9).SetFocus
''            End If
'            If Opt = "mod" Then
'                TXTFIELDS(2).SetFocus
'            End If

    Else
        Opt = "mod"
        'QUERY_MODE
        Call BUTTON_Click(10)
        
    End If


Exit Sub
itemlookup_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure itemlookup of Form salewaste", vbInformation, head

Screen.MousePointer = 0
End Sub
