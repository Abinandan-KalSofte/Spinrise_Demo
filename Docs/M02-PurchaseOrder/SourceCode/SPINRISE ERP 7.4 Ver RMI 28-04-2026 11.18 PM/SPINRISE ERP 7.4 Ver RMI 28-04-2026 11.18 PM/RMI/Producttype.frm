VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form Producttype 
   Caption         =   "Product Type"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9405
   KeyPreview      =   -1  'True
   LinkTopic       =   "form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   64
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":0000
         Height          =   550
         Index           =   6
         Left            =   2670
         Picture         =   "Producttype.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":0797
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "Producttype.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":0E34
         Height          =   550
         Index           =   5
         Left            =   2145
         Picture         =   "Producttype.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":15E3
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
         Picture         =   "Producttype.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":1C89
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "Producttype.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "Producttype.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":26A4
         Height          =   550
         Index           =   7
         Left            =   3195
         Picture         =   "Producttype.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Recordb (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":2E3E
         Height          =   550
         Index           =   11
         Left            =   5310
         Picture         =   "Producttype.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":361D
         Height          =   550
         Index           =   9
         Left            =   4230
         Picture         =   "Producttype.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Producttype.frx":3CC9
         Height          =   550
         Index           =   10
         Left            =   4770
         Picture         =   "Producttype.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Producttype.frx":434F
         Height          =   550
         Index           =   8
         Left            =   3720
         Picture         =   "Producttype.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8205
         TabIndex        =   66
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   6720
         TabIndex        =   65
         Top             =   255
         Width           =   840
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3735
      Left            =   600
      TabIndex        =   11
      Top             =   1530
      Width           =   8910
      _ExtentX        =   15716
      _ExtentY        =   6588
      _Version        =   393216
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "General Details"
      TabPicture(0)   =   "Producttype.frx":4AFB
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Account Details"
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame2"
      Tab(1).ControlCount=   1
      Begin VB.Frame Frame2 
         Height          =   3255
         Left            =   -74850
         TabIndex        =   44
         Top             =   340
         Width           =   8655
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   19
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   62
            Top             =   1506
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "sale_ac_ex"
            Height          =   300
            Index           =   10
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   61
            Top             =   1506
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "bed_ac_l"
            Height          =   300
            Index           =   11
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   60
            Top             =   1845
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "bed_ac_is"
            Height          =   300
            Index           =   12
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   59
            Top             =   2523
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "aed_ac_l"
            Height          =   300
            Index           =   13
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   58
            Top             =   2184
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   20
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   57
            Top             =   1845
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   21
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   56
            Top             =   2184
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   22
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   55
            Top             =   2523
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   23
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   30
            Top             =   2865
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "aed_ac_is"
            Height          =   300
            Index           =   14
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   29
            Top             =   2865
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "sale_ac_is"
            Height          =   285
            Index           =   9
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   27
            Top             =   1182
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "sale_ac_l"
            Height          =   300
            Index           =   8
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   25
            Top             =   843
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "tax_ac_is"
            Height          =   300
            Index           =   7
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   23
            Top             =   504
            Width           =   1155
         End
         Begin VB.TextBox txtfields 
            DataField       =   "tax_ac_l"
            Height          =   300
            Index           =   6
            Left            =   2145
            MaxLength       =   6
            TabIndex        =   21
            Top             =   165
            Width           =   1170
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   18
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   28
            Top             =   1174
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   17
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   26
            Top             =   843
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   16
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   24
            Top             =   504
            Width           =   5160
         End
         Begin VB.TextBox txtfields 
            DataField       =   "glhead"
            Height          =   300
            Index           =   15
            Left            =   3390
            MaxLength       =   35
            TabIndex        =   22
            Top             =   165
            Width           =   5160
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Tax A/c Local"
            DataField       =   "TAX_AC_L"
            Height          =   195
            Index           =   7
            Left            =   210
            TabIndex        =   53
            Top             =   225
            Width           =   1020
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Tax A/c Inter State"
            DataField       =   "TAX_AC_IS"
            Height          =   195
            Index           =   8
            Left            =   210
            TabIndex        =   52
            Top             =   555
            Width           =   1365
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Sales A/c Local"
            DataField       =   "SALE_AC_L"
            Height          =   195
            Index           =   9
            Left            =   210
            TabIndex        =   51
            Top             =   900
            Width           =   1140
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Sales A/c  Inter State"
            DataField       =   "SALE_AC_IS"
            Height          =   195
            Index           =   10
            Left            =   210
            TabIndex        =   50
            Top             =   1230
            Width           =   1530
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Sales A/c Excess"
            DataField       =   "SALE_AC_EX"
            Height          =   195
            Index           =   11
            Left            =   210
            TabIndex        =   49
            Top             =   1560
            Width           =   1260
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "BED A/c Local"
            DataField       =   "BED_AC_L"
            Height          =   195
            Index           =   12
            Left            =   210
            TabIndex        =   48
            Top             =   1905
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "BED A/c Inter state"
            DataField       =   "BED_AC_IS"
            Height          =   195
            Index           =   14
            Left            =   210
            TabIndex        =   47
            Top             =   2580
            Width           =   1395
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "AED A/c Local"
            DataField       =   "AED_AC_L"
            Height          =   195
            Index           =   15
            Left            =   210
            TabIndex        =   46
            Top             =   2235
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "AED A/c Inter State"
            DataField       =   "AED_AC_IS"
            Height          =   195
            Index           =   16
            Left            =   210
            TabIndex        =   45
            Top             =   2925
            Width           =   1425
         End
      End
      Begin VB.Frame Frame1 
         Height          =   3240
         Left            =   150
         TabIndex        =   36
         Top             =   345
         Width           =   8655
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   24
            Left            =   2250
            MaxLength       =   35
            TabIndex        =   19
            Top             =   2115
            Width           =   4815
         End
         Begin VB.TextBox txtfields 
            DataField       =   "notify_code"
            Height          =   330
            Index           =   5
            Left            =   1530
            MaxLength       =   2
            TabIndex        =   18
            Top             =   2115
            Width           =   600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "cess_per"
            Height          =   330
            Index           =   4
            Left            =   4815
            MaxLength       =   6
            TabIndex        =   17
            Top             =   1530
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "aed_per"
            Height          =   330
            Index           =   3
            Left            =   1530
            MaxLength       =   6
            TabIndex        =   16
            Top             =   1530
            Width           =   900
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "bed_per"
            Height          =   330
            Index           =   2
            Left            =   4830
            MaxLength       =   6
            TabIndex        =   15
            Top             =   952
            Width           =   900
         End
         Begin VB.TextBox txtfields 
            DataField       =   "product_type"
            Height          =   330
            Index           =   0
            Left            =   1530
            MaxLength       =   2
            TabIndex        =   12
            Top             =   375
            Width           =   615
         End
         Begin VB.TextBox txtfields 
            DataField       =   "description"
            Height          =   330
            Index           =   1
            Left            =   2205
            MaxLength       =   45
            TabIndex        =   13
            Top             =   375
            Width           =   6000
         End
         Begin VB.ComboBox Combo1 
            DataField       =   "product_cat"
            Height          =   315
            ItemData        =   "Producttype.frx":4B17
            Left            =   1530
            List            =   "Producttype.frx":4B24
            Style           =   2  'Dropdown List
            TabIndex        =   14
            Top             =   960
            Width           =   1620
         End
         Begin VB.ComboBox Combo2 
            DataField       =   "blended"
            Height          =   315
            ItemData        =   "Producttype.frx":4B50
            Left            =   1530
            List            =   "Producttype.frx":4B5A
            Style           =   2  'Dropdown List
            TabIndex        =   20
            Top             =   2700
            Width           =   1380
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Product Type"
            Height          =   195
            Index           =   0
            Left            =   210
            TabIndex        =   43
            Top             =   390
            Width           =   960
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Product Category"
            Height          =   195
            Index           =   1
            Left            =   210
            TabIndex        =   42
            Top             =   1020
            Width           =   1230
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "BED %"
            Height          =   195
            Index           =   2
            Left            =   3825
            TabIndex        =   41
            Top             =   1020
            Width           =   495
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "AED %"
            Height          =   195
            Index           =   3
            Left            =   210
            TabIndex        =   40
            Top             =   1598
            Width           =   495
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "CESS %"
            Height          =   195
            Index           =   4
            Left            =   3825
            TabIndex        =   39
            Top             =   1598
            Width           =   585
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Notify "
            DataField       =   "Notify_code"
            Height          =   195
            Index           =   5
            Left            =   210
            TabIndex        =   38
            Top             =   2183
            Width           =   450
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Blended"
            DataField       =   "Blended"
            Height          =   195
            Index           =   6
            Left            =   210
            TabIndex        =   37
            Top             =   2760
            Width           =   585
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   54
      Top             =   10710
      Width           =   15240
      _ExtentX        =   26882
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
            Object.Width           =   14958
            MinWidth        =   14958
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "29/06/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "12:19 PM"
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
      Height          =   4785
      Left            =   360
      TabIndex        =   31
      Top             =   1260
      Visible         =   0   'False
      Width           =   8940
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   660
         Left            =   3105
         Style           =   1  'Graphical
         TabIndex        =   33
         Top             =   4065
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   660
         Left            =   4800
         Style           =   1  'Graphical
         TabIndex        =   32
         Top             =   4065
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3375
         Left            =   390
         TabIndex        =   63
         Top             =   735
         Width           =   7860
         _ExtentX        =   13864
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   34
         Top             =   120
         Width           =   8865
      End
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "Product Type"
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
      Left            =   600
      TabIndex        =   35
      Top             =   960
      Width           =   1725
   End
