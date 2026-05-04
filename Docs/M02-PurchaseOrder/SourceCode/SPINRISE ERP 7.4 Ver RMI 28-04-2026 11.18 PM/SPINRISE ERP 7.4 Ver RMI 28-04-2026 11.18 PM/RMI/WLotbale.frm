VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form WLotbale 
   Caption         =   "Lot Bale Details"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11220
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame24 
      Height          =   525
      Left            =   4590
      TabIndex        =   357
      Top             =   540
      Visible         =   0   'False
      Width           =   6075
      Begin VB.CommandButton Command9 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   345
         Left            =   4635
         TabIndex        =   361
         Top             =   135
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.OptionButton optShiva 
         Caption         =   "Shiva"
         Height          =   225
         Left            =   3480
         TabIndex        =   359
         Top             =   195
         Width           =   1080
      End
      Begin VB.OptionButton optBannari 
         Caption         =   "Bannari"
         Height          =   255
         Left            =   2220
         TabIndex        =   358
         Top             =   180
         Value           =   -1  'True
         Width           =   1260
      End
      Begin VB.Label Label118 
         Caption         =   "Report Option"
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
         Left            =   210
         TabIndex        =   360
         Top             =   180
         Width           =   1425
      End
   End
   Begin VB.Frame Frame13 
      Caption         =   "Frame13"
      Height          =   7710
      Left            =   13230
      TabIndex        =   142
      Top             =   255
      Visible         =   0   'False
      Width           =   10380
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   31
         Left            =   2400
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   226
         TabStop         =   0   'False
         Top             =   3615
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   33
         Left            =   8175
         MaxLength       =   5
         TabIndex        =   225
         TabStop         =   0   'False
         Top             =   3615
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   34
         Left            =   10905
         MaxLength       =   5
         TabIndex        =   222
         Top             =   3345
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   36
         Left            =   3900
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   221
         Top             =   3345
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "godown"
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   20
         Left            =   1455
         MaxLength       =   2
         TabIndex        =   219
         Top             =   2040
         Visible         =   0   'False
         Width           =   1185
      End
      Begin VB.TextBox Txtfields 
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   86
         Left            =   2670
         MaxLength       =   9
         TabIndex        =   217
         Top             =   6120
         Width           =   480
      End
      Begin VB.TextBox Txtfields 
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   87
         Left            =   3150
         MaxLength       =   9
         TabIndex        =   216
         Top             =   6120
         Width           =   780
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   28
         Left            =   1470
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   209
         TabStop         =   0   'False
         Top             =   1290
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   76
         Left            =   6465
         MaxLength       =   100
         TabIndex        =   208
         TabStop         =   0   'False
         Top             =   1650
         Width           =   885
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   3
         Left            =   7500
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   207
         TabStop         =   0   'False
         Text            =   " "
         Top             =   1650
         Width           =   2040
      End
      Begin VB.TextBox Text9 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   360
         Left            =   6915
         Locked          =   -1  'True
         TabIndex        =   193
         TabStop         =   0   'False
         Top             =   5295
         Width           =   1110
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   0
         Left            =   1860
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   192
         TabStop         =   0   'False
         Top             =   4845
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   1
         Left            =   1860
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   191
         TabStop         =   0   'False
         Top             =   4380
         Width           =   1425
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   23
         Left            =   1845
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   190
         TabStop         =   0   'False
         Top             =   5280
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   24
         Left            =   4470
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   189
         TabStop         =   0   'False
         Top             =   5310
         Width           =   1230
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   25
         Left            =   8970
         Locked          =   -1  'True
         MaxLength       =   11
         TabIndex        =   188
         TabStop         =   0   'False
         Top             =   5325
         Width           =   1050
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   22
         Left            =   4455
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   187
         TabStop         =   0   'False
         Top             =   3855
         Width           =   1440
      End
      Begin VB.ComboBox Combo1 
         BackColor       =   &H00FFFFFF&
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   360
         ItemData        =   "RMILotbale.frx":0000
         Left            =   1860
         List            =   "RMILotbale.frx":000D
         Locked          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   186
         TabStop         =   0   'False
         Top             =   3840
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   80
         Left            =   6915
         Locked          =   -1  'True
         MaxLength       =   11
         TabIndex        =   185
         TabStop         =   0   'False
         Top             =   5730
         Width           =   1110
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   81
         Left            =   1845
         MaxLength       =   11
         TabIndex        =   184
         Top             =   5700
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   82
         Left            =   4455
         MaxLength       =   11
         TabIndex        =   183
         Top             =   5730
         Width           =   1245
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   94
         Left            =   4455
         MaxLength       =   10
         TabIndex        =   182
         Top             =   4365
         Width           =   1440
      End
      Begin VB.TextBox Txtfields 
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
         Height          =   330
         Index           =   78
         Left            =   1095
         MaxLength       =   40
         TabIndex        =   181
         Top             =   3330
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.TextBox Text3 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   360
         Left            =   1080
         MaxLength       =   5
         TabIndex        =   179
         Top             =   2940
         Width           =   825
      End
      Begin VB.TextBox Txtfields 
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
         Height          =   330
         Index           =   88
         Left            =   540
         MaxLength       =   40
         TabIndex        =   178
         Top             =   1635
         Visible         =   0   'False
         Width           =   660
      End
      Begin VB.TextBox TXTRATEUNIT 
         BackColor       =   &H00E0E0E0&
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   3240
         TabIndex        =   176
         Top             =   2865
         Visible         =   0   'False
         Width           =   2415
      End
      Begin VB.ComboBox Combo2 
         Enabled         =   0   'False
         Height          =   315
         ItemData        =   "RMILotbale.frx":0023
         Left            =   2640
         List            =   "RMILotbale.frx":0036
         Style           =   2  'Dropdown List
         TabIndex        =   175
         Top             =   2895
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.ComboBox Combo3 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "RMILotbale.frx":005D
         Left            =   1275
         List            =   "RMILotbale.frx":006D
         TabIndex        =   166
         TabStop         =   0   'False
         Top             =   2445
         Width           =   1485
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   40
         Left            =   6825
         MaxLength       =   25
         MultiLine       =   -1  'True
         TabIndex        =   165
         Top             =   2445
         Width           =   2055
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   41
         Left            =   4155
         MaxLength       =   40
         TabIndex        =   164
         Top             =   2430
         Width           =   1815
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   72
         Left            =   6825
         MaxLength       =   15
         TabIndex        =   163
         Top             =   2070
         Width           =   2055
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   73
         Left            =   4155
         MaxLength       =   20
         TabIndex        =   162
         Top             =   2055
         Width           =   1815
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   74
         Left            =   6045
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   161
         TabStop         =   0   'False
         Top             =   945
         Width           =   3375
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   92
         Left            =   1290
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   160
         TabStop         =   0   'False
         Top             =   1695
         Width           =   3615
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   93
         Left            =   6045
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   159
         TabStop         =   0   'False
         Top             =   1290
         Width           =   3375
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   29
         Left            =   1425
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   147
         Top             =   195
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   89
         Left            =   4335
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   146
         TabStop         =   0   'False
         Top             =   465
         Width           =   1380
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   90
         Left            =   1410
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   145
         TabStop         =   0   'False
         Top             =   930
         Width           =   1455
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "contno"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   91
         Left            =   6600
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   144
         TabStop         =   0   'False
         Top             =   975
         Width           =   420
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   95
         Left            =   4305
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   143
         TabStop         =   0   'False
         Top             =   930
         Width           =   1455
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   315
         Index           =   1
         Left            =   1425
         TabIndex        =   148
         Top             =   585
         Width           =   1455
         _ExtentX        =   2566
         _ExtentY        =   556
         _Version        =   393216
         BackColor       =   16777215
         ForeColor       =   0
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
         DataField       =   "arrdt"
         Height          =   315
         Index           =   3
         Left            =   3990
         TabIndex        =   210
         TabStop         =   0   'False
         Top             =   1275
         Width           =   1125
         _ExtentX        =   1984
         _ExtentY        =   556
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
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   330
         Left            =   4035
         TabIndex        =   211
         Top             =   1275
         Width           =   1320
         _ExtentX        =   2328
         _ExtentY        =   582
         _Version        =   393216
         CustomFormat    =   "dd/mm/yyyy"
         Format          =   80150529
         CurrentDate     =   36831
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "Lot No."
         Height          =   195
         Index           =   1
         Left            =   1080
         TabIndex        =   215
         Top             =   3690
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Index           =   1
         Left            =   6900
         TabIndex        =   227
         Top             =   3690
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Index           =   2
         Left            =   9660
         TabIndex        =   224
         Top             =   3420
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.Label Label16 
         AutoSize        =   -1  'True
         Caption         =   "Lot No."
         Height          =   195
         Index           =   2
         Left            =   2610
         TabIndex        =   223
         Top             =   3420
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Godown"
         Height          =   195
         Left            =   0
         TabIndex        =   220
         Top             =   2115
         Visible         =   0   'False
         Width           =   600
      End
      Begin VB.Label Label92 
         AutoSize        =   -1  'True
         Caption         =   "CST"
         Height          =   195
         Left            =   1350
         TabIndex        =   218
         Top             =   6195
         Width           =   315
      End
      Begin VB.Label Label58 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot Date"
         Height          =   195
         Left            =   3015
         TabIndex        =   214
         Top             =   1350
         Width           =   885
      End
      Begin VB.Label Label59 
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot Number"
         Height          =   195
         Left            =   0
         TabIndex        =   213
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label74 
         Caption         =   "Category"
         Height          =   255
         Left            =   5700
         TabIndex        =   212
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Moisture Wt"
         Height          =   255
         Left            =   5865
         TabIndex        =   206
         Top             =   5355
         Width           =   960
      End
      Begin VB.Label Label70 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         Height          =   195
         Left            =   450
         TabIndex        =   205
         Top             =   4905
         Width           =   930
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Index           =   0
         Left            =   3435
         TabIndex        =   204
         Top             =   3915
         Width           =   585
      End
      Begin VB.Label Label71 
         AutoSize        =   -1  'True
         Caption         =   "Tare Weight"
         Height          =   195
         Left            =   3435
         TabIndex        =   203
         Top             =   5370
         Width           =   885
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "GrossWeight"
         Height          =   195
         Index           =   0
         Left            =   450
         TabIndex        =   202
         Top             =   5325
         Width           =   915
      End
      Begin VB.Label Label72 
         AutoSize        =   -1  'True
         Caption         =   "Nett Weight"
         Height          =   195
         Left            =   8085
         TabIndex        =   201
         Top             =   5355
         Width           =   855
      End
      Begin VB.Label Label73 
         AutoSize        =   -1  'True
         Caption         =   "Rate/"
         Height          =   195
         Left            =   450
         TabIndex        =   200
         Top             =   4380
         Width           =   465
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Unit"
         Height          =   195
         Index           =   1
         Left            =   465
         TabIndex        =   199
         Top             =   3900
         Width           =   285
      End
      Begin VB.Label Label79 
         AutoSize        =   -1  'True
         Caption         =   "Party Net wt."
         Height          =   195
         Left            =   5880
         TabIndex        =   198
         Top             =   5790
         Width           =   915
      End
      Begin VB.Label Label80 
         AutoSize        =   -1  'True
         Caption         =   "Party Gross"
         Height          =   195
         Left            =   450
         TabIndex        =   197
         Top             =   5745
         Width           =   810
      End
      Begin VB.Label Label81 
         AutoSize        =   -1  'True
         Caption         =   "Party Tare Wt."
         Height          =   195
         Left            =   3435
         TabIndex        =   196
         Top             =   5760
         Width           =   1035
      End
      Begin VB.Label Label93 
         AutoSize        =   -1  'True
         Caption         =   "Rebate"
         Height          =   195
         Left            =   3435
         TabIndex        =   195
         Top             =   4425
         Width           =   525
      End
      Begin VB.Label Label95 
         AutoSize        =   -1  'True
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   930
         TabIndex        =   194
         Top             =   4395
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Moisture %"
         Height          =   255
         Left            =   90
         TabIndex        =   180
         Top             =   3000
         Width           =   885
      End
      Begin VB.Label Label75 
         AutoSize        =   -1  'True
         Caption         =   "Delivery"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1680
         TabIndex        =   177
         Top             =   2895
         Width           =   750
      End
      Begin VB.Label Label17 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "State"
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
         Height          =   255
         Left            =   4995
         TabIndex        =   174
         Top             =   1350
         Width           =   1095
      End
      Begin VB.Label Label18 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Station"
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
         Height          =   255
         Left            =   75
         TabIndex        =   173
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label64 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Mixing Group"
         Enabled         =   0   'False
         Height          =   195
         Left            =   4980
         TabIndex        =   172
         Top             =   1020
         Width           =   930
      End
      Begin VB.Label Label65 
         AutoSize        =   -1  'True
         Caption         =   "PR Mark"
         Height          =   195
         Left            =   6060
         TabIndex        =   171
         Top             =   2130
         Width           =   630
      End
      Begin VB.Label Label66 
         AutoSize        =   -1  'True
         Caption         =   "PR No."
         Height          =   195
         Left            =   2835
         TabIndex        =   170
         Top             =   2115
         Width           =   525
      End
      Begin VB.Label Label67 
         AutoSize        =   -1  'True
         Caption         =   "Lorry No."
         Height          =   195
         Left            =   6075
         TabIndex        =   169
         Top             =   2520
         Width           =   645
      End
      Begin VB.Label Label68 
         AutoSize        =   -1  'True
         Caption         =   "Mode of Transport"
         Height          =   390
         Left            =   75
         TabIndex        =   168
         Top             =   2415
         Width           =   825
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label69 
         AutoSize        =   -1  'True
         Caption         =   "GC No."
         Height          =   195
         Left            =   2835
         TabIndex        =   167
         Top             =   2505
         Width           =   525
      End
      Begin VB.Label lbltolaper 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         Caption         =   "Tola Per"
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
         Height          =   105
         Left            =   2910
         TabIndex        =   158
         Top             =   1665
         Visible         =   0   'False
         Width           =   585
      End
      Begin VB.Label lblunit 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         Caption         =   "Unit :"
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
         Height          =   225
         Left            =   3675
         TabIndex        =   157
         Top             =   1500
         Visible         =   0   'False
         Width           =   1785
      End
      Begin VB.Label lbltolaqty 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         Caption         =   "Tola. Qty. :"
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
         Height          =   105
         Left            =   2895
         TabIndex        =   156
         Top             =   1455
         Visible         =   0   'False
         Width           =   540
      End
      Begin VB.Label lbltolwithbal 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFC0C0&
         Caption         =   "Tola Bal: "
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
         Height          =   105
         Left            =   4200
         TabIndex        =   155
         Top             =   1920
         Visible         =   0   'False
         Width           =   420
      End
      Begin VB.Label lblcontract 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Contract "
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
         Height          =   225
         Left            =   3000
         TabIndex        =   154
         Top             =   540
         Width           =   1035
      End
      Begin VB.Label Label16 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Contract Date"
         Height          =   195
         Index           =   0
         Left            =   225
         TabIndex        =   153
         Top             =   645
         Width           =   990
      End
      Begin VB.Label Label60 
         AutoSize        =   -1  'True
         Caption         =   "Contract No."
         Height          =   195
         Left            =   225
         TabIndex        =   152
         Top             =   270
         Width           =   900
      End
      Begin VB.Label lblarrived 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Arrived"
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
         Height          =   225
         Left            =   225
         TabIndex        =   151
         Top             =   975
         Width           =   855
      End
      Begin VB.Label lblbalance 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Balance"
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
         Height          =   225
         Left            =   5790
         TabIndex        =   150
         Top             =   975
         Width           =   900
      End
      Begin VB.Label Label94 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         BackStyle       =   0  'Transparent
         Caption         =   "Cancel"
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
         Height          =   225
         Left            =   2985
         TabIndex        =   149
         Top             =   975
         Width           =   855
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   6555
      Left            =   240
      TabIndex        =   88
      Top             =   930
      Width           =   11385
      _ExtentX        =   20082
      _ExtentY        =   11562
      _Version        =   393216
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
      TabCaption(0)   =   "&Lot"
      TabPicture(0)   =   "RMILotbale.frx":0094
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "&Proforma / Invoice"
      TabPicture(1)   =   "RMILotbale.frx":00B0
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame4"
      Tab(1).Control(1)=   "Frame8"
      Tab(1).ControlCount=   2
      TabCaption(2)   =   "&Bales Details"
      TabPicture(2)   =   "RMILotbale.frx":00CC
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label9"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Frame1"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Frame2"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "Frame5"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "Frame18"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).ControlCount=   5
      Begin VB.Frame Frame8 
         Height          =   5625
         Left            =   -74880
         TabIndex        =   292
         Top             =   855
         Width           =   9840
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "SICAAMT"
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
            Index           =   117
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   60
            Top             =   3855
            Width           =   1785
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Pinvval"
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
            Index           =   115
            Left            =   7965
            MaxLength       =   12
            TabIndex        =   21
            Top             =   465
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "ADDTAXPER"
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
            Index           =   112
            Left            =   7965
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   48
            TabStop         =   0   'False
            Top             =   3135
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "vcatcd"
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
            Height          =   330
            Index           =   106
            Left            =   1440
            MaxLength       =   12
            TabIndex        =   22
            Top             =   840
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   12
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   34
            Top             =   2445
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   68
            Top             =   4905
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   65
            Top             =   4560
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   43
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   40
            Top             =   2790
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "ratekg"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.0000;(0.0000)"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   19
            Left            =   7965
            Locked          =   -1  'True
            MaxLength       =   20
            TabIndex        =   71
            Top             =   5265
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   4
            Left            =   7965
            MaxLength       =   11
            TabIndex        =   18
            Top             =   135
            Width           =   1785
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   54
            Top             =   3480
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "ADDTAXCODE"
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
            Index           =   114
            Left            =   7230
            MaxLength       =   9
            TabIndex        =   47
            Top             =   3135
            Width           =   720
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "ADDTAXAMOUNT"
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
            Index           =   113
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   49
            Top             =   3135
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "TOTLANDCOST"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   18
            Left            =   4665
            Locked          =   -1  'True
            MaxLength       =   12
            TabIndex        =   70
            Top             =   5265
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   67
            Top             =   4905
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   61
            Top             =   4170
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "shipchrg"
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
            Index           =   107
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   64
            Top             =   4560
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "FAVAOURABLEWGT"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   5
            Left            =   1440
            MaxLength       =   11
            TabIndex        =   19
            Top             =   480
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   7
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   36
            Top             =   2790
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   17
            Left            =   1440
            MaxLength       =   10
            TabIndex        =   69
            Top             =   5265
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "billno"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   1440
            MaxLength       =   15
            TabIndex        =   16
            Top             =   135
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "PJAMT"
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
            Index           =   6
            Left            =   4665
            MaxLength       =   12
            TabIndex        =   20
            Top             =   480
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   42
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   37
            Top             =   2790
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   44
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   41
            Top             =   2790
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   45
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   42
            Top             =   3135
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   46
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   43
            Top             =   3135
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   47
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   38
            Top             =   2790
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   48
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   39
            Top             =   2790
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "VATPER"
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
            Index           =   51
            Left            =   4665
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   45
            TabStop         =   0   'False
            Top             =   3135
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "VATAMT"
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
            Index           =   52
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   46
            Top             =   3135
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   10
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   50
            Top             =   3480
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   11
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   51
            Top             =   3480
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   15
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   52
            Top             =   3480
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   16
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   53
            Top             =   3480
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   55
            Top             =   3480
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   56
            Top             =   3825
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   57
            Top             =   3825
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   58
            Top             =   3825
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   59
            Top             =   3825
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   63
            Top             =   4560
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   62
            Top             =   4170
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   303
            Left            =   3225
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   297
            TabStop         =   0   'False
            Top             =   1545
            Width           =   6525
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ptype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   302
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   24
            Top             =   1545
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   301
            Left            =   3225
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   296
            TabStop         =   0   'False
            Top             =   1200
            Width           =   6525
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "pjtc"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   300
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   23
            Top             =   1200
            Width           =   1770
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   31
            Top             =   2445
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   30
            Top             =   2445
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
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
            Index           =   83
            Left            =   3930
            MaxLength       =   9
            TabIndex        =   44
            Top             =   3135
            Width           =   720
         End
         Begin VB.TextBox Txtfields 
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
            Index           =   13
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   35
            Top             =   2445
            Width           =   1140
         End
         Begin VB.TextBox Txtfields 
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   32
            Top             =   2445
            Width           =   615
         End
         Begin VB.TextBox Txtfields 
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
            MaxLength       =   9
            TabIndex        =   33
            Top             =   2445
            Width           =   1140
         End
         Begin VB.Frame Frame21 
            Height          =   480
            Left            =   1440
            TabIndex        =   294
            Top             =   1935
            Width           =   3375
            Begin VB.OptionButton optDCyes 
               Caption         =   "Yes"
               Height          =   225
               Left            =   1170
               TabIndex        =   26
               Top             =   180
               Width           =   645
            End
            Begin VB.OptionButton optDCNo 
               Caption         =   "No"
               Height          =   255
               Left            =   300
               TabIndex        =   25
               Top             =   165
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00FFFFFF&
               DataField       =   "DutyPer"
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0"
                  HaveTrueFalseNull=   0
                  FirstDayOfWeek  =   0
                  FirstWeekOfYear =   0
                  LCID            =   1033
                  SubFormatType   =   1
               EndProperty
               Enabled         =   0   'False
               ForeColor       =   &H00000000&
               Height          =   315
               Index           =   109
               Left            =   2520
               MaxLength       =   6
               TabIndex        =   27
               Top             =   120
               Width           =   750
            End
            Begin VB.Label lblDutyPer 
               Caption         =   "Duty %"
               Enabled         =   0   'False
               Height          =   195
               Left            =   1875
               TabIndex        =   295
               Top             =   180
               Width           =   525
            End
         End
         Begin VB.Frame Frame22 
            Height          =   480
            Left            =   6210
            TabIndex        =   293
            Top             =   1935
            Width           =   3525
            Begin VB.OptionButton optBefore 
               Caption         =   "Before Discount"
               Height          =   255
               Left            =   270
               TabIndex        =   28
               Top             =   180
               Value           =   -1  'True
               Width           =   1455
            End
            Begin VB.OptionButton optAfter 
               Caption         =   "After Discount"
               Height          =   225
               Left            =   1950
               TabIndex        =   29
               Top             =   180
               Width           =   1455
            End
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "OtherTaxableAMT"
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
            Index           =   111
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   66
            Top             =   4905
            Width           =   1770
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "BILLDT"
            Height          =   330
            Index           =   2
            Left            =   4665
            TabIndex        =   17
            Top             =   135
            Width           =   1770
            _ExtentX        =   3122
            _ExtentY        =   582
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label120 
            AutoSize        =   -1  'True
            Caption         =   "SICA Amount"
            Height          =   195
            Left            =   6525
            TabIndex        =   363
            Top             =   3915
            Width           =   945
         End
         Begin VB.Label Label119 
            Caption         =   "Supplier Invoice Value"
            ForeColor       =   &H00FF0000&
            Height          =   360
            Left            =   6480
            TabIndex        =   362
            Top             =   442
            Width           =   1185
         End
         Begin VB.Label lblAddTax 
            AutoSize        =   -1  'True
            Caption         =   "Add. Tax"
            Enabled         =   0   'False
            Height          =   195
            Left            =   6525
            TabIndex        =   352
            Top             =   3180
            Width           =   645
         End
         Begin VB.Label Label53 
            Caption         =   "Others                   (Non -Taxable Amt)"
            Height          =   435
            Left            =   3270
            TabIndex        =   332
            Top             =   4830
            Width           =   1635
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Assessable Value"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   331
            Top             =   525
            Width           =   1245
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Landed Cost"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   330
            Top             =   5325
            Width           =   900
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Bill Date"
            Height          =   195
            Left            =   3270
            TabIndex        =   329
            Top             =   210
            Width           =   585
         End
         Begin VB.Label Label45 
            AutoSize        =   -1  'True
            Caption         =   "Cess"
            Height          =   195
            Left            =   3270
            TabIndex        =   328
            Top             =   2820
            Width           =   345
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Height          =   195
            Left            =   3270
            TabIndex        =   327
            Top             =   3180
            Width           =   270
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
            Height          =   195
            Left            =   6525
            TabIndex        =   326
            Top             =   3525
            Width           =   705
         End
         Begin VB.Label Label56 
            AutoSize        =   -1  'True
            Caption         =   "Dr. Note Amount"
            Height          =   195
            Left            =   75
            TabIndex        =   325
            Top             =   4230
            Width           =   1185
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Trade Discount"
            Height          =   240
            Left            =   3270
            TabIndex        =   324
            Top             =   2505
            Width           =   1140
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label112 
            AutoSize        =   -1  'True
            Caption         =   "Shipment Charge"
            Height          =   195
            Left            =   3270
            TabIndex        =   323
            Top             =   4560
            Width           =   1215
         End
         Begin VB.Label Label25 
            Caption         =   "Broker Commission"
            Height          =   285
            Left            =   60
            TabIndex        =   322
            Top             =   5325
            Width           =   1380
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   75
            TabIndex        =   321
            Top             =   540
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "B.E.D."
            Height          =   195
            Left            =   75
            TabIndex        =   320
            Top             =   2820
            Width           =   465
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Sample Weight"
            Height          =   195
            Left            =   6480
            TabIndex        =   319
            Top             =   195
            Width           =   1080
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
            Height          =   195
            Left            =   75
            TabIndex        =   318
            Top             =   225
            Width           =   495
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Kg."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   6510
            TabIndex        =   317
            Top             =   5325
            Width           =   660
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            Caption         =   "ED Cess"
            Height          =   195
            Left            =   6510
            TabIndex        =   316
            Top             =   2835
            Width           =   615
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "HS Cess"
            Height          =   195
            Left            =   75
            TabIndex        =   315
            Top             =   3180
            Width           =   615
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Other Tax"
            Height          =   195
            Left            =   75
            TabIndex        =   314
            Top             =   3540
            Width           =   705
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Railway Frieght"
            Height          =   195
            Left            =   3270
            TabIndex        =   313
            Top             =   3510
            Width           =   1080
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Commission"
            Height          =   195
            Left            =   75
            TabIndex        =   312
            Top             =   3885
            Width           =   825
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "LC Interest"
            Height          =   195
            Left            =   3270
            TabIndex        =   311
            Top             =   3870
            Width           =   765
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Charity"
            Height          =   195
            Left            =   60
            TabIndex        =   310
            Top             =   4620
            Width           =   480
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Damage"
            Height          =   195
            Left            =   3270
            TabIndex        =   309
            Top             =   4260
            Width           =   600
         End
         Begin VB.Line Line2 
            X1              =   -15
            X2              =   9825
            Y1              =   4530
            Y2              =   4530
         End
         Begin VB.Label Label52 
            AutoSize        =   -1  'True
            Caption         =   "Clearance"
            Height          =   195
            Left            =   6510
            TabIndex        =   308
            Top             =   4590
            Width           =   720
         End
         Begin VB.Label Label55 
            AutoSize        =   -1  'True
            Caption         =   "Customs Duty"
            Height          =   195
            Left            =   6510
            TabIndex        =   307
            Top             =   4950
            Width           =   975
         End
         Begin VB.Line Line3 
            X1              =   30
            X2              =   9795
            Y1              =   1920
            Y2              =   1920
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Transaction Type"
            Height          =   195
            Index           =   3
            Left            =   45
            TabIndex        =   306
            Top             =   1275
            Width           =   1245
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            Height          =   195
            Index           =   4
            Left            =   60
            TabIndex        =   305
            Top             =   1620
            Width           =   1080
         End
         Begin VB.Label Label78 
            AutoSize        =   -1  'True
            Caption         =   " Bill No. Entry "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   195
            Left            =   1470
            TabIndex        =   304
            Top             =   285
            Visible         =   0   'False
            Width           =   1245
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "Cash Discount"
            Height          =   195
            Left            =   60
            TabIndex        =   303
            Top             =   2475
            Width           =   1035
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Frieght"
            Height          =   195
            Left            =   6510
            TabIndex        =   302
            Top             =   2505
            Width           =   870
         End
         Begin VB.Label Label110 
            AutoSize        =   -1  'True
            Caption         =   "VAT Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   75
            TabIndex        =   301
            Top             =   900
            Width           =   990
         End
         Begin VB.Label Label83 
            Caption         =   "Duty Claimable?"
            Height          =   285
            Left            =   60
            TabIndex        =   300
            Top             =   2115
            Width           =   1335
         End
         Begin VB.Label Label111 
            Caption         =   "Tax Calculation?"
            Height          =   285
            Left            =   4905
            TabIndex        =   299
            Top             =   2115
            Width           =   1335
         End
         Begin VB.Label Label116 
            Caption         =   "Others        (Taxable Amt)"
            Height          =   435
            Left            =   60
            TabIndex        =   298
            Top             =   4860
            Width           =   1425
         End
      End
      Begin VB.Frame Frame18 
         Caption         =   "Mill"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   975
         Left            =   -74445
         TabIndex        =   270
         Top             =   5340
         Width           =   7245
         Begin VB.TextBox Text16 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   3360
            Locked          =   -1  'True
            TabIndex        =   365
            Top             =   480
            Width           =   1185
         End
         Begin VB.TextBox Text4 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   45
            Locked          =   -1  'True
            TabIndex        =   280
            Top             =   510
            Width           =   915
         End
         Begin VB.TextBox Text5 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   960
            Locked          =   -1  'True
            TabIndex        =   279
            Top             =   510
            Width           =   1155
         End
         Begin VB.TextBox Text6 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   2160
            Locked          =   -1  'True
            TabIndex        =   278
            Top             =   510
            Width           =   1155
         End
         Begin VB.TextBox Text7 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   4560
            Locked          =   -1  'True
            TabIndex        =   277
            Top             =   510
            Width           =   1215
         End
         Begin VB.TextBox Text11 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
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
            Height          =   405
            Left            =   5805
            TabIndex        =   276
            Top             =   510
            Width           =   1275
         End
         Begin VB.Label Label12134 
            Caption         =   "Trash Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   3510
            TabIndex        =   366
            Top             =   300
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label Label84 
            Caption         =   "Bale"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   540
            TabIndex        =   275
            Top             =   315
            Visible         =   0   'False
            Width           =   390
         End
         Begin VB.Label Label85 
            Caption         =   "Gross Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   1305
            TabIndex        =   274
            Top             =   315
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label Label87 
            Caption         =   "Tare  Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   2535
            TabIndex        =   273
            Top             =   315
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label Label89 
            Caption         =   "Moisture Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   4710
            TabIndex        =   272
            Top             =   300
            Visible         =   0   'False
            Width           =   1095
         End
         Begin VB.Label Label90 
            Caption         =   "Nett Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   6330
            TabIndex        =   271
            Top             =   315
            Visible         =   0   'False
            Width           =   795
         End
      End
      Begin VB.Frame Frame5 
         Height          =   615
         Left            =   -74880
         TabIndex        =   111
         Top             =   315
         Width           =   9825
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   81
            Top             =   195
            Width           =   1395
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   2925
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   82
            Text            =   " "
            Top             =   195
            Width           =   6465
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier "
            Height          =   195
            Index           =   2
            Left            =   330
            TabIndex        =   112
            Top             =   270
            Width           =   615
         End
      End
      Begin VB.Frame Frame4 
         Height          =   555
         Left            =   -74910
         TabIndex        =   109
         Top             =   315
         Width           =   9855
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   3240
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   80
            TabStop         =   0   'False
            Text            =   " "
            Top             =   150
            Width           =   6525
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   32
            Left            =   1455
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   79
            TabStop         =   0   'False
            Top             =   150
            Width           =   1755
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Index           =   1
            Left            =   120
            TabIndex        =   110
            Top             =   210
            Width           =   570
         End
      End
      Begin VB.Frame Frame2 
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
         ForeColor       =   &H000000FF&
         Height          =   975
         Left            =   -67125
         TabIndex        =   94
         Top             =   5340
         Visible         =   0   'False
         Width           =   3435
         Begin VB.TextBox Text15 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
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
            Height          =   405
            Left            =   45
            Locked          =   -1  'True
            TabIndex        =   83
            Top             =   510
            Width           =   1035
         End
         Begin VB.TextBox Text14 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
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
            Height          =   405
            Left            =   1140
            Locked          =   -1  'True
            TabIndex        =   84
            Top             =   510
            Width           =   1155
         End
         Begin VB.TextBox Text13 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
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
            Height          =   405
            Left            =   2310
            Locked          =   -1  'True
            TabIndex        =   85
            Top             =   510
            Width           =   1095
         End
         Begin VB.Label Label86 
            Caption         =   "Gross Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   240
            TabIndex        =   283
            Top             =   300
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label Label88 
            Caption         =   "Tare Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   1530
            TabIndex        =   282
            Top             =   300
            Visible         =   0   'False
            Width           =   915
         End
         Begin VB.Label Label91 
            Caption         =   "Nett Wt."
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   285
            Left            =   2670
            TabIndex        =   281
            Top             =   300
            Visible         =   0   'False
            Width           =   750
         End
      End
      Begin VB.Frame Frame1 
         Height          =   4455
         Left            =   -74895
         TabIndex        =   89
         Top             =   900
         Width           =   11160
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   4335
            Left            =   0
            TabIndex        =   73
            Top             =   90
            Width           =   10995
            _ExtentX        =   19394
            _ExtentY        =   7646
            _Version        =   393216
            AllowUpdate     =   -1  'True
            AllowArrows     =   -1  'True
            BackColor       =   16777215
            DefColWidth     =   67
            ForeColor       =   0
            HeadLines       =   2
            RowHeight       =   19
            TabAction       =   2
            AllowAddNew     =   -1  'True
            BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Caption         =   "Balewise Weighment Details"
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
      End
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
         Height          =   6075
         Left            =   135
         TabIndex        =   234
         Top             =   315
         Width           =   11055
         Begin VB.Frame Frame23 
            Height          =   435
            Left            =   1500
            TabIndex        =   353
            Top             =   2580
            Width           =   3495
            Begin VB.OptionButton optMILL 
               Caption         =   "Mill Net Wt."
               Height          =   240
               Left            =   285
               TabIndex        =   10
               Top             =   150
               Value           =   -1  'True
               Width           =   1575
            End
            Begin VB.OptionButton optSUPPLIER 
               Caption         =   "Supplier Net Wt."
               Height          =   210
               Left            =   1860
               TabIndex        =   11
               Top             =   150
               Width           =   1500
            End
         End
         Begin VB.Frame Frame16 
            Caption         =   "Supplier"
            ForeColor       =   &H000000FF&
            Height          =   765
            Left            =   7530
            TabIndex        =   344
            Top             =   5250
            Width           =   3420
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   105
               Left            =   45
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   347
               TabStop         =   0   'False
               Top             =   405
               Width           =   1215
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   104
               Left            =   1275
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   346
               TabStop         =   0   'False
               Top             =   390
               Width           =   855
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   103
               Left            =   2145
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   345
               TabStop         =   0   'False
               Top             =   390
               Width           =   1215
            End
            Begin VB.Label Label104 
               AutoSize        =   -1  'True
               Caption         =   "Gross Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   420
               TabIndex        =   350
               Top             =   180
               Width           =   840
            End
            Begin VB.Label Label103 
               AutoSize        =   -1  'True
               Caption         =   "Tare Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   1380
               TabIndex        =   349
               Top             =   165
               Width           =   735
            End
            Begin VB.Label Label102 
               AutoSize        =   -1  'True
               Caption         =   "Nett Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   2640
               TabIndex        =   348
               Top             =   165
               Width           =   690
            End
         End
         Begin VB.Frame Frame17 
            Caption         =   "Mill"
            ForeColor       =   &H000000FF&
            Height          =   765
            Left            =   960
            TabIndex        =   333
            Top             =   5250
            Width           =   6555
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   97
               Left            =   4305
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   338
               TabStop         =   0   'False
               Top             =   405
               Width           =   1050
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   98
               Left            =   2025
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   337
               TabStop         =   0   'False
               Top             =   405
               Width           =   945
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   99
               Left            =   915
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   336
               TabStop         =   0   'False
               Top             =   405
               Width           =   1095
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   100
               Left            =   45
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   335
               TabStop         =   0   'False
               Top             =   405
               Width           =   855
            End
            Begin VB.TextBox Txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00C0C0C0&
               BeginProperty DataFormat 
                  Type            =   1
                  Format          =   "0.000;(0.000)"
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
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H00000000&
               Height          =   330
               Index           =   101
               Left            =   2985
               Locked          =   -1  'True
               MaxLength       =   15
               TabIndex        =   334
               TabStop         =   0   'False
               Top             =   405
               Width           =   1305
            End
            Begin VB.Label Label100 
               AutoSize        =   -1  'True
               Caption         =   "Nett Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   4665
               TabIndex        =   343
               Top             =   165
               Width           =   690
            End
            Begin VB.Label Label101 
               AutoSize        =   -1  'True
               Caption         =   "Tare Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   2220
               TabIndex        =   342
               Top             =   165
               Width           =   735
            End
            Begin VB.Label Label105 
               AutoSize        =   -1  'True
               Caption         =   "Gross Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   1155
               TabIndex        =   341
               Top             =   180
               Width           =   840
            End
            Begin VB.Label Label106 
               AutoSize        =   -1  'True
               Caption         =   "Quantity"
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   165
               TabIndex        =   340
               Top             =   165
               Width           =   720
            End
            Begin VB.Label Label107 
               AutoSize        =   -1  'True
               Caption         =   "Moisture Wt."
               BeginProperty Font 
                  Name            =   "Verdana"
                  Size            =   8.25
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               ForeColor       =   &H000000FF&
               Height          =   195
               Left            =   3195
               TabIndex        =   339
               Top             =   165
               Width           =   1065
            End
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "Rateunit"
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
            Height          =   330
            Index           =   110
            Left            =   8265
            Locked          =   -1  'True
            MaxLength       =   10
            TabIndex        =   290
            Top             =   1920
            Width           =   1350
         End
         Begin VB.Frame Frame20 
            Height          =   435
            Left            =   6135
            TabIndex        =   289
            Top             =   2565
            Width           =   3495
            Begin VB.OptionButton Option2 
               Caption         =   "Common For All"
               Height          =   210
               Left            =   1665
               TabIndex        =   13
               Top             =   180
               Value           =   -1  'True
               Width           =   1395
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Individual Items"
               Height          =   240
               Left            =   45
               TabIndex        =   12
               Top             =   150
               Width           =   1575
            End
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "inwardno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   108
            Left            =   4845
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   263
            TabStop         =   0   'False
            Top             =   480
            Width           =   1695
         End
         Begin VB.Frame Frame14 
            Caption         =   "Lot Details"
            Height          =   1815
            Left            =   15
            TabIndex        =   250
            Top             =   3435
            Width           =   10995
            Begin FPSpreadADO.fpSpread spdVar 
               Height          =   1635
               Left            =   0
               TabIndex        =   15
               Top             =   180
               Width           =   10935
               _Version        =   524288
               _ExtentX        =   19288
               _ExtentY        =   2884
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
               SpreadDesigner  =   "RMILotbale.frx":00E8
               AppearanceStyle =   0
            End
         End
         Begin VB.TextBox Txtfields 
            DataField       =   "carcode"
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
            Height          =   330
            Index           =   71
            Left            =   1500
            MaxLength       =   10
            TabIndex        =   9
            Top             =   2250
            Visible         =   0   'False
            Width           =   3510
         End
         Begin VB.ComboBox Combo3a 
            Height          =   315
            ItemData        =   "RMILotbale.frx":058D
            Left            =   1500
            List            =   "RMILotbale.frx":059D
            TabIndex        =   248
            Top             =   2265
            Visible         =   0   'False
            Width           =   3540
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "weignment"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   27
            Left            =   1500
            TabIndex        =   247
            TabStop         =   0   'False
            Top             =   2265
            Width           =   1450
         End
         Begin VB.TextBox Text20 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2985
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   245
            TabStop         =   0   'False
            Top             =   1575
            Width           =   6630
         End
         Begin VB.TextBox txtremarks 
            BackColor       =   &H00FFFFFF&
            DataField       =   "remarks"
            ForeColor       =   &H00000000&
            Height          =   345
            Left            =   1500
            MultiLine       =   -1  'True
            TabIndex        =   14
            Top             =   3030
            Width           =   8085
         End
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   243
            Top             =   6960
            Visible         =   0   'False
            Width           =   2085
         End
         Begin VB.TextBox Txtfields 
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
            TabIndex        =   242
            TabStop         =   0   'False
            Top             =   6960
            Visible         =   0   'False
            Width           =   3765
         End
         Begin VB.TextBox Text10 
            Height          =   345
            Left            =   7200
            TabIndex        =   241
            Top             =   6960
            Visible         =   0   'False
            Width           =   1905
         End
         Begin VB.TextBox Text12 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2985
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   240
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1215
            Width           =   6630
         End
         Begin VB.TextBox Text1 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   0
            Left            =   2985
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   239
            TabStop         =   0   'False
            Text            =   " "
            Top             =   870
            Width           =   6630
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   30
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   4
            TabStop         =   0   'False
            Top             =   870
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "brkcd"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   37
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   5
            TabStop         =   0   'False
            Top             =   1215
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "areacode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   38
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   7
            TabStop         =   0   'False
            Top             =   1575
            Width           =   1455
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "godown"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   77
            Left            =   1500
            MaxLength       =   11
            TabIndex        =   8
            Top             =   1920
            Width           =   1455
         End
         Begin VB.TextBox Text8 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2985
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   238
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1920
            Width           =   3630
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   96
            Left            =   4845
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   237
            TabStop         =   0   'False
            Top             =   150
            Width           =   1680
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2955
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   236
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2265
            Width           =   3660
         End
         Begin VB.TextBox Txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Lotdt"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   102
            Left            =   1515
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   235
            TabStop         =   0   'False
            Top             =   165
            Width           =   1455
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "PLOTDT"
            Height          =   315
            Index           =   0
            Left            =   8265
            TabIndex        =   246
            Top             =   2265
            Width           =   1350
            _ExtentX        =   2381
            _ExtentY        =   556
            _Version        =   393216
            BackColor       =   16777215
            ForeColor       =   0
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
            DataField       =   "arrdt"
            Height          =   315
            Index           =   4
            Left            =   8430
            TabIndex        =   249
            TabStop         =   0   'False
            Top             =   150
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
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
            DataField       =   "inwarddate"
            Height          =   315
            Index           =   5
            Left            =   8430
            TabIndex        =   264
            TabStop         =   0   'False
            Top             =   480
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   556
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
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   79
            Left            =   3000
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   244
            TabStop         =   0   'False
            Top             =   1230
            Visible         =   0   'False
            Width           =   6630
         End
         Begin VB.TextBox Txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "varcode"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   2
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   6
            TabStop         =   0   'False
            Top             =   1215
            Visible         =   0   'False
            Width           =   1455
         End
         Begin VB.Label Label117 
            Caption         =   "Favourable Weight"
            ForeColor       =   &H00FF0000&
            Height          =   345
            Left            =   90
            TabIndex        =   354
            Top             =   2730
            Width           =   1455
         End
         Begin VB.Label Label99 
            AutoSize        =   -1  'True
            Caption         =   "Total"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H000000FF&
            Height          =   195
            Left            =   390
            TabIndex        =   351
            Top             =   5715
            Width           =   525
         End
         Begin VB.Label Label114 
            AutoSize        =   -1  'True
            Caption         =   "Rate / Unit"
            Height          =   195
            Left            =   7005
            TabIndex        =   291
            Top             =   2010
            Width           =   795
         End
         Begin VB.Label Label96 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Number"
            Height          =   195
            Left            =   3375
            TabIndex        =   268
            Top             =   225
            Width           =   1035
         End
         Begin VB.Label Label97 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
            Height          =   195
            Left            =   6945
            TabIndex        =   267
            Top             =   210
            Width           =   825
         End
         Begin VB.Label Label115 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward No."
            Height          =   195
            Left            =   3345
            TabIndex        =   266
            Top             =   525
            Width           =   1380
         End
         Begin VB.Label Label113 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Material Inward Date"
            Height          =   195
            Left            =   6915
            TabIndex        =   265
            Top             =   525
            Width           =   1470
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            Height          =   195
            Left            =   120
            TabIndex        =   262
            Top             =   3060
            Width           =   630
         End
         Begin VB.Label Label12 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Weigh Date"
            Height          =   195
            Left            =   7005
            TabIndex        =   261
            Top             =   2370
            Width           =   855
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   240
            TabIndex        =   260
            Top             =   7080
            Width           =   360
         End
         Begin VB.Label Label57 
            AutoSize        =   -1  'True
            Caption         =   "Weighment by"
            Height          =   195
            Left            =   105
            TabIndex        =   259
            Top             =   2340
            Width           =   1020
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Index           =   0
            Left            =   120
            TabIndex        =   258
            Top             =   915
            Width           =   570
         End
         Begin VB.Label Label61 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Height          =   195
            Left            =   120
            TabIndex        =   257
            Top             =   1650
            Width           =   330
         End
         Begin VB.Label Label76 
            Caption         =   "Label76"
            Height          =   15
            Left            =   840
            TabIndex        =   255
            Top             =   1845
            Width           =   255
         End
         Begin VB.Label Label77 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            Height          =   195
            Left            =   120
            TabIndex        =   254
            Top             =   1290
            Width           =   420
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   105
            TabIndex        =   253
            Top             =   1995
            Width           =   600
         End
         Begin VB.Line Line1 
            X1              =   30
            X2              =   9840
            Y1              =   825
            Y2              =   825
         End
         Begin VB.Line Line4 
            X1              =   30
            X2              =   12000
            Y1              =   3420
            Y2              =   3420
         End
         Begin VB.Label Label98 
            AutoSize        =   -1  'True
            Caption         =   "Tax Choice"
            ForeColor       =   &H00FF0000&
            Height          =   180
            Left            =   5160
            TabIndex        =   252
            Top             =   2730
            Width           =   810
         End
         Begin VB.Label Label108 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   135
            TabIndex        =   251
            Top             =   180
            Width           =   615
         End
         Begin VB.Label Label13 
            Caption         =   "Variety"
            Height          =   255
            Left            =   120
            TabIndex        =   256
            Top             =   1275
            Visible         =   0   'False
            Width           =   735
         End
      End
      Begin VB.Label Label9 
         Caption         =   "Total"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   285
         Left            =   -74940
         TabIndex        =   95
         Top             =   6015
         Visible         =   0   'False
         Width           =   540
      End
   End
   Begin VB.Frame Frame19 
      Height          =   525
      Left            =   4410
      TabIndex        =   284
      Top             =   510
      Visible         =   0   'False
      Width           =   6075
      Begin VB.OptionButton Option6 
         Caption         =   "Yes"
         Height          =   255
         Left            =   2220
         TabIndex        =   287
         Top             =   150
         Width           =   1260
      End
      Begin VB.OptionButton Option3 
         Caption         =   "No"
         Height          =   225
         Left            =   3510
         TabIndex        =   286
         Top             =   180
         Value           =   -1  'True
         Width           =   1080
      End
      Begin VB.CommandButton Command8 
         Caption         =   "&OK"
         Height          =   345
         Left            =   4635
         TabIndex        =   285
         Top             =   135
         Visible         =   0   'False
         Width           =   1275
      End
      Begin VB.Label Label82 
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
         Height          =   255
         Left            =   210
         TabIndex        =   288
         Top             =   180
         Width           =   1425
      End
   End
   Begin VB.Frame Frame15 
      Height          =   495
      Left            =   0
      TabIndex        =   229
      Top             =   -2940
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command7 
         Caption         =   "&Ok"
         Height          =   315
         Left            =   4020
         TabIndex        =   269
         Top             =   135
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   225
         Left            =   2925
         TabIndex        =   231
         Top             =   195
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   255
         Left            =   1740
         TabIndex        =   230
         Top             =   180
         Width           =   1260
      End
      Begin VB.Label Label109 
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
         Height          =   255
         Left            =   180
         TabIndex        =   232
         Top             =   165
         Width           =   1425
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   3870
      Top             =   690
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      EMailSubject    =   "lot bale"
      EMailMessage    =   "lot bale Detail"
      EMailToList     =   "svinu@in.com"
      EMailCCList     =   "svinu@in.com"
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame12 
      Caption         =   "NO NEED FOR TAX CALC"
      Height          =   3255
      Left            =   4890
      TabIndex        =   122
      Top             =   3495
      Visible         =   0   'False
      Width           =   5535
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "freight"
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
         Height          =   330
         Index           =   39
         Left            =   1320
         MaxLength       =   10
         TabIndex        =   140
         Top             =   2760
         Visible         =   0   'False
         Width           =   2055
      End
      Begin VB.TextBox Txtfields 
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   8
         Left            =   2040
         MaxLength       =   9
         TabIndex        =   138
         Top             =   2400
         Width           =   465
      End
      Begin VB.TextBox Txtfields 
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
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   9
         Left            =   2520
         MaxLength       =   9
         TabIndex        =   137
         Top             =   2400
         Width           =   780
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "BNKCHG"
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
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   14
         Left            =   1680
         MaxLength       =   9
         TabIndex        =   132
         Top             =   1440
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox Txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "lgroup"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   21
         Left            =   3000
         MaxLength       =   2
         TabIndex        =   131
         Top             =   600
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "WARPAGEAMT"
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
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   360
         Index           =   65
         Left            =   1320
         MaxLength       =   9
         TabIndex        =   130
         Top             =   1680
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "ALLOWANCEAMT"
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
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   68
         Left            =   3960
         MaxLength       =   9
         TabIndex        =   129
         Top             =   1440
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OCTROIAMT"
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
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   50
         Left            =   1440
         MaxLength       =   9
         TabIndex        =   127
         Top             =   720
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "OCTROIPER"
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
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   49
         Left            =   960
         MaxLength       =   9
         TabIndex        =   126
         Top             =   720
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "TNGSTPER"
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
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   55
         Left            =   960
         MaxLength       =   9
         TabIndex        =   124
         Top             =   360
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.TextBox Txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         DataField       =   "TNGSTAMT"
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
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   56
         Left            =   1440
         MaxLength       =   9
         TabIndex        =   123
         Top             =   360
         Visible         =   0   'False
         Width           =   780
      End
      Begin VB.Label Label63 
         AutoSize        =   -1  'True
         Caption         =   "Freight"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   141
         Top             =   2760
         Visible         =   0   'False
         Width           =   852
      End
      Begin VB.Label Label20 
         AutoSize        =   -1  'True
         Caption         =   "Sur. Chr."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   1080
         TabIndex        =   139
         Top             =   2400
         Width           =   735
      End
      Begin VB.Label Label24 
         AutoSize        =   -1  'True
         Caption         =   "Bank. Comm."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   360
         TabIndex        =   136
         Top             =   1440
         Visible         =   0   'False
         Width           =   1185
      End
      Begin VB.Label Label37 
         AutoSize        =   -1  'True
         Caption         =   "Group"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2400
         TabIndex        =   135
         Top             =   720
         Visible         =   0   'False
         Width           =   555
      End
      Begin VB.Label Label51 
         AutoSize        =   -1  'True
         Caption         =   "Warpage"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   360
         TabIndex        =   134
         Top             =   1800
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label54 
         AutoSize        =   -1  'True
         Caption         =   "Allowance"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2880
         TabIndex        =   133
         Top             =   1560
         Visible         =   0   'False
         Width           =   930
      End
      Begin VB.Label Label46 
         AutoSize        =   -1  'True
         Caption         =   "Octroi"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   128
         Top             =   795
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.Label Label49 
         AutoSize        =   -1  'True
         Caption         =   "TNGST"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   120
         TabIndex        =   125
         Top             =   360
         Visible         =   0   'False
         Width           =   705
      End
   End
   Begin VB.Frame Frame11 
      Caption         =   "Frame11"
      Height          =   2295
      Left            =   11565
      TabIndex        =   118
      Top             =   5430
      Visible         =   0   'False
      Width           =   4215
      Begin VB.Label lblterms 
         Appearance      =   0  'Flat
         BackColor       =   &H00FFFFC0&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   330
         Left            =   240
         TabIndex        =   121
         Top             =   480
         Width           =   1425
      End
      Begin VB.Label Label3 
         Caption         =   "Weight"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   360
         TabIndex        =   120
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label62 
         Caption         =   "Label62"
         Height          =   255
         Left            =   1560
         TabIndex        =   119
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -135
      TabIndex        =   96
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":05C4
         Height          =   510
         Index           =   0
         Left            =   165
         Picture         =   "RMILotbale.frx":08CE
         Style           =   1  'Graphical
         TabIndex        =   364
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
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
         Index           =   14
         Left            =   6525
         Picture         =   "RMILotbale.frx":0C61
         Style           =   1  'Graphical
         TabIndex        =   356
         ToolTipText     =   "Cotton Arrival Report"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":10A3
         Height          =   510
         Index           =   5
         Left            =   2285
         Picture         =   "RMILotbale.frx":14ED
         Style           =   1  'Graphical
         TabIndex        =   233
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   6015
         Picture         =   "RMILotbale.frx":1852
         Style           =   1  'Graphical
         TabIndex        =   228
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
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
         Index           =   12
         Left            =   5490
         Picture         =   "RMILotbale.frx":1C94
         Style           =   1  'Graphical
         TabIndex        =   78
         ToolTipText     =   "Lot Bale Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":20D6
         Height          =   510
         Index           =   8
         Left            =   3875
         Picture         =   "RMILotbale.frx":2520
         Style           =   1  'Graphical
         TabIndex        =   74
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":2882
         Height          =   510
         Index           =   10
         Left            =   4950
         Picture         =   "RMILotbale.frx":2B8C
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":2F08
         Height          =   510
         Index           =   9
         Left            =   4410
         Picture         =   "RMILotbale.frx":3212
         Style           =   1  'Graphical
         TabIndex        =   75
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":35B4
         Height          =   510
         Index           =   11
         Left            =   7065
         Picture         =   "RMILotbale.frx":39FE
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":3D93
         Height          =   510
         Index           =   7
         Left            =   3345
         Picture         =   "RMILotbale.frx":41DD
         Style           =   1  'Graphical
         TabIndex        =   72
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":452D
         Height          =   510
         Index           =   1
         Left            =   695
         Picture         =   "RMILotbale.frx":4837
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":4BB1
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
         Left            =   1225
         Picture         =   "RMILotbale.frx":4EBB
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":5257
         Height          =   510
         Index           =   6
         Left            =   2815
         Picture         =   "RMILotbale.frx":56A1
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":59EE
         Height          =   510
         Index           =   4
         Left            =   1755
         Picture         =   "RMILotbale.frx":5CF8
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Find (Ctrl F)"
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
         Left            =   7860
         TabIndex        =   102
         Top             =   240
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
         TabIndex        =   101
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   99
      Top             =   10710
      Width           =   15240
      _ExtentX        =   26882
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
            TextSave        =   "02/06/2015"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "3:06 PM"
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
   Begin VB.Frame Frame9 
      Height          =   4665
      Left            =   1110
      TabIndex        =   90
      Top             =   2670
      Visible         =   0   'False
      Width           =   8505
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3330
         Left            =   150
         TabIndex        =   93
         Top             =   600
         Width           =   8130
         _ExtentX        =   14340
         _ExtentY        =   5874
         _Version        =   393216
         HeadLines       =   1
         RowHeight       =   18
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
         Left            =   4710
         TabIndex        =   92
         Top             =   4185
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Height          =   375
         Left            =   2850
         TabIndex        =   91
         Top             =   4170
         Width           =   1140
      End
      Begin VB.Label Label39 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Lot  Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   98
         Top             =   120
         Width           =   8400
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5535
      Left            =   480
      TabIndex        =   87
      Top             =   2370
      Visible         =   0   'False
      Width           =   9105
      Begin VB.Frame Frame10 
         Height          =   735
         Left            =   180
         TabIndex        =   116
         Top             =   4770
         Width           =   8655
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "RMILotbale.frx":608D
            Height          =   375
            Left            =   5280
            Picture         =   "RMILotbale.frx":646F
            Style           =   1  'Graphical
            TabIndex        =   115
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "RMILotbale.frx":6842
            Height          =   375
            Left            =   1440
            Picture         =   "RMILotbale.frx":6C28
            Style           =   1  'Graphical
            TabIndex        =   117
            Top             =   240
            Width           =   1185
         End
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1230
         Left            =   510
         TabIndex        =   100
         Top             =   630
         Visible         =   0   'False
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   2170
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label15 
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
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   97
         Top             =   120
         Visible         =   0   'False
         Width           =   8475
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2490
      TabIndex        =   103
      Top             =   2760
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "RMILotbale.frx":6FEE
         Height          =   615
         Left            =   2580
         Picture         =   "RMILotbale.frx":73D4
         Style           =   1  'Graphical
         TabIndex        =   105
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMILotbale.frx":779A
         Height          =   615
         Left            =   4020
         Picture         =   "RMILotbale.frx":7B7C
         Style           =   1  'Graphical
         TabIndex        =   106
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   104
         Top             =   930
         Width           =   1665
      End
      Begin VB.Label Label28 
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
         TabIndex        =   108
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2610
         TabIndex        =   107
         Top             =   1005
         Width           =   570
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4350
      Left            =   7500
      TabIndex        =   355
      Top             =   1020
      Visible         =   0   'False
      Width           =   4005
      _extentx        =   7064
      _extenty        =   7673
   End
   Begin VB.Label Label42 
      AutoSize        =   -1  'True
      Caption         =   "Label42"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   240
      Left            =   3570
      TabIndex        =   114
      Top             =   900
      Visible         =   0   'False
      Width           =   750
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
      Left            =   0
      TabIndex        =   113
      Top             =   0
      Width           =   2100
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot Bale Details"
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
      Left            =   300
      TabIndex        =   86
      Top             =   600
      Width           =   2085
   End
End
Attribute VB_Name = "WLotbale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim AdosecondaryRs As Recordset
Dim rstQry As Recordset
Dim rsVar As Recordset
Dim rs As Recordset
Dim RS1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldarrno As Integer
Dim oldarrdt As Date
Dim GG As Double
Dim GT As Double
Dim qty As Integer
Dim oldgrs As Double
Dim oldtare As Double
Dim dSuppNetWt As Double
Dim dLandedCost As Double
Dim pinvvalue As Double
Dim dInvWgt As Double
Dim iFlag As Integer
Dim LOTNO As Double
Dim a As Double
Dim b As Double
Dim C As Double
Dim d As Double
Dim W As Double
Dim f As String
Dim g As Double
Dim AVatamt As Double
Dim bales, bales1 As Double
Dim pbales, pbales1 As Double
''Dim p As Double
''Dim q As Double
''Dim r As Double
''Dim s As Double
Dim t As Double
Dim lot As New Recordset
Dim flg As String
Dim Flag As String
Dim wflg As String

Dim VatFlag As Boolean

  ''For spread Index
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
Const ImTrashwt       As Integer = 11
Const Immoiturewt     As Integer = 12
Const Imnetwt         As Integer = 13
Const Ipgrosswt       As Integer = 14
Const Iptarewt        As Integer = 15
Const Ipnetwt         As Integer = 16
Const Ipinvval        As Integer = 17
Const Iwbwt           As Integer = 18
Const Ipjamt          As Integer = 19
Const Icashdisper     As Integer = 20
Const Icashdisamt     As Integer = 21
Const Itradedisper    As Integer = 22
Const Itradedisamt    As Integer = 23
Const IFrtper         As Integer = 24
Const IFrtamt         As Integer = 25
Const IBedper         As Integer = 26
Const IBedamt         As Integer = 27
Const IEdper          As Integer = 28
Const IEdamt          As Integer = 29
Const IHscessper      As Integer = 30
Const IHscessamt      As Integer = 31
Const Icessper        As Integer = 32
Const Icessamt        As Integer = 33
Const ITaxCode        As Integer = 34
Const ITaxper         As Integer = 35
Const ITaxamt         As Integer = 36
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
Dim ISICAAmt        As Integer
Dim iTrashPer        As Integer
Dim IMoisPer        As Integer

'' This Constants Hide by Mr. VinothKumar.S
'Const IothTaxper      As Integer = 35
'Const IothTaxamt      As Integer = 36
'Const IRlyfrtper      As Integer = 37
'Const IRlyfrtamt      As Integer = 38
'Const IInsper         As Integer = 39
'Const IInsamt         As Integer = 40
'Const ICommper        As Integer = 41
'Const ICommAMT        As Integer = 42
'Const ILCper          As Integer = 43
'Const ILCamt          As Integer = 44
''Const IDbamt         As Integer = 45
'Const Icharity        As Integer = 45
''Const Idamage        As Integer = 47
''Const Ishipchrg      As Integer = 48
'Const IOthTaxableAmt  As Integer = 46
'Const IOthers         As Integer = 47
'Const IcustomDuty     As Integer = 48
''Const Ibrkcom        As Integer = 52
'Const ILandedcost     As Integer = 49
'Const IRatekg         As Integer = 50
''--------------
  Dim deltype As String
  Dim rssmodlot As Recordset
  Dim fileno As Integer
  Dim Pg, lcnt As Integer
  Dim RPTV As New Report.ReportView
  
Public Sub OpenConnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure openconnection of Form Lot Bale Entry"
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
iFlag = 0
Select Case Index
Case 13
    Set RS1 = New Recordset
    RS1.Open "Select sum(totlandcost) as totlandcost from rm_lot where arrno='" & Txtfields(96).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
    
    Set rs = New Recordset
    rs.Open "Select lotno,lotdt,lotyear,* from rm_lot where arrno='" & Txtfields(96).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
    If rs.RecordCount > 0 Then
        Screen.MousePointer = 11
        lt = rs("lotno")
        Ltdt = rs("lotdt")
            Dim clsCryRpt As New clsCrystal
            Set clsCryRpt.cryRept = ReceiptNote
            clsCryRpt.CrystalPrint
         
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

            CrystalReport1.SelectionFormula = "{RM_ARRIVAL.DIVCODE}='" & Divcode & "' AND {RM_ARRIVAL.ARRDATE} = cdate('" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "') AND {RM_ARRIVAL.ARRNO}>= " & val(Txtfields(96).Text) & " AND  {RM_ARRIVAL.ARRNO}<=  " & val(Txtfields(96).Text) & ""
            CrystalReport1.ParameterFields(0) = "Date;" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & ""
            CrystalReport1.ParameterFields(1) = "From MRN No.;" & val(Txtfields(96).Text) & ""
            CrystalReport1.ParameterFields(2) = "To MRN No.;" & val(Txtfields(96).Text) & ""

            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            Screen.MousePointer = 0
    End If
    

Case 14
        Call COTTONARRIVALREPORT_Bannari
'        Frame24.Visible = True
'        Frame24.ZOrder 0
'        optBannari.value = True
'        optBannari.SetFocus
'        SSTab1.Enabled = False
'        Command9.Visible = True
'        Buttonframe.Enabled = False

    
Case 0
    If ToValidFinYear(Divcode) = False Then Exit Sub

    Set rsz = New Recordset
    rsz.Open "select max(lotdt) from rm_lot where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please Enter Valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If

    Opt = "add"
    On Error Resume Next
    desc.Caption = "Addition"
    SSTab1.Tab = 0
    dSuppNetWt = 0
    dLandedCost = 0
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    adoPrimaryRS.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,vcatcd,shipchrg, " & _
                      "inwardno,inwarddate,OtherTaxableAmt,WeightFlg,SICAAmt FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    Set AdosecondaryRs = New Recordset
    'adoSecondaryRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,moisture_et,NETWT,LOTDT,lottype,divcode,arrdt,pgrswt,ptarewt,pnetwt,partybaleno,arrno,varcode FROM RM_BALE WHERE 1=2 and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    AdosecondaryRs.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,Trash_et,moisture_et,NETWT,LOTDT,lottype,divcode,arrdt,pgrswt,ptarewt,pnetwt,partybaleno,arrno,varcode FROM RM_BALE WHERE 1=2 and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = AdosecondaryRs
    Call GRIDALIGN
    grddatagrid.Columns(10).Visible = False
    grddatagrid.Columns(11).Visible = False
    grddatagrid.Columns(12).Visible = True
    MaskEdBox1(0).Text = "__/__/____"
    MaskEdBox1(3).Text = pdate
    MaskEdBox1(3).Enabled = True
    Call clear_text
    Txtfields(3).Text = ""
    Text1(0).Text = ""
    Text1(1).Text = ""
    Text1(2).Text = ""
    Txtfields(33).Locked = True
    Txtfields(34).Locked = True
    Txtfields(32).Locked = True
    Txtfields(35).Locked = True
    
    Text3.Text = ""
    Text9.Text = ""
    Frame1.Visible = True
    Frame2.Visible = True
    Frame18.Visible = True
    Label9.Visible = True
    Frame8.Visible = True
    Call ENABLCONTLS
    Call bindcontls
    
    DB.BeginTrans
    Txtfields(25).Locked = True
    AdosecondaryRs.AddNew
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    'BUTTON(9).ToolTipText = "Add Record"
    Txtfields(0).Locked = True
    MaskEdBox1(1).Text = pdate
    grddatagrid.Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(9).Enabled = True
    flg = ""
    
    Txtfields(29).Text = ""
    Txtfields(0).Text = ""
    Txtfields(72).Text = ""
    Txtfields(73).Text = ""
    Txtfields(40).Text = ""
    Txtfields(41).Text = ""
    Txtfields(23).Text = ""
    Txtfields(24).Text = ""
    Txtfields(22).Text = ""
    txtremarks.Text = ""
    Text8.Text = ""
    Txtfields(78).Text = ""
    Txtfields(79).Text = ""
    Txtfields(89).Text = ""
    Txtfields(90).Text = ""
    Txtfields(91).Text = ""
    Txtfields(92).Text = ""
    Txtfields(93).Text = ""
    Txtfields(38).Text = ""
    Txtfields(20).Text = ""
    Txtfields(300).Text = ""
    Txtfields(301).Text = ""
    Txtfields(302).Text = ""
    Txtfields(303).Text = ""
    Txtfields(115).Text = ""
    Text20.Text = ""
    Txtfields(27).Text = ""
    lblterms.Caption = ""
    MaskEdBox1(0).Text = pdate
    MaskEdBox1(1).Text = pdate
    MaskEdBox1(2).Text = pdate
    MaskEdBox1(3).Text = pdate
    DTPicker1.value = pdate
    Txtfields(30).Locked = True
    Txtfields(2).Locked = True
    Text1(1).Locked = True
    Txtfields(79).Locked = True
    Txtfields(37).Locked = True
    Text12.Locked = True
    Call LoadArrival
    BUTTON(9).Enabled = False
Case 1, 2, 4
If ToValidFinYear(Divcode) = False Then Exit Sub
    
    Set rsz = New Recordset
    rsz.Open "select max(lotdt) from rm_lot where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please Enter valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If
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
    Call clear_text
    
    LookUp.clear = True
    If Opt <> "fnd" Then
        LookUp.query = "select distinct arrno""Arrival No."",arrdt""Arrival Date"",SLNAME""Supplier Name"",b.SlCode,inwardno ""Material Inward No."",plotno""Supplier Lot No."" from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND LOTDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and isnull(isswt,0) = 0 and isnull(issbal,0)= 0 and  isnull(opflg,'N')='N' and pjno is null and arrno not in (select arrno from rm_lot" & _
                 " WHERE isnull(isswt,0) <> 0 and isnull(issbal,0) <> 0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and isnull(opflg,'N')='N' ) AND DIVCODE='" & Divcode & "'"   '' AND ARRNO NOT IN (SELECT DISTINCT ARRNO FROM RM_ARRIVAL WHERE LOTTYPE='A' AND ARRDATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "' AND ISNULL(ACCQTY,0)<>0)"
    Else
        LookUp.query = "select distinct arrno""Arrival No."",arrdt""Arrival Date"",SLNAME""Supplier Name"",b.SlCode,inwardno ""Material Inward No."",plotno""Supplier Lot No."" from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND LOTDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and  isnull(opflg,'N')='N' and a.divcode='" & Divcode & "'"
    End If
    LookUp.DefCol = "Supplier"
    LookUp.Caption = "Lot Bale Listing"
    LookUp.ALIGN = "1100,1100,3300,0,1700,1600"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Call Command1_Click
        
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    Txtfields(29).Locked = True
    Txtfields(40).Locked = True
    'Call delmodok_Click
    'Call disablcontls
    Call ENABLCONTLS
    'DTPicker2.Enabled = False
    Combo1.Locked = False
    If Opt = "fnd" Then
        BUTTON(9).Enabled = False
    End If
    If Opt = "mod" Then
        'BUTTON(9).ToolTipText = "Modify"
        StatusBar1.Panels(2).Text = "Select Any Row for Modification"
    ElseIf Opt = "del" Then
        'BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Any Row for Deletion"
    End If
    Txtfields(0).Locked = True
    Txtfields(6).Locked = False
    Txtfields(30).Locked = True
    Text1(1).Locked = True
    Txtfields(2).Locked = True
    Txtfields(79).Locked = True
    Txtfields(37).Locked = True
    Text12.Locked = True
    
    MaskEdBox1(3).Enabled = False '''''''
    Txtfields(28).Enabled = False '''''''
    
   ' txtfields(30).Locked = False
   ' txtfields(2).Locked = False
    
    
Case 2

    'Deletion
    Set rsz = New Recordset
    rsz.Open "select max(lotdt) from rm_lot where divcode='" & Divcode & "'", DB, adOpenStatic
    
    If rsz.RecordCount > 0 Then
        If IsDate(rsz(0)) = True Then
            If rsz(0) > pdate Then
                MsgBox "Please Enter valid Processing Date", vbInformation, head
                Exit Sub
            End If
        End If
    End If

    
    
    Opt = "del"
    Call clear_text
    desc.Caption = "Deletion"
    BUTTON(4).Enabled = False
    Call adddelmod(BUTTON)
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
    Txtfields(30).Locked = True
    Text1(1).Locked = True
    Txtfields(2).Locked = True
    Txtfields(79).Locked = True
    Txtfields(37).Locked = True
    Text12.Locked = True
    Call delmodok_Click
    StatusBar1.Panels(2).Text = "Select Any Row for Deletion"

Case 3
        'Query
        
'Case 4
'        Opt = "query"
'        Frame6.Visible = True
'        Buttonframe.Enabled = False
'        Frame6.ZOrder
'        txtqry.Text = ""
'        txtqry.SetFocus
'        StatusBar1.Panels(2).Text = "Enter Any Lot Number to be Found out"

Case 5
     'first
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "First Record"
     On Error GoTo GoFirstError
''   Call clear_text
     adoPrimaryRS.MoveFirst
     Call bindcontls
     Call disablcontls
     Call GRIDALIGN
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
        Call GRIDALIGN
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
        Call GRIDALIGN
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
        Call GRIDALIGN
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
     Call GRIDALIGN
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

GoLastError:
   MsgBox err.Description, vbInformation, head

Case 9
'     Save
If optSUPPLIER = True Then
    wflg = "S"
Else
    wflg = "M"
End If

'''''''''Bale Weight Checking with Lot weight
If Opt = "add" Or Opt = "mod" Then
    AdosecondaryRs.MoveFirst
    Mtrashwt = 0
    Do While Not AdosecondaryRs.EOF
        MGrwt = MGrwt + AdosecondaryRs("grwt")
        MTareWt = MTareWt + AdosecondaryRs("TareWt")
        Mtrashwt = Mtrashwt + AdosecondaryRs("trash_et")
        MMoiswt = MMoiswt + AdosecondaryRs("moisture_et")
        MNetWt = MNetWt + val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        
        If Opt = "add" Then
            pGRwt = pGRwt + AdosecondaryRs("pgrswt")
            PTrWt = PTrWt + AdosecondaryRs("ptarewt")
            PNTWT = PNTWT + val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
            grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
        ElseIf Opt = "mod" Then
            pGRwt = pGRwt + AdosecondaryRs("pgrswt")
            PTrWt = PTrWt + AdosecondaryRs("ptarewt")
            PNTWT = PNTWT + val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
            grddatagrid.Columns(12).Text = val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
        End If
        AdosecondaryRs.MoveNext
    Loop
    Text5 = Format(MGrwt, "0.000")
    Text6 = Format(MTareWt, "0.000")
    Text7 = Format(MMoiswt, "0.000")
    Text16 = Format(Mtrashwt, "0.000")
    
    Text21 = Format(MNetWt, "0.000")
    
    Text15 = Format(pGRwt, "0.000")
    Text14 = Format(PTrWt, "0.000")
    Text13 = Format(PNTWT, "0.000")
    AdosecondaryRs.MoveFirst
End If

If Opt = "add" Then
    If Trim(Txtfields(30).Text) = "" Then
        MsgBox ("Please Enter Supplier code first"), vbCritical, head
        SSTab1.Tab = 0
        Txtfields(30).Text = ""
        Txtfields(30).SetFocus
        Exit Sub
    End If
    
    If Trim(Txtfields(77).Text) = "" Then
        MsgBox ("Please Enter Godown"), vbCritical, head
        SSTab1.Tab = 0
        Txtfields(77).Text = ""
        Txtfields(77).SetFocus
        Exit Sub
    End If


    If Trim(Txtfields(6).Text) = "" Then
        MsgBox "Please Enter Weight", vbInformation, head
        If SSTab1.Tab = 2 Then
        SSTab1.Tab = 1
        Txtfields(6).Locked = False
        Txtfields(6).SetFocus
        Else
        Txtfields(6).Locked = False
        Txtfields(6).SetFocus
        End If
        Exit Sub
    End If
        
    
    
    If Trim(Txtfields(20).Text) = "" Then
''        MsgBox "Godown Code should not be empty", vbInformation, head
''        If SSTab1.Tab = 2 Then
''        SSTab1.Tab = 1
''        Txtfields(20).Locked = False
''        Txtfields(20).SetFocus
''        Else
''        Txtfields(20).Locked = False
''        Txtfields(20).SetFocus
''        End If
''        Exit Sub
    End If
    If Text5.Text = "" Then
        Text5.Text = 0
    End If
    If Text6.Text = "" Then
        Text6.Text = 0
    End If
    If val(Txtfields(99).Text) <> val(Text5.Text) Then
        MsgBox "Lotwise Mill Gross Weight does not tally with Bale Mill Gross Weight." & vbCrLf & " Sum of Mill Gross Weight Must Equal To " & Format(val(Txtfields(99).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(98).Text) <> val(Text6.Text) Then
        MsgBox "Lotwise Mill Tare Weight does not tally with Bale Mill Tare Weight." & vbCrLf & " Sum of Mill Tare Weight Must Equal To " & Format(val(Txtfields(98).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(104).Text) <> val(Text14.Text) Then
        MsgBox "Lotwise Supplier Tare Weight does not tally with Bale Supplier Tare Weight." & vbCrLf & " Sum of Supplier Tare Weight Must Equal To " & Format(val(Txtfields(104).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(105).Text) <> val(Text15.Text) Then
        MsgBox "Lotwise Supplier Gross Weight does not tally with Bale Supplier Gross Weight." & vbCrLf & " Sum of Supplier Gross Weight Must Equal To " & Format(val(Txtfields(105).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If Txtfields(106).Text = "" Then
        MsgBox "Please Enter VAT Category", vbInformation, head
        Txtfields(106).SetFocus
        Exit Sub
    End If
    If val(Txtfields(115).Text) = 0 Then
        MsgBox "Please Enter Supplier Invoice Value", vbInformation, head
        Txtfields(115).SetFocus
        Exit Sub
    End If
End If
 If Opt = "add" Then
        PartyWeight = 0
        PartyWeight = val(GetText(spdVar, Ipgrosswt, 1))
        If val(PartyWeight) < val(Text15.Text) Then
'            MsgBox "Please Check Party Gross Weight ", vbInformation, head
'            MsgBox "Lotwise Party Gross Wt. does not tally with Balewise Party Gross Wt.", vbInformation, head
'            Screen.MousePointer = 0
'            SSTab1.Tab = 2
'            Exit Sub
        End If
       On Error GoTo errn
       Set rsslot = New Recordset
       rsslot.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,trash_et,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,TAX_CHOICE,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dUTYcLAIMABLE,DISCOUNTFLG," & _
                    " isnull(DutyPer,0) as DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,FAVAOURABLEWGT,LotRecType,SICAAmt,Trash_Et FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
       Dim f As Integer
       For f = 1 To spdVar.MaxRows
            rsslot.AddNew
            rsslot("Divcode") = Divcode
            rsslot("rg23a") = Null
            rsslot("arrno") = Txtfields(96).Text
            rsslot("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
'            rsslot("inwardno") = txtFields(108).Text
'            rsslot("inwarddate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            If Txtfields(108).Text <> "" Then
                rsslot("inwardno") = Trim(Txtfields(108).Text)
            End If
            If MaskEdBox1(5).Text <> "__/__/____" And MaskEdBox1(5).Text <> "" Then
                rsslot("inwarddate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            End If
            rsslot("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            rsslot("LOTYEAR") = Year(yfdate)
            rsslot("REJFLG") = "N"
            rsslot("vcatcd") = Txtfields(106).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 rsslot("billdt") = Null
            Else
                 rsslot("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            rsslot("bblflg") = GetText(spdVar, Iunit, f)
            rsslot("lotno") = GetText(spdVar, ILotNo, f)
            rsslot("rateunit") = Trim(Txtfields(110).Text)
            If optDCyes = True Then rsslot!dutyclaimable = "Y" Else rsslot!dutyclaimable = "N"
            If optAfter = True Then rsslot!discountFlg = "Y" Else rsslot!discountFlg = "N"
            
            Set rsz1 = New Recordset
            rsz1.Open "select isnull(plotno,'')plotno from rm_arrival where varcode='" & GetText(spdVar, Ivarcode, f) & "' and ratecy=" & val(GetText(spdVar, Icandyrate, f)) & " and quantity=" & val(GetText(spdVar, iQty, f)) & " and netwt=" & val(GetText(spdVar, Imnetwt, f)) & " and arrno=" & val(Txtfields(96).Text) & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            
            If rsz1.RecordCount > 0 Then
                PlotNo = rsz1(0)
            Else
                PlotNo = ""
            End If
            
            rsslot("plotno") = PlotNo
            rsslot("LOTTYPE") = "A"
            rsslot("LOTRECTYPE") = "O"
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, Ivarcode, f) & "'", DB, adOpenStatic
            
            rsslot("CATCD") = rscc("CATCD")
            
            rsslot("PTYWGT") = val(GetText(spdVar, Imnetwt, f))
            rsslot("pgrswt") = val(GetText(spdVar, Ipgrosswt, f))
            rsslot("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            rsslot("pnetwt") = val(GetText(spdVar, Ipnetwt, f))
            rsslot("pinvval") = val(GetText(spdVar, Ipinvval, f))
            rsslot("weighbridgewt") = val(GetText(spdVar, Iwbwt, f))
            rsslot("supcd") = Txtfields(30).Text
            rsslot("brkcd") = Txtfields(37).Text
            rsslot("COLORCODE") = Txtfields(40).Text
            rsslot("bales") = val(GetText(spdVar, iQty, f))
            rsslot("grswgt") = val(GetText(spdVar, Imgrosswt, f))
            rsslot("tarewt") = val(GetText(spdVar, Imtarewt, f))
            rsslot("trash_et") = val(GetText(spdVar, iTrashPer, f))
            rsslot("MOISTURE_ET") = val(GetText(spdVar, Immoiturewt, f))
            rsslot("netwt") = val(GetText(spdVar, Imnetwt, f))
            rsslot("billno") = Txtfields(3).Text
            rsslot("sampwt") = IIf(Txtfields(4).Text = "", 0, Txtfields(4).Text)
            rsslot("pjamt") = val(GetText(spdVar, Ipjamt, f))
            rsslot("odint") = IIf(Txtfields(9).Text = "", 0, Txtfields(9).Text)
            rsslot("godown") = IIf(Txtfields(77).Text = "", "", Txtfields(77).Text)
            rsslot("opflg") = "N"
            rsslot("awt_flg") = "Y"
            
            rsslot("ldgulg") = IIf(Txtfields(12).Text = "", 0, Txtfields(12).Text)
            rsslot("varcode") = GetText(spdVar, Ivarcode, f)
            rsslot("areacd") = CStr(Txtfields(38).Text)
            rsslot("ratecy") = val(GetText(spdVar, Icandyrate, f))
            
            ''rsslot("freight") = IIf(txtfields(10).Text = "", 0, txtfields(10).Text)
            rsslot("cashdisper") = val(GetText(spdVar, Icashdisper, f))
            rsslot("cashdisamt") = val(GetText(spdVar, Icashdisamt, f))
            rsslot("tradedisper") = val(GetText(spdVar, Itradedisper, f))
            rsslot("tradedisamt") = val(GetText(spdVar, Itradedisamt, f))
            rsslot("lrfrtper") = val(GetText(spdVar, IFrtper, f))
            rsslot("lrfrtamt") = val(GetText(spdVar, IFrtamt, f))
            rsslot("bedpeR") = val(GetText(spdVar, IBedper, f))
            rsslot("bedamt") = val(GetText(spdVar, IBedamt, f))
            rsslot("sedpeR") = val(GetText(spdVar, IEdper, f))
            rsslot("sedamt") = val(GetText(spdVar, IEdamt, f))
            rsslot("aedper") = val(GetText(spdVar, IHscessper, f))
            rsslot("aedamt") = val(GetText(spdVar, IHscessamt, f))
            rsslot("cessper") = val(GetText(spdVar, Icessper, f))
            rsslot("cessamt") = val(GetText(spdVar, Icessamt, f))
            rsslot("Tax_code") = GetText(spdVar, ITaxCode, f)
            rsslot("vatper") = val(GetText(spdVar, ITaxper, f))
            rsslot("vatamt") = val(GetText(spdVar, ITaxamt, f))
            Set rs = New Recordset
            rs.Open "select AddtaxRequired from rm_param", DB, adOpenStatic
            If rs(0) = "Y" Then
                rsslot("ADDTaxcode") = GetText(spdVar, IATaxCode, f)
                rsslot("ADDTAXper") = val(GetText(spdVar, IATaxper, f))
                rsslot("ADDTAXAMOUNT") = val(GetText(spdVar, IATaxamt, f))
            Else
                rsslot("ADDTaxcode") = ""
                rsslot("ADDTAXper") = val(0)
                rsslot("ADDTAXAMOUNT") = val(0)
            End If
            
            rsslot("othtaxper") = val(GetText(spdVar, IOthtaxPer, f))
            rsslot("othtaxamt") = val(GetText(spdVar, IothTaxamt, f))
            rsslot("rlyfrtper") = val(GetText(spdVar, IRlyfrtper, f))
            rsslot("rlyfrtamt") = val(GetText(spdVar, IRlyfrtamt, f))
            rsslot("insper") = val(GetText(spdVar, IInsper, f))
            rsslot("insamt") = val(GetText(spdVar, IInsamt, f))
            rsslot("commper") = val(GetText(spdVar, ICommper, f))
            rsslot("commamt") = val(GetText(spdVar, ICommAMT, f))
            rsslot("Lcintper") = val(GetText(spdVar, ILCper, f))
            rsslot("lcintamt") = val(GetText(spdVar, ILCamt, f))
            rsslot("dnamt1") = val(GetText(spdVar, IDbamt, f))
            rsslot("charityamt") = val(GetText(spdVar, Icharity, f))
            rsslot("Damageamt") = val(GetText(spdVar, iDamage, f))
            rsslot("clearanceamt") = val(GetText(spdVar, Iclear, f))
            rsslot("othersamt") = val(GetText(spdVar, IOthers, f))
            rsslot("otherTaxableamt") = val(GetText(spdVar, IOthTaxableAmt, f))
            rsslot("customsdutyamt") = val(GetText(spdVar, IcustomDuty, f))
            rsslot("brkcom") = val(GetText(spdVar, Ibrkcom, f))
            rsslot("totlandcost") = val(GetText(spdVar, ILandedcost, f))
            rsslot("ratekg") = val(GetText(spdVar, IRatekg, f))
            rsslot("shipchrg") = val(Txtfields(107).Text)
            rsslot("totlandcost") = val(GetText(spdVar, ILandedcost, f))
            rsslot("ratekg") = val(GetText(spdVar, IRatekg, f))
            rsslot("SICAAmt") = val(GetText(spdVar, ISICAAmt, f))
            
'            rsslot("DutyPer") = val(TXTFIELDS(109).Text)
            
            If val(Txtfields(300).Text) = 0 Then
                rsslot("PJTC") = Null
            Else
                rsslot("PJTC") = val(Txtfields(300).Text)
            End If
            If Trim(Txtfields(302).Text) = "" Then
                rsslot("ptype") = Null
            Else
                rsslot("ptype") = Txtfields(302).Text
            End If
            If Option1.value = True Then
                rsslot("TAX_CHOICE") = "SINGLE"
            End If
            If Option2.value = True Then
                rsslot("TAX_CHOICE") = "COMMON"
            End If
            
            If optMILL = True Then
                 rsslot("FAVAOURABLEWGT") = val(GetText(spdVar, Imnetwt, f))
            Else
                 rsslot("FAVAOURABLEWGT") = val(GetText(spdVar, Ipnetwt, f))
            End If
            
            DB.Execute ("update rm_arrival set LOTRECQTY=" & rsslot("BALES") & ",lotno=" & rsslot("LOTNO") & ",catcd='" & rsslot("CATCD") & "',lotdt='" & Format(rsslot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & Txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rsslot("VARCODE") & "'")
       Next

       rsslot.UpdateBatch adAffectAllChapters
       ''adoPrimaryRS.UpdateBatch adAffectAllChapters
            If optMILL = True Then
                strSQL = "update rm_lot set WeightFlg ='" & wflg & "', dutyper=" & val(Txtfields(109).Text) & ",Lotrectype='O' where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                DB.Execute (strSQL)
            Else
                strSQL = "update rm_lot set WeightFlg ='" & wflg & "', dutyper=" & val(Txtfields(109).Text) & ",Lotrectype='O' where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'"
                DB.Execute (strSQL)
            End If
       
       AdosecondaryRs.MoveFirst
       Do While Not AdosecondaryRs.EOF
       If grddatagrid.Columns(2).Text = "" Then
            AdosecondaryRs.Delete
       End If
            AdosecondaryRs.MoveNext
       Loop
       
       AdosecondaryRs.MoveFirst
       
       Do While Not AdosecondaryRs.EOF

            AdosecondaryRs("Lotno") = grddatagrid.Columns("LOTNO").Text
            AdosecondaryRs("lotdt") = Format(grddatagrid.Columns("LOTDT").Text, "yyyy-mm-dd")
            AdosecondaryRs("VARCODE") = grddatagrid.Columns("VARCODE").Text
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & AdosecondaryRs("VARCODE") & "'", DB, adOpenStatic
            AdosecondaryRs("catcd") = rscc("catcd")
            AdosecondaryRs("BALENO") = grddatagrid.Columns(2).Text
            AdosecondaryRs("GRWT") = val(grddatagrid.Columns(3).Text)
            AdosecondaryRs("TAREWT") = val(grddatagrid.Columns(4).Text)
            'adoSecondaryRS("moisture_et") = val(grddatagrid.Columns(6).Text)
            AdosecondaryRs("trash_et") = val(grddatagrid.Columns(5).Text)
            AdosecondaryRs("moisture_et") = val(grddatagrid.Columns(6).Text)
            AdosecondaryRs("NETWT") = val(grddatagrid.Columns(7).Text)
            AdosecondaryRs("LOTTYPE") = "A"
            AdosecondaryRs("divcode") = Divcode
            AdosecondaryRs("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            AdosecondaryRs("ARRNO") = Txtfields(96).Text
            AdosecondaryRs("pgrswt") = val(grddatagrid.Columns(12).Text)
            AdosecondaryRs("ptarewt") = val(grddatagrid.Columns(13).Text)
            AdosecondaryRs("pnetwt") = val(grddatagrid.Columns(14).Text)
            If Trim(grddatagrid.Columns(14).Text) = "" Or val(grddatagrid.Columns(15).Text) = 0 Then
                AdosecondaryRs("partybaleno") = grddatagrid.Columns(2).Text
            Else
                AdosecondaryRs("partybaleno") = grddatagrid.Columns(15).Text
            End If

            
'            adoSecondaryRS.UpdateBatch adAffectAllChapters
            AdosecondaryRs.MoveNext
       Loop
        AdosecondaryRs.MoveFirst
        
        AdosecondaryRs.UpdateBatch adAffectAllChapters
        
        AdosecondaryRs.MoveFirst
        Do While Not AdosecondaryRs.EOF
        If optMILL = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grddatagrid.Columns(7).Text) & " where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        Else
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grddatagrid.Columns(14).Text) & " where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        End If
        AdosecondaryRs.MoveNext
        Loop
        AdosecondaryRs.MoveFirst
        
    
    Dim thistc As Integer
    Dim thisgl As String
    Dim thispjno As Integer
    thistc = 0
    thisgl = ""
    Set rs = New Recordset
    rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & Txtfields(76).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Trim(Txtfields(300).Text) = "" Or IsNull(Txtfields(300).Text) = True Then
        thistc = 0
    Else
        thistc = val(Txtfields(300).Text)
    End If
       
       DB.CommitTrans
       Dim strNo As String
       Dim i As Integer
       strNo = ""
       If spdVar.MaxRows = 1 Then
            strNo = GetText(spdVar, 1, 1)
       Else
            For i = 1 To spdVar.MaxRows Step 1
                strNo = strNo + ", " + GetText(spdVar, 1, i)
            Next
            strNo = Mid(strNo, 2)
       End If
       
       
       
       MsgBox "Record(s) Saved!", vbInformation, head
     
       MsgBox "Lot No. " & strNo, vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
End If
    
If Opt = "mod" Then
        If Trim(Txtfields(30).Text) = "" Then
            MsgBox ("Please Enter Count Code First"), vbCritical, head
            SSTab1.Tab = 0
            Txtfields(30).Text = ""
            Txtfields(30).SetFocus
            Exit Sub
        End If
        
        If Trim(Txtfields(77).Text) = "" Then
            MsgBox ("Please Enter Godown"), vbCritical, head
            SSTab1.Tab = 0
            Txtfields(77).Text = ""
            Txtfields(77).SetFocus
            Exit Sub
        End If
'        If val(Text5.Text) <> val(txtfields(99).Text) Then
'            MsgBox "Mill Gross Weight must be Equal to " & Format(val(txtfields(99).Text), "0.000"), vbInformation, head
'            Exit Sub
'        End If
'        If val(Text6.Text) <> val(txtfields(98).Text) Then
'            MsgBox "Mill Tare Weight must be Equal to " & Format(val(txtfields(98).Text), "0.000"), vbInformation, head
'            Exit Sub
'        End If
'        If val(Text11.Text) <> val(txtfields(97).Text) Then
'            MsgBox "Mill Nett Weight must be Equal to " & Format(val(txtfields(97).Text), "0.000"), vbInformation, head
'            Exit Sub
'        End If
        
    If val(Txtfields(99).Text) <> val(Text5.Text) Then
        MsgBox "Lotwise Mill Gross Weight does not tally with Bale Mill Gross Weight." & vbCrLf & " Sum of Mill Gross Weight Must Equal To " & Format(val(Txtfields(99).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(98).Text) <> val(Text6.Text) Then
        MsgBox "Lotwise Mill Tare Weight does not tally with Bale Mill Tare Weight." & vbCrLf & " Sum of Mill Tare Weight Must Equal To " & Format(val(Txtfields(98).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(104).Text) <> val(Text14.Text) Then
        MsgBox "Lotwise Supplier Tare Weight does not tally with Bale Supplier Tare Weight." & vbCrLf & " Sum of Supplier Tare Weight Must Equal To " & Format(val(Txtfields(104).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(Txtfields(105).Text) <> val(Text15.Text) Then
        MsgBox "Lotwise Supplier Gross Weight does not tally with Bale Supplier Gross Weight." & vbCrLf & " Sum of Supplier Gross Weight Must Equal To " & Format(val(Txtfields(105).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
        
        If Txtfields(106).Text = "" Then
            MsgBox "Please Enter VAT Category", vbInformation, head
            Txtfields(106).SetFocus
            Exit Sub
        End If
        If Txtfields(115).Text = "" Then
            MsgBox "Please Enter Supplier Invoice Value", vbInformation, head
            Txtfields(115).SetFocus
            Exit Sub
        End If
        tmp = Opt
        Opt = ""
        

        DB.BeginTrans

       For f = 1 To spdVar.MaxRows
            Set RS1 = New Recordset
            RS1.Open "Select getdate() 'SysDt'", DB, adOpenDynamic
            rssmodlot("modusrid") = usrid
            rssmodlot("moddate").value = Format(RS1!SysDt, "YYYY/MM/DD")
            rssmodlot("Divcode") = Divcode
            rssmodlot("rg23a") = Null
            rssmodlot("arrno") = Txtfields(96).Text
            'rsslot("inwarno") = txtFields(108).Text
            If Txtfields(108).Text <> "" Then
                rssmodlot("inwardno") = Trim(Txtfields(108).Text)
            End If
            rssmodlot("vcatcd") = Txtfields(106).Text
            If MaskEdBox1(4).Text <> "__/__/____" Then
                rssmodlot("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            ElseIf MaskEdBox1(4).Text = "__/__/____" Then
                rssmodlot("arrdt") = Null
            End If
            If MaskEdBox1(5).Text <> "__/__/____" Then
                rssmodlot("inwarddate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            ElseIf MaskEdBox1(5).Text = "__/__/____" Then
                rssmodlot("inwarddate") = Null
            End If
            rssmodlot("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            rssmodlot("LOTYEAR") = Year(yfdate)
            rssmodlot("REJFLG") = "N"
            If MaskEdBox1(2).Text = "__/__/____" Then
                 rssmodlot("billdt") = Null
            Else
                 rssmodlot("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            rssmodlot("bblflg") = GetText(spdVar, Iunit, f)
            rssmodlot("lotno") = GetText(spdVar, ILotNo, f)
            rssmodlot("LOTTYPE") = "A"
            
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, Ivarcode, f) & "'", DB, adOpenStatic
            rssmodlot("CATCD") = rscc("CATCD")
            
            rssmodlot("PTYWGT") = val(GetText(spdVar, Imnetwt, f))
            rssmodlot("pgrswt") = val(GetText(spdVar, Ipgrosswt, f))
            rssmodlot("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            rssmodlot("pnetwt") = val(GetText(spdVar, Ipnetwt, f))
            rssmodlot("pinvval") = val(GetText(spdVar, Ipinvval, f))
            rssmodlot("weighbridgewt") = val(GetText(spdVar, Iwbwt, f))
            rssmodlot("supcd") = Txtfields(30).Text
            rssmodlot("brkcd") = Txtfields(37).Text
            rssmodlot("COLORCODE") = Txtfields(40).Text
            rssmodlot("bales") = val(GetText(spdVar, iQty, f))
            rssmodlot("grswgt") = val(GetText(spdVar, Imgrosswt, f))
            rssmodlot("tarewt") = val(GetText(spdVar, Imtarewt, f))
            rssmodlot("MOISTURE_ET") = val(GetText(spdVar, Immoiturewt, f))
            rssmodlot("netwt") = val(GetText(spdVar, Imnetwt, f))
            rssmodlot("billno") = Txtfields(3).Text
            rssmodlot("sampwt") = IIf(Txtfields(4).Text = "", 0, Txtfields(4).Text)
            rssmodlot("pjamt") = GetText(spdVar, Ipjamt, f)
            rssmodlot("odint") = IIf(Txtfields(9).Text = "", 0, Txtfields(9).Text)
            rssmodlot("godown") = IIf(Txtfields(77).Text = "", "", Txtfields(77).Text)
            rssmodlot("opflg") = "N"
            rssmodlot("ldgulg") = IIf(Txtfields(12).Text = "", 0, Txtfields(12).Text)
            rssmodlot("varcode") = GetText(spdVar, Ivarcode, f)
            rssmodlot("areacd") = CStr(Txtfields(38).Text)
            
            
            rssmodlot("cashdisper") = val(GetText(spdVar, Icashdisper, f))
            rssmodlot("cashdisamt") = val(GetText(spdVar, Icashdisamt, f))
            rssmodlot("tradedisper") = val(GetText(spdVar, Itradedisper, f))
            rssmodlot("tradedisamt") = val(GetText(spdVar, Itradedisamt, f))
            rssmodlot("lrfrtper") = val(GetText(spdVar, IFrtper, f))
            rssmodlot("lrfrtamt") = val(GetText(spdVar, IFrtamt, f))
            rssmodlot("bedpeR") = val(GetText(spdVar, IBedper, f))
            rssmodlot("bedamt") = val(GetText(spdVar, IBedamt, f))
            rssmodlot("sedpeR") = val(GetText(spdVar, IEdper, f))
            rssmodlot("sedamt") = val(GetText(spdVar, IEdamt, f))
            rssmodlot("aedper") = val(GetText(spdVar, IHscessper, f))
            rssmodlot("aedamt") = val(GetText(spdVar, IHscessamt, f))
            rssmodlot("cessper") = val(GetText(spdVar, Icessper, f))
            rssmodlot("cessamt") = val(GetText(spdVar, Icessamt, f))
            rssmodlot("Tax_code") = GetText(spdVar, ITaxCode, f)
            rssmodlot("vatper") = val(GetText(spdVar, ITaxper, f))
            rssmodlot("vatamt") = val(GetText(spdVar, ITaxamt, f))
            rssmodlot("othtaxper") = val(GetText(spdVar, IOthtaxPer, f))
            rssmodlot("othtaxamt") = val(GetText(spdVar, IothTaxamt, f))
            rssmodlot("rlyfrtper") = val(GetText(spdVar, IRlyfrtper, f))
            rssmodlot("rlyfrtamt") = val(GetText(spdVar, IRlyfrtamt, f))
            rssmodlot("insper") = val(GetText(spdVar, IInsper, f))
            rssmodlot("insamt") = val(GetText(spdVar, IInsamt, f))
            rssmodlot("commper") = val(GetText(spdVar, ICommper, f))
            rssmodlot("commamt") = val(GetText(spdVar, ICommAMT, f))
            rssmodlot("Lcintper") = val(GetText(spdVar, ILCper, f))
            rssmodlot("lcintamt") = val(GetText(spdVar, ILCamt, f))
            rssmodlot("dnamt1") = val(GetText(spdVar, IDbamt, f))
            rssmodlot("charityamt") = val(GetText(spdVar, Icharity, f))
            rssmodlot("Damageamt") = val(GetText(spdVar, iDamage, f))
            rssmodlot("clearanceamt") = val(GetText(spdVar, Iclear, f))
            rssmodlot("othersamt") = val(GetText(spdVar, IOthers, f))
            rssmodlot("customsdutyamt") = val(GetText(spdVar, IcustomDuty, f))
            rssmodlot("brkcom") = val(GetText(spdVar, Ibrkcom, f))
            rssmodlot("totlandcost") = val(GetText(spdVar, ILandedcost, f))
            rssmodlot("ratekg") = (GetText(spdVar, IRatekg, f))
            rssmodlot("shipchrg") = val(Txtfields(107).Text)
            rssmodlot("othertaxableAmt") = val(GetText(spdVar, IOthTaxableAmt, f))
            If Option1.value = True Then
                rssmodlot("TAX_CHOICE") = "SINGLE"
            End If
            If Option2.value = True Then
                rssmodlot("TAX_CHOICE") = "COMMON"
            End If
            If optMILL = True Then
                 rssmodlot("FAVAOURABLEWGT") = val(GetText(spdVar, Imnetwt, f))
            Else
                 rssmodlot("FAVAOURABLEWGT") = val(GetText(spdVar, Ipnetwt, f))
            End If
            rssmodlot("SICAAmt") = val(GetText(spdVar, ISICAAmt, f))
            strSQL = "update rm_lot set WeightFlg ='" & wflg & "' where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "'"
            DB.Execute (strSQL)
           If UCase(CustID) = "SOUTHERN" Then
               DB.Execute ("update rm_arrival set grosswt = " & rssmodlot("grswgt") & ",Tarewt = " & rssmodlot("tarewt") & ",Netwt = " & rssmodlot("netwt") & ", LOTRECQTY=" & rssmodlot("BALES") & ",lotno=" & rssmodlot("LOTNO") & ",catcd='" & rssmodlot("CATCD") & "',lotdt='" & Format(rssmodlot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & Txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "'")
           Else
              DB.Execute ("update rm_arrival set LOTRECQTY=" & rssmodlot("BALES") & ",lotno=" & rssmodlot("LOTNO") & ",catcd='" & rssmodlot("CATCD") & "',lotdt='" & Format(rssmodlot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & Txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "'")
           End If
        Next

        rssmodlot.UpdateBatch adAffectAllChapters

       Set rssm = New Recordset
       'rssm.Open "select * from rm_bale where arrno = '" & txtfields(96).Text & "' and arrdt =  '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and lottype = 'A' and isqty is null ORDER BY LOTNO,BALENO", DB, adOpenStatic, adLockBatchOptimistic
        rssm.Open "select * from rm_bale where arrno = '" & Txtfields(96).Text & "' and lottype = 'A' and divcode='" & Divcode & "' and isqty is null ORDER BY LOTNO,BALENO", DB, adOpenStatic, adLockBatchOptimistic

      '' DB.Execute "delete from  RM_BALE WHERE arrno = '" & txtfields(96).Text & "' and arrdt =  '" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and lottype = 'A' and isqty is null "

       
       rssm.MoveFirst
       AdosecondaryRs.MoveFirst
       Do While Not rssm.EOF
            'rssm("Lotno") = GetText(spdVar, ILotNo, f)
            If grddatagrid.Row <> -1 Then
                rssm("Lotno") = grddatagrid.Columns("LOTNO").Text
                rssm("lotdt") = Format(grddatagrid.Columns("LOTDT").Text, "yyyy-mm-dd")
                rssm("VARCODE") = grddatagrid.Columns("VARCODE").Text
                Set rscc = New Recordset
                rscc.Open "select catcd from rm_var where varcode='" & rssm("VARCODE") & "'", DB, adOpenStatic
                rssm("catcd") = rscc("catcd")
                rssm("BALENO") = grddatagrid.Columns(2).Text
                rssm("GRWT") = val(grddatagrid.Columns(3).Text)
                rssm("TAREWT") = val(grddatagrid.Columns(4).Text)
                rssm("trash_et") = val(grddatagrid.Columns(5).Text)
                rssm("moisture_et") = val(grddatagrid.Columns(6).Text)
                rssm("NETWT") = val(grddatagrid.Columns(7).Text)
                rssm("LOTTYPE") = "A"
                rssm("divcode") = Divcode
                rssm("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
                rssm("ARRNO") = Txtfields(96).Text
                rssm("pgrswt") = val(grddatagrid.Columns(10).Text)
                rssm("ptarewt") = val(grddatagrid.Columns(11).Text)
                rssm("pnetwt") = val(grddatagrid.Columns(12).Text)
                
                If Trim(grddatagrid.Columns(15).Text) = "" Or val(grddatagrid.Columns(15).Text) = 0 Then
                    rssm("partybaleno") = grddatagrid.Columns(2).Text
                Else
                    rssm("partybaleno") = grddatagrid.Columns(15).Text
                End If
                AdosecondaryRs.MoveNext
                
            End If
            rssm.MoveNext
       Loop
'       rssm.MoveFirst

       rssm.UpdateBatch adAffectAllChapters
       
        rssm.MoveFirst
        Do While Not rssm.EOF
        If optMILL = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(rssm("NETWT")) & " where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(rssm("baleno")) & " AND lotno =" & rssm("lotno") & " and lotdt = '" & Format(rssm("lotdt"), "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        Else
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(rssm("PNETWT")) & " where arrno='" & Txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(rssm("baleno")) & " AND lotno =" & rssm("lotno") & " and lotdt = '" & Format(rssm("lotdt"), "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        End If
        rssm.MoveNext
        Loop
        rssm.MoveFirst
        
       Opt = tmp
       'update to the arrival table simultaneously BY D.PARIMALAM (Referred by Mr.Kannan)
       
      
    Set frs = New Recordset
    frs.Open "select fainstal from rm_param", DB
       DB.CommitTrans
       MsgBox "Record(s) Modified", vbInformation, head
       Frame7.Enabled = True
       Frame1.Enabled = True
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
  End If

 If Opt = "del" Then
 Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
        DB.BeginTrans
        If Opt = "del" Then
                On Error GoTo del
                Set rsa = New Recordset
                rsa.Open "select quantity from rm_arrival where arrno = " & adoPrimaryRS("arrno") & " and ARRDATE= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'", DB, adOpenStatic
                If rsa.RecordCount > 0 Then
                     oldqty = rsa(0)
                End If
                BUTTON(9).ToolTipText = "Save"
                Opt = ""
        End If

        Set rsa = New Recordset
        DB.Execute "Update rm_arrival set accqty=0,rejqty=0,returnqty=0,accallowqty=0,lotrecqty=Null,passed=null,passdt=Null,lotno=NULL,LOTDT=NULL,LOTTYPE=NULL,REMARKS=NULL  where divcode='" & Divcode & "' and arrno = " & adoPrimaryRS("arrno") & " and ARRDATE= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'"
        strSQL = "delete from rm_BALE where  divcode='" & Divcode & "' and lottype = 'A' and  arrno = " & adoPrimaryRS("arrno") & " and ARRDT= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'"
        DB.Execute (strSQL)
        DB.Execute ("delete from rm_LOT where  divcode='" & Divcode & "' and lottype = 'A' and arrno = " & adoPrimaryRS("arrno") & " and ARRDT= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'")
        DB.CommitTrans
        MsgBox "Record(s) Deleted!", vbInformation, head
        Frame7.Enabled = True
        Frame1.Enabled = True
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
        BUTTON(4).Enabled = True
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
 End If
    
    'Return to query mode
    Call clear_text
     Call QUERY_MODE
    desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
    Screen.MousePointer = 0
    Opt = ""
    'calling newform_cancel procedure from module (also for save)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    Exit Sub
GOPRIMERROR:
 If err = -2147217900 Then
   MsgBox "Division Code Already Exists ", vbInformation, head
   GoTo gocancel
   End If
del:

If err.Number = -2147217900 Then
    MsgBox "This Division code cannot be deleted as dependencies exist", vbInformation, head
    BUTTON(9).ToolTipText = "Save"
    GoTo gocancel
    Exit Sub
End If


errn:
    If err.Number = "-2147217900" Then
'        MsgBox ("Select the correct count code"), vbInformation, head
'        SSTab1.Tab = 0
'        txtfields(30).Text = ""
'        txtfields(30).SetFocus
        'Call BUTTON_Click(10)
        Exit Sub
    End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    desc.Caption = "Query"
    BUTTON(4).Enabled = True
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
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = ""
    Call clear_text
    Screen.MousePointer = 0
    'calling cancl procedure from module
    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    Frame7.Visible = True
    Frame7.Enabled = True
    Frame1.Enabled = True
    Call QUERY_MODE
    BUTTON(0).SetFocus ''''''''''
Case 11
    'EXIT
   ' If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
Case 12
        Frame19.Visible = True
        Frame19.ZOrder 0
        Option3.value = True
        Option3.SetFocus
        SSTab1.Enabled = False
'        UserFooter1.Visible = True
'        UserFooter1.Load
        UserFooter1.ClearFooter
        Command8.Visible = True
        Buttonframe.Enabled = False
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_Click of Form WLotbale", vbInformation, head
    DB.RollbackTrans
End Sub

Private Sub ChkVAT_Validate(Cancel As Boolean)
'    If ChkVAT.Value Then
'        Dim Sl_StateCode As String
'        Dim Div_StateCode As String
'        Dim ChkRs As Recordset
'        Set ChkRs = New Recordset
'        ChkRs.Open "Select STATE_CODE from fa_slmas where STATE_CODE='" & Trim(txtFields(30).Text) & "'", DB
'        If Not ChkRs.EOF Then Sl_StateCode = ChkRs!State_Code
'        Set ChkRs = New Recordset
'        ChkRs.Open "Select STATE_CODE from PP_DivMas where DivCode='" & Divcode & "'", DB
'        If Not ChkRs.EOF Then Div_StateCode = ChkRs!State_Code
'        ChkRs.Close
'        Set ChkRs = Nothing
'        If Sl_StateCode = Div_StateCode Then
'            MsgBox "VAT is Not Eligible for this Supplier ", vbInformation, head
'            Exit Sub
'        End If
'    End If
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
    Txtfields(22).Locked = True
    Txtfields(23).Locked = True
    Txtfields(24).Locked = True
    Txtfields(25).Locked = True
    
    Txtfields(30).Locked = True
    Text1(1).Locked = True
    Txtfields(2).Locked = True
    Txtfields(79).Locked = True
    Txtfields(37).Locked = True
    Text12.Locked = True
    
    grddatagrid.Enabled = True
Else
    Call disablcontls
End If
     'To extract the transaction  code
    'a = DataGrid1.Columns(1).Text
    'f = DataGrid1.Columns(3).Text
    f = LookUp.Fields(1)
    oldarrdt = Format(f, "yyyy-mm-dd")
    'To extract the document number
    'b = DataGrid1.Columns(2).Text
    'g = DataGrid1.Columns(2).Text
    f = LookUp.Fields(1)
    g = LookUp.Fields(0)
    oldarrno = g
    
    Call delmodproc(CStr(f), CStr(g))
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Form WLotbale", vbInformation, head
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Frame9.Visible = False
Frame7.Visible = True
BUTTON_Click (10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command2_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error

    Set adoPrimaryRS = New Recordset
    '''adoprimaryrs.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP FROM RM_LOT WHERE (isswt is null  or isswt =0)and (issbal is null or issbal =0) and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and opflg='N'", db, adOpenStatic, adLockOptimistic
    
    ''Here query changed  to Modify the Arrival detail After issue For Final Bill value Entry
    ''So we gives provision to modify the bill value and  Tax value ONLY After the issue that lot
    ''Before issue they can modify the data which is entered in arrival details
    ''-----------------------Old query-----------------
    '''adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,modusrid,moddate,COLORCODE,pjtc,pjno,pjdt,pgrswt,ptarewt,pnetwt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt FROM RM_LOT WHERE (isswt is null  or isswt =0)and (issbal is null or issbal =0) and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and opflg='N' order by lotdt,lotno", DB, adOpenStatic, adLockOptimistic
    ''-------------------------------------------------
    ''adoPrimaryRS.Open "SELECT DIVCODE,CATCD,LOTNO,LOTDT,LOTTYPE,ARRNO,ARRDT,VARCODE,supcd,brkcd,AREACD,CNTCODE,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,DNAMT1,DNAMT2,TAREWT,SAMPWT,NETWT,BBLFLG,BALES,RATEKG,rebate,GODOWN,LGROUP,modusrid,moddate,COLORCODE,pjtc,pjno,pjdt,pgrswt,ptarewt,pnetwt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,isnull(issbal,0) as issbal,isnull(isswt,0) as isswt FROM RM_LOT WHERE  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and opflg='N' order by lotdt,lotno", DB, adOpenStatic, adLockOptimistic
     adoPrimaryRS.Open "SELECT  A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,cOLORCODE,awt_flg,PJTC,PTYPE,vcatcd,pinvval,weighbridgewt,inwardno,inwarddate,OtherTaxableAmt,WeightFlg FROM RM_LOT A WHERE  LOTTYPE = 'A' and  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear=" & Year(yfdate) & " Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
    
        If adoPrimaryRS.RecordCount <> 0 Then
            Set AdosecondaryRs = New Recordset
            AdosecondaryRs.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,arrdt,pgrswt,ptarewt,pnetwt,partybaleno,arrno,Favourablewgt  FROM RM_BALE WHERE lottype = 'A' ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            MsgBox "All Lots are Used. Deletion/Modification Not allowed!", vbInformation, head
            Opt = ""
            Call QUERY_MODE
            BUTTON(0).Enabled = True
            BUTTON(1).Enabled = True
            BUTTON(2).Enabled = True
            BUTTON(4).Enabled = True
            BUTTON(5).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(8).Enabled = True
            BUTTON(11).Enabled = True
            Exit Sub
        End If
    Set rs = New Recordset
    ''rs.Open "select lotno ""Lot.No"",lotdt""Date"",arrno""Arr.No."",arrdt ""Date"",catcd ""Cat.Code"" from rm_lot where lottype = 'A' and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND OPFLG='N' and lotyear=" & Year(yfdate) & "   order by lotdt,lotno", DB, adOpenStatic, adLockBatchOptimistic
    
    rs.Open "select distinct divcode,lottype,arrno,arrdt,SLNAME from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and isnull(isswt,0) = 0 and isnull(issbal,0)= 0 and  isnull(opflg,'N')='N' and arrno not in (select arrno from rm_lot" & _
    " WHERE isnull(isswt,0) <> 0 and isnull(issbal,0) <> 0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and isnull(opflg,'N')='N' ) AND DIVCODE='" & Divcode & "' order by arrno,arrdt", DB, adOpenStatic
    
    
    
    Frame9.Visible = True
    Frame9.ZOrder
    Set DataGrid1.DataSource = rs
    DataGrid1.Visible = True
    DataGrid1.Columns(0).Width = 854.9292
    DataGrid1.Columns(1).Width = 1365.165
    DataGrid1.Columns(0).Visible = False
    DataGrid1.Columns(1).Visible = False
    DataGrid1.Columns(2).Width = 1739.906
    DataGrid1.Columns(3).Width = 2489.953
    DataGrid1.Columns(4).Width = 3000
    
    DataGrid1.Columns(2).Caption = "Arrival No."
    DataGrid1.Columns(3).Caption = "Arrival Date"
    DataGrid1.Columns(4).Caption = "Supplier"
    
    DB.BeginTrans


Exit Sub
delmodok_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure delmodok_Click of Form WLotbale", vbInformation, head
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Frame6.Visible = False
Buttonframe.Enabled = True
StatusBar1.Panels(2).Text = ""
Opt = ""
Call QUERY_MODE

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command3_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

        desc.Caption = "Query"
        Set adoPrimaryRS = New Recordset
        'Ravi adoprimaryrs.Open "select ARRNO,CONTNO,SUPCD,BRKCD,AREACODE,VARCODE,CNTCODE,PRNO,PRMARK,CARCODE,GCNO,LORRYNOS,PLOTNO,ATLNO,FREIGHT,QUANTITY,GROSSWT,TAREWT,NETWT,RATECY,BBFLAG,ARRDATE,CONTDT,PLOTDT FROM RM_ARRIVAL WHERE ARRNO= '" & Trim(txtqry.Text) & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  order by arrno", DB, adOpenStatic, adLockOptimistic
        'Bind the text boxes,check boxes and option buttons  to the data source
        On Error GoTo myerr
          Set adoPrimaryRS = New Recordset
          adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,a.rg23a,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,rebate,RATEKG,GODOWN,LGROUP,OPFLG,plotno,Modusrid,ModDate,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,INSAMT,COMMPER,COMMAMT,LCINTPER LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,DNAMT1,BNKCHG,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,WeightFlg FROM RM_LOT A WHERE a.lottype = 'A' and (isswt is null or isswt=0) and (issbal is null or issbal=0) " & _
                 "  AND A.DIVCODE = '" & Divcode & "' and A.lotno ='" & val(txtqry.Text) & "' and A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear=" & Year(yfdate) & " " & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,arrno  FROM RM_BALE" & _
                 " where lottype = 'A' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "'  AND '" & Format(yldate, "yyyy-mm-dd") & "' and  lotno='" & val(txtqry.Text) & "') Order by baleno" & _
                 "  } AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,lottype to lottype ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
          
          'adoprimaryrs.Open "SHAPE {SELECT A.DIVCODE,a.rg23a,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE ,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,PLOTNO,COLORCODE FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
                 "  a.DIVCODE = '" & Divcode & "' and a.lotno =" & Val(txtqry.Text) & " and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'  and A.lotyear='" & Year(yfdate) & "' " & _
                 "Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype FROM RM_BALE" & _
                 " where lottype = 'A' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lotno=" & Val(txtqry.Text) & " " & _
                " Order by baleno} AS ChildCMD RELATE lotNO TO lotNO,LOTDT TO LOTDT,catcd to catcd,lottype to lottype ) AS ChildCMD", db, adOpenStatic, adLockBatchOptimistic

        If adoPrimaryRS.RecordCount = 0 Then
            Command4.Enabled = False
            txtqry.Text = ""
            StatusBar1.Panels(2).Text = "No Such Lot No. Found"
            'Exit Sub
        Else
        
        Call bindcontls
        'calling query procedure from module
        Call Query1(BUTTON)
        Frame6.Visible = False
         Buttonframe.Enabled = True
'        Frame9.Visible = True
'        Frame3.Visible = True
        SSTab1.Visible = True
        End If
myerr:
'    MsgBox "err.number & " - -" & err.description ", vbCritical, head
    Screen.MousePointer = 0


Exit Sub
Command4_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command4_Click of Form WLotbale", vbInformation, head
End Sub

Private Sub Command5_Click()

On Error GoTo Command5_Click_Error

If Ksllist1.Caption = "Category Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
    Call BUTTON_Click(10)
ElseIf Ksllist1.Caption = "Arrival Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
    Call BUTTON_Click(10)
ElseIf Ksllist1.Caption = "Godown Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
End If

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command5_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

Select Case Ksllist1.listfield1

Case "cntcd"
    Txtfields(30).Text = Ksllist1.Code
    Txtfields(41).Text = Ksllist1.Description
    Txtfields(23).SetFocus
    

Case "arrno as ArrivalNo" 'cast(arrno as varchar)"
On Error Resume Next
    'Flag = "Y"
    Txtfields(1).Text = Ksllist1.Code
    Txtfields(28).Text = Ksllist1.Code
    Txtfields(31).Text = Ksllist1.Code
    Txtfields(36).Text = Ksllist1.Code
    MaskEdBox1(0).Text = Format(Ksllist1.Description, "dd/mm/yyyy")
    MaskEdBox1(3).Text = Format(Ksllist1.Description, "dd/mm/yyyy")
    Set CATRS = New Recordset
    CATRS.Open "select a.catcd from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Txtfields(0).Text = CATRS(0)
    Set rs = New Recordset
    rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),varcode,cntcode,bbflag,isnull(quantity,0)-isnull(lotrecqty,0),isnull(grosswt,0),tarewt,NETWT,PLOTNO,RATECY,rebate,COLORCODE from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        'arrrs.Open "select isnull(supcd,''),isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(quantity,0),isnull(grosswt,0),isnull(tarewt,0),isnull(NETWT,0)from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),isnull(PLOTNO,'') as Plotno,ratecy,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY from rm_arrival where arrno=" & txtFields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl)-isnull(moisture_et,0),2),isnull(PLOTNO,'') as Plotno,ratecy,rebate,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY,moisture_et,moisture_per,awt_flg from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),isnull(round(grosswt/quantity*passbl,2),0),isnull(round(tarewt/quantity*passbl,2),0),isnull(round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),0) from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        Txtfields(26).Text = arrrs(0)
        Txtfields(32).Text = arrrs(0)
        Txtfields(35).Text = arrrs(0)
        Txtfields(27).Text = IIf(IsNull(arrrs(1)), "", arrrs(1))
        Txtfields(28).Text = IIf(IsNull(arrrs(2)), "", arrrs(2)) 'arrrs(2)
        Txtfields(29).Text = arrrs(3)
        Txtfields(40).Text = arrrs("COLORCODE")
        Label62.Caption = arrrs(17)
        Text9.Text = arrrs(15)
        Text10.Text = arrrs(16)
        Set rsa = New Recordset
         rsa.Open "select station,state from rm_area where areacode='" & arrrs(2) & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
             Txtfields(71).Text = rsa(0)
             Txtfields(72).Text = rsa(1)
         End If
       ' txtFields (71)
        
        'Txtfields(30).Text = arrrs(4)
        'prakash.s
        Txtfields(37).Text = IIf(IsNull(arrrs("plotno")), "", arrrs("plotno"))
        If arrrs("plotno") <> "" Then
          Set rss = New Recordset
          rss.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & arrrs("plotno") & "'  and lotyear=" & Year(yfdate) & " ", DB, adOpenStatic
          If Not rss.EOF Then
            Txtfields(3).Text = rss("BILLNO")
            If rss("BILLDT") = Null Then
                MaskEdBox1(2).Text = rss("BILLDT")
            End If
          End If
        End If
        
        
        Txtfields(30).Text = arrrs(4)
'        If arrrs(5) = "B" Then
'            Combo1.Text = "Bale"
'            Text8.Text = "Bale"
'        ElseIf arrrs(5) = "R" Then
'            Combo1.Text = "Borah"
'        End If
        Txtfields(22).Text = arrrs(6)
        Txtfields(33).Text = arrrs(6)
        Txtfields(34).Text = arrrs(6)
        Txtfields(23).Text = arrrs(7)
        Txtfields(24).Text = arrrs(8)
        Txtfields(25).Text = arrrs(9)
        If arrrs("ratecy") > 0 And arrrs("Ratecy") > 0 Then
            
               
       Set rs = New Recordset
       rs.Open "SELECT cENTRALISEDORDER FROM RM_PARAM"
       If rs(0) = "Y" Then
            Set rsr = New Recordset
            rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
        Else
            Set rsr = New Recordset
           rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
          
        End If

       If rsr.RecordCount > 0 Then
            Txtfields(6).Text = arrrs(9) * Round(arrrs("Ratecy") / rsr("value"), 4)
       End If
            
''            If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
''                Txtfields(6).Text = arrrs(9) * Round(arrrs("Ratecy") / 1, 4)
''            Else
''                Txtfields(6).Text = arrrs(9) * Round(arrrs("Ratecy") / 355.6187, 4)
''            End If
           '------10-05-06 prakash
           'txtFields(6).Text = arrrs(9) * Round(arrrs("rtpercandy") / 355.6187, 4)
           adoPrimaryRS("ratecy") = val(arrrs("ratecy"))
           'adoPrimaryRS("ratecy") = Val(arrrs("rtpercandy"))
        Else
'''           TXTFIELDS(6).Text = arrrs(9) * Round(arrrs("Ratecy") / 355.6187, 4)
           Txtfields(6).Text = (arrrs(9) / arrrs(6)) * arrrs("Ratecy") * 0.2812
           adoPrimaryRS("ratecy") = val(arrrs("Ratecy"))
        End If
        
        For i = 26 To 29
            Txtfields(i).Locked = True
        Next
        oldgrs = Txtfields(23).Text
        oldtare = Txtfields(24).Text
        Txtfields(0).Locked = True
        MaskEdBox1(0).Enabled = False
        MaskEdBox1(1).Enabled = False
        qty = Txtfields(22).Text
        Txtfields(5).Text = Txtfields(25).Text
    Set rs = New Recordset
    'rs.Open "SELECT isnull(RATECY,0) from rm_arrival where quantity=" & txtfields(22).Text & "", db, adOpenStatic, adLockBatchOptimistic
    rs.Open "SELECT isnull(RATECY,0) from rm_arrival where passbl=" & Txtfields(22).Text & "", DB, adOpenStatic, adLockBatchOptimistic
    If Not rs.EOF Then
        'HERE
'        txtFields(6).Text = Val(txtFields(22).Text) * rs(0).Value
    End If
'        Option1.Enabled = False
'        Option2.Enabled = False
        'Txtfields(22).SetFocus
        
        Txtfields(30).SetFocus
        'txtFields(2).SetFocus
          SSTab1.Tab = 1
          Txtfields(3).SetFocus
    End If
Case "a.catcd as CategoryNo" '"a.catcd as CatgeroyNo."
    Txtfields(0).Text = Ksllist1.Code
'    If Record_Exists("rm_arrival a,rm_var b where a.varcode=b.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.catcd = '" & Trim(Txtfields(0).Text) & "' and lotno is null", "No Arrival Found") = False Then
'        Call BUTTON_Click(10)
'        Frame3.Visible = True
'     End If
    Txtfields(1).SetFocus
Case "gname as GodownName" '"gcode"
 Txtfields(20).Text = Ksllist1.Description
 'txtFields(21).SetFocus
Case "cast(ARRNO as varchar)"
    Txtfields(1).Text = Ksllist1.Code
    MaskEdBox1(0).Text = Format(Ksllist1.Description, "dd/mm/yyyy")
    Set rs = New Recordset
    rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If rs(0) = 0 Then
        'Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,PLOTNO,COLORCODE from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,grosswt/quantity*passbl,tarewt/quantity*passbl,(grosswt/quantity*passbl)-(tarewt/quantity*passbl),PLOTNO,COLORCODE from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        Txtfields(26).Text = arrrs(0)
        Txtfields(27).Text = arrrs(1)
        Txtfields(28).Text = arrrs(2)
        'Txtvar.Text = arrrs(3)
        'Txtcnt.Text = arrrs(4)
        Txtfields(29).Text = arrrs(3)
        Txtfields(40).Text = arrrs("COLORCODE")
        Txtfields(30).Text = arrrs(4)
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        Txtfields(22).Text = arrrs(6)
        Txtfields(23).Text = arrrs(7)
        Txtfields(24).Text = arrrs(8)
        Txtfields(25).Text = arrrs(9)
        For i = 26 To 30
            Txtfields(i).Locked = True
        Next
'        Txtvar.Locked = True
'        Txtcnt.Locked = True
        Option1.Enabled = False
        Option2.Enabled = False
        Txtfields(22).SetFocus
    End If
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command6_Click of Form WLotbale", vbInformation, head

End Sub

Private Sub Command7_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command7_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame15.Visible = True Then
        Command7.Visible = False
        Frame15.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
Command7_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command7_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command8_Click()
On Error GoTo Command8_Click_Error

    Me.MousePointer = vbHourglass
    Call LotPrint(CStr(Format(MaskEdBox1(4).Text, "yyyy-mm-dd")), CStr(Format(MaskEdBox1(4).Text, "yyyy-mm-dd")), DIVNAME, CStr(Txtfields(30).Text), CStr(Txtfields(96).Text), CStr(Txtfields(96).Text), "A")
    Me.MousePointer = vbNormal

Exit Sub
Command8_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command8_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub Command9_Click()
    If optBannari = True Then
        Call COTTONARRIVALREPORT_Bannari
    Else
        Call COTTONARRIVALREPORT_Shiva
    End If
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command1_Click

Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DataGrid1_DblClick of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox1(1).Text = DTPicker2.value
'MaskEdBox1(1).SetFocus

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_CloseUp of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(3).Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_CloseUp of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
    
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
'    If BUTTON(3).Enabled = True Then
'        'Call BUTTON_Click(3)    ''List
'    End If
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
    If Frame19.Visible = True Then
        Command7.Visible = False
        Frame19.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
    If Frame24.Visible = True Then
        Command9.Visible = False
        Frame24.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
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
    
    Exit Sub

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

StatusBar1.Panels(1).Text = STBARmsg
  Call OpenConnection
  Opt = ""
  DATLAB.Caption = pdate
  SSTab1.Visible = True
  iFlag = 0
  Set rs = New Recordset
  rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
  If Not rs.EOF Then
    If rs(0) = "Y" Then
        'Additional Tax Field Add For Kores
''         IATaxCode = 36
''         IATaxper = 37
''         IATaxamt = 38
''
''         IOthtaxPer = 39
''         IothTaxamt = 40
''         IRlyfrtper = 41
''         IRlyfrtamt = 42
''         IInsper = 43
''         IInsamt = 44
''         ICommper = 45
''         ICommAMT = 46
''         ILCper = 47
''         ILCamt = 48
''         Icharity = 49
''         IOthTaxableAmt = 50
''         IOthers = 51
''         IcustomDuty = 52
''         ILandedcost = 53
''         IRatekg = 54
''         ISICAAmt = 55
''
''         iTrashPer = 56
''
''
''

        IATaxCode = 37
         IATaxper = 38
         IATaxamt = 39
        
         IOthtaxPer = 40
         IothTaxamt = 41
         IRlyfrtper = 42
         IRlyfrtamt = 43
         IInsper = 44
         IInsamt = 45
         ICommper = 46
         ICommAMT = 47
         ILCper = 48
         ILCamt = 49
         Icharity = 50
         IOthTaxableAmt = 51
         IOthers = 52
         IcustomDuty = 53
         ILandedcost = 54
         IRatekg = 55
         ISICAAmt = 56
         
         iTrashPer = 57
         
         lblAddTax.Enabled = True
         Txtfields(112).Enabled = True
         Txtfields(113).Enabled = True
         Txtfields(114).Enabled = True
     Else
''         IOthtaxPer = 36
''         IothTaxamt = 37
''         IRlyfrtper = 38
''         IRlyfrtamt = 39
''         IInsper = 40
''         IInsamt = 41
''         ICommper = 42
''         ICommAMT = 43
''         ILCper = 44
''         ILCamt = 45
''         Icharity = 46
''         IOthTaxableAmt = 47
''         IOthers = 48
''         IcustomDuty = 49
''         ILandedcost = 50
''         IRatekg = 51
''         ISICAAmt = 52
''
''         iTrashPer = 53
         
        IOthtaxPer = 37
        IothTaxamt = 38
         IRlyfrtper = 39
         IRlyfrtamt = 40
         IInsper = 41
         IInsamt = 42
         ICommper = 43
         ICommAMT = 44
         ILCper = 45
         ILCamt = 46
         Icharity = 47
         IOthTaxableAmt = 48
         IOthers = 49
         IcustomDuty = 50
         ILandedcost = 51
         IRatekg = 52
         ISICAAmt = 53
         
         iTrashPer = 54
         lblAddTax.Enabled = False
         Txtfields(112).Enabled = False
         Txtfields(113).Enabled = False
         Txtfields(114).Enabled = False
    End If
  
  End If
  
  Call QUERY_MODE
  

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form WLotbale", vbInformation, head
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Unload of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
   
On Error GoTo BUTTON_KeyDown_Error

On Error GoTo BUTTON_KeyDown_Error

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

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure BUTTON_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim CNTRS As Recordset
On Error GoTo adoPrimaryRS_MoveComplete_Error

On Error Resume Next
StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)

If iFlag = 1 Then
    Exit Sub
Else

If Opt = "add" Or Opt = "mod" Then
    Option1.Enabled = True
    Option2.Enabled = True
Else
    Option1.Enabled = False
    Option2.Enabled = False
End If

If adoPrimaryRS.RecordCount > 0 And adoPrimaryRS.AbsolutePosition > 0 Then

If Opt = "" Then
    'This is for Query mode display
    'To bind the text boxes
    If adoPrimaryRS.RecordCount > 0 Then
        Set rsb = New Recordset
        rsb.Open "select * from rm_arrival where arrno='" & adoPrimaryRS("ARRno") & "' and arrdate='" & Format(adoPrimaryRS("ARRDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        
        If adoPrimaryRS("WeightFlg") = "S" Then
            optSUPPLIER = True
        Else
            optMILL = True
        End If
        
        
        If adoPrimaryRS("Tax_Choice") = "SINGLE" Then
            Option1.value = True
        Else
            Option2.value = True
        End If
        
        If adoPrimaryRS!dutyclaimable = "Y" Then optDCyes = True Else optDCNo = True
        If adoPrimaryRS!discountFlg = "Y" Then optAfter = True Else optBefore = True
        
        
        
        If rsb.RecordCount > 1 Then
                If adoPrimaryRS("TAX_CHOICE") <> "SINGLE" Then
                        Call DisplayVal
                 End If
        Else
                Call DisplayVal
        End If
        
        If rsb.RecordCount > 0 Then
            MaskEdBox1(4).Text = rsb("arrdate")
            Txtfields(41).Text = IIf(IsNull(rsb("GCNO")), "", rsb("gcno"))
            Txtfields(40).Text = rsb("LORRYNOS")
            Txtfields(38).Text = rsb("AREACODE")
            txtremarks.Text = IIf(IsNull(rsb("REMARKS")), "", rsb("REMARKS"))
            Txtfields(27).Text = Trim(rsb("weignment"))
            
            Set LABRS = New Recordset
            LABRS.Open "SELECT *  FROM RM_area  WHERE areacode='" & adoPrimaryRS("areacd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If LABRS.RecordCount > 0 Then
                    Txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    Txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    Text20.Text = LABRS("AREANAME")
            Else
                     Txtfields(92).Text = ""
                     Txtfields(93).Text = ""
                    Text20.Text = " "
            End If
            Set rsd = New Recordset
            rsd.Open "select * from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic
            If rsd.RecordCount > 0 Then
                Text1(0).Text = rsd("slname")
                Text1(1).Text = rsd("slname")
                Text1(2).Text = rsd("slname")
            Else
                Text1(0).Text = ""
            End If
            
            
            Set rsd1 = New Recordset
            rsd1.Open "select * from fa_slmas where slcode='" & adoPrimaryRS("brkcd") & "'", DB, adOpenStatic
            If rsd1.RecordCount > 0 Then
                Text12.Text = rsd1("slname")
            Else
                Text12.Text = ""
            End If
            
            
            Combo3.Text = rsb("carcode")
            Txtfields(27).Text = rsb("weignment")
            If Not IsNull(rsb("weightdate")) Then
                MaskEdBox1(0).Text = rsb("weightdate")
            End If
            'for delivery type
                        
            Set rsf = New Recordset
            rsf.Open "SELECT * FROM RM_god WHERE GCODE='" & adoPrimaryRS("GODOWN") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
            If rsf.RecordCount > 0 Then
                Text8.Text = rsf("GNAME")
            Else
                Text8.Text = " "
            End If
            '',PJTC,PTYPE
            Set rs4 = New Recordset
            rs4.Open "SELECT * FROM RM_PURTYPE WHERE PURTYPE='" & adoPrimaryRS("PTYPE") & "'", DB, adOpenStatic
            If rs4.RecordCount > 0 Then
                Txtfields(303).Text = rs4("PURDESC")
            Else
                Txtfields(303).Text = " "
            End If
            
            Set rs5 = New Recordset
            rs5.Open "SELECT * FROM FA_TCMAS WHERE TC='" & IIf(IsNull(adoPrimaryRS("PJTC")), 0, adoPrimaryRS("PJTC")) & "'", DB, adOpenStatic
            
            If rs5.RecordCount > 0 Then
                Txtfields(301).Text = rs5("TCHEAD")
            Else
                Txtfields(301).Text = " "
            End If
            MaskEdBox1(4).Text = adoPrimaryRS("arrdt")
            If Not (IsNull(adoPrimaryRS("inwarddate"))) Then
                MaskEdBox1(5).Text = adoPrimaryRS("inwarddate")
            End If
            Txtfields(111).Text = Format(adoPrimaryRS("OtherTaxableAmt"), "0.00")
            Call Lotdisplay
        End If
    End If
    End If
    End If
    iFlag = 1
End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

'Assigning Values from adoprimaryrs Recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
    For Each oText In Me.Txtfields
        Set oText.DataSource = adoPrimaryRS
    Next

If Not adoPrimaryRS.EOF Then
    
    If IsNull(adoPrimaryRS("billdt")) = False Then
        MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    Else
        MaskEdBox1(2).Text = "__/__/____"
    End If
    If IsNull(adoPrimaryRS("inwarddate")) = False Then
        MaskEdBox1(5).Text = Format(adoPrimaryRS("inwarddate"), "dd/mm/yyyy")
    Else
        MaskEdBox1(5).Text = "__/__/____"
    End If
    
    If IsNull(adoPrimaryRS("billdt")) = False Then
        MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    Else
        MaskEdBox1(2).Text = "__/__/____"
    End If
    If IsNull(adoPrimaryRS("billdt")) = False Then
        MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    Else
        MaskEdBox1(2).Text = "__/__/____"
    End If

    MaskEdBox1(5).DataField = adoPrimaryRS("inwarddate")
    MaskEdBox1(4).DataField = adoPrimaryRS("arrdt")
    MaskEdBox1(3).DataField = adoPrimaryRS("lotdt")
    MaskEdBox1(2).DataField = adoPrimaryRS("billdt")
    MaskEdBox1(0).DataField = adoPrimaryRS("plotdt")
    Set MaskEdBox1(0).DataSource = adoPrimaryRS
    Set MaskEdBox1(5).DataSource = adoPrimaryRS
    Set MaskEdBox1(4).DataSource = adoPrimaryRS
    Set MaskEdBox1(1).DataSource = adoPrimaryRS
    Set MaskEdBox1(2).DataSource = adoPrimaryRS
    Set MaskEdBox1(3).DataSource = adoPrimaryRS
    ''Set MaskEdBox1(2).DataSource = adoPrimaryRS
    'DTPicker2.MaxDate = pdate
    'DTPicker2.MinDate = yfdate
    If IsNull(adoPrimaryRS("inwardno")) = False Or adoPrimaryRS("inwardno") = "" Then '
        Txtfields(108).Text = adoPrimaryRS("inwardno")
    Else
        Txtfields(108).Text = ""
    End If
    If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
        MaskEdBox1(4).Text = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
    End If
    If IsNull(adoPrimaryRS("plotdt")) = False Or adoPrimaryRS("plotdt") = "" Then
        MaskEdBox1(0).Text = Format(adoPrimaryRS("plotdt"), "dd/mm/yyyy")
    End If
    If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
        MaskEdBox1(3).Text = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
    End If
    If IsNull(adoPrimaryRS("billdt")) = False Then
        MaskEdBox1(2).Text = Format(adoPrimaryRS("billdt"), "dd/mm/yyyy")
    Else
        MaskEdBox1(2).Text = "__/__/____"
    End If
    If IsNull(adoPrimaryRS("inwarddate")) = False Then
        MaskEdBox1(5).Text = Format(adoPrimaryRS("inwarddate"), "dd/mm/yyyy")
    Else
        MaskEdBox1(5).Text = "__/__/____"
    End If
End If
'adoPrimaryRS ("areacode")
'Option1.Enabled = False
'Option2.Enabled = False
End Sub

Public Sub ENABLCONTLS()
Dim i As Integer

MaskEdBox1(0).Enabled = True
MaskEdBox1(2).Enabled = True
MaskEdBox1(3).Enabled = True
'DTPicker2.Enabled = True

grddatagrid.Enabled = True
If Opt = "mod" Then
    MaskEdBox1(3).Enabled = False '''''''
End If
End Sub

Public Sub disablcontls()
Dim i As Integer
MaskEdBox1(0).Enabled = False
MaskEdBox1(1).Enabled = False
MaskEdBox1(2).Enabled = False
'Option1.Enabled = False
'Option2.Enabled = False
'DTPicker2.Enabled = False
Combo1.Locked = True

'grdDataGrid.Enabled = False
grddatagrid.AllowUpdate = False
End Sub

Private Sub grdDataGrid_AfterColEdit(ByVal ColIndex As Integer)
On Error Resume Next

Dim dblRow As Double
Dim iCount As Integer


''To avoid Party bale no duplication

If Opt = "add" Or Opt = "mod" Then
    If ColIndex = 15 Then
         Set rsg = New Recordset
         Set rsg.DataSource = AdosecondaryRs

         PBNO = grddatagrid.Columns(15).Text
         CROW = AdosecondaryRs.AbsolutePosition
'         CROW = grddatagrid.Row
         dblRow = val(grddatagrid.Columns(15).Text)
         dblRow1 = dblRow - 1
         dblRow = dblRow - 1
         cnt = 0
         opt1 = Opt
         Opt = ""
         
         rsg.MoveFirst
         i = 0
         While Not rsg.EOF
             i = i + 1
            If i >= CROW Then
                dblRow = dblRow + 1
                If PBNO = rsg("Partybaleno") Then
                    cnt = cnt + 1
                End If
                grddatagrid.Columns(15).Text = dblRow

                cnt = cnt + 1
            End If
            'grddatagrid.Columns(14).Text = dblRow
            rsg.MoveNext
         Wend
         
'         adoSecondaryRS.NextRecordset (56)
         
         
'         While Not rsg.EOF
'             dblRow = dblRow + 1
'            If PBNO = rsg("Partybaleno") Then
'                cnt = cnt + 1
'            End If
'            grddatagrid.Columns(14).Text = dblRow
'            rsg.MoveNext
'         Wend
         rsg.MoveFirst
         If AdosecondaryRs.RecordCount = CROW Then
            BUTTON(9).SetFocus
         Else
            rsg.Move (CROW)
         End If

         Opt = opt1
'         If cnt > 1 Then
'                MsgBox "Party Bale Number Cannot be Duplicated", vbInformation, head
'                grddatagrid.Row = CROW - 1
'                grddatagrid.Columns(14).Text = ""
'                grddatagrid.Col = 14
'                grddatagrid.SetFocus
'                Exit Sub
'         End If

'         grddatagrid.Columns(14).Locked = True


    End If
End If


If (Opt = "add" Or Opt = "mod") And grddatagrid.Col = 4 Then
If val(grddatagrid.Columns(4).Text) >= val(grddatagrid.Columns(3).Text) Then
        MsgBox "Tare Weight must be less than Gross Weight", vbInformation, head
        grddatagrid.Columns(4).Text = ""
        grddatagrid.Col = 3
        grddatagrid.SetFocus
        Exit Sub
    End If
End If
If Opt = "add" Or Opt = "mod" Then
    If grddatagrid.Col = 2 Then
        grddatagrid.Col = 2
        grddatagrid.SetFocus

    End If
End If

'grddatagrid.Columns(6).Text = IIf(Trim(grddatagrid.Columns(3).Text) = "", 0, grddatagrid.Columns(3).Text) - IIf(grddatagrid.Columns(4).Text = "", 0, grddatagrid.Columns(4).Text) - IIf(grddatagrid.Columns(5).Text = "", 0, grddatagrid.Columns(5).Text)
'grddatagrid.Columns(13).Text = IIf(Trim(grddatagrid.Columns(11).Text) = "", 0, grddatagrid.Columns(11).Text) - IIf(Trim(grddatagrid.Columns(12).Text) = "", 0, grddatagrid.Columns(12).Text)
If grddatagrid.Col = 3 Or grddatagrid.Col = 5 Or grddatagrid.Col = 6 Or grddatagrid.Col = 4 Or grddatagrid.Col = 12 Or grddatagrid.Col = 13 Or grddatagrid.Col = 10 Or grddatagrid.Col = 11 Then
    a = 0
    b = 0
    C = 0
    d = 0
    D1 = 0
    e = 0
    f = 0
    g = 0
    row_save = AdosecondaryRs.AbsolutePosition
    AdosecondaryRs.MoveFirst
    Do While Not AdosecondaryRs.EOF
        a = a + AdosecondaryRs("grwt")
        b = b + AdosecondaryRs("TareWt")
        d = d + AdosecondaryRs("moisture_et")
        D1 = D1 + AdosecondaryRs("trash_et")
'        C = C + adoSecondaryRS("NetWt")
        C = C + val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        If Opt = "add" Then
            e = e + AdosecondaryRs("pgrswt")
            f = f + AdosecondaryRs("ptarewt")
    '        g = g + adoSecondaryRS("pnetwt")
            g = g + val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
            grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
        ElseIf Opt = "mod" Then
            e = e + AdosecondaryRs("pgrswt")
            f = f + AdosecondaryRs("ptarewt")
            g = g + val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
            grddatagrid.Columns(12).Text = val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
        End If
        AdosecondaryRs.MoveNext
    Loop
        Text5 = Format(a, "0.000")
        Text6 = Format(b, "0.000")
        Text7 = Format(d, "0.000")
      '  Text7 = Format(d, "0.000")
        Text16 = Format(D1, "0.000")
        Text11 = Format(C, "0.000")
        Text15 = Format(e, "0.000")
        Text14 = Format(f, "0.000")
        Text13 = Format(g, "0.000")
        
        AdosecondaryRs.MoveFirst
        For i = 1 To row_save
            AdosecondaryRs.MoveNext
        Next
        SendKeys ("{left}")

End If

''    Text4 = grddatagrid.Columns(2).Text
''    Text5 = Val(Text5) - GG + grddatagrid.Columns(3)
''    Text6 = Val(Text6) - GT + IIf(grddatagrid.Columns(4).Text = "", 0, (grddatagrid.Columns(4).Text))
'    grddatagrid.Columns(5).Text = IIf(grddatagrid.Columns(3).Text = "", 0, grddatagrid.Columns(3).Text) - IIf(grddatagrid.Columns(4).Text = "", 0, grddatagrid.Columns(4).Text)
'    'Text7 = Val(Text5) - Val(Text6)
'    a = 0
'b = 0
'c = 0
'ADOSECONDARYRS.MoveFirst
'Do While Not ADOSECONDARYRS.EOF
'a = a + ADOSECONDARYRS("grwt")
'b = b + ADOSECONDARYRS("TareWt")
'c = c + ADOSECONDARYRS("NetWt")
'ADOSECONDARYRS.MoveNext
'Loop
'Text5 = a
'Text6 = b
'Text7 = c
End Sub

Private Sub grdDataGrid_BeforeColEdit(ByVal ColIndex As Integer, ByVal KeyAscii As Integer, Cancel As Integer)
On Error GoTo grdDataGrid_BeforeColEdit_Error

    GG = IIf(IsNull(AdosecondaryRs(3)), 0, AdosecondaryRs(3))
    GT = IIf(IsNull(AdosecondaryRs(4)), 0, AdosecondaryRs(4))

Exit Sub
grdDataGrid_BeforeColEdit_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_BeforeColEdit of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_Click()
On Error GoTo grddatagrid_Click_Error

If Opt = "add" Then
If AdosecondaryRs.AbsolutePosition > W Then
'adoSecondaryRS.Delete
End If
End If

Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grdDataGrid_Error of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

    If Opt = "add" And KeyCode = 13 Then
        SendKeys ("{TAB}")
    End If
    If Opt = "mod" And KeyCode = 13 Then
        SendKeys ("{TAB}")
    End If
    
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
    

Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure grddatagrid_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub GRDDATAGRID_KeyPress(KeyAscii As Integer)
On Error GoTo GRDDATAGRID_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "query" Or Opt = "del" Then
KeyAscii = 0
End If
If grddatagrid.Col = 3 Then
    tonum3 grddatagrid, 7, KeyAscii, 3
ElseIf grddatagrid.Col = 4 Then
    tonum3 grddatagrid, 5, KeyAscii, 3
ElseIf grddatagrid.Col = 5 Then
    tonum3 grddatagrid, 5, KeyAscii, 3
End If

Exit Sub
GRDDATAGRID_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRDDATAGRID_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

'If grdDataGrid.Col = 5 And Not adoSecondaryRS.RecordCount = Val(txtFields(22)) And adoSecondaryRS.AbsolutePosition <= adoSecondaryRS.RecordCount Then
On Error GoTo GRDDATAGRID_RowColChange_Error

If (grddatagrid.Col = 5 Or grddatagrid.Col = 6) And AdosecondaryRs.RecordCount = val(Txtfields(22)) Then
   ' col2t = grddatagrid.Columns(4).Text
'''    adoSecondaryRS.AddNew
   ' grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
   ' grddatagrid.Columns(4).Text = col2t
    grddatagrid.Col = 3
    grddatagrid.SetFocus
ElseIf AdosecondaryRs.RecordCount = val(Txtfields(22)) And grddatagrid.Col = 6 And AdosecondaryRs.AbsolutePosition = AdosecondaryRs.RecordCount Then
    If val(Text5) <> val(Txtfields(23)) And val(Text6) <> val(Txtfields(24)) And val(Text6) <> val(Txtfields(25)) Then
        MsgBox "Gross Weight(Total),Tare Weight(Total),Nett Weight(Total) do not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text5) <> val(Txtfields(23)) Then
        MsgBox "Gross Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text6) <> val(Txtfields(24)) Then
        MsgBox "Tare Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    ElseIf val(Text7) + (Text16) <> val(Txtfields(25)) Then
        MsgBox "Nett Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        Txtfields(24).Locked = False
        Txtfields(22).Locked = False
        Txtfields(23).Locked = False
    End If
End If

If grddatagrid.Col = 14 And AdosecondaryRs.RecordCount = AdosecondaryRs.AbsolutePosition Then
       BUTTON(9).SetFocus
       Exit Sub
End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure GRDDATAGRID_RowColChange of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
'If opt = "add" Or opt = "mod" Then
'If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (opt = "" Or opt = " " Or opt = "query") Then
'If IsDate(MaskEdBox1(0).Text) = True And CDate(MaskEdBox1(1).Text) < CDate(MaskEdBox1(0).Text) Then
'    MsgBox "Receipt date should be greater than Arrival Date", vbInformation, head
'    MaskEdBox1(1).Text = MaskEdBox1(0).Text
'End If
'End If
'End If
On Error GoTo MaskEdBox1_Change_Error

    

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(Index).BackColor = &HC0FFC0
End If
If Index = 2 Then
    StatusBar1.Panels(2).Text = "Enter the Bill Date"
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_GotFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo MaskEdBox1_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
MaskEdBox1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
If MaskEdBox1(0).Text <> "__/__/____" And MaskEdBox1(1).Text <> "__/__/____" And Not (Opt = "" Or Opt = " " Or Opt = "query") Then
    If IsDate(MaskEdBox1(0).Text) = False Then
        'If CDate(MaskEdBox1(1).Text) < CDate(MaskEdBox1(0).Text) Then
            MsgBox "Please Enter Valid date", vbInformation, head
            MaskEdBox1(0).Text = "__/__/____"
            MaskEdBox1(0).SetFocus
            Exit Sub
            'MaskEdBox1(1).Text = MaskEdBox1(0).Text
    End If
    If CDate(MaskEdBox1(0).Text) > pdate Then
        MsgBox "Weigh Date Should be With in the Processing Date", vbInformation, head
        MaskEdBox1(0).Text = pdate
    End If
    If CDate(MaskEdBox1(0).Text) < CDate(MaskEdBox1(4).Text) Then
        MsgBox "Weigh Date Should be after or equal to Arrival Date", vbInformation, head
        MaskEdBox1(0).Text = Txtfields(102).Text
    End If
End If
End If
If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1(Index).BackColor = &HFFFFFF
End If
If Index = 2 Then
    StatusBar1.Panels(2).Text = "Enter the Bill Date"
End If
Select Case Index
Case 2
    If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(2).Text)) Then
        MsgBox ("Please Enter Valid date"), vbInformation, head
        MaskEdBox1(2).Text = pdate
        MaskEdBox1(2).SetFocus
    ElseIf CDate(MaskEdBox1(2).Text) > pdate Then
        MsgBox "BBill Date must be earlier or equal to the Processing Date", vbInformation, head
        MaskEdBox1(2).Text = pdate
    End If
End If
End Select

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure MaskEdBox1_LostFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub optAfter_Click()
Call Tax_Calculation
End Sub

Private Sub optBefore_Click()
Call Tax_Calculation
End Sub

Private Sub optDCNo_Click()
If optDCNo.value = True Then
    Txtfields(109).Enabled = False
    lblDutyPer.Enabled = False
    Txtfields(109).Text = "0.00"
Else
    Txtfields(109).Enabled = True
    lblDutyPer.Enabled = True
    Txtfields(109).Text = "100.00"
End If
End Sub

'Private Sub optDCNo_LostFocus()
'    If optDCyes = True Then
'        Txtfields(109).SetFocus
'    Else
'        optBefore.SetFocus
'    End If
'
'End Sub

Private Sub optDCyes_Click()
If optDCNo.value = True Then
    Txtfields(109).Enabled = False
    lblDutyPer.Enabled = False
    Txtfields(109).Text = "0.00"
Else
    Txtfields(109).Enabled = True
    lblDutyPer.Enabled = True
    Txtfields(109).Text = "100.00"
End If
End Sub

'Private Sub optDCyes_LostFocus()
'    If optDCyes = True Then
'        Txtfields(109).SetFocus
'    Else
'        optBefore.SetFocus
'    End If
'
'End Sub

Private Sub Option6_Click()
On Error GoTo Option6_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command7.Visible = True

Exit Sub
Option6_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option4_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option6_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option6_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame15.Visible = True Then
        Command7.Visible = False
        Frame15.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option6_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option4_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command7.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_Click of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame15.Visible = True Then
        Command7.Visible = False
        Frame15.Visible = False
        UserFooter1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub optMILL_Click()

    If optSUPPLIER = True Then
        Txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
    Else
        Txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
    End If

End Sub

Private Sub optSUPPLIER_Click()
    If optSUPPLIER = True Then
        Txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
    Else
        Txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
    End If

End Sub

Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
On Error GoTo spdVar_Change_Error

If (Opt = "add" Or Opt = "mod") Then
    If Option1 = True Then
        If Col = ITaxCode Then
        
            Set rs = New Recordset
            rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, ITaxCode, Row) & "'", DB, adOpenStatic
            If rs.RecordCount = 0 Then
                LookUp.clear = True
                LookUp.query = " select tax_code""Taxcode"",description""Description"",st_per""Percentage"" from ig_tax where taxstatus='Y'"
                LookUp.Caption = "Tax Details List"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1200,3500,1500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    spdVar.SetText ITaxCode, Row, CStr(LookUp.Fields(0))
                    spdVar.SetText ITaxper, Row, CStr(LookUp.Fields(2))
                    LookUp.clear = True
                    Set rs = New Recordset
                    rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                    If rs(0) = "Y" Then
                        spdVar.SetActiveCell IATaxCode, Row
                    Else
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                Else
                    spdVar.SetText ITaxCode, Row, CStr("")
                    spdVar.SetText ITaxper, Row, CStr("")
                    spdVar.SetText ITaxamt, Row, CStr("0")
                    Set rs = New Recordset
                    rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                    If rs(0) = "Y" Then
                        spdVar.SetActiveCell IATaxCode, Row
                    Else
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                End If
            Else
                spdVar.SetText ITaxper, Row, CStr(rs("ST_PER"))
                Set rs = New Recordset
                rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                If rs(0) = "Y" Then
                    spdVar.SetActiveCell IATaxCode, Row
                Else
                    spdVar.SetActiveCell IOthtaxPer, Row
                End If
            End If
        End If
        
        Set rs = New Recordset
        rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
        If rs(0) = "Y" Then
            If Col = IATaxCode Then
                Set rs = New Recordset
                rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, IATaxCode, Row) & "'", DB, adOpenStatic
                If rs.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = " select tax_code""Taxcode"",description""Description"",st_per""Percentage"" from ig_tax where taxstatus='Y'"
                    LookUp.Caption = "Tax Details List"
                    LookUp.DefCol = ""
                    LookUp.ALIGN = "1200,3500,1500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        spdVar.SetText IATaxCode, Row, CStr(LookUp.Fields(0))
                        spdVar.SetText IATaxper, Row, CStr(LookUp.Fields(2))
                        LookUp.clear = True
                        spdVar.SetActiveCell IOthtaxPer, Row
                    Else
                        spdVar.SetText IATaxCode, Row, CStr("")
                        spdVar.SetText IATaxper, Row, CStr("")
                        spdVar.SetText IATaxamt, Row, CStr("0")
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                Else
                    spdVar.SetText IATaxper, Row, CStr(rs("ST_PER"))
                    spdVar.SetActiveCell IOthtaxPer, Row
                End If
            End If
        End If
    End If
End If

If UCase(CustID) = "SOUTHERN" And Opt = "mod" Then
    With spdVar
        Dim net_value As Double
        net_value = val(GetText(spdVar, 9, Row)) - val(GetText(spdVar, 10, Row))
        spdVar.SetText Imnetwt, Row, net_value
    End With
End If






Exit Sub
spdVar_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spdVar_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_GotFocus()
On Error GoTo spdVar_GotFocus_Error

StatusBar1.Panels(2).Text = ""
 If spdVar.Col = 15 And spdVar.MaxRows = spdVar.ActiveRow Then
        StatusBar1.Panels(2).Text = "Press Enter Key for go to next tab (Proforma Invoice)"
 End If

Exit Sub
spdVar_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spdVar_GotFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_KeyPress(KeyAscii As Integer)
On Error GoTo spdVar_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    If spdVar.Col = 16 And spdVar.MaxRows = spdVar.ActiveRow Then
        StatusBar1.Panels(2).Text = "Press Enter Key for go to next tab (Proforma Invoice)"

        If KeyAscii = 13 Or KeyAscii = 9 Then
            SSTab1.Tab = 1
            Txtfields(3).SetFocus
            Exit Sub
         End If
     End If
Else
    KeyAscii = 0
End If

Exit Sub
spdVar_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spdVar_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)

'On Error GoTo spdVar_LeaveCell_Error

If Opt = "add" Or Opt = "mod" Then
               
        'If Col = IRatekg And spdVar.MaxRows = spdVar.ActiveRow Then
            'SSTab1.Tab = 1
            ''txtfields(3).SetFocus
           ' Exit Sub
       ' End If

        If Col = Iptarewt Then
            If val(GetText(spdVar, Ipgrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 Then
            Else
                If val(GetText(spdVar, Ipgrosswt, Row)) <= val(GetText(spdVar, Iptarewt, Row)) Then
                        spdVar.SetText Iptarewt, Row, "0.00"
                        tot = val(GetText(spdVar, Ipgrosswt, Row)) - val(GetText(spdVar, Iptarewt, Row))
                        spdVar.SetText Ipnetwt, Row, CStr(tot)
                        MsgBox "Tare weight must be less than Gross weight", vbInformation, head
                        Exit Sub
                End If
                tot = val(GetText(spdVar, Ipgrosswt, Row)) - val(GetText(spdVar, Iptarewt, Row))
                If tot <= 0 Then
                    spdVar.SetText Col, Row, "0.00"
                    spdVar.SetText Iptarewt, Row, "0.00"
                    spdVar.SetText iNetwt, Row, "0.00"
                    MsgBox "Nett weight must be greater than Zero", vbInformation, head
                    Exit Sub
                End If
                spdVar.SetText Ipnetwt, Row, CStr(tot)
            End If
        End If


        If Col = Ipgrosswt Then
            If val(GetText(spdVar, Ipgrosswt, Row)) = 0 And val(GetText(spdVar, Itarewt, Row)) = 0 Then
            Else
                tot = val(GetText(spdVar, Ipgrosswt, Row)) - val(GetText(spdVar, Iptarewt, Row))
                If tot <= 0 Then
                    spdVar.SetText Col, Row, "0.00"
                    spdVar.SetText Iptarewt, Row, "0.00"
                    spdVar.SetText iNetwt, Row, "0.00"
                    MsgBox "Nett weight must be greater than Zero", vbInformation, head
                    Exit Sub
                End If
                spdVar.SetText Ipnetwt, Row, CStr(tot)
            End If
        End If

        If Col = Ipgrosswt Or Col = Iptarewt Then
                tot = val(GetText(spdVar, Ipgrosswt, Row)) - val(GetText(spdVar, Iptarewt, Row))
                spdVar.SetText Ipnetwt, Row, CStr(tot)
        End If
End If

If (Opt = "add" Or Opt = "mod") And Col = ITaxCode Then
    Set rs = New Recordset
    rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, ITaxCode, Row) & "'", DB, adOpenStatic
    If rs.RecordCount = 0 Then
''     LookUp.clear = True
''     LookUp.query = " select tax_code""Taxcode"",description""Description"",st_per""Percentage"" from ig_tax where taxstatus='Y'"
''     LookUp.Caption = "Tax Details List"
''     LookUp.DefCol = ""
''     LookUp.ALIGN = "1200,3500,1500"
''     LookUp.Show vbModal
''     If LookUp.Cancel = False Then
''            spdVar.SetText ITaxCode, row, CStr(LookUp.Fields(0))
''            spdVar.SetText ITaxper, row, CStr(LookUp.Fields(2))
''            LookUp.clear = True
''            spdVar.SetActiveCell IothTaxper, row
''     Else
            spdVar.SetText ITaxCode, Row, CStr("")
            spdVar.SetText ITaxper, Row, CStr("")
            spdVar.SetText ITaxamt, Row, CStr("0")
            Set rs = New Recordset
            rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
            If rs(0) = "Y" Then
                spdVar.SetActiveCell IATaxCode, Row
            Else
                spdVar.SetActiveCell IOthtaxPer, Row
            End If
            ''End If
    Else
        spdVar.SetText ITaxper, Row, CStr(rs("ST_PER"))
        Set rs = New Recordset
        rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
        If rs(0) = "Y" Then
            spdVar.SetActiveCell IATaxCode, Row
        Else
            spdVar.SetActiveCell IOthtaxPer, Row
        End If
        End If
End If


If Opt = "add" Or Opt = "mod" Then
    
    If Option2.value = True Then
        Set rs = New Recordset
        rs.Open "Select CentralizedOrder,AssessValueFlg from RM_PARAM", DB, adOpenStatic
            
        Set RSV = New Recordset
        RSV.Open "select contno,contdt from rm_arrival where arrno=" & Txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rs(0) <> "Y" Then
            Set rsf = New Recordset
            rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        Else
            Set rsf = New Recordset
            rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
        End If
        
        If rsf.RecordCount > 0 Then
            deltype = rsf("DLYTYPE")
        Else
            deltype = ""
        End If
           
    
        Set rsr = New Recordset
        rsr.Open "select value from rm_rateunit where unitname='" & rsf("rateunit") & "'", DB, adOpenStatic
        v1 = Ipjamt

'        If Rs(1) = "S" Then
            If optSUPPLIER = True Then
                v2 = Ipnetwt
'        Else
            Else
                v2 = Imnetwt
            End If
'        End If
        
        
        
        v3 = Icandyrate
        v4 = IRebate
        
        If optSUPPLIER = True Then
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, Row))
        Else
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, Row))
        End If
        
        Txtfields(6).Text = 0
        Txtfields(5).Text = 0
        Txtfields(115).Text = 0
        pinvvalue = 0
            For i = 1 To spdVar.MaxRows
                If Col = IRebate Then
                    If (val(GetText(spdVar, v2, i)) * (val(GetText(spdVar, v3, i)) / rsr("value"))) < val(GetText(spdVar, v4, i)) Then
                        spdVar.SetText IRebate, Row, "0.00"
                        MsgBox "Please enter Rebate valeu below " & Format(val(GetText(spdVar, v2, i)) * (val(GetText(spdVar, v3, i)) / rsr("value")), "0.00"), vbInformation, head
                    Exit Sub
                    End If
                End If
    
                If rsr.EOF = False Then
                    Assvalue = Round(val(GetText(spdVar, v2, i)) * (val(GetText(spdVar, v3, i)) / rsr("value")) - val(GetText(spdVar, v4, i)), 4)
                Else
                    Assvalue = 0
                End If
                pinvvalue = pinvvalue + val(GetText(spdVar, Ipinvval, i))
                Txtfields(115).Text = Format(pinvvalue, "0.000")
                Txtfields(6).Text = val(Txtfields(6).Text) + Assvalue
                Txtfields(5).Text = Format(dSuppNetWt, "0.000")
                 
                'Txtfields(5).Text = val(Txtfields(5).Text) + val(GetText(spdVar, v2, i))
            Next
        ''Assvalue = Round(val(GetText(spdVar, v2, row)) * (val(GetText(spdVar, v3, row)) / rsr("value")) - val(GetText(spdVar, v4, row)), 4)
                
    
        Call Txtfields_Validate(53, False)
        Call Txtfields_Validate(84, False)
        Call Txtfields_Validate(7, False)
        Call Txtfields_Validate(43, False)
        Call Txtfields_Validate(45, False)
        
        If Txtfields(83).Text <> "" Then
            Call Txtfields_Validate(83, False)
        End If
        Call Txtfields_Validate(51, False)
        Call Txtfields_Validate(10, False)
        Call Txtfields_Validate(51, False)
        
        
        Call txtFields_LostFocus(17)
    End If
    
    
    
    If Option1.value = True Then
        Set rs = New Recordset
        rs.Open "Select CentralizedOrder,AssessValueFlg From rm_param", DB, adOpenStatic

        Set RSV = New Recordset
        RSV.Open "select contno,contdt from rm_arrival where arrno=" & Txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        
        If rs(0) <> "Y" Then
            Set rsf = New Recordset
            rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        Else
            Set rsf = New Recordset
            rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic
        End If
      
'        Set rsf = New Recordset
'        'rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'        rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsf.RecordCount > 0 Then
            deltype = rsf("DLYTYPE")
        Else
            deltype = ""
        End If
    
        Set rsr = New Recordset
        rsr.Open "select value from rm_rateunit where unitname='" & rsf("rateunit") & "'", DB, adOpenStatic
        v1 = Ipjamt
        
        If optSUPPLIER = True Then
           v2 = Ipnetwt
        Else
           v2 = Imnetwt
        End If
        v3 = Icandyrate
        v4 = IRebate
        
        If optSUPPLIER = True Then
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, Row))
        Else
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, Row))
        End If
        
        Txtfields(5).Text = Format(dSuppNetWt, "0.000")
        
        If CustID = "COTTON" Then
            If deltype = "F" Then
                If rsr.EOF = False Then
                    NoofQty = KSLRound(val(GetText(spdVar, v2, Row)) / rsr("value"), 3)
                    Assvalue = NoofQty * (val(GetText(spdVar, v3, Row)) * 100) / (100 + val(GetText(spdVar, ITaxper, Row)) + val(GetText(spdVar, IBedper, Row)) + val(GetText(spdVar, IEdper, Row)))
                End If
                spdVar.SetText Ipjamt, Row, CStr(Assvalue)
                v1 = Icashdisper
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    CashDisamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                    spdVar.SetText Icashdisamt, Row, CStr(CashDisamt)
                Else
                    v1 = Icashdisamt
                    CashDisamt = val(GetText(spdVar, v1, Row))
                End If
            Else
                If rsr.EOF = False Then Assvalue = Round((val(GetText(spdVar, v2, Row)) * (val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), 4)
                spdVar.SetText Ipjamt, Row, CStr(Assvalue)
                v1 = Icashdisper
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    CashDisamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                    spdVar.SetText Icashdisamt, Row, CStr(CashDisamt)
                Else
                    v1 = Icashdisamt
                    CashDisamt = val(GetText(spdVar, v1, Row))
                End If
            End If
        
        Else
            If rsr.EOF = False Then Assvalue = Round((val(GetText(spdVar, v2, Row)) * (val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), 4)
            spdVar.SetText Ipjamt, Row, CStr(Assvalue)
            v1 = Icashdisper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                CashDisamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                spdVar.SetText Icashdisamt, Row, CStr(CashDisamt)
            Else
                v1 = Icashdisamt
                CashDisamt = val(GetText(spdVar, v1, Row))
            End If
        End If
        v1 = Itradedisper
        If val(GetText(spdVar, Itradedisper, Row)) <> 0 Then
            TradeDisAmt = val(Assvalue) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText Itradedisamt, Row, CStr(TradeDisAmt)
        Else
            v1 = Itradedisamt
            TradeDisAmt = val(GetText(spdVar, v1, Row))
        End If
    
        v1 = IFrtper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            Lfrt = 0
            Lfrt = val(Assvalue) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IFrtamt, Row, CStr(Lfrt)
        Else
            v1 = IFrtamt
            Lfrt = val(GetText(spdVar, v1, Row))
        End If
        
        v1 = IBedper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            Bed = 0
            If UCase(deltype) = "F" Then
                Bed = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt))) / 100, 0)
            Else
                Bed = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt))) / 100, 0)
            End If
            spdVar.SetText IBedamt, Row, CStr(Bed)
        Else
            v1 = IBedamt
            Bed = val(GetText(spdVar, v1, Row))
        End If
        
        v1 = IEdper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            EDAMT = 0
            EDAMT = val(Bed) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IEdamt, Row, CStr(EDAMT)
        Else
            v1 = IEdamt
            EDAMT = val(GetText(spdVar, v1, Row))
        End If
        
        v1 = IHscessper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            Hscessamt = 0
            Hscessamt = val(Bed) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IHscessamt, Row, CStr(Hscessamt)
        Else
            v1 = IHscessamt
            Hscessamt = val(GetText(spdVar, IHscessamt, Row))
        End If
     
        v1 = Icessper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            If UCase(deltype) = "F" Then
                cessamt = Round(val(GetText(spdVar, v1, Row)) * (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Lfrt) + val(Bed) + val(EDAMT) + val(Hscessamt)) / 100, 0)
            Else
                cessamt = Round(val(GetText(spdVar, v1, Row)) * (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt)) / 100, 0)
            End If
            spdVar.SetText Icessamt, Row, CStr(cessamt)
        Else
            v1 = Icessamt
            cessamt = val(GetText(spdVar, v1, Row))
        End If
                      
        ''Commission
        v1 = ICommper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
             If Left(deltype, 1) = "F" Then
                ''Comamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt)) * val(GetText(spdVar, v1, row)) / 100
                Comamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
             Else
                ''Comamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Insamt)) * val(GetText(spdVar, v1, row)) / 100
                Comamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
             End If
            spdVar.SetText ICommAMT, Row, CStr(Comamt)
        Else
            v1 = ICommAMT
            Comamt = val(GetText(spdVar, v1, Row))
        End If
        
        'Other Taxable Amount
         v1 = IOthTaxableAmt
         OthersTaxable = val(GetText(spdVar, v1, Row))

        
        ''Tax
                Set rs = New Recordset
        rs.Open "Select * from rm_param", DB, adOpenStatic
        If rs("commtax") = "Y" Then
            v1 = ITaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                Else
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                End If
                spdVar.SetText ITaxamt, Row, CStr(Vatamt)
            Else
                v1 = ITaxamt
                Vatamt = val(GetText(spdVar, v1, Row))
            End If
        Else
            v1 = ITaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                Else
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                End If
                spdVar.SetText ITaxamt, Row, CStr(Vatamt)
            Else
                v1 = ITaxamt
                Vatamt = val(GetText(spdVar, v1, Row))
            End If
        End If
        'If CustID = "COTTON" Then
            Txtfields(52).Text = Format(Vatamt, "##0.00")
            Txtfields(51).Text = Format(val(GetText(spdVar, v1, Row)), "##0.00")
        'End If
        ' Additional Tax
        AVatamt = 0
        Set rs = New Recordset
        rs.Open "Select * from rm_param", DB, adOpenStatic
        If rs("commtax") = "Y" Then
            v1 = IATaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                Else
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                End If
                spdVar.SetText IATaxamt, Row, CStr(AVatamt)
            Else
                v1 = IATaxamt
                AVatamt = val(GetText(spdVar, v1, Row))
            End If
        Else
            v1 = IATaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                Else
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, 0)
                End If
                spdVar.SetText ITaxamt, Row, CStr(AVatamt)
            Else
                v1 = IATaxamt
                AVatamt = val(GetText(spdVar, v1, Row))
            End If
        End If
        
        ''Other Tax
        v1 = IOthtaxPer
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            Othamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(OthersTaxable)) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IothTaxamt, Row, CStr(Othamt)
        Else
            v1 = IothTaxamt
            Othamt = val(GetText(spdVar, v1, Row))
        End If
        
        Taxamt = val(Vatamt + Othamt)
                                                                   
        ''Rly Frt Amt
        v1 = IRlyfrtper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            va = Ipjamt
            RlFrt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt)) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IRlyfrtamt, Row, CStr(RlFrt)
        Else
            v1 = IRlyfrtamt
            RlFrt = val(GetText(spdVar, v1, Row))
        End If
                                                                         
        ''Insurance
        Set rs = New Recordset
        rs.Open "SELECT InsCalAssvalflg FROM RM_PARAM", DB, adOpenStatic
        If rs.EOF = False Then
        
            v1 = IInsper
            If rs("InsCalAssvalflg") = "Y" Then
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    
                    Insamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                    
                    spdVar.SetText IInsamt, Row, CStr(Insamt)
                Else
                    v1 = IInsamt
                    Insamt = val(GetText(spdVar, v1, Row))
                End If
            Else
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    If Left(deltype, 1) = "F" Then
                        Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt)) * val(GetText(spdVar, v1, Row)) / 100
                    Else
                        Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt)) * val(GetText(spdVar, v1, Row)) / 100
                    End If
                    spdVar.SetText IInsamt, Row, CStr(Insamt)
                Else
                    v1 = IInsamt
                    Insamt = val(GetText(spdVar, v1, Row))
                End If
            End If
        Else
            v1 = IInsper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If Left(deltype, 1) = "F" Then
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt)) * val(GetText(spdVar, v1, Row)) / 100
                Else
                    Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt)) * val(GetText(spdVar, v1, Row)) / 100
                End If
                spdVar.SetText IInsamt, Row, CStr(Insamt)
            Else
                v1 = IInsamt
                Insamt = val(GetText(spdVar, v1, Row))
            End If
        End If
        ''Lcint
        
        v1 = ILCper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            va = Ipjamt
            Lcamt = 0
            If Left(deltype, 1) = "F" Then
                Lcamt = (Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt)) * val(GetText(spdVar, v1, Row)) / 100
            Else
                Lcamt = (Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Insamt) + val(Comamt)) * val(GetText(spdVar, v1, Row)) / 100
            End If
            'spdVar.SetText ICommAMT, Row, CStr(Lcamt)
            spdVar.SetText ILCamt, Row, CStr(Lcamt)
            
        Else
            v1 = ILCamt
            Lcamt = val(GetText(spdVar, v1, Row))
        End If
        
        v1 = IDbamt
        DBamt = val(GetText(spdVar, v1, Row))
        v1 = Icharity
        Charity = val(GetText(spdVar, v1, Row))
        v1 = iDamage
        Damage = val(GetText(spdVar, v1, Row))
        v1 = Iclear
        CLearance = val(GetText(spdVar, v1, Row))

        v1 = IOthers
        Others = val(GetText(spdVar, v1, Row))
        v1 = Ibrkcom
        Brkcom = val(GetText(spdVar, v1, Row))
        v1 = IcustomDuty
        Cusdutyamt = val(GetText(spdVar, v1, Row))
        
        SICAAmt = val(GetText(spdVar, ISICAAmt, Row))
        
'        Set RS2 = New Recordset
'        RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(83).Text & "'", DB, adOpenStatic
'        If RS2.RecordCount = 0 Then
'            If UCase(deltype) = "S" Then
'                'Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt)) + val(Lcamt)
'            Else
'                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'            End If
'        ElseIf RS2("itctaxstatus") = "Y" Then
'            If UCase(deltype) = "S" Then
'                'Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'                Totland = Assvalue + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt)) + val(Lcamt)
'            Else
'                Totland = Assvalue + val(Taxamt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'            End If
'        ElseIf RS2("itctaxstatus") = "N" Then
'            If UCase(deltype) = "S" Then
'                'Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt)) + val(Lcamt)
'            Else
'                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) - (val(CashDisamt) + val(TradeDisAmt))
'            End If
'        End If
'        Total LANDCOST = TOTALLANDCOST - VATAMOUNT
        If optDCNo = True Then
            If UCase(deltype) = "S" Then
                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(TradeDisAmt)) + val(Lcamt)
            Else
                Totland = Assvalue + val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(TradeDisAmt))
            End If
        Else
            If UCase(deltype) = "S" Then
                Totland = Assvalue + (val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) * (100 - val(Txtfields(109).Text) / 100)) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(Insamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(TradeDisAmt)) + val(Lcamt)
            Else
                Totland = Assvalue + (val(Bed) + val(EDAMT) + val(Hscessamt) + val(cessamt) * (100 - val(Txtfields(109).Text) / 100)) + val(Taxamt) + val(AVatamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(TradeDisAmt))
            End If
        End If
            
            
'        Total LANDCOST = TOTALLANDCOST - VATAMOUNT
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
        End If
        
        If VATFLG = "Y" Then
            If EXIST_VAT(Txtfields(30).Text, 1) = True Then
                Totland = Totland - Vatamt
            End If
        End If
        LandCost = Round(Totland, 2)
        spdVar.SetText ILandedcost, Row, CStr(LandCost)
        Txtfields(18).Text = LANDEDCOST
        If optSUPPLIER = True Then
            VBC = Ipnetwt
        Else
            VBC = Imnetwt
        End If
        
        If val(GetText(spdVar, VBC, Row)) <> 0 Then
            ratekg = Format(val(LandCost) / val(GetText(spdVar, VBC, Row)), "#0.0000")
        Else
            ratekg = 0
        End If
        
        spdVar.SetText IRatekg, Row, CStr(ratekg)
    End If
Call totdisplay
End If

dSuppNetWt = 0
Txtfields(115).Text = 0
pinvvalue = 0
For i = 1 To spdVar.MaxRows Step 1
    If optSUPPLIER = True Then
        dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, i))
    Else
        dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, i))
    End If
    Txtfields(5).Text = Format(dSuppNetWt, "0.000")
    pinvvalue = pinvvalue + val(GetText(spdVar, Ipinvval, i))
    Txtfields(115).Text = Format(pinvvalue, "0.000")
Next

        Call Txtfields_Validate(53, False)
        Call Txtfields_Validate(84, False)
        Call Txtfields_Validate(7, False)
        Call Txtfields_Validate(47, False)
        Call Txtfields_Validate(43, False)
        Call Txtfields_Validate(45, False)
        Call Txtfields_Validate(51, False)
        
        If Txtfields(83).Text <> "" Then
            Call Txtfields_Validate(83, False)
        End If
        Call Txtfields_Validate(43, False)
        
        Call Txtfields_Validate(51, False)
        Call Txtfields_Validate(10, False)
        Call Txtfields_Validate(51, False)
        
        
        Call txtFields_LostFocus(17)

Exit Sub
spdVar_LeaveCell_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure spdVar_LeaveCell of Form WLotbale", vbInformation, head
End Sub

Private Sub spdVar_LostFocus()
On Error GoTo spdVar_LostFocus_Error

    If Col = IRatekg And spdVar.MaxRows = spdVar.ActiveRow Then
        SSTab1.Tab = 1
        Txtfields(3).SetFocus
        Exit Sub
    End If

Exit Sub
spdVar_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spdVar_LostFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_KeyPress(KeyAscii As Integer)
On Error GoTo Text3_KeyPress_Error

If KeyAscii = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text3_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_LostFocus()
On Error GoTo Text3_LostFocus_Error

On Error GoTo Text3_LostFocus_Error

    If Opt = "add" And Text3.Text = "" Then
        ''MsgBox "Moisture Should not be empty", vbInformation, head
        ''On Error Resume Next
        ''Text3.SetFocus
        Text3.Text = "0"
        Exit Sub
    End If
    Text9.Text = (val(Txtfields(23).Text) - val(Txtfields(24).Text)) * val(Text3.Text) / 100
   '' TXTFIELDS(25).Text = (val(TXTFIELDS(23).Text) - val(TXTFIELDS(24).Text)) - val(Text9.Text)
    If val(Txtfields(23).Text) >= val(Txtfields(24).Text) Then
        Txtfields(25).Text = val(Txtfields(23)) - val(Txtfields(24)) - val(Text9.Text)
        Txtfields(5).Text = Format(val(Txtfields(25).Text), "##.00")
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        Txtfields(24).Text = ""
        Txtfields(24).SetFocus
        Exit Sub
    End If
'    On Error Resume Next


Exit Sub
Text3_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text3_LostFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text4_Change()
On Error GoTo Text4_Change_Error

    Text4.Text = Format(Text4.Text)

Exit Sub
Text4_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text4_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text5_Change()
On Error GoTo Text5_Change_Error

Text5.Text = Format(Text5.Text, "#0.000")

Exit Sub
Text5_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text5_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text6_Change()
On Error GoTo Text6_Change_Error

Text6.Text = Format(Text6.Text, "#0.000")

Exit Sub
Text6_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text6_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text16_Change()
On Error GoTo Text16_Change_Error

On Error GoTo Text16_Change_Error

Text16.Text = Format(Text16.Text, "#0.000")

Exit Sub
Text16_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text16_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub Text7_Change()
On Error GoTo Text7_Change_Error

On Error GoTo Text7_Change_Error

Text7.Text = Format(Text7.Text, "#0.000")

Exit Sub
Text7_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text7_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub Text11_Change()
On Error GoTo Text11_Change_Error

Text11.Text = Format(Text11.Text, "#0.000")

Exit Sub
Text11_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Text11_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Change(Index As Integer)
On Error GoTo Txtfields_Change_Error

If Index = 27 Then
    Set wrs = New Recordset
    wrs.Open "select wname from rm_weighnment where divcode='" & Divcode & "' and code='" & Trim(Txtfields(27).Text) & "' ", DB, adOpenStatic
    If wrs.RecordCount > 0 Then
        Text2.Text = Trim(wrs(0))
    Else
        Text2.Text = ""
    End If
ElseIf Index = 32 Or Index = 35 Then
    Set prs = New Recordset
    prs.Open "select slname from fa_slmas where slcode='" & Trim(Txtfields(Index).Text) & "' ", DB, adOpenStatic
    If prs.RecordCount > 0 Then
        Text1(1).Text = prs(0)
        Text1(2).Text = prs(0)
    Else
        Text1(1).Text = ""
        Text1(2).Text = ""
    End If
ElseIf Index = 37 Then
    Set prs = New Recordset
    prs.Open "select slname from fa_slmas where slcode='" & Trim(Txtfields(Index).Text) & "' ", DB, adOpenStatic
    If prs.RecordCount > 0 Then
        Text12.Text = prs(0)
    Else
        Text12.Text = ""
    End If
ElseIf Index = 2 Then
    Set vrs = New Recordset
    vrs.Open "select varname from rm_var where varcode='" & Trim(Txtfields(2).Text) & "' ", DB, adOpenStatic
    If vrs.RecordCount > 0 Then
        Txtfields(79).Text = vrs(0)
    Else
        Txtfields(79).Text = ""
    End If
End If

'Exit Sub
If Opt = "" Then
Select Case Index
    Case 53, 54, 84, 85, 12, 13, 7, 42, 47, 48, 43, 44, 45, 46, 51, 52, 10, 11, 15, 16, 58, 59, 60, 61, 62, 70, 64, 65, 66, 67, 69, 17, 18, 6, 63, 111, 107, 112, 113
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.00")
    Case 4, 5, 57
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.000")
    Case 19
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "0.0000")
End Select
End If
Exit Sub
Txtfields_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Txtfields_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

Txtfields(Index).BackColor = &HC0FFC0
Select Case Index

'Spot check
'If Opt = "add" Or Opt = "mod" Then
'    If txtfields(78).Text = "SPOT" Then
'         txtfields(7).Locked = True
'         txtfields(42).Locked = True
'         txtfields(43).Locked = True
'         txtfields(44).Locked = True
'         txtfields(45).Locked = True
'         txtfields(46).Locked = True
'         txtfields(47).Locked = True
'         txtfields(48).Locked = True
'         txtfields(51).Locked = True
'         txtfields(52).Locked = True
'         txtfields(53).Locked = True
'         txtfields(54).Locked = True
'         txtfields(55).Locked = True
'         txtfields(56).Locked = True
'         txtfields(8).Locked = True
'         txtfields(9).Locked = True
'         txtfields(10).Locked = True
'         txtfields(11).Locked = True
'         txtfields(12).Locked = True
'         txtfields(13).Locked = True
'         txtfields(15).Locked = True
'         txtfields(16).Locked = True
'    End If
'End If
Case 2
  If (Opt = "add" And Txtfields(1).Text = "") Then
    On Error Resume Next
    If LookUp.Cancel = False Then
    'from contract lookup is added
    Set CATRS = New Recordset
    CATRS.Open "select a.catcd from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Txtfields(0).Text = CATRS(0)
    Set rs = New Recordset
    rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),varcode,cntcode,bbflag,isnull(quantity,0)-isnull(lotrecqty,0),isnull(grosswt,0),tarewt,NETWT,PLOTNO,RATECY,COLORCODE from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        'arrrs.Open "select isnull(supcd,''),isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(quantity,0),isnull(grosswt,0),isnull(tarewt,0),isnull(NETWT,0)from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),isnull(PLOTNO,'') as Plotno,ratecy,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY from rm_arrival where arrno=" & txtFields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl)-isnull(moisture_et,0),2),isnull(PLOTNO,'') as Plotno,ratecy,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY,moisture_et,moisture_per,awt_flg from rm_arrival where arrno=" & Txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),isnull(round(grosswt/quantity*passbl,2),0),isnull(round(tarewt/quantity*passbl,2),0),isnull(round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),0) from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        Txtfields(26).Text = arrrs(0)
        Txtfields(32).Text = arrrs(0)
        Txtfields(35).Text = arrrs(0)
        Txtfields(27).Text = IIf(IsNull(arrrs(1)), "", arrrs(1))
        Txtfields(28).Text = IIf(IsNull(arrrs(2)), "", arrrs(2)) 'arrrs(2)
        Txtfields(29).Text = arrrs(3)
        Txtfields(40).Text = arrrs("COLORCODE")
        Label62.Caption = arrrs(17)
        Text9.Text = arrrs(15)
        Text10.Text = arrrs(16)
        Set rsa = New Recordset
         rsa.Open "select station,state from rm_area where areacode='" & arrrs(2) & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
             Txtfields(71).Text = rsa(0)
             Txtfields(72).Text = rsa(1)
         End If
        'prakash.s
        Txtfields(37).Text = IIf(IsNull(arrrs("plotno")), "", arrrs("plotno"))
        If arrrs("plotno") <> "" Then
          Set rss = New Recordset
          rss.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & arrrs("plotno") & "'  and lotyear=" & Year(yfdate) & " ", DB, adOpenStatic
          If Not rss.EOF Then
            Txtfields(3).Text = rss("BILLNO")
            If rss("BILLDT") = Null Then
                MaskEdBox1(2).Text = rss("BILLDT")
            End If
          End If
        End If
        Txtfields(30).Text = arrrs(4)
        Txtfields(22).Text = arrrs(6)
        Txtfields(33).Text = arrrs(6)
        Txtfields(34).Text = arrrs(6)
        Txtfields(23).Text = arrrs(7)
        Txtfields(24).Text = arrrs(8)
        Txtfields(25).Text = arrrs(9)
        If arrrs("ratecy") > 0 And arrrs("Ratecy") > 0 Then
        Set rs = New Recordset
        rs.Open "SELECT CENTRALISEDORDER FROM RM_PARAM", DB, adOpenStatic
        If rs(0) = "Y" Then
           Set rsr = New Recordset
           rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
        Else
           Set rsr = New Recordset
           rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
        End If
           If rsr.RecordCount > 0 Then
                Txtfields(6).Text = arrrs(9) * Round(arrrs("Ratecy") / rsr("value"), 4)
            End If
           adoPrimaryRS("ratecy") = val(arrrs("ratecy"))
        Else
           Txtfields(6).Text = (arrrs(9) / arrrs(6)) * arrrs("Ratecy") * 0.2812
           adoPrimaryRS("ratecy") = val(arrrs("Ratecy"))
        End If
        
        For i = 26 To 29
            Txtfields(i).Locked = True
        Next
        oldgrs = Txtfields(23).Text
        oldtare = Txtfields(24).Text
        Txtfields(0).Locked = True
        MaskEdBox1(0).Enabled = False
        MaskEdBox1(1).Enabled = False
        qty = Txtfields(22).Text
        Txtfields(5).Text = Txtfields(25).Text
    Set rs = New Recordset
    'rs.Open "SELECT isnull(RATECY,0) from rm_arrival where quantity=" & txtfields(22).Text & "", db, adOpenStatic, adLockBatchOptimistic
    rs.Open "SELECT isnull(RATECY,0) from rm_arrival where passbl=" & Txtfields(22).Text & "", DB, adOpenStatic, adLockBatchOptimistic
    If Not rs.EOF Then
        'HERE
'        txtFields(6).Text = Val(txtFields(22).Text) * rs(0).Value
    End If
          Txtfields(30).SetFocus
          SSTab1.Tab = 1
          Txtfields(3).SetFocus
    End If
   Else
  If Opt = "add" Then
        DB.RollbackTrans
   End If
  Opt = ""
    Call QUERY_MODE
  End If
   LookUp.clear = True
End If

Case 20
  If (Opt = "add" And Txtfields(20).Text = "") Then
        If Opt = "add" Or Opt = "mod" Then
            Set rs = New Recordset
            rs.Open "select * from rm_god where gcode='" & Trim(Txtfields(23).Text) & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
            If rs.RecordCount <> 0 Then
                'Text5.Text = rs("gname")
                Txtfields(20).Text = rs("gcode")
             Else
                LookUp.clear = True
                LookUp.query = "select gcode,gname from rm_god  where divcode='" & Divcode & "'"
                LookUp.DefCol = "gcode"
                LookUp.Caption = "Godown Listing"
                LookUp.ALIGN = "1000,1500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Txtfields(20).Text = LookUp.Fields(0)
                
                Else
                Exit Sub
                End If
           End If
        End If
        LookUp.clear = True
  End If

End Select
If Opt = "add" Or Opt = "mod" Then
Select Case Index
     Case 0

     Case 2
        '  StatusBar1.Panels(2).Text = "Enter Lot Number"
     Case 26
        '  StatusBar1.Panels(2).Text = "Enter Party Code"
     Case 27
        '  StatusBar1.Panels(2).Text = "Enter Broker Code"
     Case 28
         ' StatusBar1.Panels(2).Text = "Enter Area Code"
     Case 29
          'StatusBar1.Panels(2).Text = "Enter Variety"
     Case 22
          StatusBar1.Panels(2).Text = "Enter Quantity"
     Case 23
          StatusBar1.Panels(2).Text = "Enter Gross Weight"
     Case 25
          StatusBar1.Panels(2).Text = "Enter Net Weight"
     Case 1
          'StatusBar1.Panels(2).Text = "Enter Arrival Number"
     Case 30
        '  StatusBar1.Panels(2).Text = "Enter Count Type"
     Case 24
          StatusBar1.Panels(2).Text = "Enter Tare Weight"
     Case 3
          StatusBar1.Panels(2).Text = "Enter Maximum of 15 Characters"
     Case 5
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimals"
     Case 8
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 11
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 14
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 17
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimals"
      Case 10
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
      Case 16
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
       Case 13
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 20
          StatusBar1.Panels(2).Text = "Select Godown From the List"
     Case 6
          StatusBar1.Panels(2).Text = "Enter Maximum of 9 Integers with 2 Decimals"
     Case 9
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 2 Decimals"
     Case 12
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 15
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 18
          'StatusBar1.Panels(2).Text = "Enter Land Cost"
     Case 21
          StatusBar1.Panels(2).Text = "Enter Group"
     Case 4
          StatusBar1.Panels(2).Text = "Enter Maximum of 7 Integers with 3 Decimals"
     Case 7
          StatusBar1.Panels(2).Text = "Enter Maximum of 6 Integers with 2 Decimals"
     Case 300
          StatusBar1.Panels(2).Text = "Enter the Transaction Type"
     Case 302
          StatusBar1.Panels(2).Text = "Enter the Purchase Type"
     Case 114
          StatusBar1.Panels(2).Text = "Select the Tax from the List"
     Case 112, 113
          StatusBar1.Panels(2).Text = "Enter the Tax Details "
End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_GotFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
End If
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
        'Call BUTTON_Click(3)    ''List
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
        'Call BUTTON_Click(6)    ''Next
    End If
ElseIf KeyCode = vbKeyUp And Shift = 2 Then
    If BUTTON(7).Enabled = True Then
        'Call BUTTON_Click(7)    ''Previous
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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)  'Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtfields_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Index <> 300 Then
Call ToUpCase(Txtfields(Index), KeyAscii)
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 53, 84, 12, 7, 47, 43, 45, 51, 10, 15, 59, 61, 112
    ToNumberAssign Txtfields(Index), 3, KeyAscii, 3, 2
Case 57
    ToNumberAssign Txtfields(Index), 3, KeyAscii, 3, 3
Case 109
'    If val(txtFields(109).Text) > 100 Then KeyAscii = 0
    ToNumberAssign Txtfields(Index), 3, KeyAscii, 3, 2

Case 300
    ToNum1 Txtfields(Index), 2, KeyAscii
Case 3
'    If KeyAscii = 48 Then
'        KeyAscii = 0
'    End If
    ToAlphaNumber Txtfields(Index), 15, KeyAscii
Case 4
'    If KeyAscii = 48 Then
'        KeyAscii = 0
'    End If
'    If KeyAscii = 45 Then KeyAscii = 0
'    tonum1 txtFields(Index), 6, KeyAscii
    ToNumberAssign Txtfields(Index), 7, KeyAscii, 8, 3
    
Case 6
    If KeyAscii = 48 Then
        KeyAscii = 0
    End If
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 9, KeyAscii
Case 5
    If KeyAscii = 48 Then
        KeyAscii = 0
    End If
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 Txtfields(Index), 7, KeyAscii

Case 7
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 8
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 9
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 7, KeyAscii
Case 10
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 11
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 12
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 13
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 6, KeyAscii
        
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 7, KeyAscii
    
Case 22
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 7, KeyAscii
Case 23
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 10, KeyAscii
Case 24
    If KeyAscii = 45 Then KeyAscii = 0
    tonum Txtfields(Index), 10, KeyAscii
Case 113
    Call ToNumberAssign(Txtfields(Index), 8, KeyAscii, 8, 2)
Case 25
    KeyAscii = 0
Case 54, 51, 85, 13, 42, 44, 46, 48, 52, 11, 16, 58, 60, 62, 70, 63, 64, 66, 67, 69, 17, 5, 6
    tonum Txtfields(Index), 10, KeyAscii
    
End Select
End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LinkError(Index As Integer, LinkErr As Integer)
On Error GoTo txtfields_LinkError_Error

Response = 0

Exit Sub
txtfields_LinkError_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtfields_LinkError of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtFields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
    On Error GoTo txtFields_LostFocus_Error

Txtfields(Index).BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
Select Case Index

Case 94
    Txtfields(94).Text = Format(Txtfields(94).Text, "#0.00")
Case 1
    Txtfields(1).Text = Format(Txtfields(1).Text, "#0.00")
Case 3
    StatusBar1.Panels(2).Text = ""
    Set rsg = New Recordset
    rsg.Open "select isnull(billno,'') from rm_lot where BILLNO='" & Txtfields(3).Text & "' AND  supcd='" & Txtfields(30).Text & "' and lotdt betweeN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and arrno <> " & val(Txtfields(96).Text) & " ", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
            MsgBox "Already Bill number Given to this Supplier", vbInformation, head
            Txtfields(3).Text = ""
            Txtfields(3).SetFocus
            Exit Sub
    End If
Case 11
'txtFields(11).Text = Format(txtFields(11).Text, "#0.000")
Case 17

   Txtfields(18).Text = IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) + IIf(IsNull(val(Txtfields(7))), 0, val(Txtfields(7))) + IIf(IsNull(val(Txtfields(8))), 0, val(Txtfields(8))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(10))), 0, val(Txtfields(10))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(12))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + IIf(IsNull(val(Txtfields(15))), 0, val(Txtfields(15))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) - val(Txtfields(117).Text)
   If optDCNo = True Then
    If Option2.value = True Then
      If UCase(deltype) = "S" Then
        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) - _
         val(Txtfields(117).Text) + IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
      Else
        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) - _
         val(Txtfields(117).Text) + IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
      End If
'
'      Total LANDCOST = TOTALLANDCOST - VATAMOUNT

    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
    End If

    If VATFLG = "Y" Then
          If EXIST_VAT(Txtfields(30).Text) = True Then
                Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(52).Text)
        End If
    End If

    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    End If
    Else
    If Option2.value = True Then
      If UCase(deltype) = "S" Then
        Txtfields(18).Text = IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) - _
        val(Txtfields(117).Text) + IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
      Else
        Txtfields(18).Text = IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) - _
        val(Txtfields(117).Text) + IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
      End If
'
'      Total LANDCOST = TOTALLANDCOST - VATAMOUNT

    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
    End If

    If VATFLG = "Y" Then
          If EXIST_VAT(Txtfields(30).Text) = True Then
                Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(52).Text)
        End If
    End If
    
    
    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    End If
    End If
      
        If Option2.value = False Then Txtfields(18).Text = Format(Round(LandCostTotal, 2), "0.00")
      
    Call TaxCalculation
Case 18
      If val(Txtfields(5)) > 0 Then
        Txtfields(19).Text = Round(val(Txtfields(18)) / val(Txtfields(5)), 4)
      End If
      Txtfields(19).Text = Format(Txtfields(19).Text, "#0.0000")
      Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
Case 19
    
    For i = 1 To spdVar.MaxRows
            If val(GetText(spdVar, Ipgrosswt, i)) = 0 Then
                MsgBox "Please enter Supplier Gross Weight", vbInformation, head
                SSTab1.Tab = 0
                spdVar.Col = Ipgrosswt
                spdVar.SetFocus
                Exit Sub
            End If
    Next
    
    If val(Txtfields(5)) > 0 Then
        
    End If
        If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
            grddatagrid.Enabled = False
            SSTab1 = 1
            Txtfields(3).SetFocus
            Exit Sub
        Else
        If val(Txtfields(5).Text) <> 0 Then
            StatusBar1.Panels(2).Text = ""
            BUTTON(9).Enabled = True
            grddatagrid.Enabled = True
            
            grddatagrid.Columns(14).Locked = False
            
            SSTab1.Tab = 2
            If Opt = "mod" Then
                flg = "y"
                grddatagrid.Enabled = False
            End If
            If Opt = "add" Or Opt = "mod" Then
                If flg <> "y" Then
                  flg = "y"
                  Text4.Visible = True
                  Text5.Visible = True
                  Text6.Visible = True
                  Text7.Visible = True
                  Text16.Visible = True
                  
                  Text4.Text = ""
                  Text5.Text = ""
                  Text6.Text = ""
                  Text7.Text = ""
                  Text16.Text = ""
                  
                  Text11.Text = ""
                  grddatagrid.AllowDelete = True
                  Dim p As Double
                  Dim q As Double
                  Dim r As Double
                  Dim s As Double
                  Dim t As Double
                  Dim t1 As Double
                  
                  Dim TOTBALES As Double
                   TOTBALES = 0
                   bales = 0
                   pbales = 0
               For KK = 1 To spdVar.MaxRows
                  
                  p = val(GetText(spdVar, iQty, KK)) ''   val(Txtfields(100).Text)
                  W = val(GetText(spdVar, iQty, KK)) '' val(Txtfields(100).Text)
                  q = val(GetText(spdVar, Imgrosswt, KK))  ''val(Txtfields(99).Text)
                  TOTBALES = TOTBALES + p
                  qQ = val(GetText(spdVar, Ipgrosswt, KK)) '' val(Txtfields(105).Text)
                 
                  r = val(GetText(spdVar, Imtarewt, KK)) '' val(Txtfields(98).Text)
                  s = val(GetText(spdVar, Imnetwt, KK)) '' val(Txtfields(97).Text)
                  rr = val(GetText(spdVar, Iptarewt, KK))  ''val(Txtfields(104).Text)
                  ss = val(GetText(spdVar, Ipnetwt, KK))  ''val(Txtfields(103).Text)
                  t1 = val(GetText(spdVar, iTrashPer, KK)) '' val(Txtfields(101).Text)
                                   
                  t = val(GetText(spdVar, Immoiturewt, KK)) '' val(Txtfields(101).Text)
                  
                    groswt = 0
                    TAREWT = 0
                    trashWT = 0
                    MOISWT = 0
                    NETTWT = 0
                    
                    PGROSWT = 0
                    PTAREWT = 0
                    PNETTWT = 0
                  
                  
                  i = 1
                  J = 1
                  For i = 1 To p
'                  If i = 100 Then
'                  'MsgBox "A"
'                  End If
                    grddatagrid.Columns("LOTNO").Text = val(val(GetText(spdVar, ILotNo, KK)))
                    grddatagrid.Columns("LOTDT").Text = GetText(spdVar, ILotdt, KK)
                    grddatagrid.Columns("VARCODE").Text = GetText(spdVar, Ivarcode, KK)
                    grddatagrid.Columns(2).Text = i 'grddatagrid.ApproxCount   ''Mill Baleno
                    grddatagrid.Columns(14).Text = J 'grddatagrid.ApproxCount  ''Party Baleno
                    grddatagrid.Columns(3).Text = q / p
                    grddatagrid.Columns(4).Text = r / p
                    ''grddatagrid.Column    s(5).Text = ((val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text)) * val(Text3.Text) / 100)
                    grddatagrid.Columns(5).Text = t1 / p
                    grddatagrid.Columns(6).Text = (t - t1) / p
'                    grddatagrid.Columns(6).Text = s / p
                    grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
                    bales = bales + grddatagrid.Columns(7).Text
                    grddatagrid.Columns(12).Text = qQ / p
                    grddatagrid.Columns(13).Text = rr / p
'                    grddatagrid.Columns(13).Text = ss / p
                    grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
                    pbales = pbales + grddatagrid.Columns(14).Text
                    grddatagrid.Columns(2).Locked = True
                    
                    groswt = Round(groswt + val(grddatagrid.Columns(3).Text), 3)
                    TAREWT = Round(TAREWT + val(grddatagrid.Columns(4).Text), 3)
                    trashWT = Round(trashWT + val(grddatagrid.Columns(5).Text), 3)
                    MOISWT = Round(MOISWT + val(grddatagrid.Columns(6).Text), 3)
                    NETTWT = Round(NETTWT + val(grddatagrid.Columns(7).Text), 3)
                    
                    PGROSWT = Round(PGROSWT + val(grddatagrid.Columns(12).Text), 3)
                    PTAREWT = Round(PTAREWT + val(grddatagrid.Columns(13).Text), 3)
                    PNETTWT = Round(PNETTWT + val(grddatagrid.Columns(14).Text), 3)
                    
                    
                    If i = p Then
                        DIFFGWT = Round(q - groswt, 3)
                        DIFFTWT = Round(r - TAREWT, 3)
                        
                        DIFFtrshWT = Round(t1 - trashWT, 3)
                        
                        DIFFMWT = Round(t - t1 - MOISWT, 3)
                        DIFFNWT = Round(s - NETTWT, 3)
                        
                        PDIFFNWT = Round(ss - PNETTWT, 3)
                        PDIFFGWT = Round(qQ - PGROSWT, 3)
                        PDIFFTWT = Round(rr - PTAREWT, 3)
                        
                                                
                        grddatagrid.Columns(3).Text = grddatagrid.Columns(3).Text + DIFFGWT
                        grddatagrid.Columns(4).Text = grddatagrid.Columns(4).Text + DIFFTWT
                        grddatagrid.Columns(5).Text = grddatagrid.Columns(5).Text + DIFFtrshWT
                        grddatagrid.Columns(6).Text = grddatagrid.Columns(6).Text + DIFFMWT
                        grddatagrid.Columns(7).Text = grddatagrid.Columns(7).Text + DIFFNWT
                        
                        grddatagrid.Columns(12).Text = grddatagrid.Columns(12).Text + PDIFFGWT
                        grddatagrid.Columns(13).Text = grddatagrid.Columns(13).Text + PDIFFTWT
                        grddatagrid.Columns(14).Text = grddatagrid.Columns(14).Text + PDIFFNWT
                    End If
                                      
                    
                    If i < p Then
                        AdosecondaryRs.AddNew
                    End If
                    J = J + 1
                  Next
                  If KK <> spdVar.MaxRows Then
                    AdosecondaryRs.AddNew
                  End If
            Next
            bales1 = 0
            If bales <> s Then
                bales1 = Format(s - bales, "#0.000")
                grddatagrid.Columns(7).Text = grddatagrid.Columns(7).Text + bales1
            End If
            pbales1 = 0
            If pbales <> ss Then
                pbales1 = Format(ss - pbales, "#0.000")
                grddatagrid.Columns(14).Text = grddatagrid.Columns(14).Text + pbales1
            End If
                    Text4 = TOTBALES
                    Text5 = Round(Format(q, "#0.000"), 3)
                    Text6 = Round(Format(r, "#0.000"), 3)
                    Text7 = Round(Format(t - t1, "#0.000"), 3)
                    Text16 = Round(Format(t1, "#0.000"), 3)
                    
'                    Text11 = Round(Format(s, "#0.000"), 3)
                    Text11.Text = Format((val(Text5.Text) - val(Text6.Text)), "#0.000")
                    
                    
                    Text15 = Format(qQ, "#0.000")
                    Text14 = Format(rr, "#0.000")
'                    Text13 = Format(ss, "#0.000")
                    Text13.Text = Format((val(Text5.Text) - val(Text6.Text)), "#0.000")
                End If
                Text4.Visible = True
                Text5.Visible = True
                Text6.Visible = True
                Text7.Visible = True
                Text16.Visible = True
                
                Text15.Visible = True
                Text13.Visible = True
                Text14.Visible = True
            
                Text11.Visible = True
                On Error Resume Next
                grddatagrid.Row = 0
                grddatagrid.Col = 3
                grddatagrid.SetFocus
                grddatagrid.AllowAddNew = False
                grddatagrid.AllowUpdate = True
                grddatagrid.EditActive = True
                grddatagrid.Enabled = True
                grddatagrid.Row = 0
                grddatagrid.Col = 3
                grddatagrid.SetFocus
                Text11.Text = Format((val(Text5.Text) - val(Text6.Text)), "#0.000")
                Text13.Text = Format((val(Text15.Text) - val(Text14.Text)), "#0.000")
                For i = 4 To 21
''                    Txtfields(i).Locked = True
                Next
                MaskEdBox1(1).Enabled = False
            End If
            If Opt = "mod" Then
            
            End If
        
            If AdosecondaryRs.RecordCount > 0 Then AdosecondaryRs.MoveFirst
       End If
   End If

Case 1

Case 22
'If val(txtfields(22).Text) <> val(Text4.Text) Then
'    If txtfields(22).Text > qty Then
'        MsgBox "Quantity should not be greater than " & qty, vbInformation, head
'        txtfields(22).Text = qty
'        txtfields(22).SetFocus
'        Exit Sub
'    End If
'End If

Case 23
' If val(txtfields(23).Text) <> val(Text5.Text) Then
'    If txtfields(23).Text > oldgrs Then
'        MsgBox "Gross Weight should not be greater than " & oldgrs, vbInformation, head
'        txtfields(23).Text = oldgrs
'        txtfields(23).SetFocus
'        Exit Sub
'    End If
' End If
Case 115
    If Txtfields(115).Text = "" Then
        Txtfields(115).SetFocus
        Exit Sub
    End If
Case 82
    If val(Txtfields(81).Text) >= val(Txtfields(82).Text) Then
        Txtfields(80).Text = val(Txtfields(81)) - val(Txtfields(82))
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        Txtfields(82).Text = ""
        Txtfields(82).SetFocus
        Exit Sub
    End If
    If Trim(Txtfields(81).Text) <> "" And Txtfields(82).Text <> "" Then
        ''Label1.Caption = val(Txtfields(23).Text) - val(Txtfields(24).Text)
    End If
Case 24
'   If val(txtfields(24).Text) <> val(Text6.Text) Then
'   If txtfields(24).Text > oldtare Then
'        MsgBox "Tare Weight should not be greater than " & oldtare, vbInformation, head
'        txtfields(24).Text = oldtare
'        txtfields(24).SetFocus
'        Exit Sub
'    End If
'   End If
'
    If val(Txtfields(23).Text) >= val(Txtfields(24).Text) Then
        Txtfields(25).Text = val(Txtfields(23)) - val(Txtfields(24)) - val(Text9.Text)
        Txtfields(5).Text = Format(val(Txtfields(25).Text), "##.00")
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        
        Txtfields(24).Text = ""
        Txtfields(24).SetFocus
        Exit Sub
    End If
    If Trim(Txtfields(23).Text) <> "" And Txtfields(24).Text <> "" Then
    
        'Label1.Caption = val(TXTFIELDS(23).Text) - val(TXTFIELDS(24).Text)
    
    End If
 
Case 25
'If Trim(txtfields(23).Text) <> "" And txtfields(25).Text <> "" Then
'    If Text9.Text <> "" Then
'       Label1.Caption = val(txtfields(23).Text) - val(txtfields(24).Text)
'    End If
' End If

Case 28
    Txtfields(31).Text = Txtfields(28).Text
    Txtfields(36).Text = Txtfields(28).Text
Case 20
Case 31
    SSTab1.Tab = 1
    Txtfields(3).SetFocus
Case 25
    SSTab1.Tab = 1
    Txtfields(3).SetFocus
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 22
    Txtfields(33).Text = Txtfields(22).Text
    Txtfields(34).Text = Txtfields(22).Text
    Txtfields(31).Text = Txtfields(28).Text
    Txtfields(36).Text = Txtfields(28).Text
    Txtfields(32).Text = Txtfields(30).Text
    Txtfields(35).Text = Txtfields(30).Text
    Text1(1).Text = Text1(0).Text
    Text1(2).Text = Text1(0).Text
Case 23
Txtfields(23).Text = Format(Txtfields(23).Text, "#0.000")
Case 24
Txtfields(24).Text = Format(Txtfields(24).Text, "#0.000")
Case 25
Txtfields(25).Text = Format(Txtfields(25).Text, "#0.000")
Case 4
Txtfields(4).Text = Format(val(Txtfields(4).Text), "#0.000")
Case 5
If val(Txtfields(5).Text) > 9999999.999 Then
Txtfields(5).Text = ""
Txtfields(5).SetFocus
Else
Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
End If
Case 18
Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 7
    Call Txtfocus(7, 42, 43)
Case 43
    Call Txtfocus(43, 44, 45)
Case 45
    Call Txtfocus(45, 46, 47)
Case 47
    Call Txtfocus(47, 48, 51)
Case 51
    Call Txtfocus(51, 52, 53)

Case 53
    Call Txtfocus(53, 54, 8)
Case 8
    Call Txtfocus(8, 9, 10)
Case 10
    Call Txtfocus(10, 11, 12)
Case 12
    Call Txtfocus(12, 13, 15)
Case 15
    Call Txtfocus(15, 16, 57)
Case 57
    Call Txtfocus(57, 58, 55)
Case 55
    Call Txtfocus(55, 56, 59)
Case 59
    Call Txtfocus(59, 60, 61)
Case 61
    Call Txtfocus(61, 62, 70)
Case 49
    Call Txtfocus(49, 50, 63)

End Select

Select Case Index
    Case 109, 12, 7, 47, 43, 45, 51, 10, 15, 57, 59, 61, 112
        If val(Txtfields(Index).Text) > 100 Then
            MsgBox "Please enter Percentage below 100", vbInformation, head
            Txtfields(Index).SetFocus
            Exit Sub
        End If
        If Index <> 57 Then
            Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.00")
        Else
            Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.000")
        End If
    Case 53, 84
        If val(Txtfields(Index).Text) > 100 Then
            MsgBox "Please enter Percentage below 100", vbInformation, head
            Txtfields(Index).SetFocus
            Exit Sub
        Else
            If val(Txtfields(53).Text) <> 0 Then
                Txtfields(54).Text = Format(Round(val(Txtfields(53).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
            End If
        
            totVal = val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)
        
            If val(totVal) > val(Txtfields(6).Text) Then
                MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
                Txtfields(53).Text = "0.00"
                Txtfields(54).Text = ""
                Txtfields(54).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.00")
    Case 6, 54, 85, 13, 42, 48, 44, 46, 42, 48, 44, 52, 11, 16, 58, 60, 62, 70, 64, 63, 107, 66, 111, 67, 69, 17, 18, 19, 112, 113
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.00")
    Case 57
        Txtfields(Index).Text = Format(val(Txtfields(Index).Text), "#0.000")
    Case 115
        If Opt = "add" Or Opt = "mod" Then
            If val(Txtfields(115).Text) = 0 Then
                Txtfields(115).SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
        End If
End Select

    
    


End If
Call TaxCalculation
If Index = 19 Then
    SSTab1.Tab = 2
ElseIf Index = 6 Then
    StatusBar1.Panels(2).Text = ""
End If

Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_LostFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error

If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True

    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "SHAPE {SELECT Top 1 A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,awt_flg,PJTC,inwarddate,PTYPE,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,varcode,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dutyclaimable,DISCOUNTFLG,DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,WeightFlg FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
'                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' order by lotdt Desc,arrno Desc " & _
    '                 " } AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT FROM RM_BALE" & _
    '                 " where lottype = 'A' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') " & _
'                "  } AS ChildCMD RELATE ARRNO TO ARRNO,ARRDT TO ARRDT,LOTDT TO LOTDT,lottype to lottype ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
  adoPrimaryRS.Open " SELECT   A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,awt_flg,PJTC,inwarddate,PTYPE,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,varcode,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dutyclaimable,DISCOUNTFLG,DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,WeightFlg FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
                    "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' order by lotdt ASC,arrno ASC ", DB, adOpenStatic

    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        iFlag = 0
        adoPrimaryRS.MoveLast
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
        Set AdosecondaryRs = New Recordset
'        Set adoSecondaryRS = adoPrimaryRS("ChildCMD").UnderlyingValue
        AdosecondaryRs.Open " SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT FROM RM_BALE" & _
                           " where lottype = 'A'  and Varcode='" & adoPrimaryRS("varcode") & "' and arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic
                                    'catcd , LOTNO, baleno, GRWT, TAREWT,trash_et, moisture_et, netwt, LOTDT, lottype, PGRSWT, PTAREWT, PNETWT, partybaleno, arrno Varcode, Divcode
        Set grddatagrid.DataSource = AdosecondaryRs
        Call GRIDALIGN
        Frame2.Visible = False
        Frame18.Visible = False
        Call bindcontls
        Call disablcontls
        Call Lotdisplay
        Label62.Caption = IIf(IsNull(adoPrimaryRS("awt_flg")), "N", adoPrimaryRS("awt_flg"))
        Txtfields(33).Locked = True
        Txtfields(34).Locked = True
        Txtfields(71).Locked = True
        Txtfields(72).Locked = True
        desc.Caption = "Query"
        DATLAB.Caption = pdate
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        Call disablcontls
        lbltolaper.Caption = " "
        lbltolaqty.Caption = " "
        SSTab1.Tab = 0
        Exit Sub
  Else
       Call SpreadAlign(0)
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       SSTab1.Tab = 0
  End If
End If


Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure QUERY_MODE of Form WLotbale", vbInformation, head

End Sub
Public Sub GRIDALIGN()
grddatagrid.Columns(0).Visible = False
grddatagrid.Columns(1).Visible = False
grddatagrid.Columns(7).Visible = True
grddatagrid.Columns(2).Caption = "Mill Bale    No."
grddatagrid.Columns(2).Width = 800
grddatagrid.Columns(2).Alignment = dbgCenter
grddatagrid.Columns(2).Locked = True
grddatagrid.Columns(3).Caption = " Mill Gross           Wt."
grddatagrid.Columns(3).Width = 975
grddatagrid.Columns(3).NumberFormat = "##0.000"
grddatagrid.Columns(3).Alignment = dbgRight
grddatagrid.Columns(4).Caption = "Mill Tare          Wt."
grddatagrid.Columns(4).Width = 875
grddatagrid.Columns(4).NumberFormat = "##0.000"
grddatagrid.Columns(4).Alignment = dbgRight

grddatagrid.Columns(5).Caption = " Mill Trash Wt."
grddatagrid.Columns(5).Width = 875
grddatagrid.Columns(5).NumberFormat = "##0.000"
grddatagrid.Columns(5).Alignment = dbgRight

grddatagrid.Columns(6).Caption = " Mill Moi.         Wt."
grddatagrid.Columns(6).Width = 875
grddatagrid.Columns(6).NumberFormat = "##0.000"
grddatagrid.Columns(6).Alignment = dbgRight

grddatagrid.Columns(7).Caption = "  Mill Nett          Wt."
grddatagrid.Columns(7).Width = 925
grddatagrid.Columns(7).NumberFormat = "##0.000"
grddatagrid.Columns(7).Alignment = dbgRight
grddatagrid.Columns(7).Locked = True

grddatagrid.Columns(9).Caption = "Lot Type"
grddatagrid.Columns(9).Width = 475
grddatagrid.Columns(9).Alignment = dbgLeft



grddatagrid.Columns(0).Visible = False
grddatagrid.Columns(1).Visible = False
grddatagrid.Columns(8).Visible = False
If Opt = "add" Then
    grddatagrid.Columns(12).Caption = "Supplier Gross Wt."
    grddatagrid.Columns(13).Caption = "Supplier Tare Wt."
    grddatagrid.Columns(14).Caption = "Supplier Nett Wt."
    grddatagrid.Columns(12).Visible = True
    grddatagrid.Columns(15).Caption = "Supplier Bale No."
    grddatagrid.Columns(12).Alignment = dbgRight
    grddatagrid.Columns(13).Alignment = dbgRight
    grddatagrid.Columns(14).Alignment = dbgRight
    grddatagrid.Columns(15).Alignment = dbgLeft
    grddatagrid.Columns(12).NumberFormat = "##0.000"
    grddatagrid.Columns(13).NumberFormat = "##0.000"
    grddatagrid.Columns(14).NumberFormat = "##0.000"
    grddatagrid.Columns(12).Width = 1000
    grddatagrid.Columns(13).Width = 950
    grddatagrid.Columns(14).Width = 1000
    grddatagrid.Columns(15).Width = 1000
    grddatagrid.Columns(16).Visible = False
    grddatagrid.Columns(17).Visible = False
    
Else
    grddatagrid.Columns(10).Caption = "   Supplier    Gross Wt."
    grddatagrid.Columns(11).Caption = "   Supplier    Tare Wt."
    grddatagrid.Columns(12).Caption = "   Supplier     Nett Wt."
    
    
    grddatagrid.Columns(13).Caption = " Supplier     Bale No."
    grddatagrid.Columns(10).Alignment = dbgRight
    grddatagrid.Columns(11).Alignment = dbgRight
    grddatagrid.Columns(12).Alignment = dbgRight
    grddatagrid.Columns(13).Alignment = dbgCenter
    grddatagrid.Columns(10).NumberFormat = "##0.000"
    grddatagrid.Columns(11).NumberFormat = "##0.000"
    grddatagrid.Columns(12).NumberFormat = "##0.000"
    grddatagrid.Columns(10).Width = 1050
    grddatagrid.Columns(11).Width = 1000
    grddatagrid.Columns(12).Width = 1000
    grddatagrid.Columns(13).Width = 1000
    grddatagrid.Columns(13).Visible = False
    grddatagrid.Columns(14).Visible = False
    grddatagrid.Columns(15).Visible = False
    If Opt = "mod" Then
        grddatagrid.Columns(12).Visible = True
        grddatagrid.Columns(14).Visible = False
        grddatagrid.Columns(15).Visible = False
        grddatagrid.Columns(16).Visible = False
       grddatagrid.Columns(17).Visible = False
    End If

End If

End Sub

Public Sub Value_Cal()
 Text4.Text = 0
 Text5.Text = 0
 Text6.Text = 0
 Text7.Text = 0
 Text16.Text = 0
 
 AdosecondaryRs.MoveFirst
 For i = 1 To AdosecondaryRs.RecordCount
    Text4.Text = val(grddatagrid.Columns(3).Text)
    Text5.Text = val(Text5.Text) + val(grddatagrid.Columns(3).Text)
    Text6.Text = val(Text6.Text) + val(grddatagrid.Columns(3).Text)
    Text16.Text = val(Text16.Text) + val(grddatagrid.Columns(5).Text)
    Text7.Text = val(Text7.Text) + val(grddatagrid.Columns(6).Text)
   AdosecondaryRs.MoveNext
 Next
End Sub

Public Sub delmodproc(a As String, b As String)
On Error GoTo delmodproc_Error

 Set adoPrimaryRS = New Recordset
''    adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,cOLORCODE,awt_flg,PJTC,PTYPE  FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
''                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear=" & Year(yfdate) & " " & _
''                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT FROM RM_BALE" & _
''                 " where lottype = 'A' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') " & _
''                "  } AS ChildCMD RELATE ARRNO TO ARRNO,ARRDT TO ARRDT,LOTDT TO LOTDT,lottype to lottype ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

adoPrimaryRS.Open "SHAPE {SELECT DISTINCT * FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
                 "  a.DIVCODE = '" & Divcode & "' and A.ARRNO=" & g & " AND  A.ARRDt='" & Format(f, "YYYY-MM-DD") & "'  AND opflg='N' and lotyear=" & Year(yfdate) & " " & _
                 " Order by A.ARRNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et, moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,arrno,arrdt  ,varcode,divcode FROM RM_BALE" & _
                 " where lottype = 'A' AND ARRNO=" & g & " ) order by baleno,VARCODE,LOTNO" & _
                "  } AS ChildCMD RELATE ARRNO TO ARRNO,LOTDT TO LOTDT,lottype to lottype ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                    If adoPrimaryRS.RecordCount > 0 Then
                    

    Set rssmodlot = New Recordset
    rssmodlot.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,inwardno,inwarddate,OtherTaxableAmt,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt" & _
    ",tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,modusrid,moddate,TAX_CHOICE,vcatcd,shipchrg,otherTaxableAmt,FAVAOURABLEWGT,SICAAmt FROM RM_LOT WHERE DIVCODE = '" & Divcode & "' and ARRNO=" & g & " AND  ARRDt='" & Format(f, "YYYY-MM-DD") & "'  AND opflg='N' and lotyear=" & Year(yfdate) & "", DB, adOpenStatic, adLockBatchOptimistic

    Set AdosecondaryRs = adoPrimaryRS("childcmd").UnderlyingValue
    Set grddatagrid.DataSource = AdosecondaryRs
    Call GRIDALIGN
    Call bindcontls
    ' Frame2.Visible = False
    SSTab1.Visible = True
    grddatagrid.Visible = True
    grddatagrid.AllowAddNew = False
    SSTab1.Visible = True
    
    Text4.Visible = False
    Text5.Visible = False
    Text6.Visible = False
    Text7.Visible = False
    Text16.Visible = False
    
    Text11.Visible = False
    Call GRIDALIGN
    
        Set rsb = New Recordset
        rsb.Open "select * from rm_arrival where arrno='" & adoPrimaryRS("ARRno") & "' and arrdate='" & Format(adoPrimaryRS("ARRDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsb.RecordCount > 0 Then
            MaskEdBox1(4).Mask = rsb("ARRDATE")
            MaskEdBox1(4).Text = MaskEdBox1(4).Mask
            Txtfields(41).Text = IIf(IsNull(rsb("GCNO")), "", rsb("gcno"))
            Txtfields(40).Text = rsb("LORRYNOS")
            Txtfields(38).Text = rsb("AREACODE")
            txtremarks.Text = IIf(IsNull(rsb("REMARKS")), "", rsb("REMARKS"))
            
            If IsNull(adoPrimaryRS("TAX_CHOICE")) = False Then
                If adoPrimaryRS("TAX_CHOICE") = "SINGLE" Then
                    Option1.value = True
                Else
                    Option2.value = True
                End If
            Else
                Option2.value = True
            End If
            Set rs = New Recordset
            rs.Open "Select CentralizedOrder from rm_param", DB, adOpenStatic
            If rs(0) = "Y" Then
                Set rscont = New Recordset
                rscont.Open "select DLYTYPE from rm_cont where  contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
            Else
                Set rscont = New Recordset
                rscont.Open "select DLYTYPE from rm_cont where  contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            End If
            
            If rscont.RecordCount > 0 Then
                deltype = rscont("DLYTYPE")
            End If
            
            Set LABRS = New Recordset
            LABRS.Open "SELECT *  FROM RM_area  WHERE areacode='" & adoPrimaryRS("areacd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If LABRS.RecordCount > 0 Then
                    Txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    Txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    Text20.Text = LABRS("AREANAME")
            Else
                     Txtfields(92).Text = ""
                     Txtfields(93).Text = ""
                    Text20.Text = " "
            End If
            Set rsd = New Recordset
            rsd.Open "select * from fa_slmas where slcode='" & adoPrimaryRS("supcd") & "'", DB, adOpenStatic
            If rsd.RecordCount > 0 Then
                Text1(0).Text = rsd("slname")
            Else
                Text1(0).Text = " "
            End If
            
            Set rsd1 = New Recordset
            rsd1.Open "select * from fa_slmas where slcode='" & adoPrimaryRS("brkcd") & "'", DB, adOpenStatic
            If rsd1.RecordCount > 0 Then
                Text12.Text = rsd1("slname")
            Else
                Text12.Text = " "
            End If
            
            Combo3.Text = IIf(IsNull(rsb("carcode")), "", rsb("carcode"))
            Txtfields(27).Text = rsb("weignment")
            If IsNull(rsb("weightdate")) = False Then
                MaskEdBox1(0).Text = rsb("weightdate")
            End If
            'for delivery type
                        
            Set rsf = New Recordset
            rsf.Open "SELECT * FROM RM_god WHERE GCODE='" & adoPrimaryRS("GODOWN") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
            If rsf.RecordCount > 0 Then
                    Text8.Text = rsf("GNAME")
            Else
                    Text8.Text = " "
            End If
            '',PJTC,PTYPE
            Set rs4 = New Recordset
            rs4.Open "SELECT * FROM RM_PURTYPE WHERE PURTYPE='" & adoPrimaryRS("PTYPE") & "'", DB, adOpenStatic
            
            If rs4.RecordCount > 0 Then
                Txtfields(303).Text = rs4("PURDESC")
            Else
                Txtfields(303).Text = " "
            End If
            
            Set rs5 = New Recordset
            rs5.Open "SELECT * FROM FA_TCMAS WHERE TC='" & IIf(IsNull(adoPrimaryRS("PJTC")), 0, adoPrimaryRS("PJTC")) & "'", DB, adOpenStatic
            
            If rs5.RecordCount > 0 Then
                Txtfields(301).Text = rs5("TCHEAD")
            Else
                Txtfields(301).Text = " "
            End If
            Call Lotdisplay
        End If
    
    
    If Opt = "mod" Or Opt = "del" Then
        Txtfields(0).Locked = True
        Txtfields(1).Locked = True
        Txtfields(2).Locked = True
        Txtfields(3).Locked = False
        Txtfields(4).Locked = False
        Txtfields(6).Locked = False
        Txtfields(7).Locked = False
        Txtfields(9).Locked = False
        Txtfields(11).Locked = False
        Txtfields(12).Locked = False
        Txtfields(13).Locked = False
        Txtfields(14).Locked = False
        Txtfields(15).Locked = False
        Txtfields(16).Locked = False
        Txtfields(17).Locked = False
        Txtfields(18).Locked = False
        Txtfields(19).Locked = True
        Txtfields(20).Locked = False
        Frame2.Visible = True
        Frame18.Visible = True
        Label9.Visible = True
        Text4.Visible = True
        Text5.Visible = True
        Text6.Visible = True
        Text7.Visible = True
        Text16.Visible = False
    
        Text11.Visible = True
        
        grddatagrid.AllowUpdate = True
        If grddatagrid.Row > 0 Then
            oldgrs = Txtfields(23).Text
            oldtare = Txtfields(24).Text
            qty = Txtfields(22).Text
            Screen.MousePointer = 0
        MaskEdBox1(1).Enabled = True
        End If
    End If
    End If
Frame9.Visible = False
Screen.MousePointer = 0
Exit Sub
delmodproc_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure delmodproc of Form WLotbale", vbInformation, head
End Sub

Private Sub Txtfields_Validate(Index As Integer, Cancel As Boolean)

On Error GoTo Txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
Select Case Index
Case 106
    Set rs = New Recordset
    rs.Open "SELECT * FROM IN_CAT", DB, adOpenStatic
    If rs.RecordCount <> 0 Then
        LookUp.clear = True
        LookUp.query = " select dISTINCT CATCODE ""Vat Category Code"",CATDESC ""Vat Description""  from in_cat"
        LookUp.Caption = "Tax Details List"
        LookUp.DefCol = "Vat Description"
        LookUp.ALIGN = "2000,3500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               Txtfields(106).Text = LookUp.Fields(0)
               LookUp.clear = True
               'TXTFIELDS(8).SetFocus
        Else
               Txtfields(106).Text = ""
             '  TXTFIELDS(8).SetFocus
        End If
     Else
        Txtfields(106).Text = ""
     End If
Case 3

'        If Opt = "add" Then
'            Set rsg = New Recordset
'            rsg.Open "select isnull(billno,'') from rm_lot where BILLNO='" & txtfields(3).Text & "' AND  supcd='" & txtfields(30).Text & "' and lotdt betweeN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'            If rsg.RecordCount > 0 Then
'                    MsgBox "Already Billno Given to this Supplier", vbInformation, head
'                    txtfields(3).Text = ""
'                    txtfields(3).SetFocus
'                    Exit Sub
'            End If
'        End If
        
        If Opt = "mod" Then
            Set rsg = New Recordset
            rsg.Open "select isnull(billno,'') from rm_lot where BILLNO='" & Txtfields(3).Text & "' AND  supcd='" & Txtfields(30).Text & "' and lotdt betweeN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and arrno<>" & val(Txtfields(96).Text) & "", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                    MsgBox "Already Bill number Given to this Supplier", vbInformation, head
                    Txtfields(3).Text = ""
                    Txtfields(3).SetFocus
                    Exit Sub
            End If
        End If
        

Case 22
    Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(26).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text1(0).Text = rs(0)
   End If
   rs.Close

Case 26
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(26).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text1(0).Text = rs(0)
   End If
   rs.Close
Case 32
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(32).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text1(1).Text = rs(0)
   Else
     Text1(1).Text = ""
   End If
   rs.Close
Case 35
'   Set rs = New Recordset
'   rs.Open "select slname from fa_slmas where slcode = '" & txtfields(35).Text & "'", DB, adOpenStatic
'   If rs.RecordCount <> 0 Then
'     Text1(2).Text = rs(0)
'   Else
'     Text1(2).Text = ""
'   End If
'   rs.Close
Case 27
   Set rs = New Recordset
   rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(27).Text & "'", DB, adOpenStatic
   If rs.RecordCount <> 0 Then
     Text9.Text = rs(0)
   Else
     Text9.Text = ""
   End If
   rs.Close
   
Case 30


    If Not adoPrimaryRS.EOF Then
        Set rs = New Recordset
        rs.Open "SELECT * FROM RM_COUNT WHERE CNTCD='" & adoPrimaryRS("CNTCODE") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rs.RecordCount > 0 Then Txtfields(41).Text = rs(1)
    End If
'   If Opt = "add" Or Opt = "mod" Then
'
'        Set rs = New Recordset
'        rs.Open "SELECT * FROM fa_slmas WHERE slcode = '" & txtfields(30).Text & "' ", DB, adOpenStatic
'        If rs.RecordCount > 0 Then
'           txtfields(30).Text = UCase(txtfields(30).Text)
'           text1(0).Text = rs("slname")
'        Else
'
'            LookUp.clear = True
'            LookUp.query = "Select Slname, City, Slcode FROM Fa_Slmas WHERE Slcode Like 'C1%'"
'            LookUp.Caption = "Supplier Master Details"
'            LookUp.DefCol = "Slname"
'            LookUp.ALIGN = "5000,2000,3000"
'
'            LookUp.Show vbModal
'
'            If LookUp.Cancel = False Then
'                txtfields(30).Text = LookUp.Fields(0)
'                text1(0).Text = LookUp.Fields(2)
'                LookUp.clear = True
'
'                'txtfields(24).SetFocus
'                'flg = "Y"
'                Exit Sub
'            Else
'            LookUp.clear = True
'            txtfields(30).SetFocus
'            ''Exit Sub
'            End If
'        End If
'
'End If
   
Case 2
'If Opt = "add" Or Opt = "mod" Then
'        Set rs = New Recordset
'        rs.Open "SELECT * FROM rm_var WHERE varcode= '" & txtfields(2).Text & "' ", DB, adOpenStatic
'        If rs.RecordCount > 0 Then
'           txtfields(2).Text = UCase(txtfields(2).Text)
'           txtfields(79).Text = rs("varname")
'        Else
'      LookUp.clear = True
'      LookUp.query = "SELECT Varcode,varname from rm_var"
'      LookUp.Caption = "Variety Details"
'      LookUp.DefCol = "varname"
'      LookUp.ALIGN = "4000,4000"
'      LookUp.Show vbModal
'    If LookUp.Cancel = False Then
'      txtfields(2).Text = LookUp.Fields(1)
'      txtfields(4).Text = LookUp.Fields(0)
'      LookUp.clear = True
'      txtfields(79).SetFocus
'       'flg = "Y"
'        Exit Sub
'     Else
'        Exit Sub
'     End If
'        LookUp.clear = True
'        End If
'End If

Case 29
'   Set rs = New Recordset
'   rs.Open "select VARname from rm_var where varcode = '" & txtfields(29).Text & "'", DB, adOpenStatic
'   If rs.RecordCount <> 0 Then
'     txtfields(20).Text = rs(0)
'   End If
'   rs.Close
Case 40
'   Set rs = New Recordset
'   rs.Open "select COLORname from rm_COLOR where COLORcode = '" & txtfields(40).Text & "'", DB, adOpenStatic
'   If rs.RecordCount <> 0 Then
'     txtfields(39).Text = rs(0)
'   End If
'   rs.Close
Case 30
        Set rs = New Recordset
        rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(30).Text & "'", DB, adOpenStatic
        If rs.RecordCount <> 0 Then
          Text1(0).Text = rs("slname")
        Else
          Text1(0).Text = ""
        End If
        rs.Close
Case 37
        Set rs = New Recordset
        rs.Open "select slname from fa_slmas where slcode = '" & Txtfields(37).Text & "'", DB, adOpenStatic
        If rs.RecordCount <> 0 Then
          Text12.Text = rs("slname")
        Else
          Text12.Text = ""
        End If
        rs.Close
Case 24
    Text9.Text = (val(Txtfields(23).Text) - val(Txtfields(24).Text)) * val(Text3.Text) / 100
    Txtfields(25).Text = (val(Txtfields(23).Text) - val(Txtfields(24).Text)) - val(Text9.Text)
    Txtfields(5).Text = Format(val(Txtfields(25).Text), "##.00")
    ''Contract Rate
    RATECANDY = val(Txtfields(1).Text)
    If RATECANDY > 0 Then
       Set rs = New Recordset
       rs.Open "SELECT cENTRALISEDORDER FROM RM_PARAM"
       If rs(0) = "Y" Then
            Set rsr = New Recordset
            rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
        Else
            Set rsr = New Recordset
           rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
          
        End If

       If rsr.RecordCount > 0 Then
            Txtfields(6).Text = val(Txtfields(25).Text) * (Round((RATECANDY / rsr("VALUE")) - val(Txtfields(94).Text), 4))
       Else
            If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
                Txtfields(6).Text = val(Txtfields(25).Text) * Round(RATECANDY / 1, 4)
            Else
                Txtfields(6).Text = val(Txtfields(25).Text) * Round(RATECANDY / 355.6187, 4)
            End If
       End If
        
        
''        If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
''            TXTFIELDS(6).Text = val(TXTFIELDS(25).Text) * Round(RATECANDY / 1, 4)
''        Else
''            TXTFIELDS(6).Text = val(TXTFIELDS(25).Text) * Round(RATECANDY / 355.6187, 4)
''        End If
        
'        If txtfields(76).Text = "C" Then
'            txtfields(6).Text = val(txtfields(25).Text) * Round(Ratecandy / 355.6187, 4)
'        Else
'            txtfields(6).Text = val(txtfields(25).Text) * Round(Ratecandy / 1, 4)
'        End If
            'Else
            '   Txtfields(6).Text = (val(Txtfields(25).Text) / lotreceivequantity) * Ratecandy * 0.2812
    End If
Case 94
    
    Call Calc
Case 13
    If val(Txtfields(13).Text) > val(Txtfields(6).Text) Then
        MsgBox "Frieght Amount must be less than Bill Value", vbInformation, head
        Txtfields(13).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 54
    If val(Txtfields(54).Text) > val(Txtfields(6).Text) Then
        MsgBox "Cash Discount must be less than Bill Value", vbInformation, head
        Txtfields(54).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 85
    If val(Txtfields(85).Text) > val(Txtfields(6).Text) Then
        MsgBox "Trade Discount must be less than Bill Value", vbInformation, head
        Txtfields(85).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 42
    If val(Txtfields(42).Text) > val(Txtfields(6).Text) Then
        MsgBox "B.E.D Amount must be less than Assessable Value", vbInformation, head
        Txtfields(42).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 44
    If val(Txtfields(44).Text) > val(Txtfields(6).Text) Then
        MsgBox "Ed Cess Amount must be less than Bill Value", vbInformation, head
        Txtfields(44).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 46
    If val(Txtfields(46).Text) > val(Txtfields(6).Text) Then
        MsgBox "HsCess Amount must be less than Bill Value", vbInformation, head
        Txtfields(46).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 48
    If val(Txtfields(48).Text) > val(Txtfields(6).Text) Then
        MsgBox "Cess Amount must be less than Bill Value", vbInformation, head
        Txtfields(48).Text = "0.00"
        Txtfields(48).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 52
    If val(Txtfields(52).Text) > val(Txtfields(6).Text) Then
        MsgBox "Tax Amount must be less than Bill Value", vbInformation, head
        Txtfields(52).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 11
    If val(Txtfields(11).Text) > val(Txtfields(6).Text) Then
        MsgBox "Other Tax Amount must be less than Bill Value", vbInformation, head
        Txtfields(11).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 16
    If val(Txtfields(16).Text) > val(Txtfields(6).Text) Then
        MsgBox "Railway Freight Amount must be less than Bill Value", vbInformation, head
        Txtfields(16).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 58
    If val(Txtfields(58).Text) > val(Txtfields(6).Text) Then
        MsgBox "Insurance Amount must be less than Bill Value", vbInformation, head
        Txtfields(58).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 60
    If val(Txtfields(60).Text) > val(Txtfields(6).Text) Then
        MsgBox "Commission Amount must be less than Bill Value", vbInformation, head
        Txtfields(60).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 62
    If val(Txtfields(62).Text) > val(Txtfields(6).Text) Then
        MsgBox "LC Interest must be less than Bill Value", vbInformation, head
        Txtfields(62).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    
    End If

Case 7, 42
    
End Select
End If

If Opt = "add" Or Opt = "mod" Then

    
Select Case Index
Case 28
    
    If Trim(Txtfields(28).Text) <> "" Then
        Set lot = New Recordset
        lot.Open "select lotno from rm_lot where lotno = " & val(Trim(Txtfields(28).Text)) & " and divcode='" & Divcode & "'", DB, adOpenStatic
        'lot.Open "select lotno from rm_lot where lotno = " & val(Trim(txtfields(28).Text)) & " and lotdt = '" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        If lot.RecordCount > 0 Then
            MsgBox ("This Lot Number is already entered"), vbInformation, head
            Txtfields(28).Text = ""
            Cancel = True
            Exit Sub
        Else
            MaskEdBox1(3).Enabled = True
            MaskEdBox1(3).SetFocus
            Exit Sub
            End If
    Else
        MsgBox ("Please Enter Lot Number"), vbInformation, head
        Txtfields(28).Text = ""
        Cancel = True
        Exit Sub
    End If
Case 5
If Txtfields(5).Text = "" Then
MsgBox "Please enter Invoice Weight", vbInformation, head
Cancel = True
End If
Case 6
Case 7
    ''bedamt= bedper * val /100
    If UCase(deltype) = "F" Then
        Txtfields(42).Text = Format(Round(val(Txtfields(7).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text))) / 100, 2), "0.00")
    Else
        Txtfields(42).Text = Format(Round(val(Txtfields(7).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text))) / 100, 2), "0.00")
    End If
    Exit Sub
Case 43
    ''ed cess amt
    Txtfields(44).Text = Format(Round(val(Txtfields(43).Text) * val(Txtfields(42).Text) / 100, 0), "0.00")
    Exit Sub
Case 45
    ''Hscess
    Txtfields(46).Text = Format(Round(val(Txtfields(45).Text) * val(Txtfields(42).Text) / 100, 0), "0.00")
    Exit Sub
Case 47
    ''cessamt=cessper* val/100
    If UCase(deltype) = "F" Then
        Txtfields(48).Text = Format(Round(val(Txtfields(47).Text) * (val(Txtfields(6).Text) - val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text) + val(Txtfields(42).Text) + val(Txtfields(44).Text) + val(Txtfields(46).Text)) / 100, 2), "0.00")
    Else
        Txtfields(48).Text = Format(Round(val(Txtfields(47).Text) * (val(Txtfields(6).Text) - val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(42).Text) + val(Txtfields(44).Text) + val(Txtfields(46).Text)) / 100, 0), "0.00")
    End If
    Exit Sub
Case 49
    Txtfields(50).Text = Round(val(Txtfields(49).Text) * val(Txtfields(6).Text) / 100, 0)
    Exit Sub
Case 83
If Option2.value Then
    Set rs = New Recordset
    rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & Txtfields(83).Text & "'", DB, adOpenStatic
    If rs.RecordCount = 0 Then
        VatFlag = False
        LookUp.clear = True
        LookUp.query = " select tax_code""Tax code"",description""Tax Description"",st_per"" Tax %"",ITCTAXSTATUS""ITC Tax Status"" from ig_tax where taxstatus='Y'"
        LookUp.Caption = "Tax Listing"
        LookUp.DefCol = "Tax Description"
        LookUp.ALIGN = "1200,3500,1500,2000"
       LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(83).Text = LookUp.Fields(0)
            Txtfields(51).Text = Format(LookUp.Fields(2), "0.00")
'--ANBU
            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
            If Option2.value = True Then
             Call TaxCalculation
             If optBefore = True Then
                Set rs = New Recordset
                rs.Open "Select * from rm_param", DB, adOpenStatic
                If rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       Txtfields(52).Text = Round((val(Txtfields(51).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(52).Text = Round((val(Txtfields(51).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       Txtfields(52).Text = Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(52).Text = Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                End If
            Else
            Set rs = New Recordset
                rs.Open "Select * from rm_param", DB, adOpenStatic
                If rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       Txtfields(52).Text = Round((val(Txtfields(51).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(52).Text = Round((val(Txtfields(51).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       Txtfields(52).Text = Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(52).Text = Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                End If
            End If
                'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
                
                If EXIST_VAT(Txtfields(30).Text) = False Then
                      Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(52).Text)
                End If
            End If
            Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
            LookUp.clear = True
            Else
                   Txtfields(51).Text = ""
                   Txtfields(52).Text = ""
                   Txtfields(83).Text = ""
                 '  TXTFIELDS(8).SetFocus
           End If
        Else
            Txtfields(51).Text = rs("ST_PER")
            Call TaxCalculation
            Tax_Calculation
          'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
            
            If EXIST_VAT(Txtfields(30).Text) = False Then
                Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(52).Text)
            End If
        End If
End If
Case 114
If Option2.value Then
    Set rs = New Recordset
    rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & Txtfields(114).Text & "'", DB, adOpenStatic
    If rs.RecordCount = 0 Then
        VatFlag = False
        LookUp.clear = True
        LookUp.query = " select tax_code""Tax code"",description""Tax Description"",st_per"" Tax %"",ITCTAXSTATUS""ITC Tax Status"" from ig_tax where taxstatus='Y'"
        LookUp.Caption = "Tax Listing"
        LookUp.DefCol = "Tax Description"
        LookUp.ALIGN = "1200,3500,1500,2000"
       LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Txtfields(114).Text = LookUp.Fields(0)
            Txtfields(112).Text = Format(LookUp.Fields(2), "0.00")
'--ANBU
            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
            If Option2.value = True Then
             Call TaxCalculation
             If optBefore = True Then
                Set rs = New Recordset
                rs.Open "Select * from rm_param", DB, adOpenStatic
                If rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       Txtfields(113).Text = Round((val(Txtfields(112).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(113).Text = Round((val(Txtfields(112).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       Txtfields(113).Text = Round(val(Txtfields(112).Text) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(113).Text = Round(val(Txtfields(112).Text) * (val(Txtfields(6).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                End If
            Else
            Set rs = New Recordset
                rs.Open "Select * from rm_param", DB, adOpenStatic
                If rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       Txtfields(113).Text = Round((val(Txtfields(112).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(113).Text = Round((val(Txtfields(112).Text) + val(Txtfields(60).Text)) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       Txtfields(113).Text = Round(val(Txtfields(112).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    Else
                       Txtfields(113).Text = Round(val(Txtfields(112).Text) * (val(Txtfields(6).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0)
                    End If
                End If
            End If
                'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
                
                If EXIST_VAT(Txtfields(30).Text) = False Then
                      Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(113).Text)
                End If
            End If
            Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
            LookUp.clear = True
            Else
                   Txtfields(112).Text = ""
                   Txtfields(113).Text = ""
                   Txtfields(114).Text = ""
                 '  TXTFIELDS(8).SetFocus
           End If
        Else
            Txtfields(112).Text = rs("ST_PER")
            Call TaxCalculation
            Tax_Calculation
          'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
            
            If EXIST_VAT(Txtfields(30).Text) = False Then
                Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(113).Text)
            End If
        End If
End If


Case 107
    Call TaxCalculation
Case 111
    Txtfields(Index).Text = Format(Txtfields(Index).Text, "0.00")
    Call Tax_Calculation
    Call TaxCalculation

Case 53, 54
    ''CASH discount = disper* val /100

    
    Exit Sub
Case 84, 85
    ''Trade discount = disper* val /100
    If val(Txtfields(84).Text) <> 0 Then
        Txtfields(85).Text = Format(Round(val(Txtfields(84).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
    Else
        'txtFields(85).Text = 0
    End If
    totVal = val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)
    
    If val(totVal) > val(Txtfields(6).Text) Then
        MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
        Txtfields(85).Text = ""
        Txtfields(85).SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    Exit Sub
Case 55
    If val(Txtfields(55).Text) <> 0 Then
        Txtfields(56).Text = Round(val(Txtfields(55).Text) * val(Txtfields(6).Text) / 100, 0)
    Else
        Txtfields(56).Text = 0
    End If
    Exit Sub
Case 8
    If val(Txtfields(8).Text) <> 0 Then
        Txtfields(9).Text = val(Txtfields(8).Text) * val(Txtfields(52).Text) / 100
    Else
        'txtFields(9).Text = 0
    End If
    Exit Sub
Case 10
    If optBefore = True Then
        If val(Txtfields(10).Text) <> 0 Then
            Txtfields(11).Text = Format(Round(val(Txtfields(10).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
        Else
            'txtFields(11).Text = 0
        End If
    Else
        If val(Txtfields(10).Text) <> 0 Then
            Txtfields(11).Text = Format(Round((val(Txtfields(6).Text) - val(Txtfields(85).Text) - val(Txtfields(54).Text)) * val(Txtfields(10).Text) / 100, 2), "0.00")
        Else
            'txtFields(11).Text = 0
        End If
    End If
    Exit Sub
Case 12, 13
    If val(Txtfields(12).Text) <> 0 Then
         Txtfields(13).Text = Format(Round(val(Txtfields(12).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
    Else
        'txtFields(13).Text = 0
    End If
    totVal = val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)
    
    If val(totVal) > val(Txtfields(6).Text) Then
        MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
        Txtfields(13).Text = ""
        Txtfields(12).SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    Exit Sub
Case 15
    If val(Txtfields(15).Text) <> 0 Then
        Txtfields(16).Text = Format(Round(val(Txtfields(15).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
    Else
        Txtfields(16).Text = Format(0, "0.00")
    End If
    Exit Sub
Case 57
    Txtfields(57).Text = Format(val(Txtfields(57).Text), "0.000")
'    Exit Sub
Case 59
    If val(Txtfields(59).Text) <> 0 Then
        Txtfields(60).Text = Format(Round(val(Txtfields(59).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
    Else
        Txtfields(60).Text = Format(0, "0.00")
    End If
    
'    Set Rs = New Recordset
'    Rs.Open "Select * from rm_param", DB, adOpenStatic
'    If Rs("commtax") = "Y" Then
'        If UCase(deltype) = "F" Then
'           TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'        Else
'           TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'        End If
'    Else
'        If UCase(deltype) = "F" Then
'           TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'        Else
'           TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'        End If
'    End If
'
    'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
    
'    If EXIST_VAT(txtFields(30).Text) = False Then
'          'txtFields(18).Text = val(txtFields(18).Text) - val(txtFields(52).Text)
'    End If
    Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Tax_Calculation
    Call TaxCalculation
    
    Exit Sub
Case 60
'    Set Rs = New Recordset
'    Rs.Open "Select * from rm_param", DB, adOpenStatic
'    If Rs("commtax") = "Y" Then
'        If UCase(deltype) = "F" Then
'           TXTFIELDS(52).Text = Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0)
'        Else
'           TXTFIELDS(52).Text = Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0)
'        End If
'    Else
'        If UCase(deltype) = "F" Then
'           TXTFIELDS(52).Text = Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0)
'        Else
'           TXTFIELDS(52).Text = Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0)
'        End If
'    End If
    
    'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
    Tax_Calculation
    If EXIST_VAT(Txtfields(30).Text) = False Then
        Txtfields(18).Text = val(Txtfields(18).Text) - val(Txtfields(52).Text)
    End If
        Txtfields(18).Text = Format(Txtfields(18).Text, "#0.00")
    Call TaxCalculation
    Exit Sub
Case 61
    If val(Txtfields(61).Text) <> 0 Then
        Txtfields(62).Text = Format(Round(val(Txtfields(61).Text) * val(Txtfields(6).Text) / 100, 2), "0.00")
    Else
        Txtfields(62).Text = Format(0, "0.00")
    End If
    Exit Sub
Case 86
    If val(Txtfields(86).Text) <> 0 Then
        Txtfields(87).Text = val(Txtfields(86).Text) * val(Txtfields(6).Text) / 100
    Else
        Txtfields(87).Text = 0
    End If
    Exit Sub
Case 22
    If Opt = "add" Then
        If Txtfields(22).Text = "" Then
            MsgBox "Please enter Quantity", vbInformation, head
            Txtfields(22).Locked = False
            Cancel = True
            Exit Sub
        Else
        
        Set rs = New Recordset
        rs.Open "Select CentralizedOrder from rm_param", DB, adOpenStatic
        If rs(0) = "Y" Then
            Set rsg = New Recordset
            rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & Txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'", DB
        Else
            Set rsg = New Recordset
            rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & Txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB
        End If
        
        If rsg.RecordCount > 0 Then
          Set rsa = New Recordset
            rsa.Open "select isnull(qtymargin,0) from rm_param ", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                toqty = (rsg("ORDQTY") + rsg("ORDQTY") * rsa(0) / 100) - (IIf(IsNull(rsg("RECQTY")), 0, rsg("recqty")) + rsg("cancelbales"))
                'RECQTY = RSG("RECQTY")
                lbltolwithbal.Caption = "Tola Bal: " & toqty
            Else
                toqty = 0
            End If
            
            If val(Txtfields(22).Text) > val(toqty) Then
                MsgBox "Quantity must be less than or equal to the Balance Quantity", vbInformation, head
                Cancel = True
                Txtfields(22).Text = ""
                Txtfields(22).SetFocus
                Exit Sub
            End If
        End If
        End If
    End If
    
    
Case 81
If Txtfields(81).Text = "" Then
    MsgBox "Please enter Party Gross Weight", vbInformation, head
    Txtfields(81).SetFocus
    Cancel = True
    Exit Sub
End If
   
Case 82
If Txtfields(82).Text = "" Then
    ''MsgBox "Party Tare Weight Cannot be Empty", vbInformation, head
    ''TXTFIELDS(82).SetFocus
    ''Cancel = True
    ''Exit Sub
    Txtfields(82).Text = "0"
End If
    
Case 23
If Txtfields(23).Text = "" Then
MsgBox "Please Enter Gross Weight", vbInformation, head
Cancel = True
End If
Case 24
If Txtfields(24).Text = "" Then
    ''MsgBox "Tare Weight Cannot be Empty", vbInformation, head
    ''Cancel = True
    ''Exit Sub
    Txtfields(24).Text = "0"
End If

Case 29
If Opt = "add" Then
Set rs = New Recordset
rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
If rs(0) = "Y" Then

    Set rsa = New Recordset
    rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AND contno='" & Trim(Txtfields(29).Text) & "'", DB, adOpenStatic
Else
    Set rsa = New Recordset
    rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND contno='" & Trim(Txtfields(29).Text) & "'", DB, adOpenStatic

End If

'If txtfields(29).Text = "" Then
If rsa.RecordCount = 0 Then
Set rs = New Recordset
rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
If rs(0) = "Y" Then


   Set rs = New Recordset
   rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0))", DB, adOpenStatic, adLockBatchOptimistic
Else

   Set rs = New Recordset
   rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

End If
   If rs.RecordCount = 0 Then
        MsgBox "Please enter details in Order Transaction first", vbInformation, head
        Call BUTTON_Click(10)
   Else
   
     StatusBar1.Panels(2).Text = "Select Order number from the list"
     LookUp.clear = True
Set rs = New Recordset
rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
If rs(0) = "Y" Then
     LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode"
Else
     LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and a.supcd=b.slcode"
End If
     LookUp.Caption = "Arrival Listing"
     LookUp.DefCol = "ContractNumber"
     LookUp.ALIGN = "1200,1500,4000"
     LookUp.Show vbModal
     If LookUp.Cancel = False Then
            SSTab1.Visible = True
            Txtfields(29).Text = LookUp.Fields(0)
            contdt = Format(LookUp.Fields(1), "dd/mm/yyyy")
            MaskEdBox1(1).Text = Format(LookUp.Fields(1), "dd/mm/yyyy")
            Call LotLoad(LookUp.Fields(0), LookUp.Fields(1))
            LookUp.clear = True
     End If
     End If
   Else
           contdt = Format(rsa(1), "dd/mm/yyyy")
            MaskEdBox1(1).Text = Format(rsa(1), "dd/mm/yyyy")
            Call LotLoad(Trim(Txtfields(29).Text), CStr(contdt))
   
   End If
End If
Case 77
 If Opt = "add" Or Opt = "mod" Then
            Set rs = New Recordset
            rs.Open "select * from rm_god where gcode='" & Trim(Txtfields(77).Text) & "'  and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
            If rs.RecordCount <> 0 Then
                Text8.Text = rs("gname")
                Txtfields(77).Text = rs("gcode")
                Txtfields(3).Locked = False
                'txtfields(80).SetFocus
            Else
                LookUp.clear = True
                LookUp.query = "select gcode""Godown Code"",gname""Godown Name"" from rm_god  where divcode='" & Divcode & "'"
                LookUp.DefCol = "Godown Name"
                LookUp.Caption = "Godown Listing"
                LookUp.ALIGN = "1500,2500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                Txtfields(77).Text = LookUp.Fields(0)
                Text8.Text = LookUp.Fields(1)
                Else
                Exit Sub
                End If
                LookUp.clear = True
        End If
        End If
Case 300
    If Opt = "add" Or Opt = "mod" Then
        If val(Txtfields(3).Text) > 0 Then
            Set rsa = New Recordset
            rsa.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(Txtfields(300).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.clear = True
                    LookUp.query = "select a.tc""Transaction Code"",a.tchead""Type Description"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
                    LookUp.DefCol = "Type Description"
                    LookUp.ALIGN = "2000,3500"
                    LookUp.Caption = "Transaction Type Listing"
                    
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        Txtfields(300).Text = LookUp.Fields(0)
                        Txtfields(301).Text = LookUp.Fields(1)
                        LookUp.clear = True
                        Txtfields(302).SetFocus
                    Else
                        SSTab1.Visible = True
                        Txtfields(300).SetFocus
                    End If
            Else
                Txtfields(301).Text = rsa("tchead")
            End If
        End If
    End If
Case 302
    If Opt = "add" Or Opt = "mod" Then
        If val(Txtfields(3).Text) > 0 Then
            Set rsa = New Recordset
            rsa.Open "select purtype,purdesc from rm_purtype where purtype='" & Trim(Txtfields(302).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.clear = True
                LookUp.query = "select purtype""Purchase Type Code"",purdesc""Purchase Type Description"" from rm_purtype"
                LookUp.DefCol = "Purchase Type Description"
                LookUp.ALIGN = "2300,3500"
                LookUp.Caption = "Purchase Type Listing"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    Txtfields(302).Text = LookUp.Fields(0)
                    Txtfields(303).Text = LookUp.Fields(1)
                    LookUp.clear = True
                    If Option1.value = True Then
                        Txtfields(69).SetFocus
                    Else
                        optDCNo.SetFocus
                        Exit Sub
                    End If
                Else
                    Txtfields(302).SetFocus
                End If
            Else
                Txtfields(303).Text = rsa(1)
                If Option1.value = True Then
                    Txtfields(69).SetFocus
                Else
                    optDCNo.SetFocus
                    Exit Sub
                End If
            End If
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
Case 5, 111
Txtfields(5).Text = Format(Txtfields(5).Text, "#0.000")
End Select
End If
If Index = 37 Then
If Opt = "add" Then
    If Trim(Txtfields(37).Text) <> "" Then
          Set rss = New Recordset
          rss.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & Trim(Txtfields(37).Text) & "'  and lotyear=" & Year(yfdate) & "", DB, adOpenStatic
          If Not rss.EOF Then
            Txtfields(3).Text = rss("BILLNO")
            If rss("BILLDT") = Null Then
                MaskEdBox1(2).Text = rss("BILLDT")
            End If
          End If
     End If
End If
End If



'
'Set RS2 = New Recordset
'RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from ig_tax where tax_code='" & Txtfields(83).Text & "'", DB, adOpenStatic
'If RS2.RecordCount = 0 Then
'    If UCase(deltype) = "S" Then
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    Else
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    End If
'ElseIf RS2("itctaxstatus") = "N" Then
'    If UCase(deltype) = "S" Then
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    Else
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(42))), 0, val(Txtfields(42))) + IIf(IsNull(val(Txtfields(44))), 0, val(Txtfields(44))) + IIf(IsNull(val(Txtfields(46))), 0, val(Txtfields(46))) + IIf(IsNull(val(Txtfields(48))), 0, val(Txtfields(48))) + IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) - IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    End If
'ElseIf RS2("itctaxstatus") = "Y" Then
'    If UCase(deltype) = "S" Then
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(13))), 0, val(Txtfields(13))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) + IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    Else
'        Txtfields(18).Text = IIf(IsNull(val(Txtfields(50))), 0, val(Txtfields(50))) + IIf(IsNull(val(Txtfields(52))), 0, val(Txtfields(52))) + IIf(IsNull(val(Txtfields(56))), 0, val(Txtfields(56))) + IIf(IsNull(val(Txtfields(9))), 0, val(Txtfields(9))) + IIf(IsNull(val(Txtfields(11))), 0, val(Txtfields(11))) + IIf(IsNull(val(Txtfields(16))), 0, val(Txtfields(16))) + val(Txtfields(58)) + IIf(IsNull(val(Txtfields(60))), 0, val(Txtfields(60))) + IIf(IsNull(val(Txtfields(62))), 0, val(Txtfields(62))) + IIf(IsNull(val(Txtfields(14))), 0, val(Txtfields(14))) + _
'        IIf(IsNull(val(Txtfields(87))), 0, val(Txtfields(87))) + IIf(IsNull(val(Txtfields(63))), 0, val(Txtfields(63))) + IIf(IsNull(val(Txtfields(64))), 0, val(Txtfields(64))) + IIf(IsNull(val(Txtfields(65))), 0, val(Txtfields(65))) + IIf(IsNull(val(Txtfields(66))), 0, val(Txtfields(66))) + IIf(IsNull(val(Txtfields(67))), 0, val(Txtfields(67))) + IIf(IsNull(val(Txtfields(68))), 0, val(Txtfields(68))) + IIf(IsNull(val(Txtfields(69))), 0, val(Txtfields(69))) + IIf(IsNull(val(Txtfields(17))), 0, val(Txtfields(17))) + IIf(IsNull(val(Txtfields(6))), 0, val(Txtfields(6))) - (IIf(IsNull(val(Txtfields(54))), 0, val(Txtfields(54))) + IIf(IsNull(val(Txtfields(85))), 0, val(Txtfields(85))) + IIf(IsNull(val(Txtfields(107))), 0, val(Txtfields(107))) + IIf(IsNull(val(Txtfields(70))), 0, val(Txtfields(70))))
'    End If
'End If

Exit Sub
Txtfields_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtFields_Validate of Form WLotbale", vbInformation, head

End Sub

Private Sub txtqry_Change()
On Error GoTo txtqry_Change_Error

If Len(txtqry.Text) = 0 Then
Command4.Enabled = False
StatusBar1.Panels(2).Text = ""
Else
Command4.Enabled = True
End If

Exit Sub
txtqry_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtqry_Change of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtqry_KeyPress(KeyAscii As Integer)
On Error GoTo txtqry_KeyPress_Error

Call tonum(txtqry, 3, KeyAscii)

Exit Sub
txtqry_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtqry_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub ToNum1(Obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
     If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(Obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (Obj.SelLength = Len(Obj)) Then
         KeyAscii = 0
    End If
    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub

Public Sub Query1(tol As Object)
    'This procedure for Query
     tol(0).Enabled = False  'ADD
     tol(1).Enabled = False  'MOD
     tol(2).Enabled = False  'DEL
     'tol(3).Enabled = True  'LIST
     tol(4).Enabled = False  'QUERY
     tol(5).Enabled = False  'FIRST
     tol(6).Enabled = False  'NEXT
     tol(7).Enabled = False 'PREVIOUS
     tol(8).Enabled = False  'LAST
     tol(9).Enabled = False 'SAVE
     tol(10).Enabled = True  'CANCEL
     tol(11).Enabled = True 'EXIT
End Sub
Public Sub tonum3(Obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
         If KeyAscii = 46 Or KeyAscii = 9 Or KeyAscii = 8 Or (KeyAscii >= 48 And KeyAscii <= 57) Then
    'to allow numbers,decimal pt and backspace
    Else
        KeyAscii = 0
    End If
    If Not (InStr(Obj.Text, ".") = 0) And KeyAscii = 46 Then
    'to check for 2nd occurence of decimal pt
    KeyAscii = 0
    End If
    If Not (InStr(Obj, ".") = 0) And Len(Obj) - InStr(Obj, ".") = 3 And Not (KeyAscii = 8) And Not (KeyAscii = 9) And Not (Obj.SelLength = Len(Obj)) Then
         KeyAscii = 0
    End If
    If Len(Obj) = maxlen And KeyAscii <> 46 And (InStr(Obj, ".") = 0) And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
   End If
End Sub
Public Sub Rg23A()
'************************************************************************
        'THIS  PROCEDURE IS USED FOR RG23A -RMI
'************************************************************************
If Combo2.Text = "Yes" Then
Set rs = New Recordset
rs.Open "Select * from rm_lot where divcode='" & Divcode & "' and lotno='" & Txtfields(28).Text & "' and lotdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and catcd='" & Txtfields(0).Text & "' and dutydocno is  not Null", DB, adOpenStatic
If rs.RecordCount = 0 Then
    If Table_Exists("ig_dutytrn") = False Then Exit Sub
    
    Set rs = New Recordset
    rs.Open "Select count(*) from rm_param a,ig_dutytype b where a.duty_code=b.duty_code", DB, adOpenStatic
    If rs(0) > 0 Then
    Dim doc_no As String
    Set rs = New Recordset
    rs.Open "SELECT YEAR_CODE FROM IG_TRANYEAR WHERE '" & Format(pdate, "yyyy-mm-dd") & "' BETWEEN START_DATE AND END_DATE", DB, adOpenStatic
    Dim ls As New Recordset
    ls.Open "Select duty_code from rm_param ", DB, adOpenStatic
    Set RS1 = New Recordset
    RS1.Open "select isnull(max(LAST_NO),0)+1 from ig_doccontrol where doc_type='D' and divcode='" & Divcode & "' and DOC_REF='" & ls(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
    doc_no = rs(0) & Padl(CStr(RS1(0)), 6, "0")
    Set rs3 = New Recordset   'For Dutycode
    rs3.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Insert into ig_dutytrn (divcode,duty_code,doc_no,date,tran_type,reference,bank_sl,bed_amt,aed_amt,ref_dt) values " & _
    " ('" & Divcode & "','" & rs3(0) & "','" & doc_no & "','" & Format(pdate, "yyyy-mm-dd") & "','O','" & Txtfields(6).Text & "','" & Txtfields(26).Text & "', " & val(Txtfields(11).Text) & "," & val(Txtfields(21).Text) & ",'" & Format(MaskEdBox1(2).Text, "yyyy-mm-dd") & "')"
    DB.Execute "Update rm_lot set dutydocno='" & doc_no & "' where divcode='" & Divcode & "' and lotno='" & Txtfields(28).Text & "' and lotdt='" & Format(MaskEdBox1(3).Text, "yyyy-mm-dd") & "' and catcd='" & Txtfields(0).Text & "'"
    Set rs = New Recordset
    rs.Open "Select duty_code from rm_param", DB, adOpenStatic
    DB.Execute "Update ig_doccontrol set last_no ='" & RS1(0) & "' where doc_type='D' and doc_ref='" & rs(0) & "'and divcode='" & Divcode & "'"
End If
End If
End If
End Sub

Private Sub txtremarks_GotFocus()
On Error GoTo txtremarks_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    txtremarks.BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Enter Remarks"
End If

Exit Sub
txtremarks_GotFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtremarks_GotFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtremarks_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtremarks_KeyDown_Error

If KeyCode = 13 And Opt = "add" Then
    SendKeys ("{TAB}")
    Exit Sub
End If

Exit Sub
txtremarks_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtremarks_KeyDown of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtremarks_KeyPress(KeyAscii As Integer)
On Error GoTo txtremarks_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    Call ToAlphanum(txtremarks, 150, KeyAscii)
End If

Exit Sub
txtremarks_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtremarks_KeyPress of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtremarks_LostFocus()
''If Opt = "add" Then
''    'To check whether the user enters the invoice details or not
''    If vbYes = MsgBox("Do You Want to enter the invoice Details", vbYesNo, head) Then
''        SSTab1.Tab = 1
''        txtfields(3).SetFocus
''    Else
''        SSTab1.Tab = 0
''        BUTTON(9).Enabled = True
''        BUTTON(9).SetFocus
''        End If
''    End If
''SSTab1.Tab = 1
''Txtfields(3).SetFocus
On Error GoTo txtremarks_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    txtremarks.BackColor = &HFFFFFF
    spdVar.SetActiveCell Ipgrosswt, spdVar.ActiveRow
    
    spdVar.SetFocus
    spdVar.Col = 49
    StatusBar1.Panels(2).Text = ""
End If

Exit Sub
txtremarks_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtremarks_LostFocus of Form WLotbale", vbInformation, head
Screen.MousePointer = 0

End Sub
Sub LotLoad(contno As String, contdt As String)
            Dim partyrs As Recordset
On Error GoTo LotLoad_Error

   Set rs = New Recordset
   rs.Open "select CENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
        If rs(0) = "Y" Then
            Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & Txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Else
             Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & Txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
       End If
            Txtfields(30).Text = partyrs("supcd")
            Txtfields(37).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
            Txtfields(38).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
            Txtfields(2).Text = partyrs("varcode")
            TXTRATEUNIT.Text = partyrs("RATEUNIT")
            Txtfields(73).Text = partyrs("prno")
            Txtfields(72).Text = partyrs("pressmarkno")
            Txtfields(0).Text = partyrs("PLOTNO")
                Set rs = New Recordset
                rs.Open "select VARNAME,catcd from rm_var where varcode = '" & Txtfields(2).Text & "'", DB, adOpenStatic
                If rs.RecordCount <> 0 Then
                  Txtfields(79).Text = rs("VARNAME")
                  Txtfields(76).Text = rs("catcd")
                Else
                  Txtfields(79).Text = " "
                  Txtfields(76).Text = " "
                End If
                rs.Close
            Txtfields(74).Text = partyrs("count")
            Txtfields(27).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
            Txtfields(15).Text = ""
            Txtfields(1).Text = Format(partyrs("candyrate"), "#######.000")
            
            'txtfields(22).Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
            Combo3.Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
            Set rsd = New Recordset
            rsd.Open "select * from fa_slmas where slcode='" & partyrs("supcd") & "'", DB, adOpenStatic
            If rsd.RecordCount > 0 Then
                Text1(0).Text = rsd("slname")
            Else
                Text1(0).Text = " "
            End If
''            lblunit.Caption = "Unit:"
''            lblcontract.Caption = "Order:"
''            lblarrived.Caption = "Arrived:"
''            lblbalance.Caption = "Balance:"
''            lbltolaper.Caption = "Tola. Per.:"
''            lbltolaqty.Caption = "Tola. Qty :"
''            lbltolwithbal.Caption = "Tola Bal :"
''            lblterms.Caption = ""
            Set rsa = New Recordset
            rsa.Open "select isnull(qtymargin,0) from rm_param ", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                lbltolaper.Caption = lbltolaper.Caption + " " + CStr(IIf(rsa(0) = 0, " ", rsa(0)))
                toqty = partyrs("ordqty") + partyrs("ordqty") * rsa(0) / 100
                lbltolaqty.Caption = lbltolaqty.Caption + " " + CStr(IIf(toqty = 0, " ", toqty))
                 balqtyto = (IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")) + IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")) * rsa(0) / 100) - (IIf(IsNull(partyrs("RECQTY")) = True, 0, partyrs("RECQTY")) + partyrs("cancelbales"))
                lbltolwithbal.Caption = lbltolwithbal.Caption + " " + CStr(IIf(balqtyto = 0, " ", balqtyto))
               
            End If
          '  BALQTY = IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")) - IIf(IsNull(partyrs("RECQTY")) = True, 0, partyrs("RECQTY"))
''            lblcontract.Caption = lblcontract.Caption + " " + CStr(IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")))
''            lblarrived.Caption = lblarrived.Caption + " " + CStr(IIf(IsNull(partyrs("RECQTY")) = True, 0, partyrs("RECQTY")))
''            lblbalance.Caption = lblbalance.Caption + " " + CStr(val(partyrs(7)))
''            lblterms.Caption = "Delivery Terms : " + CStr(partyrs("carcode"))

                Txtfields(89).Text = CStr(IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")))
                Txtfields(90).Text = CStr(IIf(IsNull(partyrs("RECQTY")) = True, 0, partyrs("RECQTY")))
                Txtfields(91).Text = CStr(val(partyrs(7)))
                Txtfields(95).Text = CStr(partyrs("cancelbales"))

                If partyrs(6) = "B" Then
                    Combo1.Text = "Bale"
                ElseIf partyrs(6) = "R" Then
                   Combo1.Text = "Borah"
                End If
                lblunit.Caption = lblunit.Caption + " " + Combo1.Text
                For i = 0 To 6
                   If i <> 4 Then Txtfields(i).Locked = True
                Next
                Set LABRS = New Recordset
                LABRS.Open "SELECT a.*  FROM RM_area as a,rm_cont as b WHERE a.areacode=b.areacode and b.CONTNO='" & contno & "' AND b.CONTDT='" & Format(Mid(contdt, 1, 10), "YYYY-MM-DD") & "' AND B.DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                If LABRS.RecordCount > 0 Then
''                    Label18.Caption = "Station :" & IIf(IsNull(LABRS!STATION), " ", LABRS!STATION)
''                    Label17.Caption = "State   :" & IIf(IsNull(LABRS!State), " ", LABRS!State)
                    Txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    Txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                Else
''                    Label18.Caption = "Station :"
''                    Label17.Caption = "State   :"
                    Txtfields(92).Text = ""
                    Txtfields(93).Text = ""
                End If
                Set rs = New Recordset
                rs.Open "select areaname from rm_area where areacode = '" & Txtfields(38).Text & "'", DB, adOpenStatic
                If rs.RecordCount <> 0 Then
                  Text20.Text = rs("areaname")
                Else
                  Text20.Text = " "
                End If
                rs.Close
                Combo3.Locked = True
                Txtfields(0).Locked = False
                Txtfields(73).Locked = False
                Txtfields(72).Locked = False
                Txtfields(41).Locked = False
                Txtfields(40).Locked = False
                Txtfields(3).Locked = False
'                If partyrs("dlytype") = "S" Then
'                    txtfields(78).Text = "SPOT"
'                End If
'                If partyrs("dlytype") = "M" Then
'                    txtfields(78).Text = "FOR"
'                End If
'                If partyrs("dlytype") = "C" Then
'                    txtfields(78).Text = "C&F"
'                End If
'                If partyrs("dlytype") = "I" Then
'                    txtfields(78).Text = "CIF"
'                End If
                Set rsa = New Recordset
                rsa.Open "select deldesc from rm_delivery where delcode='" & partyrs("dlytype") & "'", DB, adOpenStatic
                If rsa.RecordCount > 0 Then
                    Txtfields(78).Text = rsa(0)
                End If
                
                Set rsd = New Recordset
                rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lottype='A' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O'", DB, adOpenStatic
                If rsd.RecordCount > 0 Then
                    Txtfields(28).Text = rsd("lotno")
                Else
                    Txtfields(28).Text = "1"
                End If
                Txtfields(22).SetFocus


Exit Sub
LotLoad_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure LotLoad of Form WLotbale", vbInformation, head

End Sub
Sub Txtfocus(PerIndex As Integer, Amtindex As Integer, NewIndex As Integer)
If val(Txtfields(PerIndex).Text) > 0 Then
    Txtfields(Amtindex).TabStop = False
    'TXTFIELDS(NewIndex).SetFocus
Else
    Txtfields(Amtindex).TabStop = True
    Txtfields(Amtindex).SetFocus
End If
End Sub

Private Function EXIST_VAT(SLCODE As String, Optional J As Integer) As Boolean
'------------------------''To check State code is null
On Error GoTo EXIST_VAT_Error

Set rsa = New Recordset
rsa.Open "select state_code from fa_slmas where slcode='" & SLCODE & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    If IsNull(rsa(0)) = True Then
        EXIST_VAT = False
        Exit Function
    End If
End If

'------------------------'' To check supplier are in same state
Set staters = New Recordset
staters.Open "select a.state_code from fa_slmas a,pp_divmas b where a.state_code=b.state_code and a.slcode='" & SLCODE & "' and  a.state_code is not null and divcode='" & Divcode & "' ", DB, adOpenStatic
If staters.RecordCount > 0 Then
    '''To check TINNO exist for that particular supplier
    Set NewRs = New Recordset
    NewRs.Open "SELECT ISNULL(TINNO,'') AS TINNO FROM FA_SLMAS WHERE SLCODE = '" & SLCODE & "'", DB, adOpenStatic, adLockBatchOptimistic
    If NewRs("TINNO") = "" Then
        If J <> 1 Then
           d = MsgBox("TINNO Not Exists For This Supplier [ Do You Want To Continue ]", vbYesNo)   ',vbinformation,head
        End If
       EXIST_VAT = False
    End If
End If


Exit Function
EXIST_VAT_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure EXIST_VAT of Form WLotbale", vbInformation, head
End Function
Private Sub clear_text()
On Error GoTo clear_text_Error

Txtfields(29).Text = ""
    Txtfields(0).Text = ""
    Txtfields(72).Text = ""
    Txtfields(73).Text = ""
    Txtfields(40).Text = ""
    Txtfields(41).Text = ""
    Txtfields(23).Text = ""
    Txtfields(24).Text = ""
    Txtfields(22).Text = ""
    txtremarks.Text = ""
    Text8.Text = ""
    Txtfields(78).Text = ""
    Txtfields(79).Text = ""
''    lblcontract.Caption = ""
''    lblbalance.Caption = ""
''    Label18.Caption = ""
''    Label17.Caption = ""
    
    Txtfields(89).Text = ""
    Txtfields(90).Text = ""
    Txtfields(91).Text = ""
    Txtfields(92).Text = ""
    Txtfields(93).Text = ""
    
        
    Txtfields(38).Text = ""
    Txtfields(20).Text = ""
    Txtfields(300).Text = ""
    Txtfields(301).Text = ""
    Txtfields(302).Text = ""
    Txtfields(303).Text = ""
    Txtfields(107).Text = ""
    Text20.Text = ""
    
    Txtfields(27).Text = ""
    lblterms.Caption = ""
    Text1(0).Text = ""
    Text1(1).Text = ""
    Text1(2).Text = ""
    Txtfields(74).Text = ""
    Txtfields(1).Text = ""
    Txtfields(94).Text = ""
    Txtfields(28).Text = ""
    Txtfields(76).Text = ""
    Txtfields(30).Text = ""
    Txtfields(37).Text = ""
    Txtfields(2).Text = ""
    Txtfields(36).Text = ""
    Txtfields(35).Text = ""
    Txtfields(34).Text = ""
    Txtfields(33).Text = ""
    Txtfields(31).Text = ""
    Txtfields(32).Text = ""
    Text12.Text = ""
    Text13.Text = ""
    Text14.Text = ""
    Text15.Text = ""
    Text11.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Text7.Text = ""
    Text16.Visible = False
    
    MaskEdBox1(0).Text = "__/__/____"
    'MaskEdBox1(4).Text = "__/__/____"
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Label9.Visible = True
'        Label82.Visible = True
'        Label83.Visible = True
        Label84.Visible = True
        Label85.Visible = True
        Label87.Visible = True
        Label89.Visible = True
        Label90.Visible = True
        Label86.Visible = True
        Label88.Visible = True
        Label91.Visible = True
        Frame2.Visible = True
        Frame18.Visible = True
    Else
        Label9.Visible = False
'        Label82.Visible = False
'        Label83.Visible = False
        Label84.Visible = False
        Label85.Visible = False
        Label87.Visible = False
        Label89.Visible = False
        Label90.Visible = False
        Label86.Visible = False
        Label88.Visible = False
        Label91.Visible = False
        Frame2.Visible = False
        Frame18.Visible = False
    End If

Exit Sub
clear_text_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure clear_text of Form WLotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub LoadArrival()
On Error GoTo LoadArrival_Error

On Error GoTo LoadArrival_Error

        Set rsg = New Recordset
        rsg.Open "select distinct arrno""Arrival No"",arrdate""Arrival Date"",slname""Supllier"" from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-ISNULL(lotrecqty,0) >0 AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
            LookUp.clear = True
            LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "ArrivalNo"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "2000,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            
                Dim partyrs As Recordset
                Set partyrs = New Recordset
                partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,Ratecy as candyrate,bbflag,weignment,COLORCODE,CARCODE,carcode,ISNULL(PLOTNO,'')AS PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,ISNULL(MOISTURE_ET,0)MOISTURE_ET,ISNULL(MOISTURE_per,0)MOISTURE_per,ISNULL(trashPer,0)trashPer,GODOWN,contno,contdt,inwardno,inwarddate,FREIGHT from rm_arrival where arrno='" & LookUp.Fields(0) & "' and arrdate='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                Call SpreadAlign(partyrs.RecordCount)
                partyrs.MoveFirst
                q = 1
                While Not partyrs.EOF
                    Set rs = New Recordset
                    rs.Open "Select CentralizedOrder From Rm_param", DB, adOpenStatic
                    If rs(0) = "Y" Then
                    
                        Set partycon = New Recordset
                            'partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and  contdt='" & Format(partyrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                            partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Else
                        Set partycon = New Recordset
                            'partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and  contdt='" & Format(partyrs("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                            partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and divcode='" & Divcode & "' and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                            'Contract date again add tax code problem based is must dont removed Varatharajan.T - 11/07/2014
                    End If
                    If partycon.RecordCount > 0 Then
                        Txtfields(79).Text = partycon("varname")
                        If partycon("taxchoice") = "SINGLE" Then
                            Option1.value = True
                        Else
                            Option2.value = True
                        End If
                    Else
                        Option1.value = True
                    End If
                    
                    If optDCNo.value = True Then
                        lblDutyPer.Enabled = False
                        Txtfields(109).Text = "0.00"
                        Txtfields(109).Enabled = False
                    Else
                        lblDutyPer.Enabled = True
                        Txtfields(109).Text = "100.00"
                        Txtfields(109).Enabled = True
                    End If
                    
                    
                   ' txtFields(109).Text = 100
                    
                    Txtfields(13).Text = Format(IIf(IsNull(partyrs("FREIGHT")), 0, partyrs("FREIGHT")), "0.00")
                    
                    Txtfields(110).Text = partycon("Rateunit")
                    Txtfields(96).Text = LookUp.Fields(0)
                    MaskEdBox1(4).Mask = LookUp.Fields(1)
                    MaskEdBox1(4).Text = MaskEdBox1(4).Mask
                    
                    Txtfields(30).Text = partyrs("supcd")
                    Txtfields(32).Text = partyrs("supcd")
                    Txtfields(35).Text = partyrs("supcd")
                    If IsNull(partyrs("inwarddate")) = False Or partyrs("inwarddate") = "" Then
                        MaskEdBox1(5).Text = partyrs("inwarddate")
                    Else
                        MaskEdBox1(5).Text = "__/__/____"
                    End If
                    If IsNull(partyrs("inwardno")) = False Or partyrs("inwardno") = "" Then
                        Txtfields(108).Text = partyrs("inwardno")
                    Else
                        Txtfields(108).Text = ""
                    End If
                    Txtfields(37).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
                    Txtfields(38).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
                    
                    Txtfields(2).Text = partyrs("varcode")
                    
                    
                    
                    
                    Txtfields(77).Text = partyrs("GODOWN")
                    Set RSGOD = New Recordset
                    RSGOD.Open "SELECT * FROM RM_GOD WHERE GCODE='" & Txtfields(77).Text & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
                    
                    If RSGOD.RecordCount > 0 Then
                        Text8.Text = RSGOD("GNAME")
                    Else
                        Txtfields(77).Text = ""
                        Text8.Text = ""
                    End If
                Set rs = New Recordset
                rs.Open "SELECT CENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
               If rs(0) = "Y" Then
                    Set rscont = New Recordset
                    rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and", DB, adOpenStatic
               Else
                   Set rscont = New Recordset
                   rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' and contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and DIVCODE='" & Divcode & "'", DB, adOpenStatic
               End If
                    If rscont.RecordCount > 0 Then
                        Label95.Caption = IIf(IsNull(rscont("rateunit")), "", rscont("rateunit"))
                    End If
                    
                    If rscont.RecordCount > 0 Then
                        Txtfields(78).Text = rscont("DLYTYPE")
                    End If
                    Txtfields(27).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
                    Txtfields(15).Text = ""
                    Combo3.Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
                    Set rsd = New Recordset
                    rsd.Open "select * from fa_slmas where slcode='" & partyrs("supcd") & "'", DB, adOpenStatic
                    If rsd.RecordCount > 0 Then
                        Text1(0).Text = rsd("slname")
                    Else
                        Text1(0).Text = " "
                    End If

                      Set rs = New Recordset
                      rs.Open "select areaname from rm_area where areacode = '" & Txtfields(38).Text & "'", DB, adOpenStatic
                      If rs.RecordCount <> 0 Then
                        Text20.Text = rs("areaname")
                      Else
                        Text20.Text = " "
                      End If
                      rs.Close
                      Combo3.Locked = True
                      Txtfields(0).Locked = False
                      Txtfields(73).Locked = False
                      Txtfields(72).Locked = False
                      Txtfields(41).Locked = False
                      Txtfields(40).Locked = False
                      Txtfields(3).Locked = False
                      
                    If q = 1 Then
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & Txtfields(2).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        
                        Set rsd = New Recordset
                        If LotNoGen = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A'", DB, adOpenStatic
                        ElseIf LotNoGen = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf LotNoGen = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "' and VarCode ='" & Txtfields(2).Text & "'", DB, adOpenStatic
                        End If
                        LOTNO = rsd("lotno")
''                        If rsd.RecordCount > 0 Then
''                            Set Rs = New Recordset
''                            Rs.Open "Select isnull(Lotno,1) as lotno from rm_lotno where divcode='" & Divcode & "'", db, adOpenStatic
''                            If Rs(0) <= rsd(0) Then
''                                LOTNO = rsd("lotno")
''                            Else
''                                LOTNO = Rs(0)
''                            End If
''                        Else
''                            LOTNO = 1
''                        End If
                    Else
                        LOTNO = LOTNO + 1
                    End If
                      
                      Txtfields(102).Text = pdate
                      spdVar.SetText ILotNo, q, LOTNO
                      spdVar.SetText ILotdt, q, pdate
                      spdVar.SetText Ivarcode, q, partycon("varcode")
                      spdVar.SetText Ivarname, q, partycon("varname")
                      spdVar.SetText Iunit, q, partyrs("bbflag")
                      spdVar.SetText iQty, q, partyrs("quantity")
                      spdVar.SetText Icandyrate, q, Format(partyrs("candyrate"), "0.0000")
                      spdVar.SetText IFrtamt, q, Format(partyrs("FREIGHT"), "0.00")
                      
                      spdVar.SetText IRebate, q, ""
                      spdVar.SetText Imgrosswt, q, partyrs("Grosswt")
                      spdVar.SetText Imtarewt, q, partyrs("tarewt")
                      spdVar.SetText Immoitureper, q, partyrs("moisture_per")
                      If partyrs("TRASHper") > 0 And partyrs("Netwt") > 0 Then
                        spdVar.SetText iTrashPer, q, val(partyrs("Netwt") * partyrs("TRASHper") / 100)
                        spdVar.SetText ImTrashwt, q, val(partyrs("Netwt") * partyrs("TRASHper") / 100)
                      Else
                        spdVar.SetText iTrashPer, q, 0
                        spdVar.SetText ImTrashwt, q, 0
                      End If
                      
                      spdVar.SetText Immoiturewt, q, partyrs("moisture_et")
                      spdVar.SetText Imnetwt, q, partyrs("Netwt")
                      
                      If optSUPPLIER = True Then
                          Txtfields(5).Text = CStr(val(Txtfields(5).Text))   '+ partyrs("pnetwt"))
                      Else
                          Txtfields(5).Text = CStr(val(Txtfields(5).Text))  ' + partyrs("netwt"))
                      End If
                      
                      
                      
                      If q = 1 Then
                      
                        If partyrs.RecordCount = 1 Then
                            If partycon.RecordCount <> 0 Then
                                Txtfields(53).Text = partycon("CASHDISPER")
                                Txtfields(84).Text = partycon("TRADEDISPER")
                                Txtfields(7).Text = partycon("bedpeR")
                                Txtfields(43).Text = partycon("EdcessPer")
                                Txtfields(45).Text = partycon("HSCESSPER")
                                Txtfields(47).Text = partycon("CESSPER")
                                Txtfields(83).Text = partycon("Tax_code")
                                Txtfields(51).Text = partycon("TaxPER")
                                Txtfields(10).Text = partycon("OthTaxper")
                                Txtfields(51).Text = partycon("INSper")
                                Txtfields(114).Text = ""
                                Txtfields(112).Text = ""
                                Txtfields(113).Text = ""
                                
                                
                            End If
                        Else
                        End If
                      Else
                        If partycon.RecordCount > 0 Then
                            If CD = partycon("CASHDISPER") And TD = partycon("TRADEDISPER") And Bed = partycon("bedpeR") And ED = partycon("EdcessPer") And HS = partycon("HSCESSPER") And CES = partycon("CESSPER") And taxG = partycon("Tax_code") And OTH = partycon("OthTaxper") And INS = partycon("INSper") Then
                                If partycon.RecordCount <> 0 Then
                                    Txtfields(53).Text = partycon("CASHDISPER")
                                    Txtfields(84).Text = partycon("TRADEDISPER")
                                    Txtfields(7).Text = partycon("bedpeR")
                                    Txtfields(43).Text = partycon("EdcessPer")
                                    Txtfields(45).Text = partycon("HSCESSPER")
                                    Txtfields(47).Text = partycon("CESSPER")
                                    Txtfields(83).Text = partycon("Tax_code")
                                    Txtfields(51).Text = partycon("TaxPER")
                                    Txtfields(10).Text = partycon("OthTaxper")
                                    Txtfields(51).Text = partycon("INSper")
                                    
                                    Txtfields(114).Text = ""
                                    Txtfields(112).Text = ""
                                    Txtfields(113).Text = ""
                                End If
                            End If
                        End If
                      End If
                      If partycon.RecordCount <> 0 Then
                        CD = partycon("CASHDISPER")
                        TD = partycon("TRADEDISPER")
                        Bed = partycon("bedpeR")
                        ED = partycon("EdcessPer")
                        HS = partycon("HSCESSPER")
                        CES = partycon("CESSPER")
                        taxG = partycon("Tax_code")
                        OTH = partycon("OthTaxper")
                        INS = partycon("INSper")
                      End If
                        
                      spdVar.SetText Ipgrosswt, q, ""
                      spdVar.SetText Iptarewt, q, ""
                      spdVar.SetText Ipnetwt, q, ""
                      spdVar.SetText Iwbwt, q, ""
                      spdVar.SetText Ipjamt, q, ""
                      spdVar.SetText Icashdisper, q, partycon("CASHDISPER")
                      spdVar.SetText Icashdisamt, q, ""
                      spdVar.SetText Itradedisper, q, partycon("TRADEDISPER")
                      spdVar.SetText Itradedisamt, q, ""
                      spdVar.SetText IFrtper, q, ""
                      'spdVar.SetText IFrtamt, q, ""
                      spdVar.SetText IBedper, q, partycon("bedpeR")
                      spdVar.SetText IBedamt, q, ""
                      spdVar.SetText IEdper, q, partycon("EdcessPer")
                      spdVar.SetText IEdamt, q, ""
                      spdVar.SetText IHscessper, q, partycon("HSCESSPER")
                      spdVar.SetText IHscessamt, q, ""
                      spdVar.SetText Icessper, q, partycon("CESSPER")
                      spdVar.SetText Icessamt, q, ""
                      spdVar.SetText ITaxCode, q, partycon("Tax_code")
                      spdVar.SetText ITaxper, q, partycon("taxper")
                      spdVar.SetText ITaxamt, q, ""
                      spdVar.SetText IOthtaxPer, q, partycon("OthTaxper")
                      spdVar.SetText IothTaxamt, q, ""
                      spdVar.SetText IRlyfrtper, q, ""
                      spdVar.SetText IRlyfrtamt, q, ""
                      spdVar.SetText IInsper, q, partycon("insper")
                      spdVar.SetText IInsamt, q, ""
                      spdVar.SetText ICommper, q, ""
                      spdVar.SetText ICommAMT, q, ""
                      spdVar.SetText ILCper, q, ""
                      spdVar.SetText ILCamt, q, ""
                      spdVar.SetText IDbamt, q, ""
                      spdVar.SetText Icharity, q, ""
                      spdVar.SetText iDamage, q, ""
                      spdVar.SetText Ishipchrg, q, ""
                      spdVar.SetText Iclear, q, ""
                      spdVar.SetText IOthers, q, ""
                      spdVar.SetText IcustomDuty, q, ""
                      spdVar.SetText Ibrkcom, q, ""
                      spdVar.SetText ILandedcost, q, ""
                      spdVar.SetText IRatekg, q, ""
                      spdVar.SetText ISICAAmt, q, ""
                      spdVar.SetText iTrashPer, q, val(partyrs("Netwt") * partyrs("TRASHper") / 100)
                      
                      
                Set rs = New Recordset
                rs.Open "SELECT ADDTAXrEQUIRED FROM RM_PARAM", DB, adOpenStatic

                If rs(0) = "Y" Then
                      spdVar.SetText IATaxCode, q, ""
                      spdVar.SetText IATaxper, q, ""
                      spdVar.SetText IATaxamt, q, ""
                End If
                
                If optSUPPLIER = True Then
                    Txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
                Else
                    Txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
                End If
                      Call spdVar_LeaveCell(1, q, 1, 1, False)
                      q = q + 1
                      partyrs.MoveNext
                Wend
                    
                    SSTab1.Tab = 0
                    Txtfields(77).SetFocus
                Else
                  Call BUTTON_Click(10)
                End If
                
               
                
        Else
            MsgBox "No arrival Details Found", vbInformation, head
            Call BUTTON_Click(10)
        End If


Exit Sub
LoadArrival_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure LoadArrival of Form WLotbale", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Sub Calc()
On Error GoTo Calc_Error

      Txtfields(5).Text = Format(val(Txtfields(25).Text), "##.00")
      RATECANDY = val(Txtfields(1).Text)
      If RATECANDY > 0 Then
       
       Set rs = New Recordset
       rs.Open "SELECT CENTRALISEDORDER, AssessValueFlg FROM RM_PARAM"
       If rs(0) = "Y" Then
            Set rsr = New Recordset
            rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
        Else
            Set rsr = New Recordset
           rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & Txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
          
        End If
        
       If optSUPPLIER = True Then Txtfields(25).Text = Round(dSuppNetWt, 2)

       If rsr.RecordCount > 0 Then
            Txtfields(6).Text = val(Txtfields(25).Text) * (Round((RATECANDY / rsr("VALUE")) - val(Txtfields(94).Text), 4))
       Else
            If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
                Txtfields(6).Text = val(Txtfields(25).Text) * Round(RATECANDY / 1, 4)
            Else
                Txtfields(6).Text = val(Txtfields(25).Text) * Round(RATECANDY / 355.6187, 4)
            End If
       End If
       End If


Exit Sub
Calc_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure calc of Form WLotbale", vbInformation, head
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
    SetSpreadCol spdVar, ImTrashwt, "Mill Trash Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Immoiturewt, "Mill Moisture Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imnetwt, "Mill Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipgrosswt, "Supplier Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Iptarewt, "Supplier Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipnetwt, "Supplier Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipinvval, "Supplier Invoice Value", CellTypeNumber, 3
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
    SetSpreadCol spdVar, ISICAAmt, "SICA Amt  ", CellTypeNumber, 4
'   iTrashPer = ISICAAmt + 1
    SetSpreadCol spdVar, iTrashPer, "TRASH WT  ", CellTypeNumber, 4
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
    spdVar.Col = 2
    spdVar.ColHidden = True
'    spdvar.
    spdVar.ColWidth(13) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    spdVar.ColWidth(iTrashPer) = 0
    spdVar.ColWidth(Ipinvval) = 15
    spdVar.ColWidth(Iwbwt) = 12
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    
           
    spdVar.ColWidth(4) = 16
    spdVar.Col = 10
    spdVar.Lock = True
    spdVar.Col = 11
    spdVar.Lock = True
    spdVar.Col = 12
    spdVar.Lock = True
    spdVar.Col = 13
    spdVar.Lock = True
    spdVar.Col = 8
    spdVar.Lock = True
    
     If UCase(CustID) = "SOUTHERN" And (Opt = "mod") Then
        With spdVar
             spdVar.Col = 10
            spdVar.Lock = False
            spdVar.Col = 11
            spdVar.Lock = False
            spdVar.Col = 12
            spdVar.Lock = False
        End With
    End If
        
    Set rs = New Recordset
    rs.Open "Select AddtaxRequired from Rm_param", DB, adOpenStatic
    If rs(0) = "Y" Then
        SetSpreadCol spdVar, IATaxCode, "Add. Tax Code", CellTypeEdit
        SetSpreadCol spdVar, IATaxper, "Add. Tax %", CellTypeNumber, 2
        SetSpreadCol spdVar, IATaxamt, "Add. Tax Amt", CellTypeNumber, 2
        
        spdVar.ColWidth(IATaxCode) = 10
        spdVar.ColWidth(IATaxper) = 9
        spdVar.ColWidth(IATaxamt) = 9
    
        With spdVar
            .MaxCols = 55
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    Else

        With spdVar
            .MaxCols = 53
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub
Private Sub Lotdisplay()
On Error GoTo Lotdisplay_Error

    Set RSq = New Recordset
    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(trash_et,0)trash_et,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,isnull(pinvval,0)pinvval,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,SICAAmt from rm_lot where arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND LOTYEAR='" & Year(yfdate) & "'", DB, adopenstaic, adLockBatchOptimistic
    q = 1
    Call SpreadAlign(RSq.RecordCount)
    Txtfields(5).Text = 0
    Gtax = ""
    taxcode = "Y"
    While Not RSq.EOF
            spdVar.SetText ILotNo, q, RSq("lotno")
            spdVar.SetText ILotdt, q, RSq("lotdt")
            spdVar.SetText Ivarcode, q, RSq("varcode")
            
            Set rsg = New Recordset
            rsg.Open "select * from rm_var where varcode='" & RSq("varcode") & "'", DB, adOpenStatic
            spdVar.SetText Ivarname, q, rsg("varname")
            spdVar.SetText Iunit, q, RSq("bblflg")
            spdVar.SetText iQty, q, RSq("bales")
            spdVar.SetText Icandyrate, q, RSq("ratecy")
            spdVar.SetText IRebate, q, RSq("rebate")
            spdVar.SetText Imgrosswt, q, RSq("Grswgt")
            spdVar.SetText Imtarewt, q, RSq("tarewt")
            spdVar.SetText Immoiturewt, q, RSq("trash_et")
            spdVar.SetText Immoiturewt, q, RSq("moisture_et")
            spdVar.SetText Imnetwt, q, RSq("Netwt")
            If optSUPPLIER = True Then
                Txtfields(5).Text = CStr(val(Txtfields(5).Text) + RSq("pnetwt"))
            Else
                Txtfields(5).Text = CStr(val(Txtfields(5).Text) + RSq("netwt"))
            End If
            
            spdVar.SetText Ipgrosswt, q, RSq("pgrswt")
            spdVar.SetText Iptarewt, q, RSq("ptarewt")
            spdVar.SetText Ipnetwt, q, RSq("pnetwt")
            spdVar.SetText Ipinvval, q, RSq("pinvval")
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
            If taxcode <> RSq("TAX_CODE") And q <> 1 Then
                taxcode = "N"
            End If
            
            spdVar.SetText ITaxper, q, RSq("vatper")
            spdVar.SetText ITaxamt, q, RSq("vatamt")
            spdVar.SetText IOthtaxPer, q, RSq("othtaxper")
            spdVar.SetText IothTaxamt, q, RSq("othtaxamt")
            spdVar.SetText IRlyfrtper, q, RSq("rlyfrtper")
            spdVar.SetText IRlyfrtamt, q, RSq("rlyfrtamt")
            spdVar.SetText IInsper, q, RSq("insper")
            spdVar.SetText IInsamt, q, RSq("insamt")
            spdVar.SetText ICommper, q, RSq("commper")
            spdVar.SetText ICommAMT, q, RSq("commamt")
            spdVar.SetText ILCper, q, RSq("Lcintper")
            spdVar.SetText ILCamt, q, RSq("lcintamt")
            spdVar.SetText Icharity, q, RSq("charityamt")
            spdVar.SetText IOthTaxableAmt, q, RSq("OtherTaxableAmt")
            spdVar.SetText IOthers, q, RSq("othersamt")
            spdVar.SetText IcustomDuty, q, RSq("customsdutyamt")
            spdVar.SetText ILandedcost, q, RSq("totlandcost")
            spdVar.SetText IRatekg, q, RSq("ratekg")
            spdVar.SetText ISICAAmt, q, RSq("SICAAmt")
            'spdVar.SetText iTrashPer, q, RSq("SICAAmt")
            
            Set rs = New Recordset
            rs.Open "select addtaxrequired from rm_param", DB, adOpenStatic
            If rs(0) = "Y" Then
                spdVar.SetText IATaxCode, q, RSq("addTaxcode")
                
                spdVar.SetText IATaxper, q, RSq("addtaxper")
                spdVar.SetText IATaxamt, q, RSq("addtaxamount")
            End If
            
            
            RSq.MoveNext
            q = q + 1
      Wend
      
      If taxcode = "Y" Then
            Txtfields(83).Text = IIf(IsNull(Gtax), "", Gtax)
      Else
            Txtfields(83).Text = ""
      End If
      Call totdisplay


Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Lotdisplay of Form WLotbale", vbInformation, head
End Sub

Private Sub TaxCalculation()



On Error GoTo TaxCalculation_Error

                If Option2.value = True Then
                    Ct = val(spdVar.MaxRows)
                    Dim Lk As Integer
                    Dim CntV As Integer
                    Dim TotValue As Double
                    TotValue = 0
                    
                    
                    va = iQty
                    VBC = Imgrosswt
                    vc = Imnetwt
                    vr = Icandyrate
                    vreb = IRebate
                    Txtfields(18).Text = ""
                    For Lk = 1 To Ct
                             If val(GetText(spdVar, va, Lk)) <> 0 And val(GetText(spdVar, VBC, Lk)) <> 0 And val(GetText(spdVar, vc, Lk)) <> 0 Then
                                CntV = CntV + 1
                                
                                Set rse = New Recordset
                                rse.Open "select contno,contdt from rm_arrival where arrno=" & Txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                                
                                If rse.RecordCount > 0 Then
                                    contno = rse("contno")
                                    contdt = rse("contdt")
                                    
                                    Set rs = New Recordset
                                    rs.Open "Select CentralizedOrder,AssessValueFlg from Rm_param", DB, adOpenStatic
                                    If rs(0) = "Y" Then
                                        Set rse = New Recordset
                                        rse.Open "select rateunit from rm_cont where contno=" & contno & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "'", DB, adOpenStatic
                                    Else
                                        Set rse = New Recordset
                                        rse.Open "select rateunit from rm_cont where contno=" & contno & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                                    End If
                                    If rse.RecordCount > 0 Then
                                        RATEUNIT = rse("rateunit")
                                    Else
                                        RATEUNIT = "KILOGRAMS"
                                    End If
                                End If
                                
                                Set rsvl = New Recordset
                                rsvl.Open "select * from rm_rateunit where unitname='" & RATEUNIT & "'", DB, adOpenStatic
                                
                                If rsvl.RecordCount > 0 Then
                                    If optSUPPLIER = True Then
                                        TotValue = Round(TotValue + val(GetText(spdVar, Ipnetwt, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), 4)
                                    Else
                                        TotValue = Round(TotValue + val(GetText(spdVar, vc, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), 4)
                                    End If
                                End If
                             End If
                    Next
                    
                    J = 0
                    k = 0
                    l = 0
                    m = 0
                    Sum = 0
                            Dim assper As Double  'For with our percentage cacl
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
                            
                            Dutper = 0
                            
                            Dutper = (100 - val(Txtfields(109).Text))
                            
                    For Lk = 1 To spdVar.MaxRows
                         If val(GetText(spdVar, va, Lk)) <> 0 And val(GetText(spdVar, VBC, Lk)) <> 0 And val(GetText(spdVar, vc, Lk)) <> 0 Then
                           
                            Set rs = New Recordset
                            rs.Open "select * from rm_rateunit where unitname='" & RATEUNIT & "'", DB, adOpenStatic
                            If optSUPPLIER = True Then
                                vq = Ipnetwt
                            Else
                                vq = Imnetwt
                            End If
                            Vg = Icandyrate
                            vreb = IRebate
                            
                            If rs.RecordCount > 0 Then
                                Txtfields(6).Text = Round(Sum + val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / rs("value")) - val(GetText(spdVar, vreb, Lk)), 2)
                                If CustID = "COTTON" Then
                                    If deltype = "F" Then
                                        NoofQty = KSLRound(val(GetText(spdVar, vq, Lk)) / rsvl("value"), 3)
                                        Assvalue = NoofQty * (val(GetText(spdVar, Icandyrate, Lk)) * 100) / (100 + val(GetText(spdVar, ITaxper, Lk)) + val(GetText(spdVar, IBedper, Lk)) + val(GetText(spdVar, IEdper, Lk)))
                                        Txtfields(6).Text = KSLRound(Assvalue, 2)
                                    Else
                                        Assvalue = Round(val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / rs("value")) - val(GetText(spdVar, vreb, Lk)), 2)
                                        Txtfields(6).Text = Round(Sum + val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / rs("value")) - val(GetText(spdVar, vreb, Lk)), 2)
                                    End If
                                Else
                                    Assvalue = Round(val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / rs("value")) - val(GetText(spdVar, vreb, Lk)), 2)
                                    Txtfields(6).Text = Round(Sum + val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / rs("value")) - val(GetText(spdVar, vreb, Lk)), 2)
                                End If
                            End If
                            
                            
                            Sum = Txtfields(6).Text
                            
                            spdVar.SetText Ipjamt, Lk, CStr(Assvalue)
                            
                            
                            assper = Round((Assvalue / TotValue) * 100, 2)
                            
                            'Supplier Invoice Value
                            spdVar.SetText Ipinvval, Lk, CStr(Txtfields(115).Text)
                            
                            'CASH DISCOUNT
                            If val(Txtfields(53).Text) = 0 Then
                                If val(Txtfields(54).Text) <> 0 Then
                                    CashDisamt = val(Txtfields(54).Text) * val(assper) / 100
                                    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
                                    spdVar.SetText Icashdisper, Lk, CStr(Txtfields(53).Text)
                                Else
                                    CashDisamt = 0
                                    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
                                    spdVar.SetText Icashdisper, Lk, CStr(Txtfields(53).Text)
                                End If
                            Else
                                CashDisamt = Round(val(GetText(spdVar, Ipjamt, Lk)) * (val(Txtfields(53).Text) / 100), 2) ''Assvalue * val(txtfields(53).Text) / 100
                                spdVar.SetText Icashdisamt, Lk, CashDisamt
                                spdVar.SetText Icashdisper, Lk, CStr(Txtfields(53).Text)
                            End If
                            'TRADE DISCOUNT
                            If val(Txtfields(84).Text) = 0 Then
                                If val(Txtfields(85).Text) <> 0 Then
                                    TradeDisAmt = val(Txtfields(85).Text) * val(assper) / 100
                                    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
                                    spdVar.SetText Itradedisper, Lk, CStr(Txtfields(84).Text)
                                Else
                                    TradeDisAmt = 0
                                    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
                                    spdVar.SetText Itradedisper, Lk, CStr(Txtfields(84).Text)
                                End If
                            Else
                                TradeDisAmt = Round(val(GetText(spdVar, Ipjamt, Lk)) * (val(Txtfields(84).Text) / 100), 2) ''Assvalue * val(txtfields(84).Text) / 100
                                spdVar.SetText Itradedisamt, Lk, TradeDisAmt
                                spdVar.SetText Itradedisper, Lk, CStr(Txtfields(84).Text)
                            End If
                            'LORRY FRIEGHT
                            If val(Txtfields(12).Text) = 0 Then
                                If val(Txtfields(13).Text) <> 0 Then
                                    Lfrt = val(Txtfields(13).Text) * val(assper) / 100
                                    spdVar.SetText IFrtamt, Lk, Lfrt
                                    spdVar.SetText IFrtper, Lk, CStr(Txtfields(12).Text)
                                Else
                                    Lfrt = 0
                                    spdVar.SetText IFrtamt, Lk, Lfrt
                                    spdVar.SetText IFrtper, Lk, CStr(Txtfields(12).Text)
                                End If
                            Else
                               Lfrt = Round(GetText(spdVar, Ipjamt, Lk) * (val(Txtfields(12).Text) / 100), 2)
                               spdVar.SetText IFrtamt, Lk, Lfrt
                               spdVar.SetText IFrtper, Lk, CStr(Txtfields(12).Text)
                            End If
                            'BED
                            If val(Txtfields(7).Text) = 0 Then
                                    If val(Txtfields(42).Text) <> 0 Then
                                        Bed = val(Txtfields(42).Text) * val(assper) / 100
                                        spdVar.SetText IBedamt, Lk, Bed
                                        spdVar.SetText IBedper, Lk, CStr(Txtfields(7).Text)
                                    Else
                                        Bed = 0
                                        spdVar.SetText IBedamt, Lk, Bed
                                        spdVar.SetText IBedper, Lk, CStr(Txtfields(7).Text)
                                    End If
                            Else
                                If Left(deltype, 1) = "F" Then
                                    Bed = (Assvalue - (CashDisamt + TradeDisAmt + Lfrt)) * val(Txtfields(7).Text) / 100
                                Else
                                    Bed = (Assvalue - (CashDisamt + TradeDisAmt)) * val(Txtfields(7).Text) / 100
                                End If
                                spdVar.SetText IBedamt, Lk, Bed
                                spdVar.SetText IBedper, Lk, CStr(Txtfields(7).Text)
                            End If
                                                        
                            'ED CESS
                            If val(Txtfields(43).Text) = 0 Or Trim(Txtfields(43).Text) = "" Then
                                If val(Txtfields(44).Text) <> 0 Then
                                    SED = val(Txtfields(44).Text) * val(assper) / 100
                                    spdVar.SetText IEdamt, Lk, CStr(SED)
                                    spdVar.SetText IEdper, Lk, CStr(Txtfields(43).Text)
                                Else
                                    SED = 0
                                    spdVar.SetText IEdamt, Lk, CStr(SED)
                                    spdVar.SetText IEdper, Lk, CStr(Txtfields(43).Text)
                                End If
                            Else
                                SED = Bed * val(Txtfields(43).Text) / 100
                                spdVar.SetText IEdamt, Lk, SED
                                spdVar.SetText IEdper, Lk, CStr(Txtfields(43).Text)
                            End If
                            
                            'HS CESS
                            If val(Txtfields(45).Text) = 0 Then
                                If val(Txtfields(46).Text) <> 0 Then
                                    Aed = val(Txtfields(46).Text) * val(assper) / 100
                                    spdVar.SetText IHscessamt, Lk, Aed
                                    spdVar.SetText IHscessper, Lk, CStr(Txtfields(45).Text)
                                Else
                                    Aed = 0
                                    spdVar.SetText IHscessamt, Lk, Aed
                                    spdVar.SetText IHscessper, Lk, CStr(Txtfields(45).Text)
                                End If
                            Else
                                Aed = Bed * val(Txtfields(45).Text) / 100
                                spdVar.SetText IHscessamt, Lk, Aed
                                spdVar.SetText IHscessper, Lk, CStr(Txtfields(45).Text)
                            End If
                                                       
                            'CESS
                            If val(Txtfields(47).Text) = 0 Then
                                If val(Txtfields(48).Text) <> 0 Then
                                    cess = val(Txtfields(48).Text) * val(assper) / 100
                                    spdVar.SetText Icessamt, Lk, CStr(cess)
                                    spdVar.SetText Icessper, Lk, CStr(Txtfields(47).Text)
                                Else
                                    cess = 0
                                    spdVar.SetText Icessamt, Lk, CStr(cess)
                                    spdVar.SetText Icessper, Lk, CStr(Txtfields(47).Text)
                                End If
                            Else
                                If UCase(deltype) = "F" Then
                                    ''cess = Round(val(txtfields(47).Text) * (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Lfrt) + val(Bed) + val(SED) + val(Aed)) / 100, 0)
                                    cess = Round(val(Txtfields(47).Text) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt)) + val(Lfrt)) / 100, 2)
                                Else
                                    ''cess = Round(val(GetText(spdVar, Icessper, row)) * (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + val(Bed) + val(SED) + val(Aed)) / 100, 0)
                                    cess = Round(val(Txtfields(47).Text) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(TradeDisAmt))) / 100, 2)
                                End If
                                spdVar.SetText Icessamt, Lk, CStr(cess)
                                spdVar.SetText Icessper, Lk, CStr(Txtfields(47).Text)
                            End If
                            'COMMISION
                            If val(Txtfields(59).Text) = 0 Or Trim(Txtfields(59).Text) = "" Then
                                If val(Txtfields(60).Text) <> 0 Then
                                    Comamt = val(Txtfields(60).Text) * val(assper) / 100
                                    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                                    spdVar.SetText ICommper, Lk, CStr(Txtfields(59).Text)
                                Else
                                    Comamt = 0
                                    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                                    spdVar.SetText ICommper, Lk, CStr(Txtfields(59).Text)
                                End If
                            Else
                               Comamt = Assvalue * val(Txtfields(59).Text) / 100
                               spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                               spdVar.SetText ICommper, Lk, CStr(Txtfields(59).Text)
                            End If
                            'Other Taxable Amount
                            If val(Txtfields(111).Text) = 0 Or Trim(Txtfields(111).Text) = "" Then
                                If val(Txtfields(111).Text) <> 0 Then
                                    OtherTaxable = val(Txtfields(100).Text)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(Txtfields(111).Text)
                                Else
                                    OtherTaxable = 0
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(Txtfields(111).Text)
                                End If
                            Else
                                OtherTaxable = val(Txtfields(111).Text)
                                spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                spdVar.SetText IOthTaxableAmt, Lk, CStr(Txtfields(111).Text)
                            End If

                            'Tax Code
                            spdVar.SetText ITaxCode, Lk, CStr(Txtfields(83).Text)
                            If val(Txtfields(51).Text) = 0 Then
                                If val(Txtfields(52).Text) <> 0 Then
                                    If optBefore = True Then
                                        Vatamt = val(Txtfields(52).Text) * val(assper) / 100
                                    Else
                                        Vatamt = (val(Txtfields(52).Text) - val(CashDisamt) - val(TradeDisAmt)) * val(assper) / 100
                                    End If
                                    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                    spdVar.SetText ITaxper, Lk, CStr(Txtfields(51).Text)
                                Else
                                    Vatamt = 0
                                    spdVar.SetText ITaxCode, Lk, CStr(Txtfields(83).Text)
                                    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                    spdVar.SetText ITaxper, Lk, CStr(Txtfields(51).Text)
                                End If
                            Else
                                Set rs = New Recordset
                                rs.Open "Select * from rM_param", DB, adOpenStatic
                                If rs.RecordCount > 0 Then
                               If optBefore = True Then
                                    If rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            Vatamt = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(Txtfields(51).Text) / 100
                                        Else
                                            Vatamt = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(Txtfields(51).Text) / 100
                                        End If
                                    Else
                                        If UCase(deltype) = "F" Then
                                            Vatamt = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(51).Text) / 100
                                        Else
                                            Vatamt = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(51).Text) / 100
                                        End If
                                    End If
                                Else
                                    If rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            Vatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(Txtfields(51).Text) / 100
                                        Else
                                            Vatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(Txtfields(51).Text) / 100
                                        End If
                                    Else
                                        If UCase(deltype) = "F" Then
                                            Vatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(51).Text) / 100
                                        Else
                                            Vatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(51).Text) / 100
                                        End If
                                    End If

                                End If
                                End If
                                spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                spdVar.SetText ITaxper, Lk, CStr(Txtfields(51).Text)
                            End If
                           
                           
                        Set rs = New Recordset
                        rs.Open "select AddtaxRequired from rm_param", DB, adOpenStatic
                        If rs(0) = "Y" Then
                        spdVar.SetText IATaxCode, Lk, CStr(Txtfields(114).Text)
                            If val(Txtfields(112).Text) = 0 Then
                                If val(Txtfields(113).Text) <> 0 Then
                                    If optBefore = True Then
                                        AVatamt = val(Txtfields(113).Text) * val(assper) / 100
                                    Else
                                        AVatamt = (val(Txtfields(113).Text) - val(CashDisamt) - val(TradeDisAmt)) * val(assper) / 100
                                    End If
                                    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                    spdVar.SetText IATaxper, Lk, CStr(Txtfields(112).Text)
                                Else
                                    AVatamt = 0
                                    spdVar.SetText IATaxCode, Lk, CStr(Txtfields(83).Text)
                                    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                    spdVar.SetText IATaxper, Lk, CStr(Txtfields(112).Text)
                                End If
                            Else
                                Set rs = New Recordset
                                rs.Open "Select * from rM_param", DB, adOpenStatic
                                If rs.RecordCount > 0 Then
                               If optBefore = True Then
                                    If rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess) * val(Txtfields(112).Text) / 100
                                        Else
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess) * val(Txtfields(112).Text) / 100
                                        End If
                                    Else
                                        If UCase(deltype) = "F" Then
                                            AVatamt = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(112).Text) / 100
                                        Else
                                            AVatamt = (Assvalue + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(112).Text) / 100
                                        End If
                                    End If
                                Else
                                    If rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess) * val(Txtfields(112).Text) / 100
                                        Else
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess) * val(Txtfields(112).Text) / 100
                                        End If
                                    Else
                                        If UCase(deltype) = "F" Then
                                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(112).Text) / 100
                                        Else
                                            AVatamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable) * val(Txtfields(112).Text) / 100
                                        End If
                                    End If

                                End If
                                End If
                                spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                spdVar.SetText IATaxper, Lk, CStr(Txtfields(112).Text)
                            End If
                           

                           End If
                       If optBefore = True Then
                           If val(Txtfields(10).Text) = 0 Or Trim(Txtfields(10).Text) = "" Then
                                If val(Txtfields(11).Text) <> 0 Then
                                    Othtax = val(Txtfields(11).Text) * val(assper) / 100
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                                Else
                                    Othtax = 0
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                                End If
                            Else
                               Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + OtherTaxable) * val(Txtfields(10).Text) / 100
                               spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                               spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                            End If
                        Else
                                      
                            If val(Txtfields(10).Text) = 0 Or Trim(Txtfields(10).Text) = "" Then
                                If val(Txtfields(11).Text) <> 0 Then
                                    
                                    Othtax = val(Txtfields(11).Text) - (val(CashDisamt) - val(TradeDisAmt)) * val(assper) / 100
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                                Else
                                    Othtax = 0
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                                End If
                            Else
                               Othtax = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + OtherTaxable) * val(Txtfields(10).Text) / 100
                               spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                               spdVar.SetText IOthtaxPer, Lk, CStr(Txtfields(10).Text)
                            End If
                            
                         End If
                            
                            Taxamt = val(Vatamt + CStamt + Othtax)
                                                                                    
                                                                                    
                            If val(Txtfields(15).Text) = 0 Or Trim(Txtfields(15).Text) = "" Then
                                If val(Txtfields(16).Text) <> 0 Then
                                    RlFrt = val(Txtfields(16).Text) * val(assper) / 100
                                    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                                    spdVar.SetText IRlyfrtper, Lk, CStr(Txtfields(15).Text)
                                Else
                                    RlFrt = 0
                                    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                                    spdVar.SetText IRlyfrtper, Lk, CStr(Txtfields(15).Text)
                                End If
                            Else
                               RlFrt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt) * val(Txtfields(15).Text) / 100
                               spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                               spdVar.SetText IRlyfrtper, Lk, CStr(Txtfields(15).Text)
                            End If
                            
                            If val(Txtfields(57).Text) = 0 Or Trim(Txtfields(57).Text) = "" Then
                                If val(Txtfields(58).Text) <> 0 Then
                                    Insamt = val(Txtfields(58).Text) * val(assper) / 100
                                    spdVar.SetText IInsamt, Lk, CStr(Insamt)
                                    spdVar.SetText IInsper, Lk, CStr(Txtfields(57).Text)
                                Else
                                    Insamt = 0
                                    spdVar.SetText IInsamt, Lk, CStr(Insamt)
                                    spdVar.SetText IInsper, Lk, CStr(Txtfields(57).Text)
                                End If
                            Else
                            
                            Dim rsPara As New Recordset
                            
                            rsPara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
                            
                            If (rsPara.BOF And rsPara.EOF) = False Then
                            
                               If rsPara("InsCalAssvalflg") = "N" Then
                            
                                    If UCase(deltype) = "F" Then
                                         Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt) * val(Txtfields(57).Text) / 100
                                     Else
                                         Insamt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt) * val(Txtfields(57).Text) / 100
                                     End If
                                Else
                                    Insamt = Assvalue * (val(Txtfields(57).Text) / 100)
                                End If
                                
                            End If
                            
                            rsPara.Close
                            Set rsPara = Nothing
                            
                                Txtfields(58).Text = Format(Round(Insamt, 2), "0.00")
                                
                               spdVar.SetText IInsamt, Lk, CStr(Insamt)
                               spdVar.SetText IInsper, Lk, CStr(Txtfields(57).Text)
                            End If
                                                                                                              
                            If val(Txtfields(61).Text) = 0 Or Trim(Txtfields(61).Text) = "" Then
                                If val(Txtfields(62).Text) <> 0 Then
                                    LcInt = val(Txtfields(62).Text) * val(assper) / 100
                                    spdVar.SetText ILCamt, Lk, CStr(LcInt)
                                    spdVar.SetText ILCper, Lk, CStr(Txtfields(61).Text)
                                Else
                                    LcInt = 0
                                    spdVar.SetText ILCamt, Lk, CStr(LcInt)
                                    spdVar.SetText ILCper, Lk, CStr(Txtfields(61).Text)
                                End If
                            Else
                            
                               If UCase(deltype) = "F" Then
                                    LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt) * val(Txtfields(61).Text) / 100
                               Else
                                    LcInt = (Assvalue - (val(CashDisamt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Insamt + Comamt) * val(Txtfields(61).Text) / 100
                               End If
                               spdVar.SetText ILCamt, Lk, CStr(LcInt)
                               spdVar.SetText ILCper, Lk, CStr(Txtfields(61).Text)
                            End If

                            DBamt = val(Txtfields(70).Text) * val(assper) / 100
                            spdVar.SetText IDbamt, Lk, CStr(DBamt)
                            
                            Charity = val(Txtfields(63).Text) * val(assper) / 100
                            spdVar.SetText Icharity, Lk, CStr(Charity)
                            
                            Damage = val(Txtfields(64).Text) * val(assper) / 100
                            spdVar.SetText iDamage, Lk, CStr(Damage)
                            
                            schrg = val(Txtfields(107).Text)
                            spdVar.SetText Ishipchrg, Lk, CStr(schrg)
                                                        
                            CLearance = val(Txtfields(66).Text) * val(assper) / 100
                            spdVar.SetText Iclear, Lk, CStr(CLearance)
                            
                            Others = val(Txtfields(67).Text) * val(assper) / 100
                            spdVar.SetText IOthers, Lk, CStr(Others)
                                                        
                            Brkcom = val(Txtfields(17).Text) * val(assper) / 100
                            spdVar.SetText Ibrkcom, Lk, CStr(Brkcom)
                            
                            Cusdutyamt = val(Txtfields(69).Text) * val(assper) / 100
                            spdVar.SetText IcustomDuty, Lk, CStr(Cusdutyamt)
                            
                            SICAAmt = val(Txtfields(117).Text) * val(assper) / 100
                            spdVar.SetText ISICAAmt, Lk, CStr(SICAAmt)
                            
                                                           
'                    If optDCNo = True Then
'                            Set RS2 = New Recordset
'                            RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(83).Text & "'", DB, adOpenStatic
'                            If RS2.RecordCount = 0 Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            ElseIf RS2("itctaxstatus") = "Y" Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            ElseIf RS2("itctaxstatus") = "N" Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            End If
'                    Else
'                            Set RS2 = New Recordset
'                            RS2.Open "Select isnull(itctaxstatus,'N') as itctaxstatus from Ig_tax where tax_code='" & Txtfields(83).Text & "'", DB, adOpenStatic
'                            If RS2.RecordCount = 0 Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            ElseIf RS2("itctaxstatus") = "Y" Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            ElseIf RS2("itctaxstatus") = "N" Then
'                                If UCase(deltype) = "S" Then
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                Else
'                                    'txtfields(18).Text = IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + _
'                                    IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))))
'                                    Totland = Assvalue + Taxamt + Scamt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt)
'                                End If
'                            End If


                If optDCNo = True Then
                    If UCase(deltype) = "S" Then
                        Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt + SICAAmt)
                    Else
                        Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt + SICAAmt)
                    End If
                Else
                    If UCase(deltype) = "S" Then
                        Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt + SICAAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
                    Else
                        Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + TradeDisAmt + SICAAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
                    End If

                End If
                            'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
                            
                            Set rsP = New Recordset
                            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
                            VATFLG = "N"
                            If rsP.RecordCount > 0 Then
                                VATFLG = rsP(0)
                            End If
        
                            If VATFLG = "Y" Then
                                'If VatFlag = True Then
                                    If EXIST_VAT(Txtfields(30).Text) = True Then
                                         ' txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text)
                                          Totland = Totland - Vatamt
                                    End If
                                'End If
                            End If
                            
                            Txtfields(18).Text = CStr(val(Txtfields(18).Text) + Totland)
                            ''Totland = Assvalue + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + Insamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + Cusdutyamt + packforamt + marketcomamt
                            LandCost = Round(Totland, 2)
                            spdVar.SetText ILandedcost, Lk, CStr(LandCost)
                            
                            VBC = Imnetwt
                            ratekg = Format(val(LandCost) / val(GetText(spdVar, VBC, Lk)), "#0.0000")
                            spdVar.SetText IRatekg, Lk, CStr(ratekg)
                            
                            sumland = sumland + LandCost
                            Txtfields(18).Text = Format(Round(val(Txtfields(18).Text), 2), "0.00")
                        End If
                    Next
                    
                    Txtfields(19).Text = Round(val(Txtfields(18).Text) / val(Txtfields(5).Text), 4)
      End If


Exit Sub
TaxCalculation_Error:
'    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure TaxCalculation of Form WLotbale", vbInformation, head

End Sub
Private Sub totdisplay()
On Error GoTo totdisplay_Error

        pjamt = 0
        LandCost = 0
        billwt = 0
        v1 = Ipjamt
        v2 = ILandedcost
        v3 = Imnetwt
        
        mgwt = 0: mtwt = 0: mnwt = 0: mqty = 0: mmwt = 0
        pgwt = 0: ptwt = 0: pnwt = 0
        
        For i = 1 To spdVar.MaxRows
            pjamt = pjamt + val(GetText(spdVar, v1, i))
            LandCost = LandCost + val(GetText(spdVar, v2, i))
            
            If optSUPPLIER = True Then
                billwt = billwt + val(GetText(spdVar, Ipnetwt, i))
            Else
                billwt = billwt + val(GetText(spdVar, v3, i))
            End If
            
            mgwt = mgwt + val(GetText(spdVar, Imgrosswt, i))
            mtwt = mtwt + val(GetText(spdVar, Imtarewt, i))
            mnwt = mnwt + val(GetText(spdVar, Imnetwt, i))
            mmtwt = mmtwt + val(GetText(spdVar, ImTrashper, i))
            mmwt = mmwt + val(GetText(spdVar, Immoiturewt - ImTrashper, i))
            mqty = mqty + val(GetText(spdVar, iQty, i))
            pgwt = pgwt + val(GetText(spdVar, Ipgrosswt, i))
            ptwt = ptwt + val(GetText(spdVar, Iptarewt, i))
            pnwt = pnwt + val(GetText(spdVar, Ipnetwt, i))
            
        Next
        
        Txtfields(6).Text = pjamt
        Txtfields(18).Text = LandCost
        If billwt > 0 Then
            Txtfields(19).Text = Round(LandCost / billwt, 4)
        End If
        
        Txtfields(100).Text = mqty
        Txtfields(99).Text = Format(mgwt, "#####0.000")
        Txtfields(98).Text = Format(mtwt, "#####0.000")
        Txtfields(97).Text = Format(mnwt, "#####0.000")
        Txtfields(101).Text = Format(mmwt, "#####0.000")
        Txtfields(105).Text = Format(pgwt, "#####0.000")
        Txtfields(104).Text = Format(ptwt, "#####0.000")
        Txtfields(103).Text = Format(pnwt, "#####0.000")
        
        Text4.Text = mqty
        Text5.Text = Format(mgwt, "#####0.000")
        Text6.Text = Format(mtwt, "#####0.000")
        Text16.Text = Format(mmtwt, "#####0.000")
        Text7.Text = Format(mmwt, "#####0.000")
    
        Text11.Text = Format(mnwt, "#####0.000")
        Text15.Text = Format(pgwt, "#####0.000")
        Text14.Text = Format(ptwt, "#####0.000")
        Text13.Text = Format(pnwt, "#####0.000")
        
Exit Sub
totdisplay_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure totdisplay of Form WLotbale", vbInformation, head
End Sub
Private Sub DisplayVal()
On Error Resume Next
    Set childrs = New Recordset
    childrs.Open "select sum(isnull(TAXAMT,0)) as Taxamt,SUm(isnull(BEDAMT,0)) as Bedamt,sum(isnull(PJAMT,0)) as Pjamt,sum(isnull(RLYFRT,0)) as Rlfrt,sum(isnull(LDGULG,0)) as ldgulg,sum(isnull(BRKCOM,0)) as Brkcom,sum(isnull(SPOTEXP,0)) as Spotexp,sum(isnull(INSAMT,0)) as Insamt,sum(isnull(TOTLANDCOST,0)) as Totlandcost,sum(isnull(GRSWGT,0)) as Grswgt,sum(isnull(A.TAREWT,0)) as Tarewt,sum(isnull(A.NETWT,0)) as Netwt,sum(isnull(moisture_et,0)) as Moisture_et,sum(isnull(DNAMT1,0)) as Dnamt1,sum(isnull(AEDAMT,0)) as AEdamt,sum(isnull(BEDAMT,0)) as Bedamt,sum(isnull(SEDAMT,0)) as Sedamt,sum(isnull(CESSAMT,0)) as Cessamt,sum(isnull(VATAMT,0)) as vatamt, sum(isnull(addtaxAMount,0)) as addtaxamount " & _
            " ,sum(isnull(OTHTAXAMT,0)) as othtaxamt,sum(isnull(LRFRTAMT,0)) as Lrfrtamt,sum(isnull(RLYFRTAMT,0)) as rlyfrtamt,sum(isnull(INSAMT,0)) as insamt,sum(isnull(COMMAMT,0)) as commamt " & _
            " ,sum(isnull(LCINTAMT,0)) as lcintamt,sum(isnull(customsdutyamt,0)) as customsdutyamt,sum(isnull(CHARITYAMT,0)) as charityamt,sum(isnull(DAMAGEAMT,0)) as Damageamt,sum(isnull(WARPAGEAMT,0)) as warpageamt,sum(isnull(CLEARANCEAMT,0)) as Clearanceamt,sum(isnull(OTHERSAMT,0)) as othersamt,sum(isnull(ALLOWANCEAMT,0)) as allowanceamt,SUM(ISNULL(CASHDISAMT,0))CASHDISAMT,SUM(ISNULL(TRADEDISAMT,0)) TRADEDISAMT,AVG(ISNULL(CASHDISPER,0))CASHDISPER,AVG(ISNULL(TRADEDISPER,0))TRADEDISPER,AVG(ISNULL(LRFRTPER,0))LRFRTPER,AVG(ISNULL(BEDPER,0))BEDPER,AVG(ISNULL(SEDPER,0))EDCESSPER,AVG(ISNULL(AEDPER,0))HSCESSPER,AVG(ISNULL(CESSPER,0))CESSPER,AVG(ISNULL(VATPER,0))VATPER,AVG(ISNULL(addtaxPER,0))addtaxPER,AVG(ISNULL(OTHTAXPER,0))OTHTAXPER,AVG(ISNULL(RLYFRTPER,0))RLYFRTPER,AVG(ISNULL(INSPER,0))INSPER " & _
            " ,AVG(ISNULL(COMMPER,0))COMMPER,AVG(ISNULL(LCINTPER,0))LCINTPER,sum(isnull(shipchrg,0)) as shipchrg,sum(isnull(OtherTaxableAmt ,0)) as OtherTaxableAmt,sum(isnull(pinvval ,0)) as pinvval,sum(isnull(SICAAmt ,0)) as SICAAmt  from rm_lot a where ARRNO='" & adoPrimaryRS("ARRNO") & "' and ARRDT='" & Format(adoPrimaryRS("ARRDT"), "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' ", DB, adOpenStatic

    Txtfields(53).Text = childrs("CASHDISPER")
    Txtfields(54).Text = childrs("CASHDISAMT")
    
    Txtfields(84).Text = childrs("TRADEDISPER")
    Txtfields(85).Text = childrs("TRADEDISAMT")
    
    Txtfields(7).Text = childrs("bedPER")
    Txtfields(42).Text = childrs("bedamt")
    
    Txtfields(43).Text = childrs("EDCESSPER")
    Txtfields(44).Text = childrs("sedamt")
    
    Txtfields(45).Text = childrs("hSCESSPER")
    Txtfields(46).Text = childrs("aedamt")
    
    Txtfields(51).Text = childrs("VATPER")
    Txtfields(52).Text = childrs("vatamt")
    
    Txtfields(112).Text = childrs("addtaxPER")
    Txtfields(113).Text = childrs("addtaxamount")
 
    Txtfields(47).Text = childrs("CESSPER")
    Txtfields(48).Text = childrs("cessamt")
    
    Txtfields(10).Text = childrs("OTHTAXPER")
    Txtfields(11).Text = childrs("othtaxamt")
    
    Txtfields(15).Text = childrs("rlyfrtPER")
    Txtfields(16).Text = childrs("rlyfrtamt")
        Txtfields(61).Text = childrs("LCINTPER")
    Txtfields(62).Text = childrs("lcintamt")
    
    Txtfields(12).Text = childrs("LRFRTPER")
    Txtfields(13).Text = childrs("lrfrtamt")
    
    Txtfields(59).Text = childrs("commPER")
    Txtfields(60).Text = childrs("commamt")
    
    Txtfields(57).Text = childrs("insPER")
    Txtfields(58).Text = childrs("insamt")
    
    Txtfields(63).Text = childrs("charityamt")
    Txtfields(64).Text = childrs("damageamt")
    
    Txtfields(66).Text = childrs("clearanceamt")
    Txtfields(67).Text = childrs("othersamt")
    Txtfields(17).Text = childrs("brkcom")
    Txtfields(69).Text = childrs("customsdutyamt")
    Txtfields(70).Text = childrs("DNAMT1")
    Txtfields(107).Text = childrs("shipchrg")
    Txtfields(111).Text = childrs("OtherTaxableAmt")
    Txtfields(115).Text = childrs("pinvval")
    Txtfields(117).Text = Format(childrs("SICAAmt"), "##0.00")
End Sub


Private Function Freight(ArrvialNo%, LOTDT$) As String
   Set rsf = New Recordset
   rsf.Open "select * from rm_Arrival Where Arrno = " & ArrvialNo & " AND DivCode =" & Divcode & " AND lotdt = '" & LOTDT & "'", DB, adOpenDynamic, adLockOptimistic
    If Not rsf.EOF Then
        Freight = IIf(rsf!Freight = 0, "", Format(rsf!Freight, "0.00"))
    Else
        Freight = ""
    End If
End Function
    
Private Function LORRYNOS(ArrvialNo%, LOTDT$) As String
   Set rsf = New Recordset
   rsf.Open "select * from rm_Arrival Where Arrno = " & ArrvialNo & " AND DivCode =" & Divcode & " AND lotdt = '" & LOTDT & "'", DB, adOpenDynamic, adLockOptimistic
    If Not rsf.EOF Then
        LORRYNOS = rsf!LORRYNOS
    Else
        LORRYNOS = ""
    End If
End Function

Private Sub Tax_Calculation()
    If optBefore = True Then
        Set rs = New Recordset
        rs.Open "Select * from rm_param", DB, adOpenStatic
        If rs("commtax") = "Y" Then
            If UCase(deltype) = "F" Then
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(60).Text) + val(Txtfields(111).Text) - (val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            Else
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(60).Text) + val(Txtfields(111).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            End If
        Else
            If UCase(deltype) = "F" Then
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(111).Text) - (val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            Else
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(111).Text) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            End If
        End If
    Else
'        Set Rs = New Recordset
'        Rs.Open "Select * from rm_param", DB, adOpenStatic
'        If Rs("commtax") = "Y" Then
'            If UCase(deltype) = "F" Then
'               TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'            Else
'               TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) + val(TXTFIELDS(60).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'            End If
'        Else
'            If UCase(deltype) = "F" Then
'               TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text) + val(TXTFIELDS(13).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'            Else
'               TXTFIELDS(52).Text = Format(Round(val(TXTFIELDS(51).Text) * (val(TXTFIELDS(6).Text) - (val(TXTFIELDS(54).Text) + val(TXTFIELDS(85).Text)) + val(TXTFIELDS(42).Text) + val(TXTFIELDS(46).Text) + val(TXTFIELDS(44).Text) + val(TXTFIELDS(48).Text)) / 100, 0), "0.00")
'            End If
'        End If

        Set rs = New Recordset
        rs.Open "Select * from rm_param", DB, adOpenStatic
        If rs("commtax") = "Y" Then
            If UCase(deltype) = "F" Then
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(60).Text) + val(Txtfields(111).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            Else
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(60).Text) + val(Txtfields(111).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            End If
        Else
            If UCase(deltype) = "F" Then
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(111).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text) + val(Txtfields(13).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            Else
               Txtfields(52).Text = Format(Round(val(Txtfields(51).Text) * (val(Txtfields(6).Text) + val(Txtfields(111).Text) - (val(Txtfields(54).Text) + val(Txtfields(85).Text)) + val(Txtfields(42).Text) + val(Txtfields(46).Text) + val(Txtfields(44).Text) + val(Txtfields(48).Text)) / 100, 0), "0.00")
            End If
        End If

    End If
  

End Sub

Private Function LandCostTotal() As Double
Dim irow As Integer
dLandedCost = 0
   For irow = 1 To spdVar.MaxRows Step 1
      dLandedCost = dLandedCost + val(GetText(spdVar, ILandedcost, irow))
   Next
   LandCostTotal = dLandedCost
  
End Function

Private Sub COTTONARRIVALREPORT_Shiva()
On Error GoTo COTTONARRIVALREPORT_Error
    Dim stg As Double
    Dim frt As Double
Screen.MousePointer = 11
SqlStr = ""
SqlStr = SqlStr + Chr(13) & "SELECT a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT as ptywgt,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & "QUANTITY,LORRYNOS,A.FREIGHT,a.InwardNo,e.LOTNO,e.LOTDT,E.weighbridgewt,SUM(F.NETWT)INDIWT,E.PNETWT,G.STATION,D.MILLREFNO,G.AREANAME FROM RM_ARRIVAL A "
SqlStr = SqlStr + Chr(13) & "INNER JOIN FA_SLMAS C ON A.SUPCD=C.slcode"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_CONT D ON A.CONTNO=D.CONTNO AND A.CONTDT=D.CONTDT AND A.DIVCODE=D.DIVCODE"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_LOT E ON A.LOTNO=E.LOTNO AND A.lotdt=E.LOTDT AND A.ARRNO=E.ARRNO AND A.ARRDATE=E.ARRDT AND A.lottype=E.LOTTYPE"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_BALE F ON E.LOTNO=F.LOTNO AND E.LOTDT=F.lotdt AND E.LOTTYPE=F.lottype"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_AREA G ON g.AREACODE=A.AREACODE "
SqlStr = SqlStr + Chr(13) & "WHERE ARRDATE='" & Format(MaskEdBox1(4).Text, "YYYY-MM-DD") & "' AND A.ARRNO='" & val(Txtfields(96).Text) & "' GROUP BY a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & "Quantity , LORRYNOS, a.Freight, a.InwardNo, e.LOTNO, e.LOTDT, e.weighbridgewt,E.PNETWT,G.STATION,D.MILLREFNO,G.AREANAME"
Set rs = New Recordset
rs.Open SqlStr, DB, adOpenStatic
If rs.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

fileno = FreeFile()
Close
Pg = 0
lcnt = 0
'Open "c:\cottonarrivalreport.txt" For Output As #fileno
 Open KALFOLDERDATA & "\cottonarrivalreport.TXT" For Output As #fileno

    For i = 0 To 2
        Print #fileno,
    Next
    
    Set RS1 = New Recordset
    RS1.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
    If rs.EOF = False Then
        sLotYear = Format(RS1("AYFDATE"), "YY")
    Else
        sLotYear = Format(rs("LOTDT"), "YY")
    End If
'    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(75) & Chr(18) & Chr(14) & Chr(27) & "E" & Format(rs("arrdate"), "dd/mm/yy") & Space(7) & rs("MILLREFNO") & Chr(27) & "F" & Chr(15)

    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    
    If rs("quantity") > 0 Then
        frt = val(rs("freight")) / val(rs("quantity"))
    Else
        frt = 0
    End If
    'This report Inv.Wgt is Changed By Vinoth as per Customer requirement 24.09.09 (Mr.SelvaKumar Cotton Incharge - Shiva I)
    Print #fileno, Space(5) & Padr(rs("varcode"), 10, " ") & Space(1) & Padr(rs("lotno") & "/" & sLotYear, 10, " ") & Space(1) & Padl(Format(rs("PNETWT"), "0.00"), 13, " ") & Space(1) & Padl(Format(rs("ratecy"), "0.00"), 13, " ") & Space(7) & Padr(rs("plotno"), 14, " ");
    'Print #fileno, Space(1) & Padr(Rs("City"), 12, " ") & Space(1) & Padr(Rs("slname"), 38, " ") & Space(1) & Padl(Format(Rs("Quantity"), "0"), 8, " ") & Space(2) & Padr(Rs("lorrynos"), 12, " ")
    Print #fileno, Space(1) & Padr(rs("AREANAME"), 12, " ") & Space(1) & Padr(rs("slname"), 38, " ") & Space(1) & Padl(Format(rs("Quantity"), "0"), 8, " ") & Space(2) & Padr(rs("lorrynos"), 12, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add1"), 38, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add2"), 38, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add3"), 38, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("city") & "-" & rs("pin"), 38, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("state"), 38, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ")
    Print #fileno, Padr("", 16, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(5) & Padr("Party Code : ", 14, " ") & Space(2) & Padr(rs("supcd"), 10, " ")
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(12) & Padl("Mill Indiv.net Wt.     :", 25, " ") & Space(3) & Padl(Format(rs("PNETWT"), "0.000"), 10, " ")
    Print #fileno, Space(12) & Padl("Mill W.B.NET WT.       :", 25, " ") & Space(3) & Padl(Format(rs("weighbridgewt"), "0.000"), 10, " ") & Space(70) & Padl(INF(rs("inwardno"), 0), 10, " ")
    Print #fileno, Space(12) & Padl("Mill Party Invoice Wt. :", 25, " ") & Space(3) & Padl(Format(rs("ptywgt"), "0.000"), 10, " ")

    
    stg = val(rs("weighbridgewt")) - val(rs("PNETWT"))
    
    Print #fileno, Space(12) & Padl("SHORATGE               :", 25, " ") & Space(3) & Padl(Format(stg, "0.000"), 10, " ") & Space(51) & "Freight Per Bale : " & Padl(Format(frt, "0.00"), 15, " ")
    Print #fileno, Chr(12) & Chr(18)
Close

''Open "c:\cottonarrivalreport.bat" For Output As #fileno
' 'Open KALFOLDERDATA & "\cottonarrivalreport.TXT" For Output As #fileno
'
'    Print #fileno, "cd\"
'    Print #fileno, "c:\"
'    Print #fileno, "cd\"
'    Print #fileno, "c:\cottonarrivalreport.txt>prn"
'Close
'Set RPTV = New Report.ReportView
'RPTV.txtfile = "c:\cottonarrivalreport.txt"
'RPTV.Batfile = "c:\cottonarrivalreport.bat"
    Close #fileno
    fileno = FreeFile
    Call KALBATPROCESS("cottonarrivalreport")
Screen.MousePointer = 0
On Error GoTo 0
Exit Sub

COTTONARRIVALREPORT_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure COTTONARRIVALREPORT of Form WLotbale", vbInformation, head
End Sub
Private Sub COTTONARRIVALREPORT_Bannari()
On Error GoTo COTTONARRIVALREPORT_Error
    Dim stg As Double
    Dim frt As Double
Screen.MousePointer = 11
SqlStr = ""
SqlStr = SqlStr + Chr(13) & "SELECT a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT as ptywgt,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & "QUANTITY,LORRYNOS,A.FREIGHT,a.InwardNo,e.LOTNO,e.LOTDT,E.weighbridgewt,SUM(F.NETWT)INDIWT,e.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME FROM RM_ARRIVAL A"
SqlStr = SqlStr + Chr(13) & "INNER JOIN FA_SLMAS C ON A.SUPCD=C.slcode"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_CONT D ON A.CONTNO=D.CONTNO AND A.CONTDT=D.CONTDT AND A.DIVCODE=D.DIVCODE"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_LOT E ON A.LOTNO=E.LOTNO AND A.lotdt=E.LOTDT AND A.ARRNO=E.ARRNO AND A.ARRDATE=E.ARRDT AND A.lottype=E.LOTTYPE"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_BALE F ON E.LOTNO=F.LOTNO AND E.LOTDT=F.lotdt AND E.LOTTYPE=F.lottype"
SqlStr = SqlStr + Chr(13) & "INNER JOIN RM_AREA G ON A.AREACODE=G.AREACODE "
SqlStr = SqlStr + Chr(13) & "WHERE ARRDATE='" & Format(MaskEdBox1(4).Text, "YYYY-MM-DD") & "' AND A.ARRNO='" & val(Txtfields(96).Text) & "' GROUP BY a.arrno,a.arrdate,A.VARCODE,A.LOTNO,e.FAVAOURABLEWGT,A.PLOTNO,E.RATECY,A.AREACODE,A.SUPCD,C.slname,C.add1,C.add2,C.add3,C.city,C.state,C.pin,"
SqlStr = SqlStr + Chr(13) & "Quantity , LORRYNOS, a.Freight, a.InwardNo, e.LOTNO, e.LOTDT, e.weighbridgewt,e.pnetwt,G.STATION,D.MILLREFNO,G.AREANAME"
Set rs = New Recordset
rs.Open SqlStr, DB, adOpenStatic
If rs.RecordCount = 0 Then
    MsgBox "No Record Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

fileno = FreeFile()
Close
Pg = 0
lcnt = 0
'Open "c:\cottonarrivalreport.txt" For Output As #fileno
Open KALFOLDERDATA & "\cottonarrivalreport.TXT" For Output As #fileno
    For i = 0 To 2
        Print #fileno,
    Next
    
    Set RS1 = New Recordset
    RS1.Open "SELECT AYFDATE FROM PP_YEAR WHERE AYFDATE <='" & Format(rs("LOTDT"), "YYYY-MM-DD") & "' AND AYLDATE >='" & Format(rs("LOTDT"), "yyyy-MM-DD") & "'", DB, adOpenStatic
    If rs.EOF = False Then
        sLotYear = Format(RS1("AYFDATE"), "YY")
    Else
        sLotYear = Format(rs("LOTDT"), "YY")
    End If
'    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(42) & Chr(14) & Chr(27) & "E" & Format(rs("arrdate"), "dd/mm/yy") & Space(7) & rs("MILLREFNO") & Chr(27) & "F" & Chr(15)
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Padr(rs("varcode"), 10, " ") & Space(1) & Padr(rs("lotno") & "/" & sLotYear, 10, " ") & Space(1) & Padl(Format(rs("pnetwt"), "0.00"), 13, " ") & Space(1) & Padl(Format(rs("ratecy"), "0.00"), 13, " ") & Space(5) & Padr(rs("plotno"), 10, " ");
    Print #fileno, Space(1) & Padr(rs("AREANAME"), 15, " ") & Space(3) & Padr(rs("slname"), 36, " ") & Space(1) & Padl(Format(rs("Quantity"), "0"), 10, " ") & Space(2) & Padr(rs("lorrynos"), 12, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add1"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add2"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("add3"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("city") & "-" & rs("pin"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ") & Space(5) & Padr(rs("state"), 38, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(1) & Padr("", 15, " ")
    Print #fileno, Padr("", 10, " ") & Space(1) & Padr("", 10, " ") & Space(1) & Padl("", 13, " ") & Space(1) & Padl("", 13, " ") & Space(2) & Padr("", 11, " ") & Space(5) & Padr("Party Code : ", 14, " ") & Space(2) & Padr(rs("supcd"), 10, " ")
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno,
    Print #fileno, Space(35) & Padl(Format(rs("indiwt"), "0.000"), 10, " ")
    Print #fileno, Space(35) & Padl(Format(rs("weighbridgewt"), "0.000"), 10, " ") & Space(70) & Padl(INF(rs("inwardno"), 0), 10, " ")
    Print #fileno, Space(35) & Padl(Format(rs("pnetwt"), "0.000"), 10, " ")

    
    stg = val(rs("weighbridgewt")) - val(rs("pnetwt"))
    If rs("quantity") > 0 Then
        frt = val(rs("freight")) / val(rs("quantity"))
    Else
        frt = 0
    End If
    Print #fileno, Space(35) & Padl(Format(stg, "0.000"), 10, " ") & Space(70) & Padl(Format(frt, "0.00"), 15, " ")
    Print #fileno, Chr(12) & Chr(18)
Close

'Open "c:\cottonarrivalreport.bat" For Output As #fileno
'    Print #fileno, "cd\"
'    Print #fileno, "c:\"
'    Print #fileno, "cd\"
'    Print #fileno, "c:\cottonarrivalreport.txt>prn"
'Close
'Set RPTV = New Report.ReportView
'RPTV.txtfile = "c:\cottonarrivalreport.txt"
'RPTV.Batfile = "c:\cottonarrivalreport.bat"
Close #fileno
fileno = FreeFile
Call KALBATPROCESS("cottonarrivalreport")
Screen.MousePointer = 0
On Error GoTo 0
Exit Sub

COTTONARRIVALREPORT_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure COTTONARRIVALREPORT of Form WLotbale", vbInformation, head
End Sub

