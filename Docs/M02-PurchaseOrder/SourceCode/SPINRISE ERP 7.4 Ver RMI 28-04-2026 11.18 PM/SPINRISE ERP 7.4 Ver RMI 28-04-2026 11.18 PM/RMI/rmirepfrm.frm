VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form rmireports 
   ClientHeight    =   8610
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12840
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8610
   ScaleWidth      =   12840
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Abstract"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   7680
      TabIndex        =   39
      Top             =   6840
      Visible         =   0   'False
      Width           =   1290
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Excel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   4800
      TabIndex        =   38
      Top             =   6840
      Visible         =   0   'False
      Width           =   1290
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Height          =   375
      Left            =   10200
      TabIndex        =   37
      Top             =   6240
      Visible         =   0   'False
      Width           =   1215
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   540
      Top             =   4395
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton cmdcry 
      Caption         =   "&Crystal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   3360
      TabIndex        =   35
      Top             =   6840
      Visible         =   0   'False
      Width           =   1290
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   2040
      TabIndex        =   20
      Top             =   6105
      Visible         =   0   'False
      Width           =   5580
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   22
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   21
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.Label Label37 
         Caption         =   "Report Footer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   315
         Left            =   180
         TabIndex        =   23
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame1 
      Height          =   5445
      Left            =   2280
      TabIndex        =   2
      Top             =   480
      Width           =   5445
      Begin VB.CheckBox chkcat 
         Caption         =   "All"
         Height          =   195
         Left            =   360
         TabIndex        =   44
         Top             =   3840
         Visible         =   0   'False
         Width           =   525
      End
      Begin MSComctlLib.ListView ListCat 
         Height          =   2205
         Left            =   1560
         TabIndex        =   43
         Top             =   3120
         Visible         =   0   'False
         Width           =   3195
         _ExtentX        =   5636
         _ExtentY        =   3889
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Category Type"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1411
         EndProperty
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Datewise"
         Height          =   195
         Left            =   240
         TabIndex        =   42
         Top             =   5160
         Visible         =   0   'False
         Width           =   1125
      End
      Begin VB.CheckBox Check2 
         Caption         =   "All"
         Height          =   195
         Left            =   360
         TabIndex        =   41
         Top             =   3720
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         Left            =   1920
         TabIndex        =   36
         Text            =   "Combo3"
         Top             =   1680
         Visible         =   0   'False
         Width           =   3495
      End
      Begin VB.ComboBox cmblottype 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   1500
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   2850
         Visible         =   0   'False
         Width           =   3135
      End
      Begin VB.ComboBox CmbRecType 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         Left            =   1500
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   2280
         Visible         =   0   'False
         Width           =   3135
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   1500
         TabIndex        =   17
         Top             =   1170
         Width           =   1830
         _ExtentX        =   3228
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.ComboBox Combo2 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   345
         ItemData        =   "rmirepfrm.frx":0000
         Left            =   1500
         List            =   "rmirepfrm.frx":0002
         TabIndex        =   15
         Text            =   "Combo2"
         Top             =   3360
         Visible         =   0   'False
         Width           =   2955
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   1500
         TabIndex        =   3
         Top             =   600
         Width           =   1830
         _ExtentX        =   3228
         _ExtentY        =   635
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   360
         Left            =   1500
         TabIndex        =   6
         Top             =   1710
         Width           =   3105
         _ExtentX        =   5477
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.ComboBox Combo1 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   345
         Left            =   1530
         TabIndex        =   10
         Text            =   "Combo1"
         Top             =   1740
         Visible         =   0   'False
         Width           =   3075
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   360
         Left            =   1500
         TabIndex        =   11
         Top             =   2130
         Visible         =   0   'False
         Width           =   3105
         _ExtentX        =   5477
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   2055
         TabIndex        =   13
         Top             =   1290
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   556
         _Version        =   393216
         Format          =   156106753
         CurrentDate     =   38623
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   2040
         TabIndex        =   14
         Top             =   720
         Visible         =   0   'False
         Width           =   1785
         _ExtentX        =   3149
         _ExtentY        =   609
         _Version        =   393216
         Format          =   157089793
         CurrentDate     =   38623
      End
      Begin MSDataListLib.DataCombo dbcmb_fcount 
         Height          =   360
         Left            =   1500
         TabIndex        =   27
         Top             =   3360
         Visible         =   0   'False
         Width           =   3105
         _ExtentX        =   5477
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo dbcmb_tcount 
         Height          =   360
         Left            =   1500
         TabIndex        =   28
         Top             =   3900
         Visible         =   0   'False
         Width           =   3105
         _ExtentX        =   5477
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo5 
         Height          =   360
         Left            =   1500
         TabIndex        =   31
         Top             =   2580
         Visible         =   0   'False
         Width           =   4305
         _ExtentX        =   7594
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo6 
         Height          =   360
         Left            =   1500
         TabIndex        =   32
         Top             =   3060
         Visible         =   0   'False
         Width           =   4305
         _ExtentX        =   7594
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSComctlLib.ListView List_IssueType 
         Height          =   1485
         Left            =   1560
         TabIndex        =   40
         Top             =   1560
         Visible         =   0   'False
         Width           =   3195
         _ExtentX        =   5636
         _ExtentY        =   2619
         View            =   3
         LabelEdit       =   1
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Issue Type"
            Object.Width           =   7938
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   1411
         EndProperty
      End
      Begin VB.Label LblCat 
         AutoSize        =   -1  'True
         Caption         =   "Category Type"
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
         Left            =   180
         TabIndex        =   45
         Top             =   3240
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.Label Label8 
         Caption         =   "To Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   34
         Top             =   3120
         Visible         =   0   'False
         Width           =   1545
      End
      Begin VB.Label Label7 
         Caption         =   "From Supplier"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   180
         TabIndex        =   33
         Top             =   2610
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.Label lbl_fcount 
         AutoSize        =   -1  'True
         Caption         =   "From Count"
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
         Left            =   150
         TabIndex        =   30
         Top             =   3450
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.Label lbl_tcount 
         AutoSize        =   -1  'True
         Caption         =   "To Count"
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
         Left            =   150
         TabIndex        =   29
         Top             =   3960
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.Label lbllottype 
         AutoSize        =   -1  'True
         Caption         =   "Lot Type"
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
         Left            =   180
         TabIndex        =   26
         Top             =   2940
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label LblRecType 
         AutoSize        =   -1  'True
         Caption         =   "Type"
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
         TabIndex        =   19
         Top             =   2310
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label Label6 
         Caption         =   "Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   16
         Top             =   3450
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Category"
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
         Left            =   180
         TabIndex        =   12
         Top             =   2160
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   30
         TabIndex        =   8
         Top             =   120
         Width           =   5370
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Category"
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
         TabIndex        =   7
         Top             =   1770
         Width           =   765
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
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
         Left            =   180
         TabIndex        =   5
         Top             =   1260
         Width           =   705
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
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
         Left            =   180
         TabIndex        =   4
         Top             =   750
         Width           =   885
      End
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   6240
      TabIndex        =   1
      Top             =   6840
      Width           =   1290
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   2040
      TabIndex        =   0
      Top             =   6840
      Width           =   1290
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5595
      Left            =   2160
      TabIndex        =   9
      Top             =   465
      Width           =   5625
      _ExtentX        =   9922
      _ExtentY        =   9869
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "rmirepfrm.frx":0004
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   8940
      TabIndex        =   24
      Top             =   1740
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
End
Attribute VB_Name = "rmireports"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As New Recordset
Dim rs1 As Recordset
Dim rsg As New Recordset
Dim dv1 As DataEnvironment1
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim LB3 As RptLabel
Dim LB4 As RptLabel
Dim LB5 As RptLabel
Dim W, B As String
Dim ExcelBTNFLG As String

Private Sub chkcat_Click()
  bol = True

If chkcat.value = 1 Then
        For I = 1 To ListCat.ListItems.Count
          ListCat.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To ListCat.ListItems.Count '- 1
             ListCat.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
  
End Sub

Private Sub cmdcry_Click()
intervalMinutes = -1
On Error GoTo cmdcry_Click_Error

Screen.MousePointer = 11
Call openconnection
Dim l1, l2 As RptLabel
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim U As String
Dim v As String
Dim W As String
Dim a As String
date1 = Format(DTPicker1.value, "yyyy-mm-dd"): date2 = Format(DTPicker2.value, "yyyy-mm-dd")