End
Attribute VB_Name = "Producttype"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim DB As Connection
Dim Opt As String
Dim sl, i_auto, KeyAscii As Integer
Dim Rep As Report.ReportView
Dim found1, found2, found3 As Boolean
Dim a As Integer
Dim f As Integer
Dim Co As Integer
Dim i As Integer
Dim Pg As Integer
Dim str As String
Dim flg As String
Dim rec As Recordset
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
    Screen.MousePointer = 11
    desc.Caption = "Addition"
    Set Rs = New Recordset
    Rs.Open "SELECT cOUNT(*) FROM ig_param where fa_link='Y' and divcode = '" & Divcode & "'", DB, adOpenStatic
    If Rs(0) = 0 Then
     flg = "u"
     SSTab1.TabEnabled(1) = False
     Frame2.Enabled = False
    Else
        Frame2.Enabled = True
        flg = ""
        If Record_Exists1("ig_param where tax_transfer='P'") = False Then 'Local Function that avoids the Message "No Records Found"
        TXTFIELDS(6).Enabled = False
        TXTFIELDS(7).Enabled = False
        TXTFIELDS(15).Enabled = False
        TXTFIELDS(16).Enabled = False
        Else
        TXTFIELDS(6).Enabled = True
        TXTFIELDS(7).Enabled = True
        TXTFIELDS(15).Enabled = True
        TXTFIELDS(16).Enabled = True
        End If
        If Record_Exists1("ig_param where SALE_transfer='P'") = False Then
        TXTFIELDS(8).Enabled = False
        TXTFIELDS(9).Enabled = False
        TXTFIELDS(10).Enabled = False
        TXTFIELDS(17).Enabled = False
        TXTFIELDS(18).Enabled = False
        TXTFIELDS(19).Enabled = False
        Else
        TXTFIELDS(8).Enabled = True
        TXTFIELDS(9).Enabled = True
        TXTFIELDS(10).Enabled = True
        TXTFIELDS(17).Enabled = True
        TXTFIELDS(18).Enabled = True
        TXTFIELDS(19).Enabled = True
        End If
        If Record_Exists1("ig_param where duty_transfer='P'") = False Then
        TXTFIELDS(11).Enabled = False
        TXTFIELDS(12).Enabled = False
        TXTFIELDS(13).Enabled = False
        TXTFIELDS(14).Enabled = False
        TXTFIELDS(20).Enabled = False
        TXTFIELDS(21).Enabled = False
        TXTFIELDS(22).Enabled = False
        TXTFIELDS(23).Enabled = False
        Else
        TXTFIELDS(11).Enabled = True
        TXTFIELDS(12).Enabled = True
        TXTFIELDS(13).Enabled = True
        TXTFIELDS(14).Enabled = True
        TXTFIELDS(20).Enabled = True
        TXTFIELDS(21).Enabled = True
        TXTFIELDS(22).Enabled = True
        TXTFIELDS(23).Enabled = True
        End If
    End If
    
    Opt = "add"
    stbar.Panels(2).Text = "Addition"
    Frame3.Visible = False
    SSTab1.TabEnabled(1) = False
    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "select PRODUCT_TYPE,DESCRIPTION,PRODUCT_CAT,BED_PER,AED_PER,CESS_PER,NOTIFY_CODE,entdate,user_id,BLENDED,TAX_AC_L,TAX_AC_IS,SALE_AC_L,SALE_AC_IS,SALE_AC_EX,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS from ig_producttype WHERE divcode = '" & divcode & "' and 1=2", db, adOpenStatic, adLockOptimistic
adoPrimaryRS.Open "select PRODUCT_TYPE,DESCRIPTION,PRODUCT_CAT,BED_PER,AED_PER,CESS_PER,NOTIFY_CODE,entdate,user_id,BLENDED,TAX_AC_L,TAX_AC_IS,SALE_AC_L,SALE_AC_IS,SALE_AC_EX,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS from ig_producttype WHERE 1=2", DB, adOpenStatic, adLockOptimistic
    Call bindcontls
    Call ENABLCONTLS
    adoPrimaryRS.AddNew
    SSTab1.TabEnabled(0) = True
    Frame1.Enabled = True
    DB.BeginTrans
    
    TXTFIELDS(15).Text = ""
    TXTFIELDS(16).Text = ""
    TXTFIELDS(17).Text = ""
    TXTFIELDS(18).Text = ""
    TXTFIELDS(19).Text = ""
    TXTFIELDS(20).Text = ""
    TXTFIELDS(21).Text = ""
    TXTFIELDS(22).Text = ""
    TXTFIELDS(23).Text = ""
    TXTFIELDS(3).Text = 0
    TXTFIELDS(4).Text = 0
    TXTFIELDS(2).Text = 0
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0
    SSTab1.TabVisible(0) = True
    TXTFIELDS(0).Enabled = True
    TXTFIELDS(0).SetFocus
    
       
    
Case 1, 2

    If Record_Exists("ig_producttype") = False Then Exit Sub
    If Index = 1 Then
        Opt = "mod"
        desc.Caption = "Modification"
    ElseIf Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
    End If
    Screen.MousePointer = 11
    
''    Frame1.Enabled = True
''    Frame2.Enabled = True
''    stbar.Panels(2).Text = "Modification"
''    ksldesc1.conn = connectstring
''    listlb.Caption = "Product Listing"
''    ksldesc1.table = "IG_producttype"
''    ksldesc1.listfield1 = "product_type"
''    'Ksldesc1.listfield2 = "isnull(description,'  ')"
''    ksldesc1.listfield2 = "description"
''    Frame3.Visible = True
''    SSTab1.Visible = False
    Call ENABLCONTLS
    Call bindcontls
    DB.BeginTrans
    Call adddelmod(BUTTON)
    LookUp.clear = True
    LookUp.Query = "select product_type""Type"",isnull(description,'  ') as Description from ig_producttype"
    LookUp.DefCol = "Description"
    LookUp.Caption = "Product Type Listing"
    LookUp.ALIGN = "2000,4000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        TXTFIELDS(0).Text = LookUp.Fields(0)
        TXTFIELDS(1).Text = LookUp.Fields(1)
        Call QUERY_MODE
    Else
        Call BUTTON_Click(10)
    End If
    'calling addmoddel procedure from module
    Screen.MousePointer = 0
    
Case 2
    'Deletion

    
    If Record_Exists("ig_producttype") = False Then Exit Sub
    
    Opt = "del"
    Screen.MousePointer = 11
    desc.Caption = "Deletion"
    stbar.Panels(2).Text = "Deletion"
    SSTab1.Visible = False
    Frame3.Visible = True
    listlb.Caption = "Product Listing"
    Ksldesc1.conn = connectstring
    Ksldesc1.Table = "IG_producttype"
    Ksldesc1.listfield1 = "product_type"
    Ksldesc1.listfield2 = "description"
    DB.BeginTrans
    'calling addmoddel procedure from module
    Call adddelmod(BUTTON)
   
    Screen.MousePointer = 0

