VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_LotCertificate 
   Caption         =   "Lot Certificate Entry"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form4"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   0
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":0000
         Height          =   510
         Index           =   4
         Left            =   1620
         Picture         =   "Frm_LotCertificate.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Find (Ctrl R)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":069F
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "Frm_LotCertificate.frx":0AE9
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":0E4B
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "Frm_LotCertificate.frx":1155
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":14D1
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "Frm_LotCertificate.frx":17DB
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   105
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":1B7D
         Height          =   510
         Index           =   11
         Left            =   5295
         Picture         =   "Frm_LotCertificate.frx":1FC7
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":235C
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "Frm_LotCertificate.frx":27A6
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":2AF6
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_LotCertificate.frx":2E00
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":317A
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   1095
         Picture         =   "Frm_LotCertificate.frx":3484
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":3820
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "Frm_LotCertificate.frx":3C6A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":3FCF
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_LotCertificate.frx":42D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_LotCertificate.frx":466C
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "Frm_LotCertificate.frx":4AB6
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record (Ctrl Down)"
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7320
         TabIndex        =   13
         Top             =   240
         Width           =   600
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
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
         Left            =   9000
         TabIndex        =   12
         Top             =   240
         Width           =   630
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   6705
      Top             =   8355
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   14
      Top             =   2790
      Width           =   4680
      _ExtentX        =   8255
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12630
            MinWidth        =   12630
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "07/03/2024"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "12:44 PM"
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
      Height          =   3570
      Left            =   135
      TabIndex        =   15
      Top             =   1230
      Width           =   7410
      _ExtentX        =   13070
      _ExtentY        =   6297
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Lot Certificate Entry"
      TabPicture(0)   =   "Frm_LotCertificate.frx":4E03
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame7 
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3045
         Left            =   90
         TabIndex        =   16
         Top             =   360
         Width           =   7065
         Begin VB.TextBox txtFields 
            DataField       =   "CertificateNo"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   7
            Left            =   1335
            TabIndex        =   45
            Top             =   2640
            Width           =   2565
         End
         Begin VB.TextBox txtFields 
            DataField       =   "CertificateNo"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   6
            Left            =   1335
            TabIndex        =   41
            Top             =   2160
            Width           =   2565
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "LotNo"
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   5
            Left            =   3195
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   36
            TabStop         =   0   'False
            Top             =   1260
            Width           =   990
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00C0C0C0&
            DataField       =   "GRDOCNO"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   2565
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   35
            TabStop         =   0   'False
            Top             =   840
            Width           =   4290
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "slcode"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   840
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            DataField       =   "CertificateNo"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   1335
            TabIndex        =   34
            Top             =   1740
            Width           =   2565
         End
         Begin VB.TextBox Text10 
            Height          =   345
            Left            =   7200
            TabIndex        =   23
            Top             =   6960
            Visible         =   0   'False
            Width           =   1905
         End
         Begin VB.TextBox txtFields 
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   26
            Left            =   3360
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   22
            TabStop         =   0   'False
            Top             =   6960
            Visible         =   0   'False
            Width           =   3765
         End
         Begin VB.TextBox txtFields 
            DataField       =   "colorcode"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   75
            Left            =   1200
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            Top             =   6960
            Visible         =   0   'False
            Width           =   2085
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Docno"
            Enabled         =   0   'False
            ForeColor       =   &H00808080&
            Height          =   330
            Index           =   0
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   20
            TabStop         =   0   'False
            Top             =   427
            Width           =   1170
         End
         Begin VB.TextBox txtFields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "SLotNo"
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   15
            TabIndex        =   17
            TabStop         =   0   'False
            Top             =   1245
            Width           =   1140
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "docdt"
            Height          =   330
            Index           =   0
            Left            =   5640
            TabIndex        =   18
            TabStop         =   0   'False
            Top             =   420
            Width           =   1170
            _ExtentX        =   2064
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            Enabled         =   0   'False
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
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "Lotdt"
            Height          =   330
            Index           =   1
            Left            =   5235
            TabIndex        =   19
            TabStop         =   0   'False
            Top             =   1260
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            Enabled         =   0   'False
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
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "CertificateDt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   270
            Index           =   2
            Left            =   5250
            TabIndex        =   39
            ToolTipText     =   "Reference Date"
            Top             =   1740
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   476
            _Version        =   393216
            Appearance      =   0
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "CertificateDt"
            Height          =   315
            Left            =   5235
            TabIndex        =   40
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1590
            _ExtentX        =   2805
            _ExtentY        =   556
            _Version        =   393216
            Format          =   156631041
            CurrentDate     =   36218
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "CertificateDt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   270
            Index           =   3
            Left            =   5250
            TabIndex        =   42
            ToolTipText     =   "Reference Date"
            Top             =   2160
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   476
            _Version        =   393216
            Appearance      =   0
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "CertificateDt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "dd/MM/yyyy"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   3
            EndProperty
            Height          =   255
            Index           =   4
            Left            =   5250
            TabIndex        =   46
            ToolTipText     =   "Reference Date"
            Top             =   2640
            Width           =   1275
            _ExtentX        =   2249
            _ExtentY        =   450
            _Version        =   393216
            Appearance      =   0
            ForeColor       =   0
            MaxLength       =   10
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            DataField       =   "CertificateDt"
            Height          =   315
            Left            =   5235
            TabIndex        =   49
            TabStop         =   0   'False
            Top             =   2160
            Width           =   1590
            _ExtentX        =   2805
            _ExtentY        =   556
            _Version        =   393216
            Format          =   156631041
            CurrentDate     =   36218
         End
         Begin MSComCtl2.DTPicker DTPicker3 
            DataField       =   "CertificateDt"
            Height          =   315
            Left            =   5235
            TabIndex        =   50
            TabStop         =   0   'False
            Top             =   2640
            Width           =   1590
            _ExtentX        =   2805
            _ExtentY        =   556
            _Version        =   393216
            Format          =   156631041
            CurrentDate     =   36218
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Certificate No.3"
            Height          =   195
            Left            =   120
            TabIndex        =   48
            Top             =   2715
            Width           =   1095
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Certificate Date3"
            Height          =   195
            Left            =   3930
            TabIndex        =   47
            Top             =   2685
            Width           =   1185
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Certificate No.2"
            Height          =   195
            Left            =   120
            TabIndex        =   44
            Top             =   2235
            Width           =   1095
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Certificate Date2 "
            Height          =   195
            Left            =   3930
            TabIndex        =   43
            Top             =   2205
            Width           =   1230
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Certificate Date "
            Height          =   195
            Left            =   4050
            TabIndex        =   38
            Top             =   1785
            Width           =   1140
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            Height          =   195
            Index           =   2
            Left            =   2595
            TabIndex        =   37
            Top             =   1305
            Width           =   525
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   33
            Top             =   915
            Width           =   570
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Certificate No."
            Height          =   195
            Left            =   120
            TabIndex        =   31
            Top             =   1815
            Width           =   1005
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Lot DocDt."
            Height          =   195
            Left            =   4305
            TabIndex        =   30
            Top             =   1320
            Width           =   1155
         End
         Begin VB.Label Label97 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Doc. Date"
            Height          =   195
            Left            =   3840
            TabIndex        =   28
            Top             =   495
            Width           =   735
         End
         Begin VB.Label Label96 
            AutoSize        =   -1  'True
            Caption         =   "Doc.  No"
            Height          =   195
            Left            =   120
            TabIndex        =   27
            Top             =   495
            Width           =   645
         End
         Begin VB.Label Label76 
            Caption         =   "Label76"
            Height          =   15
            Left            =   840
            TabIndex        =   26
            Top             =   1845
            Width           =   255
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Lot No."
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   25
            Top             =   1320
            Width           =   1140
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   240
            TabIndex        =   24
            Top             =   7080
            Width           =   360
         End
      End
   End
   Begin VB.Label Label41 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot/Bale Details"
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
      Left            =   135
      TabIndex        =   29
      Top             =   120
      Width           =   2100
   End
End
Attribute VB_Name = "Frm_LotCertificate"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Opt As String
Dim adoPrimaryRS As New Recordset
Dim DB As New Connection

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
    Opt = "add"
    On Error Resume Next
    desc.Caption = "Addition"
    SSTab1.Tab = 0
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CertificateNo,Docno,DocDt,SLotNo,LotDt,slcode,LotNo,CertificateDt,CertificateNo2,CertificateDt2,CertificateNo3,CertificateDt3 FROM RM_Certificate WHERE 1=2  and divcode='" & Divcode & "' and LotDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    Txtfields(0).Text = ""
    Txtfields(1).Text = ""
    Txtfields(2).Text = ""
    Txtfields(3).Text = ""
    Txtfields(4).Text = ""
    Txtfields(5).Text = ""
    Txtfields(6).Text = ""
    Txtfields(7).Text = ""
    Frame7.Enabled = True
    Txtfields(0).Locked = False
    Txtfields(1).Locked = False
    Txtfields(2).Enabled = True
    Txtfields(2).Locked = False
    DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    MaskEdBox1(2).Text = Format(pdate, "dd/mm/yyyy")
    MaskEdBox1(0).Text = Format(pdate, "dd/mm/yyyy")
    MaskEdBox1(1).Text = "__/__/____"
    MaskEdBox1(1).Enabled = True
    MaskEdBox1(2).Text = "__/__/____"
    MaskEdBox1(2).Enabled = True
    MaskEdBox1(3).Text = "__/__/____"
    MaskEdBox1(3).Enabled = True
    MaskEdBox1(4).Text = "__/__/____"
    MaskEdBox1(4).Enabled = True
    DTPicker2.value = Format(pdate, "dd/mm/yyyy")
    DTPicker3.value = Format(pdate, "dd/mm/yyyy")
    'BUTTON(9).ToolTipText = "Add Record"
    Call adddelmod(BUTTON)
    Txtfields(3).SetFocus
    
Case 1, 2, 4
   
    If Index = 1 Then
        Opt = "mod"
        desc.Caption = "Modification"
    ElseIf Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
    End If
    Txtfields(0).Text = ""
    Txtfields(1).Text = ""
    MaskEdBox1(0).Text = "__/__/____"
    LookUp.Clear = True
    LookUp.query = "select distinct Docno as DocNo,DocDt as Date,SLotNo as ""Supplier Lot No."" from RM_Certificate A where DocDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "'   "
    LookUp.DefCol = "DocNo"
    LookUp.Caption = "CertificateNo Listing"
    LookUp.ALIGN = "2000,2000,2000"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CertificateNo,Docno,DocDt,SLotNo,LotDt,slcode ,LotNo,CertificateDt,CertificateNo2,CertificateDt2,CertificateNo3,CertificateDt3 FROM RM_Certificate WHERE    Docno='" & LookUp.Fields(0) & "' and DocDt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockOptimistic
    If Not adoPrimaryRS.EOF Then
        Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(2).Text = adoPrimaryRS("CertificateNo")
        Txtfields(5).Text = adoPrimaryRS("lotno")
        MaskEdBox1(2).Text = adoPrimaryRS("certificatedt")
        DTPicker1.value = adoPrimaryRS("certificatedt")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        Txtfields(2).Enabled = True
        Frame7.Enabled = True
        Txtfields(2).Locked = False
        MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("Certificatedt2")), "__/__/____", adoPrimaryRS("Certificatedt2"))
        Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("CertificateNo2")), "", adoPrimaryRS("CertificateNo2"))
        MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("Certificatedt3")), "__/__/____", adoPrimaryRS("Certificatedt3"))
        Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("CertificateNo3")), "", adoPrimaryRS("CertificateNo3"))
        Txtfields(6).Enabled = True
        Txtfields(7).Enabled = True
    End If
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Call disablcontls
    If Opt = "mod" Then
        Call ENABLCONTLS
        BUTTON(9).ToolTipText = "Modify"
        Txtfields(1).Locked = False
        StatusBar1.Panels(2).Text = "Select Any Row for Modification"
    ElseIf Opt = "del" Then
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Any Row for Deletion"
    End If
    If Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        Call adddelmod(BUTTON)
    End If
    If Opt = "fnd" Then
        BUTTON(9).Enabled = False
    End If
    Txtfields(0).Locked = True
    If Opt = "mod" Then
        Txtfields(2).Enabled = True
        Frame7.Enabled = True
        Txtfields(2).Locked = False
    End If
     Txtfields(6).Locked = False
     Txtfields(7).Locked = False
Case 2


    'Deletion
    Set rsz = New Recordset
    rsz.Open "select max(lotdt) from RM_Certificate where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Invalid Processing Date...!!!", vbInformation, head
                Exit Sub
            End If
        End If
    End If

    
    DB.Execute "delete from RM_Certificate where lotno='" & Txtfields(0).Text & "'"
    Opt = "del"
    Txtfields(0).Text = ""
    Txtfields(1).Text = ""
    MaskEdBox1(0).Text = "__/__/____"
    desc.Caption = "Deletion"
    BUTTON(4).Enabled = False
    'Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    StatusBar1.Panels(2).Text = "Select Any Row for Delition"

Case 5
     'first
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "First Record"
     On Error GoTo GoFirstError
     adoPrimaryRS.MoveFirst
     'Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "First Record"
     Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(2).Text = IIf(IsNull(adoPrimaryRS("CertificateNo")), "", adoPrimaryRS("CertificateNo"))
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        MaskEdBox1(2).Text = adoPrimaryRS("certificatedt")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        Txtfields(5).Text = adoPrimaryRS("lotno")
          MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("Certificatedt2")), "__/__/____", adoPrimaryRS("Certificatedt2"))
        Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("CertificateNo2")), "", adoPrimaryRS("CertificateNo2"))
        MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("Certificatedt3")), "__/__/____", adoPrimaryRS("Certificatedt3"))
        Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("CertificateNo3")), "", adoPrimaryRS("CertificateNo3"))

     Beep
     Exit Sub
GoFirstError:
    MsgBox Err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
      On Error GoTo GoNextError
        
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
      End If
      If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        'Call NEX(BUTTON)
        'moved off the end so go back
        adoPrimaryRS.MoveLast
       ' Call bindcontls
           Beep
      End If
      Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(2).Text = adoPrimaryRS("LotNo")
        Txtfields(2).Text = IIf(IsNull(adoPrimaryRS("CertificateNo")), "", adoPrimaryRS("CertificateNo"))
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        MaskEdBox1(2).Text = adoPrimaryRS("certificatedt")
          MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("Certificatedt2")), "__/__/____", adoPrimaryRS("Certificatedt2"))
        Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("CertificateNo2")), "", adoPrimaryRS("CertificateNo2"))
        MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("Certificatedt3")), "__/__/____", adoPrimaryRS("Certificatedt3"))
        Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("CertificateNo3")), "", adoPrimaryRS("CertificateNo3"))

' show the current record
     ' Call navi(BUTTON)
      If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
        BUTTON(8).Enabled = False
        BUTTON(6).Enabled = False
        BUTTON(4).Enabled = True
        Beep
      Else
        BUTTON(8).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(4).Enabled = True
      End If
      Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
 
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(4).Enabled = True
    End If

    If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
        Beep
        'moved off the end so go back
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(6).Enabled = True
        BUTTON(8).Enabled = True
        'Call PREV(BUTTON)
        adoPrimaryRS.MoveFirst
        BUTTON(4).Enabled = True
    End If
    'show the current record
    Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(2).Text = IIf(IsNull(adoPrimaryRS("CertificateNo")), "", adoPrimaryRS("CertificateNo"))
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        Txtfields(5).Text = adoPrimaryRS("LotNo")
        MaskEdBox1(2).Text = adoPrimaryRS("certificatedt")
        MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("Certificatedt2")), "__/__/____", adoPrimaryRS("Certificatedt2"))
        Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("CertificateNo2")), "", adoPrimaryRS("CertificateNo2"))
        MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("Certificatedt3")), "__/__/____", adoPrimaryRS("Certificatedt3"))
        Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("CertificateNo3")), "", adoPrimaryRS("CertificateNo3"))
        
        
        
        

   ' Call navi(BUTTON)
    If adoPrimaryRS.AbsolutePosition = 1 Then
        BUTTON(5).Enabled = False
        BUTTON(7).Enabled = False
        BUTTON(4).Enabled = True
        Beep
        Else
        BUTTON(5).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(4).Enabled = True
        End If
        
    Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     StatusBar1.Panels(2).Text = "Last Record"
     adoPrimaryRS.MoveLast
    'calling las procedure from module
     'Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "Last Record"
        Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        Txtfields(2).Text = IIf(IsNull(adoPrimaryRS("CertificateNo")), "0", adoPrimaryRS("CertificateNo"))
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        Txtfields(5).Text = adoPrimaryRS("LotNo")
        MaskEdBox1(2).Text = adoPrimaryRS("certificatedt")
    Beep
     Exit Sub

GoLastError:
   MsgBox Err.Description, vbInformation, head

Case 9
'     Save

If Opt = "add" Then
    If Trim(Txtfields(2).Text) = "" Then
        MsgBox ("Please Enter Out throws%"), vbCritical, head
        SSTab1.Tab = 0
        Txtfields(0).Text = ""
        Txtfields(0).SetFocus
        Exit Sub
    End If
    
    If Trim(Txtfields(1).Text) = "" Then
        MsgBox ("Please Enter Receipt Number"), vbCritical, head
        SSTab1.Tab = 0
        Txtfields(1).Text = ""
        Txtfields(1).Locked = False
        Txtfields(1).Enabled = True
        Txtfields(1).SetFocus
        Exit Sub
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    If MaskEdBox1(2).Text = "__/__/____" Then
        MsgBox ("Please Enter Certificate Date"), vbInformation, head
        Exit Sub
    End If
End If
 If Opt = "add" Then
         Set Rs = New Recordset
            Rs.Open "Select * from RM_Certificate where divcode='" & Divcode & "' and   DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                Set Rs = New Recordset
                Rs.Open "SELECT ISNULL(MAX(ISNULL(docno,0)),0)+1 FROM RM_Certificate WHERE    DIVCODE='" & Divcode & "' AND DOCDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic
                If Not Rs.EOF Then
                    Txtfields(0).Text = Rs(0)
                    Txtfields(0).Locked = False
                End If
            Else
                Txtfields(0).Text = "1"
                Txtfields(0).Locked = False
            End If
 
 
       Set rsslot = New Recordset
       rsslot.Open "SELECT DIVCODE,Docno,CertificateNo,DocDt,SLotNo,LotDt,slcode,LotNo,CertificateDt,CertificateNo2,CertificateDt2,CertificateNo3,CertificateDt3 FROM RM_Certificate WHERE 1=2  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Dim f As Integer
            rsslot.AddNew
            rsslot("Divcode") = Divcode
            rsslot("Docno") = Txtfields(0).Text
            rsslot("CertificateNo") = Txtfields(2).Text
            rsslot("slcode") = Txtfields(3).Text
            rsslot("DocDt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsslot("SLotNo") = Txtfields(1).Text
            rsslot("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            rsslot("LotNo") = Txtfields(5).Text
            If MaskEdBox1(2).Text <> "__/__/____" Then
                rsslot("certificatedt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            Else
'                rsslot("certificatedt") = Null
            End If
            If MaskEdBox1(3).Text = "__/__/____" Then
                rsslot("Certificatedt2") = Null
            Else
                
                rsslot("Certificatedt2") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            rsslot("CertificateNo2") = Txtfields(6).Text
           ' rsslot("Certificatedt3") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            If MaskEdBox1(4).Text = "__/__/____" Then
                rsslot("Certificatedt3") = Null
            Else
                
                rsslot("Certificatedt3") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
            
            rsslot("CertificateNo3") = Txtfields(7).Text
            
            
                                   
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Lot Certificate"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Txtfields(3).Text
                            TrnLog("docno") = val(Txtfields(0).Text)
                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                            TrnLog("billno") = Txtfields(2).Text
                            If MaskEdBox1(2).Text <> "__/__/____" Then
                                TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            TrnLog("LotNo") = Txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
            
            

            DB.Execute "update rm_lot set CertificateNo = '" & Txtfields(2).Text & "', certificatedt = '" & Format(rsslot("certificatedt"), "yyyy-mm-dd") & "',CertificateNo2 = '" & Txtfields(6).Text & "', CertificateDt2 = '" & Format(rsslot("certificatedt2"), "yyyy-mm-dd") & "',CertificateNo3 = '" & Txtfields(7).Text & "', CertificateDt3 = '" & Format(rsslot("certificatedt3"), "yyyy-mm-dd") & "' where lotno='" & Txtfields(5).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'"
       rsslot.UpdateBatch adAffectAllChapters
       'db.CommitTrans
       MsgBox "Record Saved Successfully", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
End If
    
If Opt = "mod" Then
        If Trim(Txtfields(0).Text) = "" Then
            MsgBox ("Please Enter Lot Number"), vbCritical, head
            SSTab1.Tab = 0
            Txtfields(0).Text = ""
            Txtfields(0).SetFocus
            Exit Sub
        End If
        
        If Trim(Txtfields(1).Text) = "" Then
            MsgBox ("Please Enter Lot Number"), vbCritical, head
            SSTab1.Tab = 0
            Txtfields(1).Text = ""
            Txtfields(1).SetFocus
            Exit Sub
        End If
        Set rsslot = New Recordset
        rsslot.Open "SELECT DIVCODE,Docno,CertificateNo,DocDt,SLotNo,LotDt,slcode,LotNo,CertificateDt,CertificateNo2,CertificateDt2,CertificateNo3,CertificateDt3 FROM RM_Certificate WHERE Docno='" & Txtfields(0).Text & "' and divcode='" & Divcode & "' and DocDt='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
       If Not rsslot.EOF Then
            rsslot("Divcode") = Divcode
            rsslot("Docno") = Txtfields(0).Text
            rsslot("CertificateNo") = Txtfields(2).Text
            rsslot("slcode") = Txtfields(3).Text
            rsslot("DocDt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            rsslot("SLotNo") = Txtfields(1).Text
            rsslot("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            rsslot("LotNo") = Txtfields(5).Text
           ' rsslot("certificatedt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
           ' rsslot("Certificatedt2") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            rsslot("CertificateNo2") = Txtfields(6).Text
           ' rsslot("Certificatedt3") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            rsslot("CertificateNo3") = Txtfields(7).Text
             If MaskEdBox1(3).Text = "__/__/____" Then
                rsslot("Certificatedt2") = Null
            Else
                
                rsslot("Certificatedt2") = Format(MaskEdBox1(3).Text, "yyyy-mm-dd")
            End If
            rsslot("CertificateNo2") = Txtfields(6).Text
           ' rsslot("Certificatedt3") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            If MaskEdBox1(4).Text = "__/__/____" Then
                rsslot("Certificatedt3") = Null
            Else
                
                rsslot("Certificatedt3") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If

                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Lot Certificate"
                            TrnLog("Trans_Mod") = "Mod"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Txtfields(3).Text
                            TrnLog("docno") = val(Txtfields(0).Text)
                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                            TrnLog("billno") = Txtfields(2).Text
                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            TrnLog("LotNo") = Txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
            DB.Execute "update rm_lot set CertificateNo = '" & Txtfields(2).Text & "', certificatedt = '" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "',CertificateNo2 = '" & Txtfields(6).Text & "', CertificateDt2 = '" & Format(rsslot("Certificatedt2"), "yyyy-mm-dd") & "',CertificateNo3 = '" & Txtfields(7).Text & "', CertificateDt3 = '" & Format(rsslot("Certificatedt3"), "yyyy-mm-dd") & "' where lotno='" & Txtfields(5).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'"
        End If
       rsslot.UpdateBatch adAffectAllChapters
       'db.CommitTrans
       MsgBox "Record Modified Successfully", vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
  End If

 If Opt = "del" Then
        DB.BeginTrans
        Set rsa = New Recordset
        DB.Execute "update rm_lot set CertificateNo = Null ,certificatedt = Null,CertificateNo2 = Null , CertificateDt2 = Null, CertificateNo3 = Null, CertificateDt3 = Null where lotno='" & Txtfields(5).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'"
        DB.Execute ("delete from RM_Certificate where  divcode='" & Divcode & "' and Docno = " & adoPrimaryRS("Docno") & " and DocDt= '" & Format(adoPrimaryRS("DocDt"), "YYYY-MM-DD") & "'")
        DB.CommitTrans
        
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Lot Certificate"
                            TrnLog("Trans_Mod") = "Del"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("slcode") = Txtfields(3).Text
                            TrnLog("docno") = val(Txtfields(0).Text)
                            TrnLog("docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
                            TrnLog("billno") = Txtfields(2).Text
                            TrnLog("BILLDATE") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
                            TrnLog("LotDt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            TrnLog("LotNo") = Txtfields(5).Text
                            
                            TrnLog.UpdateBatch adAffectAllChapters
        
        
        MsgBox "Record Deleted Successfully", vbInformation, head
        Frame7.Enabled = True
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
        BUTTON(4).Enabled = True
 End If
    
    'Return to query mode
    Txtfields(0).Text = ""
    Txtfields(1).Text = ""
     Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
GOPRIMERROR:
    If Err = -2147217900 Then
        MsgBox "Division Code Already Exists ", vbInformation, head
        GoTo gocancel
    End If
del:

If Err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If


errn:
    If Err.Number = "-2147217900" Then
        MsgBox ("Select the correct count code"), vbInformation, head
        SSTab1.Tab = 0
        Txtfields(30).Text = ""
        Txtfields(30).SetFocus
        'Call BUTTON_Click(10)
        Exit Sub
    End If
Case 10
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    On Error Resume Next
    Select Case Opt
        Case "mod"
            DB.RollbackTrans
        Case "add"
            DB.RollbackTrans
        Case "del"
            DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount <> 0 Then
        Call NEWFORM1(BUTTON, GSNO)
    End If
    Frame7.Visible = True
    Frame7.Enabled = True
    'Frame1.Enabled = True
    BUTTON(0).SetFocus ''''''''''
Case 11
    'EXIT
    Unload Me
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frmlotbale", vbInformation, head
    
End Sub

Private Sub DTPicker1_CloseUp()
On Error Resume Next
MaskEdBox1(2).Text = Format(DTPicker1.value, "dd/MM/yyyy")
End Sub

Private Sub DTPicker2_CloseUp()
On Error Resume Next
MaskEdBox1(3).Text = Format(DTPicker2.value, "dd/MM/yyyy")
End Sub

Private Sub DTPicker3_CloseUp()
 On Error Resume Next
MaskEdBox1(4).Text = Format(DTPicker3.value, "dd/MM/yyyy")
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error Resume Next
intervalMinutes = -1
    If KeyCode = vbKeyA And Shift = 2 Then
    If BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    End If
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
    If BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    End If
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
    If BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    End If
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
    End If
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)
    End If
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
    If BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    End If
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
    If BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    End If
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    End If
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
     If BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    End If
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    End If
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    End If
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    End If
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    End If
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
    ''    Call BUTTON_Click(13)
    End If

    
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

intervalMinutes = -1
   Set DB = New Connection
   DB.CursorLocation = adUseClient
   DB.Open "PROVIDER=MSDataShape;" & connectstring
   
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"
    
  Opt = ""
  DATLAB.Caption = pdate
  SSTab1.Visible = True
  Call query_mode
  'BUTTON(0).SetFocus
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmlotbale", vbInformation, head

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim CNTRS As Recordset
On Error Resume Next
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)

If adoPrimaryRS.RecordCount > 0 And adoPrimaryRS.AbsolutePosition > 0 Then

    If Opt = "" Then
        'This is for Query mode display
        'To bind the text boxes
        If adoPrimaryRS.RecordCount > 0 Then
            Txtfields(0).Text = adoPrimaryRS("lotno")
            Txtfields(1).Text = adoPrimaryRS("permitno")
            MaskEdBox1(0).Text = adoPrimaryRS("lotdt")
        End If
    End If
End If
End Sub

Public Sub query_mode()
On Error GoTo query_mode_Error

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
'Frame8.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DISTINCT DIVCODE,CertificateNo,Docno,DocDt,SLotNo,LotDt,slcode,LotNo,CertificateDt,CertificateNo2,CertificateDt2,CertificateNo3,CertificateDt3 from RM_Certificate where divcode='" & Divcode & "' and DocDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  ", DB
    If adoPrimaryRS.RecordCount <> 0 Then
        SSTab1.Tab = 0
        Txtfields(0).Text = adoPrimaryRS("Docno")
        Txtfields(1).Text = adoPrimaryRS("SLotNo")
        Txtfields(3).Text = adoPrimaryRS("slcode")
        Txtfields(2).Text = IIf(IsNull(adoPrimaryRS("CertificateNo")), "", adoPrimaryRS("CertificateNo"))
        MaskEdBox1(0).Text = adoPrimaryRS("DocDt")
        MaskEdBox1(1).Text = adoPrimaryRS("LotDt")
        MaskEdBox1(2).Text = adoPrimaryRS("Certificatedt")
        Txtfields(5).Text = adoPrimaryRS("LotNo")
        MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("Certificatedt2")), "__/__/____", adoPrimaryRS("Certificatedt2"))
        Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("CertificateNo2")), "", adoPrimaryRS("CertificateNo2"))
        MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("Certificatedt3")), "__/__/____", adoPrimaryRS("Certificatedt3"))
        Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("CertificateNo3")), "", adoPrimaryRS("CertificateNo3"))

        StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
        Exit Sub
    Else
       MsgBox "No Records Found", vbInformation, head
       SSTab1.Tab = 0
       Call NEWFORM1(BUTTON, GSNO)
  End If
End If
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Frmlotbale", vbInformation, head

End Sub

Public Sub openconnection()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
End Sub

Public Sub ENABLCONTLS()
Dim I As Integer

MaskEdBox1(0).Enabled = True
MaskEdBox1(1).Enabled = True
'DTPicker2.Enabled = True
Frame7.Enabled = True
If Opt = "mod" Then
    MaskEdBox1(0).Enabled = False '''''''
End If
End Sub

Public Sub disablcontls()
For Each tb In Me.Txtfields
    tb.Locked = True
Next
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
Frame7.Enabled = False
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
StatusBar1.Panels(2).Text = "Please Enter Receipt Date"
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
If IsDate(MaskEdBox1(1).Text) Then
'    If Format(MaskEdBox1(1).Text, "yyyy-mm-dd") < Format(MaskEdBox1(0).Text, "yyyy-mm-dd") Then
'        MsgBox "E-Way Bill date must be equal to or after Invoice Date", vbInformation, head
'        MaskEdBox1(1).Text = "__/__/____"
'        MaskEdBox1(1).SetFocus
'    ElseIf Format(MaskEdBox1(1).Text, "yyyy-mm-dd") > Format(pdate, "yyyy-mm-dd") Then
'        MsgBox "E-Way Bill date must be prior to or equal to Processing date", vbInformation, head
'        MaskEdBox1(1).Text = "__/__/____"
'        MaskEdBox1(1).SetFocus
'    End If
Else
    MsgBox " Enter Valid Date", vbInformation, head
    MaskEdBox1(1).Text = "__/__/____"
    MaskEdBox1(1).SetFocus
    Exit Sub
End If
End Sub

Private Sub txtFields_Change(Index As Integer)
intervalMinutes = -1
On Error Resume Next
If Index = 3 Then
   If Trim(Txtfields(3).Text) <> "" Then
    If Opt <> "add" And Opt <> "mod" Then
        Set NewRs = New Recordset
        NewRs.Open "select Distinct slcode,slname from fa_slmas where slcode = '" & Txtfields(3).Text & "'", DB, adOpenStatic, adLockReadOnly
        If NewRs.RecordCount > 0 Then
            Txtfields(4).Text = NewRs("slname")
            Else
            Txtfields(4).Text = ""
        End If
    End If
   End If
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    If Index = 2 Then
        StatusBar1.Panels(2).Text = "Select CertificateNo from the list"
    End If
    If Index = 1 Then
        StatusBar1.Panels(2).Text = "Enter a E-Way Bill No."
    End If
End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
intervalMinutes = -1
If Opt = "add" Then
    If Index = 1 Then
        If Txtfields(1).Text = "" Then
            MsgBox "Please Enter E-Way Bill Number", vbInformation, head
            Txtfields(1).SetFocus
            Exit Sub
        Else
            MaskEdBox1(1).SetFocus
            Exit Sub
        End If
    End If
End If
End Sub
Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
If Opt = "add" Then
    If Index = 3 Then
        LookUp.Clear = True
        LookUp.query = "select a.SUPCd ""Code"" ,Slname ""Supplier"",isnull(PLOTNO,'') ""Party Lot No"",a.LotNo ""Lot No."",lotdt ""Lot Date""    From RM_lot a  inner join fa_slmas b on b.slcode=a.SUPCd and a.CertificateNo is null and isnull(opflg,'N')<>'Y'"
        LookUp.DefCol = "Party Lot No"
        LookUp.Caption = "Lot Listing"
        LookUp.ALIGN = "1000,3000,1500,1000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(1).Text = LookUp.Fields(2)
            Txtfields(5).Text = LookUp.Fields(3)
            MaskEdBox1(1).Text = LookUp.Fields(4)
            Txtfields(3).Text = LookUp.Fields(0)
            Txtfields(2).SetFocus
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
        Txtfields(2).SetFocus
    End If
End If
End Sub

