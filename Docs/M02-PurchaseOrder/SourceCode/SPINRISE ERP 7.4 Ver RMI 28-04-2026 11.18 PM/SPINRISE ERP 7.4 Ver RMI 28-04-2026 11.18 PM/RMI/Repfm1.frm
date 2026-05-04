VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form repform1 
   ClientHeight    =   6795
   ClientLeft      =   780
   ClientTop       =   3555
   ClientWidth     =   10665
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.Frame Framediv 
      BorderStyle     =   0  'None
      Height          =   3615
      Left            =   8400
      TabIndex        =   66
      Top             =   2040
      Visible         =   0   'False
      Width           =   7815
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         Height          =   405
         Left            =   1080
         TabIndex        =   68
         Top             =   360
         Width           =   6555
      End
      Begin VB.CheckBox Check4 
         Caption         =   "All"
         Height          =   195
         Left            =   360
         TabIndex        =   67
         Top             =   1560
         Width           =   525
      End
      Begin MSComctlLib.ListView List_div 
         Height          =   2565
         Left            =   1080
         TabIndex        =   69
         Top             =   840
         Width           =   6555
         _ExtentX        =   11562
         _ExtentY        =   4524
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
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Division Name"
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Division Code"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Abbreviation"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Division"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   120
         TabIndex        =   70
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.CommandButton Command9 
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
      Height          =   375
      Left            =   7920
      TabIndex        =   65
      Top             =   5640
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.CommandButton Command8 
      Caption         =   "C&ustomized"
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
      Left            =   6720
      TabIndex        =   64
      Top             =   5520
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.Frame Frame3 
      Height          =   615
      Left            =   1800
      TabIndex        =   60
      Top             =   6480
      Visible         =   0   'False
      Width           =   5820
      Begin VB.OptionButton Optabs 
         Caption         =   "Abstract"
         Height          =   390
         Left            =   4680
         TabIndex        =   71
         Top             =   120
         Visible         =   0   'False
         Width           =   975
      End
      Begin VB.OptionButton Option9 
         Caption         =   "Variety wise"
         Height          =   375
         Left            =   120
         TabIndex        =   63
         Top             =   120
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Option11 
         Caption         =   "Agent wise"
         Height          =   375
         Left            =   3360
         TabIndex        =   62
         Top             =   120
         Width           =   1215
      End
      Begin VB.OptionButton Option10 
         Caption         =   "Supplier wise"
         Height          =   375
         Left            =   1680
         TabIndex        =   61
         Top             =   120
         Width           =   1335
      End
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Customized"
      Height          =   495
      Left            =   480
      TabIndex        =   59
      Top             =   4200
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton Command7 
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
      Height          =   375
      Left            =   6720
      TabIndex        =   56
      Top             =   4560
      Visible         =   0   'False
      Width           =   990
   End
   Begin VB.CommandButton Command6 
      Caption         =   "OK"
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
      Left            =   9120
      TabIndex        =   55
      Top             =   5640
      Visible         =   0   'False
      Width           =   1035
   End
   Begin VB.Frame frmpurchase 
      Height          =   645
      Left            =   2115
      TabIndex        =   51
      Top             =   5715
      Width           =   5505
      Begin VB.OptionButton Option8 
         Caption         =   "Bill Date"
         Height          =   390
         Left            =   3525
         TabIndex        =   54
         Top             =   180
         Width           =   1215
      End
      Begin VB.OptionButton Option7 
         Caption         =   "Arrival Date"
         Height          =   345
         Left            =   1560
         TabIndex        =   53
         Top             =   180
         Width           =   1620
      End
      Begin VB.OptionButton Option6 
         Caption         =   "Lotdatewise"
         Height          =   390
         Left            =   120
         TabIndex        =   52
         Top             =   180
         Value           =   -1  'True
         Width           =   1215
      End
   End
   Begin VB.Frame FraPOreg 
      Height          =   645
      Left            =   2475
      TabIndex        =   45
      Top             =   3930
      Visible         =   0   'False
      Width           =   4650
      Begin VB.OptionButton Option3 
         Caption         =   "Date wise"
         Height          =   390
         Left            =   90
         TabIndex        =   48
         Top             =   120
         Value           =   -1  'True
         Width           =   1215
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Supplier wise"
         Height          =   345
         Left            =   1500
         TabIndex        =   47
         Top             =   165
         Width           =   1380
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Agent wise"
         Height          =   390
         Left            =   3255
         TabIndex        =   46
         Top             =   135
         Width           =   1215
      End
   End
   Begin RMI.usrProgBarCntl usrProgBarCntl1 
      Height          =   525
      Left            =   10725
      TabIndex        =   44
      Top             =   120
      Width           =   4455
      _ExtentX        =   7858
      _ExtentY        =   926
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4425
      Left            =   7725
      TabIndex        =   43
      Top             =   1140
      Visible         =   0   'False
      Width           =   4035
      _ExtentX        =   7117
      _ExtentY        =   7805
   End
   Begin VB.CommandButton Command5 
      Caption         =   "&Stock with Ageing -Crystal Report"
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
      Left            =   1725
      TabIndex        =   42
      Top             =   4515
      Visible         =   0   'False
      Width           =   1710
   End
   Begin VB.ComboBox Combo3 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   3630
      TabIndex        =   41
      Top             =   3480
      Visible         =   0   'False
      Width           =   3315
   End
   Begin Crystal.CrystalReport crr 
      Left            =   600
      Top             =   1515
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command4 
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
      Height          =   375
      Left            =   5490
      TabIndex        =   35
      Top             =   4545
      Visible         =   0   'False
      Width           =   1030
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1785
      TabIndex        =   30
      Top             =   5055
      Visible         =   0   'False
      Width           =   5820
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   32
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   31
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
         TabIndex        =   33
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Abstract"
      Height          =   270
      Left            =   5850
      TabIndex        =   21
      Top             =   2340
      Visible         =   0   'False
      Width           =   1605
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3210
      Left            =   1800
      TabIndex        =   0
      Top             =   1155
      Width           =   5895
      _ExtentX        =   10398
      _ExtentY        =   5662
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "Repfm1.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "repform1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame repform1 
         Height          =   3030
         Left            =   165
         TabIndex        =   1
         Top             =   60
         Width           =   5655
         Begin VB.CheckBox Check2 
            Caption         =   "All"
            Height          =   195
            Left            =   840
            TabIndex        =   57
            Top             =   2760
            Visible         =   0   'False
            Width           =   525
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   345
            Left            =   1680
            TabIndex        =   17
            Top             =   750
            Visible         =   0   'False
            Width           =   1875
            _ExtentX        =   3307
            _ExtentY        =   609
            _Version        =   393216
            Format          =   153550849
            CurrentDate     =   37820
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
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   28
            Top             =   2400
            Width           =   3375
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            Height          =   345
            Left            =   1680
            TabIndex        =   18
            Top             =   1200
            Visible         =   0   'False
            Width           =   1860
            _ExtentX        =   3281
            _ExtentY        =   609
            _Version        =   393216
            Format          =   153550849
            CurrentDate     =   37820
         End
         Begin VB.CheckBox ChkUsr 
            Caption         =   "Modify User Name"
            Height          =   270
            Left            =   3780
            TabIndex        =   16
            Top             =   1710
            Visible         =   0   'False
            Width           =   1605
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   360
            Left            =   1695
            TabIndex        =   3
            Top             =   720
            Width           =   2070
            _ExtentX        =   3651
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1710
            TabIndex        =   10
            Top             =   600
            Visible         =   0   'False
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   609
            _Version        =   393216
            Format          =   153485313
            CurrentDate     =   37578
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
            ForeColor       =   &H8000000D&
            Height          =   345
            Left            =   1680
            Style           =   2  'Dropdown List
            TabIndex        =   9
            Top             =   2160
            Visible         =   0   'False
            Width           =   3375
         End
         Begin MSDataListLib.DataCombo DataCombo3 
            Height          =   360
            Left            =   1680
            TabIndex        =   5
            Top             =   1230
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   360
            Left            =   1680
            TabIndex        =   2
            Top             =   1680
            Width           =   3375
            _ExtentX        =   5953
            _ExtentY        =   635
            _Version        =   393216
            ForeColor       =   -2147483646
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
            ForeColor       =   &H00800000&
            Height          =   345
            Left            =   1680
            TabIndex        =   11
            Top             =   1560
            Visible         =   0   'False
            Width           =   3345
         End
         Begin MSDataListLib.DataCombo DCmbFLtN 
            Height          =   360
            Left            =   1680
            TabIndex        =   12
            Top             =   1905
            Visible         =   0   'False
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
         Begin MSDataListLib.DataCombo DCmbTLtN 
            Height          =   360
            Left            =   1680
            TabIndex        =   13
            Top             =   2265
            Visible         =   0   'False
            Width           =   2055
            _ExtentX        =   3625
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
         Begin MSDataListLib.DataCombo DataCombo4 
            Height          =   360
            Left            =   1680
            TabIndex        =   19
            Top             =   735
            Visible         =   0   'False
            Width           =   3330
            _ExtentX        =   5874
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
            Left            =   1680
            TabIndex        =   24
            Top             =   2610
            Visible         =   0   'False
            Width           =   1650
            _ExtentX        =   2910
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
            Left            =   3795
            TabIndex        =   26
            Top             =   2715
            Visible         =   0   'False
            Width           =   1680
            _ExtentX        =   2963
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
         Begin MSDataListLib.DataCombo dbcmb_fsup 
            Height          =   360
            Left            =   1680
            TabIndex        =   36
            Top             =   2160
            Visible         =   0   'False
            Width           =   3885
            _ExtentX        =   6853
            _ExtentY        =   635
            _Version        =   393216
            Text            =   ""
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo dbcmb_tsup 
            Height          =   360
            Left            =   1680
            TabIndex        =   38
            Top             =   2640
            Visible         =   0   'False
            Width           =   3885
            _ExtentX        =   6853
            _ExtentY        =   635
            _Version        =   393216
            Text            =   " "
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin MSDataListLib.DataCombo DataCombo7 
            Height          =   360
            Left            =   1680
            TabIndex        =   49
            Top             =   480
            Visible         =   0   'False
            Width           =   2415
            _ExtentX        =   4260
            _ExtentY        =   635
            _Version        =   393216
            MatchEntry      =   -1  'True
            ForeColor       =   -2147483646
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
            Height          =   1605
            Left            =   1440
            TabIndex        =   58
            Top             =   2520
            Visible         =   0   'False
            Width           =   3435
            _ExtentX        =   6059
            _ExtentY        =   2831
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
               Text            =   "Description"
               Object.Width           =   7938
            EndProperty
            BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
               SubItemIndex    =   1
               Text            =   "Invoice Type"
               Object.Width           =   1411
            EndProperty
         End
         Begin VB.Label Label9 
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
            Left            =   240
            TabIndex        =   50
            Top             =   480
            Visible         =   0   'False
            Width           =   765
         End
         Begin VB.Label lbl_fsup 
            AutoSize        =   -1  'True
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
            Height          =   195
            Left            =   255
            TabIndex        =   40
            Top             =   2205
            Visible         =   0   'False
            Width           =   1170
         End
         Begin VB.Label lbl_tsup 
            AutoSize        =   -1  'True
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
            Height          =   405
            Left            =   255
            TabIndex        =   39
            Top             =   2580
            Visible         =   0   'False
            Width           =   990
         End
         Begin VB.Label Label1 
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
            Left            =   255
            TabIndex        =   37
            Top             =   1800
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
            Left            =   255
            TabIndex        =   29
            Top             =   2400
            Visible         =   0   'False
            Width           =   435
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "To"
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
            Left            =   3405
            TabIndex        =   27
            Top             =   2730
            Visible         =   0   'False
            Width           =   240
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Godown From "
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
            Left            =   255
            TabIndex        =   25
            Top             =   2850
            Visible         =   0   'False
            Width           =   1290
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
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
            Left            =   255
            TabIndex        =   20
            Top             =   645
            Visible         =   0   'False
            Width           =   705
         End
         Begin VB.Label LblFLTN 
            Caption         =   "From Lot No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   270
            TabIndex        =   15
            Top             =   1860
            Visible         =   0   'False
            Width           =   1170
         End
         Begin VB.Label LblTLtN 
            Caption         =   "To Lot No."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   255
            TabIndex        =   14
            Top             =   2325
            Visible         =   0   'False
            Width           =   1230
         End
         Begin VB.Label Label4 
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
            Height          =   435
            Left            =   240
            TabIndex        =   8
            Top             =   2040
            Visible         =   0   'False
            Width           =   435
         End
         Begin VB.Label Label5 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
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
            Left            =   0
            TabIndex        =   7
            Top             =   120
            Width           =   5565
         End
         Begin VB.Label Label3 
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
            Left            =   255
            TabIndex        =   6
            Top             =   1320
            Width           =   705
         End
         Begin VB.Label Label2 
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
            Left            =   255
            TabIndex        =   4
            Top             =   840
            Width           =   885
         End
      End
   End
   Begin VB.CommandButton Command2 
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
      Height          =   375
      Left            =   4420
      TabIndex        =   23
      Top             =   4545
      Width           =   990
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Report"
      Default         =   -1  'True
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
      Left            =   3480
      TabIndex        =   34
      Top             =   4560
      Visible         =   0   'False
      Width           =   915
   End
   Begin VB.CommandButton Command1 
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
      Height          =   375
      Left            =   3465
      TabIndex        =   22
      Top             =   4545
      Width           =   915
   End
End
Attribute VB_Name = "repform1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 '---------------------------------------------------------------------------------------
' Module    : repform1
' DateTime  : 28/11/2008 19:48
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------

Dim pogrp As String
Dim date1 As String, date2 As String, code As String

Dim bolCrystal As Boolean
Dim cnt As Integer
Dim TOTVAL As Double
Dim Namers As Recordset
Dim a As String, B As String
Dim c As String, d As String, e As String
Dim I As Long, j As Long, K As Long
Dim PROJNO As Long, PORDNO As Long, porddt As String
Dim Rs As New Recordset, rs1 As New Recordset, RS2 As New Recordset, rs3 As New Recordset, rs4 As New Recordset, rs5 As New Recordset, rs6 As New Recordset
Public rec As Recordset
Dim rsscy As Recordset
Dim rsscy1 As Recordset
Dim PlotNo As String
Dim LB() As RptLabel, LB2 As RptLabel, LB3 As RptLabel, LB4 As RptLabel, LB5 As RptLabel, LB6 As RptLabel, LB7 As RptLabel, LB8 As RptLabel, LB9 As RptLabel, LB10 As RptLabel, LB11 As RptLabel, LB12 As RptLabel
Dim REP As Report.ReportView
Dim f As Integer
Dim pg As Integer
Dim date111 As Date
Dim gmix, gtmix As Double
Dim qry, DT As String
Dim tmpflg As Boolean

Private Sub form_Load_Temp()
    Label4.Visible = True
    Combo1.Visible = True
    List_IssueType.Visible = True
    Check2.Visible = True
    
    Command3.Visible = True
    Command3.Top = Command1.Top
    Command4.Top = Command3.Top
    Command4.Left = Command1.Left
    Command3.Left = Command1.Left + 500
    
    repform1.Height = repform1.Height + 1000
    SSTab1.Height = SSTab1.Height + 1000
    FraPOreg.Visible = True
    FraPOreg.Top = FraPOreg.Top + 1500
    Option3.Caption = "Active"
    Option1.Caption = "Cancelled"
    Option2.Caption = "All"
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"
    
    
    Set rec = New Recordset
    rec.Open "select distinct purtype+ '-'+purdesc from rm_purtype", cn, adOpenStatic, adLockBatchOptimistic
    If rec.RecordCount > 0 Then
    rec.MoveFirst
    Do While Not rec.EOF
    
    Combo1.AddItem (rec(0))
    rec.MoveNext
    Loop
    Combo1.ListIndex = 0
    End If
    Label5.Caption = "Rawmaterial Sales Day Book"
    Me.Caption = "Rawmaterial Sales Day Book"
    
    Label1.Visible = False
    DataCombo1.Visible = False
    DTPicker1.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker1.tabIndex = 0
    DTPicker3.tabIndex = 1
    DataCombo1.tabIndex = 2
    Combo1.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5
    
    Call DataCombo2_GotFocus
    
    DTPicker1.Left = DataCombo2.Left
    DTPicker1.Width = DataCombo2.Width
    DTPicker1.Top = DataCombo2.Top

    DTPicker3.Left = DataCombo3.Left
    DTPicker3.Width = DataCombo3.Width
    DTPicker3.Top = DataCombo3.Top
    Label4.Visible = False
    LblRecType.Visible = False
    Combo1.Visible = False
    If (Me.WindowState = Normal) Then
        Me.Width = 10845
    End If
    CmbRecType.Visible = False
    lbl_fsup.Visible = True
    lbl_tsup.Visible = True
    dbcmb_fsup.Visible = True
    dbcmb_tsup.Visible = True
    
    
    Call suppliers
    
    Command4.Top = Command3.Top
    Command4.Left = Command1.Left - 40
    Command1.Left = Command4.Left - 1000
    SSTab1.Height = SSTab1.Height + 1000
    repform1.Height = repform1.Height + 1000
    Frame5.Visible = False
    LblRecType.Visible = True
    LblRecType.Height = List_IssueType.Height
    Command1.Visible = False
    
    Command7.Visible = True
    Command7.Left = 3300
    Command4.Left = 4290
    Command2.Left = 5280
Call load_IssueChkListbox
End Sub

Private Sub Check4_Click()
If Check4.value = 1 Then
        For I = 1 To List_div.ListItems.Count
          List_div.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_div.ListItems.Count '- 1
             List_div.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
End Sub

Private Sub Command2_LostFocus()
intervalMinutes = -1
On Error GoTo Command2_LostFocus_Error

Select Case Repindex
Case 522
DTPicker2.SetFocus
Case 2
DTPicker1.SetFocus
Case 999
DTPicker1.SetFocus
Case 19
DTPicker2.SetFocus
Case 3435
DataCombo2.SetFocus
Case 228, 7234
DTPicker2.SetFocus
Case 2228, 22228
DTPicker2.SetFocus
Case 34351
DTPicker1.SetFocus
Case 289
DTPicker2.SetFocus
Case 3
DataCombo2.SetFocus
Case 199
DTPicker1.SetFocus
Case 99
DTPicker2.SetFocus
Case 66
DTPicker2.SetFocus
Case 19111
DTPicker2.SetFocus
Case 191
DTPicker1.SetFocus
Case 1432
DTPicker1.SetFocus
Case 77, 7733, 7734
DTPicker1.SetFocus
Case 7777
DTPicker1.SetFocus
Case 77777
DTPicker1.SetFocus
Case 28, 40
DTPicker2.SetFocus
Case 32
DTPicker2.SetFocus
Case 30
DTPicker2.SetFocus
Case 303
DTPicker2.SetFocus
Case 105
DTPicker2.SetFocus
Case 79
DTPicker1.SetFocus
End Select
intervalMinutes = -1
Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_LostFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Dim l1, l2, LB1, LB2 As RptLabel
Dim LTNo As Integer
Dim ab As String
Dim tot, tot1, gtot, gtot1 As Double
Dim str1, a1, X As String
On Error GoTo Command1_Click_Error

X = Combo3.Text
'str1 = CmbRecType.Text

Screen.MousePointer = 11
Select Case Repindex
Case 10067 'Godown Capacity Report
      a = Format(DTPicker2.value, "yyyy-mm-dd")
      fg = Trim(Left(DCmbFLtN.Text, 3))
      TG = Trim(Left(DCmbTLtN.Text, 3))
       
        
      Call GodownCapacityReport(CStr(a), CStr(fg), CStr(TG))
       'DTPicker1.SetFocus
       intervalMinutes = -1
Case 3025
    Call GodwiseIssueRegister
Case 3024
    Call ArrivalRegisterGodownWiseRpt
Case 3004
    Call supplierStkreport
Case 3435
    If Len(DataCombo2.Text) > 0 And DataCombo2.MatchedWithList Then
        Call CottRecn4(DataCombo2.Text, Left(Combo1.Text, 2), X)
    Else
        MsgBox "Please Select the Correct Date", vbInformation, head
        DataCombo2.Text = ""
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        intervalMinutes = -1
        Exit Sub
    End If
Case 1432
    If DataCombo1.MatchedWithList Then
    Else
    MsgBox "Select the Valid Category", vbInformation, head
    Screen.MousePointer = 0
    DataCombo1.Text = ""
    DataCombo1.SetFocus
    Exit Sub
    End If
     DT = Format(DTPicker1.value, "yyyy-mm-dd"):    X = Trim(Mid$(DataCombo1.Text, 1, InStr(1, DataCombo1.Text, "-") - 1))
    Call StockRec_Consumption(DT, X, CmbRecType.Text)
    Screen.MousePointer = 0
Case 105
    DT = Format(DTPicker2.value, "yyyy-mm-dd"):  dt1 = Format(DTPicker3.value, "yyyy-mm-dd")
    If DataCombo1.MatchedWithList Then
    W = Trim(Left(DataCombo1.Text, 1))
    Else
     MsgBox "Select the valid Category", vbInformation, head
            DataCombo1.Text = ""
            DataCombo1.SetFocus
            Screen.MousePointer = 0
            Exit Sub
      End If
    X = Mid$(Combo1.Text, InStr(Combo1.Text, "--") + 3, (Len(Combo1.Text) - InStr(Combo1.Text, "--")))
    Call StkstmtPolyster(CStr(DT), CStr(dt1), CStr(W), CStr(X), CmbRecType, UserFooter1.SelectedStr)
Case 19222
    DataCombo2.Text = DTPicker2.value:    DataCombo3.Text = DTPicker3.value
    u1 = Format(DataCombo2.Text, "yyyy-mm-dd"):   v1 = Format(DataCombo3.Text, "yyyy-mm-dd") 'to
    Call IssueDateSlip(CStr(u1), CStr(u1))
Case 19111
    Dim vP_Str1 As String
    Dim ltype As String
    DataCombo2.Text = DTPicker2.value: DataCombo3.Text = DTPicker3.value
    u1 = Format(DataCombo2.Text, "yyyy-mm-dd"):     v1 = Format(DataCombo3.Text, "yyyy-mm-dd") 'to
    vP_Str1 = Trim(Mid(Combo1.Text, 1, 2))
    ltype = Trim(Mid(CmbRecType.Text, 1, 3))
    
    Call IssueDateReport(CStr(u1), CStr(v1), vP_Str1, ltype, UserFooter1.SelectedStr)
Case 200
   If DataCombo1.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
            str1 = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
            a1 = Format(DTPicker1.value, "yyyy-mm-dd")
            Call LotstockledgerReport(CStr(str1), CStr(a1), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), CmbRecType, UserFooter1.SelectedStr)
            Screen.MousePointer = 0
            Exit Sub
   End If
   Exit Sub
        If dv1.rsCommand1.State = adStateOpen Then dv1.rsCommand1.Close
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  LOTYEAR='" & Year(yfdate) & "' AND a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        intervalMinutes = -1
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If
Case 1
    Screen.MousePointer = 0
Case 888 'godownwise
   Dim Str As String
'   Dim a As String
   If DataCombo1.Text <> "" And DataCombo2.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            Str = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
            a = Format(DTPicker1.value, "yyyy-mm-dd")
            Call godstockReport(CStr(Str), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0))
            Screen.MousePointer = 0
            Exit Sub
   End If
Case 2 ' lotstockwise
Dim sdr As String
  sdr = Combo2.Text
    'Rs.Close
  Set RSS = New Recordset
  RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
      Do While Not RSS.EOF
        If sdr <> RSS(0) And sdr <> "ALL   -  ALL" Then
           RSS.MoveNext
        Else
             If Combo2.Text <> "" And DataCombo2.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
             If DCmbFLtN.MatchedWithList Then
            If DCmbTLtN.MatchedWithList Then
                 If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
                    Str = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
                    a = Format(DTPicker1.value, "yyyy-mm-dd")
                    If Repindex = 2 Then
                    Call LotstockReport(CStr(Str), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), UserFooter1.SelectedStr, CmbRecType.Text)
'                    Else
'                    Call LotstockReportTest(CStr(str), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), UserFooter1.SelectedStr, CmbRecType.Text)
                    End If
                    Screen.MousePointer = 0
                    Exit Sub
                 Else
                    MsgBox "Select the Correct To Lot No", vbInformation, head
                    DCmbTLtN.Text = ""
                    DCmbTLtN.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             Else
                MsgBox "Select the Correct From Lot No", vbInformation, head
                DCmbFLtN.Text = ""
                DCmbFLtN.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
         Else
            MsgBox "Select the Correct Category", vbInformation, head
            Combo2.Text = ""
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
         End If
            If dv1.rsCommand1.State = adStateOpen Then dv1.rsCommand1.Close
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  (a.refdt='N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If
        End If
       Loop
       MsgBox "Select the Correct Category", vbInformation, head
       Combo2.Text = ""
        Combo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
Case 303  'Varietywise Stock Chart
  DTPicker2.maxdate = pdate
         U = Format(DTPicker1.value, "dd/mm/yyyy"):        v = Format(DTPicker2.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic
    If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo VerietyStk1
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.SetFocus
     Exit Sub
VerietyStk1: If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietyStk
        Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietyStk: If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        StockVarierty.Show
        intervalMinutes = -1
        'Call stlstmtvar.StockVarietyReport1(CStr(u), CStr(v), CStr(w), CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Me.MousePointer = 0
        Exit Sub
        End If
        Screen.MousePointer = 0
        
Case 511
         a1 = Format(DTPicker2.value, "dd/mm/yyyy"):   A2 = Format(DTPicker3.value, "dd/mm/yyyy")
         If CDate(a1) > CDate(A2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(A2) < CDate(a1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
         str1 = Combo2.Text
         If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
            Call VarietystockledgerReport(CStr(a1), CStr(A2), CStr(str1), DCmbFLtN.Text, DCmbTLtN.Text)
         Else
            MsgBox "Please select the  Lot Nos", vbInformation, head
            Exit Sub
         End If
        Screen.MousePointer = 0
 Case 777
     Screen.MousePointer = 11
     Call ordcan(CStr(DataCombo2.Text), divname)
     Screen.MousePointer = 0
Case 522
    bolCrystal = False
    Call stkQryt
    Screen.MousePointer = 0
Case 3 'PENDING CONTRACTS
If DataCombo2.MatchedWithList Then
      a = Format(DataCombo2.Text, "yyyy-mm-dd"):     B = Format(DataCombo1.Text, "yyyy-mm-dd") 'to
      If Trim(DataCombo2.Text) <> Empty Then
         a1 = Right(Format(DataCombo2.Text, "yyyy-mm-dd"), 10):     b1 = Right(Format(DataCombo1.Text, "yyyy-mm-dd"), 10) 'to
      Call pendconReport(CStr(a), CStr(B), UserFooter1.SelectedStr)
     '  Call footermod(CInt(a), UserFooter1.SelectedStr, 85)
      Screen.MousePointer = 0
      Else
     MsgBox "Select the Correct From Date!", vbInformation, head
     DataCombo2.SetFocus
      End If
      Else
      MsgBox "Select the Correct From Date!", vbInformation, head
      DataCombo2.Text = ""
      DataCombo2.SetFocus
      Screen.MousePointer = 0
      Exit Sub
   End If
Case 199 'order cancellation report
      a = Format(DTPicker1.value, "yyyy-mm-dd"): B = Format(DTPicker3.value, "yyyy-mm-dd")
      U = Right(Format(DTPicker1.value, "yyyy-mm-dd"), 10): v = Right(Format(DTPicker3.value, "yyyy-mm-dd"), 10)
      If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
      Call ordercancellationReport(CStr(a), CStr(B), CStr(Left(Combo1.Text, 1)))
       'DTPicker1.SetFocus
       
Case 167
        U = Format(DTPicker2.value, "yyyy-mm-dd")
        Call Cottweight(CDate(U))
Case 18 'COST AUDIT REPORT
Set REP = New Report.ReportView
    pagein = 0:     cont = 0
    f = FreeFile
    date1 = Format(DTPicker2.value, "yyyy-mm-dd"): date2 = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(date1) > CDate(date2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(date2) < CDate(date1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    sno1 = 0:      cnt = 0
   ' Open "c:\castaudit.txt" For Output As #f
    Open KALFOLDERDATA & "\castaudit.TXT" For Output As #f
    Set RS2 = New Recordset
    RS2.Open "select C.CNTcd from rm_issb a,rm_lot b,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lotno = b.lotno and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd  and a.divcode = '" & Divcode & "' and a.docdt between '" & date1 & "' and '" & date2 & "' group by C.CNTcd ", cn, adOpenStatic, adLockBatchOptimistic
    If RS2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
        Screen.MousePointer = 0
        Close #f
        Exit Sub
    End If
    pg = 1
    Call prnhead(pg)
    cnt = 8
    RS2.MoveFirst
    For I = 1 To RS2.RecordCount
        Print #f, Space(6) & Padr(RS2(0), RS2(0).DefinedSize, " ")
        cnt = cnt + 1
        If cnt >= pagelen Then
                    pg = pg + 1
                    Print #f, Chr(12)
                    Print #f, Space(5) & String(80, "-")
                    cnt = 0
                    Call prnhead(pg)
                End If
            Set rs3 = New Recordset
            rs3.Open "select C.cntcd,z.varname as varcod,round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',c.docno,b.bales,Unit=(case bblflg when 'B' then 'Bales' else 'Borah' end)  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and C.cntcd = '" & RS2(0) & "' and a.docdt between '" & Format(date1, "YYYY/MM/DD") & "' and '" & Format(date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by C.cntcd,z.varname,b.ratecy,c.docno,b.bales,b.bblflg", cn, adOpenStatic
            If Not rs3.EOF Then
                rs3.MoveFirst
            End If
            For j = 1 To rs3.RecordCount
                Print #f, Space(10) & Padl(rs3("docno"), 12, " ") & Space(3) & Padr(rs3("varcod"), 10, " ") & Space(1) & Padl(INF(rs3("bales"), 0), 8, " ") & Space(3) & Padr(rs3("unit"), 5, " ") & Space(1) & Padl(Format(IIf(rs3(2) = 0, " ", rs3(2)), "###,###,##0.000"), 15, " ") & Space(1) & Padl(Format(IIf(rs3(3) = 0, " ", rs3(3)), "###,###,##0.00"), 16, " ")
                cnt = cnt + 1
                If cnt >= 60 Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
                End If
                tot = tot + rs3(2):   tot1 = tot1 + rs3(3): tot5 = tot5 + rs3("BALES")
                rs3.MoveNext
            Next j
            Set rs4 = New Recordset
            rs4.Open "select round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',SUM(b.bales) AS BALES  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "'  and c.cntcd = '" & RS2(0) & "' and a.docdt between '" & Format(date1, "YYYY/MM/DD") & "' and '" & Format(date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by ratecy", cn, adOpenStatic
            Print #f,
            cnt = cnt + 1
            If cnt >= pagelen Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
            End If
            If rs3.RecordCount > 1 Then
                Print #f, Space(21) & "**  Total   **" & Space(4) & Padl(INF(tot5, 0), 5, " ") & Space(9) & Padl(INF(tot, 3), 15, " ") & Space(3) & Padl(INF(tot1, 2), 14, " ") ' & Chr(27) & "F"
                cnt = cnt + 1
            End If
            If cnt >= pagelen Then
                    pg = pg + 1
                    Print #f, Space(5) & String(80, "-")
                    Print #f, Chr(12)
                    cnt = 0
                    Call prnhead(pg)
            End If
            Print #f,
            cnt = cnt + 1
            If cnt >= pagelen Then
                    pg = pg + 1
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
     RS2.MoveNext
    Next
    Set rs5 = New Recordset
    rs5.Open "select round((sum(isnull(e.netwt,0))),2) 'netkgs',(sum(isnull(e.netwt,0)))*round((isnull(b.ratecy,0)/355.6187),2) 'Amount',SUM(B.BALES) AS BALES  from rm_issb a,rm_lot b,rm_var z,rm_bale e,RM_ISSH C where LOTYEAR='" & Year(yfdate) & "' AND A.DIVCODE=C.DIVCODE AND A.ISSTYPE=C.ISSTYPE AND A.DOCNO=C.DOCNO AND A.DOCDT=C.DOCDT AND a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and a.lotdt=e.lotdt and a.lotno = b.lotno and b.varcode=z.varcode and a.lotdt = b.lotdt and a.divcode = b.divcode and a.catcd = b.catcd and a.divcode = '" & Divcode & "' and a.docdt between '" & Format(date1, "YYYY/MM/DD") & "' and '" & Format(date2, "YYYY/MM/DD") & "' AND b.lotyear='" & Year(yfdate) & "' group by ratecy", cn, adOpenStatic
    gtot = 0:       gtot1 = 0:       gtot5 = 0
    If Not rs5.EOF Then
        rs5.MoveFirst
    End If
    Do While Not rs5.EOF
        gtot = gtot + rs5(0):  gtot1 = gtot1 + rs5(1):   gtot5 = gtot5 + rs5("BALES")
        rs5.MoveNext
    Loop
    Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= pagelen Then
                    pg = pg + 1
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    Print #f, Space(16) & "**  Grand Total  **" & Space(1) & Padl(INF(gtot5, 0), 8, " ") & Space(9) & Padl(INF(gtot, 3), 15, " ") & Space(3) & Padl(INF(gtot1, 2), 14, " ") '& Chr(27) & "F"
    cnt = cnt + 1
            If cnt >= pagelen Then
                    pg = pg + 1
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    Print #f, Space(5) & String(80, "-")
    cnt = cnt + 1
            If cnt >= pagelen Then
                    pg = pg + 1
                    cnt = 0
                    Call prnhead(pg)
                    cnt = 7
                End If
    Print #f, Chr(12)
    Close #f
'    Open "c:\castaudit.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type castaudit.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\castaudit.txt"
'    Rep.Batfile = "c:\castaudit.bat"
    f = FreeFile
    Call KALBATPROCESS("castaudit")
    Screen.MousePointer = 0
Case 65
    Set REP = New Report.ReportView
    pagein = 0:     cont = 0
    f = FreeFile
    'Open "C:\dailyctnstk" For Output As #f
    Open KALFOLDERDATA & "\dailyctnstk.TXT" For Output As #f
    pg = 1
    Call prnhead(pg)
    cnt = 10
    Print #f, Chr(12)
    Close #f
'    Open "c:\dailyiss.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dailyiss.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dailyiss.txt"
'    Rep.Batfile = "c:\dailyiss.bat"
    f = FreeFile
    Call KALBATPROCESS("dailyiss")
        Screen.MousePointer = 0
Case 19
    Dim dateg As String
    Dim strg As String
    dateg = Format(DTPicker2.value, "yyyy-mm-dd")
    strg = Trim(Mid(Combo1.Text, 1, 2))
    Call Issreg(dateg, strg, X)

Case 1998 'Transfer Register
    weigh = 0
    qtyt = 0
    amt = 0
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    TOTVAL = 0
    DataCombo2.Text = DTPicker2.value ''''''''''''''''''
    date1 = Format(DataCombo2.Text, "yyyy-mm-dd"):     date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    cnt = 0
    Close
    'Open "c:\dailytrans.txt" For Output As #f
     Open KALFOLDERDATA & "\dailytrans.TXT" For Output As #f
    Set RS2 = New Recordset
    RS2.Open "select distinct c.cntcd from rm_issb b,rm_issh c,rm_count d Where C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and c.docdt between '" & date1 & "' and '" & date2 & "' and b.isstype='T' and b.DIVCODE ='" & Divcode & "' group by c.cntcd", cn, adOpenStatic, adLockBatchOptimistic
    If RS2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
         Close #f
        Screen.MousePointer = 0
        Exit Sub
    End If
    pg = 1
    Call prnhead(pg)
    cnt = 10
    RS2.MoveFirst
    date1 = Format(DataCombo2.Text, "yyyy-mm-dd"):      date2 = Format(DataCombo2.Text, "yyyy-mm-dd")
    gtmix = 0
    gmix = 0
    Do While Not RS2.EOF
            gmix = 0
            Print #f, Space(6); Padr(CStr(RS2(0)), 10, " ")
            cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            Set rs4 = New Recordset
                 rs4.Open "select A.DOCDT,A.CNTCD,a.varcode,a.lotno,sum(a.bale) as bale,a.unit ,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,ROUND((ISNULL(RATECANDY,0)/355.6187),2) AS RATEKG,a.plotno,ISNULL(RATECANDY,0) as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum(isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',round((sum(isnull(e.netwt,0)))*ROUND((ISNULL(RATECY,0)/355.6187),2),2) 'Amount' " & _
                          " ,ROUND((ISNULL(RATECY,0)/355.6187),2) AS RATEKG,ISNULL(ratecy,0)  ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e  Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and a.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and b.isstype='T' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  " & _
                          " c.docdt  between '" & Format(date1, "yyyy-mm-dd") & "' and  '" & Format(date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & RS2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a  group by varcode,a.lotno,A.DOCDT,A.CNTCD,unit,a.plotno,RATECANDY", DB, adOpenStatic
                Do While Not rs4.EOF
                    Set Rs = New Recordset
                    Rs.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(avg(ratecandy),0)as ratecandy from (select C.DOCDT,A.CNTCODE AS CNTCD,d.mixgrpcd,a.varcode,a.lotno,Bale=(count(b.baleno)),unit=(case when a.bblflg='R' then 'Borah'  else 'Bales' end),round(Sum (isnull(e.netwt,0)),2) 'netkgs',a.plotno,avg(a.ratekg)'quintal',a.ratekg*sum(b.actisskgs) 'Amount',avg(ratekg)as ratekg,round((ratecy),0)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_count d,rm_bale e Where  a.lotdt=b.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.lotdt=e.lotdt and b.catcd=e.catcd and b.baleno=e.baleno and" & _
                            " a.divcode = '" & Divcode & "' and b.isstype='T' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and  d.cntcd=*a.cntcode and  c.docdt  between '" & Format(date1, "yyyy-mm-dd") & "' and  '" & Format(date1, "yyyy-mm-dd") & "'  AND c.cntcd='" & RS2(0) & "' and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by d.mixgrpcd,a.bblflg,RATEKG,RATECY,a.varcode,a.lotno,C.DOCDT,A.CNTCODE,a.plotno) a ", DB, adOpenStatic
                     If Rs("netkg") > 0 Then
                        mix = Round((rs4(6) / Rs("netkg")) * 100, 2)
                     Else
                        mix = 0
                     End If
                     Set Namers = New Recordset
                     Namers.Open "Select varname from rm_var where varcode='" & rs4("varcode") & "'", DB, adOpenStatic
                     Print #f, Space(13); Padl(rs4("lotno"), 5, " "); Space(6); Padr(Namers("varname"), 15, " ") & Padl(rs4("plotno"), 9, " ") & Padl(INF(rs4(4), 0), 8, " ") & Space(3); Padr(rs4(5), 5, " "); Padl(INF(rs4(6), 2), 16, " "); ; Padl(INF(mix, 2), 8, " "); Padl(INF(rs4(9), 2), 11, " "); Padl(INF(rs4("ratecandy"), 0), 15, " "); Padl(INF(rs4(8), 2), 21, " ")
                     gmix = gmix + mix
                     gtmix = gtmix + mix
                     amt = amt + amo
                     cnt = cnt + 1
                     If cnt >= pagelen Then
                        Print #f, Space(5) & String(130, "-")
                        Print #f, Chr(12)
                        pg = pg + 1
                        cnt = 0
                        Call prnhead(pg)
                        cnt = 10
                    End If
                     TOTVAL = TOTVAL + rs4(8)
                     tottVal = tottVal + rs4(8)
                     rs4.MoveNext
            Loop
            If rs4.RecordCount > 1 Then
            Set rs6 = New Recordset
            rs6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount,avg(a.ratekg),round(sum(ratecandy),2)as ratecandy from (select Bale=(count(b.baleno)),round(Sum (e.netwt),2) 'netkgs',avg(a.ratekg)'quintal',avg(a.ratekg)*sum(e.netwt) 'Amount',avg(ratekg)as ratekg,round((ratekg*355.6187),2)ratecandy  from rm_lot a,rm_issb b,rm_issh c,rm_bale e  Where   a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and c.isstype='T' and  c.docno=b.docno and  c.docdt  between '" & Format(date1, "yyyy-mm-dd") & "' and  '" & Format(date1, "yyyy-mm-dd") & "' and b.isstype='T'  AND c.cntcd='" & RS2(0) & "' " & _
            "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'group by a.bblflg,RATEKG ) a ", DB, adOpenStatic
            Print #f,
            cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            Print #f, Space(23); " **   Total **"; Padl(rs6("bale"), 19, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(Round(gmix, 0), 2), 6, " "); Padl(INF(amt, 2), 47, " ") '; Chr(27); "F"
            cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
            End If
        RS2.MoveNext
      Loop
        gtmix = gtmix / RS2.RecordCount
    Set rs6 = New Recordset
    rs6.Open "select sum(a.bale) as bale,round(sum(isnull(a.netkgs,0)),2)netkg,sum(isnull(a.quintal,0)) ratequin,sum(isnull(a.Amount,0)) amount from (select Bale=(count(b.baleno)),round(Sum (e.netwt,0)),2) 'netkgs',sum(a.ratekg)*100'quintal',round(avg(a.ratekg)*sum(e.netwt),2) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_bale e Where a.lotdt=b.lotdt and a.lotdt=e.lotdt and b.lottype=e.lottype and b.lotno=e.lotno and b.catcd=e.catcd and b.baleno=e.baleno and b.isstype='T' and b.isstype='T'  and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  c.docno=b.docno and b.isstype='T'  and  c.docdt  between '" & Format(date1, "yyyy-mm-dd") & "' and  '" & Format(date1, "yyyy-mm-dd") & "'" & _
         "  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' group by a.bblflg) a   ", DB, adOpenStatic
    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Space(23) & " ** Grand Total **"; Padl(rs6("bale"), 15, " "); Padl(INF(rs6("netkg"), 2), 24, " "); Space(2); Padl(INF(0, 0), 6, " "); Padl(INF(amt, 2), 47, " ") '; Chr(27); "F"
    cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Space(5) & String(130, "-")
    cnt = cnt + 1
            If cnt >= pagelen Then
                Print #f, Space(5) & String(130, "-")
                Print #f, Chr(12)
                pg = pg + 1
                cnt = 0
                Call prnhead(pg)
                cnt = 10
            End If
    Print #f, Chr(12)
    Close #f
'    Open "c:\dailytrans.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dailytrans.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dailytrans.txt"
'    Rep.Batfile = "c:\dailytrans.bat"
    f = FreeFile
    Call KALBATPROCESS("dailytrans")
    Screen.MousePointer = 0
 Case 20
    Set REP = New Report.ReportView
    pagein = 0
    cont = 0
    f = FreeFile
    date1 = Format(DataCombo2.Text, "yyyy-mm-dd"):       date2 = Format(DataCombo3.Text, "yyyy-mm-dd")
    cnt = 0
   ' Open "c:\daterecp.txt" For Output As #f
   Open KALFOLDERDATA & "\daterecp.TXT" For Output As #f
    Set RS2 = New Recordset
    RS2.Open "select d.lotdt from rm_lot am_issb b,rm_issh c,rm_count d Where  LOTYEAR='" & Year(yfdate) & "' AND a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and  a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & date1 & "' and '" & date2 & "'  group by d.mixgrpcd ", cn, adOpenStatic, adLockBatchOptimistic
    If RS2.BOF Then
        MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
        Close #f
        Exit Sub
    End If
    Call prnhead(pg)
    RS2.MoveFirst
    For I = 1 To RS2.RecordCount
        Print #f, Space(1) & Space(3 - Len(Trim(RS2(0)))) & Trim(CStr(RS2(0)))
        cnt = cnt + 2
            Set rs3 = New Recordset
            rs3.Open "select b.docdt,a.cntcode from rm_lot a,rm_issb b,rm_issh c,rm_count d Where  LOTYEAR='" & Year(yfdate) & "' AND a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and " & _
                     "a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & date1 & "' and  '" & date2 & "' and d.mixgrpcd = '" & RS2(0) & "'  group by b.docdt,a.cntcode ", cn, adOpenStatic, adLockBatchOptimistic
            rs3.MoveFirst
            For j = 1 To rs3.RecordCount
                Print #f, Space(9) & Trim(CStr(rs3(0))) & Space(4) & Trim(CStr(rs3(1)))
                If cnt >= 53 Then
                    Call prnhead(pg)
                    cnt = 0
                End If
            Set rs4 = New Recordset
            rs4.Open "select a.varcode,a.lotno,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'rate/quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where   LOTYEAR='" & Year(yfdate) & "' AND d.cntcd = a.cntcode and  a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and  d.mixgrpcd = '" & RS2(0) & "' and  b.docdt = '" & Format(rs3(0), "yyyy-mm-dd") & "' and a.cntcode = '" & rs3(1) & "' group by a.varcode,a.lotno,a.bblflg,a.ratekg", cn, adOpenStatic
              rs4.MoveFirst
              For K = 1 To rs4.RecordCount
                If Not IsNull(rs4(2)) Then
                  Print #f, Space(34) & Trim(CStr(rs4(0))) & Space(17 - Len(Trim(rs4(0))) - Len(Trim(rs4(1)))) & Trim(CStr(rs4(1))) & Space(9 - Len(Trim(IIf(IsNull(rs4(2)), "", rs4(2))))) & Trim(CStr(IIf(IsNull(rs4(2)), "", rs4(2)))) & Space(18 - Len(Trim(rs4(4)))) & Trim(CStr(rs4(4))) & Space(14 - Len(Trim(rs4(5)))) & Trim(CStr(rs4(5))) & Space(15 - Len(Trim(rs4(6)))) & Trim(CStr(rs4(6)))
                ElseIf Not IsNull(rs4(3)) Then
                  Print #f, Space(34) & Trim(CStr(rs4(0))) & Space(17 - Len(Trim(rs4(0))) - Len(Trim(rs4(1)))) & Trim(CStr(rs4(1))) & Space(16 - Len(Trim(IIf(IsNull(rs4(3)), "", rs4(3))))) & Trim(CStr(IIf(IsNull(rs4(3)), "", rs4(3)))) & Space(11 - Len(Trim(rs4(4)))) & Trim(CStr(rs4(4))) & Space(14 - Len(Trim(rs4(5)))) & Trim(CStr(rs4(5))) & Space(15 - Len(Trim(rs4(6)))) & Trim(CStr(rs4(6)))
                End If
                If cnt >= 53 Then
                    Call prnhead(pg)
                    cnt = 0
                End If
               rs4.MoveNext
            Next K
           rs3.MoveNext
           Next j
           Set rs5 = New Recordset
           rs5.Open "select sum(isnull(a.bale,0)),sum(isnull(a.bora,0)),sum(isnull(a.netkgs,0)),sum(isnull(a.quintal,0)),sum(isnull(a.Amount,0)) from (select d.mixgrpcd,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where  LOTYEAR='" & Year(yfdate) & "' AND  a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and c.docdt between '" & date1 & "' and  '" & date2 & "'  and d.mixgrpcd = '" & RS2(0) & "' group by d.mixgrpcd,a.bblflg,a.ratekg) a group by a.mixgrpcd", cn, adOpenStatic
           Print #f,
           Print #f, " * Total *" & Space(60 - Len(" * Total *") - Len(Trim(CStr(IIf(IsNull(rs5(0)), "", rs5(0)))))) & Trim(CStr(IIf(IsNull(rs5(0)), "", rs5(0)))) & Space(7 - Len(Trim(IIf(IsNull(rs5(1)), "", rs5(1))))) & Trim(CStr(IIf(IsNull(rs5(1)), "", rs5(1)))) & Space(11 - Len(Trim(rs5(2)))) & Trim(CStr(rs5(2))) & Space(14 - Len(Trim(rs5(3)))) & Trim(CStr(rs5(3))) & Space(15 - Len(Trim(rs5(4)))) & Trim(CStr(rs5(4)))
        cnt = cnt + 2
        If cnt >= 53 Then
            Print #f, Chr(12)
            Call prnhead(pg)
            cnt = 0
        End If
     RS2.MoveNext
    Next
    Set rs6 = New Recordset
    rs6.Open "select sum(isnull(a.bale,0)),sum(isnull(a.bora,0)),sum(isnull(a.netkgs,0)),sum(isnull(a.quintal,0)),sum(isnull(a.Amount,0)) from (select d.mixgrpcd,Bale=(case when a.bblflg='B' then count(b.baleno) end),Bora=(case when a.bblflg='R' then count(b.baleno) end),Sum (b.isskgs) 'netkgs',a.ratekg*100'quintal'," & _
                     "a.ratekg*sum(b.isskgs) 'Amount' from rm_lot a,rm_issb b,rm_issh c,rm_count d  Where LOTYEAR='" & Year(yfdate) & "' AND a.cntcode = d.cntcd and a.divcode = '" & Divcode & "' and  A.DIVCODE = B.divcode and a.catcd = b.catcd and a.lotno = b.lotno and  a.lotdt = b.lotdt AND C.DIVCODE = B.DIVCODE AND  " & _
                     "C.ISSTYPE = B.ISSTYPE AND C.DOCDT = B.DOCDT  and  a.cntcode = c.cntcd and c.docno=b.docno and  c.docdt between '" & date1 & "' and  '" & date2 & "' group by d.mixgrpcd,a.bblflg,a.ratekg) a ", cn, adOpenStatic
    Print #f, String(120, "-")
    Print #f, " * Grand Total *" & Space(60 - Len(" * Grand Total *") - Len(Trim(CStr(IIf(IsNull(rs6(0)), "", rs6(0)))))) & Trim(CStr(IIf(IsNull(rs6(0)), "", rs6(0)))) & Space(7 - Len(Trim(IIf(IsNull(rs6(1)), "", rs6(1))))) & Trim(CStr(IIf(IsNull(rs6(1)), "", rs6(1)))) & Space(11 - Len(Trim(rs6(2)))) & Trim(CStr(rs6(2))) & Space(14 - Len(Trim(rs6(3)))) & Trim(CStr(rs6(3))) & Space(15 - Len(Trim(rs6(4)))) & Trim(CStr(rs6(4)))
    Print #f, String(120, "-")
    Close #f
'    Open "c:\dailyiss.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "cd\"
'    Print #f, "type dailyiss.txt > prn"
'    Close #f
'    Rep.txtfile = "c:\dailyiss.txt"
'    Rep.Batfile = "c:\dailyiss.bat"
    f = FreeFile
    Call KALBATPROCESS("dailyiss")
    Screen.MousePointer = 0
Case 28, 40, 300000
         DTPicker3.maxdate = pdate:            DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
            Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic

    If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
        
     GoTo VerietyStks1
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     
VerietyStks1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietyStks
        Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietyStks:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        If Repindex = 28 Then
            Call StockLotReport1(CStr(U), CStr(v), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text, UserFooter1.SelectedStr)
        Else
            Call LotstockReportTest(CStr(W), CStr(U), CStr(v), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), UserFooter1.SelectedStr, CmbRecType.Text)
        End If
        'Call StockLotReport1(CStr(u), CStr(v), CStr(w), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
Case 29
    D1 = CStr(Format(DataCombo2.Text, "yyyy-mm-dd")):      D2 = CStr(Format(DataCombo3.Text, "yyyy-mm-dd"))
    cn.Execute "create table temp_details(det_date datetime,op_bale numeric(6),op_borah numeric(6),op_kgs numeric(10,3),recp_bale numeric(6),recp_borah numeric(6),recp_kgs numeric(10,2),iss_bale numeric(6),iss_borah numeric(6),iss_kgs numeric(10,2),clo_bale numeric(6),clo_borah numeric(6),clo_kgs numeric(10,2),open_val numeric(12,0),recp_val numeric(12,0),iss_val numeric(12,0),clos_val numeric(12,0))"
    For I = 0 To DateDiff("d", D1, D2)
       fdate = DateAdd("d", I, D1)
       Set Rs = New Recordset
       Rs.Open " select sum(isnull(k.openkgs,0)) as opkgs, sum(isnull(recep,0)) as reckgs,sum(isnull(k.issue,0)) as isskgs,sum(isnull(k.Openkgs,0)) + sum(isnull(k.Recep,0)) - sum(isnull(k.Issue,0)) as 'Closing',sum(isnull(k.Openbale,0)) 'openbale',sum(isnull(k.recpBale,0)) 'recpbale',sum(isnull(k.Openbale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Closbale', " & _
                " sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Closborah',sum(isnull(k.OpenBorah,0)) 'openborah',sum(isnull(k.recpBorah,0)) 'recpborah',sum(isnull(k.issborah,0)) 'issborah',sum(isnull(k.issbale,0)) 'issbale' ,sum(isnull(k.openval,0)) 'openvalu',sum(isnull(k.recval,0)) 'recvalu',sum(isnull(k.issval,0)) 'issvalu',sum(isnull(k.openval,0)) + sum(isnull(k.recval,0)) - sum(isnull(k.issval,0)) 'clovalu' " & _
                " from ((select isnull(a.netwt,0) - isnull(b.isskgs,0) 'Openkgs',isnull(Openbale,0) -isnull(issbale,0)'OpenBale',isnull(Openborah,0) -isnull(issborah,0)'OpenBorah',0 as recep,0 as recpbale,0 as recpborah,0 as 'Issue',0 as IssBale,0 as IssBorah,isnull(a.val1,0) - isnull(b.val2,0) 'openval',0 as recval,0 as issval  from (select sum(isnull(netwt,0)) 'netwt',case when bblflg = 'B' then " & _
                " sum(isnull(bales,0)) end 'OpenBale', case when bblflg   IN ('R','H') then sum(isnull(bales,0)) end 'OpenBorah',sum(isnull(netwt,0) * ratekg) 'val1'  from rm_lot  where LOTYEAR='" & Year(yfdate) & "' AND lotdt < '" & Format(fdate, "yyyy-mm-dd") & "' and divcode = '" & Divcode & "' and  catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  group by bblflg) a , (select sum(isnull(c.isskgs,0)) 'isskgs', case when d.bblflg = 'B'" & _
                " then count(isnull(c.baleno,0))end 'issbale' , case when d.bblflg = 'B' then count(isnull(c.baleno,0))end 'issborah' ,sum(isnull(c.isskgs,0) * d.ratekg) 'val2' from rm_issb c,rm_lot d  where LOTYEAR='" & Year(yfdate) & "' AND c.docdt < '" & Format(fdate, "yyyy-mm-dd") & "' and c.divcode = '" & Divcode & "' and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and c.divcode = d.divcode " & _
                " group by d.bblflg ) b union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',sum(isnull(e.netwt,0)) as 'Recep',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg  IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',0 as 'Issue',0 as IssBale ,0 as IssBorah,0 as openval,sum(isnull(e.netwt,0) * e.ratekg) 'recval',0 as issval  from rm_lot e " & _
                " where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt = '" & Format(fdate, "yyyy-mm-dd") & "' and e.divcode = '" & Divcode & "' and e.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  group by bblflg union select 0 as Openkgs,0 as 'OpenBale',0 as 'OpenBorah',0 as 'Recep',0 as recpBale,0 as recpBorah,sum(isnull(a.isskgs,0))as 'Issue',case when b.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when b.bblflg   IN ('R','H') then count(isnull(baleno,0)) end 'IssBorah', " & _
                " 0 as openval,0 as recval,sum(isnull(a.isskgs,0) * b.ratekg) 'issval'  from rm_issb a,rm_lot b where LOTYEAR='" & Year(yfdate) & "' AND a.docdt = '" & Format(fdate, "yyyy-mm-dd") & "' and  a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  and a.lotno = b.lotno and a.lotdt = b.lotdt and a.catcd = b.catcd and  a.divcode = b.divcode group by b.bblflg) )k", cn, adOpenStatic, adLockBatchOptimistic
        If Not Rs.BOF Then
            cn.Execute ("insert into temp_details values('" & Format(fdate, "yyyy-mm-dd") & "'," & IIf(IsNull(Rs(4)) = True, 0, Rs(4)) & "," & IIf(IsNull(Rs(8)) = True, 0, Rs(8)) & "," & IIf(IsNull(Rs(0)) = True, 0, Rs(0)) & "," & IIf(IsNull(Rs(5)) = True, 0, Rs(5)) & "," & IIf(IsNull(Rs(9)) = True, 0, Rs(9)) & "," & IIf(IsNull(Rs(1)) = True, 0, Rs(1)) & ", " & IIf(IsNull(Rs(11)) = True, 0, Rs(11)) & ", " & IIf(IsNull(Rs(10)) = True, 0, Rs(10)) & "," & IIf(IsNull(Rs(2)) = True, 0, Rs(2)) & "," & IIf(IsNull(Rs(6)) = True, 0, Rs(6)) & "," & IIf(IsNull(Rs(7)) = True, 0, Rs(7)) & "," & IIf(IsNull(Rs(3)) = True, 0, Rs(3)) & "," & IIf(IsNull(Rs(12)) = True, 0, Rs(12)) & "," & IIf(IsNull(Rs(13)) = True, 0, Rs(13)) & "," & IIf(IsNull(Rs(14)) = True, 0, Rs(14)) & "," & IIf(IsNull(Rs(15)) = True, 0, Rs(15)) & ")")
        Else
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
    Next
    Set Rs = New Recordset
    Rs.Open "select det_date,op_bale,op_borah,op_kgs,recp_bale,recp_borah,recp_kgs,iss_bale,iss_borah,iss_kgs,clo_bale as clos_bal,clo_borah as clos_borah,clo_kgs clos_kgs,open_val,recp_val,iss_val,clos_val from temp_details", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.EOF Then
        MsgBox "No records found", vbInformation, head
        Exit Sub
    Else
        Rs.MoveFirst
        Set LB1 = stockdetperiod.Sections(5).Controls("opbale")
        LB1.Caption = Format(Rs(1), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("opborah")
        LB1.Caption = Format(Rs(2), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("opkgs")
        LB1.Caption = Format(Rs(3), "#,##,##,###.00")
        Set LB1 = stockdetperiod.Sections(5).Controls("opval")
        LB1.Caption = Format(Rs(13), "#,##,##,###.00")
        Rs.MoveLast
        Set LB1 = stockdetperiod.Sections(5).Controls("clobale")
        LB1.Caption = Format(Rs(10), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("cloborah")
        LB1.Caption = Format(Rs(11), "#,##,###")
        Set LB1 = stockdetperiod.Sections(5).Controls("clokgs")
        LB1.Caption = Format(Rs(12), "#,##,##,###.00")
        Set LB1 = stockdetperiod.Sections(5).Controls("cloval")
        LB1.Caption = Format(Rs(16), "#,##,##,###.00")
    End If
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    Set LB1 = stockdetperiod.Sections(2).Controls("lb_list")
    LB1.Caption = " Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & "  To  " & Format(DataCombo3.Text, "dd/mm/yyyy")
    dv1.rsCommand1.Open "select det_date,op_bale,op_borah,op_kgs,recp_bale,recp_borah,recp_kgs,iss_bale,iss_borah,iss_kgs,clo_bale as clos_bal,clo_borah as clos_borah,clo_kgs clos_kgs,open_val,recp_val,iss_val,clos_val from temp_details", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set stockdetperiod.DataSource = dv1
        stockdetperiod.Show
        cn.Execute ("drop table temp_details")
        Screen.MousePointer = 0
     End If
Case 30
    Call Case30
Case 88
         U = Format(DTPicker2.value, "dd/mm/yyyy"):         v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Call StockareaReport(CStr(U), CStr(v), CStr(W))
        Screen.MousePointer = 0
Case 32
         U = Format(DTPicker2.value, "dd/mm/yyyy"):      v = Format(DTPicker3.value, "dd/mm/yyyy")
               
    Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -   '  + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt between '" & Format(DataCombo2.Text, "yyyy/mm/dd") & "' and '" & Format(DataCombo3.Text, "yyyy/mm/dd") & "'", cn, adOpenStatic
         
godown: W = Trim(Mid$(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1))
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
        If DataCombo5.MatchedWithList And DataCombo6.MatchedWithList Then
        
           X = DCmbFLtN.Text:           Y = DCmbTLtN.Text
         z = Check1.value
         If z = 0 Then
            Call StockGodownReport(CStr(U), CStr(v), CStr(W), divname, CStr(X), CStr(Y), "N", CStr((Mid$(DataCombo5.Text, 1, (InStr(DataCombo5.Text, "-") - 1)))), CStr((Mid$(DataCombo6.Text, 1, (InStr(DataCombo6.Text, "-") - 1)))), CmbRecType.Text)
         Else
            Call StockGodownReport(CStr(U), CStr(v), CStr(W), divname, CStr(X), CStr(Y), "Y", CStr((Mid$(DataCombo5.Text, 1, (InStr(DataCombo5.Text, "-") - 1)))), CStr((Mid$(DataCombo6.Text, 1, (InStr(DataCombo6.Text, "-") - 1)))), CmbRecType.Text)
         End If
         Screen.MousePointer = 0
                    End If
           End If
Case 33
     U = Format(DataCombo2.Text, "dd/mm/yyyy"):        v = Format(DataCombo3.Text, "dd/mm/yyyy")
     W = DataCombo1.Text
     Call StockVariety1Report(CStr(U), CStr(v), CStr(W), divname)
        Screen.MousePointer = 0
        Exit Sub
    If dv1.rsCommand2_Grouping.State = adStateOpen Then
        dv1.rsCommand2_Grouping.Close
    End If
    Set LB1 = clovarstock.Sections(2).Controls("lb_list")
    LB1.Caption = "Varietywise Closing Stock Statement From " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "DD/MM/YYYY") & "                                               (" & Mid$(DataCombo1.Text, 3) & ")"

    dv1.rsCommand2_Grouping.Open " shape {select k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs',sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale'," & _
                                 " sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ,sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.varcode,y.slname,y.lotdt,y.plotno,y.lotno,y.catcd,y.ratecy,y.ratekg, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs'," & _
                                 " isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale',isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval,0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,b.slname,a.lotdt,c.plotno," & _
                                 " a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1', case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1', case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end as 'Borah1', sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a, fa_slmas b,rm_arrival c " & _
                                 " where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.supcd = b.slcode and a.arrdt = c.arrdate and a.arrno = c.arrno and  a.lotno = c.lotno and a.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "'  and a.divcode = c.divcode and  a.catcd ='C'" & _
                                 " and a.divcode = '" & Divcode & "'  group by a.varcode,b.slname,a.lotdt,c.plotno,a.lotno,a.catcd,a.ratecy,a.bblflg,a.ratekg)y,(select d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.ratecy,d.ratekg,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                                 " (case when d.bblflg   IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d ,fa_slmas a ,rm_arrival b where LOTYEAR='" & Year(yfdate) & "' AND c.docdt < '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode " & _
                                 " and d.supcd = a.slcode and d.arrdt = b.arrdate and d.arrno = b.arrno and d.lotno = b.lotno and d.catcd = b.catcd and d.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and  d.divcode = b.divcode  and d.divcode = '" & Divcode & "' group by d.varcode,a.slname,d.lotdt,b.plotno,d.lotno,d.catcd,d.bblflg,d.ratecy,d.ratekg)t where " & _
                                 " y.varcode *= t.varcode and y.lotno *= t.lotno and y.lotdt *= t.lotdt and y.catcd *= t.catcd and y.slname *= t.slname and  y.plotno *= t.plotno  union  select e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.ratecy,e.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs'," & _
                                 " case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah',sum(isnull(e.ratekg,0) * isnull(e.netwt,0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e,fa_slmas b,rm_arrival c where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' " & _
                                 " and e.supcd = b.slcode and e.arrdt = c.arrdate and e.arrno = c.arrno and e.lotno = c.lotno and e.catcd = c.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and e.divcode = c.divcode and  e.divcode = '" & Divcode & "' group by e.varcode,b.slname,e.lotdt,c.plotno,e.lotno,e.catcd,e.bblflg  ," & _
                                 " e.ratecy,e.ratekg  union  select c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd, c.ratecy,c.ratekg,0 as Openbal,0 as 'OpenBale',0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue'," & _
                                 " case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale',case when c.bblflg   IN ('R','H') then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c,fa_slmas b ,rm_arrival d where LOTYEAR='" & Year(yfdate) & "' AND a.docdt = '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and " & _
                                 " c.supcd = b.slcode and c.arrdt = d.arrdate and c.arrno = d.arrno and c.lotno = d.lotno and c.catcd = d.catcd and c.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and c.divcode = d.divcode and a.divcode = '" & Divcode & "' and a.lotno = c.lotno and a.lotdt = c.lotdt  and a.catcd = c.catcd " & _
                                 " group by c.varcode,b.slname,c.lotdt,d.plotno,c.lotno,c.catcd,c.bblflg," & _
                                 " c.ratecy,c.ratekg) )k group by k.varcode,k.slname,k.lotdt,k.plotno,k.lotno,k.catcd,k.ratecy,k.ratekg }as command2 compute command2 by 'varcode'", cn, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand2_Grouping.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    Else
        Set clovarstock.DataSource = dv1
        clovarstock.Show
        Screen.MousePointer = 0
    End If
Case 35
     U = Format(DataCombo2.Text, "dd/mm/yyyy"):      v = Format(DataCombo3.Text, "dd/mm/yyyy")
     W = DataCombo1.Text
     Call CloseMReport(CStr(U), CStr(v), CStr(W), divname)
     Screen.MousePointer = 0
Case 34
    If dv1.rsCommand1.State = adStateOpen Then
    dv1.rsCommand1.Close
    End If
    Set LB1 = clovarstock.Sections(2).Controls("list")
    LB1.Caption = "Varietywise Godownwise Stock Statement As On  " & Format(DataCombo4.Text, "dd/mm/yyyy") & "                                               (" & Mid$(DataCombo3.Text, 3) & ")" & "                                                               " & Format(DataCombo4.Text, "dd/mm/yyyy")
    Call QryString
    dv1.rsCommand1.Open qry, DB, adOpenStatic, adLockBatchOptimistic
    If dv1.rsCommand1.RecordCount = 0 Then
    MsgBox "No records found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
    Else
    Set clovarstocksum.DataSource = dv1
    clovarstocksum.Show
    Screen.MousePointer = 0
    End If
Case 78
   To_Date = Format(DataCombo2.Text, "dd/mm/yyyy"):    From_Date = Format(DataCombo3.Text, "dd/mm/yyyy")
   Call rct_reg_dt(CStr(From_Date), CStr(To_Date), divname)
Case 79
    U = Format(DTPicker1.value, "yyyy-mm-dd"):    v = Format(DTPicker2.value, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        'a = DCmbFLtN.Text
        'b = DCmbTLtN.Text
        Call suppliers1
    Call Lotwise_Weight_Difference(DTPicker1.value, DTPicker2.value, c, d, divname, UserFooter1.SelectedStr, e, B)
Case 100
        U = Format(DTPicker1.value, "dd/mm/yyyy"):    v = Format(DTPicker2.value, "dd/mm/yyyy")
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
        Call StockLReport(CStr(U), CStr(v))
        Screen.MousePointer = 0
        Exit Sub
            LotDatestock.Title = divname
            If dv1.rsCommand8.State = adStateOpen Then
                dv1.rsCommand8.Close
            End If
            Set LB1 = LotDatestock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "Datewise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")
             dv1.rsCommand8.Open " SHAPE {select distinct a.arrdt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "'  and a.DIVCODE ='" & Divcode & "' group by arrdt}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and d.varcode=a.varcode and  lottype='A' and arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.DIVCODE ='" & Divcode & "'}  AS Command9 RELATE 'arrdt' TO 'arrdt') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic
            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotDatestock.DataSource = dv1
               LotDatestock.Show
               Screen.MousePointer = 0
            End If
Case 101
    U = Format(DTPicker2.value, "dd/mm/yyyy"):      v = Format(DTPicker3.value, "dd/mm/yyyy")
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    W = Combo2.Text
    Call Varietywisedetaily(CDate(U), CDate(v), CStr(W))
    Screen.MousePointer = 0
    Exit Sub
                LotVarstock.Title = divname
                    If dv1.rsCommand8.State = adStateOpen Then
                            dv1.rsCommand8.Close
                    End If
            Set LB1 = LotVarstock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "DateWise Variety Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")
             dv1.rsCommand8.Open " SHAPE {select distinct d.varname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.DIVCODE ='" & Divcode & "' group by d.varname}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.DIVCODE ='" & Divcode & "'}  AS Command9 RELATE 'varname' TO 'varname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic
            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotVarstock.DataSource = dv1
               LotVarstock.Show
               Screen.MousePointer = 0
            End If
Case 102
    
Case 66, 10066
    U = DTPicker2.value:     v = DTPicker3.value
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
'    W = (Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
  If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
    xx = CStr(DCmbFLtN):      yy = CStr(DCmbTLtN)
    If Repindex = 10066 Then
        Call BinStockReport(CStr(U), CStr(v), CStr(xx), CStr(yy), UserFooter1.SelectedStr)
    Else
        Call enjoy(CStr(U), CStr(v), divname, DataCombo4.Text, CStr(xx), CStr(yy), UserFooter1.SelectedStr)
    End If
    Else
    
If DCmbFLtN.MatchedWithList = False Then
MsgBox "Select the valid Lot No", vbInformation, "Kalsofte"
DCmbFLtN.Text = ""
DCmbFLtN.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
If DCmbTLtN.MatchedWithList = False Then
MsgBox "Select the valid Lot No", vbInformation, "Kalsofte"
DCmbTLtN.Text = ""
DCmbTLtN.SetFocus
Screen.MousePointer = 0
Exit Sub
End If
    MsgBox "Select the valid lot no", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
    End If
    
Case 350
    DataCombo2.Text = DTPicker2.value:     DataCombo3.Text = DTPicker3.value
    U = CStr(Format(DataCombo2.Text, "dd/mm/yyyy")):     v = CStr(Format(DataCombo3.Text, "dd/mm/yyyy"))
    W = CStr(Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
    xx = CStr(DCmbFLtN)
    yy = CStr(DCmbTLtN)
    Call DetIss.DetIss(CStr(U), CStr(v), divname, CStr(W), CStr(xx), CStr(yy))
Case 99
    DataCombo2.Text = DTPicker2.value:   DataCombo3.Text = DTPicker3.value '''''''''''''
    U = CStr(Format(DataCombo2.Text, "dd/mm/yyyy")): v = CStr(Format(DataCombo3.Text, "dd/mm/yyyy"))
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
    Call rec_varity(CStr(U), CStr(v), divname)
Case 77, 7733, 7734
    Call Purchasedaybook
Case 228, 328, 428
     Screen.MousePointer = 11
     DataCombo2.Text = DTPicker2.value:   DataCombo3.Text = DTPicker3.value '''''''
     U = Format(DataCombo2.Text, "dd/mm/yyyy"):   v = Format(DataCombo3.Text, "dd/mm/yyyy")
     If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
     
    If Repindex = 228 Then
        Call con_varity(CStr(U), CStr(v), divname, Left(Combo1.Text, 1), UserFooter1.SelectedStr)
    ElseIf Repindex = 328 Then
        Call PurOrdReg_Datewise(CStr(U), CStr(v), UserFooter1.SelectedStr)
    ElseIf Repindex = 428 Then
        Call Customized_PurchaseOrd_Abs(CStr(U), CStr(v), UserFooter1.SelectedStr)
    End If
    Screen.MousePointer = 0
    Exit Sub
    
Case 89
    Screen.MousePointer = 11
     U = Format(DataCombo2.Text, "dd/mm/yyyy")
     Call con_varity2(CStr(U), divname)
    Screen.MousePointer = 0
Case 352
     Screen.MousePointer = 11
     Call SalConf(CStr(DataCombo2.Text), divname)
     Screen.MousePointer = 0
Case 999
    Screen.MousePointer = 11
    Dim sdr1 As String
    sdr1 = Combo2.Text
    Set RSS = New Recordset
    RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If (Combo2.Text <> "") Then
       Do While Not RSS.EOF
        If sdr1 <> RSS(0) And sdr1 <> "ALL   -   ALL" Then
            RSS.MoveNext
            Else
             Call variety_stoct.VarietystockReport(DTPicker1.value, Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1), UserFooter1.SelectedStr, CmbRecType.Text)
            Screen.MousePointer = 0
            Exit Sub
        End If
      Loop
      MsgBox "Select the Correct Category", vbInformation, head
      Combo2.Text = ""
      Combo2.SetFocus
      Screen.MousePointer = 0
      Exit Sub
    End If
    
Case 500
    Screen.MousePointer = 11
    DataCombo2.Text = DTPicker2.value:    DataCombo3.Text = DTPicker3.value
    a = Format(DataCombo2.Text, "yyyy-mm-dd"):   B = Format(DataCombo3.Text, "yyyy-mm-dd")
    If CDate(a) > CDate(B) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(B) < CDate(a) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DataCombo2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    Call qu_para(a, B, divname)
    Screen.MousePointer = 0
Case 111
    U = Format(DTPicker1.value, "dd/mm/yyyy"): v = Format(DTPicker2.value, "dd/mm/yyyy")
    Call stockledger_stock(CStr(U), CStr(v), divname)
    Screen.MousePointer = 0
    Exit Sub
                LotVarstock.Title = divname
                    If dv1.rsCommand8.State = adStateOpen Then
                            dv1.rsCommand8.Close
                    End If
            Set LB1 = LotVarstock.Sections(2).Controls("lb_LIST")
            LB1.Caption = "DateWise Variety Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy") & " To " & Format(DataCombo3.Text, "dd/mm/yyyy")
             dv1.rsCommand8.Open " SHAPE {select distinct d.varname from rm_lot  a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.DIVCODE ='" & Divcode & "'  group by d.varname}  AS Command8 APPEND ({select a.lotdt,a.lotno,a.arrdt,b.slname,c.catname,d.varname,unit=case when a.bblflg='B' then 'Bales' else 'Barel' end ,a.bales,a.netwt from rm_lot a,fa_slmas b,rm_cat c,rm_var d where LOTYEAR='" & Year(yfdate) & "' AND b.slcode=a.supcd and c.catcd=a.catcd and a.varcode=d.varcode and  lottype='A' and a.arrdt between '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and '" & Format(DataCombo3.Text, "yyyy-mm-dd") & "' and a.DIVCODE ='" & Divcode & "'}  AS Command9 RELATE 'varname' TO 'varname') AS Command9 ", cn, adOpenStatic, adLockBatchOptimistic
            If dv1.rsCommand8.RecordCount = 0 Then
               MsgBox "No records found", vbInformation, head
               Screen.MousePointer = 0
               Exit Sub
            Else
               Set LotVarstock.DataSource = dv1
               LotVarstock.Show
               Screen.MousePointer = 0
            End If
Case 115
         U = Format(DTPicker2.value, "dd/mm/yyyy"): v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Call StockAbsStatement1(CStr(U), CStr(v), CStr(W))
        Screen.MousePointer = 0
Case 311
    If Len(DataCombo1.Text) > 0 And IsNumeric(DataCombo1.Text) Then
        LTNo = DataCombo1.Text
        typeflg = Trim(Left(Combo1.Text, 2))
        Call CottRecn(DataCombo1.Text, CStr(typeflg))
    Else
        MsgBox "Please Select the Lot No", vbInformation, head
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 290
    Call VARIETYWISESTKST
Case 291
    Call ISSUETYPEWISE_STOCK
Case 289
      DTPicker3.maxdate = pdate:            DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        Set RSS = New Recordset
        RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd", cn, adOpenStatic, adLockBatchOptimistic
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo CottonStock
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
CottonStock:  If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: DCmbTLtN.Text = "": DCmbTLtN.SetFocus: Exit Sub
            If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
            Call CottonStockLotReport1(CStr(U), CStr(v), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text)
            Else
            MsgBox "Please select Valid  Lot Nos", vbInformation, head
            Screen.MousePointer = 0
            If DCmbFLtN.MatchedWithList = False Then
            DCmbFLtN.Text = ""
            DCmbFLtN.SetFocus
            End If
            If DCmbTLtN.MatchedWithList = False Then
            DCmbTLtN.Text = ""
            DCmbTLtN.SetFocus
            End If
            Exit Sub
            End If
         Else
            MsgBox "Please select then  Lot Nos", vbInformation, head
            Exit Sub
         End If

Case 191
    Dim F_Date As String
    Dim T_Date As String
    Dim vP_Str As String
    T_Date = Format(DTPicker2.value, "yyyy-mm-dd"): F_Date = Format(DTPicker1.value, "yyyy-mm-dd")
    vP_Str = Trim(Mid(Combo1.Text, 1, 2)): X = CmbRecType.Text
    Call Issreg_Periodical(F_Date, T_Date, vP_Str, X)
    
'Case 34351
'        Call CottRecn4_Periodical(Format(DTPicker1.Value, "yyyy-MM-dd"), Format(DTPicker2.Value, "yyyy-MM-dd"), Left(Combo1.Text, 2), CmbRecType.Text, UserFooter1.SelectedStr)
End Select
Screen.MousePointer = 0
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
intervalMinutes = -1
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
 Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Purchasedaybook()
On Error GoTo Purchasedaybook_Error
intervalMinutes = -1
    If Combo1.Text = "" Then
        MsgBox "Type cannot be Empty", vbInformation, head
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
     Set rec = New Recordset
    W = Trim(Left(DataCombo1.Text, 1))
If W = "A" Then
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd group by b.varname,b.varcode order by b.varcode", DB, adOpenStatic
Else
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd and a.catcd='" & W & "'  group by b.varname,b.varcode order by b.varcode", DB, adOpenStatic
End If
     If DataCombo1.MatchedWithList Then
     GoTo purchasebook
     Else
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     DataCombo1.Text = ""
     DataCombo1.SetFocus
     Exit Sub
     End If
purchasebook:    U = Format(DTPicker1.value, "yyyy-mm-dd"):    v = Format(DTPicker3.value, "yyyy-mm-dd")
    DataCombo2.Text = DTPicker1.value:    DataCombo3.Text = DTPicker3.value
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
    If Repindex = 77 Or Repindex = 7733 Or Repindex = 7734 Then
        Call Purchase_Day_Book(DataCombo2.Text, DataCombo3.Text, Left(DataCombo1.Text, 1), Combo1.Text, divname, UserFooter1.SelectedStr)
    End If
    Screen.MousePointer = 0
    Exit Sub

Exit Sub
Purchasedaybook_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Purchasedaybook of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
intervalMinutes = -1
Dim l1, l2, LB1, LB2 As RptLabel
Dim LTNo As Integer
Dim tot, tot1, gtot, gtot1 As Double
Dim str1, a1, X As String
Dim DT As String
On Error GoTo Command3_Click_Error

Screen.MousePointer = 11
Select Case Repindex
Case 34351
        Call CottRecn4_Periodical(Format(DTPicker1.value, "yyyy-MM-dd"), Format(DTPicker2.value, "yyyy-MM-dd"), Left(Combo1.Text, 2), CmbRecType.Text, UserFooter1.SelectedStr)
Case 2228
     Screen.MousePointer = 11
     DataCombo2.Text = DTPicker2.value:   DataCombo3.Text = DTPicker3.value '''''''
     U = Format(DataCombo2.Text, "dd/mm/yyyy"):   v = Format(DataCombo3.Text, "dd/mm/yyyy")
     If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
     Call pendingbillentry(CStr(U), CStr(v), UserFooter1.SelectedStr)
    Screen.MousePointer = 0
    intervalMinutes = -1
    'DTPicker2.SetFocus
    Exit Sub
Case 22228
     Screen.MousePointer = 11
     DataCombo2.Text = DTPicker2.value
     U = Format(DataCombo2.Text, "dd/mm/yyyy")
     Call pendingbillentry(CStr(U), CStr(U), UserFooter1.SelectedStr)
    Screen.MousePointer = 0
    'DTPicker2.SetFocus
    Exit Sub

Case 7777
    If Combo1.Text = "" Then
        MsgBox "Type cannot be Empty", vbInformation, head
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    
     Set rec = New Recordset
    W = Trim(Left(DataCombo1.Text, 1))
If W = "A" Then
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd group by b.varname,b.varcode order by b.varcode", cn, adOpenStatic
Else
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd and a.catcd='" & W & "'  group by b.varname,b.varcode order by b.varcode", cn, adOpenStatic
End If
intervalMinutes = -1
       
     If DataCombo1.MatchedWithList Then
     GoTo purchasebook
     Else
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     DataCombo1.Text = ""
     DataCombo1.SetFocus
     Exit Sub
     End If
purchasebook:    U = Format(DTPicker1.value, "yyyy-mm-dd"):    v = Format(DTPicker3.value, "yyyy-mm-dd")
    DataCombo2.Text = DTPicker1.value:    DataCombo3.Text = DTPicker3.value
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        'Call Purchase_abstract1(DataCombo2.Text, DataCombo3.Text, Left(DataCombo1.Text, 1), Combo1.Text, DIVNAME, UserFooter1.SelectedStr)
        Call Purchase_abstract1(DataCombo2.Text, DataCombo3.Text, Left(DataCombo1.Text, 1), CmbRecType, divname, UserFooter1.SelectedStr)
    Screen.MousePointer = 0
    intervalMinutes = -1
    Exit Sub
    
    
Case 777777
    U = Format(DTPicker2.value, "yyyy-mm-dd"):    v = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DTPicker1.SetFocus
        Screen.MousePointer = 0
    Exit Sub
    End If
    If CDate(v) < CDate(U) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DTPicker3.SetFocus
        Screen.MousePointer = 0
    Exit Sub
    End If
     sup1 = Mid$(dbcmb_fsup.Text, InStr(dbcmb_fsup.Text, "--") + 3, (Len(dbcmb_fsup.Text) - InStr(dbcmb_fsup.Text, "--")))
    sup2 = Mid$(dbcmb_tsup.Text, InStr(dbcmb_tsup.Text, "--") + 3, (Len(dbcmb_tsup.Text) - InStr(dbcmb_tsup.Text, "--")))
    
    Call debit_raisenote(CStr(U), CStr(v), UserFooter1.SelectedStr, CStr(sup1), CStr(sup2))
    intervalMinutes = -1

Case 787878787
Dim clsCryRptpur As New clsCrystal
    If UCase(CustID) = "SKY" Then
         Set clsCryRptpur.cryRept = Cry_Purchase_Day_Book_sky
    Else
        Set clsCryRptpur.cryRept = Cry_Pallavaa_Purchase_Day_Book 'Cry_RMIPurchaseDaybook_gst 'Cry_RMIPurchaseDaybook  'Rep_Purchasedaybook2
    End If
    clsCryRptpur.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    'crr.ParameterFields(0) = "@divname;" & DIVNAME & ""
    crr.ParameterFields(0) = "@divcode;" & Divcode & ""
    crr.ParameterFields(1) = "@fdate;" & Format(DTPicker1.value, "yyyy/mm/dd") & ""
    crr.ParameterFields(2) = "@tdate;" & Format(DTPicker3.value, "yyyy/mm/dd") & ""
    'crr.ParameterFields(3) = "@date1;" & Format(DTPicker1.value, "dd/mm/yyyy") & ""
    'crr.ParameterFields(4) = "@date2;" & Format(DTPicker3.value, "dd/mm/yyyy") & ""
    'crr.ParameterFields(6) = "@Cond;" & Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)) & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    
    Screen.MousePointer = 0
    intervalMinutes = -1
Case 77777
    If Combo1.Text = "" Then
        MsgBox "Type cannot be Empty", vbInformation, head
        Combo1.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    
     Set rec = New Recordset
    W = Trim(Left(DataCombo1.Text, 1))
    sup1 = Mid$(dbcmb_fsup.Text, InStr(dbcmb_fsup.Text, "--") + 3, (Len(dbcmb_fsup.Text) - InStr(dbcmb_fsup.Text, "--")))
    sup2 = Mid$(dbcmb_tsup.Text, InStr(dbcmb_tsup.Text, "--") + 3, (Len(dbcmb_tsup.Text) - InStr(dbcmb_tsup.Text, "--")))
If W = "A" Then
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd group by b.varname,b.varcode order by b.varcode", cn, adOpenStatic
Else
    rec.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd and a.catcd='" & W & "'  group by b.varname,b.varcode order by b.varcode", cn, adOpenStatic
End If

       
     If DataCombo1.MatchedWithList Then
     GoTo salesbook
     Else
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     DataCombo1.Text = ""
     DataCombo1.SetFocus
     Exit Sub
     End If
salesbook:    U = Format(DTPicker1.value, "yyyy-mm-dd"):    v = Format(DTPicker3.value, "yyyy-mm-dd")
    DataCombo2.Text = DTPicker1.value:    DataCombo3.Text = DTPicker3.value
    If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker1.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Call sales_DayBook(DataCombo2.Text, DataCombo3.Text, DataCombo1.Text, Combo1.Text, divname, UserFooter1.SelectedStr, CStr(sup1), CStr(sup2))
    Screen.MousePointer = 0
    Exit Sub
End Select

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command5_Click()
On Error GoTo Command5_Click_Error
intervalMinutes = -1

DB.Execute " if exists(select name from sysobjects where xtype='v' and name='Vw_uptodateStk') drop view Vw_uptodateStk "
If Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)) = "ALL" Then
    DB.Execute ("create view Vw_uptodateStk as" & _
        " select b.varname , sum(netwt) Netwt,sum(netwt*ratekg) value,' Receipt' As issuetype from rm_lot a,rm_var b where a.varcode=b.varcode and lotdt between Convert(datetime,'" & Format(fnmfdate(DTPicker1.value), "dd/mm/yyyy") & "',105)  and Convert(datetime,'" & Format(DTPicker1.value, "dd/mm/yyyy") & "',105) group by varname " & _
        " Union " & _
        " select b.varname ,sum(a.actisskgs) netwt,sum(a.actisskgs*ratekg) as value ,issue_desc as issuetype from rm_issb  a,rm_var b,rm_issueType c,rm_lot d where d.lotno=a.lotno and a.lotdt=d.lotdt and d.lotyear='" & Year(yfdate) & "' and  c.issue_code=a.isstype and a.varcode=b.varcode and    docdt between Convert(datetime,'" & Format(fnmfdate(DTPicker1.value), "dd/mm/yyyy") & "',105)  and Convert(datetime,'" & Format(DTPicker1.value, "dd/mm/yyyy") & "',105) group by varName,issue_desc ")
Else
    DB.Execute ("create view Vw_uptodateStk as" & _
        " select b.varname , sum(netwt) Netwt,sum(netwt*ratekg) value,' Receipt' As issuetype from rm_lot a,rm_var b where a.varcode=b.varcode and lotdt between Convert(datetime,'" & Format(fnmfdate(DTPicker1.value), "dd/mm/yyyy") & "',105)  and Convert(datetime,'" & Format(DTPicker1.value, "dd/mm/yyyy") & "',105) and a.catcd='" & Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1) & "' group by varname " & _
        " Union " & _
        " select b.varname ,sum(a.actisskgs) netwt,sum(a.actisskgs*ratekg) as value ,issue_desc as issuetype from rm_issb  a,rm_var b,rm_issueType c,rm_lot d where d.lotno=a.lotno and a.lotdt=d.lotdt and d.lotyear='" & Year(yfdate) & "' and  c.issue_code=a.isstype and  a.varcode=b.varcode and    docdt between Convert(datetime,'" & Format(fnmfdate(DTPicker1.value), "dd/mm/yyyy") & "',105)  and Convert(datetime,'" & Format(DTPicker1.value, "dd/mm/yyyy") & "',105) and b.catcd='" & Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1) & "' group by varName,issue_desc ")
End If
    Set DBNEW = New ADODB.Connection
'    crr.Reset
'    crr.Connect = connectstring
'    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\VarietywiseDailyStock.rpt"
'    crr.StoredProcParam(0) = Format(yfdate, "dd/mm/yyyy")
'    crr.StoredProcParam(1) = Format(yldate, "dd/mm/yyyy")
'    crr.StoredProcParam(2) = Format(DTPicker1.value, "dd/mm/yyyy")
'    crr.StoredProcParam(3) = Divcode
'    crr.StoredProcParam(4) = Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)
'    crr.ParameterFields(0) = "@date1;" & Format(yfdate, "dd/mm/yyyy")
'    crr.ParameterFields(1) = "@date2;" & Format(yldate, "dd/mm/yyyy")
'    crr.ParameterFields(2) = "@date3;" & Format(DTPicker1.value, "dd/mm/yy")
'    crr.ParameterFields(3) = "@div;" & Divcode
'    crr.ParameterFields(4) = "@cond;" & Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)
'    crr.Formulas(0) = "DIVNAME='" & DIVNAME & "'"
'    crr.Formulas(1) = "Frmdate='" & Format(DTPicker1.value, "yyyy/mm/dd") & "'"
'    crr.PrinterCopies = 1
'    crr.WindowState = crptMaximized
'    SendKeys "{ENTER}"
'    crr.Action = 2
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\VarietywiseDailyStock.rpt"
    'FrmRpt.RptHead = 7
    'parameter1 = DIVNAME
    'parameter2 = Format(DTPicker1.value, "yyyy/mm/dd")
    'parameter3 = Format(yfdate, "dd/mm/yyyy")
    'parameter4 = Format(yldate, "dd/mm/yyyy")
    'parameter5 = Format(DTPicker1.value, "dd/mm/yyyy")
    'parameter6 = Divcode
    'parameter7 = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
    'rephead = Format(DTPicker1.value, "dd/mm/yy")
    'FrmRpt.Show
    'rephead = ""
    
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = VarietyWiseDailyStock
    clsCryRpt.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    crr.ParameterFields(0) = "@divname;" & divname & ""
    crr.ParameterFields(1) = "@frmdate;" & Format(DTPicker1.value, "yyyy/mm/dd") & ""
    crr.ParameterFields(2) = "@Date1;" & Format(yfdate, "dd/mm/yyyy") & ""
    crr.ParameterFields(3) = "@Date2;" & Format(yldate, "dd/mm/yyyy") & ""
    crr.ParameterFields(4) = "@date3;" & Format(DTPicker1.value, "dd/mm/yyyy") & ""
    crr.ParameterFields(5) = "@Div;" & Divcode & ""
    crr.ParameterFields(6) = "@Cond;" & Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)) & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    intervalMinutes = -1
    Screen.MousePointer = 0
    intervalMinutes = -1
Exit Sub
intervalMinutes = -1
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
intervalMinutes = -1
End Sub

Private Sub Command6_Click()
      
      intervalMinutes = -1
      If Repindex = 30 Then
                PrPoNo = 1
                prdate = ""
      ElseIf Repindex = 28 Then
            PrPoNo = 0
            prdate = ""
      ElseIf Repindex = 19111 Then
            PrPoNo = 2
            prdate = ""
      ElseIf Repindex = 77 Then
            PrPoNo = 4
            prdate = ""
                 RepFoot = ""
                Footer = ""
                    UserFooter1.Visible = True
                 RepFoot = UserFooter1.SelectedStr
            Call purchasedaybookfooter
            Exit Sub
      End If
                RepFoot = ""
                Footer = ""
               ' On Error GoTo FooterCmd_Click_Error
                    UserFooter1.Visible = True
               ' UserFooterFrame.Visible = False
                'FooterFrame.Visible = False
                RepFoot = UserFooter1.SelectedStr
                'If prcount > 1 And prcount <= 4 Then
                    Call footer_cheran
                'End If
                
                intervalMinutes = -1
                Exit Sub
          

End Sub

Private Sub Command7_Click()
On Error GoTo Command7_ClickError

If Repindex = 228 Then
    purchasedatewiseexcel
     Exit Sub
End If

If Repindex = 787878787 Then
Call PurchaseDayBookExcel

Exit Sub
ElseIf Repindex = 77777 Then
    Call Salesdaybook_Excel
    Exit Sub
End If
If Repindex = 19111 Then
    If Check3.value = 1 Then
        Call CottonConsumption_Excel
        Exit Sub
    End If
End If
Call IssueListDatewise_Excel

Exit Sub
Command7_ClickError:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command8_Click()
Dim U As String
Dim v As String
Dim fdate, tdate As String
Dim fSupplier, tSupplier As String
Dim fltn, tltn As String
Dim X As String
On Error GoTo Command6_Click_Error

X = Combo3.Text
Select Case Repindex
    
Case 999
        Screen.MousePointer = 11
        Dim sdr1 As String
        
        sdr1 = Combo2.Text
        Set RSS = New Recordset
        RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b inner join rm_lot a  on a.catcd = b.catcd  where a.divcode = '" & Divcode & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
        If (Combo2.Text <> "") Then
            Do While Not RSS.EOF
                If sdr1 <> RSS(0) And sdr1 <> "ALL   -   ALL" Then
                    RSS.MoveNext
                Else
                    GoTo Label
                End If
            Loop
            MsgBox "Select the Correct Category", vbInformation, head
            Combo2.Text = ""
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
Label:
    Dim Str As String, F_Date As String, T_Date As String, K As String, vrectype As String
    Dim strSQL As String
    'Dim rs As New Recordset
    
    Str = DTPicker1.value
    K = Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)
    vrectype = Trim(Left(CmbRecType.Text, 3))
    F_Date = Str
    T_Date = Str
    
    str1 = Str
    k1 = K
    
    
    cn.BeginTrans
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Daily_VarietyStockPosition'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        cn.Execute "Drop table Temp_Daily_VarietyStockPosition"
    End If
    cn.Execute "Create table Temp_Daily_VarietyStockPosition(varcode varchar(10),varname varchar(50),lotno numeric(10),lotdt varchar(10),catcd varchar(10),bales numeric(10),stock numeric(18,3),val numeric(20,2),plotno varchar(50),RateCandy numeric(15,4),Ratekg numeric(15,4),unit varchar(10),Slcode varchar(10),CustName varchar(150),AgentName varchar(150))"
     strSQL = " select a.varcode,C.VARNAME,E.SLCODE,E.SLNAME,F.SLNAME as Agent,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') as catcd,RATECY AS rATECANDY,RATEKG,B.PLOTNO,case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END BALES, "
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END AS  BORAS,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END STOCK,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VAL"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(Str, Str)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E,FA_SLMAS f WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND F.SLCODE =B.BRKCD "

                
    If Trim(K) <> "ALL" Then
              
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
            Else
                strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
            End If
        Else
                strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY,B.PLOTNO,RATEKG,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
        End If
    Else
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
            Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
            End If
        Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg,E.SLCODE,E.SLNAME,F.SLNAME Order by A.LOTDT,A.lotno"
        End If
    End If
    Set Rs = New Recordset
    Rs.Open strSQL, cn, adOpenStatic
    If Rs.EOF = True Then
        MsgBox "No Record(s) found", vbInformation, head
        cn.CommitTrans
        Screen.MousePointer = 0
        Exit Sub
    Else
        Do While Not Rs.EOF
            cn.Execute "Insert into Temp_Daily_VarietyStockPosition values ('" & Rs("varcode") & "','" & Rs("varname") & "'," & Rs("lotno") & ",'" & Format(Rs("lotdt"), "yyyy-mm-dd") & "','" & Rs("catcd") & "'," & Rs("bales") + Rs("boras") & "," & Rs("stock") & "," & Rs("val") & ",'" & Rs("plotno") & "'," & IIf(IsNull(Rs("ratecandy")), "", Rs("ratecandy")) & "," & Rs("ratekg") & ",'" & Rs("unit") & "','" & Rs("slcode") & "','" & Rs("slname") & "','" & Rs("Agent") & "')"
            Rs.MoveNext
        Loop
    End If
    cn.CommitTrans
        
    Me.MousePointer = 11
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Daily_VarietyStockPosition.rpt"
    'FrmRpt.RptHead = "2A"
    'parameter1 = DIVNAME
    'parameter2 = "Varietywise Stock Position as on " & Format(F_Date, "dd/mm/yy")
    'Screen.MousePointer = 0
    'FrmRpt.Show
    

    If Option9.value = True Then
        Dim C_RMI_REPORT As New clsCrystal
        Set C_RMI_REPORT.cryRept = Cry_Varietywise_customized 'Cry_VarityWithQPR
        C_RMI_REPORT.CrystalPrint
        crr.Reset
        crr.DiscardSavedData = True
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "Description;" & "Varietywise Stock Position With Inspection Quality Parameters as on " & Format(F_Date, "dd/mm/yy") & ""
        crr.ParameterFields(1) = "@divcode;" & Divcode & ""
        crr.ParameterFields(2) = "@lotyear;" & Year(yfdate) & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
        Me.MousePointer = 0
        Exit Sub
    ElseIf Option10.value = True Then
        Dim clsCryGrdRpt11 As New clsCrystal
        Set clsCryGrdRpt11.cryRept = SCMTS_RMI_StockPosition_Suppwise
        clsCryGrdRpt11.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "Description;" & "Supplierwise Stock Position With Inspection Quality Parameters as on " & Format(F_Date, "dd/mm/yy") & ""
        crr.ParameterFields(1) = "@divcode;" & Divcode & ""
        crr.ParameterFields(2) = "@lotyear;" & Trim(Year(F_Date)) & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
        Me.MousePointer = 0
    ElseIf Option11.value = True Then
        Dim clsCryGrdRpt12 As New clsCrystal
        Set clsCryGrdRpt12.cryRept = SCMTS_RMI_StockPosition_Agentwise
        clsCryGrdRpt12.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "Description;" & "Agentwise Stock Position With Inspection Quality Parameters as on " & Format(F_Date, "dd/mm/yy") & ""
        crr.ParameterFields(1) = "@divcode;" & Divcode & ""
        crr.ParameterFields(2) = "@lotyear;" & Trim(Year(F_Date)) & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
        Me.MousePointer = 0
    End If

End Select

Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Custimised_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command9_Click()
    If Repindex = 999 Then
        tmpflg = True
        Call Command4_Click
    ElseIf Repindex = 77 Then
        Call PurchaseList_Excel
    End If
End Sub

Private Sub DataCombo1_Change()
Dim RS2 As Recordset
Dim st  As String
On Error GoTo DataCombo1_Change_Error

Set rs1 = New Recordset
st = Trim(Left(DataCombo1.Text, 1))
If st = "A" Then
    rs1.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd group by b.varname,b.varcode order by b.varcode", DB, adOpenStatic
Else
    rs1.Open "select b.varname+' -- '+b.varcode as varname from rm_cat a,rm_var b where a.catcd=b.catcd and a.catcd='" & st & "'  group by b.varname,b.varcode order by b.varcode", DB, adOpenStatic
End If
If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
Combo1.Refresh
Combo1.Clear

Combo1.AddItem "All -- ALL"
Do While Not rs1.EOF
    Combo1.AddItem rs1(0)
    rs1.MoveNext
Loop
rs1.MoveFirst
'Combo1.Text = RS1(0)
'Combo2.Text = Rs(0)
Combo1.ListIndex = 0

Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_Change of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub datacombo1_LostFocus()
On Error GoTo datacombo1_LostFocus_Error

Select Case Repindex
Case 6
    If DataCombo1.Text <> "" Then
        code = Trim(Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, "-") - 1))
    End If
End Select

Exit Sub
datacombo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure datacombo1_LostFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo13_GotFocus()
On Error GoTo DataCombo13_GotFocus_Error

Select Case Repindex
Case 25
    Set Rs = New Recordset
    Rs.Open "select distinct contdt from rm_cont where divcode='" & Divcode & "' and (isnull(ordqty,0) > isnull(recqty,0)) and contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
      If Rs.RecordCount <> 0 Then
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "contdt"
        If Not Rs.EOF Then
            Rs.MoveFirst
            Rs.MoveNext
            DataCombo13.Text = Rs(0)
        End If
      Else
       MsgBox "No Pending Contract For this Period", vbInformation
       Exit Sub
       
      End If
Case 6
   Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where divcode='" & Divcode & "' and upper(passed) = 'Y' and  lotno is null and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo13.RowSource = Rs
        DataCombo13.ListField = "arrdate"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo13.Text = Rs(0)
        End If
    End If

End Select

Exit Sub
DataCombo13_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo13_GotFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo1_GotFocus()
On Error GoTo DataCombo1_GotFocus_Error

Select Case Repindex
Case 1, 2, 888, 3004
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        Combo2.Visible = True
        DataCombo1.Visible = True
        DataCombo1.ListField = "field"
        
       If Not Rs.EOF Then
           Rs.MoveFirst
            Do While Not Rs.EOF
                    Combo2.AddItem Rs(0)
                    'DataCombo1.Text = Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "ALL   -  ALL"
            Rs.MoveFirst
            ''Mani
            DataCombo1.Text = Rs(0)
            Combo2.Text = Rs(0)
            
            EXITflg = ""
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
Case 28, 29, 31, 32, 33, 35, 522, 511, 40

    If DataCombo2.Text = " " Then
        Exit Sub
    End If
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -   '  + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt between '" & Format(DataCombo2.Text, "yyyy/mm/dd") & "' and '" & Format(DataCombo3.Text, "yyyy/mm/dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
        Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
        Combo2.AddItem "ALL   -  ALL"
        Rs.MoveFirst
        Combo2.ListIndex = 0
     End If
Case 200
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where A.OPFLG='Y' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotYEAR='" & Year(yfdate) & "' order by field ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        Combo2.Visible = True
        DataCombo1.ListField = "field"
        If Not Rs.EOF Then
            Rs.MoveFirst
            Do While Not Rs.EOF
                    Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "A   -  ALL"
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            Combo2.Text = Rs(0)
            EXITflg = ""
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
End Select

Exit Sub
DataCombo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo1_GotFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo2_GotFocus()
On Error GoTo DataCombo2_GotFocus_Error

Select Case Repindex
Case 1, 2
    If Repindex = 1 Then
        Set Rs = New Recordset
        Rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where LOTYEAR='" & Year(yfdate) & "' AND DIVCODE = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
    Else
        Set Rs = New Recordset
        Rs.Open "select DISTINCT a.LOTDT as fields from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "'  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' order by a.LOTDT ", cn, adOpenStatic
    End If
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
            EXITflg = ""
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        EXITflg = "EXIT"
    End If
    If Repindex = 2 Then
        Command4.Visible = True
        Command4.Top = Command3.Top + 1970
        LblFLTN.Caption = "From Mill Lot No."
        LblTLtN.Caption = "To Mill Lot No."
        LblFLTN.Top = DCmbFLtN.Top - 200
        LblTLtN.Top = DCmbTLtN.Top - 200

    End If
Case 3
    Set Rs = New Recordset
    'rs.Open "select  DISTINCT cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields,CONTDT from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='" & Divcode & "' order by contdt", db, adOpenStatic, adLockBatchOptimistic
    Rs.Open "select  DISTINCT  CONTDT as fields from rm_cont  where contdt <= '" & Format(pdate, "yyyy-mm-dd") & "' and ordqty>isnull(recqty,0) AND ORDQTY-ISNULL(CANCELBALES,0)>0 and DIVCODE ='" & Divcode & "' order by contdt", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "Fields"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            'rs.MoveLast
            'DataCombo1.Text = rs(0)
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
         EXITflg = ""
         
         
         
         
        End If
     Else
        If EXITflg <> "EXIT" Then
            MsgBox "No Record Found", vbInformation, head
            DataCombo2.ListField = ""
            DataCombo2.Text = ""
            EXITflg = "EXIT"
        End If
   End If
Case 522
If Repindex = 522 Then Command4.Visible = True: Command4.Top = Command1.Top
    'UserFooter1.ClearFooter
    'Command1.Visible = False
Case 199
    Set Rs = New Recordset
    Rs.Open "select  cast(contno as varchar)+' - '+ convert(varchar,contdt,103) AS Fields from rm_cont  where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  AND CANCELFLG IS not NULL AND CANCELDT IS not NULL and DIVCODE ='" & Divcode & "' order by contdt", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "Fields"
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo1.Text = Rs(0)
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
        End If
    End If
    DTPicker1.Top = DataCombo1.Left
Case 4
    Set Rs = New Recordset
    Rs.Open "select distinct ARRDATE as Fields from RM_ARRIVAL where  DIVCODE = '" & Divcode & "' and ARRDATE between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and (passed is null or passed = 'N') and DIVCODE ='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "Fields"
        If Not Rs.EOF Then
            Rs.MoveLast
            DataCombo2.Text = Rs(0)
        End If
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        Exit Sub
    End If
Case 77, 7733, 7734
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        'DataCombo2.Text = RS(0)
        DTPicker1.value = mfdate
        Rs.MoveLast
        DTPicker3.value = pdate
        'DataCombo3.Text = RS(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "select distinct a.catcd+'-'+b.catname as cat from rm_lot a,rm_cat b where LOTYEAR='" & Year(yfdate) & "' AND a.catcd=b.catcd and  a.divcode = '" & Divcode & "' union select 'A-All' from rm_lot", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "cat"
    DataCombo1.Text = Rs(0)
    End If
Case 7777, 77777

    If Repindex = 77777 Then
    Command4.Visible = True
    End If
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        'DataCombo2.Text = RS(0)
        DTPicker1.value = mfdate
        Rs.MoveLast
        DTPicker3.value = pdate
        'DataCombo3.Text = RS(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Set Rs = New Recordset
    Rs.Open "select distinct a.catcd+'-'+b.catname as cat from rm_lot a,rm_cat b where LOTYEAR='" & Year(yfdate) & "' AND a.catcd=b.catcd and  a.divcode = '" & Divcode & "' union select 'A-All' as cat from rm_lot", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
    Set DataCombo1.RowSource = Rs
    DataCombo1.ListField = "cat"
    DataCombo1.Text = Rs(0)
    End If
Case 66
    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt as lotdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Call DataCombo4_Change
Case 350
    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct docdt as lotdt from rm_issb where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' ", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
    End If
    Call DataCombo4_Change
Case 5
    Set Rs = New Recordset
    Rs.Open "select distinct isnull(PASSDT,0) arrdate from rm_arrival where  PASSED='Y' and passbl=0 and passdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' and isnull(quantity,0)-isnull(passbl,0) > 0 and DIVCODE ='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
    End If
Case 6
    Set Rs = New Recordset
    Rs.Open "select distinct arrdate from rm_arrival where divcode='" & Divcode & "' and upper(passed) = 'Y' and  lotno is not null and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "arrdate"
        Rs.MoveLast
        DataCombo2.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
    End If
Case 28, 29, 31, 32, 33, 35, 522, 511, 40, 300000
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation, head
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    DTPicker3.maxdate = pdate
    If Repindex <> 32 Then
        DataCombo2.Text = yfdate
        DataCombo3.Text = pdate
    ElseIf Repindex = 32 Then
        DataCombo2.Visible = False
        DataCombo3.Visible = False
        DTPicker2.Visible = True
        DTPicker3.Visible = True
        
        DTPicker2.value = mfdate
        DTPicker3.value = pdate
        DTPicker3.maxdate = pdate
        DTPicker2.maxdate = pdate
        Check1.Visible = True
        DTPicker2.tabIndex = 0
        DTPicker3.tabIndex = 1
        Check1.tabIndex = 2
        Combo2.tabIndex = 3
        If Repindex = 32 Then Command4.Visible = True: Command4.Top = Command1.Top

        DataCombo1.tabIndex = 4
        DCmbFLtN.tabIndex = 5
        DCmbTLtN.tabIndex = 6
        DataCombo5.tabIndex = 7
        DataCombo6.tabIndex = 8
        CmbRecType.tabIndex = 9
        Command1.tabIndex = 10
        Command2.tabIndex = 11
        
    End If
'    If REPINDEX = 40 Then
'        Kslcmpsel.Visible = True
'        Kslcmpsel.ConnStr = connectstring
'    End If
    Case 79
    lbl_fsup.Visible = True
    lbl_tsup.Visible = True
    dbcmb_fsup.Visible = True
    dbcmb_tsup.Visible = True
    lbl_fsup.Top = lbl_fsup.Top + 600
    lbl_tsup.Top = lbl_tsup.Top + 600
    dbcmb_fsup.Top = dbcmb_fsup.Top + 600
    dbcmb_tsup.Top = dbcmb_tsup.Top + 600
    Frame1.Height = Frame1.Height + 600
    SSTab1.Height = SSTab1.Height + 500
    Call suppliers
    
    End Select
If Repindex = 999 Or Repindex = 77 Or Repindex = 7733 Or Repindex = 7734 Or Repindex = 28 Or Repindex = 30 Or Repindex = 300000 Then
    If Repindex <> 28 Then Command4.Visible = True Else Command4.Visible = True
    If Repindex = 30 Then Command4.Visible = False
    Command4.Top = Command3.Top + 1970
    If Repindex = 30 Then
            SSTab1.Height = 3700
            'Frame1.Height = 3610
            repform1.Height = 3500
            CmbRecType.Top = DCmbTLtN.Top + 850
            LblRecType.Top = CmbRecType.Top
            LblRecType.Left = Label1.Left
            Label9.Top = DataCombo1.Top
            
            
             If (Me.WindowState = Normal) Then
                Me.Width = 10845
    
             End If
            Frame5.Visible = True
            Frame5.Top = 5200
            
        End If

End If
If Repindex = 99 Then
    Command4.Visible = True: Command4.Top = Command1.Top
End If
Exit Sub
DataCombo2_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo2_GotFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo2_LostFocus()
On Error GoTo DataCombo2_LostFocus_Error

If reptindex = 100 Then
If DataCombo1.Text <> "" And DataCombo1.Text <> "" Then
If IsDate(DataCombo2.Text) > IsDate(DataCombo3.Text) Then
MsgBox ("From Date Should be Greater than To Date")
DataCombo2.Text = ""
End If
End If
End If
If Repindex = 2 Then
    Call DataCombo1_GotFocus
End If

Exit Sub
DataCombo2_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo2_LostFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo3_LostFocus()
On Error GoTo DataCombo3_LostFocus_Error

Select Case Repindex
Case 100
        If DataCombo1.Text <> "" And DataCombo1.Text <> "" Then
        If IsDate(DataCombo2.Text) > IsDate(DataCombo3.Text) Then
        MsgBox ("From Date Should be Greater than To Date")
        DataCombo2.Text = ""
        End If
        End If
Case 27
     Set rs1 = New Recordset
     rs1.Open "select distinct a.lotdt ""lotdt"" from rm_lot a,rm_cat b where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
     If rs1.RecordCount <> 0 Then
       Set DataCombo4.RowSource = rs1
       DataCombo4.ListField = "lotdt"
       If Not rs1.EOF Then
         rs1.MoveFirst
         DataCombo4.Text = rs1(0)
       End If
     End If
End Select

Exit Sub
DataCombo3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo3_LostFocus of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DataCombo4_Change()
On Error GoTo DataCombo4_Change_Error

    If DataCombo4.Text <> Empty Then
'    Set Rs = New Recordset
'    Rs.Open "Select Distinct b.lotdt as lotdt from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt and a.DIVCODE ='" & Divcode & "'" & _
'            " order by b.lotdt", Cn, adOpenStatic, adLockBatchOptimistic
    
    If Repindex = 66 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt AND a.CATCD=  '" & Left(DataCombo7, 1) & "' and a.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10066 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_lot b Where LOTYEAR='" & Year(yfdate) & "' and b.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10067 Then
        Set Rs = New Recordset
        Rs.Open "select distinct gcode + ' - ' + gname as lotno,gcode from rm_god b Where DIVCODE ='" & Divcode & "' order by gcode", cn, adOpenStatic, adLockBatchOptimistic
        
    End If
    
    If Rs.RecordCount <> 0 Then
        Set DCmbFLtN.RowSource = Rs
        Set DCmbTLtN.RowSource = Rs
        DCmbFLtN.ListField = "lotno"
        DCmbTLtN.ListField = "lotno"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DCmbTLtN.Text = Rs(0)
    Else
        DCmbFLtN.ListField = Empty
        DCmbTLtN.ListField = Empty
        DCmbFLtN.Text = Empty
        DCmbTLtN.Text = Empty
    End If
    End If

Exit Sub
DataCombo4_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataCombo4_Change of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataCombo7_Change()
'If Repindex = 66 Then
'        Set Rs = New Recordset
'        Rs.Open "select a.catcd +' -- '+ a.catname AS FIELDS from rm_cat a,fa_tcmas b where a.fatc*=b.tc AND a.catcd<>'' order by a.catcd", Cn, adOpenStatic, adLockBatchOptimistic
'End If
'    If Rs.RecordCount > 0 Then
'    Set DataCombo7.RowSource = Rs
'    Me.DataCombo7.ListField = "FIELDS"
'    Rs.MoveFirst
'    Me.DataCombo7.Text = Rs("FIELDS")
'Else
'        DataCombo7.ListField = Empty
'        DataCombo7.ListField = Empty
'End If
    
     If Repindex = 66 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt AND (a.CATCD=  '" & Left(DataCombo7, 1) & "' or '" & Left(DataCombo7, 1) & "'='A') and a.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
     
    End If
    
    If Rs.RecordCount <> 0 Then
        Set DCmbFLtN.RowSource = Rs
        Set DCmbTLtN.RowSource = Rs
        DCmbFLtN.ListField = "lotno"
        DCmbTLtN.ListField = "lotno"
        Rs.MoveFirst
        If Not IsNull(Rs(0)) Then DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        If Not IsNull(Rs(0)) Then DCmbTLtN.Text = Rs(0)
    Else
        DCmbFLtN.ListField = Empty
        DCmbTLtN.ListField = Empty
        DCmbFLtN.Text = Empty
        DCmbTLtN.Text = Empty
    End If
    
   ' If Rs.RecordCount <> 0 Then
   '     Set DataCombo7.RowSource = Rs
   '     'Set DataCombo7.RowSource = Rs
   '     DataCombo7.ListField = Fields
   '     'DataCombo7.ListField = "lotno"
   '     'Rs.MoveFirst
   '     'If Not IsNull(Rs(0)) Then DataCombo7.Text = Rs(0)
   '     Rs.MoveFirst
   '     If Not IsNull(Rs(0)) Then DataCombo7.Text = Rs(0)
   ' Else
   '     DataCombo7.ListField = Empty
   '     DataCombo7.ListField = Empty
   '     'DataCombo7.Text = Empty
   '     'DataCombo7.Text = Empty
   ' End If
    
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

DTPicker1.MinDate = yfdate
DTPicker1.maxdate = pdate
If DTPicker1.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker1.value = mfdate


End If
If Repindex = 77777 Then
Call load_IssueChkListbox
End If
Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

DTPicker2.MinDate = yfdate
DTPicker2.maxdate = pdate
If DTPicker2.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker2.value = pdate
 DataCombo2.Text = DTPicker2.value
 Else
    DataCombo2.Text = DTPicker2.value
End If
    If Repindex = 66 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt AND a.CATCD=  '" & Left(DataCombo7, 1) & "' and a.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10066 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_lot b Where LOTYEAR='" & Year(yfdate) & "' and b.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10067 Then
        Set Rs = New Recordset
        Rs.Open "select distinct gcode + ' - ' + gname as lotno,gcode from rm_god b Where DIVCODE ='" & Divcode & "' order by gcode", cn, adOpenStatic, adLockBatchOptimistic
        
    End If
    If Repindex = 66 Or Repindex = 10066 Or Repindex = 10067 Then
        If Rs.RecordCount <> 0 Then
            Set DCmbFLtN.RowSource = Rs
            Set DCmbTLtN.RowSource = Rs
            DCmbFLtN.ListField = "lotno"
            DCmbTLtN.ListField = "lotno"
            Rs.MoveFirst
            If Not IsNull(Rs(0)) Then DCmbFLtN.Text = Rs(0)
            Rs.MoveLast
            If Not IsNull(Rs(0)) Then DCmbTLtN.Text = Rs(0)
        Else
            DCmbFLtN.ListField = Empty
            DCmbTLtN.ListField = Empty
            DCmbFLtN.Text = Empty
            DCmbTLtN.Text = Empty
        End If
    End If
Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub DTPicker3_Change()
On Error GoTo DTPicker3_Change_Error

DTPicker3.MinDate = yfdate
DTPicker3.maxdate = pdate
If DTPicker3.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker3.value = pdate
   DataCombo3.Text = DTPicker3.value
Else
    DataCombo3.Text = DTPicker3.value
End If
If Repindex = 77777 Then
Call load_IssueChkListbox
End If

 If Repindex = 66 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_arrival a,rm_lot b,rm_cont c where LOTYEAR='" & Year(yfdate) & "' AND a.arrno=b.arrno and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker3.value, "yyyy-mm-dd") & "' and b.lottype='A'  and a.contno=c.contno and a.contdt=c.contdt AND a.CATCD=  '" & Left(DataCombo7, 1) & "' and a.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10066 Then
        Set Rs = New Recordset
        Rs.Open "select distinct b.lotno as lotno from rm_lot b Where LOTYEAR='" & Year(yfdate) & "' and b.DIVCODE ='" & Divcode & "' order by b.lotno", cn, adOpenStatic, adLockBatchOptimistic
    ElseIf Repindex = 10067 Then
        Set Rs = New Recordset
        Rs.Open "select distinct gcode + ' - ' + gname as lotno,gcode from rm_god b Where DIVCODE ='" & Divcode & "' order by gcode", cn, adOpenStatic, adLockBatchOptimistic
        
    End If
    If Repindex = 66 Or Repindex = 10066 Or Repindex = 10067 Then
        If Rs.RecordCount <> 0 Then
            Set DCmbFLtN.RowSource = Rs
            Set DCmbTLtN.RowSource = Rs
            DCmbFLtN.ListField = "lotno"
            DCmbTLtN.ListField = "lotno"
            Rs.MoveFirst
            If Not IsNull(Rs(0)) Then DCmbFLtN.Text = Rs(0)
            Rs.MoveLast
            If Not IsNull(Rs(0)) Then DCmbTLtN.Text = Rs(0)
        Else
            DCmbFLtN.ListField = Empty
            DCmbTLtN.ListField = Empty
            DCmbFLtN.Text = Empty
            DCmbTLtN.Text = Empty
        End If
    End If
Exit Sub
DTPicker3_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker3_Change of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Form_Activate()
On Error GoTo Form_Activate_Error

' If EXITflg <> "" Then
'    Unload Me
'End If
intervalMinutes = -1
Exit Sub
Form_Activate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Activate of Form repform1", vbInformation, head
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
usrProgBarCntl1.Visible = False

Command1.Top = 6500
Command2.Top = 6500
Command7.Top = 6500
Screen.MousePointer = 0
Check3.Visible = False
Call openconnection
If Repindex = 522 And UCase(Trim(CustID)) <> "KALPATHARU" Then
    frmpurchase.Visible = True
Else
    frmpurchase.Visible = False
End If

DTPicker1.MinDate = yfdate
DTPicker2.MinDate = mfdate
DTPicker3.MinDate = mfdate
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
'SSTab1.Enabled = False
If UCase(CustID) = "COTTON" Then
    Check3.Visible = True
    Check3.Top = Check3.Top + 400
    Check3.Left = 6500
End If
UserFooter1.ClearFooter
Select Case Repindex
Case 3024, 3025
    Call ArriavlRegisterGodwise
Case 3435
    Call case3543
Case 1432
    DTPicker2.MinDate = yfdate
    DTPicker2.Visible = False
    DTPicker1.MinDate = yfdate
    DTPicker1.Visible = True
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DataCombo4.Visible = False
    Combo2.Visible = False
    DCmbFLtN.Visible = False
    DCmbTLtN.Visible = False
    Combo1.Visible = False
    Label4.Visible = False
    Label3.Visible = False
    Label2.Caption = "From Date"
    DTPicker2.value = pdate 'pdate
    DTPicker1.value = mfdate 'pdate
    DTPicker3.Visible = False
    'DTPicker2.MinDate = pdate
    'DTPicker2.MaxDate = pdate
     If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    Label5.Caption = "Stock Received and Consumption"
    CmbRecType.Visible = True
    LblRecType.Visible = True
    Label2.Top = Label2.Top + 100
    DTPicker1.Top = DTPicker1.Top + 100
    CmbRecType.Top = CmbRecType.Top + 200
    LblRecType.Top = LblRecType.Top + 200
    Me.Caption = "Stock received and consumption"
    Dim RecTypeRs1 As Recordset
    Set RecTypeRs1 = New Recordset
    RecTypeRs1.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' and Divcode='" & Divcode & "'" & _
                   " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype and b.Divcode='" & Divcode & "' Order by Type", cn, adOpenStatic, adLockBatchOptimistic
    CmbRecType.Clear
    I = 0
    While Not RecTypeRs1.EOF
        CmbRecType.AddItem UCase(RecTypeRs1!Type), I
        RecTypeRs1.MoveNext
        I = I + 1
    Wend
    CmbRecType.AddItem "ALL  -  ALL"
    If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
    
    Set Rs = New Recordset
    Rs.Open "select distinct a.catcd+'--'+a.catname as catcd from rm_cat a,rm_var b where a.catcd=b.catcd  Union select 'ALL-All' as catcd", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcd"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
    End If
    If Rs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    DTPicker1.tabIndex = 0
    DataCombo1.tabIndex = 1
    CmbRecType.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    
    
Case 105    '' Stock Statement - Item Ledger
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DataCombo4.Visible = False
    Combo2.Visible = False
    DCmbFLtN.Visible = False
    DCmbTLtN.Visible = False
    Combo1.Visible = True
    Label4.Visible = True
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"
    Label5.Caption = "Stock Statement - Item Ledger"
    Me.Caption = "Stock Statement - Item Ledger"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    Label4.Caption = "Variety"
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    Set Rs = New Recordset
    Rs.Open "select distinct a.catcd+'--'+a.catname as catcd from rm_cat a,rm_var b where a.catcd=b.catcd union select 'ALL--All' as catcd from rm_cat", cn, adOpenStatic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcd"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
    End If
    If Rs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        Call stockledgerItemwise
        If Repindex = 32 Then
            CmbRecType.Visible = True
            LblRecType.Visible = True
            SSTab1.Height = 3700
            Frame1.Height = 3610
            CmbRecType.Top = DCmbTLtN.Top + 850
            LblRecType.Top = CmbRecType.Top
            LblRecType.Left = Label1.Left
        End If
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
        CmbRecType.ListIndex = 0
Case 19111
        Label2.Caption = "From Date"
        Label3.Caption = "To   Date"
        Label5.Caption = "Datewise Issue List"
        Me.Caption = "Datewise Issue List"
        Command7.Visible = True
        Label1.Visible = False
        'Frame1.Visible = True
        Command4.Visible = True: Command4.Top = Command1.Top
        DataCombo1.Visible = False
        CmbRecType.Visible = True
        LblRecType.Visible = True
        LblRecType.Caption = "Lot Type"
        LblRecType.Left = Label2.Left
        CmbRecType.AddItem "A   - Own Process"
        CmbRecType.AddItem "T   - Job Work"
        CmbRecType.AddItem "ALL   - All"
        CmbRecType.ListIndex = 0
        Combo3.Visible = False
        Label1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
                    DTPicker2.tabIndex = 0
                    DTPicker3.tabIndex = 1
                    Combo1.tabIndex = 2
                    Command1.tabIndex = 3
                    Command2.tabIndex = 4
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = mfdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            DTPicker3.Visible = True
            DTPicker3.ZOrder
            DTPicker3.MinDate = yfdate
            DTPicker3.Refresh
            DTPicker3.maxdate = pdate
            DTPicker3.value = pdate
            DTPicker3.Left = DataCombo3.Left
            DTPicker3.Width = DataCombo3.Width
            DTPicker3.Top = DataCombo3.Top
            End If
        Combo1.Top = 1700
        Label4.Top = 1700
        Command7.Top = Command1.Top
        Combo1.Visible = True
        Label4.Visible = True
        Call IssLoad(Combo1)
        Combo1.ListIndex = 0
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 19222
        Label2.Caption = "Issue Date"
        Label3.Visible = False
        Label5.Caption = "Issue Slip"
        Me.Caption = "Issue Slip"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        Label2.Left = 650
        Label2.Top = 1150
        DataCombo2.Left = 2105
        DataCombo2.Top = 1130
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                    End If
        End If
        Command1.Top = SSTab1.Top + SSTab1.Height + 200
        Command2.Top = SSTab1.Top + SSTab1.Height + 200
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
Case 167
    Label5.Caption = "Cotton weight List"
    Me.Caption = "Cotton weight List"
    DataCombo2.Visible = False
    Label2.Visible = False
    DataCombo3.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = False
    Label1.Visible = True
    Label1.Caption = "Date"
    Label1.Left = 800
    Label1.Top = 1180
    DTPicker2.Top = 1180
    DTPicker2.Visible = True
    DTPicker2.value = pdate
    DTPicker2.maxdate = pdate
    Combo1.Top = 1750
    Label4.Top = 1750
    Combo1.Visible = False
    Label4.Visible = False
Case 888 'godownwise stock postion
    Label5.Caption = "Godownwise Stock Position"
    Me.Caption = "Godownwise Stock Position"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    ChkUsr.Visible = False
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.GODOWN from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and lotyear='" & Year(yfdate) & "' Order by a.GODOWN ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "godown"
    DCmbTLtN.ListField = "godown"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1200
    Combo2.Top = 1100
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1700
    LblTLtN.Top = 2200
    LblFLTN.Left = 240
    LblTLtN.Left = 240
    LblFLTN.Caption = "From Godown"
    LblTLtN.Caption = "To Godown"
Case 777
        Label2.Caption = "PO No."
        Label5.Caption = "Order Cancelation Memo"
        Me.Caption = "Order Cancelation Memo"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct cast(contno as numeric) as contno from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and cancelflg='Y' order by cast(contno as numeric)", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "contno"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                    End If
            End If
            Label3.Visible = False
Case 200
    Label5.Caption = "Lotwise Stock Ledger"
    Me.Caption = "Lotwise Stock Ledger"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    ChkUsr.Visible = True
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.LotNo from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "'  and rejflg='N' and A.OPFLG='Y' AND a.lotYEAR='" & Year(yfdate) & "'  order by a.LOTNo ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1200
    Combo2.Top = 1100
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1700
    LblTLtN.Top = 2200
    LblFLTN.Left = 240
    LblTLtN.Left = 240
Case 1998   'Transfer Register
        Label2.Caption = "Date"
        Label3.Caption = "To TransferDate"
        Label5.Caption = "Daily Transfer List"
        Me.Caption = "Daily Transfer List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        Frame1.Height = Frame1.Height - 1000
        SSTab1.Height = SSTab1.Height - 900
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(fnmfdate(pdate), "yyyy-mm-dd") & "' and '" & Format(fnmldate(pdate), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND ISSTYPE ='T' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = pdate 'pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
Case 18
        Label2.Caption = "From IssueDate"
        Label3.Caption = "To IssueDate"
        Label3.Visible = True
        Label5.Caption = "Cost Audit Report"
        Me.Caption = "Cost Audit Report"
        Label1.Visible = False
        Frame1.Visible = True
        DTPicker2.Visible = True
        DTPicker3.Visible = True
        DTPicker2.ZOrder
        DTPicker3.Width = DataCombo3.Width
        DTPicker3.Top = DTPicker3.Top + 50
        DTPicker2.Width = DataCombo3.Width
        DTPicker3.ZOrder
        DataCombo1.Visible = False
        
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          'DataCombo2.Text = rec(0)
                          DTPicker2.value = pdate
                          rec.MoveLast
                          DTPicker3.value = pdate
                          'DataCombo3.Text = rec(0)
                    End If
            End If
Case 19
'        Label2.Caption = "Date"


        Label2.Caption = "Date"
        Label3.Caption = "To IssueDate"
        Label5.Caption = "Issue List"
        Me.Caption = "Issue List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        Combo1.Top = 1300
        Label4.Top = 1325
        Combo1.Visible = True
        Label4.Visible = True
        Call IssLoad(Combo1)
        Combo1.ListIndex = 0
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where  divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
            DTPicker2.Visible = True
            'DTPicker2.ZOrder
             'DTPicker2.Refresh
            DTPicker2.MinDate = yfdate
            'DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            Frame1.Height = Frame1.Height - 800
            SSTab1.Height = SSTab1.Height - 700
            Combo1.Top = Combo1.Top - 200
            Label4.Top = Label4.Top - 200
            DTPicker2.tabIndex = 0
            If Repindex = 19 Then
            Combo3.Top = Combo3.Top - 700
            Combo3.Visible = True
            Label1.Visible = True
            Label1.Top = Label1.Top - 100
            End If
            LblRecType.Visible = True
            LblRecType.Top = CmbRecType.Top
            LblRecType.Left = Label1.Left
            Set RecTypeRs = New Recordset
        RecTypeRs.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
        Combo3.Clear
        I = 0
        While Not RecTypeRs.EOF
            Combo3.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
        Wend
        Combo3.AddItem "ALL  -  ALL"
        If Combo3.ListCount > 0 Then Combo3.ListIndex = 0
            If (Me.WindowState = Normal) Then
                Me.Width = 10845
            End If
        Command4.Visible = False
        Command4.Top = Command1.Top
Case 20
        Label2.Caption = "From Date"
        Label3.Caption = "To   Date"
        Label5.Caption = "Datewise Receipts List"
        Me.Caption = "Datewise Receipts List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct lotdt from rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' and DIVCODE ='" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
  
Case 52
        Label2.Caption = "Category"
        Label1.Caption = "Date"
        Label5.Caption = "Open Key Loan"
        Me.Caption = "Open Key Loan"
        Label1.Visible = True
        Label2.Visible = True
        Frame1.Visible = True
        DataCombo1.Visible = True
        DataCombo3.Visible = False
        Label3.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "SELECT DISTINCT CATNAME FROM RM_CAT", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
            Set DataCombo2.RowSource = rec
            DataCombo2.ListField = "catname"
            If Not rec.EOF Then
                rec.MoveFirst
                DataCombo2.Text = rec(0)
            End If
        End If
        Set rec = New Recordset
        rec.Open "SELECT DISTINCT LOTDT FROM RM_LOT where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and  divcode='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
        If rec.RecordCount <> 0 Then
            Set DataCombo1.RowSource = rec
            DataCombo1.ListField = "LOTDT"
            If Not rec.EOF Then
                rec.MoveFirst
                DataCombo1.Text = rec(0)
            End If
        End If
Case 99
    Label5.Caption = "VarietyWise Receipt List"
    Me.Caption = "VarietyWise Receipt List"
    Label1.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    Check1.Visible = True
    DataCombo1.Visible = False
    repform1.Height = repform1.Height - 900
    'Frame1.Height = Frame1.Height - 900
    SSTab1.Height = SSTab1.Height - 950
     If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    Call DataCombo2_GotFocus
    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct arrdt as lotdt from rm_LOT where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
    Set DataCombo2.RowSource = Rs
    Set DataCombo3.RowSource = Rs
    DataCombo2.ListField = "lotdt"
    DataCombo3.ListField = "lotdt"
    Rs.MoveFirst
    If Not IsNull(Rs(0)) Then DataCombo2.Text = Rs(0)
    Rs.MoveLast
    If Not IsNull(Rs(0)) Then DataCombo3.Text = Rs(0)
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = mfdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            DTPicker3.Visible = True
            DTPicker3.ZOrder
            DTPicker3.MinDate = yfdate
            DTPicker3.Refresh
            DTPicker3.maxdate = pdate
            DTPicker3.value = pdate
            DTPicker3.Left = DataCombo3.Left
            DTPicker3.Width = DataCombo3.Width
            DTPicker3.Top = DataCombo3.Top
            DTPicker2.tabIndex = 0
            DTPicker3.tabIndex = 1
            Command1.tabIndex = 2
            Command2.tabIndex = 3
            
            
    Else
    MsgBox "No Record found", vbInformation
    DataCombo2.Text = ""
    DataCombo2.ListField = ""
    DataCombo3.Text = ""
    DataCombo3.ListField = ""
    
    End If
Case 100
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Lotwise Lot Stock"
        Me.Caption = "Lotwise Lot Stock"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        DTPicker2.Top = 1080
        DTPicker2.Left = 1695
        DTPicker1.Top = 600
        DTPicker1.Left = 1695
        rec.Open "select distinct lotdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' and divcode='" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        DataCombo3.Visible = False
        DataCombo2.Visible = False
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.Width = 2055
        DTPicker2.Width = 2055
        DTPicker1.value = Format(fnmfdate(pdate), "dd/mm/yyyy")
        DTPicker2.value = pdate
Case 78
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Detailed Receipt List"
        Me.Caption = "Detailed Receipt List"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
Case 228, 328, 428, 7234
        
        If Repindex = 7234 Then
            Command4.Left = Command4.Left - 1800
            Command2.Left = Command2.Left + 500
        End If
        Call Purchase_Order
 Case 2228, 22228
        Call pendingbills
 Case 89 'PURCHASE REGISRER AS ON DATE
        Label2.Caption = "From Date"
        Label3.Visible = False
        Label5.Caption = "Purchase Order"
        Me.Caption = "Purchase Order"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Label2.Top = 1100
        DataCombo2.Top = 1000
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by contdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "contdt"
                DataCombo3.ListField = "contdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
Case 352
        Label2.Caption = "PO No."
        Label5.Caption = "Sales Confirmation Memo"
        Me.Caption = "Sales Confirmation Memo"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Frame1.Height = Frame1.Height - 500
        SSTab1.Height = SSTab1.Height - 400
'        Command1.Top = Command1.Top - 1500
'        Command2.Top = Command2.Top - 1500
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct cast(contno as numeric) as contno from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by cast(contno as numeric)", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                DataCombo2.ListField = "contno"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                    End If
            End If
            Label3.Visible = False
Case 79
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Frame1.Height = Frame1.Height - 100
        SSTab1.Height = SSTab1.Height - 50
        Label5.Caption = "Lot wise Weight Difference"
        Me.Caption = "Lot wise Weight Difference"
        Label1.Visible = False
        Frame1.Visible = True
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.ZOrder
        DTPicker2.ZOrder
        DTPicker2.Width = DTPicker1.Width
        DTPicker2.Top = DTPicker2.Top + 500
        DTPicker1.MinDate = yfdate
        DTPicker1.maxdate = yldate
        DTPicker1.value = mfdate
        DTPicker2.MinDate = yfdate
        DTPicker2.maxdate = yldate
        DTPicker2.value = yldate
        'lbl_fsup.Visible = True
        'lbl_tsup.Visible = True
        dbcmb_fsup.Visible = True
        dbcmb_tsup.Visible = True
        CmbRecType.Visible = False
       
        Set rec = New Recordset
        rec.Open "select distinct arrdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "' order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "arrdt"
                DataCombo3.ListField = "arrdt"
                    If Not rec.EOF Then
                            rec.MoveFirst
                          'DataCombo2.Text = rec(0)
                          DTPicker1.value = mfdate
                          rec.MoveLast
                          DTPicker2.value = pdate
                          'DataCombo3.Text = rec(0)
                    End If
            End If
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = True
    DataCombo3.Visible = True
    Call DataCombo2_GotFocus
     If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    Command1.tabIndex = 2
    Command2.tabIndex = 3
    DCmbFLtN.tabIndex = 4
    DCmbTLtN.tabIndex = 5
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Top = LblFLTN.Top + 700
    LblTLtN.Top = LblTLtN.Top + 700
    DCmbFLtN.Top = LblFLTN.Top
    DCmbTLtN.Top = LblTLtN.Top
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and lotyear='" & Year(yfdate) & "' Order by a.LOTNo ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    
Case 101
        Label2.Caption = "From Date"
        Label3.Caption = "  To Date"
        Label5.Caption = "Varierty Wise Lot Stock Ledger"
        Me.Caption = "Varierty Wise Lot Stock Ledger"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct lotdt from rm_lot WHERE LOTYEAR ='" & Year(yfdate) & "' and DIVCODE ='" & Divcode & "' order by lotdt", cn, adOpenStatic, adLockBatchOptimistic
        DataCombo2.Visible = False
        DataCombo3.Visible = False
        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker3.Visible = True
        DTPicker3.ZOrder
        DTPicker3.value = pdate
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
     DataCombo1.Visible = True
     Label1.Visible = True
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
         Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
            Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo2.AddItem "A   -  All"
     End If
Case 111
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Stock Ledger - Varietywise"
        Me.Caption = "Stock Ledger - Varietywise"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        DTPicker2.Top = 1080
        DTPicker2.Left = 1695
        DTPicker1.Top = 600
        DTPicker1.Left = 1695
        rec.Open "select distinct arrdt from rm_lot where LOTYEAR ='" & Year(yfdate) & "' and divcode='" & Divcode & "'  AND ARRDT IS NOT NULL order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
        DataCombo3.Visible = False
        DataCombo2.Visible = False
        DTPicker1.Visible = True
        DTPicker2.Visible = True
        DTPicker1.Width = 2055
        DTPicker2.Width = 2055
        DTPicker1.MinDate = yfdate
        DTPicker1.maxdate = yldate
        DTPicker2.MinDate = yfdate
        DTPicker2.maxdate = yldate
        DTPicker1.value = Format(fnmfdate(pdate), "dd/mm/yyyy")
        DTPicker2.value = pdate
Case 102
        Label2.Caption = "From ArrivalDate"
        Label3.Caption = "To ArrivalDate"
        Label5.Caption = "DateWise Local/UpCountry Lot Stock"
        Me.Caption = "DateWise Local/UpCountry Lot Stock"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo1.Visible = False
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct arrdt from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "' order by arrdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "arrdt"
                DataCombo3.ListField = "arrdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker2.value = pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            DTPicker3.Visible = True
            DTPicker3.ZOrder
            DTPicker3.MinDate = yfdate
            DTPicker3.Refresh
            DTPicker3.maxdate = pdate
            DTPicker3.value = pdate
            DTPicker3.Left = DataCombo3.Left
            DTPicker3.Width = DataCombo3.Width
            DTPicker3.Top = DataCombo3.Top
            DTPicker1.MinDate = yfdate
            DTPicker1.maxdate = yldate
            DTPicker2.MinDate = yfdate
            DTPicker2.maxdate = yldate
            End If
Case 1
    Label5.Caption = "Daily Issue List"
    Me.Caption = "Daily Issue List"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo1_GotFocus
    If EXITflg = "" Then
        Call DataCombo2_GotFocus
    Else
        Unload Me
        Exit Sub
    End If
Case 2
    If Repindex = 2 Then
    Label5.Caption = "Mill Lotwise Stock Position"
    Me.Caption = "Mill Lotwise Stock Position"
    Else
    Label5.Caption = "Varietywise Stock With Test Result"
    Me.Caption = "Varietywise Stock With Test Result"
    End If
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ChkUsr.Visible = False
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.tabIndex = 0
    Combo2.tabIndex = 1
    DataCombo2.tabIndex = 2
    DCmbFLtN.tabIndex = 3
    DCmbTLtN.tabIndex = 4
    CmbRecType.tabIndex = 5
    Command1.tabIndex = 6
    Command2.tabIndex = 7
    
    DTPicker1.ZOrder
    DTPicker1.Refresh
    DTPicker1.MinDate = yfdate
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    DataCombo1.Visible = True
   
    Call DataCombo1_GotFocus
    DataCombo1.Visible = False
 
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.LotNo from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and lotyear='" & Year(yfdate) & "' Order by a.LOTNo ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1170
    Combo2.Top = 1150
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1600
    LblTLtN.Top = 2100
    LblFLTN.Left = 240
    LblTLtN.Left = 240
    'Frame1.Height = Frame1.Height - 40
    SSTab1.Height = SSTab1.Height
    SSTab1.Width = SSTab1.Width + 30

    CmbRecType.Visible = True
    LblRecType.Visible = True
    CmbRecType.Top = DCmbTLtN.Top + 450
    LblRecType.Top = CmbRecType.Top
    LblRecType.Left = Label1.Left
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
    

Case 3004
    Call SupplierStockPostion

Case 3
    Label5.Caption = "Pending Orders as on Datewise"
    Me.Caption = "Pending Orders as on Datewise"
    Label1.Visible = True
    ChkUsr.Visible = False
    DataCombo1.Visible = True
     EXITflg = ""
    ''''''Label1.Caption = "To Date"
    Label2.Caption = "As on Date"
    Label3.Visible = False
    DataCombo3.Visible = False
    DataCombo1.Width = 3000
    DataCombo1.Visible = False ''''''''''''
    Label1.Visible = False '''''''''''''
    DataCombo2.Width = 3000
    Call DataCombo2_GotFocus
    If Command2.TabStop = True Then
    DataCombo2.tabIndex = 0
    End If
    DataCombo2.tabIndex = 0
    Command1.tabIndex = 1
    Command2.tabIndex = 2
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    repform1.Height = repform1.Height - 1200
    'Frame1.Height = Frame1.Height - 1200
    SSTab1.Height = SSTab1.Height - 1100
    Command4.Visible = True
    Command4.Top = Command1.Top
'    Command1.Top = Command1.Top - 3000
'    Command2.Top = Command2.Top - 3000
    
    
Case 199
    DTPicker1.MinDate = yfdate
    DTPicker3.MinDate = yfdate
    DTPicker1.value = mfdate
    DTPicker3.value = pdate
    DTPicker1.maxdate = pdate
    DTPicker3.maxdate = pdate
    CmbRecType.Visible = False
    Label5.Caption = "Order cancellation"
    Me.Caption = "Order cancellation"
    Label1.Visible = True
    DTPicker1.Visible = True
    Label1.Caption = "To Date"
    Label2.Caption = "From Date"
    Label3.Visible = False
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = False
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker1.Width = 3000
    DTPicker3.Width = 3000
    'Call DataCombo2_GotFocus
    'Frame1.Height = Frame1.Height - 200
    repform1.Height = repform1.Height - 200
    SSTab1.Height = SSTab1.Height - 200
    DTPicker1.Top = DTPicker1.Top '- 1000
    DTPicker3.Top = DTPicker3.Top + 200
    Label1.Top = Label1.Top - 250
'    Command1.Top = Command1.Top - 1200
'    Command2.Top = Command2.Top - 1200
        Label4.Visible = True
        Label4.Caption = "ArrivalType"
        Label4.Top = Label4.Top
        Combo1.Visible = True
        Combo1.Clear
        Combo1.AddItem "P-Packwise"
        Combo1.AddItem "K-Kgswise"
        Combo1.ListIndex = 0
        Combo1.Top = Combo1.Top
        DTPicker1.tabIndex = 0
        DTPicker3.tabIndex = 1
        Combo1.tabIndex = 2
'        Command1.tabIndex = 3
'        Command2.tabIndex = 4
        Combo1.Width = DTPicker2.Width
        Combo1.Width = DTPicker1.Width
        Command4.Visible = True
        Command4.Top = Command1.Top
        
   If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    
    
Case 77, 7733, 7734
    Label4.Visible = False
    Combo1.Visible = False
    Set rec = New Recordset
    rec.Open "select distinct purtype+ '-'+purdesc from rm_purtype", cn, adOpenStatic, adLockBatchOptimistic
    If rec.RecordCount > 0 Then
    rec.MoveFirst
    Do While Not rec.EOF
    Combo1.AddItem (rec(0))
    rec.MoveNext
    Loop
    Combo1.ListIndex = 0
    End If
    Me.Caption = "Purchase Day Book"
    Label5.Caption = "Purchase Day Book"
    If Repindex = 7733 Then
    Label5.Caption = "Receipt List"
    ElseIf Repindex = 7734 Then
    Label5.Caption = "Cotton Cost"
    ElseIf Repindex = 7234 Then
    Label5.Caption = "PO Status"
    Me.Caption = "PO Status"
    Combo1.Visible = False
    Label1.Visible = False
    Command3.Visible = False
    DataCombo1.Visible = False
    Command1.Visible = False
    End If

  
    CmbRecType.Visible = False
    DTPicker1.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker1.tabIndex = 0
    DTPicker3.tabIndex = 1
    DataCombo1.tabIndex = 2
    Combo1.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5
    Call DataCombo2_GotFocus
    
    DTPicker1.Left = DataCombo2.Left
    DTPicker1.Width = DataCombo2.Width
    DTPicker1.Top = DataCombo2.Top

    DTPicker3.Left = DataCombo3.Left
    DTPicker3.Width = DataCombo3.Width
    DTPicker3.Top = DataCombo3.Top
    
    If Repindex = 77 Then
        If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
            Command9.Visible = True
            Command9.Top = Command1.Top
            Command9.Left = Command1.Left - 1000
            Command4.Top = Command1.Top
        End If
    End If

 If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 7777
    Label4.Visible = True
    Combo1.Visible = True
    Command3.Visible = True
    Command3.Top = Command1.Top
    Set rec = New Recordset
    rec.Open "select distinct purtype+ '-'+purdesc from rm_purtype", cn, adOpenStatic, adLockBatchOptimistic
    If rec.RecordCount > 0 Then
    rec.MoveFirst
    Do While Not rec.EOF
    Combo1.AddItem (rec(0))
    rec.MoveNext
    Loop
    Combo1.ListIndex = 0
    End If
    Label5.Caption = "Purchase Day Book"
    Me.Caption = "Purchase Day Book"
    DTPicker1.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker1.tabIndex = 0
    DTPicker3.tabIndex = 1
    DataCombo1.tabIndex = 2
    Combo1.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5
    
    Call DataCombo2_GotFocus
    
    DTPicker1.Left = DataCombo2.Left
    DTPicker1.Width = DataCombo2.Width
    DTPicker1.Top = DataCombo2.Top

    DTPicker3.Left = DataCombo3.Left
    DTPicker3.Width = DataCombo3.Width
    DTPicker3.Top = DataCombo3.Top
    Label4.Visible = False
    
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
    
    CmbRecType.Visible = True
    LblRecType.Visible = True
    Combo1.Visible = False
    If (Me.WindowState = Normal) Then
        Me.Width = 10845
    End If
Case 77777
    Call form_Load_Temp
Case 787878787
    Label4.Visible = True
    Combo1.Visible = True
    Command3.Visible = True
    Command4.Visible = True
    Command4.Caption = "Customized"
    Command3.Top = Command1.Top
    Command4.Top = Command1.Top
    Command7.Visible = True
    
    
    Frame5.Visible = False
    'Set rec = New Recordset
    'rec.Open "select distinct purtype+ '-'+purdesc from rm_purtype", Cn, adOpenStatic, adLockBatchOptimistic
    'If rec.RecordCount > 0 Then
    'rec.MoveFirst
    'Do While Not rec.EOF
    
    'Combo1.AddItem (rec(0))
    'rec.MoveNext
    'Loop
    'Combo1.ListIndex = 0
    'End If
    Label5.Caption = "Rawmaterial Purchase Day Book"
    Me.Caption = "Rawmaterial Purchase Day Book"
    
    Label1.Visible = False
    DataCombo1.Visible = False
    DTPicker1.Visible = True
    DTPicker3.Visible = True
    DTPicker1.ZOrder
    DTPicker3.ZOrder
    DTPicker1.tabIndex = 0
    DTPicker3.tabIndex = 1
    DataCombo1.tabIndex = 2
    Combo1.tabIndex = 3
    Command1.tabIndex = 4
    Command2.tabIndex = 5
    Command3.Caption = "Crystal"
    
    Call DataCombo2_GotFocus
    
    DTPicker1.Left = DataCombo2.Left
    DTPicker1.Width = DataCombo2.Width
    DTPicker1.Top = DataCombo2.Top
    DTPicker1.value = mfdate
DTPicker3.value = pdate
    DTPicker3.Left = DataCombo3.Left
    DTPicker3.Width = DataCombo3.Width
    DTPicker3.Top = DataCombo3.Top
    Label4.Visible = False
    LblRecType.Visible = False
    Combo1.Visible = False
    If (Me.WindowState = Normal) Then
        Me.Width = 10845
    End If
    CmbRecType.Visible = False
    lbl_fsup.Visible = False
    lbl_tsup.Visible = False
    'dbcmb_fsup.Visible = True
    'dbcmb_tsup.Visible = True
    'Call suppliers
    Command4.Width = 1200
    Command7.Top = 6500
    
Case 4              'Arrivals to be inspected
    Label5.Caption = "Arrivals to be Inspected"
    Me.Caption = "Arrivals to be Inspected"
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker2.MinDate = yfdate
        DTPicker2.Refresh
        DTPicker2.maxdate = pdate
        DTPicker2.value = pdate
        DTPicker2.Left = DataCombo2.Left
        DTPicker2.Width = DataCombo2.Width
        DTPicker2.Top = DataCombo2.Top
         If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 5            'Rejected Arrivals
    Label5.Caption = "Rejected Arrivals"
    Me.Caption = "Rejected Arrivals"
    Label1.Visible = False
    DataCombo1.Visible = False
    Label3.Visible = True
    Label3.Caption = "Supplier"
    DataCombo3.Visible = True
    DataCombo3.Move (1700)
    Call DataCombo2_GotFocus
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
'    Command1.Top = Command1.Top - 1500
'    Command2.Top = Command2.Top - 1500
    Set rs1 = New Recordset
    rs1.Open "select distinct a.slname + ' - '+ a.slcode as slname from fa_slmas a,rm_arrival b where a.slcode=b.supcd and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "'and '" & Format(pdate, "yyyy-mm-dd") & "' and b.DIVCODE ='" & Divcode & "'", cn, adOpenStatic, adLockBatchOptimistic
     If rs1.RecordCount <> 0 Then
        Set DataCombo3.RowSource = rs1
        DataCombo3.ListField = "slname"
        rs1.MoveLast
        DataCombo3.Text = rs1(0)
     Else
        MsgBox "No record found", vbInformation
        DataCombo3.ListField = " "
        DataCombo3.Text = " "
     End If
         DTPicker2.Visible = True
         DTPicker2.ZOrder
         DTPicker2.MinDate = yfdate
         DTPicker2.Refresh
         DTPicker2.maxdate = pdate
         DTPicker2.value = pdate
         DTPicker2.Left = DataCombo2.Left
         DTPicker2.Width = DataCombo2.Width
         DTPicker2.Top = DataCombo2.Top
          If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 6
    Label5.Caption = "Weighment To Be Entered"
    Me.Caption = "Weighment To Be Entered"
    Label1.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo2.Left
    DTPicker2.Width = DataCombo2.Width
    DTPicker2.Top = DataCombo2.Top
     If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
Case 28, 29, 30, 31, 32, 33, 35, 128, 88, 522, 880, 511, 289, 40, 290, 291, 300000
    EXITflg = ""
    If Repindex = 28 Then
        Label5.Caption = "Stock Statement - Lotwise"
        Me.Caption = "Stock Statement - Lotwise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 300000 Then
        Label5.Caption = "Varietywise Stock With Test Result"
        Me.Caption = "Varietywise Stock With Test Result"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 40 Then
        Label5.Caption = "Stock Statement - Lotwise"
        Me.Caption = "Stock Statement - Lotwise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 30 Then
        Label5.Caption = "Stock Statement - Varietywise"
        Me.Caption = "Stock Statement - Varietywise"
        Command1.Caption = "Report"
        Command4.Visible = False
        
        Frame5.Visible = False
        If (Me.WindowState = Normal) Then
            Me.Width = 10845
        End If
    ElseIf Repindex = 32 Then
        Label5.Caption = "Stock Statement - Godownwise"
        Me.Caption = "Stock Statement - Godownwise"
        If (Me.WindowState = Normal) Then
            Me.Width = 10845
        End If
    ElseIf Repindex = 522 Then
        Label5.Caption = "Lotwise Stock Transactions"
        Me.Caption = "Lotwise Stock Transactions"
        If (Me.WindowState = Normal) Then
            Me.Width = 10845
        End If
    ElseIf Repindex = 290 Or Repindex = 289 Or Repindex = 291 Then
        If Repindex = 290 Then
            Label5.Caption = "Raw Material Stock Statement - Varietywise"
            Me.Caption = "Raw Material Stock Statement  - Varietywise"
        ElseIf Repindex = 289 Then
            Label5.Caption = "Raw Material Stock Statement - Lotwise"
            Me.Caption = "Raw Material Stock Statement - Lotwise"
        Else
            Label5.Caption = "Raw Material Stock Statement - Issue Typewise"
            Me.Caption = "Raw Material Stock Statement  - Issue Typewise"
        End If
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    
    End If
    
    If Repindex = 28 Or Repindex = 40 Or Repindex = 30 Or Repindex = 32 Or Repindex = 522 Or Repindex = 289 Or Repindex = 290 Or Repindex = 291 Or Repindex = 300000 Then
        CmbRecType.Visible = True
        LblRecType.Visible = True
        CmbRecType.Top = DCmbTLtN.Top + 300
        LblRecType.Top = CmbRecType.Top
        LblRecType.Left = Label1.Left
        

''    If (Me.WindowState = Normal) Then
''    Me.Width = 10845
'    End If
        
        If Repindex = 32 Then
            SSTab1.Height = 3700
            'Frame1.Height = 3610
            CmbRecType.Top = DCmbTLtN.Top + 850
            LblRecType.Top = CmbRecType.Top
            LblRecType.Left = Label1.Left
             If (Me.WindowState = Normal) Then
                Me.Width = 10845
    
             End If
    
        End If
        
        Set RecTypeRs = New Recordset
        RecTypeRs.Open " Select  'ALL  -  ALL' as Type from RM_Lot " & _
                       " UNION Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype oRDER BY tYPE", cn, adOpenStatic, adLockBatchOptimistic
        CmbRecType.Clear
        I = 0
        While Not RecTypeRs.EOF
            CmbRecType.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
        Wend
        If Repindex <> 291 And Repindex <> 300000 Then CmbRecType.AddItem "ALL  -  ALL"
        If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
        
        
    ElseIf Repindex = 522 Then
        Label5.Caption = "Lotwise Stock Ledger"
        Me.Caption = "Lotwise Stock Ledger"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 29 Then
        Label5.Caption = "Detailed Stock Statement"
        Me.Caption = "Detailed Stock Statement"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 30 Then
        Label5.Caption = "Stock Statement - Varietywise"
        Me.Caption = "Stock Statement - Varietywise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 88 Then
        Label5.Caption = "Stock Statement - Stationwise"
        Me.Caption = "Stock Statement - Stationwise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 880 Then
        Label5.Caption = "Stock Statement Stationwise - Lotwise"
        Me.Caption = "Stock Statement Stationwise - Lotwise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 31 Then
        Label5.Caption = "Weekly Stock Statement"
        Me.Caption = "Weekly Stock Statement"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 32 Then
        Label5.Caption = "Godownwise Stock Statement"
        Me.Caption = "Godownwise Stock Statement"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 33 Then
        Label5.Caption = "Closing Stock - Varietywise"
        Me.Caption = "Closing Stock - Varietywise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 35 Then
        Label5.Caption = "Closing Stock - Mixgroupwise"
        Me.Caption = "Closing Stock - Mixgroupwise"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 115 Then
        Label5.Caption = "Stock - Abstract Report"
        Me.Caption = "Stock - Abstract Report"
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 128 Then
    Label5.Caption = "Stock Statement - Balewise"
    Me.Caption = "Stock Statement - Balewise"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 511 Then
    Label5.Caption = "Varietywise Stock Ledger"
    Me.Caption = "Varietywise Stock Ledger"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ElseIf Repindex = 289 Then
    Label5.Caption = "Cotton Stock Statement"
    Me.Caption = "Cotton Stock Statement"
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
'    Command1.Top = Command1.Top - 1500
'    Command2.Top = Command2.Top - 1500
    End If
    Call DataCombo2_GotFocus
    If Repindex = 32 Then
      Call DataCombo1_GotFocus
      
    End If
    DataCombo1.Visible = False
    Combo2.Visible = True
    Combo2.ZOrder
    If EXITflg = "EXIT" Then
        Unload Me
        Exit Sub
    Else
        Call DataCombo2_GotFocus
    End If
    If Repindex = 30 Or Repindex = 28 Or Repindex = 88 Or Repindex = 522 Or Repindex = 880 Or Repindex = 511 Or Repindex = 289 Or Repindex = 40 Or Repindex = 291 Or Repindex = 300000 Then
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo2.tabIndex = 2
    DCmbFLtN.tabIndex = 3
    DCmbTLtN.tabIndex = 4
    CmbRecType.tabIndex = 5
    Command1.tabIndex = 6
    Command4.tabIndex = 7
    Command2.tabIndex = 8
    
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
         Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
            Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo2.AddItem "ALL   -  All"
     End If
     End If
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"
    Set rs1 = New Recordset
    rs1.Open "select DISTINCT a.LotNo from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.LOTNo ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = rs1
    Set DCmbTLtN.RowSource = rs1
    DCmbFLtN.ListField = "lotno"
    DCmbTLtN.ListField = "Lotno"
    If rs1.EOF <> True Then
        rs1.MoveFirst
        DCmbFLtN.Text = rs1(0)
        rs1.MoveLast
        DCmbTLtN.Text = rs1(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = False
    LblFLTN.Caption = "From/To Mill Lot No."
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 2060
    DCmbFLtN.Width = 1500
    DCmbTLtN.Left = 3475
    DCmbTLtN.Width = DCmbFLtN.Width + 80
    DCmbTLtN.Top = DCmbFLtN.Top
    LblFLTN.Top = 2100 + 20
    LblFLTN.Left = 240
   ' If Repindex = 30 And UCase(Trim(CustID)) <> "KALPATHARU" Then Command4.Visible = False
   If Repindex = 30 Then Command4.Visible = False
    If Repindex = 290 Then VARIETYSTOCK
    If Repindex = 291 Then ISSUESTOCK
    
    
    If Repindex = 32 Then
            DataCombo5.Visible = True
            DataCombo6.Visible = True
            
            Label7.Visible = True
            Label8.Visible = True
            
            Set rsg = New Recordset
            rsg.Open "select distinct Godown + '-' + GNAME as Godown from rm_lot A,RM_GOD B where A.GODOWN=B.GCODE AND lotyear='" & Year(yfdate) & "' and A.DIVCODE=B.DIVCODE AND A.divcode='" & Divcode & "'", DB, adOpenStatic
            
            Set DataCombo5.RowSource = rsg
            DataCombo5.ListField = "Godown"
            rsg.MoveFirst
            DataCombo5.Text = rsg(0)
            Set DataCombo6.RowSource = rsg
            DataCombo6.ListField = "Godown"
            rsg.MoveLast
            DataCombo6.Text = rsg(0)
    
    End If
    
        If Repindex = 30 Then
            DataCombo5.Visible = True
            DataCombo6.Visible = True
            Label7.Caption = "Variety From"
            Label7.Visible = True
            Label8.Visible = True
            Command1.Caption = "Chart"
            Set rsg = New Recordset
            rsg.Open "select distinct a.varcode + ' - '+ a.varname AS variety from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "'", DB, adOpenStatic
            
            Set DataCombo5.RowSource = rsg
            DataCombo5.ListField = "variety"
            If Not rsg.EOF Then
             rsg.MoveFirst
            
             DataCombo5.Text = rsg(0)
             Set DataCombo6.RowSource = rsg
             DataCombo6.ListField = "variety"
             rsg.MoveLast
             DataCombo6.Text = rsg(0)
            End If
            If UCase(Trim(CustID)) <> "KALPATHARU" Then
               ' Command4.Visible = True
            Else
                Command4.Visible = False
            End If
            Command2.Top = 5200 + 700
            Command1.Top = 5200 + 700
            Command4.Top = 5200 + 700
    End If
    
    If Repindex = 40 Or Repindex = 290 Then
        Command4.Visible = True
        Command4.Top = Command1.Top
    End If
    If Repindex = 300000 Then Command4.Visible = Fals
    
Case 66, 10066, 10067
    If Repindex <> 10066 Then
        Label5.Caption = "Raw Material weight List"
        Me.Caption = "Raw Material weight List"
    Else
        Label5.Caption = "Rejection Stock Report"
        Me.Caption = "Rejection Stock Report"
    End If
    
    If Repindex = 10067 Then
        Label5.Caption = "Godown Capacity Report"
        Me.Caption = "Godown Capacity Report"
    End If
   
    Label1.Visible = False
    Label2.Visible = True
    Label3.Visible = True
    DataCombo7.Top = 550
    
    DTPicker2.Top = 1000
    Label2.Top = DTPicker2.Top
    DTPicker3.Top = 1430
    Label3.Top = DTPicker3.Top
    
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.MinDate = yfdate
    DTPicker3.MinDate = yfdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    DTPicker3.Left = DTPicker2.Left
    Label3.Left = 280
    Label2.Left = 280
    DTPicker2.Width = DCmbFLtN.Width
    DTPicker3.Width = DCmbFLtN.Width
    CmbRecType.Visible = False: Call LoadObject
    Label6.Visible = True
    DataCombo4.Visible = True
    DataCombo4.Visible = False
    DTPicker2.Width = DTPicker3.Width
'    Set rs1 = New Recordset
'    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where LOTYEAR='" & Year(yfdate) & "' and r.DIVCODE ='" & Divcode & "'  AND a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", Cn, adOpenStatic
'    If rs1.RecordCount <> 0 Then
'        Set DataCombo4.RowSource = rs1
'        DataCombo4.ListField = "slname"
'        rs1.MoveFirst
'        DataCombo4.Text = rs1(0)
'    End If
    
    
    If Repindex = 66 Then
        Set Rs = New Recordset
        Rs.Open "select a.catcd +' -- '+ a.catname AS FIELDS from rm_cat a left join fa_tcmas b on a.fatc=b.tc Where a.catcd<>'' order by a.catcd", cn, adOpenStatic, adLockBatchOptimistic
    End If
        If Rs.RecordCount > 0 Then
        Set DataCombo7.RowSource = Rs
        Me.DataCombo7.ListField = "FIELDS"
        Rs.MoveFirst
        Me.DataCombo7.Text = Rs("FIELDS")
    Else
        DataCombo7.ListField = Empty
        DataCombo7.ListField = Empty
    End If
    
    Call DataCombo7_Change
    Call DataCombo4_Change
        
    DataCombo2.Top = 1200
    DataCombo3.Top = 1800
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    Label6.Top = 515
    DataCombo4.Top = 500
    DataCombo2.Top = 950
   ' DataCombo3.Top = 1400
   
   
'    LblFLTN.Top = 1600
'    DCmbFLtN.Top = 1600
    
    LblFLTN.Top = 1900
    DCmbFLtN.Top = 1850
    
    LblFLTN.Left = 280
    DCmbFLtN.Left = 1680
'    LblTLtN.Top = 2100
'    DCmbTLtN.Top = 2100
    
    LblTLtN.Top = 2400
    DCmbTLtN.Top = 2300
    
    
    LblTLtN.Left = 280
    DCmbTLtN.Left = 1680
    ' SSTab1.Height = 3000
    
    SSTab1.Height = 3250
    
    'Frame1.Height = 2000
    Label6.Visible = False
    If Repindex = 66 Then
    DataCombo7.Visible = True
    Label9.Visible = True
    Label9.Caption = "Category"
    Label9.Top = DataCombo7.Top
    Label9.Left = 280
    
    End If
    
    If Repindex = 10067 Then
        DTPicker2.value = pdate
        LblFLTN.Caption = "From Godown"
        LblTLtN.Caption = "To Godown"
        DCmbFLtN.Width = DCmbFLtN.Width + 1500
        DCmbTLtN.Width = DCmbTLtN.Width + 1500
        DTPicker3.Visible = False
        LblFLTN.Top = LblFLTN.Top - 300
        LblTLtN.Top = LblTLtN.Top - 300
        DCmbFLtN.Top = DCmbFLtN.Top - 300
        DCmbTLtN.Top = DCmbTLtN.Top - 300
        Label3.Visible = False
        Label2.Caption = "As on Date"
    End If
    
    Screen.MousePointer = 0
Case 350
    Label5.Caption = "Detailed Issue List"
    Me.Caption = "Detailed Issue List"
    Label1.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    Call DataCombo2_GotFocus
    Label6.Visible = False
    DataCombo4.Visible = True
    Set rs1 = New Recordset
    rs1.Open "select distinct r.supcd+'-'+a.slname""slname"" from fa_slmas a,rm_LOT r where LOTYEAR='" & Year(yfdate) & "' and r.DIVCODE ='" & Divcode & "' AND a.slcode=r.supcd and r.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by slname ", cn, adOpenStatic
    If rs1.RecordCount <> 0 Then
        Set DataCombo4.RowSource = rs1
        DataCombo4.ListField = "slname"
        rs1.MoveFirst
        DataCombo4.Text = rs1(0)
    End If
    DataCombo4.Visible = False
    Label3.Top = 1800
    Label2.Top = 1200
    DataCombo2.Top = 1200
    DataCombo3.Top = 1800
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    Label6.Top = 515
    DataCombo4.Top = 500
    Label2.Top = 950
    DataCombo2.Top = 950
    Label3.Top = 1400
    DataCombo3.Top = 1400
    LblFLTN.Top = 1800
    DCmbFLtN.Top = 1800
    LblFLTN.Left = 280
    DCmbFLtN.Left = 1680
    LblTLtN.Top = 2200
    DCmbTLtN.Top = 2200
    LblTLtN.Left = 280
    DCmbTLtN.Left = 1680
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
    DTPicker3.Visible = True
    DTPicker3.ZOrder
    DTPicker3.MinDate = yfdate
    DTPicker3.Refresh
    DTPicker3.maxdate = pdate
    DTPicker3.value = pdate
    DTPicker3.Left = DataCombo3.Left
    DTPicker3.Width = DataCombo3.Width
    DTPicker3.Top = DataCombo3.Top
    DTPicker3.Height = DataCombo3.Height
    SSTab1.Height = 3000
    Frame1.Height = 2800
    Screen.MousePointer = 0
Case 999
    Label5.Caption = "Varietywise Stock Position"
    Me.Caption = "Varietywise Stock Position"
    ChkUsr.Visible = False
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    Call DataCombo1_GotFocus
    DataCombo1.Visible = True
    DataCombo2.Visible = True
    If Repindex = 1 Then
         Set Rs = New Recordset
         Rs.Open "select distinct LOTDT ""Fields"" from RM_LOT where LOTYEAR='" & Year(yfdate) & "' AND DIVCODE = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by LOTDT", cn, adOpenStatic, adLockBatchOptimistic
    Else
        Set Rs = New Recordset
        Rs.Open "select a.LOTDT as fields from rm_lot a where isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "'  and a.rejflg='N' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic
    End If
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        DataCombo2.ListField = "fields"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo2.Text = Rs(0)
            EXITflg = ""
        End If
    Else
        MsgBox "No Record Found", vbInformation, head
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        EXITflg = "EXIT"
    End If
    Set Rs = New Recordset
    Rs.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "field"
        If Not Rs.EOF Then
            Rs.MoveFirst
            DataCombo1.Text = Rs(0)
            EXITflg = ""
            Do While Not Rs.EOF
                Combo2.AddItem Rs(0)
                Rs.MoveNext
            Loop
            Combo2.AddItem "ALL   -   ALL"
            Rs.MoveFirst
            Combo2.Text = Rs(0)
        Else
            MsgBox "No Record Found", vbInformation, head
            EXITflg = "EXIT"
        End If
    End If
    DataCombo2.Visible = False
    Combo2.Visible = True
    DataCombo1.Visible = False
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    DTPicker1.tabIndex = 0
    Combo2.tabIndex = 1
    CmbRecType.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    Command5.Visible = True
    Command5.Top = Command4.Top
    If Repindex = 999 Then
        Command4.Visible = True
     If UCase(CustID) = "SKS" Then
        Optabs.Visible = True
     End If
     
    End If
    
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If

    CmbRecType.Visible = True
    LblRecType.Visible = True
    CmbRecType.Top = DCmbTLtN.Top + 100
    LblRecType.Top = CmbRecType.Top
    LblRecType.Left = Label1.Left
    Label2.Top = Label2.Top + 200
    DTPicker1.Top = DTPicker1.Top + 200
    
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
    Frame3.Visible = True
    Frame3.Top = 4400
    Command8.Visible = True
    Command8.Top = 6500
    If Repindex = 999 Then
        If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
            Command9.Visible = True
            Command9.Top = Command8.Top
            Command9.Left = Command8.Left + 1200
        End If
    End If
Case 500
    Label5.Caption = "Inspection && Quality Parameter List"
    Me.Caption = "Inspection && Quality Parameter List"
    Label1.Visible = False
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    Call DataCombo2_GotFocus
    Set cn = New Connection
    cn.Open connectstring
    Set Rs = New Recordset
    Rs.Open "select distinct LOTdt as lotdt from rm_lot where arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and DIVCODE ='" & Divcode & "' and LOttype='A'", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
        Set DataCombo2.RowSource = Rs
        Set DataCombo3.RowSource = Rs
        DataCombo2.ListField = "lotdt"
        DataCombo3.ListField = "lotdt"
        Rs.MoveFirst
        DataCombo2.Text = Rs(0)
        Rs.MoveLast
        DataCombo3.Text = Rs(0)
    Else
        MsgBox "No Record Found", vbInformation
        DataCombo2.ListField = ""
        DataCombo2.Text = ""
        DataCombo3.ListField = ""
        DataCombo3.Text = ""
    End If
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 1000
'    Command1.Top = Command1.Top - 400
'    Command2.Top = Command2.Top - 400
         DTPicker2.Visible = True
         DTPicker2.ZOrder
         DTPicker2.MinDate = yfdate
         DTPicker2.Refresh
         DTPicker2.maxdate = pdate
         DTPicker2.value = pdate
         DTPicker2.Left = DataCombo2.Left
         DTPicker2.Width = DataCombo2.Width
         DTPicker2.Top = DataCombo2.Top
         DTPicker3.Visible = True
         DTPicker3.ZOrder
         DTPicker3.MinDate = yfdate
         DTPicker3.Refresh
         DTPicker3.maxdate = pdate
         DTPicker3.value = pdate
         DTPicker3.Left = DataCombo3.Left
         DTPicker3.Width = DataCombo3.Width
         DTPicker3.Top = DataCombo3.Top
Case 115
    EXITflg = ""
    Label5.Caption = "Stock - Abstract Report"
    Me.Caption = "Stock - Abstract Report"
    Call DataCombo2_GotFocus
    Call DataCombo1_GotFocus
    DataCombo1.Visible = False
    Combo2.Visible = True
    Combo2.ZOrder
    If EXITflg = "EXIT" Then
        Unload Me
        Exit Sub
    Else
        Call DataCombo2_GotFocus
    End If
    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    
    DTPicker2.value = pdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    Set Rs = New Recordset
    Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
       Set DataCombo1.RowSource = Rs
       DataCombo1.ListField = "catcdname"
       Rs.MoveFirst
       DataCombo1.Text = Rs(0)
        
        Do While Not Rs.EOF
           Combo2.AddItem Rs(0)
           Rs.MoveNext
       Loop
           Rs.MoveFirst
       Combo2.Text = Rs(0)
       Combo2.AddItem "A   -  All"
    End If
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"
Case 143
    Label5.Caption = "Lodgement/Release"
    Me.Caption = "Lodgement/Release"
    Label3.Visible = False
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    Frame1.Height = Frame1.Height - 1000
    SSTab1.Height = SSTab1.Height - 900
    DataCombo1.Visible = True
    DataCombo1.Visible = False
    Combo2.ZOrder
    Combo2.Visible = False
    Label1.Visible = False
    DataCombo3.Visible = False
Case 311
    Label5.Caption = "Issue Weight Listing"
    Me.Caption = "Issue Weight Listing"
    DataCombo2.Visible = False
    Label2.Visible = False
    DataCombo3.Visible = False
    Label3.Visible = False
    DataCombo1.Visible = True
    Label1.Visible = True
    Label1.Caption = "Document No"
    Label1.Top = 1180
    DataCombo1.Top = 1080
    Combo1.Top = 1750
    Label4.Top = 1750
    Combo1.Visible = True
    Label4.Visible = True
    Call IssLoad(Combo1)
    Set Rs = New Recordset
    Rs.Open "select distinct docno from rm_issb where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and DIVCODE ='" & Divcode & "' order by docno", DB, adOpenStatic
    If Rs.EOF <> True Then
        Rs.MoveFirst
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "DocNo"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
    End If
    
Case 191
        Label2.Caption = "From Date"
        Label5.Caption = "Issue List"
        Me.Caption = "Issue List"
        Label1.Visible = False
        Frame1.Visible = True
        Label3.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        Combo1.Top = Combo1.Top - 400
        Label4.Top = Label4.Top - 400
        Combo1.Visible = True
        Label4.Visible = True
        Call IssLoad(Combo1)
        
        Combo1.ListIndex = 0
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where  divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Call suppliers1
            Label3.Visible = False
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.Refresh
            DTPicker2.maxdate = pdate
            DTPicker1.MinDate = yfdate
            DTPicker1.Refresh
            DTPicker1.maxdate = pdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            
            DTPicker1.Visible = True
            DTPicker2.value = pdate
            DTPicker1.value = CDate(fnmfdate(pdate))
            DataCombo2.Visible = False
            Label3.Caption = "To Date"
            Label3.Visible = True
            DTPicker2.Visible = True
            DTPicker2.Top = DTPicker1.Top + 500
            If (Me.WindowState = Normal) Then
            Me.Width = 10845
            End If
            Frame1.Height = Frame1.Height + 50
        SSTab1.Height = SSTab1.Height
        DTPicker1.tabIndex = 0
        DTPicker2.tabIndex = 1
        Combo1.tabIndex = 2
        Command1.tabIndex = 3
        Command2.tabIndex = 4
        Command4.Visible = False
Case 34351
        Call case343513
Case 777777
    Call case77777
End Select
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub pendingbills()
intervalMinutes = -1
Select Case Repindex
Case 2228
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Pending Bill Entry Report"
        Me.Caption = "Pending Bill Entry Report"
        
        Label1.Visible = False
        FraPOreg.Visible = True
       ' Frame1.Visible = True
        DataCombo3.Visible = True
        DataCombo1.Visible = False
        'Frame1.Height = Frame1.Height - 1100
         SSTab1.Height = SSTab1.Height - 1000
       
        If (Me.WindowState = Normal) Then
        Me.Width = 10845
        End If
            
        Label3.Visible = True
        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker2.MinDate = yfdate
        DTPicker2.Refresh
        DTPicker2.maxdate = pdate
        DTPicker2.value = mfdate
        DTPicker2.Left = DataCombo2.Left
        DTPicker2.Width = DataCombo2.Width
        DTPicker2.Top = DataCombo2.Top
        DTPicker3.Visible = True
        DTPicker3.ZOrder
        DTPicker3.MinDate = yfdate
        DTPicker3.Refresh
        DTPicker3.maxdate = pdate
        DTPicker3.value = pdate
        DTPicker3.Left = DataCombo3.Left
        DTPicker3.Width = DataCombo3.Width
        DTPicker3.Top = DataCombo3.Top
        DTPicker2.tabIndex = 0
        DTPicker3.tabIndex = 1
        Command1.tabIndex = 2
        Command2.tabIndex = 3
        Command3.Visible = True
        Command1.Visible = False
        Command3.tabIndex = 2
        Command3.Top = Command1.Top
        Command4.Visible = True
        Command4.Top = Command1.Top
        Command4.tabIndex = 4
Case 22228
        Label2.Caption = "Date Date"
        Label3.Visible = False
        Label5.Caption = "Pending Bills as on Date"
        Me.Caption = "Pending Bills as on Date"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Frame1.Height = Frame1.Height - 1100
        SSTab1.Height = SSTab1.Height - 1000
       
        If (Me.WindowState = Normal) Then
        Me.Width = 10845
        End If
            
        DTPicker2.Visible = True
        DTPicker2.ZOrder
        DTPicker2.MinDate = yfdate
        DTPicker2.Refresh
        DTPicker2.maxdate = pdate
        DTPicker2.value = pdate
        DTPicker2.Left = DataCombo2.Left
        DTPicker2.Width = DataCombo2.Width
        DTPicker2.Top = DataCombo2.Top
        DTPicker2.tabIndex = 0
        Command1.tabIndex = 2
        Command2.tabIndex = 3
        Command3.Visible = True
        Command1.Visible = False
        Command3.tabIndex = 2
        Command3.Top = Command1.Top
End Select
intervalMinutes = -1
End Sub
Public Sub prnhead(pg As Integer)
On Error GoTo prnhead_Error
intervalMinutes = -1
If Repindex = 18 Then
    date1 = Format(DataCombo2.Text, "DD/mm/YY")
    date2 = Format(DataCombo3.Text, "DD/MM/YY")
    Print #f,
    Print #f, Space(0) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
    Print #f,
    SR = CStr(pdate) + Space(2)
    Print #f, Space(5) + "Cost Auditing Report from  " & date1 & " to " & date2;
    Print #f, Space(5) + Space(9) + Format(SR, "dd/mm/yy") + Space(3) + "Pg.:" + Space(1) + Padl(CStr(pg), 3, " ")
    Print #f, Space(5) + String(80, "-")
    Print #f, Space(5) + "Count  Mixing No.   Variety         Qty   Unit          Net wt.            Value"
    Print #f, Space(5) + String(80, "-")
End If
If Repindex = 19 Then
    Print #f,
    date1 = Format(DataCombo2.Text, "dd-mm-yyyy")
    date2 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f, Chr(15)
    SR = Format(pdate, "dd/mm/yy")
    Print #f, Space(5) & "Daily Issues to Mixing Statement " + "on " & Format(date1, "dd/mm/yy") & Space(63) & Space(4) + SR + Space(2) + "Pg. : " & Padl(pg, 3, " ")
    Print #f, Space(5) & String(130, "-")
    Print #f, Space(5) & Space(1) + "Mixing" + Space(3) + "Mill."; Space(4) + "Variety" + Space(12) + "Party " + Space(3) + " Qty   Unit" + Space(8) + "Issue Kgs" + Space(2); "Mixing" + Space(6) + "Rate/" + Space(9) + "Rate/" + Space(17); "Value"
    Print #f, Space(5) & Space(1) + " Count" + Space(1); "Lot No."; Space(5) + "      " + Space(10) + "Lot No." + "         " + Space(11) + "      " + Space(8) + "     %"; Space(8) + "Kg     "; Space(5); "Candy"
    Print #f, Space(5) & String(130, "-")
End If

If Repindex = 1998 Then    'Transfer Register
    Print #f,
    date1 = Format(DataCombo2.Text, "dd-mm-yyyy")
    date2 = Format(DataCombo2.Text, "dd-mm-yyyy")
    Print #f, Chr(18)
    Print #f, Space(2) + CENTRE(Chr(27) + "E" + divname, 80, " " + Chr(27) + "F")
    Print #f,
    Print #f, Space(2) & Space(1) + Chr(27) + "E" + "Daily Transfer Statement " + Chr(27) + "F" + "For the Date of" & Format(date1, "dd/mm/yyyy") & Space(11) + "Dt:"; CStr(Date) + Space(2) + "Pg. : " & pg; Chr(15)
    Print #f, Space(5) & String(130, "-")
    Print #f, Space(5) & Space(1) + "Mixing" + Space(2) + "Mill."; Space(5) + "Variety" + Space(13) + "Party " + Space(2) + " Qty   Unit" + Space(8) + "Issue Kgs" + Space(2); "Mixing" + Space(6) + "Rate/" + Space(9) + "Rate/" + Space(17); "Value"
    Print #f, Space(5) & Space(1) + " Count" + Space(2); " Lot"; Space(5) + "      " + Space(17) + "Lot   " + "         " + Space(11) + "      " + Space(4) + "     %"; Space(8) + "Kg     "; Space(5); "Candy"
    Print #f, Space(5) & String(130, "-")
End If
If Repindex = 20 Then
    date1 = Format(DataCombo2.Text, "yyyy-mm-dd")
    date2 = Format(DataCombo3.Text, "yyyy-mm-dd")
    Print #f,
    Print #f, Space(Round(60 / 2 - Len(divname) / 2)) & Chr(27) & divname & Chr(27)
    Print #f,
    Print #f, Space(1) + Chr(27) & "Datewise Receipts List From  " & date1 & "  To  " & date2 & Space(30) & "(" & Mid$(DataCombo1.Text, (InStr(DataCombo1.Text, "-") + 1)) & ")" & pdate
    Print #f,
    Print #f, String(120, "-")
    Print #f, Space(1) + "Receipt" + Space(4) + "Code" + Space(3) + "Party Name" + Space(30) + "Broker" + Space(34) + "Party " + Space(1) + "Mill  " + Space(5) + "Iss-kg" + Space(10) + "Qntl" + Space(10) + "Value"
    Print #f, Space(1) + "Date   " + Space(4) + "    " + Space(3) + "          " + Space(30) + "      " + Space(34) + "Lot No" + Space(1) + "Lot No" + Space(5) + "      " + Space(10) + "Rate" + Space(10) + "     "
    Print #f, String(120, "-")
End If
intervalMinutes = -1
Exit Sub
prnhead_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure prnhead of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub Varietywisedetaily(fromdate As Date, ToDate As Date, Category As String)
Dim str_lotno As String
Dim temp_lotdt As Date
Dim temp_issdt As Date
Dim str_issno As String
Dim dbl_receiptvalue As Double
Dim dbl_issuevalue As Double
Dim dbl_openvalue As Double
Dim dbl_openqty As Double
On Error GoTo Varietywisedetaily_Error

a = FreeFile
Close #a
Close
'Open "C:\stkledgerdetail.txt" For Output As #a
 Open KALFOLDERDATA & "\stkledgerdetail.TXT" For Output As #a
pg = 1
co = 0
BlockCode = Empty
CategoryCode = Empty
Category = Left(Category, 1)
If Category = "A" Then
    CategoryCode = "'C','P','V'"
ElseIf Category = "S" Then
    CategoryCode = "'P','V'"
Else
    CategoryCode = "'" & Category & "'"
End If
Set rs3 = New Recordset
Set Rs = New Recordset
Rs.Open "select  DISTINCT a.varcode,b.varname from rm_lot a,rm_var b where LOTYEAR='" & Year(yfdate) & "' AND a.varcode=b.varcode and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ")  and isnull(a.NETWT,0)>0 order by a.varcode", DB, adOpenStatic
If Rs.RecordCount > 0 Then
Call stkvarietydetailheader(fromdate, ToDate, Category)
    Do Until Rs.EOF
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
        Print #a, Space(3) & Padr(Rs("varname").value, 20, " ")
        co = co + 1
        Print #a,
        Set RS2 = New Recordset
        RS2.Open "select lotno,lotdt,sum(a.NETWT) as netwt,sum(a.NETWT) * round((isnull(ratecy,0)/355.6187),2) as value from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "'  and  OPFLG='Y' group by lotno,lotdt,ratecy", DB, adOpenStatic
        Do While Not RS2.EOF
            dbl_openqty = dbl_openqty + RS2("netwt")
            dbl_openvalue = dbl_openvalue + RS2("value")
            RS2.MoveNext
        Loop
        RS2.MoveFirst
        If RS2.EOF = False Then
            Print #a, Space(75) & Padr("***OPENING STOCK***", 21, " ") '& Padl(INF(rs2(0).Value, 2), 20, " ") & Padl(INF(rs2(1).Value, 2), 20, " ")
            dbl_openqty = 0
            dbl_openvalue = 0
            co = co + 1
        End If
        co = co + 1
        Set rs1 = New Recordset
        rs1.Open "select a.lotno,a.lotdt,isnull(a.NETWT,0) recqty,a.nETwt*round((isnull(ratecy,0)/355.6187),2) recvalue,a.ratekg from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode='" & Divcode & "'  and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "' and a.opflg='N'  ORDER BY a.lotdt", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            Do Until rs1.EOF
                If temp_lotdt <> Format(rs1("lotdt").value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(Format(rs1("lotdt").value, "DD/MM/YY"), 10, " ") & Padr(rs1("lotno").value, 10, " ") & Padl(INF(rs1("recqty").value, 3), 20, "") & Padl(INF(rs1("recvalue").value, 2), 20, "")
                ElseIf temp_lotdt = Format(rs1("lotdt").value, "DD/MM/YY") Then
                    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(rs1("lotno").value, 10, " ") & Padl(INF(rs1("recqty").value, 3), 20, "") & Padl(INF(rs1("recvalue").value, 2), 20, "")
                End If
                dbl_receiptvalue = dbl_receiptvalue + Round(rs1("recvalue").value, 3)
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, ToDate, Category)
                End If
                Set RS2 = New Recordset
                RS2.Open "select a.DOCNO,a.DOCDT,round((sum(isnull(e.netwt,0))),2) as ISSKGS from rm_issb a,rm_lot b,rm_issh c,rm_bale e where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and b.VARCODE='" & Rs("VARCODE").value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.lotno=" & rs1("lotno") & " and a.lotdt='" & Format(rs1("lotdt").value, "DD/MMM/YYYY") & "' and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N' group by a.DOCNO,a.DOCDT", DB, adOpenStatic
                If RS2.RecordCount > 0 Then
                    Do Until RS2.EOF
                        dbl_issuevalue = dbl_issuevalue + RS2("ISSKGS").value * IIf(IsNull(rs1("ratekg").value), 0, rs1("ratekg").value)
                        If temp_issdt <> Format(RS2("DOCDT").value, "DD/MM/YY") Then
                            If str_issno = RS2("DOCNO").value Then
                                Print #a, Space(3) & Padr(Format(RS2("DOCDT").value, "DD/MM/YY"), 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(RS2("ISSKGS").value, 3), 20, " ") & Padl(INF(RS2("ISSKGS").value * rs1("ratekg").value, 3), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> RS2("DOCNO").value Then
                                Print #a, Space(3) & Padr(Format(RS2("DOCDT").value, "DD/MM/YY"), 10, " ") & Padr(RS2("DOCNO").value, 10, " ") & Space(30) & Padl(INF(RS2("ISSKGS").value, 3), 20, " ") & Padl(INF(RS2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, ToDate, Category)
                            End If
                        ElseIf temp_issdt = Format(RS2("DOCDT").value, "DD/MM/YY") Then
                            If str_issno = RS2("DOCNO").value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Space(30) & Padl(INF(RS2("ISSKGS").value, 3), 20, " ") & Padl(INF(RS2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            ElseIf str_issno <> RS2("DOCNO").value Then
                                Print #a, Space(3) & Padr(" ", 10, " ") & Padr(RS2("DOCNO").value, 10, " ") & Space(30) & Padl(INF(RS2("ISSKGS").value, 3), 20, " ") & Padl(INF(RS2("ISSKGS").value * rs1("ratekg").value, 2), 20, " ") '& Space(3) & Padl(INF(rs1("recqty").Value - rs2("ISSKGS").Value, 3), 20, " ") & Padl(INF(dbl_receiptvalue - dbl_issuevalue, 3), 20, " ")
                            End If
                            co = co + 1
                            If co = 60 Then
                                 Print #a, Space(3) & String(132, "-")
                                 Print #a, Chr(12)
                                 Call stkvarietydetailheader(fromdate, ToDate, Category)
                            End If
                        End If
                    str_issno = RS2("DOCNO").value
                    temp_issdt = Format(RS2("DOCDT").value, "DD/MM/YY")
                    RS2.MoveNext
                    Loop
                ElseIf RS2.RecordCount = 0 Then
                End If
                temp_lotdt = Format(rs1("lotdt").value, "DD/MM/YY")
                str_lotno = rs1("lotno").value
            rs1.MoveNext
                Print #a,
                co = co + 1
                If co = 60 Then
                     Print #a, Space(3) & String(132, "-")
                     Print #a, Chr(12)
                     Call stkvarietydetailheader(fromdate, ToDate, Category)
                End If
            Loop
        End If
        Set rs1 = New Recordset
        rs1.Open "select sum(isnull(a.NETWT,0)) recqty from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and a.varcode='" & Rs("varcode").value & "' and a.opflg='N' ", DB, adOpenStatic
        Set RS2 = New Recordset
        RS2.Open "select round((sum(isnull(e.netwt,0))),2) as ISSKGS from rm_issb a,rm_lot b,rm_issh c,rm_bale e where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt=e.lotdt and a.lottype=e.lottype and a.lotno=e.lotno and a.catcd=e.catcd and a.baleno=e.baleno and  a.docno=c.docno and a.docdt=c.docdt and a.isstype=c.isstype and a.lotdt=b.lotdt and a.lotno=b.lotno and b.VARCODE='" & Rs("VARCODE").value & "' and a.divcode='" & Divcode & "' and a.catcd IN (" & CategoryCode & ") and b.divcode=a.divcode and b.catcd=a.catcd and b.lotno=a.lotno and b.lotdt=a.lotdt and b.opflg='N'", DB, adOpenStatic
        Print #a, Space(3) & Padr(" ", 2, " ") & Padr("VARIETY TOTAL     ", 18, " ") & Padl(INF(rs1(0).value, 3), 20, "") & Space(3) & Padl(INF(dbl_receiptvalue, 3), 17, "") & Space(3) & Padr(INF(RS2(0).value, 3), 18, "") & Padr(INF(dbl_issuevalue, 2), 13, "") '& Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, ToDate, Category)
        End If
        If rs1(0).value - IIf(IsNull(RS2(0).value), 0, RS2(0).value) = 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(Format(dbl_openqty + rs1(0).value - IIf(IsNull(RS2(0).value), 0, RS2(0).value), "##.###"), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        ElseIf rs1(0).value - IIf(IsNull(RS2(0).value), 0, RS2(0).value) > 0 Then
            Print #a, Space(75) & Padr("***CLOSING STOCK***", 21, " ") & Padl(INF(dbl_openqty + rs1(0).value - IIf(IsNull(RS2(0).value), 0, RS2(0).value), 2), 20, " ") & Padl(INF(dbl_openvalue + dbl_receiptvalue - dbl_issuevalue, 2), 20, " ")
        End If
        dbl_receiptvalue = 0
        dbl_issuevalue = 0
            co = co + 1
            If co = 60 Then
                 Print #a, Space(3) & String(132, "-")
                 Print #a, Chr(12)
                 Call stkvarietydetailheader(fromdate, ToDate, Category)
            End If
        Print #a,
        co = co + 1
        If co = 60 Then
             Print #a, Space(3) & String(132, "-")
             Print #a, Chr(12)
             Call stkvarietydetailheader(fromdate, ToDate, Category)
        End If
    Rs.MoveNext
    Loop
Else
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Close #a
'Open "C:\stkledgerdetail.bat" For Output As #a
'Print #a, "type C:\stkledgerdetail.txt > prn"
'Close #a
'Set RPTV = New Report.ReportView
'RPTV.txtfile = "C:\stkledgerdetail.txt"
'RPTV.Batfile = "C:\stkledgerdetail.bat"
a = FreeFile
Call KALBATPROCESS("stkledgerdetail")
Screen.MousePointer = 0

Exit Sub
Varietywisedetaily_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Varietywisedetaily of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub stkvarietydetailheader(fromdate As Date, ToDate As Date, Category As String)
On Error GoTo stkvarietydetailheader_Error

    co = 0
    Print #a, Chr(18)
    Print #a, Space(3) & CENTRE(Chr(14) & divname & Chr(14), 90, " ")
    Print #a,
    Print #a, Space(3) & CENTRE(Chr(27) & "E" & " STOCK LEDGER VARIETY WISE FOR THE DATE BETWEEN " & Format(fromdate, "DD/MM/YYYY") & " AND " & Format(ToDate, "DD/MM/YYYY") & ". " & Chr(27) & "F", 130, " ")
    Print #a,
    Print #a, Space(3) & Padr(" ", 100, " ") & "Date: " & Format(Date, "dd/mm/yyyy") & " Page: " & pg
    Print #a, Space(3) & String(132, "-")
    Print #a, Space(3) & Padr("VARIETY", 20, " ") & Space(14) & "<-----" & CENTRE("RECEIPTS", 10, " ") & "----->" & Space(6) & "<-----" & CENTRE("ISSUES", 10, " ") & "----->" & Space(20) & "<-----" & CENTRE("STOCK", 10, " ") & "----->"
    Print #a, Space(3) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ") '& Space(39) & Padr("DATE", 10, " ") & Space(1) & Padr("DOCNO", 10, " ")
    Print #a, Space(3) & Padr(" ", 10, " ") & Padr(" ", 10, " ") & Padl("QUANTITY", 20, "") & Space(3) & Padl("VALUE", 17, "") & Space(2) & Padr("QUANTITY", 20, "") & Space(3) & Padr("VALUE", 18, "") & Padr("QUANTITY", 20, "") & Space(2) & Padr("VALUE", 20, "")
    Print #a, Space(3) & String(132, "-")
    co = co + 11

Exit Sub
stkvarietydetailheader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure stkvarietydetailheader of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ordcan(a As String, dname As String)
Dim div As String
On Error GoTo ordcan_Error

div = divname
pg1 = 1
Set cn = New Connection
cn.Provider = "msdatashape"
cn.Open connectstring
Set Rs = New Recordset
Set rev = New Report.ReportView
Close
'Open "c:\conConfirm.txt" For Output As #1
Open KALFOLDERDATA & "\conConfirm.TXT" For Output As #1
        Set RS2 = New Recordset
        RS2.Open "select distinct a.contdt,b.slname as Broker,c.slname as Supplier,a.ordqty,a.varcode,d.areaname," & _
                 " a.candyrate,a.dlytype,a.despatch,a.payterms,a.cancelbales from rm_cont a,fa_slmas b,fa_slmas c,rm_area d where a.brkcd=b.slcode " & _
                 " and a.supcd=c.slcode and a.areacode=d.areacode and a.contno='" & a & "'" & _
                 " and a.DIVCODE ='" & Divcode & "' and a.contdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and ' " & Format(yldate, "yyyy-mm-dd") & "' and a.cancelflg='Y'", cn, adOpenStatic, adLockBatchOptimistic
         If RS2.RecordCount <= 0 Then
            MsgBox "No record found", vbInformation
            Close #1
            Exit Sub
         End If
Print #1,
Print #1,
Print #1,
Print #1, Space(5) + Chr(27) + "E" + CENTRE("ORDER CANCELATION MEMO NO.", 65, " ") + Chr(27) + "F"
Print #1, Space(5) + Chr(27) + "E" + CENTRE("PURCHASE ORDER NO." & a & "/" & Right(Year(RS2("contdt")), 2), 65, " ") + Chr(27) + "F"
Print #1,
Set rsF = New Recordset
rsF.Open "select * from rm_ordcancel where orderno='" & a & "' and orderdt='" & Format(RS2("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
If rsF.RecordCount > 0 Then
    DOCDT = rsF("docdt")
Else
    DOCDT = " "
End If
Print #1, Space(49) & "Date :" & Format(DOCDT, "dd-mm-yy")
Print #1,
Set rs4 = New Recordset
rs4.Open "select city from pp_divmas ", cn, adOpenStatic, adLockBatchOptimistic
Print #1, Space(5) + Chr(27) + "E" + "M/s." & divname + Chr(27) + "F"
Print #1, Space(5) + Chr(27) & "E" & rs4("city") & Chr(27) & "F"
Print #1,
Print #1,
Print #1, Space(5) + "Dear Sir,"
Print #1,
Print #1, Space(5) + "Ref : As per the advice of M/s." & RS2("broker")
Print #1,
Print #1, Space(5) + "With refer to our telephone discussion ,Please change the Quantity for "
Print #1, Space(5) + "the PO No.: " & Chr(27) & "E" & a & Chr(27) & "F" & "," & "Dt : " & Chr(27) & "E" & Padr(Format(RS2("contdt"), "dd-mm-yy"), 8, " ") & Chr(27) & "F";
Print #1, " Bales " & Chr(27) & "E" & RS2("ORDQTY") & Chr(27) & "F" & "." & "This is for you inform "
Print #1, Space(5) + "in records."
Print #1,
Print #1, Space(5) + "Supplier Name      : " & Chr(27) & "E" & RS2("SUPPLIER") & Chr(27) & "F"
Print #1,
Print #1, Space(5) + "Order Quantity     : " & Chr(27) & "E" & RS2("ORDQTY") & Chr(27) & "F"
Print #1,
Print #1, Space(5) + "Cancelled Quantity : " & Chr(27) & "E" & RS2("cancelbales") & Chr(27) & "F"
Print #1,
Print #1, Space(5) + "Station            : " & Chr(27) & "E" & RS2("AREANAME") & Chr(27) & "F"
Print #1,
Print #1, Space(5) + "Quality            : " & Chr(27) & "E" & RS2("VARCODE") & Chr(27) & "F"
Print #1,
If RS2("DLYTYPE") = "S" Then
Print #1, Space(5) + "Candy Rate         : " & Chr(27) & "E" & INF(RS2("CANDYRATE"), 2) & " " & "SPOT" & Chr(27) & "F"
Print #1,
ElseIf RS2("DLYTYPE") = "M" Then
Print #1, Space(5) + "Candy Rate         : " & Chr(27) & "E" & INF(RS2("CANDYRATE"), 2) & " " & "FOR" & Chr(27) & "F"
Print #1,
End If
Print #1, Space(5) & "Thanking You."
Print #1, Space(48) & "Yours faithfully,"
Close #1
'Open "c:\conConfirm.bat" For Output As #1
'Print #1, "cd\"
'Print #1, "c:"
'Print #1, "cd\"
'Print #1, "type conConfirm.txt>prn"
'rev.txtfile = "c:\conConfirm.txt"
'rev.Batfile = "c:\conConfirm.bat"
'Close #1
'1 = FreeFile
Call KALBATPROCESS("conConfirm")

Exit Sub
ordcan_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ordcan of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub




Private Sub QryString()
On Error GoTo QryString_Error

qry = "select k.varcode,isnull(k.ratekg,0) * 100 'rate/qun',sum(isnull(k.Openkgs,0)) + sum(isnull(k.recpkgs,0)) - sum(isnull(k.Issue,0)) as 'Clokgs'," & _
                        "sum(isnull(k.OpenBale,0)) + sum(isnull(k.recpBale,0)) - sum(isnull(k.IssBale,0)) as 'Clobale',sum(isnull(k.OpenBorah,0)) + sum(isnull(k.recpBorah,0)) - sum(isnull(k.IssBorah,0)) as 'Cloborah' ," & _
                        "sum(isnull(k.Openval,0)) + sum(isnull(k.recpval,0)) - sum(isnull(k.Issval,0)) as 'cloval' from ((select y.varcode, isnull(y.kgs1,0) - isnull(t.kgs2,0) 'Openkgs',isnull(y.bale1,0) - isnull(t.Bale2,0) 'OpenBale'," & _
                        "isnull(y.borah1,0) - isnull(t.borah2,0) 'OpenBorah',isnull(y.val1,0) - isnull(t.val2,0) 'openval',0 as recpkgs,0 as recpbale, 0 as recpBorah,0 as recpval," & _
                        "0 as 'Issue',0 as IssBale,0 as IssBorah,0 as issval from (select a.varcode,b.slname,a.lotdt,c.plotno," & _
                        "a.lotno , a.catcd, a.ratecy, a.ratekg, Sum(IsNull(a.netwt, 0)) 'kgs1',case when a.bblflg = 'B' then sum(isnull(a.bales,0)) end as 'Bale1'," & _
                        "case when a.bblflg   IN ('R','H') then sum(isnull(a.bales,0)) end as 'Borah1',sum(isnull(a.ratekg,0) * isnull(a.netwt,0)) 'val1' from rm_lot a " & _
                        "where LOTYEAR='" & Year(yfdate) & "' AND a.lotdt < '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "' and a.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "'  and " & _
                        "a.catcd ='C'  group by a.varcode,a.bblflg)y,(select d.varcode,sum(isnull(c.isskgs,0)) 'kgs2',(case when d.bblflg = 'B' then count(c.baleno)  end) as 'Bale2'," & _
                        "(case when d.bblflg   IN ('R','H') then count(c.baleno) end) as 'Borah2',sum(isnull(c.isskgs,0) * isnull(d.ratekg,0))'val2' from rm_issb c ,rm_lot d where LOTYEAR='" & Year(yfdate) & "' AND c.docdt < '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "'" & _
                        "and  c.lotno = d.lotno and c.lotdt = d.lotdt and c.catcd = d.catcd and  c.divcode = d.divcode  and d.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and " & _
                        "d.divcode = '" & Divcode & "' group by d.varcode,d.bblflg)t where y.varcode *= t.varcode   union  select e.varcode,0 as Openbal,0 as 'OpenBale'," & _
                        "0 as 'OpenBorah',0 as 'openval',sum(isnull(e.netwt,0)) 'Recpkgs',case when e.bblflg = 'B' then sum(isnull(e.bales,0)) end 'recpBale',case when e.bblflg   IN ('R','H') then sum(isnull(e.bales,0)) end 'recpBorah'," & _
                        "Sum (IsNull(e.ratekg, 0) * IsNull(e.netwt, 0)) 'recpval',0 as 'Issue',0 as IssBale,0 as IssBorah ,0 as 'issval' from rm_lot e  where LOTYEAR='" & Year(yfdate) & "' AND e.lotdt = '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "'" & _
                        "e.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and e.divcode = '" & Divcode & "' group by e.varcode,e.bblflg union  select c.varcode,0 as Openbal,0 as 'OpenBale'," & _
                        "0 as 'OpenBorah',0 as 'openval',0 as 'Recep',0 as recpBale,0 as recpBorah,0 as 'recpval',sum(isnull(a.isskgs,0))as 'Issue',case when c.bblflg = 'B' then count(isnull(baleno,0)) end 'IssBale'," & _
                        "case when c.bblflg   IN ('R','H') then count(isnull(baleno,0))end 'IssBorah',sum(isnull(c.ratekg,0) * isnull(a.isskgs,0)) 'issval' from rm_issb a,rm_lot c, where LOTYEAR='" & Year(yfdate) & "' AND a.docdt = '" & Format(DataCombo4.Text, "yyyy-mm-dd") & "' and " & _
                        "a.catcd = c.catcd and a.divcode = c.divcode and a.lotno = c.lotno and a.lotdt = b.lotdt and c.catcd = '" & (Mid$(DataCombo3.Text, 1, (InStr(DataCombo3.Text, "-") - 1))) & "' and  a.divcode = '" & Divcode & "' " & _
                        "group by c.varcode,c.bblflg  ) )k group by k.varcode"

Exit Sub
QryString_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QryString of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub stkQryt()

On Error GoTo stkQryt_Error

 a1 = Format(DTPicker2.value, "dd/mm/yyyy"):    A2 = Format(DTPicker3.value, "dd/mm/yyyy")
        
         If CDate(a1) > CDate(A2) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(A2) < CDate(a1) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker3.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
str1 = Combo2.Text
Set RSS = New Recordset
  RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", DB, adOpenStatic, adLockBatchOptimistic
 If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo StkLed
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Combo2.Text = ""
     Combo2.SetFocus
     Screen.MousePointer = 0
     Exit Sub
End If

StkLed: If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
    If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
            If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
            If bolCrystal = False Then
            Call LotstockledgerReport(CStr(a1), CStr(A2), CStr(str1), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType, UserFooter1.SelectedStr)
            Else
            Call LotstockledgerReportCrystal(CStr(a1), CStr(A2), CStr(str1), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType, UserFooter1.SelectedStr)
            End If
            
            
         Else
             If DCmbFLtN.MatchedWithList = False Then
             MsgBox "Select the valid Lot No", vbInformation, head
            DCmbFLtN.Text = ""
            DCmbFLtN.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
             If DCmbTLtN.MatchedWithList = False Then
            MsgBox "Select the valid Lot No", vbInformation, head
            DCmbTLtN.Text = ""
            DCmbTLtN.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
            Exit Sub
         End If
         End If

Exit Sub
stkQryt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure stkQryt of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub godown()



On Error GoTo Godown_Error

  If DCmbFLtN.MatchedWithList = False Then
             MsgBox "Select the valid Lot No", vbInformation, head
            DCmbFLtN.Text = ""
            DCmbFLtN.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
             If DCmbTLtN.MatchedWithList = False Then
            MsgBox "Select the valid Lot No", vbInformation, head
            DCmbTLtN.Text = ""
            DCmbTLtN.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
                 If DataCombo5.MatchedWithList = False Then
            MsgBox "Select the valid Godown", vbInformation, head
            DataCombo5.Text = ""
            DataCombo5.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
        If DataCombo6.MatchedWithList = False Then
            MsgBox "Select the valid Godown", vbInformation, head
            DataCombo6.Text = ""
            DataCombo6.SetFocus
            Screen.MousePointer = 0
            Exit Sub
            End If
        
           X = DCmbFLtN.Text:           Y = DCmbTLtN.Text
           z = Check1.value
         If z = 0 Then
            Call StockGodownReport(CStr(U), CStr(v), CStr(W), divname, CStr(X), CStr(Y), "N", CStr(Left(DataCombo5.Text, 2)), CStr(Left(DataCombo6.Text, 2)), CmbRecType.Text)
         Else
            Call StockGodownReport(CStr(U), CStr(v), CStr(W), divname, CStr(X), CStr(Y), "Y", CStr(Left(DataCombo5.Text, 2)), CStr(Left(DataCombo6.Text, 2)), CmbRecType.Text)
         End If
         Screen.MousePointer = 0

Exit Sub
Godown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Godown of Form repform1", vbInformation, head
Screen.MousePointer = 0
                    
End Sub


Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option1_Click()
Command7.Visible = False
End Sub

Private Sub Option2_Click()
Command7.Visible = False
Command3.Left = 5000
End Sub

Private Sub Option3_Click()
Command7.Visible = True
Command3.Left = 5000
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error
    intervalMinutes = -1
    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command6.Visible = True
    
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form repform1", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
 On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
     Command6.Visible = False
Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form repform1", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub debit_raisenote(From_Date As String, To_Date As String, footerstr As String, S1 As String, s2 As String)
On Error GoTo debit_raisenote_Error

Set rs1 = New Recordset
rs1.Open "Select DISTINCT a.Lotno,a.Lotdt,Supcd,slname,Varcode,B.ASNO,B.Adate," & _
         "a.Dbno,a.Dbdt,a.Dbnarr,b.Aratecy,Akgs,a.DBAMT,ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt " & _
         "from rm_lot a,rm_lotallowance b,fa_slmas c WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and " & _
         "a.DIVCODE='" & Divcode & "' and a.supcd=c.slcode and a.supcd between '" & S1 & "' and '" & s2 & "' " & _
         "AND OPFLG='N' AND b.adate BETWEEN '" & Format(From_Date, "yyyy-MM-dd") & "' AND '" & Format(To_Date, "yyyy-MM-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' ORDER BY B.ASNO,B.ADATE ", DB, adOpenStatic
If rs1.RecordCount = 0 Then
    MsgBox "No record found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
pg = 0
c = 0
Close
f = FreeFile()
'Open "c:\debitraisenote.txt" For Output As #f
Open KALFOLDERDATA & "\debitraisenote.TXT" For Output As #f
    Call debit_raisenote_header(From_Date, To_Date)
    Do While Not rs1.EOF
        If Mid(rs1("dbamt"), 1, 1) <> "-" Then
            Print #f, Padl(Format(rs1("adate"), "dd/mm/yy"), 9, " ") & Space(1) & Padl(Format(rs1("dbdt"), "dd/mm/yy"), 10, " ") & Space(1) & Padl(rs1("asno"), 6, " ") & Space(1) & Padl(rs1("dbno"), 6, " ") & Space(1) & Padl(rs1("Lotno"), 6, " ") & Space(2) & Padr(rs1("slname"), 37, " ") & Space(2) & Padr(rs1("dbnarr"), 40, " ") & Space(2) & Padl(rs1("billno"), 8, " ") & Space(2) & Padl(Format(rs1("billdt"), "dd/MM/yy"), 8, " ") & Space(2) & Padl(Abs(rs1("dbamt")) & "(Cr)", 12, " ")
        Else
            Print #f, Padl(Format(rs1("adate"), "dd/mm/yy"), 9, " ") & Space(1) & Padl(Format(rs1("dbdt"), "dd/mm/yy"), 10, " ") & Space(1) & Padl(rs1("asno"), 6, " ") & Space(1) & Padl(rs1("dbno"), 6, " ") & Space(1) & Padl(rs1("Lotno"), 6, " ") & Space(2) & Padr(rs1("slname"), 37, " ") & Space(2) & Padr(rs1("dbnarr"), 40, " ") & Space(2) & Padl(rs1("billno"), 8, " ") & Space(2) & Padl(Format(rs1("billdt"), "dd/MM/yy"), 8, " ") & Space(2) & Padl(Abs(rs1("dbamt")) & "(Dr)", 12, " ")
        End If
        Print #f,
        c = c + 2
        rs1.MoveNext
        If c >= pagelen Then
            Print #f, String(156, "-")
            Print #f, Chr(12)
            c = 0
            Call debit_raisenote_header(From_Date, To_Date)
        End If
    Loop
    Print #f, String(156, "-")
    Print #f,
    Print #f,
    Print #f,
    Print #f,
    Call footermod(CInt(f), footerstr, 80)
    Print #f, Chr(12)
    Print #f, Chr(18)
Close
Close #f
'Open "c:\debitraisenote.bat" For Output As #f
'    Print #f, "cd\"
'    Print #f, "c:"
'    Print #f, "type debitraisenote.txt>prn"
'Close
'Set Rep = New Report.ReportView
'Rep.txtfile = "c:\debitraisenote.txt"
'Rep.Batfile = "c:\debitraisenote.bat"

f = FreeFile
Call KALBATPROCESS("debitraisenote")
Screen.MousePointer = 0

Exit Sub
debit_raisenote_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure debit_raisenote of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub debit_raisenote_header(From_Date As String, To_Date As String)
On Error GoTo debit_raisenote_header_Error

pg = pg + 1
Print #f, Chr(18)
Print #f, Chr(27) & "E" & Space(30) & CENTRE(divname, 80, " ") & Chr(27) & "F"
Print #f, Chr(15)
Print #f, Chr(27) & "E" & "RMI Lot allowance \ Debit Note Report" & Chr(27) & "F" & " From " & Format(From_Date, "dd/MM/yy") & " To " & Format(To_Date, "dd/MM/yy") & Space(67) & Format(pdate, "dd/mm/yy") & Space(3) & "Pg.No.:" & Padl(pg, 3, " ")
Print #f, String(156, "-")
Print #f, "  Allow.  Debit Note Allow.  Debit  LotNo. Supplier Name                          Reason For Raising Debit Note             Bill No.      Bill    Debit Note"
Print #f, "    Date        Date    Sno     No                                                                                                        Date         Value"
Print #f, String(156, "-")
c = c + 8

Exit Sub
debit_raisenote_header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure debit_raisenote_header of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Command4_Click()
intervalMinutes = -1
Dim U As String
Dim v As String
Dim fdate, tdate As String
Dim fSupplier, tSupplier As String
Dim fltn, tltn As String
Dim X As String
On Error GoTo Command4_Click_Error

X = Combo3.Text
Select Case Repindex
Case 1000
        Dim clsstockabs As New clsCrystal
        
       
        Set clsstockabs.cryRept = Cry_POPRStatus
        
        clsstockabs.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@divcode;" & Divcode
        crr.ParameterFields(1) = "@fdate;" & Format(DTPicker2.value, "yyyy-MM-dd")
        crr.ParameterFields(2) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        crr.Formulas(0) = "UnitName='" & PrUnitName & "'"

        
       
       ' crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1
        intervalMinutes = -1
        Exit Sub





Case 777777
        Screen.MousePointer = 11
        fdate = Format(DTPicker2.value, "yyyy-mm-dd"):   tdate = Format(DTPicker3.value, "yyyy-mm-dd")
        If CDate(fdate) > CDate(tdate) Then
                MsgBox "From Date should not be greater than To Date", vbInformation, head
                DataCombo2.SetFocus
                Screen.MousePointer = 0
            Exit Sub
            End If
            If CDate(tdate) < CDate(fdate) Then
                MsgBox "To Date should not be less than From Date", vbInformation, head
                DataCombo2.SetFocus
                Screen.MousePointer = 0
            Exit Sub
        End If
        fSupplier = Right(Trim(dbcmb_fsup.Text), 7)
        tSupplier = Right(Trim(dbcmb_tsup.Text), 7)
        
        If fSupplier <> tSupplier Then
            MsgBox "Please select the single Supplier", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set Rs = New Recordset
        Rs.Open " Select DISTINCT a.Lotno,a.Lotdt,Supcd,slname,Varcode,B.ASNO,B.Adate,b.Dbno,b.Dbdt,b.Dbnarr,b.Aratecy,Akgs," & _
                " B.DBAMT,ALLOWANCE,a.billno,a.billdt,isnull(a.pjamt,0) as pjamt,d.divname," & _
                " C.ADD1 , C.add2, C.add3, C.CITY, C.pin, C.State, e.dbreason " & _
                " from rm_lot a,rm_lotallowance b,fa_slmas c,pp_divmas d,RM_DBNoteType e" & _
                " WHERE a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.DIVCODE='" & Divcode & "' and a.supcd=c.slcode" & _
                " and a.supcd ='" & fSupplier & "'  AND b.adate BETWEEN '" & Format(fdate, "YYYY-MM-DD") & "' AND '" & Format(fdate, "YYYY-MM-DD") & "' " & _
                " and a.divcode=d.divcode and b.dbno=e.dbcode ORDER BY B.ASNO,B.ADATE ", DB, adOpenStatic
                
'        If Rs.EOF = True Then
'            MsgBox "No Records Found", vbInformation, head
'            Screen.MousePointer = vbNormal
'            Exit Sub
'        End If
'
'    If Not Rs.EOF Then
    crr.Reset
           
    crr.Connect = connectstring

    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\DebitNoteRegister.rpt"
    crr.StoredProcParam(0) = Divcode
    crr.StoredProcParam(1) = fSupplier
    crr.StoredProcParam(2) = Format(fdate, "YYYY-MM-DD")
    crr.StoredProcParam(3) = Format(tdate, "YYYY-MM-DD")
     
    crr.WindowState = crptMaximized
     SendKeys "{ENTER}"
    crr.Action = True
    Screen.MousePointer = vbNormal
    crr.PrinterCopies = 1
'    End If
    Screen.MousePointer = 0
intervalMinutes = -1

Case 105
    DT = Format(DTPicker2.value, "yyyy-mm-dd"):  dt1 = Format(DTPicker3.value, "yyyy-mm-dd")
    If DataCombo1.MatchedWithList Then
    W = Trim(Left(DataCombo1.Text, 1))
    Else
     MsgBox "Select the valid Category", vbInformation, head
            DataCombo1.Text = ""
            DataCombo1.SetFocus
            Screen.MousePointer = 0
            Exit Sub
      End If
    X = Mid$(Combo1.Text, InStr(Combo1.Text, "--") + 3, (Len(Combo1.Text) - InStr(Combo1.Text, "--")))
    Call StkstmtPolysterCrystal(CStr(DT), CStr(dt1), CStr(W), CStr(X), CmbRecType, UserFooter1.SelectedStr)
    
    Set Rs = New Recordset
    Rs.Open "Select * from Temp_ItemwiseLedger", DB, adOpenStatic
    If Rs.EOF = False Then
        Dim ClsItmLedger As New clsCrystal
        Set ClsItmLedger.cryRept = Cry_StkItemwiseLedger
        ClsItmLedger.CrystalPrint
        crr.Reset
        crr.DiscardSavedData = True
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.Formulas(0) = "divname = '" & divname & "'"
        crr.ReportTitle = "Raw Material Item Ledger From " & Format(DTPicker2.value, "dd/mm/yy") & " To " & Format(DTPicker3.value, "dd/mm/yy")
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 2
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
    intervalMinutes = -1
''        MousePointer = 11
''        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockItemwiseLedger.rpt"
''
''        crr.Formulas(0) = "divname = '" & DIVNAME & "'"
''        crr.Formulas(1) = "fdate ='" & Format(DTPicker2.value, "yyyy-mm-dd") & "'"
''        crr.Formulas(2) = "tdate ='" & Format(DTPicker3.value, "dd/MM/yy") & "'"
''        crr.WindowState = crptMaximized
''        SendKeys "{Enter}"
''        crr.Action = True
''        crr.PrinterCopies = 1
''        Me.MousePointer = 0
''        Exit Sub
    
    Else
        MsgBox "No Records Found", vbInformation, head
        Exit Sub
    End If

Case 522
        bolCrystal = True
        Call stkQryt
        Screen.MousePointer = 0

Case 32 ' Godownwise stock Statement
         U = Format(DTPicker2.value, "dd/mm/yyyy"):      v = Format(DTPicker3.value, "dd/mm/yyyy")
               
    Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -   '  + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd and a.lotdt between '" & Format(DataCombo2.Text, "yyyy/mm/dd") & "' and '" & Format(DataCombo3.Text, "yyyy/mm/dd") & "'", cn, adOpenStatic
         
godown:  W = Trim(Mid$(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1))
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
       If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
        If DataCombo5.MatchedWithList And DataCombo6.MatchedWithList Then
        
         X = DCmbFLtN.Text:           Y = DCmbTLtN.Text
         z = Check1.value
         Call StockGodownReportCrystal(CStr(U), CStr(v), CStr(W), divname, CStr(X), CStr(Y), "N", CStr((Mid$(DataCombo5.Text, 1, (InStr(DataCombo5.Text, "-") - 1)))), CStr((Mid$(DataCombo6.Text, 1, (InStr(DataCombo6.Text, "-") - 1)))), CmbRecType.Text)

         Screen.MousePointer = 0
                    End If
           End If
           
 
Case 228
        Dim rec As Recordset
        
        DataCombo2.Text = DTPicker2.value:   DataCombo3.Text = DTPicker3.value
        U = Format(DataCombo2.Text, "dd/mm/yyyy"):   v = Format(DataCombo3.Text, "dd/mm/yyyy")
        
        If CDate(U) > CDate(v) Then
           MsgBox "From Date should not be greater than To Date", vbInformation
           DataCombo2.SetFocus
           Screen.MousePointer = 0
           Exit Sub
        End If
        
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DataCombo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        
'        Set db = New Connection
'        db.CursorLocation = adUseClient
'
'        If db.State = 1 Then
'          db.Close
'        End If
'
'        db.ConnectionString = "provider=msdatashape;" & connectstring
        On Error GoTo errorsub
        DB.BeginTrans
        
        Set Rs = New Recordset
        Rs.Open "select * from sysobjects where name ='Temp_Periodical_PurchaseOrderRegister'", DB, adOpenStatic

        If Rs.RecordCount > 0 Then
            DB.Execute "Drop table Temp_Periodical_PurchaseOrderRegister"
        End If
        Rs.Close
        Set Rs = Nothing
        
        Set rec = New Recordset
        rec.CursorLocation = adUseClient
         If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
             
             
'               L_God = ""
'     L_aread_God = ""
'     divcount = 0
'
'           For I = 1 To List_div.ListItems.Count
'
'                If List_div.ListItems.Item(I).Checked = True Then
'                    sRecCount = Trim(List_div.ListItems(I).SubItems(1))
'                    If L_God <> "" Then
'                        L_God = L_God + "," + "'" + Trim(sRecCount) + "'"
'                         L_aread_God = L_aread_God + "," + Trim(sRecCount)
'                         divcount = divcount + 1
'                    Else
'                        L_God = Trim(sRecCount)
'                        L_God = "'" + L_God + "'"
'                        L_aread_God = Trim(sRecCount)
'                        divcount = divcount + 1
'                    End If
'                End If
'            Next
'
'
'        If L_God = "" Then
'            MsgBox "Please Select Any Division ", vbInformation, head
'            Exit Sub
'        Else
'            If divcount > 1 Then
'            'L_God = "'" + L_God + "'"
'            L_God = LTrim(L_God)
'            End If
'        End If
        
        
        
            
                rec.Open "select Result.contdt,Result.varname,Result.SupplierName,Result.BrokerName,Result.areaname," & _
                        "Result.contno,Result.candyrate," & _
                        "Result.unit," & _
                        "Result.ordqty,Result.duedate," & _
                        "Result.ordkgs,Result.MillRefNo,divcode,varcode" & _
                    " Into Temp_Periodical_PurchaseOrderRegister " & _
                    " From " & _
                    "(select distinct a.contdt,c.varname,b.slname as SupplierName," & _
                        "z.slname as BrokerName,v.areaname," & _
                        "cast(a.contno as varchar) as contno,round(a.candyrate,4) AS CandyRate," & _
                        "unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end," & _
                        "isnull(a.ordqty,0)ordqty,a.duedate," & _
                        "isnull(a.ordkgs,0)ordkgs,a.MillRefNo,divcode,a.varcode" & _
                    " from rm_cont a inner Join fa_slmas b on a.SUPCD=b.SLCODE " & _
                    " Left Join  fa_slmas z on a.brkcd =z.slcode  " & _
                    " left JOin rm_var c on c.varcode=a.varcode " & _
                    " Left Join rm_area v on a.areacOdE=v.areacode " & _
                    " where a.contdt Between '" & Format(U, "dd-mmm-yyyy") & "' and ' " & Format(v, "dd-mmm-yyyy") & "'" & _
                        " and divcode = '" & Divcode & "' )Result", DB, adOpenStatic, adLockBatchOptimistic


         
         Else
            rec.Open "select Result.contdt,Result.varname,Result.SupplierName,Result.BrokerName,Result.areaname," & _
                        "Result.contno,Result.candyrate," & _
                        "Result.unit," & _
                        "Result.ordqty,Result.duedate," & _
                        "Result.ordkgs,Result.MillRefNo,divcode,varcode" & _
                    " Into Temp_Periodical_PurchaseOrderRegister " & _
                    " From " & _
                    "(select distinct a.contdt,c.varname,b.slname as SupplierName," & _
                        "z.slname as BrokerName,v.areaname," & _
                        "cast(a.contno as varchar) as contno,round(a.candyrate,4) AS CandyRate," & _
                        "unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end," & _
                        "isnull(a.ordqty,0)ordqty,a.duedate," & _
                        "isnull(a.ordkgs,0)ordkgs,a.MillRefNo,divcode,a.varcode" & _
                    " from rm_cont a inner Join fa_slmas b on a.SUPCD=b.SLCODE " & _
                    " Left Join  fa_slmas z on a.brkcd =z.slcode  " & _
                    " left JOin rm_var c on c.varcode=a.varcode " & _
                    " Left Join rm_area v on a.areacOdE=v.areacode " & _
                    " where a.contdt Between '" & Format(U, "dd-mmm-yyyy") & "' and ' " & Format(v, "dd-mmm-yyyy") & "'" & _
                        " and divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic
            End If
        DB.CommitTrans
        
        If Option1.value = True Then
                
            Dim clsCryRptSup As New clsCrystal
            Set clsCryRptSup.cryRept = Rep_Period_POReg_supplier
            clsCryRptSup.CrystalPrint
                    
            crr.Reset
            crr.Connect = connectstring
            crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
            'CrystalReport1.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & Divcode & "'"
            crr.ParameterFields(0) = "description;" & "Purchase Order List from " & Format(U, "dd/mm/yy") & " to " & Format(v, "dd/mm/yy") & ""
            crr.ParameterFields(1) = "name;" & divname & ""
    
            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            crr.Action = 1
            crr.PrinterCopies = 1
            intervalMinutes = -1
        End If
            
        If Option2.value = True Then
        
            Dim clsCryRptAge As New clsCrystal
            Set clsCryRptAge.cryRept = Rep_Period_POReg_Agent
            clsCryRptAge.CrystalPrint
    
            crr.Reset
            crr.Connect = connectstring
            crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
            'CrystalReport1.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & Divcode & "'"
            crr.ParameterFields(0) = "description;" & "Purchase Order List from " & Format(U, "dd/mm/yy") & " to " & Format(v, "dd/mm/yy") & ""
            crr.ParameterFields(1) = "name;" & divname & ""
    
            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            crr.Action = 1
            crr.PrinterCopies = 1
        End If

        If Option3.value = True Then
            Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = Rep_Period_POReg_Datewise
            clsCryRpt.CrystalPrint
                    
            crr.Reset
            crr.Connect = connectstring
            crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
            'CrystalReport1.SelectionFormula = "{PO_PRH.PRDATE} = DATE(" & val(Year(DOCDT)) & "," & val(MONTH(DOCDT)) & "," & val(Day(DOCDT)) & ")  and {PO_PRH.PRNO}=" & pno & "  and {PO_PRH.DIVCODE}='" & Divcode & "'"
            crr.ParameterFields(0) = "description;" & "Purchase Order List from " & Format(U, "dd/mm/yy") & " to " & Format(v, "dd/mm/yy") & ""
            crr.ParameterFields(1) = "name;" & divname & ""
    
            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            crr.Action = 1
            crr.PrinterCopies = 1
            intervalMinutes = -1
            'MousePointer = 11
            'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_POReg.rpt"
            'FrmRpt.RptHead = "2A"
            'parameter1 = "Purchase Orders From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy") & ""
            'parameter2 = DIVNAME
            'FrmRpt.Show
            Me.MousePointer = 0
        
        End If
        
        Exit Sub

Case 3435
    If Len(DataCombo2.Text) > 0 And DataCombo2.MatchedWithList Then
        Call Lotwiseissueregister(DataCombo2.Text, Left(Combo1.Text, 2), X)
    Else
        MsgBox "Please Select the Correct Date", vbInformation, head
        DataCombo2.Text = ""
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If

Case 19
    Dim dateg As String
    Dim strg As String
    'Dim x As String
    dateg = Format(DTPicker2.value, "yyyy-mm-dd")
    strg = Trim(Mid(Combo1.Text, 1, 2))
    X = Combo3.Text
    
    Call IssueRegister(dateg, strg, X)
    
Case 999
'

        
        Screen.MousePointer = 11
        Dim sdr1 As String
        
        sdr1 = Combo2.Text
        Set RSS = New Recordset
        RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
        If (Combo2.Text <> "") Then
            Do While Not RSS.EOF
                If sdr1 <> RSS(0) And sdr1 <> "ALL   -   ALL" Then
                    RSS.MoveNext
                Else
                    GoTo Label
                End If
            Loop
            MsgBox "Select the Correct Category", vbInformation, head
            Combo2.Text = ""
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
Label:
    Dim Str As String, T_Date As String, K As String, vrectype As String
    Dim strSQL As String
    'Dim rs As New Recordset
    
    Str = DTPicker1.value
    K = Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1)
    vrectype = Trim(Left(CmbRecType.Text, 3))
    F_Date = Str
    T_Date = Str
    
    str1 = Str
    k1 = K
    On Error GoTo errorsub
    
    
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Daily_VarietyStockPosition'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Daily_VarietyStockPosition"
    End If
    If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
        DB.Execute "Create table Temp_Daily_VarietyStockPosition(GroupName Varchar(50),varcode varchar(10),varname varchar(50),VarDesc varchar(10),shade Varchar(20),Denier Varchar(20),Length numeric(10),ShadeNo numeric(10),Supplier Varchar(100),Category Varchar(50),lotno numeric(10),lotdt varchar(10),catcd varchar(10),bales numeric(10),TotGrsWt numeric(18,3),TotTare Numeric(18,3),stock numeric(18,3),val numeric(20,2),plotno varchar(20),RateCandy numeric(15,4),Ratekg numeric(15,4),unit varchar(10))"
    Else
        DB.Execute "Create table Temp_Daily_VarietyStockPosition(varcode varchar(10),varname varchar(50),lotno numeric(10),lotdt varchar(10),catcd varchar(10),bales numeric(10),stock numeric(18,3),val numeric(20,2),plotno varchar(20),RateCandy numeric(15,4),Ratekg numeric(15,4),unit varchar(10),slname varchar(100))"
    End If
'    If k <> "ALL" Then
'        Set Rs = New Recordset
'
'        If vrectype <> "ALL" Then
'            If vrectype = "A" Then
'                tmptypestr = "b.LotType"
'            Else
'                tmptypestr = "b.TransferType"
'            End If
'            If vrectype = "A" Then
'                strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd, (Result.clobales + Result.cloboras) as bales," & _
'                    " Result.clokgs as stock,closevalue as val," & _
'                    " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                    " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                    " " & _
'                    " from "
'
'                strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                    " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                    " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                    " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                    " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                    " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                    " rm_lot b,rm_Var a,RM_Cat c where (b.transfertype='' or b.transfertype='JR') and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                    " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'            Rs.CursorLocation = adUseClient
'            Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'
'            Else
'                strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd,(Result.clobales + Result.cloboras) as bales," & _
'                    " Result.clokgs as stock,closevalue as val," & _
'                    " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                    " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                    " " & _
'                    " from "
'
'                    strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                    " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                    " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                    " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                    " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0  and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                    " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                    " rm_lot b,rm_Var a,RM_Cat c where " & tmptypestr & "= '" & vrectype & "' and b.catcd='" & k & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                    " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'                    Rs.CursorLocation = adUseClient
'                    Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'            End If
'        Else
'            strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd, (Result.clobales + Result.cloboras) as bales," & _
'                " Result.clokgs as stock,closevalue as val," & _
'                " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                "  " & _
'                " from "
'
'            strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                " rm_lot b,rm_Var a,RM_Cat c where Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'                Rs.CursorLocation = adUseClient
'                Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'        End If
'    Else
'        Set Rs = New Recordset
'        If vrectype <> "ALL" Then
'            If vrectype = "A" Then
'                tmptypestr = "b.LotType"
'            Else
'                tmptypestr = "b.TransferType"
'            End If
'            If vrectype = "A" Then
'                strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd, (Result.clobales + Result.cloboras) as bales," & _
'                    " Result.clokgs as stock,closevalue as val," & _
'                    " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                    " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                    "  " & _
'                    " from "
'
'                strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                    " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                    " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                    " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                    " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                    " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'  and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                    " rm_lot b,rm_Var a,RM_Cat c where (b.TransferType='' OR b.TransferType='JR')  and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                    " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'                    Rs.CursorLocation = adUseClient
'                    Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'            Else
'                strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd, (Result.clobales + Result.cloboras) as bales," & _
'                    " Result.clokgs as stock,closevalue as val," & _
'                    " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                    " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                    "  " & _
'                    " from "
'
'                    strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                    " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                    " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                    " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                    " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                    " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                    " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                    " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                    " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                    " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                    " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                    " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                    " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                    " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                    " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                    " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                    " rm_lot b,rm_Var a,RM_Cat c where " & tmptypestr & "='" & vrectype & "' and Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                    " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'                    Rs.CursorLocation = adUseClient
'                    Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'            End If
'        Else
'            strSQL = "select b.varcode,a.varname,b.lotno,b.lotdt,isnull(b.catcd,' ') as catcd, (Result.clobales + Result.cloboras) as bales," & _
'                " Result.clokgs as stock,closevalue as val," & _
'                " b.plotno,b.ratecy as RateCandy ,b.ratekg, " & _
'                " case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit " & _
'                "  " & _
'                " from "
'
'                strSQL = strSQL & " (select a.varcode,A.LOTNO,A.LOTDT,sum(isnull(a.opbales,0)) as opbales,sum(isnull(a.opboras,0)) as opboras,sum(isnull(a.opkgs,0)) as opkgs," & _
'                " sum(isnull(a.recbales,0)) as recbales,sum(isnull(a.recboras,0)) as recboras,sum(isnull(a.reckgs,0)) as reckgs," & _
'                " sum(isnull(a.issbales,0)) as issbales,sum(isnull(a.issboras,0)) as issboras,sum(isnull(a.isskgs,0)) as isskgs," & _
'                " case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, " & _
'                " case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs " & _
'                " ,sum(isnull(a.opvalue,0)) as opvalue,sum(isnull(a.recvalue,0)) as recvalue,sum(isnull(a.issvalue,0)) as issvalue,case when sum(isnull(a.opvalue,0)) > 0 then ((sum(isnull(a.opvalue,0))+sum(isnull(a.recvalue,0)))-sum(isnull(a.issvalue,0))) else (sum(isnull(a.recvalue,0))-sum(isnull(a.issvalue,0))) end  closevalue from " & _
'                " ((select varcode,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,sum(OPvalue-issvalue) as opvalue,0 as recvalue,0 as issvalue from( " & _
'                " select b.varcode,B.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs,sum(isnull(b.netwt,0)) *cast(b.ratekg as decimal (12,4)) as opvalue,0 as recvalue,0 as issvalue from rm_lot b where B.DIVCODE='" & Divcode & "' AND B.lotyear IN ('" & Year(yfdate) & "') AND " & _
'                " (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y') AND BALES >0 and (B.rejflg='N' or B.rejdt>='" & Format(F_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg ,b.ratekg " & _
'                " UNION select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs ,0 as opvalue,0 as recvalue,0 as issvalue from rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg " & _
'                " union select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as issbales,0 as issboras,sum(C.ACTISSKGS) as isskgs ,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4)) as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND  B.DIVCODE='" & Divcode & "' AND (b.lotdt < '" & Format(F_Date, "YYYY/MM/DD") & "' OR UPPER(OPFLG)='Y')  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno=c.lotno and B.lotyear in ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt <'" & Format(F_Date, "YYYY/MM/DD") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.bblflg,b.ratekg) a  group by varcode,LOTNO,LOTDT  Union " & _
'                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales,case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, " & _
'                " case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as opvalue,SUM(B.NETWT)*RATEKG as recvalue,0 as issvalue from rm_lot b " & _
'                " where B.DIVCODE='" & Divcode & "' AND upper(opflg)='N' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' AND B.LOTDT BETWEEN '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "'" & _
'                " group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,RATEKG  Union  select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when b.bblflg = 'B' then count(c.baleno)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(c.baleno) else 0 end as issboras,0 as isskgs,0 as opvalue,0 as recvalue,0  as issvalue from " & _
'                " rm_lot b,rm_issb c where C.ISSUED='Y' AND B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg UNION ALL" & _
'                " select b.varcode,B.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,0 as issbales, 0 as issboras,sum(C.ACTISSKGS) as isskgs,0 as opvalue,0 as recvalue,round((sum(isnull(C.ACTISSKGS,0))),3)*cast(b.ratekg as decimal (12,4))  as issvalue from rm_lot b,rm_issb c where B.DIVCODE=C.DIVCODE AND B.DIVCODE='" & Divcode & "' AND BALES >0  AND b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd  and docdt between '" & Format(F_Date, "yyyy-mm-dd") & "' and '" & Format(T_Date, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and (B.rejflg='N' or B.rejdt>'" & Format(T_Date, "yyyy-mm-dd") & "') group by b.varcode,B.LOTNO,B.LOTDT,b.opflg,b.bblflg,b.ratekg))a group by a.varcode,A.LOTNO,A.LOTDT) AS Result, " & _
'                " rm_lot b,rm_Var a,RM_Cat c where Result.LotNo=b.LotNo and Result.LotDt=b.Lotdt AND b.DIVCODE='" & Divcode & "' AND BALES >0  AND a.Varcode=b.Varcode and c.Catcd=b.Catcd group by b.varcode,a.varname,b.lotno,b.lotdt,b.catcd,a.varname, Result.clobales , Result.cloboras, " & _
'                " Result.clokgs,closevalue, b.plotno,b.ratecy,b.ratekg,b.BBLFLG "
'
'                Rs.CursorLocation = adUseClient
'                Rs.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
'        End If
'    End If
    Dim strQRY1, strQRY2 As String
    strQRY1 = vbNullString
    strQRY2 = vbNullString
    
    If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
        strQRY1 = ",C.oldvarcode as GroupName,C.VARTYPE,CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' End 'Vardesc',SHADENO,Denier,Length"
        strQRY2 = ",C.oldvarcode,C.VARTYPE,SHADENO,Denier,Length "
    End If
    strSQL = vbNullString
    strSQL = " select a.varcode,e.slname,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') as catcd,RATECY AS rATECANDY,RATEKG,B.PLOTNO,case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0))+ sum(isnull(a.ISSRETBAL,0)))-( sum(isnull(a.PRODBAL,0)) + sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else ((sum(isnull(a.recBAL,0))+sum(isnull(a.ISSRETBAL,0)))-(sum(isnull(a.PRODBAL,0)) + sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END BALES, "
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0))+sum(isnull(a.ISSRETBOR,0)))-(sum(isnull(a.PRODBOR,0)) + sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else ((sum(isnull(a.recBOR,0))+sum(isnull(a.ISSRETBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END AS  BORAS,"
    strSQL = strSQL + "(SUM(A.OPGRSKgs)+SUM(A.RECGRSKgs)+ SUM(A.RTNGRSKgs)+SUM(A.ISSRETKGS))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))  AS GROSSWT, "
    strSQL = strSQL + "(SUM(A.OPTRKgs)+SUM(A.RECTRKgs)+ SUM(A.RTNTRKgs)) AS TAREWT, "
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+sum(isnull(a.ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else ((sum(isnull(a.recKGS,0))+sum(isnull(a.ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END STOCK,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0))-sum(isnull(a.ISSRETVAL,0)) )-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else ((sum(isnull(a.recvalue,0))-sum(isnull(a.ISSRETVAL,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VAL "
    strSQL = strSQL + strQRY1
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(Str, Str)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E " & _
    "WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD " & _
    " AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
    
intervalMinutes = -1
                
    If Trim(K) <> "ALL" Then
              
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                'strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by A.LOTDT,A.lotno "
                strSQL = strSQL & " and (b.transfertype='' or isnull(b.transfertype,'A')='" & Trim(vrectype) & "') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by c.varname,A.lotno,A.LOTDT "
            Else
                strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by A.LOTDT,A.lotno"
            End If
        Else
                strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(K) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY,B.PLOTNO,RATEKG,bblflg,e.slname " & strQRY2 & " Order by A.LOTDT,A.lotno"
        End If
    Else
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg ,e.slname" & strQRY2 & " Order by A.LOTDT,A.lotno"
            Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by A.LOTDT,A.lotno"
            End If
        Else
                'strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by A.LOTDT,A.lotno"
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg,e.slname " & strQRY2 & " Order by C.VARNAME,A.lotno"
        End If
    End If
    
    
    Set Rs = New Recordset
    Rs.Open strSQL, DB, adOpenStatic
    If Rs.EOF = True Then
        MsgBox "No Record(s) found", vbInformation, head
        DB.CommitTrans
        Exit Sub
    Else
        Do While Not Rs.EOF
            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                sLname = vbNullString
                catname = vbNullString
                ShadeName = vbNullString
                ShadeNo = vbNullString
                CITY = vbNullString
                
                Set TmpRs = New Recordset
                TmpRs.Open "Select Slname,City " & _
                           " From rm_lot A,Fa_Slmas b " & _
                           " Where a.supcd=b.slcode " & _
                           " AND A.DIVCODE ='" & Divcode & "'" & _
                           " And   A.LotNo = " & val(NULLCHECK(Rs("lotno"))) & " " & _
                           " And   A.LotDt ='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
                If Not TmpRs.EOF Then
                    sLname = NULLCHECK(TmpRs("Slname"))
                End If
                
                Set TmpRs = New Recordset
                TmpRs.Open "Select CatName " & _
                           " From rm_cat  " & _
                           " Where Catcd = '" & NULLCHECK(Rs("catcd")) & "'", DB, adOpenStatic
                If Not TmpRs.EOF Then
                    catname = NULLCHECK(TmpRs("CatName"))
                End If
                
                Set TmpRs = New Recordset
                TmpRs.Open "Select ShadeName " & _
                           " From IG_SHADEHD  " & _
                           " Where ShadeCode = '" & NULLCHECK(Rs("Shadeno")) & "'", DB, adOpenStatic
                If Not TmpRs.EOF Then
                    ShadeName = NULLCHECK(TmpRs("ShadeName"))
                End If
                
                Set TmpRs = New Recordset
                TmpRs.Open "Select Prmark " & _
                           " From rm_arrival  " & _
                           " Where Lotno = " & NULLCHECK(Rs("lotno")) & "" & _
                           " AND DIVCODE ='" & Divcode & "'", DB, adOpenStatic
                If Not TmpRs.EOF Then
                    ShadeNo = NULLCHECK(TmpRs("Prmark"))
                End If
                
                intervalMinutes = -1
                ShadeNo = 0
                DB.Execute "Insert into Temp_Daily_VarietyStockPosition values " & _
                          "('" & Rs("Groupname") & "'," & _
                          "'" & Rs("varcode") & "'," & _
                          "'" & Rs("varname") & "'," & _
                          "'" & Rs("Vardesc") & "'," & _
                          "'" & ShadeName & "'," & _
                          "'" & Trim$(NULLCHECK(Rs("Denier"))) & "'," & _
                          "'" & val(NULLCHECK(Rs("Length"))) & "'," & _
                          " " & ShadeNo & "," & _
                          "'" & sLname & "'," & _
                          "'" & catname & "'," & _
                          " " & val(NULLCHECK(Rs("lotno"))) & "," & _
                          "'" & Format(Rs("lotdt"), "yyyy-mm-dd") & "'," & _
                          "'" & NULLCHECK(Rs("catcd")) & "'," & _
                          " " & val(NULLCHECK(Rs("bales")) + val(NULLCHECK(Rs("boras"))) & "") & "," & _
                          " " & val(Rs("GROSSWT") & "") & "," & val(Rs("TAREWT") & "") & "," & _
                          " " & val(Rs("stock") & "") & "," & val(Rs("val") & "") & "," & _
                          "'" & NULLCHECK(Rs("plotno")) & "'," & _
                          " " & val(NULLCHECK(Rs("ratecandy"))) & "," & _
                          " " & val(NULLCHECK(Rs("ratekg"))) & "," & _
                          "'" & NULLCHECK(Rs("unit")) & "')"
            Else
                DB.Execute "Insert into Temp_Daily_VarietyStockPosition values ('" & Rs("varcode") & "','" & Rs("varname") & "'," & val(Rs("lotno") & "") & ",'" & Format(Rs("lotdt"), "yyyy-mm-dd") & "','" & Rs("catcd") & "'," & val(Rs("bales") + Rs("boras") & "") & "," & val(Rs("stock") & "") & "," & val(Rs("val") & "") & ",'" & Rs("plotno") & "'," & val(IIf(IsNull(Rs("ratecandy")), "", Rs("ratecandy")) & "") & "," & val(Rs("ratekg") & "") & ",'" & Rs("unit") & "','" & Rs("slname") & "')"
            End If
            Rs.MoveNext
        Loop
    End If
    
    
    
    
    ''DB.CommitTrans
        intervalMinutes = -1
    Me.MousePointer = 11
    
    If (UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI") And Repindex = 999 And tmpflg = True Then
        Call VarietywiseStockPositionExcel
        tmpflg = False
        Me.MousePointer = 0
        Exit Sub
    End If
    
    
    
 Dim Categoryvar As String
If Left(sdr1, 1) = "B" Then
    Categoryvar = "Category : POLYNOSIC"
ElseIf Left(sdr1, 1) = "C" Then
    Categoryvar = "Category : COTTON"
ElseIf Left(sdr1, 1) = "F" Then
    Categoryvar = "Category : FLAX FIBRE"
ElseIf Left(sdr1, 1) = "L" Then
    Categoryvar = "Category : LYCRA"
ElseIf Left(sdr1, 1) = "P" Then
    Categoryvar = "Category : POLYESTER"
ElseIf Left(sdr1, 1) = "A" Then
    Categoryvar = "Category : ALL"
End If
    
    
    
    
     If Optabs.value = True Then
         Dim clsstockpositionabs As New clsCrystal
          Set clsstockpositionabs.cryRept = Cry_Stockpositionabs_SKS
          clsstockpositionabs.CrystalPrint
          crr.Reset
          crr.Connect = connectstring
          crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
          crr.ParameterFields(0) = "Name;" & divname & ""
          crr.ParameterFields(1) = "@UnitName;" & PrUnitName & ""
          crr.ParameterFields(2) = "Description;" & "Varietywise Stock Position as on " & Format(F_Date, "dd/mm/yy") & ""
          crr.Formulas(0) = "divname='" & divname & "'"
          crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
          crr.Formulas(2) = "Category='" & Categoryvar & "'"
          crr.PrinterCopies = 1
          crr.WindowState = crptMaximized
          SendKeys "{ENTER}"
          crr.Action = 1
          intervalMinutes = -1
          Exit Sub
'
   Else
       
         
         
    Dim clsCryRpt2 As New clsCrystal
    If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
        Set clsCryRpt2.cryRept = Pallava_RMIStockGroup
    Else
        Set clsCryRpt2.cryRept = Rep_Daily_VarietyStockPosition
    End If
    clsCryRpt2.CrystalPrint
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "Name;" & divname & ""
    crr.ParameterFields(1) = "@UnitName;" & PrUnitName & ""
    crr.ParameterFields(2) = "Description;" & "Varietywise Stock Position as on " & Format(F_Date, "dd/mm/yy") & ""
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 2
    crr.PrinterCopies = 1
    Me.MousePointer = 0
    Exit Sub
    Screen.MousePointer = 0
 End If
Case 2
'Dim Str As String
  sdr = Combo2.Text
    'Rs.Close
  Set RSS = New Recordset
  RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
      Do While Not RSS.EOF
        If sdr <> RSS(0) And sdr <> "ALL   -  ALL" Then
           RSS.MoveNext
        Else
             If Combo2.Text <> "" And DataCombo2.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
             If DCmbFLtN.MatchedWithList Then
            If DCmbTLtN.MatchedWithList Then
                 If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
                    Str = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
                    a = Format(DTPicker1.value, "yyyy-mm-dd")
                    Call StockLotReport4(CStr(Str), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), UserFooter1.SelectedStr, CmbRecType.Text)
                    Screen.MousePointer = 0
                    Exit Sub
                 Else
                    MsgBox "Select the Correct To Lot No", vbInformation, head
                    DCmbTLtN.Text = ""
                    DCmbTLtN.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             Else
                MsgBox "Select the Correct From Lot No", vbInformation, head
                DCmbFLtN.Text = ""
                DCmbFLtN.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
         Else
            MsgBox "Select the Correct Category", vbInformation, head
            Combo2.Text = ""
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
         End If
        If dv1.rsCommand1.State = adStateOpen Then dv1.rsCommand1.Close
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  (a.refdt='N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If
        End If
       Loop
       MsgBox "Select the Correct Category", vbInformation, head
       Combo2.Text = ""
       Combo2.SetFocus
       Screen.MousePointer = 0
       Exit Sub
       
Case 19111


    Dim issuetype As String, lottype As String

    DataCombo2.Text = DTPicker2.value: DataCombo3.Text = DTPicker3.value
    U = Format(DataCombo2.Text, "yyyy-mm-dd"):     v = Format(DataCombo3.Text, "yyyy-mm-dd")
    issuetype = Trim(Mid(Combo1.Text, 1, 2))
    lottype = Trim(Mid(CmbRecType.Text, 1, 3))
    
    On Error GoTo errorsub
    DB.BeginTrans
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_IssueRegisterDatewise'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_IssueRegisterDatewise"
    End If
    Rs.Close
    Set Rs = Nothing
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_IssReg_Datewise_Abstract'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_IssReg_Datewise_Abstract"
    End If
    
    Set rs4 = New Recordset
    If Trim(issuetype) = "A" Then
        If lottype = "ALL" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(ISNULL(BALES,0))AS BALES," & _
                            "SUM(ISNULL(NETWT,0))AS NETWT,SUM(ISNULL(INVWT,0))AS INVWT" & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " From " & _
                           "(select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales," & _
                                    "0 as netwt,0 as invwt " & _
                           " from rm_issb a, rm_var b " & _
                            " where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and " & _
                                " a.docdt between '" & U & "' and  '" & v & "' " & _
                           " group by b.varname, a.docno, a.docdt " & _
                         " Union All " & _
                           "select a.docno, a.docdt, b.varname, 0 AS BALES, sum(ISNULL(a.actisskgs,0)) as netwt," & _
                                    "sum(ISNULL(c.pnetwt,0)) as invwt " & _
                           " from rm_issb a, rm_var b, rm_bale c " & _
                            " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                                   " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and " & _
                                   " a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and " & _
                                   " a.docdt between '" & U & "' and  '" & v & "' " & _
                                   " group by b.varname, a.docno, a.docdt)X " & _
                   " GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
        Else
            rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(ISNULL(BALES,0))AS BALES,SUM(ISNULL(NETWT,0))AS NETWT,SUM(ISNULL(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise  " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and " & _
                            " a.Divcode='" & Divcode & "' and lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        "select a.docno, a.docdt, b.varname, 0 AS BALES," & _
                            "sum(ISNULL(a.actisskgs,0)) as netwt,sum(ISNULL(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND " & _
                            " A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X " & _
                    " GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
        End If
    Else
        If lottype = "ALL" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES," & _
                        "SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        "(select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All  " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            "sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X  " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES,SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and " & _
                            " a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            " sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and " & _
                            " a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X  " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        Else
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES,SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            "sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where  a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and a.lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        End If
    End If
    'ABSTRACT
        
    Set rs4 = New Recordset
    intervalMinutes = -1
    If lottype = "ALL" Then
        If Trim(issuetype) = "A" Then
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        Else
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        End If
    Else
        If Trim(issuetype) = "A" Then
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "and a.lottype='" & lottype & "' Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        Else
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where isstype='" & issuetype & "' AND docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "and a.lottype='" & lottype & "' Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where isstype='" & issuetype & "' AND docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        End If
    End If
    
    DB.CommitTrans
    Me.MousePointer = 11
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_IssueRegister_Datewise.rpt"
    'FrmRpt.RptHead = "2A"
    'parameter1 = "Datewise Issue Register From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy")
    'parameter2 = DIVNAME
    'FrmRpt.Show
    intervalMinutes = -1
    
    Dim clsCryRpt_d As New clsCrystal
    If UCase(CustID) = "SOUTHERN" Or UCase(CustID) = "SARANYA" Then
        Set clsCryRpt_d.cryRept = Cry_R_IssueListDatewise_lansacp  ' P_IssueList_Datewise 'Rep_Periodical_IssueRegister_Datewise
    ElseIf UCase(CustID) = "COTTON" And UCase(divabbr) <> "SCMTS" Then
        If Check3.value = 0 Then
            'Set clsCryRpt_d.cryRept = Cry_issueRegisterRMI
            Set clsCryRpt_d.cryRept = Cry_issueRegisterRMI_SRG
        Else
            Set clsCryRpt_d.cryRept = Cry_CottonConsumption
        End If
    ElseIf UCase(CustID) = "COTTON" And UCase(divabbr) = "SCMTS" Then
           Set clsCryRpt_d.cryRept = Cry_IssReg_SCM
    Else
'        If UCase(Trim(CustID)) = "JAT" Then
''            Me.MousePointer = 11
''            FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_IssueRegister_Datewise.rpt"
''            FrmRpt.RptHead = "2A"
''            parameter1 = "Datewise Issue Register From " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy")
''            parameter2 = divname
''            FrmRpt.Show
''            Me.MousePointer = 0
''            Exit Sub
'            Set clsCryRpt_d.cryRept = Rep_Periodical_IssueRegister_Datewise  ' P_IssueList_Datewise 'Rep_Periodical_IssueRegister_Datewise
'        Else
            Set clsCryRpt_d.cryRept = Cry_R_IssueListDatewise  ' P_IssueList_Datewise 'Rep_Periodical_IssueRegister_Datewise
'        End If
    End If
    clsCryRpt_d.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
    crr.ParameterFields(1) = "@FDate;" & Format(U, "yyyy-mm-dd") & ""
    crr.ParameterFields(2) = "@TDate;" & Format(v, "yyyy-mm-dd") & ""
    If Check3.value = 0 Then
        crr.ParameterFields(3) = "@IssueType;" & issuetype & ""
        crr.ParameterFields(4) = "@LotType;" & lottype & ""
        ' If UCase(CustID) <> "SOUTHERN" And UCase(CustID) <> "SARANYA" Then
        If UCase(Trim(CustID)) <> "COTTON" Then
            crr.ParameterFields(5) = "@LOTYEAR;" & Year(yfdate) & ""
        End If
    Else
        crr.ParameterFields(3) = "@ipAdd;" & LocalIPAdd & ""
    End If
   ' End If
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    SendKeys "{ENTER}"
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    Me.MousePointer = 0
    
    Exit Sub

    
'    Set Rep_Periodical_IssueRegister_Datewise = New PeriodicalIssueRegisterDatewise
'    Set CRXParamDefs = Rep_Periodical_IssueRegister_Datewise.ParameterFields
'
'    For Each CRXParamDef In CRXParamDefs
'        With CRXParamDef
'            Select Case .ParameterFieldName
'
'            Case "description"
'                 .ClearCurrentValueAndRange
'                .AddCurrentValue ("Datewise Issue Register From " & Format(u, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & "")
'
'            Case "name"
'                .ClearCurrentValueAndRange
'                .AddCurrentValue (DIVNAME)
'            End Select
'        End With
'        Rep_Periodical_IssueRegister_Datewise.Database.Tables(1).SetLogOnInfo "KalSoftErp", gstrDbName, sqluser, sqlpwd
'        Rep_Periodical_IssueRegister_Datewise.Database.Tables(1).Location = gstrDbName & ".dbo.Temp_Periodical_IssueRegisterDatewise"
'    Next
'
'    Screen.MousePointer = 0
'    frm_crystalviewer.CRViewer1.EnableCloseButton = True
'    frm_crystalviewer.CRViewer1.ReportSource = Rep_Periodical_IssueRegister_Datewise
'    frm_crystalviewer.CRViewer1.ViewReport
'    frm_crystalviewer.Show
'    Me.MousePointer = 0
'    Exit Sub
'
Case 77, 7734, 7733
    Call purchasedaybook1
    
Case 77777

    
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

  Dim clsCryRpt_RMI_SALES As New clsCrystal
    Set TmpRs = New Recordset
    sup1 = Mid$(dbcmb_fsup.Text, InStr(dbcmb_fsup.Text, "--") + 3, (Len(dbcmb_fsup.Text) - InStr(dbcmb_fsup.Text, "--")))
    sup2 = Mid$(dbcmb_tsup.Text, InStr(dbcmb_tsup.Text, "--") + 3, (Len(dbcmb_tsup.Text) - InStr(dbcmb_tsup.Text, "--")))
    
    If Option3.value = True Then
        FLG = "N"
    ElseIf Option1.value = True Then
        FLG = "Y"
    Else
        FLG = "N,Y"
    End If
    If UCase(CustID) = "KUMARAGIRI" Then
      Set clsCryRpt_RMI_SALES.cryRept = Cry_RMISALESDaybook_KSPL
    Else
      Set clsCryRpt_RMI_SALES.cryRept = Cry_RMISALESDaybook
    End If
    clsCryRpt_RMI_SALES.CrystalPrint
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(1) = "@Divcode;" & Divcode & ""
    crr.ParameterFields(2) = "@lotyear;" & Format(yfdate, "yyyy") & ""
    crr.ParameterFields(3) = "@Fdate;" & Format(DTPicker1.value, "yyyy-MM-dd") & ""
    crr.ParameterFields(4) = "@Tdate;" & Format(DTPicker3.value, "yyyy-MM-dd") & ""
    crr.ParameterFields(5) = "@FCust;" & sup1 & ""
    crr.ParameterFields(6) = "@TCust;" & sup2 & ""
    crr.ParameterFields(7) = "@lottype;" & Issue_List & ""
    crr.ParameterFields(8) = "@flg;" & FLG & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    Screen.MousePointer = 0
Case 66
    U = DTPicker2.value:     v = DTPicker3.value
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Trim (Mid(Combo1.Text, 1, 2))
        
    n = Trim((Mid$(DataCombo7.Text, 1, InStr(1, DataCombo7.Text, "-") - 1)))
' W = (Mid$(DataCombo4.Text, 1, InStr(1, DataCombo4.Text, "-") - 1))
  'If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
    xx = CStr(DCmbFLtN):      yy = CStr(DCmbTLtN)
    Call enjoy2(CStr(U), CStr(v), divname, DataCombo4.Text, CStr(xx), CStr(yy), CStr(n))
    intervalMinutes = -1
    'Else
    
'If DCmbFLtN.MatchedWithList = False Then
'MsgBox "Select the valid Lot No", vbInformation, "Kalsofte"
'DCmbFLtN.Text = ""
'DCmbFLtN.SetFocus
'Screen.MousePointer = 0
'Exit Sub
'End If
'If DCmbTLtN.MatchedWithList = False Then
'MsgBox "Select the valid Lot No", vbInformation, "Kalsofte"
'DCmbTLtN.Text = ""
'DCmbTLtN.SetFocus
'Screen.MousePointer = 0
'Exit Sub
'End If

'    MsgBox "Select the valid lot no", vbInformation, head
'    Screen.MousePointer = 0
'    Exit Sub
'    End If
    
    
Case 28

DTPicker3.maxdate = pdate:            DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
            Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic

    If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo VerietyStks1
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     
VerietyStks1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietyStks
        Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietyStks:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        Call StockLotReport2(CStr(U), CStr(v), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text, UserFooter1.SelectedStr)
        'Call StockLotReport1(CStr(u), CStr(v), CStr(w), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If

Case 40

DTPicker3.maxdate = pdate:            DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
        End If
        Set RSS = New Recordset
        RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic

    If Combo2.Text <> "" Then
        Do While Not RSS.EOF
            If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
                GoTo VerietyStks2
            Else
                RSS.MoveNext
            End If
        Loop
        MsgBox "Select the Valid Category ", vbInformation, head
        Screen.MousePointer = 0
        Combo2.Text = ""
        Combo2.SetFocus
        Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     
VerietyStks2:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
                        GoTo VerietyStks3
                     Else
                        MsgBox "Select the Valid LotNo", vbInformation, head
                        If DCmbFLtN.MatchedWithList = False Then
                            DCmbFLtN.Text = ""
                            DCmbFLtN.SetFocus
                            Screen.MousePointer = 0
                            Exit Sub
                        End If
                        If DCmbTLtN.MatchedWithList = False Then
                            DCmbTLtN.Text = ""
                            DCmbTLtN.SetFocus
                            Screen.MousePointer = 0
                            Exit Sub
                        End If
                    End If
VerietyStks3:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
            Call StockLotReport3(CStr(U), CStr(v), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text, UserFooter1.SelectedStr)
            'Call StockLotReport1(CStr(u), CStr(v), CStr(w), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text)
        Else
            MsgBox "Lot No Should Not be Empty", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        intervalMinutes = -1
Case 30
         DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Set RSS = New Recordset
        RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic
        If Combo2.Text <> "" Then
            Do While Not RSS.EOF
                If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
                    GoTo VerietySt1
                Else
                    RSS.MoveNext
                End If
            Loop
            MsgBox "Select the Valid Category ", vbInformation, head
            Screen.MousePointer = 0
            Combo2.Text = ""
            Combo2.SetFocus
            Exit Sub
        End If
        MsgBox "Select the Valid Category ", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     
VerietySt1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietySt
    Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietySt:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        Call StockVarietyReport2(CStr(U), CStr(v), CStr(W), CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
        intervalMinutes = -1
        Screen.MousePointer = 0
        
    Case 3
        Dim ResultRs As Recordset
        Dim rs1 As Recordset
        Dim a11 As String
        
        a = Format(DataCombo2.Text, "yyyy-mm-dd")
        a11 = Format(Trim(Right(a, 10)), "yyyy-mm-dd")
        Set ResultRs = New Recordset
        
        On Error GoTo errorsub
        DB.BeginTrans
        Set Rs = New Recordset
        Rs.Open "select * from sysobjects where name ='Temp_Daily_PendingOrderDate'", DB, adOpenStatic

        If Rs.RecordCount > 0 Then
            DB.Execute "Drop table Temp_Daily_PendingOrderDate"
        End If
        DB.Execute "Create table Temp_Daily_PendingOrderDate(SUPCD Varchar(10),SLNAME Varchar(100),BRKCD varchar(10),BRKNAME varchar(100),CONTNO Varchar(10),CONTDT datetime,Delivery char(4),VARNAME varchar(50),CANDYRATE decimal(13,4),ORDQTY decimal(18,2),RECQTY decimal(18,2),BALANCE decimal(15,3),ArrivalType  varchar(15),agentname varchar(100),station varchar(50),state varchar(50),PORef varchar(25),ApproxValue decimal(20,3))"
        
'        ResultRs.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode," & _
'                        "a.contno,a.contdt " & _
'                " from rm_cont a,rm_var b,fa_slmas c,fa_slmas d " & _
'                " Where a.divcode='" & Divcode & "' and " & _
'                " a.varcode = B.varcode and ((isnull(a.recqty,0) +  isnull(a.cancelbales,0)) < isnull(a.ordqty,0)) and  " & _
'                " a.supcd*= c.slcode and a.brkcd*= d.slcode and " & _
'                " contdt <='" & a11 & "' and " & _
'                " (godown not in ('C','G','M') or godown is null) ORDER BY a.contdt,SUPNAME", cn, adOpenStatic, adLockBatchOptimistic
If UCase(CustID) = "JAT" Then
SqlQry = ""
Else
SqlQry = "( (arrivaltype='P' and ((isnull(a.recqty,0) +  isnull(a.cancelbales,0)) < isnull(a.ordqty,0)) )  or   (ordkgs- (isnull(rcdkgs,0)+isnull(cancelkgs,0))>0 and arrivaltype='K')) and "
End If
 ResultRs.Open "select distinct a.supcd,c.slname supname,d.slname brkname,a.brkcd,a.areacode," & _
                        "a.contno,a.contdt " & _
                " from rm_cont a inner join rm_var b on  a.varcode = B.varcode left join fa_slmas c on a.supcd= c.slcode left join fa_slmas d on a.brkcd= d.slcode" & _
                " Where a.divcode='" & Divcode & "' and " & _
                " " & SqlQry & " " & _
                " contdt <='" & a11 & "' and " & _
                " (godown not in ('C','G','M') or godown is null) ORDER BY a.contdt,a.contno,SUPNAME", cn, adOpenStatic, adLockBatchOptimistic
       
        If ResultRs.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Me.MousePointer = 0
            DB.CommitTrans
            Exit Sub
        End If
        intervalMinutes = -1
        Do While Not ResultRs.EOF
            Set rs1 = New Recordset
            
'            rs1.Open "select distinct a.supcd,c.slname as supname," & _
'                        " isnull(a.brkcd,' ') as brkcd,isnull(d.slname,' ') as brkname," & _
'                        " a.contno,a.contdt," & _
'                        "case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
'                        "isnull(b.varname,'') as varname,round(a.candyrate,0)as candyrate," & _
'                        "isnull(a.ordqty,0) as ordqty,isnull(a.recqty,0) as recqty,isnull((a.ordqty-isnull(a.recqty,0)),0) as Bales " & _
'                    " from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d " & _
'                    " Where a.divcode='" & Divcode & "' and a.varcode*= B.varcode and " & _
'                        " ((isnull(a.recqty,0) +  isnull(a.cancelbales,0)) < isnull(a.ordqty,0))and  a.supcd*= c.slcode and " & _
'                        " a.brkcd*= d.slcode and contdt = '" & _
'                        Format(ResultRs("contdt"), "yyyy-mm-dd") & "' and " & _
'                        " contno='" & ResultRs("contno") & "'", cn, adOpenStatic
'

'If UCase(CustID) = "JAT" Then
'SqlQry = ""
'Else
'SqlQry = "( (arrivaltype='P' and ((isnull(a.recqty,0) +  isnull(a.cancelbales,0)) < isnull(a.ordqty,0)) )  or   (ordkgs- (isnull(rcdkgs,0)+isnull(cancelkgs,0))>0 and arrivaltype='K')) and "
'End If
  rs1.Open "select distinct a.supcd,c.slname as supname," & _
                        " isnull(a.brkcd,' ') as brkcd,isnull(d.slname,' ') as brkname," & _
                        " a.contno,a.contdt," & _
                        "case when dlytype = 'M' or dlytype='F' then  'FOR'  else 'Spot' end as dlytype," & _
                        "isnull(b.varname,'') as varname,round(a.candyrate,4)as candyrate," & _
                        " case when arrivaltype='P' then isnull(a.ordqty,0)   else  a.ordkgs end ordqty,case when arrivaltype='P' then isnull(recqty,0) else   isnull(a.rcdkgs,0) end as recqty,case when arrivaltype='P' then isnull((a.ordqty-(isnull(a.recqty,0)+isnull(a.cancelbales,0))),0) else  ordkgs- (isnull(rcdkgs,0)+isnull(cancelkgs,0)) end   as Bales ,case when arrivaltype='P' then 'Pack' else 'Kgs' end ArrivalType " & _
                    " ,isnull(d.slname,' ') as agentname,e.station as station,e.state,a.MILLREFNO as porefno " & _
                    ",case when arrivaltype='P' then isnull((a.ordqty-(isnull(a.recqty,0)+isnull(a.cancelbales,0))),0) else  ordkgs- (isnull(rcdkgs,0)+isnull(cancelkgs,0)) end * a.RATEKG as ApproxValue" & _
                    " from  RM_CONT a left join rm_var b on a.varcode= B.varcode  left join fa_slmas c on  a.supcd= c.slcode left join fa_slmas d on a.brkcd= d.slcode " & _
                    " left join rm_area e on e.areacode=a.areacode Where a.divcode='" & Divcode & "'  and " & _
                        " " & SqlQry & " " & _
                        "  contdt = '" & _
                        Format(ResultRs("contdt"), "yyyy-mm-dd") & "' and " & _
                        " contno='" & ResultRs("contno") & "'", cn, adOpenStatic
       
            Do While Not rs1.EOF
                DB.Execute "insert into Temp_Daily_PendingOrderDate Values ('" & rs1(0) & " ','" & rs1(1) & "','" & rs1(2) & "','" & rs1(3) & "','" & rs1(4) & "','" & Format(rs1(5), "yyyy-MM-dd") & "','" & rs1(6) & "','" & rs1(7) & "'," & rs1(8) & "," & rs1(9) & "," & rs1(10) & "," & rs1(11) & ",'" & rs1("ArrivalType") & "','" & rs1("agentname") & "','" & rs1("station") & "','" & rs1("State") & "','" & rs1("porefno") & "','" & rs1("ApproxValue") & "')"
                rs1.MoveNext
            Loop
            rs1.Close
            Set rs1 = Nothing
            
            ResultRs.MoveNext
        Loop
        DB.CommitTrans
        
        Dim clsCryRpt1 As New clsCrystal
        If UCase(Trim(CustID)) = "COTTON" Then
            Set clsCryRpt1.cryRept = Rep_inpr2_SRG
        Else
            Set clsCryRpt1.cryRept = Rep_inpr2
        End If
        clsCryRpt1.CrystalPrint
                
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

        crr.ParameterFields(0) = "@description;" & "Pending Orders As On " & Format(a11, "dd/mm/yy") & " "
        crr.ParameterFields(1) = "@name;" & divname & ""
        crr.ParameterFields(2) = "@UnitName;" & PrUnitName & ""
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        intervalMinutes = -1
        'Me.MousePointer = 11
        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_inpr2.rpt"
        'FrmRpt.RptHead = 3
        'parameter1 = "Pending Orders As On " & Format(a11, "dd/mm/yy") & ""
        'parameter2 = DIVNAME
        'parameter3 = ""
        'FrmRpt.Show
        Me.MousePointer = 0
        Exit Sub
errorsub:
    MsgBox Err.Description, vbCritical
    Me.MousePointer = 0
    
    Case 290
        Me.MousePointer = 11
        
        U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
        W = Combo2.Text
         
        fltn = CStr((Mid$(DCmbFLtN.Text, 1, (InStr(DCmbFLtN.Text, "-") - 1))))
        tltn = CStr((Mid$(DCmbTLtN.Text, 1, (InStr(DCmbTLtN.Text, "-") - 1))))
        issuetype = CmbRecType.Text
        
        catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
        vrectype = Trim(Left(issuetype, 3))
        
        strSQL = ""
        strSQL = " select C.VARCODE,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & fltn & "' AND '" & tltn & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        If Trim(catcd) <> "ALL" Then
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARCODE,C.VARNAME Order by C.VARCODE,c.varname"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARCODE,C.VARNAME Order by C.VARCODE,c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARCODE,C.VARNAME Order by C.VARCODE,c.varname"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARCODE,C.VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARCODE,C.VARNAME Order by C.VARCODE,c.varname"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARCODE,C.VARNAME Order by C.VARCODE,c.varname"
            End If
        End If
        Set rs1 = New Recordset
        rs1.Open strSQL, DB, adOpenStatic

        If rs1.EOF Then
            MsgBox "No Records Found", vbInformation, head
            Me.MousePointer = 0
            Exit Sub
        End If
        intervalMinutes = -1
        On Error GoTo Var_err
        DB.BeginTrans
        intervalMinutes = -1
        Set Rs = New Recordset
        Rs.Open "select * from sysobjects where name ='Temp_Customized_VarwsStkst'", DB, adOpenStatic

        If Rs.RecordCount > 0 Then
            DB.Execute "Drop table Temp_Customized_VarwsStkst"
        End If
        DB.Execute "Create table Temp_Customized_VarwsStkst(Varcode Varchar(10) null,Varname Varchar(50) null,OPqty float null,OPkgs float null,Recqty float null,Reckgs float null,Retqty float null,Retkgs float null,WtLqty float null,WtLkgs float null,Pqty float null,Pkgs float null,Sqty float null,Skgs float null,Tqty float null,Tkgs float null,Jqty float null,Jkgs float null,Rejqty float null,Rejkgs float null,CLqty float null,CLkgs float null,CLvalue float null)"
        
        Do While Not rs1.EOF
            open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
            open_kgs = 0: open_kgs = rs1!openkgs
            Return_Bales = 0: Return_Bales = rs1!RTNBAL
            Return_Kgs = 0: Return_Kgs = rs1!rtnkgs
            RstWeight_BALES = 0: RstWeight_BALES = rs1!LOSSkgs
            RstWeight_Kgs = 0: RstWeight_Kgs = rs1!LOSSkgs
            prod_bales = 0: prod_bales = rs1!PRODBAL + rs1!PRODBOR
            prod_kgs = 0: prod_kgs = rs1!prodkgs
            Sales_Bales = 0: Sales_Bales = rs1!SALESBAL + rs1!SALESBOR
            Sales_Kgs = 0: Sales_Kgs = rs1!SALESKGS
            Transfer_Bales = 0: Transfer_Bales = rs1!TRANSBAL + rs1!transbor
            Transfer_Kgs = 0: Transfer_Kgs = rs1!transkgs
            JobWork_Bales = 0: JobWork_Bales = rs1!JWBAL + rs1!jwbor
            JobWork_Kgs = 0: JobWork_Kgs = rs1!JWKGS
            Rejected_Bales = 0: Rejected_Bales = rs1!REJBAL
            Rejected_Kgs = 0: Rejected_Kgs = rs1!rejkgs
            close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
            Close_Kgs = 0: Close_Kgs = rs1!clskgs
            Close_value = 0: Close_value = rs1!clsvalue
            
            DB.Execute "insert into Temp_Customized_VarwsStkst values('" & rs1("VARCODE") & "','" & rs1("VARNAME") & "'," & open_bales & "," & open_kgs & "," & rs1("RecBal") + rs1("recbor") & "," & rs1("Reckgs") & "," & Return_Bales & "," & Return_Kgs & "," & RstWeight_BALES & "," & RstWeight_Kgs & "," & prod_bales & "," & prod_kgs & "," & Sales_Bales & "," & Sales_Kgs & "," & Transfer_Bales & "," & Transfer_Kgs & "," & JobWork_Bales & "," & JobWork_Kgs & "," & Rejected_Bales & "," & Rejected_Kgs & "," & close_qty & "," & Close_Kgs & "," & Close_value & ")"
            rs1.MoveNext
        Loop
        intervalMinutes = -1
        DB.CommitTrans
        
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Customized_VarietywsStkst.rpt"
        crr.ParameterFields(0) = "description;" & "Raw Material Stock Statement From " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & ""
        crr.ParameterFields(1) = "name;" & divname
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        SendKeys "{enter}"
        crr.Action = True
        Me.MousePointer = 0
        Exit Sub
Var_err:
    MsgBox Err.Description, vbCritical, head
    DB.RollbackTrans
Case 99
    DataCombo2.Text = DTPicker2.value:
    DataCombo3.Text = DTPicker3.value
    U = CStr(Format(DataCombo2.Text, "yyyy-mm-dd")):
    v = CStr(Format(DataCombo3.Text, "yyyy-mm-dd"))
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo2.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
     If CDate(v) < CDate(U) Then
      MsgBox "To Date should not be less than From Date", vbInformation
      DataCombo2.SetFocus
      Screen.MousePointer = 0
        Exit Sub
     End If
      Dim clsCryRpt_Var As New clsCrystal
     If Check1.value = 1 Then
             Set clsCryRpt_Var.cryRept = Cry_Varietywise_abs
            clsCryRpt_Var.CrystalPrint
            crr.Reset
            crr.Connect = connectstring
            crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
            'crr.Formulas(0) = "Description=" & CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY")) & ""
            'crr.Formulas(1) = "Divname=" & Trim(DIVNAME) & ""
            
            crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
            crr.ParameterFields(1) = "@FDate;" & U & ""
            crr.ParameterFields(2) = "@Tdate;" & v & ""
            crr.ParameterFields(3) = "@Flol;" & "" & ""
            crr.ParameterFields(4) = "@Tlot;" & "" & ""
            crr.ParameterFields(3) = "@Lotyear;" & Year(yfdate) & ""
        
            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            crr.Action = 1
          
            crr.PrinterCopies = 1
            Screen.MousePointer = 0
            intervalMinutes = -1
     
     Exit Sub
     End If
     
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_ReceiptRegister_Varitywise.rpt"
    'FrmRpt.RptHead = 6
    'parameter1 = DIVNAME
    'parameter2 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY"))
    'parameter3 = Divcode
    'parameter4 = U
    'parameter5 = V
    'parameter6 = Year(yfdate)
    'Screen.MousePointer = 0
    'FrmRpt.Show
    LYear = Year(yfdate)
    Call RMI_ReceiptRegVarietywise(CStr(U), CStr(v), CStr(LYear))
   
    Set clsCryRpt_Var.cryRept = Rep_Period_ReceiptRegister_Varitywise
    clsCryRpt_Var.CrystalPrint
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    'crr.Formulas(0) = "Description=" & CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY")) & ""
    'crr.Formulas(1) = "Divname=" & Trim(DIVNAME) & ""
    
    crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
    crr.ParameterFields(1) = "@FromDate;" & U & ""
    crr.ParameterFields(2) = "@Todate;" & v & ""
    crr.ParameterFields(3) = "@Lotyear;" & Year(yfdate) & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    SendKeys "{ENTER}"
    crr.Action = 1
    SendKeys "{ENTER}"
    crr.PrinterCopies = 1
    Screen.MousePointer = 0
    intervalMinutes = -1

Case 34351
Dim vP_Str1 As String
U = Format(DataCombo1.Text, "dd/mm/yyyy")
v = Format(DataCombo2.Text, "dd/mm/yyyy")
U = DTPicker1.value
v = DTPicker2.value
    
veriety: lottype = Trim(Mid(CmbRecType.Text, 1, 3))
         ISSTYPE = Trim(Mid(Combo1.Text, 1, InStr(1, Combo1.Text, "-") - 1))
    
    If Table_Exists("Vw_rmi_Issuereg_lotwise") = True Then DB.Execute "Drop view Vw_rmi_Issuereg_lotwise "
    
    If Trim(ISSTYPE) = "A" Then
        If lottype = "ALL" Then
      '''ok
                DB.Execute "Create view Vw_rmi_Issuereg_lotwise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where B.LOTYEAR='" & Year(yfdate) & "' AND a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where  B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,ISSTO,bblflg,ratekg,UNIT "
        Else
        ''ok
                DB.Execute "Create view Vw_rmi_Issuereg_lotwise as select distinct X.varcode,y.VARNAME,cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h ,fa_slmas fa where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD " & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,ISSTO,bblflg,ratekg,UNIT "
                End If
     Else
       
        If lottype = "ALL" Then
        ''ok
    
                DB.Execute "Create view Vw_rmi_Issuereg_lotwise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where  B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,ISSTO,bblflg,ratekg,UNIT "
         ElseIf Trim(ISSTYPE) = "JR" And lottype = "A" Then
                DB.Execute "Create view Vw_rmi_Issuereg_lotwise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where  B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,ISSTO,bblflg,ratekg,UNIT "
         Else
         '''ok
                 DB.Execute "Create view Vw_rmi_Issuereg_lotwise as select distinct X.varcode,y.VARNAME,x.cntcd,z.CATNAME,ISSTO,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,SUM(Bales) AS BALES,UNIT,SUM(Kgs) AS KGS,isnull(ratekg,0) as ratekg,SUM(Value) AS VALUE,AVG(ratecandy) AS RATECANDY,bblflg" & _
                " FROM( " & _
                " select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,count(baleno) as Bales,bblflg,0 as Kgs,ratekg, 0 as ratecandy,0 as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype  and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode  AND ISSUED='Y' AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                " Union All " & _
                "select distinct cntcd,b.Catcd,a.lotno,a.lotdt,plotno,Unit=(case when bblflg='B' then 'Bales' else 'Borah' end),B.varcode,ISSTO,0 as Bales,bblflg,SUM(A.ISSKGS) as Kgs,ratekg, ROUND(avg(ratekg)*355.616,0) as ratecandy,ratekg*sum(a.isskgs) as Value,fa.slname from rm_issb a,rm_lot b,rm_issh h,fa_slmas fa where  a.LotType='" & lottype & "' and B.LOTYEAR='" & Year(yfdate) & "' and  a.docno=h.docno and a.docdt=h.docdt and a.isstype=h.isstype and a.divcode=h.divcode and a.lotno=b.lotno and a.catcd=b.catcd and a.lotdt=b.lotdt and a.divcode=b.divcode and issued='Y'  AND H.divcode='" & Divcode & "' AND H.DOCDT BETWEEN  '" & Format(U, "YYYY-MM-DD") & "' and '" & Format(v, "YYYY-MM-DD") & "' and a.isstype='" & ISSTYPE & "' and b.supcd=fa.slcode group by cntcd,b.Catcd,a.lotno,a.lotdt,plotno,fa.slname,B.varcode,bblflg,ratekg,ISSTO" & _
                ")X ,rm_var Y,RM_CAT Z where x.varcode=y.varcode and x.Catcd=Z.CATCD" & _
                " GROUP BY X.varcode,y.VARNAME,x.cntcd,z.CATNAME,X.Catcd,X.lotno,X.lotdt,plotno,x.slname,ISSTO,bblflg,ratekg,UNIT "
         End If

    End If

    Set rs1 = New Recordset
    rs1.Open "select * from Vw_rmi_Issuereg_lotwise", DB, adOpenStatic
    
    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        
    End If

    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_IssueRegister_lotwise.rpt"
    'FrmRpt.RptHead = "2A"
    'parameter1 = DIVNAME
    'parameter2 = CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(V, "dd/MM/YY"))
    'FrmRpt.Show
    
    Dim clsCryRpt_Lot As New clsCrystal
    Set clsCryRpt_Lot.cryRept = Rep_Period_IssueRegister_lotwise
    clsCryRpt_Lot.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    crr.ParameterFields(0) = "@divname;" & divname & ""
    crr.ParameterFields(1) = "@description;" & CStr(Format(U, "dd/MM/YY")) & " To " & CStr(Format(v, "dd/MM/YY")) & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    intervalMinutes = -1
    Screen.MousePointer = 0

Case 2228
'Raw Material Pending Bill Entry Datewise
DataCombo2.Text = DTPicker2.value:   DataCombo3.Text = DTPicker3.value '''''''
   U = Format(DataCombo2.Text, "yyyy/mm/dd"):   v = Format(DataCombo3.Text, "yyyy/mm/dd")
     'If CDate(U) > CDate(V) Then
      '  MsgBox "From Date should not be greater than To Date", vbInformation
      '  DataCombo2.SetFocus
      '  Screen.MousePointer = 0
      '  Exit Sub
     'End If
     'If CDate(V) < CDate(U) Then
      'MsgBox "To Date should not be less than From Date", vbInformation
      'DataCombo2.SetFocus
      'Screen.MousePointer = 0
      '  Exit Sub
     'End If
     
     Dim clsCryRptPendBill As New clsCrystal
         Set clsCryRptPendBill.cryRept = Cry_Per_PendingBillEntry_Date
         clsCryRptPendBill.CrystalPrint
               
         crr.Reset
         crr.Connect = connectstring
         crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

        crr.ParameterFields(0) = "@divcode;" & Divcode & ""
        crr.ParameterFields(1) = "@Fdate;" & U & ""
        crr.ParameterFields(2) = "@Tdate;" & v & ""
        crr.ParameterFields(3) = "@yfdate;" & Format(yfdate, "yyyy/mm/dd") & ""
    'crr.ParameterFields(3) = "@Lotyear;" & Year(yfdate) & ""

                
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
        'End If
        intervalMinutes = -1
        
Case 199
            Dim clsCryRptorder As New clsCrystal
            Set clsCryRptorder.cryRept = Rep_Period_OrderCancellation
            clsCryRptorder.CrystalPrint
    
            crr.Reset
            crr.Connect = connectstring
            crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
            crr.ParameterFields(0) = "@divCode;" & Divcode & ""
            crr.ParameterFields(1) = "@Yfdate;" & Format(yfdate, "yyyy/mm/dd") & ""
            crr.ParameterFields(2) = "@Ytdate;" & Format(yldate, "yyyy/mm/dd") & ""
            crr.ParameterFields(3) = "@fdate;" & Format(DTPicker1, "yyyy/mm/dd") & ""
            crr.ParameterFields(4) = "@tdate;" & Format(DTPicker3, "yyyy/mm/dd") & ""
            crr.ParameterFields(5) = "@arrivaltype;" & Trim(Left(Combo1, 1)) & ""
            
            crr.WindowShowPrintSetupBtn = True
            crr.WindowShowSearchBtn = True
            crr.WindowState = crptMaximized
            SendKeys "{ENTER}"
            crr.Action = 1
            crr.PrinterCopies = 1

Case 787878787

      Dim clsCryRptcust As New clsCrystal
        
        If UCase(Trim(CustID)) = "JAT" Then
            Set clsCryRptcust.cryRept = Cry_RepRMI
        Else
            Set clsCryRptcust.cryRept = Cry_purchasebook_customized
        End If
        
        clsCryRptcust.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@divcode;" & Divcode
        crr.ParameterFields(1) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(2) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        
       
       ' crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1

intervalMinutes = -1

End Select

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub enjoy2(From_Date As String, To_Date As String, divname As String, supp As String, From_Lotno As String, To_Lotno As String, catcd As String)

On Error GoTo enjoy2_Error
Screen.MousePointer = 11
Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
Dim DeliveryType As String
Dim Count As Integer
  
  Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='ACH'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table ach"
    End If
    
    Set rs5 = New Recordset
    rs5.Open "select * from sysobjects where name ='ACH1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs5.RecordCount > 0 Then
        DB.Execute "drop table ach1"
        
    End If
    
    Set rs6 = New Recordset
    rs6.Open "select * from sysobjects where name ='ACH3'", DB, adOpenStatic, adLockBatchOptimistic
    If rs6.RecordCount > 0 Then
    DB.Execute "drop table ach3"
        
    End If
    
     Set RS11 = New Recordset
    RS11.Open "select * from sysobjects where name ='ACH4'", DB, adOpenStatic, adLockBatchOptimistic
    If rs6.RecordCount > 0 Then
    DB.Execute "drop table ach4"
        
    End If
    
    DB.Execute "create table ACH (b1 numeric(10,0),g1 numeric(15,3),b2 numeric(10,0),g2 numeric(15,3),b3 numeric(10,0),g3 numeric(15,3),b4 numeric(10,0),g4 numeric(15,3),b5 numeric(10,0),g5 numeric(15,3),b6 numeric(10,0),g6 numeric(15,3),b7 numeric(10,0),g7 numeric(15,3),b8 numeric(10,0),g8 numeric(15,3),b9 numeric(10,0),g9 numeric(15,3),b10 numeric(10,0),g10 numeric(15,3),b11 numeric(10,0),g11 numeric(15,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(10,0),sno numeric(10) , lotdt datetime)"
    DB.Execute "create table ACH1(b1 numeric(10,0),g1 numeric(15,3),b2 numeric(10,0),g2 numeric(15,3),b3 numeric(10,0),g3 numeric(15,3),b4 numeric(10,0),g4 numeric(15,3),b5 numeric(10,0),g5 numeric(15,3),b6 numeric(10,0),g6 numeric(15,3),b7 numeric(10,0),g7 numeric(15,3),b8 numeric(10,0),g8 numeric(15,3),b9 numeric(10,0),g9 numeric(15,3),b10 numeric(10,0),g10 numeric(15,3),b11 numeric(10,0),g11 numeric(15,3),LOTTYPE CHAR(1),CATCD CHAR(1),LOTNO NUMERIC(10,0),sno numeric(10), lotdt datetime)"
    DB.Execute "create table ACH3(slname char(250),catcd char(20),lotno numeric(10,0),pjno numeric(15,3),arrno numeric(10,0),supcd char(10),prno char(50),prmark char(50),lorrynos varchar(50),ratecy numeric(15,3),gcno numeric(10,0),freght numeric(15,3),plotno varchar(30),varcode char(10),brkcd char(10),areacode char(10),catname char(30),Quantity numeric(10,0),PTYWGT numeric(15,3),PTAREWT numeric(15,3),PNETWT numeric(15,3), lotdt datetime,ALLOWANCEAMT numeric(12,2), billno varchar(25))"
    DB.Execute "create table ACH4(catcd char(20),b1 numeric(10,0),b2 numeric(10,0),b3 numeric(15,3),b4 numeric(15,3),b5 numeric(15,3),b6 numeric(10,0),b7 datetime,b8 numeric(15,3),b9 numeric(10,0),b10 numeric(10,0), lotdt datetime)"
    
    Set rs1 = New Recordset
   rs1.Open " select DISTINCT e.slname,b.catcd,B.lotno,isnull(b.pjno,0) as pjno,a.arrno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,isnull(a.freight,0) as freght,a.plotno,a.varcode,a.brkcd,a.areacode,catname,a.quantity,a.grosswt,a.tarewt,a.netwt,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt,b.lotdt,b.PGRSWT AS PTYWGT, b.PTAREWT, b.PNETWT, b.lotdt, isnull(b.ALLOWANCEAMT,0) as ALLOWANCEAMT, isnull(b.billno,'') as billno,isnull(c.dlytype,'S') dlytype " & _
            "from rm_arrival a Inner Join rm_lot b on  A.catcd=B.catcd  AND a.divcode =b.divcode and a.arrno=b.arrno and a.lotno=b.lotno and a.arrdate=b.arrdt and a.varcode=b.varcode  " & _
            " Inner JOIn rm_cont c on a.divcode =c.divcode and a.contno=c.contno and a.contdt=c.contdt and c.varcode=b.varcode  " & _
            " INNER JOIN fa_slmas e ON  a.supcd=e.slcode " & _
            " INNER JOIN rm_cat r  ON b.catcd=r.catcd  " & _
            " Left  Join fa_slmas d ON b.brkcd =d.slcode " & _
            " where (B.CATCD='" & catcd & "' or 'A'='" & catcd & "') AND  b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
            "  and b.lottype='A' and opflg<>'Y' and b.DIVCODE ='" & Divcode & "' order by b.lotno", Cnn, adOpenDynamic, adLockOptimistic
    
    DeliveryType = "SPOT"
    
    If Not rs1.EOF Then
        If rs1("dlytype") = "S" Then
            DeliveryType = "SPOT"
        Else
            DeliveryType = "FOR"
        End If
    End If
    'rs1.Open " select DISTINCT e.slname,b.catcd,B.lotno,isnull(b.pjno,0) as pjno,a.arrno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,isnull(a.freight,0) as freght,a.plotno,a.varcode,a.brkcd,a.areacode,catname,a.quantity,a.grosswt,a.tarewt,a.netwt,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt,b.lotdt,b.PGRSWT AS PTYWGT, b.PTAREWT, b.PNETWT, b.lotdt, isnull(b.ALLOWANCEAMT,0) as ALLOWANCEAMT, isnull(b.billno,'') as billno " & _
     '       "from rm_arrival a,rm_lot b,rm_cont c,fa_slmas d,fa_slmas e,rm_cat r where b.brkcd*=d.slcode " & _
      '         " and a.arrno=b.arrno and a.supcd=e.slcode and b.catcd=r.catcd " & _
       '          " and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
        '         " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and opflg<>'Y' order by b.lotno", Cnn, adOpenDynamic, adLockOptimistic
    
'    rs1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,isnull(a.dbamt,0)dbamt,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.ldgulg," & _
'            " b.ptywgt,b.insamt,isnull(a.moisture_et,0) as moiture,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost, " & _
'            " c.dlytype,a.carcode,ISNULL(b.NETWT,0) AS PNETWT,ISNULL(b.GRSWgT,0) AS PGRSWT,ISNULL(b.TAREWT,0) AS PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,a.freight,b.taxamt,a.contno,catname,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt  from  rm_arrival a,rm_lot b,rm_cont c,fa_slmas d,rm_cat r where b.brkcd*=d.slcode " & _
'               "  and a.arrno=b.arrno and b.catcd=r.catcd " & _
'                 " and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
'                 " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and opflg<>'Y' order by a.lotno", cnn, adOpenDynamic, adLockOptimistic
'
'
                 
'    RS1.Open " select DISTINCT d.slname as broker,b.catcd,B.lotno,b.pjno,a.arrno,a.arrdate,a.lotno,a.supcd,a.prno,a.prmark,a.lorrynos,a.ratecy,a.gcno,b.freght,a.plotno,a.plotdt,a.brkcd,a.areacode,isnull(a.dbamt,0)dbamt,a.varcode,a.cntcode,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.pjamt,b.ldgulg," & _
'            " b.ptywgt,b.insamt,isnull(a.moisture_et,0) as moiture,tot_exp = isnull(b.taxamt,0) + isnull(b.bnkchg,0) + isnull(b.odint,0) + isnull(b.freght,0) + isnull(b.rlyfrt,0) + isnull(b.ldgulg,0) + isnull(b.brkcom,0) + isnull(b.carchg,0) + isnull(b.spotexp,0),debit=b.dnamt1+b.dnamt2,b.totlandcost, " & _
'            " c.dlytype,a.carcode,ISNULL(b.NETWT,0) AS PNETWT,ISNULL(b.GRSWgT,0) AS PGRSWT,ISNULL(b.TAREWT,0) AS PTAREWT,b.lotdt,0 as pono,0 as podt,b.ratekg*355.6187 as ratecandy,B.lotDT,a.carcode,a.freight,b.taxamt,a.contno,catname,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt  from  rm_arrival a,rm_lot b,rm_cont c,fa_slmas d,rm_cat r where b.brkcd*=d.slcode " & _
'               "  and a.arrno=b.arrno and b.catcd=r.catcd " & _
'                 " and a.arrdate=b.arrdt and a.lotno=b.lotno and b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
'                 " and b.lottype='A' and a.contno=c.contno and a.contdt=c.contdt and opflg<>'Y' order by a.lotno", cnn, adOpenDynamic, adLockOptimistic


        Set rs10 = New Recordset
        rs10.Open " select DISTINCT b.CATCD,B.lotno,a.quantity,a.grosswt,a.tarewt,a.netwt,a.ratecy,b.lotdt,b.ptywgt,isnull(Allowanceamt,0) as allow,isnull(lrfrtamt,0) as lrfrtamt from " & _
                " rm_arrival a INNER JOIN rm_lot b ON   A.catcd=B.catcd  AND A.DIVCODE =B.DIVCODE AND a.arrno=b.arrno AND a.lotno=b.lotno AND a.arrdate=b.arrdt and a.varcode=b.varcode " & _
                " INNER JOIN rm_cont c ON A.DIVCODE =C.DIVCODE AND a.contno=c.contno and a.contdt=c.contdt and c.varcode=b.varcode " & _
                " INNER JOIN rm_cat r  ON b.catcd=r.catcd " & _
                " LEFT JOIN fa_slmas d ON b.brkcd=d.slcode " & _
                " WHERE b.lotdt BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "'" & _
                " and  (B.CATCD='" & catcd & "' or 'A'='" & catcd & "') AND  b.lotno BETWEEN '" & From_Lotno & "' AND '" & To_Lotno & "'" & _
                " and b.lottype='A' and  opflg<>'Y' and b.DIVCODE ='" & Divcode & "' order by b.lotno", Cnn, adOpenDynamic, adLockOptimistic
                
        Do While Not rs10.EOF
             'DB.Execute "insert into ACH4 Values (" & rs10(0) & " ," & rs10(1) & "," & rs10(2) & "," & rs10(3) & "," & rs10(4) & "," & rs10(5) & "," & rs10(6) & "," & rs10(7) & "," & rs10(8) & " , " & rs10(9) & ", " & rs10(10) & ")"
             DB.Execute "insert into ACH4 Values ('" & rs10("CATCD") & " '," & rs10("lotno") & "," & rs10("quantity") & "," & rs10("grosswt") & "," & rs10("tarewt") & "," & rs10("netwt") & "," & rs10("ratecy") & "," & rs10("lotdt") & "," & rs10("ptywgt") & " , " & rs10(9) & ", " & rs10("lrfrtamt") & ",'" & Format(rs10("lotdt"), "yyyy-mm-dd") & "')"
            rs10.MoveNext
        Loop

    If rs1.RecordCount = 0 Then
        MsgBox "No Records Found For this Period", vbInformation, "Kalsofte"
        DB.Execute "drop table ACH"
        DB.Execute "drop table ACH1"
        DB.Execute "drop table ACH3"
        DB.Execute "drop table ACH4"
        Exit Sub
    End If
    rs1.MoveFirst
    

 Do While Not rs1.EOF
 Dim str1 As String
 
    gg1 = rs1(0)
    str1 = "Insert into ACH3 Values ('" & rs1(0) & "','" & rs1(1) & "'," & rs1(2) & "," & rs1(3) & "," & rs1(4) & ",'" & rs1(5) & "','" & rs1(6) & "','" & rs1(7) & "','" & rs1("lorrynos") & "'," & rs1(9) & " , " & val(rs1(10)) & ", 0, '" & rs1(12) & "','" & rs1(13) & "','" & rs1(14) & "','" & rs1(15) & "','" & rs1(16) & "', " & rs1(17) & ", " & rs1("PTYWGT") & ", " & rs1("PTAREWT") & ", " & rs1("PNETWT") & ", '" & Format(rs1("lotdt"), "yyyy-mm-dd") & "', " & rs1("ALLOWANCEAMT") & ", '" & rs1("billno") & "')"
    DB.Execute str1
    
    Set Rs = New Recordset
    Rs.Open "select isnull(ADD1,'') as add1,isnull(ADD2,'') as add2,city,PINCODE,PHONE1,GRAMS,TNGST,TNGSTDT,CGSTDT,CGST,fax,email,webaddr  from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
    GG = "Regd. Office:" & Rs("ADD1") & "-" & Rs("add2")
    
    'Print #a, Space(3) + Chr(27) & "E" & CENTRE(DIVNAME, 70, " ") & Padr("Mills  :", 8, " ") & Rs("phone1") & Chr(27) & "F"
    
    Set rsa = New Recordset
    rsa.Open "select varname from rm_var where varcode='" & rs1("varcode") & "'", DB, adOpenStatic
    'DB.Execute "insert into ACH2(catcd,lotno,pjno,arrno,supcd,prno,prmark,lorrynos,ratecy,gcno,freght,plotno,varcode,brkcd,areacode,catname,Quantity) values (" & IIf(IsNull(RS1(1)), 0, RS1(1)) & "," & IIf(IsNull(RS1(2)), 0, RS1(2)) & "," & IIf(IsNull(RS1(3)), 0, RS1(3)) & "," & IIf(IsNull(RS1(4)), 0, RS1(4)) & "," & IIf(IsNull(RS1(5)), 0, RS1(5)) & "," & IIf(IsNull(RS1(6)), 0, RS1(6)) & "," & IIf(IsNull(RS1(7)), 0, RS1(7)) & "," & IIf(IsNull(RS1(8)), 0, RS1(8)) & "," & IIf(IsNull(RS1(9)), 0, RS1(9)) & "," & IIf(IsNull(RS1(10)), 0, RS1(10)) & "," & IIf(IsNull(RS1(11)), 0, RS1(11)) & "," & IIf(IsNull(RS1(12)), 0, RS1(12)) & "," & IIf(IsNull(RS1(13)), 0, RS1(13)) & "," & IIf(IsNull(RS1(14)), 0, RS1(14)) & "," & IIf(IsNull(RS1(15)), 0, RS1(15)) & "," & IIf(IsNull(RS1(16)), 0, RS1(16)) & "," & IIf(IsNull(RS1(17)), 0, RS1(17)) & ")"
    If rsa.RecordCount > 0 Then
        VarName1 = rsa(0)
    Else
        VarName1 = " "
    End If
   
    Set rs3 = New Recordset
    rs3.Open "select slname from fa_slmas  where slcode='" & rs1("SUPCD") & "'", DB, adOpenStatic
    If rs3.RecordCount > 0 Then
    GG = "Of Messers : " & rs3("slname")
      End If
 'DB.Execute "insert into ACH2 values (" & RS1(1) & "," & IIf(IsNull(RS1(2)), 0, RS1(2)) & "," & IIf(IsNull(RS1(3)), 0, RS1(3)) & "," & IIf(IsNull(RS1(4)), 0, RS1(4)) & "," & IIf(IsNull(RS1(5)), 0, RS1(5)) & "," & IIf(IsNull(RS1(6)), 0, RS1(6)) & "," & IIf(IsNull(RS1(7)), 0, RS1(7)) & "," & IIf(IsNull(RS1(8)), 0, RS1(8)) & "," & IIf(IsNull(RS1(9)), 0, RS1(9)) & "," & IIf(IsNull(RS1(10)), 0, RS1(10)) & "," & IIf(IsNull(RS1(11)), 0, RS1(11)) & "," & IIf(IsNull(RS1(12)), 0, RS1(12)) & "," & IIf(IsNull(RS1(13)), 0, RS1(13)) & "," & IIf(IsNull(RS1(14)), 0, RS1(14)) & "," & IIf(IsNull(RS1(15)), 0, RS1(15)) & "," & IIf(IsNull(RS1(16)), 0, RS1(16)) & "," & IIf(IsNull(RS1(17)), 0, RS1(17)) & ")"
    
    
    'DB.Execute "insert into ACH2 Values ('" & RS1(0) & " ','" & RS1(1) & "'," & RS1(2) & "," & RS1(3) & "," & RS1(4) & ",'" & RS1(5) & "'," & RS1(6) & ",'" & RS1(7) & "', '" & 0 & "'," & RS1(9) & "," & RS1(10) & ",0," & RS1(12) & ",'" & RS1(13) & "','" & RS1(14) & "',0,0,0)"
     gr = 0
    SNO = 0
    I = 0
    Set RS2 = New Recordset
    RS2.Open "SELECT distinct grwt,tarewt,netwt,0 as pbaleno,0 as pnetwt,baleno,0 as pGRwt,lotdt FROM RM_BALE WHERE LOTDT BETWEEN '" & Format(From_Date, "yyyy-mm-dd") & "' AND '" & Format(To_Date, "yyyy-mm-dd") & "' and lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " and divcode='" & Divcode & "' order by baleno", Cnn, adOpenDynamic, adLockOptimistic
    Count = RS2.RecordCount + 1
    If RS2.RecordCount = 0 Then
        Exit Sub
    End If
    e = RS2.RecordCount
    RS2.MoveFirst
    Do While Not RS2.EOF
        SNO = SNO + 1
        gr = gr + 1
        If gr <= 20 Then
            DB.Execute "insert into ACH(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno,lotdt) values (" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & "," & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & rs1("catcd") & "'," & rs1("lotno") & "," & SNO & ",'" & Format(RS2("lotdt"), "yyyy-mm-dd") & "')"
            ''DB.Execute "insert into ACH1(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno) values (" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & "," & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & ",0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'A','" & RS1("catcd") & "'," & RS1("lotno") & "," & sno & ")"
        End If
        If gr > 20 And gr <= 40 Then
            I = (SNO - 20)
            DB.Execute "update ACH set b2=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g2=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b2=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g2=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 200 Then gr = 0
           
        End If
        If gr > 40 And gr <= 60 Then
            I = (SNO - 40)
            DB.Execute "update ACH set b3=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g3=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b3=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g3=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 200 Then gr = 0
        End If
         If gr > 60 And gr <= 80 Then
        I = (SNO - 60)
            DB.Execute "update ACH set b4=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g4=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b4=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g4=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 200 Then gr = 0
        End If
         If gr > 80 And gr <= 100 Then
            I = (SNO - 80)
            DB.Execute "update ACH set b5=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g5=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b5=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g5=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 200 Then gr = 0
        End If
         If gr > 100 And gr <= 120 Then
            I = (SNO - 100)
            DB.Execute "update ACH set b6=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g6=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b6=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g6=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 200 Then gr = 0
         End If
                  
         If gr > 120 And gr <= 140 Then
            I = (SNO - 120)
            DB.Execute "update ACH set b7=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g7=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b7=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g7=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
           If gr = 200 Then gr = 0
        End If
        
        If gr > 140 And gr <= 160 Then
             I = (SNO - 140)
            DB.Execute "update ACH set b8=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g8=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b8=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g8=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 200 Then gr = 0
        End If
         If gr > 160 And gr <= 180 Then
             I = (SNO - 160)
            DB.Execute "update ACH set b9=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g9=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b9=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g9=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 200 Then gr = 0
        End If
        If gr > 180 And gr <= 200 Then
             I = (SNO - 180)
            DB.Execute "update ACH set b10=" & IIf(IsNull(RS2("baleno")), 0, RS2("baleno")) & ",g10=" & IIf(IsNull(RS2("GRWT")), 0, RS2("GRWT")) & " where sno=" & I & "" ', A
            'DB.Execute "update ACH1 set b10=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g10=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
            If gr = 200 Then gr = 0
        End If
    
'         If gr > 100 And gr <= 110 Then
'             i = (sno - 100)
'            DB.Execute "update ACH set b10=" & IIf(IsNull(rs2("baleno")), 0, rs2("baleno")) & ",g10=" & IIf(IsNull(rs2("GRWT")), 0, rs2("GRWT")) & " where sno=" & i & "" ', A
'            If gr = 100 Then gr = 0
'        End If
          
        RS2.MoveNext
    Loop
    
    Set RS2 = New Recordset
    RS2.Open "SELECT  b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno,lotdt FROM ACH WHERE lottype='A' and catcd='" & rs1("catcd") & "' and lotno=" & rs1("lotno") & " and lotdt='" & Format(rs1("lotdt"), "yyyy-mm-dd") & "'  ORDER BY sno", Cnn, adOpenDynamic, adLockOptimistic
    RS2.MoveFirst
    
    Do While Not RS2.EOF
        DB.Execute "insert into ACH1(b1,g1,b2,g2,b3,g3,b4,g4,b5,g5,b6,g6,b7,g7,b8,g8,b9,g9,b10,g10,b11,g11,lottype,catcd,lotno,sno,lotdt) values (" & RS2(0) & " ," & RS2(1) & "," & RS2(2) & "," & RS2(3) & "," & RS2(4) & "," & RS2(5) & "," & RS2(6) & "," & RS2(7) & "," & RS2(8) & "," & RS2(9) & " , " & RS2(10) & "," & RS2(11) & "," & RS2(12) & "," & RS2(13) & "," & RS2(14) & "," & RS2(15) & "," & RS2(16) & "," & RS2(17) & "," & RS2(18) & "," & RS2(19) & " , " & RS2(20) & "," & RS2(21) & ",'" & RS2(22) & "','" & RS2(23) & "'," & RS2(24) & "," & RS2(25) & ",'" & Format(RS2("lotdt"), "yyyy-mm-dd") & "')"
    
    RS2.MoveNext
    Loop
    B = 0
    rs1.MoveNext
  Loop
  
  
    Dim clsCryRpt As New clsCrystal
    If CustID = "SOUTHERN" Then
    Set clsCryRpt.cryRept = RawMaterialWT_SouthernNEW 'RawMaterialWT_Southern1
    Else
    'Set clsCryRpt.cryRept = RawMaterialWT
    Set clsCryRpt.cryRept = RawMaterialWT1
    End If
    clsCryRpt.CrystalPrint
    crr.Reset
    Call CrystalFooter(UserFooter1.SelectedStr, 150)
    footervar = CStr(Foot)
   'Call RMI_WeightList ''sasi 10.8.17
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "Divname;" & Trim(divname) & ""
    crr.ParameterFields(1) = "Phone;" & Rs("phone1") & ""
    crr.ParameterFields(2) = "City;" & Rs("city") & ""
    crr.ParameterFields(3) = "Fax;" & Rs("fax") & ""
    crr.ParameterFields(4) = "Email;" & Rs("email") & ""
    crr.ParameterFields(5) = "website;" & Rs("webaddr") & ""
    crr.ParameterFields(6) = "@divcode;" & Divcode & ""
    crr.ParameterFields(7) = "DIV_PRINTNAME;" & PrDivname & ""
    crr.ParameterFields(8) = "DIVcode;" & Divcode & ""
    If CustID = "SOUTHERN" Then
    crr.ParameterFields(9) = "@repFooter;" & footervar & ""
    End If
     crr.Formulas(0) = "DelType='" & DeliveryType & "'"
    
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    
    Screen.MousePointer = 0

Exit Sub
enjoy2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure enjoy2 of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub

Public Sub StockLotReport2(U As String, v As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim pagelen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim totbal As Double
Dim Cnn As Connection
'Dim f As New repform1
On Error GoTo StockLotReport2_Error

Set Cnn = New Connection
Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.CursorLocation = adUseClient
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))
    Set rs1 = New Recordset
        
  strSQL = ""
  strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0))AS ISSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        'strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-sum(isnull(a.ISSRETBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))  )) END CLOBALES," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)) -sum(isnull(a.ISSRETBAL,0)) )) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)) )-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0))))"
    '   strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-sum(isnull(a.ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0)) ))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0))   )) END CLOVALUE"
        strSQL = strSQL + ",ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY, "
        strSQL = strSQL + " (SUM(ISNULL(A.RECbal,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBAL,(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))) ISSBAL ,SUM(ISNULL(A.REJKGS,0)) AS REJKGS, sum(IsNull(a.REJBAL, 0)) As REJBALES"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
       '' 'strSQL = strSQL + " ) A , RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        strSQL = strSQL + " ) A inner join RM_LOT B on b.divcode='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   "
        strSQL = strSQL + "  inner join RM_VAR C on  B.CATCD=C.CATCD AND b.VARCODE=C.VARCODE  "
        strSQL = strSQL + "  inner join rm_CAT D on B.CATCD= D.CATCD"
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE"
        strSQL = strSQL + " WHERE "

        



        
        
                    
        If Trim(Left(W, 3)) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & "  (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                Else
                    strSQL = strSQL & "  b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            Else
                    strSQL = strSQL & "  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                Else
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            Else
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            End If
        End If
Set rs1 = New Recordset
'Cnn.ConnectionTimeout = 5000
rs1.Open strSQL, Cnn, adOpenStatic

If rs1.EOF Then
   MsgBox "No Stock found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisetemp1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table StockLotwisetemp1"
End If

DB.Execute "Create table StockLotwisetemp1(Catname char(20),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(50),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),RecBales numeric(10),IssBales numeric(10),REJKGS numeric(18,3),REJBALES numeric(10) )"
Do While Not rs1.EOF
    'SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    rs1.MoveNext
Loop

        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stock_lot_nrej1 'Rep_Stock_lot_nrej 'Rep_stock_lotwise2 ' Rep_stock_lotwise1
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.Formulas(0) = "div='" & divname & "'"
        crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
        crr.Formulas(2) = "rep='" & "Stock Statement Lotwise From " & Format(DTPicker2.value, "dd/mm/yy") & " To " & Format(DTPicker3.value, "dd/mm/yy") & "'"
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        
        crr.Action = 1
        crr.PrinterCopies = 1
Exit Sub
StockLotReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub StockLotReport3(U As String, v As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim pagelen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim totbal As Double
Dim Cnn As Connection
'Dim f As New repform1
On Error GoTo StockLotReport3_Error

Set Cnn = New Connection
pagelen = 63
Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
'cnn.ConnectionString = Kslcmpsel.SelConnectStr
'cnn.Open
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))
If Trim(Left(W, 3)) = "ALL" Then
    Set rs1 = New Recordset
        SqlStr = ""
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
        If vrectype <> "A" Then
            SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
            SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0)) end as clokgs,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE,SUM(recBALES)recBALES,SUM(recboras)recboras,SUM(issbales)issBALES,SUM(issboras)issboras,SUM(rejbales) as rejBALES,SUM(rejboras) as rejboras,slname  from"
            SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from("
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (b.rejflg='N' or b.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(U, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
            SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull"
            SqlStr = SqlStr + Chr(13) & "(isskgs,0))),3) AS isskgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
            SqlStr = SqlStr + Chr(13) & "0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "')"
            SqlStr = SqlStr + Chr(13) & "AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt <'" & Format(U, "yyyy-mm-dd") & "'  and e.lotno between " & fltn & " "
            SqlStr = SqlStr + Chr(13) & "and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union All"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales,0 AS recboras,0 AS reckgs,0 as issbales,0 as issboras,0 as isskgs,sum(issBales) AS"
            SqlStr = SqlStr + Chr(13) & "rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,"
            SqlStr = SqlStr + Chr(13) & "0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where"
            SqlStr = SqlStr + Chr(13) & "(e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt"
            SqlStr = SqlStr + Chr(13) & "Between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' and e.lotno between " & fltn & " and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,"
            SqlStr = SqlStr + Chr(13) & "e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS,0 as rejbales,0 as rejboras,0 as rejkgs from ("
            SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
            SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
            SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and " & tmptypestr & "='" & vrectype & "' "
            SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
        Else
            SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
            SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0)) end as clokgs,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE,SUM(recBALES)recBALES,SUM(recboras)recboras,SUM(issbales)issBALES,SUM(issboras)issboras,SUM(rejbales) as rejBALES,SUM(rejboras) as rejboras,slname  from"
            SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from("
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (b.rejflg='N' or b.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(U, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
            SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull"
            SqlStr = SqlStr + Chr(13) & "(isskgs,0))),3) AS isskgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
            SqlStr = SqlStr + Chr(13) & "0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "')"
            SqlStr = SqlStr + Chr(13) & "AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt <'" & Format(U, "yyyy-mm-dd") & "'  and e.lotno between " & fltn & " "
            SqlStr = SqlStr + Chr(13) & "and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union All"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales,0 AS recboras,0 AS reckgs,0 as issbales,0 as issboras,0 as isskgs,sum(issBales) AS"
            SqlStr = SqlStr + Chr(13) & "rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,"
            SqlStr = SqlStr + Chr(13) & "0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where"
            SqlStr = SqlStr + Chr(13) & "(e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt"
            SqlStr = SqlStr + Chr(13) & "Between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' and e.lotno between " & fltn & " and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,"
            SqlStr = SqlStr + Chr(13) & "e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS,0 as rejbales,0 as rejboras,0 as rejkgs from ("
            SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
            SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
            SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and (b.TransferType='' OR b.TransferType='JR')"
            SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
        End If
    Else
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0)) end as clokgs,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE,SUM(recBALES)recBALES,SUM(recboras)recboras,SUM(issbales)issBALES,SUM(issboras)issboras,SUM(rejbales) as rejBALES,SUM(rejboras) as rejboras,slname  from"
        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from("
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (b.rejflg='N' or b.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(U, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull"
        SqlStr = SqlStr + Chr(13) & "(isskgs,0))),3) AS isskgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
        SqlStr = SqlStr + Chr(13) & "0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "')"
        SqlStr = SqlStr + Chr(13) & "AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt <'" & Format(U, "yyyy-mm-dd") & "'  and e.lotno between " & fltn & " "
        SqlStr = SqlStr + Chr(13) & "and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union All"
        SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales,0 AS recboras,0 AS reckgs,0 as issbales,0 as issboras,0 as isskgs,sum(issBales) AS"
        SqlStr = SqlStr + Chr(13) & "rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,"
        SqlStr = SqlStr + Chr(13) & "0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where"
        SqlStr = SqlStr + Chr(13) & "(e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt"
        SqlStr = SqlStr + Chr(13) & "Between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' and e.lotno between " & fltn & " and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,"
        SqlStr = SqlStr + Chr(13) & "e.lotdt,baleno)s GROUP BY lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS,0 as rejbales,0 as rejboras,0 as rejkgs from ("
        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
    End If
        
        rs1.Open SqlStr, Cnn, adOpenStatic

Else
        Set rs1 = New Recordset
        
        SqlStr = ""
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            tmptypestr = "b.LotType"
        Else
            tmptypestr = "b.TransferType"
        End If
            SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
            SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0)) end as clokgs,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE,SUM(recBALES)recBALES,SUM(recboras)recboras,SUM(issbales)issBALES,SUM(issboras)issboras,SUM(rejbales) as rejBALES,SUM(rejboras) as rejboras,slname  from"
            SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from("
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (b.rejflg='N' or b.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(U, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
            SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull"
            SqlStr = SqlStr + Chr(13) & "(isskgs,0))),3) AS isskgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
            SqlStr = SqlStr + Chr(13) & "0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "')"
            SqlStr = SqlStr + Chr(13) & "AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt <'" & Format(U, "yyyy-mm-dd") & "'  and e.lotno between " & fltn & " "
            SqlStr = SqlStr + Chr(13) & "and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & ") a group by LOTNO,LOTDT Union All"
            SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
            SqlStr = SqlStr + Chr(13) & "Union All"
            SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales,0 AS recboras,0 AS reckgs,0 as issbales,0 as issboras,0 as isskgs,sum(issBales) AS"
            SqlStr = SqlStr + Chr(13) & "rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,"
            SqlStr = SqlStr + Chr(13) & "0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where"
            SqlStr = SqlStr + Chr(13) & "(e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt"
            SqlStr = SqlStr + Chr(13) & "Between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' and e.lotno between " & fltn & " and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,"
            SqlStr = SqlStr + Chr(13) & "e.lotdt,baleno)s GROUP BY lotno,lotdt"
            SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS,0 as rejbales,0 as rejboras,0 as rejkgs from ("
            SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
            SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
            SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
            SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
            SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
            SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
            SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
            If vrectype = "A" Then
                SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.catcd='" & catcd & "' and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND (B.transfertype='' or b.transfertype='JR') "
                SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            Else
                SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.catcd='" & catcd & "' and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND " & tmptypestr & " = '" & vrectype & "' "
                SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            End If
    Else
        SqlStr = SqlStr + Chr(13) & "select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES)OPBALES,SUM(OPBORAS)OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0))- sum(isnull(a.rejbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0))- sum(isnull(a.rejboras,0)) end as cloboras,"
        SqlStr = SqlStr + Chr(13) & "case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0))- sum(isnull(a.rejkgs,0)) end as clokgs,ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE,SUM(recBALES)recBALES,SUM(recboras)recboras,SUM(issbales)issBALES,SUM(issboras)issboras,SUM(rejbales) as rejBALES,SUM(rejboras) as rejboras,slname  from"
        SqlStr = SqlStr + Chr(13) & "(( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from("
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & fltn & " and " & tltn & " group by b.LOTNO,B.LOTDT,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.actISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between  " & fltn & " and " & tltn & " GROUP BY c.LOTNO,C.LOTDT,BBLFLG"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,b.lotdt,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then count(*)  else 0 end as issbales,case when b.bblflg   IN ('R','H') then count(*) else 0 end as issboras,round((sum(isnull(C.actISSKGS,0))),3) as isskgs from rm_lot b,rm_issb c,rm_bale e where (b.rejflg='N' or b.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   B.DIVCODE='" & Divcode & "' AND b.lotdt= e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and docdt < '" & Format(U, "yyyy-mm-dd") & "'  and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and"
        SqlStr = SqlStr + Chr(13) & "'" & Format(yldate, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & " group by B.varcode,b.LOTNO,b.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union"
        SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,sum(issBales) AS issbales,0 as issboras,round((sum(isnull"
        SqlStr = SqlStr + Chr(13) & "(isskgs,0))),3) AS isskgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,0 as opkgs,count(*) as issbales,"
        SqlStr = SqlStr + Chr(13) & "0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where (e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "')"
        SqlStr = SqlStr + Chr(13) & "AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt <'" & Format(U, "yyyy-mm-dd") & "'  and e.lotno between " & fltn & " "
        SqlStr = SqlStr + Chr(13) & "and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,e.lotdt,baleno)s GROUP BY lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & ") a  group by LOTNO,LOTDT Union All"
        SqlStr = SqlStr + Chr(13) & "select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs,0 as rejbales,0 as rejboras,0 as rejkgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and b.lotno between " & fltn & " and " & tltn & "  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg"
        SqlStr = SqlStr + Chr(13) & "Union All"
        SqlStr = SqlStr + Chr(13) & "select LOTNO,lotdt,0 as opbales,0 as opboras,0 as opkgs,0 AS recbales,0 AS recboras,0 AS reckgs,0 as issbales,0 as issboras,0 as isskgs,sum(issBales) AS"
        SqlStr = SqlStr + Chr(13) & "rejbales,0 as rejboras,round((sum(isnull(isskgs,0))),3) AS rejkgs FROM(select e.LOTNO,e.lotdt,0 as opbales,0 as opboras,"
        SqlStr = SqlStr + Chr(13) & "0 as opkgs,count(*) as issbales,0 as issboras,round((sum(isnull(e.netwt,0))),3) AS isskgs from rm_bale e where"
        SqlStr = SqlStr + Chr(13) & "(e.rejflg='Y' or e.rejdt>'" & Format(U, "yyyy-mm-dd") & "') AND   e.DIVCODE='" & Divcode & "' AND (e.rejflg='Y' or e.rejdt >'" & Format(yldate, "yyyy-mm-dd") & "') and e.lotdt"
        SqlStr = SqlStr + Chr(13) & "Between '" & Format(U, "yyyy-mm-dd") & "' AND '" & Format(v, "yyyy-mm-dd") & "' and e.lotno between " & fltn & " and " & tltn & " AND Status='RJ' group by e.varcode,e.LOTNO,"
        SqlStr = SqlStr + Chr(13) & "e.lotdt,baleno)s GROUP BY lotno,lotdt"
        SqlStr = SqlStr + Chr(13) & "Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS,0 as rejbales,0 as rejboras,0 as rejkgs from ("
        SqlStr = SqlStr + Chr(13) & "SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM("
        SqlStr = SqlStr + Chr(13) & "SELECT c.LOTNO,C.LOTDT,bblflg,c.BALENO AS BALENO,0 AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & ""
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg,c.baleno"
        SqlStr = SqlStr + Chr(13) & ")X GROUP BY LOTNO,LOTDT,BBLFLG Union  SELECT c.LOTNO,C.LOTDT,bblflg,0 AS BALENO,isnull(sum(c.actisskgs),0) AS KGS  from rm_lot b,rm_issb c,rm_bale e where B.DIVCODE='" & Divcode & "' AND b.lotdt="
        SqlStr = SqlStr + Chr(13) & "e.lotdt  and c.lottype=e.lottype and c.lotno=e.lotno and c.catcd=e.catcd and c.baleno=e.baleno and b.lotno=c.lotno"
        SqlStr = SqlStr + Chr(13) & "and (B.rejflg='N' or B.rejdt >'" & Format(U, "yyyy-mm-dd") & "') and  B.lotyear IN ('" & Year(yfdate) & "') and b.lotdt=c.lotdt and b.lottype=c.lottype"
        SqlStr = SqlStr + Chr(13) & "and b.catcd=c.catcd  and docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(v, "yyyy-mm-dd") & "' and c.lotno between " & fltn & " and " & tltn & " "
        SqlStr = SqlStr + Chr(13) & "group by B.varcode,c.LOTNO,c.lotdt,b.bblflg"
        SqlStr = SqlStr + Chr(13) & ")Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V,FA_SLMAS D WHERE  B.SUPCD=D.SLCODE AND b.catcd='" & catcd & "' and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
        SqlStr = SqlStr + Chr(13) & "group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
    End If
    rs1.Open SqlStr, Cnn, adOpenStatic
End If


If rs1.EOF Then
   MsgBox "No Stock found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisetemp'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "delete StockLotwisetemp"
        Else
        DB.Execute "Create table StockLotwisetemp(Catname char(20),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(50),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),value numeric(20,3),recbales numeric(15),recboras numeric(15),issbales numeric(15),issboras numeric(15),slname char(50),rejbales numeric(15),rejboras numeric(15))"
    End If

Set rs5 = New Recordset
rs5.Open "select ABBR from PP_DIVMAS where Divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic


Do While Not rs1.EOF
SqlStr = "insert into StockLotwisetemp Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "'," & Format(rs1(3), "yyyy-MM-dd") & ",'" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1(17) & "," & rs1(18) & "," & rs1(19) & "," & rs1(20) & ",'" & rs1(23) & "'," & rs1(21) & "," & rs1(22) & ")"
DB.Execute "insert into StockLotwisetemp Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1(17) & "," & rs1(18) & "," & rs1(19) & "," & rs1(20) & ",'" & rs1(23) & "'," & rs1(21) & "," & rs1(22) & ")"
rs1.MoveNext
Loop
            Set Rs = New Recordset
            Rs.Open "Select Abbr from pp_divmas where divcode='" & Divcode & "'", DB, adOpenStatic

        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockLotwiseFile.rpt"
        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\" & "Invy\rptRcptInsp.RPT"
        FrmRpt.RptHead = 4
        parameter1 = Format(DTPicker2.value, "dd/MM/yy")
        parameter2 = Format(DTPicker3.value, "dd/MM/yy")
        parameter3 = divname
        parameter4 = Rs(0)
        FrmRpt.Show


Exit Sub
StockLotReport3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport3 of Form repform1", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Public Sub suppliers()
On Error GoTo suppliers_Error

    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        sup = rs1("ptypecotton") '& "%"
    Else
        sup = ""
    End If
     Set RSS = New Recordset
    RSS.Open "select distinct a.SLNAME+ ' -- ' +a.SLCODE AS SUP,A.SLCODE from fa_slmas a where left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) ORDER BY A.SLCODE", cn, adOpenStatic, adLockBatchOptimistic
    If RSS.RecordCount > 0 Then
        Set dbcmb_fsup.RowSource = RSS
        dbcmb_fsup.ListField = "SUP"
        RSS.MoveFirst
        dbcmb_fsup.Text = RSS(0)
        Set dbcmb_tsup.RowSource = RSS
        dbcmb_tsup.ListField = "SUP"
        RSS.MoveLast
        dbcmb_tsup.Text = RSS(0)
   End If
If Repindex = "77777" Then
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen", DB, adOpenStatic
    'If ISSTYPE = "S" Then
       If rs1.RecordCount > 0 Then
          'sup = rs1("ptypecottonsales") & "%"
          'sup = Mid$(rs1("ptypecottonsales"), 1, InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
          If Len(rs1("ptypecottonsales")) > 2 Then
           sup = Left(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
           sup1 = Right(rs1("ptypecottonsales"), InStr(1, rs1("ptypecottonsales"), ",") - 1) & "%"
           Else
           sup = rs1("ptypecottonsales") & "%"
           sup1 = ""
          End If
       Else
          sup = ""
          sup1 = ""
       End If
'    Else
'       If rs1.RecordCount > 0 Then
'          sup = rs1("ptypecotton") & "%"
'       Else
'          sup = ""
'       End If
    End If
    Set RSS = New Recordset
    RSS.Open "select distinct a.SLNAME+ ' -- ' +a.SLCODE AS SUP,A.SLCODE from fa_slmas a where slcode like '" & sup & "' or slcode like '" & sup1 & "' ORDER BY A.SLCODE", cn, adOpenStatic, adLockBatchOptimistic
    If RSS.RecordCount > 0 Then
        Set dbcmb_fsup.RowSource = RSS
        dbcmb_fsup.ListField = "SUP"
        RSS.MoveFirst
        dbcmb_fsup.Text = RSS(0)
        Set dbcmb_tsup.RowSource = RSS
        dbcmb_tsup.ListField = "SUP"
        RSS.MoveLast
        dbcmb_tsup.Text = RSS(0)
   End If
          lbl_fsup.Top = 1560
        lbl_tsup.Top = 2000
        dbcmb_fsup.Top = lbl_fsup.Top
        dbcmb_tsup.Top = lbl_tsup.Top

'End If

Exit Sub
suppliers_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure suppliers of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub StockLotReport4(Str As String, U As String, fltn As Integer, tltn As Integer, a As Integer, footerstr As String, Optional pRecType As String)

On Error GoTo StockLotReport4_Error

Set Cnn = New Connection
Dim v As String
str1 = Str
catcd = Str
a1 = U
v = U
'u = Format(yfdate, "yyyy-mm-dd")
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
    Set ResultRs = New Recordset
    DB.CommandTimeout = 2000
    Cnn.CommandTimeout = 2000
    
  
    
        strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,BBLFLG as unit,RATECY,RATEKG,E.SLNAME,C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.TRANSBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.TRANSBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

                 
        If Trim(Str) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
'                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd ='" & Trim(Str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                     strSQL = strSQL & " and (b.transfertype='' or isnull(b.transfertype,'A')='" & Trim(vrectype) & "') and b.lotyear='" & Year(yfdate) & "' And b.catcd ='" & Trim(Str) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "'  And b.catcd ='" & Trim(Str) & "'  group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd ='" & Trim(Str) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname Order by A.LOTDT,A.lotno"
            End If
        End If
        
    ResultRs.Open strSQL, Cnn, adOpenStatic

    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisePositiontemp'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "delete StockLotwisePositiontemp"
        Else
        DB.Execute "Create table StockLotwisePositiontemp(PartyName nvarchar(255),lotno Numeric(10),LotDate Datetime,varname char(50),PartyLotNo varchar(50),RatePerKg Numeric(18,2), ClosingQty numeric(18,3) ,Closingkgs numeric(18,3),ratecy numeric(18,3),value numeric(18,3))"
    End If

Set rs5 = New Recordset
rs5.Open "select ABBR from PP_DIVMAS where Divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

Do While Not ResultRs.EOF
    
    If ResultRs!value <> 0 Then
'        SqlStr = "insert into StockLotwisePositiontemp Values ('" & ResultRs!Slname & " ','" & ResultRs!LOTNO & "/" & Format(ResultRs!LOTDT, "YY") & "','" & ResultRs!VarName & "','" & ResultRs!PlotNo & "'," & ResultRs!ratekg & "," & ResultRs!clobales + ResultRs!cloBoras & "," & ResultRs!clokgs & "," & ResultRs!RATECY & " , " & ResultRs!Value & " )"
        DB.Execute "insert into StockLotwisePositiontemp Values ('" & ResultRs!sLname & " '," & ResultRs!lotno & ",'" & Format(ResultRs!LOTDT, "YYYY/MM/DD") & "','" & ResultRs!VarName & "','" & ResultRs!PlotNo & "'," & ResultRs!ratekg & "," & ResultRs!clobales + ResultRs!CLOBORAS & "," & ResultRs!clokgs & "," & IIf(IsNull(ResultRs!RATECY), 0, ResultRs!RATECY) & " , " & ResultRs!value & " )"
        
    End If
    ResultRs.MoveNext
Loop
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = Cry_Daily_LotStkPos 'DailyLotwiseStockPos_New 'LotwiseStockPositionDaily
    clsCryRpt.CrystalPrint
               
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "@date1;" & Format(DTPicker1.value, "dd/MM/yy") & ""
    crr.ParameterFields(1) = "@DivName;" & divname & ""
    crr.ParameterFields(2) = "@UnitName;" & PrUnitName & ""
    
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 2
    crr.PrinterCopies = 1
    Screen.MousePointer = 0

Exit Sub
StockLotReport4_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport4 of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub








Public Sub StockSupplierLotReport(Str As String, U As String, fltn As String, tltn As String, a As Integer, footerstr As String, Optional pRecType As String)



On Error GoTo StockSupplierLotReport_Error

Set Cnn = New Connection
Dim v As String
str1 = Str
catcd = Str
a1 = U
v = U
'u = Format(yfdate, "yyyy-mm-dd")
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
    Set ResultRs = New Recordset
    DB.CommandTimeout = 2000
    Cnn.CommandTimeout = 2000
'    If str = "ALL" Then
'        If vrectype <> "ALL" Then
'            If vrectype = "A" Then
'                tmptypestr = "b.LotType"
'            Else
'                tmptypestr = "b.TransferType"
'            End If
'              If vrectype = "A" Then
'                  SqlStr = ""
'                  SqlStr = SqlStr + Chr(13) & "   select c.SlName, CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'                  SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'                  SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY, (RATEKG*(sum(ROUND(isnull(a.opkgs,0),0))+ sum(ROUND(isnull(a.reckgs,0),0))- sum(ROUND(isnull(a.isskgs,0),0)))) AS VALUE  from "
'                  SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  'SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'                  SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'                  SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b, fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and (b.transfertype='' OR b.transfertype='JR') and b.Divcode='" & Divcode & "' AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'                  SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg, c.slName"
'                  SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'              Else
'                  SqlStr = ""
'                  SqlStr = SqlStr + Chr(13) & "   select c.slname, CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'                  SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'                  SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY, (RATEKG*(sum(ROUND(isnull(a.opkgs,0),0))+ sum(ROUND(isnull(a.reckgs,0),0))- sum(ROUND(isnull(a.isskgs,0),0)))) AS VALUE  from "
'                  SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  ''SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'                  SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'                  SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b, fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and " & tmptypestr & "='" & vrectype & "' and b.Divcode='" & Divcode & "'  AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'                  SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg , c.Slname"
'                  SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'              End If
'        Else
'              SqlStr = ""
'              SqlStr = SqlStr + Chr(13) & "   select c.slname, CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'              SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'              SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from "
'              SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'            ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'              'SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'              SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'              SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'              SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'              SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'              SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b , fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and b.Divcode='" & Divcode & "'  AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'              SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg , c.slname"
'              SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'        End If
'        ResultRs.Open SqlStr, DB, adOpenStatic
'    Else
'        Set ResultRs = New Recordset
'        If vrectype <> "ALL" Then
'            If vrectype = "A" Then
'                tmptypestr = "b.LotType"
'            Else
'                tmptypestr = "b.TransferType"
'            End If
'              If vrectype = "A" Then
'                  SqlStr = ""
'                  SqlStr = SqlStr + Chr(13) & "   select C.SlName,CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'                  SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'                  SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from "
'                  SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  'SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'                  SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.CatCd='" & Trim(str) & "' and b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'                  SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b, Fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and (b.transfertype='' OR b.transfertype='JR') and b.Divcode='" & Divcode & "' AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'                  SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg, c.Slname "
'              SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'              Else
'                  SqlStr = ""
'                  SqlStr = SqlStr + Chr(13) & "   select c.slname,CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'                  SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'                  SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from "
'                  SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'                  SqlStr = SqlStr + Chr(13) & "   Union "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  'SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'                  SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'                  SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'                  SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'                  SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'                  SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.CatCd='" & Trim(str) & "' and b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'                  SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b, fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and " & tmptypestr & "='" & vrectype & "' and b.Divcode='" & Divcode & "'  AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'                  SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg, c.slname "
'              SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'              End If
'        Else
'              SqlStr = ""
'              SqlStr = SqlStr + Chr(13) & "   select c.slname,CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg FROM(  "
'              SqlStr = SqlStr + Chr(13) & "   select C.CatCd,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,SUM(OPBALES) as OPBALES,SUM(OPBORAS) as OPBORAS,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, "
'              SqlStr = SqlStr + Chr(13) & "   case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS VALUE  from "
'              SqlStr = SqlStr + Chr(13) & "   (( select LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and b.OPFLG='Y' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'            ' SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and b.lotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND  b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.plotno between '" & fltn & "' and '" & tltn & "' group by b.LOTNO,B.LOTDT,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between  '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG  "
'              SqlStr = SqlStr + Chr(13) & "   Union "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and c.divcode='" & Divcode & "' and b.rejflg='N'  and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'              'SqlStr = SqlStr + Chr(13) & "   Union all select lotno,lotdt,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as opbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as opboras,isnull(sum(netwt),0) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt < '" & Format(u, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg"
'              SqlStr = SqlStr + Chr(13) & "   ) a  group by LOTNO,LOTDT Union All "
'              SqlStr = SqlStr + Chr(13) & "   select b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.plotno between '" & fltn & "' and '" & tltn & "'  group by b.LOTNO,B.LOTDT,b.opflg,b.bblflg "
'              SqlStr = SqlStr + Chr(13) & "   union all select lotno,lotdt,0 as opbales,0 as opboras,0 as opkgs,case when bblflg = 'B' THEN isnull(sum(bales),0) ELSE 0 END as recbales,case when bblflg = 'R' THEN isnull(sum(bales),0) ELSE 0 END as recboras,isnull(sum(netwt),0) as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' and lottype='T' and transfertype='JR' and lotdt between '" & Format(U, "yyyy-MM-dd") & "' and  '" & Format(V, "yyyy-MM-dd") & "' group by lotno,lotdt,bblflg "
'              SqlStr = SqlStr + Chr(13) & "   Union All select LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( "
'              SqlStr = SqlStr + Chr(13) & "   SELECT LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( "
'              SqlStr = SqlStr + Chr(13) & "   SELECT c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE  statuS in ('AC','AW') and b.rejflg='N' and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and c.plotno between '" & fltn & "' and '" & tltn & "'   GROUP BY c.LOTNO,C.LOTDT,A.BALENO,BBLFLG "
'              SqlStr = SqlStr + Chr(13) & "   )X GROUP BY LOTNO,LOTDT,BBLFLG Union SELECT c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.plotno between '" & fltn & "' and '" & tltn & "' GROUP BY c.LOTNO,C.LOTDT,BBLFLG "
'              SqlStr = SqlStr + Chr(13) & "   )Y GROUP BY LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  b.CatCd='" & Trim(str) & "' and b.lotyear='" & Year(yfdate) & "'  and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT "
'              SqlStr = SqlStr + Chr(13) & "   group by C.CatCd,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG ) Result,RM_Lot b, fa_slmas c where Result.LotNo=b.LotnO and Result.LotDt=b.LotDt and b.Divcode='" & Divcode & "'  AND c.slCode= b.supcd and b.lotyear='" & Year(yfdate) & "'"
'              SqlStr = SqlStr + Chr(13) & "   group by CatName,varcode,varname,Result.lotno,Result.lotdt,Result.catcd,Clobales,CloBoras,CloKgs,Value,b.plotno,b.ratecy ,b.ratekg, c.slname "
'              SqlStr = SqlStr + Chr(13) & "   Order By Result.lotDt, Result.lotno"
'        End If
'        ResultRs.Open SqlStr, DB, adOpenStatic
'    End If

    strSQL = " select e.slname,d.catNAME,a.varcode,c.varname,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') as catcd,RATECY AS rATECY,RATEKG,B.PLOTNO,case when b.bblflg = 'B' THEN 'Bales' when b.bblflg  IN ('R','H') THEN 'Boras' END AS Unit,"
    strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END Clobales, "
    strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END AS  CloBoras,"
    strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CloKgs,"
    strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
    strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END VALUE"
    strSQL = strSQL + " FROM ("
    strSQL = strSQL + gStockStatement(U, v)
    strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE  and b.plotno between '" & fltn & "' and '" & tltn & "'"

                
    If Trim(Str) <> "ALL" Then
              
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(Str) & "' group by e.slname,d.catname,a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg Order by A.LOTDT,A.lotno"
            Else
                strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(Str) & "' group by e.slname,d.catname,a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO,bblflg Order by A.LOTDT,A.lotno"
            End If
        Else
                strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd='" & Trim(Str) & "' group by e.slname,d.catname,a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY,B.PLOTNO,RATEKG,bblflg Order by A.LOTDT,A.lotno"
        End If
    Else
        If vrectype <> "ALL" Then
            If vrectype = "A" Then
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' e.slname,d.catname,group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO,bblflg Order by A.LOTDT,A.lotno"
            Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' e.slname,d.catname,group by a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' ') ,RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
            End If
        Else
                strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by e.slname,d.catname,a.varcode,C.VARNAME,a.LOTNO,A.LOTDT,isnull(b.catcd,' '),RATECY ,RATEKG,B.PLOTNO Order by A.LOTDT,A.lotno"
        End If
    End If
    
    Set ResultRs = New Recordset
    ResultRs.Open strSQL, DB, adOpenStatic
    
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If

Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisePositiontemp'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "delete StockLotwisePositiontemp"
        Else
        DB.Execute "Create table StockLotwisePositiontemp(PartyName nvarchar(255),lotno nvarchar(100),varname char(50),PartyLotNo varchar(50),RatePerKg Numeric(18,2), ClosingQty numeric(18,3) ,Closingkgs numeric(18,3),ratecy numeric(18,3),value numeric(18,3))"
    End If

Set rs5 = New Recordset
rs5.Open "select ABBR from PP_DIVMAS where Divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

Do While Not ResultRs.EOF
    
    If ResultRs!value <> 0 Then
        DB.Execute "insert into StockLotwisePositiontemp Values ('" & ResultRs!sLname & " ','" & ResultRs!lotno & "/" & Format(ResultRs!LOTDT, "YY") & "','" & ResultRs!VarName & "','" & ResultRs!PlotNo & "'," & ResultRs!ratekg & "," & ResultRs!clobales + ResultRs!CLOBORAS & "," & ResultRs!clokgs & "," & IIf(IsNull(ResultRs!RATECY), 0, ResultRs!RATECY) & " , " & ResultRs!value & " )"
        
    End If
    ResultRs.MoveNext
Loop
    Call CrystalFooter(UserFooter1.SelectedStr, 100)
    footervar = CStr(Foot)
'    crr.Reset
'    crr.Connect = connectstring
'    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\SuppLotwiseStockPositionDaily.rpt"
'    crr.ParameterFields(0) = "@date1;" & Format(DTPicker1.value, "dd/MM/yy")
'    crr.ParameterFields(1) = "@DivName;" & DIVNAME
'    crr.ParameterFields(2) = "@repFooter;" & footervar
'    crr.WindowState = crptMaximized
'    SendKeys "{enter}"
'    crr.Action = True
'    crr.PrinterCopies = 1
'    Screen.MousePointer = 0
    Dim clsCryRpt As New clsCrystal
    Set clsCryRpt.cryRept = SuppLotwiseStockPositionDaily
    clsCryRpt.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

    crr.ParameterFields(0) = "@date1;" & Format(DTPicker1.value, "dd/MM/yy") & ""
    crr.ParameterFields(1) = "@DivName;" & divname & ""
    crr.ParameterFields(2) = "@repFooter;" & footervar & ""

    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1

    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\SuppLotwiseStockPositionDaily.rpt"
    'FrmRpt.RptHead = "3"
    'parameter1 = Format(DTPicker1.value, "dd/MM/yy")
    'parameter2 = DIVNAME
    'parameter3 = footervar
    'Screen.MousePointer = 0
    'FrmRpt.Show
    Screen.MousePointer = 0
    
Exit Sub
StockSupplierLotReport_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockSupplierLotReport of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub


Public Sub suppliers1()
On Error GoTo suppliers1_Error

c = CStr(DCmbFLtN.Text)
d = CStr(DCmbTLtN.Text)
e = Mid$(dbcmb_fsup.Text, InStr(dbcmb_fsup.Text, "--") + 3, (Len(dbcmb_fsup.Text) - InStr(dbcmb_fsup.Text, "--")))
B = Mid$(dbcmb_tsup.Text, InStr(dbcmb_tsup.Text, "--") + 3, (Len(dbcmb_tsup.Text) - InStr(dbcmb_tsup.Text, "--")))
 If Repindex = 191 Or Repindex = 34351 Then
        CmbRecType.Visible = True
        LblRecType.Visible = True
        LblRecType.Caption = "Lot Type"
        LblRecType.Left = Label2.Left
        CmbRecType.AddItem "A   - Own Process"
        CmbRecType.AddItem "T   - Job Work"
        CmbRecType.AddItem "ALL   - All"
        CmbRecType.ListIndex = 0
End If

Exit Sub
suppliers1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure suppliers1 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub IssueRegister(a As String, ISSTYPE As String, TrType1 As String)
  
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim slno, r, r1 As Integer
Dim varno1, supplier1, VarName As String
Dim Sname   As String
Dim issrs As Recordset
Dim subcnt As Integer
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO, vrectype, tmptypestr As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset
On Error GoTo IssueRegister_Error

Set Cnn = New Connection
Cnn.Open connectstring
    
Dim str4 As String
Set rs1 = New Recordset
      
If Trim(ISSTYPE) = "A" Then
    str4 = "select distinct a.isstype,b.issue_desc from rm_issh a, rm_issuetype b where a.isstype=b.issue_code and docdt = '" & Format(a, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
Else
    str4 = "select distinct a.isstype,b.issue_desc " & _
         " from rm_issh a , rm_issuetype b where a.isstype=b.issue_code and docdt = '" & Format(a, "yyyy-mm-dd") & "' and a.isstype = '" & ISSTYPE & "' and divcode='" & Divcode & "'"
End If
    rs1.Open str4, DB, adOpenStatic

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

vrectype = Trim(Left(TrType1, 3))
        If vrectype = "A" Then
            tmptypestr = "d.LotType"
        Else
            tmptypestr = "d.TransferType"
        End If


pertotal = 0
                
Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='IssueRegisterTemp'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
    DB.Execute "delete IssueRegisterTemp"
Else
    DB.Execute "Create table IssueRegisterTemp " & _
               " ( IssType nvarchar(255),IssueDesc nvarchar (255),varname varchar(50), Supplier nvarchar(255), LotID nvarchar(100), " & _
               " Qty Numeric (8),GrossWgt Numeric(8,3), TareWgt numeric(8,3) ,NetWgt numeric(8,3), " & _
               " Rate numeric(8,2),Value numeric(10,3))"
End If

Do While Not rs1.EOF
    Set rs5 = New Recordset
    Dim str1 As String
    str1 = "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
         " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.ISSTYPE = '" & rs1("Isstype") & "' and b.docdt = '" & Format(a, "dd-mmm-yy") & "'" & _
         " and a.docno=b.docno and a.docdt=b.docdt"
    
    rs5.Open str1, DB, adOpenStatic
    r1 = rs5.RecordCount
    
    subcnt = 0
    Do While Not rs5.EOF
                
        varno1 = rs5!Varcode
        Set RS2 = New Recordset
    Dim str2 As String
    
If vrectype <> "ALL" Then


    str2 = "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select 0 as grwt,sum(A.tarewt) as tarewt,sum(B.actISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.divcode=c.divcode and b.divcode=a.divcode " & _
            " and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "'  and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' AND D.LOTYEAR='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "' and " & tmptypestr & "= '" & Trim(vrectype) & " ' AND D.LOTYEAR='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd"
Else
    str2 = "SELECT SUM(GRWT) AS GRWT,SUM(TAREWT) AS TAREWT,SUM(NETWT) AS NETWT,SUM(QTY) AS QTY,lotno,lotdt,catcd FROM ( " & _
            " select 0 as grwt,sum(A.tarewt) as tarewt,sum(B.actISSKGS) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.baleno=a.baleno  and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "'  and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd" & _
            " UNION select 0 as grwt,0 as tarewt,0 as netwt,count(B.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_issb b,rm_issh c,rm_lot d " & _
            " Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and B.ISSUED='Y' AND  b.docdt=c.docdt and " & _
            " b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' " & _
            " and b.varcode = '" & rs5!Varcode & "' and c.isstype = '" & rs1("Isstype") & "' and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd)X GROUP BY lotno,lotdt,catcd"

End If

RS2.Open str2, DB, adOpenStatic
                                                       
        av = 0
        r = 0
    Dim strInsert As String
    Dim sLotID As String
    Dim dGWgt, dTWgt, dNWgt, dQty As Double

        If Not RS2.EOF Then

        Do While Not RS2.EOF
            r = r + 1
            Dim str3 As String
            Set RS78 = New Recordset
            str3 = "SELECT isnull(ratekg,0) ratekg FROM rm_lot where lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' "
            RS78.Open str3, DB, adOpenStatic
            
            ratekg12 = 0
            ratekg12 = Round(val(RS78!ratekg), 2)
            value = val(ratekg12) * val(RS2!netwt)
            'Rate = Round(val(ratekg12), 2)
            If (value = 0) Then
             Rate = 0
            Else
             Rate = value / RS2("netwt")
            End If
            
                        
            sLotID = RS2!lotno & "/" & Format(RS2!LOTDT, "YY")
            dQty = RS2!QTY
            dGWgt = RS2!TAREWT + RS2!netwt
            dTWgt = RS2!TAREWT
            dNWgt = RS2!netwt

            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
            Sname = supplier1
            
            strInsert = "insert into IssueRegisterTemp Values ('" & rs1!ISSTYPE & " ','" & rs1!Issue_Desc & " ','" & rs5!VarName & "','" & Sname & _
                        "' ,'" & sLotID & "'," & dQty & "," & dGWgt & "," & dTWgt & "," & dNWgt & "," & Rate & "," & value & ")"
                    
            DB.Execute strInsert
          
            RS2.MoveNext
        Loop

        
        Else
            sLotID = ""
            dGWgt = 0
            dTWgt = 0
            dNWgt = 0
            dQty = 0
            Rate = 0
            value = 0
        End If
        If sLotID = "" Then
        strInsert = "insert into IssueRegisterTemp Values ('" & rs1!ISSTYPE & " ','" & rs1!Issue_Desc & " ','" & rs5!VarName & "','" & Sname & _
                    "' ,'" & sLotID & "'," & dQty & "," & dGWgt & "," & dTWgt & "," & dNWgt & "," & Rate & "," & value & ")"
                
        DB.Execute strInsert
        End If
        rs5.MoveNext
    Loop
    rs1.MoveNext
Loop

    F_Date = Format(DTPicker2.value, "dd/MM/yy")
    crr.Connect = connectstring
    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Daily_IssueRegAll.rpt"
    crr.ParameterFields(0) = "@date1;" & F_Date
    crr.ParameterFields(1) = "@divname;" & divname
    crr.WindowState = crptMaximized
    SendKeys "{Enter}"
    crr.Action = True
    crr.PrinterCopies = 1
    Me.MousePointer = 0
    Exit Sub



Screen.MousePointer = 0

Exit Sub
IssueRegister_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IssueRegister of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub LoadObject()
On Error GoTo LoadObject_Error

    Command1.tabIndex = 2
    Command2.tabIndex = 3
    Command4.Visible = True
    Command4.tabIndex = 4
    Command4.Top = Command1.Top

Exit Sub
LoadObject_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LoadObject of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub Lotwiseissueregister(a As String, ISSTYPE As String, ab As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rs3 As Recordset
Dim rs4 As Recordset
Dim rs5 As Recordset
Dim Sname   As String
Dim VName   As String
Dim Mno     As String
Dim slno, r, r1 As Integer
Dim varno1, supplier1, cntname1 As String
Dim issrs As Recordset
Dim value, totrate1, gtotrate1, tgtotrate1 As Double
Dim totper1, gtotper1, tgtotper1 As Double
Dim strvarcode As String
Dim Rate, ratekg12 As Double
Dim MIXNO As String
Dim pertotal, pertotal1, pertotal2 As Double
Dim tot4, tot5, tot6, tot7, tot8, tot9 As Double
Dim gtot2, gtot3, gtot4, gtot5, gtot6 As Double
Dim ntot1, ntot2, ntot3, ntot4, ntot5, Ntotper1, Ntotrate1 As Double
Dim gtot1 As Double
Dim mixlot, mixgrp, mixcnt As String
Dim lotmix, lotno1, lotmonth, lotcat, lotyear As String
Dim rs55 As New Recordset
Dim RS78 As New Recordset
On Error GoTo Lotwiseissueregister_Error

Set Cnn = New Connection
Cnn.Open connectstring
Dim strInsert As String
Dim sLotID As String
Dim dGWgt, dTWgt, dNWgt, dQty As Double
Dim sMixLotNo As String

Set rs1 = New Recordset
    
If Trim(ISSTYPE) = "A" Then
    rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a, rm_issuetype b where A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt = '" & Format(a, "dd-mmm-yy") & "' and b.isstype='P'", DB, adOpenStatic
Else
    rs1.Open "select distinct isnull(ordno,'') as ordno, isnull(mixgrp,'') as mixgrp, isnull(cntcd,'') as cntcd, isnull(issto,'') as issto,(select mixgrpname from rm_mixgrp where a.mixgrp=mixgrpcd)as mixname " & _
        " from rm_issh a , rm_issuetype b where  A.DIVCODE='" & Divcode & "' AND  a.isstype=b.issue_code and docdt = '" & Format(a, "dd-mmm-yy") & "' and a.isstype = '" & ISSTYPE & "'", DB, adOpenStatic
End If

If rs1.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    
vrectype = Trim(Left(ab, 3))
If vrectype = "A" Then
    tmptypestr = "d.LotType"
Else
    tmptypestr = "d.TransferType"
End If

Set rs4 = New Recordset
    rs4.Open "select * from sysobjects where name ='LotWiseIssueRegisterTemp'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
    DB.Execute "delete LotWiseIssueRegisterTemp"
Else
    DB.Execute " Create table LotWiseIssueRegisterTemp " & _
               " (varname varchar(50), Supplier nvarchar(255),MixLotNo  nvarchar(255),MixGroup nvarchar(255), LotID nvarchar(100), " & _
               " Qty Numeric (8),GrossWgt Numeric(8,3), TareWgt numeric(8,3) ,NetWgt numeric(8,3), " & _
               " Rate numeric(8,2),Mixing numeric(8,3), Value numeric(10,3),plotno varchar(50))"
End If
      
Do While Not rs1.EOF
    mixlot = rs1("ordno")
    mixgrp = rs1("mixname")
    If IsNull(rs1("MIXNAME")) = True Then
        mixgrp = rs1("MIXGRP")
    End If
    If rs1("MIXNAME") = "" Then
        mixgrp = rs1("MIXGRP")
    End If
    If mixlot = "" And mixgrp = "" Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
    
    
    'TO Find the Count Name
    If rs1!Issto = "D" Then
        Set issrs = New Recordset
        issrs.Open "Select cntname from rm_count where cntcd= '" & rs1!cntcd & "' ", DB, adOpenStatic
        If issrs.RecordCount > 0 Then
          cntname1 = issrs!cntname
        Else
           cntname1 = ""
        End If
    Else
       Set issrs = New Recordset
        issrs.Open "Select description from ig_product where DIVCODE='" & Divcode & "' AND product_code= '" & rs1!cntcd & "' ", DB, adOpenStatic
       If issrs.RecordCount > 0 Then
          cntname1 = issrs!Description
        Else
           cntname1 = ""
        End If
    End If
                
    'To find percentage total
    Set RS2 = New Recordset
    If vrectype <> "ALL" Then
          qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
          ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c  Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd ORDER BY B.CATCD", DB, adOpenStatic
          Else
          qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
          
          End If
        
    RS2.Open qry, DB, adOpenStatic
   
    pertotal = 0
                 

    Do While Not RS2.EOF
        pertotal = Round(pertotal, 3) + Round(RS2!netwt, 3)
        RS2.MoveNext
    Loop
    
    
    If RS2.EOF = False Then
        RS2.MoveFirst
    End If

        MIXNO = rs1("ordno")
        If Not RS2.BOF = True Then
        RS2.MoveFirst
            sMixLotNo = RS2!lotno & "/" & Format(RS2!LOTDT, "YY")
        Else
            sMixLotNo = ""
        End If
        Mno = mixlot
        VName = " "
        Sname = " "
'    End If
    co = co + 1
    
    Set rs5 = New Recordset
    rs5.Open "select distinct a.varcode ,(select varname from rm_var  where  varcode=a.varcode) as  varname,A.CATCD from rm_issb a,rm_issh b,RM_ISSUETYPE C where " & _
        " C.ISSUE_CODE=A.ISSTYPE AND C.ISSUE_CODE=B.ISSTYPE AND b.ordno = '" & mixlot & "' and b.docdt = '" & Format(a, "dd-mmm-yy") & "' and C.isstype like 'P' " & _
        " and a.docno=b.docno AND A.DIVCODE='" & Divcode & "' ORDER BY A.CATCD,A.VARCODE", DB, adOpenStatic
    r1 = rs5.RecordCount 'For Rate Average
    
  
        Do While Not rs5.EOF
        If VName = rs5("Varname") Then
            Print #z, Space(30)
        Else
            VName = rs5("Varname")
            Sname = " "
        End If
        
        co = co + 2
        varno1 = rs5!Varcode
                          
        Set RS2 = New Recordset
    If vrectype <> "ALL" Then
        qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.varcode = '" & rs5!Varcode & "' and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and " & tmptypestr & "= '" & Trim(vrectype) & " ' and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode and b.varcode = '" & rs5!Varcode & "' and " & tmptypestr & "= '" & Trim(vrectype) & " '  and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"
        
    Else
          qry = "SELECT SUM(GRWT)GRWT,SUM(TAREWT)TAREWT,SUM(NETWT)NETWT,SUM(QTY)QTY,X.LOTNO,X.LOTDT,X.CATCD FROM ( " & _
          " select 0 as grwt,0 as tarewt,0 as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and A.DIVCODE='" & Divcode & "' AND b.issued='Y' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT   and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and b.varcode = '" & rs5!Varcode & "' and  b.varcode=a.varcode   and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " UNION " & _
          " select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(b.actisskgs) as netwt,0 as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c,rm_lot d  Where b.lotno=d.lotno and b.lotdt=d.lotdt and b.lottype=d.lottype and b.divcode=d.divcode and c.DIVCODE=a.divcode and A.DIVCODE='" & Divcode & "' AND A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and b.docdt=c.docdt and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno and b.varcode = '" & rs5!Varcode & "' and c.ordno = '" & mixlot & "' AND C.MIXGRP='" & rs1("MIXGRP") & "' and  b.varcode=a.varcode  and d.lotyear='" & Year(yfdate) & "' group by b.lotno,b.lotdt,b.catcd " & _
          " )X Group by x.lotno,x.lotdt,x.catcd order by catcd"

    End If
          
        RS2.Open qry, DB, adOpenStatic
        
        ''rs2.Open "select sum(A.grwt) as grwt,sum(A.tarewt) as tarewt,sum(A.netwt) as netwt,count(a.baleno) as qty,b.lotno,b.lotdt,b.catcd from rm_bale A  ,rm_issb b,rm_issh c Where A.lotno =b.lotno And A.isqty > 0 AND A.LOTDT=B.LOTDT and a.lotno=b.lotno and b.docno = c.docno and b.docdt ='" & Format(a, "dd-mmm-yy") & "' and b.baleno=a.baleno  and b.varcode = '" & rs5!varcode & "' and c.ordno = '" & mixlot & "'  and  b.varcode=a.varcode group by b.lotno,b.lotdt,b.catcd"
                                                            
        r = 0
        If Not RS2.EOF Then

        Do While Not RS2.EOF
            r = r + 1
            Set RS78 = New Recordset
            RS78.Open "SELECT isnull(round(ratekg,2),0) ratekg FROM rm_lot where DIVCODE='" & Divcode & "' AND  lotno = '" & RS2!lotno & "' and lotdt ='" & Format(RS2!LOTDT, "dd-mmm-yy") & "' and varcode = '" & rs5!Varcode & "' ", DB, adOpenStatic
            ratekg12 = 0
            Do While Not RS78.EOF
            ratekg12 = Round(val(RS78!ratekg), 2)
            RS78.MoveNext
            Loop
            value = val(ratekg12) * val(RS2!netwt)
            Rate = Round(val(ratekg12), 2)
            pertotal1 = 0
            If Not pertotal = 0 Then
            pertotal1 = (val(RS2("netwt")) / pertotal) * 100
            Else
            pertotal1 = 0
            End If
            pertotal1 = Round(pertotal1, 2)
            
                                    
            sLotID = RS2!lotno & "/" & Format(RS2!LOTDT, "YY")
            dQty = RS2!QTY
            dGWgt = RS2!GRWT
            dTWgt = RS2!TAREWT
            dNWgt = RS2!netwt

                                    
            Call lot(RS2("catcd"), RS2("lotno"), RS2("lotdt"), lotmix)
            Call supplier3(RS2("catcd"), RS2("lotno"), RS2("lotdt"), rs5!Varcode, supplier1)
            Set Rs = New Recordset
            Rs.Open "select plotno from rm_lot where catcd='" & RS2("catcd") & "' and lotno =" & RS2("lotno") & " and lotdt='" & Format(RS2("lotdt"), "YYYY/MM/DD") & "'", DB, adOpenStatic
            If Rs.EOF = False Then
                PlotNo = Rs(0)
            Else
                PlotNo = ""
            End If
            
            
            Sname = supplier1
            
            
            
            strInsert = "insert into LotWiseIssueRegisterTemp Values ('" & rs5!VarName & "','" & Sname & "','" & sMixLotNo & "','" & mixgrp & _
            "' ,'" & sLotID & "'," & dQty & "," & dGWgt & "," & dTWgt & "," & dNWgt & "," & Rate & "," & pertotal1 & "," & value & ",'" & PlotNo & "')"
            DB.Execute strInsert
          
            RS2.MoveNext
        Loop
        Else
            sLotID = ""
            dGWgt = 0
            dTWgt = 0
            dNWgt = 0
            dQty = 0
            Rate = 0
            value = 0
        End If
        If sLotID = "" Then
            pertotal1 = 0
            mixgrp = ""
            strInsert = "insert into LotWiseIssueRegisterTemp Values ('" & rs5!VarName & "','" & Sname & "','" & sMixLotNo & "','" & mixgrp & _
            "' ,'" & sLotID & "'," & dQty & "," & dGWgt & "," & dTWgt & "," & dNWgt & "," & Rate & "," & pertotal1 & "," & value & ",'" & PlotNo & "')"
            DB.Execute strInsert
        DB.Execute strInsert
        End If
        
        rs5.MoveNext
    Loop
    
  
    rs1.MoveNext
Loop

    F_Date = Format(DataCombo2.Text, "dd/MM/yy")
    crr.Connect = connectstring
    crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Daily_LotwiseIssueRegister.rpt"
    crr.ParameterFields(0) = "@date1;" & F_Date
    crr.ParameterFields(1) = "@divname;" & divname
    crr.PrinterCopies = 1
    crr.WindowState = crptMaximized
    SendKeys "{enter}"
    crr.Action = True
    Me.MousePointer = 0
    Exit Sub


Screen.MousePointer = 0

Exit Sub
Lotwiseissueregister_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotwiseissueregister of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub StockVarietyReport2(F_Date As String, T_Date As String, catcd As String, Optional pRecType As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim Cnn As Connection
On Error GoTo StockVarietyReport2_Error

Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\sv.TXT" For Output As #a
Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
co = 0
          Cnn.Execute "delete Temp_per_stockstatementvar"
        
  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECBAL,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0))+SUM(ISNULL(A.TRANSBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0))+SUM(ISNULL(A.TRANSKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE"

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
            End If
        End If
'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
If RSV.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Exit Sub
End If

'rs1.MoveFirst
Do While Not RSV.EOF

            
         VTOT = RSV("opbales")
         vtot1 = RSV("opboras")
         vtot2 = RSV("opkgs")
         vtot3 = RSV("recbales")
         VTOT4 = RSV("recboras")
         VTOT5 = RSV("reckgs")
         VTOT6 = RSV("issbales")
         VTOT7 = RSV("issboras")
         VTOT8 = RSV("isskgs")
         
         
                        
        
            VTOT9 = RSV("clobales")
            VTOT10 = RSV("cloboras")
            VTOT11 = RSV("clokgs")
            vtotRejValue = RSV!REJVALUE
            VTOT15 = IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
         
         VTOT12 = RSV("opvalue")
         VTOT13 = RSV("recvalue")
         VTOT14 = RSV("issvalue")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
         vtotRejval = RSV!REJVALUE
         
         vtottrnsBales = RSV!TRANSBAL
         vtottrnsKgs = RSV!transkgs
         vtottrnsval = RSV!TRANSVALUE
      'End If
                
'   Else
'      GoTo 30
'   End If
                
           
'   Set Namers = New Recordset
'   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
'   If Not Namers.EOF Then VarName = Namers(0)
    VarName = Trim(RSV!VarName)
                
  
'   strSQL = "insert into Temp_per_stockstatementvar Values ('" & VarName & " ','" & (VTOT + vtot1) & "','" & vtot2 & "','" & VTOT12 & "','" & (vtot3 + VTOT4) & "','" & VTOT5 & "','" & VTOT13 & "','" & (VTOT6 + VTOT7) & "'," & VTOT8 & "," & VTOT14 & "," & (VTOT9 + VTOT10) & "," & VTOT11 & "," & VTOT15 & ")"
   
  DB.Execute "insert into Temp_per_stockstatementvar Values ('" & VarName & " '," & VTOT & "," & vtot1 & "," & vtot2 & "," & VTOT12 & "," & vtot3 & "," & VTOT4 & "," & VTOT5 & "," & VTOT13 & "," & VTOT6 & "," & VTOT7 & "," & VTOT8 & "," & VTOT14 & "," & vtotRejBales & "," & vtotRejKgs & "," & vtotRejval & "," & VTOT9 & "," & VTOT10 & "," & VTOT11 & "," & VTOT15 & ")"
   RSV.MoveNext
Loop
MousePointer = 11
Set rsrate = New Recordset
rsrate.Open "select * from rm_rateunit where unitcode='CAN'", DB, adOpenStatic
If rsrate.RecordCount > 0 Then
 RATECY = rsrate("value")
End If

'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_VarietywiseStockStatement.rpt"
'FrmRpt.RptHead = 4
'parameter1 = DIVNAME
'parameter2 = Format(DTPicker2.value, "dd/MM/yy")
'parameter3 = Format(DTPicker3.value, "dd/MM/yy")
'parameter4 = RATECY
'FrmRpt.Show


        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = rep_stock_varwise1 'Rep_stock_varwise
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        crr.Formulas(0) = "div='" & divname & "'"
        crr.Formulas(1) = "rep='" & "Varietywise Stock Statement From " & Format(DTPicker2.value, "dd/mm/yy") & " To " & Format(DTPicker3.value, "dd/mm/yy") & "'"
        
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
       



MousePointer = 0
Exit Sub

StockVarietyReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockVarietyReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub PartyHeader1(pg1 As Integer, co As Integer, U As String, v As String, W As String)
On Error GoTo PartyHeader1_Error

          Print #a, Chr(18)
          Print #a, Space(5) + Chr(27) + "E" + CENTRE(divname, 132, " ") + Chr(27) + "F"
          Print #a,
          SR = CStr(pdate) + Space(2)
          'Print #A, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(u, "dd/mm/yyyy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yyyy") & Space(8) & Padr(w, 40, " ") & Space(5) + sr + "Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(3) + Chr(27) + "E" + "Stock statement Varietywise" + Chr(27) + "F" + " from" & Space(1) & Format(U, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(v, "dd/mm/yy") & Space(8) & Padr(W, 40, " ") & Space(3) + Format(SR, "dd/mm/yy") + "  Pg.No :" + Space(1) + CStr(pg1) + Chr(15)
          Print #a, Space(5) + String(216, "-")
          Print #a, Space(5) + "Variety                  <-------------Opening Balance-------------->     <----------------Receipts------------------>     <------------------Issues------------------>     <--------------Closing Balance------------->"
          Print #a, Space(16) + "              Bales    Boras       Weight            Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value     Bales    Boras        Weight           Value"
        ''Print #a, Space(16) + "              Quantity             Weight            Value     Quantity              Weight           Value     Quantity              Weight           Value     Quantity              Weight           Value"
        ''Print #a, Space(16) + "                Qty                Weight            Value       Qty                 Weight           Value       Qty                 Weight           Value       Qty                 Weight           Value"
          Print #a, Space(5) + String(216, "-")
          co = co + 9

Exit Sub
PartyHeader1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure PartyHeader1 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub purchasedaybook1()
On Error GoTo purchasedaybook1_Error

If Repindex = 7733 Then
 Dim clsCryRpt11 As New clsCrystal
        
        If UCase(CustID) = "ASM" Then
            Set clsCryRpt11.cryRept = Cry_cottonReceiptList_ASM
        Else
            Set clsCryRpt11.cryRept = Cry_cottonReceiptList
        End If
        clsCryRpt11.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(1) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        
        crr.ParameterFields(2) = "@divcode;" & Divcode
        crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1
Exit Sub
End If


If Repindex = 7734 Then
 Dim clsCryRpt111 As New clsCrystal
        
       
        Set clsCryRpt111.cryRept = Cry_CottonCostMixWise
        
        clsCryRpt111.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(1) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        
        crr.ParameterFields(2) = "@divcode;" & Divcode
        crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1
Exit Sub
End If




If Option6.value Then

W = Trim(Left(DataCombo1.Text, 1))
v = Trim(Left(CmbRecType.Text, 1))
GoTo reg
If W = "A" Then
'Str = "alter PROCEDURE sp_purchasedaybook" & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,a.SuppBillvalue AS Purchase_Value ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight,ISNULL(a.SuppBillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) AS Purchase_Value " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
    
    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
                " AS " & _
                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
                "sum(totlandcost) AS totlandcost,SUM(s.Purchase_Value)Purchase_Value,SUM(s.cstamt) AS cstamt FROM(        " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight,ISNULL(a.SuppBillvalue,0) AS Purchase_Value from " & _
                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode " & _
                ")s GROUP BY varcode"

    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"

Else
    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode and a.catcd='" & W & "' ORDER BY LOTDT , arrdt, varcode"
    
    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
                " AS " & _
                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
                "sum(totlandcost) AS totlandcost FROM(        " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight from " & _
                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode  and a.catcd='" & W & "'" & _
                ")s GROUP BY varcode"

    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear  and a.catcd='" & W & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear and a.catcd='" & W & "' group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517'  and a.catcd='" & W & "' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"
End If
reg:
'crr.Reset
'crr.Connect = connectstring
'crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_PurchaseDayBook.rpt"
'crr.RetrieveDataFiles

        Dim clsCryRpt1 As New clsCrystal
        
        If UCase(CustID) = "SKY" Then
            Set clsCryRpt1.cryRept = Cry_PurchaseDayBook
        ElseIf UCase(CustID) = "SOUTHERN" Then
            Set clsCryRpt1.cryRept = Cry_Pur_daybook
        Else
            Set clsCryRpt1.cryRept = Cry_RMIPURCHASEREGISTER_PER  'Cry_RMIPURCHASEREG  'Rep_purdaybook
        End If
        
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@divname;" & divname
        crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
        crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
        crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        crr.ParameterFields(5) = "@divcode;" & Divcode
        crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1

ElseIf Option7.value Then

        Dim clsCryRptarr As New clsCrystal
        Set clsCryRptarr.cryRept = Rep_Purchasearrival
        clsCryRptarr.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

crr.ParameterFields(0) = "@divname;" & divname
crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
crr.ParameterFields(5) = "@divcode;" & Divcode
crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)

crr.PrinterCopies = 1
crr.WindowState = crptMaximized

SendKeys "{ENTER}"
crr.Action = 1


ElseIf Option8.value Then

        Dim clsCryRptBill As New clsCrystal
        Set clsCryRptBill.cryRept = Rep_Purchasebill
        clsCryRptBill.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

crr.ParameterFields(0) = "@divname;" & divname
crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
crr.ParameterFields(5) = "@divcode;" & Divcode
crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)

crr.PrinterCopies = 1
crr.WindowState = crptMaximized

SendKeys "{ENTER}"
crr.Action = 1

End If

 
 
 
'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_PurchaseDayBook.rpt"
'FrmRpt.RptHead = 7
'parameter1 = DIVNAME
'parameter2 = Format(DTPicker1.value, "yyyy-MM-dd")
'parameter3 = Format(DTPicker3.value, "yyyy-MM-dd")
'parameter4 = Format(DTPicker1.value, "dd/mm/yy")
'parameter5 = Format(DTPicker3.value, "dd/mm/yy")
'parameter6 = Divcode
'parameter7 = Year(yfdate)
'FrmRpt.Show
Exit Sub
purchasedaybook1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure purchasedaybook1 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub VARIETYSTOCK()

On Error GoTo VARIETYSTOCK_Error

                    Set Rs = New Recordset
                    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    Combo2.tabIndex = 2
    DCmbFLtN.tabIndex = 3
    DCmbTLtN.tabIndex = 4
    CmbRecType.tabIndex = 5
    Command1.tabIndex = 6
    Command2.tabIndex = 7
    
     Set Rs = New Recordset
     Rs.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        Set DataCombo1.RowSource = Rs
        DataCombo1.ListField = "catcdname"
        Rs.MoveFirst
        DataCombo1.Text = Rs(0)
         Do While Not Rs.EOF
            Combo2.AddItem Rs(0)
            Rs.MoveNext
        Loop
            Rs.MoveFirst
        Combo2.Text = Rs(0)
        Combo2.AddItem "ALL   -  All"
     End If
     
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"

    Set rs1 = New Recordset
    rs1.Open "select distinct a.varcode + ' - '+ a.varname AS variety from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "'", DB, adOpenStatic
'    rs1.Open "select Varcode + ' - ' + Varname""variety"" from rm_var", Cn, adOpenStatic
    Set DCmbFLtN.RowSource = rs1
    Set DCmbTLtN.RowSource = rs1
    DCmbFLtN.ListField = "variety"
    DCmbTLtN.ListField = "variety"
    If rs1.EOF <> True Then
        rs1.MoveFirst
        DCmbFLtN.Text = rs1(0)
        rs1.MoveLast
        DCmbTLtN.Text = rs1(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = False
    LblFLTN.Caption = "From/To Variety."
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 2060
    DCmbFLtN.Width = 1800
    DCmbTLtN.Left = 3475 + 200
    DCmbTLtN.Width = 1800
    DCmbTLtN.Top = DCmbFLtN.Top
    LblFLTN.Top = 2100 + 80
    LblFLTN.Left = 240

Exit Sub
VARIETYSTOCK_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure VARIETYSTOCK of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub ISSUESTOCK()

On Error GoTo ISSUESTOCK_Error

On Error GoTo ISSUESTOCK_Error

    Set Rs = New Recordset
    Rs.Open "select distinct a.lotdt ""lotdt"" from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' ", cn, adOpenStatic, adLockBatchOptimistic
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DataCombo1.Visible = False
    Combo2.Visible = False
    DCmbFLtN.Visible = False
    DCmbTLtN.Visible = False
    LblFLTN.Visible = False
    Label1.Visible = False
    Frame1.Height = 2100
    SSTab1.Height = 2250
    
    DTPicker2.Visible = True
    DTPicker3.Left = DTPicker2.Left
    DTPicker3.Visible = True
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    CmbRecType.tabIndex = 2
    Command1.tabIndex = 3
    Command2.tabIndex = 4
    CmbRecType.Top = DTPicker3.Top + DTPicker3.Height + 100
    LblRecType.Top = CmbRecType.Top + 50
    Label2.Caption = "From Date"
    Label3.Caption = "To Date"

Exit Sub
ISSUESTOCK_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ISSUESTOCK of Form repform1", vbInformation, head
Screen.MousePointer = 0


End Sub
Private Sub VARIETYWISESTKST()
On Error GoTo VARIETYWISESTKST_Error

      DTPicker3.maxdate = pdate:            DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation, head
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        
        Set RSS = New Recordset
        RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd", cn, adOpenStatic, adLockBatchOptimistic
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo CottonStock
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
CottonStock:
    If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: DCmbTLtN.Text = "": DCmbTLtN.SetFocus: Exit Sub
        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
            Call CottonStockLotReportVARIETY(CStr(U), CStr(v), CStr(W), CStr((Mid$(DCmbFLtN.Text, 1, (InStr(DCmbFLtN.Text, "-") - 1)))), CStr((Mid$(DCmbTLtN.Text, 1, (InStr(DCmbTLtN.Text, "-") - 1)))), CmbRecType.Text)
        Else
            MsgBox "Please select Valid Lot No.", vbInformation, head
            Screen.MousePointer = 0
            If DCmbFLtN.MatchedWithList = False Then
                DCmbFLtN.Text = ""
                DCmbFLtN.SetFocus
            End If
            If DCmbTLtN.MatchedWithList = False Then
                DCmbTLtN.Text = ""
                DCmbTLtN.SetFocus
            End If
        Exit Sub
        End If
    Else
        MsgBox "Please select Lot Nos", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Exit Sub
VARIETYWISESTKST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure VARIETYWISESTKST of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub ISSUETYPEWISE_STOCK()


End Sub

Public Function monthpart(mDate As Date) As String

Dim strMonth As String

On Error GoTo monthpart_Error

strMonth = Mid$(mDate, InStr(mDate, "/") + 1, 2)

Select Case strMonth
    Case "01"
    monthpart = "January - " & Year(mDate)
    Case "02"
    monthpart = "February - " & Year(mDate)
    Case "03"
    monthpart = "March - " & Year(mDate)
    Case "04"
    monthpart = "April - " & Year(mDate)
    Case "05"
    monthpart = "May - " & Year(mDate)
    Case "06"
    monthpart = "June - " & Year(mDate)
    Case "07"
    monthpart = "July - " & Year(mDate)
    Case "08"
    monthpart = "August - " & Year(mDate)
    Case "09"
    monthpart = "September - " & Year(mDate)
    Case "10"
    monthpart = "October - " & Year(mDate)
    Case "11"
    monthpart = "November - " & Year(mDate)
    Case "12"
    monthpart = "December - " & Year(mDate)
End Select

Exit Function
monthpart_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure monthpart of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Function

Private Sub stockledgerItemwise()
On Error GoTo stockledgerItemwise_Error

        CmbRecType.Visible = True
        LblRecType.Visible = True
        CmbRecType.Top = DCmbTLtN.Top + 300
        LblRecType.Top = CmbRecType.Top
        LblRecType.Left = Label1.Left
        DTPicker2.tabIndex = 0
        DTPicker3.tabIndex = 1
        DataCombo1.tabIndex = 2
        Combo1.tabIndex = 3
        CmbRecType.tabIndex = 4
        Command1.tabIndex = 5
        Command2.tabIndex = 6
        Command4.Visible = True
        Command4.Top = Command1.Top

Exit Sub
stockledgerItemwise_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure stockledgerItemwise of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub SupplierStockPostion()
  Label5.Caption = "Supplier Lotwise Stock Position"
    Me.Caption = "Supplier Lotwise Stock Position"
    Label3.Visible = False
    DataCombo3.Visible = False
    Call DataCombo2_GotFocus
    DataCombo2.Visible = False
    If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
    ChkUsr.Visible = False
    ChkUsr.Top = 2150
    DTPicker1.Visible = True
    DTPicker1.tabIndex = 0
    Combo2.tabIndex = 1
    DataCombo2.tabIndex = 2
    DCmbFLtN.tabIndex = 3
    DCmbTLtN.tabIndex = 4
    CmbRecType.tabIndex = 5
    Command1.tabIndex = 6
    Command2.tabIndex = 7
    LblFLTN.Top = DCmbFLtN.Top - 90
    LblTLtN.Top = DCmbTLtN.Top - 90
    
    DTPicker1.ZOrder
    DTPicker1.Refresh
    DTPicker1.MinDate = yfdate
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
    DataCombo1.Visible = True
   
    Call DataCombo1_GotFocus
    DataCombo1.Visible = False
     
    Set Rs = New Recordset
    Rs.Open "select DISTINCT a.pLotNo from rm_lot a where a.DIVCODE ='" & Divcode & "'  and rejflg='N' and lotyear='" & Year(yfdate) & "' Order by a.pLOTNo ", cn, adOpenStatic
    Set DCmbFLtN.RowSource = Rs
    Set DCmbTLtN.RowSource = Rs
    DCmbFLtN.ListField = "plotno"
    DCmbTLtN.ListField = "pLotno"
    If Rs.EOF <> True Then
        Rs.MoveFirst
        DCmbFLtN.Text = Rs(0)
        Rs.MoveLast
        DCmbTLtN.Text = Rs(0)
    End If
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    Label1.Top = 1170
    Combo2.Top = 1150
    DCmbFLtN.Left = 1710
    DCmbFLtN.Top = 1600
    DCmbTLtN.Top = 2100
    DCmbTLtN.Left = 1710
    LblFLTN.Top = 1700
    LblTLtN.Top = 2200
    LblFLTN.Left = 240
    LblTLtN.Left = 240
    Frame1.Height = Frame1.Height - 100
    SSTab1.Height = SSTab1.Height - 50
    CmbRecType.Visible = True
    LblRecType.Visible = True
    CmbRecType.Top = DCmbTLtN.Top + 450
    LblRecType.Top = CmbRecType.Top
    LblRecType.Left = Label1.Left
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
    LblFLTN.Caption = "From Supplier Lot no."
    LblTLtN.Caption = "To Supplier Lot no."
    If CmbRecType.ListCount > 0 Then CmbRecType.ListIndex = 0
    LblFLTN.Top = DCmbFLtN.Top - 90
    LblTLtN.Top = DCmbTLtN.Top - 90

End Sub
Private Sub supplierStkreport()
On Error GoTo supplierStkreport_Error

  sdr = Combo2.Text
    'Rs.Close
  Set RSS = New Recordset
  RSS.Open "select distinct a.CATCd  +  '   -   '  + b.CATNAME as field from rm_cat b,rm_lot a  where a.divcode = '" & Divcode & "' and a.catcd = b.catcd  and a.rejflg='N' and a.lotyear='" & Year(yfdate) & "'", cn, adOpenStatic, adLockBatchOptimistic
      Do While Not RSS.EOF
        If sdr <> RSS(0) And sdr <> "ALL   -  ALL" Then
           RSS.MoveNext
        Else
             If Combo2.Text <> "" And DataCombo2.Text <> "" And DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
             If DCmbFLtN.MatchedWithList Then
            If DCmbTLtN.MatchedWithList Then
                 If Trim(DCmbFLtN.Text) = 0 And Trim(DCmbTLtN.Text) = "" Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
'                    str = Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))
                    a = Format(DTPicker1.value, "yyyy-mm-dd")
                    Call StockSupplierLotReport(CStr(Trim(Mid$(Combo2.Text, 1, InStr(Combo2.Text, "-") - 1))), CStr(a), DCmbFLtN, DCmbTLtN, IIf(ChkUsr.value = 1, 1, 0), UserFooter1.SelectedStr, CmbRecType.Text)
                    Screen.MousePointer = 0
                    Exit Sub
                 Else
                    MsgBox "Select the Correct To Lot No", vbInformation, head
                    DCmbTLtN.Text = ""
                    DCmbTLtN.SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             Else
                MsgBox "Select the Correct From Lot No", vbInformation, head
                DCmbFLtN.Text = ""
                DCmbFLtN.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
         Else
            MsgBox "Select the Correct Category", vbInformation, head
            Combo2.Text = ""
            Combo2.SetFocus
            Screen.MousePointer = 0
            Exit Sub
         End If
        If dv1.rsCommand1.State = adStateOpen Then dv1.rsCommand1.Close
        Set LB1 = Lotstock.Sections(2).Controls("LIST1")
        LB1.Caption = "Lotwise Stock Position As On : " & Format(DataCombo2.Text, "dd/mm/yyyy")
     Set LB1 = Lotstock.Sections(2).Controls("LIST2")
     LB1.Caption = "(" & Mid$(DataCombo1.Text, 3) & ")"
     dv1.rsCommand1.Open "select a.LOTNO,a.LOTDT,a.CATCD,c.VARNAME,Bales = case when a.BBLFLG = 'B' then isnull(a.BALES,0)-isnull(a.ISSBAL,0) end,Borah = case when a.BBLFLG   IN ('R','H') then isnull(a.bales,0)-isnull(a.issbal,0) end,isnull(a.netwt,0)-isnull(a.isswt,0) 'Stock',isnull(ratekg,0) *100 'Rate/qu',(isnull(a.netwt,0)-isnull(a.isswt,0)) * isnull(ratekg,0) 'val' from rm_lot a,rm_cat b,rm_var c where  (a.refdt='N' or a.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')and a.CATCD = b.CATCD and isnull(a.NETWT,0)-isnull(a.ISSWT,0) > 0 and a.DIVCODE ='" & Divcode & "' and a.varcode =c.varcode and a.catcd = '" & (Mid$(DataCombo1.Text, 1, (InStr(DataCombo1.Text, "-") - 1))) & "' and a.lotdt <= '" & Format(DataCombo2.Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and '" & Format(yldate, "yyyy/mm/dd") & "' order by a.LOTNO,a.LOTDT ", cn, adOpenStatic, adLockBatchOptimistic
     If dv1.rsCommand1.RecordCount = 0 Then
        MsgBox "No records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     Else
        Set Lotstock.DataSource = dv1
        Lotstock.Show
        Screen.MousePointer = 0
     End If
        End If
       Loop
       MsgBox "Select the Correct Category", vbInformation, head
       Combo2.Text = ""
       Combo2.SetFocus
       Screen.MousePointer = 0
       Exit Sub

Exit Sub
supplierStkreport_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure supplierStkreport of Form repform1", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Purchase_Order()
     Label2.Caption = "From Date"
     Label3.Caption = "To Date"
     Label5.Caption = "Purchase Order"
     Me.Caption = "Purchase Order"
     Label5.Width = 5500
     Label1.Visible = False
     'Frame1.Visible = True
     repform1.Visible = True
     DataCombo3.Visible = True
     DataCombo1.Visible = False
     'Frame1.Height = Frame1.Height - 1100
     repform1.Height = repform1.Height - 1100
     SSTab1.Height = SSTab1.Height - 1000
     If (Me.WindowState = Normal) Then
     Me.Width = 10845
     End If
     
     If Repindex = 228 Then
        Command7.Visible = True
        Command7.Top = Command2.Top
        Command7.Left = 2300
        Command4.Left = Command2.Left
        Command2.Left = 5500
        If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Then
            Framediv.Visible = True
            load_DivisionChkListbox
        Else
            Framediv.Visible = False
        End If
     End If
     
    Set rec = New Recordset
     openconnection
     rec.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by contdt", cn, adOpenStatic, adLockBatchOptimistic
     If rec.RecordCount <> 0 Then
         Set DataCombo2.RowSource = rec
         Set DataCombo3.RowSource = rec
         DataCombo2.ListField = "contdt"
         DataCombo3.ListField = "contdt"
         If Not rec.EOF Then
             rec.MoveFirst
             DataCombo2.Text = rec(0)
             rec.MoveLast
             DataCombo3.Text = rec(0)
         End If
      Else
         MsgBox "No record Found", vbInformation, head
                Exit Sub
     End If
     Label3.Visible = True
     DTPicker2.Visible = True
     DTPicker2.ZOrder
     DTPicker2.MinDate = yfdate
     DTPicker2.Refresh
     DTPicker2.maxdate = pdate
     DTPicker2.value = mfdate
     DTPicker2.Left = DataCombo2.Left
     DTPicker2.Width = DataCombo2.Width
     DTPicker2.Top = DataCombo2.Top
     DTPicker3.Visible = True
     DTPicker3.ZOrder
     DTPicker3.MinDate = yfdate
     DTPicker3.Refresh
     DTPicker3.maxdate = pdate
     DTPicker3.value = pdate
     DTPicker3.Left = DataCombo3.Left
     DTPicker3.Width = DataCombo3.Width
     DTPicker3.Top = DataCombo3.Top
     DTPicker2.tabIndex = 0
     DTPicker3.tabIndex = 1
     Command1.tabIndex = 2
     Command2.tabIndex = 3
     Command4.Visible = True
     Command4.Top = Command1.Top
     Command3.Left = 5000
     FraPOreg.Visible = True
     'Frame1.Left = 220
     repform1.Left = 220
     SSTab1.Left = 2600
     'Frame1.Width = 4300
     repform1.Width = 4300
     SSTab1.Width = 4600
     Frame5.Width = 5500
     Frame5.Left = 3000
     Frame5.Visible = False
     
    If Repindex = 7234 Then
    Label5.Caption = "PO Status"
    Me.Caption = "PO Status"
    FraPOreg.Visible = False
    Command4.Top = 4000
    Command2.Top = 4000
    Command1.Visible = False
     End If
     If Repindex = 328 Or Repindex = 428 Then
        If Repindex = 428 Then Label5.Caption = "Purchase List Abstract":  Me.Caption = "Purchase Register Abstract"
        Command4.Visible = False
     End If
     
End Sub

Private Sub ArrivalRegisterGodownWiseRpt()
    U = Format(DTPicker2.value, "yyyy-mm-dd")
    v = Format(DTPicker3.value, "yyyy-mm-dd")
    If CDate(U) > CDate(v) Then
        MsgBox "From Date should not be greater than To Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker2.SetFocus
        Exit Sub
    End If
    If CDate(v) < CDate(U) Then
        MsgBox "To Date should not be less than From Date", vbInformation
        DataCombo1.SetFocus
        Screen.MousePointer = 0
        DTPicker1.SetFocus
        Exit Sub
    End If

    Set RSS = New Recordset
    RSS.Open "SELECT distinct a.GCODE + '-' + a.GNAME AS Godown FROM rm_god a, RM_ARRIVAL b  WHERE b.divcode='" & Divcode & "' AND b.arrdate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and a.GCODE=b.godown  order by godown ", DB, adOpenStatic

'    Rss.Open "select distinct slname + ' - ' + slcode,slcode from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' order by slcode", DB, adOpenStatic, adLockBatchOptimistic
    
    W = Combo1.Text
    If DCmbFLtN.Text <> "" And DCmbTLtN.Text <> "" Then
        Do While Not RSS.EOF
            If DCmbFLtN.Text = RSS(0) Then
                GoTo ArrSupplier
            Else
                RSS.MoveNext
            End If
        Loop
        MsgBox "Select the Valid Godown", vbInformation, head
'        Combo1.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
ArrSupplier:
        Do While Not RSS.EOF
            If DCmbFLtN.Text = RSS(0) Then
                GoTo ArrivalSupplier
            Else
                RSS.MoveNext
            End If
         Loop
         MsgBox "Select the Valid Godown ", vbInformation, head
         DCmbFLtN.Text = ""
         DCmbFLtN.SetFocus
         Screen.MousePointer = 0
         Exit Sub
    Else
        MsgBox "Godown Should Not be Empty", vbInformation, head
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
ArrivalSupplier:
    S1 = Trim(Left(DCmbFLtN.Text, 3))
    s2 = Trim(Left(DCmbTLtN.Text, 3))
    Dim rec As Recordset
        
    On Error GoTo errorsub
'    DB.BeginTrans
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_ArrivalRegisterGodownwise'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_ArrivalRegisterGodownwise"
    End If
    Rs.Close
    Set Rs = Nothing
    
    Set rec = New Recordset
    rec.CursorLocation = adUseClient
        
    rec.Open "SELECT Result.arrdate,Result.lotno,Result.lotdt," & _
               "Result.plotno,Result.quantity,Result.lrno," & _
               "Result.freight,Result.netwt,Result.prno,Result.carname," & _
               "RESULT.Slname , RESULT.areaname, RESULT.LORRYNOS,Result.Godown " & _
           " Into Temp_Periodical_ArrivalRegisterGodownwise " & _
           " From " & _
           " (select a.arrdate,a.lotno,a.lotdt,a.plotno,a.quantity,a.lrno," & _
                   "isnull(a.freight,0) as freight,a.netwt,a.prno,b.carname," & _
                   "c.Slname , d.areaname, a.LORRYNOS, e.gname as Godown" & _
               " from rm_arrival a,po_car b,fa_slmas c,rm_area d,rm_god e " & _
               " where a.supcd=c.slcode and a.areacode=d.areacode and " & _
                   " a.arrdate Between '" & Format(U, "dd-mmm-yyyy") & "' and '" & Format(v, "dd-mmm-yyyy") & "' and " & _
                   " a.Godown between '" & S1 & "' and '" & s2 & "' and e.GCODE=a.godown and " & _
                   " a.carcode*=b.carcode and a.divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic
        
'        DB.CommitTrans

        MousePointer = 11
        crr.Connect = connectstring
        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_ARRRegGodownwise.rpt"
        crr.ParameterFields(0) = "description;" & "Godownwise Arrival List From " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & ""
        crr.ParameterFields(1) = "name;" & divname
        crr.WindowState = crptMaximized
        SendKeys "{Enter}"
        crr.Action = True
        crr.PrinterCopies = 1
        Me.MousePointer = 0
        Exit Sub

errorsub:
    MsgBox Err.Description, vbCritical
    Me.MousePointer = 0
End Sub
Private Sub ArriavlRegisterGodwise()
   If Repindex = 3024 Then
       Label5.Caption = "Arrival List - Godwise"
       Me.Caption = "Arrival List - Godwise"
   ElseIf Repindex = 3025 Then
       Label5.Caption = "Issue List - Godwise"
       Me.Caption = "Issue List - Godwise"
   End If
    Label1.Visible = False
    Label2.Visible = True
    Label3.Visible = True
    Label2.Top = 800
    DTPicker2.Top = 800
    Label3.Top = 1190
    DTPicker3.Top = 1200
    Label2.Caption = " From Date"
    Label3.Caption = "To Date"
    DataCombo1.Visible = False
    DataCombo2.Visible = False
    DataCombo3.Visible = False
    DTPicker2.Visible = True
    DTPicker3.Visible = True
    DTPicker2.MinDate = yfdate
    DTPicker3.MinDate = yfdate
    DTPicker2.maxdate = pdate
    DTPicker3.maxdate = pdate
    DTPicker2.value = mfdate
    DTPicker3.value = pdate
    DTPicker2.tabIndex = 0
    DTPicker3.tabIndex = 1
    DTPicker3.Left = DTPicker2.Left
    Label3.Left = 280
    Label2.Left = 280
    DTPicker2.Width = DCmbFLtN.Width
    DTPicker3.Width = DCmbFLtN.Width
    CmbRecType.Visible = False
    Command1.tabIndex = 2
    Command2.tabIndex = 3
    Command4.Visible = False
    Label6.Visible = True
    DataCombo4.Visible = True
    DataCombo4.Visible = False
    DTPicker2.Width = DTPicker3.Width
    Set rs1 = New Recordset
    rs1.Open "SELECT distinct a.GCODE + '-' + a.GNAME AS Godown FROM rm_god a, RM_ARRIVAL b  WHERE b.divcode='" & Divcode & "' AND b.arrdate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' and a.GCODE=b.godown  order by godown ", cn, adOpenStatic
    If rs1.RecordCount <> 0 Then
        Set DCmbFLtN.RowSource = rs1
        DCmbFLtN.ListField = "Godown"
        rs1.MoveFirst
        DCmbFLtN.Text = rs1(0)
        
        Set DCmbTLtN.RowSource = rs1
        DCmbTLtN.ListField = "Godown"
        rs1.MoveLast
        DCmbTLtN.Text = rs1(0)
    End If
    DataCombo2.Top = 1200
    DataCombo3.Top = 1800
    LblFLTN.Visible = True
    LblTLtN.Visible = True
    LblFLTN.Caption = "From Godown"
    LblTLtN.Caption = "To Godown"
    DCmbFLtN.Visible = True
    DCmbTLtN.Visible = True
    DCmbFLtN.Width = DCmbFLtN.Width + 300
    DCmbTLtN.Width = DCmbTLtN.Width + 300
    Label6.Top = 515
    DataCombo4.Top = 500
    DataCombo2.Top = 950
    DataCombo3.Top = 1400
    LblFLTN.Top = 1600
    DCmbFLtN.Top = 1600
    LblFLTN.Left = 280
    DCmbFLtN.Left = 1680
    LblTLtN.Top = 2060
    DCmbTLtN.Top = 2000
    LblTLtN.Left = 280
    DCmbTLtN.Left = 1680
    SSTab1.Height = 3000
    Frame1.Height = 2800
    Screen.MousePointer = 0
End Sub
Private Sub GodwiseIssueRegister()

            Me.MousePointer = 11
            
            fdate = Format(DTPicker2.value, "yyyy-mm-dd"):   tdate = Format(DTPicker3.value, "yyyy-mm-dd")
            If CDate(fdate) > CDate(tdate) Then
                    MsgBox "From Date should not be greater than To Date", vbInformation, head
                    DTPicker3.SetFocus
                    Screen.MousePointer = 0
                Exit Sub
                End If
                If CDate(tdate) < CDate(fdate) Then
                    MsgBox "To Date should not be less than From Date", vbInformation, head
                    DTPicker3.SetFocus
                    Screen.MousePointer = 0
                Exit Sub
            End If
    

            
            S1 = Left(DCmbFLtN.Text, 3)
            s2 = Left(DCmbTLtN.Text, 3)
'            On Error GoTo errorsub
'            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_Customized_GodownIssue'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_Customized_GodownIssue"
            End If
            
'            Set Rs = New Recordset
'            Rs.Open "select distinct a.docdt from rm_issb a, rm_var b,rm_lot p where docdt between '" & fdate & "' and '" & TDate & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and a.varcode between '" & fVariety & "' and '" & tVariety & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode group by b.varname, a.docno, a.docdt,p.plotno,p.lotno", DB, adOpenStatic
'
'            If Rs.EOF Then
'                MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
'                Screen.MousePointer = 0
'                Exit Sub
'            End If
            Rs.Close
            Set Rs = Nothing
            
            Set rec = New Recordset
            rec.Open "select distinct a.docdt, b.varname, count(a.baleno)as bales,sum(isnull(a.actisskgs,0)) as Iss_wt,sum(isnull(a.isskgs,0)) as net_wt,p.PlotNo , p.LOTNO,c.Gname as Godown into RMI_Temp_Customized_GodownIssue from rm_issb a, rm_var b,rm_lot p,rm_god c where docdt between '" & fdate & "' and '" & tdate & "' and a.varcode=b.varcode and p.godown = c.gcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and p.Godown between '" & Trim(S1) & "' and '" & Trim(s2) & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode group by b.varname, a.docdt,p.plotno,p.lotno,c.gname", DB, adOpenStatic
'
'            DB.CommitTrans
    
            With crr
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Customized_IssueGodownwise.rpt"
        
                .ParameterFields(0) = "name;" & "Godownwise Issue List from " & Format(dtpFromDate, "dd/MM/yy") & " to " & Format(dtpToDate, "dd/MM/yy") & ""
                .ParameterFields(1) = "divname;" & divname
                
                .WindowState = crptMaximized
                .WindowShowPrintBtn = True
                
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub
End Sub
Private Sub Case30()
         DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic

    If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo VerietySt1
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Exit Sub
     
VerietySt1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietySt
        Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 6
        Exit Sub
        End If
        End If
VerietySt:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        Call stlstmtvar.StockVarietyReport1(CStr(U), CStr(v), CStr(W), CStr((Mid$(DataCombo5.Text, 1, (InStr(DataCombo5.Text, "-") - 1)))), CStr((Mid$(DataCombo6.Text, 1, (InStr(DataCombo6.Text, "-") - 1)))), CmbRecType.Text, UserFooter1.SelectedStr)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
        
        Screen.MousePointer = 0

End Sub
Private Sub case77777()
        Label2.Caption = "From Date"
        Label3.Caption = "To Date"
        Label5.Caption = "Debit Note Raise Report"
        Me.Caption = "Debit Note Raise Report"
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo2.Visible = False
        DataCombo1.Visible = False
        CmbRecType.Visible = False
        Frame1.Height = Frame1.Height
        SSTab1.Height = SSTab1.Height
        Command4.Top = Command1.Top
        Command4.Visible = True
        lbl_fsup.Visible = True
        dbcmb_fsup.Visible = True
        lbl_tsup.Visible = True
        dbcmb_tsup.Visible = True
        Combo3.Visible = False
         If (Me.WindowState = Normal) Then
        Me.Width = 10845
        End If
       Set rec = New Recordset
        openconnection
        rec.Open "select distinct contdt from rm_cont where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by contdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "contdt"
                DataCombo3.ListField = "contdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Call suppliers
            Label3.Visible = True
            DTPicker2.Visible = True
            DTPicker2.ZOrder
            DTPicker2.MinDate = yfdate
            DTPicker2.maxdate = pdate
            DTPicker2.value = mfdate
            DTPicker2.Left = DataCombo2.Left
            DTPicker2.Width = DataCombo2.Width
            DTPicker2.Top = DataCombo2.Top
            DTPicker3.Visible = True
            DTPicker3.ZOrder
            DTPicker3.MinDate = yfdate
            DTPicker3.maxdate = pdate
            DTPicker3.value = pdate
            DTPicker3.Left = DataCombo3.Left
            DTPicker3.Width = DataCombo3.Width
            DTPicker3.Top = DataCombo3.Top
            DTPicker2.tabIndex = 0
            DTPicker3.tabIndex = 1
            Command1.Visible = False
            Command3.Visible = True
            Command3.tabIndex = 2
            Command2.tabIndex = 3
            Command3.Top = Command1.Top
        

End Sub
Private Sub case343513()
        Label5.Caption = "Lotwise Issue List"
        Me.Caption = "Lotwise Issue List"
        Label2.Caption = "From Date"
        Label8.Visible = True
        Label1.Visible = False
        Frame1.Visible = True
        DataCombo3.Visible = False
        DataCombo1.Visible = False
        Label2.Top = 1100
        DataCombo2.Top = 1000
        Frame1.Height = 3000
        SSTab1.Height = 3150
        Call suppliers1
        If (Me.WindowState = Normal) Then
    Me.Width = 10845
    End If
        Set rec = New Recordset
        openconnection
        
        rec.Open "select distinct docdt from rm_issb where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False


        Set rsa = New Recordset
        rsa.Open "select  issue_code + '-'+ issue_desc  type from rm_issuetype where isstype='P' union  select 'A -All' as Descr from rm_Issuetype ", DB, adOpenStatic, adLockBatchOptimistic
           
        If rsa.RecordCount = 0 Then
              MsgBox "No Record(s) Found", vbInformation, head
              Exit Sub
        End If
            
        rsa.MoveFirst
       
        Do While Not rsa.EOF
         Combo1.AddItem rsa!Type
        rsa.MoveNext
        Loop
        Label8.Top = 1500
        Combo1.Top = 1500
        Combo1.ListIndex = 0
        Combo1.Visible = True
        Label4.Visible = True
        Label4.Caption = "Issue Type"
        Label4.Top = Combo1.Top
        Label4.Top = Label4.Top + 200
        Combo1.Top = Combo1.Top + 200
        DTPicker1.Visible = True
        DTPicker1.value = CDate(fnmfdate(pdate))
        Label2.Top = DTPicker1.Top
        Label2.Top = Label2.Top + 100
        DTPicker1.maxdate = yldate
        DTPicker2.maxdate = yldate
        DTPicker2.value = pdate
        DTPicker1.Width = DTPicker2.Width
        DataCombo2.Visible = False
        Label3.Caption = "To Date"
        Label3.Visible = True
        DTPicker2.Visible = True
        DTPicker2.Top = DTPicker1.Top + 500
        Label8.Visible = False
'        DTPicker1.tabIndex = 0
'        DTPicker2.tabIndex = 1
        Combo1.tabIndex = 2
'        Command1.tabIndex = 3
'        Command2.tabIndex = 4
        Command1.Visible = False
        Command3.Visible = True
        Command3.Top = Command1.Top
        Command4.Visible = True
        Command4.Top = Command1.Top

End Sub

Private Sub case3543()
        Label5.Caption = "Lotwise Issue List":        Me.Caption = "Lotwise Issue List"
        Label2.Caption = "Date":                          Label3.Caption = "To IssueDate"
        Label5.Caption = "Issue List":                Me.Caption = "Issue List"
        Label1.Visible = False:                           Frame1.Visible = True
        DataCombo1.Visible = False
        DataCombo3.Visible = False
        Combo1.Top = 1500
        Label4.Top = 1500
        Combo1.Visible = True
        Label4.Visible = True
        Call IssLoad(Combo1)
        Combo1.ListIndex = 0
        Set rec = New Recordset
        openconnection
        rec.Open "select distinct docdt from rm_ISSB where  divcode='" & Divcode & "' order by docdt", cn, adOpenStatic, adLockBatchOptimistic
            If rec.RecordCount <> 0 Then
                Set DataCombo2.RowSource = rec
                Set DataCombo3.RowSource = rec
                DataCombo2.ListField = "docdt"
                DataCombo3.ListField = "docdt"
                    If Not rec.EOF Then
                          rec.MoveFirst
                          DataCombo2.Text = rec(0)
                          rec.MoveLast
                          DataCombo2.Text = rec(0)
                          DataCombo3.Text = rec(0)
                    End If
            End If
            Label3.Visible = False
            Call LoadObject
            Frame1.Height = Frame1.Height - 800
            SSTab1.Height = SSTab1.Height - 700
            Combo1.Top = Combo1.Top - 200
            Label4.Top = Label4.Top - 200
            DTPicker2.tabIndex = 0
            Combo1.tabIndex = 1
            Combo3.Top = Combo3.Top - 450
            Combo3.Visible = True
            Label1.Visible = True
            Label1.Top = Label1.Top + 200
            LblRecType.Visible = True
            LblRecType.Top = CmbRecType.Top
            LblRecType.Left = Label1.Left
            Set RecTypeRs = New Recordset
            RecTypeRs.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' " & _
                       " UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
            Combo3.Clear
            I = 0
            While Not RecTypeRs.EOF
            Combo3.AddItem UCase(RecTypeRs!Type), I
            RecTypeRs.MoveNext
            I = I + 1
            Wend
            Combo3.AddItem "ALL  -  ALL"
            If Combo3.ListCount > 0 Then Combo3.ListIndex = 0
            If (Me.WindowState = Normal) Then
            Me.Width = 10845
            End If


End Sub

Public Sub StockGodownReportCrystal(U As String, v As String, W As String, divname, X As String, Y As String, ChkFlg As String, fg As String, TG As String, Optional pRecType As String)
Dim RS2 As Recordset
Dim rs1 As Recordset
Dim rs3 As Recordset
Dim RESULT As Recordset
Dim TEMP As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim gtot1 As Double
Dim ab As Integer
Dim gtot2 As Double
Dim god(100) As String, bale(100) As Double, stock(100) As Double, Value1(100) As Double
Dim gtot3 As Double, gt1 As Double, gt2 As Double, gt3 As Double
Dim gtot4 As Double
Dim gtot5 As Double
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim Str As String
Dim FLG As String
Dim Cnn As Connection
On Error GoTo StockGodownReportCrystal_Error

Set Cnn = New Connection

Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
'rs2.Open "select  distinct a.tax_code,b.description from ig_invdt a,ig_tax b,ig_invhd c where a.tax_code*=b.tax_Code and a.inv_no=c.inv_no and c.date between '" & u & "'and '" & v & "' and a.tax_code between '" & w & "' and '" & z & "' and a.divcode='" & divcode & "'", cnn, adOpenStatic, adLockOptimistic
vrectype = Trim(Left(pRecType, 3))
Cnn.CommandTimeout = 2000
DB.CommandTimeout = 2000
Set RS2 = New Recordset
SR = W
Set RS2 = New Recordset
'  If W <> "ALL" Then
'        If vrectype <> "ALL" Then
'          If vrectype = "A" Then
'              tmptypestr = "b.LotType"
'          Else
'              tmptypestr = "b.TransferType"
'          End If
'          If vrectype = "A" Then
'            RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND catcd=' " & SR & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and (b.transfertype='' or b.transfertype='JR') and b.divcode='" & Divcode & "' and b.catcd='" & SR & "' and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'          Else
'            RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND catcd=' " & SR & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' and b.catcd='" & SR & "' and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'        End If
'    Else
'        RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y' AND catcd=' " & SR & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "' and catcd='" & SR & "' and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'  AND  c.catcd='" & SR & "' and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and b.divcode='" & Divcode & "' and b.catcd='" & SR & "' and b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'    End If
'
'Else
'    If vrectype <> "ALL" Then
'          If vrectype = "A" Then
'              tmptypestr = "b.LotType"
'          Else
'              tmptypestr = "b.TransferType"
'          End If
'          If vrectype = "A" Then
'            RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y'    and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  And lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'   and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and b.catcd=c.catcd and (b.transferType='' or b.transfertype='JR') and b.divcode='" & Divcode & "' and  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'          Else
'            RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y'    and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  And lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'   and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and b.catcd=c.catcd and " & tmptypestr & "='" & vrectype & "' and b.divcode='" & Divcode & "' and  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and B.VARCODE=V.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'        End If
'    Else
'        RS2.Open " select A.GODOWN,CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,sum(isnull(a.opkgs,0)) AS OPKGS,sum(isnull(a.reckgs,0)) AS RECKGS,sum(isnull(a.isskgs,0)) AS ISSKGS,case when sum(isnull(a.opbales,0)) > 0 then (sum(isnull(a.opbales,0))+ sum(isnull(a.recbales,0)))- sum(isnull(a.issbales,0))  else sum(isnull(a.recbales,0)) -  sum(isnull(a.issbales,0)) end  as clobales, case when sum(isnull(a.opboras,0)) > 0 then (sum(isnull(a.opboras,0))+ sum(isnull(a.recboras,0)))- sum(isnull(a.issboras,0))  else sum(isnull(a.recboras,0)) -  sum(isnull(a.issboras,0)) end as cloboras, " & _
'                " case when sum(isnull(a.opkgs,0)) > 0 then (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))  else sum(isnull(a.reckgs,0)) -  sum(isnull(a.isskgs,0)) end as clokgs,RATEKG,RATECY,RATEKG*(sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0))- sum(isnull(a.isskgs,0))) AS CLOSEVALUE  from " & _
'                " (( select GODOWN,LOTNO,LOTDT, sum(opbales-issbales) opbales,sum(opboras-issboras) as opboras,sum(opkgs-isskgs) as opkgs,0 as recbales,0 as recboras,0 as reckgs, 0 as issbales,0 as issboras,0 as isskgs from( " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where b.lotdt<='" & Format(U, "yyyy-mm-dd") & "' and  b.divcode='" & Divcode & "'  and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(yfdate, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and opflg='Y' and  b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno BETWEEN " & X & " AND " & Y & "  group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as opbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as opboras,sum(isnull(b.netwt,0)) as opkgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b where B.OPFLG<>'Y'    and b.divcode='" & Divcode & "' and (B.rejflg='N' or B.rejdt>'" & Format(U, "yyyy-mm-dd") & "')  and B.lotyear='" & Year(yfdate) & "' AND BALES >0  and b.lotdt<'" & Format(U, "yyyy-mm-dd") & "'  and   b.lotno between " & X & " and " & Y & " AND B.Godown between '" & Fg & "' and '" & Tg & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.bblflg " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras ,0 as opkgs,0 as issbales,0 as issboras,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  statuS in ('AC','AW') and a.divcode='" & Divcode & "'  And lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between  " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "' GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG  " & _
'                " Union " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,0 AS opBALES,0 as opboras,0 as opkgs,case when c.bblflg = 'B' then COUNT(A.baleNO) else 0 end as issbales, case when c.bblflg   IN ('R','H') then COUNT(A.BALENO) else 0 end as issboras,0 as isskgs  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE      a.issued='Y' AND statuS in ('AC','AW') and a.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt<'" & Format(U, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and c.lotno between " & X & " and " & Y & " AND C.Godown between '" & Fg & "' and '" & Tg & "'  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " ) a  group by GODOWN,LOTNO,LOTDT Union All " & _
'                " select B.GODOWN,b.LOTNO,B.LOTDT,0 as opbales,0 as opboras,0 as opkgs,case when b.bblflg = 'B' then sum(isnull(b.bales,0)) else 0 end as recbales, case when b.bblflg   IN ('R','H') then sum(isnull(b.bales,0)) else 0 end as recboras, case when 'N' = 'N' then sum(isnull(b.netwt,0)) else 0 end as reckgs,0 as issbales,0 as issboras,0 as isskgs from rm_lot b  where  b.divcode='" & Divcode & "'   and b.divcode='" & Divcode & "'  and opflg='N' and (B.rejflg='N' or B.rejdt>'" & Format(V, "yyyy-mm-dd") & "') and B.lotyear='" & Year(yfdate) & "' and b.Godown between '" & Fg & "' and '" & Tg & "' and  b.lotno  BETWEEN " & X & " AND " & Y & "  and b.lotdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' group by B.GODOWN,b.LOTNO,B.LOTDT,b.opflg,b.bblflg " & _
'                " Union All select GODOWN,LOTNO,LOTDT,0 as opbales,0 as opboras,0 as opkgs,0 as recbales,0 as recboras,0 as reckgs,case when bblflg = 'B' then sum(BALES) ELSE 0 END AS ISSBALES,case when bblflg   IN ('R','H') then sum(BALES)ELSE 0 END AS ISSBORAS ,SUM(KGS) AS ISSKGS from ( " & _
'                " SELECT GODOWN,LOTNO,LOTDT,bblflg,COUNT(BALENO) AS BALES,0 AS KGS FROM( " & _
'                " SELECT C.GODOWN,c.LOTNO,C.LOTDT,bblflg,A.BALENO AS BALENO,0 AS KGS  FROM RM_BALE B,RM_ISSB A, rm_lot c WHERE   a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'    and lotyear='" & Year(yfdate) & "' and A.ISSUED='Y' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' AND A.CATCD=B.CATCD and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "   GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,A.BALENO,BBLFLG " & _
'                " )X GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG Union SELECT C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG,0 AS BALES,SUM(A.ACTISSKGS) AS KGS  FROM RM_BALE B,RM_ISSB A,rm_lot c WHERE  a.divcode='" & Divcode & "' and statuS in ('AC','AW') and c.divcode='" & Divcode & "'   and lotyear='" & Year(yfdate) & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.DIVCODE=B.DIVCODE AND A.BALENO=B.BALENO and a.docdt between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and b.lotno=c.lotno and b.lotdt=c.lotdt and b.lottype=c.lottype and b.catcd=c.catcd and a.docdt Between '" & Format(U, "yyyy-mm-dd") & "' and '" & Format(V, "yyyy-mm-dd") & "' and C.Godown between '" & Fg & "' and '" & Tg & "' and  C.lotno  BETWEEN " & X & " AND " & Y & "  GROUP BY C.GODOWN,c.LOTNO,C.LOTDT,BBLFLG " & _
'                " )Y GROUP BY GODOWN,LOTNO,LOTDT,BBLFLG ))a ,RM_LOT B,RM_CAT C,RM_VAR V WHERE  a.lotno=b.lotno and a.lotdt=b.lotdt and b.catcd=b.catcd and b.divcode='" & Divcode & "' and  b.divcode='" & Divcode & "'  and B.VARCODE=V.VARCODE AND B.CATCD=C.CATCD AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT  and b.lotyear='" & Year(yfdate) & "' " & _
'                " group by A.GODOWN,CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG HAVING (sum(isnull(a.opkgs,0))+ sum(isnull(a.reckgs,0)))- sum(isnull(a.isskgs,0))>0 ORDER BY A.GODOWN,A.LOTNO,A.LOTDT", cnn, adOpenStatic
'    End If
'End If

strSQL = " select b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg as unit,b.ratecy, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0)) AS ISSBALES,"
strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0)) AS ISSKGS,"
strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0)) AS ISSVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-SUM(ISNULL(ISSRETBAL,0))))"
strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-SUM(ISNULL(ISSRETBAL,0)))) END CLOBALES,"
strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-SUM(ISNULL(ISSRETKGS,0))))"
strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-SUM(ISNULL(ISSRETKGS,0)))) END CLOKGS,"
strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))- SUM(ISNULL(ISSRETVAL,0))))"
strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))- SUM(ISNULL(ISSRETVAL,0)))) END CLOSEVALUE"
strSQL = strSQL + " FROM ("
strSQL = strSQL + gStockStatement(U, v)
strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_cat d WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE and c.catcd=d.catcd AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE"

            
If Trim(SR) <> "ALL" Then
          
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
           ' commented on 25-04-19 by mariyaiya
           ' strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
             ' Added on 25-04-19 by mariyaiya
             strSQL = strSQL & " and  b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"

        Else
           ' commented on 25-04-19 by mariyaiya
           ' strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
           ' Added on 25-04-19 by mariyaiya
             strSQL = strSQL & "  and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"

        End If
    Else
            strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            ' commented on 25-04-19 by mariyaiya
           ' strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
            ' Added on 25-04-19 by mariyaiya
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
        Else
            ' commented on 25-04-19 by mariyaiya
            'strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & FG & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
            ' Added on 25-04-19 by mariyaiya
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'  and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
        End If
    Else
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' and b.Godown between '" & fg & "' and '" & TG & "' group by b.godown,catname,b.lotno,b.plotno,b.lotdt,varname,bblflg,b.ratecy"
    End If
End If
RS2.Open strSQL, DB, adOpenStatic
If RS2.RecordCount = 0 Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
If RS2.BOF = False Then
    RS2.MoveFirst
End If
If Table_Exists("Temp_GodownWise_Stock_St") Then
    DB.Execute "Drop table Temp_GodownWise_Stock_St"
End If

strSQL = "Create Table Temp_GodownWise_Stock_St (godown varchar(250),VarName varchar(250),Supplier nvarchar(250)," & _
        "Lotno numeric(10), lotdt varchar(12),pLotno varchar(20),Rec_Date varchar(12),Qty  numeric(12), Kgs numeric(15,3) ," & _
        "value numeric(15,2), RateCY numeric(15,4))"
    
DB.Execute strSQL

Do While Not RS2.EOF

If RS2("lotno") = "1819" Then
'MsgBox "21"
End If

Set rssup = New Recordset
'rssup.Open "select slname from rm_lot a,fa_slmas b where a.supcd*=b.slcode and divcode='" & Divcode & "' and lotno=" & rs2("lotno") & " and lotdt='" & Format(rs2("LOTDT"), "yyyy-mm-dd") & "'", DB, adOpenStatic
rssup.Open "select slname from rm_lot a left join fa_slmas b on a.supcd=b.slcode where divcode='" & Divcode & "' and lotno=" & RS2("lotno") & " and lotdt='" & Format(RS2("LOTDT"), "yyyy-mm-dd") & "'", DB, adOpenStatic

sLname = ""
If rssup.RecordCount > 0 Then
    sLname = rssup("slname")
End If

        clokgs = 0
        CLOVALUE = 0
        If RS2("CLObales") + RS2("CLOBORAS") <= 0 Then
            clokgs = 0
            CLOVALUE = 0
        Else
            clokgs = RS2("CLOKGS")
            CLOVALUE = RS2("CLOSEVALUE")
        End If
        If clokgs > 0 Then
            strSQL = "INSERT Temp_GodownWise_Stock_St VALUES ( '" & RS2!godown & "','" & RS2!VarName & "','" & sLname & "'," & RS2!lotno & ",'" & Format(RS2("lotdt"), "dd/mm/yy") & "','" & RS2!PlotNo & "','" & Format(RS2("lotdt"), "dd/mm/yy") & "'," & (RS2!CLOBORAS + RS2!clobales) & "," & clokgs & "," & val(CLOVALUE) & "," & IIf(IsNull(RS2!RATECY), 0, RS2!RATECY) & ")"
             DB.Execute strSQL
        End If
    RS2.MoveNext
Loop
Dim rstQry As Recordset
Set rstQry = New Recordset

rstQry.Open "Select * from Temp_GodownWise_Stock_St", DB, adOpenStatic
    If Not rstQry.EOF Then
'        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockStatementGodownwise.rpt"
'        FrmRpt.RptHead = 3
'        parameter1 = DIVNAME
'        parameter2 = Format(U, "dd/MM/YY")
'        parameter3 = Format(V, "dd/MM/YY")
'        FrmRpt.Show
        
        

        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stockgodown
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        crr.Formulas(0) = "div='" & divname & "'"
        crr.Formulas(1) = "rep='" & "Stock statement  Godownwise from  " & Format(U, "dd/mm/yy") & " To " & Format(v, "dd/mm/yy") & "'"
        
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
       
                
        
        
        Screen.MousePointer = 0
        Exit Sub
    End If

Exit Sub
StockGodownReportCrystal_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockGodownReportCrystal of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub LotstockledgerReportCrystal(a1 As String, A2 As String, str1 As String, LtNF As Double, LtNT As Double, pRecType As String, footerstr As String)
Dim PlotNo, RatCy, sLname, slcode

On Error GoTo LotstockledgerReportCrystal_Error

Set Cnn = New Connection
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
date1 = Format(yfdate, "yyyy-mm-dd") 'financial year from date
date2 = Format(yldate, "yyyy-mm-dd") 'financial year to date
a3 = Format(a1, "yyyy-mm-dd")        'from date (a1)
A4 = Format(A2, "yyyy-mm-dd")        'To date(a2)
DB.CommandTimeout = 2000
Cnn.CommandTimeout = 2000
str1 = Trim(Mid$(str1, 1, InStr(1, str1, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
strSQL = ""
strSQL = " select B.lotno,B.lotdt,C.VARcode, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0))+sum(isnull(a.ISSRETBAL,0)) AS RECBALES,SUM(ISNULL(A.RECBOR,0))+SUM(ISNULL(A.ISSRETBOR,0)) AS RECBORAS,SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0)) AS RECKGS, round(SUM(ISNULL(A.RECVALUE,0)),3)+round(SUM(ISNULL(A.ISSRETVAL,0)),3) AS RECVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0))+SUM(ISNULL(A.RTNBAL,0))+sum(isnull(a.ISSRETBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
strSQL = strSQL + "else ((sum(isnull(a.recBAL,0))+SUM(ISNULL(A.RTNBAL,0))+sum(isnull(a.ISSRETBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0))+sum(isnull(a.ISSRETBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
strSQL = strSQL + "else (sum(isnull(a.recBOR,0))+sum(isnull(a.ISSRETBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+SUM(ISNULL(A.RTNkgs,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
strSQL = strSQL + "else ((sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0)) + SUM(ISNULL(A.RTNKGS,0))+sum(isnull(ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0))+SUM(ISNULL(A.RTNvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0))))"
strSQL = strSQL + "else ((sum(isnull(a.recvalue,0)) +SUM(ISNULL(A.RTNvalue,0))) -(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0)))) END CLSVALUE,E.CATNAME "
strSQL = strSQL + " FROM ("
strSQL = strSQL + gStockStatement(a1, A2)
'strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,FA_SLMAS D,RM_CAT E WHERE B.SUPCD= D.SLCODE AND B.CATCD=E.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,FA_SLMAS D,RM_CAT E WHERE B.SUPCD= D.SLCODE AND B.CATCD=E.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.LOTNO BETWEEN '" & LtNF & "'  and '" & LtNT & "'"

If Trim(str1) <> "ALL" Then
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            strSQL = strSQL & " and (b.transfertype='') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & str1 & "' group by B.lotno,B.lotdt,C.VARcode ,e.CATNAME Order by c.VARcode"
        Else
            strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & str1 & "' group by B.lotno,B.lotdt,C.VARcode,e.CATNAME Order by c.VARcode"
        End If
    Else
            strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & str1 & "' group by B.lotno,B.lotdt,C.VARcode ,e.CATNAME Order by c.VARcode"
    End If
Else
    If vrectype <> "ALL" Then
        If vrectype = "A" Then
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='') and b.lotyear='" & Year(yfdate) & "' group by B.lotno,B.lotdt,C.VARcode,e.CATNAME"
        Else
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by B.lotno,B.lotdt,C.VARcode,e.CATNAME Order by c.VARcode"
        End If
    Else
            strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by B.lotno,B.lotdt,C.VARcode ,e.CATNAME Order by c.VARcode,e.CATNAME"
    End If
End If
Set Rs = New Recordset
Rs.Open strSQL, DB, adOpenStatic

    If Rs.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    On Error Resume Next
    'If Table_Exists("Temp_LotwiseLedger") Then
        DB.Execute "Drop Table Temp_LotwiseLedger"
    'End If
'    Dim strSQL As String
    
    strSQL = "Create table Temp_LotwiseLedger(Lotdt datetime,lotno varchar(10),plotno varchar(20),slcode varchar(10),SlName varchar(100),Ratecy numeric(12,4),varcode varchar(20),opQty numeric(12),opKgs numeric(15,3), opval numeric(15,2),recQty numeric(12),recKgs numeric(15,3), recval numeric(15,3), " & _
             " issQty numeric(12),issKgs numeric(15,3), issval numeric(15,2), transQty numeric(12),transKgs numeric(15,3), transval numeric(15,2), rtnQty numeric(12),rtnKgs numeric(15,3), rtnval numeric(15,2),cloQty numeric(12),cloKgs numeric(15,3), cloval numeric(15,2),CatName varchar(130))"
             
    DB.Execute strSQL
    
      
    
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      tot4 = 0
      tot5 = 0
      tot6 = 0
      tot7 = 0
      tot8 = 0
      tot9 = 0
      tot10 = 0
      tot11 = 0
      tot12 = 0
      tot13 = 0
      tot14 = 0
      tot15 = 0
        Do While Not Rs.EOF
            Set rs1 = New Recordset
            rs1.Open " SELECT LOTDT,PLOTNO,isnull(RATECY,0)RATECY,b.slcode,B.SLNAME,ROUND(ISNULL(A.RATEKG,0),2) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE AND A.lotyear IN ('" & Year(yfdate) & "') AND A.lotno = '" & Rs![lotno] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            Set RS2 = New Recordset
            RS2.Open " SELECT LOTDT,PLOTNO,isnull(RATECY,0)RATECY,b.slcode,B.SLNAME,ISNULL(A.RATEKG,0) AS RATEKG FROM RM_LOT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE and lotyear IN ('" & Year(yfdate) & "') AND A.lotno = '" & Rs![lotno] & "' and a.lotdt='" & Format(Rs("lotdt"), "yyyy-mm-dd") & "' and a.divcode = '" & Divcode & "'  order by A.lotno ", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                sLname = rs1![sLname]
                slcode = rs1![slcode]
                RATECY = rs1![ratekg] * 355.6187
                PlotNo = rs1![PlotNo]
                ArrDate = rs1![LOTDT]
            Else
                sLname = " "
                slcode = " "
                RATECY = " "
                PlotNo = " "
                ArrDate = " "
          End If
           
'           If rs1.RecordCount > 0 And Rs.EOF = False Then
'                opval = Round(IIf(IsNull(Rs("opkgs")), 0, Round(Rs("opkgs"), 0)) * rs1("RATEKG"), 2)
'                recval = Round(IIf(IsNull(Rs("reckgs")), 0, Rs("reckgs")) * rs1("RATEKG"), 2)
'                issval_unit1 = Round(IIf(IsNull(Rs("isskgs1")), 0, Rs("isskgs1")) * rs1("RATEKG"), 2)
'                'without round off
'                issval_unit2 = Round(IIf(IsNull(Rs("isskgs2")), 0, Rs("isskgs2")) * rs1("RATEKG"), 2)
'                'calculating the issue unit value with round off
'
'                If Rs("clokgs") < 0 Then
'                    gclokgs = 0
'                Else
'                    gclokgs = Rs("clokgs")
'                End If
'                '' IIf(IsNull(rs("clokgs")), 0, rs("clokgs")) * RS1("RATEKG")
'                TRANSVAL = Round(IIf(IsNull(Rs("TRANkgs")), 0, Rs("TRANkgs")) * rs1("RATEKG"), 2)
''                cloval = Round(gclokgs * rs1("ratekg"), 2)
'                cloval = (opval + recval) - (issval_unit1 + issval_unit2 + TRANSVAL)
'                PlotNo = IIf(IsNull(rs1("Plotno")), 0, rs1("plotno"))
'                Set rs3 = New Recordset
'                rs3.Open "SELECT rateunit FROM rm_cont a,RM_ARRIVAL b WHERE a.CONTNO=b.contno AND a.CONTDT=b.contdt AND a.DIVCODE=b.divcode AND a.SUPCD=b.supcd AND b.lotno=" & Rs("lotno") & " AND b.lotdt='" & Format(Rs("lotdt"), "yyyy-MM-dd") & "' AND a.DIVCODE='" & Divcode & "'", DB, adOpenStatic
'                If rs3.RecordCount > 0 Then
'                    If rs3("rateunit") = "KILOGRAMS" Then
'                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy")) * 355.6187
'                    ElseIf rs3("rateunit") = "CANDY" Then
'                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
'                    Else
'                        RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
'                    End If
'                Else
'                    RatCy = IIf(IsNull(rs1("ratecy")), 0, rs1("ratecy"))
'                End If
'                Slname = IIf(IsNull(rs1("Slname")), "", rs1("Slname"))
'            Else
'                opval = 0
'                recval = 0
'                issval_unit1 = 0
'                issval_unit2 = 0
'                cloval = 0
'                tot15 = 0
'                PlotNo = 0
'                RatCy = 0
'                Slname = ""
'            End If
'
'            If rs1.RecordCount > 0 And Rs.EOF = False Then
'                opval = Round(IIf(IsNull(Rs("opkgs")), 0, Round(Rs("opkgs"), 0)) * RS2("RATEKG"), 2)
'                recval = Round(IIf(IsNull(Rs("reckgs")), 0, Rs("reckgs")) * RS2("RATEKG"), 2)
'                issval_unit1 = Round(IIf(IsNull(Rs("isskgs1")), 0, Round(Rs("isskgs1"), 0)) * RS2("RATEKG"), 2)
'                issval_unit2 = Round(IIf(IsNull(Rs("isskgs2")), 0, Round(Rs("isskgs2"), 0)) * RS2("RATEKG"), 2)
'
'                TRANSVAL = Round(IIf(IsNull(Rs("TRANkgs")), 0, Rs("TRANkgs")) * rs1("RATEKG"), 2)
'                cloval = Round((opval + recval) - (issval_unit1 + issval_unit2 + TRANSVAL), 2)
'            Else
'                opval = 0
'                recval = 0
'                issval_unit1 = 0
'                issval_unit2 = 0
'                cloval = 0
'                tot15 = 0
'            End If
           'calculating the total value
           
           'If Rs("opbales") <> 0 Or Rs("opbORAs") <> 0 Or Rs("recbales") <> 0 Or Rs("recbORAs") <> 0 Or Rs("issbales1") <> 0 Or Rs("issbORAS1") <> 0 Or Rs("issbales2") <> 0 Or Rs("issbORAS2") <> 0 Or Rs("clobales") <> 0 Or Rs("clobORAS") <> 0 Then
           'If Rs("clobales") + Rs("clobORAS") > 0 Then
'                tot = tot + Rs("opbales") + Rs("OPBORAS")
'                tot1 = tot1 + Rs("opkgs")
'                tot2 = tot2 + opval
'                tot3 = tot3 + Rs("recbales") + Rs("recbORAS")
'                tot4 = tot4 + Rs("reckgs")
'                tot5 = tot5 + recval
'                tot6 = tot6 + Rs("issbales1") + Rs("issbORAS1")
'                tot7 = tot7 + Rs("isskgs1")
'                tot8 = tot8 + issval_unit1
'                tot9 = tot9 + Rs("issbales2") + Rs("issbORAS2")
'                tot10 = tot10 + Rs("isskgs2")
'                tot11 = tot11 + issval_unit2
'                tot12 = tot12 + Rs("clobales") + Rs("clobORAs")
'                tot13 = tot13 + gclokgs
'                tot14 = tot14 + cloval
'                tot15 = tot15 + Rs("TRANBALES") + Rs("TRANBORAS")
'                tot16 = tot16 + Rs("TRANKGS")
'                tot17 = tot17 + TRANSVAL
               
                If Rs("opENbal") + Rs("OPENBOR") + Rs("recbales") + Rs("recbORAS") > 0 Then
                    strSQL = "INSERT into Temp_lotwiseLedger values ('" & Format(Rs("lotdt"), "yyyy/MM/DD") & "','" & Rs("lotno") & "','" & PlotNo & "','" & slcode & "','" & sLname & "'," & Round(CDbl(RATECY), 0) & ",'" & Rs("varcode") & "'," & (Rs("openbal") + Rs("OPenBOR")) & "," & Round(Rs("openkgs"), 3) & "," & Round(Rs("openvalue"), 2) & "," & (Rs("recbales") + Rs("RECBORAS")) & "," & Round(Rs("reckgs"), 3) & "," & _
                              Rs("RECVALUE") & "," & (Rs("PRODbal") + Rs("PRODbOR") + Rs("SALESbal") + Rs("SALESbOR") + Rs("JWbal") + Rs("JWbOR")) & " ," & Round(Rs("PRODKGS") + Rs("SALESkgs") + Rs("JWkgs"), 3) & "," & Round(Rs("PRODVALUE") + Rs("SALESVALUE") + Rs("JWVALUE"), 2) & ", " & _
                              (Rs("TRANsbal") + Rs("TRANsbOR")) & "," & Round(Rs("TRANskgs"), 3) & "," & Round(Rs("TRANSVALUE"), 2) & "," & Round(Rs("REJbal"), 2) & "," & Round(Rs("REJkgs"), 3) & "," & Round(Rs("REJVALUE"), 2) & "," & (Rs("clSbal") + Rs("CLSBOR")) & "," & Round(Rs("CLSKGS"), 3) & " ," & Round(Rs("CLSVALUE"), 2) & ",'" & Rs("CATNAME") & "')"
                              
                    DB.Execute strSQL
               End If
            Rs.MoveNext
            'End If
        Loop
       ' Set rsdivunit = New Recordset
        'rsdivunit.Open "SELECT PD.DIV_UNITNAME FROM PP_DIVMAS pd WHERE PD.DIVCODE='" & Divcode & "'", db, adOpenStatic
        'DIV_UNITNAME = ""
       'If rsdivunit.RecordCount > 0 Then
    'DIV_UNITNAME = rsdivunit("DIV_UNITNAME")
        'End If

Dim rstQry As Recordset
    Set rstQry = New Recordset
    rstQry.Open "Select * from Temp_lotwiseLedger", DB, adOpenStatic
    If Not rstQry.EOF Then
        Dim ClsStkLotLedg As New clsCrystal
        If UCase(CustID) = "JAT" Then
          Set ClsStkLotLedg.cryRept = Cry_StockLotwiseLedger_NEW
        Else
          Set ClsStkLotLedg.cryRept = Cry_StockLotwiseLedger
        End If
        ClsStkLotLedg.CrystalPrint
        crr.Reset
        crr.DiscardSavedData = True
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@divname; " & PrDivname
        crr.ParameterFields(1) = "@fdate;" & Format(a1, "yyyy-MM-dd")
        crr.ParameterFields(2) = "@tdate;" & Format(A2, "yyyy-MM-dd")
         crr.ParameterFields(3) = "Unit_Name;" & PrUnitName
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 2
        crr.PrinterCopies = 1
        Screen.MousePointer = 0
    
''        Screen.MousePointer = 0
''        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\StockLotwiseLedger.rpt"
''        FrmRpt.RptHead = 3
''        parameter1 = DIVNAME
''        parameter2 = Format(a1, "DD/MM/yy")
''        parameter3 = Format(A2, "DD/MM/yy")
''        FrmRpt.Show
        Exit Sub
    End If
Screen.MousePointer = 0

Exit Sub
LotstockledgerReportCrystal_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LotstockledgerReportCrystal of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub footer_cheran()
    
 Select Case Repindex
 Case 28
DTPicker3.maxdate = pdate:
DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
            Set RSS = New Recordset
    RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic

    If Combo2.Text <> "" Then
     Do While Not RSS.EOF
     If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
     GoTo VerietyStks1
     Else
     RSS.MoveNext
     End If
     Loop
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     End If
     MsgBox "Select the Valid Category ", vbInformation, head
     Screen.MousePointer = 0
     Combo2.Text = ""
     Combo2.SetFocus
     Exit Sub
     
VerietyStks1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietyStks
        Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietyStks:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        Call StockLotReport2footer(CStr(U), CStr(v), CStr(W), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text, UserFooter1.SelectedStr)
        'Call StockLotReport1(CStr(u), CStr(v), CStr(w), DCmbFLtN.Text, DCmbTLtN.Text, CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If

Case 30
    DTPicker2.maxdate = pdate
         U = Format(DTPicker2.value, "dd/mm/yyyy"):        v = Format(DTPicker3.value, "dd/mm/yyyy")
         W = Combo2.Text
         If CDate(U) > CDate(v) Then
            MsgBox "From Date should not be greater than To Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        If CDate(v) < CDate(U) Then
            MsgBox "To Date should not be less than From Date", vbInformation
            DTPicker2.SetFocus
            Screen.MousePointer = 0
        Exit Sub
        End If
        Set RSS = New Recordset
        RSS.Open "select distinct b.catcd  +  '   -  '   + b.catname as catcdname from rm_cat b,rm_lot a  where LOTYEAR='" & Year(yfdate) & "' AND a.divcode = '" & Divcode & "' and a.catcd = b.catcd ", cn, adOpenStatic
        If Combo2.Text <> "" Then
            Do While Not RSS.EOF
                If Combo2.Text = RSS(0) Or Combo2.Text = "ALL   -  All" Then
                    GoTo VerietySt1
                Else
                    RSS.MoveNext
                End If
            Loop
            MsgBox "Select the Valid Category ", vbInformation, head
            Screen.MousePointer = 0
            Combo2.Text = ""
            Combo2.SetFocus
            Exit Sub
        End If
        MsgBox "Select the Valid Category ", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
     
VerietySt1:        If DCmbFLtN.MatchedWithList And DCmbTLtN.MatchedWithList Then
           GoTo VerietySt
    Else
        MsgBox "Select the Valid LotNo", vbInformation, head
        If DCmbFLtN.MatchedWithList = False Then
        DCmbFLtN.Text = ""
        DCmbFLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
        If DCmbTLtN.MatchedWithList = False Then
        DCmbTLtN.Text = ""
        DCmbTLtN.SetFocus
        Screen.MousePointer = 0
        Exit Sub
        End If
        End If
VerietySt:        If DCmbFLtN.Text <> "" Or DCmbTLtN.Text <> "" Then
        If val(DCmbFLtN.Text) > val(DCmbTLtN.Text) Then MsgBox "Invalid Lot No. Selection", vbCritical, head: Screen.MousePointer = 0: Exit Sub
        Call StockVarietyReport2footer(CStr(U), CStr(v), CStr(W), CmbRecType.Text)
        Else
        MsgBox "Lot No Should Not be Empty", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
        End If
        
        Screen.MousePointer = 0
        
        
Case 19111
          Dim issuetype As String, lottype As String

    DataCombo2.Text = DTPicker2.value: DataCombo3.Text = DTPicker3.value
    U = Format(DataCombo2.Text, "yyyy-mm-dd"):     v = Format(DataCombo3.Text, "yyyy-mm-dd")
    issuetype = Trim(Mid(Combo1.Text, 1, 2))
    lottype = Trim(Mid(CmbRecType.Text, 1, 3))
    
    
    DB.BeginTrans
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_IssueRegisterDatewise'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_IssueRegisterDatewise"
    End If
    Rs.Close
    Set Rs = Nothing
    
    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_IssReg_Datewise_Abstract'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_IssReg_Datewise_Abstract"
    End If
    
    Set rs4 = New Recordset
    If Trim(issuetype) = "A" Then
        If lottype = "ALL" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(ISNULL(BALES,0))AS BALES," & _
                            "SUM(ISNULL(NETWT,0))AS NETWT,SUM(ISNULL(INVWT,0))AS INVWT" & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " From " & _
                           "(select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales," & _
                                    "0 as netwt,0 as invwt " & _
                           " from rm_issb a, rm_var b " & _
                            " where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and " & _
                                " a.docdt between '" & U & "' and  '" & v & "' " & _
                           " group by b.varname, a.docno, a.docdt " & _
                         " Union All " & _
                           "select a.docno, a.docdt, b.varname, 0 AS BALES, sum(ISNULL(a.actisskgs,0)) as netwt," & _
                                    "sum(ISNULL(c.pnetwt,0)) as invwt " & _
                           " from rm_issb a, rm_var b, rm_bale c " & _
                            " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                                   " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and " & _
                                   " a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and " & _
                                   " a.docdt between '" & U & "' and  '" & v & "' " & _
                                   " group by b.varname, a.docno, a.docdt)X " & _
                   " GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
        Else
            rs4.Open "SELECT x.DOCNO,x.DOCDT,VARNAME,SUM(ISNULL(BALES,0))AS BALES,SUM(ISNULL(NETWT,0))AS NETWT,SUM(ISNULL(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise  " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and " & _
                            " a.Divcode='" & Divcode & "' and lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        "select a.docno, a.docdt, b.varname, 0 AS BALES," & _
                            "sum(ISNULL(a.actisskgs,0)) as netwt,sum(ISNULL(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND " & _
                            " A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X " & _
                    " GROUP BY x.DOCNO,x.DOCDT,VARNAME", DB, adOpenStatic
        End If
    Else
        If lottype = "ALL" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES," & _
                        "SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        "(select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All  " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            "sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X  " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        ElseIf Trim(issuetype) = "JR" And lottype = "A" Then
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES,SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and " & _
                            " a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            " sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and " & _
                            " a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X  " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        Else
            rs4.Open "SELECT x.DOCNO,x.DOCDT,x.VARNAME,SUM(isnull(BALES,0))AS BALES,SUM(isnull(NETWT,0))AS NETWT,SUM(isnull(INVWT,0))AS INVWT " & _
                    " Into Temp_Periodical_IssueRegisterDatewise " & _
                    " FROM " & _
                        " (select distinct a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt " & _
                        " from rm_issb a, rm_var b where a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' " & _
                            " and a.isstype='" & issuetype & "' and lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt " & _
                        " Union All " & _
                        " select a.docno, a.docdt, b.varname, 0 AS BALES, sum(isnull(a.actisskgs,0)) as netwt," & _
                            "sum(isnull(c.pnetwt,0)) as invwt " & _
                        " from rm_issb a, rm_var b, rm_bale c " & _
                        " where  a.issued='Y' and a.varcode=b.varcode and a.lotno=c.lotno and " & _
                            " a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and a.Divcode=c.Divcode and " & _
                            " a.Divcode='" & Divcode & "' and a.isstype='" & issuetype & "' and a.lottype='" & lottype & "' and " & _
                            " a.docdt between '" & U & "' and  '" & v & "' " & _
                        " group by b.varname, a.docno, a.docdt)X " & _
                    "GROUP BY x.DOCNO,x.DOCDT,x.VARNAME", DB, adOpenStatic
        End If
    End If
    'ABSTRACT
        
    Set rs4 = New Recordset
    
    If lottype = "ALL" Then
        If Trim(issuetype) = "A" Then
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        Else
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where isstype='" & issuetype & "' and docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        End If
    Else
        If Trim(issuetype) = "A" Then
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "and a.lottype='" & lottype & "' Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        Else
            SqlStr = ""
            SqlStr = SqlStr + Chr(13) & "SELECT X.lottype,SUM(X.BALES)AS BALES,SUM(X.NETWT)AS NETWT,SUM(X.INVWT)AS INVWT "
            SqlStr = SqlStr + Chr(13) & "Into Temp_Periodical_IssReg_Datewise_Abstract "
            SqlStr = SqlStr + Chr(13) & "From "
            SqlStr = SqlStr + Chr(13) & "(select distinct lottype,a.docno, a.docdt, b.varname, count(a.baleno)as bales, 0 as netwt,0 as invwt from rm_issb a, rm_var b"
            SqlStr = SqlStr + Chr(13) & "where isstype='" & issuetype & "' AND docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "'"
            SqlStr = SqlStr + Chr(13) & "and a.lottype='" & lottype & "' Group By"
            SqlStr = SqlStr + Chr(13) & "b.varname, a.docno, a.docdt,lottype  Union All select a.lottype,a.docno, a.docdt, b.varname, 0 AS BALES, sum(a.actisskgs) as netwt,"
            SqlStr = SqlStr + Chr(13) & "isnull(sum(c.pnetwt),0) as invwt from rm_issb a, rm_var b, rm_bale c where isstype='" & issuetype & "' AND docdt between '" & Format(U, "yyyy-MM-dd") & "' and '" & Format(v, "yyyy-MM-dd") & "' and a.issued='Y'"
            SqlStr = SqlStr + Chr(13) & "and a.varcode=b.varcode and a.lotno=c.lotno and a.baleno=c.baleno AND A.LOTDT=C.LOTDT AND A.CATCD=C.CATCD and"
            SqlStr = SqlStr + Chr(13) & "a.Divcode=c.Divcode and a.Divcode='" & Divcode & "' and a.lottype='" & lottype & "'"
            SqlStr = SqlStr + Chr(13) & "group by b.varname, a.docno, a.docdt,a.lottype)X group by lottype"
            rs4.CursorLocation = adUseClient
            rs4.Open SqlStr, DB, adOpenStatic
        End If
    End If
    
    DB.CommitTrans
    Me.MousePointer = 11
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_IssueRegister_Datewise.rpt"
    'FrmRpt.RptHead = "2A"
    'parameter1 = "Datewise Issue Register From " & Format(U, "dd/mm/yy") & " To " & Format(V, "dd/mm/yy")
    'parameter2 = DIVNAME
    'FrmRpt.Show


    Dim clsCryRpt_d As New clsCrystal
    If UCase(CustID) = "SOUTHERN" Or UCase(CustID) = "SARANYA" Then
        Set clsCryRpt_d.cryRept = Cry_IssReg_Datewise 'Cry_R_IssueListDatewise_lansacp  ' P_IssueList_Datewise 'Rep_Periodical_IssueRegister_Datewise
    ElseIf UCase(CustID) = "COTTON" Then
        Set clsCryRpt_d.cryRept = Cry_issueRegisterRMI
    Else
        Set clsCryRpt_d.cryRept = Cry_IssReg_Datewise 'Cry_R_IssueListDatewise  ' P_IssueList_Datewise 'Rep_Periodical_IssueRegister_Datewise
    End If
    clsCryRpt_d.CrystalPrint
                
    crr.Reset
    crr.Connect = connectstring
    crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    crr.ParameterFields(0) = "@Divcode;" & Divcode & ""
    crr.ParameterFields(1) = "@FDate;" & Format(U, "yyyy-mm-dd") & ""
    crr.ParameterFields(2) = "@TDate;" & Format(v, "yyyy-mm-dd") & ""
    crr.ParameterFields(3) = "@IssueType;" & issuetype & ""
    crr.ParameterFields(4) = "@LotType;" & lottype & ""
    If UCase(CustID) <> "SOUTHERN" Then  'And UCase(CustID) <> "SARANYA"
    crr.ParameterFields(5) = "@LOTYEAR;" & Year(yfdate) & ""
    Else
        crr.ParameterFields(5) = "@ipaddr;" & LocalIPAdd & ""
   End If
     
        
    crr.WindowShowPrintSetupBtn = True
    crr.WindowShowSearchBtn = True
    crr.WindowState = crptMaximized
    SendKeys "{ENTER}"
    crr.Action = 1
    crr.PrinterCopies = 1
    Me.MousePointer = 0
    
    Exit Sub

    


End Select

End Sub


Public Sub StockLotReport2footer(U As String, v As String, W As String, fltn As Integer, tltn As Integer, pRecType As String, Optional footerstr As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim pagelen As Integer
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim totbal As Double
Dim Cnn As Connection
'Dim f As New repform1
On Error GoTo StockLotReport2_Error

Set Cnn = New Connection
Set RS2 = New Recordset
Cnn.Provider = "MSDATASHAPE"
Cnn.CursorLocation = adUseClient
Cnn.Open connectstring
vrectype = Trim(Left(pRecType, 3))
catcd = Trim(Left(W, 1))
    Set rs1 = New Recordset
        
  strSQL = ""
  strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0))AS ISSKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        'strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-sum(isnull(a.ISSRETBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))  )) END CLOBALES," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0)) -(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)) -sum(isnull(a.ISSRETBAL,0)) )) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)) )-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0))))"
    '   strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-sum(isnull(a.ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS," -- commented on 17-11-18
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))-sum(isnull(a.ISSRETKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0)) ))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(a.ISSRETVAL,0))   )) END CLOVALUE"
        strSQL = strSQL + ",ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY, "
        strSQL = strSQL + " (SUM(ISNULL(A.RECbal,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBAL,(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))) ISSBAL ,SUM(ISNULL(A.REJKGS,0)) AS REJKGS, sum(IsNull(a.REJBAL, 0)) As REJBALES"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(U, v)
       '' 'strSQL = strSQL + " ) A , RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "

        strSQL = strSQL + " ) A inner join RM_LOT B on b.divcode='" & Divcode & "' and A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE   "
        strSQL = strSQL + "  inner join RM_VAR C on  B.CATCD=C.CATCD AND b.VARCODE=C.VARCODE  "
        strSQL = strSQL + "  inner join rm_CAT D on B.CATCD= D.CATCD"
        strSQL = strSQL + " inner join  FA_SLMAS E on B.SUPCD=E.SLCODE"
        strSQL = strSQL + " WHERE "

        



        
        
                    
        If Trim(Left(W, 3)) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & "  (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                Else
                    strSQL = strSQL & "  b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            Else
                    strSQL = strSQL & "  b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                Else
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            Else
                    strSQL = strSQL & "  b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
            End If
        End If
Set rs1 = New Recordset
rs1.Open strSQL, Cnn, adOpenStatic

If rs1.EOF Then
   MsgBox "No Stock found for this month", vbInformation, head
   Screen.MousePointer = 0
    Exit Sub
End If

    Set rs5 = New Recordset
    rs5.Open "select count(*) from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=0", DB, adOpenStatic, adLockBatchOptimistic
    If rs5.RecordCount > 0 Then
         spcount = rs5(0)
    Else
         spcount = 0
    End If
'f1
    Set rs6 = New Recordset
    rs6.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=0 and sno='1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs6.RecordCount > 0 Then
         f1 = rs6(0)
    Else
         f1 = ""
    End If
    

    'f2
   Set rs7 = New Recordset
    rs7.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=0 and sno='2' ", DB, adOpenStatic, adLockBatchOptimistic
    If rs7.RecordCount > 0 Then
         f2 = rs7(0)
    Else
         f2 = ""
    End If
    
    'f3
   Set RS8 = New Recordset
    RS8.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=0 and sno='3'  ", DB, adOpenStatic, adLockBatchOptimistic
    If RS8.RecordCount > 0 Then
         f3 = RS8(0)
    Else
         f3 = ""
    End If
    
     'f1
    Set rs9 = New Recordset
    rs9.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=0 and sno='4' ", DB, adOpenStatic, adLockBatchOptimistic
    If rs9.RecordCount > 0 Then
         F4 = rs9(0)
    Else
         F4 = ""
    End If
    
Set rs4 = New Recordset
 rs4.Open "select * from sysobjects where name ='StockLotwisetemp1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs4.RecordCount > 0 Then
        DB.Execute "drop table StockLotwisetemp1"
End If

DB.Execute "Create table StockLotwisetemp1(Catname char(20),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(50),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4),RecBales numeric(10),IssBales numeric(10),REJKGS numeric(18,3),REJBALES numeric(10) )"
Do While Not rs1.EOF
    'SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "','" & Format(rs1(3), "yyyy-MM-dd") & "','" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & "," & rs1("RecBal") & "," & rs1("IssBal") & "," & rs1("REJKGS") & "," & rs1("REJBALES") & ")"
    rs1.MoveNext
Loop

        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Cry_StockStmt_Lotwise  'Rep_Stock_lot_nrej1 'Rep_Stock_lot_nrej 'Rep_stock_lotwise2 ' Rep_stock_lotwise1
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.Formulas(0) = "div='" & divname & "'"
        crr.Formulas(1) = "UnitName='" & PrUnitName & "'"
        crr.Formulas(2) = "rep='" & "Stock Statement Lotwise From " & Format(DTPicker2.value, "dd/mm/yy") & " To " & Format(DTPicker3.value, "dd/mm/yy") & "'"
        crr.Formulas(3) = "spcount='" & spcount & "'"
        crr.Formulas(4) = "f1='" & f1 & "'"
        crr.Formulas(5) = "f2='" & f2 & "'"
        crr.Formulas(6) = "f3='" & f3 & "'"
        crr.Formulas(7) = "f4='" & F4 & "'"
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        SendKeys "{ENTER}"
        
        crr.Action = 1
        crr.PrinterCopies = 1
Exit Sub
StockLotReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockLotReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0




End Sub






Public Sub StockVarietyReport2footer(F_Date As String, T_Date As String, catcd As String, Optional pRecType As String)
Dim rs1 As Recordset
Dim RS2 As Recordset
'divname = "KALPATHARU TEXTILES LIMITED"
Dim RESULT As Recordset
Dim rptv As Report.ReportView
Dim SR As String
Dim tot1 As Double
Dim tot2 As Double
Dim tot3 As Double
Dim tot4 As Double
Dim tot5 As Double
Dim tot6 As Double
Dim tot7 As Double
Dim tot8 As Double
Dim tot9 As Double
Dim tot10 As Double
Dim tot11 As Double
Dim tot12 As Double
Dim tot13 As Double
Dim tot14 As Double
Dim tot15 As Double
Dim tot16 As Double
Dim Cnn As Connection
On Error GoTo StockVarietyReport2_Error

Set Cnn = New Connection

Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring
SR = catcd
SR = Trim(Mid$(SR, 1, InStr(SR, "-") - 1))
vrectype = Trim(Left(pRecType, 3))
Set rptv = New Report.ReportView
a = FreeFile
Close #a
Close
'Open "C:\sv.TXT" For Output As #a
Open KALFOLDERDATA & "\sv.TXT" For Output As #a
pg1 = 1
co = 0
          Cnn.Execute "delete Temp_per_stockstatementvar"
        
  If Year(yfdate) = Year(F_Date) And Year(F_Date) = Year(T_Date) Then
      YFF = Year(yfdate)
   ElseIf Year(yfdate) + 1 = Year(F_Date) Then
      YFF = Year(yfdate)
   Else
      YFF = Year(yfdate)
   End If
  
    Set RSV = New Recordset
        strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
        strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPVALUE,"
        strSQL = strSQL + "(SUM(ISNULL(A.RECBAL,0))+SUM(ISNULL(A.ISSRETBAL,0))) AS RECBALES,SUM(ISNULL(A.RECBOR,0)) AS RECBORAS,(SUM(ISNULL(A.RECKGS,0))+SUM(ISNULL(A.ISSRETKGS,0))) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) +SUM(ISNULL(A.SALESBAL,0))+SUM(ISNULL(A.JWBAL,0))+SUM(ISNULL(A.TRANSBAL,0)) AS ISSBALES,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODBOR,0)) +SUM(ISNULL(A.SALESBOR,0))+SUM(ISNULL(A.JWBOR,0))  AS ISSBORAS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.JWKGS,0))+SUM(ISNULL(A.TRANSKGS,0)) AS ISSKGS,"
        strSQL = strSQL + "SUM(ISNULL(A.PRODVALUE,0)) +SUM(ISNULL(A.SALESVALUE,0))+SUM(ISNULL(A.JWVALUE,0))+SUM(ISNULL(A.TRANSVALUE,0)) AS ISSVALUE,"
        strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) as TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,SUM(ISNULL(A.REJBAL,0)) AS REJBALES,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0))-sum(isnull(a.ISSRETBAL,0)))) END CLOBALES,"
        strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recKGS,0))+sum(isnull(ISSRETKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
        strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0))))"
        strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))-sum(isnull(ISSRETVAL,0)))) END CLOSEVALUE"
        strSQL = strSQL + " FROM ("
        strSQL = strSQL + gStockStatement(F_Date, T_Date)
        strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE"

                    
        If Trim(SR) <> "ALL" Then
                  
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
                Else
                    strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' group by C.VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' And b.Catcd='" & Trim(SR) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
            End If
        Else
            If vrectype <> "ALL" Then
                If vrectype = "A" Then
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
                Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
                End If
            Else
                    strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME"
            End If
        End If
'        MsgBox rs1!varcode
    Set RSV = New Recordset
        RSV.Open strSQL, Cnn, adOpenStatic, adLockBatchOptimistic
If RSV.EOF Then
   MsgBox "No Records Found", vbInformation, head
   Exit Sub
End If

'rs1.MoveFirst
Do While Not RSV.EOF

            
         VTOT = RSV("opbales")
         vtot1 = RSV("opboras")
         vtot2 = RSV("opkgs")
         vtot3 = RSV("recbales")
         VTOT4 = RSV("recboras")
         VTOT5 = RSV("reckgs")
         VTOT6 = RSV("issbales")
         VTOT7 = RSV("issboras")
         VTOT8 = RSV("isskgs")
         
         
                        
        
            VTOT9 = RSV("clobales")
            VTOT10 = RSV("cloboras")
            VTOT11 = RSV("clokgs")
            vtotRejValue = RSV!REJVALUE
            VTOT15 = IIf(RSV("closevalue") < 0, 0, RSV("CLOSEVALUE"))
         
         VTOT12 = RSV("opvalue")
         VTOT13 = RSV("recvalue")
         VTOT14 = RSV("issvalue")
         
         vtotRejBales = RSV!rejBales
         vtotRejKgs = RSV!rejkgs
         vtotRejval = RSV!REJVALUE
         
         vtottrnsBales = RSV!TRANSBAL
         vtottrnsKgs = RSV!transkgs
         vtottrnsval = RSV!TRANSVALUE
      'End If
                
'   Else
'      GoTo 30
'   End If
                
           
'   Set Namers = New Recordset
'   Namers.Open "Select varname from rm_var where varcode='" & rs1("VARCODE") & "'", DB, adOpenStatic
'   If Not Namers.EOF Then VarName = Namers(0)
    VarName = Trim(RSV!VarName)
                
  
'   strSQL = "insert into Temp_per_stockstatementvar Values ('" & VarName & " ','" & (VTOT + vtot1) & "','" & vtot2 & "','" & VTOT12 & "','" & (vtot3 + VTOT4) & "','" & VTOT5 & "','" & VTOT13 & "','" & (VTOT6 + VTOT7) & "'," & VTOT8 & "," & VTOT14 & "," & (VTOT9 + VTOT10) & "," & VTOT11 & "," & VTOT15 & ")"
   
  DB.Execute "insert into Temp_per_stockstatementvar Values ('" & VarName & " '," & VTOT & "," & vtot1 & "," & vtot2 & "," & VTOT12 & "," & vtot3 & "," & VTOT4 & "," & VTOT5 & "," & VTOT13 & "," & VTOT6 & "," & VTOT7 & "," & VTOT8 & "," & VTOT14 & "," & vtotRejBales & "," & vtotRejKgs & "," & vtotRejval & "," & VTOT9 & "," & VTOT10 & "," & VTOT11 & "," & VTOT15 & ")"
   RSV.MoveNext
Loop
MousePointer = 11
Set rsrate = New Recordset
rsrate.Open "select * from rm_rateunit where unitcode='CAN'", DB, adOpenStatic
If rsrate.RecordCount > 0 Then
 RATECY = rsrate("value")
End If

'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_VarietywiseStockStatement.rpt"
'FrmRpt.RptHead = 4
'parameter1 = DIVNAME
'parameter2 = Format(DTPicker2.value, "dd/MM/yy")
'parameter3 = Format(DTPicker3.value, "dd/MM/yy")
'parameter4 = RATECY
'FrmRpt.Show

 Set rs5 = New Recordset
    rs5.Open "select count(*) from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=1", DB, adOpenStatic, adLockBatchOptimistic
    If rs5.RecordCount > 0 Then
         spcount = rs5(0)
    Else
         spcount = 0
    End If
'f1
    Set rs6 = New Recordset
    rs6.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=1 and sno='1'", DB, adOpenStatic, adLockBatchOptimistic
    If rs6.RecordCount > 0 Then
         f1 = rs6(0)
    Else
         f1 = ""
    End If
    

    'f2
   Set rs7 = New Recordset
    rs7.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=1 and sno='2' ", DB, adOpenStatic, adLockBatchOptimistic
    If rs7.RecordCount > 0 Then
         f2 = rs7(0)
    Else
         f2 = ""
    End If
    
    'f3
   Set RS8 = New Recordset
    RS8.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=1 and sno='3'  ", DB, adOpenStatic, adLockBatchOptimistic
    If RS8.RecordCount > 0 Then
         f3 = RS8(0)
    Else
         f3 = ""
    End If
    
     'f1
    Set rs9 = New Recordset
    rs9.Open "select Opt_Print from temp_prpo where ipaddress='" & LocalIPAdd & "' and divcode='" & Divcode & "' and pordno=1 and sno='4' ", DB, adOpenStatic, adLockBatchOptimistic
    If rs9.RecordCount > 0 Then
         F4 = rs9(0)
    Else
         F4 = ""
    End If




        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Cry_StockStmt_Varietywise 'rep_stock_varwise1 'Rep_stock_varwise
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    
        crr.Formulas(0) = "div='" & divname & "'"
        crr.Formulas(1) = "rep='" & "Varietywise Stock Statement From " & Format(DTPicker2.value, "dd/mm/yy") & " To " & Format(DTPicker3.value, "dd/mm/yy") & "'"
        crr.Formulas(2) = "spcount='" & spcount & "'"
        crr.Formulas(3) = "f1='" & f1 & "'"
        crr.Formulas(4) = "f2='" & f2 & "'"
        crr.Formulas(5) = "f3='" & f3 & "'"
        crr.Formulas(6) = "f4='" & F4 & "'"
        
        
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
       



MousePointer = 0
Exit Sub

StockVarietyReport2_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockVarietyReport2 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub purchasedaybookfooter()
On Error GoTo purchasedaybook1_Error

If Repindex = 7733 Then
 Dim clsCryRpt11 As New clsCrystal
        
        If UCase(CustID) = "ASM" Then
            Set clsCryRpt11.cryRept = Cry_cottonReceiptList_ASM
        Else
            Set clsCryRpt11.cryRept = Cry_cottonReceiptList
        End If
        clsCryRpt11.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(1) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        
        crr.ParameterFields(2) = "@divcode;" & Divcode
        crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1
Exit Sub
End If


If Repindex = 7734 Then
 Dim clsCryRpt111 As New clsCrystal
        
       
        Set clsCryRpt111.cryRept = Cry_CottonCostMixWise
        
        clsCryRpt111.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' crr.ParameterFields(0) = "@divname;" & DIVNAME
        crr.ParameterFields(0) = "@fdate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(1) = "@tdate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        
        crr.ParameterFields(2) = "@divcode;" & Divcode
        crr.ParameterFields(3) = "@lotyear;" & Year(yfdate)
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1
Exit Sub
End If




If Option6.value Then

W = Trim(Left(DataCombo1.Text, 1))
v = Trim(Left(CmbRecType.Text, 1))
GoTo reg
If W = "A" Then
'Str = "alter PROCEDURE sp_purchasedaybook" & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,a.SuppBillvalue AS Purchase_Value ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight,ISNULL(a.SuppBillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) AS Purchase_Value " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode ORDER BY LOTDT , arrdt, varcode"
    
    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
                " AS " & _
                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
                "sum(totlandcost) AS totlandcost,SUM(s.Purchase_Value)Purchase_Value,SUM(s.cstamt) AS cstamt FROM(        " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0)+ ISNULL(ADDTAXAMOUNT,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0)+ ISNULL(ADDTAXAMOUNT,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight,ISNULL(a.SuppBillvalue,0) AS Purchase_Value from " & _
                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode " & _
                ")s GROUP BY varcode"

    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"

Else
    DB.Execute "alter PROCEDURE sp_purchasedaybook " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue ,isnull(a.totlandcost,0) as totlandcost, " & _
                "isnull(lrfrtamt, 0) As Freight " & _
                "from  rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode and a.catcd='" & W & "' ORDER BY LOTDT , arrdt, varcode"
    
    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract" & _
                " @fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10)" & _
                " AS " & _
                "SELECT varcode,sum(bales) AS bales,sum(borah) AS borah,sum(netwt) AS netwt,sum(itemvalue) AS itemvalue,sum(fbillvalue) as fbillvalue,sum(freight) as freight, " & _
                "sum(totlandcost) AS totlandcost FROM(        " & _
                "select lotdt,arrdt,z.varname as varcode,billno,billdt,supcd,lotno,f.state_code,s.state_code as divstate,bales= " & _
                "(case when BBLFLG ='B' then bales ELSE 0 end),borah=(case when bblflg<>'B' then bales ELSE 0 end),round(netwt,2) as " & _
                "netwt,a.ratekg as rate_qntl,a.pjamt as itemvalue,a.pjamt as insamt,vatamt= " & _
                "(case when f.state_code=s.state_code then isnull(vatamt,0) else 0 end),cstamt=(case when f.state_code<>s.state_code " & _
                "then isnull(vatamt,0) else 0 end),isnull(a.fbillvalue,0) as fbillvalue,isnull(a.totlandcost,0) as totlandcost,isnull(lrfrtamt,0) as freight from " & _
                "rm_lot a ,rm_var z, fa_slmas f, pp_divmas s  where a.divcode=@divcode and a.opflg " & _
                "in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and pjdt BETWEEN @fdate AND " & _
                "@tdate and a.varcode=z.varcode and pjno is not null and a.supcd=f.slcode  and a.divcode=s.divcode  and a.catcd='" & W & "'" & _
                ")s GROUP BY varcode"

    DB.Execute "alter PROCEDURE sp_purchasedaybookabstract1 " & _
                "@fdate AS varchar(10),@tdate AS varchar(10),@divcode AS varchar(10),@lotyear AS varchar(10) " & _
                "AS " & _
                "SELECT pjtc,glcode,glhead,sum(bales) as bales,sum(borah) as borah,sum(netwt) as netwt, " & _
                "avg(rate_qntl) as rate_qntl,sum(insamt) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,sum(pjamt1) AS pjamt1 from ( select a.tax_code,pjtc,b.glcode,c.glhead,bales=(case when BBLFLG ='B' then sum(bales) ELSE 0 end),borah= " & _
                "(case when bblflg<>'B' then sum(bales) ELSE 0 end),round(sum(netwt),2) as netwt,avg(a.ratekg) as rate_qntl,(sum(a.pjamt)-sum(a.vatamt)) as insamt,sum(pjamt) as pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c where b.glcode=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear  and a.catcd='" & W & "' group by a.tax_code,pjtc,b.glcode,c.glhead,bblflg UNION SELECT '' AS tax_code,0 AS pjtc,vatgl,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, sum(vatamt) as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 FROM ( " & _
                "select a.tax_code,pjtc,d.vatgl,glhead,0 AS bales,0 AS borah ,0 AS netwt,0 as rate_qntl,0 as insamt,0 AS pjamt,sum(vatamt) as vatamt,0 AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where d.vatgl=c.glcode and a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear " & _
                "and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate and pjno is not null and a.lotyear=@lotyear and a.catcd='" & W & "' group by a.tax_code,pjtc,d.vatgl,c.glhead,bblflg " & _
                ")x group by vatgl,glhead Union SELECT '' AS tax_code,0 AS pjtc,glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl,sum(insamt) as insamt,sum(pjamt) AS pjamt,0 as vatamt,sum(pjamt1) AS pjamt1 FROM (select a.tax_code,pjtc,c.glcode,glhead,0 AS bales,0 AS borah " & _
                ",0 AS netwt,0 as rate_qntl, 0 as insamt,0 AS pjamt,0 vatamt,sum(pjamt) AS pjamt1 from  rm_lot a ,rm_var z,fa_tcmas b, " & _
                "fa_glmas c,in_para d where a.pjtc=b.tc and a.divcode=@divcode and a.opflg in('N','n') and  a.lotyear=@lotyear and lotdt BETWEEN @fdate AND @tdate and a.varcode=z.varcode and pjdt between @fdate AND @tdate " & _
                "and pjno is not null and a.lotyear=@lotyear AND c.glcode='156517'  and a.catcd='" & W & "' group by a.tax_code,pjtc,c.glcode,c.glhead,bblflg )y group by glcode,glhead )s group by pjtc,glcode,glhead ORDER BY glcode"
End If
reg:
'crr.Reset
'crr.Connect = connectstring
'crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_PurchaseDayBook.rpt"
'crr.RetrieveDataFiles

        Dim clsCryRpt1 As New clsCrystal
        
        If CustID = "SKY" Then
            Set clsCryRpt1.cryRept = Cry_PurchaseDayBook
        Else
            Set clsCryRpt1.cryRept = Cry_Purchase_Reg 'Cry_RMIPURCHASEREGISTER_PER  'Cry_RMIPURCHASEREG  'Rep_purdaybook
        End If
        
        clsCryRpt1.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "@divname;" & divname
       ' crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
       ' crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
        crr.ParameterFields(1) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
        crr.ParameterFields(2) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
        crr.ParameterFields(3) = "@divcode;" & Divcode
        crr.ParameterFields(4) = "@lotyear;" & Year(yfdate)
        crr.ParameterFields(5) = "@ipaddr;" & LocalIPAdd
        
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        
        SendKeys "{ENTER}"
        crr.Action = 1

ElseIf Option7.value Then

        Dim clsCryRptarr As New clsCrystal
        Set clsCryRptarr.cryRept = Rep_Purchasearrival
        clsCryRptarr.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

crr.ParameterFields(0) = "@divname;" & divname
crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
crr.ParameterFields(5) = "@divcode;" & Divcode
crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)

crr.PrinterCopies = 1
crr.WindowState = crptMaximized

SendKeys "{ENTER}"
crr.Action = 1


ElseIf Option8.value Then

        Dim clsCryRptBill As New clsCrystal
        Set clsCryRptBill.cryRept = Rep_Purchasebill
        clsCryRptBill.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

crr.ParameterFields(0) = "@divname;" & divname
crr.ParameterFields(1) = "@date1;" & Format(DTPicker1.value, "dd/mm/yy")
crr.ParameterFields(2) = "@date2;" & Format(DTPicker3.value, "dd/mm/yy")
crr.ParameterFields(3) = "@fDate;" & Format(DTPicker1.value, "yyyy-MM-dd")
crr.ParameterFields(4) = "@tDate;" & Format(DTPicker3.value, "yyyy-MM-dd")
crr.ParameterFields(5) = "@divcode;" & Divcode
crr.ParameterFields(6) = "@lotyear;" & Year(yfdate)

crr.PrinterCopies = 1
crr.WindowState = crptMaximized

SendKeys "{ENTER}"
crr.Action = 1

End If

 
 
 
'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Periodical_PurchaseDayBook.rpt"
'FrmRpt.RptHead = 7
'parameter1 = DIVNAME
'parameter2 = Format(DTPicker1.value, "yyyy-MM-dd")
'parameter3 = Format(DTPicker3.value, "yyyy-MM-dd")
'parameter4 = Format(DTPicker1.value, "dd/mm/yy")
'parameter5 = Format(DTPicker3.value, "dd/mm/yy")
'parameter6 = Divcode
'parameter7 = Year(yfdate)
'FrmRpt.Show
Exit Sub
purchasedaybook1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure purchasedaybook1 of Form repform1", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub PurchaseDayBookExcel()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Details"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    'Create the Excel Application Object.
    '06-02-2020
    Set Myxl = New Excel.Application
    'Set Myxl = New ET.Application
    
    'Create new Excel Workbook
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        
        
        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker3.value, "yyyy-mm-dd")
        
'
        XLSheet.Range("Q:Q").NumberFormat = "#,##,##,##,###"
        XLSheet.Range("R:R").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("S:S").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("T:T").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("U:U").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("V:V").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("W:W").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("X:X").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Y:Y").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("Z:Z").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("AA:AA").NumberFormat = "#,##,##,##,###.00#"
      
       ' divcode = Trim(Mid$(DataCombo9.Text, 1, InStr(DataCombo9.Text, "-") - 1))
        
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "AA1").MergeCells = True
        XLSheet.Range("A1", "AA1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "AA2").MergeCells = True
        XLSheet.Range("A2", "AA2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Purchase Day Book Report FROM " & Format(DTPicker1.value, "DD/MM/YY") & " TO " & Format(DTPicker3.value, "DD/MM/YY")

        XLSheet.Range("A3", "AA3").MergeCells = True
        XLSheet.Range("A3", "AA3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "AA3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
                
        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
             
        
        Set Rs = New Recordset
       
            Rs.Open "Exec Ksp_RMI_Purchasedaybooklist '" & Divcode & "' ,'" & fdt & "','" & Tdt & "'", DB, adOpenStatic, adLockPessimistic
       
            
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No"
                XLSheet.Cells(4, 2).value = "Voc.No."
                XLSheet.Cells(4, 3).value = "Voc.Date"
                XLSheet.Cells(4, 4).value = "PO.No."
                XLSheet.Cells(4, 5).value = "PO.Date"
                XLSheet.Cells(4, 6).value = "Mill Ref. No."
                XLSheet.Cells(4, 7).value = "Inv.No."
                XLSheet.Cells(4, 8).value = "Inv.Date"
                XLSheet.Cells(4, 9).value = "Transport Doc. No."
                XLSheet.Cells(4, 10).value = "Arrival No."
                XLSheet.Cells(4, 11).value = "Arr.Date"
                XLSheet.Cells(4, 12).value = "Lot No."
                XLSheet.Cells(4, 13).value = "Supp.Lot No."
                XLSheet.Cells(4, 14).value = "Lorry No."
                XLSheet.Cells(4, 15).value = "BOE No."
                XLSheet.Cells(4, 16).value = "BOE Date "
                XLSheet.Cells(4, 17).value = "Agent Name"
                XLSheet.Cells(4, 18).value = "Purchase Type"
                XLSheet.Cells(4, 19).value = "Supplier Name"
                XLSheet.Cells(4, 20).value = "Station"
                XLSheet.Cells(4, 21).value = "State"
                XLSheet.Cells(4, 22).value = "Variety"
                XLSheet.Cells(4, 23).value = "TP"
                XLSheet.Cells(4, 24).value = "Qty in Bales"
                XLSheet.Cells(4, 25).value = "Commerical Wt."
                XLSheet.Cells(4, 26).value = "Gross Wt."
                XLSheet.Cells(4, 27).value = "Tare Wt."
                XLSheet.Cells(4, 28).value = "Net wt in Kgs."
                XLSheet.Cells(4, 29).value = "Supplier Gross Wt."
                XLSheet.Cells(4, 30).value = "Supplier Tare Wt."
                XLSheet.Cells(4, 31).value = "Supplier Net Wt in kgs"
                XLSheet.Cells(4, 32).value = "Rate per Candy"
                XLSheet.Cells(4, 33).value = "Basic Value"
                XLSheet.Cells(4, 34).value = "Other Amt."
                XLSheet.Cells(4, 35).value = "Disc."
                XLSheet.Cells(4, 36).value = "CGST Amount"
                XLSheet.Cells(4, 37).value = "SGST Amount"
                XLSheet.Cells(4, 38).value = "IGST Amount"
                XLSheet.Cells(4, 39).value = "TCS"
                XLSheet.Cells(4, 40).value = "C Amount"
                XLSheet.Cells(4, 41).value = "Landing Rate kgs"
                XLSheet.Cells(4, 42).value = "Lorry Freight"
                XLSheet.Cells(4, 43).value = "Transporter Name"
                XLSheet.Cells(4, 44).value = "Lot Allowance Status"
                XLSheet.Cells(4, 45).value = "Debit value"
              '  XLSheet.Cells(8, 25).value = "ERROR"
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AA" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                        
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count
                
               
                
                XLSheet.Cells(Max, 1) = I + 1
                XLSheet.Cells(Max, 2) = Trim(Rs.Fields("vno"))
                XLSheet.Cells(Max, 3).NumberFormat = "@"
                XLSheet.Cells(Max, 3) = Format(Trim((Rs.Fields("vdate"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 3).HorizontalAlignment = xlRight
                XLSheet.Cells(Max, 4) = Trim(Rs.Fields("pono"))
                XLSheet.Cells(Max, 5).NumberFormat = "@"
                XLSheet.Cells(Max, 5) = Format(Trim((Rs.Fields("podt"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 5).HorizontalAlignment = xlRight
                XLSheet.Cells(Max, 6) = Trim(Rs.Fields("MILLREFNO"))
                XLSheet.Cells(Max, 7) = Trim(Rs.Fields("inv"))
                XLSheet.Cells(Max, 8).NumberFormat = "@"
                XLSheet.Cells(Max, 8) = Format(Trim((Rs.Fields("inv_dt"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 8).HorizontalAlignment = xlRight
                XLSheet.Cells(Max, 9) = Trim(Rs.Fields("TransPort"))
                XLSheet.Cells(Max, 10) = Trim(Rs.Fields("ARRNO"))
                XLSheet.Cells(Max, 11).NumberFormat = "@"
                XLSheet.Cells(Max, 11) = Format(Trim((Rs.Fields("ARRDATE"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 11).HorizontalAlignment = xlRight
                XLSheet.Cells(Max, 12) = Trim(Rs.Fields("LOTNO"))
                XLSheet.Cells(Max, 13) = Trim(Rs.Fields("supplotno"))
                XLSheet.Cells(Max, 14) = Trim(Rs.Fields("LORRYNOS"))
                XLSheet.Cells(Max, 15) = Trim(Rs.Fields("BENO"))
                XLSheet.Cells(Max, 16).NumberFormat = "@"
                XLSheet.Cells(Max, 16) = Format(Trim((Rs.Fields("BEDT"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 17) = Trim(Rs.Fields("AgentName"))
                XLSheet.Cells(Max, 18) = Trim(Rs.Fields("purtype"))
                XLSheet.Cells(Max, 19) = Trim(Rs.Fields("slname"))
                XLSheet.Cells(Max, 20) = Trim(Rs.Fields("station"))
                XLSheet.Cells(Max, 21) = Trim(Rs.Fields("state"))
                XLSheet.Cells(Max, 22) = Trim(Rs.Fields("vac"))
                XLSheet.Cells(Max, 23) = Trim(Rs.Fields("tp"))
                If Rs.Fields("qty") > 0 Then
                XLSheet.Cells(Max, 24) = Format(IIf(IsNull(Rs.Fields("qty")), 0, Rs.Fields("qty")), "##,##,##,##,###")
                Quantity = Quantity + Rs.Fields("qty")
                Else
                XLSheet.Cells(Max, 24) = ""
                End If
                
                If Rs.Fields("COMMWT") > 0 Then
                XLSheet.Cells(Max, 25) = Format(IIf(IsNull(Rs.Fields("COMMWT")), 0, Rs.Fields("COMMWT")), "##,##,##,##,###.000")
                CommWt = CommWt + Rs.Fields("COMMWT")
                Else
                XLSheet.Cells(Max, 25) = ""
                End If
                If Rs.Fields("GROSSWT") > 0 Then
                XLSheet.Cells(Max, 26) = Format(IIf(IsNull(Rs.Fields("GROSSWT")), 0, Rs.Fields("GROSSWT")), "##,##,##,##,###.000")
                GrossWt = GrossWt + Rs.Fields("GROSSWT")
                Else
                XLSheet.Cells(Max, 26) = ""
                End If
                If Rs.Fields("TAREWT") > 0 Then
                XLSheet.Cells(Max, 27) = Format(IIf(IsNull(Rs.Fields("TAREWT")), 0, Rs.Fields("TAREWT")), "##,##,##,##,###.000")
                TAREWT = TAREWT + Rs.Fields("TAREWT")
                Else
                XLSheet.Cells(Max, 27) = ""
                End If
                If Rs.Fields("qtl") > 0 Then
                XLSheet.Cells(Max, 28) = Format(IIf(IsNull(Rs.Fields("qtl")), 0, Rs.Fields("qtl")), "##,##,##,##,###.000")
                netwt = netwt + Rs.Fields("qtl")
                Else
                XLSheet.Cells(Max, 28) = ""
                End If
                If Rs.Fields("SupGrsWt") > 0 Then
                XLSheet.Cells(Max, 29) = Format(IIf(IsNull(Rs.Fields("SupGrsWt")), 0, Rs.Fields("SupGrsWt")), "##,##,##,##,###.000")
                SupGrsWt = SupGrsWt + Rs.Fields("SupGrsWt")
                Else
                XLSheet.Cells(Max, 29) = ""
                End If
                If Rs.Fields("SupTarWt") > 0 Then
                XLSheet.Cells(Max, 30) = Format(IIf(IsNull(Rs.Fields("SupTarWt")), 0, Rs.Fields("SupTarWt")), "##,##,##,##,###.000")
                SupTarWt = SupTarWt + Rs.Fields("SupTarWt")
                Else
                XLSheet.Cells(Max, 30) = ""
                End If
                If Rs.Fields("SupNetWt") > 0 Then
                XLSheet.Cells(Max, 31) = Format(IIf(IsNull(Rs.Fields("SupNetWt")), 0, Rs.Fields("SupNetWt")), "##,##,##,##,###.000")
                SupNetWt = SupNetWt + Rs.Fields("SupNetWt")
                Else
                XLSheet.Cells(Max, 31) = ""
                End If
                If Rs.Fields("ratpcy") > 0 Then
                XLSheet.Cells(Max, 32) = Format(IIf(IsNull(Rs.Fields("ratpcy")), 0, Rs.Fields("ratpcy")), "##,##,##,##,###.000")
                ratpcy = ratpcy + Rs.Fields("ratpcy")
                Else
                XLSheet.Cells(Max, 32) = ""
                End If
                If Rs.Fields("basic_val") > 0 Then
                XLSheet.Cells(Max, 33) = Format(IIf(IsNull(Rs.Fields("basic_val")), 0, Rs.Fields("basic_val")), "##,##,##,##,###.00")
                BasicValue = BasicValue + Rs.Fields("basic_val")
                Else
                XLSheet.Cells(Max, 33) = ""
                End If
                If Rs.Fields("OTHERSAMT") > 0 Then
                XLSheet.Cells(Max, 34) = Format(IIf(IsNull(Rs.Fields("OTHERSAMT")), 0, Rs.Fields("OTHERSAMT")), "##,##,##,##,###.00")
                OtherAmt = OtherAmt + Rs.Fields("OTHERSAMT")
                Else
                XLSheet.Cells(Max, 34) = ""
                End If
                
                If Rs.Fields("discount") > 0 Then
                XLSheet.Cells(Max, 35) = Format(IIf(IsNull(Rs.Fields("discount")), 0, Rs.Fields("discount")), "##,##,##,##,###.00")
                DISAMT = DISAMT + Rs.Fields("discount")
                Else
                XLSheet.Cells(Max, 35) = ""
                End If
                
                If Rs.Fields("cgstamt") > 0 Then
                XLSheet.Cells(Max, 36) = Format(IIf(IsNull(Rs.Fields("cgstamt")), 0, Rs.Fields("cgstamt")), "##,##,##,##,###.00")
                CGSTAMT = CGSTAMT + Rs.Fields("cgstamt")
                Else
                XLSheet.Cells(Max, 36) = ""
                End If
                If Rs.Fields("sgstamt") > 0 Then
                XLSheet.Cells(Max, 37) = Format(IIf(IsNull(Rs.Fields("sgstamt")), 0#, Rs.Fields("sgstamt")), "##,##,##,##,###.00")
                SGSTAMT = SGSTAMT + Rs.Fields("sgstamt")
                Else
                XLSheet.Cells(Max, 37) = ""
                End If
                If Rs.Fields("igstamt") > 0 Then
                XLSheet.Cells(Max, 38) = Format(IIf(IsNull(Rs.Fields("igstamt")), 0, Rs.Fields("igstamt")), "##,##,##,##,###.00")
                IGSTAMT = IGSTAMT + Rs.Fields("igstamt")
                Else
                XLSheet.Cells(Max, 38) = ""
                End If
                If Rs.Fields("tcs_amt") > 0 Then
                XLSheet.Cells(Max, 39) = Format(IIf(IsNull(Rs.Fields("tcs_amt")), 0, Rs.Fields("tcs_amt")), "##,##,##,##,###.00")
                tcsamt = tcsamt + Rs.Fields("tcs_amt")
                Else
                XLSheet.Cells(Max, 39) = ""
                End If
                If Rs.Fields("camt") > 0 Then
                XLSheet.Cells(Max, 40) = Format(IIf(IsNull(Rs.Fields("camt")), 0, Rs.Fields("camt")), "##,##,##,##,###.00")
                Camt = Camt + Rs.Fields("camt")
                Else
                XLSheet.Cells(Max, 40) = ""
                End If
                If Rs.Fields("lndrtkgs") > 0 Then
                XLSheet.Cells(Max, 41) = Format(IIf(IsNull(Rs.Fields("lndrtkgs")), 0, Rs.Fields("lndrtkgs")), "##,##,##,##,###.00")
                lndrtkgs = lndrtkgs + Rs.Fields("lndrtkgs")
                Else
                XLSheet.Cells(Max, 41) = ""
                End If
                If Rs.Fields("LORRYFRT") > 0 Then
                XLSheet.Cells(Max, 42) = Format(IIf(IsNull(Rs.Fields("LORRYFRT")), 0, Rs.Fields("LORRYFRT")), "##,##,##,##,###.00")
                LORRYFRT = LORRYFRT + Rs.Fields("LORRYFRT")
                Else
                XLSheet.Cells(Max, 42) = ""
                End If
                
                XLSheet.Cells(Max, 43) = Trim(Rs.Fields("transporter"))
                XLSheet.Cells(Max, 44) = Trim(Rs.Fields("lotstatus"))
                
                If Rs.Fields("DebtVal") > 0 Then
                XLSheet.Cells(Max, 45) = Format(IIf(IsNull(Rs.Fields("DebtVal")), 0, Rs.Fields("DebtVal")), "##,##,##,##,###.00")
                DebtVal = DebtVal + Rs.Fields("DebtVal")
                Else
                XLSheet.Cells(Max, 45) = ""
                End If

                Rs.MoveNext
                Max = Max + 1
                
                Next I
            
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "AA" & m_ROW
                    XLSheet.Cells(m_ROW + 3, 24).Formula = Format(Quantity, "##,##,##,##,###")
                    XLSheet.Cells(m_ROW + 3, 25).Formula = Format(CommWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 26).Formula = Format(GrossWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 28).Formula = Format(netwt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 29).Formula = Format(SupGrsWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 30).Formula = Format(SupTarWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 31).Formula = Format(SupNetWt, "##,##,##,##,###.###")
                    XLSheet.Cells(m_ROW + 3, 33).Formula = Format(BasicValue, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 34).Formula = Format(OtherAmt, "##,##,##,##,###.##")
'                    XLSheet.Cells(m_ROW + 3, 12).Formula = "=SUM(L" & STmaxRowStart & ":L" & STmaxRowEnd & ")"
                    XLSheet.Cells(m_ROW + 3, 35).Formula = Format(DISAMT, "##,##,##,##,###.##")
                   
                    XLSheet.Cells(m_ROW + 3, 36).Formula = Format(CGSTAMT, "##,##,##,##,###.##")
                    
                    XLSheet.Cells(m_ROW + 3, 37).Formula = Format(SGSTAMT, "##,##,##,##,###.##")
                   
                    XLSheet.Cells(m_ROW + 3, 38).Formula = Format(IGSTAMT, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 39).Formula = Format(tcsamt, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 40).Formula = Format(Camt, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 41).Formula = Format(lndrtkgs, "##,##,##,##,###.##")
                    XLSheet.Cells(m_ROW + 3, 45).Formula = Format(DebtVal, "##,##,##,##,###.##")
                    
          

                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "AS" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "AS" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                    
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If


End Sub


Private Sub IssueListDatewise_Excel()
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

    DataCombo2.Text = DTPicker2.value: DataCombo3.Text = DTPicker3.value
    U = Format(DataCombo2.Text, "yyyy-mm-dd"):     v = Format(DataCombo3.Text, "yyyy-mm-dd")
    issuetype = Trim(Mid(Combo1.Text, 1, 2))
    lottype = Trim(Mid(CmbRecType.Text, 1, 3))
      
        oSheet.Cells(3, 5).value = "Issue List Form " & Format(DTPicker2.value, "dd-mm-yyyy") & " to " & Format(DTPicker3.value, "dd-mm-yyyy")
        oSheet.Range("A3", "L3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "L3").MergeCells = True
        With oSheet.Range("A3", "L3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssDate' order by sno ", DB, adOpenStatic

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
   DB.Execute "delete from EXRPTISSUELISTDate"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
       DB.Execute " insert into EXRPTISSUELISTDate exec KSP_RMI_P_IssueList_Date '" & Divcode & "' , '" & U & "' , '" & v & "' ,'" & issuetype & "','" & lottype & "' "


       Rs.Open "SELECT *FROM VW_RM_IssuelistDatewise ORDER BY docdt,docno asc,cntname asc,VARNAME desc ", DB
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
        oSheet.Cells(m_ROW, 5).value = "Issue List Abstract"
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).MergeCells = True
        With oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set Rst = New Recordset

        Rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssDateAbs' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 4
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
       Rs.Open "select *from VW_RM_IssuelistDatewiseABS order by cntname ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 4
            
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
                If InStr(UCase(Trim(oSheet.Cells(I, 4))), UCase("Day Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 4))), UCase("Grand Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 4))), UCase("Issue No. Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 5))), UCase("Grand Total")) > 0 Then
                      If InStr(UCase(Trim(oSheet.Cells(I, 5))), UCase("Grand Total")) > 0 Then
                            oSheet.Cells(I, 4) = ""
                            oSheet.Cells(I, 5) = "Grand Total"
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
                            oSheet.Cells(I, 3) = ""
                       
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

Private Sub load_IssueChkListbox()
On Error GoTo DataCombo1_Change_Error
    Dim li As ListItem
    Set temprs = New Recordset
    temprs.Open "select distinct b.DESCRIPTION,a.inv_type Type from rm_cinvhd a inner join ig_invtype b on a.inv_type=b.inv_type  and a.divcode=b.divcode  and b.divcode='" & Divcode & "' where  a.date between '" & Format(DTPicker1.value, "yyyy-MM-dd") & "' and '" & Format(DTPicker3.value, "yyyy-MM-dd") & "'  Order by a.inv_type", DB, adOpenStatic, adLockBatchOptimistic ''INNER JOIN RM_issh b ON a.Issue_Code=b.Transfertype and b.lotyear='" & Year(yfdate) & "'
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
Private Sub Salesdaybook_Excel()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Sales Day Book"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    'Create the Excel Application Object.
    '06-02-2020
    Set Myxl = New Excel.Application
    'Set Myxl = New ET.Application
    
    'Create new Excel Workbook
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
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

    Set TmpRs = New Recordset
    sup1 = Mid$(dbcmb_fsup.Text, InStr(dbcmb_fsup.Text, "--") + 3, (Len(dbcmb_fsup.Text) - InStr(dbcmb_fsup.Text, "--")))
    sup2 = Mid$(dbcmb_tsup.Text, InStr(dbcmb_tsup.Text, "--") + 3, (Len(dbcmb_tsup.Text) - InStr(dbcmb_tsup.Text, "--")))
    
    If Option3.value = True Then
        FLG = "N"
    ElseIf Option1.value = True Then
        FLG = "Y"
    Else
        FLG = "N,Y"
    End If
        
        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker3.value, "yyyy-mm-dd")
        

'        XLSheet.Range("E:E").NumberFormat = "###"
'        XLSheet.Range("R:R").NumberFormat = "#,##,##,##,###.000#"
'        XLSheet.Range("S:S").NumberFormat = "#,##,##,##,###.000#"
'        XLSheet.Range("T:T").NumberFormat = "#,##,##,##,###.000#"
'        XLSheet.Range("U:U").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("V:V").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("W:W").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("X:X").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("Y:Y").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("Z:Z").NumberFormat = "#,##,##,##,###.00#"
'        XLSheet.Range("AA:AA").NumberFormat = "#,##,##,##,###.00#"
      
       ' divcode = Trim(Mid$(DataCombo9.Text, 1, InStr(DataCombo9.Text, "-") - 1))
        
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "P1").MergeCells = True
'        XLSheet.Range("A1", "P1").Center
        XLSheet.Range("A1", "P1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 14
        .Color = vbRed
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "P2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 13
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Rawmaterial Sales Day Book from " & Format(DTPicker1.value, "DD/MM/YY") & " TO " & Format(DTPicker3.value, "DD/MM/YY")

        XLSheet.Range("A3", "P3").MergeCells = True
        With XLSheet.Range("A3", "P3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
                
        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
             
        
        Set Rs = New Recordset
            
            Rs.Open "Exec SP_RM_Salesdaybook '" & Divcode & "' ,'" & Format(yfdate, "yyyy") & "','" & Format(DTPicker1.value, "yyyy-MM-dd") & "','" & Format(DTPicker3.value, "yyyy-MM-dd") & "','" & sup1 & "','" & sup2 & "','" & Issue_List & "','" & FLG & "'", DB, adOpenStatic, adLockPessimistic
       
            
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No"
                XLSheet.Cells(4, 2).value = "Account Date"
                XLSheet.Cells(4, 3).value = "Supplier Name"
                XLSheet.Cells(4, 4).value = "Variety"
                XLSheet.Cells(4, 5).value = "Bill No."
                XLSheet.Cells(4, 6).value = "No. of Bales"
                XLSheet.Cells(4, 7).value = "Rate"
                XLSheet.Cells(4, 8).value = "Kgs."
                XLSheet.Cells(4, 9).value = "Cess"
                XLSheet.Cells(4, 10).value = "Freight"
                XLSheet.Cells(4, 11).value = "Ass. Value"
                XLSheet.Cells(4, 12).value = "CGST Amt"
                XLSheet.Cells(4, 13).value = "SGST Amt"
                XLSheet.Cells(4, 14).value = "IGST Amt"
                XLSheet.Cells(4, 15).value = "TCS Amt"
                XLSheet.Cells(4, 16).value = "Total Value"
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "P" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit
                        
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count
                
               
                
                XLSheet.Cells(Max, 1) = I + 1
                XLSheet.Cells(Max, 2) = Format(Trim((Rs.Fields("date"))), "DD/MM/YYYY")
                XLSheet.Cells(Max, 3) = Trim(Rs.Fields("slname"))
                XLSheet.Cells(Max, 4) = Trim(Rs.Fields("varname"))
                XLSheet.Cells(Max, 5) = Format(Rs.Fields("billno"), "###")
                XLSheet.Cells(Max, 6) = Trim(Rs.Fields("bales"))
                TOTBALES = TOTBALES + Rs.Fields("bales")
                XLSheet.Cells(Max, 7) = Format(Rs.Fields("rate_nett"), "##,###.##")
                XLSheet.Cells(Max, 8) = Format(Rs.Fields("inv_kgs"), "#####.###")
                totinvkgs = totinvkgs + Rs.Fields("inv_kgs")
                If Rs.Fields("cess_amt") > 0 Then
                    XLSheet.Cells(Max, 9) = Format(Rs.Fields("cess_amt"), "##,###.##")
                    totcess = totcess + Rs.Fields("cess_amt")
                End If
                If Rs.Fields("freight") > 0 Then
                    XLSheet.Cells(Max, 10) = Format(Rs.Fields("freight"), "##,###.##")
                    totfreight = totfreight + Rs.Fields("freight")
                End If
                If Rs.Fields("matl_value") > 0 Then
                    XLSheet.Cells(Max, 11) = Format(Rs.Fields("matl_value"), "##,###.##")
                    totmat1value = totmat1value + Rs.Fields("matl_value")
                End If
                If Rs.Fields("cgstamt") > 0 Then
                    XLSheet.Cells(Max, 12) = Format(Rs.Fields("cgstamt"), "##,###.##")
                    TotCGst = TotCGst + Rs.Fields("cgstamt")
                End If
                If Rs.Fields("sgstamt") Then
                    XLSheet.Cells(Max, 13) = Format(Rs.Fields("sgstamt"), "##,###.##")
                    TotSGst = TotSGst + Rs.Fields("sgstamt")
                End If
                If Rs.Fields("igstamt") Then
                    XLSheet.Cells(Max, 14) = Format(Rs.Fields("igstamt"), "##,###.##")
                    TotIGst = TotIGst + Rs.Fields("igstamt")
                End If
                If Rs.Fields("tcs_amt") > 0 Then
                    XLSheet.Cells(Max, 15) = Format(Rs.Fields("tcs_amt"), "##,###.##")
                    TotTcs = TotTcs + Rs.Fields("tcs_amt")
                End If
                If Rs.Fields("total_amt") > 0 Then
                    XLSheet.Cells(Max, 16) = Format(Rs.Fields("total_amt"), "##,##,###.##")
                    Tottotal = Tottotal + Rs.Fields("total_amt")
                End If
                
'
'                If Rs.Fields("camt") > 0 Then
'                XLSheet.Cells(Max, 27) = Format(IIf(IsNull(Rs.Fields("camt")), 0, Rs.Fields("camt")), "##,##,##,##,###.00")
'                Camt = Camt + Rs.Fields("camt")
'                Else
'                XLSheet.Cells(Max, 27) = ""
'                End If

                Rs.MoveNext
                Max = Max + 1
                
                Next I
            
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "P" & m_ROW
'                    XLSheet.Cells(m_ROW + 3, 17).Formula = Format(Quantity, "##,##,##,##,###")
'                    XLSheet.Cells(m_ROW + 3, 18).Formula = Format(CommWt, "##,##,##,##,###.###")
'                    XLSheet.Cells(m_ROW + 3, 19).Formula = Format(GrossWt, "##,##,##,##,###.###")
'                    XLSheet.Cells(m_ROW + 3, 20).Formula = Format(netwt, "##,##,##,##,###.###")
'                    XLSheet.Cells(m_ROW + 3, 21).Formula = Format(BasicValue, "##,##,##,##,###.##")
'                    XLSheet.Cells(m_ROW + 3, 22).Formula = Format(OtherAmt, "##,##,##,##,###.##")
''                    XLSheet.Cells(m_ROW + 3, 12).Formula = "=SUM(L" & STmaxRowStart & ":L" & STmaxRowEnd & ")"
'                    XLSheet.Cells(m_ROW + 3, 23).Formula = Format(DISAMT, "##,##,##,##,###.##")
'
'                    XLSheet.Cells(m_ROW + 3, 24).Formula = Format(CGSTAMT, "##,##,##,##,###.##")
'
'                    XLSheet.Cells(m_ROW + 3, 25).Formula = Format(SGSTAMT, "##,##,##,##,###.##")
'
'                    XLSheet.Cells(m_ROW + 3, 26).Formula = Format(IGSTAMT, "##,##,##,##,###.##")
'                    XLSheet.Cells(m_ROW + 3, 27).Formula = Format(Camt, "##,##,##,##,###.##")
          
'                aa = "A" & m_Row + 2
'                bb = "D" & m_Row + 2
'                XLSheet.Range(aa, bb).MergeCells = True
                
                XLSheet.Cells(m_ROW + 2, 4) = "Grand Total"
                XLSheet.Cells(m_ROW + 2, 6) = TOTBALES
                XLSheet.Cells(m_ROW + 2, 8) = Format(totinvkgs, "#####.###")
                XLSheet.Cells(m_ROW + 2, 9) = Format(totcess, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 10) = Format(totfreight, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 11) = Format(totmat1value, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 12) = Format(TotCGst, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 13) = Format(TotSGst, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 14) = Format(TotIGst, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 15) = Format(TotTcs, "##,###.##")
                XLSheet.Cells(m_ROW + 2, 16) = Format(Tottotal, "##,##,###.##")
                                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "P" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "P" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                
                XLSheet.Range(Glr, GHR).Columns.AutoFit
                XLSheet.Range(Glr, GHR).Rows.AutoFit
                    
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If
End Sub
Private Sub CottonConsumption_Excel()
On Error GoTo LotwiseStockExcel_Error

tmpFile = "Cotton Consumption"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"

Set oExcel = CreateObject("Excel.Application")
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
    oExcel.Visible = True
    
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
       
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "G1").MergeCells = True
         oSheet.Range("A1", "G1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "G2").MergeCells = True
         oSheet.Range("A2", "G2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        oSheet.Name = "Cotton Consumption"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")

    Dim issuetype As String, lottype As String

    DataCombo2.Text = DTPicker2.value: DataCombo3.Text = DTPicker3.value
    U = Format(DataCombo2.Text, "yyyy-mm-dd"):     v = Format(DataCombo3.Text, "yyyy-mm-dd")
      
        oSheet.Cells(3, 5).value = "Cotton Consumption Statement From " & Format(DTPicker2.value, "dd-mm-yyyy") & " to " & Format(DTPicker3.value, "dd-mm-yyyy")
        oSheet.Range("A3", "G3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "G3").MergeCells = True
        With oSheet.Range("A3", "G3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        I = 1
        
            oSheet.Cells(4, I).value = "S.No."
            oSheet.Cells(4, I + 1).value = "Issue No."
            oSheet.Cells(4, I + 2).value = "Issue Date"
            oSheet.Cells(4, I + 3).value = "Consumption Kgs."
            oSheet.Cells(4, I + 4).value = "Rate/kgs."
            oSheet.Cells(4, I + 5).value = "Candy"
            oSheet.Cells(4, I + 6).value = "value"
            TotCol = TotCol + 1
            I = I + 1
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "G" & m_ROW
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

     Set Rs = New Recordset
    
       Rs.Open "Exec Ksp_SP_Cot_Cons_Stmt '" & Divcode & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & LocalIPAdd & "'", cn, adOpenStatic, adLockBatchOptimistic
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
        
            co = 7
            i1 = 1
            
            aa = 6
            SNO = 1
            Rs.MoveFirst
            Do While Not Rs.EOF
                oSheet.Cells(aa, 1).value = SNO
                oSheet.Cells(aa, 2).value = Rs("docno")
                oSheet.Cells(aa, 3).value = Format(Rs("docdt"), "DD/MM/YYYY")
                oSheet.Cells(aa, 4).value = Format(Rs("conskgs"), "######.###")
                oSheet.Cells(aa, 5).value = Format(Rs("ratekgs"), "##,##,###.##")
                oSheet.Cells(aa, 6).value = Format(Rs("RATECY"), "##,##,###.##")
                oSheet.Cells(aa, 7).value = Format(Rs("value"), "##,##,###.##")
                SNO = SNO + 1
                aa = aa + 1
                Rs.MoveNext
            Loop

                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Rows.AutoFit
                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "G" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW + 1
                            HR = "G" & m_ROW + 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With

                oSheet.Cells(m_ROW + 1, 2).value = "Grand Total"
                
                
                oSheet.Cells(m_ROW + 1, 4).Formula = "=SUM(D6:D" & m_ROW & ")"
                oSheet.Cells(m_ROW + 1, 5).Formula = "=SUM(E6:E" & m_ROW & ")"
                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(F6:F" & m_ROW & ")"
                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G6:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = oSheet.UsedRange.Rows.Count
                
                lr = "A" & 1
                HR = "G" & m_ROW
 
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
                
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW - 1
                HR = "G" & m_ROW - 1
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 11
                .Color = vbBlue
            End With


Exit Sub
LotwiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub VarietywiseStockPositionExcel()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Details"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    Set Myxl = New Excel.Application

    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "H1").MergeCells = True
        XLSheet.Range("A1", "H1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "H2").MergeCells = True
        XLSheet.Range("A2", "H2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Variety wise Stock Position as on " & Format(DTPicker1.value, "DD/MM/YY")

        XLSheet.Range("A3", "H3").MergeCells = True
'        XLSheet.Range("A3", "H3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "AA3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
                
'        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
'        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
             
        
        Set Rs = New Recordset
       
            Rs.Open "select category,varname,supplier,plotno,lotno,bales,stock from Temp_Daily_VarietyStockPosition order by varname,lotno", DB, adOpenStatic, adLockPessimistic
       
            
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No."
                XLSheet.Cells(4, 2).value = "Category Name"
                XLSheet.Cells(4, 3).value = "Variety Name"
                XLSheet.Cells(4, 4).value = "Supplier Name"
                XLSheet.Cells(4, 5).value = "Supplier Lot No."
                XLSheet.Cells(4, 6).value = "Mill Lot No."
                XLSheet.Cells(4, 7).value = "Quantity in Bales"
                XLSheet.Cells(4, 8).value = "Net wt in kgs"
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "H" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit

                XLSheet.Range("H:H").NumberFormat = "#,##,##,##,###.000#"
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
                VarName = Rs(1)
                QTY = 0
                gqty = 0
                netwt = 0
                gnetwt = 0
                For I = 0 To Rs.RecordCount - 1
                
                    If Rs(1) <> VarName Then
                    
                        XLSheet.Cells(Max, 5) = "Variety wise total"
                        XLSheet.Cells(Max, 7) = QTY
                        XLSheet.Cells(Max, 8) = Format(netwt, "##,##,##,##,###.###")
                        VarName = Rs(1)
                        QTY = 0
                        netwt = 0
                        
                        m_ROW = XLSheet.UsedRange.Rows.Count
                        
                        Glr = "A" & m_ROW
                        GHR = "H" & m_ROW
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 10
                                .Font.Color = vbBlue
                                .Font.Bold = True
                        End With
                        Max = Max + 1
                    End If
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                                
                XLSheet.Cells(Max, 1) = I + 1
                XLSheet.Cells(Max, 2) = Trim(Rs(0))
                XLSheet.Cells(Max, 3) = Trim(Rs(1))
                XLSheet.Cells(Max, 4) = Trim(Rs(2))
                XLSheet.Cells(Max, 5) = Trim(Rs(3))
                XLSheet.Cells(Max, 6) = Trim(Rs(4))
                XLSheet.Cells(Max, 7) = Trim(Rs(5))
                QTY = QTY + Rs(5)
                gqty = gqty + Rs(5)
                XLSheet.Cells(Max, 8) = Format(Rs(6), "##,##,##,##,###.###")
                netwt = netwt + Rs(6)
                gnetwt = gnetwt + Rs(6)

                Rs.MoveNext
                Max = Max + 1
                
                Next I
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count + 1
                
                Glr = "A" & m_ROW
                GHR = "H" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                XLSheet.Cells(Max, 5) = "Variety wise total"
                XLSheet.Cells(Max, 7) = QTY
                XLSheet.Cells(Max, 8) = Format(netwt, "##,##,##,##,###.###")
            
                Max = Max + 1
                
                XLSheet.Cells(Max, 5) = "Grand total"
                XLSheet.Cells(Max, 7) = gqty
                XLSheet.Cells(Max, 8) = Format(gnetwt, "##,##,##,##,###.###")
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "H" & m_ROW

                    
          

'                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "H" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "H" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                    
                Myxl.Application.Visible = True
                
                Screen.MousePointer = 0
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If


End Sub

Private Sub PurchaseList_Excel()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim Rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String
CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
intervalMinutes = -1

    
    
    tmpFile = "Purchase Day Book"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    Set Myxl = New Excel.Application
    
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Abstract"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        XLSheet.Range("A1", "M1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        XLSheet.Range("A2", "M2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Purchase Day Book Report Abstract From " & Format(DTPicker1.value, "DD/MM/YY") & " To " & Format(DTPicker3.value, "DD/MM/YY")

        XLSheet.Range("A3", "M3").MergeCells = True
'        XLSheet.Range("A3", "H3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "M3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
                
'        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
'        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
       
            Rs.Open "exec sp_purchasedaybookabstract_Excel '" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Divcode & "','" & Year(DTPicker1.value) & "'", DB, adOpenStatic, adLockPessimistic
                               
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No."
                XLSheet.Cells(4, 2).value = "Variety Name"
                XLSheet.Cells(4, 3).value = "No. of  Bales/ Borahs"
                XLSheet.Cells(4, 4).value = "Commercial Wt."
                XLSheet.Cells(4, 5).value = "Net wt.(Kgs.)"
                XLSheet.Cells(4, 6).value = "Gross wt.(Kgs.)"
                XLSheet.Cells(4, 7).value = "Cotton Value"
                XLSheet.Cells(4, 8).value = "CGST"
                XLSheet.Cells(4, 9).value = "SGST"
                XLSheet.Cells(4, 10).value = "IGST"
                XLSheet.Cells(4, 11).value = "Purchase Cost"
                XLSheet.Cells(4, 12).value = "Bill Value"
                XLSheet.Cells(4, 13).value = "Purchase Value"
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "M" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit

                'XLSheet.Range("H:H").NumberFormat = "#,##,##,##,###.000#"
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
                    GBal = 0
                    GCommwt = 0
                    gnetwt = 0
                    GGrswt = 0
                    Gvalue = 0
                    GWeiwt = 0
                    GCot = 0
                    GPurCst = 0
                    GCGST = 0
                    GSGST = 0
                    GIGST = 0
                    GBill = 0
                    GPur = 0
                
                For I = 0 To Rs.RecordCount - 1
                    
                    m_ROW = XLSheet.UsedRange.Rows.Count
                                    
                    XLSheet.Cells(Max, 1) = I + 1
                    XLSheet.Cells(Max, 2) = Trim(Rs(0))
                    XLSheet.Cells(Max, 3) = Trim(Rs(1) + Rs(2))
                    GBal = GBal + Trim(Rs(1) + Rs(2))
                    XLSheet.Cells(Max, 4) = Trim(Rs(3))
                    GCommwt = GCommwt + Trim(Rs(3))
                    XLSheet.Cells(Max, 5) = Trim(Rs(4))
                    gnetwt = gnetwt + Trim(Rs(4))
                    XLSheet.Cells(Max, 6) = Trim(Rs(5))
                    GGrswt = GGrswt + Trim(Rs(5))
                    XLSheet.Cells(Max, 7) = Format(Trim(Rs(6)), "##,##,##,##,###.##")
                    Gvalue = Gvalue + Trim(Rs(6))
                    If Trim(Rs(7)) > 0 Then
                        XLSheet.Cells(Max, 8) = Format(Trim(Rs(7)), "##,##,##,##,###.##")
                    End If
                    GCGST = GCGST + Trim(Rs(7))
                    If Trim(Rs(8)) > 0 Then
                        XLSheet.Cells(Max, 9) = Format(Trim(Rs(8)), "##,##,##,##,###.##")
                    End If
                    GSGST = GSGST + Trim(Rs(8))
                    If Trim(Rs(9)) > 0 Then
                        XLSheet.Cells(Max, 10) = Format(Trim(Rs(9)), "##,##,##,##,###.##")
                    End If
                    GIGST = GIGST + Trim(Rs(9))
                    If Trim(Rs(10)) > 0 Then
                        XLSheet.Cells(Max, 11) = Format(Trim(Rs(10)), "##,##,##,##,###.##")
                    End If
                    GPurCst = GPurCst + Trim(Rs(10))
                    If Trim(Rs(11)) > 0 Then
                        XLSheet.Cells(Max, 12) = Format(Trim(Rs(11)), "##,##,##,##,###.##")
                    End If
                    GBill = GBill + Trim(Rs(11))
                    If Trim(Rs(12)) > 0 Then
                        XLSheet.Cells(Max, 13) = Format(Trim(Rs(12)), "##,##,##,##,###.##")
                    End If
                    GPur = GPur + Trim(Rs(12))
                    
    
                    Rs.MoveNext
                    Max = Max + 1
                
                Next I
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count + 1
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                            
                Max = Max + 1
                
                XLSheet.Cells(Max, 2) = "Grand total"
                
                XLSheet.Cells(Max, 3) = GBal
                XLSheet.Cells(Max, 4) = GCommwt
                XLSheet.Cells(Max, 5) = gnetwt
                XLSheet.Cells(Max, 6) = GGrswt
                XLSheet.Cells(Max, 7) = Format(Gvalue, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 8) = Format(GCGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 9) = Format(GSGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 10) = Format(GIGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 11) = Format(GPurCst, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 12) = Format(GBill, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 13) = Format(GPur, "##,##,##,##,###.##")
                              
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW

                    
          

'                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "M" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                
                
             Else
                MsgBox "No Record(s)", vbOKCancel, head
                Exit Sub
            End If
                
                
                
                
                
                
                
                
                
                
                
                
                
                
    
    
    Myxl.Worksheets.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Purchase Day Book"
    


    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "AD1").MergeCells = True
        XLSheet.Range("A1", "AD1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "AD2").MergeCells = True
        XLSheet.Range("A2", "AD2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Purchase Day Book Report From " & Format(DTPicker1.value, "DD/MM/YY") & " To " & Format(DTPicker3.value, "DD/MM/YY")

        XLSheet.Range("A3", "AD3").MergeCells = True
'        XLSheet.Range("A3", "H3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "AD3").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
                
'        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
'        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
       
            Rs.Open "exec sp_purchasedaybook_Excel '" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "','" & Divcode & "','" & Year(DTPicker1.value) & "'", DB, adOpenStatic, adLockPessimistic
                               
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(4, 1).value = "S.No."
                XLSheet.Cells(4, 2).value = "Account Date"
                XLSheet.Cells(4, 3).value = "Receipt Date"
                XLSheet.Cells(4, 4).value = "Bill No."
                XLSheet.Cells(4, 5).value = "Bill Date"
                XLSheet.Cells(4, 6).value = "Bill of Entry No."
                XLSheet.Cells(4, 7).value = "Bill of Entry Date"
                XLSheet.Cells(4, 8).value = "Supplier Name"
                XLSheet.Cells(4, 9).value = "Station"
                XLSheet.Cells(4, 10).value = "Variety Name"
                XLSheet.Cells(4, 11).value = "HSN code"
                XLSheet.Cells(4, 12).value = "Supplier Lot No."
                XLSheet.Cells(4, 13).value = "Mill Lot No."
                XLSheet.Cells(4, 14).value = "No. of  Bales/ Borahs"
                XLSheet.Cells(4, 15).value = "Commercial Wt."
                XLSheet.Cells(4, 16).value = "Net wt.(Kgs.)"
                XLSheet.Cells(4, 17).value = "Gross wt.(Kgs.)"
                XLSheet.Cells(4, 18).value = "Weigh Bridge Wt."
                XLSheet.Cells(4, 19).value = "Weigh wt. vs Grs wt. diff."
                XLSheet.Cells(4, 20).value = "Rate"
                XLSheet.Cells(4, 21).value = "Cotton Value"
                XLSheet.Cells(4, 22).value = "Purchase Cost"
                XLSheet.Cells(4, 23).value = "CGST %"
                XLSheet.Cells(4, 24).value = "CGSTAmt "
                XLSheet.Cells(4, 25).value = "SGST % "
                XLSheet.Cells(4, 26).value = "SGSTAmt "
                XLSheet.Cells(4, 27).value = "IGST% "
                XLSheet.Cells(4, 28).value = "IGSTAmt "
                XLSheet.Cells(4, 29).value = "Bill Value"
                XLSheet.Cells(4, 30).value = "Purchase Value"

                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AD" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit

                'XLSheet.Range("H:H").NumberFormat = "#,##,##,##,###.000#"
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
                    GBal = 0
                    GCommwt = 0
                    gnetwt = 0
                    GGrswt = 0
                    GWeiwt = 0
                    GCot = 0
                    GPurCst = 0
                    GCGST = 0
                    GSGST = 0
                    GIGST = 0
                    GBill = 0
                    GPur = 0
                
                For I = 0 To Rs.RecordCount - 1
                    
                    m_ROW = XLSheet.UsedRange.Rows.Count
                                    
                    XLSheet.Cells(Max, 1) = I + 1
                    XLSheet.Cells(Max, 2) = Trim(Rs(0))
                    XLSheet.Cells(Max, 3) = Trim(Rs(1))
                    XLSheet.Cells(Max, 4) = Trim(Rs(2))
                    XLSheet.Cells(Max, 5) = Trim(Rs(3))
                    XLSheet.Cells(Max, 6) = Trim(Rs(4))
                    XLSheet.Cells(Max, 7) = Trim(Rs(5))
                    XLSheet.Cells(Max, 8) = Trim(Rs(6))
                    XLSheet.Cells(Max, 9) = Trim(Rs(7))
                    XLSheet.Cells(Max, 10) = Trim(Rs(8))
                    XLSheet.Cells(Max, 11) = Trim(Rs(9))
                    XLSheet.Cells(Max, 12) = Trim(Rs(10))
                    XLSheet.Cells(Max, 13) = Trim(Rs(11))
                    XLSheet.Cells(Max, 14) = Trim(Rs(12) + Rs(13))
                    GBal = GBal + Trim(Rs(12) + Rs(13))
                    XLSheet.Cells(Max, 15) = Trim(Rs(14))
                    GCommwt = GCommwt + Trim(Rs(14))
                    XLSheet.Cells(Max, 16) = Trim(Rs(15))
                    gnetwt = gnetwt + Trim(Rs(15))
                    XLSheet.Cells(Max, 17) = Trim(Rs(16))
                    GGrswt = GGrswt + Trim(Rs(16))
                    XLSheet.Cells(Max, 18) = Trim(Rs(17))
                    GWeiwt = GWeiwt + Trim(Rs(17))
                    XLSheet.Cells(Max, 19) = Trim(Rs(18))
                    XLSheet.Cells(Max, 20) = Format(Trim(Rs(19)), "##,##,##,##,###.##")
                    XLSheet.Cells(Max, 21) = Format(Trim(Rs(20)), "##,##,##,##,###.##")
                    GCot = GCot + Trim(Rs(20))
                    XLSheet.Cells(Max, 22) = Format(Trim(Rs(21)), "##,##,##,##,###.##")
                    GPurCst = GPurCst + Trim(Rs(21))
                    XLSheet.Cells(Max, 23) = Trim(Rs(22))
                    If Trim(Rs(23)) > 0 Then
                        XLSheet.Cells(Max, 24) = Format(Trim(Rs(23)), "##,##,##,##,###.##")
                    End If
                    GCGST = GCGST + Trim(Rs(23))
                    XLSheet.Cells(Max, 25) = Trim(Rs(24))
                    If Trim(Rs(25)) > 0 Then
                        XLSheet.Cells(Max, 26) = Format(Trim(Rs(25)), "##,##,##,##,###.##")
                    End If
                    GSGST = GSGST + Trim(Rs(25))
                    XLSheet.Cells(Max, 27) = Trim(Rs(26))
                    If Trim(Rs(27)) > 0 Then
                        XLSheet.Cells(Max, 28) = Format(Trim(Rs(27)), "##,##,##,##,###.##")
                    End If
                    GIGST = GIGST + Trim(Rs(27))
                    If Trim(Rs(28)) > 0 Then
                        XLSheet.Cells(Max, 29) = Format(Trim(Rs(28)), "##,##,##,##,###.##")
                    End If
                    GBill = GBill + Trim(Rs(28))
                    If Trim(Rs(29)) > 0 Then
                        XLSheet.Cells(Max, 30) = Format(Trim(Rs(29)), "##,##,##,##,###.##")
                    End If
                    GPur = GPur + Trim(Rs(29))
                    
'                    XLSheet.Cells(Max, 8) = Format(Rs(6), "##,##,##,##,###.###")
    
                    Rs.MoveNext
                    Max = Max + 1
                
                Next I
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count + 1
                
                Glr = "A" & m_ROW
                GHR = "AD" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                            
                Max = Max + 1
                
                XLSheet.Cells(Max, 5) = "Grand total"
                
                XLSheet.Cells(Max, 14) = GBal
                XLSheet.Cells(Max, 15) = GCommwt
                XLSheet.Cells(Max, 16) = gnetwt
                XLSheet.Cells(Max, 17) = GGrswt
                XLSheet.Cells(Max, 18) = GWeiwt
                XLSheet.Cells(Max, 21) = Format(GCot, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 22) = Format(GPurCst, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 24) = Format(GCGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 26) = Format(GSGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 28) = Format(GIGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 29) = Format(GBill, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 30) = Format(GPur, "##,##,##,##,###.##")
                              
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "AD" & m_ROW

                    
          

'                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "AD" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "AD" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                
                
                
                
                

                
                
                
                
                
                
                
                
                
                
                    
                Myxl.Application.Visible = True
                
                Screen.MousePointer = 0
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If


End Sub



Private Sub purchasedatewiseexcel()

' Purchase Datewise begin

    
    
    tmpFile = "Purchase Order Datewise"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    Set Myxl = New Excel.Application
    
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Purchase Order Datewise"
    
    ExcelBtn = "Excel"
        Set XLSheet = Myxl.ActiveSheet
 
        Set Rs = New Recordset
        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE (divcode='" & Divcode & "') ", DB
        
       
        XLSheet.Cells(1, 5).value = Rs(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        XLSheet.Range("A1", "M1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = Rs(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        XLSheet.Range("A2", "M2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

        XLSheet.Cells(3, 2).value = "Purchase Order List From " & Format(DTPicker2.value, "DD/MM/YY") & " To " & Format(DTPicker3.value, "DD/MM/YY") & "                                                                                Option : Datewise"

        XLSheet.Range("A3", "M3").MergeCells = True
'        XLSheet.Range("A3", "H3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3", "M3").Font
        .Bold = True
        .Size = 11
        .Color = vbBlue
        End With
                
'        fdt = Format(DTPicker1.value, "yyyy-mm-dd")
'        Tdt = Format(DTPicker3.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
                  
            If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
            
            
                       L_God = ""
                     L_aread_God = ""
                     divcount = 0
            
                           For I = 1 To List_div.ListItems.Count
            
                                If List_div.ListItems.Item(I).Checked = True Then
                                    sRecCount = Trim(List_div.ListItems(I).SubItems(1))
                                    If L_God <> "" Then
                                        L_God = L_God + "," + "" + Trim(sRecCount) + ""
                                         L_aread_God = L_aread_God + "," + "" + Trim(sRecCount) + ""
                                         divcount = divcount + 1
                                    Else
                                        L_God = "" + Trim(sRecCount) + ""
                                        L_aread_God = "" + Trim(sRecCount) + ""
                                        divcount = divcount + 1
                                    End If
                                End If
                            Next
            
            
            
            
                        If L_God = "" Then
                            MsgBox "Please Select Any Division ", vbInformation, head
                            Exit Sub
                        Else
                            If divcount > 1 Then
                            'L_God = "'" + L_God + "'"
                            End If
                        End If
            '
                Rs.Open "exec Ksp_RMI_PODatewiseExcel '" & L_God & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockPessimistic

            
            Else
                    Rs.Open "exec Ksp_RMI_PODatewiseExcel '" & Divcode & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(DTPicker3.value, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockPessimistic
            End If
            If Rs.RecordCount > 0 Then
                
               XLSheet.Cells(4, 9).value = "<---------      Order Quantity      --------->"
                XLSheet.Range("I4", "K4").MergeCells = True
                 With XLSheet.Range("I4", "K4").Font
                    .Bold = True
                    .Size = 9
                    .Color = vbBlue
                 End With
        
                XLSheet.Cells(5, 1).value = "PO. Date."
                XLSheet.Cells(5, 2).value = "PO.No."
                XLSheet.Cells(5, 3).value = "Variety Name."
                XLSheet.Cells(5, 4).value = "Supplier Name."
                XLSheet.Cells(5, 5).value = "Agent Name."
                XLSheet.Cells(5, 6).value = "Station Name."
                XLSheet.Cells(5, 7).value = "Rate/Unit."
                XLSheet.Cells(5, 8).value = "Delivery Type."
                XLSheet.Cells(5, 9).value = "Bales."
                XLSheet.Cells(5, 10).value = "Rec. Bales."
                XLSheet.Cells(5, 11).value = "Kgs."
                XLSheet.Cells(5, 12).value = "Due Date."
                XLSheet.Cells(5, 13).value = "Unit."
                
             
                 
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "M" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit

                'XLSheet.Range("H:H").NumberFormat = "#,##,##,##,###.000#"
                
                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                
'                    GBal = 0
                    Gbales = 0
                    Gkgs = 0
'                    GGrswt = 0
'                    GValue = 0
'                    GWeiwt = 0
'                    GCot = 0
'                    GPurCst = 0
'                    GCGST = 0
'                    GSGST = 0
'                    GIGST = 0
'                    GBill = 0
'                    GPur = 0
                 Dim podate, Dbales, dkgs As String
                 podate = ""
                
                Dbales = 0
                          dkgs = 0
                          
                For I = 0 To Rs.RecordCount - 1
                    
                    m_ROW = XLSheet.UsedRange.Rows.Count
                       Myxl.Application.Visible = True
                    If podate = "" Then
                        XLSheet.Cells(Max, 1) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                        XLSheet.Cells(Max, 1).NumberFormat = "DD/MM/YYYY"
                        podate = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                         
                        
                          Glr = "A" & Max
                            GHR = "A" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 10
                                .Font.Color = vbBlack
                                .Font.Bold = True
                        End With
                        Max = Max + 1
                        
                    ElseIf CDate(podate) <> CDate(Trim(Rs("contdt"))) Then
                         
                          XLSheet.Cells(Max, 4) = "Day Total:"
                          XLSheet.Cells(Max, 9) = Dbales
                          XLSheet.Cells(Max, 11) = dkgs
                           XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                            XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                            
                               Glr = "D" & Max
                            GHR = "L" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 11
                                .Font.Color = vbBlue
                                .Font.Bold = True
                        End With
                       '  Myxl.Application.Visible = True
                          
                          Dbales = 0
                          dkgs = 0
                          
                         Max = Max + 1
                         
                         XLSheet.Cells(Max, 1) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                        XLSheet.Cells(Max, 1).NumberFormat = "DD/MM/YYYY"
                        podate = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
        
                        
                         
                            Glr = "A" & Max
                            GHR = "A" & Max
                        
                         With XLSheet.Range(Glr, GHR)
                                .Borders.LineStyle = xlThin
                                .Font.Size = 10
                                .Font.Color = vbBlack
                                .Font.Bold = True
                        End With
                            Max = Max + 1
                    End If
                    
               
                
                
                   ' XLSheet.Cells(Max, 1) = I + 1
                    XLSheet.Cells(Max, 2) = Trim(Rs("contno"))
                   ' XLSheet.Cells(Max, 3) = Format(Trim(Rs("contdt")), "DD/MM/YYYY")
                    ' XLSheet.Cells(Max, 3).NumberFormat = "DD/MM/YYYY"
                    XLSheet.Cells(Max, 3) = Trim(Rs("varname"))
                    XLSheet.Cells(Max, 4) = Trim(Rs("SupplierName"))
                    XLSheet.Cells(Max, 5) = Trim(Rs("BrokerName"))
                    XLSheet.Cells(Max, 6) = Trim(Rs("areaname"))
                    XLSheet.Cells(Max, 7) = val(Rs("CandyRate"))
                    XLSheet.Cells(Max, 8) = Trim(Rs("unit"))
                    XLSheet.Cells(Max, 9) = val(Rs("ordqty"))
                    XLSheet.Cells(Max, 10) = IIf(IsNull(Rs("recqty")) = True, 0, val(Rs("recqty")))  ' IIf(IsNull(Rs("recqty")), 0, val(Rs("recqty")))
                    XLSheet.Cells(Max, 11) = val(Rs("ordkgs"))
                    XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                    XLSheet.Cells(Max, 10).NumberFormat = "#,##,##,##,###.000#"
                    XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                 
                    XLSheet.Cells(Max, 12) = Format(Trim(Rs("duedate")), "DD/MM/YYYY")
                     XLSheet.Cells(Max, 12).NumberFormat = "DD/MM/YYYY"
                      XLSheet.Cells(Max, 13) = Trim(Rs("abbr"))
                      
                      Dbales = Dbales + val(Rs("ordqty"))
                     dkgs = dkgs + val(Rs("ordkgs"))
                     
                     Gbales = Gbales + val(Rs("ordqty"))
                     Gkgs = Gkgs + val(Rs("ordkgs"))
                     
                     
'                    GBal = GBal + Trim(Rs(1) + Rs(2))
'                    XLSheet.Cells(Max, 4) = Trim(Rs(3))
'                    GCommwt = GCommwt + Trim(Rs(3))
'                    XLSheet.Cells(Max, 5) = Trim(Rs(4))
'                    gnetwt = gnetwt + Trim(Rs(4))
'                    XLSheet.Cells(Max, 6) = Trim(Rs(5))
'                    GGrswt = GGrswt + Trim(Rs(5))
'                    XLSheet.Cells(Max, 7) = Format(Trim(Rs(6)), "##,##,##,##,###.##")
'                    GValue = GValue + Trim(Rs(6))
'                    If Trim(Rs(7)) > 0 Then
'                        XLSheet.Cells(Max, 8) = Format(Trim(Rs(7)), "##,##,##,##,###.##")
'                    End If
                   
'                    If Trim(Rs(8)) > 0 Then
'                        XLSheet.Cells(Max, 9) = Format(Trim(Rs(8)), "##,##,##,##,###.##")
'                    End If
'                    GSGST = GSGST + Trim(Rs(8))
'                    If Trim(Rs(9)) > 0 Then
'                        XLSheet.Cells(Max, 10) = Format(Trim(Rs(9)), "##,##,##,##,###.##")
'                    End If
'                    GIGST = GIGST + Trim(Rs(9))
'                    If Trim(Rs(10)) > 0 Then
'                        XLSheet.Cells(Max, 11) = Format(Trim(Rs(10)), "##,##,##,##,###.##")
'                    End If
'                    GPurCst = GPurCst + Trim(Rs(10))
'                    If Trim(Rs(11)) > 0 Then
'                        XLSheet.Cells(Max, 12) = Format(Trim(Rs(11)), "##,##,##,##,###.##")
'                    End If
'                    GBill = GBill + Trim(Rs(11))
'                    If Trim(Rs(12)) > 0 Then
'                        XLSheet.Cells(Max, 13) = Format(Trim(Rs(12)), "##,##,##,##,###.##")
'                    End If
'                    GPur = GPur + Trim(Rs(12))
                    
    
                    Rs.MoveNext
                    Max = Max + 1
                
                Next I
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count + 1
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                            
                Max = Max + 1
                
                XLSheet.Cells(Max, 4) = "Grand total"
                
'                XLSheet.Cells(Max, 3) = GBal
'                XLSheet.Cells(Max, 4) = GCommwt
'                XLSheet.Cells(Max, 5) = gnetwt
'                XLSheet.Cells(Max, 6) = GGrswt
'                XLSheet.Cells(Max, 7) = Format(GValue, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 9) = Format(Gbales, "##,##,##,##,###.##")
'                XLSheet.Cells(Max, 9) = Format(GSGST, "##,##,##,##,###.##")
                XLSheet.Cells(Max, 11) = Format(Gkgs, "##,##,##,##,###.##")
'                XLSheet.Cells(Max, 11) = Format(GPurCst, "##,##,##,##,###.##")
'                XLSheet.Cells(Max, 12) = Format(GBill, "##,##,##,##,###.##")
'                XLSheet.Cells(Max, 13) = Format(GPur, "##,##,##,##,###.##")
                   XLSheet.Cells(Max, 9).NumberFormat = "#,##,##,##,###.000#"
                    XLSheet.Cells(Max, 11).NumberFormat = "#,##,##,##,###.000#"
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW

                    
          

'                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                m = 4
                lr = "A" & m
                HR = "M" & m_ROW
                
                With XLSheet.Range(lr, HR)
                    .Borders.LineStyle = xlThin
                    .Font.Size = 9
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
                
                Glr = "A" & m_ROW
                GHR = "M" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                
                
                  XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                
                  MsgBox "Excel File Downloaded Successfully", vbInformation, head
             Else
                MsgBox "No Record(s)", vbOKCancel, head
                Exit Sub
            End If
                
                

' Purchase Datewise End

End Sub





Private Sub load_DivisionChkListbox()
On Error GoTo DataCombo1_Change_Error

    Dim li As ListItem
    Set temprs = New Recordset
 
   
    
       temprs.Open " Select Distinct divcode  type, divname as description,abbr as abbreviation from pp_divmas Order by type asc", DB, adOpenStatic, adLockBatchOptimistic
   
  
    List_div.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_div.ListItems.ADD(, , temprs!Description)
            List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!Type
             List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!abbreviation
            temprs.MoveNext
        Loop
    End If
    temprs.Close
            
    Check4.value = 1
    Call Check4_Click
            

    intervalMinutes = -1
    
    
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub




Private Sub Text1_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_div.ListItems.Count
        If InStr(1, List_div.ListItems(I).Text, Trim(Text1.Text), vbTextCompare) > 0 Then
                List_div.ListItems(I).Selected = True
                List_div.ListItems(I).Bold = True
                List_div.ListItems(I).ForeColor = vbBlue
                List_div.ListItems(I).EnsureVisible
                Exit For
        
        Else
                List_div.ListItems(I).Bold = False
                List_div.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

End Sub



