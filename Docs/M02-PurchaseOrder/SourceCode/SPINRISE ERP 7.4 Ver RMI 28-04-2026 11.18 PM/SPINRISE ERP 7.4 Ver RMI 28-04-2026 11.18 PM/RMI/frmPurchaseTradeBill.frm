VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmPurchaseTradeBill 
   Caption         =   "Purchase Bills - Multiple Lot(s)"
   ClientHeight    =   9060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12435
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   9060
   ScaleWidth      =   12435
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame4 
      Height          =   4920
      Left            =   9840
      TabIndex        =   178
      Top             =   360
      Visible         =   0   'False
      Width           =   9630
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "BEDPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   88
         Left            =   1335
         MaxLength       =   9
         TabIndex        =   234
         Top             =   945
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "brkcom"
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
         Index           =   82
         Left            =   5085
         MaxLength       =   15
         TabIndex        =   233
         Top             =   4170
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "TOTLANDCOST"
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
         Index           =   78
         Left            =   1335
         MaxLength       =   15
         TabIndex        =   232
         Top             =   4530
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "ratekg"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.0000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   76
         Left            =   4440
         Locked          =   -1  'True
         MaxLength       =   15
         TabIndex        =   231
         Top             =   4530
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "bedamt"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   75
         Left            =   1980
         MaxLength       =   15
         TabIndex        =   230
         Top             =   945
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "SEDPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   74
         Left            =   7740
         MaxLength       =   9
         TabIndex        =   229
         Top             =   945
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "SEDAMT"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   73
         Left            =   8385
         MaxLength       =   15
         TabIndex        =   228
         Top             =   945
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "AEDPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   72
         Left            =   1335
         MaxLength       =   9
         TabIndex        =   227
         Top             =   1305
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "AEDAMT"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   71
         Left            =   1995
         MaxLength       =   15
         TabIndex        =   226
         Top             =   1305
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CESSPER"
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
         Index           =   68
         Left            =   4695
         MaxLength       =   9
         TabIndex        =   225
         Top             =   945
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CESSAMT"
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
         Index           =   65
         Left            =   5295
         MaxLength       =   15
         TabIndex        =   224
         Top             =   945
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "tax_per"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   56
         Left            =   4695
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   223
         TabStop         =   0   'False
         Top             =   1305
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "vatamt"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   55
         Left            =   5295
         MaxLength       =   15
         TabIndex        =   222
         Top             =   1305
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OTHTAXPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   52
         Left            =   7740
         MaxLength       =   9
         TabIndex        =   221
         Top             =   1665
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OTHTAXAMT"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   51
         Left            =   8385
         MaxLength       =   15
         TabIndex        =   220
         Top             =   1665
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "RLYFRTPER"
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
         Index           =   44
         Left            =   7740
         MaxLength       =   9
         TabIndex        =   219
         Top             =   2025
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "RLYFRTAMT"
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
         Index           =   43
         Left            =   8385
         MaxLength       =   15
         TabIndex        =   218
         Top             =   2025
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "INSPER"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.000"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   57
         Left            =   1335
         MaxLength       =   9
         TabIndex        =   217
         Top             =   2025
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "INSAMT"
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
         Index           =   58
         Left            =   1980
         MaxLength       =   15
         TabIndex        =   216
         Top             =   2025
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "COMMPER"
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
         Index           =   59
         Left            =   4695
         MaxLength       =   9
         TabIndex        =   215
         Top             =   2025
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "COMMAMT"
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
         Index           =   60
         Left            =   5295
         MaxLength       =   15
         TabIndex        =   214
         Top             =   2025
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "LCINTPER"
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
         Index           =   61
         Left            =   1320
         MaxLength       =   9
         TabIndex        =   213
         Top             =   2400
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "LCINTAMT"
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
         Index           =   62
         Left            =   1965
         MaxLength       =   15
         TabIndex        =   212
         Top             =   2400
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CHARITYAMT"
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
         Index           =   63
         Left            =   4440
         MaxLength       =   15
         TabIndex        =   211
         Top             =   3450
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "DAMAGEAMT"
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
         Index           =   64
         Left            =   7755
         MaxLength       =   15
         TabIndex        =   210
         Top             =   3450
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CLEARANCEAMT"
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
         Index           =   66
         Left            =   4440
         MaxLength       =   15
         TabIndex        =   209
         Top             =   3810
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OTHERSAMT"
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
         Index           =   67
         Left            =   1335
         MaxLength       =   15
         TabIndex        =   208
         Top             =   4170
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CUSTOMSDUTYAMT"
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
         Index           =   69
         Left            =   1335
         MaxLength       =   15
         TabIndex        =   207
         Top             =   3810
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "DNAMT1"
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
         Index           =   70
         Left            =   1335
         MaxLength       =   15
         TabIndex        =   206
         Top             =   3450
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "cashdisamt"
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
         Index           =   54
         Left            =   1980
         MaxLength       =   15
         TabIndex        =   205
         Top             =   585
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "cashdisper"
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
         Index           =   53
         Left            =   1335
         MaxLength       =   9
         TabIndex        =   204
         Top             =   585
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "tax_code"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   83
         Left            =   3930
         MaxLength       =   9
         TabIndex        =   203
         Top             =   1305
         Width           =   720
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "LRFRTAMT"
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
         Index           =   38
         Left            =   8385
         MaxLength       =   15
         TabIndex        =   202
         Top             =   585
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "LRFRTPER"
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
         Index           =   37
         Left            =   7740
         MaxLength       =   9
         TabIndex        =   201
         Top             =   585
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "Tradedisper"
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
         Index           =   84
         Left            =   4695
         MaxLength       =   9
         TabIndex        =   200
         Top             =   585
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "Tradedisamt"
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
         Index           =   85
         Left            =   5295
         MaxLength       =   15
         TabIndex        =   199
         Top             =   585
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CSTPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   86
         Left            =   1335
         MaxLength       =   9
         TabIndex        =   198
         Top             =   1665
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "CSTAMT"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   87
         Left            =   1980
         MaxLength       =   15
         TabIndex        =   197
         Top             =   1665
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         DataField       =   "LANDCOSTWITHTAX"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   330
         Index           =   35
         Left            =   7740
         MaxLength       =   15
         TabIndex        =   196
         Top             =   4530
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         DataField       =   "taxamt"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   330
         Index           =   34
         Left            =   8535
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   195
         TabStop         =   0   'False
         Top             =   4605
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.Frame Frame10 
         Height          =   435
         Left            =   1335
         TabIndex        =   190
         Top             =   120
         Width           =   3405
         Begin VB.OptionButton opt_c 
            Caption         =   "Yes"
            Height          =   225
            Left            =   1215
            TabIndex        =   193
            Top             =   165
            Width           =   660
         End
         Begin VB.OptionButton opt_nc 
            Caption         =   "No"
            Height          =   195
            Left            =   270
            TabIndex        =   192
            Top             =   180
            Value           =   -1  'True
            Width           =   855
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "DutyPer"
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
            ForeColor       =   &H00000000&
            Height          =   285
            Index           =   109
            Left            =   2760
            MaxLength       =   6
            TabIndex        =   191
            Top             =   120
            Width           =   600
         End
         Begin VB.Label lblDutyPer 
            Caption         =   "Duty %"
            Enabled         =   0   'False
            Height          =   195
            Left            =   2070
            TabIndex        =   194
            Top             =   165
            Width           =   525
         End
      End
      Begin VB.Frame Frame22 
         Height          =   435
         Left            =   6300
         TabIndex        =   187
         Top             =   120
         Width           =   3240
         Begin VB.OptionButton optAfter 
            Caption         =   "After Discount"
            Height          =   195
            Left            =   1665
            TabIndex        =   189
            Top             =   165
            Width           =   1455
         End
         Begin VB.OptionButton optBefore 
            Caption         =   "Before Discount"
            Height          =   225
            Left            =   135
            TabIndex        =   188
            Top             =   150
            Value           =   -1  'True
            Width           =   1455
         End
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OTHERTaxableAmt"
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
         Index           =   41
         Left            =   7755
         MaxLength       =   15
         TabIndex        =   186
         Top             =   3810
         Width           =   1800
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "addtaxcode"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   42
         Left            =   3960
         MaxLength       =   9
         TabIndex        =   185
         Top             =   1665
         Width           =   720
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "addtaxamount"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   77
         Left            =   5295
         MaxLength       =   15
         TabIndex        =   184
         Top             =   1665
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "addtaxper"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   79
         Left            =   4695
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   183
         TabStop         =   0   'False
         Top             =   1665
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "brkcomPer"
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
         Index           =   91
         Left            =   4455
         MaxLength       =   9
         TabIndex        =   182
         Top             =   4155
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "SCAMT"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   93
         Left            =   8385
         MaxLength       =   15
         TabIndex        =   181
         Top             =   1305
         Width           =   1150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "SCPER"
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   94
         Left            =   7740
         MaxLength       =   9
         TabIndex        =   180
         Top             =   1305
         Width           =   615
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "SICAAmt"
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
         Height          =   315
         Index           =   97
         Left            =   5310
         MaxLength       =   15
         TabIndex        =   179
         Top             =   2400
         Width           =   1125
      End
      Begin VB.Label Label77 
         Caption         =   "Broker Commission"
         Height          =   420
         Left            =   3225
         TabIndex        =   265
         Top             =   4095
         Width           =   1185
      End
      Begin VB.Label Label75 
         AutoSize        =   -1  'True
         Caption         =   "B.E.D"
         Enabled         =   0   'False
         Height          =   195
         Left            =   105
         TabIndex        =   264
         Top             =   990
         Width           =   420
      End
      Begin VB.Label Label72 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg."
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   3225
         TabIndex        =   263
         Top             =   4590
         Width           =   660
      End
      Begin VB.Label Label69 
         AutoSize        =   -1  'True
         Caption         =   "Landed Cost"
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   105
         TabIndex        =   262
         Top             =   4605
         Width           =   900
      End
      Begin VB.Label Label67 
         AutoSize        =   -1  'True
         Caption         =   "Ed Cess"
         Enabled         =   0   'False
         Height          =   195
         Left            =   6495
         TabIndex        =   261
         Top             =   1013
         Width           =   615
      End
      Begin VB.Label Label66 
         AutoSize        =   -1  'True
         Caption         =   "Hs Cess"
         Enabled         =   0   'False
         Height          =   195
         Left            =   105
         TabIndex        =   260
         Top             =   1335
         Width           =   585
      End
      Begin VB.Label Label65 
         AutoSize        =   -1  'True
         Caption         =   "Cess"
         Height          =   195
         Left            =   3225
         TabIndex        =   259
         Top             =   1005
         Width           =   345
      End
      Begin VB.Label Label64 
         AutoSize        =   -1  'True
         Caption         =   "Tax"
         Enabled         =   0   'False
         Height          =   195
         Left            =   3225
         TabIndex        =   258
         Top             =   1380
         Width           =   270
      End
      Begin VB.Label Label63 
         AutoSize        =   -1  'True
         Caption         =   "Other Tax"
         Enabled         =   0   'False
         Height          =   195
         Left            =   6495
         TabIndex        =   257
         Top             =   1733
         Width           =   705
      End
      Begin VB.Label Label62 
         Caption         =   "Railway Freight"
         Height          =   255
         Left            =   6495
         TabIndex        =   256
         Top             =   2063
         Width           =   1200
      End
      Begin VB.Label Label61 
         AutoSize        =   -1  'True
         Caption         =   "Insurance"
         Height          =   330
         Left            =   105
         TabIndex        =   255
         Top             =   2040
         Width           =   705
      End
      Begin VB.Label Label60 
         AutoSize        =   -1  'True
         Caption         =   "Commission"
         Height          =   330
         Left            =   3210
         TabIndex        =   254
         Top             =   2055
         Width           =   825
      End
      Begin VB.Label Label59 
         AutoSize        =   -1  'True
         Caption         =   "LC Interest"
         Height          =   330
         Left            =   120
         TabIndex        =   253
         Top             =   2460
         Width           =   765
      End
      Begin VB.Label Label58 
         AutoSize        =   -1  'True
         Caption         =   "Charity"
         Height          =   195
         Left            =   3225
         TabIndex        =   252
         Top             =   3450
         Width           =   480
      End
      Begin VB.Label Label57 
         AutoSize        =   -1  'True
         Caption         =   "Damage"
         Height          =   195
         Left            =   6360
         TabIndex        =   251
         Top             =   3510
         Width           =   600
      End
      Begin VB.Line Line2 
         X1              =   15
         X2              =   9855
         Y1              =   3390
         Y2              =   3390
      End
      Begin VB.Label Label54 
         AutoSize        =   -1  'True
         Caption         =   "Clearance"
         Height          =   195
         Left            =   3225
         TabIndex        =   250
         Top             =   3810
         Width           =   720
      End
      Begin VB.Label Label53 
         Caption         =   "Others (Non-Taxable)"
         Height          =   390
         Left            =   105
         TabIndex        =   249
         Top             =   4125
         Width           =   1035
      End
      Begin VB.Label Label55 
         AutoSize        =   -1  'True
         Caption         =   "Customs Duty"
         Height          =   195
         Left            =   105
         TabIndex        =   248
         Top             =   3870
         Width           =   975
      End
      Begin VB.Label Label56 
         AutoSize        =   -1  'True
         Caption         =   "Dr. Note Amount"
         Height          =   195
         Left            =   105
         TabIndex        =   247
         Top             =   3510
         Width           =   1185
      End
      Begin VB.Label Label52 
         AutoSize        =   -1  'True
         Caption         =   "Cash Discount"
         Height          =   195
         Left            =   105
         TabIndex        =   246
         Top             =   630
         Width           =   1035
      End
      Begin VB.Label Label51 
         AutoSize        =   -1  'True
         Caption         =   "Lorry Freight"
         Height          =   195
         Left            =   6495
         TabIndex        =   245
         Top             =   653
         Width           =   870
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Trade Discount"
         Height          =   195
         Left            =   3225
         TabIndex        =   244
         Top             =   645
         Width           =   1215
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label92 
         AutoSize        =   -1  'True
         Caption         =   "CST"
         Enabled         =   0   'False
         Height          =   195
         Left            =   105
         TabIndex        =   243
         Top             =   1710
         Width           =   315
      End
      Begin VB.Label Label49 
         Caption         =   "Landed Cost WithTax"
         ForeColor       =   &H00FF0000&
         Height          =   360
         Left            =   6360
         TabIndex        =   242
         Top             =   4470
         Width           =   1290
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label48 
         AutoSize        =   -1  'True
         Caption         =   "Vat Amt"
         Height          =   195
         Left            =   7500
         TabIndex        =   241
         Top             =   4710
         Visible         =   0   'False
         Width           =   555
      End
      Begin VB.Label Label71 
         Caption         =   "Duty Claimable?"
         Height          =   270
         Left            =   105
         TabIndex        =   240
         Top             =   285
         Width           =   1365
      End
      Begin VB.Label Label111 
         Caption         =   "Tax Calculation?"
         Height          =   285
         Left            =   4920
         TabIndex        =   239
         Top             =   270
         Width           =   1335
      End
      Begin VB.Label Label73 
         AutoSize        =   -1  'True
         Caption         =   "Others (Taxable)"
         Height          =   195
         Left            =   6360
         TabIndex        =   238
         Top             =   3870
         Width           =   1170
      End
      Begin VB.Label lblAddTax 
         AutoSize        =   -1  'True
         Caption         =   "Add. Tax"
         Enabled         =   0   'False
         Height          =   195
         Left            =   3210
         TabIndex        =   237
         Top             =   1740
         Width           =   645
      End
      Begin VB.Label Label78 
         AutoSize        =   -1  'True
         Caption         =   "Surcharge"
         Enabled         =   0   'False
         Height          =   195
         Left            =   6495
         TabIndex        =   236
         Top             =   1373
         Width           =   735
      End
      Begin VB.Label Label82 
         AutoSize        =   -1  'True
         Caption         =   "SICA Amount"
         Height          =   195
         Left            =   3210
         TabIndex        =   235
         Top             =   2430
         Width           =   945
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   12180
      Top             =   945
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command7 
      Caption         =   "&Report"
      Default         =   -1  'True
      Height          =   405
      Left            =   9795
      TabIndex        =   146
      Top             =   8835
      Visible         =   0   'False
      Width           =   1275
   End
   Begin VB.Frame Frame2 
      Caption         =   "old  calculation"
      Height          =   3300
      Left            =   12840
      TabIndex        =   114
      Top             =   1320
      Visible         =   0   'False
      Width           =   9765
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   10
         Left            =   4845
         MaxLength       =   9
         TabIndex        =   131
         Top             =   1185
         Width           =   1230
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         CausesValidation=   0   'False
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   11
         Left            =   4815
         MaxLength       =   9
         TabIndex        =   130
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   12
         Left            =   7575
         MaxLength       =   10
         TabIndex        =   129
         Top             =   1950
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   14
         Left            =   2130
         MaxLength       =   9
         TabIndex        =   128
         Top             =   1545
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   17
         Left            =   2145
         MaxLength       =   9
         TabIndex        =   127
         Top             =   2295
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   13
         Left            =   0
         MaxLength       =   9
         TabIndex        =   126
         Top             =   1905
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   16
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   125
         Top             =   1575
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   20
         Left            =   4830
         MaxLength       =   10
         TabIndex        =   124
         Top             =   1965
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   18
         Left            =   4830
         MaxLength       =   9
         TabIndex        =   123
         Top             =   2325
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   15
         Left            =   4845
         MaxLength       =   9
         TabIndex        =   122
         Top             =   1575
         Width           =   1245
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   19
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   121
         Top             =   1185
         Width           =   1200
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   21
         Left            =   7575
         MaxLength       =   9
         TabIndex        =   120
         Top             =   810
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
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
         Height          =   330
         Index           =   31
         Left            =   8520
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   119
         Top             =   2880
         Visible         =   0   'False
         Width           =   150
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   300
         Index           =   32
         Left            =   7560
         MaxLength       =   12
         TabIndex        =   118
         Top             =   2385
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   33
         Left            =   2130
         MaxLength       =   10
         TabIndex        =   117
         Top             =   2805
         Width           =   1170
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   5
         Left            =   4275
         MaxLength       =   9
         TabIndex        =   116
         Top             =   1185
         Width           =   495
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   1
         EndProperty
         Height          =   300
         Index           =   36
         Left            =   3720
         MaxLength       =   9
         TabIndex        =   115
         Top             =   1185
         Width           =   450
      End
      Begin VB.Label Label26 
         AutoSize        =   -1  'True
         Caption         =   "Spot Expenses"
         Height          =   195
         Left            =   120
         TabIndex        =   145
         Top             =   1965
         Width           =   1065
      End
      Begin VB.Label Label25 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 1"
         Height          =   195
         Left            =   135
         TabIndex        =   144
         Top             =   2355
         Width           =   1095
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Railway Freight"
         Height          =   195
         Left            =   135
         TabIndex        =   143
         Top             =   1620
         Width           =   1080
      End
      Begin VB.Label Label23 
         AutoSize        =   -1  'True
         Caption         =   "Over Due Interest"
         Height          =   195
         Left            =   6180
         TabIndex        =   142
         Top             =   2040
         Width           =   1260
      End
      Begin VB.Label Label21 
         AutoSize        =   -1  'True
         Caption         =   "cen vat"
         Height          =   195
         Left            =   3405
         TabIndex        =   141
         Top             =   855
         Width           =   540
      End
      Begin VB.Label Label22 
         AutoSize        =   -1  'True
         Caption         =   "Insurance Amount"
         Height          =   195
         Left            =   6195
         TabIndex        =   140
         Top             =   1620
         Width           =   1290
      End
      Begin VB.Label Label29 
         AutoSize        =   -1  'True
         Caption         =   "Rate/Kg."
         Height          =   195
         Left            =   165
         TabIndex        =   139
         Top             =   2865
         Width           =   660
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Broker Commission"
         Height          =   195
         Left            =   3375
         TabIndex        =   138
         Top             =   1980
         Width           =   1335
      End
      Begin VB.Label Label32 
         AutoSize        =   -1  'True
         Caption         =   "AED"
         Height          =   195
         Left            =   6255
         TabIndex        =   137
         Top             =   810
         Width           =   330
      End
      Begin VB.Label Label33 
         AutoSize        =   -1  'True
         Caption         =   "Lorry Freight"
         Height          =   195
         Left            =   6225
         TabIndex        =   136
         Top             =   1260
         Width           =   870
      End
      Begin VB.Label Label34 
         AutoSize        =   -1  'True
         Caption         =   "Loading/Unloading Charges"
         Height          =   390
         Left            =   3375
         TabIndex        =   135
         Top             =   1530
         Width           =   1440
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label35 
         AutoSize        =   -1  'True
         Caption         =   "Debit Amount 2"
         Height          =   195
         Left            =   3390
         TabIndex        =   134
         Top             =   2325
         Width           =   1095
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Landed Cost"
         Height          =   195
         Left            =   6225
         TabIndex        =   133
         Top             =   2430
         Width           =   900
      End
      Begin VB.Label Label50 
         AutoSize        =   -1  'True
         Caption         =   "Sales Tax Amount"
         Height          =   195
         Left            =   2130
         TabIndex        =   132
         Top             =   1245
         Width           =   1290
      End
   End
   Begin VB.Frame Frame1 
      Height          =   645
      Left            =   0
      TabIndex        =   60
      Top             =   -120
      Width           =   12030
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   4260
         Picture         =   "frmPurchaseTradeBill.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   174
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   585
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   5355
         Picture         =   "frmPurchaseTradeBill.frx":0442
         Style           =   1  'Graphical
         TabIndex        =   154
         ToolTipText     =   "List (Ctrl L)"
         Top             =   60
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":07D9
         Height          =   510
         Index           =   1
         Left            =   7995
         Picture         =   "frmPurchaseTradeBill.frx":0AE3
         Style           =   1  'Graphical
         TabIndex        =   153
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":0E5D
         Height          =   510
         Index           =   5
         Left            =   1140
         Picture         =   "frmPurchaseTradeBill.frx":12A7
         Style           =   1  'Graphical
         TabIndex        =   152
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":160C
         Height          =   495
         Index           =   6
         Left            =   1680
         Picture         =   "frmPurchaseTradeBill.frx":1A56
         Style           =   1  'Graphical
         TabIndex        =   151
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   495
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":1DA3
         Height          =   510
         Index           =   4
         Left            =   1635
         Picture         =   "frmPurchaseTradeBill.frx":20AD
         Style           =   1  'Graphical
         TabIndex        =   24
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":2442
         Height          =   510
         Index           =   7
         Left            =   2190
         Picture         =   "frmPurchaseTradeBill.frx":288C
         Style           =   1  'Graphical
         TabIndex        =   25
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":2BDC
         Height          =   510
         Index           =   11
         Left            =   4800
         Picture         =   "frmPurchaseTradeBill.frx":3026
         Style           =   1  'Graphical
         TabIndex        =   29
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":33BB
         Height          =   510
         Index           =   9
         Left            =   3255
         Picture         =   "frmPurchaseTradeBill.frx":36C5
         Style           =   1  'Graphical
         TabIndex        =   27
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":3A67
         Height          =   510
         Index           =   8
         Left            =   2715
         Picture         =   "frmPurchaseTradeBill.frx":3EB1
         Style           =   1  'Graphical
         TabIndex        =   26
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5880
         Picture         =   "frmPurchaseTradeBill.frx":4213
         Style           =   1  'Graphical
         TabIndex        =   30
         ToolTipText     =   "Puchase Bill Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":4655
         Height          =   510
         Index           =   0
         Left            =   30
         Picture         =   "frmPurchaseTradeBill.frx":495F
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":4CF2
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
         Left            =   600
         Picture         =   "frmPurchaseTradeBill.frx":4FFC
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmPurchaseTradeBill.frx":5398
         Height          =   510
         Index           =   10
         Left            =   3735
         Picture         =   "frmPurchaseTradeBill.frx":56A2
         Style           =   1  'Graphical
         TabIndex        =   28
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   7125
         TabIndex        =   62
         Top             =   210
         Width           =   615
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
         ForeColor       =   &H00FF0000&
         Height          =   255
         Left            =   9660
         TabIndex        =   61
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   97
      Top             =   8760
      Width           =   12435
      _ExtentX        =   21934
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12348
            MinWidth        =   12348
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "06/08/2018"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "01:17 PM"
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
      Height          =   8130
      Left            =   480
      TabIndex        =   63
      Top             =   945
      Width           =   10545
      _ExtentX        =   18600
      _ExtentY        =   14340
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "            "
      TabPicture(0)   =   "frmPurchaseTradeBill.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "SSTab2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame7"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "FrmMultipleLot"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).ControlCount=   3
      Begin VB.Frame FrmMultipleLot 
         Height          =   2745
         Left            =   120
         TabIndex        =   159
         Top             =   30
         Width           =   10320
         Begin FPSpreadADO.fpSpread spdVar 
            Height          =   1995
            Left            =   0
            TabIndex        =   165
            Top             =   690
            Width           =   10275
            _Version        =   524288
            _ExtentX        =   18124
            _ExtentY        =   3519
            _StockProps     =   64
            ArrowsExitEditMode=   -1  'True
            DisplayRowHeaders=   0   'False
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
            RowHeaderDisplay=   0
            ScrollBarExtMode=   -1  'True
            SpreadDesigner  =   "frmPurchaseTradeBill.frx":5A3A
            AppearanceStyle =   0
         End
         Begin VB.TextBox Text4 
            BackColor       =   &H00C0C0C0&
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Left            =   2670
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   161
            TabStop         =   0   'False
            Text            =   " "
            Top             =   240
            Width           =   6960
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   360
            Index           =   81
            Left            =   1320
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   160
            TabStop         =   0   'False
            Top             =   240
            Width           =   1275
         End
         Begin VB.Label Label74 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FF0000&
            Height          =   240
            Left            =   120
            TabIndex        =   166
            Top             =   255
            Width           =   975
         End
      End
      Begin VB.Frame Frame7 
         Height          =   2670
         Left            =   120
         TabIndex        =   64
         Top             =   45
         Width           =   9750
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "rateunit"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   80
            Left            =   7575
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   157
            TabStop         =   0   'False
            Top             =   1095
            Width           =   2085
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "sno"
            Height          =   300
            Index           =   45
            Left            =   4290
            MaxLength       =   5
            TabIndex        =   44
            Top             =   1410
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Index           =   3
            Left            =   1920
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   43
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1650
         End
         Begin VB.ComboBox Combo1 
            BackColor       =   &H00E0E0E0&
            Height          =   315
            ItemData        =   "frmPurchaseTradeBill.frx":5E6B
            Left            =   8580
            List            =   "frmPurchaseTradeBill.frx":5E78
            Style           =   2  'Dropdown List
            TabIndex        =   46
            Top             =   1410
            Width           =   1065
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "bales"
            Height          =   300
            Index           =   22
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   5
            TabIndex        =   47
            TabStop         =   0   'False
            Top             =   1725
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "cntcode"
            Height          =   300
            Index           =   30
            Left            =   6525
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   45
            TabStop         =   0   'False
            Top             =   1410
            Width           =   1035
         End
         Begin VB.TextBox Text3 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   41
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1095
            Width           =   4620
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   39
            TabStop         =   0   'False
            Text            =   " "
            Top             =   780
            Width           =   7755
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            Height          =   300
            Left            =   1905
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   37
            TabStop         =   0   'False
            Text            =   " "
            Top             =   465
            Width           =   7755
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "TAREWT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   24
            Left            =   6525
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   49
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "areacd"
            Height          =   300
            Index           =   28
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   40
            TabStop         =   0   'False
            Top             =   1095
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "brkcd"
            Height          =   300
            Index           =   27
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   38
            TabStop         =   0   'False
            Top             =   780
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            Height          =   300
            Index           =   26
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   36
            TabStop         =   0   'False
            Top             =   465
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "LOTNO"
            Height          =   300
            Index           =   2
            Left            =   2790
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   32
            TabStop         =   0   'False
            Top             =   150
            Width           =   780
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "varcode"
            Height          =   300
            Index           =   29
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   42
            TabStop         =   0   'False
            Top             =   1410
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "netwt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   25
            Left            =   8580
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   50
            TabStop         =   0   'False
            Top             =   1740
            Width           =   1065
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "GRSWT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   300
            Index           =   23
            Left            =   4290
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   48
            TabStop         =   0   'False
            Top             =   1725
            Width           =   1080
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "CATCD"
            Height          =   300
            Index           =   0
            Left            =   960
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   31
            TabStop         =   0   'False
            Top             =   150
            Width           =   930
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            Height          =   300
            Index           =   1
            Left            =   6615
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   34
            TabStop         =   0   'False
            Top             =   150
            Width           =   945
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   300
            Index           =   0
            Left            =   8535
            TabIndex        =   35
            Top             =   150
            Width           =   1110
            _ExtentX        =   1958
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "lotdt"
            Height          =   300
            Index           =   1
            Left            =   4425
            TabIndex        =   33
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   529
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Unit"
            Height          =   195
            Index           =   6
            Left            =   6600
            TabIndex        =   158
            Top             =   1155
            Width           =   810
         End
         Begin VB.Label Label20 
            Caption         =   "SNo."
            Height          =   195
            Left            =   3765
            TabIndex        =   99
            Top             =   1470
            Width           =   495
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   7695
            TabIndex        =   82
            Top             =   1455
            Width           =   285
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Arrival No."
            Height          =   195
            Left            =   5655
            TabIndex        =   81
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Broker "
            Height          =   195
            Index           =   0
            Left            =   150
            TabIndex        =   80
            Top             =   825
            Width           =   510
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Station"
            Height          =   195
            Left            =   150
            TabIndex        =   79
            Top             =   1140
            Width           =   495
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   150
            TabIndex        =   78
            Top             =   480
            Width           =   570
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            Height          =   195
            Left            =   2055
            TabIndex        =   74
            Top             =   225
            Width           =   525
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   150
            TabIndex        =   73
            Top             =   1455
            Width           =   480
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   3150
            TabIndex        =   72
            Top             =   1800
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   7680
            TabIndex        =   71
            Top             =   1785
            Width           =   810
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   5445
            TabIndex        =   70
            Top             =   1755
            Width           =   885
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   150
            TabIndex        =   69
            Top             =   1770
            Width           =   585
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Count"
            Height          =   195
            Left            =   5445
            TabIndex        =   68
            Top             =   1455
            Width           =   915
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            Height          =   195
            Left            =   3705
            TabIndex        =   67
            Top             =   225
            Width           =   615
         End
         Begin VB.Label Label18 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7680
            TabIndex        =   66
            Top             =   225
            Width           =   345
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   150
            TabIndex        =   65
            Top             =   180
            Width           =   630
         End
      End
      Begin TabDlg.SSTab SSTab2 
         Height          =   5310
         Left            =   120
         TabIndex        =   83
         Top             =   2760
         Width           =   12915
         _ExtentX        =   22781
         _ExtentY        =   9366
         _Version        =   393216
         Tabs            =   1
         TabsPerRow      =   1
         TabHeight       =   520
         TabCaption(0)   =   "&Purchase Bill Details"
         TabPicture(0)   =   "frmPurchaseTradeBill.frx":5E8C
         Tab(0).ControlEnabled=   -1  'True
         Tab(0).Control(0)=   "DTPicker2"
         Tab(0).Control(0).Enabled=   0   'False
         Tab(0).Control(1)=   "Frame8"
         Tab(0).Control(1).Enabled=   0   'False
         Tab(0).ControlCount=   2
         Begin VB.Frame Frame8 
            Height          =   4815
            Left            =   105
            TabIndex        =   84
            Top             =   330
            Width           =   10065
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
               Left            =   120
               TabIndex        =   267
               Top             =   4080
               Width           =   9465
               Begin VB.TextBox txtfields 
                  DataField       =   "IGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   116
                  Left            =   8310
                  MaxLength       =   15
                  TabIndex        =   273
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "SGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   117
                  Left            =   5190
                  MaxLength       =   15
                  TabIndex        =   272
                  Top             =   165
                  Width           =   1095
               End
               Begin VB.TextBox txtfields 
                  DataField       =   "CGSTAMT"
                  ForeColor       =   &H00000000&
                  Height          =   330
                  Index           =   118
                  Left            =   1860
                  MaxLength       =   15
                  TabIndex        =   271
                  Top             =   150
                  Width           =   1150
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   100
                  Left            =   1200
                  MaxLength       =   9
                  TabIndex        =   270
                  Top             =   150
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   101
                  Left            =   4560
                  MaxLength       =   9
                  TabIndex        =   269
                  Top             =   165
                  Width           =   615
               End
               Begin VB.TextBox txtfields 
                  Alignment       =   1  'Right Justify
                  BackColor       =   &H00FFFFFF&
                  DataField       =   "LCINTPER"
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
                  Index           =   102
                  Left            =   7680
                  MaxLength       =   9
                  TabIndex        =   268
                  Top             =   165
                  Width           =   615
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
                  Left            =   6480
                  TabIndex        =   276
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
                  Left            =   3450
                  TabIndex        =   275
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
                  TabIndex        =   274
                  Top             =   210
                  Width           =   435
               End
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   96
               Left            =   8250
               TabIndex        =   21
               Top             =   3300
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "PNETWT"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   9
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   9
               Top             =   2970
               Width           =   1545
            End
            Begin VB.TextBox txtDBCRNt 
               Alignment       =   1  'Right Justify
               DataField       =   "dbamt"
               Height          =   315
               Left            =   8250
               Locked          =   -1  'True
               TabIndex        =   17
               TabStop         =   0   'False
               Top             =   1827
               Width           =   1410
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "pgrswt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   95
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   7
               Top             =   2210
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "ptarewt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   92
               Left            =   1680
               MaxLength       =   11
               TabIndex        =   8
               Top             =   2595
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               DataField       =   "BRKCD"
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
               Index           =   90
               Left            =   1680
               TabIndex        =   11
               Top             =   3690
               Width           =   1545
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
               Index           =   89
               Left            =   3255
               TabIndex        =   172
               Top             =   3690
               Width           =   6435
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
               Index           =   40
               Left            =   3255
               TabIndex        =   155
               Top             =   4665
               Visible         =   0   'False
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "Form_Type"
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
               Index           =   39
               Left            =   1680
               TabIndex        =   266
               Top             =   4650
               Visible         =   0   'False
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "sampwt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   8
               Left            =   1680
               MaxLength       =   10
               TabIndex        =   10
               TabStop         =   0   'False
               Top             =   3315
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "fbillvalue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   2057
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   47
               Left            =   8250
               TabIndex        =   20
               Top             =   2925
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "Quality"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               ForeColor       =   &H80000001&
               Height          =   315
               Index           =   4
               Left            =   4890
               TabIndex        =   15
               Top             =   3300
               Width           =   1380
            End
            Begin VB.TextBox txtAdjValue 
               Alignment       =   1  'Right Justify
               DataField       =   "AdjValue"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Left            =   8250
               MaxLength       =   12
               TabIndex        =   19
               Top             =   2550
               Width           =   1410
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "netwt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   50
               Left            =   4890
               TabIndex        =   14
               Top             =   2925
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "tarewt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   49
               Left            =   4890
               TabIndex        =   13
               Top             =   2550
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               DataField       =   "grswt"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   48
               Left            =   4890
               TabIndex        =   12
               Top             =   2175
               Width           =   1380
            End
            Begin VB.TextBox txtfields 
               DataField       =   "fbillwt"
               Height          =   300
               Index           =   46
               Left            =   4920
               TabIndex        =   53
               Top             =   3315
               Visible         =   0   'False
               Width           =   1200
            End
            Begin VB.ComboBox Combo2 
               Height          =   315
               ItemData        =   "frmPurchaseTradeBill.frx":5EA8
               Left            =   8250
               List            =   "frmPurchaseTradeBill.frx":5EB2
               Locked          =   -1  'True
               TabIndex        =   16
               Top             =   1455
               Visible         =   0   'False
               Width           =   1440
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.00"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Height          =   315
               Index           =   7
               Left            =   8250
               MaxLength       =   12
               TabIndex        =   18
               Top             =   2190
               Width           =   1425
            End
            Begin VB.TextBox txtfields 
               DataField       =   "Fbillno"
               Height          =   315
               Index           =   6
               Left            =   1680
               MaxLength       =   20
               TabIndex        =   5
               Top             =   1828
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   303
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   52
               TabStop         =   0   'False
               Top             =   915
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "ptype"
               Height          =   315
               Index           =   302
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   2
               Top             =   900
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               DataField       =   "pjno"
               Height          =   315
               Index           =   304
               Left            =   1680
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   3
               Top             =   1446
               Width           =   1545
            End
            Begin VB.TextBox txtfields 
               BackColor       =   &H00E0E0E0&
               Height          =   330
               Index           =   301
               Left            =   3255
               Locked          =   -1  'True
               MaxLength       =   100
               TabIndex        =   51
               TabStop         =   0   'False
               Top             =   525
               Width           =   6420
            End
            Begin VB.TextBox txtfields 
               DataField       =   "pjtc"
               Height          =   315
               Index           =   300
               Left            =   1680
               MaxLength       =   100
               TabIndex        =   1
               Top             =   525
               Width           =   1545
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               DataField       =   "pjdt"
               Height          =   315
               Index           =   3
               Left            =   4890
               TabIndex        =   4
               Top             =   1455
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   10
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSMask.MaskEdBox MaskEdBox1 
               Height          =   315
               Index           =   2
               Left            =   4890
               TabIndex        =   6
               Top             =   1845
               Width           =   1230
               _ExtentX        =   2170
               _ExtentY        =   556
               _Version        =   393216
               MaxLength       =   12
               Mask            =   "##/##/####"
               PromptChar      =   "_"
            End
            Begin MSComCtl2.DTPicker DTPicker3 
               Height          =   315
               Left            =   4920
               TabIndex        =   22
               Top             =   1845
               Width           =   1515
               _ExtentX        =   2672
               _ExtentY        =   556
               _Version        =   393216
               Enabled         =   0   'False
               Format          =   134086657
               CurrentDate     =   39955
            End
            Begin VB.Label Label81 
               AutoSize        =   -1  'True
               Caption         =   "Bill Value"
               Height          =   195
               Left            =   6465
               TabIndex        =   177
               Top             =   3360
               Width           =   645
            End
            Begin VB.Label Label80 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Net Weight"
               Height          =   195
               Left            =   90
               TabIndex        =   176
               Top             =   3030
               Width           =   1425
            End
            Begin VB.Label Label79 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Tare Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   175
               Top             =   2655
               Width           =   1500
            End
            Begin VB.Label Label76 
               Caption         =   "Broker"
               Height          =   195
               Left            =   105
               TabIndex        =   173
               Top             =   3720
               Width           =   1260
            End
            Begin VB.Label Label70 
               Caption         =   "Form Type"
               Height          =   195
               Left            =   105
               TabIndex        =   156
               Top             =   4740
               Visible         =   0   'False
               Width           =   1260
            End
            Begin VB.Label Label47 
               AutoSize        =   -1  'True
               Caption         =   "Quality Allowance"
               Height          =   195
               Left            =   3345
               TabIndex        =   113
               Top             =   3360
               Width           =   1260
            End
            Begin VB.Label Label44 
               AutoSize        =   -1  'True
               Caption         =   "Dr/Cr Note"
               Height          =   195
               Left            =   6480
               TabIndex        =   106
               Top             =   1905
               Width           =   780
            End
            Begin VB.Label Label43 
               AutoSize        =   -1  'True
               Caption         =   "Adjustment Value (+/-)"
               ForeColor       =   &H00000000&
               Height          =   195
               Left            =   6495
               TabIndex        =   105
               Top             =   2595
               Width           =   1575
            End
            Begin VB.Label Label42 
               AutoSize        =   -1  'True
               Caption         =   "Mill Net Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   104
               Top             =   2985
               Width           =   1080
            End
            Begin VB.Label Label41 
               AutoSize        =   -1  'True
               Caption         =   "Mill Tare Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   103
               Top             =   2610
               Width           =   1155
            End
            Begin VB.Label Label40 
               AutoSize        =   -1  'True
               Caption         =   "Mill Gross Weight"
               Height          =   195
               Left            =   3345
               TabIndex        =   102
               Top             =   2235
               Width           =   1230
            End
            Begin VB.Label Label28 
               AutoSize        =   -1  'True
               Caption         =   "MRN Value"
               Height          =   195
               Left            =   6480
               TabIndex        =   101
               Top             =   2985
               Width           =   825
            End
            Begin VB.Label Label27 
               AutoSize        =   -1  'True
               Caption         =   "Final Bill Wt."
               Height          =   195
               Left            =   3600
               TabIndex        =   100
               Top             =   3330
               Visible         =   0   'False
               Width           =   870
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "RG23A"
               Height          =   195
               Index           =   5
               Left            =   6480
               TabIndex        =   98
               Top             =   1515
               Visible         =   0   'False
               Width           =   525
            End
            Begin VB.Label Label10 
               AutoSize        =   -1  'True
               Caption         =   "Sample Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   96
               Top             =   3375
               Width           =   1080
            End
            Begin VB.Label Label19 
               AutoSize        =   -1  'True
               Caption         =   "Supplier Goss Weight"
               Height          =   195
               Left            =   105
               TabIndex        =   95
               Top             =   2270
               Width           =   1530
            End
            Begin VB.Label Label31 
               AutoSize        =   -1  'True
               Caption         =   "Assessable Value"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   6480
               TabIndex        =   94
               Top             =   2235
               Width           =   1275
            End
            Begin VB.Label Label36 
               AutoSize        =   -1  'True
               Caption         =   "Bill Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   93
               Top             =   1860
               Width           =   615
            End
            Begin VB.Label Label14 
               AutoSize        =   -1  'True
               Caption         =   "Bill Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   105
               TabIndex        =   90
               Top             =   1905
               Width           =   795
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Purchase Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   4
               Left            =   105
               TabIndex        =   89
               Top             =   975
               Width           =   1080
            End
            Begin VB.Label Label9 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Date"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Left            =   3390
               TabIndex        =   87
               Top             =   1515
               Width           =   840
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "P.J.V. Number"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   3
               Left            =   105
               TabIndex        =   86
               Top             =   1515
               Width           =   1020
            End
            Begin VB.Label Label8 
               AutoSize        =   -1  'True
               Caption         =   "Transaction Type"
               ForeColor       =   &H00FF0000&
               Height          =   195
               Index           =   2
               Left            =   105
               TabIndex        =   85
               Top             =   585
               Width           =   1245
            End
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   375
            Left            =   5040
            TabIndex        =   171
            Top             =   2160
            Width           =   1455
            _ExtentX        =   2566
            _ExtentY        =   661
            _Version        =   393216
            Format          =   119799809
            CurrentDate     =   39955
         End
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2220
      TabIndex        =   107
      Top             =   3570
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         Height          =   615
         Left            =   2955
         Style           =   1  'Graphical
         TabIndex        =   110
         Top             =   1725
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&Cancel"
         Height          =   615
         Left            =   4035
         Style           =   1  'Graphical
         TabIndex        =   109
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   108
         Top             =   930
         Width           =   1665
      End
      Begin VB.Label Label45 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Find "
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
         TabIndex        =   112
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2595
         TabIndex        =   111
         Top             =   1005
         Width           =   570
      End
   End
   Begin VB.Frame Frame9 
      Height          =   4785
      Left            =   1800
      TabIndex        =   56
      Top             =   1920
      Visible         =   0   'False
      Width           =   8475
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3210
         Left            =   270
         TabIndex        =   92
         Top             =   720
         Width           =   7890
         _ExtentX        =   13917
         _ExtentY        =   5662
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin VB.CommandButton Command2 
         Caption         =   "&Cancel"
         Height          =   375
         Left            =   4680
         TabIndex        =   91
         Top             =   4095
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2580
         TabIndex        =   88
         Top             =   4080
         Width           =   1140
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         AutoSize        =   -1  'True
         Caption         =   "Issue Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   240
         Left            =   3525
         TabIndex        =   57
         Top             =   225
         Width           =   1380
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   1200
      TabIndex        =   55
      Top             =   1440
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KslList1 
         Height          =   3375
         Left            =   840
         TabIndex        =   75
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "frmPurchaseTradeBill.frx":5EBF
         Height          =   615
         Left            =   3015
         Picture         =   "frmPurchaseTradeBill.frx":62A5
         Style           =   1  'Graphical
         TabIndex        =   76
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "frmPurchaseTradeBill.frx":666B
         Height          =   615
         Left            =   4770
         Picture         =   "frmPurchaseTradeBill.frx":6A4D
         Style           =   1  'Graphical
         TabIndex        =   77
         Top             =   4080
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   3255
         Left            =   840
         TabIndex        =   59
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Label1"
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
         TabIndex        =   58
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Frame Frame5 
      Height          =   630
      Left            =   3960
      TabIndex        =   147
      Top             =   3000
      Visible         =   0   'False
      Width           =   5460
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   149
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   148
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label68 
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
         TabIndex        =   150
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.Frame Frame14 
      Height          =   6345
      Left            =   600
      TabIndex        =   167
      Top             =   1680
      Visible         =   0   'False
      Width           =   9765
      Begin VB.ListBox LstPO 
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4620
         ItemData        =   "frmPurchaseTradeBill.frx":6E20
         Left            =   0
         List            =   "frmPurchaseTradeBill.frx":6E22
         Style           =   1  'Checkbox
         TabIndex        =   162
         Top             =   960
         Width           =   9750
      End
      Begin VB.CommandButton StockOk 
         Caption         =   "&OK"
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
         Left            =   3480
         TabIndex        =   163
         Top             =   5760
         Width           =   945
      End
      Begin VB.CommandButton StockClose 
         Cancel          =   -1  'True
         Caption         =   "&Close"
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
         Left            =   5280
         TabIndex        =   164
         Top             =   5760
         Width           =   945
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H0000C000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   210
         Index           =   0
         Left            =   0
         TabIndex        =   170
         Top             =   690
         Width           =   9735
      End
      Begin VB.Label lblLabels 
         BackColor       =   &H0000C000&
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   210
         Index           =   10
         Left            =   0
         TabIndex        =   169
         Top             =   480
         Width           =   9735
      End
      Begin VB.Label Label107 
         Alignment       =   2  'Center
         BackColor       =   &H00008000&
         Caption         =   "*** Lot No. Listing ***"
         BeginProperty Font 
            Name            =   "Courier New"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000009&
         Height          =   315
         Left            =   0
         TabIndex        =   168
         Top             =   105
         Width           =   9735
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Purchase Bills - Multiple Lot(s)"
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
      Left            =   480
      TabIndex        =   54
      Top             =   585
      Width           =   4035
   End
End
Attribute VB_Name = "frmPurchaseTradeBill"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'---------------------------------------------------------------------------------------
' Module    : frmPurchaseBill
' DateTime  : 07/12/2008 10:29
' Author    : Administrator
' Purpose   :
'---------------------------------------------------------------------------------------

Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoTestRs As Recordset
Dim rstFA As Recordset
Dim rstQry As Recordset
Dim rs As Recordset
Dim RS1 As Recordset
Dim dblDutyPer As Double
Dim irow As Integer
Dim dSingleValue As Double
Dim STATEFLAG, SuppType, ValueFLG As String
Dim Sflg As String
Dim Opt As String
Dim FtFlg As String
Dim ftamt As Double
Dim oText As TextBox
Dim dblTotalLC As Double
Dim strDelType As String
Dim reason As String

Dim db As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Integer
Dim GT As Integer
Dim z As Integer
Dim qty As Integer
Dim dLANDCOSTWITHTAX As Double
Dim oldgrs As Double
Dim oldtare As Double
Dim ORGAmt As Double
Dim delivery As String
Dim dblDuty, s As Double
Dim sCode As String
Dim Gtax As String
Dim GAtax As String

Dim sLotno As String
Dim sLotDt As String
Dim sSLcode As String
Dim sLotYear As String
Dim dCashDis As Double
Dim dTradeDis As Double
Dim dLryFgt As Double
Dim DBED As Double
Dim dCess As Double
Dim dEDCess As Double
Dim dHScess As Double
Dim dTax As Double
Dim dSC As Double
Dim dAddTax As Double
Dim dCST As Double
Dim dOtherTax As Double
Dim dRlyFrg As Double
Dim dInsurance As Double
Dim dComm As Double
Dim dLC As Double
Dim dDRnote As Double
Dim dDamage As Double
Dim dCustoms As Double
Dim dClearance As Double
Dim dOthersTaxable As Double
Dim dOthersNonTaxable As Double
Dim dBrokerComm As Double
Dim dFbillValue As Double
Dim dCharity As Double
Dim DDbamt As Double
Dim dSupWgt As Double
Dim dSupGWt As Double
Dim dSupTWt As Double
Dim dSupBValue As Double
Dim dFinGrsWgt As Double
Dim dFinTarWgt As Double
Dim dFinNetWgt As Double
Dim dSampleWgt As Double

Dim dAssValue As Double
Dim dADJValue As Double
Dim dCashPer As Double
Dim dTradePer As Double
Dim dLryFgtPer As Double
Dim DBEDPer As Double
Dim dCessPer As Double
Dim dEDCessPer As Double
Dim dHScessPer As Double
Dim dTaxPer As Double
Dim dAddTaxPer As Double
Dim dCSTPer As Double
Dim dOtherTaxPer As Double
Dim dRlyFrgPer As Double
Dim dInsurancePer As Double
Dim dCommPer As Double
Dim dLCPer As Double
Dim dSCper As Double
Dim DSICAAmt As Double

Dim LANDCOST_ROFF As Integer
Dim ASSVAL_ROFF As Integer
Dim BED_ROFF As Integer
Dim AED_ROFF As Integer
Dim EDCESS_ROFF As Integer
Dim HSCESS_ROFF As Integer
Dim CESS_ROFF As Integer
Dim TAX_ROFF As Integer
Dim ADDTAX_ROFF As Integer
Dim SURCHARGE_ROFF As Integer
Dim CGST_ROFF As Integer
Dim SGST_ROFF As Integer
Dim IGST_ROFF As Integer

Const ILotNo          As Integer = 1
Const ILotdt          As Integer = 2
Const Ivarcode        As Integer = 3
Const Ivarname        As Integer = 4
Const Iunit           As Integer = 5
Const Icandyrate      As Integer = 6
Const IRebate         As Integer = 7
Const iQty            As Integer = 8
Const Imgrosswt       As Integer = 9
Const Imtarewt        As Integer = 10
Const Immoiturewt     As Integer = 11
Const Imnetwt         As Integer = 12
Const Ipgrosswt       As Integer = 13
Const Iptarewt        As Integer = 14
Const Ipnetwt         As Integer = 15
Const Iwbwt           As Integer = 16
Const Ipjamt          As Integer = 17
Const Icashdisper     As Integer = 18
Const Icashdisamt     As Integer = 19
Const Itradedisper    As Integer = 20
Const Itradedisamt    As Integer = 21
Const IFrtper         As Integer = 22
Const IFrtamt         As Integer = 23
Const IBedper         As Integer = 24
Const IBedamt         As Integer = 25
Const IEdper          As Integer = 26
Const IEdamt          As Integer = 27
Const IHscessper      As Integer = 28
Const IHscessamt      As Integer = 29
Const Icessper        As Integer = 30
Const Icessamt        As Integer = 31
Const ITaxCode        As Integer = 32
Const ITaxper         As Integer = 33
Const ITaxamt         As Integer = 34
Const ISCper          As Integer = 35
Const ISCamt          As Integer = 36
''sasi 19.6.17
Const IHSN            As Integer = 37
Const ICGSTPER        As Integer = 38
Const ICGSTAMT        As Integer = 39
Const ISGSTPER        As Integer = 40
Const ISGSTAMT        As Integer = 41
Const IIGSTPER        As Integer = 42
Const IIGSTAMT        As Integer = 43


''Additional Tax Field Add For Kores

Dim IATaxCode       As Integer
Dim IATaxper        As Integer
Dim IATaxamt        As Integer

Dim IOthtaxPer      As Integer
Dim IothTaxamt      As Integer
Dim IRlyfrtper      As Integer
Dim IRlyfrtamt      As Integer
Dim IInsper         As Integer
Dim IInsamt         As Integer
Dim ICommper        As Integer
Dim ICommAMT        As Integer
Dim ILCper          As Integer
Dim ILCamt          As Integer
Dim Icharity        As Integer
Dim IOthTaxableAmt  As Integer
Dim IOthers         As Integer
Dim IcustomDuty     As Integer
Dim ILandedcost     As Integer
Dim IRatekg         As Integer
Dim IAcWgt          As Integer
Dim Iround          As Integer
Dim ISICAAmt        As Integer
Dim IPremAmt        As Integer
Dim mfbillamt As Double
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set db = New Connection
    db.CursorLocation = adUseClient
    db.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure openconnection of Form Purchase Bill"
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
Select Case Index
Case 0
'If ToValidFinYear(Divcode) = False Then Exit Sub
    If Record_Exists("rm_purtype", "Please Define Purchase Type") = False Then Exit Sub
    Opt = "add"
    Set rsg = New Recordset
    rsg.Open "select max(tpjdt) from Rm_Lot where divcode='" & Divcode & "' and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", db, adOpenStatic
    If rsg.RecordCount > 0 Then
        If IsNull(rsg(0)) = False Then
            If pdate < rsg(0) Then
                MsgBox "Date should be Equal to Current Date Or Max PJV Date", vbInformation, head
                Screen.MousePointer = vbNormal
                Exit Sub
            End If
        End If
    End If
    Call AssignRoundoff
    desc.Caption = "Addition"
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = False
    BUTTON(10).Enabled = False
    
    Set RS1 = New Recordset
    RS1.Open "select isnull(max(sno),0)+1 AS SNO from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", db, adOpenStatic
    Txtfields(45).Text = RS1("SNO")
    Txtfields(45).Locked = False
    Txtfields(4).Text = ""
    Txtfields(39).Locked = False
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = True
    BUTTON(12).Enabled = False
    BUTTON(9).Enabled = True
    BUTTON(3).Enabled = True
    
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,tpjdt,SNO,tpjtc,PTYPE,AEDAMT,tpjno,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,Assvalue,form_type,dutyclaimable, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SCPER,SCAMT,SuppBillValue,SICAAmt,premAmt  FROM RM_LOT WHERE divcode='" & Divcode & "' and OPFLG ='N' AND tpjno is null", db, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount <> 0 Then
        DTPicker3.Enabled = True
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.clear = True
       ' LookUp.query = "SELECT Distinct a.supcd ""Supplier Code"",b.slname ""Supplier Name"",ISNULL(GSTSTATECODE ,'0') GSTSTATECODE ,ISNULL(GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype  from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(tpjno,0)=0 and lottype='A'" ''sasi 30.1.18
        LookUp.query = " select  Distinct a.supcd ""Supplier Code"",b.slname ""Supplier Name"",ISNULL(GSTSTATECODE ,'0') GSTSTATECODE ,ISNULL(GSTINNO,'') GSTINNO,isnull(b.supptype,'R') Supptype  from RM_LOT a " & _
                      " inner join fa_slmas b on b.slcode=a.SUPCD inner join RM_ARRIVAL bb on a.DIVCODE=bb.DIVCODE and a.ARRNO=bb.ARRNO and a.ARRDT=bb.ARRDATE and a.CATCD=bb.CATCD and a.VARCODE=bb.VARCODE and a.SUPCD=bb.SUPCD  " & _
                      " inner join RM_CONT c on a.DIVCODE=c.DIVCODE and a.SUPCD=c.SUPCD and a.VARCODE=bb.VARCODE and bb.CONTDT=c.CONTDT and c.CONTNO=bb.CONTNO " & _
                      " where   a.supcd=b.slcode AnD a.DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND  tpjno is null and a.lottype='A' and isnull(c.ftflg,'N')='Y' "
        

       
        ''Lookup.Query = "select lotno""Lot No."",lotdt""Lot Date"",plotno""Supplier Lot No."", inwardno ""Inward No."",a.supcd ""Supplier Code"",b.slname ""Supplier Name"",a.billno ""Bill No."" from rm_lot a,fa_slmas b where a.supcd=b.slcode AnD DIVCODE='" & Divcode & "' and opflg='N' AND ISNULL(INS_FLG,'N')='Y' AND isnull(tpjno,0)=0 and lottype='A' "
        LookUp.Caption = "Supplier Listing"
        LookUp.DefCol = "Supplier Name"
        'Lookup.ALIGN = "900,1000,1200,1000,1000,2700,1000"
        LookUp.ALIGN = "1500,3500"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
                SuppType = LookUp.Fields("supptype")
                Set rs = New Recordset
                rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields(0) & "'", db
                If Not rs.EOF Then
            
                       STATEFLAG = rs(0)
                       
                        If STATEFLAG = "F" Then
                        IGSTFLG = "N"
                       End If
                End If
                
                 If STATEFLAG <> "F" Then
                    If SuppType = "R" Then
                    If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "GST STATE CODE CANNOT BE EMPTY! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
            
                    If Trim(LookUp.Fields("GSTINNO")) = 0 Then
                        MsgBox "GST NO CODE CANNOT BE EMPTY ! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    Else
                       If Trim(LookUp.Fields("GSTSTATECODE")) = "0" Then
                        MsgBox "GST STATE CODE CANNOT BE EMPTY! UPDATE IN SUPPLIER MASTER ", vbInformation, head
                        Call BUTTON_Click(10)
                        Exit Sub
                    End If
                    End If
        
                 End If
                    
                Txtfields(81).Text = LookUp.Fields(0)
                Text4.Text = LookUp.Fields(1)
                Set rstQry = New Recordset
                rstQry.Open "select Fapostingflg from rm_param", db, adOpenStatic
                Qry = ""
                If rstQry(0) = "Y" Then
                    Qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt  from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode AnD a.DIVCODE='" & Divcode & "' and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND tpjno is null and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' and isnull(faflag,'')<>'Y' and isnull(e.ftflg,'N')='Y'order by a.lotdt,a.lotno"
                Else
                    Qry = " select a.lotno,a.lotdt,a.plotno,C.VARNAME, a.inwardno,a.billno,A.BILLDT,a.RATEKG,a.TOTLANDCOST,F.Deldesc ,isnull(e.ftflg,'N') ftflg,isnull(FTAmt,0) FTAmt   from rm_lot a,fa_slmas b, RM_VAR C ,RM_ARRIVAL D,RM_CONT E,RM_Delivery F  WHERE e.DLYTYPE=f.Delcode AND A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND A.VARCODE=C.VARCODE AND A.CATCD=C.CATCD AND a.supcd=b.slcode AnD a.DIVCODE='" & Divcode & "' and a.opflg='N' AND ISNULL(a.INS_FLG,'N')='Y' AND tpjno is null and a.lottype='A' AND A.SUPCD='" & LookUp.Fields(0) & "' and isnull(e.ftflg,'N')='Y' Order by a.lotdt,a.lotno"
                End If
                FtFlg = "N"
                ftamt = 0
               
                Set Lrs = New Recordset
                Lrs.Open Qry, db, adOpenStatic
                lblLabels(10).Caption = Space(1) & Padr("Mill", 6, " ") & Space(1) & Padr("Mill", 8, " ") & Space(2) & Padr("Supplier ", 8, " ") & Space(1) & Padr("Variety ", 14, " ") & Space(3) & Padr("Delivery", 8, " ") & Space(1) & Padr("Bill ", 6, " ") & Space(1) & Padr("Bill", 6, " ") & Space(3) & Padl("Rate/Kg", 7, " ") & Space(3) & Padl("Landed Cost", 13, " ")
                lblLabels(0).Caption = Space(1) & Padr("Lot No.", 6, " ") & Space(1) & Padr("Lot Date", 8, " ") & Space(2) & Padr("Lot No.", 8, " ") & Space(1) & Padr("Name", 14, " ") & Space(3) & Padr("Type", 8, " ") & Space(1) & Padr("No.", 6, " ") & Space(1) & Padr("Date", 9, " ") & Space(2) & Padr("", 8, " ") & Space(1) & Padr("", 12, " ")
                LstPO.clear
                Do Until Lrs.EOF
                    FtFlg = Lrs("ftflg")
                    ftamt = Lrs("ftamt")
                    LstPO.AddItem Padr(Lrs("lOTNO"), 5, " ") & Space(1) & Padr(Format(Lrs("LOTDT"), "dd/MM/yy"), 8, " ") & Space(2) & Padr(Lrs("PLOTNO"), 7, " ") & Space(1) & Padr(Lrs("Varname"), 15, " ") & Space(3) & Padr(Lrs("Deldesc"), 7, " ") & Space(1) & Padr(Lrs("bILLNO"), 6, " ") & Space(1) & Padr(Format(Lrs("BILLDT"), "dd/MM/yy"), 8, " ") & Space(1) & Padl(INF(Lrs("ratekg"), 4), 8, " ") & Space(1) & Padl(INF(Lrs("totlandcost"), 2), 14, " ")
                    Lrs.MoveNext
                Loop
                
                Frame14.Visible = True
                Frame14.ZOrder
                SSTab1.Enabled = False
                LstPO.SetFocus
                Exit Sub
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
   Else
        MsgBox "All Lots are used. Bill Entry not allowed!", vbInformation, head
        Exit Sub
   End If
Case 1
    'Modification
'    If UCase(CustID) <> "SKY" Then
'          Call QUERY_MODE
'          BUTTON(1).Enabled = False
'          Exit Sub
'    End If
    
    Opt = "mod"
    desc.Caption = "Modification"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    Call AssignRoundoff
    'db.BeginTrans
    Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,tpjtc,tpjno,tpjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt,premAmt  FROM RM_LOT WHERE divcode='" & Divcode & "' and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(tpjno,0)<>0", db, adOpenStatic, adLockBatchOptimistic
    
    If adoPrimaryRS.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
        LookUp.clear = True
        Set rstQry = New Recordset
        LookUp.query = "select Distinct tpjno""P.J.V. No."",tpjdt""P.J.V. Date"" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND tpjno IS not NULL AND isnull(AppFlg,'N') ='N' "
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT tpjno,tpjdt,tpjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND tpjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and tpjno=" & LookUp.Fields(0) & " and tpjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", db, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))

            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            BUTTON(8).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = False
            BUTTON(6).Enabled = False
            disablcontls

        Else
            MsgBox "All Lots are used. Modification not allowed!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
   End If

Case 2
    'Deletion
    'If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "del"
    desc.Caption = "Deletion"
    BUTTON(0).Enabled = False
    BUTTON(2).Enabled = False
    'db.BeginTrans
    Set adoPrimaryRS = New Recordset
    ''''adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and issbal is null and isswt is null and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    'adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
    
    adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,tpjtc,tpjno,tpjdt, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,SuppBillValue,SICAAmt,premAmt  FROM RM_LOT WHERE divcode='" & Divcode & "' and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' AND ISNULL(tpjno,0)<>0", db, adOpenStatic, adLockBatchOptimistic
    
    
    If adoPrimaryRS.RecordCount <> 0 Then
        Label15.Caption = "Lot Details"
        StatusBar1.Panels(2).Text = "Select any Lot Number From the List"
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_lot where LOTYEAR='" & Year(yfdate) & "' AND lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND tpjno IS not NULL"       'KslList1.table = "rm_lot "
'        KslList1.listfield1 = "Lotno" '''''"cast(lotno as varchar) as Lotno"
'
'        'KslList1.listfield1 = "lotno"
'
'        KslList1.listfield2 = "Lotdt" '"convert(varchar,lotdt,103)"
'        Frame3.Visible = True
'        Frame3.ZOrder
        LookUp.clear = True
        Set rstQry = New Recordset
        LookUp.query = "select Distinct tpjno""P.J.V. No."",tpjdt""P.J.V. Date"" from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "' AND tpjno IS not NULL AND isnull(AppFlg,'N') ='N' and isnull(premAmt,0)>0 "
        LookUp.Caption = "P.J.V. No. Listing"
        LookUp.DefCol = "P.J.V. No."
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
'            Opt = ""
           Set adoPrimaryRS = New Recordset
           adoPrimaryRS.Open "SELECT DISTINCT tpjno,tpjdt,tpjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND tpjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and tpjno=" & LookUp.Fields(0) & " and tpjdt='" & Format(LookUp.Fields(1), "YYYY/MM/DD") & "'", db, adOpenStatic, adLockBatchOptimistic

'        Call BillSelection(LookUp.Fields(0), Format(LookUp.Fields(1), "yyyy-MM-dd"))

            BUTTON(9).Enabled = True
            BUTTON(10).Enabled = True
            BUTTON(8).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = False
            BUTTON(5).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = False
        BUTTON(6).Enabled = False
        Else
            MsgBox "All Lots are used. Deletion not allowed!", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
   End If
Case 3
    Opt = "Printing"
    desc.Caption = "Listing"
    Dim a, k, cou As Integer
    Dim TotAmt, totbed, totaed, tottax1, tottax2, totpkfwd1, totpkfwd2, totins1, totins2 As Double
    Dim totdis, totinvvalue, totsc, totasc, totfrgt1, totfrgt2, totroff, totnetval As Double
    Dim totwaybill, sno2 As Double
    totwaybill = 0
    sno2 = 1
    Set RPTV = New Report.ReportView
    z = FreeFile
    Close
    z = 1
    'Open "C:\g1.TXT" For Output As #z
     Open KALFOLDERDATA & "\g1.TXT" For Output As #z
    Call header2(CInt(pg), CInt(co), rs)
    
    co = co + 16
    Set rs = New Recordset
    'rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.tpjno,a.tpjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,d.slname,f.areaname as station,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,rm_area f " & _
    '        "where  a.areacd=f.areacode and a.arrno=b.arrno and A.Catcd = c.Catcd And A.supcd = d.slcode and A.LOTNO=B.LOTNO AND A.SUPCD=B.SUPCD AND  a.divcode='" & Divcode & "' and a.lotno='" & txtfields(2) & "' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  and a.arrno = '" & txtfields(1) & "' ", DB, adOpenStatic
    rs.Open "select distinct a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.tpjno,a.tpjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,(a.totlandcost-a.ldgulg) as netV,a.netwt,a.Sno,isnull(fnetwt,0)fnetwt ,isnull(FBILLVALUE,0)fbillvalue,A.DBNO,B.CATNAME,A.BALES AS QUANTITY,a.Quality from rm_lot a,RM_CAT B " & _
            "where LOTYEAR='" & Year(yfdate) & "' AND A.CATCD=B.CATCD  AND  a.divcode='" & Divcode & "' and a.lotno='" & Txtfields(2) & " ' and a.opflg<>'Y' and a.lotyear='" & Year(yfdate) & "' and a.dbamt is not null ", db, adOpenStatic
   
Do While Not rs.EOF
    'Set rsa = New Recordset
       
    Print #z, Space(5); Padl(sno2, 4, " "); Space(2); Padr(rs("catname"), 8, " "); "-"; Space(1); Padr(rs("varcode"), 12, " "); Space(1); Padl(rs("quantity"), 10, " "); Space(1); Padl(INF(rs("fnetwt"), 3), 12, " "); Space(2); Padl(INF(rs("netwt"), 3), 12, " "); Space(2); Padl(INF(rs("FBILLVALUE"), 2), 15, " "); Space(0); Padl(INF(rs("netV"), 2), 16, " ")
    co = co + 1
    If co > PageLen Then
       pg = pg + 1
        co = 0
         Print #a, String(112, Chr(196))                    'Call header2(CInt(Pg), CInt(co))
        Print #a, Chr(12)
        co = co + 16
    End If
    rs.MoveNext
    sno2 = sno2 + 1
    Loop
  
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z, Space(5); String(112, Chr(196))
    Print #z,
    Print #z,
    Print #z,
    Print #z,
    Print #z, Chr(27) & "E" & Space(15) & "Prepared" & Space(15); "Checked" & Space(15) & "Manager" & Space(15) & "Director" & Chr(27) & "F"
    Print #z, Chr(12)
    Close #z
    z = FreeFile
'    Open "c:\g1.bat" For Output As #z
'    Print #z, "cd\"
'    Print #z, "c:"
'    Print #z, "cd\"
'    Print #z, "type g1.txt>prn"
'    Close #z
'    RPTV.txtfile = "c:\g1.txt"
'    RPTV.Batfile = "c:\g1.bat"
     Call KALBATPROCESS("g1")

Case 4

        Opt = "query"
        Frame6.Visible = True
        Frame6.ZOrder
        txtqry.Text = ""
        txtqry.SetFocus
        StatusBar1.Panels(2).Text = "Enter Any Lot Number to be Found out"

Case 9                               'Save
    
   If Opt = "add" Or Opt = "mod" Then

        If Opt = "add" Then
            Set rs = New Recordset
            rs.Open "SELECT tpjno FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and tpjno =" & val(Txtfields(304).Text), db, adOpenStatic

            If rs.EOF = False Then
                MsgBox "P.J.V. Number is " & val(Txtfields(304).Text), vbInformation, head
            End If

            Set rs = New Recordset
            rs.Open "SELECT ISNULL(MAX(tpjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
            Txtfields(304).Text = rs(0)
            If MaskEdBox1(3).Text = "__/__/____" Then MaskEdBox1(3).Text = pdate
            
            Set TmpRs = New Recordset
            TmpRs.Open "select count(*) from rm_lot where tpjno is not NULL and SUPCD ='" & Txtfields(81).Text & "' And BILLDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' And BillNo ='" & Trim(Txtfields(6).Text) & "'", db, adOpenStatic
            If TmpRs(0) > 0 Then
                MsgBox "Please enter valid Bill Number ", vbInformation, head
                SSTab2.Tab = 0
                Txtfields(6).SetFocus
                Exit Sub
            End If
        End If
        
        If Trim(Txtfields(6).Text) = "" Then
            MsgBox "Please enter the Bill Number", vbInformation, head
            Txtfields(6).SetFocus
            Exit Sub
        End If
        
        If val(Txtfields(96).Text) = 0 Then
            MsgBox "Please enter the Bill Value", vbInformation, head
            SSTab2.Tab = 0
            Txtfields(96).SetFocus
            Exit Sub
        End If
        
'        If Trim(Txtfields(39).Text) = "" Then
'            MsgBox "Please enter the Form Type", vbInformation, head
'            SSTab2.Tab = 0
'            Txtfields(39).Locked = False
'            Txtfields(39).SetFocus
'            Exit Sub
'        End If
        db.BeginTrans
        
        Call fbillamtcheck
        If mfbillamt <> val(Txtfields(47)) Then
'            MsgBox "Final Bill Amount Not Tallied", vbInformation, head
'            Exit Sub
        End If
        Call SaveFunction

        
        
        'To Update Rm_Lot.AdjValue Field
                
        If Opt = "mod" Then
        
        '**************Deletetion for Modification
           'strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
           db.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and vocdt = '" & Format(adoPrimaryRS("tpjdt"), "yyyy-mm-dd") & "'")
           Set rs = New Recordset
           rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and vocno = " & val(Txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", db, adOpenStatic
                
           Do While Not rs.EOF
               db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and vocno = " & val(Txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & rs!Glcode & "'")
               rs.MoveNext
           Loop

           'For i = 1 To spdVar.MaxRows
            '   DB.Execute ("UPDATE rm_lot SET pjtc = NULL, tpjno = NULL, tpjdt = NULL,FAFLAG=NULL,adjvalue=0 WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, i)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, i), "yyyy-mm-dd") & "'")
           'Next
            Call delrg23c
         End If
           
           '***********************Deletion End********************
        
        '*****************   FOR VALUE ENTRY ADDITION MODE     ******************
        
        '*****************    IDENTIFY THE CORRECT FATC FROM RM_CAT****************
        Dim thistc As Integer
        Dim thisgl As String
        Dim thistpjno As Integer
        Dim RsDrCr As Recordset
        Dim Drtc, Crtc
        Dim Narr, msg, Wsh
        Dim DrCrFlag As Boolean
        Dim Vcno
        
        thistc = 0
        thisgl = ""
        DrCrFlag = False
        
        Set rs = New Recordset
        rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & Txtfields(0).Text & "'", db, adOpenStatic, adLockBatchOptimistic
        If Trim(Txtfields(300).Text) = "" Or IsNull(Txtfields(300).Text) = True Then
            thistc = 0
        Else
            thistc = val(Txtfields(300).Text)
        End If
        
        '****************** PURCHASE JOURNAL NUMBER GENERATION *********************
        Set frs = New Recordset
        frs.Open "select fainstal from rm_param", db
        If frs(0) = "Y" Then
            Set RS1 = New Recordset
            RS1.Open "SELECT a.glcode FROM fa_tcmas a,fa_glmas b WHERE a.glcode=b.glcode and tc = " & thistc & "", db, adOpenStatic
            If Not RS1.EOF Then thisgl = RS1(0)
         
'               Debit/Credit Note Generation
            Set RsDrCr = New Recordset
            RsDrCr.Open "Select Drnote,CrNote From Fa_Param", db, adOpenStatic, adLockOptimistic
            Drtc = RsDrCr("Drnote")
            Crtc = RsDrCr("Crnote")
        
            If UCase(CustID) = "SARANYA" Then
                Narr = "Purchase Bill to " & Trim(Txtfields(26)) & ". Bill No. " & Trim(Txtfields(6)) & " Dt. " & MaskEdBox1(2).Text
            Else
                Narr = "Purchase Bill to " & Trim(Txtfields(26)) & ". Bill No. " & val(Txtfields(304)) & " Dt. " & MaskEdBox1(3).Text
            End If
                
            If val(txtDBCRNt.Text) <> 0 Then
                SSTab1.Tab = 0
                If val(txtDBCRNt.Text) > 0 Then msg = "Raise Debit Note? " & val(txtDBCRNt.Text)
                If val(txtDBCRNt.Text) < 0 Then msg = "Raise Credit Note? " & val(txtDBCRNt.Text)
                Wsh = MsgBox(msg, vbQuestion + vbYesNo, head)
                
                reason = InputBox("Enrer the Reason", head, 1500, 3500)
                 '01/08/14
                 Narr = Narr & " - " & Trim(Mid(reason, 1, 100))
                                
                If Wsh = vbYes Then
                    DrCrFlag = True
                Else
                    DrCrFlag = False
                End If
            End If
        
            If DrCrFlag = True Then
                If val(txtDBCRNt.Text) > 0 Then        'Raise Debit NOte
                
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Drtc & "' AND Divcode = '" & Divcode & "'", db, adOpenDynamic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If
                    
                    
                    db.Execute "INSERT INTO Fa_Jvhead " & _
                    "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
                    
                    db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                Trim(Txtfields(81)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ",'" & Left(Txtfields(24).Text, 1) & "'," & val(txtDBCRNt) & ")"
                    
                    If UCase(CustID) = "LMW" Then
                    '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", db
                                If Not rscost.EOF Then
                                    db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit,cccode) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & " )"
                                Else
                                    db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                    Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                    thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
                                End If
                    Else
                    
                        db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                thisgl & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
                    End If
                   
                                
                    DebitNote = True
                ElseIf val(txtDBCRNt.Text) < 0 Then    'Raise Credit NOte
                    Set RsDrCr = New Recordset
                    RsDrCr.Open "SELECT MAX(Vocno) FROM Fa_Jvhead WHERE Tc = '" & Crtc & "' AND Divcode = '" & Divcode & "'", db, adOpenStatic, adLockOptimistic
                    If RsDrCr.RecordCount > 0 Then
                        Vcno = IIf(IsNull(RsDrCr(0)), 1, RsDrCr(0) + 1)
                    Else
                        Vcno = 1
                    End If
                        
                       db.Execute "INSERT INTO Fa_Jvhead " & _
                       "(divcode,tc,vocno,vocdt,lbillno,lbilldt,lbilltc) VALUES ('" & _
                       Divcode & "','" & Drtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Txtfields(304) & "','" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "','" & Drtc & "')"
                       
                        If UCase(CustID) = "LMW" Then
                                '10/03/14
                            Set rscost = New Recordset
                            rscost.Open "select TOP 1 * from fa_ccglmas where glcode='" & thisgl & "'", db
                                If Not rscost.EOF Then
                                   db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue,CCCODE) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(Txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & "," & rscost("cccode") & ")"
                                Else
                                   db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(Txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ")"
                                End If
                                
                       Else
                            db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,debit,crdrflg,amtdue) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   thisgl & "','" & Narr & "'," & val(txtDBCRNt) & ",'" & Left(Txtfields(24).Text, 1) & "'," & Abs(val(txtDBCRNt)) & ")"
            
                       End If
                       
            
                       db.Execute "insert into FA_JVLINE(divcode,tc,vocno,vocdt,vocsno,accode,narration1,Credit) VALUES ('" & _
                                   Divcode & "','" & Crtc & "'," & Vcno & ",'" & Format(MaskEdBox1(3).Text, "YYYY-MM-DD") & "',1,'" & _
                                   Trim(Txtfields(81)) & "','" & Narr & "'," & Abs(val(txtDBCRNt)) & ")"
                                   'Trim(Txtfields(26))
                       CreditNote = True
                End If
            End If

'       UPDATING DR/CR NOTE DETAILS IN RM_LOT TABLE
            For irow = 1 To spdVar.MaxRows
                Set rs = New Recordset
                rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(GetText(spdVar, ILotdt, irow), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(GetText(spdVar, ILotdt, irow), "yyyy-MM-DD") & "'", db, adOpenStatic
                If rs.EOF = False Then
                    sLotYear = Year(rs("AYFDATE"))
                Else
                    sLotYear = Year(GetText(spdVar, ILotdt, iC))
                End If
    
              strSQL = ""
              strSQL = " Update Rm_Lot Set  tpjno=" & val(Txtfields(304).Text) & " , tpjtc='" & thistc & "' , tpjdt='" & Format(MaskEdBox1(3).Text, "YYYY/MM/DD") & "' Where " & _
                      " LOTYEAR='" & sLotYear & "' AND Lotno =" & GetText(spdVar, ILotNo, irow) & " and " & _
                      " LotDt ='" & Format(GetText(spdVar, ILotdt, irow), "yyyy/mm/dd") & "' and  " & _
                      " Divcode ='" & Divcode & "' And OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, irow) & "' ANd lotyear='" & sLotYear & "'"
    
              db.Execute strSQL
            Next
        End If
         
'        Set rstQry = New Recordset
'        rstQry.Open "SELECT FAPOSTINGFLG FROM RM_PARAM", db, adOpenStatic
'        If rstQry(0) = "N" Then

            thistpjno = 0
            Dim prs As Recordset
            Set prs = New Recordset
            thistpjno = val(Txtfields(304).Text)
            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", db, adOpenStatic
            VATFLG = "N"
            
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
        
            dblDutyPer = val(Txtfields(109).Text)
        

            If Not Trim(Txtfields(300).Text) = "" Then
                a11 = "Pur.Bill " & Txtfields(6).Text & " Dt. " & Format(MaskEdBox1(2).Text, "dd-mm-yyyy") & " - " & Format(val(Txtfields(50).Text), "0.000") & " Kgs."
                a12 = "" ''Trim(Text4.Text)
                a13 = a11 ''& " - " & a12
                Set rs = New Recordset
                rs.Open "Select CommInBillValue From RM_PARAM ", db, adOpenStatic
                If rs(0) = "Y" Then
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thistpjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & Txtfields(81).Text & "','" & Txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(Txtfields(55).Text) & "," & val(Txtfields(96).Text) & ", " & val(Txtfields(54).Text) & " , " & val(Txtfields(85).Text) & " , " & val(Txtfields(38).Text) & ", " & val(Txtfields(75).Text) & "," & val(Txtfields(73).Text) & "," & val(Txtfields(71).Text) & _
                             "," & val(Txtfields(65).Text) & "," & val(Txtfields(55).Text) & "," & val(Txtfields(87).Text) & "," & val(Txtfields(51).Text) & "," & val(Txtfields(43).Text) & "," & val(Txtfields(58).Text) & "," & val(Txtfields(60).Text) & "," & val(Txtfields(62).Text) & "," & val(Txtfields(70).Text) & "," & val(Txtfields(64).Text) & "," & val(Txtfields(63).Text) & "," & val(Txtfields(66).Text) & ", 0 ," & val(Txtfields(69).Text) & "," & val(Txtfields(82).Text) & "," & val(Txtfields(7).Text) & ",6,'" & Txtfields(302).Text & "','" & Txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(Txtfields(41).Text) & ",'" & Trim(Txtfields(42).Text) & "'," & val(Txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(Txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(Txtfields(118).Text)) & "','" & val(Trim(Txtfields(117).Text)) & "','" & val(Trim(Txtfields(116).Text)) & "','" & val(Trim(Txtfields(100).Text)) & "','" & val(Trim(Txtfields(101).Text)) & "','" & val(Trim(Txtfields(102).Text)) & "')"
                     Else
                        strSQL = " INSERT INTO FA_PURHD(" & _
                             " DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt, CommissionAmt, LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thistpjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & Txtfields(81).Text & "','" & Txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(Txtfields(55).Text) & "," & val(Txtfields(96).Text) & ", " & val(Txtfields(54).Text) & " , " & val(Txtfields(85).Text) & " , " & val(Txtfields(38).Text) & ", " & val(Txtfields(75).Text) & "," & val(Txtfields(73).Text) & "," & val(Txtfields(71).Text) & _
                             "," & val(Txtfields(65).Text) & "," & val(Txtfields(55).Text) & "," & val(Txtfields(87).Text) & "," & val(Txtfields(51).Text) & "," & val(Txtfields(43).Text) & "," & val(Txtfields(58).Text) & "," & val(Txtfields(60).Text) & "," & val(Txtfields(62).Text) & "," & val(Txtfields(70).Text) & "," & val(Txtfields(64).Text) & "," & val(Txtfields(63).Text) & "," & val(Txtfields(66).Text) & "," & (val(Txtfields(67).Text)) & "," & val(Txtfields(69).Text) & "," & val(Txtfields(82).Text) & "," & val(Txtfields(7).Text) & ",6,'" & Txtfields(302).Text & "','" & Txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(Txtfields(41).Text) & ",'" & Trim(Txtfields(42).Text) & "'," & val(Txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(Txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(Txtfields(118).Text)) & "','" & val(Trim(Txtfields(117).Text)) & "','" & val(Trim(Txtfields(116).Text)) & "','" & val(Trim(Txtfields(100).Text)) & "','" & val(Trim(Txtfields(101).Text)) & "','" & val(Trim(Txtfields(102).Text)) & "')"
                     End If
                     
                Else
                    strSQL = ""
                     If UCase(CustID) = "LMW" Then
                             strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER ) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thistpjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & Txtfields(81).Text & "','" & Txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(Txtfields(55).Text) & "," & val(Txtfields(96).Text) & ", " & val(Txtfields(54).Text) & " , " & val(Txtfields(85).Text) & " , " & val(Txtfields(38).Text) & ", " & val(Txtfields(75).Text) & "," & val(Txtfields(73).Text) & "," & val(Txtfields(71).Text) & _
                             "," & val(Txtfields(65).Text) & "," & val(Txtfields(55).Text) & "," & val(Txtfields(87).Text) & "," & val(Txtfields(51).Text) & "," & val(Txtfields(43).Text) & "," & val(Txtfields(58).Text) & "," & val(Txtfields(62).Text) & "," & val(Txtfields(70).Text) & "," & val(Txtfields(64).Text) & "," & val(Txtfields(63).Text) & "," & val(Txtfields(66).Text) & ",0," & val(Txtfields(69).Text) & "," & val(Txtfields(82).Text) & "," & val(Txtfields(7).Text) & ",6,'" & Txtfields(302).Text & "','" & Txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(Txtfields(41).Text) & ",'" & Trim(Txtfields(42).Text) & "'," & val(Txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(Txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(Txtfields(118).Text)) & "','" & val(Trim(Txtfields(117).Text)) & "','" & val(Trim(Txtfields(116).Text)) & "','" & val(Trim(Txtfields(100).Text)) & "','" & val(Trim(Txtfields(101).Text)) & "','" & val(Trim(Txtfields(102).Text)) & "')"
                     Else
                      strSQL = "INSERT INTO FA_PURHD(" & _
                             "DIVCODE,TC,PJVNO,PJVDT,SLCODE,BILLNO,BILLDT,TAXAMT,BILLAMT,CashDisAmt, TradeDisAmt, LryFrieghtAmt, BEDAmt,EDCessAmt , HSCessAmt,CessAmt, TaxAmount,CSTAmt, OtherTaxAmt, RlyFrieghtAmt,InsuranceAmt,  LCInterestAmt,DRNoteAmtAmt,DamageAmt, Charity,ClearanceAmt, OthersAmt,CustomsDutyAmt, BrCommissionAmt,AssessableAmt,MODULE,PurchaseType,TaxName,Narration,DUTYPER,OtherTaxableAmt,addtaxcode,addtaxamount,AdjustAmt,SurchageAmt,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER ) " & _
                             " VALUES " & _
                             " ('" & Divcode & "'," & thistc & " ," & thistpjno & ",'" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "','" & Txtfields(81).Text & "','" & Txtfields(6).Text & "','" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "'," & val(Txtfields(55).Text) & "," & val(Txtfields(96).Text) & ", " & val(Txtfields(54).Text) & " , " & val(Txtfields(85).Text) & " , " & val(Txtfields(38).Text) & ", " & val(Txtfields(75).Text) & "," & val(Txtfields(73).Text) & "," & val(Txtfields(71).Text) & _
                             "," & val(Txtfields(65).Text) & "," & val(Txtfields(55).Text) & "," & val(Txtfields(87).Text) & "," & val(Txtfields(51).Text) & "," & val(Txtfields(43).Text) & "," & val(Txtfields(58).Text) & "," & val(Txtfields(62).Text) & "," & val(Txtfields(70).Text) & "," & val(Txtfields(64).Text) & "," & val(Txtfields(63).Text) & "," & val(Txtfields(66).Text) & "," & (val(Txtfields(67).Text)) & "," & val(Txtfields(69).Text) & "," & val(Txtfields(82).Text) & "," & val(Txtfields(7).Text) & ",6,'" & Txtfields(302).Text & "','" & Txtfields(83).Text & "','" & a13 & "'," & dblDutyPer & "," & val(Txtfields(41).Text) & ",'" & Trim(Txtfields(42).Text) & "'," & val(Txtfields(77).Text) & "," & val(txtAdjValue.Text) + val(txtDBCRNt.Text) & "," & val(Txtfields(93).Text) & " " & _
                             " ,'" & val(Trim(Txtfields(118).Text)) & "','" & val(Trim(Txtfields(117).Text)) & "','" & val(Trim(Txtfields(116).Text)) & "','" & val(Trim(Txtfields(100).Text)) & "','" & val(Trim(Txtfields(101).Text)) & "','" & val(Trim(Txtfields(102).Text)) & "')"
                    End If
                    
                End If

                db.Execute strSQL
            End If
            
            strSQL = ""
            strSQL = "INSERT INTO FA_PURDT(DIVCODE,TC,PJVNO,PJVDT,PJVSNO,GLCODE,NARRATION1,QTY,RATE,AMOUNT,CGSTAMT,SGSTAMT,IGSTAMT,CGSTPER,SGSTPER,IGSTPER)VALUES('" & Divcode & "'," & thistc & "," & thistpjno & " ,'" & Format(MaskEdBox1(3).Text, "yyyy-MM-dd") & "',1,'" & thisgl & "','" & a13 & "'," & val(Txtfields(50).Text) & "," & Round(val(Txtfields(78).Text) / val(Txtfields(50).Text), 4) & "," & val(Txtfields(7).Text) & ",'" & val(Trim(Txtfields(118).Text)) & "','" & val(Trim(Txtfields(117).Text)) & "','" & val(Trim(Txtfields(116).Text)) & "','" & val(Trim(Txtfields(100).Text)) & "','" & val(Trim(Txtfields(101).Text)) & "','" & val(Trim(Txtfields(102).Text)) & "')"          'IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue")) & ")"
            
            If Not Trim(Txtfields(300).Text) = "" Then db.Execute (strSQL)
'            If Not (Trim(TXTFIELDS(300).Text) = "" Or IsNull(TXTFIELDS(300).Text) = True) Then
'                     DB.Execute ("UPDATE rm_lot SET pjtc = '" & thistc & "', tpjno = " & thistpjno & ", tpjdt = '" & Format(MaskEdBox1(3).Text, "YYYY/MM/DD") & "' WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode ='" & Divcode & "' And catcd = '" & adoPrimaryRS("catcd") & "' And lotno = " & adoPrimaryRS("lotno") & " And lotdt = '" & Format(adoPrimaryRS("lotdt"), "yyyy-mm-dd") & "'")
'            End If
            
'''''shiva 01.02.11
''            Set Rs = New Recordset
''            Rs.Open "select * from fa_cstrn where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thistpjno & " and vocdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and trntype='PU'", db, adOpenDynamic, adLockOptimistic
''
''            If Not Rs.EOF Then
''                db.Execute "update fa_cstrn set narration1='" & a13 & "' where divcode='" & Divcode & "' and tc=" & thistc & " and vocno=" & thistpjno & " and vocdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and trntype='PU'"
''            End If
''            db.Execute "UPDATE RM_LOT SET FAFLAG = 'Y' Where LOTYEAR='" & Year(yfdate) & "' AND tpjno =" & thistpjno & " and LotDt ='" & Format(MaskEdBox1(3).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' "
''        Else
''                db.Execute "UPDATE RM_LOT SET FAFLAG = 'N' Where LOTYEAR='" & Year(yfdate) & "' AND tpjno =" & val(txtfields(304).Text) & " and tpjdt ='" & Format(MaskEdBox1(3).Text, "yyyy/mm/dd") & "' and  Divcode ='" & Divcode & "' and  OPFLG ='N' "
''        End If
'''shiva 01.02.11


        '************************************************** For Rg23a ***********************
             If Combo2.Text = "Yes" Then
                 Call Rg23A
             End If
        '************************************************** For Rg23a ***********************
        'db.BeginTrans
         db.CommitTrans
         
         '===============================================
        Dim frmFa As New frmFaPostingVerification
        frmFa.sTC = val(Txtfields(300).Text)
        frmFa.sVocno = val(Txtfields(304).Text)
        frmFa.sVocdt = Format(MaskEdBox1(3).Text, "dd/mm/yyyy")
        frmFa.sBillNo = Txtfields(6).Text
        frmFa.sBillDt = Format(MaskEdBox1(2).Text, "dd/mm/yyyy")
        frmFa.sTrnType = "PU"
        frmFa.Show vbModal
        If Not frmFa.bolTally Then
            db.BeginTrans
            Set frs = New Recordset
            frs.Open "select fainstal from rm_param", db
            If frs(0) = "Y" Then
                strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
               db.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               db.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               db.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
               Set rs = New Recordset
               rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", db, adOpenStatic
               Do While Not rs.EOF
                   db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & rs!Glcode & "'")
                   rs.MoveNext
               Loop
            End If
            If Opt = "add" Or Opt = "mod" Then
                For i = 1 To spdVar.MaxRows
                    db.Execute ("UPDATE rm_lot SET tpjtc = NULL, tpjno = NULL, tpjdt = NULL,premamt=null WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, i)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, i), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, Ivarcode, i) & "'")
                   '***********************Deletion********************
                Next
            End If
            
           ' Call delrg23c
            If Opt = "add" Or Opt = "mod" Then
                MsgBox "Record(s) Deleted", vbInformation, head
            End If
            db.CommitTrans
            Opt = ""
            Call query_mode
            Exit Sub
        End If
        '=================================================================================================================================================================================
        If DrCrFlag = True Then
            If DebitNote = True Then
                frmFa.sTC = Drtc
            ElseIf DebitNote = True Then
                frmFa.sTC = Crtc
            End If
            frmFa.sVocno = Vcno
            frmFa.sVocdt = Format(MaskEdBox1(3).Text, "dd/mm/yyyy")
            frmFa.sBillNo = val(Txtfields(6).Text)
            frmFa.sBillDt = Format(MaskEdBox1(2).Text, "dd/mm/yyyy")
            frmFa.sTrnType = "JV"
            If DebitNote = True Then
                frmFa.Caption = "Debit Note Journal Posting"
            ElseIf DebitNote = True Then
                frmFa.Caption = "Credit Note Journal Posting"
            End If
            
            frmFa.Show vbModal
            If Not frmFa.bolTally Then
                db.BeginTrans
                Set frs = New Recordset
                frs.Open "select fainstal from rm_param where divcode='" & Divcode & "'", db
                If frs(0) = "Y" Then
                   strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
                   db.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   db.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and pjvno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   db.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
                   Set rs = New Recordset
                   rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", db, adOpenStatic
                   Do While Not rs.EOF
                       db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(Txtfields(300)), 0, Txtfields(300)) & "' and vocno = " & IIf(IsNull(Txtfields(304)), 0, Txtfields(304)) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & rs!Glcode & "'")
                       rs.MoveNext
                   Loop
                End If
                If Opt = "add" Or Opt = "mod" Then
                    For i = 1 To spdVar.MaxRows
                        db.Execute ("UPDATE rm_lot SET tpjtc = NULL, tpjno = NULL, tpjdt = NULL WHERE opflg='N',premamt=null and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, i)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, i), "yyyy-mm-dd") & "' and varcode='" & GetText(spdVar, Ivarcode, i) & "'")
                       '***********************Deletion********************
                    Next
                End If
                
               ' Call delrg23c
                If Opt = "add" Or Opt = "mod" Then
                    MsgBox "Record(s) Deleted", vbInformation, head
                End If
                db.CommitTrans
                Opt = ""
                Call query_mode
                Exit Sub
            End If
        End If
        If Opt = "add" Then
            MsgBox "Record(s) Saved Successfully", vbInformation, head
        End If
        If Opt = "mod" Then
            MsgBox "Record(s) Modified Successfully", vbInformation, head
        End If
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        BUTTON(10).Enabled = False
    End If

    If Opt = "del" Then
        If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
        db.BeginTrans
''        Set frs = New Recordset
''        frs.Open "select fainstal,FAPOSTINGFLG from rm_param", DB
''        If frs(0) = "Y" And frs(1) = "N" Then

           strSQL = "DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'"
           db.Execute ("DELETE FROM FA_PURDT WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and pjvno = " & val(Txtfields(304).Text) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_PURHD WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and pjvno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and pjvdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_CSTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'")
           db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & IIf(IsNull(adoPrimaryRS("tpjtc")), 0, adoPrimaryRS("tpjtc")) & "' and vocno = " & IIf(IsNull(adoPrimaryRS("tpjno")), 0, adoPrimaryRS("tpjno")) & " and vocdt = '" & Format(adoPrimaryRS("tpjdt"), "yyyy-mm-dd") & "'")
           Set rs = New Recordset
           rs.Open "SELECT GLCODE FROM FA_CgTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and vocno = " & val(Txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "'", db, adOpenStatic
                
           Do While Not rs.EOF
               db.Execute ("DELETE FROM FA_CGTRN WHERE divcode ='" & Divcode & "' and tc = '" & Trim(Txtfields(300).Text) & "' and vocno = " & val(Txtfields(304).Text) & " and vocdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' AND GLCODE='" & rs!Glcode & "'")
               rs.MoveNext
           Loop
        
'''        End If
        
        For i = 1 To spdVar.MaxRows
        
            db.Execute ("UPDATE rm_lot SET tpjtc = NULL, tpjno = NULL, tpjdt = NULL,FAFLAG=NULL,adjvalue=0,premAmt =null WHERE opflg='N' and divcode = '" & Divcode & "'  And lotno = " & val(GetText(spdVar, ILotNo, i)) & " And lotdt = '" & Format(GetText(spdVar, ILotdt, i), "yyyy-mm-dd") & "'")
            Assvalue = (val(GetText(spdVar, Ipjamt, i))) ' + val(txtAdjValue.Text)) - val(txtFields(34).Text)

            strSQL = "UPDATE RM_LOT SET ASSVALUE=isnull(ASSVALUE,0)- " & Assvalue & ", IGSTAMT=isnull(IGSTAMT,0)-" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=isnull(sgstamt,0)-" & val(GetText(spdVar, ISGSTAMT, i)) & ",cgstamt=isnull(cgstamt,0)-" & val(GetText(spdVar, ICGSTAMT, i)) & ", FBILLVALUE= isnull(FBILLVALUE,0)-" & fBillValueLot(CInt(i)) & _
                 " ,LANDCOSTWITHTAX =isnull(LANDCOSTWITHTAX,0)- " & val(dLANDCOSTWITHTAX) & " ,TOTLANDCOST = isnull(TOTLANDCOST,0) - " & val(GetText(spdVar, ILandedcost, i)) & ", " & _
                 " RATEKG= RATEKG- " & val(GetText(spdVar, IRatekg, i)) & "  " & _
                 " , VATAMT =isnull(vatamt,0)- " & val(GetText(spdVar, ITaxamt, i)) & " WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, i) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, i), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "'and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, i) & "' "

            
            
           '***********************Deletion********************
        Next
        Call delrg23c
           '***********************Deletion********************
        db.CommitTrans
        MsgBox "Record(s) Deleted", vbInformation, head
        
        Opt = ""
    End If
    'Return to query mode
    Call query_mode
    
    '07/06/12
    'Call NEWFORM1(BUTTON, GSNO)
    
    
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
      
    Exit Sub
GOPRIMERROR:
 If err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
  'GoTo gocancel
   End If
del:
If err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    ' GoTo gocancel
    Exit Sub
End If
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    BUTTON(10).Enabled = False
    Opt = ""
    DTPicker3.Enabled = False
    BUTTON(6).Enabled = True
    BUTTON(12).Enabled = True
    BUTTON(7).Enabled = True
    BUTTON(8).Enabled = True
    BUTTON(3).Enabled = True
    BUTTON(11).Enabled = True
    Call query_mode
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
'Case 6 'movenext
'    BUTTON(5).Enabled = True
'    BUTTON(7).Enabled = True
'    If Not adoPrimaryRS.EOF Then
'    adoPrimaryRS.MoveNext
'    Else
'    BUTTON(6).Enabled = False
'    adoPrimaryRS.MoveLast
'    End If
'    If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
'        BUTTON(8).Enabled = False
'        BUTTON(6).Enabled = False
'        Beep
'      Else
'        BUTTON(8).Enabled = True
'        BUTTON(6).Enabled = True
'      End If
'
'Case 5 'movefirst
'    BUTTON(5).Enabled = False
'    BUTTON(7).Enabled = False
'    If Not adoPrimaryRS.BOF Then
'        adoPrimaryRS.MoveFirst
'    End If
'    StatusBar1.Panels(2).Text = "First Record"
'Case 7 'moveprev
'    BUTTON(8).Enabled = True
'    BUTTON(6).Enabled = True
'    If Not adoPrimaryRS.EOF Then
'        adoPrimaryRS.MovePrevious
'    Else
'        adoPrimaryRS.MoveFirst
'    End If
'Case 8 'movelast
'    BUTTON(8).Enabled = False
'    BUTTON(6).Enabled = False
'    If Not adoPrimaryRS.EOF Then
'        adoPrimaryRS.MoveLast
'    End If
'    StatusBar1.Panels(2).Text = "Last Record"
Case 5
     'first
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "First Record"
     On Error GoTo GoFirstError
''   Call clear_text
     adoPrimaryRS.MoveFirst
     Call bindcontls
     Call disablcontls
    'calling fir procedure from module
     Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:
    MsgBox err.Description, vbInformation, head

Case 6
     'next
      desc.Caption = "Query"
      StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
      On Error GoTo GoNextError
        
      If Not adoPrimaryRS.EOF Then
        adoPrimaryRS.MoveNext
        Call bindcontls
        Call disablcontls
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
      
     ' show the current record
      Call navi(BUTTON)
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
   MsgBox err.Description, vbInformation, head

Case 7
    'Previous
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "Records : " & CStr(adoPrimaryRS.RecordCount)
     On Error GoTo GoPrevError
     If Not adoPrimaryRS.BOF Then
        adoPrimaryRS.MovePrevious
        Call bindcontls
        Call disablcontls
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
    Call navi(BUTTON)
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
   MsgBox err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
     On Error GoTo GoLastError
     StatusBar1.Panels(2).Text = "Last Record"
     adoPrimaryRS.MoveLast
     Call bindcontls
     Call disablcontls
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
   MsgBox err.Description, vbInformation, head
   
   Case 13
    'report call
    Dim clsCryRpt2 As New clsCrystal
    
    'Set clsCryRpt2.cryRept = RMIPurchaseBill1
    '07/11/16-SUP.WT SIVAKUARM GM CHANGE(CUSTID PROBLEM)
    Set clsCryRpt2.cryRept = RMIPurchaseBill1
    
    clsCryRpt2.CrystalPrint

    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.SelectionFormula = "{RM_LOT.DIVCODE}='" & Divcode & "' AND {RM_LOT.tpjdt} = cdate('" & Format(MaskEdBox1(3), "yyyy-mm-dd") & "') AND {RM_LOT.tpjno}>=  " & Txtfields(304) & " AND {RM_LOT.tpjno} <= " & Txtfields(304) & " "
    CrystalReport1.ParameterFields(0) = "Date;" & Format(MaskEdBox1(3), "yyyy-mm-dd") & ""
    CrystalReport1.ParameterFields(1) = "From MRN No.;" & Txtfields(304) & ""
    CrystalReport1.ParameterFields(2) = "To MRN No.;" & Txtfields(304) & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

    Exit Sub
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox err.Description, vbInformation, head
    If Opt = "add" Then
      On Error Resume Next
        db.RollbackTrans
        BUTTON(10).Enabled = False
        Opt = ""
        BUTTON(6).Enabled = True
        BUTTON(12).Enabled = True
        BUTTON(7).Enabled = True
        BUTTON(8).Enabled = True
        BUTTON(3).Enabled = True
        BUTTON(11).Enabled = True
        Call query_mode
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        Screen.MousePointer = 0
        Opt = ""
        BUTTON(2).Enabled = True
        Call NEWFORM1(BUTTON, GSNO)
        Exit Sub
    End If

Screen.MousePointer = 0
End Sub

Private Sub Combo2_GotFocus()
On Error GoTo Combo2_GotFocus_Error

    Combo2.BackColor = &HC0FFC0

Exit Sub
Combo2_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Combo2_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_KeyPress(KeyAscii As Integer)
On Error GoTo Combo2_KeyPress_Error

KeyAscii = 0

Exit Sub
Combo2_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Combo2_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo2_LostFocus()
On Error GoTo Combo2_LostFocus_Error

    Combo2.BackColor = &HFFFFFF

Exit Sub
Combo2_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Combo2_LostFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Frame6.Visible = False
StatusBar1.Panels(2).Text = ""
Opt = ""
Call query_mode

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command3_Click of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
Dim Lrs As New ADODB.Recordset
On Error GoTo Command4_Click_Error

        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,tpjdt,SNO,tpjtc,PTYPE,AEDAMT,tpjno,RG23A,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,quality,Assvalue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'and OPFLG ='N' and lotno=" & val(txtqry.Text) & " ", db, adOpenStatic, adLockBatchOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "Please enter the valid Lot Number", vbInformation, head
            Command4.Enabled = True
            txtqry.Text = ""
            
            StatusBar1.Panels(2).Text = "No Such Lot No. Found"
            Exit Sub
        Else
        
        Call bindcontls
        
        
'        If Lrs.State Then Lrs.Close
'        Lrs.Open "select  slname from fa_slmas where  slcode ='" & Txtfields(78).Text & "'", DB, adOpenDynamic, adLockReadOnly
'        If Not Lrs.EOF Then
'            Text1(1).Text = Lrs("slname")
'            Text1(0).Text = Lrs("slname")
'            Text1(2).Text = Lrs("slname")
'        End If
        'calling query procedure from module
        'Call Query1(BUTTON, 9)
        Frame6.Visible = False
'        Buttonframe.Enabled = True
        SSTab1.Visible = True
        End If


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command4_Click of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub Command5_Click()    'ACTIVEX CANCEL
On Error GoTo Command5_Click_Error

StatusBar1.Panels(2).Text = ""
Frame3.Visible = False
'TabStrip1.Visible = True
SSTab1.Visible = True
'Frame5.Visible = True
Frame7.Visible = True
Frame8.Visible = True
BUTTON(0).Enabled = True
BUTTON(2).Enabled = True
Call NEWFORM1(BUTTON, GSNO)

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command5_Click of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command6_Click()    'ACTIVEX OKAY
On Error GoTo Command6_Click_Error


BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
StatusBar1.Panels(2).Text = ""
Select Case KSLLIST1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    Txtfields(83).Text = KSLLIST1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & Txtfields(83).Text & "'", db
    Txtfields(56).Text = val(newrs1(0))  'taxper
    Txtfields(55).Text = val(Txtfields(7).Text) * val(Txtfields(56).Text) / 100
    Txtfields(55).SetFocus

Case "Lotno"
If KSLLIST1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,tpjdt,tpjno,tpjtc,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,tpjdt,tpjno,tpjtc,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,OtherTaxableAmt,rateunit " & _
                    "FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KSLLIST1.Description, "yyyy-mm-dd") & "' and lotno=" & Trim(KSLLIST1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", db, adOpenStatic, adLockBatchOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
 
    If UCase(adoPrimaryRS("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoPrimaryRS("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        Txtfields(56).Text = IIf(IsNull(adoPrimaryRS("vatper")), 0, adoPrimaryRS("vatper"))
        Txtfields(55).Text = IIf(IsNull(adoPrimaryRS("vatamt")), 0, adoPrimaryRS("vatamt"))
    End If
    
    
    Txtfields(25).Locked = True
    Txtfields(0).Locked = True
    Txtfields(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    Txtfields(2).Locked = True
    Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
    Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
    Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
    Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Txtfields(82).Text = Format(Txtfields(82).Text, "#0.00")
    Txtfields(23).Locked = False
    Txtfields(24).Locked = False
    Txtfields(25).Locked = False
    Txtfields(46).Text = Format(Txtfields(46).Text, "#0.000")
    Txtfields(47).Text = Format(Txtfields(47).Text, "#0.000")
    Txtfields(48).Text = Format(Txtfields(48).Text, "#0.000")
    Txtfields(49).Text = Format(Txtfields(49).Text, "#0.000")
    Txtfields(50).Text = Format(Txtfields(50).Text, "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(KSLLIST1.Code) & " and c.lotdt='" & Format(KSLLIST1.Description, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", db, adOpenStatic
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        opt_nc.value = True
        If opt_c.value = True Then
            If UCase(delivery) = "S" Then
                Txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(Txtfields(51)) + val(Txtfields(60)) + val(Txtfields(62)) + val(Txtfields(70)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(82)) + val(Txtfields(55)) + val(Txtfields(87)) + val(Txtfields(38)) + val(Txtfields(43)) + val(Txtfields(58)) - (val(Txtfields(54)) + val(Txtfields(85))) + (val(Txtfields(75)) + (val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) * (100 - val(Txtfields(109))) / 100)), "0.00")
            Else
                Txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(Txtfields(51)) + val(Txtfields(60)) + val(Txtfields(62)) + val(Txtfields(70)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(82)) + val(Txtfields(55)) + val(Txtfields(87)) - (val(Txtfields(54)) + val(Txtfields(85))) + (val(Txtfields(75)) + (val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) * (100 - val(Txtfields(109))) / 100)), "0.00")
            End If
        Else
            If UCase(delivery) = "S" Then
                Txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(Txtfields(51)) + val(Txtfields(60)) + val(Txtfields(62)) + val(Txtfields(70)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(82)) + val(Txtfields(55)) + val(Txtfields(87)) + val(Txtfields(38)) + val(Txtfields(43)) + val(Txtfields(58)) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
   
            Else
                Txtfields(35).Text = Format(IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) + val(Txtfields(51)) + val(Txtfields(60)) + val(Txtfields(62)) + val(Txtfields(70)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(82)) + val(Txtfields(55)) + val(Txtfields(87)) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
                                    
            End If
        End If
               
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(83).Text & "'", db, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                Txtfields(78).Text = val(Txtfields(35).Text)
            Else
                Txtfields(78).Text = val(Txtfields(35).Text) - val(Txtfields(55).Text)
            End If
        Else
            'txtfields(78).Text = val(txtfields(35).Text) ''sasi 30.6.17
            Txtfields(78).Text = val(Txtfields(35).Text) - val(Txtfields(55).Text)
        End If
       
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(42).Text & "'", db, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                Txtfields(78).Text = val(Txtfields(35).Text)
            Else
                Txtfields(78).Text = val(Txtfields(35).Text) - val(Txtfields(77).Text)
            End If
        Else
            Txtfields(78).Text = val(Txtfields(35).Text) - val(Txtfields(55).Text)
        End If

       
       
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", db, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
         VATFLG = rsP(0)
    End If
        
    If VATFLG = "Y" Then
        If EXIST_VAT(Txtfields(26).Text) = True Then
              Txtfields(78).Text = val(Txtfields(78).Text) - val(Txtfields(55).Text) - val(Txtfields(77).Text)
        End If
    End If
    Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
    Txtfields(82) = Format(Txtfields(82).Text, "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("BillnO")), 0, adoPrimaryRS("BillNO"))
            Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
            Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))
        End If
   End If

''''''''''''''''''''
   Txtfields(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set rs = New Recordset
    rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", db, adOpenStatic
    If rs.RecordCount > 0 Then
        Txtfields(3).Text = rs("VARNAME")
    Else
        Txtfields(3).Text = ""
    End If
    If adoPrimaryRS("dbamt") <> Null Then
    txtDBCRNt.Text = ""
    End If
 Else
    MsgBox "Since the Bale is already Issued, the Record Cannot be added or deleted ", vbInformation, head
    Frame3.Visible = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
 End If
Else
    Frame3.Visible = False
    Call BUTTON_Click(10)
    Exit Sub
End If
Case "cast(a.tc as varchar)"
    SSTab1.Visible = True
    Txtfields(300).Text = KSLLIST1.Code
    Txtfields(301).Text = KSLLIST1.Description
    Txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    Txtfields(300).Text = KSLLIST1.Code
    Txtfields(301).Text = KSLLIST1.Description
    Txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    Txtfields(302).Text = KSLLIST1.Code
    Txtfields(303).Text = KSLLIST1.Description
    Txtfields(304).SetFocus
End Select
Frame3.Visible = False

Txtfields(300).tabIndex = 0
Txtfields(300).SetFocus
SSTab2.Tab = 0
opt_nc.value = True
Call fBillValue(dAssValue)
Exit Sub
Command6_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command6_Click of Form frmPurchaseBill", vbInformation, head
End Sub



Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox1(1).Text = DTPicker2.value

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_CloseUp of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker3_Change()
    If Opt = "add" Or Opt = "mod" Then
        MaskEdBox1(2).Mask = Format(DTPicker3.value, "dd/MM/yyyy")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)  'Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command7.Visible = False
        Frame5.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If
'    If KeyCode = 13 Then SendKeys "{TAB}"

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

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error

On Error GoTo Form_Load_Error
  opt_nc.value = True
  Call openconnection
  Opt = ""
  DATLAB.Caption = pdate
  DTPicker3.Enabled = False
  DTPicker3.value = pdate
'  TabStrip1.Tabs.Clear
 StatusBar1.Panels(1).Text = STBARmsg
 Set rs = New Recordset
 rs.Open "SELECT ADDTAXREQUIRED FROM RM_PARAM", db, adOpenStatic
 If rs(0) = "Y" Then
    lblAddTax.Enabled = True
    Txtfields(42).Enabled = True
    Txtfields(79).Enabled = True
    Txtfields(77).Enabled = True
 Else
    lblAddTax.Enabled = False
    Txtfields(42).Enabled = False
    Txtfields(79).Enabled = False
    Txtfields(77).Enabled = False
 End If
Set rs = New Recordset
 rs.Open "SELECT isnull(WeightFlg,'S')  WeightFlg  FROM RM_PARAM", db, adOpenStatic
If Not rs.EOF Then
 ValueFLG = Trim(rs(0))
 End If
 
 
   Set rs = New Recordset
  rs.Open "Select AddtaxRequired from rm_param", db, adOpenStatic
  If Not rs.EOF Then
    If rs(0) = "Y" Then
        'Additional Tax Field Add For Kores
        
         IATaxCode = 44
         IATaxper = 45
         IATaxamt = 46
         IOthtaxPer = 47
         IothTaxamt = 48
         IRlyfrtper = 49
         IRlyfrtamt = 50
         IInsper = 51
         IInsamt = 52
         ICommper = 53
         ICommAMT = 54
         ILCper = 55
         ILCamt = 56
         Icharity = 57
         IOthTaxableAmt = 58
         IOthers = 59
         IcustomDuty = 60
         ILandedcost = 61
         IRatekg = 62
         IAcWgt = 63
         Iround = 64
         ISICAAmt = 65
         IPremAmt = 66
     Else
         IOthtaxPer = 44
         IothTaxamt = 45
         IRlyfrtper = 46
         IRlyfrtamt = 47
         IInsper = 48
         IInsamt = 49
         ICommper = 50
         ICommAMT = 51
         ILCper = 52
         ILCamt = 53
         Icharity = 54
         IOthTaxableAmt = 55
         IOthers = 56
         IcustomDuty = 57
         ILandedcost = 58
         IRatekg = 59
         IAcWgt = 60
         Iround = 61
        ' ISICAAmt = 62
         IPremAmt = 62
    End If
  
  End If
 
  Call query_mode
  Call AssignRoundoff
  
'  Call SpreadAlign(1)
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False


Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form frmPurchaseBill", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Sub AssignRoundoff()
    Dim RoffRs As Recordset
    Dim sQry As String
    sQry = vbNullString
    
    Set RoffRs = New Recordset
    sQry = " Select RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF," & _
                " REDCESS_ROFF,RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF ,RCGST_ROFF ,RSGST_ROFF,RIGST_ROFF " & _
                " From  RM_PARAM "
                
     RoffRs.Open sQry, db, adOpenStatic
     If Not RoffRs.EOF Then
            LANDCOST_ROFF = IIf(IsNull(RoffRs("RLANDCOST_ROFF")), 2, RoffRs("RLANDCOST_ROFF"))
            ASSVAL_ROFF = IIf(IsNull(RoffRs("RASSVAL_ROFF")), 2, RoffRs("RASSVAL_ROFF"))
            BED_ROFF = IIf(IsNull(RoffRs("RBED_ROFF")), 2, RoffRs("RBED_ROFF"))
            AED_ROFF = IIf(IsNull(RoffRs("RAED_ROFF")), 2, RoffRs("RAED_ROFF"))
            EDCESS_ROFF = IIf(IsNull(RoffRs("REDCESS_ROFF")), 2, RoffRs("REDCESS_ROFF"))
            HSCESS_ROFF = IIf(IsNull(RoffRs("RHSCESS_ROFF")), 2, RoffRs("RHSCESS_ROFF"))
            CESS_ROFF = IIf(IsNull(RoffRs("RCESS_ROFF")), 2, RoffRs("RCESS_ROFF"))
            TAX_ROFF = IIf(IsNull(RoffRs("RTAX_ROFF")), 2, RoffRs("RTAX_ROFF"))
            ADDTAX_ROFF = IIf(IsNull(RoffRs("RADDTAX_ROFF")), 2, RoffRs("RADDTAX_ROFF"))
            SURCHARGE_ROFF = IIf(IsNull(RoffRs("RSURCHARGE_ROFF")), 2, RoffRs("RSURCHARGE_ROFF"))
            
            CGST_ROFF = IIf(IsNull(RoffRs("RCGST_ROFF")), 2, RoffRs("RCGST_ROFF"))
            SGST_ROFF = IIf(IsNull(RoffRs("RSGST_ROFF")), 2, RoffRs("RSGST_ROFF"))
            IGST_ROFF = IIf(IsNull(RoffRs("RIGST_ROFF")), 2, RoffRs("RIGST_ROFF"))
     End If

End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Unload of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  'statusbar1.panels(2).text= "Record: " & CStr(adoPrimaryRS.AbsolutePosition)
  StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
On Error Resume Next
If Opt = "" Or Opt = "query" Or Opt = "del" Then
If Not adoPrimaryRS.EOF Then
    
       Set rstQry = New Recordset
       rstQry.Open "Select Lotno,Lotdt,Supcd,varcode from rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND tpjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and tpjno='" & val(adoPrimaryRS("tpjno")) & "' and tpjdt='" & Format(adoPrimaryRS("tpjdt"), "YYYY/MM/DD") & "' order by lotdt,lotno", db, adOpenStatic, adLockBatchOptimistic
       If rstQry.EOF = False Then
            dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
            Gtax = "":    GAtax = "":       Txtfields(56).Text = "":  dTax = 0:              dCashDis = 0:        dTradeDis = 0
            dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
            dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
            dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
            dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
            dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
            dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0
            dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0
            sCode = "": dADJValue = 0:: dSC = 0: DSICAAmt = 0
            Txtfields(83).Text = ""
            Txtfields(42).Text = ""
            
            Txtfields(94).Text = ""
         
             Set rs = New Recordset
             rs.Open "sELECT slcode, slname FROM fa_slmas WHERE slcode='" & rstQry("supcd") & "'", db, adOpenStatic
             If rs.RecordCount > 0 Then
                 Txtfields(81).Text = rs("slcode")
                 Text4.Text = rs("slname")
             Else
                 Txtfields(81).Text = ""
                 Text4.Text = ""
             End If
             
            irow = rstQry.RecordCount
            Call SpreadAlign(CInt(irow))
            rstQry.MoveFirst
            Do While rstQry.EOF = False
                irow = rstQry.AbsolutePosition
                 sLotno = ""
                 sLotDt = ""
                 sSLcode = ""
                 
                 sLotno = rstQry("lotno")
                 sLotDt = rstQry("lotdt")
                 sSLcode = rstQry("supcd")
                 Call Lotdisplay(sLotno, sLotDt, sSLcode, irow)
                 rstQry.MoveNext
            Loop
            
'            Txtfields(304).Text = adoPrimaryRS("tpjno")
            
        End If
        
        Call SpreadAlign(rstQry.RecordCount)

'        If adoTestRs.EOF = False Then
        
        Set RS1 = New Recordset
        RS1.Open "select Distinct tpjno,tpjdt,tpjtc,Fbillno,fbilldt,form_type,ptype from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND tpjdt between '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' AND DIVCODE='" & Divcode & "' AND tpjno IS not NULL and tpjno='" & val(adoPrimaryRS("tpjno")) & "' and tpjdt='" & Format(adoPrimaryRS("tpjdt"), "YYYY/MM/DD") & "'", db, adOpenStatic
        If RS1.EOF = False Then
            Txtfields(300).Text = RS1("tpjtc")
            Txtfields(302).Text = RS1("ptype")
            Txtfields(304).Text = RS1("tpjno")
            Txtfields(6).Text = RS1("Fbillno")
            Txtfields(39).Text = RS1("Form_type")
            If IsNull(RS1("fbilldt")) = False Then
                MaskEdBox1(2).Mask = Format(RS1("fbilldt"), "dd/mm/yyyy")
                MaskEdBox1(2).Text = MaskEdBox1(2).Mask
            Else
                MaskEdBox1(2).Text = "__/__/____"
            End If
            If IsNull(RS1("tpjdt")) = False Then
                MaskEdBox1(3).Mask = Format(RS1("tpjdt"), "dd/mm/yyyy")
                MaskEdBox1(3).Text = MaskEdBox1(3).Mask
            Else
                MaskEdBox1(3).Text = "__/__/____"
            End If
            If Trim(Txtfields(300).Text) <> "" Then Call ReturnTransType
            If Trim(Txtfields(302).Text) <> "" Then Call ReturnProcessType
        End If
        
        
        
        Set rs = New Recordset
        rs.Open "sELECT slname FROM fa_slmas WHERE slcode='" & adoTestRs("supcd") & "'", db, adOpenStatic
        If rs.RecordCount > 0 Then
            Txtfields(81).Text = rs("slcode")
            Text4.Text = rs("slname")
        Else
            Txtfields(81).Text = ""
            Text4.Text = ""
        End If
'        If adoTestRs("bblflg") = "B" Then
'          Combo1.Text = "Bale"
'       '   txtfields(6).SetFocus
'        ElseIf adoTestRs("bblflg") = "R" Then
'           Combo1.Text = "Borah"
'        Else
'        Combo1.Text = " "
'       '    txtfields(6).SetFocus
'        End If
'        If adoTestRs!discountFlg = "Y" Then optAfter = True Else optBefore = True
'
'        If adoTestRs("dutyclaimable") = "Y" Then
'            opt_c.value = True
'        Else
'            opt_nc.value = True
'        End If
''        Set Rs = New Recordset
''        Rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoTestRs("VARCODE") & "'", DB, adOpenStatic
''        If Rs.RecordCount > 0 Then
''            Txtfields(3).Text = Rs("VARNAME")
''        Else
''            Txtfields(3).Text = ""
''        End If
''        MaskEdBox1(1).Text = adoTestRs("lotdt")
    
''     Txtfields(78).Text = adoTestRs("TOTLANDCOST")
    ' Txtfields(86) = Format(val(Txtfields(86).Text), "#0.00")
    ' Txtfields(87) = Format(val(Txtfields(87).Text), "#0.00")
    ' Txtfields(63) = Format(val(Txtfields(63).Text), "#0.00")
    ' Txtfields(74) = Format(val(Txtfields(74).Text), "#0.00")
    ' Txtfields(72) = Format(val(Txtfields(72).Text), "#0.00")
    ' Txtfields(41) = Format(val(Txtfields(41).Text), "#0.00")
    ' Txtfields(23) = Format(val(Txtfields(23).Text), "#0.000")
    ' Txtfields(24) = Format(val(Txtfields(24).Text), "#0.000")
    ' Txtfields(25) = Format(val(Txtfields(25).Text), "#0.000")
    ' Txtfields(4) = Format(val(Txtfields(4).Text), "#0.00")
    
    
    
    
'    Txtfields(78).Text = adoTestRs("TOTLANDCOST") - adoTestRs("LDGULG")
    
        
'    If IsNull(adoTestRs("arrdt")) = False Or adoTestRs("arrdt") = "" Then
'        MaskEdBox1(0).Mask = Format(adoTestRs("arrdt"), "dd/mm/yyyy")
'        MaskEdBox1(0).Text = MaskEdBox1(0).Mask
'    End If
'    If IsNull(adoTestRs("lotdt")) = False Or adoTestRs("lotdt") = "" Then
'        MaskEdBox1(1).Mask = Format(adoTestRs("lotdt"), "dd/mm/yyyy")
'        MaskEdBox1(1).Text = MaskEdBox1(1).Mask
'    End If

    'txtfields(83).Text = IIf(IsNull(adoPrimaryRS("TAX_CODE")), "", adoPrimaryRS("TAX_CODE"))
    End If
'    End If
End If

End Sub
'assigning valuesfrom adoprimaryrs recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = adoPrimaryRS
Next
MaskEdBox1(0).DataField = "arrdt"
MaskEdBox1(1).DataField = "lotdt"
MaskEdBox1(2).DataField = "billdt"
Txtfields(39).Text = IIf(IsNull(adoPrimaryRS("form_type")) = False, adoPrimaryRS("form_type"), "")
Set txtAdjValue.DataSource = adoPrimaryRS
Set txtDBCRNt.DataSource = adoPrimaryRS
Set MaskEdBox1(1).DataSource = adoPrimaryRS

DTPicker2.MaxDate = pdate
DTPicker2.MinDate = yfdate
If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
    MaskEdBox1(0).Mask = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
    MaskEdBox1(0).Text = MaskEdBox1(0).Mask
End If
If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    MaskEdBox1(1).Mask = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
    MaskEdBox1(1).Text = MaskEdBox1(1).Mask
End If
If IsNull(adoPrimaryRS("billdt")) = False Then
    MaskEdBox1(2).Mask = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    MaskEdBox1(2).Text = MaskEdBox1(2).Mask
Else
    MaskEdBox1(2).Text = "__/__/____"
End If


If IsNull(adoPrimaryRS("tpjdt")) = False Then
    MaskEdBox1(3).Mask = Format(adoPrimaryRS("tpjdt"), "dd/mm/yyyy")
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
Else
    MaskEdBox1(3).Text = "__/__/____"
End If
If Opt = "add" Then MaskEdBox1(3).Text = "__/__/____"
Option1.Enabled = False
Option2.Enabled = False
End Sub

Public Sub Unbindcontls()
On Error Resume Next
For Each oText In Me.Txtfields
    Set oText.DataSource = Nothing
Next
End Sub


Public Sub ENABLCONTLS()
On Error Resume Next
Dim i As Integer
For i = 3 To 21
    Txtfields(i).Locked = False
Next
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
txtDBCRNt.Locked = False
Txtfields(39).Locked = False
Txtfields(56).Locked = True
'Txtfields(55).Locked = True
Txtfields(34).Locked = True
'txtFields(35).Locked = True
End Sub
Public Sub disablcontls()
On Error Resume Next
Dim i As Integer
For i = 0 To 30
Txtfields(i).Locked = True
Next
txtDBCRNt.Locked = True
Txtfields(39).Locked = True
'txtAdjValue.Locked = True
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
MaskEdBox1(3).Enabled = False
'Option1.Enabled = False
'Option2.Enabled = False
DTPicker2.Enabled = False
Combo1.Enabled = False
If Opt = "mod" Then
    spdVar.Lock = True
    For i = 47 To 50
        Txtfields(i).Locked = True
    Next
    Txtfields(300).Locked = True
    Txtfields(302).Locked = True
    Txtfields(304).Locked = True
    Txtfields(39).Locked = True
    Txtfields(95).Locked = True
    Txtfields(92).Locked = True
    Txtfields(90).Locked = True
    MaskEdBox1(2).Enabled = True
    DTPicker3.Enabled = True
    Txtfields(96).Locked = False
    Txtfields(6).Locked = True
End If
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error
Select Case Index
Case 3
    
    If MaskEdBox1(3).Text = "__/__/____" Then
        MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(3).Text = MaskEdBox1(3).Mask
    End If
Case 2
    If MaskEdBox1(2).Text = "__/__/____" Then
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
End Select
Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("Please enter a valid date"), vbInformation, head
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
        MaskEdBox1(2).SetFocus
        'commented on 21/04/2006 as per user's requirements
'        ElseIf Not (CDate(MaskEdBox1(2).Text) >= yfdate And CDate(MaskEdBox1(2).Text) <= pdate) Then
     ElseIf Not (CDate(MaskEdBox1(2).Text) <= pdate) Then
        MsgBox "Bill Date should fall with in the  processing Date", vbInformation, head
        MaskEdBox1(2).Mask = Format(pdate, "dd/MM/YYYY")
        MaskEdBox1(2).Text = MaskEdBox1(2).Mask
    End If
End If
Case 3
    If (MaskEdBox1(3).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
        If Not (IsDate(MaskEdBox1(3).Text)) Then
            MsgBox ("Please enter a valid date"), vbInformation, head
            MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
            MaskEdBox1(3).Text = MaskEdBox1(3).Mask
            MaskEdBox1(3).SetFocus
        Else
            MaskEdBox1(3).Mask = Format(pdate, "dd/MM/YYYY")
            MaskEdBox1(3).Text = MaskEdBox1(3).Mask
'        ElseIf CDate(MaskEdBox1(3).Text) > pdate Then
'            MsgBox "Accpt. Date should be less than processing Date", vbInformation, head
'            MaskEdBox1(3).Text = pdate
'        ElseIf CDate(MaskEdBox1(3).Text) > CDate(MaskEdBox1(2).Text) Then
'            MsgBox "Accpt.Date should be less than Bill Date", vbInformation, head
'            'MaskEdBox1(3).Text = MaskEdBox1(2).Text
'            MaskEdBox1(3).Text = "__/__/____"
'            MaskEdBox1(3).SetFocus
        End If
    End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_LostFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub opt_c_Click()
    If opt_nc.value = True Then
        lblDutyPer.Enabled = False
        Txtfields(109).Enabled = False
        Txtfields(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        Txtfields(109).Enabled = True
        Txtfields(109).Text = "100.00"
    End If
End Sub

Private Sub opt_nc_Click()
    If opt_nc.value = True Then
        lblDutyPer.Enabled = False
        Txtfields(109).Enabled = False
        Txtfields(109).Text = "0.00"
    Else
        lblDutyPer.Enabled = True
        Txtfields(109).Enabled = True
        Txtfields(109).Text = "100.00"
    End If
End Sub

Private Sub StockClose_Click()
On Error GoTo StockClose_Click_Error

Frame14.Visible = False
Call BUTTON_Click(10)

Exit Sub
StockClose_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure StockClose_Click of Form FrmArrival", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtAdjValue_Change()
     If Opt = "" Then txtAdjValue.Text = Format(val(txtAdjValue.Text), "0.00")
End Sub

Private Sub txtAdjValue_GotFocus()
On Error GoTo txtAdjValue_GotFocus_Error

    txtAdjValue.BackColor = &HC0FFC0
    
Exit Sub
txtAdjValue_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAdjValue_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtAdjValue_KeyPress(KeyAscii As Integer)
Call ToNumberAssign(Txtfields(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub txtAdjValue_LostFocus()
    txtAdjValue.BackColor = &HFFFFFF
    Call LANDEDCOST(val(Txtfields(7).Text))
End Sub

Private Sub txtAdjValue_Validate(Cancel As Boolean)
On Error GoTo txtAdjValue_Validate_Error

    txtAdjValue.Text = Format(txtAdjValue.Text, "0.00")
'    Txtfields(78).Text = Format(Val(txtfields(7).Text) + Val(txtAdjValue.Text), "0.00")
    Call LotAmountAssign(val(txtAdjValue.Text), Iround, irow)
Exit Sub
txtAdjValue_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAdjValue_Validate of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub txtDBCRNt_Change()
    txtDBCRNt.Text = Format(val(txtDBCRNt.Text), "0.00")
End Sub

Private Sub txtDBCRNt_KeyPress(KeyAscii As Integer)
    Call ToNumberAssign(Txtfields(Index), 9, KeyAscii, 9, 4)
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Opt = "add" Or Opt = "" Or Opt = " " Or Opt = "del" Then
    If Opt = "" Then
         Select Case Index
         Case 86, 87, 63, 41, 7, 47, 4
             Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.00")
         Case 9, 48, 49, 50, 8
             Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.000")
         End Select
     
     End If
     
     
Select Case Index

Case 96
        If UCase(Trim(CustID)) = "SOUTHERN" And val(Txtfields(96) & "") > 0 Then
            Txtfields(76).Text = Format(Round(val(Txtfields(96)) / val(Txtfields(50)), 4), "0.0000")
        End If
    
Case 91
    If val(Txtfields(Index).Text) = 0 Then Txtfields(82).Text = 0
    
Case 7, 47, 78, 55, 35
    dblTotalLC = val(Txtfields(7).Text)

'Case 82, 83, 35
'        Set rs2 = New Recordset
'        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & txtFields(83).Text & "'", DB, adOpenStatic
'        If opt_c.Value = True Then
'            If UCase(delivery) = "S" Then
'                txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'            Else
'                txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'            End If
'            txtFields(35).Text = val(txtFields(78).Text)
'        Else
'            If rs2.RecordCount = 0 Then
'                If UCase(delivery) = "S" Then
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            ElseIf rs2("itctaxstatus") = "N" Then
'                If UCase(delivery) = "S" Then
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                  txtFields(78).Text = IIf(IsNull(val(txtFields(75))), 0, val(txtFields(75))) + IIf(IsNull(val(txtFields(73))), 0, val(txtFields(73))) + IIf(IsNull(val(txtFields(71))), 0, val(txtFields(71))) + IIf(IsNull(val(txtFields(65))), 0, val(txtFields(65))) + IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                   IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            ElseIf rs2("itctaxstatus") = "Y" Then
'                If UCase(delivery) = "S" Then
'                    txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(38))), 0, val(txtFields(38))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                    IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                Else
'                    txtFields(78).Text = IIf(IsNull(val(txtFields(55))), 0, val(txtFields(55))) + IIf(IsNull(val(txtFields(51))), 0, val(txtFields(51))) + IIf(IsNull(val(txtFields(43))), 0, val(txtFields(43))) + val(txtFields(58)) + IIf(IsNull(val(txtFields(60))), 0, val(txtFields(60))) + IIf(IsNull(val(txtFields(62))), 0, val(txtFields(62))) - IIf(IsNull(val(txtFields(70))), 0, val(txtFields(70))) + _
'                    IIf(IsNull(val(txtFields(63))), 0, val(txtFields(63))) + IIf(IsNull(val(txtFields(64))), 0, val(txtFields(64))) + IIf(IsNull(val(txtFields(66))), 0, val(txtFields(66))) + IIf(IsNull(val(txtFields(67))), 0, val(txtFields(67))) + IIf(IsNull(val(txtFields(69))), 0, val(txtFields(69))) + IIf(IsNull(val(txtFields(82))), 0, val(txtFields(82))) + IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")) - (IIf(IsNull(val(txtFields(54))), 0, val(txtFields(54))) + IIf(IsNull(val(txtFields(85))), 0, val(txtFields(85))))
'                End If
'                txtFields(35).Text = val(txtFields(78).Text)
'            End If
'        End If

Case 57


Case 37
     Txtfields(38).Text = ((val(Txtfields(7).Text) + val(Txtfields(60).Text)) * val(Txtfields(37).Text) / 100)
     
'Case 86
'
'     TXTFIELDS(87).Text = ((val(TXTFIELDS(7).Text) + val(TXTFIELDS(60).Text)) * val(TXTFIELDS(56).Text) / 100)
'
Case 83 '4 'TAXCODE

        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", db, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
        
    If EXIST_VAT(Txtfields(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & Txtfields(83).Text & "'", db, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            Txtfields(34).Text = (val(Txtfields(7).Text) * val(newrs1("itcper")) / 100)
        Else
            Txtfields(34).Text = 0  'vatamt
        End If
    Else
            Txtfields(34).Text = 0
    End If
    
Case 5 'TAXPER
    'taxamt
    If val(Txtfields(55).Text) < 0 Then Txtfields(55).Text = ((val(Txtfields(7).Text) + val(Txtfields(60).Text)) * val(Txtfields(56).Text) / 100)
    'taxamt                 'pjamt
    
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", db, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
    End If
   
    If EXIST_VAT(Txtfields(26).Text) = True And VATFLG = "Y" Then
        Set newrs1 = New Recordset
        newrs1.Open "select ISNULL(itcper,0) AS ITCPER from ig_tax where tax_code = '" & Txtfields(83).Text & "'", db, adOpenStatic, adLockReadOnly
        If newrs1.RecordCount > 0 Then
            Txtfields(34).Text = (val(Txtfields(7).Text) * val(newrs1("itcper")) / 100)
        Else 'VAT AMT                       'pjamt
            Txtfields(34).Text = 0
        End If
    Else
            Txtfields(34).Text = 0
    End If
Case 94
    If val(Txtfields(93).Text) < 0 Then Txtfields(93).Text = (val(Txtfields(55).Text) * val(Txtfields(94).Text) / 100)
    

Case 300
'   Set Rs = New Recordset
'   If Trim(txtfields(300).Text) <> "" Then
'      Rs.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc = " & val(txtfields(300).Text) & " and a.tc between b.frompurtc and b.topurtc", DB, adOpenStatic
'      If Rs.RecordCount > 0 Then
'         txtfields(300).Text = Rs(0)
'         txtfields(301).Text = Rs(1)
'      Else
'         txtfields(300).Text = ""
'         txtfields(301).Text = ""
'      End If
'   End If
'   If Rs.State > 0 Then Rs.Close
Case 39
    Set rs = New Recordset
    rs.Open "select * from po_formtype b where typecode='" & Txtfields(39).Text & "'", db, adOpenStatic
    If rs.RecordCount <> 0 Then
        Txtfields(40).Text = rs("Description")
    Else
        Txtfields(40).Text = ""
    End If
Case 302
   'Set Rs = New Recordset
   'Rs.Open "select purtype,purdesc from rm_purtype where purtype = '" & txtfields(302).Text & "'", DB, adOpenStatic
   'If Rs.RecordCount <> 0 Then
   '  txtfields(302).Text = Rs(0)
   '  txtfields(303).Text = Rs(1)
   'Else
   '  txtfields(302).Text = ""
   '  txtfields(303).Text = ""
   'End If
   'If Rs.State > 0 Then Rs.Close
   
Case 26
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(26).Text & "'", db, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text1.Text = rs(0)
   End If
   rs.Close
Case 27
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(27).Text & "'", db, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text2.Text = rs(0)
   End If
   rs.Close
Case 28
   Set rs = New Recordset
   rs.Open "select areaname from rm_area where areacode = '" & Txtfields(28).Text & "' ", db, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text3.Text = rs(0)
   End If
   rs.Close
'Case 7, 47, 78, 55, 35
'    dblTotalLC = val(txtFields(7).Text)

Case 90

   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(90).Text & "'", db, adOpenStatic
   If rs.RecordCount <> 0 Then
     Txtfields(89).Text = rs(0)
   Else
      Txtfields(89).Text = ""
   End If
   rs.Close
 End Select
End If


Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Txtfields_Change of Form frmPurchaseBill", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
    If Index = 304 Then
        Set rs = New Recordset
        rs.Open "SELECT ISNULL(MAX(tpjno),0)+1 FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "' AND lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic
        Txtfields(304).Text = rs(0)
    End If
End If
    Txtfields(Index).BackColor = &HC0FFC0

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_GotFocus of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)  'Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtfields_KeyDown of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
    Case 96
        Call ToNumberAssign(Txtfields(Index), 9, KeyAscii, 12, 2)
'    Case 304
'        Call ToAlphaNumber(txtFields(Index), 15, KeyAscii)
    Case 6
        Txtfields(6).Enabled = True
        Txtfields(6).Locked = False
        Call ToAlphaNumber(Txtfields(Index), 15, KeyAscii)
    Case 57
        Call ToNumberAssign(Txtfields(Index), 3, KeyAscii, 3, 3)
    Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 59, 61
        Call ToNumberAssign(Txtfields(Index), 3, KeyAscii, 3, 2)
    Case 54, 85, 38, 75, 65, 73, 71, 55, 87, 51, 43, 58, 60, 62, 70, 63, 64, 69, 66, 41, 67, 82, 78, 35, 7, 4, 77
        Call ToNumberAssign(Txtfields(Index), 6, KeyAscii, 6, 2)
    Case 47
        Call ToNumberAssign(Txtfields(Index), 9, KeyAscii, 9, 2)
    Case 9, 8, 48, 49, 50
        Call ToNumberAssign(Txtfields(Index), 9, KeyAscii, 9, 3)
    Case 10, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 19
        If KeyAscii = 45 Then KeyAscii = 0
        tonum Txtfields(Index), 6, KeyAscii
    Case 46, 24, 25, 23
        If KeyAscii = 45 Then KeyAscii = 0
        tonum Txtfields(Index), 15, KeyAscii
    Case 33, 32, 25
        KeyAscii = 0
End Select
End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_KeyPress of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Call fBillValue(dAssValue)
Call DRCRAmt
Select Case Index
Case 109, 53, 84, 37, 88, 68, 74, 72, 56, 86, 52, 44, 57, 59, 61
    If val(Txtfields(Index).Text) > 100 Then
        MsgBox "Please enter Percentage below 100", vbInformation, head
        Txtfields(Index).SetFocus
        Exit Sub
    End If
    If Index <> 57 Then
     Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.00")
    Else
     Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.000")
     End If
Case 47
   If val(Txtfields(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
            'SSTab2.Tab = 1
            'Txtfields(53).SetFocus
        End If
    End If
'    Call DRCRAmt

Case 76
        
        If UCase(Trim(CustID)) = "SOUTHERN" And val(Txtfields(96) & "") > 0 Then
            Txtfields(76).Text = Format(Round(val(Txtfields(96)) / val(Txtfields(50)), 4), "0.0000")
        Else
            'txtfields(76).Text = Format(Round(val(txtfields(78)) / val(txtfields(50)), 4), "0.0000") ''sasi 30.1.18
            
            If Trim(ValueFLG) = "S" Then
            Txtfields(76).Text = Format(Round(val(Txtfields(78)) / val(Txtfields(9)), 4), "0.0000")
            Else
            Txtfields(76).Text = Format(Round(val(Txtfields(78)) / val(Txtfields(50)), 4), "0.0000")
        End If
        End If
        If BUTTON(9).Enabled = True Then BUTTON(9).SetFocus
Case 39
    Set rs = New Recordset
    rs.Open "SELECT * FROM po_formtype WHERE typecode='" & Txtfields(39).Text & "'", db, adOpenStatic
    If rs.RecordCount = 0 Then
         LookUp.clear = True
         LookUp.query = " select typecode""Form Code"",description""Form Description"" from PO_FormType"
         LookUp.Caption = "Form Listing"
         LookUp.DefCol = "Form Code"
         LookUp.ALIGN = "1200,3500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
                Txtfields(39).Text = LookUp.Fields(0)
                Txtfields(40).Text = LookUp.Fields(1)
                LookUp.clear = True
        
         Else
                Txtfields(39).Text = ""
                Txtfields(40).Text = ""
         End If
     Else
        Txtfields(40).Text = rs("description")
     End If
    If Trim(Txtfields(39).Text) = "" Then
        MsgBox "Please enter the Form Type", vbInformation, head
        Txtfields(39).SetFocus
        Exit Sub
    End If

Case 54, 85, 38, 75, 73, 71, 65, 55, 77, 87, 51, 43, 58, 60, 62, 63, 70, 64, 66, 67, 69, 82, 78, 76, 35, 47, 7, 41, 91, 97
Dim dblLandedCost As Double
Call LotCalculation
Call LANDEDCOST(dAssValue)
      Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
      Txtfields(82) = Format(Txtfields(82).Text, "#0.00")
      Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.00")
 Case 4
     Txtfields(4) = Format(val(Txtfields(4).Text), "#0.00")
 Case 18
     Txtfields(18) = Format(val(Txtfields(Index).Text), "#0.00")
 Case 46
     Txtfields(46) = Format(val(Txtfields(Index).Text), "#0.000")
 Case 47
     Txtfields(47) = Format(val(Txtfields(Index).Text), "#0.00")
 Case 86
     Txtfields(86) = Format(val(Txtfields(Index).Text), "#0.00")
 Case 87
     Txtfields(87) = Format(val(Txtfields(Index).Text), "#0.00")
 Case 63
     Txtfields(63) = Format(val(Txtfields(63).Text), "#0.00")
 Case 48
     Txtfields(48) = Format(val(Txtfields(48).Text), "#0.000")
 Case 49
     Txtfields(49) = Format(val(Txtfields(49).Text), "#0.000")
'     Txtfields(50) = val(Txtfields(48).Text) - val(Txtfields(49).Text)
 Case 50
'     Txtfields(50) = Format(val(Txtfields(48).Text) - val(Txtfields(49).Text), "#0.000")
 Case 9, 8, 48, 49
     Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.000")
 Case 109
     If val(Txtfields(109).Text) > 100 Then
          MsgBox "Please enter Duty Claimable %, Below or Equal to 100", vbInformation, head
          Txtfields(109).SetFocus
          Exit Sub
     End If
Case 47, 54, 85, 38, 75, 65, 73, 71, 55, 77, 87, 51, 43, 58, 60, 62, 70, 63, 64, 66, 41, 67, 82, 78, 35, 7, 4
     Txtfields(Index).Text = Format(Txtfields(Index).Text, "0.00")
     End Select
End If
     Txtfields(86) = Format(val(Txtfields(86).Text), "#0.00")
     Txtfields(87) = Format(val(Txtfields(87).Text), "#0.00")
     Txtfields(63) = Format(val(Txtfields(63).Text), "#0.00")
     Txtfields(9).Text = Format(val(Txtfields(9).Text), "#0.000")
     Txtfields(Index).BackColor = &HFFFFFF
Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_LostFocus of Form frmPurchaseBill", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error

BUTTON(0).Enabled = True
BUTTON(9).Enabled = False
BUTTON(2).Enabled = True
BUTTON(5).Enabled = True
BUTTON(6).Enabled = True
BUTTON(7).Enabled = True
BUTTON(8).Enabled = True
BUTTON(3).Enabled = True
BUTTON(11).Enabled = True

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True
  Set adoPrimaryRS = New Recordset
  
  
'  adoPrimaryRS.Open "SELECT A.DIVCODE,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,AEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,case when weightflg='M' then GRSWGT else pgrswt end as grswt,case when weightflg ='M' then A.TAREWT else ptarewt end as tarewt,case when weightflg='M' then A.NETWT else pnetwt end as netwt,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PTYPE,tpjno,tpjdt,tpjtc,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,AdjValue,dbamt,TAX_CODE,TAX_PER,VATAMT,LANDCOSTWITHTAX,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,billno,billdt,Assvalue,form_type,dutyclaimable,dutyper,OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,pnetwt  FROM RM_LOT A  " & _
'                    "WHERE ISNULL(tpjno,0)<>0 AND A.DIVCODE = '" & Divcode & "' and  A.tpjdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and OPFLG ='N' Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
'
   adoPrimaryRS.Open "SELECT DISTINCT isnull(tpjno,0) tpjno ,tpjdt,tpjtc FROM rm_lot WHERE LOTYEAR='" & Year(yfdate) & "'AND divcode='" & Divcode & "' AND lottype='A' AND tpjdt BETWEEN '" & Format(yfdate, "YYYY/MM/DD") & "' and '" & Format(yldate, "YYYY/MM/DD") & "' and OPFLG ='N' and tpjno is not null order by tpjdt,tpjno", db, adOpenStatic, adLockBatchOptimistic
    
    
    If Not adoPrimaryRS.EOF Then
      adoPrimaryRS.MoveLast
      
     'Bind the text boxes,check boxes and option buttons to the data source
'     Call bindcontls
     Call disablcontls
     desc.Caption = "Query"
    'This variable is declared as global to show the date
     DATLAB.Caption = pdate
     'Calling newform procedure from Module to disable buttons
    Call disablcontls
    Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
    Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
    Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
    Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Txtfields(82).Text = Format(Txtfields(82).Text, "#0.00")
    'MODIFIED
    Txtfields(46).Text = Format(Txtfields(46).Text, "#0.000")
    Txtfields(47).Text = Format(Txtfields(47).Text, "#0.00")
    Txtfields(48).Text = Format(Txtfields(48).Text, "#0.000")
    Txtfields(49).Text = Format(Txtfields(49).Text, "#0.000")
    Txtfields(50).Text = Format(Txtfields(50).Text, "#0.000")
    If Trim(Txtfields(300).Text) <> "" Then Call ReturnTransType
    If Trim(Txtfields(301).Text) <> "" Then Call ReturnProcessType
    'Exit Sub
  Else
       MsgBox "No Records Found", vbInformation, head
  
  End If
  Call NEWFORM1(BUTTON, GSNO)
  SSTab2.Tab = 0
End If


Exit Sub
query_mode_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure QUERY_MODE of Form frmPurchaseBill", vbInformation, head
End Sub


Public Sub ToNum1(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(obj, ".") = 0) And Len(obj) - InStr(obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (obj.SelLength = Len(obj)) Then
         KeyAscii = 0
    End If
    If Len(obj) = maxlen And KeyAscii <> 46 And (InStr(obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)


On Error GoTo Txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Then
    If CustID = "COTTON" Then
        Call FORAmtCalculationSCM
    End If
Select Case Index
    Case 54
        Call LotAmountAssign(val(Txtfields(Index).Text), Icashdisamt, irow)
    Case 38
        Call LotAmountAssign(val(Txtfields(Index).Text), IFrtamt, irow)
    Case 85
        Call LotAmountAssign(val(Txtfields(Index).Text), Itradedisamt, irow)
    Case 75
        Call LotAmountAssign(val(Txtfields(Index).Text), IBedamt, irow)
    Case 65
        Call LotAmountAssign(val(Txtfields(Index).Text), Icessamt, irow)
    Case 73
        Call LotAmountAssign(val(Txtfields(Index).Text), IEdamt, irow)
    Case 71
        Call LotAmountAssign(val(Txtfields(Index).Text), IHscessamt, irow)
    Case 51
        Call LotAmountAssign(val(Txtfields(Index).Text), IothTaxamt, irow)
    Case 43
        Call LotAmountAssign(val(Txtfields(Index).Text), IRlyfrtamt, irow)
    Case 58
        Call LotAmountAssign(val(Txtfields(Index).Text), IInsamt, irow)
    Case 60
        Call LotAmountAssign(val(Txtfields(Index).Text), ICommAMT, irow)
    Case 62
        Call LotAmountAssign(val(Txtfields(Index).Text), ILCamt, irow)
        
    Case 63
        Call LotAmountAssign(val(Txtfields(63).Text), Icharity, irow)
    Case 69
        Call LotAmountAssign(val(Txtfields(69).Text), IcustomDuty, irow)
    Case 97
        Call LotAmountAssign(val(Txtfields(97).Text), ISICAAmt, irow)
    Case 41
        Call CSTTaxCalc
        Call OtherTaxCal
        Call TaxCalc
        Call AddTaxCalc
        Call LotAmountAssign(val(Txtfields(41).Text), IOthTaxableAmt, irow)
        Exit Sub
    Case 67
        Call LotAmountAssign(val(Txtfields(67).Text), IOthers, irow)
    Case 88
        If val(Txtfields(75).Text) = 0 Then
            If UCase(delivery) = "F" Then
                Txtfields(75).Text = Round(val(Txtfields(88).Text) * (val(dAssValue) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text))) / 100, BED_ROFF)
            Else
                Txtfields(75).Text = Round(val(Txtfields(88).Text) * (val(dAssValue) - (val(Txtfields(54).Text) + val(Txtfields(85).Text))) / 100, BED_ROFF)
            End If
        End If
        Call LotValueAssign(val(Txtfields(88).Text), IBedper)
        Exit Sub
    Case 57
        Dim rsPara As New Recordset
        rsPara.Open "Select InsCalAssvalflg from rM_param", db, adOpenStatic
        If (rsPara.BOF And rsPara.EOF) = False Then
            If val(Txtfields(58).Text) = 0 Then
                If rsPara("InsCalAssvalflg") = "N" Then
                    Txtfields(58).Text = Round(((val(Txtfields(7).Text) + val(Txtfields(60).Text)) * val(Txtfields(57).Text) / 100), 0)
                Else
                    Txtfields(58).Text = Round(val(Txtfields(7).Text) * (val(Txtfields(57).Text) / 100), 0)
                End If
            End If
        End If
        rsPara.Close
        Set rsPara = Nothing
        Call LotValueAssign(val(Txtfields(57).Text), IInsper)
    Case 74
         ''ed cess amt
          If val(Txtfields(73).Text) = 0 Then Txtfields(73).Text = Round(val(Txtfields(74).Text) * val(Txtfields(75).Text) / 100, EDCESS_ROFF)
          Call LotValueAssign(val(Txtfields(74).Text), IEdper)
          Exit Sub
    
    Case 72
          ''Hscess
           If val(Txtfields(71).Text) = 0 Then Txtfields(71).Text = Round(val(Txtfields(72).Text) * val(Txtfields(75).Text) / 100, HSCESS_ROFF)
           Call LotValueAssign(val(Txtfields(72).Text), IHscessper)
           Exit Sub
    
    Case 68
            ''cessamt=cessper* val/100
            If UCase(delivery) = "F" Then
                If val(Txtfields(65).Text) = 0 Then Txtfields(65).Text = Round(val(Txtfields(68).Text) * (val(dAssValue) - val(Txtfields(54).Text) + val(Txtfields(13).Text) + val(Txtfields(73).Text) + val(Txtfields(71).Text)) / 100, CESS_ROFF)
            Else
                If val(Txtfields(65).Text) = 0 Then Txtfields(65).Text = Round(val(Txtfields(68).Text) * (val(dAssValue) - val(Txtfields(54).Text) + val(Txtfields(73).Text) + val(Txtfields(71).Text)) / 100, CESS_ROFF)
            End If
            Call LotValueAssign(val(Txtfields(68).Text), Icessper)
            Exit Sub
    Case 57
            Call LotValueAssign(val(Txtfields(57).Text), IInsper)
            Exit Sub
    Case 49
'            Txtfields(50).Text = val(Txtfields(49).Text) * val(adoprimaryrs("pjamt")) / 100
            Exit Sub
    Case 83
            Set rs = New Recordset
            rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & Txtfields(83).Text & "'", db, adOpenStatic
            If rs.RecordCount = 0 Then
                 LookUp.clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"",isnull(sc_per,0) ""SC %"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    Txtfields(83).Text = LookUp.Fields(0)
                    Txtfields(56).Text = LookUp.Fields(2)
                    Txtfields(94).Text = LookUp.Fields(3)
                    LookUp.clear = True
                 Else
                    Txtfields(56).Text = ""
                    Txtfields(55).Text = ""
                    Txtfields(83).Text = ""
                    Txtfields(94).Text = ""
                    Txtfields(93).Text = ""
                 End If
             Else
                Txtfields(56).Text = rs("ST_PER")
                Txtfields(94).Text = rs("SC_PER")
             End If
            Call LotStringAssign(Trim(Txtfields(83).Text), ITaxCode)
            Call LotValueAssign(Trim(Txtfields(56).Text), ITaxper)
            Call LotValueAssign(val(Txtfields(94).Text), ISCper)
            
            Call TaxCalc
            Call LotCalculation
            Exit Sub
    Case 42
            Set rs = New Recordset
            rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & Txtfields(42).Text & "'", db, adOpenStatic
                                                                        If rs.RecordCount = 0 Then
                 LookUp.clear = True
                 LookUp.query = " select tax_code""Tax Code"",description""Tax Description"",st_per""Tax Percentage"" from ig_tax where taxstatus='Y'"
                 LookUp.Caption = "Tax Listing"
                 LookUp.DefCol = "Tax Code"
                 LookUp.ALIGN = "1500,3500,2000"
                 LookUp.Show vbModal
                 If LookUp.Cancel = False Then
                    Txtfields(42).Text = LookUp.Fields(0)
                    Txtfields(79).Text = LookUp.Fields(2)
                    LookUp.clear = True
                 Else
                    Txtfields(79).Text = ""
                    Txtfields(77).Text = ""
                    Txtfields(42).Text = ""
                 End If
             Else
                Txtfields(79).Text = rs("ST_PER")
             End If
             '''''''''''''''''''''''''''''''''''''''''Add by Vinoth As Per Kores Requiremant
            Call AddTaxCalc
            Exit Sub

    Case 53
             ''CASH discount = disper* val /100
            If val(Txtfields(53).Text) <> 0 Then
             'txtFields(54).Text = val(txtFields(53).Text) * val(txtFields(25).Text)
             Txtfields(54).Text = val(Txtfields(53).Text) * val(Txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(Txtfields(53).Text), Icashdisper)
            
            Exit Sub
    Case 84
            ''Trade discount = disper* val /100
            If val(Txtfields(84).Text) <> 0 Then
                'txtFields(85).Text = val(txtFields(84).Text) * val(txtFields(25).Text)
                Txtfields(85).Text = val(Txtfields(84).Text) * val(Txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(Txtfields(84).Text), Itradedisper)
           
            Exit Sub
    
        
    Case 52
            Call CSTTaxCalc
            Call OtherTaxCal
            Call LotValueAssign(val(Txtfields(52).Text), IOthtaxPer)
            
            Exit Sub
    Case 86
            Call OtherTaxCal
            Exit Sub

    Case 37
            ''lorry frt
            If val(Txtfields(37).Text) <> 0 Then
                'txtFields(13).Text = val(txtFields(37).Text) * val(txtFields(25).Text)
                Txtfields(13).Text = val(Txtfields(37).Text) * val(Txtfields(7).Text) / 100
            End If
            Call LotValueAssign(val(Txtfields(37).Text), IFrtper)
            Exit Sub
    
    Case 44
            If val(Txtfields(44).Text) <> 0 Then
             Txtfields(43).Text = val(Txtfields(44).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(Txtfields(44).Text), IRlyfrtper)
            Exit Sub
    
    Case 59, 60
    
            If val(Txtfields(59).Text) <> 0 Then
             Txtfields(60).Text = val(Txtfields(59).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(Txtfields(59).Text), ICommper)
            Call TaxCalc
            Call AddTaxCalc
            Exit Sub
    Case 94
        Txtfields(93).Text = val(Txtfields(94).Text) * (val(Txtfields(55).Text)) / 100
    Case 61
            If val(Txtfields(61).Text) <> 0 Then
             Txtfields(62).Text = val(Txtfields(61).Text) * val(dAssValue) / 100
            End If
            Call LotValueAssign(val(Txtfields(61).Text), ILCper)
            Exit Sub
    Case 300
        If Opt = "add" Or Opt = "mod" Then
   
            Set rsa = New Recordset
            strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,RM_param_FA b  where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "' And a.tc='" & val(Txtfields(300).Text) & "'"
            rsa.Open strSQL, db, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = "select Distinct a.tc""Transaction Type Code"",a.tchead""Transaction Type Head"" from fa_tcmas a,RM_param_FA b where A.TC=B.TCCODE AND B.DIVCODE ='" & Divcode & "'"
                    LookUp.DefCol = "Transaction Type Head"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Transaction Type Listing"
                    LookUp.Show vbModal
                    
                    If LookUp.Cancel = False Then
                      Txtfields(300).Text = LookUp.Fields(0)
                      Txtfields(301).Text = LookUp.Fields(1)
                      Call LotCalculation
                      LookUp.clear = True
                      
                      Set rs = New Recordset
                      rs.Open "select * from RM_param_FA where TCcode= " & val(Txtfields(300).Text) & " AND Divcode ='" & Divcode & "'", db, adOpenStatic
                      If rs.EOF Then
                          MsgBox "Please Set the GL Code to Corresponding TC Code in Parameter - FA Related Detail", vbInformation, head
                            BUTTON(10).Enabled = False
                            Opt = ""
                            BUTTON(6).Enabled = True
                            BUTTON(12).Enabled = True
                            BUTTON(7).Enabled = True
                            BUTTON(8).Enabled = True
                            BUTTON(3).Enabled = True
                            BUTTON(11).Enabled = True
                            Call query_mode
                            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
                            Screen.MousePointer = 0
                            Opt = ""
                            BUTTON(2).Enabled = True
                            Call NEWFORM1(BUTTON, GSNO)
                            Exit Sub
   
                      End If
                      Txtfields(302).SetFocus
                    Else
                       SSTab1.Visible = True
                       Txtfields(300).SetFocus
                    End If
            Else
                Txtfields(301).Text = rsa("tchead")
            End If
        End If

    Case 302
        If Opt = "add" Or Opt = "mod" Then
            
                Set rsa = New Recordset
                rsa.Open "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(Txtfields(302).Text) & "'", db, adOpenStatic
                If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype"
                    LookUp.DefCol = "Purchase Type Description"
                    LookUp.ALIGN = "2500,4500"
                    LookUp.Caption = "Purchase Type Listing"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                            Txtfields(302).Text = LookUp.Fields(0)
                            Txtfields(303).Text = LookUp.Fields(1)
                            LookUp.clear = True
                            
                            'txtfields(88).SetFocus
                     Else
                            Txtfields(302).SetFocus
                            End If
                     Else
                            Txtfields(303).Text = rsa(1)
         
                     End If
         
         End If
    End Select
End If

On Error Resume Next
If Opt = "" Or Opt = " " Then
    Select Case Index
    Case 23
        Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
    Case 24
        Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
    Case 81
        Txtfields(81).Text = Format(Txtfields(81).Text, "#0.000")
    Case 82
        Txtfields(82).Text = Format(Txtfields(82).Text, "#0.000")
    Case 25
        Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
    Case 18
        Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Case 5
        Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
    End Select
End If


If Opt = "add" Then
Select Case Index
Case 4
'    If val(TXTFIELDS(47).Text) <> val(TXTFIELDS(4).Text) + val(adoPrimaryRS("pjamt")) Then
'         txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
'    Else
'         txtDBCRNt.Text = Format(0, "0.00")
'    End If
'    If fBillValue(strDelType) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
'         txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7) + val(txtAdjValue))), "0.00")
'    Else
'         txtDBCRNt.Text = Format(0, "0.00")
'    End If
Case 9
    If val(Txtfields(9).Text) = 0 Then
        MsgBox "Bill weight must be greater than zero", vbInformation, head
        Txtfields(9).Text = 0#
        Cancel = True
        Exit Sub
    End If
Case 15
    Txtfields(78).Text = val(Txtfields(78).Text) '- Val(txtfields(15).Text)
    'Txtfields(7).Text = Val(Txtfields(78).Text) - Val(Txtfields(15).Text)
Case 7
    If val(Txtfields(7).Text) = 0 Then
        MsgBox "Bill amount must be greater than zero", vbInformation, head
        Txtfields(7).Text = 0#
        Txtfields(7).SetFocus
        Cancel = True
        Exit Sub
    Else
        Txtfields(7).Text = Format(Txtfields(7).Text, "0.00")
    End If
Case 47
   If val(Txtfields(47).Text) > 0 Then
        If SSTab2.Tab = 0 Then
           ' SSTab2.Tab = 1
            'Txtfields(53).SetFocus
        End If
    End If
    Call DRCRAmt
End Select
End If


Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Validate of Form frmPurchaseBill", vbInformation, head
End Sub


Public Sub Rg23A()
'************************************************************************
        'THIS  PROCEDURE IS USED FOR RG23A -RMI
'************************************************************************
On Error GoTo Rg23A_Error

If Combo2.Text = "Yes" Then
Set rs = New Recordset
rs.Open "Select * from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & Txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & Txtfields(0).Text & "' and dutydocno is  not Null", db, adOpenStatic
If rs.RecordCount = 0 Then
    If Table_Exists("ig_dutytrn") = False Then Exit Sub
    
    Set rs = New Recordset
    rs.Open "Select count(*) from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", db, adOpenStatic
    If rs(0) > 0 Then
    Dim doc_no As String
    Set rs = New Recordset
    rs.Open "SELECT YEAR_CODE FROM IG_TRANYEAR WHERE '" & Format(pdate, "yyyy-mm-dd") & "' BETWEEN START_DATE AND END_DATE", db, adOpenStatic
    Dim ls As New Recordset
    ls.Open "Select duty_code from rm_param ", db, adOpenStatic
    Set RS1 = New Recordset
    RS1.Open "select isnull(max(LAST_NO),0)+1 from ig_doccontrol where doc_type='D' and divcode='" & Divcode & "' and DOC_REF='" & ls(0) & "'", db, adOpenStatic, adLockBatchOptimistic
    doc_no = rs(0) & Padl(CStr(RS1(0)), 6, "0")
    Set rs3 = New Recordset   'For Dutycode
    rs3.Open "Select duty_code from rm_param", db, adOpenStatic
    'DB.Execute "Insert into ig_dutytrn (divcode,duty_code,doc_no,date,tran_type,reference,bank_sl,bed_amt,aed_amt,ref_dt) values " & _
    " ('" & Divcode & "','" & rs3(0) & "','" & doc_no & "','" & Format(pdate, "yyyy-mm-dd") & "','O','" & txtfields(6).Text & "','" & txtfields(26).Text & "', " & val(txtfields(75).Text) & "," & val(txtfields(71).Text) & ",'" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
    'DB.Execute "Update rm_lot set dutydocno='" & doc_no & "' where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & txtfields(0).Text & "'"
    Set rs = New Recordset
   ' Rs.Open "Select duty_code from rm_param", DB, adOpenStatic
   ' DB.Execute "Update ig_doccontrol set last_no ='" & rs1(0) & "' where doc_type='D' and doc_ref='" & Rs(0) & "'and divcode='" & Divcode & "'"
End If
End If
End If


Exit Sub
Rg23A_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Rg23A of Form frmPurchaseBill", vbInformation, head
End Sub

Public Function Table_Exists(Table_Name As String) As Boolean
    On Error GoTo Err1
    Table_Name = UCase(Table_Name)
    Dim TDb As New Connection
    Dim trs As New Recordset
    TDb.CursorLocation = adUseClient
    TDb.Open connectstring
    trs.Open "SELECT * FROM dbo.sysobjects WHERE UPPER(name) = '" & Table_Name & "'", TDb, adOpenStatic, adLockReadOnly
    If trs.RecordCount > 0 Then
        trs.Close
        TDb.Close
        Table_Exists = True
        Exit Function
    End If
    trs.Close
    TDb.Close
    Table_Exists = False
    Exit Function
    
Err1:
    MsgBox "Unable To Test Existence Of Table", vbInformation, head
    'Exit Sub
End Function
Public Sub delrg23c()
'                ******************************************** Deletion in Duty Trn********************************************
On Error GoTo delrg23c_Error

Set rs = New Recordset
rs.Open "select a.duty_code from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", db, adOpenStatic
If rs.RecordCount > 0 Then
    If (rs.RecordCount > 0) And Not (Trim(adoPrimaryRS("dutydocno")) = "") Then
      '  DB.Execute "Delete from ig_dutytrn where divcode='" & Divcode & "' and duty_code='" & Rs(0) & "' and DOC_NO='" & adoPrimaryRS("dutydocno") & "'"
       ' DB.Execute "Update rm_lot set dutydocno=Null,rg23a=Null where LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotno='" & txtfields(2).Text & "' and lotdt='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "' and catcd='" & txtfields(0).Text & "'"
    End If
End If


Exit Sub
delrg23c_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure delrg23c of Form frmPurchaseBill", vbInformation, head
End Sub
Public Sub header2(pg As Integer, co As Integer, rs As Recordset)
Set rs = New Recordset
Dim Lrs As New ADODB.Recordset
'Developed by D.PArim
'Rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.tpjno,a.tpjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality from rm_lot a,rm_arrival b,rm_cat c,fa_slmas d,fa_slmas e,rm_area f where  a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno " & _
'            "and  a.catcd=c.catcd and f.areacode=a.areacd and a.supcd=d.slcode and a.brkcd*=e.slcode and a.divcode='" & Divcode & "' and  a.arrno = '" & Txtfields(1) & "' AND a.lotno='" & Txtfields(2) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic, adLockBatchOptimistic
''BAlkrishna *= 28.07.16

rs.Open "select distinct a.DBNO,a.DBAMT,a.lotno,a.arrno,a.lotdt,a.supcd,a.brkcd,a.areacd,a.varcode,a.catcd,a.tpjno,a.tpjdt,a.ratecy,a.ptywgt,a.pjamt as invalue,a.totlandcost as netV,a.netwt,b.contno,b.contdt,b.plotno,b.lorrynos,b.freight,b.quantity,c.catname,ISNULL(d.slname,' ') as slname,ISNULL(e.slname,'  ') as broker,f.areaname as station,a.sno ,a.Fbillno,a.Fbilldt,a.dbno,a.quality from rm_lot a  inner join rm_arrival b on a.lotdt=b.lotdt and a.varcode=b.varcode and a.arrno=b.arrno inner join rm_cat c on a.catcd=c.catcd inner join fa_slmas d on a.supcd=d.slcode left join  fa_slmas e on a.brkcd = e.slcode inner join rm_area f on f.areacode=a.areacd where  " & _
            "a.divcode='" & Divcode & "' and  a.arrno = '" & Txtfields(1) & "' AND a.lotno='" & Txtfields(2) & "' and a.lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.lotyear='" & Year(yfdate) & "'", db, adOpenStatic, adLockBatchOptimistic



Print #z, Space(5) & CENTRE(Chr(14) & DIVNAME & Chr(14), 74, " ")
Print #z, Chr(27) & Chr(205) & Chr(27) & Chr(77)
Print #z,
Print #z, Space(5) + Chr(27) & "E" & CENTRE("Raw Metarial Received Note", 112, " ") & Chr(27) & "F"
Print #z, Space(5) + Chr(27) & "E" & CENTRE("__________________________", 112, " ") & Chr(27) & "F"
Print #z, Space(83); Padl("M.Lot :", 7, " "); Space(1); Chr(27) + Chr(87) + "1" + Padr(rs("lotno"), 7, " ") & Chr(27) + Chr(87) + "0"
Print #z,
'Print #z, Space(64); Padl("S.No.:", 7, " "); Space(1); Padl(rs("sno"), 5, " "); Space(6); Padl("P.Lot :", 7, " "); Space(1); Padl(rs("plotno"), 7, " ")
Print #z, Space(64); Padl("S.No.:", 7, " "); Space(1); Padl(rs("lotno"), 5, " "); Space(6); Padl("P.Lot :", 7, " "); Space(1); Padl(rs("plotno"), 7, " ")

Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5); "Party Name :"; Space(1); Padr(rs("slname"), 25, " "); Chr(179); Space(1); "P.O.No.  :"; Padr(rs("contno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(rs("contdt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Received On   :"; Space(1); Padl(Format(rs("lotdt"), "dd-mm-yy"), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "Broker Name:"; Space(1); Padr(rs("broker"), 25, " "); Chr(179); Space(1); "Bill No. :"; Padr(rs("Fbillno"), 15, " "); Space(2); "Dt:"; Space(1); Padl(Format(rs("fbilldt"), "dd-mm-yy"), 8, " "); Space(1); Chr(179); Space(1); "Lorry No      :"; Space(1); Padl(rs("lorrynos"), 15, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)

Set Lrs = New Recordset
Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", db, adOpenStatic
If Lrs.RecordCount > 0 Then
  If Lrs("DLYTYPE") = "F" Then
    delivery = "F"
  ElseIf Lrs("DLYTYPE") = "S" Then
    delivery = "S"
  End If
Else
  delivery = " "
End If


'Lrs.Open "select rtrim(ltrim(isnull(delivery,''))) from rm_Cont where " & _
'            " contno = (select contno from rm_arrival where lotno = " & Val(Txtfields(2).Text) & " and lotdt = '" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and divcode = " & Divcode & ") and " & _
'            " contdt = (select contdt from rm_arrival where lotno = " & Val(Txtfields(2).Text) & " and lotdt = '" & Format(MaskEdBox1(1).Text, "yyyy/mm/dd") & "' and  divcode = " & Divcode & ") ", DB, adOpenDynamic, adLockReadOnly



Print #z, Space(5); "Station    :"; Space(1); Padr(rs("station"), 25, ""); Chr(179); Space(1); "Rate/Candy : "; Padl(INF(rs("ratecy"), 2), 10, " "); Space(1); Space(1); Space(2); Padl(delivery, 12, " "); Space(1); Chr(179); Space(1); "Lorry Freight :"; Space(1); Padl(INF(rs("freight"), 2), 10, " ")
'Print #z, Space(5); "Station    :"; Space(1); Padr(rs("station"), 25, ""); Chr(179); Space(1); "Rate/Candy : "; Padl(INF(rs("ratecy"), 2), 10, " "); Space(1); Space(1); Space(2); Padl(IIf(Lrs(0) = "FOR MILL DELIVERY", "MILL", Lrs(0)), 12, " "); Space(1); Chr(179); Space(1); "Lorry Freight:"; Space(1); Padl(INF(rs("freight"), 2), 10, " ")
Print #z, Space(5); Space(38); Chr(179); Space(41); Chr(179)
Print #z, Space(5); "            "; Space(26); Chr(179); Space(1); IIf(rs("DBAMT") > 0, "Debit Amt  : " & Padl(INF(rs("DBAMT"), 2), 10, " "), "Credit Amt : " & Padl(INF(rs("DBAMT"), 2), 10, " ")); Space(17); Chr(179); Space(1); "Qlty Allowance:"; Space(1); Padl(INF(rs("Quality"), 2), 10, " ")


Print #z, Space(5) + String(112, Chr(196))
Print #z, Space(5) + "S.No  Item                  No.of Bales    Party NWT      Mill NWT    Invoice Value       Net Value"
Print #z, Space(5) + String(112, Chr(196))
End Sub
Private Function EXIST_VAT(SLCODE As String)
'------------------------''To check State code is null
On Error GoTo EXIST_VAT_Error
 EXIST_VAT = True
Set rsa = New Recordset
rsa.Open "select state_code from fa_slmas where slcode='" & SLCODE & "'", db, adOpenStatic
If rsa.RecordCount > 0 Then
    If IsNull(rsa(0)) = True Then
        EXIST_VAT = False
        Exit Function
    End If
End If

'------------------------'' To check supplier are in same state
Set staters = New Recordset
staters.Open "select a.state_code from fa_slmas a,pp_divmas b where a.state_code=b.state_code and a.slcode='" & SLCODE & "' and  a.state_code is not null", db, adOpenStatic
If staters.RecordCount > 0 Then
    '''To check TINNO exist for that particular supplier
    Set NewRs = New Recordset
    NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & SLCODE & "'", db, adOpenStatic, adLockBatchOptimistic
    If NewRs("TINNO") = "" Then
       'd = MsgBox("TINNO Not Exists For This Supplier [ Do You Want To Continue ]", vbYesNo)   ',vbinformation,head
       EXIST_VAT = False
    Else
       EXIST_VAT = True
    End If
End If


Exit Function
EXIST_VAT_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure EXIST_VAT of Form frmPurchaseBill", vbInformation, head
End Function

Private Function fBillValue(Assvalue As Double) As Double
    Set rs = New Recordset
    rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", db, adOpenStatic
    If rs(0) = "Y" And rs(1) = "Y" Then
       If UCase(CustID) = "LMW" Then
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
       Else
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
       End If
    ElseIf rs(0) <> "Y" And rs(1) = "Y" Then
        If UCase(CustID) = "LMW" Then
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        Else
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        End If
    ElseIf rs(0) = "Y" And rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        Else
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        End If
    ElseIf rs(0) <> "Y" And rs(1) <> "Y" Then
        If UCase(CustID) = "LMW" Then
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        Else
            Txtfields(47).Text = Format(Assvalue + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(93)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85)) + val(Txtfields(97))), "0.00")
        End If
    End If
    
    Txtfields(47).Text = Format(KSLRound(val(Txtfields(47).Text), LANDCOST_ROFF), "0.00")
End Function
Private Sub DRCRAmt()
On Error GoTo DRCRAmt_Error
''    Set Rs = New Recordset
''    Rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", DB, adOpenStatic
''    If Rs(0) = "Y" And Rs(1) = "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) - val(TXTFIELDS(60).Text), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) <> "Y" And Rs(1) = "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(66).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) = "Y" And Rs(1) <> "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt) - val(TXTFIELDS(60).Text), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    ElseIf Rs(0) <> "Y" And Rs(1) <> "Y" Then
''        If fBillValue(dAssValue) <> val(TXTFIELDS(4).Text) + val(TXTFIELDS(47).Text) Then
''             txtDBCRNt.Text = Format(val(TXTFIELDS(47)) - val(TXTFIELDS(4)) - (val(TXTFIELDS(7)) + val(txtAdjValue)), "0.00")
''             amt = ((val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) - (val(TXTFIELDS(75).Text) + val(TXTFIELDS(73).Text) + val(TXTFIELDS(71).Text) + val(TXTFIELDS(65).Text) + val(TXTFIELDS(55).Text) + val(TXTFIELDS(77).Text) + val(TXTFIELDS(51).Text) + val(TXTFIELDS(87).Text) + val(TXTFIELDS(41).Text) + val(TXTFIELDS(58).Text) + val(TXTFIELDS(63).Text) + val(TXTFIELDS(64).Text) + val(TXTFIELDS(67).Text)) + val(TXTFIELDS(69).Text))
''             amt = Round(amt, 0)
''             txtDBCRNt.Text = Format(Round(val(txtDBCRNt) + val(amt), 2), "0.00")
''        Else
''             txtDBCRNt.Text = Format(0, "0.00")
''        End If
''    End If
    
    'If val(TXTFIELDS(96).Text) <> 0 Then
        txtDBCRNt = val(Txtfields(96).Text) - val(Txtfields(47).Text)
        
    'End If
Exit Sub
DRCRAmt_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure DRCRAmt of Form frmPurchaseBill", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Function BillSelection(LOTNO As String, lotdate As Date)

On Error GoTo BillSelection_Error

BUTTON(9).Enabled = True
BUTTON(10).Enabled = True
StatusBar1.Panels(2).Text = ""
KSLLIST1.listfield1 = "Lotno"
KSLLIST1.Description = lotdate
KSLLIST1.listfield1 = "Lotno"

Select Case KSLLIST1.listfield1

'vat on 30_12_2006
Case "TAX_CODE"
    Txtfields(83).Text = KSLLIST1.Code  'taxcode
    Set newrs1 = New Recordset
    newrs1.Open "SELECT ST_PER FROM IG_TAX WHERE TAX_CODE ='" & Txtfields(83).Text & "'", db
    Txtfields(56).Text = val(newrs1(0))  'taxper
    Txtfields(55).Text = val(Txtfields(7).Text) * val(Txtfields(56).Text) / 100
    Txtfields(94).Text = val(newrs1(1))  'SCper
    Txtfields(93).Text = val(Txtfields(55).Text) * val(Txtfields(94).Text) / 100
    Txtfields(55).SetFocus

Case "Lotno"
If KSLLIST1.Description <> "" Then
 Set adoPrimaryRS = New Recordset
'' adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,tpjdt,tpjno,tpjtc,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,vatamt,BillValue FROM RM_LOT WHERE LOTYEAR='" & Year(yfdate) & "' AND divcode='" & Divcode & "' and lotdt='" & Format(KslList1.description, "yyyy-mm-dd") & "' and lotno=" & Trim(KslList1.Code) & " and lotyear='" & Year(yfdate) & "' and OPFLG ='N' ", DB, adOpenStatic, adLockOptimistic
 adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,FBILLNO,FBILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,tpjdt,tpjno,tpjtc,ptype,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,CASE WHEN WEIGHTfLG='M' THEN GRSWGT ELSE PGRSWT END AS GRSWT,CASE WHEN WEIGHTFLG='M' THEN TAREWT ELSE PTAREWT END AS TAREWT,CASE WHEN WEIGHTFLG='M' THEN NETWT ELSE PNETWT END AS NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,aedamt,rg23a,dutydocno,sno,FBILLWT,FBILLVALUE,FGROSSWT,FTAREWT,FNETWT,dbamt,ADJVALUE,tax_code,tax_per,landcostwithtax,BillValue,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,cessper,cessamt,commper,commamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,lcintper,lcintamt,damageamt,clearanceamt,othersamt,customSdutyamt,vatper,vatamt,BILLNO,BILLDT,Assvalue,form_type,dutyclaimable,Dutyper,DiscountFlg, OtherTaxableAmt,Addtaxcode,addtaxper,addtaxamount,rateunit,PNETWT" & _
                    " FROM RM_LOT WHERE divcode='" & Divcode & "' and lotdt='" & Format(lotdate, "yyyy-mm-dd") & "' and lotno=" & Trim(LOTNO) & " and OPFLG ='N' ", db, adOpenStatic, adLockBatchOptimistic
 If adoPrimaryRS.RecordCount > 0 Then
 
    If UCase(adoPrimaryRS("bblflg")) = "B" Then
          Combo1.Text = "Bale"
    ElseIf UCase(adoPrimaryRS("bblflg")) = "R" Then
           Combo1.Text = "Borah"
    End If

 
    Call ENABLCONTLS
    Call bindcontls
    
    If Opt = "add" Then
        Txtfields(56).Text = IIf(IsNull(adoPrimaryRS("vatper")), 0, adoPrimaryRS("vatper"))
        Txtfields(55).Text = IIf(IsNull(adoPrimaryRS("vatamt")), 0, adoPrimaryRS("vatamt"))
        Txtfields(94).Text = IIf(IsNull(adoPrimaryRS("scper")), 0, adoPrimaryRS("scper"))
        Txtfields(93).Text = IIf(IsNull(adoPrimaryRS("scamt")), 0, adoPrimaryRS("scamt"))
    End If
    
        Txtfields(109).Text = IIf(IsNull(adoPrimaryRS!DutyPer), "0.00", Format(adoPrimaryRS!DutyPer, "0.00"))

    
    If adoPrimaryRS!dutyclaimable = "Y" Then
        opt_c.value = True
        Txtfields(109).Enabled = True
        Txtfields(109).Text = "100.00"
    Else
        opt_nc.value = True
        Txtfields(109).Enabled = False
        Txtfields(109).Text = "0.00"
    End If
    If adoPrimaryRS!discountFlg = "Y" Then opt_c.value = True Else opt_nc.value = True
    
    Txtfields(25).Locked = True
    Txtfields(0).Locked = True
    Txtfields(8).Locked = True
    'MaskEdBox1(1).Text = pdate
    Txtfields(2).Locked = True
    Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
    Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
    Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
    Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Txtfields(82).Text = Format(Txtfields(82).Text, "#0.00")
    Txtfields(23).Locked = False
    Txtfields(24).Locked = False
    Txtfields(25).Locked = False
    Txtfields(46).Text = Format(Txtfields(46).Text, "#0.000")
    Txtfields(47).Text = Format(Txtfields(47).Text, "#0.000")
    Txtfields(48).Text = Format(val(Txtfields(48).Text), "#0.000")
    Txtfields(49).Text = Format(val(Txtfields(49).Text), "#0.000")
    Txtfields(50).Text = Format(val(Txtfields(50).Text), "#0.000")

   Set Lrs = New Recordset
   'Lrs.Open "select distinct isnull(dlytype,' ')as dlytype from rm_cont where contno='" & rs("contno") & "' ", DB, adOpenStatic
   Lrs.Open "Select a.contno,dlytype,c.lotno from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
            & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
            & " and a.contdt=b.contdt and C.Lotno=" & Trim(LOTNO) & " and c.lotdt='" & Format(lotdate, "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", db, adOpenStatic
            
   If Lrs.RecordCount > 0 Then
        delivery = Lrs("DLYTYPE")
   Else
        delivery = "S"
   End If
        strDelType = delivery
        
        If adoPrimaryRS!dutyclaimable = "Y" Then opt_c.value = True Else opt_nc.value = True
        
        If adoPrimaryRS!dutyclaimable = "Y" Then lblDutyPer.Enabled = True: Txtfields(109).Enabled = True
        dblLandedCost = 0
        dblDuty = 0
        s = 0
        LANDEDCOST (IIf(IsNull(adoPrimaryRS("pjamt")), 0, adoPrimaryRS("pjamt")))

    Txtfields(78).Text = Format(Txtfields(78).Text, "#0.00")
    Txtfields(82) = Format(Txtfields(82).Text, "#0.00")
   
   
   ORGAmt = IIf(IsNull(adoPrimaryRS("BillValue")), 0, adoPrimaryRS("BillValue"))
   If Lrs.RecordCount > 0 Then
'        If Lrs("Dlytype") = "S" Then
'            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'            txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT")) + IIf(IsNull(adoPrimaryRS("vatamt")) = True, 0, adoPrimaryRS("vatamt")) 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
'        ElseIf Lrs("Dlytype") = "F" Then
'            txtfields(7).Text = val(txtfields(7))
'        End If
        If Lrs("Dlytype") = "S" Then
            'Txtfields(7).Text = IIf(IsNull(adoprimaryrs("BillValue")), 0, adoprimaryrs("BillValue")) + adoprimaryrs("Taxamt") 'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
            Txtfields(6).Text = IIf(IsNull(adoPrimaryRS("BillnO")), 0, adoPrimaryRS("BillNO"))
            Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))  'Val(Txtfields(78).Text) ' - Val(Txtfields(15).Text)
        Else
            Txtfields(7).Text = IIf(IsNull(adoPrimaryRS("PJAMT")), 0, adoPrimaryRS("PJAMT"))
        End If
   End If

''''''''''''''''''''
   Txtfields(23).SetFocus
    'Frame7.Enabled = False
    If adoPrimaryRS("rg23a") = "Y" Then
        Combo2.Text = "Yes"
    ElseIf adoPrimaryRS("rg23a") = "N" Then
        Combo2.Text = "No"
    Else
        Combo2.Text = ""
    End If
    Set rs = New Recordset
    rs.Open "sELECT VARNAME FROM RM_VAR WHERE VARCODE='" & adoPrimaryRS("VARCODE") & "'", db, adOpenStatic
    If rs.RecordCount > 0 Then
        Txtfields(3).Text = rs("VARNAME")
    Else
        Txtfields(3).Text = ""
    End If
    If adoPrimaryRS("dbamt") <> Null Then
    txtDBCRNt.Text = ""
    End If
 Else
    MsgBox "The Record Cannot be Add or Delete Beacuse the Bale is already Issued", vbInformation, head
    Frame3.Visible = False
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    BUTTON(0).Enabled = True
    BUTTON(2).Enabled = True
    Call NEWFORM1(BUTTON, GSNO)
 End If
Else
    Frame3.Visible = False
    Call BUTTON_Click(10)
    Exit Function
End If
Case "cast(a.tc as varchar)"
    SSTab1.Visible = True
    Txtfields(300).Text = KSLLIST1.Code
    Txtfields(301).Text = KSLLIST1.Description
    Txtfields(302).SetFocus
    
Case "cast(lotno as varchar)"
    SSTab1.Visible = True
    Txtfields(300).Text = KSLLIST1.Code
    Txtfields(301).Text = KSLLIST1.Description
    Txtfields(302).SetFocus
    
Case "purtype"
    SSTab1.Visible = True
    Txtfields(302).Text = KSLLIST1.Code
    Txtfields(303).Text = KSLLIST1.Description
    Txtfields(304).SetFocus
End Select
Frame3.Visible = False

Txtfields(300).tabIndex = 0
Txtfields(300).SetFocus
SSTab2.Tab = 0
Call fBillValue(dAssValue)





If Opt = "del" Then BUTTON(9).Enabled = True: BUTTON(9).SetFocus

Exit Function
BillSelection_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BillSelection of Form frmPurchaseBill", vbInformation, head
Screen.MousePointer = 0
End Function

Private Function LANDEDCOST(sAssessAMOUNT As Double)
 dCashDis = 0
 dTradeDis = 0
 dLryFgt = 0
 DBED = 0
 dCess = 0
 dEDCess = 0
 dHScess = 0
 dTax = 0
 dSC = 0
 dAddTax = 0
 dCST = 0
 dOtherTax = 0
 dRlyFrg = 0
 dInsurance = 0
 dComm = 0
 dLC = 0
 dDRnote = 0
 dDamage = 0
 dCustoms = 0
 dClearance = 0
 dOthersTaxable = 0
 dOthersNonTaxable = 0
 dBrokerComm = 0
 dFbillValue = 0
 dCharity = 0
 DSICAAmt = 0


    dOtherTax = val(Txtfields(51))
    dComm = val(Txtfields(60))
    dLC = val(Txtfields(62))
    dDRnote = val(Txtfields(70))
    dCashDis = val(Txtfields(54))
    dTradeDis = val(Txtfields(85))
    dLryFgt = val(Txtfields(38))
    DBED = val(Txtfields(75))
    dCess = val(Txtfields(65))
    dEDCess = val(Txtfields(73))
    dHScess = val(Txtfields(71))
    dTax = val(Txtfields(55))
    dSC = val(Txtfields(93))
    dAddTax = val(Txtfields(77))
    dCST = val(Txtfields(87))
    dRlyFrg = val(Txtfields(43))
    dInsurance = val(Txtfields(58))
    dDamage = val(Txtfields(64))
    dCustoms = val(Txtfields(69))
    dClearance = val(Txtfields(66))
    dOthersTaxable = val(Txtfields(41))
    dOthersNonTaxable = val(Txtfields(67))
    dBrokerComm = val(Txtfields(83))
    dCharity = val(Txtfields(63))
    DSICAAmt = val(Txtfields(97).Text)
    dFbillValue = 0

'val (Txtfields(82))

        dblLandedCost = 0
        dblDuty = 0
        s = 0
        If opt_c.value = True Then
            s = val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65))
            dblDuty = s * (100 - val(Txtfields(109))) / 100
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt
            End If
        Else
            If UCase(delivery) = "F" Then
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax
            Else
                dblLandedCost = sAssessAMOUNT - dCashDis - dTradeDis - DSICAAmt + DBED + dEDCess + dHScess + dCess + dTax + dSC + dCST + dOtherTax + dInsurance + dComm + dLC + dCharity + dDamage + dClearance + dOthersTaxable + dOthersNonTaxable + dCustoms + dBrokerComm + dAddTax + dRlyFrg + dLryFgt
            End If
        End If
               
        Txtfields(35).Text = KSLRound(val(dblLandedCost), LANDCOST_ROFF)
        Set rs2 = New Recordset
        rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(83).Text & "'", db, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
                dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dTax - dSC
            End If
        Else
           ' dblLandedCost = dblLandedCost ''sasi 30.6.17
           dblLandedCost = dblLandedCost - dTax - dSC
            
        End If
        
        Set rs2 = New Recordset
            rs2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(42).Text & "'", db, adOpenStatic
        If Not rs2.EOF Then
            If rs2(0) = "N" Then
               dblLandedCost = dblLandedCost
            Else
                dblLandedCost = dblLandedCost - dAddTax
            End If
        Else
            'dblLandedCost = dblLandedCost ''sasi 30.6.17
                 dblLandedCost = dblLandedCost - dAddTax
        End If
        
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", db, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
        
      
      If EXIST_VAT(Txtfields(26).Text) = True And VATFLG = "Y" Then
            'txtFields(78).Text = val(txtFields(78).Text) - val(txtFields(55).Text)
      End If
      
      Txtfields(78).Text = KSLRound(val(dblLandedCost), LANDCOST_ROFF)
End Function



Private Sub OtherTaxCal()
     If val(Txtfields(52).Text) <> 0 Then
     Set rs = New Recordset
     rs.Open "SELECT commtax FROM RM_PARAM", db, adOpenStatic
        If rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, ADDTAX_ROFF)
                Else
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, ADDTAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, ADDTAX_ROFF)
                Else
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) - (val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, ADDTAX_ROFF)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * (val(dAssValue) + val(Txtfields(41).Text) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF)
                Else
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * (val(dAssValue) + val(Txtfields(41).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * (val(dAssValue) + val(Txtfields(41).Text) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF)
                Else
                    Txtfields(51).Text = Round(val(Txtfields(52).Text) * (val(dAssValue) + val(Txtfields(41).Text) - (val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF)
                End If
            End If
        End If
    End If
End Sub

Private Sub CSTTaxCalc()
    If val(Txtfields(86).Text) <> 0 Then
     Set rs = New Recordset
     rs.Open "SELECT commtax FROM RM_PARAM", db, adOpenStatic
        If rs(0) = "Y" Then
            If optAfter = True Then
                If delivery = "S" Then
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, TAX_ROFF)
                Else
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, TAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, TAX_ROFF)
                Else
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * ((val(dAssValue) + val(Txtfields(60).Text)) - (val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, TAX_ROFF)
                End If
            End If
        Else
            If optAfter = True Then
                If delivery = "S" Then
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * (val(dAssValue) + val(Txtfields(41).Text) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, TAX_ROFF)
                Else
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * (val(dAssValue) + val(Txtfields(41).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, TAX_ROFF)
                End If
            Else
                If delivery = "S" Then
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * (val(dAssValue) + val(Txtfields(41).Text) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, TAX_ROFF)
                Else
                    Txtfields(87).Text = Round(val(Txtfields(86).Text) * (val(dAssValue) + val(Txtfields(41).Text) - (val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, TAX_ROFF)
                End If
            End If
        End If
    End If
End Sub
Private Sub TaxCalc()
   ' If val(txtFields(55).Text) = 0 Then
    If optAfter = True Then
        Set rs = New Recordset
        rs.Open "Select * from rm_param", db, adOpenStatic
        If rs("commtax") = "Y" Then
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
            If delivery = "S" Then
             Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
             Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
             Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
              Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0)
           Else
              a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
              Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
              Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
              Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
               Txtfields(55).Text = Format(Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0), "0.00")
           End If

        Else
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If


            If delivery = "S" Then
              Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
              Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
              Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
               Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0)
           Else
              a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
              Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
              Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
              Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
               Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0)
           End If
        End If
    Else
        Set rs = New Recordset
        rs.Open "Select * from rm_param", db, adOpenStatic
        If rs("commtax") = "Y" Then
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                If CustID = "COTTON" Then
'                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                    txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                Else
'                    a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                    txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'                End If
'            End If

            If delivery = "S" Then
                Txtfields(118).Text = Format(Round(Round(val(Txtfields(100).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), CGST_ROFF), "0.00")
                Txtfields(117).Text = Format(Round(Round(val(Txtfields(101).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), SGST_ROFF), "0.00")
                Txtfields(116).Text = Format(Round(Round(val(Txtfields(102).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), IGST_ROFF), "0.00")
                Txtfields(118).Text = Format(Round(Txtfields(118).Text, 0), "0.00")
                Txtfields(117).Text = Format(Round(Txtfields(117).Text, 0), "0.00")
                Txtfields(116).Text = Format(Round(Txtfields(116).Text, 0), "0.00")
                Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), "0.00")
                
            Else
                If CustID = "COTTON" Then
                    a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                    'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                    Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                    Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                    Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                    Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), "0.00")

                Else
                    a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                   ' txtfields(55).Text = Format(Round(val(txtfields(56).Text) * ((val(dAssValue) + val(txtfields(60).Text) + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                    
                    Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                    Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                    Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                    Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), "0.00")
                    
                End If
           End If


        Else
'            If delivery = "S" Then
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF), "0.00")
'            Else
'                a = val(dAssValue) - ((val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text))
'                txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
'            End If
          If delivery = "S" Then
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text) + val(txtfields(41).Text)) / 100, TAX_ROFF), "0.00")
                Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * (val(dAssValue) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * (val(dAssValue) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * (val(dAssValue) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                Txtfields(55).Text = Format(Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0), "0.00")
                
            Else
                a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                'txtfields(55).Text = Format(Round(val(txtfields(56).Text) * (val(dAssValue + val(txtfields(41).Text)) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(38).Text)) + val(txtfields(75).Text) + val(txtfields(71).Text) + val(txtfields(73).Text) + val(txtfields(65).Text)) / 100, TAX_ROFF), "0.00")
                Txtfields(118).Text = Format(Round(Format(Round(val(Txtfields(100).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), CGST_ROFF), "0.00")
                Txtfields(117).Text = Format(Round(Format(Round(val(Txtfields(101).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), SGST_ROFF), "0.00")
                Txtfields(116).Text = Format(Round(Format(Round(val(Txtfields(102).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, 2), "0.00"), IGST_ROFF), "0.00")
                Txtfields(55).Text = Format(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), "0.00")
                
            End If
        End If
    End If

    'Surcharge
    Txtfields(93).Text = Format(Round((val(Txtfields(55).Text) * val(Txtfields(94).Text)) / 100, SURCHARGE_ROFF), "0.00")

    
End Sub
Private Sub AddTaxCalc()
If val(Txtfields(79).Text) <> 0 Then
    If optAfter = True Then
        Set rs = New Recordset
        rs.Open "Select * from rm_param", db, adOpenStatic
        If rs("commtax") = "Y" Then
            If delivery = "S" Then
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    Else
        Set rs = New Recordset
        rs.Open "Select * from rm_param", db, adOpenStatic
        If rs("commtax") = "Y" Then
            If delivery = "S" Then
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * ((val(dAssValue) + val(Txtfields(60).Text) + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If delivery = "S" Then
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * (val(dAssValue) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text) + val(Txtfields(41).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
                a = val(dAssValue) - ((val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text))
                Txtfields(77).Text = Format(Round(val(Txtfields(79).Text) * (val(dAssValue + val(Txtfields(41).Text)) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(38).Text)) + val(Txtfields(75).Text) + val(Txtfields(71).Text) + val(Txtfields(73).Text) + val(Txtfields(65).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If
    End If
End If
End Sub

Private Sub ReturnTransType()
   Dim trs As New ADODB.Recordset
   If Trim(Txtfields(300).Text) <> "" Then
      strSQL = "select Distinct a.tc""Tc"",a.tchead""TcHead"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(Txtfields(300).Text) & "'"
      trs.Open strSQL, db, adOpenStatic
      If trs.EOF = False Then
         Txtfields(301).Text = IIf(IsNull(trs.Fields("TcHead").value), "", trs.Fields("TcHead").value)
      End If
   End If
   Set trs = Nothing
End Sub

Private Sub ReturnProcessType()
   Dim trs As New ADODB.Recordset
   If Trim(Txtfields(302).Text) <> "" Then
      strSQL = "select purtype""Purchase Type"",purdesc""Purchase Type Description"" from rm_purtype where purtype='" & Trim(Txtfields(302).Text) & "'"
      trs.Open strSQL, db, adOpenStatic
      If trs.EOF = False Then
         Txtfields(303).Text = IIf(IsNull(trs.Fields("purChase Type Description").value), "", trs.Fields("purChase Type Description").value)
      End If
   End If
   Set trs = Nothing
End Sub

Private Sub StockOk_Click()
On Error GoTo StockOk_Click_Error
Dim lRow, i As Integer
Dim dblGrWt As Double
sInwardNo = ""
sInwardDate = ""

    If LstPO.SelCount = 0 Then
        MsgBox "Select Lot(s) from the Lot No. Listing", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
            totrow = totrow + 1
        End If
    Next
                
    Call SpreadAlign(CInt(totrow))
        irow = 0
        
        dAssValue = 0:      dFinGrsWgt = 0:           dFinTarWgt = 0:        dFinNetWgt = 0:      dSupWgt = 0
        Gtax = "":          Txtfields(56).Text = "":  dTax = 0:     dAddTax = 0:        dCashDis = 0:        dTradeDis = 0
        dSC = 0:            Txtfields(94).Text = "":  dSCper = 0: dScamt = 0
        dLryFgt = 0:        DBED = 0:                 dCess = 0:             dEDCess = 0:         dHScess = 0
        dRlyFrg = 0:        dInsurance = 0:           dComm = 0:             dLC = 0:             dCharity = 0
        dDamage = 0:        dCustoms = 0:             dOthersNonTaxable = 0: dOthersTaxable = 0:  dDRnote = 0
        dBrokerComm = 0:    dCashPer = 0:             dTradePer = 0:         dLryFgtPer = 0:      DBEDPer = 0
        dCessPer = 0:       dEDCessPer = 0:           dHScessPer = 0:        dOtherTaxPer = 0:    dRlyFrgPer = 0
        dInsurancePer = 0:  dCommPer = 0:             dLCPer = 0:            dOtherTax = 0:       dClearance = 0
        dSupGWt = 0: dSupTWt = 0: dSupBValue = 0: DDbamt = 0: DSICAAmt = 0
         sCode = ""
         Txtfields(83).Text = ""
         delivery = ""
         sBrkcd = ""
         dBrkComm = 0
         
    '================Broker check=
     For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
         irow = irow + 1
            sLotno = ""
            sLotDt = ""
            sSLcode = ""
            
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sSLcode = Trim(Txtfields(81).Text)
            
            Set rs = New Recordset
            rs.Open "select isnull(a.BRKCD,'') AS BRKCD,isnull(e.CommPer,0) AS CommPer from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND tpjno IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "'", db, adOpenStatic
            If Not rs.EOF Then
                
               If Not sBrkcd = "" And Not sBrkcd = rs("BRKCD") Then
                    MsgBox "Selected Lot Agent name not equal, So select same Aagent Lot No.(s) ", vbCritical, head
                    Exit Sub
               Else
                   sBrkcd = rs("BRKCD")
               End If
                
               If Not dBrkComm = 0 And Not dBrkComm = rs("CommPer") Then
                    If MsgBox("Selected Lot Agent Commission not equal, So select same Agent Commission Lot No.(s) " & vbCrLf & "Do you want continue..", vbQuestion + vbYesNo, head) = vbNo Then
                        Exit Sub
                    End If
               Else
                   dBrkComm = rs("CommPer")
               End If
               
               Txtfields(91).Text = Format(dBrkComm, "#0.00")
               
            End If
            
            
        End If
    Next
    
    irow = 0
    For lRow = 0 To LstPO.ListCount - 1
        If LstPO.Selected(lRow) = True Then
         irow = irow + 1
            sLotno = ""
            sLotDt = ""
            sSLcode = ""
            
            sLotno = Trim(Mid(LstPO.List(lRow), 1, 6))
            sLotDt = Format(Trim(Mid(LstPO.List(lRow), 7, 9)), "YYYY/MM/DD")
            sSLcode = Trim(Txtfields(81).Text)
            
            Set rs = New Recordset
            rs.Open "select e.dlytype from rm_lot a,RM_ARRIVAL D,RM_CONT e WHERE A.Arrno=d.ARRNO AND a.ARRDT=d.ARRDATE AND a.DIVCODE=d.DIVCODE AND a.SUPCD=d.SUPCD AND  d.Contno=e.ContNO AND d.ContDT=e.Contdt AND d.DIVCODE=e.DIVCODE AND d.SUPCD=e.SUPCD AND  A.DIVCODE='" & Divcode & "' and opflg='N'  AND ISNULL(INS_FLG,'N')='Y' AND tpjno IS NULL and A.lottype='A' AND A.SUPCD='" & sSLcode & "' and a.lotno=" & sLotno & " and a.lotdt='" & Format(sLotDt, "YYYY/MM/DD") & "'", db, adOpenStatic
            If Not rs.EOF Then
                If Trim(delivery) = "" Then delivery = rs(0)
                strDelType = rs(0)
                If Trim(strDelType) <> Trim(delivery) Then
                    MsgBox "Please select the Lot(s), Delivery Type must be unique", vbInformation, head
                    LstPO.SetFocus
                    Exit Sub
                End If
            Else
                delivery = ""
            End If
            
            Call Lotdisplay(sLotno, sLotDt, sSLcode, irow)
            
        End If
    Next
    
   Call SpreadAlign(CInt(totrow))
'   For lRow = 1 To spdVar.MaxRows
'        If sCode <> GetText(spdVar, ITaxCode, lRow) Then
'            MsgBox "Selected Lot(s) Tax is Differs", vbInformation
'        End If
'   Next
    Frame14.Visible = False
    SSTab1.Enabled = True
    SSTab2.Tab = 0
    Txtfields(300).Text = ""
    Txtfields(301).Text = ""
    Txtfields(302).Text = ""
    Txtfields(304).Text = ""
    Txtfields(6).Text = ""
    txtAdjValue.Text = "0.00"
    Txtfields(6).Locked = True
    Txtfields(7).Locked = True
    
    MaskEdBox1(2).Enabled = True
    MaskEdBox1(3).Enabled = True
    MaskEdBox1(2).Mask = "__/__/____"
    MaskEdBox1(3).Mask = "__/__/____"
    MaskEdBox1(3).Mask = pdate
    MaskEdBox1(3).Text = MaskEdBox1(3).Mask
    If Txtfields(300).Enabled = True Then Txtfields(300).SetFocus

Exit Sub
StockOk_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure StockOk_Click of Form FrmArrival", vbInformation, head

Exit Sub
End Sub

Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    SetSpreadCol spdVar, ILotNo, "Lot No", CellTypeStaticText
    SetSpreadCol spdVar, ILotdt, "Lot Date", CellTypeStaticText
    SetSpreadCol spdVar, Ivarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol spdVar, Ivarname, "Variety Name", CellTypeStaticText
    SetSpreadCol spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol spdVar, Icandyrate, "Rate/Unit", CellTypeNumber, 4
    SetSpreadCol spdVar, IRebate, "Rebate", CellTypeNumber
    SetSpreadCol spdVar, iQty, "Quantity", CellTypeNumber
    SetSpreadCol spdVar, Imgrosswt, "Mill Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imtarewt, "Mill Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Immoiturewt, "Mill Moisture Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imnetwt, "Mill Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipgrosswt, "Supplier Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Iptarewt, "Supplier Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipnetwt, "Supplier Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipjamt, "Value", CellTypeNumber, 2
    SetSpreadCol spdVar, Iwbwt, "Weighbridge Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Icashdisper, "Cash Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icashdisamt, "Cash Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisper, "Trade Dis %", CellTypeNumber, 2
    SetSpreadCol spdVar, Itradedisamt, "Trade Dis Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtper, "Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IFrtamt, "Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedper, "B.E.D %", CellTypeNumber, 2
    SetSpreadCol spdVar, IBedamt, "B.E.D Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdper, "E.D Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IEdamt, "E.D Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessper, "HS Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, IHscessamt, "HS Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessper, "Cess %", CellTypeNumber, 2
    SetSpreadCol spdVar, Icessamt, "Cess Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxCode, "Tax Code", CellTypeEdit
    SetSpreadCol spdVar, ITaxper, "Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, ITaxamt, "Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ISCper, "Surcharge %", CellTypeNumber, 2
    SetSpreadCol spdVar, ISCamt, "Surcharge Amt", CellTypeNumber, 2
         '''sasi16.6.17
    SetSpreadCol spdVar, IHSN, "HSN", CellTypeStaticText
    SetSpreadCol spdVar, ICGSTPER, "CGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICGSTAMT, "CGST Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ISGSTPER, "SGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, ISGSTAMT, "SGST Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IIGSTPER, "IGST %", CellTypeNumber, 2
    SetSpreadCol spdVar, IIGSTAMT, "IGST Amt", CellTypeNumber, 2

    
    SetSpreadCol spdVar, ICommper, "Commission %", CellTypeNumber, 2
    SetSpreadCol spdVar, ICommAMT, "Commission Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCper, "LC Interest %", CellTypeNumber, 2
    SetSpreadCol spdVar, ILCamt, "LC Interest Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 3
    SetSpreadCol spdVar, IInsamt, "Insurance Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthtaxPer, "Other Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IothTaxamt, "Other Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtper, "Rl. Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtamt, "Rl. Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icharity, "Charity Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Idamage, "Damage Amt", CellTypeNumber, 2
    'SetSpreadCol spdVar, Ishipchrg, "Shipment Charge", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthTaxableAmt, "Others (Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthers, "Others (Non-Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IcustomDuty, "Custom Duty Amt", CellTypeNumber, 2
'    SetSpreadCol spdVar, Ibrkcom, "Broker Commission    ", CellTypeNumber, 2
    SetSpreadCol spdVar, ILandedcost, "Landed Cost      ", CellTypeNumber, 2
    SetSpreadCol spdVar, IRatekg, "Rate/kg    ", CellTypeNumber, 4
    SetSpreadCol spdVar, IAcWgt, "A/c Weight", CellTypeNumber, 2
    SetSpreadCol spdVar, Iround, "Adjustment", CellTypeNumber, 2
    SetSpreadCol spdVar, ISICAAmt, "SIC AAmt", CellTypeNumber, 2
    SetSpreadCol spdVar, IPremAmt, "Premimum Amt", CellTypeNumber, 2
    spdVar.Col = 3
    spdVar.ColHidden = True
    
'    spdVar.Col = 2
'    spdVar.ColHidden = True
'    spdvar.
    spdVar.ColWidth(13) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    
    
    spdVar.Col = IOthtaxPer
    spdVar.ColHidden = True
    spdVar.Col = IothTaxamt
    spdVar.ColHidden = True

    spdVar.Col = IBedper
    spdVar.ColHidden = True
    spdVar.Col = IBedamt
    spdVar.ColHidden = True
    spdVar.Col = IHscessper
    spdVar.ColHidden = True
    spdVar.Col = IHscessamt
    spdVar.ColHidden = True
    spdVar.Col = Icessper
    spdVar.ColHidden = True
    spdVar.Col = Icessamt
    spdVar.ColHidden = True
    
    spdVar.Col = ITaxCode
    spdVar.ColHidden = True
    spdVar.Col = ITaxper
    spdVar.ColHidden = True
    spdVar.Col = ITaxamt
    spdVar.ColHidden = True
    
    
    spdVar.ColWidth(4) = 16
    spdVar.Col = 9
    spdVar.Lock = True
    spdVar.Col = 10
    spdVar.Lock = True
    spdVar.Col = 11
    spdVar.Lock = True
    spdVar.Col = 12
    spdVar.Lock = True
    spdVar.Col = 8
    spdVar.Lock = True
    Set rs = New Recordset
    rs.Open "Select AddtaxRequired from Rm_param", db, adOpenStatic
    If rs(0) = "Y" Then
        SetSpreadCol spdVar, IATaxCode, "Add. Tax Code", CellTypeEdit
        SetSpreadCol spdVar, IATaxper, "Add. Tax %", CellTypeNumber, 2
        SetSpreadCol spdVar, IATaxamt, "Add. Tax Amt", CellTypeNumber, 2
        
        spdVar.ColWidth(IATaxCode) = 10
        spdVar.ColWidth(IATaxper) = 9
        spdVar.ColWidth(IATaxamt) = 9
    
        With spdVar
            .MaxCols = 65
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    Else

        With spdVar
            .MaxCols = 62
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub
Private Sub Lotdisplay(LOTNO As String, LOTDT As String, SUPCD As String, irow As Integer)
On Error GoTo Lotdisplay_Error
    Unbindcontls
    Set RSq = New Recordset
    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,isnull(scper,0)scper,isnull(scamt,0)scamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,favaourablewgt,weightFlg,ISNULL(ADJVALUE,0) ADJVALUE,isnull(brkcd,'') as brkcd,isnull(brkcomPer,0) as brkcomPer,RateUnit,Isnull(SuppBillvalue,0)SuppBillvalue,isnull(dbamt,0)dbamt,isnull(SICAAmt,0)SICAAmt " & _
             " ,ISNULL(HSN,'') HSN,ISNULL(cgstper,0) cgstper,ISNULL(cgstamt,0)cgstamt,ISNULL(sgstper,0)sgstper,ISNULL(sgstamt,0)sgstamt,ISNULL(igstper,0) igstper,ISNULL(igstamt,0) igstamt,isnull(premAmt ,0) premAmt   " & _
             " from rm_lot where lotno=" & val(LOTNO) & " and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and supcd='" & Trim(sSLcode) & "' and lottype='A' and divcode='" & Divcode & "' ORDER BY LOTYEAR asc", db, adopenstaic, adLockBatchOptimistic
    q = irow
'    Call SpreadAlign(rsq.RecordCount)
    Gtax = ""
    taxcode = "Y"
    GAtax = ""
    Ataxcode = "Y"
    If Not RSq.EOF Then
    
            
            ''''GST SASI 16.6.17
            Txtfields(118).Text = val(RSq("CGSTAMT"))
            Txtfields(117).Text = val(RSq("SGSTAMT"))
            Txtfields(116).Text = val(RSq("IGSTAMT"))
            
            Txtfields(100).Text = val(RSq("CGSTPER"))
            Txtfields(101).Text = val(RSq("SGSTPER"))
            Txtfields(102).Text = val(RSq("IGSTPER"))
            
            
            Txtfields(90).Text = RSq("brkcd")
            Txtfields(91).Text = Format(RSq("brkcomPer"), "#0.00")
            
            spdVar.SetText ILotNo, q, RSq("lotno")
            spdVar.SetText ILotdt, q, RSq("lotdt")
            spdVar.SetText Ivarcode, q, RSq("varcode")
            
            Set rsg = New Recordset
            rsg.Open "select * from rm_var where varcode='" & RSq("varcode") & "'", db, adOpenStatic
            spdVar.SetText Ivarname, q, rsg("varname")
            If RSq("bblflg") = "B" Then
                 spdVar.SetText Iunit, q, "Bales"
            Else
                 spdVar.SetText Iunit, q, "Borah"
            End If
            
            spdVar.SetText iQty, q, RSq("bales")
            spdVar.SetText Icandyrate, q, RSq("ratecy")
            spdVar.SetText IRebate, q, RSq("rebate")
            spdVar.SetText Imgrosswt, q, RSq("Grswgt")
            spdVar.SetText Imtarewt, q, RSq("tarewt")
            spdVar.SetText Immoiturewt, q, RSq("moisture_et")
            spdVar.SetText Imnetwt, q, RSq("Netwt")
            spdVar.SetText Ipgrosswt, q, RSq("pgrswt")
            spdVar.SetText Iptarewt, q, RSq("ptarewt")
            spdVar.SetText Ipnetwt, q, RSq("pnetwt")
            spdVar.SetText Iwbwt, q, RSq("weighbridgewt")
            spdVar.SetText Ipjamt, q, RSq("pjamt")
            spdVar.SetText Icashdisper, q, RSq("cashdisper")
            spdVar.SetText Icashdisamt, q, RSq("cashdisamt")
            spdVar.SetText Itradedisper, q, RSq("tradedisper")
            spdVar.SetText Itradedisamt, q, RSq("tradedisamt")
            spdVar.SetText IFrtper, q, RSq("lrfrtper")
            spdVar.SetText IFrtamt, q, RSq("lrfrtamt")
            spdVar.SetText IBedper, q, RSq("bedpeR")
            spdVar.SetText IBedamt, q, RSq("bedamt")
            spdVar.SetText IEdper, q, RSq("sedpeR")
            spdVar.SetText IEdamt, q, RSq("sedamt")
            spdVar.SetText IHscessper, q, RSq("aedper")
            spdVar.SetText IHscessamt, q, RSq("aedamt")
            spdVar.SetText Icessper, q, RSq("cessper")
            spdVar.SetText Icessamt, q, RSq("cessamt")
            spdVar.SetText ITaxCode, q, RSq("Tax_code")
            Gtax = RSq("TAX_CODE")
            sCode = RSq("Tax_code")
            If taxcode <> RSq("TAX_CODE") And q <> 1 Then
                taxcode = "N"
            End If
            
            spdVar.SetText ITaxper, q, RSq("vatper")
            spdVar.SetText ITaxamt, q, RSq("vatamt")
            spdVar.SetText ISCper, q, "00" ' RSq("scper")
            spdVar.SetText ISCamt, q, "0" ' RSq("scamt")
            spdVar.SetText IOthtaxPer, q, "0" 'RSq("othtaxper")
            spdVar.SetText IothTaxamt, q, "0" ' RSq("othtaxamt")
            spdVar.SetText IRlyfrtper, q, "0" ' RSq("rlyfrtper")
            spdVar.SetText IRlyfrtamt, q, "0 " 'RSq("rlyfrtamt")
            spdVar.SetText IInsper, q, "0" 'RSq("insper")
            spdVar.SetText IInsamt, q, "0" 'RSq("insamt")
            spdVar.SetText ICommper, q, RSq("commper")
            spdVar.SetText ICommAMT, q, RSq("commamt")
            spdVar.SetText ILCper, q, "0" 'RSq("Lcintper")
            spdVar.SetText ILCamt, q, "0" ' RSq("lcintamt")
            ''spdVar.SetText IDbamt, q, rsq("dnamt1")
            spdVar.SetText Icharity, q, "0" ' RSq("charityamt")
'            spdVar.SetText Idamage, q, rsq("Damageamt")
            'spdVar.SetText Ishipchrg, q, rsq("shipchrg")
            spdVar.SetText IOthTaxableAmt, q, "0" 'RSq("OtherTaxableAmt")
            spdVar.SetText IOthers, q, "0" 'RSq("othersamt")
            spdVar.SetText IcustomDuty, q, RSq("customsdutyamt")
'            spdVar.SetText Ibrkcom, q, rsq("brkcom")
            spdVar.SetText ILandedcost, q, RSq("totlandcost")
            spdVar.SetText IRatekg, q, RSq("ratekg")
            spdVar.SetText Iround, q, "0" ' RSq("ADJVALUE")
            spdVar.SetText IAcWgt, q, RSq("Favaourablewgt")
            spdVar.SetText ISICAAmt, q, "0" ' RSq("SICAAmt")
            
            '''SASI 16.6.17
            
            spdVar.SetText ICGSTPER, q, RSq("cGSTper")
            spdVar.SetText ICGSTAMT, q, RSq("CGSTamt")
            spdVar.SetText ISGSTPER, q, RSq("SGSTper")
            spdVar.SetText ISGSTAMT, q, RSq("SGSTamt")
            spdVar.SetText IIGSTPER, q, RSq("IGSTper")
            spdVar.SetText IIGSTAMT, q, RSq("IGSTamt")
            spdVar.SetText IHSN, q, RSq("HSN")
            spdVar.SetText IPremAmt, q, RSq("premAmt")
            
            Set rs = New Recordset
            rs.Open "select addtaxrequired from rm_param", db, adOpenStatic
            If rs(0) = "Y" Then
                spdVar.SetText IATaxCode, q, RSq("addTaxcode")
                spdVar.SetText IATaxper, q, RSq("addtaxper")
                spdVar.SetText IATaxamt, q, RSq("addtaxamount")
                  GAtax = RSq("addTaxcode")
                sCode = RSq("Tax_code")
                If Ataxcode <> RSq("addTaxcode") And q <> 1 Then
                    Ataxcode = "N"
                End If
            End If
            FtFlg = "N"
            ftamt = 0
            Set rs = New Recordset
            rs.Open "Select a.contno,dlytype,c.lotno,isnull(a.ftflg,'N') ftflg,isnull(a.FTAmt,0) FTAmt  from rm_cont a,rm_arrival b, rm_lot c where b.divcode=c.divcode " _
                & "and b.arrno=c.arrno and b.lotno=c.lotno and b.lotdt=c.lotdt and a.contno=b.contno " _
                & " and a.contdt=b.contdt and C.Lotno=" & RSq("LOTNO") & " and c.lotdt='" & Format(RSq("lotdt"), "yyyy-MM-dd") & "' and c.lotyear='" & Year(yfdate) & "' and c.divcode='" & Divcode & "'", db, adOpenStatic
            If Not rs.EOF Then
                strDelType = IIf(rs("dlytype") = "", strDelType = "", rs("Dlytype"))
                
                FtFlg = rs("ftflg")
                ftamt = rs("ftamt")
                
            End If
            
            If CustID = "COTTON" Then
                If strDelType = "F" Then
                    If RSq("RateUnit") = "CANDY" Then
                        Set TmpRs = New Recordset
                        TmpRs.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", db, adOpenDynamic, adLockReadOnly
                        If Not TmpRs.EOF Then
                            'NoofQuantity = RSq("NetWt") / TmpRs("Value")
                            If Trim(ValueFLG) = "S" Then
                                NoofQuantity = RSq("pnetwt") / TmpRs("Value")
                            Else
                                NoofQuantity = RSq("NetWt") / TmpRs("Value")
                            End If
                        End If
                    End If
                    FVatPer = IIf(IsNull(RSq("Vatper")), 0, RSq("Vatper"))
                    FBEDPER = IIf(IsNull(RSq("Bedper")), 0, RSq("Bedper"))
                    
                    If FBEDPER > 0 Then
                        FEDCESSPER = IIf(IsNull(RSq("sedper")), 0, RSq("sedper")) / FBEDPER
                        FHSCESSPER = IIf(IsNull(RSq("Aedper")), 0, RSq("Aedper")) / FBEDPER
                    End If
                   ' TAssValue = NoofQuantity * (((RSq("RateCy") * 100) / (100 + FVatPer + FBEDPER + FEDCESSPER + FHSCESSPER + SGSTPER + CGSTPER + IGSTPER)))
                     TAssValue = NoofQuantity * ftamt
                    dAssValue = dAssValue + TAssValue
                    
                    TVatAmt = TAssValue * RSq("Vatper") / 100
                    dTax = dTax + TVatAmt
                   
                    TVatAmt = TAssValue * RSq("addtaxper") / 100
                    dAddTax = dAddTax + TVatAmt
                    
                    TBEDAmt = TAssValue * RSq("bedper") / 100
                    DBED = DBED + RSq("bedamt")
                    
                    dEDCess = TAssValue * FEDCESSPER / 100
                    dHScess = TAssValue * FHSCESSPER / 100
                    
                    
                Else
                
                    dAssValue = dAssValue + RSq("pjamt")
                    dTax = dTax + RSq("vatamt")
                    DBED = DBED + RSq("bedamt")
                    dHScess = dHScess + RSq("aedamt")
                    dEDCess = dEDCess + RSq("sedamt")
                End If
            Else
                If Trim(ValueFLG) = "S" Then
                   If Trim(ValueFLG) = "S" Then
                        v2 = Ipnetwt
                    Else
                        v2 = Imnetwt
                    End If
                        
                    Set rsr = New Recordset
                    rsr.Open "Select Value From RM_RATEUNIT where UnitName = '" & RSq("RATEUNIT") & "'", db, adOpenDynamic, adLockReadOnly
                    v3 = Icandyrate
                    v4 = IRebate
                    If rsr.EOF = False Then
                    'TAssValue = Round((val(GetText(spdVar, v2, q)) * ((val(GetText(spdVar, v3, q)) / rsr("value")) - ftamt)) - val(GetText(spdVar, v4, q)), 4)
                    TAssValue = Round((val(GetText(spdVar, v2, q)) * ftamt), 4)
                    End If
                    spdVar.SetText Ipjamt, q, CStr(TAssValue)
                    'spdVar.SetText Ipjamt, q, TAssValue
                  
                End If
                If Trim(ValueFLG) = "S" Then
                dAssValue = dAssValue + val(TAssValue)
                Else
            
                dAssValue = dAssValue + RSq("pjamt")
                End If
            
               ' dAssValue = dAssValue + RSq("pjamt")
                dTax = dTax + RSq("vatamt")
                dSC = dSC + RSq("SCAMT")
                DBED = DBED + RSq("bedamt")
                dHScess = dHScess + RSq("aedamt")
                dEDCess = dEDCess + RSq("sedamt")
            End If
            
            dSupWgt = dSupWgt + RSq("pnetwt")
            dSupGWt = dSupGWt + RSq("pgrswt")
            dSupTWt = dSupTWt + RSq("ptarewt")
            dSupBValue = dSupBValue + RSq("SuppBillvalue")
'            dADJValue = dADJValue + RSq("ADJVALUE") ''sasi 30.1.18
'            dCashDis = dCashDis + RSq("cashdisamt")
'            dTradeDis = dTradeDis + RSq("tradedisamt")
'            dLryFgt = dLryFgt + RSq("lrfrtamt")
'            DDbamt = DDbamt + RSq("dbamt")
'            DSICAAmt = DSICAAmt + RSq("SICAAmt")'
'            dCess = dCess + RSq("cessamt")
'            dCess = KSLRound(dCess, CESS_ROFF)
            
'            dOthersTaxable = dOthersTaxable + RSq("OtherTaxableAmt")
'            dOthersTaxable = KSLRound(dOthersTaxable, ADDTAX_ROFF)
'
'            dOthersNonTaxable = dOthersNonTaxable + RSq("OthersAmt")
'            dRlyFrg = dRlyFrg + RSq("rlyfrtamt")
'            dInsurance = dInsurance + RSq("insamt")
'            dComm = dComm + RSq("commamt")
'            dLC = dLC + RSq("lcintamt")
'            dCharity = dCharity + RSq("charityamt")
'            dOtherTax = dOtherTax + RSq("othtaxAmt")
'            dDamage = dDamage + RSq("DamageAmt")
'            dCustoms = dCustoms + RSq("customsdutyamt")
'            'dDRnote = dDRnote + rsq("DNAMT1")
'            dBrokerComm = dBrokerComm + RSq("brkcom")
'            DBEDPer = DBEDPer + RSq("bedper")
'            dCashPer = dCashPer + RSq("cashdisper")
'            dTradePer = dTradePer + RSq("tradedisper")
'            dLryFgtPer = dLryFgtPer + RSq("lrfrtper")
'
'            dEDCessPer = dEDCessPer + RSq("sedper")
'            dHScessPer = dHScessPer + RSq("aedper")
'            dCessPer = dCessPer + RSq("cessper")
'            dTaxPer = dTaxPer + RSq("vatper")
'            dAddTaxPer = dAddTaxPer + RSq("addtaxper")
'            dSCper = dSCper + IIf(IsNull(RSq("scper")), 0, RSq("scper"))
'
'            dRlyFrgPer = dRlyFrgPer + RSq("rlyfrtper")
'            dInsurancePer = dInsurancePer + RSq("insper")
'            dCommPer = dCommPer + RSq("commper")
'            dLCPer = dLCPer + RSq("lcintper")
'            dOtherTaxPer = dOtherTaxPer + RSq("othtaxper")
'
'            dSingleValue = RSq("cashdisper")
            Txtfields(53).Text = Format(ChkPerDuplicate(irow, dCashPer, dSingleValue), "0.00")
            dSingleValue = RSq("tradedisper")
            Txtfields(84).Text = Format(ChkPerDuplicate(irow, dTradePer, dSingleValue), "0.00")
            dSingleValue = RSq("lrfrtper")
            Txtfields(37).Text = Format(ChkPerDuplicate(irow, dLryFgtPer, dSingleValue), "0.00")
            dSingleValue = RSq("bedper")
            Txtfields(88).Text = Format(ChkPerDuplicate(irow, DBEDPer, dSingleValue), "0.00")
            dSingleValue = RSq("sedper")
            Txtfields(74).Text = Format(ChkPerDuplicate(irow, dEDCess, dSingleValue), "0.00")
            dSingleValue = RSq("cessper")
            Txtfields(68).Text = Format(ChkPerDuplicate(irow, dCessPer, dSingleValue), "0.00")
            dSingleValue = RSq("aedper")
            Txtfields(72).Text = Format(ChkPerDuplicate(irow, dHScessPer, dSingleValue), "0.00")
            dSingleValue = RSq("othtaxper")
            Txtfields(52).Text = Format(ChkPerDuplicate(irow, dOtherTaxPer, dSingleValue), "0.00")
            dSingleValue = RSq("rlyfrtper")
            Txtfields(44).Text = Format(ChkPerDuplicate(irow, dRlyFrgPer, dSingleValue), "0.00")
            dSingleValue = RSq("commper")
            Txtfields(59).Text = Format(ChkPerDuplicate(irow, dCommPer, dSingleValue), "0.00")
            dSingleValue = RSq("lcintper")
            Txtfields(61).Text = Format(ChkPerDuplicate(irow, dLCPer, dSingleValue), "0.00")
            dSingleValue = RSq("insper")
            Txtfields(57).Text = Format(ChkPerDuplicate(irow, dInsurancePer, dSingleValue), "0.000")
            dSingleValue = RSq("scper")
            Txtfields(94).Text = Format(ChkPerDuplicate(irow, dSCper, dSingleValue), "0.000")
            If RSq("WeightFlg") = "M" Then
'                    dFinGrsWgt = dFinGrsWgt + rsq("Grswgt")
'                    dFinTarWgt = dFinTarWgt + rsq("tarewt")
'                    dFinNetWgt = dFinNetWgt + rsq("Netwt")

               If ValueFLG = "S" Then
                    dFinGrsWgt = dFinGrsWgt + RSq("Grswgt")
                    dFinTarWgt = dFinTarWgt + RSq("tarewt")
                    dFinNetWgt = dFinNetWgt + RSq("Netwt")
                
                  Else
                    dFinGrsWgt = dFinGrsWgt + RSq("pgrswt")
                    dFinTarWgt = dFinTarWgt + RSq("ptarewt")
                    dFinNetWgt = dFinNetWgt + RSq("pnetwt")
                End If
            Else
                    dFinGrsWgt = dFinGrsWgt + RSq("pgrswt")
                    dFinTarWgt = dFinTarWgt + RSq("ptarewt")
                    dFinNetWgt = dFinNetWgt + RSq("pnetwt")
            End If
            
            
            
    
            
      End If
'      If taxcode = "Y" Then
            If Trim(Txtfields(83).Text) = "" Then Txtfields(83).Text = IIf(IsNull(Gtax), "", Gtax)
            If Trim(Txtfields(42).Text) = "" Then Txtfields(42).Text = IIf(IsNull(GAtax), "", GAtax)
         
             '''''''''''''''''''''''''''''''''''''''''Add by Vinoth As Per Kores Requiremant
            
            
'      Else
'            Txtfields(83).Text = ""
'      End If
      
'      adoTestRs("PJAMt").value = dAssValue
      
     
            
      Call AssignValues
     
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub

Private Sub AssignValues()

        Txtfields(48).Text = Format(dFinGrsWgt, "0.000")
        Txtfields(49).Text = Format(dFinTarWgt, "0.000")
        Txtfields(50).Text = Format(dFinNetWgt, "0.000")
        Txtfields(9).Text = Format(dSupWgt, "0.000")
        Txtfields(95).Text = Format(dSupGWt, "0.000")
        Txtfields(92).Text = Format(dSupTWt, "0.000")
        If Trim(Txtfields(83).Text) = "" Then Txtfields(83).Text = Gtax
        If Trim(Txtfields(42).Text) = "" Then Txtfields(42).Text = GAtax
        
        Txtfields(56).Text = Format(getMasterName("ST_Per", "IG_TAX", "TAx_code", Gtax), "0.00")
        Txtfields(77).Text = Format(getMasterName("ST_Per", "IG_TAX", "TAx_code", GAtax), "0.00")
        
        Txtfields(96).Text = Format(KSLRound(dSupBValue, LANDCOST_ROFF), "0.00")
        'txtfields(55).Text = Format(KSLRound(dTax, TAX_ROFF), "0.00") ''sasi 30.6.17
        
        Txtfields(55).Text = Round(val(Txtfields(118).Text) + val(Txtfields(117).Text) + val(Txtfields(116).Text), 0) 'Round(Format(dTax, "0.00"), 0)
        Txtfields(77).Text = Format(KSLRound(dAddTax, ADDTAX_ROFF), "0.00")
        Txtfields(93).Text = Format(KSLRound(dSC, SURCHARGE_ROFF), "0.00")
        Txtfields(7).Text = Format(KSLRound(dAssValue, ASSVAL_ROFF), "0.00")
        Txtfields(54).Text = Format(dCashDis, "0.00")
        Txtfields(85).Text = Format(dTradeDis, "0.00")
        Txtfields(38).Text = Format(dLryFgt, "0.00")
        Txtfields(75).Text = Format(KSLRound(DBED, BED_ROFF), "0.00")
        Txtfields(65).Text = Format(KSLRound(dCess, CESS_ROFF), "0.00")
        txtDBCRNt.Text = Format(DDbamt, "0.00")
        Txtfields(73).Text = Format(KSLRound(dEDCess, EDCESS_ROFF), "0.00")
        Txtfields(71).Text = Format(KSLRound(dHScess, HSCESS_ROFF), "0.00")
        Txtfields(51).Text = Format(KSLRound(dOtherTax, ADDTAX_ROFF), "0.00")
        Txtfields(43).Text = Format(dRlyFrg, "0.00")
        Txtfields(58).Text = Format(dInsurance, "0.00")
        Txtfields(60).Text = Format(dComm, "0.00")
        Txtfields(62).Text = Format(dLC, "0.00")
        Txtfields(63).Text = Format(dCharity, "0.00")
        Txtfields(66).Text = Format(dClearance, "0.00")
        Txtfields(64).Text = Format(dDamage, "0.00")
        Txtfields(69).Text = Format(dCustoms, "0.00")
        
        Txtfields(70).Text = Format(dDRnote, "0.00")
        Txtfields(82).Text = Format(dBrokerComm, "0.00")
        
        Txtfields(41).Text = Format(KSLRound(dOthersTaxable, ADDTAX_ROFF), "0.00")
        Txtfields(67).Text = Format(KSLRound(dOthersNonTaxable, ADDTAX_ROFF), "0.00")
        Txtfields(97).Text = Format(DSICAAmt, "0.00")
        txtAdjValue.Text = Format(dADJValue, "0.00")
        
        
        If val(Txtfields(91).Text) > 0 Then
            Txtfields(82).Text = Format(val(dAssValue) * val(Txtfields(91).Text) / 100, "#0.00")
        End If
        
        Call LANDEDCOST(dAssValue)
        Call fBillValue(dAssValue)
   
        
'        If dFinNetWgt <> 0 Then txtfields(76).Text = Format(val(txtfields(78).Text) / dFinNetWgt, "0.0000") ''sasi 30.1.18
        If dFinNetWgt <> 0 Then
         If Trim(ValueFLG) = "S" Then
            Txtfields(76).Text = Format(val(Txtfields(78).Text) / dSupWgt, "0.0000")
         Else
            Txtfields(76).Text = Format(val(Txtfields(78).Text) / dFinNetWgt, "0.0000")
         End If
        End If
        
        
        
        If UCase(CustID) = UCase("Balkrishna") Then
          Set rs = New Recordset
            rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & Txtfields(42).Text & "'", db, adOpenStatic
            If rs.RecordCount > 0 Then
            
                Txtfields(79).Text = Format(rs("ST_PER"), "0.00")
               ' Txtfields(42).Text = Rs("TAX_CODE")
           
                Call AddTaxCalc
                Txtfields(35).Text = val(Txtfields(35).Text) + val(Txtfields(77).Text)
             End If
        End If
End Sub
Public Function ChkPerDuplicate(Count As Integer, totalvalue As Double, ByRef SingleValue As Double) As Double
    If val(totalvalue / Count) = SingleValue Then
        ChkPerDuplicate = SingleValue
    Else
        ChkPerDuplicate = 0
    End If
End Function
Private Sub LotCalculation()
Dim assper As Double
Dim Assvalue As Double
Dim CashDisamt As Double
Dim TradeDisAmt As Double
Dim Bed As Double
Dim Aed As Double
Dim SED As Double
Dim cess As Double
Dim Vatamt As Double
Dim CStamt As Double
Dim Othtax As Double
Dim Taxamt As Double
Dim Scamt As Double
Dim Lfrt As Double
Dim RlFrt As Double
Dim Insamt As Double
Dim Comamt As Double
Dim LcInt As Double
Dim DBamt As Double
Dim Charity As Double
Dim Damage As Double
Dim CLearance As Double
Dim Others As Double
Dim Brkcom As Double
Dim Cusdutyamt As Double
Dim Totland As Double
Dim sumland As Double
Dim schrg As Double
Dim Dutper As Double
Dim OtherTaxable As Double
Dim ratekg As Double
Dutper = 0
Dutper = (100 - val(Txtfields(109).Text))
totTaxamt = 0
CGSTAMT = 0
SGSTAMT = 0
IGSTAMT = 0

For Lk = 1 To spdVar.MaxRows
Dim totcgstamt, totsgstamt, totigstamt As Double
'Assessable Value
    Assvalue = val(GetText(spdVar, Ipjamt, Lk))

' Cash Discount
    If val(GetText(spdVar, Icashdisamt, Lk)) <> 0 And val(GetText(spdVar, Icashdisper, Lk)) <> 0 Then
        CashDisamt = Assvalue * (val(GetText(spdVar, Icashdisper, Lk)) / 100)
    Else
        CashDisamt = val(GetText(spdVar, Icashdisamt, Lk))
    End If
    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
    
'Trade Discount
    If val(GetText(spdVar, Itradedisamt, Lk)) <> 0 And val(GetText(spdVar, Itradedisper, Lk)) <> 0 Then
        TradeDisAmt = Assvalue * (val(GetText(spdVar, Itradedisper, Lk)) / 100)
    Else
        TradeDisAmt = val(GetText(spdVar, Itradedisamt, Lk))
    End If
    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
    
' Lorry Freight
    If val(GetText(spdVar, IFrtamt, Lk)) = 0 Then
        Lfrt = Assvalue * (val(GetText(spdVar, IFrtper, Lk)) / 100)
    Else
        Lfrt = val(GetText(spdVar, IFrtamt, Lk))
    End If
    spdVar.SetText IFrtamt, Lk, CStr(Lfrt)
    
' Railway Freight
    If val(GetText(spdVar, IRlyfrtamt, Lk)) = 0 Then
        RlFrt = Assvalue * (val(GetText(spdVar, IRlyfrtper, Lk)) / 100)
    Else
        RlFrt = val(GetText(spdVar, IRlyfrtamt, Lk))
    End If
    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
    
' Commission
    If val(GetText(spdVar, ICommAMT, Lk)) = 0 Then
        Comamt = Assvalue * (val(GetText(spdVar, ICommper, Lk)) / 100)
    Else
        Comamt = val(GetText(spdVar, ICommAMT, Lk))
    End If
    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
    
' broker Commission
    If val(Txtfields(91).Text) > 0 Then
        BrkComamt = Assvalue * (val(Txtfields(91).Text) / 100)
        Txtfields(82).Text = Format(BrkComamt, "#0.00")
    Else
        BrkComamt = 0
    End If
    
    
'BED
    If val(GetText(spdVar, IBedamt, Lk)) = 0 Then
        If Left(delivery, 1) = "F" Then
            Bed = (Assvalue - (CashDisamt + TradeDisAmt + Lfrt)) * val(GetText(spdVar, IBedper, Lk)) / 100
        Else
            Bed = (Assvalue - (CashDisamt + TradeDisAmt)) * val(GetText(spdVar, IBedper, Lk)) / 100
        End If
    Else
        Bed = val(GetText(spdVar, IBedamt, Lk))
    End If
    Bed = KSLRound(val(Bed), BED_ROFF)
    spdVar.SetText IBedamt, Lk, CStr(Bed)
    
'ED CESS
    If val(GetText(spdVar, IEdamt, Lk)) = 0 Then
        SED = Bed * (val(GetText(spdVar, IEdper, Lk)) / 100)
    Else
        SED = val(GetText(spdVar, IEdamt, Lk))
    End If
    SED = KSLRound(val(SED), EDCESS_ROFF)
    spdVar.SetText IEdamt, Lk, CStr(SED)
    
'HS CESS
    If val(GetText(spdVar, IHscessamt, Lk)) = 0 Then
        Aed = Bed * (val(GetText(spdVar, IHscessper, Lk)) / 100)
    Else
        Aed = val(GetText(spdVar, IHscessamt, Lk))
    End If
    Aed = KSLRound(val(Aed), AED_ROFF)
    spdVar.SetText IHscessamt, Lk, CStr(Aed)
    
' CESS
    If val(GetText(spdVar, Icessamt, Lk)) = 0 Then
        If UCase(delivery) = "F" Then
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt)) + val(Lfrt)) / 100, 2)
        Else
            cess = Round(val(GetText(spdVar, Icessper, Lk)) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt))) / 100, 2)
        End If
    Else
        cess = val(GetText(spdVar, Icessamt, Lk))
    End If
    cess = KSLRound(val(cess), CESS_ROFF)
    spdVar.SetText Icessamt, Lk, CStr(cess)
    
' Tax Calc
'    If val(GetText(spdVar, ITaxamt, Lk)) = 0 Then
        Set rs = New Recordset
        rs.Open "Select * from rM_param", db, adOpenStatic
        If rs.RecordCount > 0 Then
            If optBefore = True Then
                If rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                    Else
                        'Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                    End If
                Else
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                    Else
                        'Vatamt = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                        
                    End If
                End If
            Else
                If rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                        Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                        
                    Else
                        Vatamt = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound(((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                    End If
                Else
                    If UCase(delivery) = "F" Then
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                         CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                        Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                        
                    Else
                        'Vatamt = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ITaxper, Lk)) / 100, TAX_ROFF)
                        CGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ICGSTPER, Lk)) / 100, TAX_ROFF)
                        SGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, ISGSTPER, Lk)) / 100, TAX_ROFF)
                        IGSTAMT = KSLRound((Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IIGSTPER, Lk)) / 100, TAX_ROFF)
                         Vatamt = val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT)
                        totcgstamt = totcgstamt + val(CGSTAMT)
                        totsgstamt = totsgstamt + val(SGSTAMT)
                        totigstamt = totigstamt + val(IGSTAMT)
                    End If
                End If
            End If
        End If
'    Else
'        Vatamt = val(GetText(spdVar, ITaxamt, Lk))
'    End If
    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
    
    spdVar.SetText ICGSTAMT, Lk, CStr(CGSTAMT)
    spdVar.SetText ISGSTAMT, Lk, CStr(SGSTAMT)
    spdVar.SetText IIGSTAMT, Lk, CStr(IGSTAMT)
    totTaxamt = totTaxamt + Vatamt
'Surcharge
    Scamt = Vatamt * (val(GetText(spdVar, ISCper, Lk)) / 100)
    Scamt = KSLRound(val(Scamt), SURCHARGE_ROFF)
    
    spdVar.SetText ISCamt, Lk, CStr(Scamt)
    
'Additional Tax
    Set rs = New Recordset
    rs.Open "select AddtaxRequired from rm_param", db, adOpenStatic
    If rs(0) = "Y" Then
'        If val(GetText(spdVar, IATaxamt, Lk)) = 0 Then
            Set rs = New Recordset
            rs.Open "Select * from rM_param", db, adOpenStatic
            If rs.RecordCount > 0 Then
                If optBefore = True Then
                    If rs("commtax") = "Y" Then
                        If UCase(delivery) = "F" Then
                              AVatamt = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                     
   
                        Else
                                AVatamt = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                          
                        End If
                    Else
                        If UCase(delivery) = "F" Then
                            AVatamt = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                            
                        Else
                           AVatamt = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        

                        End If
                    End If
                Else
                    If rs("commtax") = "Y" Then
                        If UCase(delivery) = "F" Then
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    Else
                        If UCase(delivery) = "F" Then
                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        Else
                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IATaxper, Lk)) / 100
                        End If
                    End If
                End If
            End If
'        Else
'            AVatamt = val(GetText(spdVar, IATaxamt, Lk))
'        End If
    Else
        AVatamt = 0
    End If
    AVatamt = KSLRound(val(AVatamt), ADDTAX_ROFF)
    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
'Other Tax
    If val(GetText(spdVar, IothTaxamt, Lk)) = 0 Then
        Set rs = New Recordset
        rs.Open "Select * from rM_param", db, adOpenStatic
        If rs.RecordCount > 0 Then
            If optBefore = True Then
                If rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                    Othtax = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                Else
                    If UCase(delivery) = "F" Then
                    Othtax = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                End If
            Else
                If rs("commtax") = "Y" Then
                    If UCase(delivery) = "F" Then
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                Else
                    If UCase(delivery) = "F" Then
                    Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    Else
                    Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(GetText(spdVar, IOthtaxPer, Lk)) / 100
                    End If
                End If
            End If
        End If
    Else
        Othtax = val(GetText(spdVar, IothTaxamt, Lk))
    End If
    Othtax = KSLRound(val(Othtax), TAX_ROFF)
    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
Taxamt = val(Vatamt + CStamt + Othtax)

'Insurance

    If val(GetText(spdVar, IInsamt, Lk)) = 0 Then
        Dim rsPara As New Recordset
        rsPara.Open "Select InsCalAssvalflg from rM_param", db, adOpenStatic
        If (rsPara.BOF And rsPara.EOF) = False Then
            If rsPara("InsCalAssvalflg") = "N" Then
                If UCase(delivery) = "F" Then
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt) * val(GetText(spdVar, IInsper, Lk)) / 100
                Else
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt) * val(GetText(spdVar, IInsper, Lk)) / 100
                End If
            Else
                Insamt = Assvalue * (val(GetText(spdVar, IInsper, Lk)) / 100)
            End If
        End If
        rsPara.Close
        Set rsPara = Nothing
    Else
        Insamt = val(GetText(spdVar, IInsamt, Lk))
    End If
    Insamt = KSLRound(val(Insamt), TAX_ROFF)
    spdVar.SetText IInsamt, Lk, CStr(Insamt)
    
    
'LC Interest
    If val(GetText(spdVar, ILCamt, Lk)) = 0 Then
        If UCase(delivery) = "F" Then
            LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
        Else
            LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Insamt + Comamt) * val(GetText(spdVar, ILCper, Lk)) / 100
        End If
    Else
        LcInt = val(GetText(spdVar, ILCamt, Lk))
    End If
    LcInt = KSLRound(LcInt, TAX_ROFF)
    spdVar.SetText ILCamt, Lk, CStr(LcInt)
    
    
    DBamt = val(Txtfields(70).Text) * val(assper) / 100
    
    spdVar.SetText IDbamt, Lk, CStr(DBamt)
    
    Charity = val(GetText(spdVar, Icharity, Lk))
    spdVar.SetText Icharity, Lk, CStr(Charity)
    
    Damage = val(Txtfields(64).Text) * val(assper) / 100
    spdVar.SetText iDamage, Lk, CStr(Damage)
    
    CLearance = val(Txtfields(66).Text) * val(assper) / 100
    spdVar.SetText Iclear, Lk, CStr(CLearance)
    
    Others = val(GetText(spdVar, IOthers, Lk))
    spdVar.SetText IOthers, Lk, CStr(Others)
    
    OtherTaxable = val(GetText(spdVar, IOthTaxableAmt, Lk))
    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
    
    Brkcom = val(Txtfields(82).Text) * val(assper) / 100
'    spdVar.SetText Ibrkcom, Lk, CStr(Brkcom)
    
    Cusdutyamt = val(GetText(spdVar, IcustomDuty, Lk))
    spdVar.SetText IcustomDuty, Lk, CStr(Cusdutyamt)



    If optDCNo = True Then
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
        Else
            Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
        End If
    Else
        If UCase(delivery) = "S" Then
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
        Else
            Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
        End If
    End If
     spdVar.SetText IPremAmt, Lk, CStr(Totland)
'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
    Set rs = New Recordset
    rs.Open "Select isnull(ItcTaxStatus,'N') as TaxStatus from ig_tax where tax_code ='" & Trim(GetText(spdVar, ITaxCode, Lk)) & "'", db, adOpenStatic
    If rs.EOF = False Then
        If rs(0) = "Y" Then
        Totland = Totland - Vatamt
        End If
    Else
        Totland = Totland - Vatamt
    End If
''Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + Cusdutyamt + packforamt + marketcomamt
    spdVar.SetText ILandedcost, Lk, CStr(Totland)
   
    ratekg = val(GetText(spdVar, ILandedcost, Lk)) / val(GetText(spdVar, IAcWgt, Lk))
    spdVar.SetText IRatekg, Lk, CStr(ratekg)
Next

Txtfields(55).Text = totTaxamt

Txtfields(118).Text = totcgstamt
Txtfields(117).Text = totsgstamt
Txtfields(116).Text = totigstamt
End Sub
Public Function LotValueAssign(txtValue As Double, iColID As Integer) As Double
Dim iCount As Integer
'Precentage Field Value Assign

    For iCount = 1 To spdVar.MaxRows
        spdVar.SetText iColID, iCount, CStr(txtValue)
    Next
End Function
Public Function LotAmountAssign(txtValue As Double, iColID As Integer, totalRows As Integer) As Double
Dim iCount As Integer
Dim dValue As Double
Dim dRoundValue As Double
'Amount Field Value Assign
    dValue = val(txtValue) / totalRows
    
    For iCount = 1 To spdVar.MaxRows
        
        If iCount = totalRows Then dValue = txtValue - dRoundValue
        dRoundValue = Round(dRoundValue + dValue, TAX_ROFF)
        spdVar.SetText iColID, iCount, CStr(dValue)
    Next
End Function

Public Function LotStringAssign(txtValue As String, iColID As Integer) As String
Dim iCount As Integer
'Tax Code Assign

    For iCount = 1 To spdVar.MaxRows
        spdVar.SetText iColID, iCount, CStr(txtValue)
    Next
End Function
Private Sub SaveFunction()
Dim strQ1 As String
Dim iC As Integer

For iC = 1 To spdVar.MaxRows
    Set rs = New Recordset
    rs.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(GetText(spdVar, ILotdt, iC), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(GetText(spdVar, ILotdt, iC), "yyyy-MM-DD") & "'", db, adOpenStatic
    If rs.EOF = False Then
        sLotYear = Year(rs("AYFDATE"))
    Else
        sLotYear = Year(GetText(spdVar, ILotdt, iC))
    End If
    
    strQ1 = ""
    strQ1 = "Update Rm_Lot Set tax_per=" & val(GetText(spdVar, ITaxper, iC)) & ",vatper=" & val(GetText(spdVar, ITaxper, iC)) & ",AdjValue =isnull(AdjValue,0)+ " & val(GetText(spdVar, Iround, iC)) & ",vatamt=isnull(vatamt,0)+ " & val(GetText(spdVar, ITaxamt, iC)) & ", scper=" & val(GetText(spdVar, ISCper, iC)) & ", scamt=isnull(scamt,0)+" & val(GetText(spdVar, ISCamt, iC)) & "" & _
            "',fbillno = '" & Trim(Txtfields(6).Text) & "', fbillDT = '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "', FBillvalue = FBillvalue + " & val(Txtfields(47).Text) & _
            " Where Lotno =" & GetText(spdVar, ILotNo, iC) & " and LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
                    
    'DB.Execute strQ1
        
 If Opt <> "mod" Then
   
'    If val(txtDBCRNt.Text) <> 0 Then
'        Set rsb = New Recordset
'        rsb.Open "select * from rm_lot where  LOTYEAR='" & Year(yfdate) & "' AND LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  Lotno =" & GetText(spdVar, ILotNo, iC) & " and Divcode ='" & Divcode & "' and  OPFLG ='N' and (dbno is null ) and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB, adOpenStatic
'        If rsb.RecordCount > 0 Then
'            Set rsa = New Recordset
'            'rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where LOTYEAR='" & Year(yfdate) & "' AND Divcode ='" & Divcode & "' and  OPFLG ='N' and CatCd = '" & txtfields(0) & "' and (dbamt is not null and dbamt<>0) and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "'", DB
'            rsa.Open "select isnull(max(dbno),0)+1 from rm_lot where  Divcode ='" & Divcode & "' and  OPFLG ='N' and (dbno is not null) and tpjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ", DB
'            If rsa.RecordCount > 0 Then
'            DB.Execute "Update Rm_Lot Set dbno = " & rsa(0) & " Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
'                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
'                   "Divcode ='" & Divcode & "'  and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
'            End If
'
'        End If
'    Else
'        DB.Execute "Update Rm_Lot Set dbno = null  Where  Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
'                   "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
'                   "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
'    End If
 End If
    
        Assvalue = (val(GetText(spdVar, Ipjamt, iC))) ' + val(txtAdjValue.Text)) - val(txtFields(34).Text)

        Set RS1 = New Recordset
        RS1.Open "SELECT STATE_CODE FROM FA_SLMAS WHERE SLCODE='" & Txtfields(81).Text & "'", db, adOpenStatic
        
        Set rs2 = New Recordset
        rs2.Open "SELECT STATE_CODE FROM PP_DIVMAS WHERE divcode='" & Divcode & "'", db, adOpenStatic
        If RS1("STATE_CODE") = rs2("STATE_CODE") Then
            db.Execute "UPDATE RM_LOT SET vcatcd= 'R' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and Divcode ='" & Divcode & "' and  " & _
                    "  OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        Else
            db.Execute "UPDATE RM_LOT SET vcatcd= 'O' WHERE Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                    "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                    "Divcode ='" & Divcode & "' and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"
        End If

        sCode = IIf(IsNull(GetText(spdVar, ITaxCode, iC)) = True, " ", Trim(GetText(spdVar, ITaxCode, iC)))
        

                 
        Set rs = New Recordset
        rs.Open "select isnull(ITCTAXSTATUS,'N') as Status from ig_tax where Tax_code='" & sCode & "'", db, adOpenStatic
        If rs.EOF = False Then
            If rs(0) = "N" Then
                dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC))
            Else
                dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC)) + val(GetText(spdVar, ITaxamt, iC))
            End If
                
        Else
            dLANDCOSTWITHTAX = val(GetText(spdVar, ILandedcost, iC))
        End If

        If optAfter = True Then Sflg = "Y" Else Sflg = "N"
        

                
        If opt_c = True Then Sflg = "Y" Else Sflg = "N"
        
        sCode = ""
        
        strSQL = ""
        strSQL = "UPDATE RM_LOT SET  premAmt =" & val(GetText(spdVar, IPremAmt, iC)) & ", ASSVALUE=isnull(ASSVALUE,0)+ " & Assvalue & ", IGSTAMT=isnull(IGSTAMT,0)+" & val(GetText(spdVar, IIGSTAMT, iC)) & ",sgstamt=isnull(sgstamt,0)+" & val(GetText(spdVar, ISGSTAMT, iC)) & ",cgstamt=isnull(cgstamt,0)+" & val(GetText(spdVar, ICGSTAMT, iC)) & ",FBILLWT = " & val(GetText(spdVar, IAcWgt, iC)) & ", FBILLVALUE= isnull(FBILLVALUE,0)+" & fBillValueLot(iC) & _
                 " ,LANDCOSTWITHTAX =isnull(LANDCOSTWITHTAX,0)+ " & val(dLANDCOSTWITHTAX) & " ,TOTLANDCOST = isnull(TOTLANDCOST,0) + " & val(GetText(spdVar, ILandedcost, iC)) & ", " & _
                 " RATEKG= RATEKG+ " & val(GetText(spdVar, IRatekg, iC)) & " ,Billno= '" & Trim(Txtfields(6).Text) & "',BillDt= '" & Format(MaskEdBox1(2).Text, "YYYY-MM-DD") & "' " & _
                 " , VATAMT =isnull(vatamt,0)+ " & val(GetText(spdVar, ITaxamt, iC)) & " WHERE " & _
                 " Lotno =" & GetText(spdVar, ILotNo, iC) & " and " & _
                 "LotDt ='" & Format(GetText(spdVar, ILotdt, iC), "yyyy/mm/dd") & "' and  " & _
                 "Divcode ='" & Divcode & "'and OPFLG ='N' and varcode = '" & GetText(spdVar, Ivarcode, iC) & "' and Lotyear='" & sLotYear & "'"

        db.Execute strSQL
Next
End Sub
Private Function fBillValueLot(Row As Integer) As Double
    fBillValueLot = 0
    
    Set rs = New Recordset
    rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", db, adOpenStatic
    
    If rs(0) = "Y" Then
        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ITaxamt, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, ICommAMT, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
    ElseIf rs(0) <> "Y" Then
        fBillValueLot = Format(val(GetText(spdVar, Ipjamt, Row)) + val(GetText(spdVar, IothTaxamt, Row)) + val(GetText(spdVar, IBedamt, Row)) + val(GetText(spdVar, IEdamt, Row)) + val(GetText(spdVar, IHscessamt, Row)) + val(GetText(spdVar, Icessamt, Row)) + val(GetText(spdVar, Icharity, Row)) + val(GetText(spdVar, IOthers, Row)) + val(GetText(spdVar, IcustomDuty, Row)) + val(GetText(spdVar, ITaxamt, Row)) + val(GetText(spdVar, IOthTaxableAmt, Row)) + val(GetText(spdVar, IInsamt, Row)) + val(GetText(spdVar, Iround, Row)) - (val(GetText(spdVar, Icashdisamt, Row)) + val(GetText(spdVar, Itradedisamt, Row))), "0.00")
    End If
    
End Function

Private Sub fbillamtcheck()
   On Error GoTo fbillamtcheck_Error
 Set rs = New Recordset
    rs.Open "Select CommInBillValue,ClearInBillFlg From RM_PARAM", db, adOpenStatic
    If rs(0) = "Y" And rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(Txtfields(7)) + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
    ElseIf rs(0) <> "Y" And rs(1) = "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance                                      cash discount         Trade Discount
        mfbillamt = Format(val(Txtfields(7)) + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(66)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
    ElseIf rs(0) = "Y" And rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)  Insurance            Commission                                    cash discount         Trade Discount
        mfbillamt = Format(val(Txtfields(7)) + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(Txtfields(60)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
    ElseIf rs(0) <> "Y" And rs(1) <> "Y" Then
        '                  Assessable value    other Tax             BED                  EDCESS(SED)          AED                 CESS                  Charity             Damage               Clearance            others(non taxable)  Customs Duty           Vat                 Add tax amt         CST                   other(taxable amt)                            cash discount         Trade Discount
        mfbillamt = Format(val(Txtfields(7)) + val(Txtfields(51)) + val(Txtfields(75)) + val(Txtfields(73)) + val(Txtfields(71)) + val(Txtfields(65)) + val(Txtfields(63)) + val(Txtfields(64)) + val(Txtfields(67)) + val(Txtfields(69)) + val(Txtfields(55)) + val(Txtfields(77)) + val(Txtfields(87)) + val(Txtfields(41)) + val(Txtfields(58)) + val(txtAdjValue.Text) - (val(Txtfields(54)) + val(Txtfields(85))), "0.00")
    End If

   On Error GoTo 0
   Exit Sub

fbillamtcheck_Error:

    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure fbillamtcheck of Form frmPurchaseBillMultiple"
End Sub

Sub FORAmtCalculationSCM()
If CustID = "COTTON" Then
    If delivery = "F" Then
        dAssValue = 0
        For RW = 1 To spdVar.MaxRows
            Set LotRs = New Recordset
            LotRs.Open "Select Rateunit,NetWt,RateCy From Rm_Lot Where Divcode ='" & Divcode & "' and LotNo =" & GetText(spdVar, ILotNo, RW) & " And LotDt ='" & Format(GetText(spdVar, ILotdt, RW), "yyyy-mm-dd") & "' and Lotyear = '" & Year(yfdate) & "'", db, adOpenDynamic, adLockReadOnly
            If Not LotRs.EOF Then
                If LotRs("RateUnit") = "CANDY" Then
                    Set TmpRs = New Recordset
                    TmpRs.Open "Select Value From RM_RATEUNIT where UnitName = '" & LotRs("RATEUNIT") & "'", db, adOpenDynamic, adLockReadOnly
                    If Not TmpRs.EOF Then
                        NoofQuantity = LotRs("NetWt") / TmpRs("Value")
                    End If
                End If
                FVatPer = val(Txtfields(56).Text)
                FBEDPER = val(Txtfields(88).Text)
                If FBEDPER > 0 Then
                    FEDCESSPER = (val(Txtfields(74).Text) / FBEDPER)
                    FHSCESSPER = (val(Txtfields(72).Text) / FBEDPER)
                End If
                TAssValue = NoofQuantity * (LotRs("RateCy") * 100) / (100 + FVatPer + FBEDPER + FEDCESSPER + FHSCESSPER)
                dAssValue = dAssValue + TAssValue
            End If
        Next
        Txtfields(7).Text = dAssValue
        Call TaxCalc
        Txtfields(75).Text = Format(dAssValue * val(Txtfields(88).Text) / 100, "##0.00")
        If val(Txtfields(75).Text) > 0 Then
            Txtfields(73).Text = Format(val(Txtfields(75).Text) * val(Txtfields(74).Text) / 100, "##0.00")
            Txtfields(71).Text = Format(val(Txtfields(75).Text) * val(Txtfields(72).Text) / 100, "##0.00")
        End If
        Call LotValueAssign(val(Txtfields(55).Text), ITaxamt)
        Call LotValueAssign(val(Txtfields(35).Text), ILandedcost)
        Call LotValueAssign(val(Txtfields(7).Text), Ipjamt)
    End If
End If
End Sub