Case 3
If Record_Exists("ig_producttype") = False Then Exit Sub
    Set Rep = New Report.ReportView
    a = FreeFile
    Pg = 1
    Co = 0
    
          Call header(Pg, Co)
          Set Rs = New Recordset
          
          Rs.Open "select PRODUCT_TYPE,isnull(DESCRIPTION,' '),case PRODUCT_CAT when 'S' then 'CSY YARN' WHEN 'C'THEN 'COTTON YARN' WHEN 'N'then 'NCSY YARN' END PRODUCT_CAT,BED_PER,AED_PER,CESS_PER,isnull(NOTIFY_CODE,' '),isnull(BLENDED,' ')  from ig_producttype ", DB
          If Rs.BOF Then
          MsgBox "No records found.", vbInformation, head
          Close #f
          Exit Sub
          End If
          Print #a, Space(5) + String(122, "-")
          Print #a, Space(5) + "PRODUCTTYPE  DESCRIPTION                                   PRODUCTCAT    BED%     AED%   CESS%    NOTIFYCODE  BLENDED "
          Print #a, Space(5) + String(122, "-")
          For i = 1 To Rs.RecordCount
          Print #a, Space(5) + Padr(CStr(Rs(0)), 13, " "); Padr(CStr(Rs(1)), 46, " "); Padr(CStr(Rs(2)), 12, " ") + Padl(CStr(Format(Rs(3), "#0.00")), 6, " "); Padl(CStr(Format(Rs(4), "#0.00")), 9, " "); Padl(CStr(Format(Rs(5), "#0.00")), 8, " "); Space(4); Padr(CStr(Rs(6)), 12, " "); Padr(CStr(Rs(7)), 8, " ")
          
          Co = Co + 1
          
          If Co > 53 Then
          Pg = Pg + 1
          Co = 0
          Print #a, Chr(12)
          Call header(Pg, Co)
          End If
          
          Rs.MoveNext
          Next
            Print #a, Space(5) + String(122, "-")
            Print #a, Chr(12)
         Close #a
          Open "c:\cust.bat" For Output As #a
      Print #a, "cd\"
      Print #a, "c:"
      Print #a, "cd\"
      Print #a, "type cust.txt > prn"
    Close #a
    Rep.txtfile = "c:\cust.txt"
    Rep.Batfile = "c:\cust.bat"
Case 4
    'Query
    Opt = "query"
    desc.Caption = "Query"
    stbar.Panels(2).Text = "Query"
    BUTTON(5).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(6).Enabled = True
    BUTTON(8).Enabled = True
         'calling query procedure from module
    'Call query(BUTTON)
Case 5
     'first
     desc.Caption = "Query"
   
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     BUTTON(5).Enabled = False
     BUTTON(7).Enabled = False
     BUTTON(6).Enabled = True
     BUTTON(8).Enabled = True
       stbar.Panels(2).Text = "First Record"
     Exit Sub
GoFirstError:

    
Case 6
     'next
      desc.Caption = "Query"
      On Error GoTo GoNextError
      If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            'Call bindcontls
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
         'moved off the end so go back
          adoPrimaryRS.MoveLast
         ' Call bindcontls
      End If
      'show the current record
      Exit Sub
GoNextError:
Case 7
    'Previous
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
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        adoPrimaryRS.MoveFirst
        End If
    'show the current record
  
   Exit Sub

GoPrevError:

       
Case 8
     'last
     desc.Caption = "Query"
     stbar.Panels(2).Text = "Last Record"
     On Error GoTo GoLastError
     adoPrimaryRS.MoveLast
     BUTTON(5).Enabled = True
     BUTTON(7).Enabled = True
     BUTTON(6).Enabled = False
     BUTTON(8).Enabled = False
     stbar.Panels(2).Text = "Last Record"
     Exit Sub

GoLastError:

  
Case 9
     'Save
     'desc.Caption = "Save"
      Screen.MousePointer = vbHourglass
      If Opt = "mod" Or Opt = "add" Or Opt = "" Then
      If Combo1.Text = "" Then
        MsgBox "Product category cannot be empty", vbInformation, head
        Combo1.SetFocus
        Exit Sub
     End If
     If Combo2.Text = "" Then
        MsgBox "Blended cannot be empty", vbInformation, head
        Combo2.SetFocus
        Exit Sub
     End If
      
      If TXTFIELDS(0).Text = "" Then
      MsgBox "Product type cannot be empty", vbInformation, head
      TXTFIELDS(0).SetFocus
      Exit Sub
      End If
      If TXTFIELDS(1).Text = "" Then
      MsgBox "Product name cannot be empty", vbInformation, head
       TXTFIELDS(1).SetFocus
       Exit Sub
     End If
     If TXTFIELDS(2).Text = "" Then
     MsgBox "Bed_per cannot be empty", vbInformation, head
      TXTFIELDS(2).SetFocus
      Exit Sub
     End If
     If TXTFIELDS(3).Text = "" Then
     MsgBox "Aed_per cannot be empty", vbInformation, head
      TXTFIELDS(3).SetFocus
      Exit Sub
     End If
    If TXTFIELDS(4).Text = "" Then
        MsgBox "Cess_Per cannot be empty", vbInformation, head
          TXTFIELDS(4).SetFocus
          Exit Sub
      End If
    If TXTFIELDS(5).Text = "" Then
     MsgBox "Notify Code cannot be empty", vbInformation, head
    TXTFIELDS(5).SetFocus
    Exit Sub
End If
End If
     If Opt = "add" Then
         adoPrimaryRS("product_type") = TXTFIELDS(0).Text
         If Trim(TXTFIELDS(1).Text <> "") Then
            adoPrimaryRS("description") = TXTFIELDS(1).Text
          End If
         adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
         adoPrimaryRS("user_id") = usrid
         adoPrimaryRS("PRODUCT_CAT") = Left(Combo1.Text, 1)
         adoPrimaryRS("bed_per") = val(TXTFIELDS(2).Text)
         adoPrimaryRS("aed_per") = val(TXTFIELDS(3).Text)
         adoPrimaryRS("cess_per") = val(TXTFIELDS(4).Text)
         adoPrimaryRS("blended") = Left(Combo2.Text, 1)
         adoPrimaryRS("notify_code") = TXTFIELDS(5).Text
         adoPrimaryRS.UpdateBatch adAffectAllChapters
         DB.CommitTrans
         MsgBox "Record(s) Saved", vbInformation, head
         Screen.MousePointer = 0
         BUTTON(0).Enabled = True
        BUTTON(0).SetFocus
         GoTo SEND
       End If
      If Opt = "mod" Then
        adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
        adoPrimaryRS("user_id") = usrid
        adoPrimaryRS("PRODUCT_CAT") = Left(Combo1.Text, 1)
        adoPrimaryRS("blended") = Left(Combo2.Text, 1)
        adoPrimaryRS.UpdateBatch adAffectAllChapters
        DB.CommitTrans
        MsgBox "Record(s) Modified", vbInformation, head
        GoTo SEND
        BUTTON(0).Enabled = True
        BUTTON(0).SetFocus
      End If

    If Opt = "del" Then
    On Error GoTo delerr
        a = MsgBox("Do you want to Delete the Record?", vbYesNo, head)
        If a = vbYes Then
            DB.Execute ("delete from ig_producttype where product_type='" & TXTFIELDS(0).Text & "'")
            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record(s) Deleted"
            MsgBox "Record(s) Deleted", vbInformation, head
         Else
            DB.RollbackTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Operation Cancelled"
          End If
        Opt = " "
        Call QUERY_MODE
        Screen.MousePointer = vbArrow
        BUTTON(0).SetFocus
    End If
delerr:
    If Err.Number = -21472119500# Then
    MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
    If Err.Number = -2147217900 Then
        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        DB.RollbackTrans
        Call QUERY_MODE
        Buttonframe.Enabled = True
        Screen.MousePointer = vbArrow
    End If
    

SEND:
Opt = "qry"
Call QUERY_MODE
Call NEWFORM1(BUTTON, GSNO)
Screen.MousePointer = 0
BUTTON(0).SetFocus
SSTab1.Tab = 0
SSTab1.TabVisible(0) = True
Exit Sub
DELERR6:
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
        MsgBox "This product is in use.Cannot delete record.", vbOKOnly + vbCritical, head & "Deletion Message"
        Opt = "del"
        BUTTON_Click (10)
    End If
    SSTab1.TabVisible(1) = False
    SSTab1.TabVisible(0) = True
SSTab1.TabVisible(1) = True
    
    
Case 10
    
    Frame3.Visible = False
    SSTab1.Visible = True
    desc.Caption = "Query"
     stbar.Panels(2).Text = "Cancel"
    Screen.MousePointer = 11
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
    If Opt <> "qry" Then
        Opt = "qry"
        Call QUERY_MODE
        Call cancl1(BUTTON, 97)
    End If
    Screen.MousePointer = 0
Case 11
    'EXIT
    Reset
    Unload Me
    
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head

End Sub



Private Sub Combo1_Validate(Cancel As Boolean)
 If Combo1.Text = "" Then
        MsgBox "Product category cannot be empty", vbInformation, head
        Cancel = True
     End If

End Sub



Private Sub Combo2_LostFocus()
If Frame2.Enabled = True Then
SSTab1.TabVisible(0) = False
SSTab1.TabVisible(1) = True
SSTab1.TabVisible(0) = True
End If

End Sub

Private Sub Combo2_Validate(Cancel As Boolean)
     If Combo2.Text = "" Then
        MsgBox "Blended cannot be empty", vbInformation, head
        Cancel = True
     End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
End Sub

Private Sub Form_Load()
Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open connectstring
  Opt = "qry"
  DATLAB.Caption = pdate
  desc.Caption = "Query"
  stbar.Panels(1).Text = head
  SSTab1.TabVisible(0) = True
  Call QUERY_MODE
End Sub



Private Sub Form_Resize()
On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub

Private Sub lovcancel_Click()

If Ksldesc1.listfield1 = "glcode" Then
    Frame3.Visible = False
    SSTab1.Visible = True
    Exit Sub
End If

SSTab1.Visible = True



Frame3.Visible = False
Opt = " "
DB.RollbackTrans
Call QUERY_MODE
BUTTON(0).SetFocus
End Sub

Private Sub lovok_Click()
Select Case Ksldesc1.listfield1
Case "product_type"
    TXTFIELDS(0).Text = Ksldesc1.Code
    TXTFIELDS(1).Text = Ksldesc1.Description
    Call QUERY_MODE
Case "notify_code"
   TXTFIELDS(5).Text = Ksldesc1.Code
   TXTFIELDS(24).Text = Ksldesc1.Description
   SSTab1.Visible = True
   Combo2.SetFocus
Case "glcode"
   If flg = "s" Then
   TXTFIELDS(6).Text = Ksldesc1.Code
   TXTFIELDS(15).Text = Ksldesc1.Description
   flg = ""
   
   ElseIf flg = "se" Then
   TXTFIELDS(7).Text = Ksldesc1.Code
   TXTFIELDS(16).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "e" Then
   TXTFIELDS(8).Text = Ksldesc1.Code
   TXTFIELDS(17).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "n" Then
   TXTFIELDS(9).Text = Ksldesc1.Code
   TXTFIELDS(18).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "t" Then
   TXTFIELDS(10).Text = Ksldesc1.Code
   TXTFIELDS(19).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "el" Then
   TXTFIELDS(11).Text = Ksldesc1.Code
   TXTFIELDS(20).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "tw" Then
   TXTFIELDS(12).Text = Ksldesc1.Code
   TXTFIELDS(21).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "th" Then
   TXTFIELDS(13).Text = Ksldesc1.Code
   TXTFIELDS(22).Text = Ksldesc1.Description
   flg = ""
   ElseIf flg = "f" Then
   TXTFIELDS(14).Text = Ksldesc1.Code
   TXTFIELDS(23).Text = Ksldesc1.Description
   flg = ""
   End If
End Select
    SSTab1.Visible = True
    Frame3.Visible = False
    If Opt = "mod" Then
        SSTab1.Enabled = True
        TXTFIELDS(0).Enabled = False
        TXTFIELDS(1).Enabled = True
        TXTFIELDS(1).SetFocus
    End If
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
If Opt = "qry" Or Opt = " " Or Opt = "mod" And Not adoPrimaryRS.EOF And Not adoPrimaryRS.BOF Then
    stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " to " & CStr(adoPrimaryRS.RecordCount)
     
On Error GoTo Err

    If adoPrimaryRS("blended") = "Y" Then
      Combo2.Text = "Y-yes"
      Else
       Combo2.Text = "N-No"
     End If
    If adoPrimaryRS("product_cat") = "C" Then
            Combo1.Text = "C-COTTON YARN"
      ElseIf adoPrimaryRS("product_cat") = "N" Then
            Combo1.Text = "N-NCSY YARN"
      ElseIf adoPrimaryRS("product_cat") = "S" Then
            Combo1.Text = "S-CSY YARN"
    End If
End If

Exit Sub
Err:
End Sub

Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.TXTFIELDS
   Set oText.DataSource = adoPrimaryRS
  Next
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
For Each X In Me.TXTFIELDS
    X.Locked = False
Next
Combo1.Locked = False
Combo2.Locked = False
End Sub
Public Sub disablcontls()
Dim tb As TextBox
For Each tb In Me.TXTFIELDS
    tb.Locked = True
Next
Combo1.Locked = True
Combo2.Locked = True
End Sub

Private Sub Txtfields_Change(Index As Integer)

Dim rec As Recordset
On Error GoTo Err
Select Case Index
Case 5
Set rec = New Recordset
On Error GoTo Err
rec.Open "select * from  ig_notify where notify_code='" & Trim(TXTFIELDS(5).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If (TXTFIELDS(5).Text <> "") Then
TXTFIELDS(5).Text = rec(0)
TXTFIELDS(24).Text = rec(1)
Else
        TXTFIELDS(5).Text = ""
        TXTFIELDS(24).Text = ""
        End If
Case 6

On Error GoTo Err
Set rec = New Recordset
rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(6).Text) & "'", DB, adOpenDynamic, adLockOptimistic
If (TXTFIELDS(6).Text <> "") Then
TXTFIELDS(6).Text = rec(0)
TXTFIELDS(15).Text = rec(1)
Else
        TXTFIELDS(6).Text = ""
        TXTFIELDS(15).Text = ""
End If
Case 7
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(7).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(7).Text <> "") Then
        TXTFIELDS(7).Text = rec(0)
        TXTFIELDS(16).Text = rec(1)
        Else
        TXTFIELDS(7).Text = ""
        TXTFIELDS(16).Text = ""
        End If
Case 8
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(8).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(8).Text <> "") Then
        TXTFIELDS(8).Text = rec(0)
        TXTFIELDS(17).Text = rec(1)
        Else
        TXTFIELDS(8).Text = ""
        TXTFIELDS(17).Text = ""
        End If
Case 9
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(9).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(9).Text <> "") Then
        TXTFIELDS(9).Text = rec(0)
        TXTFIELDS(18).Text = rec(1)
        Else
        TXTFIELDS(9).Text = ""
        TXTFIELDS(18).Text = ""
        End If
Case 10
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(10).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(10).Text <> "") Then
        TXTFIELDS(10).Text = rec(0)
        TXTFIELDS(19).Text = rec(1)
        Else
        TXTFIELDS(10).Text = ""
        TXTFIELDS(19).Text = ""
        End If
Case 11
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(11).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(11).Text <> "") Then
        TXTFIELDS(11).Text = rec(0)
        TXTFIELDS(20).Text = rec(1)
        Else
        TXTFIELDS(11).Text = ""
        TXTFIELDS(20).Text = ""
        End If
        Case 12
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(12).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(12).Text <> "") Then
        TXTFIELDS(12).Text = rec(0)
        TXTFIELDS(21).Text = rec(1)
        Else
        TXTFIELDS(12).Text = ""
        TXTFIELDS(21).Text = ""
        End If
 Case 13
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(13).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(13).Text <> "") Then
        TXTFIELDS(13).Text = rec(0)
        TXTFIELDS(22).Text = rec(1)
        Else
        TXTFIELDS(13).Text = ""
        TXTFIELDS(22).Text = ""
        End If
        Case 14
On Error GoTo Err
Set rec = New Recordset
        rec.Open "select * from  fa_glmas where glcode='" & Trim(TXTFIELDS(14).Text) & "'", DB, adOpenDynamic, adLockOptimistic
        If (TXTFIELDS(14).Text <> "") Then
        TXTFIELDS(14).Text = rec(0)
        TXTFIELDS(23).Text = rec(1)
        Else
        TXTFIELDS(14).Text = ""
        TXTFIELDS(23).Text = ""
        End If
End Select
Exit Sub
Err:

End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
    stbar.Panels(2).Text = "Enter Maximum of 2 Characters"
    Case 1
    stbar.Panels(2).Text = "Enter Maximum of 45 Characters"
Case 2, 3, 4
stbar.Panels(2).Text = "Enter Maximum 3 Numbers with 2 Decimals "
Case 11
stbar.Panels(2).Text = "Enter Maximum 5 Numbers with 3 Decimals "
Case 7
stbar.Panels(2).Text = "Enter Maximum of 14 Characters"
End Select
End If
Select Case Index
Case 5
    If Opt = "add" Or Opt = "mod" Then
''        If Record_Exists("ig_notify") = False Then Exit Sub
''        Screen.MousePointer = 11
''        SSTab1.Visible = False
''        Frame3.Visible = True
''        listlb.Caption = "Notify Listing"
''        ksldesc1.conn = connectstring
''        ksldesc1.table = "ig_notify"
''        ksldesc1.SetFocus
''        stbar.Panels(2).Text = "Select a Notify Code"
''        ksldesc1.listfield1 = "notify_code"
''        ksldesc1.listfield2 = "description"
    End If
    If TXTFIELDS(0).Text <> "" And TXTFIELDS(1).Text <> "" And TXTFIELDS(2).Text <> "" And TXTFIELDS(3).Text <> "" And TXTFIELDS(4).Text <> "" Then
SSTab1.TabEnabled(1) = True
End If
  Case 6
   If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "s"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    
    Case 7
   If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "se"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 8
   If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "e"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 9
   If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "n"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 10
   If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "t"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 11
    If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "el"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 12
    If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "tw"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 13
    If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "th"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
    Case 14
    If Opt = "add" Or Opt = "mod" Then
        If Record_Exists("fa_glmas") = False Then Exit Sub
        Screen.MousePointer = 11
        flg = "f"
        SSTab1.Visible = False
        Frame3.Visible = True
        listlb.Caption = "General Ledger Listing"
        Ksldesc1.conn = connectstring
        Ksldesc1.Table = "fa_glmas"
        
        Ksldesc1.listfield1 = "glcode"
        Ksldesc1.listfield2 = "glhead"
        Ksldesc1.SetFocus
         stbar.Panels(2).Text = "Select General Ledger from the List"
    End If
  End Select
  Screen.MousePointer = 0
End Sub



Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
Case 0
 ToAlphaNumber TXTFIELDS(Index), 2, KeyAscii
 ToUpCase1 TXTFIELDS, KeyAscii, 2
 Case 1
 'ToAlphaNumber txtfields(Index), 45, KeyAscii
 ToUpCase1 TXTFIELDS, KeyAscii, 45
 Case 2
 Call tonum(TXTFIELDS(Index), 3, KeyAscii)
 Case 3
 Call tonum(TXTFIELDS(Index), 3, KeyAscii)
 Case 4
 Call tonum(TXTFIELDS(Index), 3, KeyAscii)
 
 Case 6, 7, 8, 9, 10, 11, 12, 13, 14
 ToAlpha1 TXTFIELDS(Index), 6, KeyAscii
 ToUpCase1 TXTFIELDS, KeyAscii, 6
 
 End Select
End Sub
Public Sub QUERY_MODE()
 If Opt = "del" Then
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select PRODUCT_TYPE,DESCRIPTION,PRODUCT_CAT,BED_PER,AED_PER,CESS_PER,NOTIFY_CODE,BLENDED,TAX_AC_L,TAX_AC_IS,SALE_AC_L,SALE_AC_IS,SALE_AC_EX,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS from ig_producttype where product_type = '" & Trim(TXTFIELDS(0)) & "'", DB, adOpenStatic, adLockOptimistic
  Call bindcontls
  Call disablcontls
  Call adddelmod(BUTTON)
  BUTTON(9).SetFocus
  Exit Sub
 End If
If Opt = "mod" Then
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select PRODUCT_TYPE,DESCRIPTION,entdate,user_id,PRODUCT_CAT,BED_PER,AED_PER,CESS_PER,NOTIFY_CODE,BLENDED,TAX_AC_L,TAX_AC_IS,SALE_AC_L,SALE_AC_IS,SALE_AC_EX,BED_AC_L,BED_AC_IS,AED_AC_L,AED_AC_IS from ig_producttype where product_type = '" & Trim(TXTFIELDS(0)) & "'", DB, adOpenStatic, adLockOptimistic
  Call bindcontls
  Call ENABLCONTLS
  Call adddelmod(BUTTON)
  Exit Sub
  End If
If Opt = "qry" Or Opt = " " Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select a.PRODUCT_TYPE,a.DESCRIPTION,a.PRODUCT_CAT,a.BED_PER,a.AED_PER,a.CESS_PER,a.NOTIFY_CODE,a.BLENDED,a.TAX_AC_L,a.TAX_AC_IS,a.SALE_AC_L,a.SALE_AC_IS,a.SALE_AC_EX,a.BED_AC_L,a.BED_AC_IS,a.AED_AC_L,a.AED_AC_IS from ig_producttype a order by product_type", DB, adOpenStatic, adLockOptimistic
    Call bindcontls
    If adoPrimaryRS.RecordCount > 0 Then
        If adoPrimaryRS("tax_ac_l") = "" Then
            TXTFIELDS(15).Text = ""
        End If
    End If
   Call disablcontls
   
    desc.Caption = "Query"
    Call NEWFORM1(BUTTON, GSNO)
    Frame1.Enabled = False
    Frame2.Enabled = False
 End If
   
  Screen.MousePointer = 0
  Exit Sub

End Sub


Private Sub txtFields_LostFocus(Index As Integer)
Select Case Index
Case 5
SSTab1.Enabled = True
'Combo2.SetFocus
Case 0
If Opt = "add" Then
Set rec = New Recordset
rec.Open "SELECT PRODUCT_TYPE from ig_producttype where PRODUCT_TYPE='" & TXTFIELDS(0).Text & "' ", DB, adOpenStatic, adLockOptimistic
If rec.RecordCount > 0 Then
MsgBox "Product Type is already exists", vbInformation, head
TXTFIELDS(0).Text = ""
TXTFIELDS(0).SetFocus
Exit Sub
End If
End If
Case 2
If TXTFIELDS(2).Text <> "" And IsNull(TXTFIELDS(2).Text) = False Then
 If TXTFIELDS(2).Text > 99.99 Then
       MsgBox "Entry Cannot be Greater than 99.99", vbInformation, head

      TXTFIELDS(2).Text = " "
      TXTFIELDS(2).SetFocus
      Exit Sub
      Else
      If TXTFIELDS(2).Text = "" Then
        MsgBox "Enter AED %age", vbInformation, head
        Exit Sub
        Else
        TXTFIELDS(3).SetFocus
        Exit Sub
      End If
      Exit Sub
      End If
      End If
Case 3
If TXTFIELDS(3).Text <> "" And IsNull(TXTFIELDS(3).Text) = False Then
 If TXTFIELDS(3).Text > 100 Then
      MsgBox "Entry Cannot be Greater than 99.99", vbInformation, head

      TXTFIELDS(3).Text = " "
      TXTFIELDS(3).SetFocus
      Exit Sub
      Else
      If TXTFIELDS(3).Text = "" Then
      MsgBox "Enter AED %age", vbInformation, head
      Exit Sub
      Else
      End If
      Exit Sub
      End If
      End If

Case 4
If Trim(TXTFIELDS(4).Text) <> "" And IsNull(TXTFIELDS(4).Text) = False Then
 If TXTFIELDS(4).Text > 99.99 Then
      MsgBox "Entry Cannot be Greater than 99.99", vbInformation, head
      TXTFIELDS(4).Text = " "
      TXTFIELDS(4).SetFocus
      Exit Sub
      Else
      If TXTFIELDS(4).Text = "" Then
      MsgBox "Enter CESS %age", vbInformation, head
      Exit Sub
      End If
      Exit Sub
      End If
    End If

End Select
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
     If TXTFIELDS(0).Text = "" Then
     MsgBox "Product Type cannot be empty", vbInformation, head
     Cancel = True
     End If
    
Case 1
     If TXTFIELDS(1).Text = "" Then
     MsgBox "Product name cannot be empty", vbInformation, head
     Cancel = True
     End If
Case 2
     If TXTFIELDS(2).Text = "" Then
        MsgBox "Bed_per cannot be empty", vbInformation, head
        Cancel = True
        
     End If
Case 3
     If TXTFIELDS(3).Text = "" Then
        MsgBox "Aed_Per cannot be empty", vbInformation, head
        Cancel = True
     End If

  Case 4
        If TXTFIELDS(4).Text = "" Then
        MsgBox "Cess_per cannot be empty", vbInformation, head
        Cancel = True
      End If
Case 5
        If Record_Exists("ig_notify") = False Then Exit Sub
        Screen.MousePointer = 11
''        SSTab1.Visible = False
''        Frame3.Visible = True
''        listlb.Caption = "Notify Listing"
''        ksldesc1.conn = connectstring
''        ksldesc1.table = "ig_notify"
''        ksldesc1.SetFocus
''        stbar.Panels(2).Text = "Select a Notify Code"
''        ksldesc1.listfield1 = "notify_code"
''        ksldesc1.listfield2 = "description"
        LookUp.clear = True
        LookUp.Query = "select notify_code,description from ig_notify"
        LookUp.DefCol = "description"
        LookUp.ALIGN = "2000,4000"
        LookUp.Caption = "Notify Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            TXTFIELDS(5).Text = LookUp.Fields(0)
            TXTFIELDS(24).Text = LookUp.Fields(1)
            LookUp.clear = True
            SSTab1.Visible = True
            Combo2.SetFocus
        Else
            LookUp.clear = True
            TXTFIELDS(5).SetFocus
            Exit Sub
        End If
    End Select
    End If
End Sub

Public Sub header(Pg As Integer, Co As Integer)
Open "c:\cust.txt" For Output As #a
          Print #a,
          Print #a, Space(10) + Space(Round((122 - 2 * Len(DIVNAME)) / 2)) + Chr(14) + DIVNAME + Space(2) + Chr(14) + Space(Round((122 - 2 * Len(DIVNAME)) / 2))
          Print #a, Space(122)
          str = CStr(pdate) + Space(2)
          Print #a, Space(5) + "PRODUCT TYPE LISTING" + Space(79) + str + "Pg.No :" + Space(1) + CStr(Pg)

End Sub

Private Sub Combo1_GotFocus()
stbar.Panels(2).Text = "Select C,N,S From the Drop Down List"
End Sub
Private Sub Combo2_GotFocus()
stbar.Panels(2).Text = "Select Y,N From the Drop Down List"
If TXTFIELDS(0).Text <> "" And flg <> "u" And TXTFIELDS(1).Text <> "" And TXTFIELDS(2).Text <> "" And TXTFIELDS(3).Text <> "" And TXTFIELDS(4).Text <> "" And TXTFIELDS(5).Text <> "" Then
SSTab1.TabEnabled(1) = True
End If
End Sub
Public Function Record_Exists1(tname As String) As Boolean
On Error Resume Next
'Set cn2 = New Connection
'cn2.Open connectstring
Set Rs = New Recordset
Rs.Open "select count(*) from " & tname & "", DB
    If Rs(0) = 0 Then
        Screen.MousePointer = 0
        Opt = ""
        Record_Exists1 = False
        Exit Function
    End If

Record_Exists1 = True
End Function