Select Case Repindex
Case 71, 73
    date1 = Format(DTPicker1.value, "yyyy-mm-dd"): date2 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(date1) > CDate(date2) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DTPicker2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    If CDate(date2) < CDate(date1) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DTPicker1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    Screen.MousePointer = 11
    If Repindex = 73 Then
        
        
        
        Dim ClsMisStSuppPur  As New clsCrystal
        Set ClsMisStSuppPur.cryRept = Cry_RMI_MIS_StationSuppPur
        ClsMisStSuppPur.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(DTPicker1.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(DTPicker2.value, "yyyy-mm-dd")
        CrystalReport1.ParameterFields(3) = "@Type;" & Trim(Left(CmbRecType.Text, 3))
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    Else
        Call BandDPurCRY(DTPicker1.value, DTPicker2.value, CmbRecType.Text, UserFooter1.SelectedStr)
        Dim ClsBrDatePur As New clsCrystal
        Set ClsBrDatePur.cryRept = Cry_MIS_BrDatePurchase_New  'Cry_MIS_BrDatePurchase
        ClsBrDatePur.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        'CrystalReport1.ParameterFields(0) = "@divname; " & PrDivname
        'CrystalReport1.ParameterFields(1) = "Unitname; " & PrUnitName
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@fdate; " & Format(DTPicker1.value, "YYYY-MM-DD")
        CrystalReport1.ParameterFields(2) = "@ydate; " & Format(DTPicker2.value, "YYYY-MM-DD")
        CrystalReport1.ParameterFields(3) = "@vrtype; " & Trim(Left(CmbRecType.Text, 3))
        CrystalReport1.Formulas(0) = "UnitName='" & PrUnitName & "'"
        CrystalReport1.ReportTitle = "Agentwise,Datewise Purchases From " & Format(DTPicker1.value, "DD/MM/YY") & " To " & Format(DTPicker2.value, "DD/MM/YY")
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
    End If
    Screen.MousePointer = 0
Case 61          ' Receipt Register

    Dim vP_Str1 As String
   U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
U = DTPicker1.value
v = DTPicker2.value
    
    Set rsA1 = New Recordset
    rsA1.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE", cn, adOpenStatic, adLockBatchOptimistic
    If DataCombo3.Text <> "" And DataCombo4.Text <> "" Then
        If DataCombo3.MatchedWithList Or DataCombo4.MatchedWithList Then
           FVar = Trim(Left(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") - 1))
           TVar = Trim(Left(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") - 1))
        Else
           If DataCombo3.Text = "" Then
              MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
              DataCombo3.SetFocus
              Screen.MousePointer = 0
              Exit Sub
           End If
              If DataCombo4.Text = "" Then
              MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
              DataCombo4.SetFocus
              Screen.MousePointer = 0
              Exit Sub
           End If
        End If
    End If
    
     Do While Not rsA1.EOF
         If CmbRecType.Text = rsA1(0) Then
         GoTo veriety
         Else
         rsA1.MoveNext
         End If
     Loop
veriety: ISSTYPE = Trim(Mid(CmbRecType.Text, 1, 2))
         lottype = Trim(Mid(cmblottype.Text, 1, 3))
    
    If UCase(Trim(CustID)) = "MAHADEV" Then
        FVar = Trim(Left(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") - 1))
        TVar = Trim(Left(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") - 1))
    End If
    
    If Table_Exists("Vw_rmi_Issuereg_varitywise") = True Then DB.Execute "Drop view Vw_rmi_Issuereg_varitywise "
    
    If Trim(ISSTYPE) = "A" Then
        If lottype = "ALL" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
        Else
'                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
'                " FROM( " & _
'                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
'                " Union All " & _
'                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
'                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
'                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
                End If
     Else
       
        If lottype = "ALL" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         Else
                 DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         End If

    End If

    Set rs1 = New Recordset
    rs1.Open "select * from Vw_rmi_Issuereg_varitywise", DB, adOpenStatic
    
    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    If UCase(Trim(CustID)) = "JAT" Then
        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_IssueRegister_Varitywise.rpt"
        FrmRpt.RptHead = "2A"
        parameter1 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(v, "dd/MM/YY"))
        parameter2 = divname
        FrmRpt.Show
        Screen.MousePointer = 0
        Exit Sub
    End If

    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_IssueRegister_Varitywise.rpt"
    'FrmRpt.RptHead = "2A"
    'parameter1 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY"))
    'parameter2 = DIVNAME
    'FrmRpt.Show
    intervalMinutes = -1
    Dim clsCryRpt_Var As New clsCrystal
    Set clsCryRpt_Var.cryRept = Rep_Period_IssueRegister_Varitywise
    clsCryRpt_Var.CrystalPrint
                
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    CrystalReport1.ParameterFields(0) = "@description;" & CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(v, "dd/MM/YY")) & ""
    CrystalReport1.ParameterFields(1) = "@divname;" & divname & ""
    CrystalReport1.ParameterFields(2) = "@UnitName;" & PrUnitName & ""

    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    
    Screen.MousePointer = 0
    
    
    Case 111   'Periodicals Mixing Cost
   
        DataCombo1.Text = DTPicker1.value '''''
        DataCombo2.Text = DTPicker2.value '''''
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        Call CrystalFooter(UserFooter1.SelectedStr, 85)
        footervar = UserFooter1.SelectedStr
        
        Dim ClsMixingCost As New clsCrystal
'        Set ClsMixingCost.cryRept = Cry_MixingCostrep
        If UCase(CustID) = "ASM" Then
            Set ClsMixingCost.cryRept = Cry_MixingCostrep1_Armstrong
        Else
            Set ClsMixingCost.cryRept = Cry_MixingCostrep1
        End If
        ClsMixingCost.CrystalPrint
        CrystalReport1.Reset
        ''CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        'CrystalReport1.ParameterFields(0) = "@divname; " & DIVNAME
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FromDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@LOTYEAR;" & Trim(Format(yfdate, "yyyy"))
        ' added on 16-08-18 by mariyaiya
        If UCase(CustID) = "ASM" Then
            If Combo3.Text = "ALL   - All" Then
                MIXNO = "A"
            Else
                MIXNO = Combo3.Text
            End If
            CrystalReport1.ParameterFields(4) = "@MixNo;" & MIXNO
        End If
        
        CrystalReport1.WindowState = crptMaximized
        CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\PeriodicalsMixingCost.rpt"
        
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Cry_MixingCostrep.rpt"
'        FrmRpt.RptHead = 5
'        parameter1 = DIVNAME
'        parameter2 = Divcode
'        parameter3 = Format(DTPicker1.value, "yyyy/mm/dd")
'        parameter4 = Format(DTPicker2.value, "yyyy/mm/dd")
'        parameter5 = Format(yfdate, "yyyy")
'        FrmRpt.Show

        Screen.MousePointer = 0
        intervalMinutes = -1
        Exit Sub
        
            
    
    Case 112        'Transfer Receipt Register
             Dim cond As String
        DataCombo1.Text = DTPicker1.value '''''
        DataCombo2.Text = DTPicker2.value '''''
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        TTYPE = Trim(Right(DataCombo3.Text, 2))
        B = Trim(Right(DataCombo4.Text, 1))
        fs = Right(Trim(DataCombo5.Text), 7)
        ts = Right(Trim(DataCombo6.Text), 7)
        
        If Trim(DataCombo1.Text) = "" Then
            MsgBox "No Record Found", vbInformation, head
            DataCombo1.Text = ""
            DataCombo1.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        
        If DataCombo3.MatchedWithList And DataCombo4.MatchedWithList Then
      '  Call TransferReport(CStr(U), CStr(v), CStr(W), CStr(DIVNAME), CStr(TTYPE), UserFooter1.SelectedStr, CStr(b), Right(Trim(DataCombo5.Text), 7), Right(Trim(DataCombo6.Text), 7))
      
        If Table_Exists("Vw_Rmi_Transfer_receiptregister") = True Then DB.Execute "Drop view Vw_Rmi_Transfer_receiptregister"
        
        If TTYPE = "A" And B = "A" Then
            cond = ""
        End If
        If TTYPE <> "A" And B <> "A" Then
            cond = "and  a.transfertype='" & TTYPE & "' and a.CatCd='" & B & "' "
        End If
        If TTYPE = "A" And B <> "A" Then
            cond = " and a.CatCd='" & B & "' "
        End If
        If TTYPE <> "A" And B = "A" Then
            cond = " and a.transfertype='" & TTYPE & "' "
        End If
        
'        DB.Execute " Create View Vw_Rmi_Transfer_receiptregister as SELECT isnull(transfertype,'BT')TransferType,ISSUE_DESC,a.supcd,f.slname as Supplier,g.slname as broker,A.AREACD,d.AREANAME," & _
'                   " A.VARCODE ,LOTNO,lotdt,A.billno,c.varname,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),round(netwt,2) netwt," & _
'                   " (round(ratekg*355.6187,0)) as ratecy,round(ratekg,2) 'Rate/Quintal',TotlandCost as value" & _
'                   " from rm_lot A,rm_issuetype b,Rm_Var c,RM_AREA d,rm_cat e,fa_slmas f,fa_slmas g  where a.transfertype=b.issue_code and b.isstype in ('T','J') " & _
'                   " and A.VARCODE=c.varcode and a.AREACD=d.AREACODE and A.supcd=f.slcode and a.brkcd*=g.slcode and a.CATCD=e.CATCD AND lottype='T'" & _
'                   " and a.LOTdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'" & _
'                   " and a.SUPCD Between '" & fs & "' AND '" & ts & "' " & cond & ""
' Commented on 06.07.2020 by karthik
 DB.Execute " Create View Vw_Rmi_Transfer_receiptregister as SELECT isnull(transfertype,'BT')TransferType,ISSUE_DESC,a.supcd,f.slname as Supplier,g.slname as broker,A.AREACD,d.AREANAME," & _
                   " A.VARCODE ,LOTNO,lotdt,a.ARRNO,a.ARRDT,A.billno,c.varname,bales,unit=(case when bbLflg='B' then 'Bales' ELSE 'Borah'end),round(netwt,2) netwt," & _
                   " (round(ratekg*355.6187,0)) as ratecy,round(ratekg,2) 'Rate/Quintal',TotlandCost as value,isnull(freght,0) freight,0 as avgrate,a.pjamt,round(a.Comm_Wt,2) Comm_Wt,a.plotno " & _
                   " from  rm_lot A inner join rm_issuetype b on  a.transfertype=b.issue_code   inner join Rm_Var c on  A.VARCODE=c.varcode   inner join RM_AREA d on  a.AREACD=d.AREACODE  inner join rm_cat e on  a.CATCD=e.CATCD  inner join fa_slmas f on A.supcd=f.slcode  left join fa_slmas g on a.brkcd=g.slcode  " & _
                   "   where b.isstype in ('T','J') AND lottype='T'" & _
                   " and a.LOTdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and  isnull(SampleFlag,0)=" & Check1.value & " " & _
                   " and a.SUPCD Between '" & fs & "' AND '" & ts & "' " & cond & ""

        Set rs1 = New Recordset
        rs1.Open "select * from  Vw_Rmi_Transfer_receiptregister", DB, adOpenStatic
        If rs1.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If

        Screen.MousePointer = 0
        Else
        MsgBox "Select the valid Transfer type", vbInformation, head
        Screen.MousePointer = 0
        DataCombo3.Text = ""
        DataCombo3.SetFocus
            Exit Sub
        End If
        
        If ExcelBTNFLG = "Y" Then
        Call TransferReceipt_Excel
        ExcelBTNFLG = "N"
        Exit Sub
        End If
       
'
'    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_TransferReceipt_Register.rpt"
'    FrmRpt.RptHead = "2A"
'    parameter1 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY"))
'    parameter2 = DIVNAME
'    parameter1 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY"))
    'FrmRpt.Show
    
    
        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Cry_TransferReceipt_Jtcl 'Cry_Transfer_Receipt_New 'Rep_period_transfer
        clsCryRpt1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@Fdate;" & Format(U, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@Tdate;" & Format(v, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@Fsupp;" & Trim(fs)
        CrystalReport1.ParameterFields(4) = "@Tsupp;" & Trim(ts)
        CrystalReport1.ParameterFields(5) = "@Category;" & Trim(B)
        CrystalReport1.ParameterFields(6) = "@TrnType;" & Trim(TTYPE)
        CrystalReport1.ParameterFields(7) = "@SampleFlg;" & Trim(CStr(Check1.value))
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
'        CrystalReport1.Formulas(0) = "fdt='" & Format(U, "dd/MM/yy") & "'"
'        CrystalReport1.Formulas(1) = "tdt='" & Format(v, "dd/MM/yy") & "'"
'        CrystalReport1.Formulas(2) = "div='" & divname & "'"
        
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1

    
    
    Screen.MousePointer = 0
    
    Screen.MousePointer = 0
    
Case 53
    Screen.MousePointer = 11
    
'''    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_marketcomerp.rpt"
'''    FrmRpt.RptHead = 5
'''    parameter1 = DIVNAME
'''    parameter2 = Divcode
'''    parameter3 = Format(DTPicker1.value, "yyyy-mm-dd")
'''    parameter4 = Format(DTPicker2.value, "yyyy-mm-dd")
'''    parameter5 = Year(yfdate)
'''    rephead = "Market Committee Report(Receipts) From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy")
'''    FrmRpt.Show
   
        
        'U = Format(DataCombo1.Text, "dd/mm/yyyy")
        'V = Format(DataCombo2.Text, "dd/mm/yyyy")
        'Call CrystalFooter(UserFooter1.SelectedStr, 85)
        'footervar = UserFooter1.SelectedStr
        
        Dim ClsMarketcommittee As New clsCrystal
        Set ClsMarketcommittee.cryRept = Prod_RMI_MarketCommittee
        ClsMarketcommittee.CrystalPrint
        CrystalReport1.Reset
      
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@Divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@tdate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@lotyear;" & Trim(Format(yfdate, "yyyy"))
        CrystalReport1.WindowState = crptMaximized
        CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    
    
    
    Screen.MousePointer = 0
Case 70


 
        CL_Cat = ""
    
    Issue_List = ""
    For I = 1 To List_IssueType.ListItems.Count
        If List_IssueType.ListItems.Item(I).Checked = True Then
         CL_Cat = "Y"
              '  sRecCount = Trim(List_Godown.ListItems(i).SubItems(1))
         GoTo GLCAT
        End If
    Next
GLCAT:
    If CL_Cat = "" Then
        MsgBox "Please Select Any Type ", vbInformation, head
        Exit Sub
    End If
    
    Issue_List = ""
           For I = 1 To List_IssueType.ListItems.Count
        
                If List_IssueType.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_IssueType.ListItems(I).SubItems(1))
                    If Issue_List <> "" Then
                     '   L_God = L_God + "," + "'" + Trim(sRecCount) + "'"
                         Issue_List = Issue_List + "," + "" + Trim(sRecCount) + ""
                    Else
                       ' L_God = "'" + Trim(sRecCount) + "'"
                        Issue_List = "" + Trim(sRecCount) + ""
                    End If
                End If
            Next
    
    
        Screen.MousePointer = 11
        Dim ClsMixingIssuereport As New clsCrystal
        If UCase(CustID) = "ASM" Then
            ' Set ClsMixingIssuereport.cryRept = Cry_MixingIssuereport_New
             Set ClsMixingIssuereport.cryRept = Cry_MixingIssuereport_Armstrong
        Else
             Set ClsMixingIssuereport.cryRept = Cry_MixingIssuereportPallavaa_New 'Cry_MixingIssuereport
        End If
        ClsMixingIssuereport.CrystalPrint
        CrystalReport1.Reset
      
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FromDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@lotyear;" & Trim(Format(yfdate, "yyyy"))
        CrystalReport1.ParameterFields(4) = "@IssueType; " & Issue_List
        ' added on 16-08-18 by mariyaiya
        If UCase(CustID) = "ASM" Then
            If Combo3.Text = "ALL   - All" Then
                MIXNO = "A"
            Else
                MIXNO = Combo3.Text
            End If
            CrystalReport1.ParameterFields(4) = "@MixNo;" & MIXNO
        End If
        CrystalReport1.WindowState = crptMaximized
'        CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    
Case 1200
         Screen.MousePointer = 11
        Dim Clslotnowise As New clsCrystal
        Set Clslotnowise.cryRept = Cry_Loitwise_New

        Clslotnowise.CrystalPrint
        CrystalReport1.Reset
      
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FromDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@lotyear;" & Trim(Format(yfdate, "yyyy"))
        CrystalReport1.ParameterFields(4) = "@Flot;" & CmbRecType.Text
        CrystalReport1.ParameterFields(5) = "@Tlot;" & cmblottype.Text

      
        CrystalReport1.WindowState = crptMaximized
        CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
End Select
intervalMinutes = -1
Exit Sub
cmdcry_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdcry_Click of Form rmireports"
    Screen.MousePointer = 0
End Sub

Private Sub cmdExit_Click()
On Error GoTo cmdexit_Click_Error
intervalMinutes = -1
Screen.MousePointer = 0
Unload Me

Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdexit_LostFocus()
On Error GoTo cmdexit_LostFocus_Error
intervalMinutes = -1
Select Case Repindex
Case 112
DTPicker1.SetFocus
Case 61
DTPicker1.SetFocus
Case 66
DTPicker1.SetFocus
Case 70
DTPicker1.SetFocus
Case 71
DTPicker1.SetFocus
Case 73
DTPicker1.SetFocus
Case 74
DTPicker1.SetFocus
Case 774
DTPicker1.SetFocus
Case 111
DTPicker1.SetFocus
Case 53
DTPicker1.SetFocus
End Select
intervalMinutes = -1
Exit Sub
cmdexit_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_LostFocus of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
On Error GoTo cmdreport_Click_Error
intervalMinutes = -1
Screen.MousePointer = 11
Call openconnection
Dim l1, l2 As RptLabel
Dim LB1 As RptLabel
Dim LB2 As RptLabel
Dim U As String
Dim v As String
Dim W As String
Dim a As String
date1 = Format(DTPicker1.value, "yyyy-mm-dd"): date2 = Format(DTPicker2.value, "yyyy-mm-dd")

intervalMinutes = -1
Select Case Repindex

Case 220
       Screen.MousePointer = 11
       U = Format(DataCombo1.Text, "dd/mm/yyyy")
       v = Format(DataCombo2.Text, "dd/mm/yyyy")
       'u = Format(DTPicker1.Value, "dd/mm/yyyy")
       'v = Format(DTPicker2.Value, "dd/mm/yyyy")
       If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       
'        If Combo2.Text = "P-Unit 1-Production" Then
'            typeflg = "P"
'        ElseIf Combo2.Text = "Q-Unit 2-Production" Then
'            typeflg = "Q"
'        ElseIf Combo2.Text = "A-All Unit Production" Then
'            typeflg = "A"
'        End If
        typeflg = Trim(Left(Combo2.Text, 2))
        Call IssuestationReport(CStr(U), CStr(v), divname, CStr(typeflg))
        Screen.MousePointer = 0
        Exit Sub
        
Case 774

    f1 = Format(DTPicker1.value, "yyyy-mm-dd")
    t1 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    BRK1 = Right(DataCombo3.Text, 7)
    BRK2 = ""
    If DataCombo3.MatchedWithList Then
    Call brokerassessmentsin(CStr(f1), t1, CStr(BRK1), CStr(BRK2), UserFooter1.SelectedStr)
    Else
    MsgBox "Select the Valid Broker", vbInformation, head
    Screen.MousePointer = 0
    DataCombo3.Text = ""
    DataCombo3.SetFocus
    Exit Sub
    End If
    Exit Sub

Case 74
    f1 = Format(DTPicker1.value, "yyyy-mm-dd")
    t1 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(f1) > CDate(t1) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(t1) < CDate(f1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If DataCombo3.MatchedWithList And DataCombo4.MatchedWithList Then
    BRK1 = Right(DataCombo3.Text, 7)
    BRK2 = Right(DataCombo4.Text, 7)
    Else
    If DataCombo3.MatchedWithList = False Then
MsgBox "Select the valid Broker", vbInformation, "Kalsofte"
DataCombo3.Text = ""
DataCombo3.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
 If DataCombo4.MatchedWithList = False Then
MsgBox "Select the valid Broker", vbInformation, "Kalsofte"
DataCombo4.Text = ""
DataCombo4.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
End If
Call brokerassessment(CStr(f1), t1, CStr(BRK1), CStr(BRK2))
Screen.MousePointer = 0
Exit Sub
    

Case 52
    Screen.MousePointer = 11
    rmipermcissue.Show
    Set LB1 = rmipermcissue.Sections(2).Controls("list")
    Set LB2 = rmipermcissue.Sections(2).Controls("list1")
    Set LB3 = rmipermcissue.Sections(2).Controls("list2")
    LB1.Caption = "Market Committee Report (Consumption) From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = DataCombo2.Text
    LB3.Caption = "(" & DataCombo3.Text & ")"
    Set dv1 = New DataEnvironment1
    dv1.rsCommand2_Grouping.Open " SHAPE {select lotno,varcode, bale=(case when bblflg='B' then bales end), bora=(case when bblflg='R' then bales end),isswt, ratekg * isswt'value' From rm_lot order by lotno,varcode}  AS Command2 COMPUTE command2 BY 'lotno','varcode' ", DB, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        rmipermcissue.Show
        Screen.MousePointer = 0
    End If

Case 53
 DataCombo1.Text = DTPicker1.value
 DataCombo2.Text = DTPicker2.value
 
 date1 = Format(DTPicker1.value, "yyyy-mm-dd"): date2 = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(date1) > CDate(date2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(date2) < CDate(date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
 
If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a Valid Date", vbInformation, head
      End If
            Call marcommrecReport(CStr(a), CStr(B), UserFooter1.SelectedStr)
            intervalMinutes = -1
            Screen.MousePointer = 0
        Exit Sub
Screen.MousePointer = 11
Set LB1 = rmipermcreceipt.Sections(2).Controls("list")
Set LB2 = rmipermcreceipt.Sections(2).Controls("list1")
Set LB3 = rmipermcreceipt.Sections(2).Controls("list2")
LB1.Caption = "Market Committee Report(Receipts)  From " & DataCombo1.Text & " To " & DataCombo2.Text
LB2.Caption = DataCombo2.Text
LB3.Caption = "(" & DataCombo3.Text & ")"
ag:

If dv1.rsCommand2_Grouping.State = adStateOpen Then
dv1.rsCommand2_Grouping.Close
End If
intervalMinutes = -1
On Error GoTo errd:
dv1.rsCommand2_Grouping.Open " SHAPE {select a.arrdate,a.supcd,f.slname,a.areacode,b.areaname,a.varcode,bale=(case when a.bbflag = 'B' then a.quantity end),bora=(case when a.bbflag='R' then a.quantity end),a.netwt,a.netwt*l.ratekg'Value' from rm_arrival a,fa_slmas f,rm_area b,rm_var c,rm_lot l Where a.supcd = f.slcode and a.areacode=b.areacode and a.varcode=c.varcode and l.lotno=a.lotno order by a.arrdate }  AS command2 COMPUTE command2 BY 'arrdate'", cn, adOpenStatic, adLockBatchOptimistic

If dv1.rsCommand2_Grouping.RecordCount = 0 Then
    MsgBox "No record Found", vbInformation
    Screen.MousePointer = 0
    Exit Sub
Else
    Set rmipermcreceipt.DataSource = dv1
    rmipermcreceipt.Show
    Screen.MousePointer = 0
End If
intervalMinutes = -1
errd:
If Err.Number = 3704 Then
GoTo ag:
End If
Screen.MousePointer = 0

Case 54
      If Trim(DataCombo1.Text) <> Empty And Trim(DataCombo2.Text) <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a Valid Date", vbInformation, head
      End If
            Call pendinvReport(CStr(a), CStr(B))
            Screen.MousePointer = 0


Case 55
Screen.MousePointer = 11
U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
Call PartyDtReport(CStr(U), CStr(v), Trim(Mid$(Combo1.Text, 1, InStr(Combo1.Text, "-") - 1)), divname)
'Call PartyDtReport(CStr(u), CStr(v))
Screen.MousePointer = 0
Exit Sub
    
    Set LB1 = rptdatewise.Sections(2).Controls("list")
    Set LB2 = rptdatewise.Sections(2).Controls("list1")
    LB1.Caption = "Datewise Receipts List From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Mid$(DataCombo3.Text, 3) & ")"

    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
    End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
    'dv1.rsCommand2_Grouping.Open "SHAPE{select r.arrdate,r.supcd,a.slname,d.slname'broker',r.plotno,r.lotno,ar.areaname,r.varcode, Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end),r.netwt,c.candyrate, c.ratekg*100 'rate/quintal', r.netwt*c.ratekg'Value' from rm_arrival r,fa_slmas a,fa_slmas d,rm_area ar,rm_cont c where a.slcode=r.supcd and d.slcode = r.brkcd and ar.areacode=r.areacode and c.contno=r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.catcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' order by arrdate }AS COMMAND2 compute COMMAND2 by 'arrdate' ", cn, adOpenStatic, adLockBatchOptimistic
    dv1.rsCommand2_Grouping.Open "SHAPE{select r.arrdate,r.supcd,a.slname,d.slname'broker',r.plotno,r.lotno,ar.areaname,r.varcode, Bale=(case when r.bbflag='B' then r.quantity end), Bora=(case when r.bbflag='R' then r.quantity end),r.netwt,c.candyrate, (c.candyrate/355.6187)*100 'rate/quintal', r.netwt*(c.candyrate/355.6187)'Value' from rm_arrival r,fa_slmas a,fa_slmas d,rm_area ar,rm_cont c where a.slcode=r.supcd and d.slcode = r.brkcd and ar.areacode=r.areacode and c.contno=r.contno and r.contdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and r.catcd ='" & Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' order by arrdate }AS COMMAND2 compute COMMAND2 by 'arrdate' ", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set rptdatewise.DataSource = dv1
        rptdatewise.Show
'u = Format(DataCombo1.Text, "dd/mm/yyyy")
'v = Format(DataCombo2.Text, "dd/mm/yyyy")
'If DataCombo3.Text = "" Then
'
'End If
'Call PartyDtReport(CStr(u), CStr(v), Trim(Mid$(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)), divname)
''Call PartyDtReport(CStr(u), CStr(v))
'        Screen.MousePointer = 0
End If
End If
Screen.MousePointer = 0
    
Case 68
      If DataCombo1.Text <> Empty And DataCombo2.Text <> Empty Then
            a = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
            B = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
      Else
            MsgBox "Enter a vilid Date", vbInformation, head
      End If
      Call marcommissReport(CStr(a), CStr(B))
      Screen.MousePointer = 0
      Exit Sub
        
    Screen.MousePointer = 11
    Set LB1 = rmipermcissue.Sections(2).Controls("list")
    LB1.Caption = "Market Committee Report (Consumption) From " & DataCombo1.Text & " To " & DataCombo2.Text
    If dv1.rsCommand2_Grouping.State = 1 Then
        dv1.rsCommand2_Grouping.Close
        End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then

    dv1.rsCommand2_Grouping.Open "SHAPE{select lotno,varcode,bale=(case when bblflg='B' then bales end),bora=(case when bblflg='R' then bales end),isswt,ratekg*isswt'value'" & _
                                 " From rm_lot order by lotno,varcode} as COMMAND2 compute COMMAND2 by 'lotno','varcode'", cn, adOpenStatic, adLockBatchOptimistic

    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set rmipermcissue.DataSource = dv1
        rmipermcissue.Show
        Screen.MousePointer = 0
    End If
End If
Screen.MousePointer = 0
Case 61
Dim vP_Str1 As String
U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
U = DTPicker1.value
v = DTPicker2.value
Set rsA1 = New Recordset
rsA1.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE", cn, adOpenStatic, adLockBatchOptimistic
If DataCombo3.Text <> "" And DataCombo4.Text <> "" Then
If DataCombo3.MatchedWithList And DataCombo4.MatchedWithList Then
W = Trim(Left(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") - 1))
B = Trim(Left(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") - 1))
Else

If DataCombo3.Text = "" Then
MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
DataCombo3.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
If DataCombo4.Text = "" Then
MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
DataCombo4.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
End If


End If

 Do While Not rsA1.EOF
     If CmbRecType.Text = rsA1(0) Then
     GoTo veriety
     Else
     rsA1.MoveNext
     End If
     Loop
'     MsgBox "Select the Valid Supplier ", vbInformation, head
'     Screen.MousePointer = 0
'     Exit Sub
veriety: vP_Str1 = Trim(Mid(CmbRecType.Text, 1, 2))
a = Trim(Mid(cmblottype.Text, 1, 3))
Call IssueVReport(CStr(U), CStr(v), W, B, vP_Str1, a)
Screen.MousePointer = 0
'    End If
'End If
Screen.MousePointer = 0
Case 66, 3066

        DataCombo1.Text = DTPicker1.value
        DataCombo2.Text = DTPicker2.value
        Dim vP_Str As String
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        
        If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        If Combo1.Text = "M - Mixing" Or Combo1.Text = "D - Dying" Then
        mtype = Left(Combo1.Text, 1)
        
        vP_Str = Trim(Mid$(CmbRecType.Text, 1, InStr(1, CmbRecType.Text, "-") - 1))
        a = Trim(Mid$(cmblottype.Text, 1, InStr(1, cmblottype.Text, "-") - 1))
        vP_Str1 = Trim(Mid$(CmbRecType.Text, Len(CmbRecType.Text) - 2, InStr(1, CmbRecType.Text, "-")))
        B = Trim(Mid$(cmblottype.Text, Len(cmblottype.Text) - 2, InStr(1, cmblottype.Text, "-")))
        
        If dbcmb_fcount.Text <> "" And dbcmb_tcount.Text <> "" Then
            If Repindex = 66 Then
                Call IssueCReport(CStr(U), CStr(v), divname, CStr(mtype), vP_Str, a, CStr(vP_Str1), CStr(B), CStr(Trim(Mid$(dbcmb_fcount.Text, 1, InStr(dbcmb_fcount.Text, "-") - 1))), CStr(Trim(Mid$(dbcmb_tcount.Text, 1, InStr(dbcmb_tcount.Text, "-") - 1))), UserFooter1.SelectedStr)
            Else
                Call ProcessStock(CStr(U), CStr(v), divname, CStr(mtype), vP_Str, a, CStr(vP_Str1), CStr(B), CStr(Trim(Mid$(dbcmb_fcount.Text, 1, InStr(dbcmb_fcount.Text, "-") - 1))), CStr(Trim(Mid$(dbcmb_tcount.Text, 1, InStr(dbcmb_tcount.Text, "-") - 1))), UserFooter1.SelectedStr)
            End If
        Else
            MsgBox "Select count from the list", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If

        
        
'
'       If Combo1.Text = "M - Mixing" Or Combo1.Text = "D - Dying" Then
'        mtype = Left(Combo1.Text, 1)
'        vP_Str = Trim(Mid(CmbRecType.Text, 1, 2))
'        a = Trim(Mid(cmblottype.Text, 1, 3))
'        If dbcmb_fcount.Text <> "" And dbcmb_tcount.Text <> "" Then
'       Call IssueCReport(CStr(u), CStr(v), DIVNAME, CStr(mtype), vP_Str, a, CStr(Trim(Mid$(dbcmb_fcount.Text, 1, InStr(dbcmb_fcount.Text, "-") - 1))), CStr(Trim(Mid$(dbcmb_tcount.Text, 1, InStr(dbcmb_tcount.Text, "-") - 1))))
'       Else
'        MsgBox "Select count from the list", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'       End If
''       Call IssueCReport(CStr(u), CStr(v), DIVNAME)
        Screen.MousePointer = 0
        DTPicker1.SetFocus
        Else
        MsgBox "Select the Valid Issue To", vbInformation, head
        Screen.MousePointer = 0
        Combo1.Text = ""
        Combo1.SetFocus
        End If
   ' End If
   ' End If
    Screen.MousePointer = 0
Case 70
     Screen.MousePointer = 11
        DataCombo1.Text = DTPicker1.value
        DataCombo2.Text = DTPicker2.value
       U = Format(DataCombo1.Text, "dd/mm/yyyy")
       v = Format(DataCombo2.Text, "dd/mm/yyyy")
       vP_Str = Trim(Mid(CmbRecType.Text, 1, 2))
       a = Trim(Mid(cmblottype.Text, 1, 3))
       Call IssueMReport(CStr(U), CStr(v), divname, vP_Str, a)
       Screen.MousePointer = 0
        Exit Sub
    
    'Call repproc2(issuemixcnt)

    Set LB1 = issuemixcnt.Sections(2).Controls("list")
    Set LB2 = issuemixcnt.Sections(2).Controls("list1")
    LB1.Caption = "Mix No. wise Issue  List  From " & DataCombo1.Text & " To " & DataCombo2.Text
    LB2.Caption = "(" & Trim(Mid$(DataCombo3.Text, InStr(DataCombo3.Text, "-") + 1, Len(DataCombo3.Text))) & ")"
    'Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
    If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" And Not DataCombo3.Text = "" Then
    dv1.rsCommand5.Open "SHAPE {select d.mixgrpcd,Qntl=cast(sum(b.isskgs*a.ratekg*100)/sum(b.isskgs) as varchar),Candy=cast(sum(b.isskgs*a.ratekg)*100/sum(b.isskgs)*355.6187 as varchar) from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where a.divcode = '" & Divcode & "' and A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and a.lotdt = b.lotdt AND c.cntcd = d.cntcd and a.lotno = b.lotno and  a.catcd=b.catcd and a.cntcode = c.cntcd and C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT AND c.docno=b.docno and c.DOCDT  between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and b.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' Group By d.mixgrpcd}  AS Command5 " & _
                        "APPEND (( SHAPE {select e.mixgrpcd,a.cntcd,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_lot c,rm_issb d,rm_count e Where  c.divcode = '" & Divcode & "' and d.DIVCODE = c.divcode and d.catcd = c.catcd and d.lotno = c.lotno and d.lotdt = c.lotdt AND A.DIVCODE = D.DIVCODE AND A.ISSTYPE = D.ISSTYPE AND A.DOCDT = D.DOCDT AND a.cntcd = e.cntcd and a.docno = d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by e.mixgrpcd,a.cntcd,c.bblflg,c.ratekg  }  AS Command6 " & _
                        "APPEND ({select e.mixgrpcd,a.cntcd,c.varcode,c.catcd,c.lotno,a.docdt,Bale=(case when c.bblflg='B' then count(d.baleno) end),Bora=(case when c.bblflg='R' then count(d.baleno) end),Sum (d.isskgs) 'netkgs',c.ratekg*100'rate/quintal',c.ratekg*sum(d.isskgs) 'Amount' from rm_issh a,rm_var b,rm_lot c,rm_issb d ,rm_count e Where c.divcode = '" & Divcode & "' and  d.DIVCODE = c.divcode and d.catcd = c.catcd and d.lotno = c.lotno and d.lotdt = c.lotdt AND A.DIVCODE = D.DIVCODE AND A.ISSTYPE = D.ISSTYPE AND A.DOCDT = D.DOCDT AND  a.cntcd = e.cntcd and  c.varcode = b.varcode and a.docno=d.docno and d.DOCDT between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' and d.CATCD = '" & Trim(Mid(DataCombo3.Text, 1, InStr(DataCombo3.Text, "-") - 1)) & "' group by e.mixgrpcd,a.cntcd ,c.varcode, " & _
                        "c.catcd,c.lotno,a.docdt,c.bblflg,c.ratekg}  AS Command7 RELATE 'mixgrpcd' TO 'mixgrpcd','cntcd' TO 'cntcd') AS Command7) AS Command6 RELATE 'mixgrpcd' TO 'mixgrpcd') AS Command6", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
         Set issuemixcnt.DataSource = dv1
        issuemixcnt.Show
        Screen.MousePointer = 0
    End If
    End If
'       u = Format(DataCombo1.Text, "dd/mm/yyyy")
'       v = Format(DataCombo2.Text, "dd/mm/yyyy")
'       Call IssueMReport(CStr(u), CStr(v), divname)
    Screen.MousePointer = 0
Case 71


    'Call repproc2(brkdtpur)
    date1 = Format(DTPicker1.value, "yyyy-mm-dd"): date2 = Format(DTPicker2.value, "yyyy-mm-dd")
     If CDate(date1) > CDate(date2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(date2) < CDate(date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    Screen.MousePointer = 11
    'Set LB1 = brkdtpur.Sections(2).Controls("list")
    'LB1.Caption = "Brokerwise,Datewise Purchase  From " & DataCombo1.Text & " To " & DataCombo2.Text
    DataCombo1.Text = DTPicker1.value
    DataCombo2.Text = DTPicker2.value
     Call BandDPur(DataCombo1.Text, DataCombo2.Text, CmbRecType.Text, UserFooter1.SelectedStr)
    Exit Sub
    Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.brkcd,c.slname  from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.brkcd,arrdt from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,arrdt " & _
                         "}   AS Command6 APPEND ({select distinct a.brkcd,arrdt,a.supcd,c.slname as supname,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'brkcd' TO 'brkcd','arrdt' TO 'arrdt') AS Command7) AS Command6 RELATE 'brkcd' TO 'brkcd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        brkdtpur.Show
        Screen.MousePointer = 0
    End If
    End If
    Screen.MousePointer = 0
Case 72

    'Call repproc2(brksuppur)
    f1 = rmireports.DataCombo1.Text
    t1 = rmireports.DataCombo2.Text
    Screen.MousePointer = 11
    'Set LB1 = brksuppur.Sections(2).Controls("list")
    'LB1.Caption = "Brokerwise,Supplierwise Purchase From " & DataCombo1.Text & " To " & DataCombo2.Text
    Call BandSPur(CStr(f1), CStr(t1))
    Exit Sub
    Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.brkcd,c.slname as brkname from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.brkcd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd " & _
                         "}   AS Command6 APPEND ({select distinct a.brkcd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c  where a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.brkcd,a.supcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'brkcd' TO 'brkcd','supcd' TO 'supcd') AS Command7) AS Command6 RELATE 'brkcd' TO 'brkcd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        brksuppur.Show
        Screen.MousePointer = 0
    End If
    End If
    Screen.MousePointer = 0
    
Case 73
    DataCombo1.Text = DTPicker1.value
    DataCombo2.Text = DTPicker2.value
    
    
    If CDate(DataCombo1.Text) > CDate(DataCombo2.Text) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(DataCombo2.Text) < CDate(DataCombo1.Text) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    f1 = DataCombo1.Text
    t1 = DataCombo2.Text
    B = CmbRecType.Text
    Call AWSWPUR(B, UserFooter1.SelectedStr)
    Exit Sub
    'Call repproc2(areasuppur)
    Screen.MousePointer = 11
    Set LB1 = areasuppur.Sections(2).Controls("list")
    LB1.Caption = "Areawise,Supplierwise Purchase From " & DataCombo1.Text & " To " & DataCombo2.Text

    'Set dv1 = New DataEnvironment1
    If dv1.rsCommand5.State = 1 Then
        dv1.rsCommand5.Close
    End If
     If Not DataCombo1.Text = "" And Not DataCombo2.Text = "" Then
     dv1.rsCommand5.Open "SHAPE {select distinct a.areacd,d.areaname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd " & _
                         "}   AS Command5 APPEND (( SHAPE {select distinct a.areacd,supcd,c.slname as supname from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd,supcd,c.slname " & _
                         "}   AS Command6 APPEND ({select distinct a.areacd,a.supcd,c.slname as supname,arrdt,a.varcode,lotno,a.catcd,bale=(case bblflg when 'B' then bales  end),borah=(case bblflg when  IN ('R','H') then bales end),ratekg as ratekgs, ratequtl=netwt,value=netwt*(ratekg) from rm_lot a,rm_var b,fa_slmas c,rm_area d  where a.areacd = d.areacode and a.supcd = c.slcode and a.varcode=b.varcode and a.catcd = b.catcd and a.divcode='01' and a.arrdt between '" & Format(DataCombo1.Text, "YYYY-MM-DD") & "' and '" & Format(DataCombo2.Text, "YYYY-MM-DD") & "' order by a.areacd,a.supcd,arrdt,a.varcode,lotno,a.catcd " & _
                         "}   AS Command7 RELATE 'areacd' TO 'areacd','supcd' TO 'supcd') AS Command7) AS Command6 RELATE 'areacd' TO 'areacd') AS Command6 ", cn, adOpenStatic
    If dv1.rsCommand5.RecordCount = 0 Then
        MsgBox "No record Found", vbInformation
        Screen.MousePointer = 0
        Exit Sub
    Else
        areasuppur.Show
        Screen.MousePointer = 0
    End If
    End If
    
Case 111
        DataCombo1.Text = DTPicker1.value '''''
        DataCombo2.Text = DTPicker2.value '''''
        
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        If Trim(DataCombo1.Text) = "" Then
            MsgBox "No Record Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        Call MixingCostReport(CStr(U), CStr(v), divname, UserFooter1.SelectedStr)
        Screen.MousePointer = 0
Case 112
        DataCombo1.Text = DTPicker1.value '''''
        DataCombo2.Text = DTPicker2.value '''''
        U = Format(DataCombo1.Text, "dd/mm/yyyy")
        v = Format(DataCombo2.Text, "dd/mm/yyyy")
        TTYPE = Trim(Right(DataCombo3.Text, 2))
        B = Trim(Right(DataCombo4.Text, 1))
        If Trim(DataCombo1.Text) = "" Then
            MsgBox "No Record Found", vbInformation, head
            DataCombo1.Text = ""
            DataCombo1.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        
        If DataCombo3.MatchedWithList And DataCombo4.MatchedWithList Then
        Call TransferReport(CStr(U), CStr(v), CStr(W), CStr(divname), CStr(TTYPE), UserFooter1.SelectedStr, CStr(B), Right(Trim(DataCombo5.Text), 7), Right(Trim(DataCombo6.Text), 7))
        Screen.MousePointer = 0
        Else
        MsgBox "Select the valid Transfer type", vbInformation, head
        Screen.MousePointer = 0
        DataCombo3.Text = ""
        DataCombo3.SetFocus
        Exit Sub
        End If
   
End Select
intervalMinutes = -1
Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form rmireports", vbInformation, head
    Resume
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
    intervalMinutes = -1
'         If Repindex = 30 Then
'            PrPoNo = 4
'            prdate = ""
'      End If
'                repFoot = ""
'                Footer = ""
'                    UserFooter1.Visible = True
'                repFoot = UserFooter1.SelectedStr
'                'If prcount > 1 And prcount <= 4 Then
 '                   Call footer_purchase
'                'End If
'
'             Exit Sub
 End Sub
'Private Sub footer_purchase()
'    Dim monfdate As String
'
'      mfrmdate = Format(DTPicker3.value, "yyyy-MM-dd")
'      monfdate = Left(mfrmdate, 8) + "01"
'
'
''      ed = Mid$(DTPicker3.value, 4, 2)
''      ed1 = Mid$(DTPicker3.value, 7, 7)
''      U = Format("01" & "/" & ed & "/" & ed1, "dd/mm/yyyy")
'
'
'      sRecProduct = ""
'      Str = ""
'      Str = LocalIP 'Add
'      Str = LTrim(LocalIP) 'add
'
'            DB.Execute "Delete From  CountCodeTemp where Divcode = '" & Divcode & "' and SystemIP = '" & LocalIP & "'"
'            For i = 1 To Lv_PType.ListItems.Count
'
'If Option6.value Then
'
'W = Trim(Left(DataCombo1.Text, 1))
'V = Trim(Left(CmbRecType.Text, 1))
'GoTo reg
'If W = "A" Then
''Str = "alter PROCEDURE sp_purchasedaybook" & _
'                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
'                "AS " & _
'                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
'                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
'                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
'                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
'                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
'                "isnull(lrfrtamt, 0) As Freight " & _
'                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
'                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
'    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
'                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
'                "AS " & _
'                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
'                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
'                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
'                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
'                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,a.SuppBillvalue AS Purchase_Value ,isnull(a.totlandcost,0) as totlandcost, " & _
'                "isnull(lrfrtamt, 0) As Freight,ISNULL(a.SuppBillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) AS Purchase_Value " & _
'                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
'                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
'
'    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
'                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
'                " AS " & _
'                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
'                "sum(totlandcost) AS totlandcost,SUM(s.Purchase_Value)Purchase_Value,SUM(s.cstamt) AS cstamt FROM(        " & _
'                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
'                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
'                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
'                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
'                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight,ISNULL(a.SuppBillvalue,0) AS Purchase_Value from " & _
'                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
'                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
'                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode " & _
'                ")s GROUP BY varcode"
'
'    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
'                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
'                "AS " & _
'                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
'                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
'                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
'                "and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
'                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
'                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
'                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
'                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"
'
'Else
'    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
'                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
'                "AS " & _
'                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
'                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
'                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
'                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
'                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
'                "isnull(lrfrtamt, 0) As Freight " & _
'                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
'                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode and a.catcd='" & W & "' ORDER BY LOTDT , arrdt, varcode"
'
'    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
'                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
'                " AS " & _
'                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
'                "sum(totlandcost) AS totlandcost FROM(        " & _
'                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
'                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
'                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
'                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
'                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight from " & _
'                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
'                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
'                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode  and a.catcd='" & W & "'" & _
'                ")s GROUP BY varcode"
'
'    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
'                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
'                "AS " & _
'                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
'                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
'                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
'                "and pjno is not null and a.lotyear=@lotyear  and a.catcd='" & W & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
'                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
'                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear and a.catcd='" & W & "' group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
'                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
'                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
'                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
'                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517'  and a.catcd='" & W & "' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"
'End If
'reg:
''crr.Reset
''crr.Connect = connectstring
''crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_PurchaseDayBook.rpt"
''crr.RetrieveDataFiles
'
'        Dim clsCryRpt1 As New clsCrystal
'
'        If CustID = "SKY" Then
'            Set clsCryRpt1.cryRept = Cry_PurchaseDayBook
'        Else
'            Set clsCryRpt1.cryRept = Cry_RMIPURCHASEREGISTER_PER  'Cry_RMIPURCHASEREG  'Rep_purdaybook
'        End If
'
'        clsCryRpt1.CrystalPrint
'        crr.Reset
'        crr.Connect = connectstring
'        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'        crr.ParameterFields(0) = "@divname;" & divname
'        crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
'        crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
'        crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
'        crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
'        crr.ParameterFields(5) = "@divcode;" & Divcode
'        crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)
'
'        crr.PrinterCopies = 1
'        crr.WindowState = crptMaximized
'
'        SendKeys "{ENTER}"
'        crr.Action = 1
'
'ElseIf Option7.value Then
'
'        Dim clsCryRptarr As New clsCrystal
'        Set clsCryRptarr.cryRept = Rep_Purchasearrival
'        clsCryRptarr.CrystalPrint
'        crr.Reset
'        crr.Connect = connectstring
'        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'
'crr.ParameterFields(0) = "@divname;" & divname
'crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
'crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
'crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
'crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
'crr.ParameterFields(5) = "@divcode;" & Divcode
'crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)
'
'crr.PrinterCopies = 1
'crr.WindowState = crptMaximized
'
'SendKeys "{ENTER}"
'crr.Action = 1
'
'
'ElseIf Option8.value Then
'
'        Dim clsCryRptBill As New clsCrystal
'        Set clsCryRptBill.cryRept = Rep_Purchasebill
'        clsCryRptBill.CrystalPrint
'        crr.Reset
'        crr.Connect = connectstring
'        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'
'crr.ParameterFields(0) = "@divname;" & divname
'crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
'crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
'crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
'crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
'crr.ParameterFields(5) = "@divcode;" & Divcode
'crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)
'
'crr.PrinterCopies = 1
'crr.WindowState = crptMaximized
'
'SendKeys "{ENTER}"
'crr.Action = 1
'
'End If
'
'End Sub

Private Sub Command2_Click()
On Error GoTo DataCombo1_GotFocus_Error
If Repindex = 70 Then

Call IssuelistMixwise_Excel

End If
If Repindex = 112 Then
ExcelBTNFLG = "Y"
Call cmdcry_Click
End If
Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
    Screen.MousePointer = 11
    
    
    If Repindex = 61 Then
        
        
        
          Dim vP_Str1 As String
   U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
U = DTPicker1.value
v = DTPicker2.value
    
    Set rsA1 = New Recordset
    rsA1.Open "select  issue_code + '-'+ issue_desc as type from rm_issuetype union select DISTINCT 'A -ALL' AS TYPE FROM RM_ISSUETYPE", cn, adOpenStatic, adLockBatchOptimistic
    If DataCombo3.Text <> "" And DataCombo4.Text <> "" Then
        If DataCombo3.MatchedWithList Or DataCombo4.MatchedWithList Then
           FVar = Trim(Left(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") - 1))
           TVar = Trim(Left(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") - 1))
        Else
           If DataCombo3.Text = "" Then
              MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
              DataCombo3.SetFocus
              Screen.MousePointer = 0
              Exit Sub
           End If
              If DataCombo4.Text = "" Then
              MsgBox "Veriety Should not be Empty Or change the Fromdate", vbInformation, head
              DataCombo4.SetFocus
              Screen.MousePointer = 0
              Exit Sub
           End If
        End If
    End If
    
     Do While Not rsA1.EOF
         If CmbRecType.Text = rsA1(0) Then
         GoTo veriety
         Else
         rsA1.MoveNext
         End If
     Loop
veriety: ISSTYPE = Trim(Mid(CmbRecType.Text, 1, 2))
         lottype = Trim(Mid(cmblottype.Text, 1, 3))
    
    If UCase(Trim(CustID)) = "MAHADEV" Then
        FVar = Trim(Left(DataCombo3.Text, InStr(1, DataCombo3.Text, "-") - 1))
        TVar = Trim(Left(DataCombo4.Text, InStr(1, DataCombo4.Text, "-") - 1))
    End If
    
    If Table_Exists("Vw_rmi_Issuereg_varitywise") = True Then DB.Execute "Drop view Vw_rmi_Issuereg_varitywise "
    
    If Trim(ISSTYPE) = "A" Then
        If lottype = "ALL" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
        Else
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.varcode = b.varcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
                End If
     Else
       
        If lottype = "ALL" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
                DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         Else
                 DB.Execute "Create view Vw_rmi_Issuereg_varitywise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value from rm_issb a,rm_lot b,rm_issh h where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value from rm_issb a,rm_lot b,rm_issh h where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' AND b.varcode between '" & FVar & "' and '" & TVar & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,ISSTO,bblflg,ratekg,UNIT "
         End If

    End If

    Set rs1 = New Recordset
    rs1.Open "select * from Vw_rmi_Issuereg_varitywise", DB, adOpenStatic
    
    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    
   Dim Categoryvar As String
If Left(FVar, 1) = "B" And Left(TVar, 1) = "B" Then
    Categoryvar = "Category : POLYNOSIC"
ElseIf Left(FVar, 1) = "C" And Left(TVar, 1) = "C" Then
    Categoryvar = "Category : COTTON"
ElseIf Left(FVar, 1) = "F" And Left(TVar, 1) = "F" Then
    Categoryvar = "Category : FLAX FIBRE"
ElseIf Left(FVar, 1) = "L" And Left(TVar, 1) = "L" Then
    Categoryvar = "Category : LYCRA"
ElseIf Left(FVar, 1) = "P" And Left(TVar, 1) = "P" Then
    Categoryvar = "Category : POLYESTER"
Else
    Categoryvar = "Category : ALL"
End If
    
    
    
    
    Headname = "Variety wise Issue List from " & Format(U, "dd-MM-yy") & " to " & Format(v, "dd-MM-yy")
    
        Dim ClsMixingIssuevariety As New clsCrystal
        
        Set ClsMixingIssuevariety.cryRept = Cry_IssueSKS_Variety

        ClsMixingIssuevariety.CrystalPrint
        CrystalReport1.Reset
        
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.Formulas(0) = "divname='" & divname & "'"
        CrystalReport1.Formulas(1) = "UnitName='" & PrUnitName & "'"
         CrystalReport1.Formulas(2) = "Head='" & Headname & "'"
          CrystalReport1.Formulas(3) = "Category='" & Categoryvar & "'"
'
'        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
'        CrystalReport1.ParameterFields(1) = "@FromDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
'        CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
'        CrystalReport1.ParameterFields(3) = "@lotyear;" & Trim(Format(yfdate, "yyyy"))
'        CrystalReport1.ParameterFields(4) = "@IssueType; " & Issue_List
    
        CrystalReport1.WindowState = crptMaximized
        ' CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        Exit Sub
        
        
   Else
    
    
    
                        CL_Cat = ""
                    
                    Issue_List = ""
                    For I = 1 To List_IssueType.ListItems.Count
                        If List_IssueType.ListItems.Item(I).Checked = True Then
                         CL_Cat = "Y"
                              '  sRecCount = Trim(List_Godown.ListItems(i).SubItems(1))
                         GoTo GLCAT
                        End If
                    Next
GLCAT:
                    If CL_Cat = "" Then
                        MsgBox "Please Select Any Type ", vbInformation, head
                        Exit Sub
                    End If
                    
                    Issue_List = ""
                           For I = 1 To List_IssueType.ListItems.Count
                        
                                If List_IssueType.ListItems.Item(I).Checked = True Then
                                    sRecCount = Trim(List_IssueType.ListItems(I).SubItems(1))
                                    If Issue_List <> "" Then
                                     '   L_God = L_God + "," + "'" + Trim(sRecCount) + "'"
                                         Issue_List = Issue_List + "," + "" + Trim(sRecCount) + ""
                                    Else
                                       ' L_God = "'" + Trim(sRecCount) + "'"
                                        Issue_List = "" + Trim(sRecCount) + ""
                                    End If
                                End If
                            Next
    
   If UCase(CustID) = "SKS" Then
   
           If chkcat.value = True Then
            Category_List = "ALL"
           Else
            CL_Category = ""
                            
                            Category_List = ""
                            For I = 1 To ListCat.ListItems.Count
                                If ListCat.ListItems.Item(I).Checked = True Then
                                 CL_Category = "Y"
                                      '  sRecCount = Trim(List_Godown.ListItems(i).SubItems(1))
                                 GoTo GLCATERGORY
                                End If
                            Next
GLCATERGORY:
                            If CL_Category = "" Then
                                MsgBox "Please Select Any Category Type ", vbInformation, head
                                Exit Sub
                            End If
                            
                            CL_Category = ""
                                   For I = 1 To ListCat.ListItems.Count
                                
                                        If ListCat.ListItems.Item(I).Checked = True Then
                                            sRecCount = Trim(ListCat.ListItems(I).SubItems(1))
                                            If Category_List <> "" Then
                                             '   L_God = L_God + "," + "'" + Trim(sRecCount) + "'"
                                                 Category_List = Category_List + "," + "" + Trim(sRecCount) + ""
                                            Else
                                               ' L_God = "'" + Trim(sRecCount) + "'"
                                                Category_List = "" + Trim(sRecCount) + ""
                                            End If
                                        End If
                                    Next
           End If
   End If
   
    
   If chkcat.value = 1 Then
        Categoryvar = "Category : ALL"
   Else
        
         If Category_List = "B" Then
             Categoryvar = "Category : POLYNOSIC"
         ElseIf Category_List = "C" Then
             Categoryvar = "Category : COTTON"
         ElseIf Category_List = "F" Then
             Categoryvar = "Category : FLAX FIBRE"
         ElseIf Category_List = "L" Then
             Categoryvar = "Category : LYCRA"
         ElseIf Category_List = "P" Then
             Categoryvar = "Category : POLYESTER"
        
         End If

   
   End If
                        
    
        Dim ClsMixingIssuereport As New clsCrystal
        
        If Check1.value = 1 Then
            Set ClsMixingIssuereport.cryRept = Cry_MixingDatewise
        Else
            If UCase(CustID) = "SKS" Then
                Set ClsMixingIssuereport.cryRept = Cry_IssuelistMixabs_SKS
            Else
                Set ClsMixingIssuereport.cryRept = Cry_Issue_mixwise
            End If
            
        End If
        ClsMixingIssuereport.CrystalPrint
        CrystalReport1.Reset
      
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FromDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@ToDate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@lotyear;" & Trim(Format(yfdate, "yyyy"))
        CrystalReport1.ParameterFields(4) = "@IssueType; " & Issue_List
        
        If UCase(CustID) = "SKS" Then
            CrystalReport1.ParameterFields(5) = "@Category; " & Category_List
            CrystalReport1.Formulas(0) = "Category='" & Categoryvar & "'"
        End If
        
        ' added on 16-08-18 by mariyaiya
        If UCase(CustID) = "BASML" Then
            If Combo3.Text = "ALL   - All" Then
                MIXNO = "A"
            Else
                MIXNO = Combo3.Text
            End If
            CrystalReport1.ParameterFields(5) = "@MixNo;" & MIXNO
        End If
        CrystalReport1.WindowState = crptMaximized
       ' CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    End If
End Sub

'Private Sub DataCombo4_GotFocus()
'
'Select Case REPINDEX
'Case 59, 58, 52, 53, 57, 54, 55, 60, 61
'Set RS = New Recordset
'RS.Open "select distinct contdt from rm_cont  where divcode='" & divcode & "' and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by contdt ", Db, adOpenStatic, adLockBatchOptimistic
'If RS.RecordCount <> 0 Then
'    Set DataCombo1.RowSource = RS
'    DataCombo1.ListField = "contdt"
'    Set DataCombo2.RowSource = RS
'    DataCombo2.ListField = "contdt"
'    RS.MoveFirst
'    DataCombo1.Text = RS(0)
'    RS.MoveLast
'    DataCombo2.Text = RS(0)
'End If
'
'End Select
'
'End Sub

Private Sub DataCombo1_GotFocus()
'---------- The following block is required
    
'    Set dv1 = New DataEnvironment1
'    dv1.Connection1.ConnectionString = connectstring
   intervalMinutes = -1
On Error GoTo DataCombo1_GotFocus_Error

    Set cn = New Connection
    cn.CursorLocation = adUseClient
    
    If cn.State = 1 Then
      cn.Close
    End If

    cn.ConnectionString = "provider=msdatashape;" & connectstring

    If cn.State = adStateclose Then
        cn.Open
    End If
    
    '-------------------
    
Select Case Repindex
Case 59, 58, 52, 53, 57, 54, 55, 60, 61, 63, 66, 67, 68, 70, 111, 112, 203, 220, 3066
Set Rs = New Recordset
If Repindex = 60 Or Repindex = 55 Or Repindex = 53 Then
   
   'RS.Open "select distinct arrdt AS docdt from rm_ARRIVAL where divcode='" & Divcode & "' and CONTDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by CONTDT ", cn, adOpenStatic, adLockBatchOptimistic
   Rs.Open "select distinct arrdt as docdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
   'For Transfer Receipt
   If Repindex = 60 Then
        Set Rs = New Recordset
        'RS.Open "select distinct LOTDT as docdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select distinct arrdt as docdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
   End If
   If Repindex = 55 Then
        Set Rs = New Recordset
        'RS.Open "SELECT DISTINCT LOTDT AS DOCDT FROM RM_LOT WHERE DIVCODE='" & Divcode & "' AND arrdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and rejflg='N' and lotyear='" & Year(yfdate) & "'  ORDER BY LOTdt ", cn, adOpenStatic, adLockBatchOptimistic
        Rs.Open "select distinct arrdt as docdt from rm_LOT where divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 53 Then
        Set Rs = New Recordset
        Rs.Open "select distinct arrdt as docdt from rm_lot where divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic
    End If
Else
     Rs.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isstype='PR' order by docdt ", cn, adOpenStatic, adLockBatchOptimistic
     If Repindex = 111 Then
         Set Rs = New Recordset
         Rs.Open "select distinct docdt from rm_issb where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and isstype='PR' order by docdt ", cn, adOpenStatic, adLockBatchOptimistic
         
     End If
End If
If Repindex = 112 Then
    Me.Caption = "Transfer Receipt List"
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt as docdt from rm_lot where divcode='" & Divcode & "' and lotDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='T' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
    DataCombo5.Visible = True
    DataCombo6.Visible = True
    Label7.Visible = True
    Label8.Visible = True
    
    Set rs1 = New Recordset
    rs1.Open "select distinct a.slname + ' - ' + r.supcd""slname"",R.SupCd from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by R.SupCd ", cn, adOpenStatic, adLockBatchOptimistic
    If rs1.RecordCount <> 0 Then
        Set DataCombo5.RowSource = rs1
        DataCombo5.ListField = "slname"
        rs1.MoveFirst
        DataCombo5.Text = rs1(0)
    
        Set DataCombo6.RowSource = rs1
        DataCombo6.ListField = "slname"
        rs1.MoveLast
        DataCombo6.Text = rs1(0)
    End If
    
    Screen.MousePointer = 0
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo3.tabIndex = 2
    DataCombo4.tabIndex = 3
    DataCombo5.tabIndex = 4
    DataCombo6.tabIndex = 5
    cmdReport.tabIndex = 6
    CmdExit.tabIndex = 7


End If

If Rs.RecordCount <> 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "docdt"
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "docdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
End If
If Repindex = 70 Then cmdcry.Visible = True
Case 71, 72, 73
Set Rs = New Recordset
Rs.Open "select distinct arrdt from rm_lot where divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic

If Repindex = 71 Then
    Set Rs = New Recordset
    Rs.Open "select distinct arrdt from rm_lot where divcode='" & Divcode & "' and arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by arrdt ", cn, adOpenStatic, adLockBatchOptimistic
End If
If Rs.RecordCount <> 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "arrdt"
    Set DataCombo2.RowSource = Rs
    DataCombo2.ListField = "arrdt"
    Rs.MoveFirst
    DataCombo1.Text = Rs(0)
    Rs.MoveLast
    DataCombo2.Text = Rs(0)
End If
End Select
intervalMinutes = -1
Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo3_GotFocus()
On Error GoTo DataCombo3_GotFocus_Error

Select Case Repindex
Case 59, 58, 52, 53, 57, 54, 55, 61, 63, 66, 67, 68, 70, 203, 220, 3066
    Set rs1 = New Recordset
    rs1.Open "select distinct r.catcd+'-'+a.catname""catname"" from rm_cat a,rm_arrival r,rm_cont c where a.catcd=r.catcd and r.contno=c.contno and r.contdt=c.contdt and r.divcode=c.divcode and c.divcode='" & Divcode & "' and   c.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by catname ", cn, adOpenStatic, adLockBatchOptimistic
    If Repindex = 55 Then
        Set rs1 = New Recordset
        rs1.Open "select distinct b.catcd+'  -  '+a.catname""catname"" from rm_cat a,rm_lot b  where a.catcd=b.catcd  and b.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by catname ", cn, adOpenStatic, adLockBatchOptimistic
    
    If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "catname"
        rs1.MoveFirst
        DataCombo3.Text = rs1(0)
        Do While Not rs1.EOF
            Combo1.AddItem rs1(0)
            rs1.MoveNext
        Loop
        Combo1.AddItem "A  -  ALL"
        rs1.MoveFirst
        Combo1.Text = rs1(0)
        End If
     End If
   Screen.MousePointer = 0
Case 60
    Set rs1 = New Recordset
    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic, adLockBatchOptimistic
    If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "slname"
        rs1.MoveFirst
        DataCombo3.Text = rs1(0)
    
        Set DataCombo4.RowSource = rs1
        DataCombo4.ListField = "slname"
        rs1.MoveLast
        DataCombo4.Text = rs1(0)
    End If
    Screen.MousePointer = 0
Case 112
    Set rsg = New Recordset
    rsg.Open "select distinct 'All -  A' as iss from rm_issuetype union select issue_desc +'-'+issue_code""iss"" from rm_issuetype where isstype in ('T','J')", DB, adOpenStatic
        
    If rsg.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsg
        DataCombo3.ListField = "iss"
        rsg.MoveFirst
        DataCombo3.Text = rsg(0)
    End If

End Select

Exit Sub
DataCombo3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo3_GotFocus of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
Screen.MousePointer = 11
DTPicker1.MinDate = yfdate
DTPicker2.MinDate = yfdate
'DTPicker3.MinDate = yfdate
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Select Case Repindex
Case 52, 53, 54, 55, 57, 58, 59, 60, 61, 63, 66, 67, 68, 70, 71, 72, 73, 111, 112, 203, 220, 3066, 1200
If Repindex <> 71 And Repindex <> 72 And Repindex <> 73 Then
    Frame1.Visible = True
    If Repindex = 59 Then
        Label4.Caption = "Quarterly Return Statement"
        Me.Caption = "Quarterly Return Statement"
    ElseIf Repindex = 58 Then
        Label4.Caption = "Panel Statement"
        Me.Caption = "Panel Statement"
    ElseIf Repindex = 112 Then
        Label3.Visible = True
        Label3.Caption = "Transfer Type "
        DataCombo3.Visible = True
        Command2.Visible = True
         Check1.Visible = True
         Check1.Top = 500
         Check1.Left = 4500
       Check1.Caption = "Sample"
        If (Me.WindowState = Normal) Then
        ExcelBTNFLG = "N"
       Me.Width = 10845
      
       End If
    End If
        
        Call DataCombo1_GotFocus
        Call DataCombo3_GotFocus
       
        
  ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo1.Left
    DTPicker1.Width = DataCombo1.Width
    DTPicker1.Top = DataCombo1.Top
    DTPicker1.Height = DataCombo1.Height
   
    
'    Frame1.Height = 2000
'    SSTab1.Height = 2150
    
    Frame1.Width = 4900
    SSTab1.Width = 5000 + 100

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    DTPicker2.Height = DataCombo2.Height
    
     Call DTPicker1_Change
''''''''''''''''''''''
If Repindex <> 66 And Repindex <> 70 And Repindex <> 3066 And Repindex <> 1200 Then
    cmdcry.Visible = True
End If
If Repindex = 112 Then
  Set rsg1 = New Recordset
    rsg1.Open "select CatName +'-'+CatCd as Cat from Rm_cat Union select distinct 'All -  A' as Cat from rm_Cat", DB, adOpenStatic
        
    If rsg1.RecordCount > 0 Then
        Set DataCombo4.RowSource = rsg1
        DataCombo4.ListField = "Cat"
        rsg1.MoveFirst
        DataCombo4.Text = rsg1(0)
    End If
    End If
        
        If Repindex = 60 Then
            DataCombo3.Width = 3100
'            SSTab1.Width = SSTab1.Width + 1000
'            Frame1.Width = Frame1.Width + 1000
'            Label4.Width = Label4.Width + 1500
             Label3.Caption = "From Supplier"
             Label4.Caption = "To Supplier"
            DataCombo4.Width = 3100
            DataCombo4.Visible = True
        End If
        
        If Repindex = 111 Then
            Frame1.Height = Frame1.Height - 600
            SSTab1.Height = SSTab1.Height - 600
            CmdExit.Left = CmdExit.Left - 1500
'            cmdreport.Top = cmdreport.Top - 200
'            cmdexit.Top = cmdexit.Top - 200
        ' COMMENTED ON 16-08-18 BY MARIYAIYA
        If UCase(CustID) = "ASM" Then
           Combo3.Visible = True
           Label7.Visible = True
            Label7.Caption = "Mix No"
            Label7.Top = DTPicker2.Top + 500
            SSTab1.Height = 3200
            Frame1.Height = 3050
            Combo3.Visible = True
            Combo3.Top = DTPicker2.Top + 500
            Combo3.Left = 1500
            Combo3.Width = 1830
            Set rsa = New Recordset
            rsa.Open "select isnull(mixgrp,'') ""mixno"" from RM_issH ", cn
            If rsa.RecordCount <> 0 Then
                If Not rsa.EOF Then
                rsa.MoveFirst
                Do While Not rsa.EOF
                 Combo3.AddItem rsa(0)
                 rsa.MoveNext
                Loop
                  'Combo3.AddItem "ALL   - All"
                  Combo3.Text = "ALL   - All"
                End If
            End If
            End If
            
        End If
        If Repindex = 60 Then
            cmdReport.Top = cmdReport.Top + 400
            CmdExit.Top = CmdExit.Top + 400
        End If
        If Repindex = 112 Then
'            cmdreport.Top = cmdreport.Top - 400
'            cmdexit.Top = cmdexit.Top - 400
            DataCombo3.Visible = True
             DTPicker1.tabIndex = 0
             DTPicker2.tabIndex = 1
             DataCombo3.tabIndex = 2
             cmdReport.tabIndex = 3
            CmdExit.tabIndex = 4
            DataCombo4.Visible = True
            Label5.Visible = True
            Frame1.Height = 3600
            SSTab1.Height = 3750
            Frame1.Width = Frame1.Width + 1000
            SSTab1.Width = SSTab1.Width + 1000
            Label4.Width = Label4.Width + 1000
            
        End If
        If Repindex = 61 Then
            SSTab1.Height = 4000
            Frame1.Height = 3850
            LblRecType.Visible = True
            CmbRecType.Visible = True
            lbllottype.Visible = True
            cmblottype.Visible = True
            CmbRecType.Top = CmbRecType.Top + 300
            LblRecType.Top = CmbRecType.Top
            lbllottype.Top = LblRecType.Top + 500
            cmblottype.Top = CmbRecType.Top + 500
            Call IssLoad(CmbRecType)
            cmblottype.AddItem "A   - Own Process"
            cmblottype.AddItem "T   - Job Work"
            cmblottype.AddItem "ALL   - All"
            cmblottype.ListIndex = 0
            lbllottype.Caption = "Lot Type"
            cmdReport.Top = cmdReport.Top + 1400
            CmdExit.Top = CmdExit.Top + 1400
            CmbRecType.ListIndex = 0
            cmdcry.Top = cmdReport.Top
            Command3.Left = Command2.Left
            Command3.Top = CmdExit.Top
            Command3.Visible = True
        End If
        If Repindex = 66 Or Repindex = 3066 Then
            SSTab1.Height = 3850
            Frame1.Height = 3750
            SSTab1.Width = 5300
            Frame1.Width = 5150
            LblRecType.Visible = True
            CmbRecType.Visible = True
            CmbRecType.Top = CmbRecType.Top
            LblRecType.Top = CmbRecType.Top
            Call IssLoad(CmbRecType)
            lbllottype.Visible = True
            cmblottype.Visible = True
            lbllottype.Top = LblRecType.Top + 550
            cmblottype.Top = CmbRecType.Top + 550
            cmblottype.AddItem "A   - Own Process"
            cmblottype.AddItem "T   - Job Work"
            cmblottype.AddItem "ALL   - All"
            cmblottype.ListIndex = 0

            CmbRecType.ListIndex = 0
            DTPicker1.tabIndex = 0
             DTPicker2.tabIndex = 1
             CmbRecType.tabIndex = 2
             cmdReport.tabIndex = 3
            CmdExit.tabIndex = 4
        End If
        If Repindex = 70 Then
            SSTab1.Height = 4515 '2750
            Frame1.Height = 4365 ' 2600
            LblRecType.Visible = True
            CmbRecType.Visible = True
            Check1.Visible = True
            Check2.Visible = True

            If UCase(CustID) = "SKS" Then
                SSTab1.Height = 5595 '4515 '2750
                Frame1.Height = 5440 '4365 ' 2600
                ListCat.Visible = True
                chkcat.Visible = True
                lblCat.Visible = True
               Check2.Top = Check2.Top - 1000
                Call load_CategoryChkListbox
            Else
                Frame1.Top = 1545
                SSTab1.Top = 1560
                List_IssueType.Height = 2685
                Check1.Top = 4080
            End If
            
           
            List_IssueType.Visible = True
            Call load_IssueChkListbox

            CmbRecType.Top = CmbRecType.Top - 700
            LblRecType.Top = CmbRecType.Top
            Call IssLoad(CmbRecType)
            lbllottype.Visible = True
            cmblottype.Visible = True
            lbllottype.Top = LblRecType.Top + 500
            cmblottype.Top = CmbRecType.Top + 500
            cmblottype.AddItem "A   - Own Process"
            cmblottype.AddItem "T   - Job Work"
            cmblottype.AddItem "ALL   - All"
            cmblottype.ListIndex = 0
            
            
            ''sasi26.2.20
            LblRecType.Visible = False
            CmbRecType.Visible = False
              Command3.Visible = True
            lbllottype.Visible = False
            cmblottype.Visible = False
            CmdExit.Left = 7680
            Command3.Left = 6240
            If UCase(CustID) = "ASM" Then
            Combo3.Visible = True
            Label7.Visible = True
            Label7.Caption = "Mix No"
            Label7.Top = lbllottype.Top + 500
            SSTab1.Height = 3200
            Frame1.Height = 3050
            Combo3.Visible = True
            Combo3.Top = cmblottype.Top + 500
            Combo3.Width = 3135
            Combo3.Top = 2580
            Combo3.Left = 1500
            Label3.Visible = True
            Label3.Caption = "Issue Types"
            
            Set rsa = New Recordset
            rsa.Open "select isnull(mixgrp,'') ""mixno"" from RM_issH ", cn
            If rsa.RecordCount <> 0 Then
'            DataCombo5.ListField = "mixno"
'                Set DataCombo7.DataSource = rsa
'                 DataCombo7.DataField = "mixno"
                If Not rsa.EOF Then
                rsa.MoveFirst
                Do While Not rsa.EOF
                 Combo3.AddItem rsa(0)
                 rsa.MoveNext
                Loop
                  Combo3.Text = "ALL   - All"
                End If
            End If
            End If
             'Frame1.Height = Frame1.Height + 400
            'SSTab1.Height = SSTab1.Height + 400
            
        End If
Else
End If
    If Not Repindex = 60 And Not Repindex = 55 Then
        Call DataCombo1_GotFocus
        If Repindex <> 112 Then
            DataCombo3.Visible = False
            
            Label3.Visible = False
            If Repindex = 70 Then
              Label3.Visible = True
            Label3.Caption = "Issue Type"
            End If
            
            
        Else
            DataCombo3.Visible = True
            Label3.Visible = True
        End If
        
        
         ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo1.Left
    DTPicker1.Width = DataCombo1.Width
    DTPicker1.Top = DataCombo1.Top
    DTPicker1.Height = DataCombo1.Height
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo3.tabIndex = 2
    cmdReport.tabIndex = 3
    CmdExit.tabIndex = 4
        
    

    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
    DTPicker2.Height = DataCombo2.Height
''''''''''''''''''''''
'    Frame1.Height = Frame1.Height - 700
'    SSTab1.Height = SSTab1.Height - 700
'    cmdreport.Top = cmdreport.Top - 1000
'    cmdexit.Top = cmdexit.Top - 1000
    
    If Repindex = 71 Or Repindex = 73 Then
    
    LblRecType.Visible = True
    CmbRecType.Visible = True
    LblRecType.Top = LblRecType.Top - 500
    CmbRecType.Top = CmbRecType.Top - 500
    cmdcry.Visible = True
    
    Set RecTypeRs = New Recordset
            RecTypeRs.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
            CmbRecType.Clear
            I = 0
            While Not RecTypeRs.EOF
            CmbRecType.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
            Wend
            CmbRecType.AddItem "ALL  -  ALL"
            If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
            
            End If
            
    ElseIf Repindex = 60 Then
        Label3.Caption = "From Party"
        Label5.Caption = "To Party"
        Label5.Visible = True
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    End If
    If Repindex = 55 Then
            cmdReport.Top = cmdReport.Top + 400
            CmdExit.Top = CmdExit.Top + 400
            DataCombo3.Visible = False
            Combo1.Visible = True
            Combo1.ZOrder
    End If
End Select
Select Case Repindex
Case 52
    Label4.Caption = "Quarterly Return Statement"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 53
    Label4.Caption = "Market Commitee - Receipt"
    Me.Caption = "Market Commitee  - Receipt"
    'Frame1.Height = Frame1.Height - 1400
    'SSTab1.Height = SSTab1.Height - 1300
    'Command1.Top = Command1.Top - 1500
   ' Command2.Top = Command2.Top - 1500
   If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 203
    Label4.Caption = "Rejected Arrivals-Datewise"
    Frame1.Height = 2500
    SSTab1.Height = 2750
    cmdReport.Top = 4000
    CmdExit.Top = 4000
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 74
    
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DTPicker1.Visible = True
    DTPicker2.Visible = True
    DataCombo3.Visible = True
    DataCombo4.Visible = True
    Label5.Visible = True
    DTPicker1.value = mfdate
    DTPicker2.value = pdate
    Label3.Caption = "From Broker"
    Label5.Caption = "To Broker"
    Label3.Visible = True
    Label4.Caption = "Broker Assessment Record"
    Set rsa = New Recordset
    'rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A,RM_CONT B where A.SLCODE=B.BRKCD AND slcode like 'c4%' Order by broker", DB, adOpenStatic
    rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A,RM_CONT B where A.SLCODE=B.BRKCD Order by broker", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsa
        Set DataCombo4.RowSource = rsa
        DataCombo3.ListField = "Broker"
        DataCombo4.ListField = "Broker"
        rsa.MoveFirst
        DataCombo3.Text = rsa(0)
        rsa.MoveLast
        DataCombo4.Text = rsa(0)
    End If
   ' Screen.MousePointer = 11
   ' Exit Sub
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo3.tabIndex = 2
    DataCombo4.tabIndex = 3
    cmdReport.tabIndex = 4
    CmdExit.tabIndex = 5
   
    
Case 774
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DTPicker1.Visible = True
    DTPicker2.Visible = True
    DataCombo3.Visible = True
    DTPicker1.value = mfdate
    DTPicker2.value = pdate
    Label3.Caption = "From Broker"
    Label3.Visible = True
    Label4.Caption = "Broker Assessment Record"
    Me.Caption = "Broker Assessment"
    Set rsa = New Recordset
    'rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A ,RM_CONT B where B.BRKCD=A.SLCODE AND slcode like 'c4%' Order by broker", DB, adOpenStatic
    rsa.Open "select DISTINCT slname + '-' +  slcode 'broker' from fa_slmas A ,RM_CONT B where B.BRKCD=A.SLCODE Order by broker", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsa
        Set DataCombo4.RowSource = rsa
        DataCombo3.ListField = "Broker"
        rsa.MoveFirst
        DataCombo3.Text = rsa(0)
    End If
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo3.tabIndex = 2
    cmdReport.tabIndex = 3
    CmdExit.tabIndex = 4
    
    'Screen.MousePointer = 11
    Exit Sub
    
Case 54
    Label4.Caption = "Pending Invoice"
    Me.Caption = "Pending Invoice"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 55
    Label4.Caption = "Receipt List - Datewise"
    Me.Caption = "Receipt List - Datewise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 57
    Label4.Caption = "List of Lots without Bill"
    Me.Caption = "List of Lots without Bill"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 58
    Label4.Caption = "Panel Statement"
    Me.Caption = "Panel Statement"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 59
    Label4.Caption = "Quarterly Return Statement"
    Me.Caption = "Quarterly Return Statement"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 60
    Label4.Caption = "Receipt List - Partywise"
    Me.Caption = "Receipt List - Partywise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 61
    Label4.Caption = "Issue List - Varietywise"
    Me.Caption = "Issue List - Varietywise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
      DTPicker1.tabIndex = 0
            DTPicker2.tabIndex = 1
            DataCombo3.tabIndex = 2
            DataCombo4.tabIndex = 3
            CmbRecType.tabIndex = 4
            cmdReport.tabIndex = 5
            CmdExit.tabIndex = 6
Case 63
    Label4.Caption = "Staple Statement"
    Me.Caption = "Staple Statement"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 66
    Label4.Caption = "Issue List - Countwise"
    Me.Caption = "Issue List - Countwise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    SSTab1.Height = SSTab1.Height + 600
    Frame1.Height = Frame1.Height + 600
    cmdReport.Top = cmdReport.Top + 1200
    CmdExit.Top = CmdExit.Top + 1200
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Combo1.tabIndex = 2
    DataCombo4.tabIndex = 3
    CmbRecType.tabIndex = 4
Case 3066
    Label4.Caption = "Raw Material Process Stock"
    Me.Caption = "Raw Material Process Stock"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    SSTab1.Height = SSTab1.Height + 600
    Frame1.Height = Frame1.Height + 600
    cmdReport.Top = cmdReport.Top + 1200
    CmdExit.Top = CmdExit.Top + 1200
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Combo1.tabIndex = 2
    DataCombo4.tabIndex = 3
    CmbRecType.tabIndex = 4

'Case 67
'    Label4.Caption = "Brokerwise Purchase Analysis"
Case 68
    Label4.Caption = "Market Commitee Report - Issue"
    Me.Caption = "Market Commitee Report - Issue"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 70
    Label4.Caption = "Issue List - Mix No. wise"
    Me.Caption = "Issue List - Mix No. wise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
            DTPicker1.tabIndex = 0
            DTPicker2.tabIndex = 1
            CmbRecType.tabIndex = 2
            cmdReport.tabIndex = 3
            CmdExit.tabIndex = 4
            Frame1.Height = Frame1.Height - 50
            cmdcry.Visible = True
            Command2.Visible = True
            Command2.Top = cmdReport.Top
Case 71
    Label4.Caption = "Agentwise,Datewise Purchases"
    Me.Caption = "Agentwise,Datewise Purchases"
    SSTab1.Height = 3200
    Frame1.Height = 3000
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 72
    Label4.Caption = "Brokerwise,Supplierwise Purchase Analysis"
    Me.Caption = "Brokerwise,Supplierwise Purchase Analysis"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 73
    Label4.Caption = "Stationwise,Supplierwise Purchase"
    Me.Caption = "Stationwise,Supplierwise Purchase"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 111
    Label4.Caption = "Mixing Cost"
    Me.Caption = "Mixing Cost"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    
    End If
Case 112
    Label4.Caption = "Transfer Receipt"
If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo3.tabIndex = 2
    cmdReport.tabIndex = 3
    CmdExit.tabIndex = 4
Case 220

    Label4.Caption = "Issue List - Stationwise"
    Label4.Caption = "Issue List - Stationwise"
'    Combo2.AddItem "P-Unit 1-Production"
'    Combo2.AddItem "Q-Unit 2-Production"
'    Combo2.AddItem "A-All Unit Production"
'
'    Combo2.Text = "A-All Unit Production"
    Call IssLoad(Combo2)
    Combo2.Visible = True
    Label6.Visible = True
   
    DataCombo1.Top = 900
    DataCombo2.Top = 1300

    'Label1.Top = 1000
    'Label2.Top = 1750
    'Label6.Top = 2500
    'Combo2.Top = 2500
    Label1.Top = 900
    Label2.Top = 1300
    
    Label6.Top = 1800
    Combo2.Top = 1800
    
End Select
        If Repindex = 61 Then
            Label3.Caption = "From Variety"
            Label5.Caption = "To Variety"
     
            Set rsg = New Recordset
            'rsg.Open "select distinct a.varcode+ ' - '+varname as varcode from rm_issb a,rm_var b where a.varcode=b.varcode and a.lotdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' order by a.varcode", connectstring, dbopenstatic
            rsg.Open "Select distinct a.varcode+ ' - '+varname as variety,a.varcode from rm_issb a,rm_var b where a.varcode=b.varcode and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and divcode ='" & Divcode & "' order by a.varcode", DB, adOpenStatic
            If rsg.RecordCount <> 0 Then
                Set DataCombo3.RowSource = rsg
               Set DataCombo4.RowSource = rsg
                DataCombo3.ListField = "variety"
                DataCombo4.ListField = "variety"
                rsg.MoveFirst
                If Not IsNull(rsg(0)) Then DataCombo3.Text = rsg(0)
                rsg.MoveLast
                If Not IsNull(rsg(0)) Then DataCombo4.Text = rsg(0)
              End If
            
            
            Label3.Visible = True
            Label5.Visible = True
            DataCombo3.Visible = True
            DataCombo4.Visible = True
            If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
      DTPicker1.tabIndex = 0
            DTPicker2.tabIndex = 1
            DataCombo3.tabIndex = 2
            DataCombo4.tabIndex = 3
            CmbRecType.tabIndex = 4
            cmdReport.tabIndex = 5
            CmdExit.tabIndex = 6
        End If

        If Repindex = 66 Or Repindex = 3066 Then
            Label3.Caption = "Issued To"
            Combo1.Clear
            Combo1.AddItem "M - Mixing"
            Combo1.AddItem "D - Dying"
            Label3.Visible = True
            Combo1.Visible = True
            Combo1.ZOrder
            Combo1.ListIndex = 0
            If (Me.WindowState = Normal) Then
                Me.Width = 10845
            End If
            
            lbl_fcount.Visible = True
            lbl_tcount.Visible = True
            dbcmb_fcount.Visible = True
            dbcmb_tcount.Visible = True
            Set Rs = New Recordset
            Rs.Open "SELECT DISTINCT a.cntcd + ' - ' + b.cntname as cntname,a.cntcd from rm_issh a,rm_count b WHERE a.cntcd=b.cntcd AND a.docdt BETWEEN '" & Format(yfdate, "yyyy-MM-dd") & "' AND '" & Format(yldate, "yyyy-MM-dd") & "' AND a.divcode='" & Divcode & "' order by a.cntcd", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                Set dbcmb_fcount.RowSource = Rs
                dbcmb_fcount.ListField = "cntname"
                Set dbcmb_tcount.RowSource = Rs
                dbcmb_tcount.ListField = "cntname"
                dbcmb_fcount.Text = Rs(0)
                Rs.MoveLast
                dbcmb_tcount.Text = Rs(0)
            End If

        End If
        If Repindex = 1200 Then
             SSTab1.Height = 2750
            Frame1.Height = 2600
            LblRecType.Visible = True
            CmbRecType.Visible = True
            CmbRecType.Top = CmbRecType.Top - 700
            LblRecType.Top = CmbRecType.Top
            Call IssLoad(CmbRecType)
            
            CmbRecType.Clear
            Set rsa = New Recordset
            rsa.Open "   select distinct lotno from RM_ISSB where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and DIVCODE='" & Divcode & "' order by lotno", cn, adOpenStatic, adLockBatchOptimistic
            Do While rsa.EOF = False
                CmbRecType.AddItem rsa(0)
            rsa.MoveNext
            Loop
            If Not rsa.EOF Then
             CmbRecType.ListIndex = 0
            End If
            
            
             cmblottype.Clear
            Set rsa = New Recordset
            rsa.Open "   select distinct lotno from RM_ISSB where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and DIVCODE='" & Divcode & "' order by lotno", cn, adOpenStatic, adLockBatchOptimistic
            Do While rsa.EOF = False
                cmblottype.AddItem rsa(0)
            rsa.MoveNext
            Loop
            If Not rsa.EOF Then
            cmblottype.ListIndex = 0
            End If

            Label4.Caption = "Lotwise Report"
            lbllottype.Visible = True
            cmblottype.Visible = True
            lbllottype.Top = LblRecType.Top + 500
            cmblottype.Top = CmbRecType.Top + 500
'            cmblottype.AddItem "A   - Own Process"
'            cmblottype.AddItem "T   - Job Work"
'            cmblottype.AddItem "ALL   - All"
            
            
            If UCase(CustID) = "ASM" Then
            Combo3.Visible = True
            Label7.Visible = True
            Label7.Caption = "Mix No"
            Label7.Top = lbllottype.Top + 500
            SSTab1.Height = 3200
            Frame1.Height = 3050
            Combo3.Visible = True
            Combo3.Top = cmblottype.Top + 500
            Combo3.Width = 3135
            Combo3.Top = 2580
            Combo3.Left = 1500
            Set rsa = New Recordset
            rsa.Open "select isnull(mixgrp,'') ""mixno"" from RM_issH ", cn
            If rsa.RecordCount <> 0 Then
'            DataCombo5.ListField = "mixno"
'                Set DataCombo7.DataSource = rsa
'                 DataCombo7.DataField = "mixno"
                If Not rsa.EOF Then
                rsa.MoveFirst
                Do While Not rsa.EOF
                 Combo3.AddItem rsa(0)
                 rsa.MoveNext
                Loop
                  Combo3.Text = "ALL   - All"
                End If
            End If
            End If
             
            Combo3.Visible = False
             Label7.Visible = False
        
          LblRecType.Caption = "From LotNo"
          lbllottype.Caption = " To LotNo"
          cmdReport.Visible = False
          cmdcry.Visible = True
           cmdcry.Left = 2500
        End If
        
'MsgBox DataCombo1.Height
'MsgBox DTPicker1.Height
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form rmireports", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub r_Click()

End Sub

Private Sub Label12_Click()

End Sub

Public Sub openconnection()
    On Error GoTo erm
       
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    
    Set cn = New Connection
    cn.CursorLocation = adUseClient
    
    If cn.State = 1 Then
      cn.Close
    End If

    cn.ConnectionString = "provider=msdatashape;" & connectstring
   
    If cn.State = adStateclose Then
        cn.Open
    End If
    
    Error = 0

erm:
       If Err.Number = -2147467259 Then
            MsgBox "Not a valid Database or valid SQL Server"
            Error = 200
    ElseIf Err.Number = -2147217843 Then
        MsgBox "Not a valid User ID or Incorrect Password"
        Error = Err.Number
    End If
End Sub


Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate

If DTPicker1.value < yfdate Then
MsgBox "Date Should be within the Range", vbInformation, head
    DTPicker1.value = yfdate
    DataCombo1.Text = DTPicker1.value
Else
    DataCombo1.Text = DTPicker1.value
End If
 If CDate(date2) < CDate(date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
If Repindex = 70 Then
    Call load_IssueChkListbox
End If
If Repindex = 61 Then
    Set rsg = New Recordset
    rsg.Open "select distinct a.varcode+ ' - '+varname as variety,a.varcode from rm_issb a,rm_var b where a.varcode=b.varcode order by a.varcode", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsg
        Set DataCombo4.RowSource = rsg
        DataCombo3.ListField = "variety"
        DataCombo4.ListField = "variety"
        rsg.MoveFirst
        DataCombo3.Text = rsg("variety")
        rsg.MoveLast
        DataCombo4.Text = rsg("variety")
    Else
        Set DataCombo3.RowSource = Nothing
        Set DataCombo4.RowSource = Nothing
        DataCombo3.Text = ""
        DataCombo4.Text = ""
    End If
End If
If Repindex = 112 Then
    Set rsg = New Recordset
    rsg.Open "select distinct 'All -  A' as iss from rm_issuetype union select issue_desc +'-'+issue_code""iss"" from rm_issuetype where isstype='T'", DB, adOpenStatic
        
    If rsg.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsg
        DataCombo3.ListField = "iss"
        rsg.MoveFirst
        DataCombo3.Text = rsg(0)
    End If
    
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

DTPicker2.MinDate = yfdate
DTPicker2.maxdate = pdate

If DTPicker2.value < yfdate Then
MsgBox "Date Should be within the Range", vbInformation, head
    DTPicker2.value = yfdate
    DataCombo2.Text = DTPicker2.value
Else
    DataCombo2.Text = DTPicker2.value
End If
If Repindex = 70 Then
    Call load_IssueChkListbox
End If
If Repindex = 61 Then
    Set rsg1 = New Recordset
    rsg1.Open "select distinct a.varcode+ ' - '+varname as varcode  from rm_issb a,rm_var b where a.varcode=b.varcode and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by 1", DB, adOpenStatic
    If rsg1.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsg1
        Set DataCombo4.RowSource = rsg1
        DataCombo3.ListField = "varcode"
        DataCombo4.ListField = "varcode"
        rsg1.MoveFirst
        DataCombo3.Text = rsg1(0)
        rsg1.MoveLast
        DataCombo4.Text = rsg1(0)
    Else
        Set DataCombo3.RowSource = Nothing
        Set DataCombo4.RowSource = Nothing
        DataCombo3.Text = ""
        DataCombo4.Text = ""
    End If
End If
If Repindex = 112 Then
    Set rsg = New Recordset
    rsg.Open "select distinct 'All -  A' as iss from rm_issuetype union select issue_desc +'-'+issue_code""iss"" from rm_issuetype where isstype='T'", DB, adOpenStatic
        
    If rsg.RecordCount > 0 Then
        Set DataCombo3.RowSource = rsg
        DataCombo3.ListField = "iss"
        rsg.MoveFirst
        DataCombo3.Text = rsg(0)
    End If
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub



'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub



Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command1.Visible = True
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form rmireports", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub IssuelistMixwise_Excel()

On Error GoTo LotwiseStockExcel_Error

Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
     
      
        CL_Cat = ""
    
    Issue_List = ""
    For I = 1 To List_IssueType.ListItems.Count
        If List_IssueType.ListItems.Item(I).Checked = True Then
         CL_Cat = "Y"
              '  sRecCount = Trim(List_Godown.ListItems(i).SubItems(1))
         GoTo GLCAT
        End If
    Next
GLCAT:
    If CL_Cat = "" Then
        MsgBox "Please Select Any Type ", vbInformation, head
        Exit Sub
    End If
    
    Issue_List = ""
           For I = 1 To List_IssueType.ListItems.Count
        
                If List_IssueType.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_IssueType.ListItems(I).SubItems(1))
                    If Issue_List <> "" Then
                     '   L_God = L_God + "," + "'" + Trim(sRecCount) + "'"
                         Issue_List = Issue_List + "," + "" + Trim(sRecCount) + ""
                    Else
                       ' L_God = "'" + Trim(sRecCount) + "'"
                        Issue_List = "" + Trim(sRecCount) + ""
                    End If
                End If
            Next
    
    

     
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "L1").MergeCells = True
         oSheet.Range("A1", "L1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "L2").MergeCells = True
         oSheet.Range("A2", "L2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        oSheet.Name = "Stock Statement lotwise"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")


    Dim issuetype As String, lottype As String


    U = Format(DTPicker1.value, "yyyy-mm-dd"):     v = Format(DTPicker2.value, "yyyy-mm-dd")
   
      
        oSheet.Cells(3, 5).value = "Mixing No wise Issue List Form " & Format(DTPicker1.value, "dd-mm-yyyy") & " to " & Format(DTPicker2.value, "dd-mm-yyyy")
        oSheet.Range("A3", "L3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "L3").MergeCells = True
        With oSheet.Range("A3", "L3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssMix' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            oSheet.Cells(4, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "L" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                  With oSheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset





    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
   DB.Execute "delete from EXIssueListMixwise"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
       DB.Execute " insert into EXIssueListMixwise exec ksp_mixnumber_wisenew '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & Trim(Format(yfdate, "yyyy")) & "' ,'" & Issue_List & "'"


       Rs.Open "SELECT *FROM VW_RM_IssuelistMixWise ORDER BY cntcode, sno  ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            oSheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "L" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "L" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With

                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "L" & m_ROW
               
                

        
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                            m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "L" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
                
             '''''''-----------------------------    Abstract------------------------
'            For i = 6 To M_ROW
'                If InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Grand Tot")) > 0 Then
'
'                            osheet.Cells(i, 1) = ""
'                            osheet.Cells(i, 2) = ""
'                            osheet.Cells(i, 3) = ""
'
'                            lr = "A" & i
'                            HR = "S" & i
'                            With osheet.Range(lr, HR).Font
'                                .Bold = True
'                                .Size = 10
'                                .Color = &H80&
'                              '  .Interior.Color = &HE0E0E0
'                            End With
'                            With osheet.Range(lr, HR).Interior
'
'                                .Color = &HC0E0FF
'
'                            End With
'                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'
'                 End If
'
'
'            Next i
'

        

         m_ROW = m_ROW + 5
        oSheet.Cells(m_ROW, 5).value = "Abstract"
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).MergeCells = True
        With oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssMixABS' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 2
        m_ROW = m_ROW + 1
        TotCol = 0
        Do While Not Rst.EOF
            oSheet.Cells(m_ROW, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "K" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit
                With oSheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With

        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "SELECT *FROM VW_RM_IssuelistMixWiseABS ORDER BY cntcode, catname  ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 2
            
            oSheet.Cells(m_ROW + 2, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "K" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "K" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "K" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                                 m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "K" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                

                For I = 6 To m_ROW
                If InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Mixing Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Grand Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 5))), UCase("Grand Total")) > 0 Then
                      If InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Grand Total")) > 0 Then
                            oSheet.Cells(I, 1) = ""
                            oSheet.Cells(I, 2) = ""
                            oSheet.Cells(I, 3) = "Grand Total"
                             lr = "A" & I
                            HR = "K" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            
                      
                      Else
                            oSheet.Cells(I, 1) = ""
                            oSheet.Cells(I, 2) = ""
                            oSheet.Cells(I, 4) = ""
                             oSheet.Cells(I, 5) = ""
                       oSheet.Cells(I, 6) = ""
                            lr = "A" & I
                            HR = "L" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
                    End If
                 End If
      
             
            Next I


             MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set oSheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
LotwiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub





Private Sub TransferReceipt_Excel()

On Error GoTo LotwiseStockExcel_Error

Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "O1").MergeCells = True
         oSheet.Range("A1", "O1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "O2").MergeCells = True
         oSheet.Range("A2", "O2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        oSheet.Name = "Stock Statement lotwise"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")


    Dim issuetype As String, lottype As String


    U = Format(DTPicker1.value, "yyyy-mm-dd"):     v = Format(DTPicker2.value, "yyyy-mm-dd")
   
      
        oSheet.Cells(3, 5).value = "Transfer Receipt List Form " & Format(DTPicker1.value, "dd-mm-yyyy") & " to " & Format(DTPicker2.value, "dd-mm-yyyy")
        oSheet.Range("A3", "O3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "O3").MergeCells = True
        With oSheet.Range("A3", "L3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='TRNREC' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not Rst.EOF
            oSheet.Cells(4, I).value = Rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        Rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "O" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                  With oSheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset



    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'   DB.Execute "delete from EXIssueListMixwise"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into EXIssueListMixwise exec ksp_mixnumber_wisenew '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & Trim(Format(yfdate, "yyyy")) & "' "


       Rs.Open "select * from VW_RM_TransferReceipt order by ISSUE_DESC,Supplier,lotno   ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 1
            
            oSheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "O" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "O" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With

                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "O" & m_ROW
                oSheet.Rows.AutoFit
               
                oSheet.Columns.AutoFit

        
                
                With oSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
                
                      '   Max = Max + 1
                            m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "O" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
'              Exit Sub
'             '''''''-----------------------------    Abstract------------------------
''            For i = 6 To M_ROW
''                If InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Grand Tot")) > 0 Then
''
''                            osheet.Cells(i, 1) = ""
''                            osheet.Cells(i, 2) = ""
''                            osheet.Cells(i, 3) = ""
''
''                            lr = "A" & i
''                            HR = "S" & i
''                            With osheet.Range(lr, HR).Font
''                                .Bold = True
''                                .Size = 10
''                                .Color = &H80&
''                              '  .Interior.Color = &HE0E0E0
''                            End With
''                            With osheet.Range(lr, HR).Interior
''
''                                .Color = &HC0E0FF
''
''                            End With
''                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
''
''                 End If
''
''
''            Next i
''
'
'
'
'         M_ROW = M_ROW + 5
'        osheet.Cells(M_ROW, 5).value = "Abstract"
'        osheet.Range("A" + CStr(M_ROW), "K" + CStr(M_ROW)).HorizontalAlignment = Excel.xlCenter
'        osheet.Range("A" + CStr(M_ROW), "K" + CStr(M_ROW)).MergeCells = True
'        With osheet.Range("A" + CStr(M_ROW), "K" + CStr(M_ROW)).Font
'        .Bold = True
'        .Size = 14
'        .Color = vbBlue
'        End With
'
'
'
'
'
'        Set rst = New Recordset
'
'        rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssMixABS' order by sno ", DB, adOpenStatic
'        M_ROW = M_ROW + 1
'        i = 2
'        M_ROW = M_ROW + 1
'        TotCol = 0
'        Do While Not rst.EOF
'            osheet.Cells(M_ROW, i).value = rst(0)
'           ' oSheet.Cells(6, i).CopyFromRecordset Rst
'
'            TotCol = TotCol + 1
'            i = i + 1
'        rst.MoveNext
'        Loop
'
'                M_ROW = osheet.UsedRange.Rows.Count
'                lr = "A" & M_ROW
'                HR = "K" & M_ROW
'                With osheet.Range(lr, HR).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
'                osheet.Range(lr, HR).Columns.AutoFit
'                osheet.Range(lr, HR).Rows.AutoFit
'                With osheet.Range(lr, HR).Interior
'
'                     .Color = &HE0E0E0
'
'                 End With
'
'        Set RsDiv = New Recordset
'
'
'
'
''    DB.CommandTimeout = 1000
''    DB.Execute " set arithabort on "
''
''    DB.Execute "delete from RPTArrivalDetails"
'''
'''
'''    DB.Execute " set arithabort off "
''
'    Set Rs = New Recordset
''
''       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
''       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
''
''
'       Rs.Open "SELECT *FROM VW_RM_IssuelistMixWiseABS ORDER BY cntcode, catname  ", DB
'        If Rs.EOF Then
'            MsgBox "No Record Found", vbInformation, head
'            Exit Sub
'        End If
'
'
'
'
'            co = 7
'            i1 = 2
'
'            osheet.Cells(M_ROW + 2, i1).CopyFromRecordset Rs
'
'
'
'
'                m = osheet.UsedRange.Rows.Count
'                Max = m + 1
'
'                osheet.Columns.AutoFit
'                osheet.Rows.AutoFit
'
'
'
'                M_ROW = osheet.UsedRange.Rows.Count + 1
'                MR = "K" & M_ROW
'
'
'                            M_ROW = osheet.UsedRange.Rows.Count + 1
'                            lr = "A" & M_ROW
'                            HR = "K" & M_ROW
'                            With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 9
'                            .Color = vbBlue
'                        End With
''                      SheetName = ActiveSheet.name
''                        MsgBox (SheetName)
''                        Dim r As Range
''                        Set r = oSheet.Cells.find("Designation")
''                        MsgBox (r.Address)
''                        Dim a1() As String
''                        a1 = Split(r.Address, "$")
''                        MsgBox (a1(1))
''                        MsgBox (a1(2))
'
''
''                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
''                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
''                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
'
'                M_ROW = osheet.UsedRange.Rows.Count
'                ''
'
'                lr = "A" & 1
'                HR = "K" & M_ROW
'
'
'
''                For Each cell In Range("b2:b6")
''                    If InStr(cell.value, "Sub Total") > 0 Then
''                        cell.Offset(0, 1).value = ""
''                    End If
''                Next cell
'
'
'                With osheet.Range(lr, HR)
'                .Borders.LineStyle = xlThin
'
'                With .Borders(xlInsideHorizontal)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlInsideVertical)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlEdgeTop)
'                .Weight = xlThin
'                End With
'
'                With .Borders(xlEdgeBottom)
'                .Weight = xlThin
'                End With
'                End With
'
'
'                      '   Max = Max + 1
'                                 M_ROW = osheet.UsedRange.Rows.Count
'                            lr = "A" & M_ROW - 1
'                            HR = "K" & M_ROW - 1
'                            With osheet.Range(lr, HR).Font
'                            .Bold = True
'                            .Size = 9
'                            .Color = vbBlue
'                        End With
'

                For I = 6 To m_ROW
                If InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Supplier Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Then
                      If InStr(UCase(Trim(oSheet.Cells(I, 2))), UCase("Grand Total")) > 0 Then
                            oSheet.Cells(I, 1) = ""
                             oSheet.Cells(I, 4) = ""
                            oSheet.Cells(I, 2) = "Grand Total"
                            oSheet.Cells(I, 5) = ""
                             lr = "A" & I
                            HR = "N" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            
                      
                      Else
                            oSheet.Cells(I, 1) = ""
'                            osheet.Cells(i, 2) = ""
                            oSheet.Cells(I, 4) = ""
                             oSheet.Cells(I, 5) = ""
                       oSheet.Cells(I, 6) = ""
                            lr = "A" & I
                            HR = "N" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
                    End If
                 End If
      
             
            Next I


             MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set oSheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
LotwiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub





Private Sub load_IssueChkListbox()
On Error GoTo DataCombo1_Change_Error
    Dim li As ListItem
    Set temprs = New Recordset
    If UCase(CustID) = "JTCL" Then
    temprs.Open " Select Distinct Issue_Code  type, Issue_Desc as description from rm_issuetype a  inner join rm_issh b on a.Issue_Code=b.isstype and b.divcode='" & Divcode & "' inner join RM_COUNT AS d on   b.divcode=d.divcode AND b.cntcd = d.cntcd  where  b.docdt between '" & Format(DTPicker1.value, "yyyy-MM-dd") & "' and '" & Format(DTPicker2.value, "yyyy-MM-dd") & "'  Order by Type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
    Else
    temprs.Open " Select Distinct Issue_Code  type, Issue_Desc as description from rm_issuetype a  inner join rm_issh b on a.Issue_Code=b.isstype and b.divcode='" & Divcode & "'   where  b.docdt between '" & Format(DTPicker1.value, "yyyy-MM-dd") & "' and '" & Format(DTPicker2.value, "yyyy-MM-dd") & "'  Order by Type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
    End If
    List_IssueType.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_IssueType.ListItems.ADD(, , temprs!Description)
            List_IssueType.ListItems(List_IssueType.ListItems.Count).ListSubItems.ADD , , temprs!Type
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    Check2.value = 1
    Call Check2_Click
    intervalMinutes = -1
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub
Private Sub Check2_Click()
    bol = True

If Check2.value = 1 Then
        For I = 1 To List_IssueType.ListItems.Count
          List_IssueType.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_IssueType.ListItems.Count '- 1
             List_IssueType.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
  
End Sub




Private Sub load_CategoryChkListbox()
On Error GoTo Category_Change_Error
    Dim li As ListItem
    Set temprs = New Recordset
    temprs.Open " select distinct catcd type,catname as description  from RM_CAT  Order by Type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
   
    ListCat.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = ListCat.ListItems.ADD(, , temprs!Description)
            ListCat.ListItems(ListCat.ListItems.Count).ListSubItems.ADD , , temprs!Type
            temprs.MoveNext
        Loop
    End If
    temprs.Close
    chkcat.value = 1
    Call chkcat_Click
    intervalMinutes = -1
 Exit Sub
Category_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub
