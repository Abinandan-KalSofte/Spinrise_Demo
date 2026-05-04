VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmReport 
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11400
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "&Customized"
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
      Left            =   5280
      TabIndex        =   44
      Top             =   5730
      Visible         =   0   'False
      Width           =   1395
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   600
      Top             =   1530
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton cmdCrystalReport 
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
      Left            =   3450
      TabIndex        =   5
      Top             =   5730
      Visible         =   0   'False
      Width           =   1590
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1830
      TabIndex        =   12
      Top             =   6180
      Visible         =   0   'False
      Width           =   6720
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   2520
         TabIndex        =   6
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   4410
         TabIndex        =   7
         Top             =   240
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
         Left            =   540
         TabIndex        =   13
         Top             =   270
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4260
      Left            =   1860
      TabIndex        =   0
      Top             =   1095
      Width           =   6675
      _ExtentX        =   11774
      _ExtentY        =   7514
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "frmReport.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   4170
         Left            =   120
         TabIndex        =   8
         Top             =   30
         Width           =   6420
         Begin VB.OptionButton Option6 
            Caption         =   "Option6"
            Height          =   495
            Left            =   600
            TabIndex        =   43
            Top             =   0
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.ComboBox cboissue 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   360
            ItemData        =   "frmReport.frx":001C
            Left            =   1755
            List            =   "frmReport.frx":0023
            TabIndex        =   40
            Top             =   3675
            Visible         =   0   'False
            Width           =   4485
         End
         Begin VB.ComboBox cboCategory 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   360
            ItemData        =   "frmReport.frx":0033
            Left            =   1740
            List            =   "frmReport.frx":003A
            TabIndex        =   39
            Top             =   3240
            Visible         =   0   'False
            Width           =   4485
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Datewise"
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
            Left            =   2175
            TabIndex        =   36
            Top             =   3780
            Value           =   -1  'True
            Visible         =   0   'False
            Width           =   1125
         End
         Begin VB.OptionButton Option2 
            Caption         =   "Areawise"
            Enabled         =   0   'False
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
            Left            =   3795
            TabIndex        =   34
            Top             =   3735
            Visible         =   0   'False
            Width           =   1530
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Supplierwise"
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
            Left            =   1950
            TabIndex        =   33
            Top             =   3705
            Visible         =   0   'False
            Width           =   1440
         End
         Begin VB.CheckBox chkStock 
            Caption         =   "Stock"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   5280
            TabIndex        =   32
            Top             =   3720
            Visible         =   0   'False
            Width           =   825
         End
         Begin MSComCtl2.DTPicker dtpToDate 
            Height          =   345
            Left            =   4740
            TabIndex        =   2
            Top             =   585
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   145162241
            CurrentDate     =   37820
         End
         Begin MSComCtl2.DTPicker dtpFromDate 
            Height          =   345
            Left            =   1740
            TabIndex        =   1
            Top             =   600
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   145162241
            CurrentDate     =   37578
         End
         Begin MSDataListLib.DataCombo cboFromNo 
            Height          =   360
            Left            =   1740
            TabIndex        =   21
            Top             =   1470
            Width           =   1500
            _ExtentX        =   2646
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
         Begin MSDataListLib.DataCombo cboToNo 
            Height          =   360
            Left            =   4740
            TabIndex        =   22
            Top             =   1470
            Width           =   1500
            _ExtentX        =   2646
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
         Begin MSDataListLib.DataCombo cboFromSupplier 
            Height          =   360
            Left            =   1740
            TabIndex        =   23
            Top             =   1920
            Width           =   4500
            _ExtentX        =   7938
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
         Begin MSDataListLib.DataCombo cboToSupplier 
            Height          =   360
            Left            =   1740
            TabIndex        =   24
            Top             =   2370
            Width           =   4500
            _ExtentX        =   7938
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
         Begin MSDataListLib.DataCombo cboToVariety 
            Height          =   360
            Left            =   1740
            TabIndex        =   25
            Top             =   3240
            Width           =   4500
            _ExtentX        =   7938
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
         Begin MSDataListLib.DataCombo cboFromVariety 
            Height          =   360
            Left            =   1740
            TabIndex        =   26
            Top             =   2820
            Width           =   4500
            _ExtentX        =   7938
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
         Begin MSDataListLib.DataCombo cboFromLotNo 
            Height          =   360
            Left            =   1740
            TabIndex        =   28
            Top             =   1020
            Width           =   1500
            _ExtentX        =   2646
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
         Begin MSDataListLib.DataCombo cboToLotNo 
            Height          =   360
            Left            =   4740
            TabIndex        =   29
            Top             =   1020
            Width           =   1500
            _ExtentX        =   2646
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
         Begin VB.ComboBox cboType 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000002&
            Height          =   360
            ItemData        =   "frmReport.frx":004A
            Left            =   1725
            List            =   "frmReport.frx":004C
            TabIndex        =   27
            Top             =   1005
            Width           =   4485
         End
         Begin MSDataListLib.DataCombo cboStateFrom 
            Height          =   360
            Left            =   1740
            TabIndex        =   41
            Top             =   3255
            Visible         =   0   'False
            Width           =   4500
            _ExtentX        =   7938
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
         Begin MSDataListLib.DataCombo cbostateTo 
            Height          =   360
            Left            =   1740
            TabIndex        =   42
            Top             =   3675
            Visible         =   0   'False
            Width           =   4500
            _ExtentX        =   7938
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
         Begin VB.Label lblCat 
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
            Height          =   315
            Left            =   150
            TabIndex        =   38
            Top             =   3300
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblType 
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
            Height          =   315
            Left            =   150
            TabIndex        =   37
            Top             =   3690
            Visible         =   0   'False
            Width           =   1215
         End
         Begin VB.Label lblOpt 
            Caption         =   "Option"
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
            Left            =   150
            TabIndex        =   35
            Top             =   3720
            Visible         =   0   'False
            Width           =   1395
         End
         Begin VB.Label lbllotno 
            Caption         =   "From Mill Lot No. "
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
            Left            =   150
            TabIndex        =   31
            Top             =   1035
            Width           =   1455
         End
         Begin VB.Label Label5 
            Caption         =   "To Mill Lot No."
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
            Left            =   3360
            TabIndex        =   30
            Top             =   1005
            Width           =   1275
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "To Variety "
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
            TabIndex        =   20
            Top             =   3315
            Width           =   945
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "From Variety"
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
            TabIndex        =   19
            Top             =   2880
            Width           =   1065
         End
         Begin VB.Label Label7 
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
            Left            =   150
            TabIndex        =   18
            Top             =   1980
            Width           =   1170
         End
         Begin VB.Label Label4 
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
            Height          =   195
            Left            =   150
            TabIndex        =   17
            Top             =   2430
            Width           =   990
         End
         Begin VB.Label Label6 
            Caption         =   "To Sample No."
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
            Left            =   3360
            TabIndex        =   16
            Top             =   1500
            Width           =   1275
         End
         Begin VB.Label LblFLTN 
            Caption         =   "From Sample No."
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
            Left            =   150
            TabIndex        =   15
            Top             =   1515
            Width           =   1455
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Option"
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
            TabIndex        =   14
            Top             =   1110
            Width           =   1425
         End
         Begin VB.Label lblTitle 
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
            Left            =   15
            TabIndex        =   11
            Top             =   90
            Width           =   6375
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
            Left            =   3375
            TabIndex        =   10
            Top             =   645
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
            Left            =   150
            TabIndex        =   9
            Top             =   645
            Width           =   885
         End
      End
   End
   Begin VB.CommandButton cmdExit 
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
      Left            =   6870
      TabIndex        =   4
      Top             =   5730
      Width           =   1395
   End
   Begin VB.CommandButton cmdReport 
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
      Left            =   2370
      TabIndex        =   3
      Top             =   5730
      Width           =   915
   End
End
Attribute VB_Name = "frmReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rstReport As Recordset
Dim iRow As Integer
Dim iCount As Integer
Dim rstLoad As Recordset
Dim iLenght, iSelect As Integer
Dim strDivision As String
Dim U As String
Dim v As String
Dim W As String
Dim fltn As Integer, tltn As Integer
Dim FVar As String
Dim TVar As String
Dim fstat As String
Dim tstat As String
Dim issuetype As String
Dim catcd As String
Dim vrectype As String

Private Sub cmdCrystalReport_Click()
    Dim fSupplier As String
    Dim tSupplier As String
    Dim fVariety As String
    Dim tVariety As String
    Dim fdate As String
    Dim tdate As String
    Dim sql As String
    Dim rec, Rs As Recordset
    Dim U As String
    Dim v As String
    Dim W As String
    Dim fltn As Integer, tltn As Integer
    Dim FVar As String
    Dim TVar As String
    Dim fstat As String
    Dim tstat As String
    Dim issuetype As String
    Dim catcd As String
    Dim vrectype As String
intervalMinutes = -1
    Select Case Repindex
        Case 3005
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
            iSelect = Len(cboFromVariety.Text)
            iLenght = InStr(cboFromVariety.Text, " --") + 3
            
            fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
            
            iSelect = Len(cboToVariety.Text)
            iLenght = InStr(cboToVariety.Text, " --") + 3
            
            tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
            
            On Error GoTo errorsub
            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_Customized_IssDateReport'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_Customized_IssDateReport"
            End If
            
            Set Rs = New Recordset
            Rs.Open "select distinct a.docdt from rm_issb a, rm_var b,rm_lot p where docdt between '" & fdate & "' and '" & tdate & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and p.lotno between " & val(cboFromLotNo.Text) & " and " & val(cboToLotNo.Text) & " and p.plotno between '" & Trim(cboFromNo.Text) & "' and '" & Trim(cboToNo.Text) & "' and a.varcode between '" & fVariety & "' and '" & tVariety & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode group by b.varname, a.docno, a.docdt,p.plotno,p.lotno", DB, adOpenStatic
            
            If Rs.EOF Then
                MsgBox "Sorry ! No records are found for the details entered", vbInformation, head
                Screen.MousePointer = 0
                Exit Sub
            End If
            Rs.Close
            Set Rs = Nothing
            
            Set rec = New Recordset
            rec.Open "select distinct a.docdt, b.varname, count(a.baleno)as bales,sum(isnull(a.actisskgs,0)) as Iss_wt,sum(isnull(a.isskgs,0)) as net_wt,p.PlotNo , p.LOTNO into RMI_Temp_Customized_IssDateReport from rm_issb a, rm_var b,rm_lot p where docdt between '" & fdate & "' and '" & tdate & "' and a.varcode=b.varcode AND A.ISSUED='Y' and a.Divcode='" & Divcode & "' and p.lotno between " & val(cboFromLotNo.Text) & " and " & val(cboToLotNo.Text) & " and p.plotno between '" & Trim(cboFromNo.Text) & "' and '" & Trim(cboToNo.Text) & "' and a.varcode between '" & fVariety & "' and '" & tVariety & "' and a.divcode = p.divcode and a.lotno = p.lotno and a.LOTDT = p.LOTDT And a.Varcode = p.Varcode group by b.varname, a.docdt,p.plotno,p.lotno", DB, adOpenStatic
            
            DB.CommitTrans
    
            With CR
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Customized_IssDateReport.rpt"
        
                .ParameterFields(0) = "name;" & "Datewise Issue List from " & Format(dtpFromDate, "dd/MM/yy") & " to " & Format(dtpToDate, "dd/MM/yy") & ""
                .ParameterFields(1) = "divname;" & divname
                
                .WindowState = crptMaximized
                .WindowShowPrintBtn = True
                
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub
            
 Case 3330
 
 FLot = cboFromLotNo
 TLot = cboToLotNo
