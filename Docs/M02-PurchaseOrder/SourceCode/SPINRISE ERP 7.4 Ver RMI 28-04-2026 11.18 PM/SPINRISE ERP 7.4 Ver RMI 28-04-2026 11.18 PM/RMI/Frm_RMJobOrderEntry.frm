VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_RMJobOrderEntry 
   Caption         =   "Job Order"
   ClientHeight    =   8490
   ClientLeft      =   165
   ClientTop       =   -1995
   ClientWidth     =   8355
   ClipControls    =   0   'False
   ForeColor       =   &H00800000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   8355
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      Height          =   8535
      Left            =   240
      TabIndex        =   50
      Top             =   1080
      Width           =   15600
      Begin VB.TextBox Text6 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
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
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   8880
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   133
         Text            =   " "
         ToolTipText     =   "Enter the Foot Note with Maximum of 100 Characters"
         Top             =   5880
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
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
         Index           =   44
         Left            =   3390
         TabIndex        =   132
         Top             =   1920
         Width           =   4770
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         DataField       =   "AgentComm"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   25
         Left            =   9915
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   3
         ToolTipText     =   "Enter the Agent Commission % "
         Top             =   840
         Width           =   1215
      End
      Begin VB.TextBox Text3 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3405
         Locked          =   -1  'True
         TabIndex        =   129
         TabStop         =   0   'False
         Top             =   840
         Width           =   4770
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "AgentCode"
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
         Left            =   1995
         Locked          =   -1  'True
         TabIndex        =   2
         ToolTipText     =   "Select the Agent From the List"
         Top             =   840
         Width           =   1365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "DelCode"
         Height          =   330
         Index           =   23
         Left            =   2000
         MaxLength       =   8
         TabIndex        =   11
         ToolTipText     =   "Select Delivey To"
         Top             =   1920
         Width           =   1365
      End
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   11150
         Locked          =   -1  'True
         TabIndex        =   123
         TabStop         =   0   'False
         Top             =   1935
         Width           =   4245
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Trans_Code"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   5
         Left            =   9915
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   12
         ToolTipText     =   "Select Transporter Name"
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Frame Frame3 
         Height          =   615
         Left            =   240
         TabIndex        =   113
         Top             =   8880
         Visible         =   0   'False
         Width           =   7815
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            DataField       =   "Vehicle_No"
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
            Left            =   1875
            MaxLength       =   15
            MultiLine       =   -1  'True
            TabIndex        =   127
            ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
            Top             =   840
            Width           =   1600
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "TOTCONTQTY"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
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
            Left            =   6240
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   116
            ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
            Top             =   180
            Width           =   1335
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "TotLooseQty"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   16393
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
            Left            =   3750
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   115
            ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
            Top             =   180
            Width           =   1215
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            DataField       =   "TotPacks"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
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
            Index           =   9
            Left            =   1350
            MaxLength       =   200
            MultiLine       =   -1  'True
            TabIndex        =   114
            ToolTipText     =   "Enter the Remarks with Maximum of 200 Characters"
            Top             =   180
            Width           =   1215
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Vehicle No"
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
            Left            =   0
            TabIndex        =   128
            Top             =   885
            Width           =   1020
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Total Qty"
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
            Left            =   5160
            TabIndex        =   119
            Top             =   285
            Width           =   885
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Loose Qty"
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
            Left            =   2670
            TabIndex        =   118
            Top             =   225
            Width           =   960
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Total Packs"
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
            Left            =   150
            TabIndex        =   117
            Top             =   225
            Width           =   1125
         End
      End
      Begin VB.Frame Frame5 
         Height          =   3120
         Left            =   11760
         TabIndex        =   81
         Top             =   5400
         Width           =   3750
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "ins_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   16
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   102
            Text            =   " "
            Top             =   1440
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Roff_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   285
            Index           =   89
            Left            =   2115
            TabIndex        =   92
            Top             =   2410
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Other_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   46
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   91
            Text            =   " "
            Top             =   1120
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFF80&
            DataField       =   "TotalAmt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   300
            Index           =   47
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   90
            Text            =   " "
            Top             =   2760
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Tax_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   45
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   89
            Text            =   " "
            Top             =   2085
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Mat_Amt"
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
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   40
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   88
            Text            =   " "
            Top             =   180
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Freight_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   2057
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   14
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   87
            Text            =   " "
            Top             =   800
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Disc_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   94
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   86
            Text            =   " "
            Top             =   480
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "Taxable_Amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   41
            Left            =   2115
            Locked          =   -1  'True
            TabIndex        =   85
            Text            =   " "
            Top             =   1755
            Width           =   1500
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "Disc_Per"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   285
            Index           =   33
            Left            =   1440
            TabIndex        =   84
            Top             =   480
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            DataField       =   "TCS_Per"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   285
            Index           =   38
            Left            =   -2160
            TabIndex        =   83
            Top             =   2280
            Width           =   660
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            Appearance      =   0  'Flat
            BackColor       =   &H00C0FFFF&
            DataField       =   "TCS_amt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "#0.00"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   285
            Index           =   39
            Left            =   -1485
            Locked          =   -1  'True
            TabIndex        =   82
            Text            =   " "
            Top             =   2280
            Width           =   1500
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   20
            Left            =   120
            TabIndex        =   103
            Top             =   1480
            Width           =   855
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Round Off"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   26
            Left            =   120
            TabIndex        =   101
            Top             =   2430
            Width           =   825
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Others"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Index           =   19
            Left            =   120
            TabIndex        =   100
            Top             =   1180
            Width           =   570
         End
         Begin VB.Label lblLabels 
            Caption         =   "Grand Total"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00800000&
            Height          =   195
            Index           =   18
            Left            =   120
            TabIndex        =   99
            Top             =   2790
            Width           =   1485
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "GST"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   17
            Left            =   120
            TabIndex        =   98
            Top             =   2100
            Width           =   330
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Assable Amount"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   16
            Left            =   120
            TabIndex        =   97
            Top             =   210
            Width           =   1380
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Freight"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   15
            Left            =   120
            TabIndex        =   96
            Top             =   850
            Width           =   600
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Discount"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   27
            Left            =   120
            TabIndex        =   95
            Top             =   525
            Width           =   960
            WordWrap        =   -1  'True
         End
         Begin VB.Label lblLabels 
            AutoSize        =   -1  'True
            Caption         =   "Taxable Amount"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   21
            Left            =   120
            TabIndex        =   94
            Top             =   1800
            Width           =   1395
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "TCS"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   25
            Left            =   -3480
            TabIndex        =   93
            Top             =   2325
            Width           =   315
         End
      End
      Begin VB.Frame Frame25 
         Caption         =   "GST"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C000C0&
         Height          =   555
         Left            =   0
         TabIndex        =   74
         Top             =   5400
         Width           =   5865
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            DataField       =   "IGSTAMT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   116
            Left            =   4560
            MaxLength       =   15
            TabIndex        =   77
            Top             =   150
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            DataField       =   "SGSTAMT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   117
            Left            =   2715
            MaxLength       =   15
            TabIndex        =   76
            Top             =   150
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00C0FFFF&
            DataField       =   "CGSTAMT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.00;(0.00)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   118
            Left            =   840
            MaxLength       =   15
            TabIndex        =   75
            Top             =   150
            Width           =   1095
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "IGST"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   61
            Left            =   3960
            TabIndex        =   80
            Top             =   240
            Width           =   405
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "SGST"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   59
            Left            =   2160
            TabIndex        =   79
            Top             =   240
            Width           =   435
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "CGST"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Index           =   58
            Left            =   150
            TabIndex        =   78
            Top             =   210
            Width           =   435
         End
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "Order_Type"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   10
         Left            =   2000
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   4
         ToolTipText     =   "Enter the Order Type"
         Top             =   1200
         Width           =   1365
      End
      Begin VB.TextBox Text5 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3405
         Locked          =   -1  'True
         TabIndex        =   72
         TabStop         =   0   'False
         Top             =   1200
         Width           =   4770
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
         TabIndex        =   57
         TabStop         =   0   'False
         ToolTipText     =   "GRN Number"
         Top             =   90
         Width           =   1575
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "SLCODE"
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
         Left            =   2000
         Locked          =   -1  'True
         TabIndex        =   1
         ToolTipText     =   "Select the Supplier From the List"
         Top             =   495
         Width           =   1365
      End
      Begin VB.TextBox Text2 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   3405
         Locked          =   -1  'True
         TabIndex        =   56
         TabStop         =   0   'False
         Top             =   495
         Width           =   4770
      End
      Begin VB.TextBox txtQty 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00C0FFFF&
         DataField       =   "TOTCONTQTY"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   8880
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   55
         Text            =   " "
         ToolTipText     =   "Enter the Foot Note with Maximum of 100 Characters"
         Top             =   5400
         Width           =   1575
      End
      Begin VB.TextBox Text4 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   300
         Left            =   11150
         Locked          =   -1  'True
         TabIndex        =   54
         TabStop         =   0   'False
         Top             =   1200
         Width           =   4290
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "PaymentTerm"
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   19
         Left            =   9915
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   5
         ToolTipText     =   "Select the Paytem"
         Top             =   1200
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
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
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   1
         Left            =   13920
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   53
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   480
         Width           =   1440
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         DataField       =   "RefNo"
         BeginProperty DataFormat 
            Type            =   0
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   3
         Left            =   1995
         Locked          =   -1  'True
         MaxLength       =   18
         TabIndex        =   6
         ToolTipText     =   "Enter the Re. Number with Maximum of 15 Characters"
         Top             =   1560
         Width           =   1365
      End
      Begin VB.TextBox txtfields 
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
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
         ForeColor       =   &H00000000&
         Height          =   300
         Index           =   4
         Left            =   9915
         Locked          =   -1  'True
         MaxLength       =   15
         TabIndex        =   52
         ToolTipText     =   "Enter the Delivery Challan  Number with Maximum of 15 digits"
         Top             =   480
         Width           =   2085
      End
      Begin TabDlg.SSTab SSTab1 
         Height          =   300
         Left            =   15480
         TabIndex        =   51
         Top             =   7680
         Visible         =   0   'False
         Width           =   615
         _ExtentX        =   1085
         _ExtentY        =   529
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   "Tab 0"
         TabPicture(0)   =   "Frm_RMJobOrderEntry.frx":0000
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).ControlCount=   0
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "DocDate"
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
         Left            =   13920
         TabIndex        =   58
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
         DataField       =   "DocDate"
         Height          =   315
         Left            =   13920
         TabIndex        =   59
         TabStop         =   0   'False
         Top             =   135
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   164954113
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "RefDate"
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
         Left            =   6750
         TabIndex        =   7
         ToolTipText     =   "Enter Ref.Date"
         Top             =   1560
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
      Begin MSComCtl2.DTPicker DTPicker3 
         DataField       =   "RefDate"
         Height          =   315
         Left            =   6720
         TabIndex        =   8
         TabStop         =   0   'False
         Top             =   1530
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   164954113
         CurrentDate     =   36218
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "DeliveryDate"
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
         Left            =   9915
         TabIndex        =   9
         ToolTipText     =   "Enter Delivery Date"
         Top             =   1560
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
         DataField       =   "DeliveryDate"
         Height          =   315
         Left            =   9915
         TabIndex        =   10
         TabStop         =   0   'False
         Top             =   1560
         Width           =   1440
         _ExtentX        =   2540
         _ExtentY        =   556
         _Version        =   393216
         Format          =   164954113
         CurrentDate     =   36218
      End
      Begin FPSpreadADO.fpSpread SpdOrdDetail 
         Height          =   2925
         Left            =   0
         TabIndex        =   13
         Top             =   2400
         Width           =   15495
         _Version        =   524288
         _ExtentX        =   27331
         _ExtentY        =   5159
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
         SpreadDesigner  =   "Frm_RMJobOrderEntry.frx":001C
         Appearance      =   2
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Total Mix Ratio %"
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
         Left            =   6600
         TabIndex        =   134
         Top             =   5955
         Width           =   2130
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Commission %"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   25
         Left            =   8280
         TabIndex        =   131
         Top             =   885
         Width           =   1035
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Agent Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   23
         Left            =   120
         TabIndex        =   130
         Top             =   840
         Width           =   885
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Total Quantity in Kgs"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Index           =   4
         Left            =   6600
         TabIndex        =   126
         Top             =   5470
         Width           =   2130
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label15 
         Caption         =   "Despatch To. *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   120
         TabIndex        =   125
         Top             =   1980
         Width           =   1860
         WordWrap        =   -1  'True
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Carrier Name *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   5
         Left            =   8280
         TabIndex        =   124
         Top             =   1950
         Width           =   1080
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Order Type *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   73
         Top             =   1245
         Width           =   960
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc. No. *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   2
         Left            =   165
         TabIndex        =   71
         Top             =   150
         Width           =   765
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Doc. Date *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   3
         Left            =   12120
         TabIndex        =   70
         Top             =   180
         Width           =   855
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Vendor Name *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   69
         Top             =   495
         Width           =   1095
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "User Name"
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
         Left            =   7080
         TabIndex        =   68
         Top             =   120
         Visible         =   0   'False
         Width           =   1065
      End
      Begin VB.Label lblUserID 
         Appearance      =   0  'Flat
         Caption         =   "User ID"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   270
         Left            =   12120
         TabIndex        =   67
         Top             =   840
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Total Quantity"
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
         Left            =   7800
         TabIndex        =   66
         Top             =   9000
         Width           =   1380
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Payment Term *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   14
         Left            =   8280
         TabIndex        =   65
         Top             =   1245
         Width           =   1170
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Ref. Date *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   0
         Left            =   5295
         TabIndex        =   64
         Top             =   1590
         Width           =   840
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Ref. No. *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   63
         Top             =   1575
         Width           =   750
      End
      Begin VB.Label Label13 
         AutoSize        =   -1  'True
         Caption         =   "GST State Code *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   12120
         TabIndex        =   62
         Top             =   465
         Width           =   1275
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Delivery Date *"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   195
         Index           =   6
         Left            =   8280
         TabIndex        =   61
         Top             =   1605
         Width           =   1110
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "GSTIN"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   195
         Index           =   8
         Left            =   8280
         TabIndex        =   60
         Top             =   495
         Width           =   450
      End
   End
   Begin VB.Frame Frame8 
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      ClipControls    =   0   'False
      ForeColor       =   &H80000008&
      Height          =   5895
      Left            =   10800
      TabIndex        =   45
      Top             =   1440
      Width           =   9495
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "TotGrossWt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
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
         Left            =   5400
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   111
         Top             =   5400
         Width           =   735
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "TotNetWT"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
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
         Left            =   8520
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   109
         Top             =   5400
         Width           =   735
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "TotNetWT"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
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
         Left            =   7050
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   106
         Top             =   5400
         Width           =   735
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Appearance      =   0  'Flat
         BackColor       =   &H00E0E0E0&
         DataField       =   "TotGrossWt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
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
         Left            =   3600
         MaxLength       =   200
         MultiLine       =   -1  'True
         TabIndex        =   105
         Top             =   5400
         Width           =   855
      End
      Begin VB.CommandButton cmdItemSelect 
         BackColor       =   &H00FFC0FF&
         Caption         =   "&Ok"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   240
         Style           =   1  'Graphical
         TabIndex        =   48
         Top             =   5400
         Width           =   1035
      End
      Begin VB.CommandButton cmdItemSelectClose 
         BackColor       =   &H00FFC0FF&
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Left            =   1440
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   5400
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread spdPO1 
         Height          =   4710
         Left            =   45
         TabIndex        =   49
         Top             =   6000
         Width           =   1095
         _Version        =   524288
         _ExtentX        =   1931
         _ExtentY        =   8308
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
         SpreadDesigner  =   "Frm_RMJobOrderEntry.frx":0477
         Appearance      =   1
      End
      Begin FPSpreadADO.fpSpread spdPO 
         Height          =   4725
         Left            =   120
         TabIndex        =   104
         Top             =   600
         Width           =   9270
         _Version        =   524288
         _ExtentX        =   16351
         _ExtentY        =   8334
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
         SpreadDesigner  =   "Frm_RMJobOrderEntry.frx":08A8
         Appearance      =   2
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "Tare Wt."
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
         Left            =   4560
         TabIndex        =   112
         Top             =   5445
         Width           =   825
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Packs"
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
         Left            =   7920
         TabIndex        =   110
         Top             =   5445
         Width           =   570
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Net Wt."
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
         Left            =   6210
         TabIndex        =   108
         Top             =   5445
         Width           =   705
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Gross Wt."
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
         Left            =   2640
         TabIndex        =   107
         Top             =   5445
         Width           =   930
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   0
         X2              =   12255
         Y1              =   520
         Y2              =   520
      End
      Begin VB.Label Label161 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Pack Details"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000004&
         Height          =   375
         Left            =   0
         TabIndex        =   46
         Top             =   120
         Width           =   9585
      End
   End
   Begin VB.Frame FraMain 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   6810
      Left            =   17400
      TabIndex        =   36
      Top             =   5040
      Visible         =   0   'False
      Width           =   10980
      Begin VB.CommandButton Command11 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   120
         TabIndex        =   41
         Top             =   600
         Width           =   1440
      End
      Begin VB.CommandButton CmdExit 
         Caption         =   "Exit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   1680
         TabIndex        =   40
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton CmdSave 
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   12000
         TabIndex        =   39
         Top             =   720
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   10605
         TabIndex        =   38
         Top             =   7380
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CommandButton Command12 
         Caption         =   "View Log File"
         Height          =   375
         Left            =   375
         TabIndex        =   37
         Top             =   7725
         Visible         =   0   'False
         Width           =   1155
      End
      Begin FPSpreadADO.fpSpread spdView 
         Height          =   2295
         Left            =   120
         TabIndex        =   42
         Top             =   960
         Width           =   10785
         _Version        =   524288
         _ExtentX        =   19024
         _ExtentY        =   4048
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
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
         SpreadDesigner  =   "Frm_RMJobOrderEntry.frx":0D03
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   11160
         Top             =   600
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin FPSpreadADO.fpSpread SPDBALEDETAILS 
         Height          =   2205
         Left            =   0
         TabIndex        =   121
         Top             =   4800
         Width           =   13590
         _Version        =   524288
         _ExtentX        =   23971
         _ExtentY        =   3889
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
         SpreadDesigner  =   "Frm_RMJobOrderEntry.frx":1157
         Appearance      =   2
      End
      Begin VB.Label lblLabels 
         AutoSize        =   -1  'True
         Caption         =   "Agent Name"
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
         Left            =   0
         TabIndex        =   122
         Top             =   4320
         Width           =   1185
      End
      Begin VB.Label Label126 
         Caption         =   "Note : Upload File Should be in  .XLS (office 97 or 2003) File format"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2280
         TabIndex        =   44
         Top             =   6480
         Width           =   6735
      End
      Begin VB.Label LblHead 
         Alignment       =   2  'Center
         BackColor       =   &H00800000&
         Caption         =   "Import Lot Bale Data"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   435
         Left            =   0
         TabIndex        =   43
         Top             =   105
         Width           =   10950
      End
   End
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
      TabIndex        =   31
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   14
         Left            =   7275
         Picture         =   "Frm_RMJobOrderEntry.frx":15B2
         Style           =   1  'Graphical
         TabIndex        =   120
         ToolTipText     =   "Packing List"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5295
         Picture         =   "Frm_RMJobOrderEntry.frx":19F4
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "G.R.N"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   11295
         Picture         =   "Frm_RMJobOrderEntry.frx":1E36
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "List (Ctrl L)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":21CD
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Frm_RMJobOrderEntry.frx":24D7
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Find (Ctrl+F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   8970
         Picture         =   "Frm_RMJobOrderEntry.frx":286C
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Print (Ctrl+P)"
         Top             =   105
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":2CAE
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "Frm_RMJobOrderEntry.frx":30F8
         Style           =   1  'Graphical
         TabIndex        =   22
         ToolTipText     =   "Last Record (Ctrl+Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":345A
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "Frm_RMJobOrderEntry.frx":3764
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Cancel (Ctrl+Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":3AE0
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "Frm_RMJobOrderEntry.frx":3DEA
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Save (Ctrl+S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":418C
         Height          =   510
         Index           =   11
         Left            =   5840
         Picture         =   "Frm_RMJobOrderEntry.frx":45D6
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Exit (Ctrl+Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":496B
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "Frm_RMJobOrderEntry.frx":4DB5
         Style           =   1  'Graphical
         TabIndex        =   21
         ToolTipText     =   "Previous Record (Ctrl+Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":5105
         Height          =   510
         Index           =   5
         Left            =   2145
         Picture         =   "Frm_RMJobOrderEntry.frx":554F
         Style           =   1  'Graphical
         TabIndex        =   19
         ToolTipText     =   "First Record (Ctrl+Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":58B4
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_RMJobOrderEntry.frx":5BBE
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Add (Ctrl+A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":5F51
         Height          =   510
         Index           =   6
         Left            =   2685
         Picture         =   "Frm_RMJobOrderEntry.frx":639B
         Style           =   1  'Graphical
         TabIndex        =   20
         ToolTipText     =   "Next Record (Ctrl+Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":66E8
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Frm_RMJobOrderEntry.frx":69F2
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Modify (Ctrl+M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_RMJobOrderEntry.frx":6D6C
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
         Picture         =   "Frm_RMJobOrderEntry.frx":7076
         Style           =   1  'Graphical
         TabIndex        =   16
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
         TabIndex        =   33
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
         TabIndex        =   32
         Top             =   270
         Width           =   885
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   35
      Top             =   8190
      Width           =   8355
      _ExtentX        =   14737
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   4410
            MinWidth        =   4410
            Text            =   "KalSoft Textile"
            TextSave        =   "KalSoft Textile"
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
            TextSave        =   "10/06/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "11:59 PM"
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
   Begin VB.TextBox txtfields 
      DataField       =   "DIVCODE"
      Height          =   285
      Index           =   0
      Left            =   7200
      TabIndex        =   27
      Top             =   2040
      Visible         =   0   'False
      Width           =   150
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   3
      Height          =   8700
      Left            =   120
      Top             =   960
      Width           =   15765
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
      TabIndex        =   26
      Top             =   690
      Visible         =   0   'False
      Width           =   60
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Job Order"
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
      Left            =   255
      TabIndex        =   30
      Top             =   540
      Width           =   1305
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
      TabIndex        =   29
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
      TabIndex        =   28
      Top             =   1350
      Visible         =   0   'False
      Width           =   1815
   End
End
Attribute VB_Name = "Frm_RMJobOrderEntry"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS, adoSecondaryRS1 As Recordset
Dim frmFa As New frmFaPostingVerification
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
Dim r As Integer
Dim MDOC As Long
Dim rs1 As New Recordset
Dim rs2 As New Recordset
Dim TC As Integer
Dim rs3, rs4, rs5, rs6 As New Recordset
Dim ITARY() As String
Dim modqty As Double
Dim roff1 As Double
Dim sp2 As Double
Dim pordrs As Recordset
Dim PRDt As String
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
Dim nQuantity As Double
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
Dim IGSTFLG As String
Dim rstItemTol As New ADODB.Recordset
Dim rstTrnDate As New ADODB.Recordset

''For spread Index
Private Enum eORDDtls
    E_DIVCODE = 1
    E_DOCNO = 2
    E_Docdate = 3
    E_DOCSNO = 4
    E_POGrp = 5
    E_ProductType = 6
    E_Product_code = 7
    E_ItemDesc = 8
    E_Itemname = 9
  
    E_packTypedec = 10
    E_UOM = 11
    E_ORDBalQty = 12
    E_Quantity = 13
    E_TotPacks = 14
    E_Rate = 15
    E_InvQty = 16
    E_Discrate = 17
    E_MixRate = 18
    E_VALUE = 19
    E_DiscValue = 20
    E_AssValue = 21
    E_FreightAmt = 22
    E_InsAmt = 23
    E_OtherAmt = 24
    E_Tax_Code = 25
    E_CCGSTPer = 26
    E_CCGSTAmt = 27
    E_SCGSTPer = 28
    E_SCGSTAmt = 29
    E_ICGSTPer = 30
    E_ICGSTAmt = 31
    E_TCSper = 32
    E_TCSAMT = 33
    E_TotalAmt = 34
    E_TDSASSAMT = 35
    E_TDSPER = 36
    E_TDSAMT = 37
    E_HSN = 38
    E_PSNO = 39
    E_Remarks = 40
End Enum

Private Enum ePODtls
    P_Select = 1
    P_DocSno = 2
    P_SIZEININCH = 3
    P_SIZEINCM = 4
    P_Product_code = 5
    P_ITEMNAME = 6
    P_UOM = 7
    P_PACKNO = 8
    P_PackPerQty = 9
    P_Looseqty = 10
    P_Quantity = 11
    P_Rate = 12
    P_Value = 13
    P_PDocSno = 14
End Enum
Private Enum BBaleDtls
    B_DivCode = 1
    B_docno = 2
    B_Docdate = 3
    B_DOCSNO = 4
    B_SIZEININCH = 5
    B_SIZEINCM = 6
    B_Product_code = 7
    B_ItemName = 8
    B_Uom = 9
    B_PACKNo = 10
    B_PackPerQty = 11
    B_Looseqty = 12
    B_Quantity = 13
    B_Rate = 14
    B_Value = 15
    B_PDocSno = 16
End Enum
Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTDocno
    SPDDTDOCDT
    SPDDTVARSNO
    SPDDTProduct_code
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
End Enum

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
  End If
  TotMix = 0
  If Opt = " " Or Opt = "fnd" Or Opt = "" Then
     RW = 1
     With SpdOrdDetail
        If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
        .MaxRows = 0
        Do While Not ADOSECONDARYRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eORDDtls.E_DIVCODE, RW, ADOSECONDARYRS("Divcode")
            .SetText eORDDtls.E_DOCNO, RW, ADOSECONDARYRS("docno")
            .SetText eORDDtls.E_Docdate, RW, ADOSECONDARYRS("Docdate")
            .SetText eORDDtls.E_DOCSNO, RW, ADOSECONDARYRS("DocSNo")
'
'            .SetText eORDDtls.E_SizeinInch, RW, adoSecondaryRS("SizeInInch")
'            .SetText eORDDtls.E_SizeinCM, RW, adoSecondaryRS("SizeinCM")
            .SetText eORDDtls.E_ProductType, RW, ADOSECONDARYRS("Product_Type")
            .SetText eORDDtls.E_Product_code, RW, ADOSECONDARYRS("Product_code")
            .SetText eORDDtls.E_Itemname, RW, ADOSECONDARYRS("Product_Name")
            .SetText eORDDtls.E_ItemDesc, RW, CStr(ADOSECONDARYRS("Product_Name"))
            .SetText eORDDtls.E_UOM, RW, ADOSECONDARYRS("UOM")
            .SetText eORDDtls.E_packTypedec, RW, CStr(Trim(ADOSECONDARYRS("Pack_TypeDesc") & ""))
            
            
            
            .SetText eORDDtls.E_Quantity, RW, ADOSECONDARYRS("Quantity")
'            .SetText eORDDtls.E_PackPer, RW, adoSecondaryRS("PackPerQty")
'            .SetText eORDDtls.E_ExPcs, RW, adoSecondaryRS("Looseqty")
            .SetText eORDDtls.E_TotPacks, RW, ADOSECONDARYRS("Packs")
            .SetText eORDDtls.E_Rate, RW, ADOSECONDARYRS("Rate")
            .SetText eORDDtls.E_InvQty, RW, ADOSECONDARYRS("Quantity")
            .SetText eORDDtls.E_VALUE, RW, ADOSECONDARYRS("value")
            .SetText eORDDtls.E_Remarks, RW, ADOSECONDARYRS("remarks")
            
            .SetText eORDDtls.E_MixRate, RW, ADOSECONDARYRS("MixRate")
            .SetText eORDDtls.E_Discrate, RW, ADOSECONDARYRS("Disc_per")
            SetSpreadCol SpdOrdDetail, E_Tax_Code, "GST Code", CellTypeStaticText, 8, , False, False
            .SetText eORDDtls.E_Tax_Code, RW, ADOSECONDARYRS("TAX_CODE")
            
            .SetText eORDDtls.E_DiscValue, RW, ADOSECONDARYRS("Disc_Amt")
            .SetText eORDDtls.E_AssValue, RW, ADOSECONDARYRS("Taxable_Amt")
            .SetText eORDDtls.E_CCGSTPer, RW, ADOSECONDARYRS("CGSTPER")
            .SetText eORDDtls.E_CCGSTAmt, RW, ADOSECONDARYRS("CGSTAMT")
            .SetText eORDDtls.E_SCGSTPer, RW, ADOSECONDARYRS("SGSTPER")
            .SetText eORDDtls.E_SCGSTAmt, RW, ADOSECONDARYRS("SGSTAMT")
            .SetText eORDDtls.E_ICGSTPer, RW, ADOSECONDARYRS("IGSTPER")
            .SetText eORDDtls.E_ICGSTAmt, RW, ADOSECONDARYRS("IGSTAMT")
            .SetText eORDDtls.E_TotalAmt, RW, ADOSECONDARYRS("TotalAmt")
            .SetText eORDDtls.E_TCSAMT, RW, ADOSECONDARYRS("tcs_amt")
            .SetText eORDDtls.E_TCSper, RW, ADOSECONDARYRS("tcs_per")
            
            .SetText eORDDtls.E_InsAmt, RW, ADOSECONDARYRS("ins_Amt")
            .SetText eORDDtls.E_OtherAmt, RW, ADOSECONDARYRS("Other_Amt")
            .SetText eORDDtls.E_FreightAmt, RW, ADOSECONDARYRS("Freight_Amt")
'            .SetText eORDDtls.E_ORDBalQty, RW, adoSecondaryRS("OrdBalQty")
     
            
'
'            .SetText E_TDSPER, .row, adoSecondaryRS("tds_per")
'            .SetText E_TDSAMT, .row, adoSecondaryRS("TDS_Amt")
'            .SetText E_TDSASSAMT, .row, adoSecondaryRS("TDS_AssAmt")
'            .SetText E_PSNO, RW, adoSecondaryRS("PSNO")
            
            .SetText eORDDtls.E_HSN, RW, ADOSECONDARYRS("hsn")
                   
             TotMix = TotMix + val(ADOSECONDARYRS("MixRate") & "")
            RW = RW + 1
            ADOSECONDARYRS.MoveNext
         Loop
     End With
     Text6 = Format(TotMix, "#0.00")
     
     Tmplrow = 0
     If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
     
     nQuantity = 0
     nTmpTotal = 0
     tmp = Opt
     Opt = ""
     With SpdOrdDetail
     For nRow = 1 To .MaxRows
         .Row = nRow
         If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
            ' .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(txtfields(11).Text), "0.00")
             nQuantity = nQuantity + GetText(SpdOrdDetail, E_Quantity, nRow)
         End If
     Next
     End With
     
 txtQty.Text = Format(nQuantity, "0.000")
 Call SpreadAlignBale(0)
'    Set adoSecondaryRS1 = New Recordset
'    adoSecondaryRS1.Open "SELECT DivCode,a.DocNo,a.DocDate,a.DocSno,a.PDocSno,a.Product_code,a.uom,a.Quantity,a.Pack_NO,a.Rate,a.Value,a.IssFlag,a.ISSQTY,b.Description ProdDesc FROM RM_ConeReceiptPack a inner join rm_product b on a.Product_code=b.product_code Where a.DivCode='" & Divcode & "'  And docno = " & Val(adoPrimaryRS("docno")) & " and Docdate = '" & Format(adoPrimaryRS("docdate"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    RW = 1
'    Set adoSecondaryRS1 = New Recordset
'    adoSecondaryRS1.Open "SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.PDocSno,a.Product_code,a.uom,a.Quantity,a.Pack_NO,a.Rate,a.Value,a.IssFlag,a.ISSQTY,b.Description Product_Name FROM RM_ConeReceiptPack a inner join IG_PRODUCT b on a.Product_code=b.product_code and a.Divcode=b.Divcode Where a.DivCode='" & divcode & "'  And docno = " & Val(adoPrimaryRS("docno")) & " and Docdate = '" & Format(adoPrimaryRS("docdate"), "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'    RW = 1
'     With SPDBALEDETAILS
'        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
'        .MaxRows = 0
'        Do While Not adoSecondaryRS1.EOF
'            .MaxRows = .MaxRows + 1
'            .SetText BBaleDtls.B_DivCode, RW, adoSecondaryRS1("Divcode")
'            .SetText BBaleDtls.B_Uom, RW, adoSecondaryRS1("uom")
'            .SetText BBaleDtls.B_PDocSno, RW, adoSecondaryRS1("PDocSno")
'            .SetText BBaleDtls.B_DOCSNO, RW, adoSecondaryRS1("DocSNo")
'            .SetText BBaleDtls.B_SIZEININCH, RW, adoSecondaryRS1("SizeInInch")
'            .SetText BBaleDtls.B_SIZEINCM, RW, adoSecondaryRS1("SizeinCM")
'            .SetText BBaleDtls.B_PACKNo, RW, adoSecondaryRS1("Pack_NO")
'            .SetText BBaleDtls.B_Product_code, RW, adoSecondaryRS1("Product_code")
'            .SetText BBaleDtls.B_ItemName, RW, adoSecondaryRS1("Product_Name")
'            .SetText BBaleDtls.B_PackPerQty, RW, adoSecondaryRS1("PackPerQty")
'            .SetText BBaleDtls.B_Looseqty, RW, adoSecondaryRS1("Looseqty")
'            .SetText BBaleDtls.B_Quantity, RW, adoSecondaryRS1("Quantity")
'            .SetText BBaleDtls.B_Rate, RW, adoSecondaryRS1("rate")
'            .SetText BBaleDtls.B_Value, RW, adoSecondaryRS1("value")
'
'
'
'            RW = RW + 1
'            adoSecondaryRS1.MoveNext
'         Loop
'     End With
     
     
     Tmplrow = 0
     If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
     
     
  End If
  SSTab1.Tab = 0
  
  If Opt = "" Or Opt = " " Or Opt = "mod" Or Opt = "fnd" Or Opt = "del" Then
     If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
     
     
        If IsNull(adoPrimaryRS("DeliveryDate")) = False Or adoPrimaryRS("DeliveryDate") = "" Then
            MaskEdBox1(3).Text = Format(adoPrimaryRS("DeliveryDate"), "dd/mm/yyyy")
        Else
            MaskEdBox1(3).Text = "__/__/____"
        End If

        
        
       
    
        If IsNull(adoPrimaryRS("Docdate")) = False Then
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdate"), "dd/MM/yyyy")
            MaskEdBox1(0).Mask = Format(adoPrimaryRS("Docdate"), "dd/MM/yyyy")
            MaskEdBox1(0).ZOrder
        Else
            If MOVELINKFlg = "Y" Then MaskEdBox1(0).Mask = "__/__/____"
            MaskEdBox1(0).Text = "__/__/____"
        End If

            Set MaskEdBox1(2).DataSource = adoPrimaryRS
            

            
        
    End If
    
End If
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : adoPrimaryRS_MoveComplete " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Dim Ass As Double, j As Integer
Dim RsFa As Recordset
Dim FaInstall As String, Fatc As String, FaGl As String, FaNarr As String
On Error GoTo Errh
Select Case Index
Case 0

       If Not TrnDateValidation Then Exit Sub
       If Record_Exists("fa_slmas where slcode like '" & PartyType & "%'", "Please define Supplier in Supplier Master") = False Then Exit Sub
      ' If Record_Exists("IM_LCType", "Please define LC Type in Setup") = False Then Exit Sub
     '  If Record_Exists("RM_cont where divcode = '" & Divcode & "'", "No Purchase Order Found") = False Then Exit Sub
'        Frame8.Visible = True
'        Frame8.ZOrder
       Opt = "add"
       sp = " "
       desc.Caption = "Addition"
       Screen.MousePointer = 11
       stbar.Panels(2).Text = " "
       MaskEdBox1(0).Mask = pdate
       DTPicker1.value = pdate
       DTPicker1.MinDate = yfdate
       On Error Resume Next
              
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "SELECT DivCode,docNo,docDate,SLCode,AgentCode,AgentComm,RefNo,RefDate,PaymentTerm,Order_Type,DeliveryDate,DelCode,Trans_Code,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotQty,TotPacks,Mat_Amt,Disc_Per,Disc_Amt,Other_Amt,Freight_Amt,ins_Amt,Taxable_Amt,Tax_Amt,CGSTAmt,SGSTAmt,IGSTAmt,TCS_Per,TCS_amt,Roff_amt,TotalAmt FROM RM_JobOrderHD WHERE 1=2 Order by DivCode,docno", DB, adOpenStatic, adLockBatchOptimistic
       Set ADOSECONDARYRS = New Recordset
       ADOSECONDARYRS.Open "SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.Product_code,a.uom,a.Packs,a.Quantity,a.Rate,a.Value,a.remarks,a.Disc_Per,a.Disc_Amt,a.Tax_Code,a.Taxable_Amt,a.Cgstper,a.CGSTAmt,a.Sgstper,a.SGSTAmt,a.Igstper,a.IGSTAmt,a.TCS_Per,a.TCS_amt,a.TotalAmt,ins_Amt,Other_Amt,Freight_Amt,b.Product_Name Product_Name,a.hsn,MixRate,a.Product_Type FROM RM_JobOrderDT a inner join (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all (select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where  divcode='" & Divcode & "' ) b on a.Product_code=b.Product_ID And 1=2 Order by a.DocSNo", DB, adOpenStatic, adLockBatchOptimistic
       lck = 1
       
       SpdOrdDetail.Enabled = True
   
       Call bindcontls
       '''''''''''''''Set SpdOrdDetail.DataSource = adoSecondaryRS
       Text2.Text = ""
       adoPrimaryRS.AddNew
       Call SpreadAlign(0)
       Call SpreadAlignPO(0)
       Call SpreadAlignBale(0)
       SSTab1.Tab = 0
'       Call SETDISCTYPEHead
       RPT = "N"
       Dim rs2 As Recordset
       Screen.MousePointer = 0
                       
       txtfields(2).Locked = True
       Call ENABLCONTLS
       txtfields(2).Locked = True
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
       txtfields(58).Text = Time
       
      ' txtFields(58).Text = Mid$(Time, 1, 8)
       txtfields(4).Text = ""
       txtfields(1).Text = ""
       DTPicker3.value = pdate
       DTPicker4.value = pdate
       DTPicker2.value = pdate
       DTPicker5.value = pdate
       MaskEdBox1(3).Text = Format(pdate, "dd/mm/yyyy") '"__/__/____"
       MaskEdBox1(5).Text = Format(pdate, "dd/mm/yyyy") '"__/__/____"
       MaskEdBox1(2).Text = "__/__/____"
       MaskEdBox1(1).Text = "__/__/____"
       MaskEdBox1(4).Text = "__/__/____"
       itemc = "' '"
       Text3.Text = ""
       Text1.Text = ""
       Text4.Text = ""
       Text2.Text = ""
  
      ' txtfields(15).Locked = True
      ' txtfields(16).Locked = True
       'txtFields(1).Locked = False
       SSTab1.Tab = 0
       lSuppSel = False
       adoPrimaryRS("docno") = newDocNo()
       
     '  DB.Execute "delete from RM_TMPConeReceiptPack where IPADD ='" & LocalIPAdd & "' and Docdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & Val(txtfields(2).Text) & "' and divcode='" & divcode & "' "
  
       txtfields(13).Locked = False
       txtfields(13).Enabled = True
       txtfields(7).SetFocus
       'Frame8.Visible = False
       SpdOrdDetail.MaxRows = SpdOrdDetail.MaxRows + 1
        SpdOrdDetail.SetText E_DOCSNO, SpdOrdDetail.MaxRows, 1
Case 1 'modification
       'If ToValidFinYear = False Then Exit Sub
       If Record_Exists("RM_JobOrderHD Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        sp = " "
        lSuppSel = True
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct h.docno ""Doc.No."",h.Docdate ""Doc. Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" ,s.Supptype,isnull(GSTINNO,'0') GSTINNO,isnull(GSTSTATECODE,'0') GSTSTATECODE FROM  RM_JobOrderHD h inner join RM_JobOrderDT l on h.divcode = l.divcode and h.docno = l.docno And h.docdate = l.docdate inner join FA_SLMAS s on h.slcode = s.slcode  Where h.divcode = '" & Divcode & "'   and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' and h.docno not in(select w.docno from RM_JobOrderDT w where w.docno=h.docno and w.docdate=h.docdate and w.divcode=h.divcode and isnull(w.DelQty,0) >0)  and isnull(l.DelQty,0) =0 and isnull(orderconfirm,'N')<>'Y'"
        LookUp.Caption = "Job Order Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Screen.MousePointer = 11
                         SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("Supplier Code") & "'", DB
                If Not Rs.EOF Then
                       STATEFLAG = Rs(0)
                End If
                
                 If SuppType = "R" Then
          
                    If Trim(LookUp.Fields("GSTINNO")) = "" Then
                        MsgBox "PLEASE ENTER GST NO IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                    If LookUp.Fields("GSTSTATECODE") = "0" Then
                        MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                             Dim STCODE As String
                            Set rs1 = New Recordset
                            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Supplier Code")) & "' ", DB
                            If rs1.EOF Then
                                MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            Else
                                If rs1("GSTSTATECODE") = "0" Then
                                        MsgBox "PLEASE ENTER GST STATE CODE IN CUSTOMER MASTER ", vbInformation, head
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
                    
                    
                  End If
            
            
            If Opt = "mod" Then
               Call ENABLCONTLS
            Else
               Call disablcontls
            End If
            a = LookUp.Fields(0)
            B = LookUp.Fields(1)
            Call delmodproc(CStr(a), CStr(B))
            Call adddelmod(BUTTON)
           
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
        End If
        'txtfields(1).SetFocus
Case 2
        'Deletion
       ' If ToValidFinYear = False Then Exit Sub
        If Record_Exists("RM_JobOrderDT Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
        sp = " "
        lSuppSel = True
        
        LookUp.Clear = True
        'LookUp.query = "SELECT Distinct h.docno ""Doc.No."",h.Docdate ""Doc. Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" ,s.Supptype,isnull(GSTINNO,'0') GSTINNO,isnull(GSTSTATECODE,'0') GSTSTATECODE FROM  RM_JobOrderHD h,fa_purjvhead l, FA_SLMAS s Where h.divcode = '" & divcode & "'  And h.divcode = l.divcode and h.pjno = l.vocno And h.pjdt = l.vocdt and h.pjtc=l.tc and h.slcode = s.slcode and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "'   and l.appflg is null "
        LookUp.query = "SELECT Distinct h.docno ""Doc.No."",h.Docdate ""Doc. Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" ,s.Supptype,isnull(GSTINNO,'0') GSTINNO,isnull(GSTSTATECODE,'0') GSTSTATECODE FROM  RM_JobOrderHD h inner join RM_JobOrderDT l on h.divcode = l.divcode and h.docno = l.docno And h.docdate = l.docdate inner join FA_SLMAS s on h.slcode = s.slcode  Where h.divcode = '" & Divcode & "'   and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' and h.docno not in(select w.docno from RM_JobOrderDT w where w.docno=h.docno and w.docdate=h.docdate and w.divcode=h.divcode and isnull(w.DelQty,0) >0)  and isnull(l.DelQty,0) =0 and isnull(orderconfirm,'N')<>'Y'"
        LookUp.Caption = "Job Order Listing"
        LookUp.DefCol = "Doc.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
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
        Else
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            Call BUTTON_Click(10)
        End If
        
Case 3
        If Record_Exists("RM_JobOrderDT Where Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And divcode = '" & Divcode & "'") = False Then Exit Sub

        desc.Caption = "Find"
        
        Buttonframe.Enabled = True
        LookUp.Clear = True
        LookUp.query = "SELECT Distinct h.docno ""OC.No."",h.Docdate ""Date"",s.slname ""Supplier Name"",s.City,h.slcode ""Supplier Code"" FROM  RM_JobOrderHD h,RM_JobOrderDT l, FA_SLMAS s Where h.divcode = '" & Divcode & "'  And h.divcode = l.divcode and h.docno = l.docno And h.Docdate = l.Docdate and h.slcode = s.slcode and h.Docdate  between '" & Format(yfdate, "yyyy-mm-dd") & "'  and '" & Format(yldate, "yyyy-mm-dd") & "' Order by h.docno"
        LookUp.Caption = "Job Order Listing"
        LookUp.DefCol = "OC.No."
        LookUp.ALIGN = "1000,1100,5000,1500,0"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Opt = "fnd"
            Call query_mode(LookUp.Fields(0), LookUp.Fields(1))
            Call adddelmod(BUTTON)
            BUTTON(9).Enabled = False
        Else
            Call BUTTON_Click(10)
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
            Call TotalCal
            
            
'            If Chk_TDSFLAG.value = 1 And Val(txtfields(104).Text) > 0 Then
'                If Trim(txtfields(23).Text) = "" Then
'                    MsgBox "Please Select the TDS Type", vbInformation, head
'                 Screen.MousePointer = 0
'                    txtfields(23).Locked = False
'                    txtfields(23).SetFocus
'                    Exit Sub
'                End If
'
'                Set Rs222 = New Recordset
'                Rs222.Open "select isnull(b.PSNO,'') TDSGL from fa_slmas a inner join fa_tds_gl b on a.ORG_TYPE=b.ORG_TYPE where a.slcode='" & Trim(txtfields(7).Text) & "' and  tds_type='" & Trim(txtfields(23).Text) & "' ", DB, adOpenStatic
'                If Rs222.EOF Then
'                     MsgBox "Please Map GL Code for selected TDS Type in FA Module/Organization Type in Supplier master", vbInformation, head
'                    Screen.MousePointer = 0
''                    txtfields(23).Locked = False
''                    txtfields(23).SetFocus
'                    Exit Sub
'                End If
'            End If
            
            
            If MaskEdBox1(2).Text = "__/__/____" Or IsDate(MaskEdBox1(2).Text) = False Then
                MsgBox "Ref Date should be Filled", vbInformation, head
                MaskEdBox1(2).Text = MaskEdBox1(0).Text

                DTPicker3.value = MaskEdBox1(0).Text
               ' MaskEdBox1(2).SetFocus
              '  Exit Sub

            End If
'
'            If MaskEdBox1(5).Text = "__/__/____" Or IsDate(MaskEdBox1(5).Text) = False Then
'                MsgBox "Contract Date should be Filled", vbInformation, head
'                MaskEdBox1(5).Text = MaskEdBox1(0).Text
'
'                DTPicker5.value = MaskEdBox1(0).Text
'                MaskEdBox1(5).SetFocus
'                Exit Sub
'            End If
            
            If CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
                MsgBox "Reference Date should be Less or Eqaul to PO Date ", vbInformation, head
                MaskEdBox1(2).Text = "__/__/____"
                MaskEdBox1(2).SetFocus
                Exit Sub
            End If
            
            If CDate(MaskEdBox1(0).Text) > CDate(MaskEdBox1(3).Text) Then
                MsgBox "Delivery Date should be Greater than or Eqaul to PO Date ", vbInformation, head
                MaskEdBox1(3).Text = "__/__/____"
                MaskEdBox1(3).SetFocus
                Exit Sub
            End If
            
            If val(Text6.Text) <> 100 Then
                MsgBox "Please ensure the Mix Ratio % equals 100%.", vbInformation, head
'                txtfields(23).SetFocus
                Exit Sub
            End If
            
            If Trim(txtfields(23).Text) = "" Then
                MsgBox "Pelase select Despatch To.", vbInformation, head
                txtfields(23).SetFocus
                Exit Sub
            End If
             If Trim(txtfields(10).Text) = "" Then
                MsgBox "Order Type should be Filled", vbInformation, head
                txtfields(10).SetFocus
                Exit Sub
            End If
            
            tmp = Opt
            Opt = ""
            With SpdOrdDetail
                For RW = 1 To .MaxRows
                    .Row = RW
                    If val(GetText(SpdOrdDetail, E_Quantity, RW)) > 0 Then
                        If val(GetText(SpdOrdDetail, E_Rate, RW)) = 0 Then
                            Opt = tmp
                            .Col = E_Rate
                            MsgBox "Please Enter Rate For Product Name " & GetText(SpdOrdDetail, E_Itemname, .Row), vbInformation, head
                            SpdOrdDetail.SetActiveCell E_Rate, .Row
                            SpdOrdDetail.SetFocus
                            Exit Sub
                        End If
                        
                        If Trim(GetText(SpdOrdDetail, E_MixRate, RW)) = 0 Then
                            Opt = tmp
                            .Col = E_MixRate
                            MsgBox "Mix Ratio should entered. For " & GetText(SpdOrdDetail, E_Itemname, .Row), vbInformation, head
                            SpdOrdDetail.SetActiveCell E_MixRate, .Row
                            SpdOrdDetail.SetFocus
                            Exit Sub
                        End If
                        
                        If Trim(GetText(SpdOrdDetail, E_Product_code, RW)) = "" And val(GetText(SpdOrdDetail, E_Quantity, RW)) > 0 Then
                            Opt = tmp
                            MsgBox "Item Code Should Be Entered  ", vbInformation, head
                            Exit Sub
                        End If
                        
                        If val(GetText(SpdOrdDetail, E_Rate, RW)) = 0 Then
                            Opt = tmp
                            .Col = E_Rate
                            MsgBox "Rate Should Be Entered For " & GetText(SpdOrdDetail, E_Itemname, .Row), vbInformation, head
                            SpdOrdDetail.SetActiveCell E_Rate, .Row
                            SpdOrdDetail.SetFocus
                            Exit Sub
                        End If
                        
                        If Trim(GetText(SpdOrdDetail, E_packTypedec, RW)) = "" Then
                            Opt = tmp
                            .Col = E_packTypedec
                            MsgBox "Pack Type Should Be Entered For " & GetText(SpdOrdDetail, E_packTypedec, .Row), vbInformation, head
                            SpdOrdDetail.SetActiveCell E_packTypedec, .Row
                            SpdOrdDetail.SetFocus
                            Exit Sub
                        End If
                        
                        If Trim(GetText(SpdOrdDetail, E_Tax_Code, RW)) = "" Then
                            Opt = tmp
                            .Col = E_Tax_Code
                            MsgBox "Please select GST Code ", vbInformation, head
                            SpdOrdDetail.SetActiveCell E_Tax_Code, .Row
                            SpdOrdDetail.SetFocus
                            Exit Sub
                        End If
                        
                  End If
                Next
            End With
            
            
            
            Opt = tmp
            
            If SpdOrdDetail.MaxRows = 0 Then
            MsgBox "Enter Item Details ", vbInformation, head
            Opt = tmp
            Screen.MousePointer = 0
            Exit Sub
        End If
        
'        If SPDBALEDETAILS.MaxRows = 0 Then
'           ' MsgBox "Enter Bale Details ", vbInformation, head
'           ' If MsgBox("Bale Details is Empty!! Do you want to Continue?", vbCritical + vbYesNo, head) = vbNo Then
'             Opt = tmp
'            Screen.MousePointer = 0
'            Exit Sub
'           ' Else
'           ' End If
'
'        End If
            
        End If
        
        'Check there is record to save
  
        
        Opt = temp1 = Opt
        Opt = tmp
        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then
         tmp = Opt
            Opt = ""
            nTotalinvqty = 0
            nTotalTare = 0
            nTotalGross = 0
            nQuantity = 0
            nTotalBale = 0
            
            nBTotalinvqty = 0
            nBTotalTare = 0
            nBTotalGross = 0
            nBNoofBale = 0
            
'            For nRow1 = 1 To SPDBALEDETAILS.MaxRows
'                SPDBALEDETAILS.Row = nRow1
'
'                    If Val(GetText(SPDBALEDETAILS, B_Quantity, nRow1)) > 0 And Val(GetText(SPDBALEDETAILS, B_PACKNo, nRow1)) > 0 Then
'                        nBNoofBale = nBNoofBale + 1
'                        nBTotalinvqty = nBTotalinvqty + Val(GetText(SPDBALEDETAILS, B_Quantity, nRow1))
'                        nBTotalGross = nBTotalGross + Val(GetText(SPDBALEDETAILS, B_PackPerQty, nRow1))
'                        nBTotalTare = nBTotalTare + Val(GetText(SPDBALEDETAILS, B_Looseqty, nRow1))
'                    End If
'
'            Next
'            txtfields(12).Text = Format(nBTotalinvqty, "#0.000")
'            txtfields(11).Text = Format(nBTotalTare, "#0.000")
'            txtfields(9).Text = Format(nBTotalGross, "#0.000")
            nBTotalinvqty = 0
            nBTotalTare = 0
            nBTotalGross = 0
            nBNoofBale = 0
            For nRow = 1 To SpdOrdDetail.MaxRows
                SpdOrdDetail.Row = nRow
                If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Or val(GetText(SpdOrdDetail, E_TotPacks, nRow)) > 0 Then
                    nQuantity = nQuantity + val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    nTotalinvqty = nTotalinvqty + val(GetText(SpdOrdDetail, E_InvQty, nRow))
                    nTotalGross = nTotalGross + val(GetText(SpdOrdDetail, E_PackPer, nRow))
                    nTotalTare = nTotalTare + val(GetText(SpdOrdDetail, E_ExPcs, nRow))
                    nTotalBale = nTotalBale + val(GetText(SpdOrdDetail, E_TotPacks, nRow))
'                     If SPDBALEDETAILS.MaxRows > 0 Then
'                            nNoofBale = 0
'                            nBNoofBale = 0
'                              nBTotalinvqty = 0
'                            nBTotalTare = 0
'                            nBTotalGross = 0
'                            nBNoofBale = 0
'                            For nRow1 = 1 To SPDBALEDETAILS.MaxRows
'                                SPDBALEDETAILS.Row = nRow1
'                                If Val(GetText(SPDBALEDETAILS, B_PDocSno, nRow1)) = Val(GetText(SpdOrdDetail, E_DOCSNO, nRow)) And Trim(GetText(SPDBALEDETAILS, B_Product_code, nRow1)) = Trim(GetText(SpdOrdDetail, E_Product_code, nRow)) And Val(GetText(SPDBALEDETAILS, B_SIZEINCM, nRow1)) = Val(GetText(SpdOrdDetail, E_SizeinCM, nRow)) And Val(GetText(SPDBALEDETAILS, B_SIZEININCH, nRow1)) = Val(GetText(SpdOrdDetail, E_SizeinInch, nRow)) Then
'                                    If Val(GetText(SPDBALEDETAILS, B_Quantity, nRow1)) > 0 And Val(GetText(SPDBALEDETAILS, B_PACKNo, nRow1)) > 0 Then
'                                        nBNoofBale = nBNoofBale + 1
'                                        nBTotalinvqty = nBTotalinvqty + Val(GetText(SPDBALEDETAILS, B_Quantity, nRow1))
'                                        nBTotalGross = nBTotalGross + Val(GetText(SPDBALEDETAILS, B_PackPerQty, nRow1))
'                                        nBTotalTare = nBTotalTare + Val(GetText(SPDBALEDETAILS, B_Looseqty, nRow1))
'                                    End If
'                                End If
'                            Next
'                            If Val(GetText(SpdOrdDetail, E_TotPacks, nRow)) <> nBNoofBale Then
'                                MsgBox "Pack Wise Qty and Total Pack Qty should be matched", vbInformation, head
'                                 Opt = tmp
'                                Exit Sub
'                            End If
'
'                            If Val(GetText(SpdOrdDetail, E_Quantity, nRow)) <> nBTotalinvqty Then
'                                MsgBox "Pack Wise Net weight and Total Net Weight should be matched", vbInformation, head
'                                Opt = tmp
'                                Exit Sub
'                            End If
'                            If Val(GetText(SpdOrdDetail, E_ExPcs, nRow)) <> nBTotalTare Then
'                                 MsgBox "Pack Wise Tare weight and Total Tare Weight should be matched", vbInformation, head
'                                 Opt = tmp
'                                Exit Sub
'                            End If
'                            If Val(GetText(SpdOrdDetail, E_PackPer, nRow)) <> nBTotalGross Then
'                               MsgBox "Pack Wise Gross weight and Total Gross Weight should be matched", vbInformation, head
'                                 Opt = tmp
'                                Exit Sub
'                            End If
'
'                       End If
                    
                    
                    
                End If
            Next
'            If SPDBALEDETAILS.MaxRows > 0 Then
'                nNoofBale = 0
'                For nRow = 1 To SPDBALEDETAILS.MaxRows
'                    SPDBALEDETAILS.Row = nRow
'                    If Val(GetText(SPDBALEDETAILS, B_Quantity, nRow)) > 0 And Val(GetText(SPDBALEDETAILS, B_PACKNo, nRow)) > 0 Then
'                        nNoofBale = nNoofBale + 1
'                    End If
'                Next
'                If nNoofBale <> nTotalBale Then
'                    MsgBox "Pack Wise Qty and Total Qty should be matched", vbInformation, head
'                     Opt = tmp
'                    Exit Sub
'                End If
'
'                txtQty.Text = Format(nNoofBale, "0.000")
'
'
'                If nQuantity <> Val(txtfields(12).Text) Then
'
'                    MsgBox "Pack Wise Net weight and Total Net Weight should be matched", vbInformation, head
'                     Opt = tmp
'                    Exit Sub
'
'                End If
'                If nTotalTare <> Val(txtfields(11).Text) Then
'                     MsgBox "Pack Wise Tare weight and Total Tare Weight should be matched", vbInformation, head
'                     Opt = tmp
'                    Exit Sub
'                End If
'                If nTotalGross <> Val(txtfields(9).Text) Then
'                   MsgBox "Pack Wise Gross weight and Total Gross Weight should be matched", vbInformation, head
'                     Opt = tmp
'                    Exit Sub
'                End If
'
'
'           End If
            Opt = tmp
            
            DB.BeginTrans
            Dim ff As Form
            Set ff = Me
            
            
           
        
            ''=================
            '' HEADER UPDATION
            ''=================
            adoPrimaryRS("DivCode").value = Divcode
           
'            If Opt = "add" Then
'                adoPrimaryRS("docno") = newdocno()
'                Set JRS = New Recordset
'                    JRS.Open " Select max(pjno) from RM_JobOrderHD where divcode = '" & divcode & "'" & _
'                         " And pjdt >= '" & Format(fnyfdate(MaskEdBox1(0).Text), "yyyy-mm-dd") & "'" & _
'                         " And pjdt <= '" & Format(fnyldate(MaskEdBox1(0).Text), "yyyy-mm-dd") & "'", DB, adOpenStatic
'                    If JRS.BOF Or IsNull(JRS(0)) Then
'                        txtfields(6).Text = 1
'                    Else
'                        txtfields(6).Text = JRS(0).value + 1
'                    End If
'
'            End If
            If MaskEdBox1(0).Text <> "__/__/____" Then
                adoPrimaryRS("Docdate") = Format(MaskEdBox1(0).Text, "yyyy-mm-dd")
            End If
            
            If MaskEdBox1(2).Text <> "__/__/____" And IsDate(MaskEdBox1(2).Text) = True Then
                adoPrimaryRS("RefDate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            
    
            adoPrimaryRS("RefNo") = Trim(Trim(txtfields(3).Text))
        
            adoPrimaryRS("SLCode") = txtfields(7).Text
            adoPrimaryRS("agentCODE") = txtfields(18).Text
           ' adoPrimaryRS("God_Code") = Trim(Trim(txtfields(13).Text))
            adoPrimaryRS("Trans_Code") = Trim(txtfields(5).Text)
            If MaskEdBox1(3).Text <> "__/__/____" And IsDate(MaskEdBox1(3).Text) = True Then
                adoPrimaryRS("DeliveryDate") = Format(MaskEdBox1(3).Text, "YYYY-MM-DD")
            End If
            adoPrimaryRS("PaymentTerm") = Trim(txtfields(19).Text)
          
          '  adoPrimaryRS("Vehicle_No") = Trim(txtfields(8).Text)
           ' adoPrimaryRS("TotLooseQty") = Val(txtfields(11).Text)
            adoPrimaryRS("TotPacks") = val(txtfields(9).Text)
            adoPrimaryRS("TotQty") = val(txtfields(12).Text)
            


            adoPrimaryRS("HostID") = HostName
            If Opt = "add" Then
                adoPrimaryRS("CreatedBy") = usrid
                adoPrimaryRS("CreatedDate") = GetServerDate
            ElseIf Opt = "mod" Then
                adoPrimaryRS("ModifiedBy") = usrid
                adoPrimaryRS("ModifiedDate") = GetServerDate
            End If
  
            
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            ''================
            '' DETAIL UPDATION
            ''================
            If Opt = "mod" Then
                DB.Execute "Delete From RM_JobOrderDT Where Divcode='" & Divcode & "' And docno=" & adoPrimaryRS("docno") & " And Docdate='" & Format(adoPrimaryRS("Docdate"), "yyyy-mm-dd") & "' "
'                Set rsch = New Recordset
'                rsch.Open "select psno,Quantity from RM_JobOrderDT Where Divcode='" & Divcode & "' And docno=" & adoPrimaryRS("docno") & " And Docdate='" & Format(adoPrimaryRS("Docdate"), "yyyy-mm-dd") & "' ", DB, adOpenStatic
'                Do While Not rsch.EOF
'
'                    DB.Execute "update KN_contdt set  progqty=isnull(progqty,0)-" & val(rsch(1) & "") & " ,  POQty=isnull(POQty,0)-" & val(rsch(1) & "") & " where  Divcode='" & Divcode & "' and cont_no='" & Trim(txtfields(13).Text) & "' and cont_type='" & Trim(txtfields(6).Text) & "' and psno='" & val(rsch(0)) & "'"
'                    rsch.MoveNext
'                Loop
             End If
            
            Dim nSno As Double
            Dim rstail, rsTail1 As Recordset
            Set rstail = New Recordset
                        
            rstail.Open " SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,Product_Type,a.product_name,a.Product_code,a.uom,a.Packs,a.Quantity,a.Rate,a.Value,a.remarks,a.Disc_Per,a.Disc_Amt,a.Tax_Code,a.Taxable_Amt,a.Cgstper,a.CGSTAmt,a.Sgstper,a.SGSTAmt,a.Igstper,a.IGSTAmt,a.TCS_Per,a.TCS_amt,a.TotalAmt ,ins_Amt,Other_Amt,Freight_Amt,a.hsn,MixRate FROM RM_JobOrderDT a  WHERE divcode='" & Divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
                        
            nSno = 1
            For nRow = 1 To SpdOrdDetail.MaxRows
                SpdOrdDetail.Row = nRow
                SpdOrdDetail.SetActiveCell E_Quantity, nRow
                If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
                    rstail.AddNew
                    rstail("DivCode") = Divcode
                    rstail("docno") = adoPrimaryRS("docno")
                    rstail("Docdate") = Format(adoPrimaryRS("Docdate"), "yyyy/MM/dd")
                    rstail("DocSNo") = val(GetText(SpdOrdDetail, E_DOCSNO, nRow)) 'nSno
                    rstail("product_name") = Trim(GetText(SpdOrdDetail, E_Itemname, nRow)) 'nSno
                    
                    rstail("Product_Type") = Trim(GetText(SpdOrdDetail, E_ProductType, nRow))
'                    rstail("SizeinCM") = Val(GetText(SpdOrdDetail, E_SizeinCM, nRow))
                    rstail("Product_code") = Trim(GetText(SpdOrdDetail, E_Product_code, nRow))
                    rstail("Packs") = val(GetText(SpdOrdDetail, E_TotPacks, nRow))
'                    rstail("PackPerQty") = Val(GetText(SpdOrdDetail, E_PackPer, nRow))
'                    rstail("Looseqty") = Val(GetText(SpdOrdDetail, E_ExPcs, nRow))
'                    rstail("OrdBalQty") = val(GetText(SpdOrdDetail, E_ORDBalQty, nRow))
                    rstail("Quantity") = val(GetText(SpdOrdDetail, E_Quantity, nRow))
                 '   rstail("FavourableWt") = Val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    rstail("Rate") = val(GetText(SpdOrdDetail, E_Rate, nRow))
                    rstail("Disc_Per") = val(GetText(SpdOrdDetail, E_Discrate, nRow))
                   ' rstail("God_Code") = Trim(Trim(txtfields(13).Text))
                    rstail("MixRate") = val(GetText(SpdOrdDetail, E_MixRate, nRow)) 'Format(Val(GetText(SpdOrdDetail, E_AssValue, nRow)) / Val(GetText(SpdOrdDetail, E_Quantity, nRow)), "#0.00")
                    
                   ' rstail("INV_QtyKGS") = Val(GetText(SpdOrdDetail, E_InvQty, nRow))
                    rstail("value") = val(GetText(SpdOrdDetail, E_VALUE, nRow))
                    rstail("uom") = Trim(GetText(SpdOrdDetail, E_UOM, nRow))
                    rstail("HSN") = Trim(GetText(SpdOrdDetail, E_HSN, nRow))
                    
                    rstail("remarks") = Left(Trim(GetText(SpdOrdDetail, E_Remarks, nRow)), 15)
                            
'                    rstail("pjdt") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
'
'                    rstail("PJNO") = Val(Trim(txtfields(6).Text))
'                    rstail("pjtc") = Val(Trim(txtfields(13).Text))
'
                    
                    rstail("TAX_CODE") = Trim(GetText(SpdOrdDetail, E_Tax_Code, nRow))
                    rstail("Disc_Amt") = val(GetText(SpdOrdDetail, E_DiscValue, nRow))
                    rstail("Taxable_Amt") = val(GetText(SpdOrdDetail, E_AssValue, nRow))
                    rstail("CGSTPER") = val(GetText(SpdOrdDetail, E_CCGSTPer, nRow))
                    rstail("CGSTAMT") = val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow))
                    rstail("SGSTPER") = val(GetText(SpdOrdDetail, E_SCGSTPer, nRow))
                    rstail("SGSTAMT") = val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow))
                    rstail("IGSTPER") = val(GetText(SpdOrdDetail, E_ICGSTPer, nRow))
                    rstail("IGSTAMT") = val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow))
                    rstail("TotalAmt") = val(GetText(SpdOrdDetail, E_TotalAmt, nRow))
                    rstail("tcs_per") = val(GetText(SpdOrdDetail, E_TCSper, nRow))
                    rstail("tcs_amt") = val(GetText(SpdOrdDetail, E_TCSAMT, nRow))
                    rstail("TotalAmt") = val(GetText(SpdOrdDetail, E_TotalAmt, nRow))
                    rstail("ins_Amt") = val(GetText(SpdOrdDetail, E_InsAmt, nRow))
                    rstail("Other_Amt") = val(GetText(SpdOrdDetail, E_OtherAmt, nRow))
                    rstail("Freight_Amt") = val(GetText(SpdOrdDetail, E_FreightAmt, nRow))
                    
                    'DB.Execute "update KN_contdt set  progqty=isnull(progqty,0)+" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & " , POQty=isnull(POQty,0)+" & val(GetText(SpdOrdDetail, E_Quantity, nRow)) & " where  Divcode='" & Divcode & "' and cont_no='" & Trim(txtfields(13).Text) & "' and cont_type='" & Trim(txtfields(6).Text) & "' and psno='" & val(GetText(SpdOrdDetail, E_PSNO, nRow)) & "'"
                        
                        
                        
                        
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,OrdRefNo,Cont_type,Docno,Docdt,ContNo,Contdt,EXContNo,EXContDate,Slcode,Agent_code,Paymode,CDays,Tax_code,DespatchTo,Freight_Amt,ins_amt,Product_code,PackType,Rate_Flg,Packs,Quantity,MTon,Rate_Mt,Rate_Kg,DRate_Mt,Tolerenceper,HSN,MAT_Value,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,Total_Value,TCS_PER,TCS_amt,Other_amt FROM Ig_Trans_Log where divcode='" & Divcode & "' and  1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "RM Job Order"
                    TrnLog("Trans_Mod") = Opt
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("OrdRefNo") = Trim(txtfields(4).Text)
                
                   
                    TrnLog("Docno").value = adoPrimaryRS("docno")
                    TrnLog("Docdt").value = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
                    TrnLog("Slcode").value = Trim(txtfields(7).Text)
                    TrnLog("OrdRefNo").value = Trim(txtfields(3).Text)
'                    If IsDate(MaskEdBox2.Text) = True Then
'                        TrnLog("EXContDate").value = Format(MaskEdBox1(2).Text, "yyyy-MM-dd")
'                    End If
                    TrnLog("Freight_Amt") = val(GetText(SpdOrdDetail, E_FreightAmt, nRow))
                    TrnLog("PACKS") = val(GetText(SpdOrdDetail, E_TotPacks, nRow))
                    TrnLog("DRate_MT") = val(GetText(SpdOrdDetail, E_Rate, nRow))
                    TrnLog("Quantity") = val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    TrnLog("Product_code") = Trim(GetText(SpdOrdDetail, E_Product_code, nRow))
                    TrnLog("Rate_KG") = val(GetText(SpdOrdDetail, E_Rate, nRow))
                    TrnLog("MAT_Value") = val(GetText(SpdOrdDetail, E_VALUE, nRow))
                    TrnLog("Cgstper") = val(GetText(SpdOrdDetail, E_CCGSTPer, nRow))
                    TrnLog("Cgstamt") = val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow))
                    TrnLog("sgstper") = val(GetText(SpdOrdDetail, E_SCGSTPer, nRow))
                    TrnLog("sgstamt") = val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow))
                    TrnLog("igstper") = val(GetText(SpdOrdDetail, E_ICGSTPer, nRow))
                    TrnLog("Igstamt") = val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow))
                    TrnLog("Total_Value") = val(GetText(SpdOrdDetail, E_TotalAmt, nRow))
                    TrnLog("TCS_PER") = val(GetText(SpdOrdDetail, E_TCSper, nRow))
                    TrnLog("TCS_amt") = val(GetText(SpdOrdDetail, E_TCSAMT, nRow))
                    TrnLog("Other_amt") = val(GetText(SpdOrdDetail, E_OtherAmt, nRow))
                    TrnLog("Rate_MT") = val(GetText(SpdOrdDetail, E_PSNO, nRow))
                    TrnLog.UpdateBatch adAffectAllChapters
                        
                        
                    'rstail("PSNO") = val(GetText(SpdOrdDetail, E_PSNO, nRow))
                   ' rstail("Stock_year") = Format(yfdate, "yyyy")
                    nSno = nSno + 1
                End If
                'If Not adoSecondaryRS.EOF Then adoSecondaryRS.MoveNext
            Next
            rstail.UpdateBatch adAffectAllChapters
            
            
            
'            Set rsTail1 = New Recordset
'
'            rsTail1.Open " SELECT DivCode,a.DocNo,a.DocDate,a.DocSno,a.PDocSno,a.Product_code,a.uom,a.Quantity,a.Pack_NO,a.Rate,a.Value FROM RM_ConeReceiptPack a Where DivCode='" & divcode & "' And 1=2", DB, adOpenStatic, adLockBatchOptimistic
'
'            nSno = 1
'            For nRow = 1 To SPDBALEDETAILS.MaxRows
'                SPDBALEDETAILS.Row = nRow
'                SPDBALEDETAILS.SetActiveCell B_PackPerQty, nRow
'                If Val(GetText(SPDBALEDETAILS, B_PACKNo, nRow)) > 0 And Val(GetText(SPDBALEDETAILS, B_Quantity, nRow)) > 0 Then
'                    rsTail1.AddNew
'                    rsTail1("DivCode") = divcode
'                    rsTail1("docno") = adoPrimaryRS("docno")
'                    rsTail1("Docdate") = Format(adoPrimaryRS("Docdate"), "yyyy/MM/dd")
'                    rsTail1("DocSNo") = nSno
'                    rsTail1("SizeInInch") = Val(GetText(SPDBALEDETAILS, B_SIZEININCH, nRow))
'                    rsTail1("SizeinCM") = Val(GetText(SPDBALEDETAILS, B_SIZEINCM, nRow))
'                    rsTail1("Product_code") = Trim(GetText(SPDBALEDETAILS, B_Product_code, nRow))
'                    rsTail1("PackPerQty") = Val(GetText(SPDBALEDETAILS, B_PackPerQty, nRow))
'                    rsTail1("Pack_NO") = Val(GetText(SPDBALEDETAILS, B_PACKNo, nRow))
'                    rsTail1("Looseqty") = Val(GetText(SPDBALEDETAILS, B_Looseqty, nRow))
'                    rsTail1("Quantity") = Val(GetText(SPDBALEDETAILS, B_Quantity, nRow))
''                    rsTail1("FavourableWt") = Val(GetText(SPDBALEDETAILS, B_Quantity, nRow))
'
'                    rsTail1("PDocSno") = Val(GetText(SPDBALEDETAILS, B_PDocSno, nRow))
'                    rsTail1("uom") = Trim(GetText(SPDBALEDETAILS, B_Uom, nRow))
'                    rsTail1("rate") = Val(GetText(SPDBALEDETAILS, B_Rate, nRow))
'                    For nRow1 = 1 To SpdOrdDetail.MaxRows
'                     SpdOrdDetail.Row = nRow1
'                        If Val(GetText(SPDBALEDETAILS, B_SIZEININCH, nRow)) = Val(GetText(SpdOrdDetail, E_SizeinInch, nRow1)) And Val(GetText(SPDBALEDETAILS, B_SIZEINCM, nRow)) = Val(GetText(SpdOrdDetail, E_SizeinCM, nRow1)) And Val(GetText(SPDBALEDETAILS, B_Product_code, nRow)) = Val(GetText(SpdOrdDetail, E_Product_code, nRow1)) And Val(GetText(SPDBALEDETAILS, B_PDocSno, nRow)) = Val(GetText(SpdOrdDetail, E_DOCSNO, nRow1)) Then
'                          rsTail1("rate") = Format(Val(GetText(SpdOrdDetail, E_AssValue, nRow1)) / Val(GetText(SpdOrdDetail, E_Quantity, nRow1)), "#0.00")
'                        End If
'                    Next
'
'                    rsTail1("value") = Val(GetText(SPDBALEDETAILS, B_Quantity, nRow)) * Val(rsTail1("rate") & "")
'
'
'              End If
'                    nSno = nSno + 1
'               ' If Not adoSecondaryRS1.EOF Then adoSecondaryRS1.MoveNext
'            Next
'            rsTail1.UpdateBatch adAffectAllChapters
              
            Opt = tmp
            DB.CommitTrans
            
'            frmFa.sTC = Val(txtfields(13).Text)
'            frmFa.sVocno = Val(txtfields(6).Text)
'            frmFa.sVocdt = Format(MaskEdBox1(5).Text, "dd/mm/yyyy")
'            frmFa.sBillNo = Trim(txtfields(3).Text)
'            frmFa.sBillDt = Format(MaskEdBox1(2).Text, "dd/mm/yyyy")
'
'            frmFa.sTrnType = "PU"
'
'            frmFa.Show vbModal
'            If Not frmFa.bolTally Then
'                Opt = "del"
'                BolAutoDel = True
'                Call BUTTON_Click(9)
'                BolAutoDel = False
'                Exit Sub
'            End If
'
            
            
            
            If Opt = "add" Then
                MsgBox "Job Order Entry No. for your transaction is " & adoPrimaryRS("docno"), vbInformation, head
            Else
                MsgBox "Record Modified Successfully", vbInformation, head
            End If
            
        End If
        If Opt = "del" Then     'del
        
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                DB.BeginTrans
               
               
                For nRow = 1 To SpdOrdDetail.MaxRows
                    SpdOrdDetail.Row = nRow
                    SpdOrdDetail.SetActiveCell E_Quantity, nRow
                           
                    
                       
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,OrdRefNo,Cont_type,Docno,Docdt,ContNo,Contdt,EXContNo,EXContDate,Slcode,Agent_code,Paymode,CDays,Tax_code,DespatchTo,Freight_Amt,ins_amt,Product_code,PackType,Rate_Flg,Packs,Quantity,MTon,Rate_Mt,Rate_Kg,DRate_Mt,Tolerenceper,HSN,MAT_Value,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,Total_Value,TCS_PER,TCS_amt,Other_amt FROM Ig_Trans_Log where divcode='" & Divcode & "' and  1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "RM Job Order"
                    TrnLog("Trans_Mod") = Opt
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("OrdRefNo") = Trim(txtfields(4).Text)
                  
                   
                    TrnLog("Docno").value = adoPrimaryRS("docno")
                    TrnLog("Docdt").value = Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
                    TrnLog("Slcode").value = Trim(txtfields(7).Text)
                    TrnLog("OrdRefNo").value = Trim(txtfields(3).Text)
                    If IsDate(MaskEdBox2.Text) = True Then
                        TrnLog("EXContDate").value = Format(MaskEdBox1(2).Text, "yyyy-MM-dd")
                    End If
                    TrnLog("Freight_Amt") = val(GetText(SpdOrdDetail, E_FreightAmt, nRow))
                    TrnLog("PACKS") = val(GetText(SpdOrdDetail, E_TotPacks, nRow))
                    TrnLog("DRate_MT") = val(GetText(SpdOrdDetail, E_Rate, nRow))
                    TrnLog("Quantity") = val(GetText(SpdOrdDetail, E_Quantity, nRow))
                    TrnLog("Product_code") = Trim(GetText(SpdOrdDetail, E_Product_code, nRow))
                    TrnLog("Rate_KG") = val(GetText(SpdOrdDetail, E_Rate, nRow))
                    TrnLog("MAT_Value") = val(GetText(SpdOrdDetail, E_VALUE, nRow))
                    TrnLog("Cgstper") = val(GetText(SpdOrdDetail, E_CCGSTPer, nRow))
                    TrnLog("Cgstamt") = val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow))
                    TrnLog("sgstper") = val(GetText(SpdOrdDetail, E_SCGSTPer, nRow))
                    TrnLog("sgstamt") = val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow))
                    TrnLog("igstper") = val(GetText(SpdOrdDetail, E_ICGSTPer, nRow))
                    TrnLog("Igstamt") = val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow))
                    TrnLog("Total_Value") = val(GetText(SpdOrdDetail, E_TotalAmt, nRow))
                    TrnLog("TCS_PER") = val(GetText(SpdOrdDetail, E_TCSper, nRow))
                    TrnLog("TCS_amt") = val(GetText(SpdOrdDetail, E_TCSAMT, nRow))
                    TrnLog("Other_amt") = val(GetText(SpdOrdDetail, E_OtherAmt, nRow))
'                    TrnLog("Rate_MT") = val(GetText(SpdOrdDetail, E_PSNO, nRow))
                    TrnLog.UpdateBatch adAffectAllChapters
                               
                           
                    nSno = nSno + 1
                   
                Next
               ' DB.Execute ("DELETE FROM RM_ConeReceiptPack WHERE Divcode = '" & divcode & "'  AND docno =  " & Val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_JobOrderDT WHERE Divcode = '" & Divcode & "'  AND docno =  " & val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                DB.Execute ("DELETE FROM RM_JobOrderHD WHERE DivCode = '" & Divcode & "' And docno =  " & val(txtfields(2).Text) & " and Docdate = '" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'")
                
                
               
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
    SpdOrdDetail.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, 11)
    Call NEWFORM1(BUTTON, GSNO)
    
    
Case 11
    'EXIT
'    i = MsgBox("Do You Want to Exit?", vbCritical + vbYesNo, head)
'    If i = vbYes Then
        Unload Me
   ' End If

Case 13, 14

    Dim POrder As New clsCrystal

   Set POrder.cryRept = Cry_RMTXNJobOrder
   
   
    POrder.CrystalPrint
    
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.ParameterFields(1) = "@DocNo;" & txtfields(2).Text
    CrystalReport1.ParameterFields(2) = "@Docdt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 0
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

    Screen.MousePointer = 0
            
'    ''Order No Preparation
'    Dim sPRNo As String
'    Set rsHead = New Recordset
'    rsHead.Open " Select Distinct L.DivCode,PRNo,PRDt FROM RM_JobOrderDT L, PO_TYPE T" & _
'                " WHERE L.DIVCODE='" & divcode & "'  AND docno=" & Val(txtfields(2).Text) & " AND Docdate='" & Format(MaskEdBox1(0).Text, "YYYY-MM-DD") & "' AND L.POGRP=T.TYPE_CODE", DB, adOpenStatic, adLockReadOnly
'    If Not (rsHead.BOF And rsHead.EOF) Then
'        rsHead.MoveFirst
'        Do While Not rsHead.EOF
'            If Trim(sPRNo) <> "" Then
'                sPRNo = sPRNo & ", " & rsHead("Contno") & "-" & rsHead("Contdt")
'            Else
'                sPRNo = sPRNo & rsHead("Contno") & "-" & rsHead("Contdt")
'            End If
'            rsHead.MoveNext
'        Loop
'    End If
'    If Len(sPRNo) > 256 Then
'        sPRNo = Left(sPRNo, 256)
'    End If
'
'    CrystalReport1.Reset
'    CrystalReport1.Connect = connectstring
'    CrystalReport1.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\Import\LCRequest.rpt"
'    CrystalReport1.ParameterFields(0) = "@DivCode;" & divcode
'    CrystalReport1.ParameterFields(1) = "@docno;" & txtfields(2).Text
'    CrystalReport1.ParameterFields(2) = "@ReqDt;" & Format(MaskEdBox1(0).Text, "yyyy-MM-dd")
'    CrystalReport1.Formulas(0) = "DivName= '" & divname & "'"
'    CrystalReport1.Formulas(1) = "PurOrder= '" & sPRNo & "'"
'    CrystalReport1.WindowState = crptMaximized
'    SendKeys "{Enter}"
'    CrystalReport1.Action = 1
        
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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : BUTTON_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"

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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ChkSelectAll_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub Cmd_DiscountOK_Click()
FrameDiscType.Visible = False
End Sub

Private Sub ChK_TDSFlag_Click()
If Opt = "add" Or Opt = "mod" Then
    Call TotalCal
End If
End Sub

Private Sub Chk_TDSManual_Click()
If Opt = "add" Or Opt = "mod" Then
  Call TotalCal
End If
End Sub

Private Sub cmdExit_Click()
FraMain.Visible = False
End Sub


Private Sub cmdItemSelectClose_Click()
On Error GoTo Errh
  Frame8.Visible = False
   ' Call BUTTON_Click(10)
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdItemSelectClose_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub




Private Sub Command11_Click()

On Error GoTo Command2_Click_Error

Call SpreadAlignBale(0)
    Dim UPBaleno, UPLooseqty, UPQuantity, UPPackPerQty, UpLotno, UPMoisture, UpInvWt, TotLooseQty, TotPacks, TOTQty, TotInvWt As Double
    Dim UPPOS As Integer
          TotLooseQty = 0
           TotPacks = 0
           TOTQty = 0
           TotInvWt = 0
   If spdView.MaxRows = 0 Then
        MsgBox " Kindly select Bale Detail file ", vbOKOnly
        Exit Sub
   End If
   SNO = 0
  For RW = 1 To spdView.MaxRows Step 1
    If Trim(GetText(spdView, 1, RW)) <> "" And GetText(spdView, 4, RW) <> "" And GetText(spdView, 5, RW) <> "" And IsNumeric(GetText(spdView, 5, RW)) = True And IsNumeric(GetText(spdView, 7, RW)) = True Then
     If IsNumeric(GetText(spdView, 7, RW)) = True Then
          UPSNO = CInt(Fix(Trim(GetText(spdView, 1, RW) & "")))
'               If InStr(Trim(GetText(spdView, CA_Shift, RW) & ""), ".") > 0 Then
'
'                sshifT = Left$(Trim(GetText(spdView, CA_Shift, RW) & ""), InStr(Trim(GetText(spdView, CA_Shift, RW) & ""), ".") - 1)
'                Else
'                sshifT = Trim(GetText(spdView, CA_Shift, RW) & "")
'                End If
          
                UPBaleno = (Fix(Trim(GetText(spdView, 2, RW) & "")))
                UPPackPerQty = Trim(GetText(spdView, 3, RW) & "")
                UPLooseqty = Trim(GetText(spdView, 4, RW) & "")
                UPQuantity = Trim(GetText(spdView, 5, RW) & "")
                UPMoisture = Trim(GetText(spdView, 6, RW) & "")
                UpInvWt = val(Trim(GetText(spdView, 7, RW) & ""))
          
                SPDBALEDETAILS.MaxRows = SPDBALEDETAILS.MaxRows + 1
                SNO = SNO + 1
                SPDBALEDETAILS.SetText BBaleDtls.B_Product_code, SNO, Trim(GetText(SpdOrdDetail, E_Product_code, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_SIZEININCH, SNO, Trim(GetText(SpdOrdDetail, E_SIZEININCH, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_SIZEINCM, SNO, Trim(GetText(SpdOrdDetail, E_SIZEINCM, 1))
                SPDBALEDETAILS.SetText BBaleDtls.B_DOCSNO, SNO, SPDBALEDETAILS.MaxRows
                SPDBALEDETAILS.SetText BBaleDtls.B_PACKNo, SNO, UPBaleno
                SPDBALEDETAILS.SetText BBaleDtls.B_PackPerQty, SNO, UPPackPerQty
                SPDBALEDETAILS.SetText BBaleDtls.B_Looseqty, SNO, UPLooseqty
                SPDBALEDETAILS.SetText BBaleDtls.B_Quantity, SNO, UPQuantity
                SPDBALEDETAILS.SetText BBaleDtls.B_Rate, SNO, UPMoisture
                SPDBALEDETAILS.SetText BBaleDtls.B_Value, SNO, UpInvWt
                TotLooseQty = TotLooseQty + UPLooseqty
                TotPacks = TotPacks + UPPackPerQty
                TOTQty = TOTQty + UPQuantity
                TotInvWt = TotInvWt + UpInvWt
      End If
     End If
  Next
           txtfields(11).Text = Format(TotLooseQty, "0.000")
           txtfields(9).Text = Format(TotPacks, "0.000")
           txtfields(12).Text = Format(TOTQty, "0.000")
        
           FraMain.Visible = False
   Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command13_Click()

End Sub

Private Sub DTPicker2_CloseUp()
MaskEdBox1(1).Text = Format(DTPicker2.value, "dd/MM/yyyy")
MaskEdBox1(1).SetFocus
DTPicker2.SetFocus
End Sub

Private Sub DTPicker3_CloseUp()
MaskEdBox1(2).Text = Format(DTPicker3.value, "dd/MM/yyyy")
MaskEdBox1(2).SetFocus
DTPicker3.SetFocus
End Sub

Private Sub DTPicker3_GotFocus()
Me.DTPicker3.SetFocus
' With DTPicker1
'        'store the current value because it will be modified.
'        dteTemp = .Value
'
'        'Force a change to the current date section
'        SendKeys "{UP}", True
'   End With
End Sub

Private Sub DTPicker3_LostFocus()
If Opt = "add" Or Opt = "mod" Then
If MaskEdBox1(2).Text = "__/__/____" Then
'    MsgBox "Please select Oc Date", vbInformation, head
'    DTPicker3.ZOrder
'
Else
'DTPicker4.SetFocus
End If

End If

End Sub

Private Sub DTPicker4_CloseUp()
MaskEdBox1(3).Text = Format(DTPicker4.value, "dd/MM/yyyy")
'txtFields(58).SetFocus
MaskEdBox1(3).SetFocus

End Sub
Private Sub DTPicker1_CloseUp()
MaskEdBox1(0).Text = Format(DTPicker1.value, "dd/MM/yyyy")
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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : DTPicker1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub DTPicker5_CloseUp()
MaskEdBox1(5).Text = Format(DTPicker5.value, "dd/MM/yyyy")
MaskEdBox1(5).SetFocus
DTPicker5.SetFocus
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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
    
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then SendKeys "{tab}"
    If KeyAscii = 26 Then Call Form_KeyDown(vbKeyZ, 2)
End Sub

Private Sub Form_Load()
  
On Error GoTo Errh

'txtFields(12).Locked = False
stbar.Panels(1).Text = SbMsg
Set DB = New Connection
DB.CursorLocation = adUseClient
DB.Open "PROVIDER=MSDataShape;" + connectstring

SpreadAlign
' Call getBrokertype

BUTTON(9).Enabled = False
Opt = "qry"
If QryStat Then
   GSNO = 16
   Call query_mode(val(QSLCode), 1)
Else
   Call query_mode(0, 0)
End If
lblUserID = UserNme
stbar.Panels(1).Text = SbMsg
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
   
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Form_Load " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub Form_Resize()
On Error Resume Next
'
'    ''For Entry Form
'    stbar.Panels(2).Width = Me.Width - Val(stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'    Buttonframe.Width = Me.Width - 200
'
'    Shape1.Width = Me.Width - 400
'    Frame1.Width = Me.Width - 600
'    SpdOrdDetail.Width = Me.Width - 1000
'
'    Shape1.Height = Me.Height - 2100
'    Frame1.Height = Me.Height - 2200
'    SpdOrdDetail.Height = Me.Height - 8000
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



Private Sub SpdOrdDetail_KeyPress(KeyAscii As Integer)
  Exit Sub
  If Opt = "add" Then
        
        With SpdOrdDetail
            If .ActiveCol = eORDDtls.E_UOM And (KeyAscii = 9 Or KeyAscii = 13) Then
                   Set NEWRSs = New Recordset
                    NEWRSs.Open "Select Distinct pack_type,Description From ig_PackType Where pack_type = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_UOM, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
                    If NEWRSs.RecordCount > 0 Then
                        .SetText eORDDtls.E_UOM, .ActiveRow, NEWRSs("Description")
                    Else
                         LookUp.Clear = True
                        LookUp.query = "Select pack_type UOM,Description  From ig_PackType"
                        LookUp.Caption = "UOM Listing"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,4500"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            .SetText eORDDtls.E_UOM, .ActiveRow, LookUp.Fields(0)
                            '.SetText eORDDtls.C_packTypedec, .ActiveRow, LookUp.Fields(1)
                        Else
                            .SetText eORDDtls.E_UOM, .ActiveRow, ""
                           ' .SetText eORDDtls.C_packType, .ActiveRow, ""
                            .Col = E_UOM
                            Cancel = True
                            Exit Sub
                        End If
                    End If
             
             End If
'
'            If .ActiveCol = eORDDtls.E_Itemname And (KeyAscii = 9 Or KeyAscii = 13) Then
'                   Set NEWRSs = New Recordset
'                    NEWRSs.Open "Select Distinct Product_code,Description From IG_PRODUCT  Where  Divcode='" & Divcode & "' and Description = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Itemname, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
'                    If NEWRSs.RecordCount > 0 Then
'                        .SetText eORDDtls.E_ItemDesc, .ActiveRow, NEWRSs("Description")
'                        .SetText eORDDtls.E_Itemname, .ActiveRow, NEWRSs("Description")
'                    Else
'                         LookUp.Clear = True
'                        LookUp.query = "Select Product_Code ,Description  From IG_PRODUCT Where Divcode='" & Divcode & "'"
'                        LookUp.Caption = "Product Listing"
'                        LookUp.DefCol = "Description"
'                        LookUp.ALIGN = "1500,4500"
'                        LookUp.Show vbModal
'                        If LookUp.Cancel = False Then
'                            .SetText E_Product_code, SpdOrdDetail.ActiveRow, CStr(LookUp.Fields(0))
'                            .SetText eORDDtls.E_Itemname, .ActiveRow, Trim(LookUp.Fields(1))
'                            .SetText eORDDtls.E_ItemDesc, .ActiveRow, Trim(LookUp.Fields(1))
'                             .SetText E_Product_code, SpdOrdDetail.ActiveRow, CStr(LookUp.Fields(0))
'
'                               Set NEWRSs = New Recordset
'                            NEWRSs.Open "Select Distinct Product_code,Description From IG_PRODUCT Where Divcode='" & Divcode & "' and Product_code = '" & CStr(LookUp.Fields(0)) & "' ", DB, adOpenStatic, adLockReadOnly
'                            If NEWRSs.RecordCount > 0 Then
'                                .SetText E_ItemDesc, .ActiveRow, CStr(Trim(NEWRSs("Description")))
'                                .SetText E_Itemname, .ActiveRow, CStr(Trim(NEWRSs("Description")))
'                            End If
'                            .Col = E_UOM
'                            .SetFocus
'                        Else
'                            .SetText eORDDtls.E_Product_code, .ActiveRow, ""
'                            .SetText eORDDtls.E_Itemname, .ActiveRow, ""
'                            .Col = E_Product_code
'                            Cancel = True
'                            Exit Sub
'                        End If
'                    End If
             
'             End If
'            If ((.ActiveCol = eORDDtls.E_PackPer) Or (.ActiveCol = eORDDtls.E_Quantity)) And (KeyAscii = 9 Or KeyAscii = 13) Then
'               ' .SetText eORDDtls.E_TotPacks, .ActiveRow, CStr(Val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) / Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow)))
'            End If
            
        End With
        
    End If
End Sub

Private Sub spdPO_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
If Opt = "add" Or Opt = "mod" Then
Dim totgqty, totnqty, tottqty, totbal As Double
    If KeyCode = 13 Or KeyCode = vbKeyTab Then
totbal = 0: totbal = 0
        If spdPO.ActiveCol = ePODtls.P_Looseqty Or spdPO.ActiveCol = ePODtls.P_PackPerQty Or spdPO.ActiveCol = ePODtls.P_Quantity Then
              With spdPO
                    For nRow = 1 To .MaxRows
                        .Row = nRow
                      If val(Trim(GetText(spdPO, ePODtls.P_PACKNO, .Row))) > 0 And val(Trim(GetText(spdPO, ePODtls.P_Quantity, .Row))) > 0 Then
                        totnqty = totnqty + val(Trim(GetText(spdPO, ePODtls.P_Quantity, .Row)))
                        totbal = totbal + 1
                        tottqty = tottqty + val(Trim(GetText(spdPO, ePODtls.P_Looseqty, .Row)))
                        totgqty = totgqty + val(Trim(GetText(spdPO, ePODtls.P_PackPerQty, .Row)))
                        .SetText ePODtls.P_Value, .Row, val(Trim(GetText(SpdOrdDetail, E_Rate, SpdOrdDetail.ActiveRow))) * val(Trim(GetText(spdPO, SPDQTY, .Row)))
                       End If
                    Next
             End With
             
             txtfields(17).Text = Format(totgqty, "#0.000")
             txtfields(22).Text = Format(tottqty, "#0.000")
             txtfields(20).Text = Format(totnqty, "#0.000")
             txtfields(21).Text = totbal
       End If
    End If


    
    
  With spdPO
      If .ActiveCol = ePODtls.P_Quantity And val(GetText(SpdOrdDetail, E_TotPacks, SpdOrdDetail.ActiveRow)) <> .MaxRows Then
        If KeyCode = vbKeyTab Then
        
        If val(GetText(SpdOrdDetail, eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow)) > .MaxRows - 1 Then
            If MsgBox("Do you want to add another Pack Details?", vbYesNo, head) = vbYes Then
'                spdPO.MaxRows = spdPO.MaxRows + 1
'                r1 = spdPO.MaxRows
'                .SetText P_SIZEININCH, r1, Val(GetText(SpdOrdDetail, eORDDtls.E_SizeinInch, SpdOrdDetail.ActiveRow))
'                .SetText P_SIZEINCM, r1, Val(GetText(SpdOrdDetail, eORDDtls.E_SizeinCM, SpdOrdDetail.ActiveRow))
'                .SetText P_Product_code, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow))
'                .SetText P_ITEMNAME, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_Itemname, SpdOrdDetail.ActiveRow))
'                .SetText P_UOM, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_UOM, SpdOrdDetail.ActiveRow))
'                .SetText P_PDocSno, r1, Val(GetText(SpdOrdDetail, eORDDtls.E_DOCSNO, SpdOrdDetail.ActiveRow))
'                spdPO.Col = ePODtls.P_PACKNO
'                spdPO.SetFocus
            Else
            End If
        End If
    End If
    End If
End With

End If
End Sub

Private Sub SPDPO_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
If Opt = "add" Or Opt = "mod" Then
     If ((Col = ePODtls.P_PackPerQty) Or (Col = ePODtls.P_Looseqty)) Then
                spdPO.SetText ePODtls.P_Quantity, spdPO.ActiveRow, CStr(val(GetText(spdPO, ePODtls.P_PackPerQty, spdPO.ActiveRow)) - val(GetText(spdPO, ePODtls.P_Looseqty, spdPO.ActiveRow)))
     End If
End If






End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error Resume Next
  
    If Index = 18 Then

    Ptype = "C4"
    
'    If ptype = Left(txtfields(18).Text, 2) Then
'        Set Rs = New Recordset
'        Rs.Open "select * from fa_slmas where SLcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'    End If
'
'    If ptype <> Left(txtfields(18).Text, 2) And ptype <> "" Then
'        Set Rs = New Recordset
'        Rs.Open "select * from fa_slmas where SLcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'    End If
'
'     Set tmprst = New Recordset
'     tmprst.Open "Select pt_Broker from pp_divmas where divcode='" & divcode & "'", DB, adOpenStatic
'
'    If Rs.RecordCount > 0 Then
'        Text3.Text = Rs("slname")
'        txtfields(18).Text = Rs("SLCODE")
'    Else

             Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
          LookUp.Clear = True
          LookUp.query = "select slname""Agentname"",slcode""Code"",Country from fa_slmas where slcode like '" & bro & "'" '"
'          LookUp.query = "select Slname""Agentname"",Slcode""Code"" from fa_slmas where slcode like '" & tmprst("Pt_Broker") & "%'"
          LookUp.Caption = "Agent Listing"
          LookUp.DefCol = "Agentname"
          LookUp.ALIGN = "4500,1500,2000"
          LookUp.Show vbModal
          If LookUp.Cancel = False Then
            txtfields(18).Text = LookUp.Fields(1)
            Text3.Text = LookUp.Fields(0)
           ' txtFields(3).SetFocus
            
            LookUp.Clear = True
           
          Else

            txtfields(18).Text = ""
            Text3.Text = ""
            txtfields(3).SetFocus
            Exit Sub
         End If
        stbar.Panels(2).Text = "Select Agent Name from the List"
    'End If
End If

End Sub

Private Sub SpdOrdDetail_BeforeEditMode(ByVal Col As Long, ByVal Row As Long, ByVal UserAction As FPSpreadADO.BeforeEditModeActionConstants, CursorPos As Variant, Cancel As Variant)

    If SpdOrdDetail.ActiveCol = E_UOM Then
        If Trim(GetText(SpdOrdDetail, eORDDtls.E_ItemDesc, SpdOrdDetail.ActiveRow)) = "" Then
        SpdOrdDetail.Col = E_ItemDesc
            SpdOrdDetail.SetFocus
            Exit Sub
        End If
    End If
    
End Sub

Private Sub SpdOrdDetail_Change(ByVal Col As Long, ByVal Row As Long)
If Col = E_Quantity Then
   lQtyChange = True
   Call TotalCal
End If
If Col = E_InvQty Then
 
   Call TotalCal
End If

End Sub

Private Sub SpdOrdDetail_DblClick(ByVal Col As Long, ByVal Row As Long)
If Col = E_ItemDesc Or Col = E_Product_code Then
    If Opt = "add" Or Opt = "mod" Then
        If SpdOrdDetail.MaxRows > 1 Then
            If MsgBox("Are You Sure You want to Delete this Record ?", vbYesNo, head) = vbYes Then
                SpdOrdDetail.DeleteRows SpdOrdDetail.ActiveRow, 1
                SpdOrdDetail.MaxRows = SpdOrdDetail.MaxRows - 1
                tmp = Opt
                Opt = ""
                With SpdOrdDetail
                    For nRow = 1 To .MaxRows
                        .Row = nRow
                       ' .SetText E_DOCSNO, .Row, nRow
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

Private Sub SpdOrdDetail_EditError(ByVal Col As Long, ByVal Row As Long, ByVal EditError As Integer)
EditError = 0
End Sub

Private Sub SpdOrdDetail_GotFocus()
lQtyChange = False
End Sub

Private Sub SpdOrdDetail_KeyDown(KeyCode As Integer, Shift As Integer)
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
       
        With SpdOrdDetail
            If .ActiveCol = eORDDtls.E_packTypedec And KeyCode = 9 Then
                   Set NEWRSs = New Recordset
                    NEWRSs.Open "Select Distinct pack_type,Description From ig_PackType Where  Description = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_packTypedec, SpdOrdDetail.ActiveRow)) & "' and pack_type = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_UOM, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
                    If NEWRSs.RecordCount > 0 Then
                        .SetText eORDDtls.E_UOM, .ActiveRow, NEWRSs("pack_type")
                    Else
                        LookUp.Clear = True
                       LookUp.query = "Select pack_type Pack_Type,Description 'Pack Type description'  From ig_PackType"
                  
                        LookUp.Caption = "UOM Listing"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,4500"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            .SetText eORDDtls.E_UOM, .ActiveRow, LookUp.Fields(0)
                            .SetText eORDDtls.E_packTypedec, .ActiveRow, CStr(LookUp.Fields(1))
                             .Col = E_Quantity
                            Cancel = True
                        Else
                            .SetText eORDDtls.E_UOM, .ActiveRow, ""
                           .SetText eORDDtls.E_packTypedec, .ActiveRow, ""
                            .Col = E_packTypedec
                            Cancel = True
                            Exit Sub
                        End If
                    End If
'                    Set rsNew = New Recordset
'                    rsNew.Open "select UNITCODE ""Code"" ,UNITNAME ""Description"" from IN_UNIT where UNITCODE='" & Trim(GetText(SpdOrdDetail, eORDDtls.E_UOM, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic
'                    If Not rsNew.EOF Then
'
'                        .SetText eORDDtls.E_UOM, .ActiveRow, rsNew(0)
'                    Else
'                        LookUp.clear = True
'                        LookUp.query = "select UNITCODE ""Code"" ,UNITNAME ""Description"" from IN_UNIT "
'                        LookUp.Caption = "UOM List"
'                        LookUp.ALIGN = "2000,3500"
'                        LookUp.DefCol = "BF"
'                        LookUp.Show vbModal
'                        If LookUp.Cancel = False Then
'                             .SetText eORDDtls.E_UOM, .ActiveRow, LookUp.Fields(0)
''                            '.SetText eORDDtls.C_packTypedec, .ActiveRow, LookUp.Fields(1)
'                            LookUp.clear = True
'                        Else
'                            LookUp.clear = True
'                            Cancel = True
'                        End If
'                     End If

             
             End If
             
            If .ActiveCol = eORDDtls.E_Product_code And KeyCode = 9 Then
                   Set NEWRSs = New Recordset

                    NEWRSs.Open "select Product_ID,Product_Name 'Product Name',HSN from (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where divcode='" & Divcode & "' )c where  c.product_name = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_ItemDesc, SpdOrdDetail.ActiveRow)) & "' and c.Product_ID = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
                    
                    If NEWRSs.RecordCount > 0 Then
                        .SetText eORDDtls.E_ItemDesc, .ActiveRow, NEWRSs("Product Name")
                        .SetText eORDDtls.E_Itemname, .ActiveRow, NEWRSs("Product Name")
                        .SetText eORDDtls.E_HSN, .ActiveRow, NEWRSs("HSN")
 
                        .Col = E_SIZEINCM
                        .SetFocus
                    Else
                    
                        nBPSNO = "''"
                        For nRow1 = 1 To SpdOrdDetail.MaxRows
                            SpdOrdDetail.Row = nRow1
                            If Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, nRow1)) <> "" Then
                                nBPSNO = nBPSNO + "," + Trim(GetText(SpdOrdDetail, E_Product_code, nRow1))
                            End If
                        Next
                    
                        LookUp.Clear = True
                        LookUp.query = "select Product_ID,Product_Name 'Product Name',HSN,Type from (select varcode Product_ID,Varname Product_Name,HSN,'R' Type from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN,'W' Type from IG_RPRODUCT where  divcode='" & Divcode & "' )c where  convert(varchar,c.Product_ID) not in (select items from dbo.split('" & nBPSNO & "',','))"
                        LookUp.Caption = "Product Listing"
                        LookUp.DefCol = "Product Name"
                        LookUp.ALIGN = "1500,4500"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            If CStr(Trim(LookUp.Fields("HSN"))) = "" Then
                                MsgBox "HSN Cannot be empty", vbInformation, head
                                Exit Sub
                            End If
                            
                 
                             .SetText E_ProductType, .ActiveRow, CStr(Trim(LookUp.Fields("Type")))
                            .SetText E_Product_code, .ActiveRow, CStr(Trim(LookUp.Fields(0)))
                            .SetText eORDDtls.E_Itemname, .ActiveRow, Replace(CStr(Trim(LookUp.Fields(1))), "-", "")
                            .SetText eORDDtls.E_ItemDesc, .ActiveRow, Replace(CStr(Trim(LookUp.Fields(1))), "-", "")
                            .SetText eORDDtls.E_HSN, .ActiveRow, CStr(Trim(LookUp.Fields("HSN")))
                            
                            Set Rs = New Recordset
                            Rs.Open "select Product_ID,Product_Name 'Product Name',HSN from (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where  divcode='" & Divcode & "' )c where Product_ID='" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow)) & "'  ", DB
                            If Not Rs.EOF Then
                                .SetText eORDDtls.E_Itemname, .ActiveRow, Replace(Replace(CStr(Trim(Rs(1))), "-", ""), "%", "")
                                .SetText eORDDtls.E_ItemDesc, .ActiveRow, Replace(Replace(CStr(Trim(Rs(1))), "-", ""), "%", "")
                            End If
                            
                            '.SetText eORDDtls.E_PSNO, .ActiveRow, CStr(Trim(LookUp.Fields("PSNO")))
                           ' .SetText eORDDtls.E_ORDBalQty, .ActiveRow, CStr(Trim(LookUp.Fields("Balance_Kgs")))
                         
'                            .SetText eORDDtls.E_Rate, .ActiveRow, CStr(Trim(LookUp.Fields("Rate")))
'                            .SetText eORDDtls.E_Tax_Code, .ActiveRow, CStr(Trim(LookUp.Fields("GST")))
'                            .SetText eORDDtls.E_UOM, .ActiveRow, CStr(Trim(LookUp.Fields("UOM")))
                           ' .SetText eORDDtls.E_FreightAmt, .ActiveRow, CStr(Trim(LookUp.Fields("Freight Amt")))
      
'                            Set NEWRSs = New Recordset
'                            NEWRSs.Open "select  Tax_Code, Description,St_Per 'GST %' from ig_tax Where Tax_Code = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Tax_Code, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
'                            If NEWRSs.RecordCount > 0 Then
'                                .SetText eORDDtls.E_Tax_Code, .ActiveRow, NEWRSs("Tax_Code")
'                                      If IGSTFLG = "Y" Then
'                                           SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(NEWRSs(2) / 2, "0.00")
'                                           SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, Format(NEWRSs(2) / 2, "0.00")
'                                           SpdOrdDetail.SetText E_ICGSTPer, .ActiveRow, Format(0, "0.00")
'                                           SpdOrdDetail.SetText E_ICGSTAmt, .ActiveRow, Format(0, "0.00")
'
'                                        Else
'                                           SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(NEWRSs(2), "0.00")
'                                           SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, Format(0, "0.00")
'                                           SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(0, "0.00")
'                                        End If
'                            End If
'
      
      
'                            .Col = E_SizeinCM
'                            .SetFocus
                            Exit Sub
                        Else
                            .SetText eORDDtls.E_Product_code, .ActiveRow, ""
                            .SetText eORDDtls.E_Itemname, .ActiveRow, ""
                            .Col = E_Product_code
                            Cancel = True
                            Exit Sub
                        End If
                    End If
             
             End If
             
             If .ActiveCol = eORDDtls.E_Tax_Code And KeyCode = 9 Then
                   Set NEWRSs = New Recordset
                    NEWRSs.Open "select  Tax_Code, Description,St_Per 'GST %' from ig_tax Where Tax_Code = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Tax_Code, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
                    If NEWRSs.RecordCount > 0 Then
                        .SetText eORDDtls.E_Tax_Code, .ActiveRow, NEWRSs("Tax_Code")
                              If IGSTFLG = "Y" Then
                                   SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(NEWRSs(2) / 2, "0.00")
                                   SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, Format(NEWRSs(2) / 2, "0.00")
                                   SpdOrdDetail.SetText E_ICGSTPer, .ActiveRow, Format(0, "0.00")
                                   SpdOrdDetail.SetText E_ICGSTAmt, .ActiveRow, Format(0, "0.00")
                                
                                Else
                                   SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(NEWRSs(2), "0.00")
                                   SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, Format(0, "0.00")
                                   SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(0, "0.00")
                                End If
                        
                    Else
                        LookUp.Clear = True
                       LookUp.query = "select  Tax_Code, Description,St_Per 'GST %' from ig_tax"

                        LookUp.Caption = "GST Listing"
                        LookUp.DefCol = "Description"
                        LookUp.ALIGN = "1500,4500"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            SetSpreadCol SpdOrdDetail, E_Tax_Code, "GST Code", CellTypeStaticText, 8, , False, False
                            SpdOrdDetail.SetText eORDDtls.E_Tax_Code, .ActiveRow, CStr(LookUp.Fields(0))
                                If IGSTFLG = "Y" Then
                                   SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, CStr(LookUp.Fields(2) / 2)
                                   SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, CStr(LookUp.Fields(2) / 2)
                                   SpdOrdDetail.SetText E_ICGSTPer, .ActiveRow, Format(0, "0.00")
                                   SpdOrdDetail.SetText E_ICGSTAmt, .ActiveRow, Format(0, "0.00")
                                
                                Else
                                   SpdOrdDetail.SetText E_ICGSTPer, .ActiveRow, CStr(LookUp.Fields(2))
                                   SpdOrdDetail.SetText E_SCGSTPer, .ActiveRow, Format(0, "0.00")
                                   SpdOrdDetail.SetText E_CCGSTPer, .ActiveRow, Format(0, "0.00")
                                End If
                            
                             SetSpreadCol SpdOrdDetail, E_Tax_Code, "GST Code", CellTypeEdit, 8, , False, False
                            Call TotalCal
                            
                        Else
                            .SetText eORDDtls.E_Tax_Code, .ActiveRow, ""
                           ' .SetText eORDDtls.C_packType, .ActiveRow, ""
                            .Col = E_Tax_Code
                            Cancel = True
                            Exit Sub
                        End If
                    End If
             
             End If
             
             
'            If ((.ActiveCol = eORDDtls.E_Quantity)) And KeyCode = 9 Then
'                If val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) > val(GetText(SpdOrdDetail, eORDDtls.E_ORDBalQty, SpdOrdDetail.ActiveRow)) Then
'                    MsgBox "Order Quantity Cannot be greater than Balance Quantity", vbInformation, head
'                    'SpdOrdDetail.SetText eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow, CStr(Val(GetText(SpdOrdDetail, eORDDtls.E_ORDBalQty, SpdOrdDetail.ActiveRow)))
'                     SpdOrdDetail.Col = E_Quantity
'                     SpdOrdDetail.SetFocus
'                     Cancel = True
'
'                    Exit Sub
'                End If
'
'                '.SetText eORDDtls.E_Quantity, .ActiveRow, CStr(Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow)) - Val(GetText(SpdOrdDetail, eORDDtls.E_ExPcs, SpdOrdDetail.ActiveRow)))
'                'SpdOrdDetail.SetText eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow, CStr((Val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) / Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow))) + Val(GetText(SpdOrdDetail, eORDDtls.E_ExPcs, SpdOrdDetail.ActiveRow)))
'            End If
            If ((.ActiveCol = eORDDtls.E_TotPacks)) And KeyCode = 9 And Opt = "add" Then
            If val(GetText(SpdOrdDetail, eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow)) = 0 Then
                  SpdOrdDetail.Col = E_TotPacks
                Cancel = True
                Exit Sub
            End If
            
            Exit Sub
                Frame8.Visible = True
                Frame8.ZOrder
                Call SpreadAlignPO(0)
                spdPO.ScrollBarShowMax = True
                spdPO.ScrollBars = ScrollBarsBoth
                'spdPO.MaxRows = spdPO.MaxRows + 1
                
'
'       ' Call SetHead
'        Set Rs = New Recordset
'        Rs.Open "SELECT DivCode,DocNo,DocDate,DocSno,PDocSno,Product_code,SizeInInch,SizeinCM,uom,PackPerQty,Looseqty,Quantity,Pack_NO,Rate,Value,IPADD from RM_TMPConeReceiptPack where IPADD ='" & LocalIPAdd & "' and Docdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and DOCNO='" & Val(txtfields(2).Text) & "' and PDocSno='" & Val(GetText(SpdOrdDetail, eORDDtls.E_DOCSNO, SpdOrdDetail.ActiveRow)) & "' and SizeinCM='" & Val(GetText(SpdOrdDetail, eORDDtls.E_SizeinCM, SpdOrdDetail.ActiveRow)) & "' AND  SizeInInch='" & Val(GetText(SpdOrdDetail, eORDDtls.E_SizeinInch, SpdOrdDetail.ActiveRow)) & "' and divcode='" & divcode & "' AND Product_code='" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow)) & "'", DB, adOpenStatic
'         r1 = 0
'          With spdPO
'          If Not Rs.EOF Then
'            For i = 0 To Rs.RecordCount
'             If Not Rs.EOF Then
'                r1 = r1 + 1
'                .MaxRows = r1
'                   '  pcode = pcode & ",'" & Rs.Fields("PLCode") & "'"
'                    .SetText P_SIZEININCH, r1, Rs.Fields("SizeInInch")
'                    .SetText P_SIZEINCM, r1, Rs.Fields("SizeinCM")
'                    .SetText P_Product_code, r1, Rs.Fields("Product_code")
'                    .SetText P_ITEMNAME, r1, Rs.Fields("Product_code")
'                    .SetText P_UOM, r1, Rs.Fields("uom")
'                    .SetText P_PACKNO, r1, Rs.Fields("Pack_NO")
'                    .SetText P_PackPerQty, r1, Rs.Fields("PackPerQty")
'                    .SetText P_Looseqty, r1, Rs.Fields("Looseqty")
'                    .SetText P_Quantity, r1, Rs.Fields("Quantity")
'                    .SetText P_Rate, r1, Rs.Fields("Rate")
''                    .SetText P_Value, r1, rs.Fields("NOOFBALE")
'                    .SetText P_PDocSno, r1, Rs.Fields("PDocSno")
'               Rs.MoveNext
'               End If
'             Next
'        Else
'                    r1 = r1 + 1
'                    .MaxRows = r1
'                    .SetText P_SIZEININCH, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_SizeinInch, SpdOrdDetail.ActiveRow))
'                    .SetText P_SIZEINCM, r1, CStr(Trim(GetText(SpdOrdDetail, eORDDtls.E_SizeinCM, SpdOrdDetail.ActiveRow)))
'                    .SetText P_Product_code, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow))
'                    .SetText P_ITEMNAME, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_Itemname, SpdOrdDetail.ActiveRow))
'                    .SetText P_UOM, r1, Trim(GetText(SpdOrdDetail, eORDDtls.E_UOM, SpdOrdDetail.ActiveRow))
'                    .SetText P_Rate, r1, Val(GetText(SpdOrdDetail, eORDDtls.E_Rate, SpdOrdDetail.ActiveRow))
'
''                    .SetText P_PACKNO, r1, rs.Fields("Pack_NO")
''                    .SetText P_PackPerQty, r1, rs.Fields("PackPerQty")
''                    .SetText P_Looseqty, r1, rs.Fields("Looseqty")
''                    .SetText P_Quantity, r1, rs.Fields("Quantity")
'                    .SetText P_PDocSno, r1, Val(GetText(SpdOrdDetail, eORDDtls.E_DOCSNO, SpdOrdDetail.ActiveRow))
'        End If
'
'      '  spdPO.MaxRows = spdPO.MaxRows + 1
'      End With
      spdPO.Col = P_PACKNO
        spdPO.SetFocus
        Exit Sub
                
                
                
            End If
            
        End With
        
    End If
    
    
    
                If KeyCode = vbKeyF5 Then
                    
                    
                    End If
    
    
    If KeyCode = 13 Or KeyCode = vbKeyTab Then
    
         If SpdOrdDetail.ActiveCol = E_Remarks Then
        ' SSTab1.Tab = 1
             If KeyCode = vbKeyTab Then
        
            If MsgBox("Do you want to add another Product Details?", vbYesNo, head) = vbYes Then
                SpdOrdDetail.MaxRows = SpdOrdDetail.MaxRows + 1
                SpdOrdDetail.SetText eORDDtls.E_DOCSNO, SpdOrdDetail.MaxRows, CStr(SpdOrdDetail.MaxRows)
                SpdOrdDetail.Col = eORDDtls.E_ItemDesc
                SpdOrdDetail.SetFocus
            Else
            End If
      
    End If
        
        
        
         
         End If
   
     End If
      
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : SpdOrdDetail_KeyDown " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub


Public Sub bindcontls()
    On Error Resume Next
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        Set oText.DataSource = adoPrimaryRS
    Next

    If Opt = "add" Then
        MaskEdBox1(0).Text = Format(Date, "dd/MM/yyyy")
    End If
    
    Set MaskEdBox1(0).DataSource = adoPrimaryRS
   
    Set MaskEdBox1(2).DataSource = adoPrimaryRS
    

End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo Errh

    For Each oText In Me.txtfields
        oText.Locked = True
    Next
    Text2.Locked = True
    MaskEdBox1(0).Enabled = False
    DTPicker1.Enabled = False

    'txtFields(9).Locked = True
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : disablcontls " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo Errh

    For Each oText In Me.txtfields
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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : ENABLCONTLS " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
    
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
        If val(txtfields(2)) = 0 Then
            If MaskEdBox1(0).Text = "__/__/____" Then
                MaskEdBox1(0) = Format(pdate, "dd/MM/yyyy")
            End If
        End If
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
    
End Sub
Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
    
        Select Case Index
            Case 0
                MaskEdBox1(Index).BackColor = &H80000005
                stbar.Panels(2).Text = ""
            Case 2
'            If MaskEdBox1(2).Text = "__/__/____" Then
'            MaskEdBox1(2).SetFocus
'            Exit Sub
'            End If
            
              ' MaskEdBox1(3).SetFocus
               'Exit Sub
            Case 3
'                If MaskEdBox1(3).Text = "__/__/____" Then
'                MaskEdBox1(3).SetFocus
'                Exit Sub
'                End If
            
              ' txtfields(10).SetFocus
              ' Exit Sub
          Case 1
'             If MaskEdBox1(1).Text = "__/__/____" Then
''                MaskEdBox1(1).SetFocus
''                Exit Sub
''                End If
            
'               SpdOrdDetail.Col = E_ItemDesc
'               SpdOrdDetail.SetFocus
               Exit Sub
               
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
   If Index = 2 Then
        If MaskEdBox1(2).Enabled Then
            If Not (IsDate(MaskEdBox1(2).Text)) Then
                MsgBox "Please Enter Reference Date", vbInformation, head
                MaskEdBox1(2).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(2).Text) > pdate Then
                MsgBox "Reference Date must be Less than or equal to processing date", vbInformation, head
                MaskEdBox1(2).SetFocus
                MaskEdBox1(2).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If
    If Index = 3 Then
        If MaskEdBox1(3).Enabled Then
            If Not (IsDate(MaskEdBox1(3).Text)) Then
                MsgBox "Please Enter valid Date", vbInformation, head
                MaskEdBox1(3).SetFocus
                Exit Sub
            ElseIf CDate(MaskEdBox1(3).Text) < pdate Then
                MsgBox "Delivery Date must be Greater than or equal to processing date", vbInformation, head
                MaskEdBox1(3).SetFocus
                MaskEdBox1(3).Text = Format(pdate, "dd/MM/yyyy")
                Exit Sub
            End If
        End If
    End If
    
End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_LostFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
    
End Sub

Private Sub MaskEdBox1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

If Opt = "add" And Index = 0 Then
    stbar.Panels(2).Text = "Select the Date"
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : MaskEdBox1_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub


Private Sub SpdOrdDetail_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
'nAmount = 0
'Dim PenQty1 As Double
If Opt = "add" Or Opt = "mod" Then

' If (Col = eORDDtls.E_SizeinInch) Then
' SpdOrdDetail.SetText eORDDtls.E_SizeinCM, SpdOrdDetail.ActiveRow, Val(GetText(SpdOrdDetail, eORDDtls.E_SizeinInch, SpdOrdDetail.ActiveRow)) * 2.54
' End If
    
    
'    If Col = eORDDtls.E_Quantity And Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow)) > 0 Then
'           ' SpdOrdDetail.SetText eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow, CStr((Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow)) * Val(GetText(SpdOrdDetail, eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow))) + Val(GetText(SpdOrdDetail, eORDDtls.E_ExPcs, SpdOrdDetail.ActiveRow)))
'            SpdOrdDetail.SetText eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow, CStr((Val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) / Val(GetText(SpdOrdDetail, eORDDtls.E_PackPer, SpdOrdDetail.ActiveRow))) + Val(GetText(SpdOrdDetail, eORDDtls.E_ExPcs, SpdOrdDetail.ActiveRow)))
'    End If
'    If (Col = eORDDtls.E_Quantity) Then
'        If val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) > val(GetText(SpdOrdDetail, eORDDtls.E_ORDBalQty, SpdOrdDetail.ActiveRow)) Then
'              '  MsgBox "Order Quantity Cannot be greater than Balance Quantity", vbInformation, head
'                SpdOrdDetail.SetText eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow, CStr(val(GetText(SpdOrdDetail, eORDDtls.E_ORDBalQty, SpdOrdDetail.ActiveRow)))
'                Exit Sub
'        End If
'    End If
    
    If Col = E_Quantity Or Col = E_TCSper Or Col = E_Rate Or Col = E_MixRate Or Col = E_Discrate Or Col = E_DiscValue Then
       Call TotalCal
    End If
    
    If val(GetText(SpdOrdDetail, eORDDtls.E_TotPacks, SpdOrdDetail.ActiveRow)) = 0 And Col = eORDDtls.E_TotPacks Then
                  SpdOrdDetail.Col = E_TotPacks
                Cancel = True
                Exit Sub
    End If
      If val(GetText(SpdOrdDetail, eORDDtls.E_Quantity, SpdOrdDetail.ActiveRow)) = 0 And Col = eORDDtls.E_Quantity Then
                  SpdOrdDetail.Col = E_Quantity
                Cancel = True
                Exit Sub
    End If
    If Trim(GetText(SpdOrdDetail, eORDDtls.E_ItemDesc, SpdOrdDetail.ActiveRow)) = "" And (Col = eORDDtls.E_UOM Or Col = eORDDtls.E_ItemDesc) Then
        SpdOrdDetail.Col = E_ItemDesc
           Cancel = True
            Exit Sub
    End If
    
'    If Col = E_Itemname Then
'
'        Set NEWRSs = New Recordset
'        NEWRSs.Open "Select Distinct Product_code,Description From IG_PRODUCT Where Product_code = '" & Trim(GetText(SpdOrdDetail, eORDDtls.E_Product_code, SpdOrdDetail.ActiveRow)) & "' ", DB, adOpenStatic, adLockReadOnly
'        If NEWRSs.RecordCount > 0 Then
'                SpdOrdDetail.SetText eORDDtls.E_ItemDesc, SpdOrdDetail.ActiveRow, Left(Trim(NEWRSs("Description")), 10)
'                SpdOrdDetail.SetText eORDDtls.E_Itemname, SpdOrdDetail.ActiveRow, Left(Trim(NEWRSs("Description")), 10)
'                SpdOrdDetail.Col = E_UOM
'               ' SpdOrdDetail.SetFocus
'                Exit Sub
'
'        End If
'    End If
End If
    
'
'    If Col = E_Quantity Or Col = E_PackPer Then
'     If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > 0 Then
'        ' =========================
'        ' Balance Qty verification
'        ' =========================
'
'
'    Set rstSLOTNO = New Recordset
'    rstSLOTNO.Open "Select * from rm_cont Where Contno = '" & Val(GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow)) & "' and Contdt = '" & Format((GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow)), "YYYY-MM-DD") & "' AND Supcd = '" & Trim(txtfields(7).Text) & "'", DB, adOpenStatic
'    If rstSLOTNO.EOF = False Then
'        If rstSLOTNO!Prefix = "C" Then
'            Set RsH = New Recordset
'            RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
'            ARRIVALTYPE = "P"
'            If RsH.RecordCount > 0 Then
'                ARRIVALTYPE = RsH("ARRIVALTYPE")
'            End If
'
'            If Col = IBalQty And ARRIVALTYPE = "P" Then
'                    a = IContno
'                    B = IContdt
'                    c = IProduct_code
'                    Set rsg = New Recordset
'                    rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
'
'                    If Opt = "mod" Then
'                        Set rsbal = New Recordset
'                        rsbal.Open "select quantity from rm_arrival where arrno=" & txtfields(0) & " and arrdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'", DB, adOpenStatic
'                        bal = rsbal("quantity")
'                    End If
'                    If rsg.RecordCount <> 0 Then
'                    bal = bal + Val(rsg(0))
'                    End If
'                    d = IBalQty
'                    If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > bal Then
'                        SpdOrdDetail.SetText E_PackPer, Row, bal
'                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
'                        ''spdVar.SetActiveCell Ibalqty, row
'                        Exit Sub
'                    End If
'            End If
'
'            If Col = IPackPerQty And ARRIVALTYPE = "K" Then
'                    a = IContno
'                    B = IContdt
'                    c = IProduct_code
'                    Set rsg = New Recordset
'                    If globalarrivalorder = "C" Then
'                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
'                    Else
'                        rsg.Open "select (ordKGS -  isnull(rCDKGS,0)) as bal from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'                    End If
'                    bal = 0
'                    If Opt = "mod" Then
'                        Set rsbal = New Recordset
'                        rsbal.Open "select PackPerQty from RM_JobOrderDT where docno=" & txtfields(0) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & GetText(SpdOrdDetail, E_HSN, SpdOrdDetail.ActiveRow) & "'", DB, adOpenStatic
'                        bal = rsbal("PackPerQty")
'                    End If
'                    d = IPackPerQty
'                    bal = bal + rsg(0)
'                    If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > bal Then
'                        SpdOrdDetail.SetText E_PackPer, Row, bal
'                        MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
'        '                spdVar.SetActiveCell Ibalqty, Row
'                        Exit Sub
'                    End If
'            End If
'
'    Else
'    If globalarrivalorder = "C" Then
'        Set RsH = New Recordset
'        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
'    Else
'        Set RsH = New Recordset
'        RsH.Open "select ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE,prefix from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'    End If
'
'    ARRIVALTYPE = "P"
'    If RsH.RecordCount > 0 Then
'        ARRIVALTYPE = RsH("ARRIVALTYPE")
'    End If
'
'       If Col = E_Quantity And ARRIVALTYPE = "P" Then
'            a = IContno
'            B = IContdt
'            c = IProduct_code
'            Set rsg = New Recordset
'            If globalarrivalorder = "C" Then
'                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
'            Else
'                rsg.Open "select (ordqty - (isnull(cancelbales,0) + isnull(recqty,0))) as bal from rm_cont where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'            End If
'
'            If Opt = "mod" Then
'                Set rsbal = New Recordset
'                rsbal.Open "select quantity from RM_JobOrderDT where docno=" & txtfields(2) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'                bal = rsbal("quantity")
'            End If
'            If rsg.RecordCount <> 0 Then
'            bal = bal + Val(rsg(0))
'            End If
'            d = IBalQty
'            If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > bal Then
'                SpdOrdDetail.SetText E_PackPer, Row, bal
'                MsgBox "Arrival Quantity must be less than Balance Quantity", vbInformation, head
'                ''spdVar.SetActiveCell Ibalqty, row
'                Exit Sub
'            End If
'        End If
'
'    If Col = E_PackPer And ARRIVALTYPE = "K" Then
'            a = IContno
'            B = IContdt
'            c = IProduct_code
'            Dim V_WtToleranceper As Integer
'
'            Set rsg = New Recordset
'            Set rsgcont = New Recordset
'
'            If globalarrivalorder = "C" Then
'                rsg.Open "select  (ordKGS -  (isnull(drCDKGS,0)+isnull(cancelkgs,0))) as bal,isnull(ORDKGS,0)ORDKGS,isnull(dRcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
'                     " from rm_cont " & _
'                     " where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "'" & _
'                     " and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "'" & _
'                     " and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
'
'            rsgcont.Open "select  (ordKGS -  (isnull(rCDKGS,0)+isnull(cancelkgs,0))) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0)RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
'                     " from rm_cont " & _
'                     " where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "'" & _
'                     " and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "'" & _
'                     " and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
'
'            Else
'
'                rsg.Open "select  (ordKGS -  isnull(drCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(dRcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
'                         " from rm_cont " & _
'                         " where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "'" & _
'                         " and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "'" & _
'                         " and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'" & _
'                         " and divcode='" & Divcode & "'", DB, adOpenStatic
'                rsgcont.Open "select  (ordKGS -  isnull(rCDKGS,0)-isnull(cancelkgs,0)) as bal,isnull(ORDKGS,0)ORDKGS,isnull(RcdKgs,0) RcdKgs ,isnull(cancelkgs,0) Cancelkg " & _
'                         " from rm_cont " & _
'                         " where Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "'" & _
'                         " and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "'" & _
'                         " and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "'" & _
'                         " and divcode='" & Divcode & "'", DB, adOpenStatic
'
'            End If
'            bal = 0
'            If Opt = "mod" Then
'                Set rsbal = New Recordset
'                rsbal.Open "select PackPerQty from RM_JobOrderDT where docno=" & txtfields(2) & " and docdate='" & Format(MaskEdBox1(0), "yyyy-mm-dd") & "' and  Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' and contno='" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & "' and contdt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-mm-dd") & "' and divcode='" & GetText(SpdOrdDetail, E_HSN, SpdOrdDetail.ActiveRow) & "'", DB, adOpenStatic
'                bal = rsbal("PackPerQty")
'            End If
'
'            Set rsa = New Recordset
'            rsa.Open "select POWtTolerance from rm_param ", DB, adOpenStatic
'            If Not rsa.EOF > 0 Then
'                V_WtToleranceper = Val(NULLCHECK(rsa("POWtTolerance")))
'            Else
'                V_WtToleranceper = 0
'            End If
'            d = IPackPerQty
'            bal = 0
'            bal1 = 0
'            ''bal = bal + rsg(0)
'            bal = bal + Round((Val(NULLCHECK(rsg("ORDKGS"))) + ((Val(NULLCHECK(rsg("ORDKGS"))) - Val(NULLCHECK(rsg("Cancelkg")))) * V_WtToleranceper / 100)) - (Val(NULLCHECK(rsg("RcdKgs"))) + Val(NULLCHECK(rsg("Cancelkg")))), 2)
'
'            bal1 = bal1 + Round((Val(NULLCHECK(rsgcont("ORDKGS"))) + ((Val(NULLCHECK(rsgcont("ORDKGS"))) - Val(NULLCHECK(rsgcont("Cancelkg")))) * V_WtToleranceper / 100)) - (Val(NULLCHECK(rsgcont("RcdKgs"))) + Val(NULLCHECK(rsgcont("Cancelkg")))), 2)
'
'             If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > bal1 Then
'                SpdOrdDetail.SetText E_PackPer, Row, bal1
'                MsgBox "Quantity must be less than Balance Quantity", vbInformation, head
''                spdVar.SetActiveCell Ibalqty, Row
'                Exit Sub
'            End If
'
'
'            If Val(GetText(SpdOrdDetail, E_PackPer, SpdOrdDetail.ActiveRow)) > bal Then
'                SpdOrdDetail.SetText E_PackPer, Row, bal
'                MsgBox "Quantity must be less than Balance Quantity", vbInformation, head
''                spdVar.SetActiveCell Ibalqty, Row
'                Exit Sub
'            End If
'    End If
'    End If
'    End If
''    If Col = IQuantity And spdVar.MaxRows = spdVar.ActiveRow Then
''        BUTTON(9).SetFocus
''        Exit Sub
''    End If
'
'
'
'    Exit Sub
'
'
'        Set rss = New Recordset
'        rss.Open " SELECT ISNULL(qtyind,0)-ISNULL(qtyord,0) BALQTY,ISNULL(qtyindKG,0)-ISNULL(qtyordKG,0) As PenLCQty, qtyordKG  OrderQty FROM Rm_PRL " & _
'                 " WHERE Divcode='" & Divcode & "'" & _
'                 " And PRNo='" & Val(GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow)) & "'" & _
'                 " And PRDATE='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "yyyy-MM-dd") & "'" & _
'                 " And PRSno='" & Val(GetText(SpdOrdDetail, E_ProductType, SpdOrdDetail.ActiveRow)) & "'" & _
'                 " And Product_code='" & Trim(GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow)) & "'", DB
'
'        Dim NewPenQty, RecQty As Double
'
'        If Opt = "mod" Then
'            Set RsBalQty = New Recordset
'            RsBalQty.Open "Select Sum(Quantity) As Qty From RM_JobOrderDT WHERE Divcode='" & Divcode & "'  And   PRNo=" & GetText(SpdOrdDetail, E_SizeinInch, SpdOrdDetail.ActiveRow) & " AND PRDt='" & Format(GetText(SpdOrdDetail, E_SizeinCM, SpdOrdDetail.ActiveRow), "YYYY-MM-DD") & "' AND Product_code='" & GetText(SpdOrdDetail, E_Product_code, SpdOrdDetail.ActiveRow) & "' And PRSno=" & GetText(SpdOrdDetail, E_ProductType, SpdOrdDetail.ActiveRow) & " and Docdate between '" & Format(yfdate, "yyyy-mm-dd") & "' And '" & Format(yldate, "yyyy-mm-dd") & "' And docno Not in (" & Val(txtfields(2).Text) & ")", DB
'        End If
'
'        If rss.RecordCount > 0 Then
'            PenQty1 = rss(1)
'            NewPenQty = rss(1)
'
'            If Opt = "mod" Then
'                If RsBalQty.EOF = False Then
'                    PenQty1 = rss(1) - IIf(IsNull(RsBalQty(0)), 0, RsBalQty(0))
'                End If
'            End If
'
'        Else
'            PenQty1 = 0
'        End If
'
'        If Val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) > Val(PenQty1) Then
'            Cancel = True
'            Exit Sub
'        End If
'
'        If Val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.ActiveRow)) = 0 Then
'            Cancel = True
'            Exit Sub
'        End If
'
'
'        'Amount Calculation
'        'SpdOrdDetail.SetText E_InvQty, SpdOrdDetail.Row, Format(val(GetText(SpdOrdDetail, E_Quantity, SpdOrdDetail.Row)) * val(GetText(SpdOrdDetail, E_rate, SpdOrdDetail.Row)), "0.00")
'
'        'LC Value Calculation
'      '  SpdOrdDetail.SetText E_Value, SpdOrdDetail.Row, Format(val(GetText(SpdOrdDetail, E_InvQty, SpdOrdDetail.Row)) * val(txtfields(11).Text), "0.00")
'
'        nTotalAmt = 0
'        nQuantity = 0
'        tmp = Opt
'        Opt = ""
'        With SpdOrdDetail
'        For nRow = 1 To .MaxRows
'            .Row = nRow
'            If Val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
'               ' .SetText E_Value, .Row, Format(val(GetText(SpdOrdDetail, E_InvQty, nRow)) * val(txtfields(11).Text), "0.00")
'                nTotalAmt = nTotalAmt + Val(GetText(SpdOrdDetail, E_VALUE, nRow))
'                nQuantity = nQuantity + Val(GetText(SpdOrdDetail, E_Quantity, nRow))
'            End If
'        Next
'        End With
'        txtQty.Text = Format(nQuantity, "0.000")
''        If lQtyChange = True Then
'
'         '  txtfields(15).Text = Format(KSLRound(nTotalAmt, 0), "0.00")
'            txtfields(16).Text = Format(KSLRound((Val(txtfields(15).Text) / 100) * Val(txtfields(6).Text), 0), "0.00")
''        End If
'        Opt = tmp
'       End If
'    End If
'End If
End Sub

Private Sub spdPO_GotFocus()
spdPO.SetActiveCell P_Select, 1
End Sub

Private Sub Timer11_Timer()
Timer1.Interval = 500
If IsEmpty(nDispCount) = True Then
    nDispCount = 0
End If
If nDispCount = 0 Then
    txtfields(2).ForeColor = &H0&
    nDispCount = 1
ElseIf nDispCount = 1 Then
    txtfields(2).ForeColor = &H80FF&
    nDispCount = 0
End If
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Errh
Dim TypRs As Recordset
If Opt = "" Or Opt = "qry" Or Opt = " " Or Opt = "mod" Or Opt = "del" Then
Select Case Index

Case 19
   Set Rs = New Recordset
   Rs.Open "SELECT PayTerm_Code ,PayTerm_Desc FROM Ig_PayTerm where PayTerm_Code='" & txtfields(19).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(19).Text = Rs("PayTerm_Code")
         Text4.Text = Rs("PayTerm_Desc")
        
         Exit Sub
    Else
        Text4.Text = ""
    End If

Case 10

   If Trim(txtfields(10).Text) <> "" Then
    If Opt <> "add" And Opt <> "mod" Then
        Set NEWRS = New Recordset
        NEWRS.Open "select Distinct Type_code,TypName from po_type where type_code = '" & txtfields(10).Text & "'", DB, adOpenStatic, adLockReadOnly
        If NEWRS.RecordCount > 0 Then
            Text5.Text = NEWRS("typname")
            Else
            Text5.Text = ""
        End If
    End If
   End If


Case 5

    
        Set TypRs = New Recordset
        TypRs.Open "select carrier_code,name from ig_carrier where carrier_code='" & txtfields(5).Text & "'", DB
          If Not TypRs.EOF Then
            Text1.Text = TypRs("name")
        Else
            Text1.Text = ""
        End If
    
      Set TypRs = Nothing
 Case 13
'    Set TypeRs = New Recordset
'    TypeRs.Open "select  Godcode,Name from RM_godown where Divcode='" & divcode & "' and Godcode='" & txtfields(13).Text & "'", DB, adOpenStatic
'    If TypeRs.RecordCount > 0 Then
'
'            Text6.Text = TypeRs("Name")
'    End If
      
Case 14
'    Set TypRs = New Recordset
'    TypRs.Open "Select DCode,DName From IM_DlvTerm Where DCode='" & Trim(txtFields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
'    If Not TypRs.EOF Then
'        txtFields(10).Text = TypRs("DName")
'    Else
'        txtFields(10).Text = ""
'    End If
'    Set TypRs = Nothing
Case 23

    Set TypRs = New ADODB.Recordset
    TypRs.Open " select Area_Code,name Area_Name from ig_area where Area_Code = '" & Trim(txtfields(Index).Text) & "'", DB
    If TypRs.RecordCount > 0 Then
        txtfields(44).Text = TypRs!Area_Name
    Else
         txtfields(44).Text = ""
    End If
Case 18
    Set TypeRs = New Recordset
    TypeRs.Open "select slcode,slname from fa_slmas where slcode='" & txtfields(18).Text & "'", DB, adOpenStatic
    If TypeRs.RecordCount > 0 Then
            txtfields(18).Text = TypeRs("SLCODE")
            Text3.Text = TypeRs("SLNAME")
    End If
   
    
 
Case 7
    Set TypeRs = New Recordset
    TypeRs.Open "Select SlCode,SLName,City,isnull(GSTSTATECODE,'') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO from Fa_Slmas where SLCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic, adLockReadOnly
    If Not TypeRs.EOF Then
        Text2.Text = TypeRs(1) + ", " + IIf(IsNull(Trim(TypeRs(2))), "", Trim(TypeRs(2)))
        txtfields(1).Text = TypeRs("GSTSTATECODE")
        txtfields(4).Text = TypeRs("GSTINNO")
        
    Else
        Text2.Text = ""
    End If
    Set TypeRs = Nothing
Case 6
   ' txtfields(16).Text = Format((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), "0.00")
Case 33, 38
        Call TotalCal
'    nTotalAmt = 0
'    nQuantity = 0
'    tmp = Opt
'    Opt = ""
'    With SpdOrdDetail
'    For nRow = 1 To .MaxRows
'        .Row = nRow
'        If Val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
'            .SetText E_VALUE, .Row, Format(Val(GetText(SpdOrdDetail, E_InvQty, nRow)) * Val(txtfields(11).Text), "0.00")
'            nTotalAmt = nTotalAmt + Val(GetText(SpdOrdDetail, E_InvQty, nRow))
'            nQuantity = nQuantity + Val(GetText(SpdOrdDetail, E_Quantity, nRow))
'        End If
'    Next
'    End With
'    txtQty.Text = Format(nQuantity, "0.000")

  '  txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * val(txtfields(11).Text), "0.00")
  '  txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
    Opt = tmp

End Select
  

End If
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtfields_Change " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo Errh

    If Opt = "add" Then
        If Index = 7 Then
            If lSuppSel = True Then
                lSuppSel = False
                Exit Sub
            End If
        End If
    End If
    If Opt = "add" Or Opt = "mod" Then
        If Index <> 2 Or Index <> 9 Or Index <> 47 Then
            txtfields(Index).BackColor = &HC0FFC0
            stbar.Panels(2).Text = txtfields(Index).ToolTipText
        End If
    End If
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description    : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_GotFocus " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

On Error GoTo Errh

'//////////**************FOR ALL FIELD VALIDATION *****************/////////
'//////////**************FOR ALL FIELD VALIDATION *****************/////////

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
            Case 1 'LC Type
                ToAlphaNumber txtfields(Index), 5, KeyAscii
            Case 5 'Payment Type
                ToAlphaNumber txtfields(Index), 10, KeyAscii
            Case 6 'Margin Money
               ' ToQuantity txtfields(Index), 5, KeyAscii, 2
            Case 3 'Country of Shipment
              '  ToAlphaNumber txtFields(Index), 100, KeyAscii
'                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
'                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
'                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
'                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
'                     KeyAscii = 0
'                End If

                
            Case 8 'Delivery Schedule
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                    (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                     KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                     Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                     KeyAscii = 0
                End If
            
            Case 4 'Despatch Mode
                ToAlphaNumber txtfields(Index), 100, KeyAscii
            Case 8 'truck No
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                ToUpCase txtfields(Index), KeyAscii
            Case 9 'Currency
                ToAlphaNumber txtfields(Index), 3, KeyAscii
                
            Case 5 'Payment Term
                 ToAlphaNumber txtfields(Index), 10, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                           (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                            KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                             Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                            KeyAscii = 0
                 End If
            Case 7 ' Supplier Code Validation
                If txtfields(7).Text = "" Then
              '  Call ToAlpha(txtfields(Index), 7, KeyAscii)
            Else
                If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                       (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                        KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58)) Then
                        KeyAscii = 0
                End If
                If Len(txtfields(Index).Text) > 7 Then
                    KeyAscii = 0
                End If
            End If
            Case 10 'Delivery Term
                ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
           Case 11 'Conversion Rate
              '  ToQuantity txtfields(Index), 12, KeyAscii, 5
           Case 12 'Payment Term
                 ToAlphaNumber txtfields(Index), 100, KeyAscii
                 If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
                        (KeyAscii >= 97 And KeyAscii <= 122) Or KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 45 Or _
                         KeyAscii = 32 Or KeyAscii = 46 Or KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13 _
                         Or (KeyAscii >= 48 And KeyAscii <= 58) Or KeyAscii = 45 Or KeyAscii = 47) Then
                         KeyAscii = 0
                 End If
        End Select
    End If

    If Opt = "mod" Then
        txtfields(7).Enabled = False
    Else
        txtfields(7).Enabled = True
    End If
    
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : TXTFIELDS_KeyPress " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error Resume Next
If Not (txtfields(Index).Text = "") Then
    txtfields(Index).Text = UCase(txtfields(Index).Text)
End If

If Index = 3 Then
    If Opt = "add" Then
    
'
'          Set rsoc = New Recordset
'          rsoc.Open "select RefNo from RM_JobOrderHD where divcode='" & divcode & "' and RefNo='" & Trim(txtfields(3).Text) & "' ", DB, adOpenStatic
'          If Not rsoc.EOF Then
'            MsgBox "Oc No Cannot Be Repeat ", vbInformation, head
'            txtfields(3).Text = ""
'            txtfields(3).SetFocus
'            Cancel = True
'            Exit Sub
'
            
          
          
        '  DTPicker3.SetFocus
            
       ' End If
    End If
End If



If Index = 7 Then
    If Opt = "add" Or Opt = "mod" Then
        If Trim(txtfields(7).Text) <> "" Then
        On Error Resume Next
         '  spdPO.SetFocus
            Exit Sub
        End If
    End If
End If


If Opt = "add" Or Opt = "mod" Then
    If Index <> 2 Then
        txtfields(Index).BackColor = &H80000005
        stbar.Panels(2).Text = ""
    End If
End If

txtfields(Index).BackColor = &H80000005

End Sub
Public Sub query_mode(nDocNo As Long, dDocdate As Date)

Dim Rs As Recordset
On Error GoTo Errh
 SSTab1.Tab = 0
    If Not Opt = " " Then
        On Error GoTo ER1
        lQtyChange = False
        txtfields(0).Text = Divcode
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
            Call fnd1(nDocNo, dDocdate)
        End If
        If adoPrimaryRS.RecordCount = 0 And (Opt = "qry" Or Opt = " ") Then
            Call SpreadAlign(0)
            Call SpreadAlignBale(0)
            MsgBox "No Records Found", vbInformation, head
            '''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
            Dim oText As TextBox
            'Bind the text boxes to the recordset
            For Each oText In Me.txtfields
                oText.Text = ""
            Next
            Text1.Text = ""
            Text2.Text = ""
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
        SpdOrdDetail.Lock = True
        
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
        ''''''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
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
    Exit Sub
ER1:
    If Err = 3021 Then
        MsgBox "No Records Found", vbInformation, head + "Message"
        If Opt = "fnd" Then
            ''''''''''''''''Set SpdOrdDetail.DataSource = Nothing
        End If
        Screen.MousePointer = 0
    End If
    If Err = -2147467259 Then
        MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Query_mode " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0
  
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Query_mode " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
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
    adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,AgentComm,RefNo,RefDate,PaymentTerm,Order_Type,DeliveryDate,DelCode,Trans_Code,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotQty,TotPacks,Mat_Amt,Disc_Per,Disc_Amt,Other_Amt,Freight_Amt,ins_Amt,Taxable_Amt,Tax_Amt,CGSTAmt,SGSTAmt,IGSTAmt,TCS_Per,TCS_amt,Roff_amt,TotalAmt  FROM RM_JobOrderHD WHERE DivCode='" & Divcode & "' And docno = " & val(a) & " and docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                      " Order by DivCode,docno,Docdate} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.Product_code,a.uom,a.Packs,a.Quantity,a.Rate,a.Value,a.remarks,a.Disc_Per,a.Disc_Amt,a.Tax_Code,a.Taxable_Amt,a.Cgstper,a.CGSTAmt,a.Sgstper,a.SGSTAmt,a.Igstper,a.IGSTAmt,a.TCS_Per,a.TCS_amt,a.TotalAmt ,ins_Amt,Other_Amt,Freight_Amt,a.Product_Name,a.hsn,MixRate ,d.Description Pack_TypeDesc,a.Product_Type FROM RM_JobOrderDT a inner join (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where  divcode='" & Divcode & "' ) b on a.Product_code=b.Product_id left join IG_PACKTYPE d on d.pack_type=a.uom Where a.divcode='" & Divcode & "' " & _
                      "  And docno = " & val(a) & " and docdate = '" & Format(B, "yyyy-mm-dd") & "' And docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/MM/dd") & "' Order By a.DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE,Docdate TO Docdate,docno TO docno) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
       
       
    Call bindcontls
    TotMix = 0
    If Opt = "mod" Or Opt = "del" Then
        Set ADOSECONDARYRS.DataSource = adoPrimaryRS("ChildCMD").UnderlyingValue
        RW = 1
        With SpdOrdDetail
        If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
        .MaxRows = 0
        Do While Not ADOSECONDARYRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText eORDDtls.E_DIVCODE, RW, ADOSECONDARYRS("Divcode")
            .SetText eORDDtls.E_DOCNO, RW, ADOSECONDARYRS("docno")
            .SetText eORDDtls.E_Docdate, RW, ADOSECONDARYRS("Docdate")
            .SetText eORDDtls.E_DOCSNO, RW, ADOSECONDARYRS("DocSNo")
'
'            .SetText eORDDtls.E_SizeinInch, RW, adoSecondaryRS("SizeInInch")
'            .SetText eORDDtls.E_SizeinCM, RW, adoSecondaryRS("SizeinCM")
            .SetText eORDDtls.E_ProductType, RW, ADOSECONDARYRS("Product_Type")
            .SetText eORDDtls.E_Product_code, RW, ADOSECONDARYRS("Product_code")
            .SetText eORDDtls.E_Itemname, RW, CStr(ADOSECONDARYRS("Product_Name"))
            .SetText eORDDtls.E_ItemDesc, RW, CStr(ADOSECONDARYRS("Product_Name"))
            .SetText eORDDtls.E_UOM, RW, ADOSECONDARYRS("UOM")
            .SetText eORDDtls.E_Quantity, RW, ADOSECONDARYRS("Quantity")
'            .SetText eORDDtls.E_ORDBalQty, RW, adoSecondaryRS("OrdBalQty")
            .SetText eORDDtls.E_packTypedec, RW, CStr(Trim(ADOSECONDARYRS("Pack_TypeDesc") & ""))
            .SetText eORDDtls.E_TotPacks, RW, ADOSECONDARYRS("Packs")
            .SetText eORDDtls.E_Rate, RW, ADOSECONDARYRS("Rate")
            .SetText eORDDtls.E_InvQty, RW, ADOSECONDARYRS("Quantity")
            .SetText eORDDtls.E_VALUE, RW, ADOSECONDARYRS("value")
            .SetText eORDDtls.E_Remarks, RW, ADOSECONDARYRS("remarks")
            
            .SetText eORDDtls.E_MixRate, RW, ADOSECONDARYRS("MixRate")
            .SetText eORDDtls.E_Discrate, RW, ADOSECONDARYRS("Disc_per")
           
            .SetText eORDDtls.E_Tax_Code, RW, ADOSECONDARYRS("TAX_CODE")
            .SetText eORDDtls.E_DiscValue, RW, ADOSECONDARYRS("Disc_Amt")
            .SetText eORDDtls.E_AssValue, RW, ADOSECONDARYRS("Taxable_Amt")
            .SetText eORDDtls.E_CCGSTPer, RW, ADOSECONDARYRS("CGSTPER")
            .SetText eORDDtls.E_CCGSTAmt, RW, ADOSECONDARYRS("CGSTAMT")
            .SetText eORDDtls.E_SCGSTPer, RW, ADOSECONDARYRS("SGSTPER")
            .SetText eORDDtls.E_SCGSTAmt, RW, ADOSECONDARYRS("SGSTAMT")
            .SetText eORDDtls.E_ICGSTPer, RW, ADOSECONDARYRS("IGSTPER")
            .SetText eORDDtls.E_ICGSTAmt, RW, ADOSECONDARYRS("IGSTAMT")
            .SetText eORDDtls.E_TotalAmt, RW, ADOSECONDARYRS("TotalAmt")
            .SetText eORDDtls.E_TCSAMT, RW, ADOSECONDARYRS("tcs_amt")
            .SetText eORDDtls.E_TCSper, RW, ADOSECONDARYRS("tcs_per")
            
            .SetText eORDDtls.E_InsAmt, RW, ADOSECONDARYRS("ins_Amt")
            .SetText eORDDtls.E_OtherAmt, RW, ADOSECONDARYRS("Other_Amt")
            .SetText eORDDtls.E_FreightAmt, RW, ADOSECONDARYRS("Freight_Amt")
            .SetText eORDDtls.E_HSN, RW, ADOSECONDARYRS("hsn")
              
'            .SetText E_TDSPER, .row, adoSecondaryRS("tds_per")
'            .SetText E_TDSAMT, .row, adoSecondaryRS("TDS_Amt")
'            .SetText E_TDSASSAMT, .row, adoSecondaryRS("TDS_AssAmt")
'            .SetText eORDDtls.E_PSNO, RW, adoSecondaryRS("PSNO")
        
             TotMix = TotMix + val(ADOSECONDARYRS("MixRate") & "")
            RW = RW + 1
            ADOSECONDARYRS.MoveNext
         Loop
     End With
     Text6 = Format(TotMix, "#0.00")
     Call TotalCal
'    Set adoSecondaryRS1 = New Recordset
'    adoSecondaryRS1.Open "SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.PDocSno,a.Product_code,a.uom,a.Quantity,a.Pack_NO,a.Rate,a.Value,a.IssFlag,a.ISSQTY,b.Description Product_Name FROM RM_ConeReceiptPack a inner join IG_PRODUCT b on a.Product_code=b.product_code and a.Divcode=b.Divcode  Where a.DivCode='" & divcode & "'  And docno = " & Val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    RW = 1
'     With SPDBALEDETAILS
'        If adoSecondaryRS1.RecordCount > 0 Then adoSecondaryRS1.MoveFirst
'        .MaxRows = 0
'        Do While Not adoSecondaryRS1.EOF
'            .MaxRows = .MaxRows + 1
'            .SetText BBaleDtls.B_DivCode, RW, adoSecondaryRS1("Divcode")
'            .SetText BBaleDtls.B_Uom, RW, adoSecondaryRS1("uom")
'            .SetText BBaleDtls.B_PDocSno, RW, adoSecondaryRS1("PDocSno")
'            .SetText BBaleDtls.B_DOCSNO, RW, adoSecondaryRS1("DocSNo")
'            .SetText BBaleDtls.B_SIZEININCH, RW, adoSecondaryRS1("SizeInInch")
'            .SetText BBaleDtls.B_SIZEINCM, RW, adoSecondaryRS1("SizeinCM")
'            .SetText BBaleDtls.B_PACKNo, RW, adoSecondaryRS1("Pack_NO")
'            .SetText BBaleDtls.B_Product_code, RW, adoSecondaryRS1("Product_code")
'            .SetText BBaleDtls.B_ItemName, RW, adoSecondaryRS1("Product_Name")
'            .SetText BBaleDtls.B_PackPerQty, RW, adoSecondaryRS1("PackPerQty")
'            .SetText BBaleDtls.B_Looseqty, RW, adoSecondaryRS1("Looseqty")
'            .SetText BBaleDtls.B_Quantity, RW, adoSecondaryRS1("Quantity")
'            .SetText BBaleDtls.B_Rate, RW, adoSecondaryRS1("rate")
'            .SetText BBaleDtls.B_Value, RW, adoSecondaryRS1("value")
'
'
'            RW = RW + 1
'            adoSecondaryRS1.MoveNext
'         Loop
'     End With
        
        
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DivCode,docNo,docDate,SLCode,AgentCode,AgentComm,RefNo,RefDate,PaymentTerm,Order_Type,DeliveryDate,DelCode,Trans_Code,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotQty,TotPacks,Mat_Amt,Disc_Per,Disc_Amt,Other_Amt,Freight_Amt,ins_Amt,Taxable_Amt,Tax_Amt,CGSTAmt,SGSTAmt,IGSTAmt,TCS_Per,TCS_amt,Roff_amt,TotalAmt FROM RM_JobOrderHD Where DivCode='" & Divcode & "'  And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        Call bindcontls
        
    End If
    
    Call SpreadAlign(ADOSECONDARYRS.RecordCount)
    Frame1.Visible = True
    BUTTON(12).Enabled = False
    SpdOrdDetail.Visible = True
    txtfields(0).Locked = True
   ' txtfields(1).Locked = True
    txtfields(2).Locked = True

    Label4.Visible = False
    Label5.Visible = False
    MaskEdBox1(0).Enabled = False

    If Opt = "mod" Then
        stbar.Panels(2).Text = "Modify Quantity,Store Code and Click Save button to Save the Modified Records"
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

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : delmodproc " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub

Public Function newDocNo()

    Dim v_stdate  As String, v_endate As String
    Dim Rs As Recordset
    Dim tcrs As Recordset
    On Error GoTo Errh

    v_stdate = Format(yfdate, "yyyy-mm-dd")
    v_endate = Format(yldate, "yyyy-mm-dd")
    Set Rs = New Recordset

        Set Rstdocno = New Recordset
        Rstdocno.Open "Select right(isnull(max(convert(numeric,docno)),0),5) as docno from RM_JobOrderHD where Divcode = '" & Divcode & "'  and  DocDate between '" & Format(yfdate, "dd-MMM-yyyy") & "' and '" & Format(yldate, "dd-MMM-yyyy") & "'", DB

        If IsNull(Rstdocno("docno")) Then
            newDocNo = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 5, "0")
        Else
            newDocNo = Format(yfdate, "YY") & Padl(CStr(Rstdocno(0) + 1), 5, "0")
        End If
  
    Exit Function
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : newdocno " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Function
Public Sub qry1()
On Error GoTo Errh

Set adoPrimaryRS = New Recordset

adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,AgentComm,RefNo,RefDate,PaymentTerm,Order_Type,DeliveryDate,DelCode,Trans_Code,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotQty,TotPacks,Mat_Amt,Disc_Per,Disc_Amt,Other_Amt,Freight_Amt,ins_Amt,Taxable_Amt,Tax_Amt,CGSTAmt,SGSTAmt,IGSTAmt,TCS_Per,TCS_amt,Roff_amt,TotalAmt FROM RM_JobOrderHD WHERE DivCode='" & Divcode & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdate,docno} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.Product_code,a.uom,a.Packs,a.Quantity,a.Rate,a.Value,a.remarks,a.Disc_Per,a.Disc_Amt,a.Tax_Code,a.Taxable_Amt,a.Cgstper,a.CGSTAmt,a.Sgstper,a.SGSTAmt,a.Igstper,a.IGSTAmt,a.TCS_Per,a.TCS_amt,a.TotalAmt,ins_Amt,Other_Amt,Freight_Amt,a.Product_Name,a.hsn,MixRate ,d.Description Pack_TypeDesc,a.Product_Type FROM RM_JobOrderDT a inner join (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where  divcode='" & Divcode & "' ) b on a.Product_code=b.Product_id  left join IG_PACKTYPE d on d.pack_type=a.uom Where a.divcode='" & Divcode & "' " & _
                  "  And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "'  Order by a.DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE ,docno TO docno,Docdate TO Docdate) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
Exit Sub
Errh:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : qry1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
  
 End Sub
 
Public Sub fnd1(a As Long, B As Date)
On Error GoTo Errh

Set adoPrimaryRS = New Recordset
                 
adoPrimaryRS.Open " SHAPE {SELECT DivCode,docNo,docDate,SLCode,AgentCode,AgentComm,RefNo,RefDate,PaymentTerm,Order_Type,DeliveryDate,DelCode,Trans_Code,HostID,CreatedBy,CreatedDate,ModifiedBy,ModifiedDate,TotQty,TotPacks,Mat_Amt,Disc_Per,Disc_Amt,Other_Amt,Freight_Amt,ins_Amt,Taxable_Amt,Tax_Amt,CGSTAmt,SGSTAmt,IGSTAmt,TCS_Per,TCS_amt,Roff_amt,TotalAmt FROM RM_JobOrderHD WHERE DivCode='" & Divcode & "' And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/Mm/dd") & "' " & _
                  " Order by DivCode,Docdate,docno} AS ParentCMD APPEND ({SELECT a.DivCode,a.DocNo,a.DocDate,a.DocSno,a.Product_code,a.uom,a.Packs,a.Quantity,a.Rate,a.Value,a.remarks,a.Disc_Per,a.Disc_Amt,a.Tax_Code,a.Taxable_Amt,a.Cgstper,a.CGSTAmt,a.Sgstper,a.SGSTAmt,a.Igstper,a.IGSTAmt,a.TCS_Per,a.TCS_amt,a.TotalAmt ,ins_Amt,Other_Amt,Freight_Amt,a.product_name Product_Name,a.hsn,MixRate ,d.Description Pack_TypeDesc,a.Product_Type FROM RM_JobOrderDT a inner join (select varcode Product_ID,Varname Product_Name,HSN from rm_var union all select PRODUCT_CODE Product_ID,DESCRIPTION Product_Name,HSN from IG_RPRODUCT where  divcode='" & Divcode & "' ) b on a.Product_code=b.Product_id  left join IG_PACKTYPE d on d.pack_type=a.uom Where a.divcode='" & Divcode & "' " & _
                  " And docno = " & val(a) & " and Docdate = '" & Format(B, "yyyy-mm-dd") & "' And Docdate Between '" & Format(yfdate, "yyyy/MM/dd") & "' And '" & Format(yldate, "yyyy/MM/dd") & "'  Order By a.DivCode,docno,DocSNo} AS ChildCMD RELATE DIVCODE TO DIVCODE,docno TO docno,Docdate TO Docdate) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                  
 
Exit Sub
Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : fnd1 " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
End Sub
      

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo Errh

    If Opt = "add" Or Opt = "mod" Then
    If Index = 105 Or Index = 100 Then
    Call TDS_Calculation
    Exit Sub
    End If
   If Index = 3 Then
      If Trim(txtfields(3).Text) = "" Then
'            txtfields(3).SetFocus
'             Cancel = True
'            Exit Sub
       End If
   End If
   If Index = 13 Then
'
'        Set Rss5 = New Recordset
'        Rss5.Open "select DISTINCT h.CONT_TYPE as Sale_Order_Type,H.CONT_NO AS 'Sale_Order_No.',a.DATE AS Sale_Order_Date,SA.slname 'Customer' from KN_contdt h  INNER JOIN kn_CONTHD A ON A.DIVCODE=H.DIVCODE  AND A.CONT_NO=H.CONT_NO AND A.CONT_TYPE=H.CONT_TYPE INNER JOIN FA_SLMAS  SA ON A.CUST_CODE=SA.slcode Where a.date between  dateadd(day,90,'" & Format(yfdate, "yyyy-MM-dd") & "') and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(A.app_flg,'N')='Y' and ISNULL(A.cancelled,'N')='N'  AND ((h.KGS+(h.KGS*isnull(h.delivery_tolerance,0)/100) )-(ISNULL(h.PROGQTY,0)+isnull(h.QTY_DELIVERED,0)))>0  and h.Divcode='" & Divcode & "'  ", DB, adOpenStatic
'        If Rss5.EOF Then
'            LookUp.Clear = True
'            LookUp.query = "select DISTINCT h.CONT_TYPE as Sale_Order_Type,H.CONT_NO AS 'Sale_Order_No.',a.DATE AS Sale_Order_Date,SA.slname 'Customer' from KN_contdt h INNER JOIN kn_CONTHD A ON A.DIVCODE=H.DIVCODE  AND A.CONT_NO=H.CONT_NO AND A.CONT_TYPE=H.CONT_TYPE INNER JOIN FA_SLMAS SA ON A.CUST_CODE=SA.slcode Where  a.date between dateadd(day,90,'" & Format(yfdate, "yyyy-MM-dd") & "') and '" & Format(yldate, "yyyy-MM-dd") & "' and isnull(A.app_flg,'N')='Y' and ISNULL(A.cancelled,'N')='N' AND ((h.KGS )-(ISNULL(h.PROGQTY,0)+isnull(h.QTY_DELIVERED,0)))>0  and h.Divcode='" & Divcode & "'"
'            LookUp.Caption = "Sale Order Listing"
'            LookUp.DefCol = "OrderNO"
'            LookUp.ALIGN = "1500,1500,1200,4900"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                txtfields(6).Text = LookUp.Fields("Sale_Order_Type")
'                txtfields(13).Text = LookUp.Fields("Sale_Order_No.")
'                DTPicker5.value = LookUp.Fields("Sale_Order_Date")
'                MaskEdBox1(5).Text = Format(LookUp.Fields("Sale_Order_Date"), "dd/mm/yyyy")
'            Else
'                txtfields(6).Text = ""
'                txtfields(13).Text = ""
'                MaskEdBox1(5).Text = "__/__/____"
'                txtfields(13).SetFocus
'                Cancel = True
'            End If
'        Else
'            txtfields(6).Text = Rss5("Cont_Type")
'            txtfields(13).Text = Rss5("Sale_Order_NO")
'            DTPicker5.value = Rss5("Sale_Order_Date")
'            MaskEdBox1(5).Text = Format(Rss5("Sale_Order_Date"), "dd/mm/yyyy")
'            Rss5.Close
'        End If
'        Rss5.Close
    End If
   
   
    If Index = 3 Then
     
     If Trim(txtfields(3).Text) = "" Then
        txtfields(3).SetFocus
        Cancel = True
     Exit Sub
     End If
    End If
     If Index = 18 Then
     
     If txtfields(18).Text <> "" Then
     Exit Sub
     End If

    Ptype = "C4"
    
            Set rs1 = New Recordset
            rs1.Open "Select * from masterlen", DB, adOpenStatic
            If rs1.RecordCount > 0 Then
                bro = rs1("ptypebroker") & "%"
            Else
                bro = ""
            End If
          LookUp.Clear = True
          LookUp.query = "select slname""Agent_name"",slcode""Agent_ID"",Country from fa_slmas where slcode like '" & bro & "'"

          LookUp.Caption = "Agent Listing"
          LookUp.DefCol = "Agentname"
          LookUp.ALIGN = "4500,1500,2000"
          LookUp.Show vbModal
          If LookUp.Cancel = False Then
            txtfields(18).Text = LookUp.Fields(1)
            Text3.Text = LookUp.Fields(0)
           ' txtFields(3).SetFocus
            
            LookUp.Clear = True
           
          Else

            txtfields(18).Text = ""
            Text3.Text = ""
            txtfields(3).SetFocus
            Exit Sub
         End If
        stbar.Panels(2).Text = "Select Agent Name from the List"
    'End If
End If
    
    If Index = 20 Then
   Set Rs = New Recordset
   Rs.Open "select * from fa_currency where currcode='" & txtfields(20).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(21).Text = Rs("CURRNAME")
         txtfields(20).Text = UCase(txtfields(20).Text)
         'txtfields(9).SetFocus
         Exit Sub
    Else
         LookUp.Clear = True
         LookUp.query = "select Currname,Currcode from  fa_currency"
         LookUp.Caption = "Currency Listing"
         LookUp.DefCol = "Currname"
         LookUp.ALIGN = "4000,1000"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                txtfields(20).Text = LookUp.Fields(1)
                txtfields(21).Text = LookUp.Fields(0)
                LookUp.Clear = True
               ' txtFields(9).SetFocus
         Else
                txtfields(21).Text = ""
                txtfields(20).Text = ""
                Cancel = True
         End If
        stbar.Panels(2).Text = "Select Currency Name from the List"
                
    End If
End If


If Index = 19 Then
   Set Rs = New Recordset
   Rs.Open "SELECT PayTerm_Code ,PayTerm_Desc FROM Ig_PayTerm where PayTerm_Code='" & txtfields(19).Text & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         txtfields(19).Text = Rs("PayTerm_Code")
         Text4.Text = Rs("PayTerm_Desc")
         SpdOrdDetail.Col = E_ItemDesc
         SpdOrdDetail.SetActiveCell E_ItemDesc, 1
        SpdOrdDetail.SetFocus
                    
         'txtfields(9).SetFocus
         Exit Sub
    Else
        LookUp.Clear = True
            LookUp.query = "SELECT PayTerm_Code ""Pay Term ID"",PayTerm_Desc ""Pay Term Description"" FROM Ig_PayTerm "
            LookUp.ALIGN = "900,3000"
            LookUp.Caption = "Pay Terms Listing"
            LookUp.DefCol = "Pay Terms Description"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    txtfields(19).Text = LookUp.Fields(0)
                    Text4.Text = LookUp.Fields(1)
                    SpdOrdDetail.Col = E_ItemDesc
                    SpdOrdDetail.SetActiveCell E_ItemDesc, 1
                    SpdOrdDetail.SetFocus
             
            Else
                    Cancel = True
                    txtfields(19).SetFocus
                    Text4.Text = ""
            End If
    End If
End If
If Index = 23 Then

                   
            Set rsCodeName = New ADODB.Recordset

            rsCodeName.Open " select Area_Code,name Area_Name from ig_area where Area_Code = '" & Trim(txtfields(Index).Text) & "'", DB
            If rsCodeName.RecordCount > 0 Then
               txtfields(44).Text = rsCodeName!Area_Name
            Else

                    LookUp.Clear = True
                    LookUp.query = "select Area_Code Area_ID,name Area_Name from ig_area "
                    LookUp.Caption = "Delivery listing"
                    LookUp.DefCol = "Area_Name"
                    LookUp.ALIGN = "1500,5500"
                    LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            txtfields(23).Text = LookUp.Fields("Area_ID")
                            txtfields(44).Text = LookUp.Fields("Area_Name")
                            LookUp.Clear = True
                           ' txtfields(T.Delivery).SetFocus
                        Else
                            txtfields(23).Text = ""
                            txtfields(44).Text = ""

                            txtfields(23).SetFocus
                            Cancel = True
                        End If

              End If
        
'                    qrl = "select TDS_TYPE,TDS_DESC AS TDShead from FA_TDS_TYPE"
'                    LookUp.query = qrl
'                    LookUp.Caption = "TDS Type Listing"
'                    LookUp.DefCol = "TDS_Head"
'                    LookUp.ALIGN = "1500,3900"
'                    LookUp.Show vbModal
'                    If LookUp.Cancel = False Then
'                        If LookUp.Fields(0) = "" Then
'                            MsgBox "No Transaction Codes found", vbInformation, head
'                            Exit Sub
'                        End If
'                        txtfields(23).Text = LookUp.Fields(0)
'                        txtfields(44).Text = LookUp.Fields(1)
'                    End If
'                Else
'                     txtfields(44).Text = rsa(1)
'                End If
'    End If

End If


'If Index = 13 Then
'  Set TypeRs = New Recordset
'    TypeRs.Open "select  Godcode,Name from RM_godown where Divcode='" & divcode & "' and Godcode='" & txtfields(13).Text & "'", DB, adOpenStatic
'    If TypeRs.RecordCount > 0 Then
'
'            Text6.Text = TypeRs("Name")
'    Else
'
'        LookUp.clear = True
'            LookUp.query = "SELECT Godcode 'Godown Code',Name  FROM RM_godown where Divcode='" & divcode & "'"
'            LookUp.ALIGN = "1500,3000"
'            LookUp.Caption = "Godown Listing"
'            LookUp.DefCol = "Name"
'            LookUp.Show vbModal
'            If LookUp.Cancel = False Then
'                    txtfields(13).Text = LookUp.Fields(0)
'                    Text6.Text = LookUp.Fields(1)
'
'            Else
'                    Cancel = True
'                    txtfields(13).SetFocus
'                    Text6.Text = ""
'            End If
'    End If
'
'
'End If


    If Index = 233 Then
        
             Set Rs = New Recordset
             Rs.Open "select bank_code,name from IM_bank  WHERE divcode='" & Divcode & "' and bank_code='" & txtfields(23).Text & "'", DB, adOpenStatic
             If Rs.RecordCount > 0 Then
               txtfields(24).Text = Rs("NAME")
               txtfields(24).Text = UCase(txtfields(24).Text)
             Else
                 LookUp.Clear = True
                 LookUp.query = "select Name,Bank_code from IM_bank where divcode='" & Divcode & "'"
                 LookUp.Caption = "Bank Detail Listing"
                 LookUp.DefCol = "Name"
                 LookUp.ALIGN = "6500,1500"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    txtfields(23).Text = LookUp.Fields(1)
                    txtfields(24).Text = LookUp.Fields(0)
                    LookUp.Clear = True
                    SpdOrdDetail.SetFocus
                 Else

                    LookUp.Clear = True
                    txtfields(23).SetFocus

                    Exit Sub
                 End If
                stbar.Panels(2).Text = "Select Delivery Address  from the List"
            End If
          
           'Cancel = True
End If
    
  If Index = 10 Then
        Set rs1 = New Recordset
        rs1.Open "select Distinct Type_code""PurchaseType"",TypName""Name"" from po_type where  Type_code='" & txtfields(Index).Text & "'", DB, adOpenStatic
        If rs1.RecordCount > 0 Then
            Text5.Text = rs1(1)
            txtfields(10).Text = rs1(0)
        Else
            LookUp.Clear = True
            LookUp.query = "select Distinct Type_code""Purchase Type"",TypName""Name"" from po_type "
            LookUp.Caption = "Purchase Type Listing"
            LookUp.DefCol = "Name"
            LookUp.ALIGN = "2000,6000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                
                Text5.Text = LookUp.Fields(1)
                txtfields(10).Text = LookUp.Fields(0)
                txtfields(10).SetFocus
                LookUp.Clear = True
            
            Else
                Cancel = True
                txtfields(10).SetFocus
                Exit Sub
            End If
        End If
  End If

    
            
'       If Index = 11 Then
'            If val(txtfields(11).Text) = 0 Then
'                MsgBox "Currency Convertion Rate Should Be Filled", vbInformation, head
'                txtfields(11).SetFocus
'                Cancel = True
'                Exit Sub
'             Else
'                SpdOrdDetail.Col = E_rate
'                SpdOrdDetail.SetFocus
'            End If
'       End If
                   
  
       
       'If Index = 1 Then    ''LC Type
       
'            Set rss = New Recordset
'            rss.Open "Select cast(code as varchar) As Code,Description,(CASE WHEN Type='D' THEN 'Domestic' ELSE 'Foreign' END) Type from IM_lctype where divcode='" & divcode & "' And Code='" & Trim(txtfields(1).Text) & "'", DB, adOpenStatic
'            If rss.RecordCount = 0 Then
'                LookUp.clear = True
'                LookUp.query = "Select cast(code as varchar) As Code,Description,(CASE WHEN Type='D' THEN 'Domestic' ELSE 'Foreign' END) Type from IM_lctype where divcode='" & divcode & "'"
'                LookUp.Caption = "LC Type Listing"
'                LookUp.DefCol = "Description"
'                LookUp.ALIGN = "1500,4500,2500"
'                LookUp.Show vbModal
'                If LookUp.Cancel = False Then
'                    txtfields(1).Text = LookUp.Fields(0)
'                    LCTName.Text = LookUp.Fields(1)
'                Else
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
'            End If
            
      ' End If
              
       If Index = 5 Then
               
                Set Rs = New Recordset
                Rs.Open "select carrier_code,name from ig_carrier where carrier_code='" & txtfields(5).Text & "'", DB
                If Rs.RecordCount > 0 Then
                    txtfields(5).Text = Rs(0)
                    Text1.Text = Rs(1)
                Else
                  
                    LookUp.Clear = True
                    LookUp.query = "SELECT carrier_code""Carrier ID"",name""Carrier Name"" FROM ig_carrier"
                    LookUp.DefCol = "Carrier Name"
                    LookUp.Caption = "Carrier Listing"
                    LookUp.ALIGN = "1500,3500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(5).Text = LookUp.Fields(0)
                        Text1.Text = LookUp.Fields(1)
                       ' MaskEdBox1(3).SetFocus
                        LookUp.Clear = True
                      
                    Else
                        Text7.Text = ""
                        txtfields(9).SetFocus
                        Cancel = True
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                End If
       End If
       
       If Index = 14 Then    ''Delivery Terms
       
'            Set rss = New Recordset
'            rss.Open "Select DCode""Dlv Term"",DName""Description"" From IM_DlvTerm Where DCode='" & Trim(txtfields(Index).Text) & "'", DB, adOpenStatic
'            If rss.RecordCount = 0 Then
'                LookUp.clear = True
'                LookUp.QUERY = "Select DCode""Dlv Term"",DName""Description"" From IM_DlvTerm"
'                LookUp.Caption = "Dlv Term"
'                LookUp.DefCol = "Description"
'                LookUp.ALIGN = "1500,5500"
'                Screen.MousePointer = 0
'                LookUp.Show vbModal
'                If LookUp.Cancel = False Then
'                    txtfields(Index).Text = LookUp.Fields(0)
'                     txtfields(10).Text = LookUp.Fields(1)
'                Else
'                    Call BUTTON_Click(10)
'                    Exit Sub
'                End If
'            End If
       End If
       
       If Index = 22 Then ''Description of Goods
'            If Trim(txtfields(Index).Text) = "" Then
'                LookUp.clear = True
'                LookUp.query = "Select Distinct A.Code,A.Description From IM_DescofGoods A  Order By A.Code"
'                LookUp.Caption = "Description of Goods Listing"
'                LookUp.DefCol = "Code"
'                LookUp.ALIGN = "1500,6500"
'                LookUp.Show vbModal
'                If LookUp.Cancel = False Then
'                    txtfields(Index).Text = LookUp.Fields(1)
'                    txtfields(6).SetFocus
'                    Exit Sub
'                Else
'                    LookUp.clear = True
'                    txtfields(Index).Text = ""
'                    txtfields(Index).SetFocus
'                End If
'                Exit Sub
'            End If
       End If
      
            
    
       
       
  If Index = 7 And lSuppSel = False Then  '' Supplier
    
        Call GetPartyType("RMVendor", "slcode")
        Set RSS = New Recordset
        RSS.Open "select slcode""Supplier Code"",slname""Supplier Name"",city""City"",BrCode""Agent Code"" ,isnull(GSTSTATECODE,'0') GSTSTATECODE,isnull(GSTINNO,'') GSTINNO,isnull(supptype,'R')  Supptype  from fa_slmas where  isnull(isACTive,'N')='Y' and slcode='" & Trim(txtfields(7).Text) & "'", DB, adOpenStatic  '
        If Not RSS.EOF Then
            txtfields(7).Text = RSS(0)
            Text2.Text = RSS(1)
       Else
  
    LookUp.Clear = True
    testr = ""
    
     
    Set rs4 = New Recordset
    rs4.Open "select count(*) from FA_SLMAS WHERE  (SLCODE " & PartyTypeStr & ") and isnull(isACTive,'N')='Y'", DB
    If Not rs4(0) = 0 Then
            StrAppQry = ""
            LookUp.Clear = True
            LookUp.query = " select DISTINCT slcode [Vendor ID],slname [Supplier Name], isnull(City,'') City,isnull(agent_code,'') [Agent ID], isnull(GSTSTATECODE,'') GST_State_Code, isnull(GSTINNO,'') GSTIN,isnull(Supptype ,'R') GST_Registered from fa_slmas where  (SLCODE " & PartyTypeStr & ") and isnull(isACTive,'N')='Y'"
            LookUp.Caption = "Supplier Listing"
            LookUp.DefCol = "Supplier Name"
            LookUp.ALIGN = "1100,4000,1700,1000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then  '8
            
                SuppType = LookUp.Fields("GST_Registered")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", DB
                If Not Rs.EOF Then
                       STATEFLAG = Rs(0)
                End If
                txtfields(4).Text = LookUp.Fields("GSTIN")
                
                 If SuppType = "R" Then
          
                    If Trim(LookUp.Fields("GSTIN")) = "" Then
                        MsgBox "Please enter GST Number in Supplier Master ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                
                    If LookUp.Fields("GST_State_Code") = "0" Or LookUp.Fields("GST_State_Code") = "" Then
                        MsgBox "Please enter GST State Code in Supplier Master ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                            Dim STCODE As String
                            Set rs1 = New Recordset
                            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GST_State_Code FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("Vendor ID")) & "' ", DB
                            If rs1.EOF Then
                                MsgBox "Please enter GST State Code in Supplier Master ", vbInformation, head
                                Call BUTTON_Click(10)
                                Exit Sub
                            Else
                                If rs1("GST_State_Code") = "0" Then
                                        MsgBox "Please enter GST State Code in Supplier Master", vbInformation, head
                                        Call BUTTON_Click(10)
                                        Exit Sub
                                End If
                                STCODE = rs1("GST_State_Code")
                            End If
                                 
                                 
                            Set rs1 = New Recordset
                            rs1.Open "SELECT A.GSTSTATECODE FROM PP_DIVMAS A INNER JOIN FA_SLMAS B ON  A.GSTSTATECODE=B.GSTSTATECODE  WHERE A.DIVCODE='" & Divcode & "' and a.gststatecode='" & STCODE & "'", DB
                            If Not rs1.EOF Then
                                IGSTFLG = "Y"
                            Else
                                IGSTFLG = "N"
                            End If
                    
                    
                End If
                  
                txtfields(1).Text = LookUp.Fields("Vendor ID")
                txtfields(4).Text = LookUp.Fields("GSTIN")
                  
'                Set rss = New Recordset
'                rss.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur from  RM_PARA b  ", DB, adOpenStatic
'                If Not rss.EOF Then
'                    txtfields(100).Text = rss(0)
'                    Chk_TDSFLAG.value = 1
'                    Chk_TDSManual.value = 0
'                End If
            
                txtfields(7).Text = LookUp.Fields(0)
                Text2.Text = LookUp.Fields(1)
            
                Exit Sub
'                txtfields(18).Text = IIf(IsNull(LookUp.Fields(3)), "", LookUp.Fields(3))
'
'                Set rsbk = New Recordset
'                rsbk.Open "select slname from fa_slmas where slcode='" & txtfields(18).Text & "'", DB, adOpenStatic
'                If Not rsbk.EOF Then
'                    Text3.Text = rsbk(0)
'                End If
               ' Exit Sub
             
                
      
            
            
            
            Exit Sub
                
               
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
    End If
    Else
    End If
End If


    
    If Index = 11 Then
        txtfields(6).SetFocus
    End If
    If Index = 3 Then
        MaskEdBox1(2).SetFocus
    End If
    
    If Index = 8 Then
        If txtfields(8).Text = "" Then
          '  MsgBox "Truck No. Cannnot be empty", vbInformation, head
''            Cancel = True
''            Txtfields(8).SetFocus
           ' Exit Sub
        End If
    End If
If Opt = "add" Or Opt = "mod" Then
    If Index = 33 Or Index = 38 Or Index = 14 Or Index = 16 Or Index = 46 Then
        Call TotalCal
    End If
End If

Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : txtFields_Validate " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: PO"
    
End Sub



Private Sub SpreadAlign(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

    SpdOrdDetail.Row = 1
    SpdOrdDetail.FontBold = True
    SpdOrdDetail.TypeTextWordWrap = True
    SpdOrdDetail.ClearSelection
    SpdOrdDetail.AllowColMove = True
    SpdOrdDetail.MaxCols = E_Remarks
    
    SetSpreadCol SpdOrdDetail, E_DIVCODE, "DivCode", CellTypeStaticText, 8, , True, True
        
    SetSpreadCol SpdOrdDetail, E_DOCNO, "docno", CellTypeNumber, 5, , True, True
    SetSpreadCol SpdOrdDetail, E_Docdate, "Req.Date", CellTypeDate, 8, , True, True

    SpdOrdDetail.Col = E_DOCSNO
    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
'    SpdOrdDetail.TypeNumberDecPlaces = 0
    SetSpreadCol SpdOrdDetail, E_DOCSNO, "SNo.", CellTypeNumber, 6, , False, True
    
   SetSpreadCol SpdOrdDetail, E_POGrp, "Sale Order No.", CellTypeStaticText, 6, , True, True
    
'    SpdOrdDetail.Col = E_SizeinInch
'    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
'    SpdOrdDetail.TypeNumberDecPlaces = 0
'    SetSpreadCol SpdOrdDetail, E_SizeinInch, "Size in Inches", CellTypeNumber, 10, 2, False, False
'
'    SpdOrdDetail.Col = E_SizeinCM
'    SpdOrdDetail.TypeDateCentury = False
''    SpdOrdDetail.TypeDateFormat = TypeDateFormatDDMMYY
'    SetSpreadCol SpdOrdDetail, E_SizeinCM, "Size in CM", CellTypeNumber, 10, 2, False, False
        
    SpdOrdDetail.Col = E_ProductType
    SpdOrdDetail.TypeHAlign = TypeHAlignCenter
    SetSpreadCol SpdOrdDetail, E_ProductType, "Product Type", CellTypeStaticText, 8, , True, True
        
    SetSpreadCol SpdOrdDetail, E_Product_code, "Product ID", CellTypeEdit, 10, 0, False, False
   
    If Opt = "add" Or Opt = "mod" Then
        SetSpreadCol SpdOrdDetail, E_Itemname, "Product Name", CellTypeStaticText, 30, , True, True
    Else
        SetSpreadCol SpdOrdDetail, E_Itemname, "Product Name", CellTypeStaticText, 30, , False, True
    End If
    SpdOrdDetail.Col = E_ItemDesc
'    SpdOrdDetail.TypeMaxEditLen = 200
'    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetAlphanumeric
'    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    'SetSpreadCol SpdOrdDetail, E_ItemDesc, "Alternate Description", CellTypeEdit, 30, , False, False
    SetSpreadCol SpdOrdDetail, E_ItemDesc, "Product Name", CellTypeEdit, 27, , False, True
        
    SetSpreadCol SpdOrdDetail, E_UOM, "Unit", CellTypeEdit, 4, , True, True
     SetSpreadCol SpdOrdDetail, E_packTypedec, "Pack Type", CellTypeEdit, 10, , False, False
    
    SetSpreadCol SpdOrdDetail, E_ORDBalQty, "Balance Quantiry With Tolerance", CellTypeNumber, 10, 3, True, True
        
    SpdOrdDetail.Col = E_Quantity
'    SpdOrdDetail.TypeNumberMin = 0
'    SpdOrdDetail.TypeNumberMax = 99999999.999999
'    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
'    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol SpdOrdDetail, E_Quantity, "Quantity in Kgs", CellTypeNumber, 11, 3, False, False
        

'    SpdOrdDetail.Col = E_TotPacks
'    SpdOrdDetail.TypeNumberMin = 0
'    SpdOrdDetail.TypeNumberMax = 99999999
'    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
'    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol SpdOrdDetail, E_TotPacks, "No of Packs", CellTypeNumber, 9, 0, False, False
    
'    SpdOrdDetail.Col = E_InvQty
'    SpdOrdDetail.TypeNumberMin = 0
'    SpdOrdDetail.TypeNumberMax = 99999999.999
'    SpdOrdDetail.TypeEditCharSet = TypeEditCharSetNumeric
'    SpdOrdDetail.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol SpdOrdDetail, E_InvQty, "Quantity in Kgs", CellTypeNumber, 11, 0, True, True
    
    
    SetSpreadCol SpdOrdDetail, E_Rate, "Rate/Kgs", CellTypeNumber, 9, 4, False, False
    
    SetSpreadCol SpdOrdDetail, E_MixRate, "Mix Ratio %", CellTypeNumber, 11, 4, False, False
    

    SetSpreadCol SpdOrdDetail, E_VALUE, "Value", CellTypeNumber, 10, 2, False, True
    SetSpreadCol SpdOrdDetail, E_Discrate, "Disc. %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol SpdOrdDetail, E_DiscValue, "Discount Value", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_FreightAmt, "Freight Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_InsAmt, "Freight Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_OtherAmt, "Freight Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_AssValue, "Taxable Value", CellTypeNumber, 10, 2, False, True
    
    SetSpreadCol SpdOrdDetail, E_Tax_Code, "GST ID", CellTypeEdit, 8, , False, False
    SetSpreadCol SpdOrdDetail, E_CCGSTPer, "CGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol SpdOrdDetail, E_CCGSTAmt, "CGST Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_SCGSTPer, "SGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol SpdOrdDetail, E_SCGSTAmt, "SGST Amt.", CellTypeNumber, 9, 2, False, True
    SetSpreadCol SpdOrdDetail, E_ICGSTPer, "IGST %", CellTypeNumber, 8, 2, False, True
    SetSpreadCol SpdOrdDetail, E_ICGSTAmt, "IGST Amt.", CellTypeNumber, 9, 2, False, True
    
    SetSpreadCol SpdOrdDetail, E_TCSper, "TCS %", CellTypeNumber, 8, 3, True, True
    SetSpreadCol SpdOrdDetail, E_TCSAMT, "TCS Amt.", CellTypeNumber, 8, 2, True, True
    SetSpreadCol SpdOrdDetail, E_TotalAmt, "Total Amount", CellTypeNumber, 12, 2, False, True
    
    SetSpreadCol SpdOrdDetail, E_TDSASSAMT, "TDS Ass.Amt", CellTypeNumber, 8, 2, True, True
    SetSpreadCol SpdOrdDetail, E_TDSPER, "TDS %", CellTypeNumber, 7, 3, True, True
    SetSpreadCol SpdOrdDetail, E_TDSAMT, "TDS Amt.", CellTypeNumber, 8, 2, True, True
    
    SetSpreadCol SpdOrdDetail, E_HSN, "HSN", CellTypeStaticText, 6, , False, True
    SetSpreadCol SpdOrdDetail, E_Remarks, "Remarks", CellTypeEdit, 15, , False, False
    
    SetSpreadCol SpdOrdDetail, E_PSNO, "GL ID", CellTypeStaticText, 15, , True, True
 
 
    
    SpdOrdDetail.MaxCols = E_Remarks
    SpdOrdDetail.MaxRows = NoofRows
'    SpdOrdDetail.SetActiveCell E_ItemDesc, 1
    SpdOrdDetail.ColsFrozen = E_Quantity
    
    If Trim(Opt) = "" Or Opt = "fnd" Or Opt = "del" Then
        SetSpreadCol SpdOrdDetail, E_ItemDesc, "Product Name", CellTypeStaticText, 30, , True, True
        SetSpreadCol SpdOrdDetail, E_Quantity, "Quantity in Kgs", CellTypeNumber, 10, 3, False, True
    End If
    If Opt = "mod" Then
'         SetSpreadCol SpdOrdDetail, E_SIZEININCH, "Size in Inches", CellTypeNumber, 10, 2, True, True
'         SetSpreadCol SpdOrdDetail, E_SIZEINCM, "Size in CM", CellTypeNumber, 10, 2, True, True
         SetSpreadCol SpdOrdDetail, E_UOM, "Unit", CellTypeEdit, 4, , False, True
         SetSpreadCol SpdOrdDetail, E_Itemname, "Product Name", CellTypeStaticText, 30, , True, True
         SetSpreadCol SpdOrdDetail, E_ItemDesc, "Product Name", CellTypeStaticText, 30, , False, True
    End If
    Exit Sub
    
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form PO"
End Sub

Private Sub SpreadAlignPO(Optional NoofRows As Integer = 0)
    
On Error GoTo spreadalign_Error

With spdPO
        .ClearSelection
        .MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDVPlant2DESC
        .MaxCols = P_PDocSno
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol spdPO, P_Select, "   ", CellTypeCheckBox, 3, , True, True
        SetSpreadCol spdPO, P_DocSno, "Doc SNo.", CellTypeNumber, 5, 0, True, True
        SetSpreadCol spdPO, P_SIZEININCH, "Size in Inches", CellTypeNumber, 8, 2, True, True
        SetSpreadCol spdPO, P_SIZEINCM, "Size in CM", CellTypeNumber, 10, 2, True, True
        SetSpreadCol spdPO, P_Product_code, "Product Code", CellTypeStaticText, 8, , False, True
        SetSpreadCol spdPO, P_ITEMNAME, "Description", CellTypeStaticText, 35, , True, True
        SetSpreadCol spdPO, P_UOM, "Unit", CellTypeStaticText, 4, , False, True
        SetSpreadCol spdPO, P_PACKNO, "Pack No.", CellTypeNumber, 9, 0, False, False
        SetSpreadCol spdPO, P_PackPerQty, "Gross Wt.", CellTypeNumber, 10, 3, False, False
        SetSpreadCol spdPO, P_Looseqty, "Tare Wt.", CellTypeNumber, 10, 3, False, False
        SetSpreadCol spdPO, P_Quantity, "Net Wt.", CellTypeNumber, 8, 3, False, False
        SetSpreadCol spdPO, P_PDocSno, "PRSno", CellTypeStaticText, 4, , True, True
        SetSpreadCol spdPO, P_Rate, "Rate/Unit", CellTypeNumber, 8, 3, True, True
        SetSpreadCol spdPO, P_Value, "Value", CellTypeNumber, 8, 3, True, True
    
        

    End With


Exit Sub

       spdPO.ClearSelection
        spdPO.MaxRows = 0
        '.ColHeadersAutoText = DispBlank
        spdPO.ClearSelection
      
    
     
        spdPO.TypeTextWordWrap = True
    spdPO.Row = 0
'    spdPO.FontBold = True
    SetSpreadCol spdPO, P_Select, "   ", CellTypeCheckBox, 3, , False, False
    

    
    spdPO.Col = P_SIZEININCH
    spdPO.TypeHAlign = TypeHAlignCenter
    spdPO.TypeNumberDecPlaces = 0
    SetSpreadCol spdPO, P_SIZEININCH, "Order No.", CellTypeNumber, 8, , False, True
    
    SetSpreadCol spdPO, P_SIZEINCM, "Order Date", CellTypeDate, 10, , False, True
    
    SetSpreadCol spdPO, P_Product_code, "Variety Code", CellTypeStaticText, 8, , False, True
    SetSpreadCol spdPO, P_ITEMNAME, "Variety Description", CellTypeStaticText, 35, , False, True
    SetSpreadCol spdPO, P_UOM, "Unit", CellTypeStaticText, 4, , False, True
    SetSpreadCol spdPO, P_PackPerQty, "RateUnit", CellTypeStaticText, 10, 0, False, True
    SetSpreadCol spdPO, P_Looseqty, "Balance Qty in Kgs", CellTypeNumber, 10, 3, False, True
    SetSpreadCol spdPO, P_Quantity, "Rate KG", CellTypeNumber, 8, 6, False, True
    SetSpreadCol spdPO, P_PDocSno, "PRSno", CellTypeStaticText, 4, , True, True
    SetSpreadCol spdPO, P_Rate, "Rate/KGS", CellTypeNumber, 8, 6, False, True

    
    For nRow = 1 To spdPO.MaxRows
        spdPO.Row = nRow
        spdPO.Col = P_Select
        spdPO.value = 0
    Next
            
    spdPO.MaxCols = P_PDocSno
    spdPO.MaxRows = NoofRows
    spdPO.SetActiveCell P_Select, 1

    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form PO"
End Sub
Private Function TrnDateValidation() As Boolean

    Set rstTrnDate = New ADODB.Recordset
    strQry = "Select isnull(MAX(Docdate),'" & Format(pdate, "yyyy-MM-dd") & "') as Ldate from RM_JobOrderHD  Where DivCode='" & Divcode & "' and Docdate Between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'"
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
            .SetText ePODtls.P_SIZEININCH, RW, indentrs("Indent No.")
            .SetText ePODtls.P_SIZEINCM, RW, indentrs("Indent Date")
            .SetText ePODtls.P_Product_code, RW, indentrs("Varity Code")
            .SetText ePODtls.P_ITEMNAME, RW, indentrs("Description")
            .SetText ePODtls.P_UOM, RW, indentrs("Packtype")
            .SetText ePODtls.P_PackPerQty, RW, indentrs("BalQty")
            .SetText ePODtls.P_Looseqty, RW, indentrs("BalQtyKG")
          '  .SetText ePODtls.P_ RW, indentrs("ename")
            .SetText ePODtls.P_PDocSno, RW, indentrs("PrSNo")
            indentrs.MoveNext
            RW = RW + 1
             

        Loop
       End With
       ' DataGrid1.SetFocus
        BUTTON(4).Enabled = False
        BUTTON(12).Enabled = False
        BUTTON(13).Enabled = False
    Else
        MsgBox "No Indent To PurchaseOrder", vbInformation, head
 '       FpSpdIndHead_KeyPress (vbBack)
         Call BUTTON_Click(10)
        Exit Sub
    End If
End Sub

Private Sub SpreadAlignBale(Optional NoofRows As Integer = 0)

On Error GoTo spreadalign_Error

   SPDBALEDETAILS.Row = 1
   SPDBALEDETAILS.FontBold = True
   SPDBALEDETAILS.TypeTextWordWrap = True
   SPDBALEDETAILS.ClearSelection
   SPDBALEDETAILS.AllowColMove = True
   SPDBALEDETAILS.MaxCols = B_PDocSno
    SetSpreadCol SPDBALEDETAILS, B_DivCode, "DivCode", CellTypeStaticText, 8, , True, True
        
    SetSpreadCol SPDBALEDETAILS, B_docno, "docno", CellTypeNumber, 5, , True, True
    SetSpreadCol SPDBALEDETAILS, B_Docdate, "Req.Date", CellTypeDate, 8, , True, True

   SPDBALEDETAILS.Col = B_DOCSNO
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
    SetSpreadCol SPDBALEDETAILS, B_DOCSNO, "SNo", CellTypeNumber, 6, , False, True
    

    
   SPDBALEDETAILS.Col = P_SIZEININCH
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
    SetSpreadCol SPDBALEDETAILS, B_SIZEININCH, "Size in Inches", CellTypeNumber, 10, 2, False, True
    
   SPDBALEDETAILS.Col = E_SIZEINCM
   SPDBALEDETAILS.TypeDateCentury = False
'   SPDBALEDETAILS.TypeDateFormat = TypeDateFormatDDMMYY
    SetSpreadCol SPDBALEDETAILS, B_SIZEINCM, "Size in CM", CellTypeNumber, 10, 2, False, True

        
    SetSpreadCol SPDBALEDETAILS, B_Product_code, "Product Code", CellTypeStaticText, 10, , False, True
    SetSpreadCol SPDBALEDETAILS, B_ItemName, "Description", CellTypeStaticText, 28, , False, True

   SPDBALEDETAILS.Col = B_PACKNo
   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
   SPDBALEDETAILS.TypeNumberDecPlaces = 0
   SetSpreadCol SPDBALEDETAILS, B_PACKNo, "Pack No.", CellTypeNumber, 15, , False, False
   SetSpreadCol SPDBALEDETAILS, B_Uom, "UOM", CellTypeStaticText, 7, , False, True
'
'   SPDBALEDETAILS.Col = B_PartyBaleNo
'   SPDBALEDETAILS.TypeHAlign = TypeHAlignCenter
'   SPDBALEDETAILS.TypeNumberDecPlaces = 0
'   SetSpreadCol SPDBALEDETAILS, B_PartyBaleNo, "Party Bale No.", CellTypeNumber, 10, , False, True
'
   SPDBALEDETAILS.Col = B_PackPerQty
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
    SetSpreadCol SPDBALEDETAILS, B_PackPerQty, "Gross Wt.", CellTypeNumber, 14, 3, False, False
        
   SPDBALEDETAILS.Col = B_Looseqty
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
   SetSpreadCol SPDBALEDETAILS, B_Looseqty, "Tare Wt.", CellTypeNumber, 10, 3, False, False
    
   SPDBALEDETAILS.Col = B_Quantity
   SPDBALEDETAILS.TypeNumberMin = 0
   SPDBALEDETAILS.TypeNumberMax = 99999999.999
   SPDBALEDETAILS.TypeEditCharSet = TypeEditCharSetNumeric
   SPDBALEDETAILS.TypeEditCharCase = TypeEditCharCaseSetNone
   SetSpreadCol SPDBALEDETAILS, B_Quantity, "Net Wt.", CellTypeNumber, 11, 3, False, False
    
    
    SetSpreadCol SPDBALEDETAILS, B_Rate, "Rate/Unit", CellTypeNumber, 11, 3, True, True

    SetSpreadCol SPDBALEDETAILS, B_Value, "Value", CellTypeNumber, 12, 2, True, True
    SetSpreadCol SPDBALEDETAILS, B_PDocSno, "PDocSno", CellTypeNumber, 12, 2, True, True
    
   SPDBALEDETAILS.MaxCols = B_PDocSno
   SPDBALEDETAILS.MaxRows = NoofRows
    SPDBALEDETAILS.TypeNumberMax = 99999999.999
   'SPDBALEDETAILS.SetActiveCell E_Quantity, 1
   SPDBALEDETAILS.ColsFrozen = B_PackPerQty

    Exit Sub
    
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form PO"
End Sub


Private Sub TotalCal()
On Error Resume Next
Dim OtherAmt, FreightAmt, InsAmt, AssAmt, Disc_amt, TotTCS_AMT, Taxable_Amt, TCGSTAMT, TSGSTAMT, TIGSTAMT, TotalAmt, TFreightAmt As Double

OtherAmt = 0: FreightAmt = 0: InsAmt = 0: AssAmt = 0: Disc_amt = 0: TotTCS_AMT = 0: Taxable_Amt = 0: TCGSTAMT = 0: TFreightAmt = 0
 TSGSTAMT = 0: TIGSTAMT = 0: TotalAmt = 0: TotalLooseQty = 0: totalpacks = 0: TotMix = 0
    nTotalAmt = 0
    nQuantity = 0
    nTotalNet = 0
    tmp = Opt
    Opt = ""
    With SpdOrdDetail
      For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
            nTotalNet = nTotalNet + val(GetText(SpdOrdDetail, E_Quantity, nRow))
        End If
      Next
    For nRow = 1 To .MaxRows
        .Row = nRow
        If val(GetText(SpdOrdDetail, E_Quantity, nRow)) > 0 Then
            SpdOrdDetail.SetText E_OtherAmt, nRow, Format(val(txtfields(46).Text) / nTotalNet * val(GetText(SpdOrdDetail, E_Quantity, nRow)), "0.00")
            SpdOrdDetail.SetText E_FreightAmt, nRow, Format(val(txtfields(14).Text) / nTotalNet * val(GetText(SpdOrdDetail, E_Quantity, nRow)), "0.00")
            SpdOrdDetail.SetText E_InsAmt, nRow, Format(val(txtfields(16).Text) / nTotalNet * val(GetText(SpdOrdDetail, E_Quantity, nRow)), "0.00")
            
            SpdOrdDetail.SetText E_Discrate, nRow, CStr(val(txtfields(33).Text))
            SpdOrdDetail.SetText E_TCSper, nRow, CStr(val(txtfields(38).Text))
            
          '  If Val(GetText(SpdOrdDetail, E_PackPer, nRow)) > 0 Then
'                SpdOrdDetail.SetText E_MixRate, nRow, Format(val(GetText(SpdOrdDetail, E_Rate, nRow)), "0.0000") 'Val(GetText(SpdOrdDetail, E_PackPer, nRow))
          '  End If
            SpdOrdDetail.SetText E_VALUE, nRow, Format(val(GetText(SpdOrdDetail, E_Quantity, nRow)) * val(GetText(SpdOrdDetail, E_MixRate, nRow)), "0.00")
            SpdOrdDetail.SetText E_DiscValue, nRow, Format(val(GetText(SpdOrdDetail, E_VALUE, nRow)) * val(GetText(SpdOrdDetail, E_Discrate, nRow)) / 100, "0.00")
            OtherAmt = val(GetText(SpdOrdDetail, E_OtherAmt, nRow))
            FreightAmt = val(GetText(SpdOrdDetail, E_FreightAmt, nRow))
            InsAmt = val(GetText(SpdOrdDetail, E_InsAmt, nRow))
            TFreightAmt = TFreightAmt + val(GetText(SpdOrdDetail, E_FreightAmt, nRow))
            SpdOrdDetail.SetText E_AssValue, nRow, Format((val(GetText(SpdOrdDetail, E_VALUE, nRow)) - val(GetText(SpdOrdDetail, E_DiscValue, nRow))) + OtherAmt + FreightAmt + InsAmt, "0.00")
             
             If IGSTFLG = "Y" Then
                SpdOrdDetail.SetText E_CCGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)) * val(GetText(SpdOrdDetail, E_CCGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_SCGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)) * val(GetText(SpdOrdDetail, E_SCGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_ICGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_ICGSTAmt, nRow, Format(0, "0.00")
             
             Else
                SpdOrdDetail.SetText E_ICGSTAmt, nRow, Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)) * val(GetText(SpdOrdDetail, E_ICGSTPer, nRow)) / 100, "0.00")
                SpdOrdDetail.SetText E_CCGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_CCGSTAmt, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_SCGSTPer, nRow, Format(0, "0.00")
                SpdOrdDetail.SetText E_SCGSTAmt, nRow, Format(0, "0.00")
             End If
             Dim TCSASSAMT As Double
             Dim TCSROFF As Integer
            Set rsbk = New Recordset
            rsbk.Open "select isnull(Tax_Add_Tcs_Flg,'N') tcstax,isnull(TCS_Roff,0) RTCS_ROFF from ig_PARAm where  Divcode='" & Divcode & "'", DB, adOpenStatic
            If Not rsbk.EOF Then
                TCSROFF = rsbk(1)
                If rsbk(0) = "Y" Then
                    TCSASSAMT = Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)) + val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow)), "0.00")
                Else
                    TCSASSAMT = Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)), "0.00")
                End If
            End If
                    
             SpdOrdDetail.SetText E_TCSAMT, nRow, KSLRound(TCSASSAMT * val(GetText(SpdOrdDetail, E_TCSper, nRow)) / 100, TCSROFF)
            
             SpdOrdDetail.SetText E_TotalAmt, nRow, Format(val(GetText(SpdOrdDetail, E_AssValue, nRow)) + val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow)) + val(GetText(SpdOrdDetail, E_TCSAMT, nRow)), "0.00")
            
            Disc_amt = Disc_amt + val(GetText(SpdOrdDetail, E_DiscValue, nRow))
            AssAmt = AssAmt + val(GetText(SpdOrdDetail, E_VALUE, nRow))
            Taxable_Amt = Taxable_Amt + val(GetText(SpdOrdDetail, E_AssValue, nRow))
            TCGSTAMT = TCGSTAMT + val(GetText(SpdOrdDetail, E_CCGSTAmt, nRow))
            TSGSTAMT = TSGSTAMT + val(GetText(SpdOrdDetail, E_SCGSTAmt, nRow))
            TIGSTAMT = TIGSTAMT + val(GetText(SpdOrdDetail, E_ICGSTAmt, nRow))
            TotTCS_AMT = TotTCS_AMT + val(GetText(SpdOrdDetail, E_TCSAMT, nRow))
            TotalAmt = TotalAmt + val(GetText(SpdOrdDetail, E_TotalAmt, nRow)) '
'            nTotalAmt = nTotalAmt + Val(GetText(SpdOrdDetail, E_Amount, nRow))
            nQuantity = nQuantity + val(GetText(SpdOrdDetail, E_Quantity, nRow))
            
            TotalLooseQty = TotalLooseQty + val(GetText(SpdOrdDetail, E_ExPcs, nRow))
            totalpacks = totalpacks + val(GetText(SpdOrdDetail, E_TotPacks, nRow))
            TotMix = TotMix + val(GetText(SpdOrdDetail, E_MixRate, nRow))
        End If
    Next
    End With
    Text6 = Format(TotMix, "#0.00")
    txtQty.Text = Format(nQuantity, "0.000")
    txtfields(12).Text = Format(nQuantity, "0.000")
    
    txtfields(11).Text = Format(TotalLooseQty, "0.000")
     txtfields(9).Text = Format(totalpacks, "00")
   
    
    txtfields(40).Text = Format(Round(AssAmt, 2), "0.00")
  '  txtfields(14).Text = Format(Round(TFreightAmt, 2), "0.00")
    txtfields(94).Text = Format(Round(Disc_amt, 2), "0.00")
    txtfields(41).Text = Format(Round(Taxable_Amt, 2), "0.00")
    txtfields(45).Text = Format(Round(TCGSTAMT + TSGSTAMT + TIGSTAMT, 2), "0.00")
    txtfields(39).Text = Format(Round(TotTCS_AMT, 2), "0.00")
    txtfields(118).Text = Format(Round(TCGSTAMT, 2), "0.00")
    txtfields(117).Text = Format(Round(TSGSTAMT, 2), "0.00")
    txtfields(116).Text = Format(Round(TIGSTAMT, 2), "0.00")
    nTotalAmt = (val(txtfields(40).Text) - val(txtfields(94).Text)) + (val(txtfields(45).Text) + val(txtfields(39).Text) + val(txtfields(14).Text) + val(txtfields(16).Text) + val(txtfields(46).Text))
    
    If (Abs(val(Format(val(nTotalAmt) - Round(nTotalAmt), "0.00"))) >= 50) Then
        txtfields(89).Text = Format(val(nTotalAmt) - Round(nTotalAmt), "0.00") ''Rounding Off
    Else
        txtfields(89).Text = Format(Round(nTotalAmt) - val(nTotalAmt), "0.00") ''Rounding Off
    End If
    
    
    txtfields(47).Text = Format(nTotalAmt + val(txtfields(89).Text), "0.00")
    
'    txtfields(15).Text = Format(KSLRound(nTotalAmt, 0) * val(txtfields(11).Text), "##,##,##,##,###.00")
'    txtfields(16).Text = Format(KSLRound((val(txtfields(15).Text) / 100) * val(txtfields(6).Text), 0), "0.00")
    Opt = tmp
    Call TDS_Calculation
End Sub

Private Sub SetSpreadCol(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
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
        If celltype = CellTypeNumber And DecWth >= 0 Then .TypeNumberDecPlaces = DecWth
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub
Private Sub SetSpreadCol1(Spd As fpSpread, ByVal Col As Integer, ByVal head As String, ByVal celltype As CellTypeConstants, Optional ByVal iColWth As Integer = 0, Optional ByVal DecWth As Integer = 0, Optional ByVal HideCol As Boolean = False, Optional ByVal IsLock As Boolean = True)
On Error GoTo SetSpreadCol_Error
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
        .ColHeaderRows = 1
        .SetText Col, 0, head
    End With
Exit Sub
SetSpreadCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetSpreadCol of Module RMIMod"
End Sub



Private Sub TDS_Calculation()
Exit Sub
On Error GoTo TDS_Calculation_Error
If Opt = "mod" Or Opt = "add" Then
    Dim totalPurchaseAmt, TotvalueTDSASS, TDSGRossFixed, TDSPERWP, TDSPERWOP  As Double
    Set RSCHECK = New Recordset
    RSCHECK.Open "exec KSP_TDSAmountCalculation '" & Divcode & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','" & Trim(txtfields(7).Text) & "','" & Format(MaskEdBox1(5).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If Not RSCHECK.EOF Then
        totalPurchaseAmt = IIf(IsNull(RSCHECK(0)), 0, RSCHECK(0))
    End If
    TotvalueTDSASS = val(txtfields(47).Text)
    TDSGRossFixed = 0
    Set RSS = New Recordset
    RSS.Open "select isnull(TDSPER_WPan,0) tds_per,isnull(TDS_GrossAmt,0) tdsvalue,isnull(TDSPER_WOPan,0) TDSPER_WOPan,isnull(TDSCalcTotPur,0) TDSCalcTotPur from  RM_PARA b  ", DB, adOpenStatic
    If Not RSS.EOF Then
        TDSGRossFixed = RSS(1)
        TDSPERWP = RSS(0)
        TDSPERWOP = RSS(2)
        TDSCalcTotPur = RSS(3)
    End If
'    If Opt = "mod" Then
'        Set rsamt = New Recordset
'        rsamt.Open "select billamt from fa_purhd where Divcode='" & Divcode & "' and slcode='" & Trim(txtfields(81).Text) & "'  and pjvno='" & Val(txtfields(304).Text) & "' and tc='" & Val(txtfields(300).Text) & "' and pjvdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' ", DB, adOpenStatic
'        If Not rsamt.EOF Then
'            TotvalueTDSASS = TotvalueTDSASS - rsamt(0)
'        End If
'    End If
    
    If Chk_TDSFLAG.value = 1 Then
        If Chk_TDSManual.value = 0 Then
            txtfields(105).Locked = True
            If (val(TotvalueTDSASS) + val(totalPurchaseAmt)) >= val(TDSGRossFixed) Then
                
               ' If TDSCalcTotPur = 0 And val(totalPurchaseAmt) - val(TotvalueTDSASS) > 0 Then
               If TDSCalcTotPur = 0 And ((val(totalPurchaseAmt) - val(TDSGRossFixed))) < 0 Then
                    TDSAssAmt = ((val(TotvalueTDSASS)) + val(totalPurchaseAmt)) - val(TDSGRossFixed) 'val(TotvalueTDSASS) - val(TDSGRossFixed)
                    TDSAssAmt = val(txtfields(47).Text)
                     TTDS_AMT = 0
                    TTDSASSES_AMT = 0
                    For I = 1 To SpdOrdDetail.MaxRows
                        TDSLANCOST = TDSLANCOST = val(GetText(SpdOrdDetail, E_VALUE, I)) 'KSLRound(Val(Val(GetText(SpdOrdDetail, E_BItemValue, i))) / Val(txtfields(46).Text) * Val(GetText(SpdOrdDetail, E_BQuantity, i)), 3)
                        SpdOrdDetail.SetText E_TDSASSAMT, I, CStr(TDSLANCOST)
                        SpdOrdDetail.SetText E_TDSPER, I, CStr(val(txtfields(100).Text))
                        SpdOrdDetail.SetText E_TDSAMT, I, CStr(KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + TDSLANCOST
                        TTDS_AMT = TTDS_AMT + KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0)
                    Next
    '                txtfields(104).Text = Format(KSLRound(TDSAssAmt * val(txtfields(100).Text) / 100, 0), "#0.00")
    '               txtfields(105).Text = Format(TDSAssAmt, "#0.00")
                    txtfields(105).Text = Format(TTDSASSES_AMT, "#0.00")
                    txtfields(104).Text = Format(TTDS_AMT, "#0.00")
    
                Else
                   ' TDSAssAmt = Val(txtfields(47).Text)
                    TTDS_AMT = 0
                    TTDSASSES_AMT = 0
                    For I = 1 To SpdOrdDetail.MaxRows
                        TDSLANCOST = val(GetText(SpdOrdDetail, E_VALUE, I)) 'KSLRound(Val(GetText(SpdOrdDetail, E_BItemValue, i)) / Val(txtfields(46).Text) * Val(GetText(SpdOrdDetail, E_BQuantity, i)), 3)
                        SpdOrdDetail.SetText E_TDSASSAMT, I, CStr(TDSLANCOST)
                        SpdOrdDetail.SetText E_TDSPER, I, CStr(val(txtfields(100).Text))
                        SpdOrdDetail.SetText E_TDSAMT, I, CStr(KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + val(GetText(SpdOrdDetail, E_TDSASSAMT, I))
                        TTDS_AMT = TTDS_AMT + val(GetText(SpdOrdDetail, E_TDSAMT, I))
                    Next
    '                 txtfields(105).Text = Format(TDSAssAmt, "#0.00")
    '                 txtfields(104).Text = Format(KSLRound(TDSAssAmt * val(txtfields(100).Text) / 100, 0), "#0.00")
                     txtfields(105).Text = Format(TTDSASSES_AMT, "#0.00")
                     txtfields(104).Text = Format(TTDS_AMT, "#0.00")
 
                End If
                
            Else
                txtfields(105).Text = "00.00"
                txtfields(104).Text = "00.00"
                txtfields(100).Text = "00.000"
                txtfields(23).Text = ""
                 For I = 1 To SpdOrdDetail.MaxRows
                    SpdOrdDetail.SetText E_TDSASSAMT, I, "0.0"
                    SpdOrdDetail.SetText E_TDSPER, I, "0.0"
                    SpdOrdDetail.SetText E_TDSAMT, I, "0.0"
                Next
            End If
        Else
                txtfields(105).Locked = False
                ''Manual TDS Assessable Amount
                TDSAssAmt = val(txtfields(105).Text)
                TTDS_AMT = 0
                TTDSASSES_AMT = 0
                For I = 1 To SpdOrdDetail.MaxRows
                        TDSLANCOST = KSLRound(val(TDSAssAmt) / val(txtQty.Text) * val(GetText(SpdOrdDetail, E_Quantity, I)), 3)
                        SpdOrdDetail.SetText E_TDSASSAMT, I, CStr(TDSLANCOST)
                        SpdOrdDetail.SetText E_TDSAMT, I, CStr(KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0))
                        TTDSASSES_AMT = TTDSASSES_AMT + TDSLANCOST
                        TTDS_AMT = TTDS_AMT + KSLRound(TDSLANCOST * val(txtfields(100).Text) / 100, 0)
                Next
    '              txtfields(104).Text = Format(KSLRound(TDSAssAmt * val(txtfields(100).Text) / 100, 0), "#0.00")
    '              txtfields(105).Text = Format(TDSAssAmt, "#0.00")
                   If Chk_TDSManual.value = 0 Then
                    txtfields(105).Text = Format(TTDSASSES_AMT, "#0.00")
                   End If
                   txtfields(104).Text = Format(TTDS_AMT, "#0.00")

        End If
    Else
            txtfields(105).Text = "00.00"
            txtfields(104).Text = "00.00"
            txtfields(100).Text = "00.000"
            txtfields(23).Text = ""
             For I = 1 To SpdOrdDetail.MaxRows
                    SpdOrdDetail.SetText E_TDSASSAMT, I, "0.0"
                    SpdOrdDetail.SetText E_TDSPER, I, "0.0"
                    SpdOrdDetail.SetText E_TDSAMT, I, "0.0"
            Next

    End If
End If
Exit Sub
TDS_Calculation_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure TDS_Calculation of Form frmPurchaseBillMultiple"
End Sub
