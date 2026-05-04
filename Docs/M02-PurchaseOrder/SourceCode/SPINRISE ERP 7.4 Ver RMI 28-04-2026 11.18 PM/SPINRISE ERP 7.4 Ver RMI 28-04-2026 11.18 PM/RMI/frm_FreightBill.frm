VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{B9411660-10E6-4A53-BE96-7FED334704FA}#8.0#0"; "FPSPRU80.ocx"
Begin VB.Form frm_FreightBill 
   Caption         =   "Freight Bill Entry"
   ClientHeight    =   8490
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   11130
   ClipControls    =   0   'False
   ForeColor       =   &H00800000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11130
   WindowState     =   2  'Maximized
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   9450
      Top             =   705
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   10050
      Top             =   705
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   32
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5295
         Picture         =   "frm_FreightBill.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   37
         ToolTipText     =   "G.R.N"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   11295
         Picture         =   "frm_FreightBill.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "List (Ctrl L)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":07D9
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "frm_FreightBill.frx":0AE3
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   8970
         Picture         =   "frm_FreightBill.frx":0E78
         Style           =   1  'Graphical
         TabIndex        =   27
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":12BA
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "frm_FreightBill.frx":1704
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":1A66
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "frm_FreightBill.frx":1D70
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Cancel (Ctrl+Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":20EC
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "frm_FreightBill.frx":23F6
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":2798
         Height          =   510
         Index           =   11
         Left            =   5820
         Picture         =   "frm_FreightBill.frx":2BE2
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":2F77
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "frm_FreightBill.frx":33C1
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":3711
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "frm_FreightBill.frx":3B5B
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":3EC0
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "frm_FreightBill.frx":41CA
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":455D
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "frm_FreightBill.frx":49A7
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":4CF4
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "frm_FreightBill.frx":4FFE
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frm_FreightBill.frx":5378
         BeginProperty Font 
            Name            =   "System"
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
         Picture         =   "frm_FreightBill.frx":5682
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Delete (Ctrl+D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8115
         TabIndex        =   34
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
            Name            =   "System"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   10380
         TabIndex        =   33
         Top             =   270
         Width           =   885
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   38
      Top             =   8190
      Width           =   11130
      _ExtentX        =   19632
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4410
            MinWidth        =   4410
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   12788
            MinWidth        =   12788
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "30/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11:09 PM"
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
   Begin VB.Frame Frame1 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      Caption         =   "select max(doj) from pr_emp where wcat='01'"
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   8055
      Left            =   240
      TabIndex        =   13
      Top             =   1170
      Width           =   18480
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PlaceodSupplyID"
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
         Height          =   300
         Index           =   29
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   6
         ToolTipText     =   "Select the Transporter"
         Top             =   1560
         Width           =   1600
      End
      Begin VB.TextBox Text7 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   141
         TabStop         =   0   'False
         Top             =   1560
         Width           =   8730
      End
      Begin VB.CheckBox Chk_TDSManual 
         Caption         =   "TDS Manual Amt"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   255
         Left            =   4440
         TabIndex        =   140
         Top             =   6840
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "TDS_AMT"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   128
         Left            =   4455
         MaxLength       =   15
         TabIndex        =   138
         Top             =   7600
         Width           =   2955
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "TDS_Per"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   16393
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   129
         Left            =   2760
         MaxLength       =   9
         TabIndex        =   137
         Top             =   7600
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFFF&
         DataField       =   "TDS_AssAmt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   127
         Left            =   2775
         Locked          =   -1  'True
         MaxLength       =   15
         TabIndex        =   134
         Top             =   6840
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   330
         Index           =   131
         Left            =   4470
         TabIndex        =   133
         Top             =   7200
         Width           =   2970
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "TDSTypeCode"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
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
         Index           =   132
         Left            =   2775
         TabIndex        =   132
         Top             =   7200
         Width           =   1600
      End
      Begin VB.ComboBox Combo4 
         Height          =   315
         ItemData        =   "frm_FreightBill.frx":5A1E
         Left            =   16860
         List            =   "frm_FreightBill.frx":5A28
         TabIndex        =   129
         Text            =   "NO"
         Top             =   1485
         Width           =   810
      End
      Begin VB.ComboBox Combo3 
         Height          =   315
         ItemData        =   "frm_FreightBill.frx":5A35
         Left            =   16860
         List            =   "frm_FreightBill.frx":5A3F
         TabIndex        =   128
         Text            =   "NO"
         Top             =   960
         Width           =   765
      End
      Begin VB.Frame Frame7 
         Height          =   435
         Left            =   13560
         TabIndex        =   124
         Top             =   960
         Width           =   1395
         Begin VB.OptionButton Option4 
            Caption         =   "No"
            Height          =   255
            Left            =   720
            TabIndex        =   126
            Top             =   135
            Value           =   -1  'True
            Width           =   615
         End
         Begin VB.OptionButton Option3 
            Caption         =   "Yes"
            Height          =   255
            Left            =   105
            TabIndex        =   125
            Top             =   120
            Width           =   615
         End
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "PJVDT"
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
         Index           =   4
         Left            =   16860
         TabIndex        =   2
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   495
         Width           =   1140
         _ExtentX        =   2011
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
      Begin MSComCtl2.DTPicker DTPicker5 
         DataField       =   "PJVDT"
         Height          =   315
         Left            =   16800
         TabIndex        =   3
         TabStop         =   0   'False
         Top             =   480
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   159973377
         CurrentDate     =   36218
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "PJVNO"
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
         Height          =   300
         Index           =   28
         Left            =   13560
         Locked          =   -1  'True
         TabIndex        =   1
         ToolTipText     =   "Select the Carrier"
         Top             =   480
         Width           =   1600
      End
      Begin VB.TextBox Text6 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   120
         TabStop         =   0   'False
         Top             =   480
         Width           =   8730
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PJVTC"
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
         Height          =   300
         Index           =   27
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   0
         ToolTipText     =   "Select the Carrier"
         Top             =   480
         Width           =   1600
      End
      Begin VB.CommandButton Command2 
         BackColor       =   &H80000003&
         Caption         =   "&Download"
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
         Left            =   8520
         Style           =   1  'Graphical
         TabIndex        =   116
         Top             =   6240
         Width           =   1095
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "frm_FreightBill.frx":5A4C
         Left            =   6000
         List            =   "frm_FreightBill.frx":5A5C
         TabIndex        =   114
         Text            =   "Purchase Bill"
         Top             =   6240
         Width           =   2295
      End
      Begin VB.Frame Frame3 
         Caption         =   "Credit/Debit"
         Height          =   1095
         Left            =   4560
         TabIndex        =   109
         Top             =   8040
         Visible         =   0   'False
         Width           =   8895
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "DrCrReason"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
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
            Left            =   1485
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   112
            Text            =   "Rate Difference"
            ToolTipText     =   "Enter the Reason For Credit/Debit Note with Maximum of 100 Characters"
            Top             =   600
            Width           =   4440
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "DBValue"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   25
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   110
            Top             =   240
            Width           =   1600
         End
         Begin VB.Label lblReason 
            AutoSize        =   -1  'True
            Caption         =   "Reason "
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   120
            TabIndex        =   113
            Top             =   675
            Width           =   765
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   14
            Left            =   120
            TabIndex        =   111
            Top             =   285
            Width           =   540
         End
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "CarCode"
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
         Height          =   300
         Index           =   24
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   4
         ToolTipText     =   "Select the Carrier"
         Top             =   840
         Width           =   1600
      End
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   106
         TabStop         =   0   'False
         Top             =   840
         Width           =   8730
      End
      Begin VB.TextBox txt_filename 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   360
         Left            =   5985
         Locked          =   -1  'True
         TabIndex        =   89
         Top             =   5070
         Width           =   2535
      End
      Begin VB.CommandButton btnBrowse 
         BackColor       =   &H80000003&
         Caption         =   "&Browse..."
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
         Left            =   8520
         Style           =   1  'Graphical
         TabIndex        =   88
         Top             =   5040
         Width           =   1095
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "FreightBill_copy"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   330
         Index           =   122
         Left            =   10920
         TabIndex        =   87
         Top             =   5040
         Width           =   3375
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "MDApp_copy"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000002&
         Height          =   330
         Index           =   19
         Left            =   10920
         TabIndex        =   86
         Top             =   5520
         Width           =   3375
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H80000003&
         Caption         =   "&Browse..."
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
         Left            =   8520
         Style           =   1  'Graphical
         TabIndex        =   85
         Top             =   5520
         Width           =   1095
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   360
         Left            =   5985
         Locked          =   -1  'True
         TabIndex        =   84
         Top             =   5550
         Width           =   2535
      End
      Begin VB.Frame Frame2 
         Height          =   2655
         Left            =   14400
         TabIndex        =   70
         Top             =   5040
         Width           =   3975
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Roff_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   23
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   100
            Top             =   1800
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Igstamt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   22
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   98
            Top             =   1440
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Sgstamt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   21
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   96
            Top             =   1110
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Cgstamt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   20
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   94
            Top             =   800
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "GSTPer"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   17
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   83
            Top             =   450
            Width           =   765
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "OtherAmt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   9
            Left            =   1245
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   81
            Top             =   3360
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "GSTAmt"
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
            Height          =   300
            Index           =   6
            Left            =   2325
            Locked          =   -1  'True
            TabIndex        =   80
            ToolTipText     =   "Select the AGENT "
            Top             =   450
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "GSTCode"
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   10
            Left            =   780
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   78
            Top             =   450
            Width           =   645
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "TDS_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   3
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   76
            Top             =   2880
            Visible         =   0   'False
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "TDS_per"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   14
            Left            =   1635
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   75
            Top             =   2880
            Visible         =   0   'False
            Width           =   645
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Value"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   15
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   72
            Top             =   120
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFC0&
            DataField       =   "Total_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   300
            Index           =   8
            Left            =   2325
            Locked          =   -1  'True
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   71
            Top             =   2160
            Width           =   1600
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Round off Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   13
            Left            =   240
            TabIndex        =   101
            Top             =   1845
            Width           =   1740
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "IGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   12
            Left            =   240
            TabIndex        =   99
            Top             =   1485
            Width           =   1275
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "SGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   11
            Left            =   240
            TabIndex        =   97
            Top             =   1125
            Width           =   1305
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "CGST Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   95
            Top             =   830
            Width           =   1305
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Other Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   5
            Left            =   -720
            TabIndex        =   82
            Top             =   3405
            Width           =   1350
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "GST"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   4
            Left            =   240
            TabIndex        =   79
            Top             =   480
            Width           =   375
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "TDS Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   2
            Left            =   240
            TabIndex        =   77
            Top             =   2925
            Visible         =   0   'False
            Width           =   1185
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   0
            Left            =   240
            TabIndex        =   74
            Top             =   165
            Width           =   540
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Total Amount"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   195
            Index           =   6
            Left            =   240
            TabIndex        =   73
            Top             =   2235
            Width           =   1305
         End
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFC0&
         DataField       =   "Freightbill_Amt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   16
         Left            =   2760
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   68
         Top             =   5760
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "TotalBales"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   13
         Left            =   2760
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   67
         Top             =   5040
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "TotalKgs"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   12
         Left            =   2760
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   65
         Top             =   5400
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "FreightApp_Amt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   11
         Left            =   2760
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   62
         Top             =   6480
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "LCNo"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   4
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   56
         ToolTipText     =   "Enter the CHEQUE NO with Maximum of 15 Characters"
         Top             =   11445
         Visible         =   0   'False
         Width           =   1590
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "FreightMill_Amt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   5
         Left            =   2760
         Locked          =   -1  'True
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   12
         Top             =   6105
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Billno"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   1
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   20
         MultiLine       =   -1  'True
         TabIndex        =   7
         ToolTipText     =   "Enter Bill No"
         Top             =   1905
         Width           =   3150
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Remarks"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   0
         Left            =   1980
         Locked          =   -1  'True
         MaxLength       =   90
         MultiLine       =   -1  'True
         TabIndex        =   9
         ToolTipText     =   "Enter the Remarks with Maximum of 70 Characters"
         Top             =   2235
         Width           =   10365
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   49
         TabStop         =   0   'False
         Top             =   11775
         Visible         =   0   'False
         Width           =   8730
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PJ"
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
         Height          =   300
         Index           =   18
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   55
         ToolTipText     =   "Select the AGENT "
         Top             =   11790
         Visible         =   0   'False
         Width           =   1600
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3600
         Locked          =   -1  'True
         TabIndex        =   42
         TabStop         =   0   'False
         Top             =   1200
         Width           =   8730
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "slcode"
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
         Height          =   300
         Index           =   7
         Left            =   1980
         Locked          =   -1  'True
         TabIndex        =   5
         ToolTipText     =   "Select the Transporter"
         Top             =   1200
         Width           =   1600
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         DataField       =   "DocNo"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   405
         Index           =   2
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   41
         TabStop         =   0   'False
         ToolTipText     =   "GRN Number"
         Top             =   90
         Width           =   1575
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Docdt"
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
         Index           =   0
         Left            =   10875
         TabIndex        =   43
         TabStop         =   0   'False
         ToolTipText     =   "Transaction Doc. Date"
         Top             =   150
         Width           =   1140
         _ExtentX        =   2011
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
         DataField       =   "Docdt"
         Height          =   315
         Left            =   10860
         TabIndex        =   47
         TabStop         =   0   'False
         Top             =   135
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   158728193
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "Billdt"
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
         Index           =   1
         Left            =   10935
         TabIndex        =   8
         Top             =   1935
         Width           =   1140
         _ExtentX        =   2011
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
      Begin MSComCtl2.DTPicker DTPicker2 
         DataField       =   "Billdt"
         Height          =   315
         Left            =   10920
         TabIndex        =   11
         TabStop         =   0   'False
         Top             =   1920
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   116260865
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "LCDate"
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
         Left            =   10815
         TabIndex        =   57
         TabStop         =   0   'False
         ToolTipText     =   "CHEQUE Date"
         Top             =   11430
         Visible         =   0   'False
         Width           =   1140
         _ExtentX        =   2011
         _ExtentY        =   476
         _Version        =   393216
         Appearance      =   0
         ForeColor       =   0
         Enabled         =   0   'False
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
      Begin MSComCtl2.DTPicker DTPicker3 
         DataField       =   "LCDate"
         Height          =   315
         Left            =   10920
         TabIndex        =   58
         TabStop         =   0   'False
         Top             =   11415
         Visible         =   0   'False
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   115802113
         CurrentDate     =   36218
      End
      Begin FPSpreadADO.fpSpread SpdLCReq 
         Height          =   2445
         Left            =   120
         TabIndex        =   10
         Top             =   2520
         Width           =   18270
         _Version        =   524288
         _ExtentX        =   32226
         _ExtentY        =   4313
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FreightBill.frx":5A9D
         Appearance      =   2
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "PaidDate"
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
         Left            =   13575
         TabIndex        =   117
         Top             =   1695
         Width           =   1140
         _ExtentX        =   2011
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
      Begin MSComCtl2.DTPicker DTPicker4 
         DataField       =   "PaidDate"
         Height          =   315
         Left            =   13560
         TabIndex        =   118
         TabStop         =   0   'False
         Top             =   1680
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   153223169
         CurrentDate     =   36218
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Place of Supply"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   142
         Top             =   1575
         Width           =   1500
      End
      Begin VB.Label Label100 
         AutoSize        =   -1  'True
         Caption         =   "TDS Amount"
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
         TabIndex        =   139
         Top             =   7620
         Width           =   1080
      End
      Begin VB.Label Label99 
         AutoSize        =   -1  'True
         Caption         =   "TDS Assessable Value"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   240
         TabIndex        =   136
         Top             =   6900
         Width           =   2130
      End
      Begin VB.Label Label101 
         Caption         =   "TDS Type"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   240
         TabIndex        =   135
         Top             =   7230
         Width           =   1260
      End
      Begin VB.Label lblLabels 
         Caption         =   "Tax Credit Eligible"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   615
         Index           =   45
         Left            =   15600
         TabIndex        =   131
         Top             =   1425
         Width           =   1260
      End
      Begin VB.Label lblLabels 
         Caption         =   "RCM"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   270
         Index           =   44
         Left            =   15600
         TabIndex        =   130
         Top             =   975
         Width           =   615
      End
      Begin VB.Label Label24 
         Caption         =   "TDS"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   255
         Left            =   12480
         TabIndex        =   127
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   12
         Left            =   15600
         TabIndex        =   123
         Top             =   480
         Width           =   840
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   11
         Left            =   12480
         TabIndex        =   122
         Top             =   480
         Width           =   705
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "TC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   10
         Left            =   120
         TabIndex        =   121
         Top             =   495
         Width           =   480
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Paid Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   9
         Left            =   12480
         TabIndex        =   119
         Top             =   1725
         Width           =   930
      End
      Begin VB.Label Label7 
         Caption         =   "Download Bill Copy"
         Height          =   255
         Left            =   4440
         TabIndex        =   115
         Top             =   6240
         Width           =   1455
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Carrier Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   107
         Top             =   855
         Width           =   1305
      End
      Begin VB.Label Label93 
         Caption         =   "Transporter Bill Copy"
         Height          =   255
         Left            =   4440
         TabIndex        =   93
         Top             =   5160
         Width           =   1455
      End
      Begin VB.Label Label96 
         Caption         =   "File Name"
         Height          =   255
         Left            =   9840
         TabIndex        =   92
         Top             =   5160
         Width           =   975
      End
      Begin VB.Label Label1 
         Caption         =   "File Name"
         Height          =   255
         Index           =   0
         Left            =   9840
         TabIndex        =   91
         Top             =   5640
         Width           =   975
      End
      Begin VB.Label Label3 
         Caption         =   "MD Approved Copy"
         Height          =   255
         Left            =   4440
         TabIndex        =   90
         Top             =   5640
         Width           =   1455
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill Value"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   10
         Left            =   240
         TabIndex        =   69
         Top             =   5805
         Width           =   1665
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Total Kgs"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   9
         Left            =   240
         TabIndex        =   66
         Top             =   5445
         Width           =   900
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Total Bales"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   8
         Left            =   240
         TabIndex        =   64
         Top             =   5040
         Width           =   1080
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill Approved"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   7
         Left            =   240
         TabIndex        =   63
         Top             =   6480
         Width           =   2070
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Freight Bill As per Mill"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Index           =   6
         Left            =   240
         TabIndex        =   61
         Top             =   6165
         Width           =   2145
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "PJV No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   60
         Top             =   11460
         Visible         =   0   'False
         Width           =   645
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV. Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   5
         Left            =   9120
         TabIndex        =   59
         Top             =   11460
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Bill. Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   0
         Left            =   9240
         TabIndex        =   52
         Top             =   1965
         Width           =   870
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Bill No."
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   51
         Top             =   1905
         Width           =   675
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "PJV TC"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   50
         Top             =   11805
         Visible         =   0   'False
         Width           =   630
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Remarks"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   48
         Top             =   2265
         Width           =   855
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Transporter Name"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   46
         Top             =   1215
         Width           =   1785
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc.Date"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   3
         Left            =   9180
         TabIndex        =   45
         Top             =   180
         Width           =   870
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc.No"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   2
         Left            =   165
         TabIndex        =   44
         Top             =   195
         Width           =   675
      End
   End
   Begin VB.Frame Frame8 
      Height          =   6165
      Left            =   5280
      TabIndex        =   35
      Top             =   1320
      Visible         =   0   'False
      Width           =   13215
      Begin VB.TextBox Text4 
         Height          =   300
         Left            =   1200
         TabIndex        =   105
         Top             =   600
         Width           =   4905
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "frm_FreightBill.frx":5EF8
         Left            =   6600
         List            =   "frm_FreightBill.frx":5F05
         TabIndex        =   103
         Text            =   "LRNo"
         Top             =   600
         Width           =   1815
      End
      Begin VB.CheckBox ChkSelectAll 
         Caption         =   "Select &All"
         Height          =   240
         Left            =   270
         TabIndex        =   39
         Top             =   5640
         Width           =   1125
      End
      Begin VB.CommandButton cmdItemSelect 
         Caption         =   "&OK"
         Height          =   405
         Left            =   4830
         TabIndex        =   15
         Top             =   5535
         Width           =   1305
      End
      Begin VB.CommandButton cmdItemSelectClose 
         Caption         =   "&Close"
         Height          =   405
         Left            =   6195
         TabIndex        =   40
         Top             =   5535
         Width           =   1305
      End
      Begin FPSpreadADO.fpSpread SPDPO1 
         Height          =   390
         Left            =   120
         TabIndex        =   54
         Top             =   6240
         Width           =   11250
         _Version        =   524288
         _ExtentX        =   19844
         _ExtentY        =   688
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         SpreadDesigner  =   "frm_FreightBill.frx":5F20
         AppearanceStyle =   0
      End
      Begin FPSpreadADO.fpSpread spdPO 
         Height          =   4470
         Left            =   240
         TabIndex        =   104
         Top             =   960
         Width           =   12855
         _Version        =   524288
         _ExtentX        =   22675
         _ExtentY        =   7885
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FreightBill.frx":633F
      End
      Begin FPSpreadADO.fpSpread SPDPO5 
         Height          =   4125
         Left            =   240
         TabIndex        =   108
         Top             =   6360
         Width           =   12870
         _Version        =   524288
         _ExtentX        =   22701
         _ExtentY        =   7276
         _StockProps     =   64
         ArrowsExitEditMode=   -1  'True
         DisplayRowHeaders=   0   'False
         EditEnterAction =   5
         EditModePermanent=   -1  'True
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   10
         MaxRows         =   1
         ProcessTab      =   -1  'True
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "frm_FreightBill.frx":6769
         Appearance      =   2
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         BackColor       =   &H80000014&
         Caption         =   "Search"
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
         TabIndex        =   102
         Top             =   675
         Width           =   615
      End
      Begin VB.Shape Shape2 
         BorderWidth     =   2
         Height          =   5880
         Left            =   75
         Top             =   195
         Width           =   13080
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "List of OutStanding List(s)"
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
         Left            =   165
         TabIndex        =   36
         Top             =   240
         Width           =   12885
      End
   End
   Begin FPUSpreadADO.fpSpread S1pdLCReq1 
      Height          =   15
      Left            =   14880
      TabIndex        =   53
      Top             =   0
      Visible         =   0   'False
      Width           =   3585
      _Version        =   524288
      _ExtentX        =   6324
      _ExtentY        =   26
      _StockProps     =   64
      ArrowsExitEditMode=   -1  'True
      DisplayRowHeaders=   0   'False
      EditEnterAction =   5
      EditModePermanent=   -1  'True
      EditModeReplace =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MaxCols         =   0
      MaxRows         =   0
      ProcessTab      =   -1  'True
      ScrollBarExtMode=   -1  'True
      SpreadDesigner  =   "frm_FreightBill.frx":6BC4
      Appearance      =   2
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   12000
      Top             =   600
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   240
      Left            =   8790
      TabIndex        =   28
      Top             =   690
      Visible         =   0   'False
      Width           =   60
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Freight Bill Entry"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Left            =   255
      TabIndex        =   31
      Top             =   660
      Width           =   2610
   End
   Begin VB.Label Label5 
      Caption         =   "TC"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2400
      TabIndex        =   30
      Top             =   1350
      Visible         =   0   'False
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "GIN No."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   960
      TabIndex        =   29
      Top             =   1350
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   3
      Height          =   8100
      Left            =   195
      Top             =   1155
      Width           =   18555
   End
End
Attribute VB_Name = "frm_FreightBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim itemrec As Recordset
Dim CRY As String
Dim d As Integer
Dim TFlg As String
Dim VisFlg As String
Dim WithEvents rsb As Recordset
Attribute rsb.VB_VarHelpID = -1
Dim ah As Boolean, al As Boolean
Dim PenQty As Double
Dim TRs As ADODB.Recordset
Dim vrs As Recordset
Dim sp As String
Dim itemc As String
Dim sp1 As String
Dim DB As Connection
Public Opt As String
Dim ST2 As String
Dim deltype As String
Public FreightBillEntryType As String

'Dim Fa_Instal, Fa_Instal, FA_BillApp As String
Dim SERVICEBILL_TC As String
Dim r As Integer
Dim MDOC As Long
Dim IGSTFLG As String
Dim rs1 As New Recordset
Dim RS2 As New Recordset
Dim TC As Integer
Dim rs3, rs4, rs5, rs6 As New Recordset
Dim ITARY() As String
Dim modqty As Double
Dim roff1 As Double
Dim sp2 As Double
Dim pordrs As Recordset
Dim Invdt As String
Dim RPT As String
Dim tmp As String
Dim RW As Integer
Dim lck As Integer
Dim Rs As Recordset
Dim Roff As Integer
Dim I As Integer
Dim a As Double
Dim lno As Integer
Dim pgn As Integer
Dim REP As Report.ReportView
Dim MIBDESPATCH As Boolean  'THIS VARIABLE FOR DECIDE RECIEPT FROM MIB DESPATCH OR PO
Dim MIBNO, MIBDT As String
Dim LOOKUPRS As Recordset
Dim NEWRS As Recordset
Private RepFoot As String
Dim totvalue As Double
Dim MOVELINKFlg As String
Dim nCurrRate As Double
Dim nAmount As Double
Dim nDisAmt As Double
Dim nTaxAmt As Double
Dim nPackAmt As Double
Dim nFreightAmt As Double
Dim nOtherAmt As Double
Dim nDisAmt2 As Double
Dim nTotalAmt As Double
Dim nTmpTotal As Double
Dim nTotalQty As Double
Dim nTotDisAmt As Double
Dim nTotTaxAmt As Double
Dim nTotPackAmt As Double
Dim nTotFreightAmt As Double
Dim nTotOtherAmt As Double
Dim nTotDisAmt2 As Double
Dim nRoff As Double
Dim nNetAmt As Double
Dim nRow As Double
Dim POAppFlag As Boolean
Dim lSuppSel As Boolean
Dim lQtyChange As Boolean
Dim nDispCount As Double

Dim rstItemTol As New ADODB.Recordset
Dim rstTrnDate As New ADODB.Recordset
''For spread Index
Private Enum eLCReqDtls
    E_DIVCODE = 1
    E_DOCNO = 2
    E_Docdt = 3
    E_DOCSNO = 4
    E_Supcd = 5
    E_Supname = 6
    E_InvoiceNo = 7
    E_InvoiceDate = 8
    E_PJVNO = 9
    E_PJVdate = 10
    E_Bales = 11
    E_Kgs = 12
    E_InvAmount = 13
    E_PlantCode = 14
    E_PlantName = 15
    E_ContainerNo = 16
    E_FreightAmtBill = 17
    E_FreightAmtMill = 18
    E_FreightAmtApproved = 19
    E_TaxCode = 20
    E_CGSTPER = 21
    E_CGSTAmt = 22
    E_SGSTPER = 23
    E_SGSTAmt = 24
    E_IGSTPER = 25
    E_IGSTAmt = 26
    E_TDSPER = 27
    E_TDSAMT = 28
    E_FRT_Docno = 29
    E_TotalAmt = 30
End Enum
Private Enum ePODtls
    P_Select = 1
    P_SupplierCode = 2
    P_SupplierName = 3
    P_ContainerNo = 4
    P_PJVNO = 5
    P_PJVDT = 6
    P_BALES = 7
    P_BillNo = 8
    P_BillDt = 9
    P_Kgs = 10
    P_Rate = 11
    P_Value = 12
    P_Freightamt = 13
    P_FreightAppamt = 14
    P_PlantCode = 15
    P_PlantName = 16
End Enum

Private Enum eSuppDtls
   S_SupplierCode = 1
   S_SupplierName = 2
End Enum
Private Declare Function GetDesktopWindow Lib "USER32" () As Long

Private Declare Function ShellExecute Lib "shell32.dll" _
    Alias "ShellExecuteA" _
   (ByVal hWnd As Long, _
    ByVal lpOperation As String, _
    ByVal lpFile As String, _
    ByVal lpParameters As String, _
    ByVal lpDirectory As String, _
    ByVal nShowCmd As Long) As Long
    
Private Const SW_SHOWNORMAL As Long = 1
Private Const SW_SHOWMAXIMIZED As Long = 3
Private Const SW_SHOWDEFAULT As Long = 10
Private Const SE_ERR_NOASSOC As Long = 31
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error Resume Next
  'This will display the current record position for this recordset

  If Opt = " " Or Opt = "" Then
      If adoPrimaryRS.AbsolutePosition > 0 Then
          stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
      Else
          stbar.Panels(2).Text = "No records found"
          Exit Sub
      End If
  End If

  If adoPrimaryRS.BOF = False And adoPrimaryRS.EOF = False And Opt <> "add" And Opt <> "mod" And Opt <> "del" Then
     Set ADOSECONDARYRS = New Recordset
     Set ADOSECONDARYRS.DataSource = adoPrimaryRS("childcmd").value
     
    ' Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
  End If
  
  If Opt = " " Or Opt = "fnd" Or Opt = "" Then
     'Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
     RW = 1
     With SpdLCReq
        If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
        .MaxRows = 0
        Do While Not ADOSECONDARYRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eLCReqDtls.E_DIVCODE, RW, ADOSECONDARYRS("Divcode")
            .SetText eLCReqDtls.E_DOCNO, RW, ADOSECONDARYRS("DocNo")
            .SetText eLCReqDtls.E_Docdt, RW, ADOSECONDARYRS("Docdt")
            .SetText eLCReqDtls.E_DOCSNO, RW, .MaxRows  'adoSecondaryRS("DocSNo")
                    
            .SetText eLCReqDtls.E_PJVNO, RW, ADOSECONDARYRS("PJVNO")
            .SetText eLCReqDtls.E_Bales, RW, ADOSECONDARYRS("Bales")
            .SetText eLCReqDtls.E_PJVdate, RW, Format(ADOSECONDARYRS("pjvdt"), "dd/MM/yy")
            .SetText eLCReqDtls.E_InvAmount, RW, ADOSECONDARYRS("inv_amt")
            
            .SetText eLCReqDtls.E_Kgs, RW, ADOSECONDARYRS("totalKgs")
            .SetText eLCReqDtls.E_FreightAmtMill, RW, ADOSECONDARYRS("FreightAmtMill")
            .SetText eLCReqDtls.E_FreightAmtBill, RW, ADOSECONDARYRS("FreightAmtBill")
            .SetText eLCReqDtls.E_FreightAmtApproved, RW, ADOSECONDARYRS("FreightAmtApp")
            
            .SetText eLCReqDtls.E_InvoiceNo, RW, ADOSECONDARYRS("InvoiceNo")
      
             .SetText eLCReqDtls.E_InvoiceDate, RW, ADOSECONDARYRS("Invoicedt")
             .SetText eLCReqDtls.E_PlantCode, RW, ADOSECONDARYRS("PLCode")
             
             Set tsplant = New Recordset
             tsplant.Open "select plcode,plname from rm_plant where plcode='" & ADOSECONDARYRS("PLCode") & "' ", DB, adOpenForwardOnly
             If Not tsplant.EOF Then
                .SetText eLCReqDtls.E_PlantName, RW, tsplant("plname")
             End If
           
             
             .SetText eLCReqDtls.E_ContainerNo, RW, ADOSECONDARYRS("LRNo")
             .SetText eLCReqDtls.E_Supcd, RW, ADOSECONDARYRS("Supcd")
             
             Set tsplant = New Recordset
             tsplant.Open "select slname from fa_slmas where slcode='" & ADOSECONDARYRS("Supcd") & "' ", DB, adOpenForwardOnly
             If Not tsplant.EOF Then
                .SetText eLCReqDtls.E_Supname, RW, tsplant("slname")
             End If
             
             .SetText eLCReqDtls.E_CGSTPER, RW, ADOSECONDARYRS("CGSTPER")
             .SetText eLCReqDtls.E_CGSTAmt, RW, ADOSECONDARYRS("CGSTAmt")
             .SetText eLCReqDtls.E_SGSTPER, RW, ADOSECONDARYRS("SGSTPER")
             .SetText eLCReqDtls.E_SGSTAmt, RW, ADOSECONDARYRS("SGSTAmt")
            
              .SetText eLCReqDtls.E_IGSTPER, RW, ADOSECONDARYRS("iGSTPER")
             .SetText eLCReqDtls.E_IGSTAmt, RW, ADOSECONDARYRS("iGSTAmt")
              .SetText eLCReqDtls.E_TDSPER, RW, ADOSECONDARYRS("TDSPER")
             .SetText eLCReqDtls.E_TDSAMT, RW, ADOSECONDARYRS("TDSAmt")
             .SetText eLCReqDtls.E_TotalAmt, RW, ADOSECONDARYRS("TotalAmt")
                 
                 
             
            

            RW = RW + 1
            ADOSECONDARYRS.MoveNext
         Loop
     End With
     Tmplrow = 0
     If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
     
     nTotalQty = 0
     nTmpTotal = 0
     tmp = Opt
     Opt = ""
'     With SpdLCReq
'     For nRow = 1 To .MaxRows
'         .Row = nRow
'         If Val(GetText(SpdLCReq, E_FreightAmtMill, nRow)) > 0 Then
'             .SetText E_Value, .Row, Format(Val(GetText(SpdLCReq, E_Amount, nRow)) * Val(txtfields(11).Text), "0.00")
'             nTotalQty = nTotalQty + GetText(SpdLCReq, E_FreightAmtMill, nRow)
'         End If
'     Next
'     End With
'     txtQty.Text = Format(nTotalQty, "0.000")
  End If
  
  
  If Opt = "" Or Opt = " " Or Opt = "mod" Or Opt = "fnd" Or Opt = "del" Then
     If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
  
        If IsNull(adoPrimaryRS("Docdt")) = False Then
            MaskEdBox1(0).Text = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            MaskEdBox1(0).Text = Format(adoPrimaryRS("Docdt"), "dd/MM/yyyy")
            MaskEdBox1(0).ZOrder
        Else
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = "__/__/____"
            MaskEdBox1(0).Text = "__/__/____"
        End If
            MaskEdBox1(4).Text = IIf(IsNull(adoPrimaryRS("pjvdt")), "__/__/____", Format(adoPrimaryRS("pjvdt"), "dd/MM/yyyy"))
            MaskEdBox1(1).Text = IIf(IsNull(adoPrimaryRS("billdt")), "__/__/____", Format(adoPrimaryRS("billdt"), "dd/MM/yyyy"))
            If IsNull(adoPrimaryRS("billdt")) = False Then
            DTPicker2.value = Format(adoPrimaryRS("billdt"), "dd/MM/yyyy")
            End If
            
            MaskEdBox1(3).Text = IIf(IsNull(adoPrimaryRS("PaidDate")), "__/__/____", Format(adoPrimaryRS("PaidDate"), "dd/MM/yyyy"))
            If IsNull(adoPrimaryRS("PaidDate")) = False Then
            DTPicker4.value = Format(adoPrimaryRS("PaidDate"), "dd/MM/yyyy")
            End If
            
            ' MaskEdBox1(2).Text = IIf(IsNull(adoPrimaryRS("LCDate")), "__/__/____", Format(adoPrimaryRS("LCDate"), "dd/MM/yyyy"))
'            If IsNull(adoPrimaryRS("LCDate")) = False Then
'            DTPicker3.value = Format(adoPrimaryRS("LCDate"), "dd/MM/yyyy")
'            End If
           
            If adoPrimaryRS("rcmflg") = "YES" Then
                Combo3.Text = "YES"
            Else
                Combo3.Text = "NO"
            End If
            
            If adoPrimaryRS("RCMITCFLG") = "YES" Then
                Combo4 = "YES"
            Else
                Combo4 = "NO"
            End If
            
            If adoPrimaryRS("TDSFLG") = "Y" Then
                Option3.value = True
            Else
                Option4.value = True
            End If
            
            If adoPrimaryRS("Tdsmanual") = "Y" Then
                Chk_TDSManual.value = 1
            Else
                Chk_TDSManual.value = 0
            End If
            
            Set MaskEdBox1(1).DataSource = adoPrimaryRS
           ' Set MaskEdBox1(2).DataSource = adoPrimaryRS
            

            
        
    End If
    
End If
Exit Sub

Errh:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : adoPrimaryRS_MoveComplete " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub btnBrowse_Click()
  On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
'If Not (fso.DriveExists(KALFOLDERDATA & "\SupplierBill\")) Then
'    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
'    End
'End If
        
     Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI")) Then
        fso.CreateFolder (App.Path & "\RMI")
    End If
        
    strNewFile = ""
  '  Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI\RMFreightTransporterBill" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMI\RMFreightTransporterBill" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    txt_filename.Text = CommonDialog1.FileName
    Txtfields(122).Text = strNewFile
    If Len(Trim(Txtfields(122).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
   
   
  
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("Supplier Bill Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath ' App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-" & Trim(Txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub BUTTON_Click(Index As Integer)
Dim Ass As Double, j As Integer
Dim RsFa As Recordset

Dim FaInstall As String, Fatc As String, FaGl As String, FaNarr As String

On Error GoTo Errh

Select Case Index
Case 0
       If Not TrnDateValidation Then Exit Sub
      ' If Record_Exists("fa_slmas where slcode like '" & PartyType & "%'", "Please define Supplier in Supplier Master") = False Then Exit Sub
      ' If Record_Exists("IM_LCType", "Please define LC Type in Setup") = False Then Exit Sub
       'If Record_Exists("IG_LoadUnLoadChargeHD where divcode = '" & DivCode & "'", "No Records Found") = False Then Exit Sub
  
       Opt = "add"
       sp = " "
       desc.Caption = "Addition"
       Screen.MousePointer = 11
       stbar.Panels(2).Text = " "
       MaskEdBox1(0).Mask = pdate
        MaskEdBox1(4).Text = pdate
       DTPicker1.value = pdate
       DTPicker5.value = pdate
       DTPicker1.MinDate = yfdate
       On Error Resume Next
       IGSTFLG = ""
    
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,MDApp_copy,FreightBill_copy,TotalBales,TotalKgs,Value,other_amt,Freightbill_Amt,FreightMill_Amt,FreightApp_Amt,GSTCode,GSTPer,GSTAmt,CGSTAmt,SGSTAmt,IGSTAmt,TDS_Per,TDS_Amt,Roff_amt,Total_Amt,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID,Carcode,PaidDate,pjvtc,PJVNO,PJVDT,RCMFLG,RCMITCFLG,TDSFLG,TDSTypeCode,TDS_AssAmt,Tdsmanual,PlaceodSupplyID FROM RM_FreightBillHD WHERE 1=2 Order by DivCode,DocNo", DB, adOpenStatic, adLockBatchOptimistic


       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT Divcode,Docno,Docdt,DOCSNO,Supcd,LRNo,InvoiceNo,Invoicedt,PJVNO,PJVDT,PLCode,Rate,Bales,TotalKgs,inv_Amt,FreightAmtBill,FreightAmtMill,FreightAmtApp,CGSTPER,CGSTAmt,SGSTPER,SGSTAmt,IGSTPER,IGSTAmt,TDSPER,TDSAmt,TotalAmt,Frt_Docno FROM RM_FreightBillDT a Where a.divcode='" & Divcode & "' And 1=2 Order by a.DocSNo", DB, adOpenStatic, adLockBatchOptimistic

       lck = 1
       ADOSECONDARYRS.AddNew
       SpdLCReq.Enabled = True
       
       Call bindcontls
       '''''''''''''''Set SpdLCReq.DataSource = adoSecondaryRS
       Text2.Text = ""
       Text1.Text = ""
       Text3.Text = ""
       Text5.Text = ""
       Text6.Text = ""
       Text7.Text = ""
       txt_filename.Text = ""
       adoPrimaryRS.AddNew
       Call SpreadAlign(0)
       Call SpreadAlignPO(0)
       
       RPT = "N"
       Dim RS2 As Recordset
       Screen.MousePointer = 0
                       
       Txtfields(2).Locked = True
       Call ENABLCONTLS
       Txtfields(2).Locked = True
       ReDim ITARY(50, 0)
     
       BUTTON(12).Enabled = False
       Set rs6 = New Recordset
       Call adddelmod(BUTTON)
       
       Fnd = "n"
       RW = 1000
       Screen.MousePointer = 0
       On Error Resume Next
       MaskEdBox1(0).Enabled = False
       DTPicker1.value = pdate
       Txtfields(5).Enabled = True
       Txtfields(5).Locked = False
       Txtfields(10).Locked = False
       Txtfields(14).Locked = False
       DTPicker2.value = pdate
       MaskEdBox1(1).Text = "__/__/____"
       Txtfields(7).Locked = False
       Txtfields(28).Locked = True
       Frame2.Enabled = True
         Txtfields(10).Enabled = True
        Txtfields(10).Locked = False
       'txtFields(1).SetFocus

     
       itemc = "' '"
        Txtfields(2).Text = newDocNo
       'txtFields(1).Locked = False
       Txtfields(27).SetFocus
       lSuppSel = False
        Txtfields(127).Text = ""
        Txtfields(128).Text = ""
        Txtfields(129).Text = ""
        Txtfields(132).Text = ""
        Txtfields(127).Locked = True
        Chk_TDSManual.value = 0
        Combo3.Text = "NO"
Case 1 'modification
       'If ToValidFinYear = False Then Exit Sub
       If Record_Exists("RM_FreightBillDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        sp = " "
        lSuppSel = True
        LookUp.Clear = True
        If FreightBillEntryType = "S" Then
            LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",h.slname ""Party Name"",Billno 'Bill No.',Billdt 'Bill Date',h.Slcode ""Party Code"",h.PJVTC,h.PJVNO,h.PJVDT FROM  VW_RM_FreightBillPaid h  Where h.divcode = '" & Divcode & "'   " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'
        Else
            LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",Billno 'Bill No.',Billdt 'Bill Date',h.PJVTC,h.PJVNO,h.PJVDT FROM  RM_FreightBillHD h inner join RM_FreightBillDT l on  h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt inner join  FA_SLMAS s on h.Slcode = s.slcode " & _
                           " left join fa_purjvhead p on p.vocno=h.pjvno and h.pjvdt=p.vocdt and h.divcode=p.Divcode and p.tc=h.pjvtc Where p.appflg is null  and h.divcode = '" & Divcode & "' and isnull(FirstFR_AppFlg,'N')<>'Y' and PaidDate is null and h.Docdt=(select max(Docdt) from RM_FreightBillHD where divcode='" & Divcode & "') " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'
        
        End If
        LookUp.Caption = "Freight Bill Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,4000,1500,1500,1500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Screen.MousePointer = 11
            MaskEdBox1(0).Mask = Format(IIf(IsNull(LookUp.Fields(1)), "__/__/____", LookUp.Fields(1)), "dd/MM/yyyy")
            itemc = "' '"
            If Opt = "mod" Then
               Call ENABLCONTLS
            Else
               Call disablcontls
            End If
            Txtfields(7).Locked = True
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
            Txtfields(28).Locked = True
            Txtfields(27).Locked = True
            MaskEdBox1(4).Enabled = False
            DTPicker5.Enabled = False
            
             Dim STCODE As String
            Set rs1 = New Recordset
            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(Supptype,'R') Supptype FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Party Code")) & "' ", DB
            If rs1.EOF Then
                MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
                Call BUTTON_Click(10)
                Exit Sub
            Else
                If rs1("GSTSTATECODE") = "0" Then
                    MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                STCODE = rs1("GSTSTATECODE")
            End If
                         
                         
                Set rs1 = New Recordset
                rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
                If Not rs1.EOF Then
                    IGSTFLG = "Y"
                Else
                    IGSTFLG = "N"
                End If
            If FreightBillEntryType = "S" Then
                BUTTON(0).Enabled = False
                BUTTON(2).Enabled = False
                lblLabels(9).Visible = True
                DTPicker4.Visible = True
                MaskEdBox1(3).Visible = True
                DTPicker4.value = pdate
            Else
                lblLabels(9).Visible = False
                DTPicker4.Visible = False
                MaskEdBox1(3).Visible = False
            End If
            
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
        End If
        'txtfields(1).SetFocus
Case 2
        'Deletion
       ' If ToValidFinYear = False Then Exit Sub
        If Record_Exists("RM_FreightBillDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
        sp = " "
        lSuppSel = True
        
        LookUp.Clear = True
      '  LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"" FROM  RM_FreightBillHD h,RM_FreightBillDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "' And h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt and h.Slcode = s.slcode and isnull(FirstFR_AppFlg,'N')<>'Y' and h.Docdt=(select max(Docdt) from RM_FreightBillHD where divcode='" & Divcode & "') " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'
        LookUp.query = "SELECT Distinct h.DocNo ""Doc.No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",Billno 'Bill No.',Billdt 'Bill Date',h.PJVTC,h.PJVNO,h.PJVDT FROM  RM_FreightBillHD h inner join RM_FreightBillDT l on  h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt inner join  FA_SLMAS s on h.Slcode = s.slcode " & _
                    " left join fa_purjvhead p on p.vocno=h.pjvno and h.pjvdt=p.vocdt and h.divcode=p.Divcode and p.tc=h.pjvtc Where p.appflg is null and h.divcode = '" & Divcode & "' and isnull(FirstFR_AppFlg,'N')<>'Y' and PaidDate is null and h.Docdt=(select max(Docdt) from RM_FreightBillHD where divcode='" & Divcode & "') " ''and h.Docdt  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'
        
        LookUp.Caption = " Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
        MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/MM/yyyy")
            Screen.MousePointer = 11
            If Opt = "mod" Then
                Call ENABLCONTLS
            Else
                Call disablcontls
            End If
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
            Txtfields(28).Locked = True
            Txtfields(27).Locked = True
            MaskEdBox1(4).Enabled = False
            DTPicker5.Enabled = False
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            Call BUTTON_Click(10)
        End If
        
Case 3
        If Record_Exists("RM_FreightBillDT Where Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub

        desc.Caption = "Find"
        
        Buttonframe.Enabled = True
        LookUp.Clear = True
        qry = "SELECT Distinct h.DocNo ""Doc No."",h.Docdt ""Date"",s.slname ""Party Name"",s.City,h.Slcode ""Party Code"",h.PJVTC,h.PJVNO,h.PJVDT FROM  RM_FreightBillHD h,RM_FreightBillDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "'  And h.divcode = l.divcode and h.DocNo = l.DocNo And h.Docdt = l.Docdt and h.Slcode = s.slcode and h.Docdt between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' "
'        Lookup.Caption = "Cheque Collection Listing "
'        Lookup.DefCol = "Party Name"
'        Lookup.ALIGN = "1000,1100,5000,1500,0"
'        Lookup.Show vbModal
        
            LookUp.Clear = True
            LookUp.query = qry
            LookUp.Caption = "Freight Bill Listing "
            LookUp.DefCol = "Bank Name"
            LookUp.ALIGN = "1000,1200,3000,1000,1000,1000"
            LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Opt = "fnd"
            MaskEdBox1(0).Mask = Format(LookUp.Fields(1), "dd/MM/yyyy")
            Call query_mode(LookUp.Fields(0), LookUp.Fields(1))
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        Else
            Call BUTTON_Click(10)
        End If
        If FreightBillEntryType = "S" Then
            BUTTON(0).Enabled = False
            BUTTON(2).Enabled = False
        End If
Case 4
        
Case 5
       'first
        desc.Caption = "Query"
        
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:
          
Case 6
        'next
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
        desc.Caption = "Query"
        
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        Call las(BUTTON)
        Exit Sub
GoLastError:

Case 9

        'Save
        
        DB.CommandTimeout = 600
        tmp = Opt
        'Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        
        Opt = tmp
        value = 0
        If Opt = "add" Or Opt = "mod" Then
              If Option3.value = True Then
                
                 Dim rsglcode As Recordset
                Set rsglcode = New Recordset
                rsglcode.Open " select b.slcode from fa_tds_gl a inner join fa_slmas b on a.ORG_TYPE=b.org_type  where slcode='" & Txtfields(7).Text & "'  ", DB, adOpenDynamic
                If rsglcode.RecordCount = 0 Then
                    MsgBox " GLCode Not Mapped for the Selected Supplier .....!", vbInformation, head
                    tmp = Opt
                    Screen.MousePointer = 0
                    Exit Sub
                Else
                    Option3.value = True
                End If
                
                If val(Txtfields(129).Text) = 0 Then
                    MsgBox "TDS Percentage Can't be Zero..!", vbInformation, head
                    tmp = Opt
                    Txtfields(129).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                If Trim(Txtfields(132).Text) = "" Then
                    MsgBox "TDS Type Can't be Empty..!", vbInformation, head
                    tmp = Opt
                    Txtfields(132).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                 If val(Txtfields(128).Text) = 0 Then
                    MsgBox "TDS Amount Can't be Zero..!", vbInformation, head
                    tmp = Opt
                    Txtfields(128).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
                End If
                
                  
              End If
              
              If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                Set fso = New FileSystemObject
                strNewFile = Trim(Txtfields(122).Text)
                sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
                If fso.FileExists(sFilePath) Then
                   ' MsgBox "File Exist."
                Else
                      MsgBox "Transporter Bill Copy not updated Properly !! Update again..."
                      Exit Sub
                End If
                
                
                Set fso = New FileSystemObject
                strNewFile = Trim(Txtfields(19).Text)
                sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
                If fso.FileExists(sFilePath) Then
                   ' MsgBox "File Exist."
                Else
                      MsgBox "MD Copy not updated Properly !! Update again..."
                      Exit Sub
                End If
                
                
             End If
            If Opt = "add" Then
                Set Rs = New Recordset
                Rs.Open "SELECT pjvno FROM RM_FreightBillHD WHERE Docdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and PJVtc='" & val(Txtfields(27).Text) & "'  and PJVNO =" & val(Txtfields(28).Text), DB, adOpenStatic
                If Rs.EOF = False Then
                        MsgBox "P.J.V. Number is " & val(Txtfields(28).Text), vbInformation, head
                End If
        
                Set Rs = New Recordset
                Rs.Open "SELECT ISNULL(MAX(pjvno),0)+1 FROM fa_purhd WHERE pjvdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc in (select items from dbo.split('" & SERVICEBILL_TC & "',','))", DB, adOpenStatic
                Txtfields(28).Text = Rs(0)
                If MaskEdBox1(4).Text = "__/__/____" Then MaskEdBox1(4).Text = pdate
                
                Set TmpRs = New Recordset
                TmpRs.Open "select count(pjvno) from fa_purhd where PJVNO is not NULL and slcode ='" & Txtfields(7).Text & "' And Billdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And BillNo ='" & Trim(Txtfields(1).Text) & "'", DB, adOpenStatic
                If TmpRs(0) > 0 Then
                    MsgBox "Please enter valid Bill Number ", vbInformation, head
                    Txtfields(1).SetFocus
                    Exit Sub
                End If
            End If
            If Trim(Txtfields(1).Text) = "" Then
                MsgBox "Bill No should be Filled", vbInformation, head
                Txtfields(1).SetFocus
                Exit Sub
            End If
         
            If Trim(Txtfields(122).Text) = "" Then
                MsgBox "Bill Copy Cannot be Empty", vbInformation, head
               ' txtfields(122).SetFocus
                Exit Sub
            End If
            
            If Trim(Txtfields(19).Text) = "" Then
                MsgBox "MD approved Copy Cannot be Empty", vbInformation, head
               ' txtfields(19).SetFocus
                Exit Sub
            End If
            If MaskEdBox1(4).Text = "__/__/____" Or IsDate(MaskEdBox1(4).Text) = False Then
                MsgBox "PJV. Date should be Filled", vbInformation, head
                MaskEdBox1(4).SetFocus
                Exit Sub
            End If
        
            If MaskEdBox1(1).Text = "__/__/____" Or IsDate(MaskEdBox1(1).Text) = False Then
                MsgBox "Bill. Date should be Filled", vbInformation, head
                MaskEdBox1(1).SetFocus
                Exit Sub
            End If
            If val(Txtfields(27).Text) = 0 Or Trim(Txtfields(27).Text) = "" Then
                MsgBox "TC should be Filled", vbInformation, head
                Txtfields(27).SetFocus
                Exit Sub
            End If
            If Len(Txtfields(7).Text) = 0 Then
                MsgBox "Name should be Filled", vbInformation, head
                Txtfields(7).SetFocus
                Exit Sub
            End If
            If Len(Txtfields(24).Text) = 0 Then
                MsgBox "Carrier should be Filled", vbInformation, head
                Txtfields(24).SetFocus
                Exit Sub
            End If
             If Trim(Txtfields(29).Text) = "" Then
                MsgBox "Place of Supply should be Filled", vbInformation, head
                Txtfields(29).SetFocus
                Exit Sub
            End If
            
            If CDate(MaskEdBox1(4).Text) < CDate(MaskEdBox1(0).Text) Then
               MsgBox "PJV Date Cannot be Less than Document Date", vbInformation
               Screen.MousePointer = 0
               MaskEdBox1(4).SetFocus
               Exit Sub
            End If
            
            If CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
               MsgBox "Bill Date Cannot be Greater than Document Date", vbInformation
               Screen.MousePointer = 0
               MaskEdBox1(1).SetFocus
               Exit Sub
            End If
            
            If (MaskEdBox1(1).Enabled) Then
                If Not (IsDate(MaskEdBox1(1).Text)) Then
                    MsgBox "Please Enter valid Date", vbInformation, head
                    MaskEdBox1(1).SetFocus
                ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
                    MsgBox "Bill Date must be Less or equal to Document Date", vbInformation, head
                    MaskEdBox1(1).SetFocus
                End If
            End If
            
            
            If (MaskEdBox1(4).Enabled) Then
                If Not (IsDate(MaskEdBox1(4).Text)) Then
                    MsgBox "Please Enter valid Date", vbInformation, head
                    MaskEdBox1(4).SetFocus
                    Exit Sub
                ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(4).Text) Then
                    MsgBox "PJV Date must Greater or equal to Bill Date", vbInformation, head
                    MaskEdBox1(4).SetFocus
                    Exit Sub
                End If
            End If
            
            
            Set Rs = New Recordset
            Rs.Open "SELECT Max(PJVDT) FROM FA_PURHD WHERE pjvdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc =" & val(Txtfields(27).Text), DB, adOpenStatic
            If Rs.EOF = False Then
                If Rs(0) = False Then
                    If CDate(Rs(0)) > CDate(MaskEdBox1(4).Text) Then
                        MsgBox "P.J.V. Date should be greater or equal to Last PJV Date , vbInformation, head"
                        Exit Sub
                    End If
                End If
            End If
            
'            If Val(txtfields(5).Text) = 0 Then
'                MsgBox "Paid Amount should be Filled", vbInformation, head
'                txtfields(5).SetFocus
'                Exit Sub
'            End If
            
            tmp = Opt
            Opt = ""
            Opt = tmp
        End If
        
        'Check there is record to save
        If SpdLCReq.MaxRows = 0 Then
            MsgBox "Please Enter Pjv Details ", vbInformation, head
            Opt = "add"
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        
        For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
                SpdLCReq.SetActiveCell E_FreightAmtMill, nRow
                If val(GetText(SpdLCReq, E_PJVNO, nRow)) <> 0 Then
                    If val(GetText(SpdLCReq, E_FreightAmtApproved, nRow)) = 0 Then
                        MsgBox "Freight Approved Amount Cannot be Zero", vbInformation, head
                        Exit Sub
                    End If
                    
                    If val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) = 0 Then
                        MsgBox "Freight Bill Amount Cannot be Zero", vbInformation, head
                        Exit Sub
                    End If
                    If val(GetText(SpdLCReq, E_FreightAmtApproved, nRow)) > val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) Then
                        MsgBox "Freight Approved Amount Cannot be Greater than Bill Amount", vbInformation, head
                        Exit Sub
                    End If
                
                    nSno = nSno + 1
                End If
           Next
          If Opt = "mod" Then
            If FreightBillEntryType = "S" Then
                If MaskEdBox1(3).Text = "__/__/____" Or IsDate(MaskEdBox1(3).Text) = False Then
                    MsgBox "Paid. Date should be Filled", vbInformation, head
                    MaskEdBox1(3).SetFocus
                    Exit Sub
                End If
                
            Dim opttds As String
            If Option3.value = True Then
                opttds = "Y"
            Else
                opttds = "N"
            End If
            
                DB.Execute "update RM_FreightBillhd set PaidDate='" & Format(MaskEdBox1(3).Text, "YYYY-mm-dd") & "',RCMFLG= '" & Trim(Combo3.Text) & "',RCMITCFLG= '" & Trim(Combo4.Text) & "',TDSFLG='" & opttds & "' Where Divcode='" & Divcode & "' And DocNo=" & adoPrimaryRS("DocNo") & " And Docdt='" & Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd") & "' "
              
                MsgBox "Record Modified Successfully", vbInformation, head
                 GoTo qry
                Exit Sub
          
            End If
          End If
        Opt = temp1 = Opt
        Opt = tmp
        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then
        
        Call TotalCalculation
        
        
'            If (val(txtfields(25).Text) <> 0) Then
'                If val(txtfields(25).Text) < 0 Then
'                    TSTR1 = MsgBox("Generate Credit Note?  " & val(val(txtfields(25).Text)), vbYesNo, head)
'                    strReasonhead = "Enter Credit Note Reason"
'                Else
'                    TSTR1 = MsgBox("Generate Debit Note? - " & val(txtfields(25).Text), vbYesNo, head)
'                    strReasonhead = "Enter Debit Note Reason"
'                End If
'                If TSTR1 = vbYes Then
'                    If val(txtfields(25).Text) < 0 Then
'                        CREDITFLG = "Y"
'                        DEBITFLG = "N"
'                    Else
'                        DEBITFLG = "Y"
'                        CREDITFLG = "N"
'                    End If
'                Else
'                    DEBITFLG = "N"
'                    CREDITFLG = "N"
'                End If
'            Else
'                DEBITFLG = "N"
'                CREDITFLG = "N"
'            End If
        
            nTotalAmt = 0
            nTotalQty = 0
            nrecamt = 0
            tmp = Opt
            Opt = ""
    
         '   txtfields(4).Text = Val(SpdLCReq.MaxRows)
            Opt = tmp
            
            DB.BeginTrans
            Dim ff As Form
            Set ff = Me
            
            ''=================
            '' HEADER UPDATION
            ''=================
            adoPrimaryRS("DivCode").value = Divcode
            
           
            If Opt = "add" Then
                adoPrimaryRS("DocNo") = newDocNo()
                Txtfields(2).Text = adoPrimaryRS("DocNo")
            End If
            If MaskEdBox1(0).Text <> "__/__/____" Then
                adoPrimaryRS("Docdt") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            End If

            If MaskEdBox1(1).Text <> "__/__/____" Then
                adoPrimaryRS("Billdt") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
            End If
            
            If MaskEdBox1(4).Text <> "__/__/____" Then
                adoPrimaryRS("pjvdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            End If
 
            adoPrimaryRS("pjvno") = Trim(Trim(Txtfields(28).Text))
            adoPrimaryRS("pjvtc") = Trim(Trim(Txtfields(27).Text))
            adoPrimaryRS("Billno") = Trim(Trim(Txtfields(1).Text))
            adoPrimaryRS("PlaceodSupplyID") = Trim(Trim(Txtfields(29).Text))
            adoPrimaryRS("Value") = Format(val(Txtfields(15).Text), "0.00")
            
            adoPrimaryRS("Slcode") = Trim(Txtfields(7).Text)
            
            adoPrimaryRS("Remarks") = Trim(Txtfields(0).Text)
            adoPrimaryRS("FreightBill_copy") = Trim(Txtfields(122).Text)
            adoPrimaryRS("MDApp_copy") = Trim(Txtfields(19).Text)
            adoPrimaryRS("Carcode") = Trim(Txtfields(24).Text)
            
            
            
            'adoPrimaryRS("OtherAmt") = val(Txtfields(9).Text)
            adoPrimaryRS("TotalBales") = val(Txtfields(13).Text)
            
            adoPrimaryRS("TotalKgs") = val(Txtfields(12).Text)
            adoPrimaryRS("Freightbill_Amt") = val(Txtfields(16).Text)
            adoPrimaryRS("FreightMill_Amt") = val(Txtfields(5).Text)
            adoPrimaryRS("FreightApp_Amt") = val(Txtfields(11).Text)
            
             adoPrimaryRS("GSTCode") = Trim(Txtfields(10).Text)
             adoPrimaryRS("GSTPer") = val(Txtfields(17).Text)
             
             adoPrimaryRS("Cgstamt") = val(Txtfields(20).Text)
             adoPrimaryRS("sgstamt") = val(Txtfields(21).Text)
             adoPrimaryRS("igstamt") = val(Txtfields(22).Text)
             adoPrimaryRS("TDS_per") = val(Txtfields(14).Text)
             
             adoPrimaryRS("TDS_Amt") = val(Txtfields(3).Text)
             adoPrimaryRS("Roff_amt") = val(Txtfields(23).Text)
             
             adoPrimaryRS("GSTAmt") = val(Txtfields(6).Text)
             
            
            adoPrimaryRS("Total_Amt") = Format(val(Txtfields(8).Text), "0.00")
    
            adoPrimaryRS("TotalKgs") = Format(val(Txtfields(12).Text), "0.000")

            adoPrimaryRS("HostID") = HostName
            If Opt = "add" Then
                adoPrimaryRS("CreatedBy") = usrid
                adoPrimaryRS("CreatedDate") = GetServerDate
            ElseIf Opt = "mod" Then
                adoPrimaryRS("ModifiedBy") = usrid
                adoPrimaryRS("ModifiedDate") = GetServerDate
            End If
            
            adoPrimaryRS("RCMFLG") = Trim(Combo3.Text)
            adoPrimaryRS("RCMITCFLG") = Trim(Combo4.Text)
            If Option3.value = True Then
                adoPrimaryRS("TDSFLG") = "Y"
            Else
                adoPrimaryRS("TDSFLG") = "N"
            End If
            
            adoPrimaryRS("TDS_AssAmt") = val(Txtfields(127).Text)
            adoPrimaryRS("TDSTypeCode") = Trim(Txtfields(132).Text)
             adoPrimaryRS("TDS_Per") = val(Txtfields(129).Text)
            adoPrimaryRS("TDS_AMT") = val(Txtfields(128).Text)
            
            If Chk_TDSManual.value = 1 Then
                adoPrimaryRS("Tdsmanual") = "Y"
            Else
                adoPrimaryRS("Tdsmanual") = "N"
            End If
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters

            If Opt = "mod" Then
                DB.Execute "Delete From RM_FreightBillDT Where Divcode='" & Divcode & "' And DocNo=" & adoPrimaryRS("DocNo") & " And Docdt='" & Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd") & "' "
                strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'"
                DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                Set Rs = New Recordset
                Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
                Do While Not Rs.EOF
                    DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                    Rs.MoveNext
                Loop
                

            End If
            
'            Dim nSno As Double
            Dim rstail As Recordset
            Set rstail = New Recordset
                        
            rstail.Open "SELECT Divcode,Docno,Docdt,DOCSNO,Supcd,LRNo,InvoiceNo,Invoicedt,PJVNO,PJVDT,PLCode,Rate,Bales,TotalKgs,inv_Amt,FreightAmtBill,FreightAmtMill,FreightAmtApp, " & _
                         " CGSTPER,CGSTAmt,SGSTPER,SGSTAmt,IGSTPER,IGSTAmt,TDSPER,TDSAmt,TotalAmt,Frt_Docno FROM RM_FreightBillDT a  WHERE divcode='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
                        
            nSno = 1
            For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
                SpdLCReq.SetActiveCell E_FreightAmtMill, nRow
                If val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) <> 0 Then
                    rstail.AddNew
                    rstail("DivCode") = Divcode
                    rstail("DocNo") = adoPrimaryRS("DocNo")
                    rstail("Docdt") = Format(adoPrimaryRS("Docdt"), "yyyy/MM/dd")
                    rstail("DocSNo") = nSno
                    
                    rstail("Supcd") = Trim(GetText(SpdLCReq, E_Supcd, nRow))
                    
                    rstail("LRNo") = Left(Trim(GetText(SpdLCReq, E_ContainerNo, nRow)), 40)
                    rstail("InvoiceNo") = Trim(GetText(SpdLCReq, E_InvoiceNo, nRow))
                    If IsDate(Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")) = True Then
                    rstail("Invoicedt") = Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")
                    End If
                    rstail("PJVNO") = val(GetText(SpdLCReq, E_PJVNO, nRow))
                    rstail("PLCode") = Trim(GetText(SpdLCReq, E_PlantCode, nRow))
                    rstail("Bales") = val(GetText(SpdLCReq, E_Bales, nRow))
                    rstail("PJVDT") = Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy/MM/dd")
                    rstail("inv_Amt") = val(GetText(SpdLCReq, E_InvAmount, nRow))
                    rstail("FreightAmtBill") = val(GetText(SpdLCReq, E_FreightAmtBill, nRow))
                    rstail("FreightAmtMill") = val(GetText(SpdLCReq, E_FreightAmtMill, nRow))
                    rstail("FreightAmtApp") = val(GetText(SpdLCReq, E_FreightAmtApproved, nRow))
                    rstail("CGSTPER") = val(GetText(SpdLCReq, E_CGSTPER, nRow))
                    rstail("CGSTAmt") = val(GetText(SpdLCReq, E_CGSTAmt, nRow))
                    rstail("sGSTPER") = val(GetText(SpdLCReq, E_SGSTPER, nRow))
                    rstail("sGSTAmt") = val(GetText(SpdLCReq, E_SGSTAmt, nRow))
                    rstail("iGSTPER") = val(GetText(SpdLCReq, E_IGSTPER, nRow))
                    rstail("iGSTAmt") = val(GetText(SpdLCReq, E_IGSTAmt, nRow))
                    
                    rstail("TDSPER") = val(GetText(SpdLCReq, E_TDSPER, nRow))
                    rstail("TDSAmt") = val(GetText(SpdLCReq, E_TDSAMT, nRow))
                    rstail("TotalAmt") = val(GetText(SpdLCReq, E_TotalAmt, nRow))
                    rstail("Frt_Docno") = val(GetText(SpdLCReq, E_FRT_Docno, nRow))
                    
                    
                    rstail("rate") = "0"
                    rstail("TotalKgs") = val(GetText(SpdLCReq, E_Kgs, nRow))
                 
                    DB.Execute "update c set c.frtentrapp='Y' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_PJVNO, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy-mm-dd") & "'"
                               
                               
                                Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill Entry"
                            TrnLog("Trans_Mod") = Opt
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("Agent_code") = Trim(GetText(SpdLCReq, E_Supcd, nRow))
                            TrnLog("slcode") = Trim(Txtfields(7).Text)
                            TrnLog("CARCODE") = Trim(Txtfields(24).Text)
                          
                  
                            If IsDate(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) = True Then
                                TrnLog("billdate") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(Trim(Txtfields(1).Text))
                         
                            TrnLog("netwt") = val(GetText(SpdLCReq, E_Kgs, nRow))
                            TrnLog("docno") = adoPrimaryRS("DocNo")
                     
                            TrnLog("docdt") = Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd")
                        
                            
                            TrnLog("BOENO") = Trim(GetText(SpdLCReq, E_InvoiceNo, nRow))
                            If IsDate(Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")) = True Then
                            TrnLog("BOE_DT") = Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")
                            End If
                            TrnLog("Arrno") = val(GetText(SpdLCReq, E_PJVNO, nRow))
                            TrnLog("PLCode") = Trim(GetText(SpdLCReq, E_PlantCode, nRow))
                            TrnLog("pnetwt") = val(GetText(SpdLCReq, E_Bales, nRow))
                            TrnLog("Arrdt") = Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy/MM/dd")

                            
                            TrnLog("AssAmount") = val(GetText(SpdLCReq, E_InvAmount, nRow))
                            TrnLog("Adv_AMT") = val(GetText(SpdLCReq, E_FreightAmtBill, nRow))
                            TrnLog("Oth_Amt") = val(GetText(SpdLCReq, E_FreightAmtMill, nRow))
                            TrnLog("Frg_Amt") = val(GetText(SpdLCReq, E_FreightAmtApproved, nRow))
                            TrnLog("LandcostWithTax") = val(GetText(SpdLCReq, E_TotalAmt, nRow))
                            
                            TrnLog("CGSTPER") = val(GetText(SpdLCReq, E_CGSTPER, nRow))
                            TrnLog("CGSTAmt") = val(GetText(SpdLCReq, E_CGSTAmt, nRow))
                            TrnLog("sGSTPER") = val(GetText(SpdLCReq, E_SGSTPER, nRow))
                            TrnLog("sGSTAmt") = val(GetText(SpdLCReq, E_SGSTAmt, nRow))
                            TrnLog("iGSTPER") = val(GetText(SpdLCReq, E_IGSTPER, nRow))
                            TrnLog("iGSTAmt") = val(GetText(SpdLCReq, E_IGSTAmt, nRow))
                            
                            TrnLog.UpdateBatch adAffectAllChapters
                               
                    
                     nSno = nSno + 1
                End If
                'Code added on 01-06-2019-----------------------------------
'                If SpdLCReq.MaxRows = nRow Then
'                    If receiptamount > 0 Then
'                        rsTail("receiptamt") = receiptamount
'                    End If
'                Else
'                    rsTail("receiptamt") = GetText(SpdLCReq, E_Value, nRow)
'                End If
                '-----------------------------------------------------------
                
               rstail.UpdateBatch adAffectAllChapters
      
               ' DB.Execute "Update PO_ORDL Set LCQty=ISNULL(LCQty,0)+" & Val(GetText(SpdLCReq, E_FreightAmtMill, nRow)) & " Where Divcode='" & divcode & "' And invno=" & Val(GetText(SpdLCReq, E_PJVNO, nRow)) & " And invdt='" & Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy-mm-dd") & "' And INV_TYPE=" & Val(GetText(SpdLCReq, E_InvoiceNo, nRow)) & " And invamt='" & Trim(GetText(SpdLCReq, E_Value, nRow)) & "'"
                                                                                        
               ' If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveNext
            Next
            
             DB.Execute "update c set c.frtentrapp='Y' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_PJVNO, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy-mm-dd") & "'"
                               
          
                Set TrnPURHD = New Recordset
                TrnPURHD.Open " select DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt,RoundOff,auditflg,TaxAmount,ENTUSRID,ENTDATE, OtherTaxAmt, OthersAmt, AssessableAmt,MODULE,TaxName,Narration,OtherTaxableAmt,AdjustAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,TCS_Amont,Bill_Type,TDSPER,TDSAMT,TDSCODE,TDS_AssAMT,RCMCGSTAMT,RCMSGGSTAMT,RCMIGGSTAMT,RCMFLG,taxcredit from fa_purhd WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnPURHD.AddNew
                TrnPURHD("DIVCODE") = Divcode
                TrnPURHD("MODULE") = ModuleNo
                TrnPURHD("TC") = val(Txtfields(27).Text)
                TrnPURHD("PJVNO") = val(Txtfields(28).Text)
                TrnPURHD("PJVDT") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
                TrnPURHD("ENTUSRID") = usrid
                TrnPURHD("ENTDATE") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                TrnPURHD("slcode") = Trim(Txtfields(7).Text)
                TrnPURHD("AssessableAmt") = val(Txtfields(15).Text)
                TrnPURHD("TaxName") = Trim(Txtfields(10).Text)
                TrnPURHD("CGSTAMT") = val(Txtfields(20).Text)
                TrnPURHD("SGSTAMT") = val(Txtfields(21).Text)
                TrnPURHD("IGSTAMT") = val(Txtfields(22).Text)
                TrnPURHD("auditflg") = "F"
                TrnPURHD("TaxAmount") = val(Txtfields(6).Text)
                TrnPURHD("TAXAMT") = val(Txtfields(6).Text)
                
                TrnPURHD("RoundOff") = val(Txtfields(23).Text)
                TrnPURHD("BILLAMT") = val(Txtfields(8).Text)
                TrnPURHD("BILLNO") = Trim(Txtfields(1).Text)
                TrnPURHD("BILLDT") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                Narr = "Freight Bill - Bill No. " & Trim(Txtfields(1)) & " Dt. " & MaskEdBox1(1).Text
                TrnPURHD("Narration") = Trim(Narr)
                
                TrnPURHD("TDS_ASSAMT") = val(Txtfields(127).Text)
                TrnPURHD("tdscode") = Trim(Txtfields(132).Text)
                TrnPURHD("TDSPER") = val(Txtfields(129).Text)
                TrnPURHD("TDSAMT") = val(Txtfields(128).Text)
                
                TrnPURHD("RCMFLG") = Trim(Combo3.Text)
                TrnPURHD("taxcredit") = Trim(Combo4.Text)
                TrnPURHD("taxname") = Trim(Txtfields(10).Text)
                If Trim(Combo3.Text) = "YES" Then
                     TrnPURHD("RCMCGSTAMT") = val(Txtfields(20).Text)
                     TrnPURHD("RCMSGGSTAMT") = val(Txtfields(21).Text)
                     TrnPURHD("RCMIGGSTAMT") = val(Txtfields(22).Text)
                End If
                
                 If Trim(Combo3.Text) = "YES" And Trim(Combo4.Text) = "NO" Then
                    TrnPURHD("CGSTAMT") = 0
                    TrnPURHD("SGSTAMT") = 0
                    TrnPURHD("IGSTAMT") = 0
                    'TrnPURHD("AssessableAmt") = val(txtfields(5).Text) + val(txtfields(10).Text)
                Else
                    TrnPURHD("CGSTAMT") = val(Txtfields(20).Text)
                    TrnPURHD("SGSTAMT") = val(Txtfields(21).Text)
                    TrnPURHD("IGSTAMT") = val(Txtfields(22).Text)
                    TrnPURHD("RoundOff") = val(Txtfields(6).Text)
                End If
                
                If Trim(Combo3.Text) = "YES" Then
                    TrnPURHD("BILLAMT") = val(Txtfields(8).Text) - val(Txtfields(6).Text)
                 TrnPURHD("AssessableAmt") = val(Txtfields(8).Text)
                Else
                    TrnPURHD("BILLAMT") = val(Txtfields(8).Text)
                   
                End If
                
                TrnPURHD.UpdateBatch adAffectAllChapters
                
'                strSQL = ""
'                strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER)VALUES('" & Divcode & "'," & thistc & "," & thispjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(txtfields(50).Text) & "," & Round(val(txtfields(78).Text) / val(txtfields(50).Text), 4) & "," & val(txtfields(7).Text) & ",'" & val(Trim(txtfields(118).Text)) & "','" & val(Trim(txtfields(117).Text)) & "','" & val(Trim(txtfields(116).Text)) & "','" & val(Trim(txtfields(100).Text)) & "','" & val(Trim(txtfields(101).Text)) & "','" & val(Trim(txtfields(102).Text)) & "')"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
'
                Set TrnPURHD = New Recordset
                TrnPURHD.Open " select DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER,RCMCGSTPER,RCMCGSTAMT,RCMSGGSTPER,RCMSGGSTAMT,RCMIGGSTPER,RCMIGGSTAMT,GST_TAXCODE from fa_purdt WHERE Divcode='" & Divcode & "' and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnPURHD.AddNew
                TrnPURHD("DIVCODE") = Divcode
         
                TrnPURHD("TC") = val(Txtfields(27).Text)
                TrnPURHD("PJVNO") = val(Txtfields(28).Text)
                TrnPURHD("PJVDT") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
                TrnPURHD("PJVSNO") = 1
                TrnPURHD("AMOUNT") = val(Txtfields(15).Text)
                Set RsGL = New Recordset
                RsGL.Open "select glcode from fa_tcmas where tc='" & val(Txtfields(27).Text) & "'", DB, adOpenStatic
                If Not RsGL.EOF Then
                    TrnPURHD("GLCODE") = RsGL(0)
                End If
                TrnPURHD("NARRATION1") = Trim(Narr)
                TrnPURHD("CGSTAMT") = val(Txtfields(20).Text)
                TrnPURHD("SGSTAMT") = val(Txtfields(21).Text)
                TrnPURHD("IGSTAMT") = val(Txtfields(22).Text)
                If IGSTFLG = "Y" Then
                    TrnPURHD("CGSTPER") = val(Txtfields(17).Text) / 2
                    TrnPURHD("SGSTPER") = val(Txtfields(17).Text) / 2
                    TrnPURHD("IGSTPER") = "0"
                Else
                    TrnPURHD("IGSTPER") = val(Txtfields(17).Text)
                    TrnPURHD("CGSTPER") = "0"
                    TrnPURHD("SGSTPER") = "0"
                End If
                
                
                   'TrnPURHD("RCMFLG") = Trim(Combo3.Text)
                
                If Trim(Combo3.Text) = "YES" Then
                     TrnPURHD("RCMCGSTAMT") = val(Txtfields(20).Text)
                     TrnPURHD("RCMSGGSTAMT") = val(Txtfields(21).Text)
                     TrnPURHD("RCMIGGSTAMT") = val(Txtfields(22).Text)
                     
                    If IGSTFLG = "Y" Then
                        TrnPURHD("RCMCGSTPER") = val(Txtfields(17).Text) / 2
                        TrnPURHD("RCMSGGSTPER") = val(Txtfields(17).Text) / 2
                        TrnPURHD("RCMIGGSTPER") = "0"
                    Else
                        TrnPURHD("RCMCGSTPER") = val(Txtfields(17).Text)
                        TrnPURHD("RCMSGGSTPER") = "0"
                        TrnPURHD("RCMIGGSTPER") = "0"
                    End If
                
                End If
                
                TrnPURHD("GST_TAXCODE") = Trim(Txtfields(10).Text)
                
                
                TrnPURHD.UpdateBatch adAffectAllChapters
         
            
            
            
            Opt = tmp
            DB.CommitTrans
            
           

        Dim frmFa As New frmFaPostingVerification
        frmFa.sTC = val(Txtfields(27).Text)
        frmFa.sVocno = val(Txtfields(28).Text)
        frmFa.sVocdt = Format(MaskEdBox1(4).Text, "dd/mm/yyyy")
        frmFa.sBillNo = Txtfields(1).Text
        frmFa.sBillDt = Format(MaskEdBox1(1).Text, "dd/mm/yyyy")
        frmFa.sTrnType = "PU"
        frmFa.Show vbModal
        If Not frmFa.bolTally Then
           If Opt = "add" Then
            DB.BeginTrans
            Set frs = New Recordset
            frs.Open "select fainstal from rm_param", DB
            If frs(0) = "Y" Then
                  nSno = 1
            For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
               
                If val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) <> 0 Then

                      DB.Execute "update c set c.frtentrapp='N' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_PJVNO, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy-mm-dd") & "'"
                              Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill Entry"
                            TrnLog("Trans_Mod") = Opt
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("Agent_code") = Trim(GetText(SpdLCReq, E_Supcd, nRow))
                            TrnLog("slcode") = Trim(Txtfields(7).Text)
                            TrnLog("CARCODE") = Trim(Txtfields(24).Text)
                          
                  
                            If IsDate(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) = True Then
                                TrnLog("billdate") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(Trim(Txtfields(1).Text))
                         
                            TrnLog("netwt") = val(GetText(SpdLCReq, E_Kgs, nRow))
                            TrnLog("docno") = adoPrimaryRS("DocNo")
                     
                            TrnLog("docdt") = Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd")
                        
                            
                            TrnLog("BOENO") = Trim(GetText(SpdLCReq, E_InvoiceNo, nRow))
                            If IsDate(Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")) = True Then
                            TrnLog("BOE_DT") = Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")
                            End If
                            TrnLog("Arrno") = val(GetText(SpdLCReq, E_PJVNO, nRow))
                            TrnLog("PLCode") = Trim(GetText(SpdLCReq, E_PlantCode, nRow))
                            TrnLog("pnetwt") = val(GetText(SpdLCReq, E_Bales, nRow))
                            TrnLog("Arrdt") = Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy/MM/dd")

                            
                            TrnLog("AssAmount") = val(GetText(SpdLCReq, E_InvAmount, nRow))
                            TrnLog("Adv_AMT") = val(GetText(SpdLCReq, E_FreightAmtBill, nRow))
                            TrnLog("Oth_Amt") = val(GetText(SpdLCReq, E_FreightAmtMill, nRow))
                            TrnLog("Frg_Amt") = val(GetText(SpdLCReq, E_FreightAmtApproved, nRow))
                            TrnLog("LandcostWithTax") = val(GetText(SpdLCReq, E_TotalAmt, nRow))
                            
                            TrnLog("CGSTPER") = val(GetText(SpdLCReq, E_CGSTPER, nRow))
                            TrnLog("CGSTAmt") = val(GetText(SpdLCReq, E_CGSTAmt, nRow))
                            TrnLog("sGSTPER") = val(GetText(SpdLCReq, E_SGSTPER, nRow))
                            TrnLog("sGSTAmt") = val(GetText(SpdLCReq, E_SGSTAmt, nRow))
                            TrnLog("iGSTPER") = val(GetText(SpdLCReq, E_IGSTPER, nRow))
                            TrnLog("iGSTAmt") = val(GetText(SpdLCReq, E_IGSTAmt, nRow))
                            
                            TrnLog.UpdateBatch adAffectAllChapters
                    
                     nSno = nSno + 1
                End If
             Next
                DB.Execute ("DELETE FROM RM_FreightBillDT WHERE Divcode = '" & Divcode & "'  AND DocNo =  " & val(Txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_FreightBillHD WHERE DivCode = '" & Divcode & "' And DocNo =  " & val(Txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
               
            
             
               strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'"
               DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
               DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
               DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
               Set Rs = New Recordset
               Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
               Do While Not Rs.EOF
                   DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                   Rs.MoveNext
               Loop
               
'                If Opt = "add" Or Opt = "mod" Then
'                    For I = 1 To spdVar.MaxRows
'                        db.Execute ("UPDATE rm_lot SET pjtc = NULL, pjno = NULL, pjdt = NULL,purpreparedby=NULL ,purpredate=NULL WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, I)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, I), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, IVarcode, I) & "'")
'                       '***********************Deletion********************
'                    Next
'                End If
                
      
                If Opt = "add" Or Opt = "mod" Then
                    MsgBox "Record(s) Deleted", vbInformation, head
                End If
                
            End If
            
            DB.CommitTrans
        
            Opt = ""
            Call query_mode(0, 0)
            Exit Sub
           End If
        End If
            
            
            If Opt = "add" Then
                MsgBox "Freight Bill for your transaction is " & adoPrimaryRS("DocNo"), vbInformation, head
            Else
                MsgBox "Record Modified Successfully", vbInformation, head
            End If
           
        End If
        If Opt = "del" Then     'del
        
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                DB.BeginTrans
               

            nSno = 1
            For nRow = 1 To SpdLCReq.MaxRows
                SpdLCReq.Row = nRow
               
                If val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) <> 0 Then

                      DB.Execute "update c set c.frtentrapp='N' from rm_arrival c inner join rm_lot a  on a.ARRNO =c.ARRNO and a.arrdt=c.ARRDATE and a.divcode=c.divcode and a.varcode=c.varcode and a.contnum=c.contno and c.CONTDT=a.Contdate " & _
                               " and a.SUPCD=c.supcd   where a.divcode='" & Divcode & "' and a.pjno='" & val(GetText(SpdLCReq, E_PJVNO, nRow)) & "'  and pjdt='" & Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy-mm-dd") & "'"
                              Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Freight Bill Entry"
                            TrnLog("Trans_Mod") = Opt
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            TrnLog("Trans_date") = Format(Now, "yyyy-mm-dd hh:mm:ss")
                            TrnLog("Agent_code") = Trim(GetText(SpdLCReq, E_Supcd, nRow))
                            TrnLog("slcode") = Trim(Txtfields(7).Text)
                            TrnLog("CARCODE") = Trim(Txtfields(24).Text)
                          
                  
                            If IsDate(Format(MaskEdBox1(1).Text, "yyyy-mm-dd")) = True Then
                                TrnLog("billdate") = Format(MaskEdBox1(1).Text, "yyyy-mm-dd")
                            End If
                            TrnLog("billno") = Trim(Trim(Txtfields(1).Text))
                         
                            TrnLog("netwt") = val(GetText(SpdLCReq, E_Kgs, nRow))
                            TrnLog("docno") = adoPrimaryRS("DocNo")
                     
                            TrnLog("docdt") = Format(adoPrimaryRS("Docdt"), "yyyy-mm-dd")
                        
                            
                            TrnLog("BOENO") = Trim(GetText(SpdLCReq, E_InvoiceNo, nRow))
                            If GetText(SpdLCReq, E_InvoiceDate, nRow) <> "" Then
                                TrnLog("BOE_DT") = Format(GetText(SpdLCReq, E_InvoiceDate, nRow), "yyyy/MM/dd")
                            Else
                                    TrnLog("BOE_DT") = Null
                            End If
                            TrnLog("Arrno") = val(GetText(SpdLCReq, E_PJVNO, nRow))
                            TrnLog("PLCode") = Trim(GetText(SpdLCReq, E_PlantCode, nRow))
                            TrnLog("pnetwt") = val(GetText(SpdLCReq, E_Bales, nRow))
                            TrnLog("Arrdt") = Format(GetText(SpdLCReq, E_PJVdate, nRow), "yyyy/MM/dd")

                            
                            TrnLog("AssAmount") = val(GetText(SpdLCReq, E_InvAmount, nRow))
                            TrnLog("Adv_AMT") = val(GetText(SpdLCReq, E_FreightAmtBill, nRow))
                            TrnLog("Oth_Amt") = val(GetText(SpdLCReq, E_FreightAmtMill, nRow))
                            TrnLog("Frg_Amt") = val(GetText(SpdLCReq, E_FreightAmtApproved, nRow))
                            TrnLog("LandcostWithTax") = val(GetText(SpdLCReq, E_TotalAmt, nRow))
                            
                            TrnLog("CGSTPER") = val(GetText(SpdLCReq, E_CGSTPER, nRow))
                            TrnLog("CGSTAmt") = val(GetText(SpdLCReq, E_CGSTAmt, nRow))
                            TrnLog("sGSTPER") = val(GetText(SpdLCReq, E_SGSTPER, nRow))
                            TrnLog("sGSTAmt") = val(GetText(SpdLCReq, E_SGSTAmt, nRow))
                            TrnLog("iGSTPER") = val(GetText(SpdLCReq, E_IGSTPER, nRow))
                            TrnLog("iGSTAmt") = val(GetText(SpdLCReq, E_IGSTAmt, nRow))
                            
                            TrnLog.UpdateBatch adAffectAllChapters
                    
                     nSno = nSno + 1
                End If
             Next
                DB.Execute ("DELETE FROM RM_FreightBillDT WHERE Divcode = '" & Divcode & "'  AND DocNo =  " & val(Txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_FreightBillHD WHERE DivCode = '" & Divcode & "' And DocNo =  " & val(Txtfields(2).Text) & " and Docdt = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
               
                  strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'"
                DB.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and pjvno = " & val(Txtfields(28).Text) & " and pjvdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'")
                Set Rs = New Recordset
                Rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
                Do While Not Rs.EOF
                    DB.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & val(Txtfields(27).Text) & "' and vocno = " & val(Txtfields(28).Text) & " and vocdt = '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' AND GLCODE='" & Rs!Glcode & "'")
                    Rs.MoveNext
                Loop
               
                DB.CommitTrans
                MsgBox "Record Deleted Successfully", vbInformation, head
            Else
               GoTo qry
            End If
            Opt = "del"
        End If
        
        ' Return to query mode
qry:       Call query_mode(0, 0)
        'Calling newform procedure to check for add,mod,del permissions of users
          Call NEWFORM1(BUTTON, GSNO)
         If FreightBillEntryType = "S" Then
            BUTTON(0).Enabled = False
            BUTTON(2).Enabled = False
        End If
          
Case 10

        
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Or Opt = "fnd" Then
        If MsgBox("Do you want to cancel?", vbCritical + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Frame8.Visible = False
    Buttonframe.Enabled = True
    
    tmp = Opt
    desc.Caption = "Query"
    Screen.MousePointer = 11
    
    'CANCEL
    On Error Resume Next
    Select Case Opt
  
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
     
    End Select
    
    'To return default settings - i.e query mode
    Screen.MousePointer = 0
    Call query_mode(0, 0)
    Label4.Visible = False
    Label5.Visible = False
    Frame1.Visible = True
    SpdLCReq.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, 11)
    Call NEWFORM1(BUTTON, GSNO)
    If FreightBillEntryType = "S" Then
        BUTTON(0).Enabled = False
        BUTTON(2).Enabled = False
    End If
    
    
Case 11
    'EXIT
    I = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
    If I = vbYes Then
        Unload Me
    End If

Case 13
            
    Dim CryStkSta As clsCrystal
        Set CryStkSta = New clsCrystal
        Set CryStkSta.cryRept = Cry_TrnFreightBill
        CryStkSta.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode
        CrystalReport1.ParameterFields(1) = "@docno;" & Trim(Txtfields(2).Text)
        CrystalReport1.ParameterFields(2) = "@docdt;" & Format(MaskEdBox1(0), "YYYY-MM-DD")

        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
End Select
Exit Sub
ER1:
If Err = -2147467259 Then
 MsgBox Err.Description, vbCritical, head

    If Mid$(Err.Description, InStr(Err.Description, "ORA-") + 4, 5) = "00054" Then
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "Some  other  user  is  saving  record  for  this  tc " & Chr(13) & " Wait  for  some  time  and  try  again", vbInformation, head + "Save Message"
    End If
ElseIf Err = -2147217864 Then
     Resume Next
Else
    Resume Next
End If
Opt = tmp
N1:
            Opt = tmp
            Exit Sub
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : BUTTON_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub Chk_TDSManual_Click()
  If Chk_TDSManual.value = 1 Then
    Txtfields(127).Locked = False
  Else
    Txtfields(127).Locked = True
  End If
End Sub

Private Sub ChkSelectAll_Click()
On Error GoTo Errh
For nRow = 1 To spdPO.MaxRows
    spdPO.Row = nRow
    spdPO.Col = P_Select
    If ChkSelectAll.value = 1 Then
        spdPO.value = 1
    Else
        spdPO.value = 0
    End If
Next

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ChkSelectAll_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub cmdItemSelect_Click()
Dim Ltemplrs As New ADODB.Recordset
Dim lRow As Long
Dim lcount As Long
Dim Ltemplrs1 As New Recordset
Dim rstItem As New ADODB.Recordset

On Error GoTo Errh

        ''''''''Movement Flag = "N" then We have to Load From Po List, Else We have to load From Material Inward
        lcount = 0
        
        spdPO.Col = P_Select
        For nRow = 1 To spdPO.MaxRows
            spdPO.Row = nRow
            spdPO.Col = P_Select
            If spdPO.value = 1 Then
                lcount = lcount + 1
            End If
        Next
                
        If lcount = 0 Then
            MsgBox "Please Select item from the list", vbInformation, head
            Exit Sub
            SpdLCReq.Visible = True
            Screen.MousePointer = 0
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            Call query_mode(0, 0)
            Call NEWFORM1(BUTTON, GSNO)
            If FreightBillEntryType = "S" Then
                BUTTON(0).Enabled = False
                BUTTON(2).Enabled = False
            End If
            
            Exit Sub
        End If
        Frame8.Visible = False
        SpdLCReq.Visible = False
        
        Buttonframe.Enabled = True
        BUTTON(9).Enabled = False

'        If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
'        Do Until adoSecondaryRS.EOF
'            adoSecondaryRS.Delete
'            adoSecondaryRS.MoveNext
'        Loop
'
'        Dim nSno As Double
        Dim sRefNo As String
        nSno = 1
        With SpdLCReq
            .MaxRows = 0
            For lRow = 1 To spdPO.MaxRows
               spdPO.Row = lRow
               spdPO.Col = P_Select
               If spdPO.value = 1 Then
                    .MaxRows = .MaxRows + 1
                    .Row = .MaxRows
                    .SetText E_TC, .Row, 1
                    .SetText E_DOCSNO, .Row, nSno
                    
                    
  

                     
                    .SetText E_ContainerNo, .Row, Trim(GetText(spdPO, P_ContainerNo, lRow))
                    .SetText E_Supname, .Row, Trim(GetText(spdPO, P_SupplierName, lRow))
                    .SetText E_Supcd, .Row, Trim(GetText(spdPO, P_SupplierCode, lRow))
                    .SetText E_InvAmount, .Row, Trim(GetText(spdPO, P_Value, lRow))
                    
                    .SetText E_FreightAmtMill, .Row, Trim(GetText(spdPO, P_Freightamt, lRow))
                    .SetText E_FreightAmtApproved, .Row, Trim(GetText(spdPO, P_FreightAppamt, lRow))
                    .SetText E_Kgs, .Row, GetText(spdPO, P_Kgs, lRow)
                    .SetText E_PJVNO, .Row, GetText(spdPO, P_PJVNO, lRow)
                    .SetText E_PJVdate, .Row, GetText(spdPO, P_PJVDT, lRow)
                    .SetText E_Bales, .Row, GetText(spdPO, P_BALES, lRow)
                    
                   ' .SetText E_FreightAmtMill, .Row, GetText(SPDPO, P_Rate, LRow)
'                    .SetText E_ po.Row, GetText(spdPO, P_ Lrow)
                    .SetText E_InvoiceNo, .Row, GetText(spdPO, P_BillNo, lRow)
                    .SetText E_InvoiceDate, .Row, GetText(spdPO, P_BillDt, lRow)
                    .SetText E_PlantCode, .Row, Trim(GetText(spdPO, P_PlantCode, lRow))
                     .SetText E_PlantName, .Row, Trim(GetText(spdPO, P_PlantName, lRow))
 
                    nLandCost = 0

                    nSno = nSno + 1
                    
                End If
                    
            Next lRow
        End With
        Tmplrow = 0
       ' txtfields(5).Enabled = True
        Txtfields(7).Enabled = True
         lSuppSel = False
        nTotalAmt = 0
        nTotalHrs = 0
        nTotalPerson = 0
        nTotalKgs = 0
        nTotalPacks = 0
        FreightAmtBill = 0
       ' nTotalPacks = 0
        tmp = Opt
        Opt = ""
        With SpdLCReq
        For nRow = 1 To .MaxRows
            .Row = nRow
            If val(GetText(SpdLCReq, E_PJVNO, nRow)) > 0 Then
                
                nTotalPacks = nTotalPacks + GetText(SpdLCReq, E_Bales, nRow)
               ' nTotalHrs = nTotalHrs + GetText(SpdLCReq, E_CGSTPER, nRow)
                nTotalPerson = nTotalPerson + GetText(SpdLCReq, E_t, nRow)
                nTotalKgs = nTotalKgs + GetText(SpdLCReq, E_Kgs, nRow)
                FreightAmtBill = FreightAmtBill + GetText(SpdLCReq, E_FreightAmtMill, nRow)
            End If
        Next
        End With
  
        Txtfields(5).Text = Format(Round(val(FreightAmtBill), 2), "0.00")
        
        Txtfields(13).Text = Format(Round(val(nTotalPacks), 0), "0")
        Txtfields(12).Text = Format(val(nTotalKgs), "0.000")
      '  txtfields(4).Text = Val(SpdLCReq.MaxRows)
        Opt = tmp
        
        ''Proforma Invoice No
        ''txtFields(13).Text = Trim(sRefNo)
        
        ''================================================================================
        ''Dont Touch This Coding, Otherwise Alternate Product Loading Problem may Araise
        ''================================================================================

        ''================================================================================
        
       ' If adoSecondaryRS.RecordCount > 0 Then adoSecondaryRS.MoveFirst
        
    If lcount = 0 Then
        MsgBox "Item not Yet Selected.", vbOKOnly + vbDefaultButton1, head
    End If
    
    On Error Resume Next
    
    SpdLCReq.Visible = True
    BUTTON(9).Enabled = True
    Txtfields(7).SetFocus
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelect_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub cmdItemSelectClose_Click()
On Error GoTo Errh

    Call BUTTON_Click(10)
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelectClose_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Command1_Click()
 On Error GoTo openconnection_Error
If Opt = "add" Or Opt = "mod" Then
Dim strNewFile As String
        
     Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMI")) Then
        fso.CreateFolder (App.Path & "\RMI")
    End If
        
    strNewFile = ""
 
    If Not (fso.FolderExists(App.Path & "\RMI\RMFreightMD_Approval" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMI\RMFreightMD_Approval" & CustID)
       
    End If
    
    ' display Common Dialog and choose a file
    CommonDialog1.ShowOpen
    strNewFile = CommonDialog1.FileTitle
    Text1.Text = CommonDialog1.FileName
    Txtfields(19).Text = strNewFile
    If Len(Trim(Txtfields(19).Text)) > 40 Then
        MsgBox "File Name should be 40 character", vbInformation, head
        Exit Sub
    End If
    FileEXT = Trim(Mid(CommonDialog1.FileName, InStr(3, CommonDialog1.FileName, "."), Len(CommonDialog1.FileName)))
                
    
   
  
    Dim sFilePath As String
' MsgBox Right$(CommonDialog1.FileName, 4)
    Set fso = New FileSystemObject
 ' MsgBox (fso.GetBaseName(App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(txtfields(304).Text) + "-" + Trim(Format(MaskEdBox1(3).Text, "dd-mm-yy")) + "-" + strNewFile))
    sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & strNewFile
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
        If MsgBox("MD Scan Copy Already Exists!!! Do you want to override?", vbYesNo, head) = vbNo Then Exit Sub
 
    End If
    
  If strNewFile <> "" Then

    Dim myPath As String
    myPath = strNewFile
    'ShellExecute 0, vbNullString, pathOfFile(myPath), vbNullString, vbNullString, 1
    FileCopy strNewFile, sFilePath ' App.Path & "\RMFreightMD_Approval" & CustID & "\" & Divcode & "-" & Trim(Txtfields(8).Text) + "-" + Trim(Format(MaskEdBox1(2).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1.Text), 15) + "--" & strNewFile
   End If
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"

End Sub

Private Sub Command2_Click()
Dim startpath As String
Dim sTopic As String
Dim sFile As String
Dim sParams As Variant
Dim sDirectory As Variant
sTopic = "Open"
sParams = 0&
sDirectory = 0&

Set fso = New FileSystemObject
If Opt = "" Or Opt = "mod" Or Opt = "fnd" Or Opt = " " Or Opt = "add" Then
    If Combo2.Text = "Purchase Bill" Then
        sFilePath = App.Path & "\RMERPBill" & CustID & "\" & Divcode & "-RM Purchase Bill-" & Trim(GetText(SpdLCReq, E_PJVNO, 1)) + " DT-" + Trim(Format(Trim(GetText(SpdLCReq, E_PJVdate, SpdLCReq.ActiveRow)), "dd-mm-yy")) + "-" + Left(Trim(GetText(SpdLCReq, E_Supname, SpdLCReq.ActiveRow)), 15) & ".pdf"
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
        MsgBox "ERP Purchase Bill Copy Not Found", vbInformation, head
        Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "Transporter Bill" Then
        sFilePath = App.Path & "\RMI\RMFreightTransporterBill" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & Trim(Txtfields(122).Text)
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "Transporter Bill Copy Not Found", vbInformation, head
        Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "MD Approved" Then
        sFilePath = App.Path & "\RMI\RMFreightMD_Approval" & CustID & "\" & Divcode & "-DocNo-" & Trim(Txtfields(2).Text) + "-DocDt-" + Trim(Format(MaskEdBox1(0).Text, "dd-mm-yy")) + "-" + Left(Trim(Text2.Text), 15) + "--" & Trim(Txtfields(19).Text)
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "MD Approved Copy Not Found", vbInformation, head
            Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    ElseIf Combo2.Text = "Supplier Bill" Then
        Set FNRs = New Recordset
        FNRs.Open "select distinct supfilename from rm_lot where divcode='" & Divcode & "' and pjno='" & Trim(GetText(SpdLCReq, E_PJVNO, SpdLCReq.ActiveRow)) & "' and pjdt='" & Trim(Format(Trim(GetText(SpdLCReq, E_PJVdate, SpdLCReq.ActiveRow)), "yyyy-mm-dd")) & "'", DB, adOpenStatic
        If Not FNRs.EOF Then
            sFilePath = App.Path & "\RMSupplierBill" & CustID & "\" & Divcode & "-" & Trim(GetText(SpdLCReq, E_PJVNO, SpdLCReq.ActiveRow)) + "-" + Trim(Format(Trim(GetText(SpdLCReq, E_PJVdate, SpdLCReq.ActiveRow)), "dd-mm-yy")) + "-" + Left(Trim(GetText(SpdLCReq, E_Supname, SpdLCReq.ActiveRow)), 4) + "--" & FNRs(0)
        Else
            sFilePath = ""
        End If
        sFile = sFilePath
        If fso.FileExists(sFilePath) Then
        Else
            MsgBox "Supplier Bill Copy Not Found", vbInformation, head
            Exit Sub
        End If
        Call RunShellExecute(sTopic, sFile, sParams, sDirectory, 1)
    End If
End If

End Sub

Private Sub DTPicker3_CloseUp()
MaskEdBox1(2).Text = Format(DTPicker3.value, "dd/MM/yyyy")
Txtfields(3).SetFocus
End Sub
Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = Format(DTPicker1.value, "dd/MM/yyyy")
End Sub
Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = Format(DTPicker2.value, "dd/MM/yyyy")
MaskEdBox1(1).SetFocus

End Sub

Private Sub DTPicker2_LostFocus()
On Error GoTo Errh
If (MaskEdBox1(1).Enabled) Then
    If Not (IsDate(MaskEdBox1(1).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(1).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
        MsgBox "Bill Date must be earlier or equal to Document Date", vbInformation, head
        MaskEdBox1(1).SetFocus
    End If
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker4_CloseUp()
MaskEdBox1(3).Text = Format(DTPicker4.value, "dd/MM/yyyy")
MaskEdBox1(3).SetFocus
End Sub
Private Sub DTPicker4_LostFocus()
On Error GoTo Errh
If (MaskEdBox1(3).Enabled) Then
    If Not (IsDate(MaskEdBox1(3).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(3).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(3).Text) Then
        MsgBox "Paid Date must be Greater or equal to Bill Date", vbInformation, head
        MaskEdBox1(3).SetFocus
    End If
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker1_LostFocus()
On Error GoTo Errh
If Index = 0 And (MaskEdBox1(0).Enabled) Then
    If Not (IsDate(MaskEdBox1(0).Text)) Then
        MsgBox "Please Enter valid Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox "OC Request Date must be earlier or equal to Processing Date", vbInformation, head
        MaskEdBox1(0).SetFocus
    End If
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub DTPicker5_CloseUp()
MaskEdBox1(4).Text = Format(DTPicker5.value, "dd/MM/yyyy")
MaskEdBox1(4).SetFocus
End Sub

Private Sub Form_Activate()
    If BUTTON(0).Visible = True And BUTTON(0).Enabled = True Then
        BUTTON(0).SetFocus
    End If
    Buttonframe.Width = Me.Width
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(4)
   ElseIf KeyCode = vbKeyF And Shift = 2 And BUTTON(4).Enabled = True Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 And BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If
      
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "{tab}"
    If KeyAscii = 26 Then Call Form_KeyDown(vbKeyZ, 2)
End Sub

Private Sub Form_Load()
  
On Error GoTo Errh

'txtFields(12).Locked = False
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open "PROVIDER=MSDataShape;" + connectstring

SpreadAlign
 'Call getBrokertype
 
 Set rsa = New Recordset
rsa.Open "select fainstal,fatfr,isnull(BillEntryApp_Flg,'') as BillApp from in_para", DB, adOpenStatic, adLockBatchOptimistic
If rsa.RecordCount > 0 Then
    Fa_Instal = rsa("fainstal")
    Fa_Tfr = rsa("fatfr")
    FA_BillApp = Trim(rsa("BillApp"))
End If

    Set Rs = New Recordset
    Rs.Open "select isnull(SERVICEBILL_TC,'95,148,149,150') SERVICEBILL_TC from FA_PARAM  ", DB, adLockReadOnly
    If Not Rs.EOF Then
        SERVICEBILL_TC = Rs(0)
    End If

BUTTON(9).Enabled = False
Opt = "qry"
If QryStat Then
   GSNO = 16
   Call query_mode(val(QSLCode), 1)
Else
   Call query_mode(0, 0)
End If
lblUserID = UserNme
'stbar.Panels(1).Text = SbMsg
stbar.Panels(1).Text = head
Call NEWFORM1(BUTTON, GSNO)
If QryStat Then
    BUTTON(0).Enabled = False
    BUTTON(1).Enabled = False
    BUTTON(2).Enabled = False
    BUTTON(3).Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(6).Enabled = False
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(12).Enabled = False
End If
   
If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    lblLabels(9).Visible = True
    DTPicker4.Visible = True
    MaskEdBox1(3).Visible = True
   heading.Caption = " Freight Bill Payment Status"
   Me.Caption = heading.Caption
Else
    lblLabels(9).Visible = False
    DTPicker4.Visible = False
    MaskEdBox1(3).Visible = False
End If
   
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_Load " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub Form_Resize()
On Error Resume Next

'    ''For Entry Form
'    stbar.Panels(2).Width = Me.Width - Val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'    Buttonframe.Width = Me.Width - 200
'
'    Shape1.Width = Me.Width - 400
'    Frame1.Width = Me.Width - 600
'    SpdLCReq.Width = Me.Width - 1000
'
'    Shape1.Height = Me.Height - 2100
'    Frame1.Height = Me.Height - 2200
'    SpdLCReq.Height = Me.Height - 8000
'
'    Label7.Top = Me.Height - 2500
'    txtQty.Top = Me.Height - 2600
'    Label7.Left = Label7.Left + 6700
'    txtQty.Left = txtQty.Left + 6700
'
'    ''For PO Order List Frame
'    Frame8.Top = (Me.Height / 2) - (Frame8.Height / 2)
'    Frame8.Left = (Me.Width / 2) - (Frame8.Width / 2)

End Sub

Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  If adoPrimaryRS.State > 0 Then adoPrimaryRS.Close
  Set adoPrimaryRS = Nothing
  Set ADOSECONDARYRS = Nothing
  Set Nqcrecept = Nothing
  Reset
  
End Sub



Private Sub Value_Validate(Cancel As Boolean)

nTotalAmt = 0
tmp = Opt
Opt = ""
With SpdLCReq
For nRow = 1 To .MaxRows
    .Row = nRow
    If val(GetText(SpdLCReq, E_FreightAmtMill, nRow)) > 0 Then
        ''Order Value in Foreign Currency
        nTotalAmt = nTotalAmt + GetText(SpdLCReq, E_Amount, nRow)
    End If
Next
End With
Opt = tmp


'txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * Val(txtfields(11).Text), "0.00")
'txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
'
'txtfields(15).Text = Format(KSLRound(Val(Value), 0) * Val(txtfields(11).Text), "0.00")
'txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
End Sub

Private Sub Option3_Click()
  If Option3.value = True Then
    If val(Txtfields(129).Text) > 0 Then
     'txtfields(128).Text = (val(txtfields(127).Text) * val(txtfields(129).Text)) / 100
     Call tdscal
     End If
  End If
  
End Sub

Private Sub Option4_Click()
  If Option4.value = True Then
  
    Txtfields(129).Text = 0
    Txtfields(128).Text = 0
    
    
  End If
  
End Sub

Private Sub SpdLCReq_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)

    If SpdLCReq.ActiveCol = E_FreightAmtMill Then
        stbar.Panels(2).Text = "Enter The Rate"
    End If
    
End Sub

Private Sub SpdLCReq_Change(ByVal Col As Long, ByVal Row As Long)
If Col = E_FreightAmtBill Or Col = E_FreightAmtApproved Then
   lQtyChange = True
   Call TotalCalculation
   
End If
End Sub

Private Sub SpdLCReq_DblClick(ByVal Col As Long, ByVal Row As Long)
If Col = E_DOCSNO Then
    If Opt = "add" Or Opt = "mod" Then
        If SpdLCReq.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                SpdLCReq.DeleteRows SpdLCReq.ActiveRow, 1
                SpdLCReq.MaxRows = SpdLCReq.MaxRows - 1
                tmp = Opt
                Opt = ""
                With SpdLCReq
                    For nRow = 1 To .MaxRows
                        .Row = nRow
                        .SetText E_DOCSNO, .Row, nRow
                    Next
                End With
                Opt = tmp
            End If
        Else
            MsgBox "You cannot delete this record - Detail can have atleast one record", vbInformation, head
        End If
    End If
End If
End Sub

Private Sub SpdLCReq_EditError(ByVal Col As Long, ByVal Row As Long, ByVal EditError As Integer)
EditError = 0
End Sub

Private Sub SpdLCReq_GotFocus()
lQtyChange = False
End Sub

Private Sub SpdLCReq_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Errh

    If KeyCode = vbKeyA And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        Call BUTTON_Click(7)
    ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyEscape Then
        Call BUTTON_Click(10)
    End If
    
    
    
    
If Opt = "add" Or Opt = "mod" Then
'    With SpdLCReq
'        If .ActiveCol = eLCReqDtls.E_FreightAmtBill Then
'            If val(GetText(SpdLCReq, eLCReqDtls.E_Kgs, SpdLCReq.ActiveRow)) < val(GetText(SpdLCReq, eLCReqDtls.E_FreightAmtBill, SpdLCReq.ActiveRow)) Then
'            MsgBox "Receipt Kgs cannot be greater than Balance Kgs", vbInformation, head
'            .SetText eLCReqDtls.E_FreightAmtBill, .ActiveRow, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_Kgs, SpdLCReq.ActiveRow)))
'            Exit Sub
'            End If
'
'            .SetText eLCReqDtls.E_Value, .ActiveRow, CStr(val(GetText(SpdLCReq, eLCReqDtls.E_FreightAmtBill, SpdLCReq.ActiveRow)) * val(GetText(SpdLCReq, eLCReqDtls.E_FreightAmtMill, SpdLCReq.ActiveRow)))
'        End If
'           ' End If
'
'
'
'
'    End With
End If
    
   
      
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SpdLCReq_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Public Sub bindcontls()
    On Error Resume Next
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.Txtfields
        Set oText.DataSource = adoPrimaryRS
    Next
   ' Set Value.DataSource = adoPrimaryRS
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(Date, "dd/MM/yyyy")
    End If
    
    Set MaskEdBox1(0).DataSource = adoPrimaryRS
     Set MaskEdBox1(1).DataSource = adoPrimaryRS
    ' Check1.Value = adoPrimaryRS("BlankChequedtFlg")
   ' Check1.Value = IIf(IsNull(adoPrimaryRS("BlankChequedtFlg")), 0, adoPrimaryRS("BlankChequedtFlg"))
     'DTPicker2.DataSource = adoPrimaryRS
   ' Set MaskEdBox1(2).DataSource = adoPrimaryRS
    

 
    
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo Errh

    For Each oText In Me.Txtfields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False

    'txtFields(9).Locked = True
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : disablcontls " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo Errh

    For Each oText In Me.Txtfields
        oText.Locked = False
    Next
  
  '  txtFields(1).Locked = True
    MaskEdBox1(0).Enabled = True
    DTPicker1.Enabled = False
    'txtFields(9).Locked = True
    
    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ENABLCONTLS " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
    End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
    
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &HC0FFC0
                stbar.Panels(2).Text = MaskEdBox1(Index).ToolTipText
        End Select
    End If
    If Index = 0 Then
        If val(Txtfields(2)) = 0 Then
            If MaskEdBox1(0).Text = "__/__/____" Then
                MaskEdBox1(0) = Format(pdate, "dd/MM/yyyy")
            End If
        End If
    End If
    
    
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
    
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &H80000005
                stbar.Panels(2).Text = ""
        End Select
        
    End If

If Opt = "add" Or Opt = "mod" Then
    
    If Index = 0 Then
        If MaskEdBox1(0).Enabled Then
            If Not (IsDate(MaskEdBox1(0).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(0).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
                MsgBox "Reference Date must be earlier or equal to processing date", vbInformation, head
                MaskEdBox1(0).SetFocus
                MaskEdBox1(0).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If
    If Index = 1 Then
'    If IsDate((MaskEdBox1(1).Text)) = False Then
'    Check1.value = 1
'    Else
'    Check1.value = 0
'    End If
'        If (MaskEdBox1(1).Enabled) Then
'            If Not (IsDate(MaskEdBox1(1).Text)) Then
'                MsgBox "Please Enter valid Date", vbInformation, head
'                MaskEdBox1(1).SetFocus
'            ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
'                MsgBox "Bill Date must be Less or equal to Document Date", vbInformation, head
'                MaskEdBox1(1).SetFocus
'            End If
'        End If
    End If
    If Index = 3 Then

        If (MaskEdBox1(3).Enabled) Then
            If Not (IsDate(MaskEdBox1(3).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(1).SetFocus
            ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(3).Text) Then
                MsgBox "Paid Date must be Greater or equal to Bill Date", vbInformation, head
                MaskEdBox1(1).SetFocus
            End If
        End If
    End If
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

If Opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select "
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub


Private Sub SpdLCReq_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
nAmount = 0
Dim PenQty1 As Double
If Opt = "add" Or Opt = "mod" Then

    
 
End If
End Sub

Private Sub spdPO_GotFocus()
'spdPO.SetActiveCell P_Select, 1
End Sub

Private Sub Timer11_Timer()
Timer1.Interval = 500
If IsEmpty(nDispCount) = True Then
    nDispCount = 0
End If
If nDispCount = 0 Then
    Txtfields(2).ForeColor = &H0&
    nDispCount = 1
ElseIf nDispCount = 1 Then
    Txtfields(2).ForeColor = &H80FF&
    nDispCount = 0
End If
End Sub

Private Sub Text_Change()
 
End Sub

Private Sub Text4_Change()
If Opt = "add" Then
  
  Dim position As Integer

      
            If Trim(Text4.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            Dim FindCol As Integer
            If Combo1.Text = "LRNo" Then
                FindCol = P_ContainerNo
            ElseIf Combo1.Text = "Supplier" Then
                FindCol = P_SupplierName
            Else
                FindCol = P_PJVNO
            End If
       
   
            j = IIf(UCase(Trim(GetText(spdPO, FindCol, spdPO.Row))) = UCase(Trim(Text4)), spdPO.Row + 1, 1)
            For I = j To spdPO.MaxRows + 1
            position = InStr(1, UCase(GetText(spdPO, FindCol, I)), UCase(Trim(Text4)))
              If position > 0 Then
                    spdPO.Row = I
                    spdPO.SetSelection 0, spdPO.Row, spdPO.MaxCols, spdPO.Row
'                    SPDPO.SetFocus
'                    SPDPO.SetSelection 0, 10, 1, 10
                    spdPO.SetFocus
                    Text4.SetFocus
                    Exit For
                   
                    Exit Sub
                End If
            Next I
            'Text4.SetFocus
          End If
        Exit Sub
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Errh
Dim TypRs As Recordset
If Opt = "add" Or Opt = "mod" Then
If Index = 5 Or Index = 14 Or Index = 9 Or Index = 5 Then
 Call Totcalc
 
End If
End If
If Opt = "" Or Opt = "qry" Or Opt = " " Or Opt = "mod" Or Opt = "del" Then
Select Case Index
   
Case 19


Case 29
    Set Rs = New Recordset
    Rs.Open "select area_code,name from ig_area a where  area_code= '" & Trim(Txtfields(Index).Text) & "'", DB, adOpenStatic
    If Not Rs.EOF Then
        Text7.Text = Rs(1)
    Else
        Text7.Text = ""
    End If

Case 20

Case 1

       
Case 5
      

Case 24
    Set Rs = New Recordset
    Rs.Open "select  a.carcode,carname from po_car a where carcode='" & Txtfields(24).Text & "'", DB, adOpenStatic
  
    If Rs.RecordCount > 0 Then
         Text5.Text = Rs("carname")
         Txtfields(24).Text = UCase(Txtfields(24).Text)
       
        Exit Sub
    End If

Case 18
    Set Rs = New Recordset
    Rs.Open "select * from Ex_lctype where divcode='" & Divcode & "' and code='" & Txtfields(18).Text & "'", DB, adOpenStatic
  
    If Rs.RecordCount > 0 Then
         Text3.Text = Rs("Description")
         Txtfields(18).Text = UCase(Txtfields(18).Text)
       
           Exit Sub
    End If
   
Case 6
'    Set Rs = New Recordset
'    Rs.Open "select * from ig_bank where BANK_CODE='" & Txtfields(6).Text & "'", DB, adOpenStatic
'    If Rs.RecordCount > 0 Then
'        Text1.Text = Rs("NAME")
'       Else
'        Text1.Text = ""
'    End If
    
Case 7
    Set TypeRs = New Recordset
    TypeRs.Open "Select SlCode,SLName,City from Fa_Slmas where SLCode='" & Trim(Txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
    If Not TypeRs.EOF Then
        Text2.Text = TypeRs(1) + ", " + IIf(IsNull(Trim(TypeRs(2))), "", Trim(TypeRs(2)))
    Else
        Text2.Text = ""
    End If
    Set TypeRs = Nothing
Case 6
 
Case 11

    nTotalAmt = 0
    nTotalQty = 0
'    tmp = Opt
'    Opt = ""
    With SpdLCReq
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdLCReq, E_FreightAmtMill, nRow)) > 0 Then
'            .SetText E_Value, .Row, Format(Val(GetText(SpdLCReq, E_Amount, nRow)) * Val(txtfields(11).Text), "0.00")
'            nTotalAmt = nTotalAmt + Val(GetText(SpdLCReq, E_Amount, nRow))
'            nTotalQty = nTotalQty + Val(GetText(SpdLCReq, E_FreightAmtMill, nRow))
        End If
    Next
    End With
'    txtQty.Text = Format(nTotalQty, "0.000")
'    Value.Text = Format(KSLRound(nTotalAmt, 0), "0.00")
'    txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * Val(txtfields(11).Text), "0.00")
'    txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
'    Opt = tmp

Case 27
    Set Rs = New Recordset
    Rs.Open "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a where  TC= " & val(Txtfields(27).Text) & "", DB, adOpenStatic
    If Not Rs.EOF Then
        Text6.Text = Rs(1)
    Else
        Text6.Text = ""
    End If

Case 132
    Set rsa = New Recordset
    rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(Txtfields(132).Text) & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        Txtfields(131).Text = rsa(1)
        Else
        Txtfields(131).Text = ""
    End If


End Select


End If

 
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtfields_Change " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Then
        If Index = 5 Then
            If lSuppSel = True Then
                lSuppSel = False
                Exit Sub
            End If
        End If
        
        If Index = 28 Then
            Set Rs = New Recordset
            Rs.Open "SELECT ISNULL(MAX(pjvno),0)+1 FROM fa_purhd WHERE pjvdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tc in (select items from dbo.split('" & SERVICEBILL_TC & "',','))", DB, adOpenStatic
            Txtfields(28).Text = Rs(0)
        End If
        
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Index <> 2 Or Index <> 9 Or Index <> 47 Then
            Txtfields(Index).BackColor = &HC0FFC0
            stbar.Panels(2).Text = Txtfields(Index).ToolTipText
        End If
    End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description    : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo Errh

'//////////**************FOR ALL FIELD VALIDATION *****************/////////
'//////////**************FOR ALL FIELD VALIDATION *****************/////////

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 1 'LC Type
              '  ToAlphaNumber txtfields(Index), 5, KeyAscii
            Case 5 'Payment Type
              ' Call ToNumber(Txtfields(Index), 15, KeyAscii)
            Case 6 'Margin Money
              '  TodueDate txtfields(Index), 5, KeyAscii, 2
            Case 3 'Country of Shipment
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii
'                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
'                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
'                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
'                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
'                     KeyAscii = 0
'                End If
                
            Case 8 'Delivery Schedule
              '  ToAlphaNumber txtfields(Index), 100, KeyAscii
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                     KeyAscii = 0
                End If
            
            Case 4 'Despatch Mode
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii
                
            Case 9 'Currency
              '  ToAlphaNumber txtfields(Index), 3, KeyAscii
                
            Case 5 'Payment Term
                ' ToAlphaNumber txtfields(Index), 10, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                             Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                            KeyAscii = 0
                 End If
            Case 7 ' Supplier Code Validation
                If Txtfields(7).Text = "" Then
              '  Call ToAlpha(txtfields(Index), 7, KeyAscii)
            Else
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                       (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                        KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58)) Then
                        KeyAscii = 0
                End If
                If Len(Txtfields(Index).Text) > 7 Then
                    KeyAscii = 0
                End If
            End If
            Case 10 'Delivery Term
               ' ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
            Case 11 'Conversion Rate
               ' TodueDate txtfields(Index), 12, KeyAscii, 5
            Case 12 'Payment Term
                ' ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
                 
        End Select
    End If

    If Opt = "mod" Then
        Txtfields(7).Enabled = False
    Else
        Txtfields(7).Enabled = True
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : TXTFIELDS_KeyPress " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error Resume Next
If Not (Txtfields(Index).Text = "") Then
    Txtfields(Index).Text = UCase(Txtfields(Index).Text)
End If

If Index = 3 Then
    If Opt = "add" Then
        If Trim(Txtfields(3).Text) = "" Then
            Txtfields(3).SetFocus
            Exit Sub
        End If
    End If
End If

If Index = 7 Then
    If Opt = "add" Or Opt = "mod" Then
        If Trim(Txtfields(7).Text) = "" Then
            spdPO.SetFocus
            Exit Sub
        End If
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    If Index <> 2 Then
        Txtfields(Index).BackColor = &H80000005
        stbar.Panels(2).Text = ""
    End If
End If

Txtfields(Index).BackColor = &H80000005

End Sub
Public Sub query_mode(nDocNo As Long, dDocdt As Date)

Dim Rs As Recordset
On Error GoTo Errh
If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
End If
    If Not Opt = " " Then
        On Error GoTo ER1
        lQtyChange = False
        Txtfields(0).Text = Divcode
        Frame8.Visible = False
        Buttonframe.Enabled = True
        BUTTON(12).Enabled = True
        Call disablcontls
        DATLAB.Caption = Format(pdate, "dd/MM/yyyy")  'This variable is declared as global to show the date
        If nDocNo = 0 Then
            Opt = " "
            Set adoPrimaryRS = New Recordset
            Call qry1
        Else
            Call fnd1(nDocNo, dDocdt)
        End If
        If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
            Call SpreadAlign(0)
            MsgBox "No Records Found", vbInformation, head
            '''''''''''''''''Set SpdLCReq.DataSource = Nothing
            Dim oText As TextBox
            'Bind the text boxes to the recordset
            For Each oText In Me.Txtfields
                oText.Text = ""
            Next
       
           ' LCTName.Text = ""
            
            MaskEdBox1(0).Text = "__/__/____"
            Screen.MousePointer = 0
            Exit Sub
        End If
                
        If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
            MsgBox "No Records Found", vbInformation, head
            Screen.MousePointer = dv1
            Call BUTTON_Click(10)
            Exit Sub
        End If
        If Opt <> "fnd" Then
            If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        End If
        Call bindcontls
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
        Set ADOSECONDARYRS = New Recordset
        Set ADOSECONDARYRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        Call SpreadAlign(ADOSECONDARYRS.RecordCount)
        SpdLCReq.Lock = True
        
        If Opt <> "fnd" Then
            desc.Caption = "Query"
        End If
        
        Label2.Visible = False
                
    End If
    
    ' Calling newform procedure from Module to disable buttons
    If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
        MsgBox "No Records Found", vbInformation, head
        Call Norecfound(BUTTON)
        LCTName.Text = ""
        Text1.Text = ""
        Text2.Text = ""
        Call bindcontls
        ''''''''''''''''''''Set SpdLCReq.DataSource = Nothing
        Screen.MousePointer = 0
        Exit Sub
    Else
        Call NEWFORM1(BUTTON, GSNO)
    End If
    
    If adoPrimaryRS.RecordCount = 0 And Opt = "fnd" Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = dv1
        Exit Sub
    End If
    Call adddelmod(BUTTON)
    Screen.MousePointer = 0
If FreightBillEntryType = "S" Then
BUTTON(0).Enabled = False
End If
    Exit Sub
ER1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head + "Message"
        If Opt = "fnd" Then
            ''''''''''''''''Set SpdLCReq.DataSource = Nothing
        End If
        Screen.MousePointer = 0
    End If
    If Err = -2147467259 Then
        MsgBox "Connection  coul", vbInformation, head
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0
If FreightBillEntryType = "S" Then
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Query_mode " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Sub delmodproc(a As String, B As String)

On Error GoTo Errh

    RW = 1000
    BUTTON(9).Enabled = True
    BUTTON(9).Enabled = True
    On Error GoTo ER
    Set adoPrimaryRS = New Recordset
    Set ADOSECONDARYRS = New Recordset
                                                                       
    Set adoPrimaryRS = New Recordset
   
    
    
    adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,MDApp_copy,FreightBill_copy,TotalBales,TotalKgs,Value,other_amt,Freightbill_Amt,FreightMill_Amt,FreightApp_Amt,GSTCode,GSTPer,GSTAmt,CGSTAmt,SGSTAmt,IGSTAmt,TDS_Per,TDS_Amt,Roff_amt,Total_Amt,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID ,Carcode,PaidDate,pjvtc,PJVNO,PJVDT,RCMFLG,RCMITCFLG,TDSFLG,TDSTypeCode,TDS_AssAmt,Tdsmanual,PlaceodSupplyID FROM RM_FreightBillHD WHERE DivCode='" & Divcode & "' And docNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,Supcd,LRNo,InvoiceNo,Invoicedt,PJVNO,PJVDT,PLCode,Rate,Bales,TotalKgs,inv_Amt,FreightAmtBill,FreightAmtMill,FreightAmtApp,CGSTPER,CGSTAmt,SGSTPER,SGSTAmt,IGSTPER,IGSTAmt,TDSPER,TDSAmt,TotalAmt,Frt_Docno  FROM RM_FreightBillDT a Where a.divcode='" & Divcode & "' " & _
                  "  And DocNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
       
    Call bindcontls
    
    If Opt = "mod" Or Opt = "del" Then
        Set ADOSECONDARYRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        RW = 1
        With SpdLCReq
        If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
        .MaxRows = 0
        Do While Not ADOSECONDARYRS.EOF
            .MaxRows = .MaxRows + 1
          .SetText eLCReqDtls.E_DIVCODE, RW, ADOSECONDARYRS("Divcode")
            .SetText eLCReqDtls.E_DOCNO, RW, ADOSECONDARYRS("DocNo")
            .SetText eLCReqDtls.E_Docdt, RW, ADOSECONDARYRS("Docdt")
            .SetText eLCReqDtls.E_DOCSNO, RW, .MaxRows  'adoSecondaryRS("DocSNo")
                    
            .SetText eLCReqDtls.E_PJVNO, RW, ADOSECONDARYRS("PJVNO")
            .SetText eLCReqDtls.E_Bales, RW, ADOSECONDARYRS("Bales")
            .SetText eLCReqDtls.E_PJVdate, RW, Format(ADOSECONDARYRS("pjvdt"), "dd/MM/yy")
            .SetText eLCReqDtls.E_InvAmount, RW, ADOSECONDARYRS("inv_amt")
            
            .SetText eLCReqDtls.E_Kgs, RW, ADOSECONDARYRS("totalkgs")
            .SetText eLCReqDtls.E_FreightAmtMill, RW, ADOSECONDARYRS("FreightAmtMill")
            .SetText eLCReqDtls.E_FreightAmtBill, RW, ADOSECONDARYRS("FreightAmtBill")
            .SetText eLCReqDtls.E_FreightAmtApproved, RW, ADOSECONDARYRS("FreightAmtApp")
            
            .SetText eLCReqDtls.E_InvoiceNo, RW, ADOSECONDARYRS("InvoiceNo")
      
             .SetText eLCReqDtls.E_InvoiceDate, RW, ADOSECONDARYRS("Invoicedt")
             .SetText eLCReqDtls.E_PlantCode, RW, ADOSECONDARYRS("PLCode")
             
             Set tsplant = New Recordset
             tsplant.Open "select plcode,plname from rm_plant where plcode='" & ADOSECONDARYRS("PLCode") & "' ", DB, adOpenForwardOnly
             If Not tsplant.EOF Then
                .SetText eLCReqDtls.E_PlantName, RW, tsplant("plname")
             End If
           
             
             .SetText eLCReqDtls.E_ContainerNo, RW, ADOSECONDARYRS("LRNo")
             .SetText eLCReqDtls.E_Supcd, RW, ADOSECONDARYRS("Supcd")
             
             Set tsplant = New Recordset
             tsplant.Open "select slname from fa_slmas where slcode='" & ADOSECONDARYRS("Supcd") & "' ", DB, adOpenForwardOnly
             If Not tsplant.EOF Then
                .SetText eLCReqDtls.E_Supname, RW, tsplant("slname")
             End If
             
             .SetText eLCReqDtls.E_CGSTPER, RW, ADOSECONDARYRS("CGSTPER")
             .SetText eLCReqDtls.E_CGSTAmt, RW, ADOSECONDARYRS("CGSTAmt")
             .SetText eLCReqDtls.E_SGSTPER, RW, ADOSECONDARYRS("SGSTPER")
             .SetText eLCReqDtls.E_SGSTAmt, RW, ADOSECONDARYRS("SGSTAmt")
             
              .SetText eLCReqDtls.E_IGSTPER, RW, ADOSECONDARYRS("iGSTPER")
             .SetText eLCReqDtls.E_IGSTAmt, RW, ADOSECONDARYRS("iGSTAmt")
              .SetText eLCReqDtls.E_TDSPER, RW, ADOSECONDARYRS("TDSPER")
             .SetText eLCReqDtls.E_TDSAMT, RW, ADOSECONDARYRS("TDSAmt")
             .SetText eLCReqDtls.E_TotalAmt, RW, ADOSECONDARYRS("TotalAmt")
                 

            RW = RW + 1
            ADOSECONDARYRS.MoveNext
        Loop
        End With
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,MDApp_copy,FreightBill_copy,TotalBales,TotalKgs,Value,other_amt,Freightbill_Amt,FreightMill_Amt,FreightApp_Amt,GSTCode,GSTPer,GSTAmt,CGSTAmt,SGSTAmt,IGSTAmt,TDS_Per,TDS_Amt,Roff_amt,Total_Amt,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID,Carcode,PaidDate,pjvtc,PJVNO,PJVDT,RCMFLG,RCMITCFLG,TDSFLG,TDSTypeCode,TDS_AssAmt,Tdsmanual,PlaceodSupplyID FROM RM_FreightBillHD Where DivCode='" & Divcode & "'  And docno = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        
    End If
    
    Call SpreadAlign(ADOSECONDARYRS.RecordCount)
    Frame1.Visible = True
    BUTTON(12).Enabled = False
    SpdLCReq.Visible = True
    Txtfields(0).Locked = False '23-10-2020 changed
   ' txtfields(1).Locked = True
    Txtfields(2).Locked = True

    Label4.Visible = False
    Label5.Visible = False
    MaskEdBox1(0).Enabled = False

    If Opt = "mod" Then
        stbar.Panels(2).Text = "Modify dueDate,Store Code and Click Save button to Save the Modified Records"
    ElseIf Opt = "del" Then
        stbar.Panels(2).Text = "Click Save Button to Save the Delete Records"
    End If
    Screen.MousePointer = 0
    If Opt = "del" Then
        Call disablcontls
    End If
    
Exit Sub
ER:
    MsgBox "Please Select a valid Value from the List", vbOKOnly, head + "Selection Warning"
    Screen.MousePointer = 0
    BUTTON(9).Enabled = False
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : delmodproc " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub

Public Function newDocNo()

    Dim v_stdate  As String, v_endate As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    On Error GoTo Errh

    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set Rs = New Recordset
    Rs.Open "Select right(isnull(max(convert(numeric,docno)),0),4) From RM_FreightBillHD where Divcode = '" & Divcode & "'  and Docdt between '" & v_stdate & "'   and  '" & v_endate & "'", DB, adOpenStatic, adLockReadOnly
    If Not (IsNull(Rs(0))) And (Rs.BOF = False) Then 'check new entry for the year or not
        'newdocno = Format(yfdate, "YY") & Padl(CStr(Rs(0) + 1), 4, "0")
         newDocNo = Rs(0) + 1
    Else
        'newdocno = Format(yfdate, "YY") & Padl(CStr(Rs(0) + 1), 4, "0")
        newDocNo = Rs(0) + 1
    End If
    

  
    Exit Function

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : newDocNo " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Function
Public Sub qry1()
On Error GoTo Errh

Set adoPrimaryRS = New Recordset

adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,MDApp_copy,FreightBill_copy,TotalBales,TotalKgs,Value,other_amt,Freightbill_Amt,FreightMill_Amt,FreightApp_Amt,GSTCode,GSTPer,GSTAmt,CGSTAmt,SGSTAmt,IGSTAmt,TDS_Per,TDS_Amt,Roff_amt,Total_Amt,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID,Carcode,PaidDate,pjvtc,PJVNO,PJVDT,RCMFLG,RCMITCFLG,TDSFLG,TDSTypeCode,TDS_AssAmt,Tdsmanual,PlaceodSupplyID FROM RM_FreightBillHD WHERE DivCode='" & Divcode & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,Supcd,LRNo,InvoiceNo,Invoicedt,PJVNO,PJVDT,PLCode,Rate,Bales,TotalKgs,inv_Amt,FreightAmtBill,FreightAmtMill,FreightAmtApp,CGSTPER,CGSTAmt,SGSTPER,SGSTAmt,IGSTPER,IGSTAmt,TDSPER,TDSAmt,TotalAmt,Frt_Docno FROM RM_FreightBillDT a Where a.divcode='" & Divcode & "' " & _
                  "  And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : qry1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
  
 End Sub
 
Public Sub fnd1(a As Long, B As Date)
On Error GoTo Errh

Set adoPrimaryRS = New Recordset
                 
 adoPrimaryRS.Open " SHAPE {SELECT Divcode,Docno,Docdt,slcode,Billno,Billdt,MDApp_copy,FreightBill_copy,TotalBales,TotalKgs,Value,other_amt,Freightbill_Amt,FreightMill_Amt,FreightApp_Amt,GSTCode,GSTPer,GSTAmt,CGSTAmt,SGSTAmt,IGSTAmt,TDS_Per,TDS_Amt,Roff_amt,Total_Amt,Remarks,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,HostID,Carcode,PaidDate,pjvtc,PJVNO,PJVDT,PlaceodSupplyID FROM RM_FreightBillHD WHERE DivCode='" & Divcode & "' And docNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdt,docno} AS ParentCMD APPEND ({SELECT Divcode,Docno,Docdt,DOCSNO,Supcd,LRNo,InvoiceNo,Invoicedt,PJVNO,PJVDT,PLCode,Rate,Bales,TotalKgs,inv_Amt,FreightAmtBill,FreightAmtMill,FreightAmtApp,CGSTPER,CGSTAmt,SGSTPER,SGSTAmt,IGSTPER,IGSTAmt,TDSPER,TDSAmt,TotalAmt ,Frt_Docno FROM RM_FreightBillDT a Where a.divcode='" & Divcode & "' " & _
                  "  And DocNo = " & val(a) & " and Docdt = '" & Format(B, "yyyy-mm-dd") & "' And Docdt Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,DocNo,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdt TO Docdt) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
       
 
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : fnd1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
End Sub
      

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
    
    If (Index = 129 Or Index = 127) Then
        If (Opt = "add" Or Opt = "mod") Then
            Call tdscal
        End If
    End If
    
   If Index = 29 Then
    Set rsch = New Recordset
        rsch.Open "select a.AREA_CODE ""Area ID"",a.name ""Area Name"",s.Name 'State Name',isnull(s.gststatecode,'') 'GST State Code'  from ig_area a inner join ig_state s on s.STATE_code=a.STATE_CODE  where isnull(a.Active,'N')='Y' and a.area_Code='" & Trim(Txtfields(Index).Text) & "'", DB
        If rsch.RecordCount > 0 Then
            Txtfields(Index).Text = rsch(0)
            Text7.Text = rsch(1)
        
        Else
              LookUp.Clear = True
               LookUp.query = "select a.AREA_CODE ""Area ID"",a.name ""Area Name"",s.Name 'State Name',isnull(s.gststatecode,'') 'GST State Code'  from ig_area a inner join ig_state s on s.STATE_code=a.STATE_CODE  where isnull(a.Active,'N')='Y'"
               LookUp.ALIGN = "2000,2500,2500,1300"
               LookUp.Caption = "Area Listing"
               LookUp.DefCol = "Area Name"
               LookUp.Show vbModal

               If LookUp.Cancel = False Then

                    If Trim(LookUp.Fields("GST State Code")) = "0" Or Trim(LookUp.Fields("GST State Code")) = "" Then
                            MsgBox "Please Enter GST State Code in the state setup.", vbInformation, head
                            Call BUTTON_Click(10)
                            Exit Sub
                    End If
                    STCODE = Trim(LookUp.Fields("GST State Code"))
               
                                     
                                     
                    Set rs1 = New Recordset
                    rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "' ", DB
                    If Not rs1.EOF Then
                        IGSTFLG = "Y"
                    Else
                        IGSTFLG = "N"
                    End If
                   Txtfields(29).Text = Trim(LookUp.Fields(0))
                   Text7.Text = LookUp.Fields(1)
                   
                
                   Call TotalCalculation
                   LookUp.Clear = True
                   
                   Txtfields(10).SetFocus
                   'Exit Sub
               Else
                    Cancel = True
                   Txtfields(24).Text = ""
                   Text10.Text = ""
               End If
         End If
      
   End If
       
   If Index = 10 Then
   
      Set Rs = New Recordset

   Rs.Open "select  tax_code,description,st_per from ig_tax where tax_code='" & Txtfields(10).Text & "'", DB, adOpenStatic
 
    If Rs.RecordCount > 0 Then
         Text3.Text = Rs("Description")
         Txtfields(17).Text = Rs("st_per")
         Txtfields(10).Text = Rs("tax_code")
    
         Exit Sub
    Else
         LookUp.Clear = True
      
          LookUp.query = "select  tax_code 'Tax _code',Description,st_per 'GST % ' from ig_tax where isnull(TAXSTATUS,'N')='Y' "
      
         LookUp.Caption = "Tax Listing"
         LookUp.DefCol = "Description"
         LookUp.ALIGN = "4000,1000"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                Txtfields(17).Text = LookUp.Fields(2)
                Txtfields(10).Text = LookUp.Fields(0)
             
                Call TotalCalculation
                LookUp.Clear = True
              '  txtfields(6).SetFocus
         Else
                Txtfields(10).Text = ""
                Text3.Text = ""
           
         End If
        stbar.Panels(2).Text = "Select Tax Name from the List"
                
    End If
   
   End If

     If Index = 27 Then
        Set rsa = New Recordset
        strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,RM_FA_PAYMENTGL b  where A.TC=B.tc AND B.DIVCODE ='" & Divcode & "' And a.tc='" & val(Txtfields(27).Text) & "' "
        rsa.Open strSQL, DB, adOpenStatic
        If Not rsa.EOF Then
            Txtfields(27).Text = rsa("TC")
            Text6.Text = rsa("TcHead")
            Exit Sub
        Else
            LookUp.Clear = True
            LookUp.query = "select Distinct a.tc""TC"",a.tchead""TC Head"" from fa_tcmas a,RM_FA_PAYMENTGL b  where A.TC=B.tc AND B.DIVCODE ='" & Divcode & "' and a.tc in (select items from dbo.split('" & SERVICEBILL_TC & "',',')) "
            LookUp.Caption = "TC Listing"
            LookUp.DefCol = "TC Head"
            LookUp.ALIGN = "1000,5000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                Txtfields(27).Text = LookUp.Fields(0)
                Text6.Text = LookUp.Fields(1)
                Set Rs = New Recordset
                Rs.Open "SELECT ISNULL(MAX(pjvno),0)+1 FROM fa_purhd WHERE pjvdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'  and tc in (select items from dbo.split('" & SERVICEBILL_TC & "',',')) ", DB, adOpenStatic
                Txtfields(28).Text = Rs(0)
                Call TotalCalculation
                LookUp.Clear = True
            Else
                Txtfields(27).Text = ""
                Text6.Text = ""
            End If
                stbar.Panels(2).Text = "Select TC Head from the List"
        End If
   End If


       
       
       
       If Index = 7 And lSuppSel = False Then  '' Supplier
       

            Set RSS = New Recordset
            qry = "select distinct a.slcode""Transporter Code"",a.slname""Transporter Name"" from  VW_RM_Transporter a where slcode='" & Trim(Txtfields(7).Text) & "'"
                
            RSS.Open qry, DB, adOpenStatic
'            If rss.RecordCount = 0 Then
'                MsgBox "No Orders Found", vbInformation, head
'                Exit Sub
'            End If
                                              
                                              
            If Not RSS.EOF Then
                    
                    Txtfields(7).Text = RSS(0)
                    Text2.Text = RSS(1)
            Else
             qry = "select distinct a.slcode""Transporter Code"",a.slname""Transporter Name"" from  VW_RM_Transporter a"
                
                LookUp.Clear = True
                LookUp.query = qry
                LookUp.Caption = "Transporter Listing"
                LookUp.DefCol = "Transporter Name"
                LookUp.ALIGN = "1800,4300"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then  '8
                    
    
                    Txtfields(7).Text = LookUp.Fields(0)
                    Text2.Text = LookUp.Fields(1)
                    
              
'
'
'
'                Dim STCODE As String
'                Set rs1 = New Recordset
'                rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(Supptype,'R') Supptype FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Transporter Code")) & "' ", DB
'                If rs1.EOF Then
'                    MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                Else
'                    If rs1("GSTSTATECODE") = "0" Then
'                            MsgBox "PLEASE ENTER GST STATE CODE IN MASTER ", vbInformation, head
'                            Call BUTTON_Click(10)
'                            Exit Sub
'                    End If
'                    STCODE = rs1("GSTSTATECODE")
'                End If
'
'
'                Set rs1 = New Recordset
'                rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
'                If Not rs1.EOF Then
'                    IGSTFLG = "Y"
'                Else
'                    IGSTFLG = "N"
'                End If
            
                      With SpdLCReq
                        For nRow = 1 To .MaxRows
                            .Row = nRow
                            If val(GetText(SpdLCReq, E_Kgs, nRow)) > 0 Then
                                
                                   Set rsF = New Recordset
                                    rsF.Open "select  isnull(freight_amt,0) Frgamt,t.Docno from RM_TransportRate t where t.Supcd='" & Trim(GetText(SpdLCReq, E_Supcd, nRow)) & "'and t.plant='" & Trim(GetText(SpdLCReq, E_PlantCode, nRow)) & "' and " & val(GetText(SpdLCReq, E_Kgs, nRow)) & " between MinQty and VslCapacity   and Transporter='" & Trim(Txtfields(7).Text) & "' " & _
                                              " and Docdate=(select max(Docdate) from  RM_TransportRate t where t.Supcd='" & Trim(GetText(SpdLCReq, E_Supcd, nRow)) & "'and t.plant='" & Trim(GetText(SpdLCReq, E_PlantCode, nRow)) & "' and " & val(GetText(SpdLCReq, E_Kgs, nRow)) & " between MinQty and VslCapacity   and Transporter='" & Trim(Txtfields(7).Text) & "' )", DB, adOpenStatic
                                    If Not rsF.EOF Then
                                       .SetText E_FreightAmtApproved, .Row, rsF("Frgamt")
                                       .SetText E_FRT_Docno, .Row, rsF("Docno")
                                       
                                    Else
                                        .SetText E_FreightAmtApproved, .Row, Format("0", "0.00")
                                    End If
                            End If
                           Next
                       End With
                            
    
                   
                Else
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
            End If
        
    End If
    End If
    
    
    If Index = 24 And Opt = "add" Then
    
   
      Set RSS = New Recordset
      RSS.Open "select  a.carcode 'Code',carname 'Carrier Name',isnull(a.Slcode,'') 'Transporter Code',isnull(b.slname,'') 'Transporter Name' from po_car a left join fa_slmas b on a.slcode=b.slcode where a.carcode='" & Txtfields(24).Text & "'", DB, adOpenStatic
    
      If RSS.RecordCount > 0 Then
           Text5.Text = RSS("Carrier Name")
           Txtfields(24).Text = RSS("Code")
           
           Text2.Text = RSS("Transporter Name")
           Txtfields(7).Text = RSS("Transporter Code")
         
          Exit Sub
      
      Else
         LookUp.Clear = True
      
         LookUp.query = "select distinct  a.carcode 'Code',carname 'Carrier Name',isnull(a.Slcode,'') 'Transporter Code',isnull(b.slname,'') 'Transporter Name'  from po_car  a left join fa_slmas b on a.slcode=b.slcode inner join rm_arrival c on c.carcode=a.carcode "
      
         LookUp.Caption = "Carrier Listing"
         LookUp.DefCol = "Carrier Name"
         LookUp.ALIGN = "1200,3500,1500,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                Text5.Text = LookUp.Fields(1)
                Txtfields(24).Text = LookUp.Fields(0)
                
                Text2.Text = LookUp.Fields("Transporter Name")
                Txtfields(7).Text = LookUp.Fields("Transporter Code")
              
                LookUp.Clear = True
                 lSuppSel = True
                
                If Opt = "add" Then
                
                Set Lrs = New Recordset

                Lrs.Open "select *from Vw_RM_PendingFreightBill where pjdt<='" & Format(pdate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and carcode='" & Trim(Txtfields(24).Text) & "'  order by SLNAME,pjdt,pjno", DB, adOpenStatic, 1
          
                                
                    If Lrs.RecordCount > 0 Then
                    
                     spdPO.CursorStyle = CursorStyleArrow
                        LookUp.Clear = True
'                        Set spdPO.DataSource = Lrs
                        RW = 1
                        Do While Not Lrs.EOF
'                            spdPO.ScrollBarShowMax = True
'                            spdPO.ScrollBars = ScrollBarsBoth
                            spdPO.MaxRows = spdPO.MaxRows + 1
                            spdPO.SetText ePODtls.P_SupplierCode, RW, Lrs("slcode")
                            spdPO.SetText ePODtls.P_PJVNO, RW, Lrs("pjno")
                            spdPO.SetText ePODtls.P_BALES, RW, Lrs("bales")
                            spdPO.SetText ePODtls.P_PJVDT, RW, Lrs("pjdt")
                            spdPO.SetText ePODtls.P_SupplierName, RW, Lrs("slname")
                            spdPO.SetText ePODtls.P_PlantCode, RW, Lrs("PlCode")
                            spdPO.SetText ePODtls.P_PlantName, RW, Lrs("plname")
                            spdPO.SetText ePODtls.P_Rate, RW, Lrs("ratekg")
                            spdPO.SetText ePODtls.P_Kgs, RW, Lrs("comm_wt")
                           
                            spdPO.SetText ePODtls.P_Value, RW, Lrs("fbillvalue")
                            spdPO.SetText ePODtls.P_BillNo, RW, Lrs("Fbillno")
                            spdPO.SetText ePODtls.P_BillDt, RW, Lrs("fbilldt")
                            spdPO.SetText ePODtls.P_ContainerNo, RW, Lrs("LORRYNOS")
                            spdPO.SetText ePODtls.P_Freightamt, RW, Lrs("FREIGHT")
                            
'                            Set rsF = New Recordset
'                            rsF.Open "select  max(freight_amt) Frgamt from RM_TransportRate t where t.Supcd=a.supcd and t.plant='" & Lrs("slcode") & "' and '" & Lrs("comm_wt") & "' betweeen VslCapacity and MinQty and Transporter='" & Trim(TXTFIELDS(7).Text) & "'", DB, adOpenStatic
'                            If rsF.EOF Then
'                                spdPO.SetText ePODtls.P_FreightAppamt, RW, rsF("Frgamt")
'                                Else
'                                spdPO.SetText ePODtls.P_FreightAppamt, RW, "0.0"
'                            End If
                            
                            
                            
                            Lrs.MoveNext
                            RW = RW + 1
                
                        Loop

                        Call SpreadAlignPO(Lrs.RecordCount)
                        Label10.Caption = "List of Pending Freight Bill List(s)"
                        Frame8.Visible = True
                        Frame8.ZOrder
                        ChkSelectAll.value = 0
                        ChkSelectAll.SetFocus
                       ' txtfields(5).Enabled = False
                        Exit Sub
                    Else
                        MsgBox "No Record For this  ", vbInformation, head
                        Txtfields(7).Text = ""
                        Text2.Text = ""
                        Txtfields(7).SetFocus
                        lSuppSel = False
                        Exit Sub
                    End If
                End If
                
                
              '  txtfields(6).SetFocus
         Else
                Txtfields(10).Text = ""
                Text3.Text = ""
           
         End If
        stbar.Panels(2).Text = "Select Tax Name from the List"
      
      End If
      
      
    End If
    
    If Index = 11 Then
        Txtfields(6).SetFocus
    End If
    If Index = 9 Or Index = 14 Then
        Call TotalCalculation
    End If
    
    If Index = 132 And (Opt = "add" Or Opt = "mod") Then
        
        If (Opt = "add" Or Opt = "mod") And Option3.value = True Then
            Set rsa = New Recordset
            rsa.Open "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE where TDS_TYPE='" & Trim(Txtfields(132).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Clear = True
                qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
                LookUp.query = qrl
                LookUp.Caption = "TDS Type Listing"
                LookUp.DefCol = "TDShead"
                LookUp.ALIGN = "1500,3900"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    If LookUp.Fields(0) = "" Then
                        MsgBox "No Transaction Codes found", vbInformation, head
                        Exit Sub
                    End If
                    Txtfields(132).Text = LookUp.Fields(0)
                    Txtfields(131).Text = LookUp.Fields(1)
                End If
            Else
                 Txtfields(131).Text = rsa(1)
            End If
        End If
        
        
    
    End If
    
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmLCRequest"
    
End Sub





Private Sub SpreadAlign(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

    SpdLCReq.Row = 1
    SpdLCReq.FontBold = True
    SpdLCReq.TypeTextWordWrap = True
    SpdLCReq.ClearSelection
    SpdLCReq.AllowColMove = True
    SpdLCReq.MaxCols = E_TotalAmt
    
    SetSpreadCol2 SpdLCReq, eLCReqDtls.E_DIVCODE, "Divcode", CellTypeStaticText, 2, , True, True
  '  SetSpreadCol SpdLCReq, E_DivCode, "DivCode", CellTypeStaticText, 8, 0
        
    SetSpreadCol2 SpdLCReq, E_DOCNO, "DocNo", CellTypeNumber, 5, , True, True
    SetSpreadCol2 SpdLCReq, E_Docdt, "Date", CellTypeDate, 8, , True, True

    SpdLCReq.Col = E_DOCSNO
    SpdLCReq.TypeHAlign = TypeHAlignCenter
    SpdLCReq.TypeNumberDecPlaces = 0
    SetSpreadCol2 SpdLCReq, E_DOCSNO, "Sno", CellTypeNumber, 6, 0, False, False
    
    
    SetSpreadCol2 SpdLCReq, E_Supcd, "Supplier Code", CellTypeStaticText, 12, , True, True
    SetSpreadCol2 SpdLCReq, E_Supname, "Supplier", CellTypeStaticText, 14, , False, True
    
        SetSpreadCol2 SpdLCReq, E_InvoiceNo, "Invoice No.", CellTypeStaticText, 10, , False, True
    SetSpreadCol2 SpdLCReq, E_InvoiceDate, "Invoice Date", CellTypeStaticText, 18, , False, True
 
    
    SpdLCReq.Col = E_PJVNO
    SpdLCReq.TypeHAlign = TypeHAlignCenter
    SpdLCReq.TypeNumberDecPlaces = 0
    SetSpreadCol2 SpdLCReq, E_PJVNO, "PJV.No", CellTypeNumber, 8, 0, False, True
    SetSpreadCol2 SpdLCReq, E_PJVdate, "PJV. Date", CellTypeStaticText, 8, , False, True
        
    SetSpreadCol2 SpdLCReq, E_Bales, "Bales", CellTypeNumber, 6, 0, False, True
    SetSpreadCol2 SpdLCReq, E_Kgs, "Total Kgs", CellTypeNumber, 9, 3, False, True
    SetSpreadCol2 SpdLCReq, E_InvAmount, "Invoice Amount", CellTypeNumber, 9, 2, False, True
        
    SetSpreadCol2 SpdLCReq, E_PlantCode, "Plant Code", CellTypeStaticText, 12, , True, True
    SetSpreadCol2 SpdLCReq, E_PlantName, "Plant", CellTypeStaticText, 12, , False, True
    SetSpreadCol2 SpdLCReq, E_ContainerNo, "Container No.", CellTypeStaticText, 10, , False, True
   

    SetSpreadCol2 SpdLCReq, E_FreightAmtMill, "Freight Value as Per Mill", CellTypeNumber, 10, 2, False, True
    SetSpreadCol2 SpdLCReq, E_FreightAmtBill, "Freight Value as Per Bill", CellTypeNumber, 10, 2, False, False
    SetSpreadCol2 SpdLCReq, E_FreightAmtApproved, "Freight Value Approved", CellTypeNumber, 10, 2, False, False
    SetSpreadCol2 SpdLCReq, E_TaxCode, "Tax Code", CellTypeEdit, 8, , True, True
    SetSpreadCol2 SpdLCReq, E_CGSTAmt, "CGST Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol2 SpdLCReq, E_CGSTPER, "CGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol2 SpdLCReq, E_SGSTAmt, "SGST Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol2 SpdLCReq, E_SGSTPER, "SGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol2 SpdLCReq, E_IGSTAmt, "IGST Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol2 SpdLCReq, E_IGSTPER, "IGST %", CellTypeNumber, 8, 2, False, True
    
    SetSpreadCol2 SpdLCReq, E_TDSAMT, "TDS Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol2 SpdLCReq, E_TDSPER, "TDS %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol2 SpdLCReq, E_TotalAmt, "Total Amount", CellTypeNumber, 10, 2, False, True
     SetSpreadCol2 SpdLCReq, E_FRT_Docno, "Frieght Docnno.", CellTypeNumber, 8, , True, True
    
    
    SpdLCReq.MaxCols = E_TotalAmt
    SpdLCReq.MaxRows = NoofRows
   ' SpdLCReq.SetActiveCell E_FreightAmtMill, 1
    SpdLCReq.ColsFrozen = E_InvoiceNo
    

    
    Exit Sub
    
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SpreadAlignPO(Optional NoofRows As Integer = 0)
    
On Error GoTo spreadalign_Error
'With spdPO
'    .ClearSelection
'    .MaxRows = NoofRows
'    .ColHeadersAutoText = DispBlank
'    .ClearSelection
'    .MaxCols = P_PlantName
'    .RowHeadersShow = False
'    .Row = 1
'    .FontBold = True
'    .OperationMode = OperationModeRow
'    .TypeCheckCenter = True
'    .TypeCheckType = TypeCheckTypeThreeState
    spdPO.Row = 0
    spdPO.FontBold = True
    spdPO.TypeTextWordWrap = True
    spdPO.ClearSelection
    spdPO.AllowColMove = True
    spdPO.Row = 0
    spdPO.FontBold = True
    spdPO.TypeTextWordWrap = True
    spdPO.ClearSelection
    spdPO.AllowColMove = True
    spdPO.AllowColMove = True
    spdPO.Row = 0
    spdPO.FontBold = True
    SetSpreadCol2 spdPO, P_Select, "   ", CellTypeCheckBox, 3, , False, False
    SetSpreadCol2 spdPO, P_SupplierCode, "Supplier Code", CellTypeStaticText, 8, , True, True
    
    spdPO.Col = P_PJVNO
    spdPO.TypeHAlign = TypeHAlignCenter
    spdPO.TypeNumberDecPlaces = 0
    SetSpreadCol2 spdPO, P_PJVNO, "PJV. No.", CellTypeNumber, 8, 0, False, True
    SetSpreadCol2 spdPO, P_BALES, "BALES.", CellTypeNumber, 5, 0, False, True
    SetSpreadCol2 spdPO, P_PJVDT, "PJV. Date", CellTypeStaticText, 10, , False, True

    SetSpreadCol2 spdPO, P_ContainerNo, "LR No.", CellTypeStaticText, 15, , False, True
    SetSpreadCol2 spdPO, P_SupplierName, "Supplier Name", CellTypeStaticText, 18, , False, True
    SetSpreadCol2 spdPO, P_PlantCode, "Plant Code", CellTypeStaticText, 10, 2, True, True
    SetSpreadCol2 spdPO, P_PlantName, "Plant Name", CellTypeStaticText, 10, 2, False, True
    SetSpreadCol2 spdPO, P_Kgs, "Kgs", CellTypeNumber, 9, 3, True, True
    SetSpreadCol2 spdPO, P_Rate, "Rate", CellTypeNumber, 9, 2, True, True
    SetSpreadCol2 spdPO, P_Value, "Invoice Amount", CellTypeNumber, 10, 2, False, True
    SetSpreadCol2 spdPO, P_BillNo, "Bill No", CellTypeStaticText, 10, , False, True
    SetSpreadCol2 spdPO, P_BillDt, "Bill Date", CellTypeStaticText, 9, , False, True
    SetSpreadCol2 spdPO, P_Freightamt, "Freight Amount", CellTypeNumber, 10, 2, True, True
    SetSpreadCol2 spdPO, P_FreightAppamt, "Freight Approved Amt", CellTypeNumber, 10, 2, False, True
    
    
   
    For nRow = 1 To spdPO.MaxRows
        spdPO.Row = nRow
        spdPO.Col = P_Select
        spdPO.value = 0
    Next

    spdPO.MaxCols = P_PlantName
    spdPO.MaxRows = NoofRows
   ' spdPO.SetActiveCell P_Select, 1
'End With
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub

Private Sub SpreadAlignSupplier(Optional NoofRows As Integer = 0)
    
On Error GoTo spreadalign_Error

'    SPSupplier.Row = 0
'    SPSupplier.FontBold = True
'
'    SetSpreadCol2 SPSupplier, S_SupplierCode, "Supplier Code", CellTypeStaticText, 12, , False, False
'    SetSpreadCol2 SPSupplier, S_SupplierName, "Supplier Name", CellTypeStaticText, 20, , False, True
'
'    SPSupplier.MaxCols = S_SupplierName
'    SPSupplier.MaxRows = NoofRows
'    SPSupplier.SetActiveCell S_SupplierCode, 1

    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form frmLCRequest"
End Sub
Private Function TrnDateValidation() As Boolean

    Set rstTrnDate = New ADODB.Recordset
    strQry = "Select isnull(MAX(Docdt),'" & Format(pdate, "yyyy-MM-dd") & "') as Ldate from RM_FreightBillHD  Where DivCode='" & Divcode & "' and Docdt Between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
    rstTrnDate.Open strQry, DB, adOpenForwardOnly, adLockReadOnly
    If Not rstTrnDate.EOF Then
        If rstTrnDate("Ldate") <= pdate Then
            TrnDateValidation = True
        Else
            MsgBox "The Last Date of Transaction is " & Format(rstTrnDate("Ldate"), "dd/MM/yyyy") & ". You are not Allowed to make a Transaction on Previous Date.", vbInformation, head
        End If
    Else
        TrnDateValidation = True
    End If
    
End Function


Private Sub OrderbyIndent(IType As Integer)

    Set indentrs = New ADODB.Recordset
    Dim SstrSql  As String
    SstrSql = ""
    indentrs.CursorLocation = adUseClient
    
    indentrs.Open "exec SP_PRToPO_RMI '" & Divcode & "','" & Format(pdate, "dd-mmm-yyyy") & "'," & IType, DB, adOpenStatic, 1
        
    If Not indentrs.EOF Then
        RW = 1
        Call SpreadAlignPO
        spdPO.Visible = True
        spdPO.MaxRows = 1
        With spdPO
        .Visible = True
        .ZOrder
        Do While Not indentrs.EOF
            .ScrollBarShowMax = True
            .ScrollBars = ScrollBarsBoth
            .MaxRows = .MaxRows + 1
'            .SetText ePODtls.P_PJVNO, RW, indentrs("Indent No.")
'            .SetText ePODtls.P_PJVDT, RW, indentrs("Indent Date")
'            .SetText ePODtls.P_PlantCode, RW, indentrs("Varity Code")
'            .SetText ePODtls.P_PlantName, RW, indentrs("Description")
'            .SetText ePODtls.P_Value, RW, indentrs("Packtype")
'            .SetText ePODtls.P_OrdQty, RW, indentrs("BalQty")
'            .SetText ePODtls.P_BalQty, RW, indentrs("BalQtyKG")
'          '  .SetText ePODtls.P_ RW, indentrs("ename")
'            .SetText ePODtls.P_SupplierName, RW, indentrs("INV_TYPE")
            indentrs.MoveNext
            RW = RW + 1
             

        Loop
       End With
       ' DataGrid1.SetFocus
        BUTTON(4).Enabled = False
        BUTTON(12).Enabled = False
        BUTTON(13).Enabled = False
    Else
        MsgBox "No OutStanding Invoice(s)", vbInformation, head
 '       FpSpdIndHead_KeyPress (vbBack)
         Call BUTTON_Click(10)
        Exit Sub
    End If
End Sub

Private Sub Totcalc()
On Error Resume Next
Dim totrecamt As Double
'totrecamt = Val(txtfields(5).Text)
'txtfields(3).Text = Format(Round(val(txtfields(15).Text) * val(txtfields(14).Text) / 100, 0), "0.00")
'txtfields(8).Text = Format((val(txtfields(15).Text) + (val(txtfields(3).Text) + val(txtfields(5).Text) + val(txtfields(9).Text))), "0.00")

'    If SpdLCReq.MaxRows > 0 Then
'        For RW = 1 To SpdLCReq.MaxRows
'            SpdLCReq.Row = RW
'
'                If totrecamt > 0 Then
'                    If totrecamt >= Val(GetText(SpdLCReq, eLCReqDtls.E_CGSTPER, RW)) Then
'
'                        SpdLCReq.SetText eLCReqDtls.E_CGSTAmt, RW, Val(GetText(SpdLCReq, eLCReqDtls.E_CGSTPER, RW))
'                    Else
'                        SpdLCReq.SetText eLCReqDtls.E_CGSTAmt, RW, totrecamt
'
'                    End If
'
'                    totrecamt = totrecamt - Val(GetText(SpdLCReq, eLCReqDtls.E_CGSTPER, RW))
'                  Else
'                  SpdLCReq.SetText eLCReqDtls.E_CGSTAmt, RW, 0
'               End If
'        Next
'
'    End If
End Sub
Public Sub SetSpreadCol2(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True, Optional MinVal As Double = 0, Optional Maxval As Double = 9999999.99)
On Error GoTo SetSpreadCol1_Error
    With Spd
        .Col = Col
        .Row = -1: .celltype = celltype
        If iColWth <> 0 Then .ColWidth(Col) = iColWth
        If HideCol = True Then
          .ColHidden = True
        Else
          .ColHidden = False
        End If
        .Protect = True
        If IsLock = True Then .Lock = True Else .Lock = False
        If celltype = CellTypeNumber And DecWth > 0 Then .TypeNumberDecPlaces = DecWth
        If celltype = CellTypeNumber Then
            .TypeNumberMin = MinVal
            .TypeNumberMax = Maxval
        End If
        
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol1 of Module RMIMod"
End Sub

Private Sub TotalCalculation()

    totvalue = 0: TotPacks = 0: totkgs = 0: TotPerson = 0: TotHrs = 0: FreightAmtBill = 0: FreightAmtMill = 0: FreightAmtApproved = 0: TDSValue = 0
    CGSTAMT = 0: IGSTAMT = 0: SGSTAMT = 0

    nTotalAmt = 0
    tmp = Opt
    Opt = ""
    With SpdLCReq
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdLCReq, E_FreightAmtApproved, nRow)) > 0 Then
            If IGSTFLG = "Y" Then
                .SetText E_CGSTPER, .Row, Format(val(Txtfields(17).Text) / 2, "0.00")
                .SetText E_SGSTPER, .Row, Format(val(Txtfields(17).Text) / 2, "0.00")
                .SetText E_IGSTPER, .Row, Format("0", "0.00")
            Else
                .SetText E_IGSTPER, .Row, Format(val(Txtfields(17).Text), "0.00")
                .SetText E_CGSTPER, .Row, Format("0", "0.00")
                .SetText E_SGSTPER, .Row, Format("0", "0.00")
                
            End If
            
            
            

            
            .SetText E_CGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) * val(GetText(SpdLCReq, E_CGSTPER, nRow)) / 100), "0.00")
            .SetText E_SGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) * val(GetText(SpdLCReq, E_SGSTPER, nRow)) / 100), "0.00")
            .SetText E_IGSTAmt, .Row, Format((val(GetText(SpdLCReq, E_FreightAmtBill, nRow)) * val(GetText(SpdLCReq, E_IGSTPER, nRow)) / 100), "0.00")
            Tottaxamt = val(GetText(SpdLCReq, E_CGSTAmt, nRow)) + val(GetText(SpdLCReq, E_SGSTAmt, nRow)) + val(GetText(SpdLCReq, E_IGSTAmt, nRow)) + val(GetText(SpdLCReq, E_FreightAmtBill, nRow))
            .SetText E_TDSPER, .Row, Format(val(Txtfields(14).Text), "0.00")
            .SetText E_TDSAMT, .Row, Format(Tottaxamt * val(Txtfields(14).Text) / 100, "0.00")
            
            .SetText E_TotalAmt, .Row, Format(val(Tottaxamt), "0.00")

             TDSValue = TDSValue + (val(GetText(SpdLCReq, E_TDSAMT, nRow)))
             totvalue = totvalue + (val(GetText(SpdLCReq, E_TotalAmt, nRow)))
             FreightAmtBill = FreightAmtBill + (val(GetText(SpdLCReq, E_FreightAmtBill, nRow)))
             FreightAmtMill = FreightAmtMill + (val(GetText(SpdLCReq, E_FreightAmtMill, nRow)))
             FreightAmtApproved = FreightAmtApproved + (val(GetText(SpdLCReq, E_FreightAmtApproved, nRow)))
             
             CGSTAMT = CGSTAMT + (val(GetText(SpdLCReq, E_CGSTAmt, nRow)))
             SGSTAMT = SGSTAMT + (val(GetText(SpdLCReq, E_SGSTAmt, nRow)))
             IGSTAMT = IGSTAMT + (val(GetText(SpdLCReq, E_IGSTAmt, nRow)))
             
             totkgs = totkgs + (val(GetText(SpdLCReq, E_Kgs, nRow)))
             TotPacks = TotPacks + (val(GetText(SpdLCReq, E_Bales, nRow)))
             
         End If
    Next
    End With
    Txtfields(15).Text = Format(Round(FreightAmtBill, 2), "0.00")
    
    Txtfields(3).Text = Format(Round(TDSValue, 2), "0.00")
    Txtfields(20).Text = Format(Round(CGSTAMT, 2), "0.00")
    Txtfields(21).Text = Format(Round(SGSTAMT, 2), "0.00")
    Txtfields(22).Text = Format(Round(IGSTAMT, 2), "0.00")
    Txtfields(6).Text = Format(Round(IGSTAMT + CGSTAMT + SGSTAMT, 2), "0.00")
    
    Txtfields(16).Text = Format(Round(FreightAmtBill, 2), "0.00")
    
    Txtfields(5).Text = Format(Round(FreightAmtMill, 2), "0.00")
    Txtfields(11).Text = Format(Round(FreightAmtApproved, 2), "0.00")
    If Chk_TDSManual.value = True Then
        Txtfields(127).Text = Txtfields(127).Text
    Else
        Txtfields(127).Text = val(Txtfields(11).Text)
    End If
    
    Txtfields(13).Text = Format(Round(TotPacks, 2), "0.000")
    Txtfields(12).Text = Format(Round(totkgs, 2), "0.000")
    GtotalAmt = Format(val(Txtfields(15).Text) + val(Txtfields(6).Text), "00.00")
    
          If InStr(CStr(GtotalAmt), ".") > 0 Then
            tmprnd = Mid(CStr(GtotalAmt), InStr(CStr(GtotalAmt), "."), 4)
            If Right(tmprnd, 1) >= 5 Then
            GtotalAmt = Format(GtotalAmt, "#########0.00")
            End If
            Round1 = Mid(CStr(GtotalAmt), InStr(CStr(GtotalAmt), "."), 3)
            If Round1 <= 0.5 Then
                Txtfields(23).Text = Format("-" & Round1, "#0.00")
                Txtfields(8) = Format(GtotalAmt - Round1, "#0.00")
            Else
                Txtfields(23).Text = Format(1 - Round1, "#0.00")
                Txtfields(8).Text = Format(GtotalAmt + (1 - Round1), "#0.00")
            End If
            End If
    
    
    
  
       
 Opt = tmp
'Call calctotal
   
End Sub

Public Sub RunShellExecute(sTopic As String, _
                           sFile As Variant, _
                           sParams As Variant, _
                           sDirectory As Variant, _
                           nShowCmd As Long)

   Dim hWndDesk As Long
   Dim success As Long
' If Adobe Reader is installed:
'   1. On the Toolbox, right-click and select Components.
'   2. Select the "Adobe Acrobat 7.0 Browser Control Type Library 1.0" and click OK.
'   3. Add a PDF reader to the form and use its src property to open the PDF file.
  'the desktop will be the
  'default for error messages
   hWndDesk = GetDesktopWindow()
  
  'execute the passed operation
   success = ShellExecute(hWndDesk, sTopic, sFile, sParams, sDirectory, nShowCmd)

  'This is optional. Uncomment the three lines
  'below to have the "Open With.." dialog appear
  'when the ShellExecute API call fails
  'If success = SE_ERR_NOASSOC Then
     Call Shell("rundll32.exe shell32.dll,OpenAs_RunDLL " & sFile, vbNormalFocus)
 ' End If
   
End Sub


Private Sub tdscal()
 If val(Txtfields(129).Text) > 0 Then
    Txtfields(128).Text = (val(Txtfields(127).Text) * val(Txtfields(129).Text)) / 100
 End If
 
End Sub