'FTrans = Left(cboFromSupplier, 4)
 'TTrans = Left(cboToSupplier, 4)
  
 FTrans = Mid$(cboFromSupplier, 1, InStr(1, cboFromSupplier, "-") - 1)
 TTrans = Mid$(cboToSupplier, 1, InStr(1, cboToSupplier, "-") - 1)
 
 
        If Option3.value = True Then
        Dim ClsfreDtlsDate As New clsCrystal
     '   Set ClsfreDtlsDate.cryRept = P_FrieghtDtls_Date
'     If UCase(CustID) = "BALKRISHNA" Then
'        Set ClsfreDtlsDate.cryRept = Cry_FreightDet_datwise
'     Else
      Set ClsfreDtlsDate.cryRept = Cry_Datewise
  '   End If
     
        
        ClsfreDtlsDate.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@FLot_No;" & FLot & ""
        CrystalReport1.ParameterFields(4) = "@TLot_No;" & TLot & ""
        CrystalReport1.ParameterFields(5) = "@FTrans;" & FTrans & ""
        CrystalReport1.ParameterFields(6) = "@TTrans;" & TTrans & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        End If
        
        If Option2.value = True Then
        Dim ClsfreDtlsFrei As New clsCrystal
      '  Set ClsfreDtlsFrei.cryRept = P_FrieghtDtls_Transport
         Set ClsfreDtlsFrei.cryRept = Cry_freightTransport 'Cry_Transport
        ClsfreDtlsFrei.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@FLot_No;" & FLot & ""
        CrystalReport1.ParameterFields(4) = "@TLot_No;" & TLot & ""
        CrystalReport1.ParameterFields(5) = "@FTrans;" & FTrans & ""
        CrystalReport1.ParameterFields(6) = "@TTrans;" & TTrans & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        End If
        
        
         If Option6.value = True Then
        
         
        
        Dim ClsfreDtlsSupplier As New clsCrystal
        Set ClsfreDtlsSupplier.cryRept = P_FrieghtDtls_Supplier
        ClsfreDtlsSupplier.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@FLot_No;" & FLot & ""
        CrystalReport1.ParameterFields(4) = "@TLot_No;" & TLot & ""
        CrystalReport1.ParameterFields(5) = "@FTrans;" & FTrans & ""
        CrystalReport1.ParameterFields(6) = "@TTrans;" & TTrans & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        End If
        
Case 3654
On Error Resume Next
 fno = cboFromLotNo
 TNO = cboToLotNo

                   
        Dim ClsPendingLot As New clsCrystal
        Set ClsPendingLot.cryRept = Cry_RMIMixingReceiptReturn
        ClsPendingLot.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
        
        CrystalReport1.ParameterFields(1) = "@FNo;" & fno & ""
        CrystalReport1.ParameterFields(2) = "@TNo;" & TNO & ""
   
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
                
        
        
        
Case 3007
 fdate = Format(dtpFromDate.value, "yyyy-mm-dd")
 tdate = Format(dtpToDate.value, "yyyy-mm-dd")
 FLot = cboFromLotNo
 TLot = cboToLotNo
 FTrans = Right(Trim(cboFromSupplier.Text), 7)
 TTrans = Right(Trim(cboToSupplier.Text), 7)
                   
        Dim ClsPendingissret As New clsCrystal
        Set ClsPendingissret.cryRept = P_PendingLot_Date
        ClsPendingissret.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@FLot;" & FLot & ""
        CrystalReport1.ParameterFields(4) = "@TLot;" & TLot & ""
        CrystalReport1.ParameterFields(5) = "@Fsup;" & FTrans & ""
        CrystalReport1.ParameterFields(6) = "@Tsup;" & TTrans & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        
        
        
        Case 3000
        
        fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
    fSupplier = Right(Trim(cboFromSupplier.Text), 7)
    tSupplier = Right(Trim(cboToSupplier.Text), 7)
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)


        Dim SampleRegister As New clsCrystal
        Set SampleRegister.cryRept = P_SampleRegister_Date
        SampleRegister.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & fdate & "" 'Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & tdate & "" ' Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@POTYPE;" & Trim(cboType.Text) & ""
        CrystalReport1.ParameterFields(4) = "@FSNO;" & Trim(cboFromNo.Text) & ""
        CrystalReport1.ParameterFields(5) = "@TSNO;" & Trim(cboToNo.Text) & ""
        CrystalReport1.ParameterFields(6) = "@Fsup;" & fSupplier & ""
         CrystalReport1.ParameterFields(7) = "@Tsup;" & tSupplier & ""
          CrystalReport1.ParameterFields(8) = "@Fvar;" & fVariety & ""
           CrystalReport1.ParameterFields(9) = "@Tvar;" & tVariety & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        Case 3006
          
            On Error GoTo errorsub
            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_Periodical_StockStatement_Stationwise'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_Periodical_StockStatement_Stationwise"
            End If
            
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
            
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
            intervalMinutes = -1
            fSupplier = Right(Trim(cboFromSupplier.Text), 3)
            tSupplier = Right(Trim(cboToSupplier.Text), 3)
            iSelect = Len(cboFromVariety.Text)
            iLenght = InStr(cboFromVariety.Text, " --") + 3
            
            fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
            
            iSelect = Len(cboToVariety.Text)
            iLenght = InStr(cboToVariety.Text, " --") + 3
            
            tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    
            U = fdate:    v = tdate
            W = Trim(cboCategory.Text)
            fltn = Trim(cboFromLotNo.Text)
            tltn = Trim(cboToLotNo.Text)
            FVar = fVariety
            TVar = tVariety
            fstat = fSupplier
            tstat = tSupplier
            issuetype = Trim(cboissue.Text)
            
            catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
            vrectype = Trim(Left(issuetype, 3))

            strSQL = " select C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + "Into RMI_Temp_Periodical_StockStatement_Stationwise"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, v)
            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND A.lotno BETWEEN '" & fltn & "' AND '" & tltn & "'AND b.areacd BETWEEN '" & Trim(fstat) & "' AND '" & Trim(tstat) & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
            strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
    
            If Trim(catcd) <> "All" Then
                If vrectype <> "All" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    Else
                        strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    End If
                Else
                        strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                End If
            Else
                If vrectype <> "All" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    End If
                Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,A.LotNo,A.lotdt,D.Station,B.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                End If
            End If
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
    
'            If rs1.EOF Then
'                MsgBox "No Records Found", vbInformation, head
'                Screen.MousePointer = 0
'                Exit Sub
'            End If
            intervalMinutes = -1
            DB.CommitTrans
    
'            With CR
'                .Connect = connectstring
'                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Periodical_StockStatement_Stationwise.rpt"
'
'                .ParameterFields(0) = "name;" & "Raw Material Stock Statement Stationwise From " & Format(dtpFromDate, "dd/MM/yy") & " To " & Format(dtpToDate, "dd/MM/yy") & ""
'                .ParameterFields(1) = "divname;" & DIVNAME
'
'                .WindowState = crptMaximized
'                .PrinterCopies = 1
'                SendKeys "{enter}"
'                .Action = True
'            End With

'            FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\rpt_Periodical_StockStatement_Stationwise.rpt"
'            FrmRpt.RptHead = "2A"
'            parameter1 = "Raw Material Stock Statement Stationwise From " & Format(dtpFromDate, "dd/MM/yy") & " To " & Format(dtpToDate, "dd/MM/yy")
'            parameter2 = DIVNAME
'            FrmRpt.Show
'            Me.MousePointer = 0
'
          intervalMinutes = -1
        Dim clsCryRpt1 As New clsCrystal
        Set clsCryRpt1.cryRept = Rep_Stockstation
        clsCryRpt1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.Formulas(0) = "div='" & divname & "'"
        CrystalReport1.Formulas(1) = "rep='" & "Raw Material Stock Statement Stationwise From " & Format(dtpFromDate, "dd/mm/yy") & " To " & Format(dtpToDate, "dd/mm/yy") & "'"
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Exit Sub
        
    End Select
    intervalMinutes = -1
    
    Exit Sub
errorsub:
    MsgBox Err.Description, vbCritical
    DB.RollbackTrans
End Sub

Private Sub CmdExit_Click()
On Error GoTo cmdexit_Click_Error

    Unload Me
intervalMinutes = -1
Exit Sub
cmdexit_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdexit_Click of Form frmReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
Dim fSupplier As String
Dim tSupplier As String
Dim fVariety As String
Dim fPlotno As String
Dim tPlotno As String
Dim U As String
Dim v As String
Dim W As String
Dim fltn As String, tltn As String
Dim FVar As String
Dim TVar As String
Dim fstat As String
Dim tstat As String
Dim issuetype As String
Dim catcd As String
Dim vrectype As String
Dim tVariety As String
Dim fdate As String
Dim tdate As String
On Error GoTo cmdreport_Click_Error
intervalMinutes = -1
Select Case Repindex
    Case 3026
        Screen.MousePointer = 11
        fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
        
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
        
        iSelect = Len(cboFromVariety.Text)
        iLenght = InStr(cboFromVariety.Text, " --") + 3
        fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
        
        iSelect = Len(cboToVariety.Text)
        iLenght = InStr(cboToVariety.Text, " --") + 3
        tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
        
        fPlotno = Trim(cboFromLotNo.Text)
        
        tPlotno = Trim(cboToLotNo.Text)
        
        issuetype = Trim(cboissue.Text)
        
        catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
        vrectype = Trim(Left(issuetype, 3))
        
        Call SalujaStockLotwise(catcd, vrectype)
                
        Set Rs = New Recordset
        Rs.Open " SELECT  * FROM StockLotwisetemp1", DB, adOpenStatic
                
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
        
        crr.Reset
        crr.Connect = connectstring
        
        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Saluja_LotwiseStockStatement.rpt"
        crr.ParameterFields(0) = "@FromDate;" & Format(DTPicker2.value, "dd/MM/yy")
        crr.ParameterFields(1) = "@ToDate;" & Format(DTPicker3.value, "dd/MM/yy")
        crr.ParameterFields(2) = "@Variety;" & Mid$(Combo2.Text, 1, InStr(1, Combo2.Text, "-") - 1)
        crr.ParameterFields(3) = "@DIVNAME;" & divname
        crr.PrinterCopies = 1
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        MousePointer = 0


    Case 3021
        Screen.MousePointer = 11
        fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
        
        iSelect = Len(cboFromVariety.Text)
        iLenght = InStr(cboFromVariety.Text, " --") + 3
        fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
        
        iSelect = Len(cboToVariety.Text)
        iLenght = InStr(cboToVariety.Text, " --") + 3
        tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
        
        iSelect = Len(cboStateFrom.Text)
        iLenght = InStr(cboStateFrom.Text, " --") + 3
        fPlotno = Right(Trim(cboStateFrom.Text), iSelect - iLenght)
        
        iSelect = Len(cbostateTo.Text)
        iLenght = InStr(cbostateTo.Text, " --") + 3
        tPlotno = Right(Trim(cbostateTo.Text), iSelect - iLenght)
        
        Set Rs = New Recordset
        Rs.Open " SELECT  A.RATECY FROM ((((RM_ARRIVAL A " & _
                " INNER JOIN RM_CONT b ON  A.CONTNO = B.CONTNO AND A.CONTDT = B.CONTDT AND A.DIVCODE = B.DIVCODE) " & _
                " LEFT OUTER JOIN FA_SLMAS C ON B.SUPCD = C.slcode) " & _
                " LEFT OUTER JOIN RM_AREA D ON B.AREACODE = D.AREACODE) " & _
                " LEFT OUTER JOIN PP_DIVMAS E ON B.DIVCODE = E.DIVCODE) " & _
                " LEFT OUTER JOIN RM_VAR F ON B.VARCODE = F.VARCODE " & _
                " where B.DIVCODE='" & Divcode & "' AND B.CONTDT between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "'" & _
                " AND B.SUPCD between '" & Trim(fSupplier) & "' AND '" & Trim(tSupplier) & "'" & _
                " AND B.VARCODE between '" & Trim(fVariety) & "' AND '" & Trim(tVariety) & "'" & _
                " AND D.STATECODE between '" & Trim(fPlotno) & "' AND '" & Trim(tPlotno) & "'", DB, adOpenStatic
                
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
        
        CR.Reset
        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_RateDifference.rpt"
        CR.Connect = connectstring
            
        CR.Formulas(0) = "period='" & " from " & Format(dtpFromDate.value, "dd/MM/yy") & " to " & Format(dtpToDate.value, "dd/MM/yy") & "'"
        CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "'" & _
                              " AND {RM_CONT.CONTDT} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_CONT.CONTDT} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') " & _
                              " AND {RM_CONT.SUPCD} >= '" & Trim(fSupplier) & "' AND {RM_CONT.SUPCD} <= '" & Trim(tSupplier) & "'" & _
                              " AND {RM_CONT.VARCODE} >= '" & Trim(fVariety) & "' AND {RM_CONT.VARCODE} <= '" & Trim(tVariety) & "'" & _
                              " AND {RM_Area.Statecode} >= '" & Trim(fPlotno) & "' AND {RM_Area.Statecode} <= '" & Trim(tPlotno) & "'"
  
        CR.WindowState = crptMaximized
        SendKeys "{enter}"
        CR.Action = True
        Screen.MousePointer = vbNormal
        CR.PrinterCopies = 1

    Case 3020
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Customised_StockStatement_SuppLotwise'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Customised_StockStatement_SuppLotwise"
            End If
            
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
            
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
            
            fSupplier = Right(Trim(cboFromSupplier.Text), 3)
            tSupplier = Right(Trim(cboToSupplier.Text), 3)
            iSelect = Len(cboFromVariety.Text)
            iLenght = InStr(cboFromVariety.Text, " --") + 3
            
            fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
            
            iSelect = Len(cboToVariety.Text)
            iLenght = InStr(cboToVariety.Text, " --") + 3
            
            tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    
            U = fdate:    v = tdate
            W = Trim(cboCategory.Text)
            fltn = Trim(cboFromLotNo.Text)
            tltn = Trim(cboToLotNo.Text)
            FVar = fVariety
            TVar = tVariety
            fstat = fSupplier
            tstat = tSupplier
            issuetype = Trim(cboissue.Text)
            
            catcd = Trim(Mid$(W, 1, InStr(1, W, "-") - 1))
            vrectype = Trim(Left(issuetype, 3))

            strSQL = " select C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + "Into RMI_Customised_StockStatement_SuppLotwise"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, v)
            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.VARCODE BETWEEN '" & FVar & "' AND '" & TVar & "' AND b.plotno BETWEEN '" & fltn & "' AND '" & tltn & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
            strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
    
            If Trim(catcd) <> "All" Then
                If vrectype <> "All" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    Else
                        strSQL = strSQL & " and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    End If
                Else
                        strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' AND C.CatCd='" & catcd & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                End If
            Else
                If vrectype <> "All" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = '" & vrectype & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                    End If
                Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME,a.lotno,a.lotdt,D.Station,b.Ratekg,A.VARCODE,d.areacode,b.plotno,B.SUPCD,B.BRKCD  Order by C.VARNAME,A.lotdt,A.LotNo,D.Station "
                End If
            End If
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
    
'            If rs1.EOF Then
'                MsgBox "No Records Found", vbInformation, head
'                Screen.MousePointer = 0
'                Exit Sub
'            End If
            
            'DB.CommitTrans
    
            With CR
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customised_StockStatement_SupplierLotwise.rpt"
        
                .ParameterFields(0) = "name;" & "From " & Format(dtpFromDate, "dd/MM/yy") & " To " & Format(dtpToDate, "dd/MM/yy") & ""
                .ParameterFields(1) = "divname;" & divname
                
                .WindowState = crptMaximized
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub

Case 3014
'            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_StockReport_Statewise_Abs'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_StockReport_Statewise_Abs"
            End If
            
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
            
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
            
            fSupplier = Right(Trim(cboFromSupplier.Text), 3)
            tSupplier = Right(Trim(cboToSupplier.Text), 3)
            
            If Trim(cboFromVariety.Text) <> "" Then
                Strstate = Right(Trim(cboFromVariety.Text), Len(Trim(cboFromVariety)) - (InStr(1, Trim(cboFromVariety), "-") + 2))
            End If
            
            U = fdate:    v = tdate
            fPlotno = Trim(cboFromLotNo.Text)
            tPlotno = Trim(cboToLotNo.Text)
            
            strSQL = " select d.statecode,d.state,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
            strSQL = strSQL + Chr(13) + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
            strSQL = strSQL + Chr(13) + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + "Into RMI_Temp_StockReport_Statewise_Abs"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, v)
            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND B.plotno BETWEEN '" & fPlotno & "' AND '" & tPlotno & "' AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
            strSQL = strSQL & Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
            
            
            If Strstate = "All" Then
                strSQL = strSQL & Chr(13) + " group by d.statecode,d.state"
            Else
                strSQL = strSQL & Chr(13) + "  AND d.statecode = '" & Strstate & "' group by d.statecode,d.state"
            End If
                        
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
                
            'DB.CommitTrans
    
            With CR
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customised_Statewise _StockAbstract.rpt"
        
                .ParameterFields(0) = "name;" & "Statewise Stock Abstract from " & Format(U, "dd/MM/yy") & " to " & Format(v, "dd/MM/yy") & ""
                .ParameterFields(1) = "divname;" & divname
                
                .WindowState = crptMaximized
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub
Case 3016, 3017
Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
    
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    Set Rs = New Recordset
    Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND RM_lot.plotno between '" & Trim(cboFromLotNo.Text) & "' AND '" & Trim(cboToLotNo.Text) & "' and (isnull(issbal,0) <> 0 or isnull(issbal,0) = bales)", DB, adOpenStatic
    If Rs.EOF = True Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = vbNormal
        Exit Sub
    End If
    
    CR.Reset
    If Repindex = 3016 Then
        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customisted_Runninglots.rpt"
    ElseIf Repindex = 3017 Then
        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customisted_Non_Runninglots.rpt"
    End If
    
    CR.Connect = connectstring
        
    CR.Formulas(0) = "period='" & " from " & Format(dtpFromDate.value, "dd/MM/yy") & " to " & Format(dtpToDate.value, "dd/MM/yy") & "'"
    
    If fVariety = "All" Then
        CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.plotno} >= '" & Trim(cboFromLotNo.Text) & "' AND {RM_lot.plotno} <= '" & Trim(cboToLotNo.Text) & "'"
    Else
        CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.plotno} >= '" & Trim(cboFromLotNo.Text) & "' AND {RM_lot.plotno} <= '" & Trim(cboToLotNo.Text) & "' AND {RM_Area.Statecode} = '" & Trim(fVariety) & "'"
    End If
    
    CR.WindowState = crptMaximized
    SendKeys "{enter}"
    CR.Action = True
    Screen.MousePointer = vbNormal
    CR.PrinterCopies = 1
    
Case 3013
'            On Error GoTo errorsub
'            DB.BeginTrans
            
            Set Rs = New Recordset
            Rs.Open "select * from sysobjects where name ='RMI_Temp_StockReport_Statewise'", DB, adOpenStatic
            If Not Rs.EOF Then
                DB.Execute "Drop table RMI_Temp_StockReport_Statewise"
            End If
            
            Me.MousePointer = 11
            
            fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
            
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
            
            fSupplier = Right(Trim(cboFromSupplier.Text), 3)
            tSupplier = Right(Trim(cboToSupplier.Text), 3)
            iSelect = Len(cboFromVariety.Text)
            iLenght = InStr(cboFromVariety.Text, " --") + 3
            
            fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
            U = fdate:    v = tdate
            W = Trim(cboCategory.Text)
            fPlotno = Trim(cboFromLotNo.Text)
            tPlotno = Trim(cboToLotNo.Text)
            FVar = fVariety
            fstat = fSupplier
            tstat = tSupplier
            
            strSQL = strSQL + Chr(13) + " SELECT * "
            strSQL = strSQL + Chr(13) + "Into RMI_Temp_StockReport_Statewise fROM ( "

            strSQL = strSQL + Chr(13) + " select b.divcode,a.lotno,a.lotdt, C.VARNAME,b.plotno,D.Station,b.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD,d.State,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
            strSQL = strSQL + Chr(13) + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + Chr(13) + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
            strSQL = strSQL + Chr(13) + " FROM ("
            strSQL = strSQL + Chr(13) + gStockStatement(U, v)
            strSQL = strSQL + Chr(13) + " ) A ,RM_LOT B, RM_VAR C,RM_AREA D WHERE b.AREACD= D.AREACODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND b.plotno BETWEEN '" & fPlotno & "' AND '" & tPlotno & "'"
            strSQL = strSQL + Chr(13) + " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "'"
            
            If FVar = "All" Then
                strSQL = strSQL + Chr(13) + " group by b.divcode,a.lotno,a.lotdt, C.VARNAME,b.plotno,D.Station,b.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD,d.State "
            Else
                strSQL = strSQL + Chr(13) + " AND d.statecode = '" & Trim(FVar) & "'"
                strSQL = strSQL + Chr(13) + " group by b.divcode,a.lotno,a.lotdt, C.VARNAME,b.plotno,D.Station,b.Ratekg,A.VARCODE,d.areacode,B.SUPCD,B.BRKCD,d.State "
            End If
            strSQL = strSQL + Chr(13) + " )A wHERE ((CLSBAL + CLSBOR) <> 0 OR CLSKGS <> 0 OR CLSVALUE <> 0 ) Order by A.State,A.VARNAME,A.lotdt,A.Station "
            
            Set rs1 = New Recordset
            rs1.Open strSQL, DB, adOpenStatic
    
            With CR
                .Connect = connectstring
                .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rpt_Customised_StockReport_Statewise.rpt"
                .Formulas(0) = "period= '" & " from " & Format(dtpFromDate, "dd/MM/yy") & " to " & Format(dtpToDate, "dd/MM/yy") & "'"
                .WindowState = crptMaximized
                .PrinterCopies = 1
                SendKeys "{enter}"
                .Action = True
            End With
            Me.MousePointer = 0
            Exit Sub

Case 3005
    Dim ltype As String
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
     
    Call IssueDateLotwiseReport(CStr(fdate), CStr(tdate), val(cboFromLotNo.Text), val(cboToLotNo.Text), Trim(cboFromNo.Text), Trim(cboToNo.Text), fVariety, tVariety)
Case 3330
'    Dim ltype As String
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    Call FreightDetails(CStr(fdate), CStr(tdate), val(cboFromLotNo.Text), val(cboToLotNo.Text), Trim(Left(cboFromSupplier, 4)), Trim(Left(cboToSupplier, 4)), IIf(Option3 = True, 1, 2))

Case 3000
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
    fSupplier = Right(Trim(cboFromSupplier.Text), 7)
    tSupplier = Right(Trim(cboToSupplier.Text), 7)
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    
    Set Rs = New Recordset
    Rs.Open "select * from RM_SAMPLE where DATE Between '" & Format(fdate, "yyyy-mm-dd") & "' and ' " & Format(tdate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' and SUPCODE BETWEEN '" & fSupplier & "' AND '" & tSupplier & "' AND VARCODE BETWEEN '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        MsgBox "No record found", vbInformation
        Exit Sub
    End If

    
    Call SampleRegister(fdate, tdate, divname, fSupplier, tSupplier, fVariety, tVariety, Trim(cboType.Text))
    Screen.MousePointer = 0
    
    
Case 3001
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    If Option1.value = True Or Option3.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
    ElseIf Option2.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 3)
        tSupplier = Right(Trim(cboToSupplier.Text), 3)
    End If
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " -- ") + 3
    If UCase(CustID) = "LMW" And Right(Trim(cboToVariety.Text), iSelect - iLenght) = " VSC" Then
        iLenght = InStr(cboToVariety.Text, " --  ") + 3
    Else
        iLenght = InStr(cboToVariety.Text, " -- ") + 3
    End If
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    If Option1.value = True Or Option3.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & "  AND RM_lot.Supcd  between '" & Trim(fSupplier) & "' AND '" & Trim(tSupplier) & "' AND RM_lot.varcode between '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & "  AND RM_lot.areacd  between '" & Trim(fSupplier) & "' AND '" & Trim(tSupplier) & "' AND RM_lot.varcode between '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
    End If
    Dim ClsInspQParamDate As New clsCrystal
    If Option3.value = True Then
        Set ClsInspQParamDate.cryRept = Cry_RMI_InsQualityParamDatewiseNew
    ElseIf Option1.value = True Then
        Set ClsInspQParamDate.cryRept = Cry_RMI_InsQualityParamSupp
    Else
        Set ClsInspQParamDate.cryRept = Cry_RMI_InsQualityParamArea
    End If
    ClsInspQParamDate.CrystalPrint
    
    'CR.DiscardSavedData = True
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@Divcode; " & Divcode
    CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(3) = "@YFDate;" & Format(yfdate, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(4) = "@CDate;" & Format(pdate, "yyyy-mm-dd")
    If Option1.value = True Then
        CrystalReport1.ParameterFields(5) = "@fsup;" & fSupplier
        CrystalReport1.ParameterFields(6) = "@tsup;" & tSupplier
    End If
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 2
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    
'''    CR.Reset
'''    CR.Reset
'''    CR.Connect = connectstring
'''    If Option3.value = True And chkStock.value = 1 Then
'''        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_Customised.rpt"
'''    Else
'''        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_Customised_All.rpt"
'''    End If
'''
'''    If Option1.value = True Then
'''        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_CustomisedSupp.rpt"
'''    ElseIf Option2.value = True Then
'''        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_CustomisedArea.rpt"
'''    End If
'''
'''    CR.Formulas(0) = "fdate='" & Format(dtpFromDate.value, "dd/MM/yy") & "'"
'''    CR.Formulas(1) = "tdate ='" & Format(dtpToDate.value, "dd/MM/yy") & "'"
'''    If Option3.value = True Then
'''        CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.plotno} >= '" & cboFromNo.Text & "' AND {RM_lot.plotno} <= '" & cboToNo.Text & "' AND {RM_lot.Supcd} >= '" & fSupplier & "' AND {RM_lot.supcd} <= '" & tSupplier & "' AND {RM_lot.varcode} >= '" & fVariety & "' AND {RM_lot.varcode} <= '" & tVariety & "'"
'''    End If
'''    If chkStock.value = 1 Then
'''        If Option1.value = True Then
'''            CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.plotno} >= '" & cboFromNo.Text & "' AND {RM_lot.plotno} <= '" & cboToNo.Text & "' AND {RM_lot.Supcd} >= '" & fSupplier & "' AND {RM_lot.supcd} <= '" & tSupplier & "' AND {RM_lot.varcode} >= '" & fVariety & "' AND {RM_lot.varcode} <= '" & tVariety & "' and  {RM_LOT.bales} > {RM_LOT.issbal}"
'''        ElseIf Option2.value = True Then
'''            CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.plotno} >= '" & cboFromNo.Text & "' AND {RM_lot.plotno} <= '" & cboToNo.Text & "' AND {RM_lot.areacd} >= '" & Trim(fSupplier) & "' AND {RM_lot.areacd} <= '" & Trim(tSupplier) & "' AND {RM_lot.varcode} >= '" & fVariety & "' AND {RM_lot.varcode} <= '" & tVariety & "' and  {RM_LOT.bales} > {RM_LOT.issbal}"
'''        End If
'''    Else
'''        If Option1.value = True Then
'''            CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.plotno} >= '" & cboFromNo.Text & "' AND {RM_lot.plotno} <= '" & cboToNo.Text & "' AND {RM_lot.Supcd} >= '" & fSupplier & "' AND {RM_lot.supcd} <= '" & tSupplier & "' AND {RM_lot.varcode} >= '" & fVariety & "' AND {RM_lot.varcode} <= '" & tVariety & "'"
'''        ElseIf Option2.value = True Then
'''            CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.plotno} >= '" & cboFromNo.Text & "' AND {RM_lot.plotno} <= '" & cboToNo.Text & "' AND {RM_lot.areacd} >= '" & Trim(fSupplier) & "' AND {RM_lot.areacd} <= '" & Trim(tSupplier) & "' AND {RM_lot.varcode} >= '" & fVariety & "' AND {RM_lot.varcode} <= '" & tVariety & "'"
'''        End If
'''    End If
'''    CR.WindowState = crptMaximized
'''    SendKeys "{enter}"
'''    CR.Action = True
'''    Screen.MousePointer = vbNormal
'''    CR.PrinterCopies = 1

Case 3002, 3012
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
    If Option1.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
    ElseIf Option2.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 4)
        tSupplier = Right(Trim(cboToSupplier.Text), 4)
    End If
    
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)


    Set Rs = New Recordset
    Rs.Open "select * from sysobjects where name ='Temp_Periodical_PurchaseOrderRegister'", DB, adOpenStatic

    If Rs.RecordCount > 0 Then
        DB.Execute "Drop table Temp_Periodical_PurchaseOrderRegister"
    End If
    Rs.Close
    Set Rs = Nothing
    
    Set rec = New Recordset
    rec.CursorLocation = adUseClient
    rec.Open "select Result.contdt,Result.varname,Result.SupplierName,Result.BrokerName,Result.areaname," & _
                "Result.contno,Result.candyrate," & _
                "Result.unit," & _
                "Result.ordqty,Result.duedate," & _
                "Result.ordkgs,Result.MillRefNo" & _
            " Into Temp_Periodical_PurchaseOrderRegister " & _
            " From " & _
            "(select distinct a.contdt,c.varname,b.slname as SupplierName," & _
                "z.slname as BrokerName,v.areaname," & _
                "cast(a.contno as numeric) as contno,round(a.candyrate,0) AS CandyRate," & _
                "unit=case when a.dlytype='F' then 'FOR' else 'SPOT' end," & _
                "isnull(a.ordqty,0)ordqty,a.duedate," & _
                "isnull(a.ordkgs,0)ordkgs,a.MillRefNo" & _
            " from rm_cont a,fa_slmas b,fa_slmas z,rm_var c,rm_area v " & _
            " where  c.varcode=a.varcode and a.areacOdE*=v.areacode and a.brkcd*=z.slcode " & _
                " and a.SUPCD=b.SLCODE and " & _
                " a.contdt Between '" & Format(fdate, "dd-mmm-yyyy") & "' and ' " & Format(tdate, "dd-mmm-yyyy") & "'" & _
                " and divcode='" & Divcode & "')Result", DB, adOpenStatic, adLockBatchOptimistic
                
    If Repindex = 3012 Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_cont where DIVCODE='" & Divcode & "' AND contdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND contno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & " AND supcd between '" & fSupplier & "' AND '" & Trim(tSupplier) & "' AND varcode between '" & Trim(fVariety) & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
            
        
'        CR.Reset
'        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Customised_POReg.rpt"
'        CR.Connect = connectstring
'        CR.ParameterFields(0) = "description;" & "Purchase Register from " & Format(dtpFromDate.value, "dd/mm/yy") & " to " & Format(dtpToDate.value, "dd/mm/yy")
'        CR.ParameterFields(1) = "name ;" & DIVNAME
'        CR.ParameterFields(2) = "sflg;" & IIf(chkStock.value = 1, "WS", "WOS")
'        CR.SelectionFormula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.supcd} >= '" & Trim(fSupplier) & "' AND {RM_cont.supcd} <= '" & Trim(tSupplier) & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
'        CR.WindowState = crptMaximized
'        SendKeys "{enter}"
'        CR.Action = True
'        Screen.MousePointer = vbNormal
'        CR.PrinterCopies = 1
        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Customised_POReg.rpt"
        FrmRpt.RptHead = 3
        parameter1 = "Purchase List from " & Format(dtpFromDate.value, "dd/mm/yy") & " to " & Format(dtpToDate.value, "dd/mm/yy")
        parameter2 = divname
        parameter3 = IIf(chkStock.value = 1, "WS", "WOS")
        selectformula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.supcd} >= '" & Trim(fSupplier) & "' AND {RM_cont.supcd} <= '" & Trim(tSupplier) & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        FrmRpt.Show
        selectformula = ""
        Screen.MousePointer = vbNormal
        Exit Sub
    End If
                
                
    If Option1.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_cont where DIVCODE='" & Divcode & "' AND contdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND contno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & " AND Supcd  between '" & fSupplier & "' AND '" & tSupplier & "' AND varcode between '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
            
'
'        CR.Reset
'
'        CR.Connect = connectstring
'
'        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PORegSupp.rpt"
'        CR.ParameterFields(0) = "description;" & "Purchase Register Supplierwise From " & Format(dtpFromDate.value, "dd/mm/yy") & " To " & Format(dtpToDate.value, "dd/mm/yy")
'        CR.ParameterFields(1) = "name ;" & DIVNAME
'        CR.SelectionFormula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.Supcd} >= '" & fSupplier & "' AND {RM_cont.supcd} <= '" & tSupplier & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PORegSupp.rpt"
        'FrmRpt.RptHead = "2A"
        'parameter1 = "Purchase Register Supplierwise From " & Format(dtpFromDate.value, "dd/mm/yy") & " To " & Format(dtpToDate.value, "dd/mm/yy")
        'parameter2 = DIVNAME
        'selectformula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.Supcd} >= '" & fSupplier & "' AND {RM_cont.supcd} <= '" & tSupplier & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        'FrmRpt.Show
        'selectformula = ""
        
        Dim clsCryRpt3 As New clsCrystal
        Set clsCryRpt3.cryRept = Rep_Period_POReg_Supplierwise
        clsCryRpt3.CrystalPrint
                
        CR.Reset
        CR.Connect = connectstring
        CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

CR.SelectionFormula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.Supcd} >= '" & fSupplier & "' AND {RM_cont.supcd} <= '" & tSupplier & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        CR.ParameterFields(0) = "description;" & "Purchase List from " & Format(dtpFromDate.value, "dd/mm/yy") & " to " & Format(dtpToDate.value, "dd/mm/yy") & ""
        CR.ParameterFields(1) = "name;" & divname & ""

        CR.WindowShowPrintSetupBtn = True
        CR.WindowShowSearchBtn = True
        CR.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CR.Action = 1
        
        
    ElseIf Option2.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_cont where DIVCODE='" & Divcode & "' AND contdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND contno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & " AND areacode  between '" & fSupplier & "' AND '" & Trim(tSupplier) & "' AND varcode between '" & Trim(fVariety) & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
            
        
'        CR.Reset
'
'        CR.Connect = connectstring

'        CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PORegArea.rpt"
'        CR.ParameterFields(0) = "description;" & "Purchase Register Areawise From " & Format(dtpFromDate.value, "dd/mm/yy") & " To " & Format(dtpToDate.value, "dd/mm/yy")
'        CR.ParameterFields(1) = "name ;" & DIVNAME
'        CR.SelectionFormula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.areacode} >= '" & Trim(fSupplier) & "' AND {RM_cont.areacode} <= '" & Trim(tSupplier) & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_PORegArea.rpt"
        'FrmRpt.RptHead = "2A"
        'parameter1 = "Purchase Register Areawise From " & Format(dtpFromDate.value, "dd/mm/yy") & " To " & Format(dtpToDate.value, "dd/mm/yy")
        'parameter2 = DIVNAME
        'selectformula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.areacode} >= '" & Trim(fSupplier) & "' AND {RM_cont.areacode} <= '" & Trim(tSupplier) & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        'FrmRpt.Show
        'selectformula = ""
        
        Dim clsCryRpt4 As New clsCrystal
        Set clsCryRpt4.cryRept = Rep_Period_POReg_Areawise
        clsCryRpt4.CrystalPrint
        
        CR.Reset
        CR.Connect = connectstring
        CR.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

CR.SelectionFormula = "{rm_cont.DIVCODE}='" & Divcode & "' AND {RM_cont.contdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_cont.contno} >= '" & val(cboFromLotNo.Text) & "' AND {RM_cont.contno} <= '" & val(cboToLotNo.Text) & "' AND {RM_cont.areacode} >= '" & Trim(fSupplier) & "' AND {RM_cont.areacode} <= '" & Trim(tSupplier) & "' AND {RM_cont.varcode} >= '" & fVariety & "' AND {RM_cont.varcode} <= '" & tVariety & "'"
        CR.ParameterFields(0) = "description;" & "Purchase List from " & Format(dtpFromDate.value, "dd/mm/yy") & " to " & Format(dtpToDate.value, "dd/mm/yy")
        CR.ParameterFields(1) = "name ;" & divname

        CR.WindowShowPrintSetupBtn = True
        CR.WindowShowSearchBtn = True
        CR.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CR.Action = 1
        
    End If
'    CR.WindowState = crptMaximized
'    SendKeys "{enter}"
'    CR.Action = True
'    Screen.MousePointer = vbNormal
'    CR.PrinterCopies = 1
    Screen.MousePointer = vbNormal
Case 3019
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    
    If Trim(cboFromSupplier.Text) <> "" Then
        fSupplier = Left(Trim(cboFromSupplier.Text), InStr(1, Trim(cboFromSupplier), "-") - 2)
    End If
       
    If Trim(cboFromSupplier.Text) <> "" Then
        tSupplier = Left(Trim(cboToSupplier.Text), InStr(1, Trim(cboToSupplier), "-") - 2)
    End If

    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    Call CottonStockLotReportSupplier(fdate, tdate, Trim(cboCategory.Text), Trim(cboFromLotNo.Text), Trim(cboToLotNo.Text), fVariety, tVariety, fSupplier, tSupplier, Trim(cboissue.Text))
    Screen.MousePointer = 0
    
Case 3006, 3022
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
'
    fSupplier = Trim(Mid(cboFromSupplier.Text, InStr(cboFromSupplier.Text, "--") + 2, 10))
    tSupplier = Trim(Mid(cboToSupplier.Text, InStr(cboToSupplier.Text, "--") + 2, 10))
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    If Repindex = 3006 Then
        Call StockStatementStationwise(fdate, tdate, Trim(cboCategory.Text), Trim(cboFromLotNo.Text), Trim(cboToLotNo.Text), fVariety, tVariety, fSupplier, tSupplier, Trim(cboissue.Text))
    ElseIf Repindex = 3022 Then
        Call Customized_VarstockReport(fdate, tdate, Trim(cboCategory.Text), Trim(cboFromLotNo.Text), Trim(cboToLotNo.Text), fVariety, tVariety, fSupplier, tSupplier, Trim(cboissue.Text))
    End If
    Screen.MousePointer = 0
    
Case 3007, 3008, 3009

    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    If Option1.value = True Or Option3.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
    ElseIf Option2.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 3)
        tSupplier = Right(Trim(cboToSupplier.Text), 3)
    End If
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " --") + 3
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    If Repindex = 3007 Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotyear='" & Year(yfdate) & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & " AND RM_lot.Supcd  between '" & fSupplier & "' AND '" & tSupplier & "' and ISNULL(ins_flg,'')='' ", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotyear='" & Year(yfdate) & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & " AND RM_lot.Areacd between '" & Trim(fVariety) & "' AND '" & Trim(tVariety) & "' AND RM_lot.Supcd  between '" & fSupplier & "' AND '" & tSupplier & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
    End If
    End If
    CR.Reset
            
    CR.Connect = connectstring

    If Repindex = 3007 Then CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\PendingLots.rpt"
    If Repindex = 3008 Then CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\untouchlots.rpt"
    If Repindex = 3009 Then CR.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Runninglots.rpt"
    
    CR.Formulas(0) = "fdate='" & Format(dtpFromDate.value, "dd/MM/yy") & "'"
    CR.Formulas(1) = "tdate='" & Format(dtpToDate.value, "dd/MM/yy") & "'"
    CR.Formulas(2) = "divname='" & divname & "'"
'    CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.Areacd} >= '" & fVariety & "' AND {RM_lot.areacd} <= '" & tVariety & "' AND {RM_lot.Supcd} >= '" & fSupplier & "' AND {RM_lot.supcd} <= '" & tSupplier & "'"
    CR.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(dtpFromDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(dtpToDate.value, "yyyy-mm-dd") & "') AND {RM_lot.lotno} >= " & val(cboFromLotNo.Text) & " AND {RM_lot.lotno} <= " & val(cboToLotNo.Text) & " AND {RM_lot.Supcd} >= '" & fSupplier & "' AND {RM_lot.supcd} <= '" & tSupplier & "'"
    CR.WindowState = crptMaximized
    SendKeys "{enter}"
    CR.Action = True
    Screen.MousePointer = vbNormal
    CR.PrinterCopies = 1
    
End Select

Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form frmReport", vbInformation, head
Screen.MousePointer = 0
End Sub



Private Sub Command1_Click()

intervalMinutes = -1
    Select Case Repindex
    Case 3330
            FLot = cboFromLotNo
            TLot = cboToLotNo
          '  FTrans = Left(cboFromSupplier, 4)
           ' TTrans = Left(cboToSupplier, 4)
            FTrans = Mid$(cboFromSupplier, 1, InStr(1, cboFromSupplier, "-") - 1)
            TTrans = Mid$(cboToSupplier, 1, InStr(1, cboToSupplier, "-") - 1)
 
        Dim ClsfreDtlsSupplier1 As New clsCrystal
        Set ClsfreDtlsSupplier1.cryRept = Cry_freightlist 'Cry_FreightDetrailsnew ' Cry_FreightDetail_customReport 'Cry_FreightDetail_custom
        ClsfreDtlsSupplier1.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd") & ""
        CrystalReport1.ParameterFields(3) = "@FLot_No;" & FLot & ""
        CrystalReport1.ParameterFields(4) = "@TLot_No;" & TLot & ""
        CrystalReport1.ParameterFields(5) = "@FTrans;" & FTrans & ""
        CrystalReport1.ParameterFields(6) = "@TTrans;" & TTrans & ""
        
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
    
    Case 3001
    If UCase(Trim(CustID)) = "PALLAVA" Or UCase(Trim(CustID)) = "SHRIGIRI" Then
        Call QualityParamExcel
        Exit Sub
    End If
    Screen.MousePointer = 11
    fdate = Format(dtpFromDate.value, "yyyy-mm-dd"):   tdate = Format(dtpToDate.value, "yyyy-mm-dd")
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
    If Option1.value = True Or Option3.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 7)
        tSupplier = Right(Trim(cboToSupplier.Text), 7)
    ElseIf Option2.value = True Then
        fSupplier = Right(Trim(cboFromSupplier.Text), 3)
        tSupplier = Right(Trim(cboToSupplier.Text), 3)
    End If
    iSelect = Len(cboFromVariety.Text)
    iLenght = InStr(cboFromVariety.Text, " --") + 3
    
    fVariety = Right(Trim(cboFromVariety.Text), iSelect - iLenght)
    
    iSelect = Len(cboToVariety.Text)
    iLenght = InStr(cboToVariety.Text, " -- ") + 3
    If UCase(CustID) = "LMW" And Right(Trim(cboToVariety.Text), iSelect - iLenght) = " VSC" Then
        iLenght = InStr(cboToVariety.Text, " --  ") + 3
    Else
        iLenght = InStr(cboToVariety.Text, " -- ") + 3
    End If
    
    tVariety = Right(Trim(cboToVariety.Text), iSelect - iLenght)
    If Option1.value = True Or Option3.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & "  AND RM_lot.Supcd  between '" & fSupplier & "' AND '" & tSupplier & "' AND RM_lot.varcode between '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
    Else
        Set Rs = New Recordset
        Rs.Open "Select * from rm_lot where rm_lot.DIVCODE='" & Divcode & "' AND RM_lot.lotdt between '" & Format(dtpFromDate.value, "yyyy-mm-dd") & "' AND '" & Format(dtpToDate.value, "yyyy-mm-dd") & "' AND RM_lot.lotno between " & val(cboFromLotNo.Text) & " AND " & val(cboToLotNo.Text) & "  AND RM_lot.areacd  between '" & Trim(fSupplier) & "' AND '" & Trim(tSupplier) & "' AND RM_lot.varcode between '" & fVariety & "' AND '" & tVariety & "'", DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = vbNormal
            Exit Sub
        End If
    End If
    
    Dim ClsInspQParamDate As New clsCrystal
    Set ClsInspQParamDate.cryRept = Cry_RMI_InsQltylmwnew1 'Cry_RMI_InsQltylmwnew
    ClsInspQParamDate.CrystalPrint
    
    
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@Divcode; " & Divcode
    CrystalReport1.ParameterFields(1) = "@FDate;" & Format(dtpFromDate.value, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(2) = "@TDate;" & Format(dtpToDate.value, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(3) = "@YFDate;" & Format(yfdate, "yyyy-mm-dd")
    CrystalReport1.ParameterFields(4) = "@CDate;" & Format(pdate, "yyyy-mm-dd")
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 2
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
    

    
    
    End Select
    
intervalMinutes = -1

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
dtpFromDate.MinDate = yfdate
dtpToDate.MinDate = yfdate
Call openconnection
Select Case Repindex
Case 3026

        cboType.Visible = False
        cmdCrystalReport.Visible = True
        lblTitle.Caption = "Stock Statement - Lotwise"
        Me.Caption = "Stock Statement - Lotwise"
            
        LblFLTN.Visible = False
        Label6.Visible = False
        lbllotno.Caption = "From Supplier Lot No."
        Label5.Caption = "To Supplier Lot No."
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 4200
        SSTab1.Height = 4350
        Label7.Top = 1515
        cboFromSupplier.Top = 1470
        Label4.Top = 1995
        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.pLotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and plotno <> '' order by a.pLOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!PlotNo
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!PlotNo
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic

        
'        rstLoad.Open "select Issue_code + ' --  ' + issue_desc as Category from rm_issuetype order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

       
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,b.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.varcode", DB, adOpenStatic
'        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        cmdCrystalReport.Visible = False
Case 3027
        cboType.Visible = False
        cmdCrystalReport.Visible = True
        lblTitle.Caption = "Stock Statement - Varietywise"
        Me.Caption = "Stock Statement - Varietywise"
            
        LblFLTN.Visible = False
        Label6.Visible = False
        lbllotno.Caption = "From Supplier Lot No."
        Label5.Caption = "To Supplier Lot No."
        Label7.Visible = False
        Label4.Visible = False
        cboFromSupplier.Visible = False
        cboToSupplier.Visible = False
        
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 3500
        SSTab1.Height = 3650
        Label8.Top = 1515
        cboFromVariety.Top = 1470
        Label9.Top = 1995
        cboToVariety.Top = 1920
        lblCat.Top = 2395
        cboCategory.Top = 2395
        lblType.Top = 2795
        cboissue.Top = 2795
        
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        
        
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.pLotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and plotno <> '' order by a.pLOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!PlotNo
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!PlotNo
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic

        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,b.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.varcode", DB, adOpenStatic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        cmdCrystalReport.Visible = False
Case 3028
        cboType.Visible = False
        cmdCrystalReport.Visible = True
        lblTitle.Caption = "Stock Statement - Godownwise"
        Me.Caption = "Stock Statement - Godownwise"
            
        LblFLTN.Visible = False
        Label6.Visible = False
        
        lbllotno.Caption = "From Supplier Lot No."
        Label5.Caption = "To Supplier Lot No."
        
        Label7.Visible = False
        Label4.Visible = False
        cboFromSupplier.Visible = False
        cboToSupplier.Visible = False
        
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 3500
        SSTab1.Height = 3650
        Label8.Top = 1515
        cboFromVariety.Top = 1470
        Label8.Caption = "From Godown"
        Label9.Top = 1995
        Label9.Caption = "To Godown"
        cboToVariety.Top = 1920
        lblCat.Top = 2395
        cboCategory.Top = 2395
        lblType.Top = 2795
        cboissue.Top = 2795
        
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        
        
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.pLotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' and plotno <> '' order by a.pLOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!PlotNo
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!PlotNo
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic

        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.GCode + ' -- '+ a.Gname AS sUP,b.Godown from rm_var a,rm_lot b where A.Gcode=B.Godown AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.Godown", DB, adOpenStatic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        cmdCrystalReport.Visible = False
Case 3013, 3016, 3017, 3014
        cboType.Visible = False
        If Repindex = 3013 Then lblTitle.Caption = "Statewise Raw Material Stock Report": Me.Caption = "Statewise Raw Material Stock Report"
        If Repindex = 3014 Then lblTitle.Caption = "Statewise Stock Abstract": Me.Caption = "Statewise Stock Abstract"
        If Repindex = 3016 Then lblTitle.Caption = "Statewise Running Lot Report": Me.Caption = "Statewise Running Lot Report"
        If Repindex = 3017 Then lblTitle.Caption = "Statewise Non-Running Lot Report": Me.Caption = "Statewise Non-Running Lot Report"
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 2900
        SSTab1.Height = 3050
        Label7.Top = 1510
        cboFromSupplier.Top = 1470
        cboToSupplier.Top = 1470 + cboFromSupplier.Height + 100
        Label4.Top = cboToSupplier.Top
'        Label5.Left = 150
'        Label5.Top = 1515
'        cboToLotNo.Top = 1470
'        cboToLotNo.Left = cboFromLotNo.Left
        Label8.Top = 2410
        cboFromVariety.Top = 2370
        Label8.Visible = True
        Label9.Visible = False
        lbllotno.Caption = "From Supplier Lot No."
        Label5.Caption = "To Supplier Lot No."
        Label8.Caption = "State"
        cboFromVariety.Visible = True
        cboToVariety.Visible = False
        
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.pLotNo from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.pLOTNo ", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!PlotNo
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!PlotNo
        End If
    
'        Label8.Caption = "Station From"
'        Label9.Caption = "Station To"
        Set rstLoad = New Recordset
        rstLoad.Open "select 'All -- All' as Area,'' as State_code from ig_state union select distinct Name + ' -- ' + State_Code AS area,State_Code from ig_state order by State_Code", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "area"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!area
         End If



    Case 3000
        lblTitle.Caption = "Sample List"
        Me.Caption = "Sample List"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        cboToLotNo.Visible = False
        cboFromLotNo.Visible = False
        lbllotno.Visible = False
        cmdCrystalReport.Visible = True
                
        Set rstLoad = New Recordset
        rstLoad.Open "Select distinct isnull(potype,'')potype From rm_Sample Where DIVCODE = '" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        cboType.AddItem "All"
        Do While Not rstLoad.EOF
            cboType.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboType.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open "Select Sno,[Date] From rm_Sample Where DIVCODE = '" & Divcode & "' AND DATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' order by [Date],sno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromNo.RowSource = rstLoad
            cboFromNo.ListField = "Sno"
            rstLoad.MoveFirst
            cboFromNo.Text = rstLoad!SNO
            Set cboToNo.RowSource = rstLoad
            cboToNo.ListField = "Sno"
            rstLoad.MoveLast
            cboToNo.Text = rstLoad!SNO
        End If
        Set rs1 = New Recordset
        rs1.Open "Select * from masterlen", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            sup = rs1("ptypecotton") '& "%"
        Else
            sup = ""
        End If
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas where left(slcode,2) in (select Items from dbo.split('" & sup & "',','))  order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!sup
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "SUP"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!sup
        End If

        Set rstLoad = New Recordset
        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        
        
    Case 3001
        cboType.Visible = False
        lblTitle.Caption = "Inspection And Quality Parameter"
        Me.Caption = "Inspection & Quality Parameter"
        LblFLTN.Caption = "From Supplier Lot No."
        Label6.Caption = "To Suppplier Lot No."
        lblOpt.Visible = True
        chkStock.Visible = True
        Option3.Visible = True
        Option1.Visible = True
        Option2.Visible = True
        Option1.Left = Option3.Left + Option3.Width + 50
        Option2.Left = Option3.Left + Option3.Width + 1500
        chkStock.Left = chkStock.Left + 225
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Option3.value = True
        Call Option3_Click
        
        '13/04/15
        If UCase(CustID) = "LMW" Or UCase(Trim(CustID)) = "PALLAVA" Or UCase(Trim(CustID)) = "SHRIGIRI" Then
         Command1.Visible = True
         If UCase(Trim(CustID)) = "PALLAVA" Or UCase(Trim(CustID)) = "SHRIGIRI" Then
            Command1.Caption = "Excel"
         End If
        End If
        
                
        Set rstLoad = New Recordset
        rstLoad.Open "Select Distinct LotNo,lotdt From rm_Lot Where DIVCODE = '" & Divcode & "' AND lotdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and lotyear = '" & Year(yfdate) & " ' order by Lotno,lotdt", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If

        Set rstLoad = New Recordset
        rstLoad.Open "Select Distinct isnull(pLotNo,'') plotno From rm_Lot Where DIVCODE = '" & Divcode & "' AND lotdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and lotyear = '" & Year(yfdate) & " ' order by pLotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromNo.RowSource = rstLoad
            cboFromNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromNo.Text = rstLoad!PlotNo
            Set cboToNo.RowSource = rstLoad
            cboToNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToNo.Text = rstLoad!PlotNo
        End If
        Set Rs = New Recordset
            Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
            If Rs.EOF = False Then
                Ptype = Rs(0)
            End If
        If Option1.value = True Then
            
        
            Label7.Caption = "From Supplier"
            Label4.Caption = "To Supplier"
            Set rstLoad = New Recordset
            rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas Where left(slcode,2) in (select Items from dbo.split('" & Ptype & "',','))  order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromSupplier.RowSource = rstLoad
                cboFromSupplier.ListField = "SUP"
                rstLoad.MoveFirst
                cboFromSupplier.Text = rstLoad!sup
                Set cboToSupplier.RowSource = rstLoad
                cboToSupplier.ListField = "SUP"
                rstLoad.MoveLast
                cboToSupplier.Text = rstLoad!sup
            End If
        ElseIf Option2.value = True Then
            Label7.Caption = "From Area"
            Label4.Caption = "To Area"
            Set rstLoad = New Recordset
            rstLoad.Open "select distinct areaname + ' -- ' + areacode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromSupplier.RowSource = rstLoad
                cboFromSupplier.ListField = "area"
                rstLoad.MoveFirst
                cboFromSupplier.Text = rstLoad!area
                Set cboToSupplier.RowSource = rstLoad
                cboToSupplier.ListField = "area"
                rstLoad.MoveLast
                cboToSupplier.Text = rstLoad!area
            End If
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        
Case 3005
        cboType.Visible = False
        cmdCrystalReport.Visible = True
        lblTitle.Caption = "Issue List - Datewise/Lotwise"
        Me.Caption = "Issue List - Datewise/Lotwise"
        LblFLTN.Caption = "From Supplier Lot No."
        Label6.Caption = "To Suppplier Lot No."
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Option3.value = True
'        Call Option3_Click
                
        Set rstLoad = New Recordset
        rstLoad.Open "Select Distinct LotNo,lotdt From rm_Lot Where DIVCODE = '" & Divcode & "' AND lotdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and lotyear = '" & Year(yfdate) & " ' order by lotdt,Lotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If

        Set rstLoad = New Recordset
        rstLoad.Open "Select Distinct pLotNo From rm_Lot Where DIVCODE = '" & Divcode & "' AND lotdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and lotyear = '" & Year(yfdate) & " ' order by pLotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromNo.RowSource = rstLoad
            cboFromNo.ListField = "pLotNo"
            rstLoad.MoveFirst
            cboFromNo.Text = rstLoad!PlotNo
            Set cboToNo.RowSource = rstLoad
            cboToNo.ListField = "pLotNo"
            rstLoad.MoveLast
            cboToNo.Text = rstLoad!PlotNo
        End If
        
        Label8.Top = Label7.Top
        Label9.Top = Label4.Top
        Label4.Visible = False
        Label7.Visible = False
        cboFromVariety.Top = cboFromSupplier.Top
        cboToVariety.Top = cboToSupplier.Top
        cboFromSupplier.Visible = False
        cboToSupplier.Visible = False
        Frame1.Height = Frame1.Height - 1100
        SSTab1.Height = SSTab1.Height - 1100
        
        
        
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        

Case 3002, 3012
        cboType.Visible = False
        lblTitle.Caption = "Purchase List"
        Me.Caption = "Purchase List"
        lbllotno.Caption = "From Purchase Order No."
        Label5.Caption = "To Purchase Order No."
        lblOpt.Visible = True
        Option1.Visible = True
        Option2.Visible = True
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        
        Label7.Top = 1515
        cboFromSupplier.Top = 1470
        Label4.Top = 1995
        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        
        Set rstLoad = New Recordset
        rstLoad.Open "Select Distinct CONVERT(varchar,contno,20)contno,contdt From rm_cont Where DIVCODE = '" & Divcode & "' AND contdt BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' order by contdt,contno", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "contNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!ContNo
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "contNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!ContNo
        End If

        If Option1.value = True Then
            Label7.Caption = "From Supplier"
            Label4.Caption = "To Supplier"
            Set rstLoad = New Recordset
            rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas where slcode like 'CR%' order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromSupplier.RowSource = rstLoad
                cboFromSupplier.ListField = "SUP"
                rstLoad.MoveFirst
                cboFromSupplier.Text = rstLoad!sup
                Set cboToSupplier.RowSource = rstLoad
                cboToSupplier.ListField = "SUP"
                rstLoad.MoveLast
                cboToSupplier.Text = rstLoad!sup
            End If
        ElseIf Option2.value = True Then
            Label7.Caption = "From Area"
            Label4.Caption = "To Area"
            Set rstLoad = New Recordset
            rstLoad.Open "select distinct areaname + ' -- ' + areacode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromSupplier.RowSource = rstLoad
                cboFromSupplier.ListField = "area"
                rstLoad.MoveFirst
                cboFromSupplier.Text = rstLoad!area
                Set cboToSupplier.RowSource = rstLoad
                cboToSupplier.ListField = "area"
                rstLoad.MoveLast
                cboToSupplier.Text = rstLoad!area
            End If
        End If
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        If Repindex = 3012 Then
            Frame1.Height = 3650
            SSTab1.Height = 3800
            
            chkStock.Visible = True
            chkStock.Top = 3300
            chkStock.Width = 2000
            chkStock.Left = dtpFromDate.Left
            chkStock.Caption = "With Summary"
        End If

Case 3006, 3022
        cboType.Visible = False
        cmdCrystalReport.Visible = True
        If Repindex = 3006 Then
            lblTitle.Caption = "Stock Statement - Stationwise"
            Me.Caption = "Stock Statement - Stationwise"
        ElseIf Repindex = 3022 Then
            lblTitle.Caption = "Varietywise Stock List"
            Me.Caption = "Varietywise Stock List"
        End If
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 4200
        SSTab1.Height = 4350
        Label7.Top = 1515
        cboFromSupplier.Top = 1470
        Label4.Top = 1995
        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.LotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.LOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic

        
'        rstLoad.Open "select Issue_code + ' --  ' + issue_desc as Category from rm_issuetype order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

        Label7.Caption = "From Station"
        Label4.Caption = "To Station"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct Station + ' -- ' + AreaCode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "area"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!area
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "area"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!area
        End If
       
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,b.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.varcode", DB, adOpenStatic
'        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        If Repindex = 3022 Or Repindex = 3006 Then cmdCrystalReport.Visible = True
        
        
Case 3021
        cboType.Visible = False
        cmdCrystalReport.Visible = fasle
        lblTitle.Caption = "Rate Difference"
        Me.Caption = "Rate Difference"
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 3800
        SSTab1.Height = 3950
        Label7.Top = 1065
        cboFromSupplier.Top = 1020
        Label4.Top = 1515
        cboToSupplier.Top = 1470
        Label8.Top = 1995
        cboFromVariety.Top = 1920
        Label9.Top = 2430
        cboToVariety.Top = 2370
        Label1.Visible = False
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = False
        cboissue.Visible = False
        cboStateFrom.Visible = True
        cbostateTo.Visible = True
        cboStateFrom.Top = cboStateFrom.Top - 450
        cbostateTo.Top = cbostateTo.Top - 450
        lblType.Top = lblType.Top - 450
        lblCat.Top = lblCat.Top - 450
        lbllotno.Visible = False
        lblType.Caption = "To State"
        lblCat.Caption = "From State"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct State + ' -- ' + stateCode AS area,Statecode from rm_area order by statecode", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboStateFrom.RowSource = rstLoad
            cboStateFrom.ListField = "area"
            rstLoad.MoveFirst
            cboStateFrom.Text = rstLoad!area
            Set cbostateTo.RowSource = rstLoad
            cbostateTo.ListField = "area"
            rstLoad.MoveLast
            cbostateTo.Text = rstLoad!area
        End If
        
        
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,b.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.varcode", DB, adOpenStatic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False

Case 3019, 3020
        If Repindex = 3019 Then
            cboType.Visible = False
            'cmdCrystalReport.Visible = True
            lblTitle.Caption = "Stock Statement - Supplierwise"
            Me.Caption = "Stock Statement - Supplierwise"
        ElseIf Repindex = 3020 Then
            cboType.Visible = False
            'cmdCrystalReport.Visible = True
            lblTitle.Caption = "Stock Statement - Supplier Lotwise"
            Me.Caption = "Stock Statement - Supplier Lotwise"
        End If
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 4200
        SSTab1.Height = 4350
        Label7.Top = 1515
        cboFromSupplier.Top = 1470
        Label4.Top = 1995
        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.LotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.LOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If
        
        If Repindex = 3020 Then
            Set rstLoad = New Recordset
            rstLoad.Open "select DISTINCT a.pLotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.pLOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromLotNo.RowSource = rstLoad
                cboFromLotNo.ListField = "pLotNo"
                rstLoad.MoveFirst
                cboFromLotNo.Text = rstLoad!PlotNo
                Set cboToLotNo.RowSource = rstLoad
                cboToLotNo.ListField = "pLotNo"
                rstLoad.MoveLast
                cboToLotNo.Text = rstLoad!PlotNo
            End If
        End If
        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic

        
'        rstLoad.Open "select Issue_code + ' --  ' + issue_desc as Category from rm_issuetype order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

        Label7.Caption = "From Supplier"
        Label4.Caption = "To Supplier"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.supcd + ' -- ' + b.slname AS supplier,a.supcd from rm_lot a,fa_slmas b where a.supcd=b.slcode and a.lotyear='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' order by a.supcd", DB, adOpenStatic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "supplier"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!supplier
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "supplier"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!supplier
        End If
       
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,b.varcode from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' order by b.varcode", DB, adOpenStatic
'        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If
        cmdCrystalReport.Visible = False
        
Case 3010
        cboType.Visible = False
        cmdCrystalReport.Visible = False
        lblTitle.Caption = "Stock Statement - Issue Typewise"
        Me.Caption = "Stock Statement - Issue Typewise"
        
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 4200
        SSTab1.Height = 4350
        Label7.Top = 1515
        cboFromSupplier.Top = 1470
        Label4.Top = 1995
        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        lblType.Visible = True
        lblCat.Visible = True
        cboCategory.Visible = True
        cboissue.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.LotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.LOTNo,a.lotdt ", DB, adOpenStatic, adLockBatchOptimistic
         If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If

        
        Set rstLoad = New Recordset
        rstLoad.Open "select CatCD + ' --  ' + Catname as Category from rm_Cat order by Category ", DB, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboCategory.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboCategory.ListIndex = 0
        
        Set rstLoad = New Recordset
        rstLoad.Open " Select Distinct LotType + '  -  ' + 'OWN' as Type from RM_Lot where LotType='A' UNION Select Distinct Issue_Code + '  -  ' + Issue_Desc as Type from rm_issuetype a INNER JOIN RM_Lot b ON a.Issue_Code=b.Transfertype Order by Type", cn, adOpenStatic, adLockBatchOptimistic
        Do While Not rstLoad.EOF
            cboissue.AddItem rstLoad(0)
            rstLoad.MoveNext
        Loop
        cboissue.ListIndex = 0

        Label7.Caption = "From Station"
        Label4.Caption = "To Station"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct Station + ' -- ' + AreaCode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "area"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!area
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "area"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!area
        End If
       
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct a.varNAME + ' -- '+ a.varCODE AS sUP,B.VARCODE from rm_var a,rm_lot b where A.CATCD=B.CATCD AND a.varcode=b.varcode AND lotyear='" & Year(yfdate) & "' and b.divcode='" & Divcode & "' ORDER BY B.VARCODE", DB, adOpenStatic
'        rstLoad.Open "select distinct varname + ' -- ' + varCODE AS sup,varcode from rm_var order by varCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!sup
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "SUP"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!sup
        End If

Case 3007, 3008, 3009, 3330, 3654
        cboType.Visible = False
        If Repindex = 3007 Then lblTitle.Caption = "Pending Lots To Be Inspected": Me.Caption = "Pending Lots To Be Inspected"
        If Repindex = 3008 Then lblTitle.Caption = "Untouch Lots": Me.Caption = "Untouch Lots"
        If Repindex = 3009 Then lblTitle.Caption = "Running Lots - Issue Typewise": Me.Caption = "Running Lots - Issue Typewise"
        If Repindex = 3012 Then lblTitle.Caption = "Purchase Order List": Me.Caption = "Purchase Order List"
        If Repindex = 3330 Then lblTitle.Caption = "Freight Detail Report": Me.Caption = "Freight Detail Report"
        If Repindex = 3654 Then lblTitle.Caption = "Issue Return List": Me.Caption = "Issue Return List"
        LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        cmdCrystalReport.Visible = True
        
        dtpFromDate.value = mfdate
        dtpToDate.value = pdate
        dtpToDate.maxdate = pdate
        Frame1.Height = 2900
        SSTab1.Height = 3050
        Label5.Left = 150
        Label5.Top = 1515
        cboToLotNo.Top = 1470
        cboToLotNo.Left = cboFromLotNo.Left
'        Label7.Top = 1515
'        cboFromSupplier.Top = 1470
'        Label4.Top = 1995
'        cboToSupplier.Top = 1920
        Label8.Top = 2430
        cboFromVariety.Top = 2370
        Label9.Top = 2880
        cboToVariety.Top = 2820
        Label8.Visible = False
        Label9.Visible = False
        cboFromVariety.Visible = False
        cboToVariety.Visible = False
        
        If Repindex = 3330 Then
            Frame1.Height = 3500
            SSTab1.Height = 3650
            Option3.Top = 2750
            Option2.Top = 2750
            Option6.Top = 2750
            Option3.Visible = True
            Option2.Visible = True
            Option6.Visible = True
            Option2.Caption = "Transport"
            Option6.Caption = "Supplier"
            Option2.Enabled = True
            Option6.Height = Option2.Height
            Command1.Visible = True
            
            
            
            
        End If
        
         If Repindex <> 3654 Then
        
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT a.LotNo,a.lotdt from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.LOTNo ", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromLotNo.RowSource = rstLoad
            cboFromLotNo.ListField = "LotNo"
            rstLoad.MoveFirst
            cboFromLotNo.Text = rstLoad!lotno
            Set cboToLotNo.RowSource = rstLoad
            cboToLotNo.ListField = "LotNo"
            rstLoad.MoveLast
            cboToLotNo.Text = rstLoad!lotno
        End If
        
        If Repindex = 3012 Then
            Set rstLoad = New Recordset
            rstLoad.Open "select DISTINCT a.pLotNo from rm_lot a where LOTYEAR='" & Year(yfdate) & "' AND a.DIVCODE ='" & Divcode & "' order by a.pLOTNo ", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromLotNo.RowSource = rstLoad
                cboFromLotNo.ListField = "pLotNo"
                rstLoad.MoveFirst
                cboFromLotNo.Text = rstLoad!PlotNo
                Set cboToLotNo.RowSource = rstLoad
                cboToLotNo.ListField = "pLotNo"
                rstLoad.MoveLast
                cboToLotNo.Text = rstLoad!PlotNo
            End If
        End If
        End If
        Label8.Caption = "Station From"
        Label9.Caption = "Station To"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct Station + ' -- ' + AreaCode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromVariety.RowSource = rstLoad
            cboFromVariety.ListField = "area"
            rstLoad.MoveFirst
            cboFromVariety.Text = rstLoad!area
            Set cboToVariety.RowSource = rstLoad
            cboToVariety.ListField = "area"
            rstLoad.MoveLast
            cboToVariety.Text = rstLoad!area
        End If
        
        
       If Repindex = 3654 Then
      
              Set rstLoad = New Recordset
            rstLoad.Open "select DISTINCT a.docno from rm_issrtnh a where docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND a.DIVCODE ='" & Divcode & "' order by a.docno ", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromLotNo.RowSource = rstLoad
                cboFromLotNo.ListField = "docno"
                rstLoad.MoveFirst
                cboFromLotNo.Text = rstLoad!docNo
                Set cboToLotNo.RowSource = rstLoad
                cboToLotNo.ListField = "docno"
                rstLoad.MoveLast
                cboToLotNo.Text = rstLoad!docNo
                
                
                
            End If
            cmdReport.Visible = False
               LblFLTN.Visible = False
        Label6.Visible = False
        Option1.value = True
        cboFromNo.Visible = False
        cboToNo.Visible = False
        chkStock.Visible = False
        cmdCrystalReport.Visible = True
        
        dtpFromDate.Visible = False
        dtpToDate.Visible = False
        dtpToDate.Visible = False
        Frame1.Height = 2900
        SSTab1.Height = 3050
        Label4.Visible = False
        Label3.Visible = False
          Label1.Visible = False
        Label2.Visible = False
         Label7.Visible = False
        cboToSupplier.Visible = False
        cboFromSupplier.Visible = False
        Label5.Visible = True
        cboToLotNo.Top = 1470
        cboToLotNo.Left = cboFromLotNo.Left
            
       End If
        
       

End Select
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option1_Click()

    Label7.Caption = "From Supplier"
    Label4.Caption = "To Supplier"
    Set Rs = New Recordset
    Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
    If Rs.EOF = False Then
        Ptype = Rs(0) '& "%"
    End If
    Set rstLoad = New Recordset
    rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas where left(slcode,2) in (select Items from dbo.split('" & Ptype & "',','))  order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
    If Not rstLoad.EOF Then
        Set cboFromSupplier.RowSource = rstLoad
        cboFromSupplier.ListField = "SUP"
        rstLoad.MoveFirst
        cboFromSupplier.Text = rstLoad!sup
        Set cboToSupplier.RowSource = rstLoad
        cboToSupplier.ListField = "SUP"
        rstLoad.MoveLast
        cboToSupplier.Text = rstLoad!sup
    End If
    If Repindex = 3330 Then
        Label7.Caption = "From Transporter"
        Label4.Caption = "To Transporter"
        Set rstLoad = New Recordset
        rstLoad.Open "select Distinct A.carcode + ' - ' + C.Carname as Sup,a.Carcode  from RM_ARRIVAL A, RM_LOT B,PO_CAR C where A.Arrno=B.Arrno and A.Arrdate=B.Arrdt and A.Divcode=B.Divcode and a.carcode=C.Carcode Order by A.Carcode", DB, adOpenStatic, adLockBatchOptimistic
'        rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "SUP"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!sup
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "SUP"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!sup
        End If
    End If
    
End Sub

Private Sub Option2_Click()
    If Repindex <> 3330 Then
        Label7.Caption = "From Area"
        Label4.Caption = "To Area"
        Set rstLoad = New Recordset
        rstLoad.Open "select distinct areaname + ' -- ' + areacode AS area,areacode from rm_area order by areacode", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set cboFromSupplier.RowSource = rstLoad
            cboFromSupplier.ListField = "area"
            rstLoad.MoveFirst
            cboFromSupplier.Text = rstLoad!area
            Set cboToSupplier.RowSource = rstLoad
            cboToSupplier.ListField = "area"
            rstLoad.MoveLast
            cboToSupplier.Text = rstLoad!area
        End If
    End If
End Sub
Private Sub Option3_Click()
    If Repindex <> 3330 Then
           Set Rs = New Recordset
            Rs.Open "Select ptypeCotton from masterlen", DB, adOpenStatic
            If Rs.EOF = False Then
                Ptype = Rs(0)
            End If
            
        
            Label7.Caption = "From Supplier"
            Label4.Caption = "To Supplier"
            Set rstLoad = New Recordset
            rstLoad.Open "select distinct SLNAME + ' -- ' + SLCODE AS SUP,SLCODE from fa_slmas Where left(slcode,2) in (select Items from dbo.split('" & Ptype & "',','))  order by SLCODE", DB, adOpenStatic, adLockBatchOptimistic
            If Not rstLoad.EOF Then
                Set cboFromSupplier.RowSource = rstLoad
                cboFromSupplier.ListField = "SUP"
                rstLoad.MoveFirst
                cboFromSupplier.Text = rstLoad!sup
                Set cboToSupplier.RowSource = rstLoad
                cboToSupplier.ListField = "SUP"
                rstLoad.MoveLast
                cboToSupplier.Text = rstLoad!sup
            End If

       
    End If
End Sub

'---------------------------------------------------------------------------------------
' Procedure : SalujaStockLotwise
' DateTime  : 28/02/2009 19:04
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------
'
Public Sub SalujaStockLotwise(W As String, rectype As String)
    Dim rs1 As Recordset
    Dim rs2 As Recordset
    Dim PageLen As Integer
    Dim RESULT As Recordset
    Dim rptv As Report.ReportView
    Dim SR As String
    Dim Cnn As Connection

    
   On Error GoTo SalujaStockLotwise_Error

    Set Cnn = New Connection
    PageLen = 63
    Set rs2 = New Recordset
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring
    vrectype = Trim(Left(rectype, 3))
    catcd = Trim(Left(W, 1))
    
        Set rs1 = New Recordset
            strSQL = ""
    
            strSQL = " select CATNAME,a.LOTNO,PLOTNO,A.LOTDT,VARNAME,BBLFLG as unit,CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as opbales,"
            strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as opbORAS,"
            strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPKGS,"
            strSQL = strSQL + "SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.PRODKGS,0)) +SUM(ISNULL(A.SALESKGS,0))+SUM(ISNULL(A.TRANSKGS,0))+SUM(ISNULL(A.JWKGS,0))+SUM(ISNULL(A.REJKGS,0)) AS ISSKGS,"
            strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
            strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLOBALES,"
            strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
            strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLOBORAS,"
            strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
            strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLOKGS,"
            strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
            strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLOVALUE"
            strSQL = strSQL + ",ISNULL(RATEKG,0) AS RATEKG,ISNULL(RATECY,0) AS RATECY FROM ("
            strSQL = strSQL + gStockStatement(U, v)
            strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C,rm_CAT D,FA_SLMAS E WHERE B.SUPCD=E.SLCODE AND B.CATCD= D.CATCD AND B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE " & _
            strSQL = strSQL + " B.Varcode between '" & fVariety & "' And '" & tVariety & "' And B.plotno between '" & fPlotno & "' And '" & tPlotno & "' And b.Supcd between '" & fSupplier & "' And '" & tSupplier & "'"
    
                        
            If Trim(Left(W, 3)) <> "ALL" Then
                      
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                    Else
                        strSQL = strSQL & " and b.Transfertype = '" & Trim(vrectype) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                    End If
                Else
                        strSQL = strSQL & " and b.divcode='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' And b.catcd= '" & Trim(Trim(Left(W, 1))) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            Else
                If vrectype <> "ALL" Then
                    If vrectype = "A" Then
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and (b.transfertype='' or b.transfertype='JR') and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                    Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.Transfertype = 'A' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                    End If
                Else
                        strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by CATNAME,a.LOTNO,A.LOTDT,PLOTNO,VARNAME,BBLFLG,RATECY,RATEKG,slname"
                End If
            End If
        Set rs1 = New Recordset
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
    
    DB.Execute "Create table StockLotwisetemp1(Catname char(20),lotno numeric(5),plotno varchar(20),lotdt datetime,varname char(50),unit char(10),opbales numeric(8),opboras numeric(5),opkgs numeric(18,3),reckgs numeric(18,3),isskgs numeric(18,3),clobales numeric(8),cloboras numeric(8),clokgs numeric(18,3),value numeric(18,3),ratekg numeric(18,4),ratecy numeric(18,4))"
    
    Do While Not rs1.EOF
        SqlStr = "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "'," & Format(rs1(3), "yyyy-MM-dd") & ",'" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & ")"
        DB.Execute "insert into StockLotwisetemp1 Values ('" & rs1(0) & " '," & rs1(1) & ",'" & rs1(2) & "'," & Format(rs1(3), "yyyy-MM-dd") & ",'" & rs1(4) & "','" & IIf(rs1(5) = "B", "BALES", "BORAH") & "'," & rs1(6) & "," & rs1(7) & "," & rs1(8) & "," & rs1(9) & " , " & rs1(10) & ", " & rs1(11) & ", " & rs1(12) & "," & rs1(13) & "," & rs1(14) & "," & rs1(15) & "," & rs1(16) & ")"
        rs1.MoveNext
    Loop

   Exit Sub
SalujaStockLotwise_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SalujaStockLotwise of Form frmReport"
End Sub

Private Sub QualityParamExcel()
On Error GoTo QualityParamExcel_Click_Error


tmpFile = "QualityParameter"
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
        Rs.Open "select * from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs("divname")

        oSheet.Cells(2, 5).value = "Inspection & Quality Parameter List from " & Format(dtpFromDate.value, "dd/mm/yyyy") & " to " & Format(dtpToDate, "dd/mm/yyyy") & ""
      
        oSheet.Name = "InsQuaParameter"
      
        DB.Execute "Exec InsQualParam_Header 'RM_InsQualParam'"
        
        Set Rs = New Recordset
        Rs.Open "SELECT name FROM sys.columns WHERE object_id = OBJECT_ID('InsQualParam_Excel') order by column_id", DB
        X = 1
        While Not Rs.EOF
            oSheet.Cells(4, X).value = Rs(0)
            Rs.MoveNext
            X = X + 1
        Wend

        m_ROW = oSheet.UsedRange.Rows.Count
        lr = "A1"
'        HR = Chr(X + 63) & "1"
        HR = "AF1"
        oSheet.Range(lr, HR).MergeCells = True
        oSheet.Range(lr, HR).HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 18
        .Color = vbBlue
        End With
                
        lr = "A2"
        'HR = Chr(X + 63) & "2"
        HR = "AF2"
        oSheet.Range(lr, HR).MergeCells = True
        oSheet.Range(lr, HR).HorizontalAlignment = Excel.xlLeft
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbMagenta
        End With
        
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "AF" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbRed
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


     

     Set Rs = New Recordset
     Rs.Open "Exec SP_S_QUALITY_PARAMETER_excel '" & Divcode & "','" & Format(dtpFromDate.value, "yyyy-mm-dd") & "','" & Format(dtpToDate.value, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(pdate, "yyyy-mm-dd") & "'", DB, adOpenStatic

        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
            co = 5
            i1 = 1
            
            oSheet.Cells(co, i1).CopyFromRecordset Rs
                
                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                
                m_ROW = oSheet.UsedRange.Rows.Count
                MR = "O" & m_ROW

'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"

                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "AF" & m_ROW
                
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
                
                Set oSheet = Nothing
                Set Myxl = Nothing

  
    Exit Sub
QualityParamExcel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub
