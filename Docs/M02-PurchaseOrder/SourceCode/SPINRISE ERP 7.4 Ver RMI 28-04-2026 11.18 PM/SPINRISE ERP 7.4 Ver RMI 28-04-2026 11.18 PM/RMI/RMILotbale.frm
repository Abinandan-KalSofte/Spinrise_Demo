VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frmlotbale 
   Caption         =   "Lot Bale Details"
   ClientHeight    =   8490
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11100
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   12495
   ScaleWidth      =   22920
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame13 
      Caption         =   "Frame13"
      Height          =   7590
      Left            =   13320
      TabIndex        =   140
      Top             =   720
      Visible         =   0   'False
      Width           =   10500
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   31
         Left            =   2400
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   216
         TabStop         =   0   'False
         Top             =   3615
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   33
         Left            =   8175
         MaxLength       =   5
         TabIndex        =   215
         TabStop         =   0   'False
         Top             =   3615
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   34
         Left            =   10905
         MaxLength       =   5
         TabIndex        =   212
         Top             =   3345
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   36
         Left            =   3900
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   211
         Top             =   3345
         Visible         =   0   'False
         Width           =   1395
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         DataField       =   "godown"
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   20
         Left            =   1455
         MaxLength       =   2
         TabIndex        =   209
         Top             =   2040
         Visible         =   0   'False
         Width           =   1185
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   86
         Left            =   2670
         MaxLength       =   9
         TabIndex        =   208
         Top             =   6120
         Width           =   480
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
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   87
         Left            =   3150
         MaxLength       =   9
         TabIndex        =   207
         Top             =   6120
         Width           =   780
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   28
         Left            =   1470
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   201
         TabStop         =   0   'False
         Top             =   1290
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   76
         Left            =   6465
         MaxLength       =   100
         TabIndex        =   200
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
         TabIndex        =   199
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
         TabIndex        =   190
         TabStop         =   0   'False
         Top             =   5295
         Width           =   1110
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   0
         Left            =   1860
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   189
         TabStop         =   0   'False
         Top             =   4845
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   1
         Left            =   1860
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   188
         TabStop         =   0   'False
         Top             =   4380
         Width           =   1425
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   23
         Left            =   1845
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   187
         TabStop         =   0   'False
         Top             =   5280
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   24
         Left            =   4470
         Locked          =   -1  'True
         MaxLength       =   9
         TabIndex        =   186
         TabStop         =   0   'False
         Top             =   5310
         Width           =   1230
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H000000FF&
         Height          =   330
         Index           =   25
         Left            =   8970
         Locked          =   -1  'True
         MaxLength       =   11
         TabIndex        =   185
         TabStop         =   0   'False
         Top             =   5325
         Width           =   1050
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   22
         Left            =   4455
         Locked          =   -1  'True
         MaxLength       =   5
         TabIndex        =   184
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
         TabIndex        =   183
         TabStop         =   0   'False
         Top             =   3840
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   80
         Left            =   6915
         Locked          =   -1  'True
         MaxLength       =   11
         TabIndex        =   182
         TabStop         =   0   'False
         Top             =   5730
         Width           =   1110
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   81
         Left            =   1845
         MaxLength       =   11
         TabIndex        =   181
         Top             =   5700
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   82
         Left            =   4455
         MaxLength       =   11
         TabIndex        =   180
         Top             =   5730
         Width           =   1245
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   94
         Left            =   4455
         MaxLength       =   10
         TabIndex        =   179
         Top             =   4365
         Width           =   1440
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   178
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
         TabIndex        =   176
         Top             =   2940
         Width           =   825
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   175
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
         TabIndex        =   173
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
         TabIndex        =   172
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
         TabIndex        =   163
         TabStop         =   0   'False
         Top             =   2445
         Width           =   1485
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   40
         Left            =   6825
         MaxLength       =   25
         MultiLine       =   -1  'True
         TabIndex        =   162
         Top             =   2445
         Width           =   2055
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   41
         Left            =   4155
         MaxLength       =   40
         TabIndex        =   161
         Top             =   2430
         Width           =   1815
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   73
         Left            =   4155
         MaxLength       =   20
         TabIndex        =   160
         Top             =   2055
         Width           =   1815
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00FFFFFF&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   74
         Left            =   6045
         Locked          =   -1  'True
         MaxLength       =   100
         TabIndex        =   159
         TabStop         =   0   'False
         Top             =   945
         Width           =   3375
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   92
         Left            =   1290
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   158
         TabStop         =   0   'False
         Top             =   1695
         Width           =   3615
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   93
         Left            =   6045
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   157
         TabStop         =   0   'False
         Top             =   1290
         Width           =   3375
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   29
         Left            =   1425
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   145
         Top             =   195
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   89
         Left            =   4335
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   144
         TabStop         =   0   'False
         Top             =   465
         Width           =   1380
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   90
         Left            =   1410
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   143
         TabStop         =   0   'False
         Top             =   930
         Width           =   1455
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         DataField       =   "contno"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   91
         Left            =   6600
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   142
         TabStop         =   0   'False
         Top             =   975
         Width           =   420
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   95
         Left            =   4305
         Locked          =   -1  'True
         MaxLength       =   10
         TabIndex        =   141
         TabStop         =   0   'False
         Top             =   930
         Width           =   1455
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         Height          =   315
         Index           =   1
         Left            =   1425
         TabIndex        =   146
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
         TabIndex        =   202
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
         TabIndex        =   203
         Top             =   1275
         Width           =   1320
         _ExtentX        =   2328
         _ExtentY        =   582
         _Version        =   393216
         CustomFormat    =   "dd/mm/yyyy"
         Format          =   380239873
         CurrentDate     =   36831
      End
      Begin VB.Label Label62 
         Caption         =   "Label62"
         Height          =   255
         Left            =   360
         TabIndex        =   400
         Top             =   6840
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Index           =   1
         Left            =   6900
         TabIndex        =   217
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
         TabIndex        =   214
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
         TabIndex        =   213
         Top             =   3420
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.Label Label30 
         AutoSize        =   -1  'True
         Caption         =   "Godown"
         Height          =   195
         Left            =   0
         TabIndex        =   210
         Top             =   2115
         Visible         =   0   'False
         Width           =   600
      End
      Begin VB.Label Label58 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot Date"
         Height          =   195
         Index           =   0
         Left            =   3015
         TabIndex        =   206
         Top             =   1350
         Width           =   885
      End
      Begin VB.Label Label59 
         AutoSize        =   -1  'True
         Caption         =   "Mill Lot Number"
         Height          =   195
         Left            =   0
         TabIndex        =   205
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label74 
         Caption         =   "Category"
         Height          =   255
         Left            =   5700
         TabIndex        =   204
         Top             =   1320
         Width           =   855
      End
      Begin VB.Label Label5 
         Caption         =   "Moisture Wt"
         Height          =   255
         Left            =   5865
         TabIndex        =   198
         Top             =   5355
         Width           =   960
      End
      Begin VB.Label Label70 
         AutoSize        =   -1  'True
         Caption         =   "Party Lot No."
         Height          =   195
         Left            =   960
         TabIndex        =   197
         Top             =   5040
         Width           =   930
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Quantity"
         Height          =   195
         Index           =   0
         Left            =   3435
         TabIndex        =   196
         Top             =   3915
         Width           =   585
      End
      Begin VB.Label Label71 
         AutoSize        =   -1  'True
         Caption         =   "Tare Weight"
         Height          =   195
         Left            =   3435
         TabIndex        =   195
         Top             =   5370
         Width           =   885
      End
      Begin VB.Label Label72 
         AutoSize        =   -1  'True
         Caption         =   "Nett Weight"
         Height          =   195
         Left            =   8085
         TabIndex        =   194
         Top             =   5355
         Width           =   855
      End
      Begin VB.Label Label79 
         AutoSize        =   -1  'True
         Caption         =   "Party Net wt."
         Height          =   195
         Left            =   5880
         TabIndex        =   193
         Top             =   5790
         Width           =   915
      End
      Begin VB.Label Label93 
         AutoSize        =   -1  'True
         Caption         =   "Rebate"
         Height          =   195
         Left            =   3435
         TabIndex        =   192
         Top             =   4425
         Width           =   525
      End
      Begin VB.Label Label95 
         AutoSize        =   -1  'True
         ForeColor       =   &H000000FF&
         Height          =   195
         Left            =   930
         TabIndex        =   191
         Top             =   4395
         Width           =   855
      End
      Begin VB.Label Label6 
         Caption         =   "Moisture %"
         Height          =   255
         Left            =   90
         TabIndex        =   177
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
         TabIndex        =   174
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
         TabIndex        =   171
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
         TabIndex        =   170
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
         TabIndex        =   169
         Top             =   1020
         Width           =   930
      End
      Begin VB.Label Label65 
         AutoSize        =   -1  'True
         Caption         =   "PR Mark"
         Height          =   195
         Left            =   6060
         TabIndex        =   168
         Top             =   2130
         Width           =   630
      End
      Begin VB.Label Label66 
         AutoSize        =   -1  'True
         Caption         =   "PR No."
         Height          =   195
         Left            =   2835
         TabIndex        =   167
         Top             =   2115
         Width           =   525
      End
      Begin VB.Label Label67 
         AutoSize        =   -1  'True
         Caption         =   "Lorry No."
         Height          =   195
         Left            =   6075
         TabIndex        =   166
         Top             =   2520
         Width           =   645
      End
      Begin VB.Label Label68 
         AutoSize        =   -1  'True
         Caption         =   "Mode of Transport"
         Height          =   390
         Left            =   75
         TabIndex        =   165
         Top             =   2415
         Width           =   825
         WordWrap        =   -1  'True
      End
      Begin VB.Label Label69 
         AutoSize        =   -1  'True
         Caption         =   "GC No."
         Height          =   195
         Left            =   2835
         TabIndex        =   164
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
         TabIndex        =   156
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
         TabIndex        =   155
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
         TabIndex        =   154
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
         TabIndex        =   153
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
         TabIndex        =   152
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
         TabIndex        =   151
         Top             =   645
         Width           =   990
      End
      Begin VB.Label Label60 
         AutoSize        =   -1  'True
         Caption         =   "Contract No."
         Height          =   195
         Left            =   225
         TabIndex        =   150
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
         TabIndex        =   149
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
         TabIndex        =   148
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
         TabIndex        =   147
         Top             =   975
         Width           =   855
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7755
      Left            =   360
      TabIndex        =   90
      Top             =   960
      Width           =   11745
      _ExtentX        =   20717
      _ExtentY        =   13679
      _Version        =   393216
      Tab             =   1
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
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "&Proforma / Invoice"
      TabPicture(1)   =   "RMILotbale.frx":00B0
      Tab(1).ControlEnabled=   -1  'True
      Tab(1).Control(0)=   "Frame4"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Chk_TCSAssValFlg"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "Frame8"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "&Bales Details"
      TabPicture(2)   =   "RMILotbale.frx":00CC
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label9"
      Tab(2).Control(1)=   "Frame1"
      Tab(2).Control(2)=   "Frame2"
      Tab(2).Control(3)=   "Frame5"
      Tab(2).Control(4)=   "Frame18"
      Tab(2).Control(5)=   "Command10"
      Tab(2).Control(6)=   "Command14"
      Tab(2).ControlCount=   7
      Begin VB.Frame Frame8 
         Height          =   6825
         Left            =   120
         TabIndex        =   282
         Top             =   855
         Width           =   9840
         Begin VB.ComboBox Combo12 
            BackColor       =   &H00FFFFFF&
            DataField       =   "TypeTruckbale"
            Enabled         =   0   'False
            Height          =   315
            ItemData        =   "RMILotbale.frx":00E8
            Left            =   6600
            List            =   "RMILotbale.frx":00EA
            Sorted          =   -1  'True
            Style           =   2  'Dropdown List
            TabIndex        =   410
            Top             =   6240
            Width           =   1575
         End
         Begin VB.TextBox txtincidentcharge 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "lot_incidentcharge"
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
            Left            =   1440
            MaxLength       =   10
            TabIndex        =   409
            Top             =   6240
            Width           =   1770
         End
         Begin VB.TextBox txtspotexpense 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "lot_spotexpense"
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
            Left            =   4680
            MaxLength       =   10
            TabIndex        =   408
            Top             =   6240
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "TCS_AssAmt"
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
            Index           =   130
            Left            =   6360
            MaxLength       =   9
            TabIndex        =   402
            Top             =   4680
            Width           =   1020
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Tottcsper"
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
            Index           =   129
            Left            =   7920
            MaxLength       =   9
            TabIndex        =   389
            Top             =   4680
            Width           =   615
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Tottcsamt"
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
            Left            =   8550
            MaxLength       =   9
            TabIndex        =   390
            Top             =   4680
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "TotDiscAmt"
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
            Index           =   127
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   388
            Top             =   4200
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "TotDiscRate"
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
            Index           =   126
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   387
            Top             =   4200
            Width           =   615
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            DataField       =   "Comm_Wt"
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
            Index           =   123
            Left            =   1440
            Locked          =   -1  'True
            MaxLength       =   12
            TabIndex        =   20
            Top             =   480
            Width           =   1770
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
            Left            =   120
            TabIndex        =   352
            Top             =   4500
            Width           =   5145
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "IGSTAMT"
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
               Index           =   119
               Left            =   3990
               MaxLength       =   15
               TabIndex        =   355
               Top             =   165
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "SGSTAMT"
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
               Index           =   116
               Left            =   2310
               MaxLength       =   15
               TabIndex        =   354
               Top             =   165
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
               Alignment       =   1  'Right Justify
               BackColor       =   &H00E0E0E0&
               DataField       =   "CGSTAMT"
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
               Index           =   118
               Left            =   660
               MaxLength       =   15
               TabIndex        =   353
               Top             =   120
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
               Left            =   3450
               TabIndex        =   358
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
               Left            =   1770
               TabIndex        =   357
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
               TabIndex        =   356
               Top             =   210
               Width           =   435
            End
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   62
            Top             =   3855
            Width           =   1785
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   23
            Top             =   825
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   50
            TabStop         =   0   'False
            Top             =   3135
            Width           =   615
         End
         Begin VB.TextBox txtfields 
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
            Left            =   4665
            MaxLength       =   12
            TabIndex        =   24
            Top             =   480
            Width           =   1770
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
            Index           =   12
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   36
            Top             =   2445
            Width           =   615
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   70
            Top             =   5505
            Width           =   1770
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   67
            Top             =   5160
            Width           =   1770
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
            Index           =   43
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   42
            Top             =   2790
            Width           =   615
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   73
            Top             =   5865
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   19
            Top             =   135
            Width           =   1785
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
            Left            =   7965
            MaxLength       =   9
            TabIndex        =   56
            Top             =   3480
            Width           =   615
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   49
            Top             =   3135
            Width           =   720
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   51
            Top             =   3135
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "TOTLANDCOST"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   18
            Left            =   4665
            Locked          =   -1  'True
            MaxLength       =   12
            TabIndex        =   72
            Top             =   5865
            Width           =   1770
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   69
            Top             =   5505
            Width           =   1770
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   63
            Top             =   4170
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   66
            Top             =   5160
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
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
            Locked          =   -1  'True
            MaxLength       =   11
            TabIndex        =   21
            Top             =   840
            Width           =   1770
         End
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
            Index           =   7
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   38
            Top             =   2790
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
            Index           =   17
            Left            =   1440
            MaxLength       =   10
            TabIndex        =   71
            Top             =   5865
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "billno"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   3
            Left            =   1440
            MaxLength       =   18
            TabIndex        =   17
            Top             =   135
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   22
            Top             =   840
            Width           =   1770
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
            Index           =   42
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   39
            Top             =   2790
            Width           =   1140
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
            Index           =   44
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   43
            Top             =   2790
            Width           =   1140
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
            Index           =   45
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   44
            Top             =   3135
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
            Index           =   46
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   45
            Top             =   3135
            Width           =   1140
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
            Index           =   47
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   40
            Top             =   2790
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
            Index           =   48
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   41
            Top             =   2790
            Width           =   1140
         End
         Begin VB.TextBox txtfields 
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
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   51
            Left            =   4665
            Locked          =   -1  'True
            MaxLength       =   9
            TabIndex        =   47
            TabStop         =   0   'False
            Top             =   3135
            Width           =   615
         End
         Begin VB.TextBox txtfields 
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
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   52
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   48
            Top             =   3135
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
            Index           =   10
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   52
            Top             =   3480
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
            Index           =   11
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   53
            Top             =   3480
            Width           =   1140
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
            Index           =   15
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   54
            Top             =   3480
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
            Index           =   16
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   55
            Top             =   3480
            Width           =   1140
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
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   57
            Top             =   3480
            Width           =   1140
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   58
            Top             =   3825
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
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   59
            Top             =   3825
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   60
            Top             =   3825
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
            Left            =   5295
            MaxLength       =   9
            TabIndex        =   61
            Top             =   3825
            Width           =   1140
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   65
            Top             =   5160
            Width           =   1770
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   64
            Top             =   4170
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   303
            Left            =   3225
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   287
            TabStop         =   0   'False
            Top             =   1545
            Width           =   6525
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ptype"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   302
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   26
            Top             =   1545
            Width           =   1770
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   301
            Left            =   3225
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   286
            TabStop         =   0   'False
            Top             =   1200
            Width           =   6525
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "pjtc"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   300
            Left            =   1440
            MaxLength       =   100
            TabIndex        =   25
            Top             =   1200
            Width           =   1770
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
            Left            =   2070
            MaxLength       =   9
            TabIndex        =   33
            Top             =   2445
            Width           =   1140
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
            Left            =   1440
            MaxLength       =   9
            TabIndex        =   32
            Top             =   2445
            Width           =   615
         End
         Begin VB.TextBox txtfields 
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
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   83
            Left            =   3930
            MaxLength       =   9
            TabIndex        =   46
            Top             =   3135
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
            Index           =   13
            Left            =   8595
            MaxLength       =   9
            TabIndex        =   37
            Top             =   2445
            Width           =   1140
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
            Left            =   4665
            MaxLength       =   9
            TabIndex        =   34
            Top             =   2445
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
            MaxLength       =   9
            TabIndex        =   35
            Top             =   2445
            Width           =   1140
         End
         Begin VB.Frame Frame21 
            Height          =   480
            Left            =   1440
            TabIndex        =   284
            Top             =   1935
            Width           =   3375
            Begin VB.OptionButton optDCyes 
               Caption         =   "Yes"
               Height          =   225
               Left            =   1170
               TabIndex        =   28
               Top             =   180
               Width           =   645
            End
            Begin VB.OptionButton optDCNo 
               Caption         =   "No"
               Height          =   255
               Left            =   300
               TabIndex        =   27
               Top             =   165
               Value           =   -1  'True
               Width           =   735
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   29
               Top             =   120
               Width           =   750
            End
            Begin VB.Label lblDutyPer 
               Caption         =   "Duty %"
               Enabled         =   0   'False
               Height          =   195
               Left            =   1875
               TabIndex        =   285
               Top             =   180
               Width           =   525
            End
         End
         Begin VB.Frame Frame22 
            Height          =   480
            Left            =   6210
            TabIndex        =   283
            Top             =   1935
            Width           =   3525
            Begin VB.OptionButton optBefore 
               Caption         =   "Before Discount"
               Height          =   255
               Left            =   270
               TabIndex        =   30
               Top             =   180
               Value           =   -1  'True
               Width           =   1455
            End
            Begin VB.OptionButton optAfter 
               Caption         =   "After Discount"
               Height          =   225
               Left            =   1950
               TabIndex        =   31
               Top             =   180
               Width           =   1455
            End
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   68
            Top             =   5505
            Width           =   1770
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "BILLDT"
            Height          =   330
            Index           =   2
            Left            =   4665
            TabIndex        =   18
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
         Begin VB.Label Label81 
            AutoSize        =   -1  'True
            Caption         =   "Incidental Charges %"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   390
            Left            =   120
            TabIndex        =   407
            Top             =   6240
            Width           =   1140
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label80 
            AutoSize        =   -1  'True
            Caption         =   "Spot Expenses (Rs)"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   465
            Left            =   3240
            TabIndex        =   406
            Top             =   6270
            Width           =   1440
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label130 
            AutoSize        =   -1  'True
            Caption         =   "TCS Assesable Amt"
            Height          =   465
            Left            =   5280
            TabIndex        =   399
            Top             =   4590
            Width           =   1035
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label73 
            AutoSize        =   -1  'True
            Caption         =   "TCS"
            Height          =   195
            Left            =   7440
            TabIndex        =   398
            Top             =   4725
            Width           =   315
         End
         Begin VB.Label Label129 
            AutoSize        =   -1  'True
            Caption         =   "Fibre Discount"
            Height          =   195
            Left            =   6525
            TabIndex        =   391
            Top             =   4245
            Width           =   1020
         End
         Begin VB.Label Label125 
            AutoSize        =   -1  'True
            Caption         =   "Commercial Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   50
            TabIndex        =   368
            Top             =   540
            Width           =   1365
         End
         Begin VB.Label Label120 
            AutoSize        =   -1  'True
            Caption         =   "SICA Amount"
            Height          =   195
            Left            =   6525
            TabIndex        =   347
            Top             =   3915
            Width           =   945
         End
         Begin VB.Label Label119 
            Caption         =   "Supplier Invoice Value"
            ForeColor       =   &H00FF0000&
            Height          =   360
            Left            =   6480
            TabIndex        =   346
            Top             =   795
            Width           =   1185
         End
         Begin VB.Label lblAddTax 
            AutoSize        =   -1  'True
            Caption         =   "Add. Tax"
            Enabled         =   0   'False
            Height          =   195
            Left            =   6525
            TabIndex        =   342
            Top             =   3180
            Width           =   645
         End
         Begin VB.Label Label53 
            Caption         =   "Others                   (Non -Taxable Amt)"
            Height          =   435
            Left            =   3270
            TabIndex        =   322
            Top             =   5430
            Width           =   1635
         End
         Begin VB.Label Label31 
            AutoSize        =   -1  'True
            Caption         =   "Assessable Value"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   321
            Top             =   885
            Width           =   1245
         End
         Begin VB.Label Label35 
            AutoSize        =   -1  'True
            Caption         =   "Landed Cost"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   320
            Top             =   5925
            Width           =   900
         End
         Begin VB.Label Label36 
            AutoSize        =   -1  'True
            Caption         =   "Bill Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3270
            TabIndex        =   319
            Top             =   210
            Width           =   585
         End
         Begin VB.Label Label45 
            AutoSize        =   -1  'True
            Caption         =   "Cess"
            Height          =   195
            Left            =   3270
            TabIndex        =   318
            Top             =   2820
            Width           =   345
         End
         Begin VB.Label Label47 
            AutoSize        =   -1  'True
            Caption         =   "Tax"
            Enabled         =   0   'False
            Height          =   195
            Left            =   3270
            TabIndex        =   317
            Top             =   3180
            Width           =   270
         End
         Begin VB.Label Label26 
            AutoSize        =   -1  'True
            Caption         =   "Insurance"
            Height          =   195
            Left            =   6525
            TabIndex        =   316
            Top             =   3525
            Width           =   705
         End
         Begin VB.Label Label56 
            AutoSize        =   -1  'True
            Caption         =   "Dr. Note Amount"
            Height          =   195
            Left            =   75
            TabIndex        =   315
            Top             =   4230
            Width           =   1185
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Trade Discount"
            Height          =   240
            Index           =   0
            Left            =   3270
            TabIndex        =   314
            Top             =   2505
            Width           =   1140
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label112 
            AutoSize        =   -1  'True
            Caption         =   "Shipment Charge"
            Height          =   195
            Left            =   3270
            TabIndex        =   313
            Top             =   5160
            Width           =   1215
         End
         Begin VB.Label Label25 
            Caption         =   "Agent Commission"
            Height          =   285
            Left            =   60
            TabIndex        =   312
            Top             =   5925
            Width           =   1380
         End
         Begin VB.Label Label19 
            AutoSize        =   -1  'True
            Caption         =   "Invoice Weight"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   75
            TabIndex        =   311
            Top             =   900
            Width           =   1080
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "B.E.D."
            Enabled         =   0   'False
            Height          =   195
            Left            =   75
            TabIndex        =   310
            Top             =   2820
            Width           =   465
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Sample Weight"
            Height          =   195
            Left            =   6480
            TabIndex        =   309
            Top             =   195
            Width           =   1080
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Bill No."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   75
            TabIndex        =   308
            Top             =   225
            Width           =   495
         End
         Begin VB.Label Label29 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Kg."
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   6510
            TabIndex        =   307
            Top             =   5925
            Width           =   660
         End
         Begin VB.Label Label43 
            AutoSize        =   -1  'True
            Caption         =   "ED Cess"
            Enabled         =   0   'False
            Height          =   195
            Left            =   6510
            TabIndex        =   306
            Top             =   2835
            Width           =   615
         End
         Begin VB.Label Label44 
            AutoSize        =   -1  'True
            Caption         =   "HS Cess"
            Enabled         =   0   'False
            Height          =   195
            Left            =   75
            TabIndex        =   305
            Top             =   3180
            Width           =   615
         End
         Begin VB.Label Label21 
            AutoSize        =   -1  'True
            Caption         =   "Other Tax"
            Enabled         =   0   'False
            Height          =   195
            Left            =   75
            TabIndex        =   304
            Top             =   3540
            Width           =   705
         End
         Begin VB.Label Label23 
            AutoSize        =   -1  'True
            Caption         =   "Railway Frieght"
            Height          =   195
            Left            =   3270
            TabIndex        =   303
            Top             =   3510
            Width           =   1080
         End
         Begin VB.Label Label32 
            AutoSize        =   -1  'True
            Caption         =   "Commission"
            Height          =   195
            Left            =   75
            TabIndex        =   302
            Top             =   3885
            Width           =   825
         End
         Begin VB.Label Label33 
            AutoSize        =   -1  'True
            Caption         =   "LC Interest"
            Height          =   195
            Left            =   3270
            TabIndex        =   301
            Top             =   3870
            Width           =   765
         End
         Begin VB.Label Label34 
            AutoSize        =   -1  'True
            Caption         =   "Charity"
            Height          =   195
            Left            =   60
            TabIndex        =   300
            Top             =   5220
            Width           =   480
         End
         Begin VB.Label Label50 
            AutoSize        =   -1  'True
            Caption         =   "Damage"
            Height          =   195
            Left            =   3270
            TabIndex        =   299
            Top             =   4260
            Width           =   600
         End
         Begin VB.Line Line2 
            X1              =   -15
            X2              =   9825
            Y1              =   5130
            Y2              =   5130
         End
         Begin VB.Label Label52 
            AutoSize        =   -1  'True
            Caption         =   "Clearance"
            Height          =   195
            Left            =   6510
            TabIndex        =   298
            Top             =   5190
            Width           =   720
         End
         Begin VB.Label Label55 
            AutoSize        =   -1  'True
            Caption         =   "Customs Duty"
            Height          =   195
            Left            =   6510
            TabIndex        =   297
            Top             =   5550
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
            TabIndex        =   296
            Top             =   1275
            Width           =   1245
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Purchase Type"
            Height          =   195
            Index           =   4
            Left            =   60
            TabIndex        =   295
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
            TabIndex        =   294
            Top             =   285
            Visible         =   0   'False
            Width           =   1245
         End
         Begin VB.Label Label48 
            AutoSize        =   -1  'True
            Caption         =   "Cash Discount"
            Height          =   195
            Left            =   60
            TabIndex        =   293
            Top             =   2475
            Width           =   1035
         End
         Begin VB.Label Label22 
            AutoSize        =   -1  'True
            Caption         =   "Lorry Frieght"
            Height          =   195
            Left            =   6510
            TabIndex        =   292
            Top             =   2505
            Width           =   870
         End
         Begin VB.Label Label110 
            AutoSize        =   -1  'True
            Caption         =   "VAT Category"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   3315
            TabIndex        =   291
            Top             =   540
            Width           =   990
         End
         Begin VB.Label Label83 
            Caption         =   "Duty Claimable?"
            Height          =   285
            Left            =   60
            TabIndex        =   290
            Top             =   2115
            Width           =   1335
         End
         Begin VB.Label Label111 
            Caption         =   "Tax Calculation?"
            Height          =   285
            Left            =   4905
            TabIndex        =   289
            Top             =   2115
            Width           =   1335
         End
         Begin VB.Label Label116 
            Caption         =   "Others        (Taxable Amt)"
            Height          =   435
            Left            =   60
            TabIndex        =   288
            Top             =   5460
            Width           =   1425
         End
      End
      Begin VB.CheckBox Chk_TCSAssValFlg 
         Caption         =   "Cacluated TCS Assesable Value "
         Height          =   435
         Left            =   10080
         TabIndex        =   401
         Top             =   5520
         Width           =   1575
      End
      Begin VB.CommandButton Command14 
         Caption         =   "Upload"
         Default         =   -1  'True
         Height          =   345
         Left            =   -64800
         TabIndex        =   380
         Top             =   600
         Width           =   1155
      End
      Begin VB.CommandButton Command10 
         Caption         =   "&Transfar"
         Height          =   345
         Left            =   -64800
         TabIndex        =   351
         Top             =   240
         Width           =   1155
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
         Left            =   -74925
         TabIndex        =   260
         Top             =   5820
         Width           =   7005
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
            TabIndex        =   349
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
            TabIndex        =   270
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
            TabIndex        =   269
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
            TabIndex        =   268
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
            TabIndex        =   267
            Top             =   510
            Width           =   1095
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
            Left            =   5685
            TabIndex        =   266
            Top             =   510
            Width           =   1155
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
            TabIndex        =   350
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
            TabIndex        =   265
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
            TabIndex        =   264
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
            TabIndex        =   263
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
            TabIndex        =   262
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
            Left            =   6090
            TabIndex        =   261
            Top             =   315
            Visible         =   0   'False
            Width           =   795
         End
      End
      Begin VB.Frame Frame5 
         Height          =   615
         Left            =   -74880
         TabIndex        =   113
         Top             =   315
         Width           =   9825
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   35
            Left            =   1500
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   83
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
            TabIndex        =   84
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
            TabIndex        =   114
            Top             =   270
            Width           =   615
         End
      End
      Begin VB.Frame Frame4 
         Height          =   555
         Left            =   90
         TabIndex        =   111
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
            TabIndex        =   82
            TabStop         =   0   'False
            Text            =   " "
            Top             =   150
            Width           =   6525
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            DataField       =   "supcd"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   32
            Left            =   1455
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   81
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
            TabIndex        =   112
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
         Left            =   -67845
         TabIndex        =   96
         Top             =   5820
         Visible         =   0   'False
         Width           =   4515
         Begin VB.TextBox Text19 
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
            Left            =   3240
            Locked          =   -1  'True
            TabIndex        =   404
            Top             =   510
            Width           =   1095
         End
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
            TabIndex        =   85
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
            TabIndex        =   86
            Top             =   510
            Width           =   1035
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
            Left            =   2190
            Locked          =   -1  'True
            TabIndex        =   87
            Top             =   510
            Width           =   1095
         End
         Begin VB.Label Label3 
            Caption         =   "Comm. Wt."
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
            Left            =   3360
            TabIndex        =   405
            Top             =   300
            Visible         =   0   'False
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
            TabIndex        =   273
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
            TabIndex        =   272
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
            Left            =   2550
            TabIndex        =   271
            Top             =   300
            Visible         =   0   'False
            Width           =   750
         End
      End
      Begin VB.Frame Frame1 
         Height          =   4455
         Left            =   -74895
         TabIndex        =   91
         Top             =   900
         Width           =   11400
         Begin MSDataGridLib.DataGrid grddatagrid 
            Height          =   4335
            Left            =   0
            TabIndex        =   75
            Top             =   90
            Width           =   11235
            _ExtentX        =   19817
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
         Height          =   6600
         Left            =   -74850
         TabIndex        =   224
         Top             =   315
         Width           =   11535
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "DPDocno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   125
            Left            =   10350
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   384
            TabStop         =   0   'False
            Top             =   140
            Width           =   1125
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "BillCurrency"
            Enabled         =   0   'False
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   122
            Left            =   10200
            MaxLength       =   11
            TabIndex        =   367
            Top             =   3000
            Width           =   1215
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "ExchangeRate"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   124
            Left            =   10200
            MaxLength       =   11
            TabIndex        =   15
            Top             =   3360
            Width           =   1215
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Commercial Weight"
            Height          =   375
            Left            =   9720
            TabIndex        =   364
            Top             =   2280
            Width           =   1695
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "Line_no"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   121
            Left            =   7395
            MaxLength       =   11
            TabIndex        =   362
            Top             =   3420
            Width           =   1455
         End
         Begin VB.TextBox Text17 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2970
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   360
            TabStop         =   0   'False
            Text            =   " "
            Top             =   3390
            Width           =   3510
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "plcode"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   120
            Left            =   1500
            MaxLength       =   11
            TabIndex        =   359
            Top             =   3390
            Width           =   1455
         End
         Begin VB.Frame Frame23 
            Height          =   435
            Left            =   1500
            TabIndex        =   343
            Top             =   2580
            Width           =   5055
            Begin VB.OptionButton OptCommercialWt 
               Caption         =   "Commercial Wt."
               Height          =   210
               Left            =   3480
               TabIndex        =   382
               Top             =   150
               Width           =   1500
            End
            Begin VB.OptionButton optMILL 
               Caption         =   "Mill Net Wt."
               Height          =   240
               Left            =   120
               TabIndex        =   10
               Top             =   150
               Value           =   -1  'True
               Width           =   1215
            End
            Begin VB.OptionButton optSUPPLIER 
               Caption         =   "Supplier Net Wt."
               Height          =   210
               Left            =   1680
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
            TabIndex        =   334
            Top             =   5640
            Width           =   3420
            Begin VB.TextBox txtfields 
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
               TabIndex        =   337
               TabStop         =   0   'False
               Top             =   405
               Width           =   1215
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   336
               TabStop         =   0   'False
               Top             =   390
               Width           =   855
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   335
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
               TabIndex        =   340
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
               TabIndex        =   339
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
               TabIndex        =   338
               Top             =   165
               Width           =   690
            End
         End
         Begin VB.Frame Frame17 
            Caption         =   "Mill"
            ForeColor       =   &H000000FF&
            Height          =   765
            Left            =   960
            TabIndex        =   323
            Top             =   5670
            Width           =   6555
            Begin VB.TextBox txtfields 
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
               TabIndex        =   328
               TabStop         =   0   'False
               Top             =   405
               Width           =   1050
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   327
               TabStop         =   0   'False
               Top             =   405
               Width           =   945
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   326
               TabStop         =   0   'False
               Top             =   405
               Width           =   1095
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   325
               TabStop         =   0   'False
               Top             =   405
               Width           =   855
            End
            Begin VB.TextBox txtfields 
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
               TabIndex        =   324
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
               TabIndex        =   333
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
               TabIndex        =   332
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
               TabIndex        =   331
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
               TabIndex        =   330
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
               TabIndex        =   329
               Top             =   165
               Width           =   1065
            End
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   280
            Top             =   1920
            Width           =   1350
         End
         Begin VB.Frame Frame20 
            Height          =   435
            Left            =   8055
            TabIndex        =   279
            Top             =   2565
            Width           =   3375
            Begin VB.OptionButton Option2 
               Caption         =   "Common For All"
               Enabled         =   0   'False
               Height          =   210
               Left            =   1665
               TabIndex        =   13
               Top             =   180
               Width           =   1395
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Individual Items"
               Height          =   240
               Left            =   45
               TabIndex        =   12
               Top             =   150
               Value           =   -1  'True
               Width           =   1575
            End
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "inwardno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   108
            Left            =   4845
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   253
            TabStop         =   0   'False
            Top             =   480
            Width           =   1455
         End
         Begin VB.Frame Frame14 
            Caption         =   "Lot Details"
            Height          =   1815
            Left            =   15
            TabIndex        =   240
            Top             =   3765
            Width           =   11475
            Begin FPSpreadADO.fpSpread spdVar 
               Height          =   1635
               Left            =   0
               TabIndex        =   16
               Top             =   240
               Width           =   11415
               _Version        =   524288
               _ExtentX        =   20135
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
               SpreadDesigner  =   "RMILotbale.frx":00EC
               AppearanceStyle =   0
            End
         End
         Begin VB.TextBox txtfields 
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
            ItemData        =   "RMILotbale.frx":0540
            Left            =   1500
            List            =   "RMILotbale.frx":0550
            TabIndex        =   238
            Top             =   2265
            Visible         =   0   'False
            Width           =   3540
         End
         Begin VB.TextBox txtfields 
            BackColor       =   &H00FFFFFF&
            DataField       =   "weignment"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   27
            Left            =   1500
            TabIndex        =   237
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
            TabIndex        =   235
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
            Width           =   7365
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   233
            Top             =   7440
            Visible         =   0   'False
            Width           =   2085
         End
         Begin VB.TextBox txtfields 
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
            TabIndex        =   232
            TabStop         =   0   'False
            Top             =   7440
            Visible         =   0   'False
            Width           =   3765
         End
         Begin VB.TextBox Text10 
            Height          =   345
            Left            =   7200
            TabIndex        =   231
            Top             =   7440
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
            TabIndex        =   230
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
            TabIndex        =   229
            TabStop         =   0   'False
            Text            =   " "
            Top             =   870
            Width           =   6630
         End
         Begin VB.TextBox txtfields 
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
         Begin VB.TextBox txtfields 
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
         Begin VB.TextBox txtfields 
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
         Begin VB.TextBox txtfields 
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
            TabIndex        =   228
            TabStop         =   0   'False
            Text            =   " "
            Top             =   1920
            Width           =   3630
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "arrno"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   96
            Left            =   4845
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   227
            TabStop         =   0   'False
            Top             =   120
            Width           =   1440
         End
         Begin VB.TextBox Text2 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   2955
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   226
            TabStop         =   0   'False
            Text            =   " "
            Top             =   2265
            Width           =   3660
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            DataField       =   "Lotdt"
            ForeColor       =   &H00000000&
            Height          =   315
            Index           =   102
            Left            =   1515
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   225
            TabStop         =   0   'False
            Top             =   165
            Width           =   1455
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "PLOTDT"
            Height          =   315
            Index           =   0
            Left            =   8265
            TabIndex        =   236
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
            Left            =   8070
            TabIndex        =   239
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
            Left            =   8070
            TabIndex        =   254
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
         Begin VB.TextBox txtfields 
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   79
            Left            =   3000
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   234
            TabStop         =   0   'False
            Top             =   1230
            Visible         =   0   'False
            Width           =   6630
         End
         Begin VB.TextBox txtfields 
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
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DPDocDate"
            Height          =   315
            Index           =   6
            Left            =   10350
            TabIndex        =   383
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
         Begin VB.Label Label128 
            AutoSize        =   -1  'True
            Caption         =   "Plan Date"
            Height          =   195
            Left            =   9240
            TabIndex        =   386
            Top             =   600
            Width           =   705
         End
         Begin VB.Label Label127 
            AutoSize        =   -1  'True
            Caption         =   "Plan No."
            Height          =   195
            Left            =   9240
            TabIndex        =   385
            Top             =   195
            Width           =   615
         End
         Begin VB.Label Label124 
            AutoSize        =   -1  'True
            Caption         =   "Exchange Rate"
            Height          =   195
            Left            =   9000
            TabIndex        =   366
            Top             =   3450
            Width           =   1110
         End
         Begin VB.Label Label123 
            AutoSize        =   -1  'True
            Caption         =   "Billing Currency"
            Height          =   195
            Left            =   9000
            TabIndex        =   365
            Top             =   3090
            Width           =   1080
         End
         Begin VB.Label Label122 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Line No"
            Height          =   195
            Left            =   6645
            TabIndex        =   363
            Top             =   3435
            Width           =   555
         End
         Begin VB.Label Label121 
            AutoSize        =   -1  'True
            Caption         =   "Plant Name"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   120
            TabIndex        =   361
            Top             =   3435
            Width           =   825
         End
         Begin VB.Label Label117 
            Caption         =   "Favourable Weight"
            ForeColor       =   &H00FF0000&
            Height          =   345
            Left            =   90
            TabIndex        =   344
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
            TabIndex        =   341
            Top             =   6015
            Width           =   525
         End
         Begin VB.Label Label114 
            AutoSize        =   -1  'True
            Caption         =   "Rate / Unit"
            Height          =   195
            Left            =   7005
            TabIndex        =   281
            Top             =   2010
            Width           =   795
         End
         Begin VB.Label Label96 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Number"
            Height          =   195
            Left            =   3375
            TabIndex        =   258
            Top             =   225
            Width           =   1035
         End
         Begin VB.Label Label97 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Arrival Date"
            Height          =   195
            Left            =   6585
            TabIndex        =   257
            Top             =   210
            Width           =   825
         End
         Begin VB.Label Label115 
            AutoSize        =   -1  'True
            Caption         =   "Material Inward No."
            Height          =   195
            Left            =   3345
            TabIndex        =   256
            Top             =   525
            Width           =   1380
         End
         Begin VB.Label Label113 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Material Inward Date"
            Height          =   195
            Left            =   6555
            TabIndex        =   255
            Top             =   525
            Width           =   1470
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Remarks"
            Height          =   195
            Left            =   105
            TabIndex        =   252
            Top             =   3060
            Width           =   630
         End
         Begin VB.Label Label12 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Weigh Date"
            Height          =   195
            Left            =   6990
            TabIndex        =   251
            Top             =   2370
            Width           =   855
         End
         Begin VB.Label Label38 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   240
            TabIndex        =   250
            Top             =   7560
            Width           =   360
         End
         Begin VB.Label Label57 
            AutoSize        =   -1  'True
            Caption         =   "Weighment by"
            Height          =   195
            Left            =   105
            TabIndex        =   249
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
            TabIndex        =   248
            Top             =   915
            Width           =   570
         End
         Begin VB.Label Label61 
            AutoSize        =   -1  'True
            Caption         =   "Area"
            Height          =   195
            Left            =   120
            TabIndex        =   247
            Top             =   1650
            Width           =   330
         End
         Begin VB.Label Label76 
            Caption         =   "Label76"
            Height          =   15
            Left            =   840
            TabIndex        =   245
            Top             =   1845
            Width           =   255
         End
         Begin VB.Label Label77 
            AutoSize        =   -1  'True
            Caption         =   "Agent"
            Height          =   195
            Left            =   120
            TabIndex        =   244
            Top             =   1290
            Width           =   900
         End
         Begin VB.Label Label40 
            AutoSize        =   -1  'True
            Caption         =   "Godown"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   105
            TabIndex        =   243
            Top             =   1995
            Width           =   600
         End
         Begin VB.Line Line1 
            X1              =   30
            X2              =   11520
            Y1              =   825
            Y2              =   825
         End
         Begin VB.Line Line4 
            X1              =   30
            X2              =   12000
            Y1              =   3750
            Y2              =   3750
         End
         Begin VB.Label Label98 
            AutoSize        =   -1  'True
            Caption         =   "Tax Choice"
            ForeColor       =   &H00FF0000&
            Height          =   180
            Left            =   7080
            TabIndex        =   242
            Top             =   2730
            Width           =   810
         End
         Begin VB.Label Label108 
            AutoSize        =   -1  'True
            Caption         =   "Lot Date"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   135
            TabIndex        =   241
            Top             =   180
            Width           =   615
         End
         Begin VB.Label Label13 
            Caption         =   "Variety"
            Height          =   255
            Left            =   240
            TabIndex        =   246
            Top             =   1320
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
         TabIndex        =   97
         Top             =   5415
         Visible         =   0   'False
         Width           =   540
      End
   End
   Begin VB.Frame Frame19 
      Height          =   525
      Left            =   4410
      TabIndex        =   274
      Top             =   510
      Visible         =   0   'False
      Width           =   6075
      Begin VB.OptionButton Option6 
         Caption         =   "Yes"
         Height          =   255
         Left            =   2220
         TabIndex        =   277
         Top             =   150
         Width           =   1260
      End
      Begin VB.OptionButton Option3 
         Caption         =   "No"
         Height          =   225
         Left            =   3510
         TabIndex        =   276
         Top             =   180
         Value           =   -1  'True
         Width           =   1080
      End
      Begin VB.CommandButton Command8 
         Caption         =   "&OK"
         Height          =   345
         Left            =   4635
         TabIndex        =   275
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
         TabIndex        =   278
         Top             =   180
         Width           =   1425
      End
   End
   Begin VB.Frame Frame15 
      Height          =   495
      Left            =   0
      TabIndex        =   219
      Top             =   -2940
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command7 
         Caption         =   "&Ok"
         Height          =   315
         Left            =   4020
         TabIndex        =   259
         Top             =   135
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   225
         Left            =   2925
         TabIndex        =   221
         Top             =   195
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   255
         Left            =   1740
         TabIndex        =   220
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
         TabIndex        =   222
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
      TabIndex        =   120
      Top             =   3495
      Visible         =   0   'False
      Width           =   5535
      Begin VB.TextBox txtfields 
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
         TabIndex        =   138
         Top             =   2760
         Visible         =   0   'False
         Width           =   2055
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
         TabIndex        =   136
         Top             =   2400
         Width           =   465
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
         TabIndex        =   135
         Top             =   2400
         Width           =   780
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   130
         Top             =   1440
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   129
         Top             =   600
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   128
         Top             =   1680
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   127
         Top             =   1440
         Visible         =   0   'False
         Width           =   1140
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   125
         Top             =   720
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   124
         Top             =   720
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   122
         Top             =   360
         Visible         =   0   'False
         Width           =   480
      End
      Begin VB.TextBox txtfields 
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
         TabIndex        =   121
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
         TabIndex        =   139
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
         TabIndex        =   137
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
         TabIndex        =   134
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
         TabIndex        =   133
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
         TabIndex        =   132
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
         TabIndex        =   131
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
         TabIndex        =   126
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
         TabIndex        =   123
         Top             =   360
         Visible         =   0   'False
         Width           =   705
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -135
      TabIndex        =   98
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   7600
         Picture         =   "RMILotbale.frx":0577
         Style           =   1  'Graphical
         TabIndex        =   381
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":20B9
         Height          =   510
         Index           =   0
         Left            =   165
         Picture         =   "RMILotbale.frx":23C3
         Style           =   1  'Graphical
         TabIndex        =   348
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
         Picture         =   "RMILotbale.frx":2756
         Style           =   1  'Graphical
         TabIndex        =   345
         ToolTipText     =   "Cotton Arrival Report"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":2B98
         Height          =   510
         Index           =   5
         Left            =   2285
         Picture         =   "RMILotbale.frx":2FE2
         Style           =   1  'Graphical
         TabIndex        =   223
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   6015
         Picture         =   "RMILotbale.frx":3347
         Style           =   1  'Graphical
         TabIndex        =   218
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
         Picture         =   "RMILotbale.frx":3789
         Style           =   1  'Graphical
         TabIndex        =   80
         ToolTipText     =   "Lot Bale Report Print (Ctrl P)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":3BCB
         Height          =   510
         Index           =   8
         Left            =   3875
         Picture         =   "RMILotbale.frx":4015
         Style           =   1  'Graphical
         TabIndex        =   76
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":4377
         Height          =   510
         Index           =   10
         Left            =   4950
         Picture         =   "RMILotbale.frx":4681
         Style           =   1  'Graphical
         TabIndex        =   78
         ToolTipText     =   "Cancel (Ctrl Backspace) "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":49FD
         Height          =   510
         Index           =   9
         Left            =   4410
         Picture         =   "RMILotbale.frx":4D07
         Style           =   1  'Graphical
         TabIndex        =   77
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":50A9
         Height          =   510
         Index           =   11
         Left            =   7065
         Picture         =   "RMILotbale.frx":54F3
         Style           =   1  'Graphical
         TabIndex        =   79
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":5888
         Height          =   510
         Index           =   7
         Left            =   3345
         Picture         =   "RMILotbale.frx":5CD2
         Style           =   1  'Graphical
         TabIndex        =   74
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":6022
         Height          =   510
         Index           =   1
         Left            =   695
         Picture         =   "RMILotbale.frx":632C
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":66A6
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
         Picture         =   "RMILotbale.frx":69B0
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":6D4C
         Height          =   510
         Index           =   6
         Left            =   2815
         Picture         =   "RMILotbale.frx":7196
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotbale.frx":74E3
         Height          =   510
         Index           =   4
         Left            =   1755
         Picture         =   "RMILotbale.frx":77ED
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
         Left            =   8460
         TabIndex        =   104
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
         Left            =   10380
         TabIndex        =   103
         Top             =   240
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   101
      Top             =   12195
      Width           =   22920
      _ExtentX        =   40428
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
            TextSave        =   "28/04/2026"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "12:56 PM"
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
      TabIndex        =   92
      Top             =   2670
      Visible         =   0   'False
      Width           =   8505
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3330
         Left            =   150
         TabIndex        =   95
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
         TabIndex        =   94
         Top             =   4185
         Width           =   1140
      End
      Begin VB.CommandButton Command1 
         Caption         =   "&OK"
         Height          =   375
         Left            =   2850
         TabIndex        =   93
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
         TabIndex        =   100
         Top             =   120
         Width           =   8400
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5535
      Left            =   480
      TabIndex        =   89
      Top             =   2370
      Visible         =   0   'False
      Width           =   9105
      Begin VB.Frame Frame10 
         Height          =   735
         Left            =   180
         TabIndex        =   118
         Top             =   4770
         Width           =   8655
         Begin VB.CommandButton Command5 
            Caption         =   "&Cancel"
            DownPicture     =   "RMILotbale.frx":7B82
            Height          =   375
            Left            =   5280
            Picture         =   "RMILotbale.frx":7F64
            Style           =   1  'Graphical
            TabIndex        =   117
            Top             =   240
            Width           =   1185
         End
         Begin VB.CommandButton Command6 
            Caption         =   "&OK"
            DownPicture     =   "RMILotbale.frx":8337
            Height          =   375
            Left            =   1440
            Picture         =   "RMILotbale.frx":871D
            Style           =   1  'Graphical
            TabIndex        =   119
            Top             =   240
            Width           =   1185
         End
      End
      Begin KSLLISTOCX.KslList KslList1a 
         Height          =   1230
         Left            =   510
         TabIndex        =   102
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
         TabIndex        =   99
         Top             =   120
         Visible         =   0   'False
         Width           =   8475
      End
   End
   Begin VB.Frame Frame6 
      Height          =   2430
      Left            =   2490
      TabIndex        =   105
      Top             =   2760
      Visible         =   0   'False
      Width           =   7620
      Begin VB.CommandButton Command4 
         Caption         =   "&OK"
         DownPicture     =   "RMILotbale.frx":8AE3
         Height          =   615
         Left            =   2580
         Picture         =   "RMILotbale.frx":8EC9
         Style           =   1  'Graphical
         TabIndex        =   107
         Top             =   1680
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMILotbale.frx":928F
         Height          =   615
         Left            =   4020
         Picture         =   "RMILotbale.frx":9671
         Style           =   1  'Graphical
         TabIndex        =   108
         Top             =   1710
         Width           =   975
      End
      Begin VB.TextBox txtqry 
         BackColor       =   &H80000009&
         Height          =   345
         Left            =   3450
         MaxLength       =   6
         TabIndex        =   106
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
         TabIndex        =   110
         Top             =   120
         Width           =   7620
      End
      Begin VB.Label Label27 
         AutoSize        =   -1  'True
         Caption         =   "Lot  No."
         ForeColor       =   &H80000002&
         Height          =   195
         Left            =   2610
         TabIndex        =   109
         Top             =   1005
         Width           =   570
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   5070
      Left            =   7560
      TabIndex        =   403
      Top             =   840
      Visible         =   0   'False
      Width           =   4350
      _extentx        =   7673
      _extenty        =   8943
   End
   Begin VB.PictureBox FrameDiscType 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6555
      Left            =   3960
      ScaleHeight     =   6525
      ScaleWidth      =   8610
      TabIndex        =   392
      ToolTipText     =   "Select an item from list"
      Top             =   1560
      Visible         =   0   'False
      Width           =   8640
      Begin VB.CheckBox Check2 
         BackColor       =   &H00C0C0C0&
         Caption         =   "All"
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
         Left            =   180
         TabIndex        =   395
         Top             =   600
         Visible         =   0   'False
         Width           =   525
      End
      Begin VB.CommandButton Cmd_DiscountOK 
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
         Left            =   3420
         Style           =   1  'Graphical
         TabIndex        =   394
         Top             =   6000
         Width           =   1035
      End
      Begin VB.CommandButton Command15 
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
         Left            =   4620
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   393
         Top             =   6000
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin FPSpreadADO.fpSpread SPDDiscTypeDet 
         Height          =   5445
         Left            =   0
         TabIndex        =   396
         Top             =   480
         Width           =   8550
         _Version        =   524288
         _ExtentX        =   15081
         _ExtentY        =   9604
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
         SpreadDesigner  =   "RMILotbale.frx":9A44
         VScrollSpecial  =   -1  'True
         Appearance      =   2
      End
      Begin VB.Label Label58 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Discount Details"
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
         Index           =   1
         Left            =   0
         TabIndex        =   397
         Top             =   50
         Width           =   8505
      End
   End
   Begin VB.Frame FraMain 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   6810
      Left            =   5520
      TabIndex        =   369
      Top             =   1920
      Visible         =   0   'False
      Width           =   8100
      Begin VB.TextBox txt_filename 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "0.00"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   1
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
         Left            =   120
         Locked          =   -1  'True
         TabIndex        =   379
         Top             =   600
         Width           =   3795
      End
      Begin VB.CommandButton Command13 
         Caption         =   "Upload"
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
         Left            =   3960
         TabIndex        =   375
         Top             =   600
         Width           =   1335
      End
      Begin VB.CommandButton Command12 
         Caption         =   "View Log File"
         Height          =   375
         Left            =   375
         TabIndex        =   374
         Top             =   7725
         Visible         =   0   'False
         Width           =   1155
      End
      Begin VB.TextBox Text18 
         Height          =   285
         Left            =   10605
         TabIndex        =   373
         Top             =   7380
         Visible         =   0   'False
         Width           =   855
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
         TabIndex        =   372
         Top             =   720
         Visible         =   0   'False
         Width           =   1335
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
         Height          =   390
         Left            =   6700
         TabIndex        =   371
         Top             =   600
         Width           =   1335
      End
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
         Left            =   5320
         TabIndex        =   370
         Top             =   600
         Width           =   1335
      End
      Begin FPSpreadADO.fpSpread spdView 
         Height          =   5415
         Left            =   120
         TabIndex        =   378
         Top             =   960
         Width           =   7905
         _Version        =   524288
         _ExtentX        =   13944
         _ExtentY        =   9551
         _StockProps     =   64
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
         SpreadDesigner  =   "RMILotbale.frx":9EC1
      End
      Begin MSComDlg.CommonDialog CommonDialog1 
         Left            =   11160
         Top             =   600
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
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
         Index           =   2
         Left            =   0
         TabIndex        =   377
         Top             =   120
         Width           =   8070
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
         Left            =   840
         TabIndex        =   376
         Top             =   6480
         Width           =   6735
      End
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
      TabIndex        =   116
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
      TabIndex        =   115
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
      TabIndex        =   88
      Top             =   600
      Width           =   2085
   End
End
Attribute VB_Name = "Frmlotbale"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim rstQry As Recordset
Dim rsVar As Recordset
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Dim oldarrno, TOTROWCNT As Integer
Dim FDisc_ROFF As Integer
Dim oldarrdt As Date
Dim GG As Double
Dim GT As Double
Dim QTY As Integer
Dim oldgrs As Double
Dim oldtare As Double
Dim dSuppNetWt As Double
Dim dCommNetWt As Double
Dim dLandedCost As Double
Dim pinvvalue As Double
Dim TotalnWt As Double
Dim dInvWgt As Double
Dim iFlag As Integer
Dim lotno As Double
Dim IGSTFLG As String
Dim STATEFLAG, SuppType As String
Dim a As Double
Dim B As Double
Dim c As Double
Dim d As Double
Dim W As Double
Dim f As String
Dim g As Double
Dim Totincident As Double
Dim totspotexpense As Double
Dim AVatamt As Double
Dim bales, bales1 As Double
Dim pbales, pbales1 As Double
Dim tcsamt As Integer
Dim t As Double
Dim lot As New Recordset
Dim FLG As String
Dim Flag As String
Dim wflg As String
Dim Arrdespatch_Flg As String
Dim MasterEntryFlg As String
Dim CandyRateRoff As Integer
Dim VatFlag As Boolean

Dim LANDCOST_ROFF As Integer
Dim ASSVAL_ROFF As Integer
Dim BED_ROFF As Integer
Dim AED_ROFF As Integer
Dim EDCESS_ROFF As Integer
Dim HSCESS_ROFF As Integer
Dim CESS_ROFF As Integer
Dim TAX_ROFF As Integer
Dim ADDTAX_ROFF As Integer
Dim ATCS_ROFF As Integer
Dim SURCHARGE_ROFF As Integer
Dim CGST_ROFF As Integer
Dim SGST_ROFF As Integer
Dim IGST_ROFF As Integer

Dim globaldivision As String
Const ILotNo          As Integer = 1
Const ILotdt          As Integer = 2
Const IVarcode        As Integer = 3
Const IVarName        As Integer = 4
Const Iunit           As Integer = 5
Const Icandyrate      As Integer = 6
Const IDiscRate       As Integer = 7
Const INetRate        As Integer = 8
Const IRebate         As Integer = 9
Const iQty            As Integer = 10
Const Imgrosswt       As Integer = 11
Const Imtarewt        As Integer = 12
Const ImTrashwt       As Integer = 13
Const Immoiturewt     As Integer = 14
Const Imnetwt         As Integer = 15
Const Ipgrosswt       As Integer = 16
Const Iptarewt        As Integer = 17
Const Ipnetwt         As Integer = 18
Const ICommWTAmt      As Integer = 19
Const Ipinvval        As Integer = 20
Const Iwbwt           As Integer = 21
Const Ipjamt          As Integer = 22
Const Icashdisper     As Integer = 23
Const Icashdisamt     As Integer = 24
Const Itradedisper    As Integer = 25
Const Itradedisamt    As Integer = 26
Const IFrtper         As Integer = 27
Const IFrtamt         As Integer = 28
Const IBedper         As Integer = 29
Const IBedamt         As Integer = 30
Const IEdper          As Integer = 31
Const IEdamt          As Integer = 32
Const IHscessper      As Integer = 33
Const IHscessamt      As Integer = 34
Const Icessper        As Integer = 35
Const Icessamt        As Integer = 36
Const ITaxCode        As Integer = 37
Const ITaxper         As Integer = 38
Const ITaxamt         As Integer = 39
Const IHSN            As Integer = 40
Const ICGSTPER        As Integer = 41
Const ICGSTAMT        As Integer = 42
Const ISGSTPER        As Integer = 43
Const ISGSTAMT        As Integer = 44
Const IIGSTPER        As Integer = 45
Const IIGSTAMT        As Integer = 46

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
Dim IRateKG         As Integer
Dim ISICAAmt        As Integer
Dim iTrashPer       As Integer
Dim IMoisPer        As Integer
Dim IContNum        As Integer
Dim IContdate       As Integer
Dim IDiscAmt        As Integer
Dim itcsper        As Integer
Dim itcsamt        As Integer
Dim Ishipchrg       As Integer
Dim ITCS_AssValue        As Integer

Dim IIncidentCharge As Double
Dim ISpotExpense As Double
Dim ISupplierAssvalue As Double
  Dim deltype As String
  Dim rssmodlot As Recordset
  Dim fileno As Integer
  Dim pg, lcnt As Integer
  Dim rptv As New Report.ReportView
Private Enum SpdDiscType
    SPDDTSNO = 1
    SPDDTContno
    SPDDTContdt
    SPDDTDocno
    SPDDTDOCDT
    SPDDTVARSNO
    SPDDTVarcode
    SPDDTDISCCODE
    SPDDTDISCDESC
    SPDDTDRate
    SPDDTDValue
End Enum
  
  
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Lot Bale Entry"
End Sub


Private Sub BUTTON_Click(Index As Integer)

On Error Resume Next

iFlag = 0
intervalMinutes = -1
Select Case Index
Case 13
    Call ReportLoad

Case 14
        Call COTTONARRIVALREPORT_Bannari
    
Case 0
    If ToValidFinYear(Divcode) = False Then Exit Sub
     txtfields(125).Text = ""
    MaskEdBox1(6).Text = "__/__/____"
    Call AddRecord

Case 1, 2, 4
Call DELMODLOOKUP(Index)
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
    txtfields(30).Locked = True
    Text1(1).Locked = True
    txtfields(2).Locked = True
    txtfields(79).Locked = True
    txtfields(37).Locked = True
    Text12.Locked = True
    Call delmodok_Click
    StatusBar1.Panels(2).Text = "Select Any Row for Deletion"

Case 3

frm_BarcodePrintSel.Show

Case 5
     'first
     desc.Caption = "Query"
     StatusBar1.Panels(2).Text = "First Record"

     On Error Resume Next
     adoPrimaryRS.MoveFirst
     Call bindcontls
     Call disablcontls
     Call gridalign
     Call navi(BUTTON)
     Call FIR(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "First Record"
     Beep
     Exit Sub
GoFirstError:

    MsgBox Err.Description, vbInformation, head

Case 6
 
desc.Caption = "Query"

     On Error Resume Next
     iFlag = 0

     adoPrimaryRS.MoveNext
     If adoPrimaryRS.EOF Then
        Beep
        adoPrimaryRS.MovePrevious
        BUTTON(6).Enabled = False
        BUTTON(8).Enabled = False
        Exit Sub
     End If
     Call bindcontls
     Call disablcontls
     Call gridalign
     Call navi(BUTTON)

     BUTTON(4).Enabled = True
     BUTTON(5).Enabled = True
     BUTTON(7).Enabled = True
     BUTTON(8).Enabled = True

     Exit Sub

Case 7
    'Previous
 
     desc.Caption = "Query"

     On Error Resume Next
     iFlag = 0
     adoPrimaryRS.MovePrevious
     If adoPrimaryRS.BOF Then
        Beep
        adoPrimaryRS.MoveNext
        BUTTON(7).Enabled = False
        BUTTON(5).Enabled = False
        Exit Sub
     End If
     
     Call bindcontls
     Call disablcontls
     Call gridalign
     Call navi(BUTTON)

     BUTTON(4).Enabled = True
     BUTTON(5).Enabled = True
     BUTTON(6).Enabled = True
     BUTTON(8).Enabled = True
     Exit Sub

GoPrevError:


   MsgBox Err.Description, vbInformation, head

Case 8
     'last
     desc.Caption = "Query"
 
     On Error Resume Next
    iFlag = 0
     StatusBar1.Panels(2).Text = "Last Record"
     adoPrimaryRS.MoveLast
     Call bindcontls
     Call disablcontls
     Call gridalign
    'calling las procedure from module
     Call navi(BUTTON)
     Call las(BUTTON)
     BUTTON(4).Enabled = True
     StatusBar1.Panels(2).Text = "Last Record"
    Beep
     Exit Sub

Case 9
'     Save
If optSUPPLIER = True Then
    wflg = "S"
ElseIf OptCommercialWt = True Then
    wflg = "C"
Else
    wflg = "M"
End If

If Opt = "add" Or Opt = "mod" Then
    If txtfields(3).Text = "" Then
        SSTab1.Tab = 1
        MsgBox "Bill No. should not be empty", vbOKCancel, head
        txtfields(3).SetFocus
        Exit Sub
    End If
    If MaskEdBox1(2).Text = "" Or MaskEdBox1(2).Text = "__/__/____" Then
        SSTab1.Tab = 1
        MsgBox "Bill date should not be empty", vbOKCancel, head
        Exit Sub
    End If
    If Trim(txtfields(83).Text) <> "" Then
        Set rsc = New Recordset
        rsc.Open "Select TAX_CODE ""Tax Code"",Description  from ig_tax where isnull(taxstatus,'')='Y' and TAX_CODE='" & Trim(txtfields(83).Text) & "' ", DB, adOpenStatic
        If rsc.EOF Then
            MsgBox "The selected GST ID is not an active code. Please check and select an active GST ID", vbInformation
            rsc.Close
            Screen.MousePointer = 0
            Exit Sub
        End If
        rsc.Close
    End If
    

    TOTVAL = val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)
    
    If (val(TOTVAL) > val(txtfields(6).Text)) And val(txtfields(6).Text) > 0 Then
        MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
        txtfields(85).Text = ""
        txtfields(85).SetFocus
        Screen.MousePointer = 0
        Exit Sub
    End If
    Dim favWgt As Double

      Dim f As Integer
       For f = 1 To spdVar.MaxRows
       favWgt = 0: CommmWgt = 0
               ADOSECONDARYRS.MoveFirst
                Do While Not ADOSECONDARYRS.EOF
                 If (Trim((grddatagrid.Columns(17).Text)) = Trim(GetText(spdVar, IVarcode, f)) And val(grddatagrid.Columns("lotno")) = Trim(GetText(spdVar, ILotNo, f))) Or (Trim(grddatagrid.Columns(16).Text) = Trim(GetText(spdVar, IVarcode, f)) And val(grddatagrid.Columns("lotno")) = Trim(GetText(spdVar, ILotNo, f))) Then
                        If optMILL = True Then
                            favWgt = favWgt + val(grddatagrid.Columns(7).Text)
                        ElseIf OptCommercialWt = True Then
                            favWgt = favWgt + val(ADOSECONDARYRS("Comm_Wt") & "")
                        Else
                          If Opt = "add" Then
                           favWgt = favWgt + val(grddatagrid.Columns(14).Text)
                           ElseIf Opt = "mod" Then
                           favWgt = favWgt + val(grddatagrid.Columns(12).Text)
                           End If
                        End If
                        CommmWgt = CommmWgt + val(ADOSECONDARYRS("Comm_Wt") & "")
                    End If
                ADOSECONDARYRS.MoveNext
                Loop
       
            If OptCommercialWt = True Then
             If val(GetText(spdVar, ICommWTAmt, f)) = 0 Then
                 MsgBox "Please Enter Commercial Weight in detail Grid!!!", vbInformation, head
                 Exit Sub
             End If
            End If
       
            If Round(CommmWgt, 3) <> val(GetText(spdVar, ICommWTAmt, f)) Then
                    MsgBox "Commercial Weight Not matched With Balewise Commercial Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
            End If
            If optMILL = True Then
                 If Round(favWgt, 3) <> val(GetText(spdVar, Imnetwt, f)) Then
                    MsgBox "Favaourable Weight Not matched With Bale Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
            ElseIf OptCommercialWt = True Then
                 If Round(favWgt, 3) <> val(GetText(spdVar, ICommWTAmt, f)) Then
                    MsgBox "Favaourable Weight Not matched With Bale Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
            Else
                If Round(favWgt, 3) <> val(GetText(spdVar, Ipnetwt, f)) Then
                    MsgBox "Favaourable Weight Not matched With Bale Weight ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
            End If
             If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                 If val(GetText(spdVar, ICommWTAmt, f)) = 0 Then
                    MsgBox "Commericial Weight cannot be empty ", vbInformation, head
                    Screen.MousePointer = 0
                    Exit Sub
                 End If
             
             End If
            
       Next


    ADOSECONDARYRS.MoveFirst
    Mtrashwt = 0
    Do While Not ADOSECONDARYRS.EOF
        MGrwt = MGrwt + ADOSECONDARYRS("grwt")
        MTareWt = MTareWt + ADOSECONDARYRS("TareWt")
        Mtrashwt = Mtrashwt + ADOSECONDARYRS("trash_et")
        MMoiswt = MMoiswt + ADOSECONDARYRS("moisture_et")
        mnetwt = mnetwt + val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        
        If Opt = "add" Then
            pGRwt = pGRwt + ADOSECONDARYRS("pgrswt")
            PTrWt = PTrWt + ADOSECONDARYRS("ptarewt")
            PNTWT = PNTWT + val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
            grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
        ElseIf Opt = "mod" Then
            pGRwt = pGRwt + ADOSECONDARYRS("pgrswt")
            PTrWt = PTrWt + ADOSECONDARYRS("ptarewt")
            PNTWT = PNTWT + val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
            grddatagrid.Columns(12).Text = val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
        End If
       
        ADOSECONDARYRS.MoveNext
    Loop
    Text5 = Format(MGrwt, "0.000")
    Text6 = Format(MTareWt, "0.000")
    Text7 = Format(MMoiswt, "0.000")
    Text16 = Format(Mtrashwt, "0.000")
    
    Text21 = Format(mnetwt, "0.000")
    
    Text15 = Format(pGRwt, "0.000")
    Text14 = Format(PTrWt, "0.000")
    Text13 = Format(PNTWT, "0.000")
    ADOSECONDARYRS.MoveFirst
End If

If Opt = "add" Then
    If Trim(txtfields(30).Text) = "" Then
        MsgBox ("Please Enter Supplier code first"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(30).Text = ""
        txtfields(30).SetFocus
        Exit Sub
    End If
    
    If Trim(txtfields(77).Text) = "" Then
        MsgBox ("Please Enter Godown"), vbCritical, head
        SSTab1.Tab = 0
        txtfields(77).Text = ""
        txtfields(77).SetFocus
        Exit Sub
    End If


    If Trim(txtfields(6).Text) = "" Then
        MsgBox "Please Enter Weight", vbInformation, head
        If SSTab1.Tab = 2 Then
        SSTab1.Tab = 1
        txtfields(6).Locked = False
        txtfields(6).SetFocus
        Else
        txtfields(6).Locked = False
        txtfields(6).SetFocus
        End If
        Exit Sub
    End If
        
    If Text5.Text = "" Then
        Text5.Text = 0
    End If
    If Text6.Text = "" Then
        Text6.Text = 0
    End If
    If val(txtfields(99).Text) <> val(Text5.Text) Then
        MsgBox "Lotwise Mill Gross Weight does not tally with Bale Mill Gross Weight." & vbCrLf & " Sum of Mill Gross Weight Must Equal To " & Format(val(txtfields(99).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(98).Text) <> val(Text6.Text) Then
        MsgBox "Lotwise Mill Tare Weight does not tally with Bale Mill Tare Weight." & vbCrLf & " Sum of Mill Tare Weight Must Equal To " & Format(val(txtfields(98).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(104).Text) <> val(Text14.Text) Then
        MsgBox "Lotwise Supplier Tare Weight does not tally with Bale Supplier Tare Weight." & vbCrLf & " Sum of Supplier Tare Weight Must Equal To " & Format(val(txtfields(104).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(105).Text) <> val(Text15.Text) Then
        MsgBox "Lotwise Supplier Gross Weight does not tally with Bale Supplier Gross Weight." & vbCrLf & " Sum of Supplier Gross Weight Must Equal To " & Format(val(txtfields(105).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If txtfields(106).Text = "" Then
        MsgBox "Please Enter VAT Category", vbInformation, head
        txtfields(106).SetFocus
       ' Exit Sub
    End If
    If val(txtfields(115).Text) = 0 Then
        MsgBox "Please Enter Supplier Invoice Value", vbInformation, head
        txtfields(115).SetFocus
        Exit Sub
    End If
End If
 If Opt = "add" Then
        PartyWeight = 0
        PartyWeight = val(GetText(spdVar, Ipgrosswt, 1))

       On Error GoTo errn
       Set rsslot = New Recordset
       rsslot.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,trash_et,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,TAX_CHOICE,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dUTYcLAIMABLE,DISCOUNTFLG," & _
                    " isnull(DutyPer,0) as DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,FAVAOURABLEWGT,LotRecType,SICAAmt,Trash_Et,HSN,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,Line_No,PlCode,Gdivcode,Comm_Wt,BillCurrency,ExchangeRate,ComWt_Flg,DPDocno,DPDocDate,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt,Net_Rate,Tcs_per,Tcs_Amt ,TCS_AssAmt,TCS_CalcAssAmtFlag,lot_spotexpense,lot_incidentcharge,TypeTruckbale,suppassvalue  FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
      
       For f = 1 To spdVar.MaxRows
            rsslot.AddNew
            rsslot("Divcode") = Divcode
            rsslot("rg23a") = Null
            rsslot("arrno") = txtfields(96).Text
            rsslot("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")

            If txtfields(108).Text <> "" Then
                rsslot("inwardno") = Trim(txtfields(108).Text)
            End If
            If MaskEdBox1(5).Text <> "__/__/____" And MaskEdBox1(5).Text <> "" Then
                rsslot("inwarddate") = Format(MaskEdBox1(5).Text, "yyyy-mm-dd")
            End If
            rsslot("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            rsslot("LOTYEAR") = Year(yfdate)
            rsslot("REJFLG") = "N"
            rsslot("vcatcd") = txtfields(106).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 rsslot("billdt") = Null
            Else
                 rsslot("billdt") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            rsslot("bblflg") = GetText(spdVar, Iunit, f)
            rsslot("lotno") = GetText(spdVar, ILotNo, f)
            rsslot("rateunit") = Trim(txtfields(110).Text)
            rsslot("tcs_per") = val(GetText(spdVar, itcsper, f))
            rsslot("tcs_Amt") = val(GetText(spdVar, itcsamt, f))
            If optDCyes = True Then rsslot!dutyclaimable = "Y" Else rsslot!dutyclaimable = "N"
            If optAfter = True Then rsslot!discountFlg = "Y" Else rsslot!discountFlg = "N"
            
            Set rsz1 = New Recordset
            rsz1.Open "select isnull(plotno,'')plotno from rm_arrival where varcode='" & GetText(spdVar, IVarcode, f) & "' and ratecy=" & val(GetText(spdVar, Icandyrate, f)) & " and quantity=" & val(GetText(spdVar, iQty, f)) & " and netwt=" & val(GetText(spdVar, Imnetwt, f)) & " and arrno=" & val(txtfields(96).Text) & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            
            If rsz1.RecordCount > 0 Then
                PlotNo = rsz1(0)
            Else
                PlotNo = ""
            End If
            rsslot("plcode") = txtfields(120).Text
            rsslot("line_no") = txtfields(121).Text
            rsslot("Gdivcode") = globaldivision
          
            rsslot("plotno") = PlotNo
            rsslot("LOTTYPE") = "A"
            rsslot("LOTRECTYPE") = "O"
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            
            rsslot("CATCD") = rscc("CATCD")
            
            rsslot("PTYWGT") = val(GetText(spdVar, Imnetwt, f))
            rsslot("pgrswt") = val(GetText(spdVar, Ipgrosswt, f))
            rsslot("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            rsslot("pnetwt") = val(GetText(spdVar, Ipnetwt, f))
            rsslot("pinvval") = val(GetText(spdVar, Ipinvval, f))
            rsslot("weighbridgewt") = val(GetText(spdVar, Iwbwt, f))
            rsslot("supcd") = txtfields(30).Text
            rsslot("brkcd") = txtfields(37).Text
            rsslot("COLORCODE") = txtfields(40).Text
            rsslot("bales") = val(GetText(spdVar, iQty, f))
            rsslot("grswgt") = val(GetText(spdVar, Imgrosswt, f))
            rsslot("tarewt") = val(GetText(spdVar, Imtarewt, f))
            rsslot("trash_et") = val(GetText(spdVar, iTrashPer, f))
            rsslot("MOISTURE_ET") = val(GetText(spdVar, Immoiturewt, f))
            rsslot("netwt") = val(GetText(spdVar, Imnetwt, f))
            rsslot("billno") = txtfields(3).Text
            rsslot("sampwt") = IIf(txtfields(4).Text = "", 0, txtfields(4).Text)
            rsslot("pjamt") = val(GetText(spdVar, Ipjamt, f))
            rsslot("odint") = IIf(txtfields(9).Text = "", 0, txtfields(9).Text)
            rsslot("godown") = IIf(txtfields(77).Text = "", "", txtfields(77).Text)
            rsslot("opflg") = "N"
            rsslot("awt_flg") = "Y"
            
            rsslot("ldgulg") = IIf(txtfields(12).Text = "", 0, txtfields(12).Text)
            rsslot("varcode") = GetText(spdVar, IVarcode, f)
            rsslot("areacd") = CStr(txtfields(38).Text)
            rsslot("ratecy") = val(GetText(spdVar, Icandyrate, f))

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
            Set Rs = New Recordset
            Rs.Open "select AddtaxRequired from rm_param", DB, adOpenStatic
            If Rs(0) = "Y" Then
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
            rsslot("totlandcost") = (val(GetText(spdVar, ILandedcost, f)))
            rsslot("ratekg") = val(GetText(spdVar, IRateKG, f))
            rsslot("shipchrg") = (val(GetText(spdVar, Ishipchrg, f)))
            rsslot("totlandcost") = (val(GetText(spdVar, ILandedcost, f)))
            rsslot("ratekg") = val(GetText(spdVar, IRateKG, f))
            rsslot("SICAAmt") = val(GetText(spdVar, ISICAAmt, f))
            
                ''''''GST''''''SASI 16.6.17
            rsslot("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            rsslot("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            rsslot("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            rsslot("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            rsslot("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            rsslot("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            rsslot("HSN") = Trim(GetText(spdVar, IHSN, f))
            rsslot("TCS_AssAmt") = val(GetText(spdVar, ITCS_AssValue, f))
            rsslot("TCS_CalcAssAmtFlag") = Chk_TCSAssValFlg.value

            If val(txtfields(300).Text) = 0 Then
                rsslot("PJTC") = Null
            Else
                rsslot("PJTC") = val(txtfields(300).Text)
            End If
            If Trim(txtfields(302).Text) = "" Then
                rsslot("ptype") = Null
            Else
                rsslot("ptype") = txtfields(302).Text
            End If
            If Option1.value = True Then
                rsslot("TAX_CHOICE") = "SINGLE"
            End If
            If Option2.value = True Then
                rsslot("TAX_CHOICE") = "COMMON"
            End If
            
            If optMILL = True Then
                 rsslot("FAVAOURABLEWGT") = val(GetText(spdVar, Imnetwt, f))
            ElseIf OptCommercialWt = True Then
                 rsslot("FAVAOURABLEWGT") = val(GetText(spdVar, ICommWTAmt, f))
            Else
                 rsslot("FAVAOURABLEWGT") = val(GetText(spdVar, Ipnetwt, f))
            End If
            
         
            rsslot("ComWt_Flg") = Check1.value
          
            rsslot("BillCurrency") = Trim(txtfields(122).Text)
            rsslot("ExchangeRate") = val(txtfields(124).Text)
            rsslot("Comm_Wt") = val(GetText(spdVar, ICommWTAmt, f))
            
            rsslot("TotDiscRate") = val(GetText(spdVar, IDiscRate, f))
            rsslot("Net_Rate") = val(GetText(spdVar, INetRate, f))
            rsslot("TotDiscAmt") = val(GetText(spdVar, IDiscAmt, f))
            rsslot("CONTNUM") = val(GetText(spdVar, IContNum, f))
            If IsDate(Trim(GetText(spdVar, IContdate, f))) = True Then
                rsslot("Contdate") = Format((GetText(spdVar, IContdate, f)), "YYYY-MM-DD")
            End If
            
            rsslot("lot_spotexpense") = val(GetText(spdVar, ISpotExpense, f))
            rsslot("lot_incidentcharge") = val(GetText(spdVar, IIncidentCharge, f))
            rsslot("TypeTruckbale") = Left(Combo12.Text, 1)
              
            rsslot("suppassvalue") = val(GetText(spdVar, ISupplierAssvalue, f))
              
            If MaskEdBox1(6).Text = "__/__/____" Or IsDate(MaskEdBox1(6).Text) = False Then
                 rsslot("DPDocDate") = Null
                 rsslot("DPDocno") = Null
            Else
                 rsslot("DPDocDate") = Format(MaskEdBox1(6).Text, "yyyy-mm-dd")
                 rsslot("DPDocno") = val(txtfields(125).Text)
            End If
              
                Set UPDRS = New Recordset
                UPDRS.Open "select Divcode,ContNo,Contdt,Lotno,Lotdt,Docno,Docdate,SUPCD,Varcode,DType,DRate,Disc_Amt from RM_LOTDiscntRate a where 1 =2 and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                With SPDDiscTypeDet
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, RW)) <> "" And val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDocno, RW))
                            If IsDate(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, RW)) = True Then
                                UPDRS("DocDate") = Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, RW), "yyyy-MM-dd")
                            End If
                           
                            UPDRS("SUPCD") = txtfields(30).Text
                            UPDRS("Varcode") = GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, RW)
                            UPDRS("DRate") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW))
                            UPDRS("DType") = Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, RW))
                            UPDRS("Disc_Amt") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDValue, RW))
                            UPDRS("LOTDT") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
                            UPDRS("LOTNO") = val(GetText(spdVar, ILotNo, f))
                            UPDRS("ContNo") = val(GetText(spdVar, IContNum, f))
                            If IsDate(GetText(spdVar, IContdate, f)) = True Then
                                UPDRS("Contdt") = Format(GetText(spdVar, IContdate, f), "yyyy-mm-dd")
                            End If
                        End If
                    Next
                End With
             
                UPDRS.UpdateBatch adAffectAllChapters
              
              
              
            DB.Execute ("update rm_arrival set LOTRECQTY=" & rsslot("BALES") & ",lotno=" & rsslot("LOTNO") & ",catcd='" & rsslot("CATCD") & "',lotdt='" & Format(rsslot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rsslot("VARCODE") & "' and quantity='" & val(GetText(spdVar, iQty, f)) & "' and GROSSWT ='" & val(GetText(spdVar, Imgrosswt, f)) & "'")
            
            
'
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Lot Bale"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("plcode") = Trim(txtfields(120).Text)
            TrnLog("Line_No") = Trim(txtfields(121).Text)
            TrnLog("arrno") = Trim(txtfields(96).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(4).Text, "YYYY-MM-DD")

            TrnLog("slcode") = txtfields(30).Text
            TrnLog("purtype") = txtfields(302).Text
            TrnLog("tc") = val(txtfields(300).Text)
            TrnLog("areacode") = IIf(Trim(txtfields(38).Text) = "", Null, txtfields(38).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(37).Text) = "", Null, txtfields(37).Text)
            
            TrnLog("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("lotno") = GetText(spdVar, ILotNo, f)
            
            TrnLog("docdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("docno") = GetText(spdVar, ILotNo, f)
            TrnLog("billno") = txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            TrnLog("bbflg") = GetText(spdVar, Iunit, f)
            
            TrnLog("rateunit") = Trim(txtfields(110).Text)
            

            TrnLog("godown") = Trim(txtfields(77).Text)
            TrnLog("Comm_wt") = val(txtfields(123).Text)
            TrnLog("Frg_Amt") = val(txtfields(13).Text)
            TrnLog("varcode") = (GetText(spdVar, IVarcode, f))
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            
            TrnLog("CATCD") = rscc("CATCD")



            TrnLog("currency") = Trim(txtfields(122).Text)
            TrnLog("conv_Rate") = val(txtfields(124).Text)
            TrnLog("PGrosswt") = val(GetText(spdVar, Ipgrosswt, f))
            TrnLog("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            TrnLog("PTarewt") = val(GetText(spdVar, Ipnetwt, f))
     
            TrnLog("ordqty") = val(GetText(spdVar, iQty, f))
            TrnLog("Grosswt") = val(GetText(spdVar, Imgrosswt, f))
            TrnLog("tarewt") = val(GetText(spdVar, Imtarewt, f))
   
            TrnLog("netwt") = val(GetText(spdVar, Imnetwt, f))
            TrnLog("billno") = txtfields(3).Text
            TrnLog("AssAmount") = val(GetText(spdVar, Ipjamt, f))
            TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, f))

            TrnLog("LandingCost") = val(GetText(spdVar, ILandedcost, f))
            TrnLog("ratekg") = val(GetText(spdVar, IRateKG, f))
            TrnLog("TaxCode") = GetText(spdVar, ITaxCode, f)
       
            TrnLog("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            TrnLog("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            TrnLog("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            TrnLog("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            TrnLog("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            TrnLog("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            TrnLog("HSN") = Trim(GetText(spdVar, IHSN, f))
            TrnLog.UpdateBatch adAffectAllChapters
       Next

       rsslot.UpdateBatch adAffectAllChapters
 
            If optMILL = True Then
                strSQL = "update rm_lot set Entryuser='" & usrid & "', WeightFlg ='" & wflg & "', dutyper=" & val(txtfields(109).Text) & ",Lotrectype='O' where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lottype='A'"
                DB.Execute (strSQL)
            ElseIf OptCommercialWt = True Then
                strSQL = "update rm_lot set Entryuser='" & usrid & "',WeightFlg ='" & wflg & "', dutyper=" & val(txtfields(109).Text) & ",Lotrectype='O' where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lottype='A'"
                DB.Execute (strSQL)
            Else
                strSQL = "update rm_lot set Entryuser='" & usrid & "',WeightFlg ='" & wflg & "', dutyper=" & val(txtfields(109).Text) & ",Lotrectype='O' where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and lottype='A'"
                DB.Execute (strSQL)
            End If
       
       ADOSECONDARYRS.MoveFirst
       Do While Not ADOSECONDARYRS.EOF
       If grddatagrid.Columns(2).Text = "" Then
            ADOSECONDARYRS.Delete
       End If
            ADOSECONDARYRS.MoveNext
       Loop
       
       ADOSECONDARYRS.MoveFirst
       
       Do While Not ADOSECONDARYRS.EOF

            ADOSECONDARYRS("Lotno") = grddatagrid.Columns("LOTNO").Text
            ADOSECONDARYRS("lotdt") = Format(grddatagrid.Columns("LOTDT").Text, "yyyy-mm-dd")
            ADOSECONDARYRS("VARCODE") = grddatagrid.Columns("VARCODE").Text
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & ADOSECONDARYRS("VARCODE") & "'", DB, adOpenStatic
            ADOSECONDARYRS("catcd") = rscc("catcd")
            ADOSECONDARYRS("BALENO") = grddatagrid.Columns(2).Text
            ADOSECONDARYRS("GRWT") = val(grddatagrid.Columns(3).Text)
            ADOSECONDARYRS("TAREWT") = val(grddatagrid.Columns(4).Text)
            ADOSECONDARYRS("trash_et") = val(grddatagrid.Columns(5).Text)
            ADOSECONDARYRS("moisture_et") = val(grddatagrid.Columns(6).Text)
            ADOSECONDARYRS("NETWT") = val(grddatagrid.Columns(7).Text)
            ADOSECONDARYRS("LOTTYPE") = "A"
            ADOSECONDARYRS("divcode") = Divcode
            ADOSECONDARYRS("arrdt") = Format(MaskEdBox1(4).Text, "yyyy-mm-dd")
            ADOSECONDARYRS("ARRNO") = txtfields(96).Text
            ADOSECONDARYRS("pgrswt") = val(grddatagrid.Columns(12).Text)
            ADOSECONDARYRS("ptarewt") = val(grddatagrid.Columns(13).Text)
            ADOSECONDARYRS("pnetwt") = val(grddatagrid.Columns(14).Text)
            If Trim(grddatagrid.Columns(14).Text) = "" Or val(grddatagrid.Columns(15).Text) = 0 Then
                ADOSECONDARYRS("partybaleno") = grddatagrid.Columns(2).Text
            Else
                ADOSECONDARYRS("partybaleno") = grddatagrid.Columns(15).Text
            End If
            ADOSECONDARYRS("Comm_Wt") = val(grddatagrid.Columns(18).Text)
            ADOSECONDARYRS("MOITURE") = val(grddatagrid.Columns(19).Text)
            ADOSECONDARYRS.MoveNext
       Loop
        ADOSECONDARYRS.MoveFirst
        
        ADOSECONDARYRS.UpdateBatch adAffectAllChapters
        
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
        If optMILL = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grddatagrid.Columns(7).Text) & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        ElseIf OptCommercialWt = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grddatagrid.Columns(18).Text) & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        Else
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(grddatagrid.Columns(14).Text) & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        End If
        ADOSECONDARYRS.MoveNext
        Loop
        ADOSECONDARYRS.MoveFirst
        
    If Openkeyloanflg = "Y" Then
        ADOSECONDARYRS.MoveFirst
        Do While Not ADOSECONDARYRS.EOF
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(OpenLoankeyflg,'N') AS OpenLoankeyflg  FROM RM_GOD where  GCODE='" & Trim(txtfields(77).Text) & "' and  divcode='" & Divcode & "'   ", DB, adOpenStatic
        If Rs.Fields("OpenLoankeyflg") = "N" Then
        strSQL = "update rm_bale set OPENKEY='N' where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(grddatagrid.Columns(2).Text) & " AND lotno =" & grddatagrid.Columns("LOTNO").Text & " and lotdt = '" & Format(grddatagrid.Columns("LOTDt").Text, "YYYY-MM-DD") & "'"
        DB.Execute (strSQL)
        End If
        ADOSECONDARYRS.MoveNext
        Loop
        ADOSECONDARYRS.MoveFirst
    End If
    
    
    Dim thistc As Integer
    Dim thisgl As String
    Dim thispjno As Integer
    thistc = 0
    thisgl = ""
    Set Rs = New Recordset
    Rs.Open "SELECT FATC FROM RM_CAT WHERE CATCD = '" & txtfields(76).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Trim(txtfields(300).Text) = "" Or IsNull(txtfields(300).Text) = True Then
        thistc = 0
    Else
        thistc = val(txtfields(300).Text)
    End If
       
       DB.CommitTrans
       Dim strNo As String
       Dim I As Integer
       strNo = ""
       If spdVar.MaxRows = 1 Then
            strNo = GetText(spdVar, 1, 1)
       Else
            For I = 1 To spdVar.MaxRows Step 1
                strNo = strNo + ", " + GetText(spdVar, 1, I)
            Next
            strNo = Mid(strNo, 2)
       End If
       MsgBox "Record(s) Saved!", vbInformation, head
       MsgBox "Lot No. " & strNo, vbInformation, head
       Screen.MousePointer = 0
       Opt = ""
       BUTTON(4).Enabled = True
       Call BUTTON_Click(13)
       
End If
    
If Opt = "mod" Then
        If Trim(txtfields(30).Text) = "" Then
            MsgBox ("Please Enter Count Code First"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(30).Text = ""
            txtfields(30).SetFocus
            Exit Sub
        End If
  
        
        
        If Trim(txtfields(77).Text) = "" Then
            MsgBox ("Please Enter Godown"), vbCritical, head
            SSTab1.Tab = 0
            txtfields(77).Text = ""
            txtfields(77).SetFocus
            Exit Sub
        End If
    If val(txtfields(99).Text) <> val(Text5.Text) Then
        MsgBox "Lotwise Mill Gross Weight does not tally with Bale Mill Gross Weight." & vbCrLf & " Sum of Mill Gross Weight Must Equal To " & Format(val(txtfields(99).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(98).Text) <> val(Text6.Text) Then
        MsgBox "Lotwise Mill Tare Weight does not tally with Bale Mill Tare Weight." & vbCrLf & " Sum of Mill Tare Weight Must Equal To " & Format(val(txtfields(98).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(104).Text) <> val(Text14.Text) Then
        MsgBox "Lotwise Supplier Tare Weight does not tally with Bale Supplier Tare Weight." & vbCrLf & " Sum of Supplier Tare Weight Must Equal To " & Format(val(txtfields(104).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
    
    If val(txtfields(105).Text) <> val(Text15.Text) Then
        MsgBox "Lotwise Supplier Gross Weight does not tally with Bale Supplier Gross Weight." & vbCrLf & " Sum of Supplier Gross Weight Must Equal To " & Format(val(txtfields(105).Text), "0.000"), vbInformation, head
        SSTab1.Tab = 2
        Exit Sub
    End If
        
        If txtfields(106).Text = "" Then
            MsgBox "Please Enter VAT Category", vbInformation, head
            txtfields(106).SetFocus
            Exit Sub
        End If
        If txtfields(115).Text = "" Then
            MsgBox "Please Enter Supplier Invoice Value", vbInformation, head
            txtfields(115).SetFocus
            Exit Sub
        End If
        tmp = Opt
        Opt = ""
        

        DB.BeginTrans

       For f = 1 To spdVar.MaxRows
            Set rs1 = New Recordset
            rs1.Open "Select getdate() 'SysDt'", DB, adOpenDynamic
            rssmodlot("modusrid") = usrid
            rssmodlot("moddate").value = Format(rs1!SysDt, "YYYY/MM/DD")
            rssmodlot("Divcode") = Divcode
            rssmodlot("rg23a") = Null
            rssmodlot("arrno") = txtfields(96).Text
            rssmodlot("tcs_per") = val(GetText(spdVar, itcsper, f))
            rssmodlot("tcs_amt") = val(GetText(spdVar, itcsamt, f))

            If val(txtfields(300).Text) = 0 Then
                rssmodlot("PJTC") = Null
            Else
                rssmodlot("PJTC") = val(txtfields(300).Text)
            End If
            If Trim(txtfields(302).Text) = "" Then
                rssmodlot("ptype") = Null
            Else
                rssmodlot("ptype") = txtfields(302).Text
            End If
            
            If txtfields(108).Text <> "" Then
                rssmodlot("inwardno") = Trim(txtfields(108).Text)
            End If
            rssmodlot("vcatcd") = txtfields(106).Text
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
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            rssmodlot("CATCD") = rscc("CATCD")
            
            rssmodlot("PTYWGT") = val(GetText(spdVar, Imnetwt, f))
            rssmodlot("pgrswt") = val(GetText(spdVar, Ipgrosswt, f))
            rssmodlot("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            rssmodlot("pnetwt") = val(GetText(spdVar, Ipnetwt, f))
            rssmodlot("pinvval") = val(GetText(spdVar, Ipinvval, f))
            rssmodlot("weighbridgewt") = val(GetText(spdVar, Iwbwt, f))
            rssmodlot("supcd") = txtfields(30).Text
            rssmodlot("brkcd") = txtfields(37).Text
            rssmodlot("COLORCODE") = txtfields(40).Text
            rssmodlot("bales") = val(GetText(spdVar, iQty, f))
            rssmodlot("grswgt") = val(GetText(spdVar, Imgrosswt, f))
            rssmodlot("tarewt") = val(GetText(spdVar, Imtarewt, f))
            rssmodlot("MOISTURE_ET") = val(GetText(spdVar, Immoiturewt, f))
            rssmodlot("netwt") = val(GetText(spdVar, Imnetwt, f))
            rssmodlot("billno") = txtfields(3).Text
            rssmodlot("sampwt") = IIf(txtfields(4).Text = "", 0, txtfields(4).Text)
            rssmodlot("pjamt") = GetText(spdVar, Ipjamt, f)
            rssmodlot("odint") = IIf(txtfields(9).Text = "", 0, txtfields(9).Text)
            rssmodlot("godown") = IIf(txtfields(77).Text = "", "", txtfields(77).Text)
            rssmodlot("opflg") = "N"
            rssmodlot("ldgulg") = IIf(txtfields(12).Text = "", 0, txtfields(12).Text)
            rssmodlot("varcode") = GetText(spdVar, IVarcode, f)
            rssmodlot("areacd") = CStr(txtfields(38).Text)
            
            rssmodlot("Comm_Wt") = val(GetText(spdVar, ICommWTAmt, f))
            
            rssmodlot("ComWt_Flg") = Check1.value
          
             
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
            rssmodlot("totlandcost") = (val(GetText(spdVar, ILandedcost, f)))
            rssmodlot("ratekg") = (GetText(spdVar, IRateKG, f))
            rssmodlot("shipchrg") = (val(GetText(spdVar, Ishipchrg, f)))
            rssmodlot("othertaxableAmt") = val(GetText(spdVar, IOthTaxableAmt, f))
            rssmodlot("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            rssmodlot("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            rssmodlot("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            rssmodlot("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            rssmodlot("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            rssmodlot("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            rssmodlot("HSN") = Trim(GetText(spdVar, IHSN, f))
            
            rssmodlot("plcode") = txtfields(120).Text
            rssmodlot("line_no") = txtfields(121).Text

            rssmodlot("CONTNUM") = val(GetText(spdVar, IContNum, f))
            If IsDate(Trim(GetText(spdVar, IContdate, f))) = True Then
                rssmodlot("Contdate") = Format((GetText(spdVar, IContdate, f)), "YYYY-MM-DD")
            End If
            
            
            rssmodlot("TotDiscRate") = val(GetText(spdVar, IDiscRate, f))
            rssmodlot("TotDiscAmt") = val(GetText(spdVar, IDiscAmt, f))
            rssmodlot("Net_Rate") = val(GetText(spdVar, INetRate, f))
            
            rssmodlot("TCS_AssAmt") = val(GetText(spdVar, ITCS_AssValue, f))
            rssmodlot("TCS_CalcAssAmtFlag") = Chk_TCSAssValFlg.value
            
            
            If MaskEdBox1(6).Text = "__/__/____" Or IsDate(MaskEdBox1(6).Text) = False Then
                 rssmodlot("DPDocDate") = Null
                 rssmodlot("DPDocno") = Null
            Else
                 rssmodlot("DPDocDate") = Format(MaskEdBox1(6).Text, "yyyy-mm-dd")
                 rssmodlot("DPDocno") = val(txtfields(125).Text)
            End If
            
            If Option1.value = True Then
                rssmodlot("TAX_CHOICE") = "SINGLE"
            End If
            If Option2.value = True Then
                rssmodlot("TAX_CHOICE") = "COMMON"
            End If
            If optMILL = True Then
                 rssmodlot("FAVAOURABLEWGT") = val(GetText(spdVar, Imnetwt, f))
            ElseIf OptCommercialWt = True Then
                 rssmodlot("FAVAOURABLEWGT") = val(GetText(spdVar, ICommWTAmt, f))
            Else
                 rssmodlot("FAVAOURABLEWGT") = val(GetText(spdVar, Ipnetwt, f))
            End If
            
              rssmodlot("lot_spotexpense") = val(GetText(spdVar, ISpotExpense, f))
            rssmodlot("lot_incidentcharge") = val(GetText(spdVar, IIncidentCharge, f))
            rssmodlot("TypeTruckbale") = Left(Combo12.Text, 1)
            
             rssmodlot("suppassvalue") = val(GetText(spdVar, ISupplierAssvalue, f))
             
            DB.Execute " DELETE FROM RM_LOTDiscntRate where  divcode='" & Divcode & "' AND LOTNO='" & val(GetText(spdVar, ILotNo, f)) & "' AND LOTDT='" & Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd") & "' AND SUPCD = '" & txtfields(30).Text & "' "
            Set UPDRS = New Recordset
            UPDRS.Open "select Divcode,ContNo,Contdt,Lotno,Lotdt,Docno,Docdate,SUPCD,Varcode,DType,DRate,Disc_Amt from RM_LOTDiscntRate a where 1 =2 and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
            With SPDDiscTypeDet
                For RW = 1 To .MaxRows
                    .Row = RW
                    If Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, RW)) <> "" And val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW)) <> 0 Then
                            UPDRS.AddNew
                            UPDRS("divcode") = Divcode
                            UPDRS("DocNo") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDocno, RW))
                            If IsDate(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, RW)) = True Then
                                UPDRS("DocDate") = Format(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, RW), "yyyy-MM-dd")
                            End If
                           
                            UPDRS("SUPCD") = txtfields(30).Text
                            UPDRS("Varcode") = GetText(SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, RW)
                            UPDRS("DRate") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDRate, RW))
                            UPDRS("DType") = Trim(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, RW))
                            UPDRS("Disc_Amt") = val(GetText(SPDDiscTypeDet, SpdDiscType.SPDDTDValue, RW))
                            UPDRS("LOTDT") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
                            UPDRS("LOTNO") = val(GetText(spdVar, ILotNo, f))
                            UPDRS("ContNo") = val(GetText(spdVar, IContNum, f))
                            If IsDate(GetText(spdVar, IContdate, f)) = True Then
                                UPDRS("Contdt") = Format(GetText(spdVar, IContdate, f), "yyyy-mm-dd")
                            End If
                    End If
                Next
            End With
            UPDRS.UpdateBatch adAffectAllChapters
            
            rssmodlot("SICAAmt") = val(GetText(spdVar, ISICAAmt, f))
            strSQL = "update rm_lot set WeightFlg ='" & wflg & "' where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "' and lottype='A' "
            DB.Execute (strSQL)
           If UCase(CustID) = "SOUTHERN" Then
               DB.Execute ("update rm_arrival set grosswt = " & rssmodlot("grswgt") & ",Tarewt = " & rssmodlot("tarewt") & ",Netwt = " & rssmodlot("netwt") & ", LOTRECQTY=" & rssmodlot("BALES") & ",lotno=" & rssmodlot("LOTNO") & ",catcd='" & rssmodlot("CATCD") & "',lotdt='" & Format(rssmodlot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "'")
           Else
              DB.Execute ("update rm_arrival set LOTRECQTY=" & rssmodlot("BALES") & ",lotno=" & rssmodlot("LOTNO") & ",catcd='" & rssmodlot("CATCD") & "',lotdt='" & Format(rssmodlot("LOTDT"), "yyyy-mm-dd") & "',lottype = 'A' where arrno='" & txtfields(96).Text & "' and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND VARCODE='" & rssmodlot("VARCODE") & "'")
           End If
           
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Lot Bale"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("plcode") = Trim(txtfields(120).Text)
            TrnLog("Line_No") = Trim(txtfields(121).Text)
            TrnLog("arrno") = Trim(txtfields(96).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(4).Text, "YYYY-MM-DD")

            TrnLog("slcode") = txtfields(30).Text
            TrnLog("purtype") = txtfields(302).Text
            TrnLog("tc") = val(txtfields(300).Text)
            TrnLog("areacode") = IIf(Trim(txtfields(38).Text) = "", Null, txtfields(38).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(37).Text) = "", Null, txtfields(37).Text)
            
            TrnLog("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("lotno") = GetText(spdVar, ILotNo, f)
            
            TrnLog("docdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("docno") = GetText(spdVar, ILotNo, f)
            TrnLog("billno") = txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            TrnLog("bbflg") = GetText(spdVar, Iunit, f)
            
            TrnLog("rateunit") = Trim(txtfields(110).Text)
            TrnLog("godown") = Trim(txtfields(77).Text)
            TrnLog("Comm_wt") = val(txtfields(123).Text)
            TrnLog("Frg_Amt") = val(txtfields(13).Text)
            TrnLog("varcode") = (GetText(spdVar, IVarcode, f))
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            
            TrnLog("CATCD") = rscc("CATCD")
            TrnLog("currency") = Trim(txtfields(122).Text)
            TrnLog("conv_Rate") = val(txtfields(124).Text)
            TrnLog("PGrosswt") = val(GetText(spdVar, Ipgrosswt, f))
            TrnLog("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            TrnLog("PTarewt") = val(GetText(spdVar, Ipnetwt, f))
     
            TrnLog("ordqty") = val(GetText(spdVar, iQty, f))
            TrnLog("Grosswt") = val(GetText(spdVar, Imgrosswt, f))
            TrnLog("tarewt") = val(GetText(spdVar, Imtarewt, f))
   
            TrnLog("netwt") = val(GetText(spdVar, Imnetwt, f))
            TrnLog("billno") = txtfields(3).Text
            TrnLog("AssAmount") = val(GetText(spdVar, Ipjamt, f))
            TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, f))

            TrnLog("LandingCost") = val(GetText(spdVar, ILandedcost, f))
            TrnLog("ratekg") = val(GetText(spdVar, IRateKG, f))
            TrnLog("TaxCode") = GetText(spdVar, ITaxCode, f)
       
            TrnLog("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            TrnLog("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            TrnLog("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            TrnLog("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            TrnLog("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            TrnLog("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            TrnLog("HSN") = Trim(GetText(spdVar, IHSN, f))
            TrnLog.UpdateBatch adAffectAllChapters
           
           
        Next

        rssmodlot.UpdateBatch adAffectAllChapters

       Set rssm = New Recordset
    
        rssm.Open "select * from rm_bale where arrno = '" & txtfields(96).Text & "' and lottype = 'A' and divcode='" & Divcode & "' and isqty is null ORDER BY LOTNO,BALENO", DB, adOpenStatic, adLockBatchOptimistic

       rssm.MoveFirst
       ADOSECONDARYRS.MoveFirst
       Do While Not rssm.EOF

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
                rssm("ARRNO") = txtfields(96).Text
                rssm("pgrswt") = val(grddatagrid.Columns(10).Text)
                rssm("ptarewt") = val(grddatagrid.Columns(11).Text)
                rssm("pnetwt") = val(grddatagrid.Columns(12).Text)
                rssm("Comm_Wt") = val(ADOSECONDARYRS("Comm_Wt") & "")
                rssm("MOITURE") = val(ADOSECONDARYRS("MOITURE") & "")
                If Trim(ADOSECONDARYRS("partybaleno") & "") = "" Then
                    rssm("partybaleno") = grddatagrid.Columns(2).Text
                Else
                    rssm("partybaleno") = Trim(ADOSECONDARYRS("partybaleno") & "")
                End If
                ADOSECONDARYRS.MoveNext
                
            End If
            rssm.MoveNext
       Loop
       rssm.UpdateBatch adAffectAllChapters
       
        rssm.MoveFirst
        Do While Not rssm.EOF
        If optMILL = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(rssm("NETWT")) & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(rssm("baleno")) & " AND lotno =" & rssm("lotno") & " and lotdt = '" & Format(rssm("lotdt"), "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        ElseIf OptCommercialWt = True Then
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & rssm("Comm_Wt") & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(rssm("baleno")) & " AND lotno =" & rssm("lotno") & " and lotdt = '" & Format(rssm("lotdt"), "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        Else
            strSQL = "update rm_bale set lotRecType='O', FavaourableWgt = " & val(rssm("PNETWT")) & " where arrno='" & txtfields(96).Text & "' and arrdt='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and  BALENO = " & val(rssm("baleno")) & " AND lotno =" & rssm("lotno") & " and lotdt = '" & Format(rssm("lotdt"), "YYYY-MM-DD") & "'"
            DB.Execute (strSQL)
        End If
        rssm.MoveNext
        Loop
        rssm.MoveFirst
        
       Opt = tmp

    Set frs = New Recordset
    frs.Open "select fainstal from rm_param", DB
       DB.CommitTrans
       MsgBox "Record(s) Modified", vbInformation, head
       Frame7.Enabled = True
       Frame1.Enabled = True
       Screen.MousePointer = 0
       Call BUTTON_Click(13)
       Opt = ""
       BUTTON(4).Enabled = True
       
  End If

 If Opt = "del" Then
 Dim msg As String
    msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
    If msg = vbYes Then
        Call SaveTranLogFunction
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
 End If

    Call clear_text
     Call query_mode
    desc.Caption = "Query"
    Screen.MousePointer = 0
    Opt = ""
    Call NEWFORM(BUTTON)
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
        Exit Sub
    End If

Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    desc.Caption = "Query"
    BUTTON(4).Enabled = True
    Screen.MousePointer = 11

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

    If adoPrimaryRS.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    Frame7.Visible = True
    Frame7.Enabled = True
    Frame1.Enabled = True
    Call query_mode
    BUTTON(0).SetFocus ''''''''''
Case 11

    Unload Me
Case 12
       Call loadRpt
End Select
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Frmlotbale", vbInformation, head
    DB.RollbackTrans
End Sub

Private Sub Check1_Click()
On Error Resume Next
If Check1.value = 1 Then
    spdVar.Col = ICommWTAmt
    spdVar.ColHidden = False
    spdVar.ColWidth(17) = 12

Else
    spdVar.Col = ICommWTAmt
    spdVar.ColHidden = True
    spdVar.ColWidth(17) = 12
End If
Call spdVar_LeaveCell(1, 1, 1, 1, False)
End Sub

Private Sub Check1_LostFocus()
 Dim msg As String
    msg = MsgBox("Commercial weight Applicable For This lot?", vbYesNo, head)
    If msg = vbYes Then
    Check1.value = 1
    txtfields(124).SetFocus
    Cancel = True
    Else
    Check1.value = 0
    txtfields(123).Text = "0"
    End If

If Opt = "add" Or Opt = "mod" Then
    txtremarks.BackColor = &HFFFFFF
    spdVar.SetActiveCell Ipgrosswt, spdVar.ActiveRow
    
    spdVar.SetFocus
    spdVar.Col = 49
    StatusBar1.Panels(2).Text = ""
End If

End Sub

Private Sub Chk_TCSAssValFlg_Click()
If Opt = "add" Or Opt = "mod" Then
    Call spdVar_LeaveCell(68, 1, -1, -1, False)
End If
End Sub

Private Sub Cmd_DiscountOK_Click()
    FrameDiscType.Visible = False
    Exit Sub
End Sub

Private Sub cmdExit_Click()
    FraMain.Visible = False
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Screen.MousePointer = 11
If Opt = "mod" Then
    Call ENABLCONTLS
    txtfields(22).Locked = True
    txtfields(23).Locked = True
    txtfields(24).Locked = True
    txtfields(25).Locked = True
    
    txtfields(30).Locked = True
    Text1(1).Locked = True
    txtfields(2).Locked = True
    txtfields(79).Locked = True
    txtfields(37).Locked = True
    Text12.Locked = True
    
    grddatagrid.Enabled = True
Else
    Call disablcontls
End If

    f = LookUp.Fields(1)
    oldarrdt = Format(f, "yyyy-mm-dd")

    f = LookUp.Fields(1)
    g = LookUp.Fields(0)
    oldarrno = g
    
    Call delmodproc(CStr(f), CStr(g))
    BUTTON(9).Enabled = True
    BUTTON(10).Enabled = True


Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Frmlotbale", vbInformation, head
End Sub

Private Sub Command10_Click()
On Error Resume Next
 Set rsPr = New Recordset
 rsPr.Open "select isnull(weightipflg,1)weightipflg  from rm_param", DB, adOpenStatic
If rsPr(0) = 1 Then
    ADOSECONDARYRS.MoveFirst
        If grddatagrid.Columns(2).Text <> "" Then
       Do While Not ADOSECONDARYRS.EOF
       
    Set Rs = New Recordset
        
      Rs.Open "select  * from Rm_baletemp where  Arrivallotno=" & txtfields(96).Text & " and ArrivalDate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and baleno=" & grddatagrid.Columns(2).Text & " AND Transflag='N' and slcode='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic, adLockBatchOptimistic
       If Rs.RecordCount > 0 Then
        grddatagrid.Columns(3).Text = Rs.Fields("millGRossWT")
        DB.Execute ("update Rm_baletemp set Transflag='Y' where  Arrivallotno=" & txtfields(96).Text & " and ArrivalDate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and baleno=" & grddatagrid.Columns(2).Text & " and slcode='" & Trim(txtfields(30).Text) & "'")
      End If
            ADOSECONDARYRS.MoveNext
        
       
       Loop
        End If
 Else
 
        ADOSECONDARYRS.MoveFirst
        If grddatagrid.Columns(2).Text <> "" Then
       Do While Not ADOSECONDARYRS.EOF
       
        Set Rs = New Recordset
        
      Rs.Open "select  * from RM_ArrivalData where  arrno=" & txtfields(96).Text & " and Arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  baleno=" & grddatagrid.Columns(2).Text & " AND isnull(LotFlg,'N')<>'Y' and Supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic, adLockBatchOptimistic
       If Rs.RecordCount > 0 Then
       grddatagrid.Columns(3).Text = Rs.Fields("GrossWt")
       grddatagrid.Columns(7).Text = Rs.Fields("netwt")
       
      End If
            ADOSECONDARYRS.MoveNext
           
       
       Loop
        End If
End If
 End Sub

Private Sub Command11_Click()

On Error GoTo Command2_Click_Error


Dim UPBaleno, UPTareWt, UPNETwt, UPGrossWt, UpLotno As Double
    Dim UPPOS As Integer

   If spdView.MaxRows = 0 Then
        MsgBox " Kindly select Bale Detail file ", vbOKOnly
        Exit Sub
   End If
   UPPOS = ADOSECONDARYRS.AbsolutePosition
  For RW = 1 To spdView.MaxRows Step 1

    If Trim(GetText(spdView, 1, RW)) <> "" And GetText(spdView, 4, RW) <> "" And GetText(spdView, 5, RW) <> "" And IsNumeric(GetText(spdView, 5, RW)) = True And IsNumeric(GetText(spdView, 7, RW)) = True Then
     If IsNumeric(GetText(spdView, 7, RW)) = True Then
     
     
          UPBaleno = CInt(Fix(Trim(GetText(spdView, 1, RW) & "")))
          UPGrossWt = Trim(GetText(spdView, 6, RW) & "")
          UPTareWt = Trim(GetText(spdView, 4, RW) & "")
          UPNETwt = Trim(GetText(spdView, 5, RW) & "")
          UpLotno = CInt(Fix(Trim(GetText(spdView, 7, RW) & "")))
      
    
            ADOSECONDARYRS.MoveFirst
            Do While Not ADOSECONDARYRS.EOF
              If ADOSECONDARYRS("LotNo") = UpLotno And UPBaleno = ADOSECONDARYRS("Baleno") Then
                If UCase(CustID) = "COTTON" Then
                  ADOSECONDARYRS("GRWT") = val(UPNETwt) '

                  ADOSECONDARYRS("netwt") = val(UPNETwt) - IIf(IsNull(ADOSECONDARYRS("TAREWT")), 0, ADOSECONDARYRS("TAREWT"))

                Else
                  ADOSECONDARYRS("GRWT") = val(UPGrossWt)
                  ADOSECONDARYRS("TAREWT") = val(UPTareWt)
                  ADOSECONDARYRS("netwt") = val(UPNETwt)

                End If
              End If
              
            
            ADOSECONDARYRS.MoveNext
            Loop
      End If
     End If
  
  Next
   If UPPOS > 0 Then
    ADOSECONDARYRS.AbsolutePosition = UPPOS
   End If
   FraMain.Visible = False
   grddatagrid.Col = 5
   Call grddatagrid_AfterColEdit(5)

   Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command13_Click()
Dim fphandle As Integer
 Dim List() As String
    Dim ListCount As Integer
    Dim f As Long, I As Integer

    ReDim List(1)
     On Error GoTo ErrorHandler
      
    fpaction = 1
        
    With CommonDialog1
    
        .FileName = "*.xls"
        .DialogTitle = "Select Excel file to open"
        .Filter = "Excel files|*.xls"
        .FilterIndex = 0
        .InitDir = App.Path & "\ImportExport\"
        .flags = cdlOFNHideReadOnly
        .ShowOpen
       
        If .FileName = "*.xls" Then Exit Sub
        fpfilename = .FileName
        txt_filename.Text = fpfilename
        f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, True)
        If (ListCount - 1 > 1) Then
            ReDim List(ListCount)
            f = spdView.GetExcelSheetList(.FileName, List, ListCount, (App.Path & "\log.txt"), fphandle, False)
        End If
        xlfile = .FileName
        
    End With
    
  
    If ListCount = 0 Then
        MsgBox "Error: This file is not a valid Excel 97/2007 file or is password protected.", vbExclamation, "Import Error"
        Exit Sub
    End If

Dim f1
    f1 = spdView.ImportExcelBook(xlfile, (App.Path & "\log.txt"))
   
    Command11.Enabled = True
    Screen.MousePointer = 0
        
    Exit Sub
    
ErrorHandler:
End Sub

Private Sub Command14_Click()
FraMain.Visible = True
spdView.MaxRows = 0
End Sub

Private Sub Command15_Click()
FrameDiscType.Visible = False
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error


Frame9.Visible = False
Frame7.Visible = True
BUTTON_Click (10)

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub delmodok_Click()
On Error GoTo delmodok_Click_Error
intervalMinutes = -1
    Set adoPrimaryRS = New Recordset
   adoPrimaryRS.Open "SELECT  A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,cOLORCODE,awt_flg,PJTC,PTYPE,vcatcd,pinvval,weighbridgewt,inwardno,inwarddate,OtherTaxableAmt,WeightFlg,HSN,cgstper,A.cgstamt,A.sgstper,A.sgstamt,A.igstper,A.igstamt,a.Line_No,a.PlCode,ComWt_Flg,Comm_Wt,ExchangeRate,BillCurrency,DPDocDate,DPDocno,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt ,Net_Rate,TCS_AssAmt,TCS_CalcAssAmtFlag,lot_incidentcharge,lot_spotexpense,TypeTruckbale,suppassvalue FROM RM_LOT A WHERE  LOTTYPE = 'A' and  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear=" & Year(yfdate) & " Order by A.lotNO", DB, adOpenStatic, adLockBatchOptimistic
    
        If adoPrimaryRS.RecordCount <> 0 Then
            Set ADOSECONDARYRS = New Recordset
            ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,lottype,arrdt,pgrswt,ptarewt,pnetwt,partybaleno,arrno,Favourablewgt,Comm_Wt ,MOITURE FROM RM_BALE WHERE lottype = 'A' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
        Else
            MsgBox "All Lots are Used. Deletion/Modification Not allowed!", vbInformation, head
            Opt = ""
            Call query_mode
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
    Set Rs = New Recordset

    Rs.Open "select distinct divcode,lottype,arrno,arrdt,SLNAME from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND arrdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and isnull(isswt,0) = 0 and isnull(issbal,0)= 0 and  isnull(opflg,'N')='N' and arrno not in (select arrno from rm_lot" & _
    " WHERE isnull(isswt,0) <> 0 and isnull(issbal,0) <> 0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and isnull(opflg,'N')='N' ) AND DIVCODE='" & Divcode & "' order by arrno,arrdt", DB, adOpenStatic
    
    
    
    Frame9.Visible = True
    Frame9.ZOrder
    Set DataGrid1.DataSource = Rs
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodok_Click of Form Frmlotbale", vbInformation, head
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

Frame6.Visible = False
Buttonframe.Enabled = True
StatusBar1.Panels(2).Text = ""
Opt = ""
Call query_mode

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Frmlotbale", vbInformation, head
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
          adoPrimaryRS.Open "SHAPE {SELECT A.DIVCODE,a.rg23a,A.CATCD,A.LOTNO,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,BEDAMT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,SUPCD,BRKCD,AREACD,CNTCODE,A.VARCODE,TOTLANDCOST,GRSWGT,A.TAREWT,A.NETWT,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,rebate,RATEKG,GODOWN,LGROUP,OPFLG,plotno,Modusrid,ModDate,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,INSAMT,COMMPER,COMMAMT,LCINTPER LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,DNAMT1,BNKCHG,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,WeightFlg,HSN,cgstper,A.cgstamt,A.sgstper,A.sgstamt,A.igstper,A.igstamt ,a.Line_No,a.PlCode,a.ExchangeRate,a.BillCurrency,a.ComWt_Flg,a.Comm_Wt  " & _
                 " ,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt ,Net_Rate ,TCS_AssAmt,TCS_CalcAssAmtFlag FROM RM_LOT A WHERE a.lottype = 'A' and (isswt is null or isswt=0) and (issbal is null or issbal=0) " & _
                 "  AND A.DIVCODE = '" & Divcode & "' and A.lotno ='" & val(txtqry.Text) & "' and A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear=" & Year(yfdate) & " " & _
                 " Order by A.lotNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,arrno,Comm_Wt ,MOITURE FROM RM_BALE" & _
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form Frmlotbale", vbInformation, head
End Sub

Private Sub Command5_Click()

On Error GoTo Command5_Click_Error

If KSLLIST1.Caption = "Category Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
    Call BUTTON_Click(10)
ElseIf KSLLIST1.Caption = "Arrival Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
    Call BUTTON_Click(10)
ElseIf KSLLIST1.Caption = "Godown Details" Then
    Frame3.Visible = False
    Frame9.Visible = False
    DataGrid1.Visible = False
End If

Exit Sub
Command5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command5_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command6_Click()
On Error GoTo Command6_Click_Error

Select Case KSLLIST1.listfield1

Case "cntcd"
    txtfields(30).Text = KSLLIST1.code
    txtfields(41).Text = KSLLIST1.Description
    txtfields(23).SetFocus
    

Case "arrno as ArrivalNo" 'cast(arrno as varchar)"
On Error Resume Next
    'Flag = "Y"
    txtfields(1).Text = KSLLIST1.code
    txtfields(28).Text = KSLLIST1.code
    txtfields(31).Text = KSLLIST1.code
    txtfields(36).Text = KSLLIST1.code
    MaskEdBox1(0).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
    MaskEdBox1(3).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
    Set CATRS = New Recordset
    CATRS.Open "select a.catcd from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    txtfields(0).Text = CATRS(0)
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),varcode,cntcode,bbflag,isnull(quantity,0)-isnull(lotrecqty,0),isnull(grosswt,0),tarewt,NETWT,PLOTNO,RATECY,rebate,COLORCODE from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        'arrrs.Open "select isnull(supcd,''),isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(quantity,0),isnull(grosswt,0),isnull(tarewt,0),isnull(NETWT,0)from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),isnull(PLOTNO,'') as Plotno,ratecy,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY from rm_arrival where arrno=" & txtFields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl)-isnull(moisture_et,0),2),isnull(PLOTNO,'') as Plotno,ratecy,rebate,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY,moisture_et,moisture_per,awt_flg from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        'arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),isnull(round(grosswt/quantity*passbl,2),0),isnull(round(tarewt/quantity*passbl,2),0),isnull(round((grosswt/quantity*passbl)-(tarewt/quantity*passbl),2),0) from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        txtfields(26).Text = arrrs(0)
        txtfields(32).Text = arrrs(0)
        txtfields(35).Text = arrrs(0)
        txtfields(27).Text = IIf(IsNull(arrrs(1)), "", arrrs(1))
        txtfields(28).Text = IIf(IsNull(arrrs(2)), "", arrrs(2)) 'arrrs(2)
        txtfields(29).Text = arrrs(3)
        txtfields(40).Text = arrrs("COLORCODE")
        Label62.Caption = arrrs(17)
        Text9.Text = arrrs(15)
        Text10.Text = arrrs(16)
        Set rsa = New Recordset
         rsa.Open "select station,state from rm_area where areacode='" & arrrs(2) & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
             txtfields(71).Text = rsa(0)
             'txtfields(72).Text = rsa(1)
         End If
       ' txtFields (71)
        
        'Txtfields(30).Text = arrrs(4)
        'prakash.s
        txtfields(37).Text = IIf(IsNull(arrrs("plotno")), "", arrrs("plotno"))
        If arrrs("plotno") <> "" Then
          Set RSS = New Recordset
          RSS.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & arrrs("plotno") & "'  and lotyear=" & Year(yfdate) & " ", DB, adOpenStatic
          If Not RSS.EOF Then
            txtfields(3).Text = RSS("BILLNO")
            If RSS("BILLDT") = Null Then
                MaskEdBox1(2).Text = RSS("BILLDT")
            End If
          End If
        End If
        
        
        txtfields(30).Text = arrrs(4)
'        If arrrs(5) = "B" Then
'            Combo1.Text = "Bale"
'            Text8.Text = "Bale"
'        ElseIf arrrs(5) = "R" Then
'            Combo1.Text = "Borah"
'        End If
        txtfields(22).Text = arrrs(6)
        txtfields(33).Text = arrrs(6)
        txtfields(34).Text = arrrs(6)
        txtfields(23).Text = arrrs(7)
        txtfields(24).Text = arrrs(8)
        txtfields(25).Text = arrrs(9)
        If arrrs("ratecy") > 0 And arrrs("Ratecy") > 0 Then
            
               
       Set Rs = New Recordset
       Rs.Open "SELECT cENTRALISEDORDER FROM RM_PARAM"
      If globalarrivalorder = "C" Then
         If Rs(0) = "Y" Then
            Set rsr = New Recordset
            rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' )", DB, adOpenStatic
            Else
                Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) )", DB, adOpenStatic
              
            End If
      Else
        If Rs(0) = "Y" Then
              Set rsr = New Recordset
              rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
          Else
              Set rsr = New Recordset
             rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
            
          End If
      End If
       If rsr.RecordCount > 0 Then
            txtfields(6).Text = Format(arrrs(9) * Round(arrrs("Ratecy") / rsr("value"), 4), "00.00")
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
           txtfields(6).Text = Format((arrrs(9) / arrrs(6)) * arrrs("Ratecy") * 0.2812, "00.00")
           adoPrimaryRS("ratecy") = val(arrrs("Ratecy"))
        End If
        
        For I = 26 To 29
            txtfields(I).Locked = True
        Next
        oldgrs = txtfields(23).Text
        oldtare = txtfields(24).Text
        txtfields(0).Locked = True
        MaskEdBox1(0).Enabled = False
        MaskEdBox1(1).Enabled = False
        QTY = txtfields(22).Text
        txtfields(5).Text = Format(txtfields(25).Text, "0.000")
    Set Rs = New Recordset
    'rs.Open "SELECT isnull(RATECY,0) from rm_arrival where quantity=" & txtfields(22).Text & "", db, adOpenStatic, adLockBatchOptimistic
    Rs.Open "SELECT isnull(RATECY,0) from rm_arrival where passbl=" & txtfields(22).Text & "", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
        'HERE
'        txtFields(6).Text = Val(txtFields(22).Text) * rs(0).Value
    End If
'        Option1.Enabled = False
'        Option2.Enabled = False
        'Txtfields(22).SetFocus
        
        txtfields(30).SetFocus
        'txtFields(2).SetFocus
          SSTab1.Tab = 1
          txtfields(3).SetFocus
    End If
Case "a.catcd as CategoryNo" '"a.catcd as CatgeroyNo."
    txtfields(0).Text = KSLLIST1.code
'    If Record_Exists("rm_arrival a,rm_var b where a.varcode=b.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.catcd = '" & Trim(Txtfields(0).Text) & "' and lotno is null", "No Arrival Found") = False Then
'        Call BUTTON_Click(10)
'        Frame3.Visible = True
'     End If
    txtfields(1).SetFocus
Case "gname as GodownName" '"gcode"
 txtfields(20).Text = KSLLIST1.Description
 'txtFields(21).SetFocus
Case "cast(ARRNO as varchar)"
    txtfields(1).Text = KSLLIST1.code
    MaskEdBox1(0).Text = Format(KSLLIST1.Description, "dd/mm/yyyy")
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Rs(0) = 0 Then
        'Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,quantity,grosswt,tarewt,NETWT,PLOTNO,COLORCODE from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Else
        Set arrrs = New Recordset
        arrrs.Open "select supcd,brkcd,areacode,varcode,cntcode,bbflag,passbl,grosswt/quantity*passbl,tarewt/quantity*passbl,(grosswt/quantity*passbl)-(tarewt/quantity*passbl),PLOTNO,COLORCODE from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    End If
    If arrrs.RecordCount <> 0 Then
        txtfields(26).Text = arrrs(0)
        txtfields(27).Text = arrrs(1)
        txtfields(28).Text = arrrs(2)
        'Txtvar.Text = arrrs(3)
        'Txtcnt.Text = arrrs(4)
        txtfields(29).Text = arrrs(3)
        txtfields(40).Text = arrrs("COLORCODE")
        txtfields(30).Text = arrrs(4)
        If arrrs(5) = "B" Then
            Option1.value = True
        ElseIf arrrs(5) = "R" Then
            Option2.value = True
        End If
        txtfields(22).Text = arrrs(6)
        txtfields(23).Text = arrrs(7)
        txtfields(24).Text = arrrs(8)
        txtfields(25).Text = arrrs(9)
        For I = 26 To 30
            txtfields(I).Locked = True
        Next
'        Txtvar.Locked = True
'        Txtcnt.Locked = True
        Option1.Enabled = False
        Option2.Enabled = False
        txtfields(22).SetFocus
    End If
End Select
Frame3.Visible = False


Exit Sub
Command6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command6_Click of Form Frmlotbale", vbInformation, head

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command7_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command8_Click()
On Error GoTo Command8_Click_Error

    Me.MousePointer = vbHourglass
    Call LotPrint(CStr(Format(MaskEdBox1(4).Text, "yyyy-mm-dd")), CStr(Format(MaskEdBox1(4).Text, "yyyy-mm-dd")), divname, CStr(txtfields(30).Text), CStr(txtfields(96).Text), CStr(txtfields(96).Text), "A")
    Me.MousePointer = vbNormal

Exit Sub
Command8_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command8_Click of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_CloseUp()
On Error GoTo DTPicker2_CloseUp_Error

MaskEdBox1(1).Text = DTPicker2.value
'MaskEdBox1(1).SetFocus

Exit Sub
DTPicker2_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_CloseUp of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_CloseUp()
On Error GoTo DTPicker1_CloseUp_Error

MaskEdBox1(3).Text = DTPicker1.value

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
    
End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  Opt = ""
  DATLAB.Caption = pdate
  SSTab1.Visible = True
  iFlag = 0
  tcsamt = 0
    Set Rs = New Recordset
   Rs.Open "SELECT isnull(Arrdespatch_Flg,'N') Arrdespatch_Flg ,isnull(MasterEntryFlg,'N') MasterEntryFlg FROM RM_PARAM", DB, adOpenStatic
   If Not Rs.EOF Then
        Arrdespatch_Flg = Rs("Arrdespatch_Flg")
        MasterEntryFlg = Rs("MasterEntryFlg")
        If Arrdespatch_Flg = "Y" Then
            Check1.Enabled = False
        Else
            Check1.Enabled = True
        End If
        
        If MasterEntryFlg = "Y" Then
            txtfields(13).Enabled = False
        Else
            txtfields(13).Enabled = True
        End If
   End If
  

  Set Rs = New Recordset
  Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
  If Not Rs.EOF Then
    If Rs(0) = "Y" Then
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

         IATaxCode = 47
         IATaxper = 48
         IATaxamt = 49
        
         IOthtaxPer = 50
         IothTaxamt = 51
         IRlyfrtper = 52
         IRlyfrtamt = 53
         IInsper = 54
         IInsamt = 55
         ICommper = 56
         ICommAMT = 57
         ILCper = 58
         ILCamt = 59
         Icharity = 60
         IOthTaxableAmt = 61
         IOthers = 62
         IcustomDuty = 63
         ILandedcost = 64
         IRateKG = 65
         ISICAAmt = 66

         iTrashPer = 67
         IContNum = 68
        IContdate = 69
       ' IDiscRate = 70
        IDiscAmt = 70
        itcsper = 71
        itcsamt = 72
        Ishipchrg = 73
        ITCS_AssValue = 74
        IIncidentCharge = 75
        ISpotExpense = 76
        ISupplierAssvalue = 77
        
         lblAddTax.Enabled = True
         txtfields(112).Enabled = True
         txtfields(113).Enabled = True
         txtfields(114).Enabled = True
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
        IRateKG = 62
        ISICAAmt = 63
        iTrashPer = 64
        IContNum = 65
        IContdate = 66
       'IDiscRate = 67
        IDiscAmt = 67
         itcsper = 68
         itcsamt = 69
         Ishipchrg = 70
         ITCS_AssValue = 71
          IIncidentCharge = 72
        ISpotExpense = 73
        ISupplierAssvalue = 74
        ' ICommWTAmt = 62
         lblAddTax.Enabled = False
         txtfields(112).Enabled = False
         txtfields(113).Enabled = False
         txtfields(114).Enabled = False
    End If
  
  End If
  
        Combo12.AddItem " "
        Combo12.AddItem "B-Per Bale"
        Combo12.AddItem "T-Per Truck"
        Combo12.ListIndex = 0
        
  intervalMinutes = -1
  Call query_mode
  Call AssignRoundoff
  intervalMinutes = -1

  If Opt = "mod" Then
  Command10.Visible = False
  End If
   
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Frmlotbale", vbInformation, head
End Sub
Private Sub AssignRoundoff()
    Dim RoffRs As Recordset
    Dim sQry As String
    sQry = vbNullString
    intervalMinutes = -1
    Set RoffRs = New Recordset
    sQry = " Select RLANDCOST_ROFF,RASSVAL_ROFF,RBED_ROFF,RAED_ROFF," & _
                " REDCESS_ROFF,RHSCESS_ROFF,RCESS_ROFF ,RTAX_ROFF ,RADDTAX_ROFF,RSURCHARGE_ROFF,RCGST_ROFF ,RSGST_ROFF,RIGST_ROFF,RTCS_ROFF,FDisc_ROFF,isnull(Rate_ROff ,4) Rate_ROff " & _
                " From  RM_PARAM "
                
     RoffRs.Open sQry, DB, adOpenStatic
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
            ATCS_ROFF = IIf(IsNull(RoffRs("RTCS_ROFF")), 2, RoffRs("RTCS_ROFF"))
            FDisc_ROFF = IIf(IsNull(RoffRs("FDisc_ROFF")), 2, RoffRs("FDisc_ROFF"))
            
            CandyRateRoff = IIf(IsNull(RoffRs("Rate_ROff")), 2, RoffRs("Rate_ROff"))
     End If

End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Opt = ""
  Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
Dim CNTRS As Recordset
'On Error GoTo adoPrimaryRS_MoveComplete_Error
intervalMinutes = -1

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
        ElseIf adoPrimaryRS("WeightFlg") = "C" Then
            OptCommercialWt = True
        Else
            optMILL = True
        End If
        
        txtfields(129).Text = IIf(IsNull(adoPrimaryRS("TCS_PER")), "", adoPrimaryRS("TCS_PER"))
        txtfields(128).Text = IIf(IsNull(adoPrimaryRS("TCS_AmT")), "", adoPrimaryRS("TCS_AmT"))
        If adoPrimaryRS("Tax_Choice") = "SINGLE" Then
            Option1.value = True
        Else
            Option2.value = True
        End If
        
        If adoPrimaryRS!dutyclaimable = "Y" Then optDCyes = True Else optDCNo = True
        If adoPrimaryRS!discountFlg = "Y" Then optAfter = True Else optBefore = True
        
         txtincidentcharge.Text = IIf(IsNull(adoPrimaryRS("lot_incidentcharge")), 0, adoPrimaryRS("lot_incidentcharge"))
         txtspotexpense.Text = IIf(IsNull(adoPrimaryRS("lot_spotexpense")), 0, adoPrimaryRS("lot_spotexpense"))
         
          If adoPrimaryRS!TypeTruckbale = "T" Then
            Combo12.ListIndex = 2
          ElseIf adoPrimaryRS!TypeTruckbale = "B" Then
            Combo12.ListIndex = 1
          Else
            Combo12.ListIndex = 0
          End If
         
        If rsb.RecordCount > 1 Then
                If adoPrimaryRS("TAX_CHOICE") <> "SINGLE" Then
                        Call DisplayVal
                 End If
        Else
                Call DisplayVal
        End If
        
        If rsb.RecordCount > 0 Then
            MaskEdBox1(4).Text = rsb("arrdate")
            txtfields(41).Text = IIf(IsNull(rsb("GCNO")), "", rsb("gcno"))
            txtfields(40).Text = rsb("LORRYNOS")
            txtfields(38).Text = rsb("AREACODE")
            txtremarks.Text = IIf(IsNull(rsb("REMARKS")), "", rsb("REMARKS"))
            txtfields(27).Text = Trim(rsb("weignment"))
            
            Set LABRS = New Recordset
            LABRS.Open "SELECT *  FROM RM_area  WHERE areacode='" & adoPrimaryRS("areacd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If LABRS.RecordCount > 0 Then
                    txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    Text20.Text = LABRS("AREANAME")
            Else
                     txtfields(92).Text = ""
                     txtfields(93).Text = ""
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
            
             
            txtfields(27).Text = rsb("weignment")
            If Not IsNull(rsb("weightdate")) Then
                MaskEdBox1(0).Text = rsb("weightdate")
            End If
            'for delivery type
                        
            Set rsF = New Recordset
            rsF.Open "SELECT * FROM RM_god WHERE GCODE='" & adoPrimaryRS("GODOWN") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
            If rsF.RecordCount > 0 Then
                Text8.Text = rsF("GNAME")
            Else
                Text8.Text = " "
            End If
            '',PJTC,PTYPE
            Set rs4 = New Recordset
            rs4.Open "SELECT * FROM RM_PURTYPE WHERE PURTYPE='" & adoPrimaryRS("PTYPE") & "'", DB, adOpenStatic
            If rs4.RecordCount > 0 Then
                txtfields(303).Text = rs4("PURDESC")
            Else
                txtfields(303).Text = " "
            End If
            
            Set rs5 = New Recordset
            rs5.Open "SELECT * FROM FA_TCMAS WHERE TC='" & IIf(IsNull(adoPrimaryRS("PJTC")), 0, adoPrimaryRS("PJTC")) & "'", DB, adOpenStatic
            
            If rs5.RecordCount > 0 Then
                txtfields(301).Text = rs5("TCHEAD")
            Else
                txtfields(301).Text = " "
            End If
            MaskEdBox1(4).Text = adoPrimaryRS("arrdt")
            If Not (IsNull(adoPrimaryRS("inwarddate"))) Then
                MaskEdBox1(5).Text = adoPrimaryRS("inwarddate")
            End If
            If Not (IsNull(adoPrimaryRS("DPDocDate"))) Then
                MaskEdBox1(6).Text = adoPrimaryRS("DPDocDate")
            End If
            
            txtfields(111).Text = Format(adoPrimaryRS("OtherTaxableAmt"), "0.00")
            Call Lotdisplay
        End If
    End If
    End If
    End If
    iFlag = 1
End If
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

'Assigning Values from adoprimaryrs Recordset to txtfields
Public Sub bindcontls()
On Error Resume Next
    For Each oText In Me.txtfields
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
    
    If IsNull(adoPrimaryRS("DPDocDate")) = False Then
        MaskEdBox1(6).Text = Format(adoPrimaryRS("DPDocDate"), "dd/mm/yyyy")
    Else
        MaskEdBox1(6).Text = "__/__/____"
    End If

    MaskEdBox1(5).DataField = adoPrimaryRS("inwarddate")
    MaskEdBox1(4).DataField = adoPrimaryRS("arrdt")
    MaskEdBox1(3).DataField = adoPrimaryRS("lotdt")
    MaskEdBox1(2).DataField = adoPrimaryRS("billdt")
     
        txtfields(129).Text = IIf(IsNull(adoPrimaryRS("TCS_PER")), "", adoPrimaryRS("TCS_PER"))
        txtfields(128).Text = IIf(IsNull(adoPrimaryRS("TCS_AmT")), "", adoPrimaryRS("TCS_AmT"))
   ' MaskEdBox1(0).DataField = adoPrimaryRS("plotdt") ''19.10.17
    'Set MaskEdBox1(0).DataSource = adoPrimaryRS ''19.10.17
'    Set MaskEdBox1(5).DataSource = adoPrimaryRS
'    Set MaskEdBox1(4).DataSource = adoPrimaryRS
'    Set MaskEdBox1(1).DataSource = adoPrimaryRS
'    Set MaskEdBox1(2).DataSource = adoPrimaryRS
'    Set MaskEdBox1(3).DataSource = adoPrimaryRS
    ''Set MaskEdBox1(2).DataSource = adoPrimaryRS
    'DTPicker2.MaxDate = pdate
    'DTPicker2.MinDate = yfdate
    If IsNull(adoPrimaryRS("inwardno")) = False Or adoPrimaryRS("inwardno") = "" Then '
        txtfields(108).Text = adoPrimaryRS("inwardno")
    Else
        txtfields(108).Text = ""
    End If
    If IsNull(adoPrimaryRS("arrdt")) = False Or adoPrimaryRS("arrdt") = "" Then
        MaskEdBox1(4).Text = Format(adoPrimaryRS("arrdt"), "dd/mm/yyyy")
    End If
'    If IsNull(adoPrimaryRS("plotdt")) = False Or adoPrimaryRS("plotdt") = "" Then ''' 19.10.17
'        MaskEdBox1(0).Text = Format(adoPrimaryRS("plotdt"), "dd/mm/yyyy")
'    End If
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
Dim I As Integer

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
Dim I As Integer
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

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)
On Error Resume Next

Dim dblRow As Double
Dim iCount As Integer


''To avoid Party bale no duplication

If Opt = "add" Or Opt = "mod" Then
    If ColIndex = 15 Then
         Set rsg = New Recordset
         Set rsg.DataSource = ADOSECONDARYRS

         PBNO = grddatagrid.Columns(15).Text
         crow = ADOSECONDARYRS.AbsolutePosition
'         CROW = grddatagrid.Row
         dblRow = val(grddatagrid.Columns(15).Text)
         dblRow1 = dblRow - 1
         dblRow = dblRow - 1
         cnt = 0
         opt1 = Opt
         Opt = ""
         
         rsg.MoveFirst
         I = 0
         While Not rsg.EOF
             I = I + 1
            If I >= crow Then
                dblRow = dblRow + 1
                If PBNO = rsg("Partybaleno") Then
                    cnt = cnt + 1
                End If
                If UCase(Trim(CustID)) <> "VTS" Then
                    grddatagrid.Columns(15).Text = dblRow
                End If

                cnt = cnt + 1
            End If

            rsg.MoveNext
         Wend
         

         rsg.MoveFirst
         If ADOSECONDARYRS.RecordCount = crow Then
            BUTTON(9).SetFocus
         Else
            rsg.Move (crow)
         End If

         Opt = opt1

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

If grddatagrid.Col = 3 Or grddatagrid.Col = 5 Or grddatagrid.Col = 6 Or grddatagrid.Col = 4 Or grddatagrid.Col = 12 Or grddatagrid.Col = 13 Or grddatagrid.Col = 10 Or grddatagrid.Col = 11 Or grddatagrid.Col = 18 Then
    a = 0
    B = 0
    c = 0
    d = 0
    D1 = 0
    e = 0
    f = 0
    g = 0
    ComWt = 0
    row_save = ADOSECONDARYRS.AbsolutePosition
    ADOSECONDARYRS.MoveFirst
    Do While Not ADOSECONDARYRS.EOF
        a = a + ADOSECONDARYRS("grwt")
        B = B + ADOSECONDARYRS("TareWt")
        d = d + ADOSECONDARYRS("moisture_et")
        D1 = D1 + ADOSECONDARYRS("trash_et")
'        C = C + adoSecondaryRS("NetWt")
        c = c + val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
        ComWttot = ComWttot + val(grddatagrid.Columns("Commercial Wt."))
        If Opt = "add" Then
            e = e + ADOSECONDARYRS("pgrswt")
            f = f + val(ADOSECONDARYRS("ptarewt") & "")
    '        g = g + adoSecondaryRS("pnetwt")
            g = g + val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
            grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
        ElseIf Opt = "mod" Then
            e = e + ADOSECONDARYRS("pgrswt")
            f = f + ADOSECONDARYRS("ptarewt")
            g = g + val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
            grddatagrid.Columns(12).Text = val(grddatagrid.Columns(10).Text) - val(grddatagrid.Columns(11).Text)
        End If
        ADOSECONDARYRS.MoveNext
    Loop
        Text5 = Format(a, "0.000")
        Text6 = Format(B, "0.000")
        Text7 = Format(d, "0.000")
      '  Text7 = Format(d, "0.000")
        Text16 = Format(D1, "0.000")
        Text11 = Format(c, "0.000")
        Text15 = Format(e, "0.000")
        Text14 = Format(f, "0.000")
        Text13 = Format(g, "0.000")
        Text19 = Format(ComWttot, "0.000")
        
        
        ADOSECONDARYRS.MoveFirst
        For I = 1 To row_save
            ADOSECONDARYRS.MoveNext
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

    GG = IIf(IsNull(ADOSECONDARYRS(3)), 0, ADOSECONDARYRS(3))
    GT = IIf(IsNull(ADOSECONDARYRS(4)), 0, ADOSECONDARYRS(4))

Exit Sub
grdDataGrid_BeforeColEdit_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_BeforeColEdit of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_Click()
On Error GoTo grddatagrid_Click_Error

If Opt = "add" Then
If ADOSECONDARYRS.AbsolutePosition > W Then
'adoSecondaryRS.Delete
End If
End If

Exit Sub
grddatagrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

    If Opt = "add" And KeyCode = 13 Then
        If UCase(Trim(CustID)) <> "VTS" Then
            SendKeys ("{TAB}")
        End If
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error

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
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub grdDataGrid_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
End Sub

Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)

'If grdDataGrid.Col = 5 And Not adoSecondaryRS.RecordCount = Val(txtFields(22)) And adoSecondaryRS.AbsolutePosition <= adoSecondaryRS.RecordCount Then
On Error GoTo GRDDATAGRID_RowColChange_Error

If (grddatagrid.Col = 5 Or grddatagrid.Col = 6) And ADOSECONDARYRS.RecordCount = val(txtfields(22)) Then
   ' col2t = grddatagrid.Columns(4).Text
'''    adoSecondaryRS.AddNew
   ' grddatagrid.Columns(2).Text = grddatagrid.ApproxCount
   ' grddatagrid.Columns(4).Text = col2t
    grddatagrid.Col = 3
    grddatagrid.SetFocus
ElseIf ADOSECONDARYRS.RecordCount = val(txtfields(22)) And grddatagrid.Col = 6 And ADOSECONDARYRS.AbsolutePosition = ADOSECONDARYRS.RecordCount Then
    If val(Text5) <> val(txtfields(23)) And val(Text6) <> val(txtfields(24)) And val(Text6) <> val(txtfields(25)) Then
        MsgBox "Gross Weight(Total),Tare Weight(Total),Nett Weight(Total) do not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        txtfields(24).Locked = False
        txtfields(22).Locked = False
        txtfields(23).Locked = False
    ElseIf val(Text5) <> val(txtfields(23)) Then
        MsgBox "Gross Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        txtfields(24).Locked = False
        txtfields(22).Locked = False
        txtfields(23).Locked = False
    ElseIf val(Text6) <> val(txtfields(24)) Then
        MsgBox "Tare Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        txtfields(24).Locked = False
        txtfields(22).Locked = False
        txtfields(23).Locked = False
    ElseIf val(Text7) + (Text16) <> val(txtfields(25)) Then
        MsgBox "Nett Weight(Total) does not Tally", vbInformation, head
        grddatagrid.AllowAddNew = False
        grddatagrid.AllowUpdate = True
        grddatagrid.AllowDelete = True
        grddatagrid.Row = 1
        grddatagrid.SetFocus
        txtfields(24).Locked = False
        txtfields(22).Locked = False
        txtfields(23).Locked = False
    End If
End If

If grddatagrid.Col = 14 And ADOSECONDARYRS.RecordCount = ADOSECONDARYRS.AbsolutePosition Then
       BUTTON(9).SetFocus
       Exit Sub
End If


Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form Frmlotbale", vbInformation, head
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
'On Error GoTo MaskEdBox1_Change_Error

    

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_KeyDown of Form Frmlotbale", vbInformation, head
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
        MaskEdBox1(0).Text = txtfields(102).Text
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form Frmlotbale", vbInformation, head
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
    txtfields(109).Enabled = False
    lblDutyPer.Enabled = False
    txtfields(109).Text = "0.00"
Else
    txtfields(109).Enabled = True
    lblDutyPer.Enabled = True
    txtfields(109).Text = "100.00"
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
    txtfields(109).Enabled = False
    lblDutyPer.Enabled = False
    txtfields(109).Text = "0.00"
Else
    txtfields(109).Enabled = True
    lblDutyPer.Enabled = True
    txtfields(109).Text = "100.00"
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

    userFooter.ClearFooter
    userFooter.Visible = True
    userFooter.Load
    Command7.Visible = True

Exit Sub
Option6_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    userFooter.ClearFooter
    userFooter.Visible = False
    Command7.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame15.Visible = True Then
        Command7.Visible = False
        Frame15.Visible = False
        userFooter.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub optMILL_Click()

    If optSUPPLIER = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
    ElseIf OptCommercialWt = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
    Else
        txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
    End If
    If Check1.value Then
     txtfields(123).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
    
    End If

End Sub
Private Sub OptCommercialWt_Click()

    If optSUPPLIER = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
    ElseIf OptCommercialWt = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
        Check1.value = 1
    Else
        txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
    End If
    If Check1.value Then
        txtfields(123).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
    
    End If

End Sub
Private Sub optSUPPLIER_Click()
    
    If optSUPPLIER = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
    ElseIf OptCommercialWt = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
         Check1.value = 1
    Else
        txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
    End If
    If Check1.value Then
        txtfields(123).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
    End If

End Sub

Private Sub spdVar_Change(ByVal Col As Long, ByVal Row As Long)
On Error GoTo spdVar_Change_Error

If (Opt = "add" Or Opt = "mod") Then
    If Option1 = True Then
        If Col = ITaxCode Then
        
            Set Rs = New Recordset
            Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, ITaxCode, Row) & "'", DB, adOpenStatic
            If Rs.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = " select tax_code""Taxcode"",description""Description"",st_per""Percentage"" from ig_tax where taxstatus='Y'"
                LookUp.Caption = "Tax Details List"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1200,3500,1500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    spdVar.SetText ITaxCode, Row, CStr(LookUp.Fields(0))
                    spdVar.SetText ITaxper, Row, CStr(LookUp.Fields(2))
                    LookUp.Clear = True
                    Set Rs = New Recordset
                    Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                    If Rs(0) = "Y" Then
                        spdVar.SetActiveCell IATaxCode, Row
                    Else
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                Else
                    spdVar.SetText ITaxCode, Row, CStr("")
                    spdVar.SetText ITaxper, Row, CStr("")
                    spdVar.SetText ITaxamt, Row, CStr("0")
                    Set Rs = New Recordset
                    Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                    If Rs(0) = "Y" Then
                        spdVar.SetActiveCell IATaxCode, Row
                    Else
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                End If
            Else
                spdVar.SetText ITaxper, Row, CStr(Rs("ST_PER"))
                Set Rs = New Recordset
                Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
                If Rs(0) = "Y" Then
                    spdVar.SetActiveCell IATaxCode, Row
                Else
                    spdVar.SetActiveCell IOthtaxPer, Row
                End If
            End If
        End If
        
        Set Rs = New Recordset
        Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
        If Rs(0) = "Y" Then
            If Col = IATaxCode Then
                Set Rs = New Recordset
                Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, IATaxCode, Row) & "'", DB, adOpenStatic
                If Rs.RecordCount = 0 Then
                    LookUp.Clear = True
                    LookUp.query = " select tax_code""Taxcode"",description""Description"",st_per""Percentage"" from ig_tax where taxstatus='Y'"
                    LookUp.Caption = "Tax Details List"
                    LookUp.DefCol = ""
                    LookUp.ALIGN = "1200,3500,1500"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        spdVar.SetText IATaxCode, Row, CStr(LookUp.Fields(0))
                        spdVar.SetText IATaxper, Row, CStr(LookUp.Fields(2))
                        txtfields(114).Text = CStr(LookUp.Fields(0))
                        txtfields(112).Text = CStr(LookUp.Fields(2))
                               
                        LookUp.Clear = True
                        spdVar.SetActiveCell IOthtaxPer, Row
                    Else
                        spdVar.SetText IATaxCode, Row, CStr("")
                        spdVar.SetText IATaxper, Row, CStr("")
                        spdVar.SetText IATaxamt, Row, CStr("0")
                        txtfields(114).Text = ""
                        txtfields(112).Text = 0
                        
                        spdVar.SetActiveCell IOthtaxPer, Row
                    End If
                Else
                    spdVar.SetText IATaxper, Row, CStr(Rs("ST_PER"))
                    spdVar.SetActiveCell IOthtaxPer, Row
                End If
            End If
        End If
    End If
End If

If Col = 62 Then
   If Check1.value = 1 Or Check1.value = True Then
        txtfields(5).Text = Format(val(GetText(spdVar, 62, Row)), "0.000")
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_Change of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_GotFocus of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub spdVar_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo spdVar_KeyDown_Error



                    If KeyCode = vbKeyF5 Then
                    
                      
                                FbDisRate = 0
                                FBDisvalue = 0
                                FrameDiscType.Visible = True
                                FrameDiscType.ZOrder
                                Call SETDISCTYPEHead
                                Set Rs = New Recordset
                                If Opt = "add" Then
                                Rs.Open "SELECT * from RM_ContDiscntRate  a  INNER JOIN RM_CONT B ON A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE  left join RM_DiscountType C on a.dtype=C.code where  (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and im_ind='I'))) AND A.Varcode='" & Trim(GetText(spdVar, IVarcode, spdVar.ActiveRow)) & "' and A.contno='" & val(GetText(spdVar, IContNum, spdVar.ActiveRow)) & "'  and A.Contdt='" & Format(GetText(spdVar, IContdate, spdVar.ActiveRow), "yyyy-mm-dd") & "' and isnull(RPTFLG,'N')='N' and A.supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
                                Else
                                Rs.Open "SELECT * from RM_LotDiscntRate   a left join RM_DiscountType b on a.dtype=b.code where Varcode='" & Trim(GetText(spdVar, IVarcode, spdVar.ActiveRow)) & "' and lotno='" & val(GetText(spdVar, ILotNo, spdVar.ActiveRow)) & "' and ContNo='" & val(GetText(spdVar, IContNum, spdVar.ActiveRow)) & "' and Contdt='" & Format(GetText(spdVar, IContdate, spdVar.ActiveRow), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "'  and a.divcode='" & Divcode & "' ", DB, adOpenStatic
                                End If
                                 r1 = 0
                                  With SPDDiscTypeDet
                                     If Not Rs.EOF Then
                                         For I = 0 To Rs.RecordCount
                                            If Not Rs.EOF Then
                                               r1 = r1 + 1
                                               .MaxRows = r1
                                                   .SetText SPDDTSNO, r1, r1
                                                   .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
                                                   .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
                                                   .SetText SPDDTDocno, r1, Rs.Fields("docno")
                                                   .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
                                                   .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                                                   .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                                                   .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                                                   .SetText SPDDTDRate, r1, Rs.Fields("DRate")
                                                   If Opt = "add" Or Opt = "mod" Then
                                                    If Check1.value = 1 Then
                                                        .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, spdVar.ActiveRow)), "00.00")
                                                    Else
                                                        If optMILL = True Then
                                                             .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Imnetwt, spdVar.ActiveRow)), "00.00")
                                                        ElseIf OptCommercialWt = True Then
                                                             .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, spdVar.ActiveRow)), "00.00")
                                                        Else
                                                        
                                                             .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Ipnetwt, spdVar.ActiveRow)), "00.00")
                                                        End If
                                                     End If
                                                   Else
                                                        .SetText SPDDTDValue, r1, Rs.Fields("Disc_Amt")
                                                   End If
                                                    FbDisRate = FbDisRate + val(Rs.Fields("DRate") & "")
                                                    FBDisvalue = FBDisvalue + val(GetText(SPDDiscTypeDet, SPDDTDValue, r1) & "")
                                                   
                                              Rs.MoveNext
                                              End If
                                           
                                          Next
                                     
                              
                                   End If

                              End With
                              FrameDiscType.Visible = True

                                txtfields(126).Text = Format(FbDisRate, "00.00")
                                txtfields(127).Text = Format(KSLRound(val(FBDisvalue), FDisc_ROFF), "00.00")

                               Exit Sub
                     
                                
                         
                    
                    End If


Exit Sub
spdVar_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_KeyPress(KeyAscii As Integer)
On Error GoTo spdVar_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    If spdVar.Col = 16 And spdVar.MaxRows = spdVar.ActiveRow Then
        StatusBar1.Panels(2).Text = "Press Enter Key for go to next tab (Proforma Invoice)"

        If KeyAscii = 13 Or KeyAscii = 9 Then
            SSTab1.Tab = 1
            txtfields(3).SetFocus
            Exit Sub
         End If
         
         
     End If
Else
    KeyAscii = 0
End If

Exit Sub
spdVar_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub spdVar_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)

'On Error GoTo spdVar_LeaveCell_Error

If Opt = "add" Or Opt = "mod" Then
        txtfields(123).Enabled = False
        If val(txtfields(124).Text) = 0 Then
            txtfields(124).Text = 1
        End If

               
        'If Col = IRatekg And spdVar.MaxRows = spdVar.ActiveRow Then
            'SSTab1.Tab = 1
            ''txtfields(3).SetFocus
           ' Exit Sub
       ' End If
        
        If Col = ICommWTAmt And Opt = "mod" Then
'            MsgBox "hai"
                Set ADOSECONDARYRS = New Recordset
                ADOSECONDARYRS.Open " SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT,Comm_Wt,MOITURE  FROM RM_BALE" & _
                               " where lottype = 'A'  and arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    '            Set adoSecondaryRS1 = New Recordset
    '            adoSecondaryRS1.Open " SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT," & val(GetText(spdVar, ICommWTAmt, Row)) / adoSecondaryRS.RecordCount & " as Comm_Wt,MOITURE  FROM RM_BALE" & _
    '                           " where lottype = 'A'  and arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
    '        Set grdDataGrid.DataSource = adoSecondaryRS1
            On Error Resume Next
            For aa = 0 To grddatagrid.ApproxCount - 1
                grddatagrid.Row = aa
                grddatagrid.Columns(18).Text = val(GetText(spdVar, ICommWTAmt, Row)) / ADOSECONDARYRS.RecordCount
            Next aa
        
'        Call gridalign
        End If
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
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & GetText(spdVar, ITaxCode, Row) & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
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
            Set Rs = New Recordset
            Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
            If Rs(0) = "Y" Then
                spdVar.SetActiveCell IATaxCode, Row
            Else
                spdVar.SetActiveCell IOthtaxPer, Row
            End If
            ''End If
    Else
        spdVar.SetText ITaxper, Row, CStr(Rs("ST_PER"))
        Set Rs = New Recordset
        Rs.Open "Select AddtaxRequired from rm_param", DB, adOpenStatic
        If Rs(0) = "Y" Then
            spdVar.SetActiveCell IATaxCode, Row
        Else
            spdVar.SetActiveCell IOthtaxPer, Row
        End If
        End If
End If


If Opt = "add" Or Opt = "mod" Then
        
               
         
         
         
        FbDisRate = 0
        FBDisvalue = 0
                           
        Call SETDISCTYPEHead
        Set Rs = New Recordset
        If Opt = "add" Then
            Rs.Open "SELECT * from RM_ContDiscntRate  a  INNER JOIN RM_CONT B ON A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE  left join RM_DiscountType C on a.dtype=C.code where  (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and im_ind='I'))) AND A.Varcode='" & Trim(GetText(spdVar, IVarcode, spdVar.ActiveRow)) & "' and A.contno='" & val(GetText(spdVar, IContNum, spdVar.ActiveRow)) & "'  and A.Contdt='" & Format(GetText(spdVar, IContdate, spdVar.ActiveRow), "yyyy-mm-dd") & "' and isnull(RPTFLG,'N')='N' and A.supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
        Else
            Rs.Open "SELECT * from RM_LotDiscntRate   a left join RM_DiscountType b on a.dtype=b.code where Varcode='" & Trim(GetText(spdVar, IVarcode, spdVar.ActiveRow)) & "' and lotno=" & val(GetText(spdVar, ILotNo, spdVar.ActiveRow)) & " and ContNo='" & val(GetText(spdVar, IContNum, spdVar.ActiveRow)) & "' and Contdt='" & Format(GetText(spdVar, IContdate, spdVar.ActiveRow), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "'  and a.divcode='" & Divcode & "' ", DB, adOpenStatic
        End If
        r1 = 0
        With SPDDiscTypeDet
            If Not Rs.EOF Then
                For I = 0 To Rs.RecordCount
                    If Not Rs.EOF Then
                        r1 = r1 + 1
                        .MaxRows = r1
                        .SetText SPDDTSNO, r1, r1
                        .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
                        .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
                        .SetText SPDDTDocno, r1, Rs.Fields("docno")
                        .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
                        .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                        .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                        .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                        .SetText SPDDTDRate, r1, Rs.Fields("DRate")
                        If Opt = "add" Or Opt = "mod" Then
                            If Check1.value = 1 Then
                                .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, Row)), "00.00")
                            Else
                                If optMILL = True Then
                                 .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Imnetwt, Row)), "00.00")
                                ElseIf OptCommercialWt = True Then
                                 .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, Row)), "00.00")
                                Else
                                 .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Ipnetwt, Row)), "00.00")
                                End If
                           End If
                        Else
                            .SetText SPDDTDValue, r1, Rs.Fields("Disc_Amt")
                        End If
                        FbDisRate = FbDisRate + val(Rs.Fields("DRate") & "")
                        FBDisvalue = FBDisvalue + val(GetText(SPDDiscTypeDet, SPDDTDValue, r1) & "")
                                                   
                        Rs.MoveNext
                    End If
                Next
              End If
          End With
        ' spdVar.SetText IDiscRate, Row, Format(FbDisRate, "00.00")
         spdVar.SetText IDiscAmt, Row, Format(KSLRound(val(FBDisvalue), FDisc_ROFF), "00.00")
         txtfields(126).Text = Format(FbDisRate, "00.00")
         txtfields(127).Text = Format(KSLRound(val(FBDisvalue), FDisc_ROFF), "00.00")
                           

    
    If Option2.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select CentralizedOrder,AssessValueFlg from RM_PARAM", DB, adOpenStatic
        If globalarrivalorder = "C" Then
            Set RSV = New Recordset
            RSV.Open "select contno,contdt from rm_arrival where arrno=" & txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and supcd='" & Trim(txtfields(30).Text) & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic
            Else
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
            End If
        Else
            Set RSV = New Recordset
            RSV.Open "select contno,contdt from rm_arrival where arrno=" & txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            
            If Rs(0) <> "Y" Then
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            Else
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
            End If
        End If
        If rsF.RecordCount > 0 Then
            deltype = rsF("DLYTYPE")
        Else
            deltype = ""
        End If
     
        Set rsr = New Recordset
        rsr.Open "select value from rm_rateunit where unitname='" & rsF("rateunit") & "'", DB, adOpenStatic
        v1 = Ipjamt

        If Check1.value = 0 Then
'        If Rs(1) = "S" Then

            If optSUPPLIER = True Then
                v2 = Ipnetwt
            ElseIf OptCommercialWt = True Then
                v2 = ICommWTAmt
'        Else
            Else
                v2 = Imnetwt
            End If
'        End If
        Else
            v2 = ICommWTAmt
        End If
        
        
        v3 = Icandyrate
        v4 = IRebate
        
       ' If Check1.value = 0 Then
        dSuppNetWt = 0
        dCommNetWt = 0
            If optSUPPLIER = True Then
                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, Row))
            ElseIf OptCommercialWt = True Then
                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, ICommWTAmt, Row))
            Else
                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, Row))
            End If
       ' Else
            ' dSuppNetWt = dSuppNetWt + val(GetText(spdVar, ICommWTAmt, Row))
       ' End If
       If Check1.value = 1 Then
            dCommNetWt = dCommNetWt + val(GetText(spdVar, ICommWTAmt, Row))
       End If
       
        
        txtfields(6).Text = 0
        txtfields(5).Text = 0
        txtfields(115).Text = 0
        txtfields(123).Text = 0
        pinvvalue = 0
            For I = 1 To spdVar.MaxRows
                If Col = IRebate Then
                    If (val(GetText(spdVar, v2, I)) * (val(GetText(spdVar, v3, I)) / rsr("value"))) < val(GetText(spdVar, v4, I)) Then
                        spdVar.SetText IRebate, Row, "0.00"
                        MsgBox "Please enter Rebate value below " & Format(val(GetText(spdVar, v2, I)) * (val(GetText(spdVar, v3, I)) / rsr("value")), "0.00"), vbInformation, head
                    Exit Sub
                    End If
                End If
    
                If rsr.EOF = False Then
                    Assvalue = val(GetText(spdVar, v2, I)) * KSLRound((((val(GetText(spdVar, v3, I)) / rsr("value")) - val(GetText(spdVar, v4, I)))), CandyRateRoff)
                    Assvalue = Assvalue * val(txtfields(124).Text)
                    Assvalue = KSLRound(val(Assvalue), ASSVAL_ROFF)
                    
                    
                    supAssvalue = val(GetText(spdVar, Ipnetwt, I)) * KSLRound((((val(GetText(spdVar, v3, I)) / rsr("value")) - val(GetText(spdVar, v4, I)))), CandyRateRoff)
           
                    spdVar.SetText ISupplierAssvalue, Row, CStr(supAssvalue)
                        
                    'dSuppNetWt
                Else
                    Assvalue = 0
                End If
                pinvvalue = pinvvalue + val(GetText(spdVar, Ipinvval, I))
                txtfields(115).Text = Format(pinvvalue, "0.000")
                txtfields(6).Text = Format(val(txtfields(6).Text) + Assvalue, "00.00")
                txtfields(5).Text = Format(dSuppNetWt, "0.000")
                If Check1.value Then
                 txtfields(123).Text = Format(dCommNetWt, "0.000")
                End If
                 
                'Txtfields(5).Text = val(Txtfields(5).Text) + val(GetText(spdVar, v2, i))
            Next
        ''Assvalue = Round(val(GetText(spdVar, v2, row)) * (val(GetText(spdVar, v3, row)) / rsr("value")) - val(GetText(spdVar, v4, row)), 4)

        Call TXTFIELDS_Validate(53, False)
        Call TXTFIELDS_Validate(84, False)
        Call TXTFIELDS_Validate(7, False)
        Call TXTFIELDS_Validate(43, False)
        Call TXTFIELDS_Validate(45, False)
        
        If txtfields(83).Text <> "" Then
            Call TXTFIELDS_Validate(83, False)
        End If
        Call TXTFIELDS_Validate(51, False)
        Call TXTFIELDS_Validate(10, False)
        Call TXTFIELDS_Validate(51, False)
                
        Call txtfields_LostFocus(17)
    End If
    
    
     
         
         
    
    If Option1.value = True Then
        Set Rs = New Recordset
        Rs.Open "Select CentralizedOrder,AssessValueFlg From rm_param", DB, adOpenStatic

        Set RSV = New Recordset
        'If globalarrivalorder = "C" Then
           ' RSV.Open "select contno,contdt from rm_arrival where arrno=" & txtFields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
       ' Else
            RSV.Open "select contno,contdt from rm_arrival where arrno=" & txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
        'End If
        
           If globalarrivalorder = "C" Then
            If Rs(0) <> "Y" Then
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
            Else
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "'  and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
            End If
        Else
            If Rs(0) <> "Y" Then
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "'  and supcd='" & Trim(txtfields(30).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            Else
                Set rsF = New Recordset
                rsF.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "'  and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
            End If
        End If
'        Set rsf = New Recordset
'        'rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
'        rsf.Open "select DLYTYPE,rateunit from rm_cont where contno='" & RSV("contno") & "' and contdt='" & Format(RSV("contdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        If rsF.RecordCount > 0 Then
            deltype = rsF("DLYTYPE")
        Else
            deltype = ""
        End If
    
        Set rsr = New Recordset
        rsr.Open "select value from rm_rateunit where unitname='" & rsF("rateunit") & "'", DB, adOpenStatic
        v1 = Ipjamt
        If Check1.value = 0 Then
            If optSUPPLIER = True Then
               v2 = Ipnetwt
            ElseIf OptCommercialWt = True Then
               v2 = ICommWTAmt
            Else
               v2 = Imnetwt
            End If
        Else
            v2 = ICommWTAmt
        End If
        v3 = Icandyrate
        v4 = IRebate
      '  If Check1.value = 0 Then
'            If optSUPPLIER = True Then
'                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, Row))
'            ElseIf OptCommercialWt = True Then
'                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, ICommWTAmt, Row))
'            Else
'                dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, Row))
'            End If
'        Else
'            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, ICommWTAmt, Row))
'        End If
        
        txtfields(5).Text = Format(dSuppNetWt, "0.000")
        If Check1.value Then
            txtfields(123).Text = Format(val(dCommNetWt), "0.000")
        Else
        txtfields(123).Text = 0
        spdVar.SetText ICommWTAmt, Row, 0
        End If
        
        If CustID = "COTTON1" Then
            If deltype = "F" Then
                If rsr.EOF = False Then
                    NoofQty = KSLRound(val(GetText(spdVar, v2, Row)) / rsr("value"), 3)
                    Assvalue = NoofQty * (val(GetText(spdVar, v3, Row)) * 100) / (100 + val(GetText(spdVar, ITaxper, Row)) + val(GetText(spdVar, IBedper, Row)) + val(GetText(spdVar, IEdper, Row))) '+ val(GetText(spdVar, ICGSTPER, Row)) + val(GetText(spdVar, ISGSTPER, Row)) + val(GetText(spdVar, IIGSTPER, Row)))
                    Assvalue = Assvalue * val(txtfields(124).Text)
                    
                    
                        supAssvalue = (KSLRound(val(GetText(spdVar, Ipnetwt, Row)) / rsr("value"), 3)) * (val(GetText(spdVar, v3, Row)) * 100) / (100 + val(GetText(spdVar, ITaxper, Row)) + val(GetText(spdVar, IBedper, Row)) + val(GetText(spdVar, IEdper, Row)))
                        supAssvalue = supAssvalue * val(txtfields(124).Text)
                       
                
                End If
                spdVar.SetText Ipjamt, Row, CStr(Assvalue)
                 spdVar.SetText ISupplierAssvalue, Row, CStr(supAssvalue)
                 
                v1 = Icashdisper
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    CashDisamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                    spdVar.SetText Icashdisamt, Row, CStr(CashDisamt)
                Else
                    v1 = Icashdisamt
                    CashDisamt = val(GetText(spdVar, v1, Row))
                End If
            Else
                If rsr.EOF = False Then Assvalue = KSLRound((val(GetText(spdVar, v2, Row)) * (val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), ASSVAL_ROFF)
                Assvalue = Assvalue * val(txtfields(124).Text)
                Assvalue = KSLRound(val(Assvalue), ASSVAL_ROFF)
                spdVar.SetText Ipjamt, Row, CStr(Assvalue)
                
                
                supAssvalue = KSLRound((val(GetText(spdVar, Ipnetwt, Row)) * (val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), ASSVAL_ROFF)
                supAssvalue = supAssvalue * val(txtfields(124).Text)
                supAssvalue = KSLRound(val(supAssvalue), ASSVAL_ROFF)
                spdVar.SetText ISupplierAssvalue, Row, CStr(supAssvalue)
             
             
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
            If rsr.EOF = False Then Assvalue = val(GetText(spdVar, v2, Row)) * KSLRound(((val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), CandyRateRoff)
            Assvalue = Assvalue * val(txtfields(124).Text)
            Assvalue = KSLRound(val(Assvalue), ASSVAL_ROFF)
            spdVar.SetText Ipjamt, Row, CStr(Assvalue)
            v1 = Icashdisper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                CashDisamt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                spdVar.SetText Icashdisamt, Row, CStr(CashDisamt)
            Else
                v1 = Icashdisamt
                CashDisamt = val(GetText(spdVar, v1, Row))
            End If
            
            supAssvalue = val(GetText(spdVar, Ipnetwt, Row)) * KSLRound(((val(GetText(spdVar, v3, Row)) / rsr("value"))) - val(GetText(spdVar, v4, Row)), CandyRateRoff)
            supAssvalue = supAssvalue * val(txtfields(124).Text)
            supAssvalue = KSLRound(val(supAssvalue), ASSVAL_ROFF)
            spdVar.SetText ISupplierAssvalue, Row, CStr(supAssvalue)
            
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
            EDAMT = KSLRound(val(Bed) * val(GetText(spdVar, v1, Row)) / 100, EDCESS_ROFF)
            spdVar.SetText IEdamt, Row, CStr(EDAMT)
        Else
            v1 = IEdamt
            EDAMT = val(GetText(spdVar, v1, Row))
        End If
        
        v1 = IHscessper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            hscessAMT = 0
            hscessAMT = KSLRound(val(Bed) * val(GetText(spdVar, v1, Row)) / 100, HSCESS_ROFF)
            spdVar.SetText IHscessamt, Row, CStr(hscessAMT)
        Else
            v1 = IHscessamt
            hscessAMT = val(GetText(spdVar, IHscessamt, Row))
        End If
        
        v1 = IDiscRate
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            FibDiscamt = 0
            If Check1.value = 1 Then
                FibDiscamt = Format(val(GetText(spdVar, v1, Row)) * val(GetText(spdVar, ICommWTAmt, Row)), "00.00")
            Else
                If optMILL = True Then
                         FibDiscamt = Format(val(GetText(spdVar, v1, Row)) * val(GetText(spdVar, Imnetwt, Row)), "00.00")
                ElseIf OptCommercialWt = True Then
                        FibDiscamt = Format(val(GetText(spdVar, v1, Row)) * val(GetText(spdVar, ICommWTAmt, Row)), "00.00")
                Else
                      FibDiscamt = Format(val(GetText(spdVar, v1, Row)) * val(GetText(spdVar, Ipnetwt, Row)), "00.00")
                End If
            End If
            spdVar.SetText IDiscAmt, Row, Format(KSLRound((FibDiscamt), FDisc_ROFF), "00.00")
        Else
            v1 = IDiscAmt
            FibDiscamt = val(GetText(spdVar, IDiscAmt, Row))
        End If
        
     
        v1 = Icessper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            If UCase(deltype) = "F" Then
                cessamt = Round(val(GetText(spdVar, v1, Row)) * (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Lfrt) + val(Bed) + val(EDAMT) + val(hscessAMT)) / 100, CESS_ROFF)
            Else
                cessamt = Round(val(GetText(spdVar, v1, Row)) * (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT)) / 100, CESS_ROFF)
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
             OthersTaxable = KSLRound(val(GetText(spdVar, v1, Row)), ADDTAX_ROFF)

        
        
        
        
        
        
                             

'''''''' GST CALC SASI 27.6.17

    If IGSTFLG = "Y" Then
        v1 = ICGSTPER
         If val(GetText(spdVar, v1, Row)) <> 0 Then
               Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100

               If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
               
                If UCase(deltype) = "F" Then
                    CGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, CGST_ROFF)
                Else
                    CGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, CGST_ROFF)
                End If
                spdVar.SetText ICGSTAMT, Row, CStr(CGSTAMT)
            Else
                v1 = ICGSTAMT
                CGSTAMT = val(GetText(spdVar, v1, Row))
         End If
        
        v1 = ISGSTPER
         If val(GetText(spdVar, v1, Row)) <> 0 Then
                 Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100

               If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
              
                
                If UCase(deltype) = "F" Then
                    SGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, SGST_ROFF)
                Else
                    SGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, SGST_ROFF)
                End If
                spdVar.SetText ISGSTAMT, Row, CStr(SGSTAMT)
            Else
                v1 = ISGSTAMT
                SGSTAMT = val(GetText(spdVar, v1, Row))
         End If
        

         spdVar.SetText IIGSTAMT, Row, "0"
         spdVar.SetText IIGSTPER, Row, "0"
        Else
         spdVar.SetText ICGSTAMT, Row, "0"
         spdVar.SetText ISGSTAMT, Row, "0"
         spdVar.SetText ISGSTPER, Row, "0"
       
         
        v1 = IIGSTPER
    
          
         If val(GetText(spdVar, v1, Row)) <> 0 Then
                Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100
               If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
              
                
                If UCase(deltype) = "F" Then
                    IGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, IGST_ROFF)
                Else
                    IGSTAMT = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, IGST_ROFF)
                End If
                spdVar.SetText IIGSTAMT, Row, CStr(IGSTAMT)
            Else
                v1 = IIGSTAMT
                IGSTAMT = val(GetText(spdVar, v1, Row))
                  ' added on 05-07-19 by mariyaiya
                  spdVar.SetText IIGSTAMT, Row, "0"
         End If
        
       
'        If val(Txtfields(129).Text) <> 0 Then
'                If UCase(deltype) = "F" Then
'                    Txtfields(128).Text = Round(val(Txtfields(129).Text) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, IGST_ROFF)
'                Else
'                    Txtfields(128).Text = Round(val(Txtfields(129).Text) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(IGSTAMT) + val(SGSTAMT) + val(CGSTAMT) + val(EDAMT) + val(cessamt) + val(Hscessamt) + val(OthersTaxable)) / 100, IGST_ROFF)
'                End If
'                spdVar.SetText IIGSTAMT, Row, CStr(IGSTAMT)
'            Else
'              Txtfields(129).Text = 0
'         End If
         
     End If
      '--------------------*************************-------------------------
        
        
        
        
        
        
        
        
        ''Tax
                Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            v1 = ITaxper
             Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100

              If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
              
               
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + ISpotExpense) / 100, TAX_ROFF)
                Else
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + ISpotExpense) / 100, TAX_ROFF)
                End If
               ' spdVar.SetText ITaxamt, Row, CStr(Vatamt)
               spdVar.SetText ITaxamt, Row, CStr(Format(val(CGSTAMT) + val(IGSTAMT) + val(SGSTAMT), "##0.00"))
            Else
                v1 = ITaxamt
                'Vatamt = val(GetText(spdVar, v1, Row))
                  Vatamt = CStr(Format(val(CGSTAMT) + val(IGSTAMT) + val(SGSTAMT), "##0.00"))
            End If
        Else
            v1 = ITaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                
                  Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100
               
               If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
              
               
                If UCase(deltype) = "F" Then
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, TAX_ROFF)
                Else
                    Vatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable) + Totincident + totspotexpense) / 100, TAX_ROFF)
                End If

                Vatamt = CStr(Format(val(CGSTAMT) + val(IGSTAMT) + val(SGSTAMT), "##0.00"))
            Else
                v1 = ITaxamt
                Vatamt = Format(val(CGSTAMT) + val(IGSTAMT) + val(SGSTAMT), "##0.00")
                spdVar.SetText ITaxamt, Row, CStr(Format(val(CGSTAMT) + val(IGSTAMT) + val(SGSTAMT), "##0.00"))
            End If
        End If

            txtfields(52).Text = Format(Vatamt, "##0.00")
            txtfields(51).Text = Format(val(GetText(spdVar, v1, Row)), "##0.00")

        AVatamt = 0
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            v1 = IATaxper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If UCase(deltype) = "F" Then
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)) / 100, ADDTAX_ROFF)
                Else
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * ((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)) / 100, ADDTAX_ROFF)
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
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)) / 100, ADDTAX_ROFF)
                Else
                    AVatamt = Round(val(GetText(spdVar, v1, Row)) * (val(Assvalue) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)) / 100, ADDTAX_ROFF)
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
            Othamt = Round((Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(OthersTaxable)) * val(GetText(spdVar, v1, Row)) / 100, ADDTAX_ROFF)
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
            RlFrt = (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt)) * val(GetText(spdVar, v1, Row)) / 100
            spdVar.SetText IRlyfrtamt, Row, CStr(RlFrt)
        Else
            v1 = IRlyfrtamt
            RlFrt = val(GetText(spdVar, v1, Row))
        End If
                                                                         
        ''Insurance
        Set Rs = New Recordset
        Rs.Open "SELECT InsCalAssvalflg FROM RM_PARAM", DB, adOpenStatic
        If Rs.EOF = False Then
        
            v1 = IInsper
            If Rs("InsCalAssvalflg") = "Y" Then
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    
                    InsAmt = Assvalue * val(GetText(spdVar, v1, Row)) / 100
                    
                    spdVar.SetText IInsamt, Row, CStr(InsAmt)
                Else
                    v1 = IInsamt
                    InsAmt = val(GetText(spdVar, v1, Row))
                End If
            Else
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    If Left(deltype, 1) = "F" Then
                        InsAmt = (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt)) * val(GetText(spdVar, v1, Row)) / 100
                    Else
                        InsAmt = (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt)) * val(GetText(spdVar, v1, Row)) / 100
                    End If
                    spdVar.SetText IInsamt, Row, CStr(InsAmt)
                Else
                    v1 = IInsamt
                    InsAmt = val(GetText(spdVar, v1, Row))
                End If
            End If
        Else
            v1 = IInsper
            If val(GetText(spdVar, v1, Row)) <> 0 Then
                If Left(deltype, 1) = "F" Then
                    InsAmt = (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt)) * val(GetText(spdVar, v1, Row)) / 100
                Else
                    InsAmt = (Assvalue - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt)) * val(GetText(spdVar, v1, Row)) / 100
                End If
                spdVar.SetText IInsamt, Row, CStr(InsAmt)
            Else
                v1 = IInsamt
                InsAmt = val(GetText(spdVar, v1, Row))
            End If
        End If
        ''Lcint
        
        v1 = ILCper
        If val(GetText(spdVar, v1, Row)) <> 0 Then
            va = Ipjamt
            Lcamt = 0
            If Left(deltype, 1) = "F" Then
                Lcamt = (Assvalue + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(InsAmt) + val(Comamt)) * val(GetText(spdVar, v1, Row)) / 100
            Else
                Lcamt = (Assvalue + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(InsAmt) + val(Comamt)) * val(GetText(spdVar, v1, Row)) / 100
            End If

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
        ShipCharges = val(GetText(spdVar, Ishipchrg, Row))

        If optDCNo = True Then
            If UCase(deltype) = "S" Then
                Totland = Assvalue + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(InsAmt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(ShipCharges) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Lcamt)
            Else
                Totland = Assvalue + val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) + val(Taxamt) + val(AVatamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(ShipCharges) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) + val(InsAmt) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt))
            End If
        Else
            If UCase(deltype) = "S" Then
                Totland = Assvalue + (val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) * (100 - val(txtfields(109).Text) / 100)) + val(Taxamt) + val(AVatamt) + val(Lfrt) + val(RlFrt) + val(InsAmt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(ShipCharges) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Lcamt)
            Else
                Totland = Assvalue + (val(Bed) + val(EDAMT) + val(hscessAMT) + val(cessamt) * (100 - val(txtfields(109).Text) / 100)) + val(Taxamt) + val(AVatamt) + val(Comamt) + val(LcInt) + val(DBamt) + val(Charity) + val(Damage) + val(clearnce) + val(Others) + val(ShipCharges) + val(Brkcom) + val(Cusdutyamt) + val(OthersTaxable) + val(SICAAmt) + val(InsAmt) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt))
            End If
        End If
            
            
'        Total LANDCOST = TOTALLANDCOST - VATAMOUNT
        Set rsP = New Recordset
        rsP.Open "select isnull(vatflg,'N') Vatflg,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg  FROM RM_PARAM", DB, adOpenStatic
        VATFLG = "N"
        tcsLandflg = "N"
        If rsP.RecordCount > 0 Then
            VATFLG = rsP(0)
            tcsLandflg = rsP(1)
        End If
        

         Dim TCSLANCOST As Double
            If UCase(deltype) = "F" Then
                    TCSLANCOST = (((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt) + val(Lfrt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)))
           Else
                    TCSLANCOST = (((val(Assvalue) + val(Comamt)) - (val(CashDisamt) + val(FibDiscamt) + val(TradeDisAmt)) + val(Bed) + val(EDAMT) + val(cessamt) + val(hscessAMT) + val(OthersTaxable)))
          End If

             Set rsP1 = New Recordset
             rsP1.Open "select isnull(tcstax,'Y') tcstax  FROM RM_PARAM", DB, adOpenStatic
            If rsP1("tcstax") = "Y" Then
                 TCSLANCOST = TCSLANCOST + Vatamt
            Else
                 TCSLANCOST = TCSLANCOST
            End If
            
            If Chk_TCSAssValFlg.value = 1 Then
                spdVar.SetText ITCS_AssValue, Row, CStr(TCSLANCOST)
           Else
                spdVar.SetText ITCS_AssValue, Row, CStr(val(txtfields(130).Text) / TotalnWt * val(GetText(spdVar, Imnetwt, Row)))
                TCSLANCOST = val(GetText(spdVar, ITCS_AssValue, Row))
           End If
            
                v1 = itcsper
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    tcsamt = TCSLANCOST * val(GetText(spdVar, v1, Row)) / 100
                    spdVar.SetText itcsamt, Row, CStr(Round(tcsamt, ATCS_ROFF))
                Else
                 spdVar.SetText itcsamt, Row, "0.00"
                    v1 = itcsamt
                    tcsamt = val(GetText(spdVar, v1, Row))
                End If
                  

         
        If tcsLandflg = "Y" Then
            Totland = Totland
        Else
            Totland = Totland + tcsamt
        End If
         
           If val(GetText(spdVar, IIncidentCharge, Row)) > 0 Then
                Totincident = ((val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, Icandyrate, Row))) * val(GetText(spdVar, IIncidentCharge, Row))) / 100
                Totland = Totland + Totincident
         End If
         
              If Left(Combo12.Text, 1) = "T" Then
                   totspotexpense = val(GetText(spdVar, ISpotExpense, Row))
               ElseIf Left(Combo12.Text, 1) = "B" Then
                    totspotexpense = (val(GetText(spdVar, iQty, Row)) * val(GetText(spdVar, ISpotExpense, Row)))
               Else
                    totspotexpense = 0
               End If
              
               
         If val(GetText(spdVar, ISpotExpense, Row)) > 0 Then
            Totland = Totland + totspotexpense
         End If
         
         
        If VATFLG = "Y" Then
    
                Totland = Totland - Vatamt - AVatamt

        Else
            Totland = Totland
        End If
        
        
        LandCost = Round(Totland, 2)
        spdVar.SetText ILandedcost, Row, CStr(LandCost)
        txtfields(18).Text = LandCost

            If optSUPPLIER = True Then
                VBC = Ipnetwt
            ElseIf OptCommercialWt = True Then
                VBC = ICommWTAmt
            Else
                VBC = Imnetwt
            End If

        
        If val(GetText(spdVar, VBC, Row)) <> 0 Then
            ratekg = Format(val(LandCost) / val(GetText(spdVar, VBC, Row)), "#0.0000")
        Else
            ratekg = 0
        End If
        
        spdVar.SetText IRateKG, Row, CStr(ratekg)
    End If
Call totdisplay
End If

dSuppNetWt = 0
dCommNetWt = 0
txtfields(115).Text = 0
pinvvalue = 0
LFRGT = 0
For I = 1 To spdVar.MaxRows Step 1

        If optSUPPLIER = True Then
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Ipnetwt, I))
        ElseIf OptCommercialWt = True Then
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, ICommWTAmt, I))
        Else
            dSuppNetWt = dSuppNetWt + val(GetText(spdVar, Imnetwt, I))
        End If

   LFRGT = LFRGT + val(GetText(spdVar, IFrtamt, I))
   
    txtfields(5).Text = Format(dSuppNetWt, "0.000")
    If Check1.value Then
     dCommNetWt = dCommNetWt + val(GetText(spdVar, ICommWTAmt, I))
    txtfields(123).Text = Format(dCommNetWt, "0.000")
    End If
    
    
    pinvvalue = pinvvalue + val(GetText(spdVar, Ipinvval, I))
    txtfields(115).Text = Format(pinvvalue, "0.000")
    txtfields(13).Text = Format(LFRGT, "0.00")
Next

        Call TXTFIELDS_Validate(53, False)
        Call TXTFIELDS_Validate(84, False)
        Call TXTFIELDS_Validate(7, False)
        Call TXTFIELDS_Validate(47, False)
        Call TXTFIELDS_Validate(43, False)
        Call TXTFIELDS_Validate(45, False)
        Call TXTFIELDS_Validate(51, False)
        
        If txtfields(83).Text <> "" Then
            Call TXTFIELDS_Validate(83, False)
        End If
        Call TXTFIELDS_Validate(43, False)
        
        Call TXTFIELDS_Validate(51, False)
        Call TXTFIELDS_Validate(10, False)
        Call TXTFIELDS_Validate(51, False)
        
        
        Call txtfields_LostFocus(17)

Exit Sub
spdVar_LeaveCell_Error:

End Sub

Private Sub spdVar_LostFocus()
On Error GoTo spdVar_LostFocus_Error

   If Check1.value = 1 Then
    If val(GetText(spdVar, ICommWTAmt, spdVar.ActiveRow)) = 0 And val(GetText(spdVar, Ipnetwt, spdVar.ActiveRow)) <> 0 Then
    spdVar.SetFocus
       ' Exit Sub
        MsgBox "Please Enter Commercial Weight ", vbInformation, head
        spdVar.Col = ICommWTAmt
        spdVar.SetFocus
        
    End If
   End If

    If Col = IRateKG And spdVar.MaxRows = spdVar.ActiveRow Then
        SSTab1.Tab = 1
        txtfields(3).SetFocus
        Exit Sub
    End If

Exit Sub
spdVar_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spdVar_LostFocus of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text3_LostFocus()
On Error GoTo Text3_LostFocus_Error

On Error GoTo Text3_LostFocus_Error

    If Opt = "add" And Text3.Text = "" Then

        Text3.Text = "0"
        Exit Sub
    End If
    Text9.Text = (val(txtfields(23).Text) - val(txtfields(24).Text)) * val(Text3.Text) / 100

    If val(txtfields(23).Text) >= val(txtfields(24).Text) Then
        txtfields(25).Text = val(txtfields(23)) - val(txtfields(24)) - val(Text9.Text)
        txtfields(5).Text = Format(val(txtfields(25).Text), "##.00")
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        txtfields(24).Text = ""
        txtfields(24).SetFocus
        Exit Sub
    End If

Exit Sub
Text3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_LostFocus of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text4_Change()
On Error GoTo Text4_Change_Error

    Text4.Text = Format(Text4.Text)

Exit Sub
Text4_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text4_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text5_Change()
On Error GoTo Text5_Change_Error

Text5.Text = Format(Text5.Text, "#0.000")

Exit Sub
Text5_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text5_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text6_Change()
On Error GoTo Text6_Change_Error

Text6.Text = Format(Text6.Text, "#0.000")

Exit Sub
Text6_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text6_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text16_Change()
On Error GoTo Text16_Change_Error

On Error GoTo Text16_Change_Error

Text16.Text = Format(Text16.Text, "#0.000")

Exit Sub
Text16_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text16_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub Text7_Change()
On Error GoTo Text7_Change_Error

On Error GoTo Text7_Change_Error

Text7.Text = Format(Text7.Text, "#0.000")

Exit Sub
Text7_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text7_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub Text11_Change()
On Error GoTo Text11_Change_Error

Text11.Text = Format(Text11.Text, "#0.000")

Exit Sub
Text11_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text11_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Txtfields_Change(Index As Integer)

On Error Resume Next
intervalMinutes = -1

If Index = 120 Then
    Set RS2 = New Recordset
    RS2.Open "select plname from rm_plant where plcode='" & txtfields(120).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
    If RS2.RecordCount = 0 Then
        Text17.Text = ""
        Exit Sub
    Else
        Text17.Text = RS2(0)
    End If
  End If
If Index = 27 Then
    Set wrs = New Recordset
    wrs.Open "select wname from rm_weighnment where divcode='" & Divcode & "' and code='" & Trim(txtfields(27).Text) & "' ", DB, adOpenStatic
    If wrs.RecordCount > 0 Then
        Text2.Text = Trim(wrs(0))
    Else
        Text2.Text = ""
    End If
ElseIf Index = 32 Or Index = 35 Then
    Set prs = New Recordset
    prs.Open "select slname from fa_slmas where slcode='" & Trim(txtfields(Index).Text) & "' ", DB, adOpenStatic
    If prs.RecordCount > 0 Then
        Text1(1).Text = prs(0)
        Text1(2).Text = prs(0)
    Else
        Text1(1).Text = ""
        Text1(2).Text = ""
    End If
ElseIf Index = 37 Then
    Set prs = New Recordset
    prs.Open "select slname from fa_slmas where slcode='" & Trim(txtfields(Index).Text) & "' ", DB, adOpenStatic
    If prs.RecordCount > 0 Then
        Text12.Text = prs(0)
    Else
        Text12.Text = ""
    End If
ElseIf Index = 2 Then
    Set vrs = New Recordset
    vrs.Open "select varname from rm_var where varcode='" & Trim(txtfields(2).Text) & "' ", DB, adOpenStatic
    If vrs.RecordCount > 0 Then
        txtfields(79).Text = vrs(0)
    Else
        txtfields(79).Text = ""
    End If
End If

If Opt = "" Then
Select Case Index
    Case 53, 54, 84, 85, 12, 13, 7, 42, 47, 48, 43, 44, 45, 46, 51, 52, 10, 11, 15, 16, 58, 59, 60, 61, 62, 70, 64, 65, 66, 67, 69, 17, 18, 6, 63, 111, 107, 112, 113
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.00")
    Case 4, 5, 57
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.000")
    Case 19
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "0.0000")
End Select
End If
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

txtfields(Index).BackColor = &HC0FFC0
Select Case Index


Case 2
  If (Opt = "add" And txtfields(1).Text = "") Then
    On Error Resume Next
    If LookUp.Cancel = False Then
    'from contract lookup is added
    Set CATRS = New Recordset
    CATRS.Open "select a.catcd from rm_CAT a,rm_var b,rm_arrival c where a.catcd =b.catcd and b.varcode=c.varcode and divcode='" & Divcode & "' and arrdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    txtfields(0).Text = CATRS(0)
    Set Rs = New Recordset
    Rs.Open "SELECT isnull(PASSBL,0) FROM  rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    If Rs(0) = 0 Then
        Dim arrrs As Recordset
        Set arrrs = New Recordset
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),varcode,cntcode,bbflag,isnull(quantity,0)-isnull(lotrecqty,0),isnull(grosswt,0),tarewt,NETWT,PLOTNO,RATECY,COLORCODE from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
    Else
        Set arrrs = New Recordset
        
        arrrs.Open "select supcd,isnull(brkcd,''),isnull(areacode,''),isnull(varcode,''),isnull(cntcode,''),isnull(bbflag,''),isnull(passbl,''),round(grosswt/quantity*passbl,2),round(tarewt/quantity*passbl,2),round((grosswt/quantity*passbl)-(tarewt/quantity*passbl)-isnull(moisture_et,0),2),isnull(PLOTNO,'') as Plotno,ratecy,COLORCODE,ISNULL(ACCALLOWQTY,0) AS ALLOWQTY,ISNULL(ACCALLOWRTPERCANDY,0) AS RTPERCANDY,moisture_et,moisture_per,awt_flg from rm_arrival where arrno=" & txtfields(1).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
       
    End If
    If arrrs.RecordCount <> 0 Then
        txtfields(26).Text = arrrs(0)
        txtfields(32).Text = arrrs(0)
        txtfields(35).Text = arrrs(0)
        txtfields(27).Text = IIf(IsNull(arrrs(1)), "", arrrs(1))
        txtfields(28).Text = IIf(IsNull(arrrs(2)), "", arrrs(2))
        txtfields(29).Text = arrrs(3)
        txtfields(40).Text = arrrs("COLORCODE")

        Text9.Text = arrrs(15)
        Text10.Text = arrrs(16)
        Set rsa = New Recordset
         rsa.Open "select station,state from rm_area where areacode='" & arrrs(2) & "'", DB, adOpenStatic
         If rsa.RecordCount > 0 Then
             txtfields(71).Text = rsa(0)

         End If

        txtfields(37).Text = IIf(IsNull(arrrs("plotno")), "", arrrs("plotno"))
        If arrrs("plotno") <> "" Then
          Set RSS = New Recordset
          RSS.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & arrrs("plotno") & "'  and lotyear=" & Year(yfdate) & " ", DB, adOpenStatic
          If Not RSS.EOF Then
            txtfields(3).Text = RSS("BILLNO")
            If RSS("BILLDT") = Null Then
                MaskEdBox1(2).Text = RSS("BILLDT")
            End If
          End If
        End If
        txtfields(30).Text = arrrs(4)
        txtfields(22).Text = arrrs(6)
        txtfields(33).Text = arrrs(6)
        txtfields(34).Text = arrrs(6)
        txtfields(23).Text = arrrs(7)
        txtfields(24).Text = arrrs(8)
        txtfields(25).Text = arrrs(9)
        If arrrs("ratecy") > 0 And arrrs("Ratecy") > 0 Then
        
        If globalarrivalorder = "C" Then
            Set Rs = New Recordset
            Rs.Open "SELECT CENTRALISEDORDER FROM RM_PARAM", DB, adOpenStatic
            If Rs(0) = "Y" Then
               Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
            Else
               Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) )", DB, adOpenStatic
            End If
        Else
            Set Rs = New Recordset
            Rs.Open "SELECT CENTRALISEDORDER FROM RM_PARAM", DB, adOpenStatic
            If Rs(0) = "Y" Then
               Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
            Else
               Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
            End If
        End If
        
           If rsr.RecordCount > 0 Then
                txtfields(6).Text = Format(arrrs(9) * Round(arrrs("Ratecy") / rsr("value"), 4), "00.00")
            End If
           adoPrimaryRS("ratecy") = val(arrrs("ratecy"))
        Else
           txtfields(6).Text = (arrrs(9) / arrrs(6)) * arrrs("Ratecy") * 0.2812
           adoPrimaryRS("ratecy") = val(arrrs("Ratecy"))
        End If
        
        For I = 26 To 29
            txtfields(I).Locked = True
        Next
        oldgrs = txtfields(23).Text
        oldtare = txtfields(24).Text
        txtfields(0).Locked = True
        MaskEdBox1(0).Enabled = False
        MaskEdBox1(1).Enabled = False
        QTY = txtfields(22).Text
        txtfields(5).Text = Format(txtfields(25).Text, "0.000")

          txtfields(30).SetFocus
          SSTab1.Tab = 1
          txtfields(3).SetFocus
    End If
   Else
  If Opt = "add" Then
        DB.RollbackTrans
   End If
  Opt = ""
    Call query_mode
  End If
   LookUp.Clear = True
End If

Case 20
  If (Opt = "add" And txtfields(20).Text = "") Then
        If Opt = "add" Or Opt = "mod" Then
            Set Rs = New Recordset
            Rs.Open "select * from rm_god where gcode='" & Trim(txtfields(23).Text) & "' and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
            If Rs.RecordCount <> 0 Then
             
                txtfields(20).Text = Rs("gcode")
             Else
                LookUp.Clear = True
                LookUp.query = "select gcode,gname from rm_god  where divcode='" & Divcode & "'"
                LookUp.DefCol = "gcode"
                LookUp.Caption = "Godown Listing"
                LookUp.ALIGN = "1000,1500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                txtfields(20).Text = LookUp.Fields(0)
                
                Else
                Exit Sub
                End If
           End If
        End If
        LookUp.Clear = True
  End If

End Select
If Opt = "add" Or Opt = "mod" Then
Select Case Index

     Case 22
          StatusBar1.Panels(2).Text = "Enter Quantity"
     Case 23
          StatusBar1.Panels(2).Text = "Enter Gross Weight"
     Case 25
          StatusBar1.Panels(2).Text = "Enter Net Weight"
 
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Frmlotbale", vbInformation, head
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
        Call BUTTON_Click(13)   ''Print Option
    End If

    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)  'Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error
intervalMinutes = -1
If Opt = "" Or Opt = " " Or Opt = "del" Then
    KeyAscii = 0
End If
If Index <> 300 Then
Call ToUpCase(txtfields(Index), KeyAscii)
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 53, 84, 12, 7, 47, 43, 45, 51, 10, 15, 59, 61, 112
    ToNumberAssign txtfields(Index), 3, KeyAscii, 3, 2
Case 57
    ToNumberAssign txtfields(Index), 3, KeyAscii, 3, 3
Case 109

    ToNumberAssign txtfields(Index), 3, KeyAscii, 3, 2

Case 300
    ToNum1 txtfields(Index), 2, KeyAscii
Case 3

    ToAlphaNumber txtfields(Index), 18, KeyAscii
Case 4

    ToNumberAssign txtfields(Index), 7, KeyAscii, 8, 3
    
Case 6
    If KeyAscii = 48 Then
        KeyAscii = 0
    End If
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 9, KeyAscii
Case 5
    If KeyAscii = 48 Then
        KeyAscii = 0
    End If
    If KeyAscii = 45 Then KeyAscii = 0
    ToNum1 txtfields(Index), 7, KeyAscii

Case 7
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 8
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 9
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 7, KeyAscii
Case 10
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 11
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 12
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 13
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 14
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 15
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
Case 16
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 6, KeyAscii
        
Case 17
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 7, KeyAscii
    
Case 22
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 7, KeyAscii
Case 23
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 10, KeyAscii
Case 24
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtfields(Index), 10, KeyAscii
Case 113
    Call ToNumberAssign(txtfields(Index), 8, KeyAscii, 8, 2)
Case 25
    KeyAscii = 0
Case 54, 51, 85, 13, 42, 44, 46, 48, 52, 11, 16, 58, 60, 62, 70, 63, 64, 66, 67, 69, 17, 5, 6
    tonum txtfields(Index), 10, KeyAscii
    
End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LinkError(Index As Integer, LinkErr As Integer)
On Error GoTo txtfields_LinkError_Error

Response = 0

Exit Sub
txtfields_LinkError_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LinkError of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub txtfields_LostFocus(Index As Integer)
'StatusBar1.Panels(2).Text = ""
    On Error GoTo txtfields_LostFocus_Error

txtfields(Index).BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
Select Case Index

 
Case 94
    txtfields(94).Text = Format(txtfields(94).Text, "#0.00")
Case 1
    txtfields(1).Text = Format(txtfields(1).Text, "#0.00")
Case 3
    StatusBar1.Panels(2).Text = ""
    Set rsg = New Recordset
    rsg.Open "select isnull(billno,'') from rm_lot where BILLNO='" & txtfields(3).Text & "' AND  supcd='" & txtfields(30).Text & "' and lotdt betweeN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and arrno <> " & val(txtfields(96).Text) & " ", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
            MsgBox "Already Bill number Given to this Supplier", vbInformation, head
            txtfields(3).Text = ""
            txtfields(3).SetFocus
            Exit Sub
    End If
Case 11
'txtFields(11).Text = Format(txtFields(11).Text, "#0.000")
Case 17

   txtfields(18).Text = IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) + IIf(IsNull(val(txtfields(7))), 0, val(txtfields(7))) + IIf(IsNull(val(txtfields(8))), 0, val(txtfields(8))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(10))), 0, val(txtfields(10))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(12))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) + IIf(IsNull(val(txtfields(15))), 0, val(txtfields(15))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + val(txtfields(128).Text) - val(txtfields(117).Text)
   If optDCNo = True Then
    If Option2.value = True Then
      If UCase(deltype) = "S" Then
        txtfields(18).Text = val(txtfields(128).Text) + IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) - _
         val(txtfields(117).Text) + IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))) - IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))))
      Else
        txtfields(18).Text = val(txtfields(128).Text) + IIf(IsNull(val(txtfields(42))), 0, val(txtfields(42))) + IIf(IsNull(val(txtfields(44))), 0, val(txtfields(44))) + IIf(IsNull(val(txtfields(46))), 0, val(txtfields(46))) + IIf(IsNull(val(txtfields(48))), 0, val(txtfields(48))) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) - _
         val(txtfields(117).Text) + IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))) - IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))))
      End If
'
'      Total LANDCOST = TOTALLANDCOST - VATAMOUNT

    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N') ,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
     tcsLandflg = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
         tcsLandflg = rsP(1)
    End If
    If tcsLandflg = "Y" Then
         txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(128).Text)
    End If

    If VATFLG = "Y" Then
      
                txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text) - val(txtfields(113).Text)
       
    End If

    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    End If
    Else
    If Option2.value = True Then
      If UCase(deltype) = "S" Then
        txtfields(18).Text = val(txtfields(128).Text) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(13))), 0, val(txtfields(13))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) - _
        val(txtfields(117).Text) + IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))) - IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))))
      Else
        txtfields(18).Text = val(txtfields(128).Text) + IIf(IsNull(val(txtfields(50))), 0, val(txtfields(50))) + IIf(IsNull(val(txtfields(52))), 0, val(txtfields(52))) + IIf(IsNull(val(txtfields(56))), 0, val(txtfields(56))) + IIf(IsNull(val(txtfields(9))), 0, val(txtfields(9))) + IIf(IsNull(val(txtfields(11))), 0, val(txtfields(11))) + IIf(IsNull(val(txtfields(16))), 0, val(txtfields(16))) + val(txtfields(58)) + IIf(IsNull(val(txtfields(60))), 0, val(txtfields(60))) + IIf(IsNull(val(txtfields(62))), 0, val(txtfields(62))) + IIf(IsNull(val(txtfields(14))), 0, val(txtfields(14))) - _
        val(txtfields(117).Text) + IIf(IsNull(val(txtfields(87))), 0, val(txtfields(87))) + IIf(IsNull(val(txtfields(63))), 0, val(txtfields(63))) + IIf(IsNull(val(txtfields(64))), 0, val(txtfields(64))) + IIf(IsNull(val(txtfields(65))), 0, val(txtfields(65))) + IIf(IsNull(val(txtfields(66))), 0, val(txtfields(66))) + IIf(IsNull(val(txtfields(67))), 0, val(txtfields(67))) + IIf(IsNull(val(txtfields(68))), 0, val(txtfields(68))) + IIf(IsNull(val(txtfields(69))), 0, val(txtfields(69))) + IIf(IsNull(val(txtfields(17))), 0, val(txtfields(17))) + IIf(IsNull(val(txtfields(6))), 0, val(txtfields(6))) - (IIf(IsNull(val(txtfields(54))), 0, val(txtfields(54))) + IIf(IsNull(val(txtfields(85))), 0, val(txtfields(85))) - IIf(IsNull(val(txtfields(70))), 0, val(txtfields(70))))
      End If
'
'      Total LANDCOST = TOTALLANDCOST - VATAMOUNT
   
    Set rsP = New Recordset
    rsP.Open "select isnull(vatflg,'N') ,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg FROM RM_PARAM", DB, adOpenStatic
    VATFLG = "N"
     tcsLandflg = "N"
    If rsP.RecordCount > 0 Then
        VATFLG = rsP(0)
         tcsLandflg = rsP(1)
    End If
    If tcsLandflg = "Y" Then
         txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(128).Text)
    End If
    If VATFLG = "Y" Then
  
                txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text) - val(txtfields(113).Text)

    End If
    

    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    End If
    End If
      
    If Option2.value = False Then
       txtfields(18).Text = Format(Round(LandCostTotal, 2), "0.00")
    End If
    
    Call TaxCalculation
Case 18
      If val(txtfields(5)) > 0 Then
        txtfields(19).Text = Round(val(txtfields(18)) / val(txtfields(5)), 4)
      End If
      
      If Check1.value Then
        If val(txtfields(123)) > 0 Then
          txtfields(19).Text = Round(val(txtfields(18)) / val(txtfields(123)), 4)
        End If
      End If
      txtfields(19).Text = Format(txtfields(19).Text, "#0.0000")
      txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
Case 19
    
    For I = 1 To spdVar.MaxRows
            If val(GetText(spdVar, Ipgrosswt, I)) = 0 Then
                MsgBox "Please enter Supplier Gross Weight", vbInformation, head
                SSTab1.Tab = 0
                spdVar.Col = Ipgrosswt
                spdVar.SetFocus
                Exit Sub
            End If
    Next
    
    If val(txtfields(5)) > 0 Then
        
    End If
        If vbYes = MsgBox("Any corrections?", vbYesNo, head) Then
            grddatagrid.Enabled = False
            SSTab1 = 1
            txtfields(3).SetFocus
            Exit Sub
        Else
        If val(txtfields(5).Text) <> 0 Then
            StatusBar1.Panels(2).Text = ""
            BUTTON(9).Enabled = True
            grddatagrid.Enabled = True
            
            grddatagrid.Columns(14).Locked = False
            
            SSTab1.Tab = 2
            If Opt = "mod" Then
                FLG = "y"
                grddatagrid.Enabled = False
            End If
            If Opt = "add" Or Opt = "mod" Then
                If FLG <> "y" Then
                  FLG = "y"
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
                  qq = val(GetText(spdVar, Ipgrosswt, KK)) '' val(Txtfields(105).Text)
                 
                  r = val(GetText(spdVar, Imtarewt, KK)) '' val(Txtfields(98).Text)
                  s = val(GetText(spdVar, Imnetwt, KK)) '' val(Txtfields(97).Text)
                  RR = val(GetText(spdVar, Iptarewt, KK))  ''val(Txtfields(104).Text)
                  ss = val(GetText(spdVar, Ipnetwt, KK))  ''val(Txtfields(103).Text)
                  t1 = val(GetText(spdVar, iTrashPer, KK)) '' val(Txtfields(101).Text)
                                   
                  t = val(GetText(spdVar, Immoiturewt, KK)) '' val(Txtfields(101).Text)
                  cw = val(val(GetText(spdVar, ICommWTAmt, KK)))
                  
                    groswt = 0
                    TAREWT = 0
                    trashWT = 0
                    MOISWT = 0
                    NETTWT = 0
                    
                    PGROSWT = 0
                    PTAREWT = 0
                    PNETTWT = 0
                     CommmWt = 0
                  
                  I = 1
                  j = 1
               
                For I = 1 To p
        '                  If i = 100 Then
        '                  'MsgBox "A"
        '                  End If
                    grddatagrid.Columns("LOTNO").Text = val(val(GetText(spdVar, ILotNo, KK)))
                    grddatagrid.Columns("LOTDT").Text = GetText(spdVar, ILotdt, KK)
                    grddatagrid.Columns("VARCODE").Text = GetText(spdVar, IVarcode, KK)
                    grddatagrid.Columns(2).Text = I 'grddatagrid.ApproxCount   ''Mill Baleno
                    grddatagrid.Columns(14).Text = j 'grddatagrid.ApproxCount  ''Party Baleno
                    grddatagrid.Columns(3).Text = q / p
                    grddatagrid.Columns(4).Text = r / p
                            ''grddatagrid.Column    s(5).Text = ((val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text)) * val(Text3.Text) / 100)
                    grddatagrid.Columns(5).Text = t1 / p
                    grddatagrid.Columns(6).Text = (t - t1) / p
                    grddatagrid.Columns("Commercial Wt.").Text = cw / p
                    grddatagrid.Columns("Commercial Wt.").Locked = False
        '                    grddatagrid.Columns(6).Text = s / p
                           ' grdDataGrid.Columns(18).Text = CommWt
                    grddatagrid.Columns(7).Text = val(grddatagrid.Columns(3).Text) - val(grddatagrid.Columns(4).Text) - val(grddatagrid.Columns(5).Text) - val(grddatagrid.Columns(6).Text)
                    bales = bales + grddatagrid.Columns(7).Text
                    Set rscc = New Recordset
                    rscc.Open "select catcd from rm_var where varcode='" & Trim(GetText(spdVar, IVarcode, KK)) & "'", DB, adOpenStatic
                    If Not rscc.EOF Then
                        Set RSCHECK = New Recordset
                        RSCHECK.Open "select fromwgt,towgt from RM_BaleWgtRange where catcd='" & rscc("CATCD") & "' and docdate=(select  max(docdate) from RM_BaleWgtRange where catcd='" & rscc("CATCD") & "' )", DB, adOpenStatic
                        If RSCHECK.EOF Then
                            MsgBox "Define Bale Weight Rage in Setup !!! ", vbInformation, head
                            FLG = "N"
                            Exit Sub
                        End If
                        
                        If val(grddatagrid.Columns(7).Text) >= RSCHECK(0) And val(grddatagrid.Columns(7).Text) <= RSCHECK(1) Then
                        Else
                            MsgBox "Bale Weight should be with in Bale Range between " & CStr(RSCHECK(0)) & " and " & CStr(RSCHECK(1)), vbInformation, head
                            FLG = "N"
                            Exit Sub
                        End If
                    End If
                    Dim BaleDetFlg As String
                    BaleDetFlg = "N"
                  If Arrdespatch_Flg = "Y" Then
                    Set rsdpl = New Recordset
                    rsdpl.Open "select a.GrossWt ,a.TareWt ,a.Netwt ,a.MoisturePer ,a.Invqty ,a.baleno,a.docsno from rm_despatchbale a  inner join rm_despatchhd b on a.docno=b.docno and a.docdate=b.docdate and a.divcode=b.divcode inner join rm_arrival c on c.DPDocno=a.docno and c.DPDocDate =a.docdate and c.arrno='" & val(txtfields(96).Text) & "' and c.ARRDATE='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and c.contno=a.contno and c.contdt=a.contdt where a.docno='" & val(txtfields(125).Text) & "' and a.docdate='" & Format(MaskEdBox1(6).Text, "yyyy-mm-dd") & "' and a.varcode='" & GetText(spdVar, IVarcode, KK) & "' and b.SLCode='" & Trim(txtfields(30).Text) & "' and c.divcode='" & Divcode & "' and docsno ='" & I & "' ", DB, adOpenStatic
                    If Not rsdpl.EOF Then
                    BaleDetFlg = "Y"
                    End If
                  End If
                    
                  If Arrdespatch_Flg = "Y" And BaleDetFlg = "Y" Then
                            Check1.value = 1
                            Check1.Enabled = False
                            Set rsdpl = New Recordset
                            rsdpl.Open "select a.GrossWt ,a.TareWt ,a.Netwt ,a.MoisturePer ,a.Invqty ,a.baleno,a.docsno from rm_despatchbale a  inner join rm_despatchhd b on a.docno=b.docno and a.docdate=b.docdate and a.divcode=b.divcode inner join rm_arrival c on c.DPDocno=a.docno and c.DPDocDate =a.docdate and c.arrno='" & val(txtfields(96).Text) & "' and c.ARRDATE='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and c.contno=a.contno and c.contdt=a.contdt where a.docno='" & val(txtfields(125).Text) & "' and a.docdate='" & Format(MaskEdBox1(6).Text, "yyyy-mm-dd") & "' and a.varcode='" & GetText(spdVar, IVarcode, KK) & "' and b.SLCode='" & Trim(txtfields(30).Text) & "' and c.divcode='" & Divcode & "' and docsno ='" & I & "' ", DB, adOpenStatic
                            If Not rsdpl.EOF Then
                                    grddatagrid.Columns(15).Text = rsdpl("baleno")
                                    ADOSECONDARYRS("MOITURE") = rsdpl("MoisturePer")
                                    ADOSECONDARYRS("Comm_Wt") = rsdpl("Invqty")
                                    grddatagrid.Columns(12).Text = rsdpl("GrossWt")
                                    grddatagrid.Columns(13).Text = rsdpl("TareWt")
                                    grddatagrid.Columns(14).Text = rsdpl("Netwt")
                            End If
                  
                  Else
                    
                    grddatagrid.Columns(12).Text = qq / p
                    grddatagrid.Columns(13).Text = RR / p
        '                    grddatagrid.Columns(13).Text = ss / p
                    grddatagrid.Columns(14).Text = val(grddatagrid.Columns(12).Text) - val(grddatagrid.Columns(13).Text)
                    pbales = pbales + grddatagrid.Columns(14).Text
                  End If
                    
                    grddatagrid.Columns(2).Locked = True
                            
                    groswt = Round(groswt + val(grddatagrid.Columns(3).Text), 3)
                    TAREWT = Round(TAREWT + val(grddatagrid.Columns(4).Text), 3)
                    trashWT = Round(trashWT + val(grddatagrid.Columns(5).Text), 3)
                    MOISWT = Round(MOISWT + val(grddatagrid.Columns(6).Text), 3)
                    NETTWT = Round(NETTWT + val(grddatagrid.Columns(7).Text), 3)
                            
                    PGROSWT = Round(PGROSWT + val(grddatagrid.Columns(12).Text), 3)
                    PTAREWT = Round(PTAREWT + val(grddatagrid.Columns(13).Text), 3)
                    PNETTWT = Round(PNETTWT + val(grddatagrid.Columns(14).Text), 3)
                    CommmWt = Round(CommmWt + val(grddatagrid.Columns("Commercial Wt.").Text), 3)
                                                  
                    If I = p Then
                        DIFFGWT = Round(q - groswt, 3)
                        DIFFTWT = Round(r - TAREWT, 3)
                                
                        DIFFtrshWT = Round(t1 - trashWT, 3)
                                
                        DIFFMWT = Round(t - t1 - MOISWT, 3)
                        DIFFNWT = Round(s - NETTWT, 3)
                                
                        PDIFFNWT = Round(ss - PNETTWT, 3)
                        PDIFFGWT = Round(qq - PGROSWT, 3)
                        PDIFFTWT = Round(RR - PTAREWT, 3)
                        PDIFFCW = Round(cw - CommmWt, 3)
                                                        
                        grddatagrid.Columns(3).Text = grddatagrid.Columns(3).Text + DIFFGWT
                        grddatagrid.Columns(4).Text = grddatagrid.Columns(4).Text + DIFFTWT
                        grddatagrid.Columns(5).Text = grddatagrid.Columns(5).Text + DIFFtrshWT
                        grddatagrid.Columns(6).Text = grddatagrid.Columns(6).Text + DIFFMWT
                        grddatagrid.Columns(7).Text = grddatagrid.Columns(7).Text + DIFFNWT
                                
                        grddatagrid.Columns(12).Text = grddatagrid.Columns(12).Text + PDIFFGWT
                        grddatagrid.Columns(13).Text = grddatagrid.Columns(13).Text + PDIFFTWT
                        grddatagrid.Columns(14).Text = grddatagrid.Columns(14).Text + PDIFFNWT
                               ' grdDataGrid.Columns(18).Text = val(val(GetText(spdVar, ICommWTAmt, KK)))
                        grddatagrid.Columns("Commercial Wt.").Text = grddatagrid.Columns("Commercial Wt.").Text + PDIFFCW
        
                    End If
                                              
                            
                    If I < p Then
                        ADOSECONDARYRS.AddNew
                    End If
                    j = j + 1
                Next
                          
          
                          
                  If KK <> spdVar.MaxRows Then
                    ADOSECONDARYRS.AddNew
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
                    
                    
                    Text15 = Format(qq, "#0.000")
                    Text14 = Format(RR, "#0.000")
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
                For I = 4 To 21
''                    Txtfields(i).Locked = True
                Next
                MaskEdBox1(1).Enabled = False
            End If
            If Opt = "mod" Then
            
            End If
        
            If ADOSECONDARYRS.RecordCount > 0 Then ADOSECONDARYRS.MoveFirst
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
    If txtfields(115).Text = "" Then
        txtfields(115).SetFocus
        Exit Sub
    End If
Case 82
    If val(txtfields(81).Text) >= val(txtfields(82).Text) Then
        txtfields(80).Text = val(txtfields(81)) - val(txtfields(82))
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        txtfields(82).Text = ""
        txtfields(82).SetFocus
        Exit Sub
    End If
    If Trim(txtfields(81).Text) <> "" And txtfields(82).Text <> "" Then
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
    If val(txtfields(23).Text) >= val(txtfields(24).Text) Then
        txtfields(25).Text = val(txtfields(23)) - val(txtfields(24)) - val(Text9.Text)
        txtfields(5).Text = Format(val(txtfields(25).Text), "##.000")
    Else
        MsgBox "Tare weight must be less than Gross Weight", vbInformation, head
        
        txtfields(24).Text = ""
        txtfields(24).SetFocus
        Exit Sub
    End If
    If Trim(txtfields(23).Text) <> "" And txtfields(24).Text <> "" Then
    
        'Label1.Caption = val(TXTFIELDS(23).Text) - val(TXTFIELDS(24).Text)
    
    End If
 
Case 25
'If Trim(txtfields(23).Text) <> "" And txtfields(25).Text <> "" Then
'    If Text9.Text <> "" Then
'       Label1.Caption = val(txtfields(23).Text) - val(txtfields(24).Text)
'    End If
' End If

Case 28
    txtfields(31).Text = txtfields(28).Text
    txtfields(36).Text = txtfields(28).Text
Case 20
Case 31
    SSTab1.Tab = 1
    txtfields(3).SetFocus
Case 25
    SSTab1.Tab = 1
    txtfields(3).SetFocus
Case 129
   
'          Set rsP = New Recordset
'           rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
'           VATFLG1 = "N"
'           If rsP.RecordCount > 0 Then
'               VATFLG1 = rsP(0)
'           End If
'        If VATFLG1 = "Y" Then
'          If val(Txtfields(129).Text) <> 0 Then
'                  Txtfields(128).Text = Round((val(Txtfields(129).Text) * (val(Txtfields(18).Text) + val(Txtfields(119).Text) + val(Txtfields(116).Text) + val(Txtfields(118).Text))) / 100, IGST_ROFF)
'                   Else
'                     Txtfields(129).Text = 0
'                End If
'        Else
'             Txtfields(128).Text = Round((val(Txtfields(129).Text) * (val(Txtfields(18).Text))) / 100, IGST_ROFF)
'
'        End If
        If Opt = "add" Or Opt = "mod" Then
           Call spdVar_LeaveCell(68, 1, -1, -1, False)
        End If
End Select
End If
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 22
    txtfields(33).Text = txtfields(22).Text
    txtfields(34).Text = txtfields(22).Text
    txtfields(31).Text = txtfields(28).Text
    txtfields(36).Text = txtfields(28).Text
    txtfields(32).Text = txtfields(30).Text
    txtfields(35).Text = txtfields(30).Text
    Text1(1).Text = Text1(0).Text
    Text1(2).Text = Text1(0).Text
Case 23
txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
Case 24
txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
Case 25
txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
Case 4
txtfields(4).Text = Format(val(txtfields(4).Text), "#0.000")
Case 5
If val(txtfields(5).Text) > 9999999.999 Then
txtfields(5).Text = ""
txtfields(5).SetFocus
Else
txtfields(5).Text = Format(txtfields(5).Text, "#0.000")
End If
Case 18
txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
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
        If val(txtfields(Index).Text) > 100 Then
            MsgBox "Please enter Percentage below 100", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        End If
        If Index <> 57 Then
            txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.00")
        Else
            txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.000")
        End If
    Case 53, 84
        If val(txtfields(Index).Text) > 100 Then
            MsgBox "Please enter Percentage below 100", vbInformation, head
            txtfields(Index).SetFocus
            Exit Sub
        Else
            If val(txtfields(53).Text) <> 0 Then
                txtfields(54).Text = Format(Round(val(txtfields(53).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
            End If
        
            TOTVAL = val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)
        
            If (val(TOTVAL) > val(txtfields(6).Text)) And val(txtfields(6).Text) > 0 Then
                ' If (Check1.value = 0 And txtFields(122).Text = "RS") And (Check1.value = 1 And val(txtFields(124).Text) <> 1) Then
                    MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
                    txtfields(53).Text = "0.00"
                    txtfields(54).Text = ""
                    txtfields(54).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
              '  End If
            End If
        End If
        ' Call spdVar_LeaveCell(1, q, 1, 1, False)
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.00")
    Case 6, 54, 85, 13, 42, 48, 44, 46, 42, 48, 44, 52, 11, 16, 58, 60, 62, 70, 64, 63, 107, 66, 111, 67, 69, 17, 18, 19, 112, 113
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.00")
    Case 57
        txtfields(Index).Text = Format(val(txtfields(Index).Text), "#0.000")
    Case 115
        If Opt = "add" Or Opt = "mod" Then
            If val(txtfields(115).Text) = 0 Then
                txtfields(115).SetFocus
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
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
If Opt = " " Or Opt = "" Then
'Frame2.Visible = False
Frame8.Visible = True

    Set adoPrimaryRS = New Recordset
'    adoPrimaryRS.Open "SHAPE {SELECT Top 1 A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,awt_flg,PJTC,inwarddate,PTYPE,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,varcode,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dutyclaimable,DISCOUNTFLG,DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,WeightFlg FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
'                 "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' order by lotdt Desc,arrno Desc " & _
    '                 " } AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT FROM RM_BALE" & _
    '                 " where lottype = 'A' and lotdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "') " & _
'                "  } AS ChildCMD RELATE ARRNO TO ARRNO,ARRDT TO ARRDT,LOTDT TO LOTDT,lottype to lottype ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
'  adoPrimaryRS.Open " SELECT   A.DIVCODE,a.rg23a,A.LOTDT,LOTTYPE,A.ARRNO,A.ARRDT,BILLNO,BILLDT,SUPCD,BRKCD,AREACD,GODOWN,awt_flg,PJTC,inwarddate,PTYPE,ISNULL(TAX_CHOICE,'SINGLE')TAX_CHOICE,varcode,vcatcd,shipchrg,inwardno,inwarddate,OtherTaxableAmt,dutyclaimable,DISCOUNTFLG,DutyPer,rateunit,ADDTAXCODE,ADDTAXPER,ADDTAXAMOUNT,WeightFlg,HSN,cgstper,A.cgstamt,A.sgstper,A.sgstamt,A.igstper,A.igstamt FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
'                    "  a.DIVCODE = '" & Divcode & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' order by lotdt ASC,arrno ASC ", DB, adOpenStatic
''19.10.17
   adoPrimaryRS.Open "SELECT  dutyclaimable,discountFlg, sampwt,favaourablewgt,Tax_Choice,DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,vcatcd,shipchrg, " & _
                      "inwardno,inwarddate,OtherTaxableAmt,WeightFlg,SICAAmt,HSN,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,a.Line_No,a.PlCode,ComWt_Flg,Comm_Wt,ExchangeRate,BillCurrency,DPDocno,DPDocDate,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt,Net_Rate,Tcs_per,Tcs_Amt ,TCS_AssAmt,TCS_CalcAssAmtFlag,lot_incidentcharge,lot_spotexpense,TypeTruckbale,suppassvalue FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
                    "  a.DIVCODE = '" & Divcode & "' and a.lotdt between dateadd(day,-30,'" & Format(pdate, "yyyy-mm-dd") & "') AND '" & Format(pdate, "yyyy-mm-dd") & "' and  A.LOTdt BETWEEN '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' order by lotdt desc ,ARRNO desc", DB, adOpenStatic


    If adoPrimaryRS.EOF = False And adoPrimaryRS.BOF = False Then
        iFlag = 0
       ' adoPrimaryRS.MoveLast
    End If
    If adoPrimaryRS.RecordCount <> 0 Then
        Set ADOSECONDARYRS = New Recordset
'        Set adoSecondaryRS = adoPrimaryRS("ChildCMD").UnderlyingValue
        ADOSECONDARYRS.Open " SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et,moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,ARRNO,ARRDT,Comm_Wt,MOITURE FROM RM_BALE" & _
                           " where lottype = 'A'  and arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                           ' and Varcode='" & adoPrimaryRS("varcode") & "'
                                    'catcd , LOTNO, baleno, GRWT, TAREWT,trash_et, moisture_et, netwt, LOTDT, lottype, PGRSWT, PTAREWT, PNETWT, partybaleno, arrno Varcode, Divcode
        Set grddatagrid.DataSource = ADOSECONDARYRS
        Call gridalign
        Frame2.Visible = False
        Frame18.Visible = False
        Call bindcontls
        Call disablcontls
        Call Lotdisplay
      '  Label62.Caption = IIf(IsNull(adoPrimaryRS("awt_flg")), "N", adoPrimaryRS("awt_flg"))
        txtfields(33).Locked = True
        txtfields(34).Locked = True
        txtfields(71).Locked = True
       ' txtfields(72).Locked = True
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
       TOTROWCNT = 0
       MsgBox "No Records Found", vbInformation, head
       Call Norecfound(BUTTON)
       SSTab1.Tab = 0
  End If
End If


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Frmlotbale", vbInformation, head

End Sub
Public Sub gridalign()
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
    
    grddatagrid.Columns(18).Width = 925
    grddatagrid.Columns(18).NumberFormat = "##0.000"
    grddatagrid.Columns(18).Alignment = dbgRight
    If UCase(CustID) = "JAT" Then
        grddatagrid.Columns(18).Locked = False
    Else
     grddatagrid.Columns(18).Locked = True
    End If
    grddatagrid.Columns(18).Caption = "Commercial Wt."
grddatagrid.Columns(19).Caption = "MOITURE %"
grddatagrid.Columns(19).Width = 925
grddatagrid.Columns(19).NumberFormat = "##0.00"
grddatagrid.Columns(19).Alignment = dbgRight
grddatagrid.Columns(19).Locked = True
    
Else
    grddatagrid.Columns(10).Caption = "   Supplier    Gross Wt."
    grddatagrid.Columns(11).Caption = "   Supplier    Tare Wt."
    grddatagrid.Columns(12).Caption = "   Supplier     Nett Wt."
    
    
    grddatagrid.Columns(13).Caption = " Supplier Bale No."
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
    grddatagrid.Columns(13).Visible = True
    grddatagrid.Columns(14).Visible = False
    grddatagrid.Columns(15).Visible = False
    
    grddatagrid.Columns(16).Width = 925
    If Opt <> "mod" Then
        grddatagrid.Columns(16).NumberFormat = "##0.000"
   
        grddatagrid.Columns(16).Alignment = dbgRight
        grddatagrid.Columns(16).Locked = False
        grddatagrid.Columns(16).Caption = "Commercial Wt."
    End If
    grddatagrid.Columns(17).Caption = "MOITURE %"
    grddatagrid.Columns(17).Width = 925
    grddatagrid.Columns(17).NumberFormat = "##0.00"
    grddatagrid.Columns(17).Alignment = dbgRight
    grddatagrid.Columns(17).Locked = True

    If Opt = "mod" Then
        grddatagrid.Columns(12).Visible = True
        grddatagrid.Columns(14).Visible = False
        grddatagrid.Columns(15).Visible = False
        grddatagrid.Columns(16).Visible = False
       grddatagrid.Columns(17).Visible = False
        grddatagrid.Columns(18).Width = 925
        grddatagrid.Columns(18).NumberFormat = "##0.000"
        grddatagrid.Columns(18).Alignment = dbgRight

    If UCase(CustID) = "JAT" Then
        grddatagrid.Columns(18).Locked = False
    Else
        grddatagrid.Columns(18).Locked = True
    End If
        grddatagrid.Columns(18).Caption = "Commercial Wt."
    
    
    grddatagrid.Columns(19).Caption = "MOITURE %"
    grddatagrid.Columns(19).Width = 925
    grddatagrid.Columns(19).NumberFormat = "##0.00"
    grddatagrid.Columns(19).Alignment = dbgRight
    grddatagrid.Columns(19).Locked = True
    End If
    
    

End If

End Sub

Public Sub Value_Cal()
 Text4.Text = 0
 Text5.Text = 0
 Text6.Text = 0
 Text7.Text = 0
 Text16.Text = 0
 
 ADOSECONDARYRS.MoveFirst
 For I = 1 To ADOSECONDARYRS.RecordCount
    Text4.Text = val(grddatagrid.Columns(3).Text)
    Text5.Text = val(Text5.Text) + val(grddatagrid.Columns(3).Text)
    Text6.Text = val(Text6.Text) + val(grddatagrid.Columns(3).Text)
    Text16.Text = val(Text16.Text) + val(grddatagrid.Columns(5).Text)
    Text7.Text = val(Text7.Text) + val(grddatagrid.Columns(6).Text)
   ADOSECONDARYRS.MoveNext
 Next
End Sub

Public Sub delmodproc(a As String, B As String)
On Error GoTo delmodproc_Error

 Set adoPrimaryRS = New Recordset

adoPrimaryRS.Open "SHAPE {SELECT DISTINCT * FROM RM_LOT A WHERE  LOTTYPE = 'A' and   " & _
                 "  a.DIVCODE = '" & Divcode & "' and A.ARRNO=" & g & " AND  A.ARRDt='" & Format(f, "YYYY-MM-DD") & "'  AND opflg='N' and lotyear=" & Year(yfdate) & " " & _
                 " Order by A.ARRNO} AS ParentCMD APPEND ({(SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,trash_et, moisture_et,NETWT,LOTDT,lottype,pgrswt,ptarewt,pnetwt,partybaleno,arrno,arrdt  ,varcode,divcode,Comm_Wt,MOITURE  FROM RM_BALE" & _
                 " where lottype = 'A' AND ARRNO=" & g & " and divcode='" & Divcode & "' ) order by VARCODE,baleno,LOTNO" & _
                "  } AS ChildCMD RELATE ARRNO TO ARRNO,LOTDT TO LOTDT,lottype to lottype ,divcode to divcode  ) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic
                    If adoPrimaryRS.RecordCount > 0 Then
                    

    Set rssmodlot = New Recordset
    rssmodlot.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,inwardno,inwarddate,OtherTaxableAmt,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt" & _
    ",tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,modusrid,moddate,TAX_CHOICE,vcatcd,shipchrg,otherTaxableAmt,FAVAOURABLEWGT,SICAAmt,HSN,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,Line_No,PlCode,ExchangeRate,BillCurrency,ComWt_Flg,Comm_Wt,DPDocno,DPDocDate,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt,Net_Rate,Tcs_per,Tcs_Amt,TCS_AssAmt,TCS_CalcAssAmtFlag ,lot_incidentcharge,lot_spotexpense,TypeTruckbale,suppassvalue FROM RM_LOT WHERE DIVCODE = '" & Divcode & "' and ARRNO=" & g & " AND LOTTYPE = 'A' and  ARRDt='" & Format(f, "YYYY-MM-DD") & "'  AND opflg='N' and lotyear=" & Year(yfdate) & "", DB, adOpenStatic, adLockBatchOptimistic

    Set ADOSECONDARYRS = adoPrimaryRS("childcmd").UnderlyingValue
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call gridalign
    Call bindcontls
    
    If adoPrimaryRS.RecordCount > 0 Then
        If adoPrimaryRS("WeightFlg") = "S" Then
            optSUPPLIER = True
        ElseIf adoPrimaryRS("WeightFlg") = "C" Then
            OptCommercialWt = True
        Else
            optMILL = True
        End If
    End If

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
    Call gridalign
    
        Set rsb = New Recordset
        rsb.Open "select * from rm_arrival where arrno='" & adoPrimaryRS("ARRno") & "' and arrdate='" & Format(adoPrimaryRS("ARRDT"), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
        If rsb.RecordCount > 0 Then
            MaskEdBox1(4).Mask = rsb("ARRDATE")
            MaskEdBox1(4).Text = MaskEdBox1(4).Mask
            txtfields(41).Text = IIf(IsNull(rsb("GCNO")), "", rsb("gcno"))
            txtfields(40).Text = rsb("LORRYNOS")
            txtfields(38).Text = rsb("AREACODE")
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
            Set Rs = New Recordset
            Rs.Open "Select CentralizedOrder from rm_param", DB, adOpenStatic
            If globalarrivalorder = "C" Then
                If Rs(0) = "Y" Then
                Set rscont = New Recordset
                    rscont.Open "select DLYTYPE from rm_cont where contno='" & rsb("supcd") & "' and varcode='" & rsb("varcode") & "' and contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
                Else
                    Set rscont = New Recordset
                    rscont.Open "select DLYTYPE from rm_cont where contno='" & rsb("supcd") & "' and varcode='" & rsb("varcode") & "' and   contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                End If
            Else
                If Rs(0) = "Y" Then
                    Set rscont = New Recordset
                    rscont.Open "select DLYTYPE from rm_cont where contno='" & rsb("supcd") & "' and varcode='" & rsb("varcode") & "' and  contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "'", DB, adOpenStatic
                Else
                    Set rscont = New Recordset
                    rscont.Open "select DLYTYPE from rm_cont where contno='" & rsb("supcd") & "' and varcode='" & rsb("varcode") & "' and  contno='" & rsb("contno") & "' and contdt='" & Format(rsb("contdt"), "yyyy-mm-dd") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
                End If
            End If
            If rscont.RecordCount > 0 Then
                deltype = rscont("DLYTYPE")
            End If
            
            Set LABRS = New Recordset
            LABRS.Open "SELECT *  FROM RM_area  WHERE areacode='" & adoPrimaryRS("areacd") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If LABRS.RecordCount > 0 Then
                    txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                    Text20.Text = LABRS("AREANAME")
            Else
                     txtfields(92).Text = ""
                     txtfields(93).Text = ""
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
            txtincidentcharge.Text = IIf(IsNull(adoPrimaryRS("lot_incidentcharge")), 0, adoPrimaryRS("lot_incidentcharge"))
         txtspotexpense.Text = IIf(IsNull(adoPrimaryRS("lot_spotexpense")), 0, adoPrimaryRS("lot_spotexpense"))
         

            txtfields(27).Text = rsb("weignment")
            If IsNull(rsb("weightdate")) = False Then
                MaskEdBox1(0).Text = rsb("weightdate")
            End If

                        
            Set rsF = New Recordset
            rsF.Open "SELECT * FROM RM_god WHERE GCODE='" & adoPrimaryRS("GODOWN") & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
            If rsF.RecordCount > 0 Then
                    Text8.Text = rsF("GNAME")
            Else
                    Text8.Text = " "
            End If

            Set rs4 = New Recordset
            rs4.Open "SELECT * FROM RM_PURTYPE WHERE PURTYPE='" & adoPrimaryRS("PTYPE") & "'", DB, adOpenStatic
            
            If rs4.RecordCount > 0 Then
                txtfields(303).Text = rs4("PURDESC")
            Else
                txtfields(303).Text = " "
            End If
            
            Set rs5 = New Recordset
            rs5.Open "SELECT * FROM FA_TCMAS WHERE TC='" & IIf(IsNull(adoPrimaryRS("PJTC")), 0, adoPrimaryRS("PJTC")) & "'", DB, adOpenStatic
            
            If rs5.RecordCount > 0 Then
                txtfields(301).Text = rs5("TCHEAD")
            Else
                txtfields(301).Text = " "
            End If
            Call Lotdisplay
        End If
    
    
    If Opt = "mod" Or Opt = "del" Then
        txtfields(0).Locked = True
        txtfields(1).Locked = True
        txtfields(2).Locked = True
        txtfields(3).Locked = False
        txtfields(4).Locked = False
        txtfields(6).Locked = False
        txtfields(7).Locked = False
        txtfields(9).Locked = False
        txtfields(11).Locked = False
        txtfields(12).Locked = False
        txtfields(13).Locked = False
        txtfields(14).Locked = False
        txtfields(15).Locked = False
        txtfields(16).Locked = False
        txtfields(17).Locked = False
        txtfields(18).Locked = False
        txtfields(19).Locked = True
        txtfields(20).Locked = False
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
            oldgrs = txtfields(23).Text
            oldtare = txtfields(24).Text
            QTY = txtfields(22).Text
            Screen.MousePointer = 0
        MaskEdBox1(1).Enabled = True
        End If
    End If
    End If
Frame9.Visible = False
Screen.MousePointer = 0
Exit Sub
delmodproc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure delmodproc of Form Frmlotbale", vbInformation, head
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

On Error GoTo txtfields_Validate_Error
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then

Call TaxCalculation

Select Case Index
Case 17

Call spdVar_LeaveCell(68, 1, -1, -1, False)
Case 107
Call LotAmountAssign(val(txtfields(Index).Text), Ishipchrg, TOTROWCNT)
Call spdVar_LeaveCell(73, 1, -1, -1, False)

Case 124
        If Trim(txtfields(122).Text) <> "RS" And val(txtfields(124).Text) = 1 Then
            txtfields(124).SetFocus
            MsgBox "Please enter Conversion Rate", vbInformation, head
        Exit Sub
    
        
         If val(txtfields(124).Text) > 75 Then
             txtfields(124).SetFocus
             MsgBox "Conversion Rate should not be greater than 75", vbInformation, head
             txtfields(124).Text = 70
             Exit Sub
         End If
         
         If val(txtfields(124).Text) < 65 Then
             txtfields(124).SetFocus
             MsgBox "Conversion Rate should not be less than 70", vbInformation, head
             txtfields(124).Text = 70
             Exit Sub
         End If
    End If
Case 120
            If Record_Exists("RM_Plant") = False Then Exit Sub
            LookUp.Clear = True
            LookUp.query = "SELECT plcode ""Plant Code"",PLName ""Description"" FROM RM_Plant "
            LookUp.ALIGN = "900,3000"
            LookUp.Caption = "Plant Listing"
            LookUp.DefCol = "Plant Description"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    txtfields(120).Text = LookUp.Fields(0)
                    Text17.Text = LookUp.Fields(1)
             
            Else
                    Cancel = True
                    txtfields(120).SetFocus
            End If
            

 
    

Case 106
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM IN_CAT", DB, adOpenStatic
    If Rs.RecordCount <> 0 And Trim(txtfields(106).Text) = "" Then
        LookUp.Clear = True
        LookUp.query = " select dISTINCT CATCODE ""Vat Category Code"",CATDESC ""Vat Description""  from in_cat"
        LookUp.Caption = "Tax Details List"
        LookUp.DefCol = "Vat Description"
        LookUp.ALIGN = "2000,3500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
               txtfields(106).Text = LookUp.Fields(0)
               LookUp.Clear = True
          
        Else
               txtfields(106).Text = ""
            
        End If
     Else
        txtfields(106).Text = ""
     End If
Case 3


        If Opt = "mod" Then
            Set rsg = New Recordset
            rsg.Open "select isnull(billno,'') from rm_lot where BILLNO='" & txtfields(3).Text & "' AND  supcd='" & txtfields(30).Text & "' and lotdt betweeN '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and arrno<>" & val(txtfields(96).Text) & "", DB, adOpenStatic
            If rsg.RecordCount > 0 Then
                    MsgBox "Already Bill number Given to this Supplier", vbInformation, head
                    txtfields(3).Text = ""
                    txtfields(3).SetFocus
                    Exit Sub
            End If
        End If
        

Case 22
    Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1(0).Text = Rs(0)
   End If
   Rs.Close

Case 26
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(26).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1(0).Text = Rs(0)
   End If
   Rs.Close
Case 32
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(32).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text1(1).Text = Rs(0)
   Else
     Text1(1).Text = ""
   End If
   Rs.Close

Case 27
   Set Rs = New Recordset
   Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(27).Text & "'", DB, adOpenStatic
   If Rs.RecordCount <> 0 Then
     Text9.Text = Rs(0)
   Else
     Text9.Text = ""
   End If
   Rs.Close
   
Case 30


    If Not adoPrimaryRS.EOF Then
        Set Rs = New Recordset
        Rs.Open "SELECT * FROM RM_COUNT WHERE CNTCD='" & adoPrimaryRS("CNTCODE") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount > 0 Then txtfields(41).Text = Rs(1)
    End If

   
Case 30
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(30).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
          Text1(0).Text = Rs("slname")
        Else
          Text1(0).Text = ""
        End If
        Rs.Close
Case 37
        Set Rs = New Recordset
        Rs.Open "select slname from fa_slmas where slcode = '" & txtfields(37).Text & "'", DB, adOpenStatic
        If Rs.RecordCount <> 0 Then
          Text12.Text = Rs("slname")
        Else
          Text12.Text = ""
        End If
        Rs.Close
Case 24
    Text9.Text = (val(txtfields(23).Text) - val(txtfields(24).Text)) * val(Text3.Text) / 100
    txtfields(25).Text = (val(txtfields(23).Text) - val(txtfields(24).Text)) - val(Text9.Text)
    txtfields(5).Text = Format(val(txtfields(25).Text), "##.000")
    RATECANDY = val(txtfields(1).Text)
    If RATECANDY > 0 Then
       Set Rs = New Recordset
       Rs.Open "SELECT cENTRALISEDORDER FROM RM_PARAM"
       If globalarrivalorder = "C" Then
            If Rs(0) = "Y" Then
            Set rsr = New Recordset
                rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
            Else
                Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  )", DB, adOpenStatic
              
            End If
        Else
            If Rs(0) = "Y" Then
                 Set rsr = New Recordset
                 rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
             Else
                 Set rsr = New Recordset
                rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
               
             End If
       End If
       If rsr.RecordCount > 0 Then
            txtfields(6).Text = Format(val(txtfields(25).Text) * (Round((RATECANDY / rsr("VALUE")) - val(txtfields(94).Text), 4)), "00.00")
       Else
            If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
                txtfields(6).Text = val(txtfields(25).Text) * Round(RATECANDY / 1, 4)
            Else
                txtfields(6).Text = val(txtfields(25).Text) * Round(RATECANDY / 355.6187, 4)
            End If
       End If
    End If
Case 94
    
    Call Calc
Case 13
    If val(txtfields(13).Text) > val(txtfields(6).Text) Then
        MsgBox "Frieght Amount must be less than Bill Value", vbInformation, head
        txtfields(13).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
    Call LotAmountAssign(val(txtfields(Index).Text), IFrtamt, TOTROWCNT)
    
Case 129
      Call LotValueAssign(val(txtfields(Index).Text), itcsper)
   
Case 54
    If val(txtfields(54).Text) > val(txtfields(6).Text) Then
        MsgBox "Cash Discount must be less than Bill Value", vbInformation, head
        txtfields(54).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
     Call LotAmountAssign(val(txtfields(Index).Text), Icashdisamt, TOTROWCNT)
Case 85
    If val(txtfields(85).Text) > val(txtfields(6).Text) Then
        MsgBox "Trade Discount must be less than Bill Value", vbInformation, head
        txtfields(85).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
    Call LotAmountAssign(val(txtfields(Index).Text), Itradedisamt, TOTROWCNT)
Case 42
    If val(txtfields(42).Text) > val(txtfields(6).Text) Then
        MsgBox "B.E.D Amount must be less than Assessable Value", vbInformation, head
        txtfields(42).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 44
    If val(txtfields(44).Text) > val(txtfields(6).Text) Then
        MsgBox "Ed Cess Amount must be less than Bill Value", vbInformation, head
        txtfields(44).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 46
    If val(txtfields(46).Text) > val(txtfields(6).Text) Then
        MsgBox "HsCess Amount must be less than Bill Value", vbInformation, head
        txtfields(46).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 48
    If val(txtfields(48).Text) > val(txtfields(6).Text) Then
        MsgBox "Cess Amount must be less than Bill Value", vbInformation, head
        txtfields(48).Text = "0.00"
        txtfields(48).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
     Call LotAmountAssign(val(txtfields(Index).Text), Icessamt, TOTROWCNT)
Case 52
    If val(txtfields(52).Text) > val(txtfields(6).Text) Then
        MsgBox "Tax Amount must be less than Bill Value", vbInformation, head
        txtfields(52).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 11
    If val(txtfields(11).Text) > val(txtfields(6).Text) Then
        MsgBox "Other Tax Amount must be less than Bill Value", vbInformation, head
        txtfields(11).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
     Call LotAmountAssign(val(txtfields(Index).Text), IothTaxamt, TOTROWCNT)
Case 16
    If val(txtfields(16).Text) > val(txtfields(6).Text) Then
        MsgBox "Railway Freight Amount must be less than Bill Value", vbInformation, head
        txtfields(16).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 58
    If val(txtfields(58).Text) > val(txtfields(6).Text) Then
        MsgBox "Insurance Amount must be less than Bill Value", vbInformation, head
        txtfields(58).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
    Call LotAmountAssign(Round(val(txtfields(Index).Text), 0), IInsamt, TOTROWCNT)
Case 60
    If val(txtfields(60).Text) > val(txtfields(6).Text) Then
        MsgBox "Commission Amount must be less than Bill Value", vbInformation, head
        txtfields(60).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    End If
    Call LotAmountAssign(val(txtfields(Index).Text), ICommAMT, TOTROWCNT)
    
    
Case 61
    Call LotAmountAssign(val(txtfields(61).Text), ILCper, TOTROWCNT)
    Call spdVar_LeaveCell(61, 1, -1, -1, False)
Case 62
    If val(txtfields(62).Text) > val(txtfields(6).Text) Then
        MsgBox "LC Interest must be less than Bill Value", vbInformation, head
        txtfields(62).SetFocus
        Cancel = True
        Screen.MousePointer = 0
        Exit Sub
    
    End If
    Call LotAmountAssign(val(txtfields(62).Text), ILCamt, TOTROWCNT)
        Call spdVar_LeaveCell(62, 1, -1, -1, False)
Case 67
    Call LotAmountAssign(val(txtfields(67).Text), IOthers, TOTROWCNT)
    Call spdVar_LeaveCell(IOthers, 1, -1, -1, False)
Case 63
    Call LotAmountAssign(val(txtfields(63).Text), Icharity, TOTROWCNT)
Case 69
    Call LotAmountAssign(val(txtfields(69).Text), IcustomDuty, TOTROWCNT)
    Call spdVar_LeaveCell(69, 1, -1, -1, False)
Case 7, 42
    
End Select
End If

If Opt = "add" Or Opt = "mod" Then

    
Select Case Index
Case 28
    
    If Trim(txtfields(28).Text) <> "" Then
        Set lot = New Recordset
        lot.Open "select lotno from rm_lot where lotno = " & val(Trim(txtfields(28).Text)) & " and divcode='" & Divcode & "'", DB, adOpenStatic
        If lot.RecordCount > 0 Then
            MsgBox ("This Lot Number is already entered"), vbInformation, head
            txtfields(28).Text = ""
            Cancel = True
            Exit Sub
        Else
            MaskEdBox1(3).Enabled = True
            MaskEdBox1(3).SetFocus
            Exit Sub
            End If
    Else
        MsgBox ("Please Enter Lot Number"), vbInformation, head
        txtfields(28).Text = ""
        Cancel = True
        Exit Sub
    End If
Case 5
If txtfields(5).Text = "" Then
MsgBox "Please enter Invoice Weight", vbInformation, head
Cancel = True
End If
Case 6

Case 7

    If UCase(deltype) = "F" Then
        txtfields(42).Text = Format(Round(val(txtfields(7).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text))) / 100, BED_ROFF), "0.00")
    Else
        txtfields(42).Text = Format(Round(val(txtfields(7).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text))) / 100, BED_ROFF), "0.00")
    End If
    Exit Sub
Case 43

    txtfields(44).Text = Format(Round(val(txtfields(43).Text) * val(txtfields(42).Text) / 100, EDCESS_ROFF), "0.00")
    Exit Sub
Case 45

    txtfields(46).Text = Format(Round(val(txtfields(45).Text) * val(txtfields(42).Text) / 100, HSCESS_ROFF), "0.00")
    Exit Sub
Case 47
   
    If UCase(deltype) = "F" Then
        txtfields(48).Text = Format(Round(val(txtfields(47).Text) * (val(txtfields(6).Text) - val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text) + val(txtfields(42).Text) + val(txtfields(44).Text) + val(txtfields(46).Text)) / 100, CESS_ROFF), "0.00")
    Else
        txtfields(48).Text = Format(Round(val(txtfields(47).Text) * (val(txtfields(6).Text) - val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(42).Text) + val(txtfields(44).Text) + val(txtfields(46).Text)) / 100, CESS_ROFF), "0.00")
    End If
    Exit Sub
Case 49
    txtfields(50).Text = Round(val(txtfields(49).Text) * val(txtfields(6).Text) / 100, 0)
    Exit Sub
Case 83
If Option2.value Then
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & txtfields(83).Text & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        VatFlag = False
        LookUp.Clear = True
        LookUp.query = " select tax_code""Tax code"",description""Tax Description"",st_per"" Tax %"",ITCTAXSTATUS""ITC Tax Status"" from ig_tax where taxstatus='Y'"
        LookUp.Caption = "Tax Listing"
        LookUp.DefCol = "Tax Description"
        LookUp.ALIGN = "1200,3500,1500,2000"
       LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(83).Text = LookUp.Fields(0)
            txtfields(51).Text = Format(LookUp.Fields(2), "0.00")

            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
            If Option2.value = True Then
             Call TaxCalculation
             If optBefore = True Then
                Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                If Rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       txtfields(52).Text = KSLRound((val(txtfields(51).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(52).Text = KSLRound((val(txtfields(51).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       txtfields(52).Text = KSLRound(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(52).Text = KSLRound(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                End If
            Else
            Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                If Rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       txtfields(52).Text = KSLRound((val(txtfields(51).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                    Else
                       txtfields(52).Text = KSLRound((val(txtfields(51).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       txtfields(52).Text = KSLRound(val(txtfields(51).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(52).Text = KSLRound(val(txtfields(51).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, TAX_ROFF)
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                End If
            End If
                
               
                    Set rsP = New Recordset
                    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
                    VATFLG = "N"
                    If rsP.RecordCount > 0 Then
                        VATFLG = rsP(0)
                    End If
                    If VATFLG = "Y" Then
                      txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text) - val(txtfields(113).Text)
                    End If
               
            End If
            txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
            LookUp.Clear = True
            Else
                   txtfields(51).Text = ""
                   txtfields(52).Text = ""
                   txtfields(83).Text = ""
           End If
        Else
            txtfields(51).Text = Rs("ST_PER")
            Call TaxCalculation
            Tax_Calculation
          'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
            
            
              Set rsP = New Recordset
                    rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
                    VATFLG = "N"
                    If rsP.RecordCount > 0 Then
                        VATFLG = rsP(0)
                    End If
                    If VATFLG = "Y" Then
                     txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text) - val(txtfields(113).Text)
                End If
           
        End If
End If
Case 114
    If Option2.value Then
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM IG_TAX WHERE TAX_CODE='" & txtfields(114).Text & "'", DB, adOpenStatic
    If Rs.RecordCount = 0 Then
        VatFlag = False
        LookUp.Clear = True
        LookUp.query = " select tax_code""Tax code"",description""Tax Description"",st_per"" Tax %"",ITCTAXSTATUS""ITC Tax Status"" from ig_tax where taxstatus='Y'"
        LookUp.Caption = "Tax Listing"
        LookUp.DefCol = "Tax Description"
        LookUp.ALIGN = "1200,3500,1500,2000"
       LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(114).Text = LookUp.Fields(0)
            txtfields(112).Text = Format(LookUp.Fields(2), "0.00")

            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            If rsP.RecordCount > 0 Then
                VATFLG = rsP(0)
            End If
            If Option2.value = True Then
             Call TaxCalculation
             If optBefore = True Then
                Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                If Rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                End If
            Else
            Set Rs = New Recordset
                Rs.Open "Select * from rm_param", DB, adOpenStatic
                If Rs("commtax") = "Y" Then
                    If UCase(deltype) = "F" Then
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(113).Text = KSLRound((val(txtfields(112).Text) + val(txtfields(60).Text)) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
                Else
                    If UCase(deltype) = "F" Then
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    Else
                       txtfields(113).Text = KSLRound(val(txtfields(112).Text) * (val(txtfields(6).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text)) / 100, ADDTAX_ROFF)
                    End If
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
                      txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(113).Text)
                    End If
              
            End If
            txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
            LookUp.Clear = True
            Else
                   txtfields(112).Text = ""
                   txtfields(113).Text = ""
                   txtfields(114).Text = ""
           End If
        Else
            txtfields(112).Text = Rs("ST_PER")
            Call TaxCalculation
            Tax_Calculation

            
            
            txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(113).Text)
           
        End If
Else
            Call TaxCalculation
            Tax_Calculation
           
            
            Set rsP = New Recordset
            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
            VATFLG = "N"
            If rsP.RecordCount > 0 Then
                        VATFLG = rsP(0)
            End If
            If VATFLG = "Y" Then
                    txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(113).Text)
            End If
            

End If


Case 107
    Call TaxCalculation
Case 111
    txtfields(Index).Text = Format(txtfields(Index).Text, "0.00")
    Call LotAmountAssign(val(txtfields(Index).Text), IOthTaxableAmt, TOTROWCNT)

    Call Tax_Calculation
    Call TaxCalculation
Case 54
        Call LotAmountAssign(val(txtfields(Index).Text), Icashdisamt, TOTROWCNT)
Case 53
    Call LotValueAssign(val(txtfields(Index).Text), Icashdisper)
    
       Exit Sub
Case 130
    Call spdVar_LeaveCell(68, 1, -1, -1, False)
Case 84, 85
   
    If Trim(txtfields(122).Text) <> "RS" And val(txtfields(124).Text) = 1 Then
    txtfields(124).SetFocus
    MsgBox "Please enter Conversion Rate", vbInformation, head
    Exit Sub
    End If
    
    If val(txtfields(84).Text) <> 0 Then
        txtfields(85).Text = Format(Round(val(txtfields(84).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
    Else
   
    End If
    TOTVAL = val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)
    
    Call LotAmountAssign(val(txtfields(84).Text), Itradedisper, TOTROWCNT)
    Call LotAmountAssign(val(txtfields(85).Text), Itradedisamt, TOTROWCNT)
    
    
    Exit Sub
Case 55
    If val(txtfields(55).Text) <> 0 Then
        txtfields(56).Text = Round(val(txtfields(55).Text) * val(txtfields(6).Text) / 100, 0)
    Else
        txtfields(56).Text = 0
    End If
    Exit Sub
Case 8
    If val(txtfields(8).Text) <> 0 Then
        txtfields(9).Text = val(txtfields(8).Text) * val(txtfields(52).Text) / 100
    Else
 
    End If
    Exit Sub
Case 10
    If optBefore = True Then
        If val(txtfields(10).Text) <> 0 Then
            txtfields(11).Text = Format(Round(val(txtfields(10).Text) * val(txtfields(6).Text) / 100, ADDTAX_ROFF), "0.00")
        Else
          
        End If
    Else
        If val(txtfields(10).Text) <> 0 Then
            txtfields(11).Text = Format(Round((val(txtfields(6).Text) - val(txtfields(85).Text) - val(txtfields(54).Text)) * val(txtfields(10).Text) / 100, ADDTAX_ROFF), "0.00")
        Else
        
        End If
    End If
    Exit Sub
Case 12, 13
    If val(txtfields(12).Text) <> 0 Then
         txtfields(13).Text = Format(Round(val(txtfields(12).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
    Else
       
    End If
    TOTVAL = val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(13).Text)
    
    If val(TOTVAL) > val(txtfields(6).Text) Then
     If (Check1.value = 0 And txtfields(122).Text = "RS") Or (Check1.value = 1 And val(txtfields(124).Text) <> 1) Then
        MsgBox "Discount and Freight Amount must not exceed Bill Value", vbInformation, head
        txtfields(13).Text = ""
        txtfields(12).SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If
    End If
    
    
    Exit Sub
Case 15
    If val(txtfields(15).Text) <> 0 Then
        txtfields(16).Text = Format(Round(val(txtfields(15).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
    Else
        txtfields(16).Text = Format(0, "0.00")
    End If
    Exit Sub
Case 57
    txtfields(57).Text = Format(val(txtfields(57).Text), "0.000")
    Call LotValueAssign(val(txtfields(57).Text), IInsper)

Case 59
    If val(txtfields(59).Text) <> 0 Then
        txtfields(60).Text = Format(Round(val(txtfields(59).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
    Else
        txtfields(60).Text = Format(0, "0.00")
    End If

    txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    Tax_Calculation
    Call TaxCalculation
    
    Exit Sub
Case 60

    'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
    Tax_Calculation
    
          Set rsP = New Recordset
                            rsP.Open "select isnull(vatflg,'N')  FROM RM_PARAM", DB, adOpenStatic
                            VATFLG = "N"
                            If rsP.RecordCount > 0 Then
                                VATFLG = rsP(0)
                            End If
          If VATFLG = "Y" Then
        txtfields(18).Text = val(txtfields(18).Text) - val(txtfields(52).Text) - val(txtfields(113).Text)
        End If
  
        txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
    Call TaxCalculation
    Exit Sub
Case 61
    If val(txtfields(61).Text) <> 0 Then
        txtfields(62).Text = Format(Round(val(txtfields(61).Text) * val(txtfields(6).Text) / 100, 2), "0.00")
    Else
        txtfields(62).Text = Format(0, "0.00")
    End If
    Exit Sub
Case 86
    If val(txtfields(86).Text) <> 0 Then
        txtfields(87).Text = val(txtfields(86).Text) * val(txtfields(6).Text) / 100
    Else
        txtfields(87).Text = 0
    End If
    Exit Sub
Case 22
    If Opt = "add" Then
        If txtfields(22).Text = "" Then
            MsgBox "Please enter Quantity", vbInformation, head
            txtfields(22).Locked = False
            Cancel = True
            Exit Sub
        Else
        
        Set Rs = New Recordset
        Rs.Open "Select CentralizedOrder from rm_param", DB, adOpenStatic
        If globalarrivalorder = "C" Then
             If Rs(0) = "Y" Then
            Set rsg = New Recordset
                rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'", DB
            Else
                Set rsg = New Recordset
                rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB
            End If
        Else
            If Rs(0) = "Y" Then
                Set rsg = New Recordset
                rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "'", DB
            Else
                Set rsg = New Recordset
                rsg.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty,ISNULL(RECQTY,0)AS RECQTY,isnull(cancelbales,0) as cancelbales,weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(MaskEdBox1(1).Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB
            End If
        End If
        If rsg.RecordCount > 0 Then
          Set rsa = New Recordset
            rsa.Open "select isnull(qtymargin,0) from rm_param ", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                toqty = (rsg("ORDQTY") + rsg("ORDQTY") * rsa(0) / 100) - (IIf(IsNull(rsg("RECQTY")), 0, rsg("recqty")) + rsg("cancelbales"))
     
                lbltolwithbal.Caption = "Tola Bal: " & toqty
            Else
                toqty = 0
            End If
            
            If val(txtfields(22).Text) > val(toqty) Then
                MsgBox "Quantity must be less than or equal to the Balance Quantity", vbInformation, head
                Cancel = True
                txtfields(22).Text = ""
                txtfields(22).SetFocus
                Exit Sub
            End If
        End If
        End If
    End If
    
    
Case 81
If txtfields(81).Text = "" Then
    MsgBox "Please enter Party Gross Weight", vbInformation, head
    txtfields(81).SetFocus
    Cancel = True
    Exit Sub
End If
   
Case 82
If txtfields(82).Text = "" Then

    txtfields(82).Text = "0"
End If
    
Case 23
If txtfields(23).Text = "" Then
MsgBox "Please Enter Gross Weight", vbInformation, head
Cancel = True
End If
Case 24
If txtfields(24).Text = "" Then

    txtfields(24).Text = "0"
End If

Case 29
If Opt = "add" Then
Set Rs = New Recordset
Rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
If globalarrivalorder = "C" Then
    If Rs(0) = "Y" Then
        Set rsa = New Recordset
        rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AND contno='" & Trim(txtfields(29).Text) & "'", DB, adOpenStatic
    Else
        Set rsa = New Recordset
        rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))  AND contno='" & Trim(txtfields(29).Text) & "'", DB, adOpenStatic
    
    End If
 Else
    If Rs(0) = "Y" Then
        Set rsa = New Recordset
        rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) AND contno='" & Trim(txtfields(29).Text) & "'", DB, adOpenStatic
    Else
        Set rsa = New Recordset
        rsa.Open "select contno,contdt,candyrate from rm_cont where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' AND contno='" & Trim(txtfields(29).Text) & "'", DB, adOpenStatic
    
    End If
End If

If rsa.RecordCount = 0 Then
Set Rs = New Recordset
Rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
If globalarrivalorder = "C" Then
    If Rs(0) = "Y" Then
       Set Rs = New Recordset
       Rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0))", DB, adOpenStatic, adLockBatchOptimistic
    Else
    
       Set Rs = New Recordset
       Rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
    End If
Else
    If Rs(0) = "Y" Then
       Set Rs = New Recordset
       Rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0))", DB, adOpenStatic, adLockBatchOptimistic
    Else
    
       Set Rs = New Recordset
       Rs.Open "select * from rm_cont a where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    
    End If
End If
   If Rs.RecordCount = 0 Then
        MsgBox "Please enter details in Order Transaction first", vbInformation, head
        Call BUTTON_Click(10)
   Else
   
     StatusBar1.Panels(2).Text = "Select Order number from the list"
     LookUp.Clear = True
Set Rs = New Recordset
Rs.Open "Select CentralizedOrder from Rm_param", DB, adOpenStatic
 If globalarrivalorder = "C" Then
    If Rs(0) = "Y" Then
         LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0))  and a.supcd=b.slcode and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))"
    Else
         LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and a.supcd=b.slcode"
    End If
 Else
    If Rs(0) = "Y" Then
         LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and divcode='" & Divcode & "' and a.supcd=b.slcode"
    Else
         LookUp.query = " select Contno""ContractNumber"",Contdt""Date"",Slname""Supplier"",candyrate""Rate"" from rm_cont a,fa_slmas b where ordqty>(ISNULL(RECQTY,0)+isnull(cancelbales,0)) and a.supcd=b.slcode"
    End If
End If

     LookUp.Caption = "Arrival Listing"
     LookUp.DefCol = "ContractNumber"
     LookUp.ALIGN = "1200,1500,4000"
     LookUp.Show vbModal
     If LookUp.Cancel = False Then
            SSTab1.Visible = True
            txtfields(29).Text = LookUp.Fields(0)
            contdt = Format(LookUp.Fields(1), "dd/mm/yyyy")
            MaskEdBox1(1).Text = Format(LookUp.Fields(1), "dd/mm/yyyy")
            Call LotLoad(LookUp.Fields(0), LookUp.Fields(1))
            LookUp.Clear = True
     End If
     End If
   Else
           contdt = Format(rsa(1), "dd/mm/yyyy")
            MaskEdBox1(1).Text = Format(rsa(1), "dd/mm/yyyy")
            Call LotLoad(Trim(txtfields(29).Text), CStr(contdt))
   
   End If
End If
Case 77
 If Opt = "add" Or Opt = "mod" Then
            Set Rs = New Recordset
            Rs.Open "select * from rm_god where gcode='" & Trim(txtfields(77).Text) & "'  and divcode='" & Divcode & "'", DB, adOpenDynamic, adLockOptimistic
            If Rs.RecordCount <> 0 Then
                Text8.Text = Rs("gname")
                txtfields(77).Text = Rs("gcode")
                txtfields(3).Locked = False
            Else
                LookUp.Clear = True
                LookUp.query = "select gcode""Godown Code"",gname""Godown Name"" from rm_god  where divcode='" & Divcode & "'"
                LookUp.DefCol = "Godown Name"
                LookUp.Caption = "Godown Listing"
                LookUp.ALIGN = "1500,2500"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                txtfields(77).Text = LookUp.Fields(0)
                Text8.Text = LookUp.Fields(1)
                Else
                Exit Sub
                End If
                LookUp.Clear = True
        End If
        End If
Case 300
    If Opt = "add" Or Opt = "mod" Then
        If txtfields(3).Text <> "" Then
            Set rsa = New Recordset
            rsa.Open "select a.tc,a.tchead from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc and a.tc='" & val(txtfields(300).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                    LookUp.Clear = True
                    LookUp.query = "select a.tc""Transaction Code"",a.tchead""Type Description"" from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
                    LookUp.DefCol = "Type Description"
                    LookUp.ALIGN = "2000,3500"
                    LookUp.Caption = "Transaction Type Listing"
                    
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtfields(300).Text = LookUp.Fields(0)
                        txtfields(301).Text = LookUp.Fields(1)
                        LookUp.Clear = True
                        txtfields(302).SetFocus
                    Else
                        SSTab1.Visible = True
                        txtfields(300).SetFocus
                    End If
            Else
                txtfields(301).Text = rsa("tchead")
            End If
        End If
    End If
Case 302
    If Opt = "add" Or Opt = "mod" Then
        If txtfields(3).Text <> "" Then
            Set rsa = New Recordset
            rsa.Open "select purtype,purdesc from rm_purtype where purtype='" & Trim(txtfields(302).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount = 0 Then
                LookUp.Clear = True
                LookUp.query = "select purtype""Purchase Type Code"",purdesc""Purchase Type Description"" from rm_purtype"
                LookUp.DefCol = "Purchase Type Description"
                LookUp.ALIGN = "2300,3500"
                LookUp.Caption = "Purchase Type Listing"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    txtfields(302).Text = LookUp.Fields(0)
                    txtfields(303).Text = LookUp.Fields(1)
                    LookUp.Clear = True
                    If Option1.value = True Then
                        txtfields(69).SetFocus
                    Else
                        optDCNo.SetFocus
                        Exit Sub
                    End If
                Else
                    txtfields(302).SetFocus
                End If
            Else
                txtfields(303).Text = rsa(1)
                If Option1.value = True Then
                    txtfields(69).SetFocus
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
txtfields(23).Text = Format(txtfields(23).Text, "#0.000")
Case 24
txtfields(24).Text = Format(txtfields(24).Text, "#0.000")
Case 81
txtfields(81).Text = Format(txtfields(81).Text, "#0.000")
Case 82
txtfields(82).Text = Format(txtfields(82).Text, "#0.000")
Case 25
txtfields(25).Text = Format(txtfields(25).Text, "#0.000")
Case 18
txtfields(18).Text = Format(txtfields(18).Text, "#0.00")
Case 5, 111
txtfields(5).Text = Format(txtfields(5).Text, "#0.000")
End Select
End If
If Index = 37 Then
If Opt = "add" Then
    If Trim(txtfields(37).Text) <> "" Then
          Set RSS = New Recordset
          RSS.Open "select isnull(BILLNO,'') AS BILLNO,BILLDT  from rm_lot where plotno='" & Trim(txtfields(37).Text) & "'  and lotyear=" & Year(yfdate) & "", DB, adOpenStatic
          If Not RSS.EOF Then
            txtfields(3).Text = RSS("BILLNO")
            If RSS("BILLDT") = Null Then
                MaskEdBox1(2).Text = RSS("BILLDT")
            End If
          End If
     End If
End If
End If
Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form Frmlotbale", vbInformation, head

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_Change of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtqry_KeyPress(KeyAscii As Integer)
On Error GoTo txtqry_KeyPress_Error

Call tonum(txtqry, 3, KeyAscii)

Exit Sub
txtqry_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtqry_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
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
Public Sub tonum3(obj As Object, maxlen As Integer, KeyAscii As Integer, Optional ary As Integer)
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


Private Sub txtremarks_GotFocus()
On Error GoTo txtremarks_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    txtremarks.BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Enter Remarks"
End If

Exit Sub
txtremarks_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtremarks_GotFocus of Form Frmlotbale", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtremarks_KeyDown of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtremarks_KeyPress(KeyAscii As Integer)
On Error GoTo txtremarks_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
    Call ToAlphanum(txtremarks, 150, KeyAscii)
End If

Exit Sub
txtremarks_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtremarks_KeyPress of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtremarks_LostFocus()

On Error GoTo txtremarks_LostFocus_Error
If Opt = "add" Or Opt = "mod" Then
    If Arrdespatch_Flg = "N" Then
    If Check1.Enabled Then
        Check1.SetFocus
      End If
    End If
End If

Exit Sub
txtremarks_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtremarks_LostFocus of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0

End Sub
Sub LotLoad(ContNo As String, contdt As String)
            Dim partyrs As Recordset
On Error GoTo LotLoad_Error
intervalMinutes = -1
   Set Rs = New Recordset
   Rs.Open "select CENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
    If globalarrivalorder = "C" Then
        If Rs(0) = "Y" Then
            Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Else
             Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "'  and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
       End If
    Else
        If Rs(0) = "Y" Then
            Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        Else
             Set partyrs = New Recordset
            partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,candyrate,bbflag,ordqty-(ISNULL(RECQTY,0)+isnull(cancelbales,0)),weignment,COLORCODE,CARCODE,rateunit,ordqty,RECQTY,carcode,dlytype,RATEUNIT,isnull(prno,'')as prno,isnull(pressmarkno,'')as pressmarkno,ISNULL(PLOTNO,'')AS PLOTNO,isnull(cancelbales,0) as cancelbales from rm_cont where contno='" & txtfields(29).Text & "' and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
       End If
    End If
            txtfields(30).Text = partyrs("supcd")
            txtfields(37).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
            txtfields(38).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
            txtfields(2).Text = partyrs("varcode")
            TXTRATEUNIT.Text = partyrs("RATEUNIT")
            txtfields(73).Text = partyrs("prno")
            txtfields(0).Text = partyrs("PLOTNO")
                Set Rs = New Recordset
                Rs.Open "select VARNAME,catcd from rm_var where varcode = '" & txtfields(2).Text & "'", DB, adOpenStatic
                If Rs.RecordCount <> 0 Then
                  txtfields(79).Text = Rs("VARNAME")
                  txtfields(76).Text = Rs("catcd")
                Else
                  txtfields(79).Text = " "
                  txtfields(76).Text = " "
                End If
                Rs.Close
            txtfields(74).Text = partyrs("count")
            txtfields(27).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
            txtfields(15).Text = ""
            txtfields(1).Text = Format(partyrs("candyrate"), "#######.000")
            
            'txtfields(22).Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
            Combo3.Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
            Set rsd = New Recordset
            rsd.Open "select * from fa_slmas where slcode='" & partyrs("supcd") & "'", DB, adOpenStatic
            If rsd.RecordCount > 0 Then
                Text1(0).Text = rsd("slname")
            Else
                Text1(0).Text = " "
            End If

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

                txtfields(89).Text = CStr(IIf(IsNull(partyrs("ordqty")) = True, 0, partyrs("ordqty")))
                txtfields(90).Text = CStr(IIf(IsNull(partyrs("RECQTY")) = True, 0, partyrs("RECQTY")))
                txtfields(91).Text = CStr(val(partyrs(7)))
                txtfields(95).Text = CStr(partyrs("cancelbales"))

                If partyrs(6) = "B" Then
                    Combo1.Text = "Bale"
                ElseIf partyrs(6) = "R" Then
                   Combo1.Text = "Borah"
                End If
                lblunit.Caption = lblunit.Caption + " " + Combo1.Text
                For I = 0 To 6
                   If I <> 4 Then txtfields(I).Locked = True
                Next
                Set LABRS = New Recordset
                If globalarrivalorder = "C" Then
                    LABRS.Open "SELECT a.*  FROM RM_area as a,rm_cont as b WHERE a.areacode=b.areacode and b.CONTNO='" & ContNo & "' AND b.CONTDT='" & Format(Mid(contdt, 1, 10), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
                Else
                    LABRS.Open "SELECT a.*  FROM RM_area as a,rm_cont as b WHERE a.areacode=b.areacode and b.CONTNO='" & ContNo & "' AND b.CONTDT='" & Format(Mid(contdt, 1, 10), "YYYY-MM-DD") & "' AND B.DIVCODE='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                End If
                
                If LABRS.RecordCount > 0 Then
''                    Label18.Caption = "Station :" & IIf(IsNull(LABRS!STATION), " ", LABRS!STATION)
''                    Label17.Caption = "State   :" & IIf(IsNull(LABRS!State), " ", LABRS!State)
                    txtfields(92).Text = IIf(IsNull(LABRS!Station), " ", LABRS!Station)
                    txtfields(93).Text = IIf(IsNull(LABRS!State), " ", LABRS!State)
                Else
''                    Label18.Caption = "Station :"
''                    Label17.Caption = "State   :"
                    txtfields(92).Text = ""
                    txtfields(93).Text = ""
                End If
                Set Rs = New Recordset
                Rs.Open "select areaname from rm_area where areacode = '" & txtfields(38).Text & "'", DB, adOpenStatic
                If Rs.RecordCount <> 0 Then
                  Text20.Text = Rs("areaname")
                Else
                  Text20.Text = " "
                End If
                Rs.Close
                Combo3.Locked = True
                txtfields(0).Locked = False
                txtfields(73).Locked = False
                'txtfields(72).Locked = False
                txtfields(41).Locked = False
                txtfields(40).Locked = False
                txtfields(3).Locked = False

                Set rsa = New Recordset
                rsa.Open "select deldesc from rm_delivery where delcode='" & partyrs("dlytype") & "'", DB, adOpenStatic
                If rsa.RecordCount > 0 Then
                    txtfields(78).Text = rsa(0)
                End If
                
                Set rsd = New Recordset
                rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lottype='A' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O'", DB, adOpenStatic
                If rsd.RecordCount > 0 Then
                    txtfields(28).Text = rsd("lotno")
                Else
                    txtfields(28).Text = "1"
                End If
                txtfields(22).SetFocus

Exit Sub
LotLoad_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LotLoad of Form Frmlotbale", vbInformation, head

End Sub
Sub Txtfocus(PerIndex As Integer, Amtindex As Integer, NewIndex As Integer)
On Error Resume Next
If val(txtfields(PerIndex).Text) > 0 Then
    txtfields(Amtindex).TabStop = False
    'TXTFIELDS(NewIndex).SetFocus
Else
    txtfields(Amtindex).TabStop = True
    If Amtindex <> 13 Then
       If Arrdespatch_Flg = "N" Then
        txtfields(Amtindex).SetFocus
        End If
    Else
        txtfields(Amtindex).SetFocus
    End If
End If
End Sub

Private Sub clear_text()
On Error GoTo clear_text_Error

txtfields(29).Text = ""
    txtfields(0).Text = ""
    'txtfields(72).Text = ""
    txtfields(73).Text = ""
    txtfields(40).Text = ""
    txtfields(41).Text = ""
    txtfields(23).Text = ""
    txtfields(24).Text = ""
    txtfields(22).Text = ""
    txtremarks.Text = ""
    Text8.Text = ""
    txtfields(78).Text = ""
    txtfields(79).Text = ""
    txtfields(89).Text = ""
    txtfields(90).Text = ""
    txtfields(91).Text = ""
    txtfields(92).Text = ""
    txtfields(93).Text = ""
    
        
    txtfields(38).Text = ""
    txtfields(20).Text = ""
    txtfields(300).Text = ""
    txtfields(301).Text = ""
    txtfields(302).Text = ""
    txtfields(303).Text = ""
    txtfields(107).Text = ""
    Text20.Text = ""

    Text1(0).Text = ""
    Text1(1).Text = ""
    Text1(2).Text = ""
    txtfields(74).Text = ""
    txtfields(1).Text = ""
    txtfields(94).Text = ""
    txtfields(28).Text = ""
    txtfields(76).Text = ""
    txtfields(30).Text = ""
    txtfields(37).Text = ""
    txtfields(2).Text = ""
    txtfields(36).Text = ""
    txtfields(35).Text = ""
    txtfields(34).Text = ""
    txtfields(33).Text = ""
    txtfields(31).Text = ""
    txtfields(32).Text = ""
    Text12.Text = ""
    Text13.Text = ""
    Text14.Text = ""
    Text15.Text = ""
    Text19.Text = ""
    Text11.Text = ""
    Text4.Text = ""
    Text5.Text = ""
    Text6.Text = ""
    Text7.Text = ""
    Text16.Visible = False
    
    MaskEdBox1(0).Text = "__/__/____"

    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Label9.Visible = True

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
        Label3.Visible = True
    Else
        Label9.Visible = False
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
        Label3.Visible = False
    End If

Exit Sub
clear_text_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clear_text of Form Frmlotbale", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub LoadArrival()
On Error GoTo LoadArrival_Error
intervalMinutes = -1
On Error GoTo LoadArrival_Error

        Set rsg = New Recordset
        rsg.Open "select distinct arrno""Arrival No"",arrdate""Arrival Date"",slname""Supllier"" from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-ISNULL(lotrecqty,0) >0 AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
            LookUp.Clear = True
            LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier"",a.supcd,isnull(b.supptype,'R') Supptype from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "ArrivalNo"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "2000,1500,4000,1,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            
              SuppType = LookUp.Fields("Supptype")
                Set Rs = New Recordset
                Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("supcd") & "'", DB
                If Not Rs.EOF Then
            
                       STATEFLAG = Rs(0)
                       If STATEFLAG = "F" Then
                        IGSTFLG = "N"
                       End If
                End If
                
                 If STATEFLAG <> "F" Then
            
                Dim STCODE As String
                Set rs1 = New Recordset
                rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE,ISNULL(GSTINNO,'') GSTINNO  FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("supcd")) & "' ", DB
                If rs1.EOF Then
                    MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                Else
                If rs1("GSTSTATECODE") = "0" Then
                    MsgBox "PLEASE ENTER GST STATE CODE IN SUPPLIER MASTER ", vbInformation, head
                    Call BUTTON_Click(10)
                    Exit Sub
                End If
                If rs1("GSTINNO") = "" And SuppType = "R" Then
                    MsgBox "PLEASE ENTER GST STATE NO SUPPLIER MASTER ", vbInformation, head
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
                    
                Dim divrs As Recordset
                Set divrs = New Recordset
                divrs.Open "select ISNULL(Gdivcode,'')AS PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,ISNULL(MOISTURE_ET,0)MOISTURE_ET,ISNULL(MOISTURE_per,0)MOISTURE_per,ISNULL(trashPer,0)trashPer,GODOWN,contno,contdt,inwardno,inwarddate,FREIGHT,isnull(Line_no,'') Line_no,isnull(plcode,'') Plcode from rm_arrival where arrno='" & LookUp.Fields(0) & "' and arrdate='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                If divrs.RecordCount > 0 Then
                    globaldivision = divrs(0)
                Else
                    globaldivision = ""
                End If
                
                Dim partyrs As Recordset
                Set partyrs = New Recordset
                partyrs.Open "select supcd,brkcd,areacode,varcode,isnull(cntcode,'')as count,Ratecy as candyrate,bbflag,weignment,COLORCODE,CARCODE,carcode,ISNULL(PLOTNO,'')AS PLOTNO,QUANTITY,GROSSWT,TAREWT,NETWT,ISNULL(MOISTURE_ET,0)MOISTURE_ET,ISNULL(MOISTURE_per,0)MOISTURE_per,ISNULL(trashPer,0)trashPer,GODOWN,contno,contdt,inwardno,inwarddate,FREIGHT,isnull(Line_no,'') Line_no,isnull(plcode,'') Plcode,DPDocno,DPDocDate,isnull(Commr_Wt,0) Commr_Wt,isnull(Globaldiv,'') Globaldiv from rm_arrival where arrno='" & LookUp.Fields(0) & "' and arrdate='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic

                Call SpreadAlign(partyrs.RecordCount)
                TOTROWCNT = partyrs.RecordCount
                partyrs.MoveFirst
                q = 1
                While Not partyrs.EOF
                    
                    txtfields(120).Text = partyrs("plcode")
                    txtfields(121).Text = partyrs("line_no")
                    txtfields(125).Text = IIf(IsNull(partyrs("DPDocno")), 0, partyrs("DPDocno"))
                    MaskEdBox1(6).Text = IIf(IsNull(partyrs("DPDocDate")), "__/__/____", partyrs("DPDocDate"))
                    Set Rs = New Recordset
                    Rs.Open "Select CentralizedOrder From Rm_param", DB, adOpenStatic
                    If globalarrivalorder = "C" Then
                        If Rs(0) = "Y" Then
                            Set partycon = New Recordset
                            partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit,isnull(a.CGSTPer,0) CGSTper,isnull(a.SGSTPer,0) SGSTper,isnull(a.IGSTPer,0) IGSTper,isnull(b.HSN,'') HSN,ISNULL(A.TCS_PER,0) TCS_PER,incidentcharge,spotexpense,perbaletruckbale from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                        Else
                            Set partycon = New Recordset
                            partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit,isnull(a.CGSTPer,0) CGSTper,isnull(a.SGSTPer,0) SGSTper,isnull(a.IGSTPer,0) IGSTper,isnull(b.HSN,'') HSN,ISNULL(A.TCS_PER,0) TCS_PER,incidentcharge,spotexpense,perbaletruckbale from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "'  and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic, adLockBatchOptimistic
                        End If
                    Else
                        If Rs(0) = "Y" Then
                            Set partycon = New Recordset
                                partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit,isnull(a.CGSTPer,0) CGSTper,isnull(a.SGSTPer,0) SGSTper,isnull(a.IGSTPer,0) IGSTper,isnull(b.HSN,'') HSN,ISNULL(A.TCS_PER,0) TCS_PER,incidentcharge,spotexpense,perbaletruckbale from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
                        Else
                            Set partycon = New Recordset
                                
                                partycon.Open "select a.varcode,varname,isnull(CashDisPer,0)CashDisPer,isnull(TradeDisPer,0)TradeDisPer,isnull(BedPer,0)BedPer,isnull(SEDPER,0)""EdcessPer"",isnull(HsCessPer,0)HscessPer,isnull(CessPer,0)cessper,isnull(Tax_Code,'')Tax_code,isnull(TaxPer,0)TaxPer,isnull(OthTaxPer,0)OthTaxPer,isnull(InsPer,0)InsPer,isnull(tax_choice,'SINGLE') as taxchoice,rateunit,isnull(a.CGSTPer,0) CGSTper,isnull(a.SGSTPer,0) SGSTper,isnull(a.IGSTPer,0) IGSTper,isnull(b.HSN,'') HSN,ISNULL(A.TCS_PER,0) TCS_PER,incidentcharge,spotexpense,perbaletruckbale from rm_cont a,rm_var b where a.varcode=b.varcode and a.VARCODE='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and divcode='" & Divcode & "' and contdt = '" & Format(partyrs("contdt"), "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
                                
                        End If
                    End If
                    If partycon.RecordCount > 0 Then
                        txtfields(79).Text = partycon("varname")
                        If partycon("taxchoice") = "SINGLE" Then
                            Option1.value = True
                        Else
                            Option2.value = True
                        End If
                        If partycon("HSN") = "" Then
                            MsgBox "HSN CODE CANNOT BE EMPTY ", vbInformation, head
                            Call BUTTON_Click(10)
                            Exit Sub

                        End If
                        
                         txtincidentcharge.Text = IIf(IsNull(partycon("incidentcharge")), 0, partycon("incidentcharge"))
                    txtspotexpense.Text = IIf(IsNull(partycon("spotexpense")), 0, partycon("spotexpense"))
                        
                        If partycon!perbaletruckbale = "T" Then
                          Combo12.ListIndex = 2
                        ElseIf partycon!perbaletruckbale = "B" Then
                          Combo12.ListIndex = 1
                        Else
                          Combo12.ListIndex = 0
                        End If
          
                    Else
                        Option1.value = True
                    End If
                    
                    If optDCNo.value = True Then
                        lblDutyPer.Enabled = False
                        txtfields(109).Text = "0.00"
                        txtfields(109).Enabled = False
                    Else
                        lblDutyPer.Enabled = True
                        txtfields(109).Text = "100.00"
                        txtfields(109).Enabled = True
                    End If
                    
                    If partyrs.RecordCount > 0 Then
                       Set Rs = New Recordset
                       Rs.Open "SELECT CENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                     If globalarrivalorder = "C" Then
                       Set billrs = New Recordset
                       billrs.Open "select isnull(currcode,'RS') currcode  from rm_cont where supcd='" & partyrs("supcd") & "' and  varcode='" & partyrs("varcode") & "' and contno='" & partyrs("contno") & "' and contdt='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I')))", DB, adOpenStatic, adLockBatchOptimistic
                     Else
                        Set billrs = New Recordset
                       billrs.Open "select isnull(currcode,'RS') currcode  from rm_cont where supcd='" & partyrs("supcd") & "' and contno='" & partyrs("contno") & "' and contdt='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                     End If
                       
                       If partyrs.RecordCount > 0 Then
                          txtfields(122).Text = billrs("currcode")
                          If billrs("currcode") = "RS" Then
                             txtfields(124).Text = 1
                          Else
                             txtfields(124).Text = ""
                          End If
                       Else
                          txtfields(122).Text = ""
                       End If
                    End If
                    txtfields(13).Text = Format(IIf(IsNull(partyrs("FREIGHT")), 0, partyrs("FREIGHT")), "0.00")
                    txtfields(110).Text = partycon("Rateunit")
                    txtfields(96).Text = LookUp.Fields(0)
                    MaskEdBox1(4).Mask = LookUp.Fields(1)
                    MaskEdBox1(4).Text = MaskEdBox1(4).Mask
                    
                    txtfields(30).Text = partyrs("supcd")
                    txtfields(32).Text = partyrs("supcd")
                    txtfields(35).Text = partyrs("supcd")
                    If IsNull(partyrs("inwarddate")) = False Or partyrs("inwarddate") = "" Then
                        MaskEdBox1(5).Text = partyrs("inwarddate")
                    Else
                        MaskEdBox1(5).Text = "__/__/____"
                    End If
                    If IsNull(partyrs("inwardno")) = False Or partyrs("inwardno") = "" Then
                        txtfields(108).Text = partyrs("inwardno")
                    Else
                        txtfields(108).Text = ""
                    End If
                    txtfields(37).Text = IIf(IsNull(partyrs("brkcd")), "", partyrs("brkcd"))
                    txtfields(38).Text = IIf(IsNull(partyrs("areacode")), "", partyrs("areacode"))
                    
                    txtfields(2).Text = partyrs("varcode")
                    
                                  
                    
                    txtfields(77).Text = partyrs("GODOWN")
                    Set RSGOD = New Recordset
                    RSGOD.Open "SELECT * FROM RM_GOD WHERE GCODE='" & txtfields(77).Text & "'  and divcode='" & Divcode & "'", DB, adOpenStatic
                    
                    If RSGOD.RecordCount > 0 Then
                        Text8.Text = RSGOD("GNAME")
                    Else
                        txtfields(77).Text = ""
                        Text8.Text = ""
                    End If
                Set Rs = New Recordset
                Rs.Open "SELECT CENTRALIZEDORDER FROM RM_PARAM", DB, adOpenStatic
                If globalarrivalorder = "C" Then
                    If Rs(0) = "Y" Then
                         Set rscont = New Recordset
                         rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' and contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' ", DB, adOpenStatic
                    Else
                        Set rscont = New Recordset
                        rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' and contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                    End If
                Else
                    If Rs(0) = "Y" Then
                        Set rscont = New Recordset
                        rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' and contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and", DB, adOpenStatic
                    Else
                        Set rscont = New Recordset
                        rscont.Open "select rateunit,DLYTYPE from rm_cont where contno='" & partyrs("contno") & "' and contdt ='" & Format(partyrs("contdt"), "YYYY-MM-DD") & "' and DIVCODE='" & Divcode & "'", DB, adOpenStatic
                    End If
               End If
                    If rscont.RecordCount > 0 Then
                        Label95.Caption = IIf(IsNull(rscont("rateunit")), "", rscont("rateunit"))
                    End If
                    
                    If rscont.RecordCount > 0 Then
                        txtfields(78).Text = rscont("DLYTYPE")
                    End If
                    txtfields(27).Text = IIf(IsNull(partyrs("weignment")), "", partyrs("weignment"))
                    txtfields(15).Text = ""
                    Combo3.Text = IIf(IsNull(partyrs("CARCODE")), " ", partyrs("CARCODE"))
                    Set rsd = New Recordset
                    rsd.Open "select * from fa_slmas where slcode='" & partyrs("supcd") & "'", DB, adOpenStatic
                    If rsd.RecordCount > 0 Then
                        Text1(0).Text = rsd("slname")
                    Else
                        Text1(0).Text = " "
                    End If

                      Set Rs = New Recordset
                      Rs.Open "select areaname from rm_area where areacode = '" & txtfields(38).Text & "'", DB, adOpenStatic
                      If Rs.RecordCount <> 0 Then
                        Text20.Text = Rs("areaname")
                      Else
                        Text20.Text = " "
                      End If
                      Rs.Close
                      Combo3.Locked = True
                      txtfields(0).Locked = False
                      txtfields(73).Locked = False
                      txtfields(41).Locked = False
                      txtfields(40).Locked = False
                      txtfields(3).Locked = False
                      txtfields(29).Text = partyrs("varcode")
                    If q = 1 Then
                        
                    Set Rs = New Recordset
                    Rs.Open "select isnull(Arrivaltransfardocno,'N') as Arrivaltransfardocno from  rm_param", DB, adOpenStatic, adLockBatchOptimistic
                    If Rs("Arrivaltransfardocno") = "Y" Then
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & txtfields(29).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        Set rsd = New Recordset
                        If LotNoGen = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' ", DB, adOpenStatic
                        ElseIf LotNoGen = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y'  and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf LotNoGen = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' and CatCd ='" & catcode & "' and VarCode ='" & txtfields(29).Text & "'", DB, adOpenStatic
                        End If
                        lotno = rsd("lotno")
                     Else
                        Set rsVar = New Recordset
                        rsVar.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & txtfields(2).Text & "'", DB, adOpenStatic
                        If rsVar.RecordCount > 0 Then
                            catcode = rsVar("CATCD")
                        End If
                        
                        Set rsd = New Recordset
                        If Trim(LotNoGen) = "S" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A'", DB, adOpenStatic
                        ElseIf Trim(LotNoGen) = "C" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "'", DB, adOpenStatic
                        ElseIf Trim(LotNoGen) = "V" Then
                            rsd.Open "select isnull(max(lotno),0)+1 as lotno from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and isnull(opflg,'N')<>'Y' AND LOTRECTYPE='O' AND LOTTYPE='A' and CatCd ='" & catcode & "' and VarCode ='" & txtfields(2).Text & "'", DB, adOpenStatic
                        End If
                        lotno = rsd("lotno")

             End If
                        
                        
                     
                    Else
                        lotno = lotno + 1
                    End If
                      
                      txtfields(102).Text = pdate
                      spdVar.SetText Ipinvval, q, 0
                      
                      spdVar.SetText ILotNo, q, lotno
                      spdVar.SetText ILotdt, q, pdate
                      spdVar.SetText IVarcode, q, partycon("varcode")
                      spdVar.SetText IVarName, q, partycon("varname")
                      
                      
                      spdVar.SetText Iunit, q, partyrs("bbflag")
                      spdVar.SetText iQty, q, partyrs("quantity")
                      spdVar.SetText Icandyrate, q, Format(partyrs("candyrate"), "0.0000000000")
                      
                      TotalnWt = 0
                      Set totlr = New Recordset
                      totlr.Open "select isnull(sum(Netwt),0) Netwt from rm_arrival where arrno='" & LookUp.Fields(0) & "' and arrdate='" & Format(LookUp.Fields(1), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
                      If Not totlr.EOF Then
                        TotalnWt = totlr("Netwt")
                     
                      End If
                      If TotalnWt = 0 Then
                       
                        TotalnWt = partyrs("Netwt")
                       End If
                      spdVar.SetText IFrtamt, q, Format((partyrs("FREIGHT") / (TotalnWt)) * partyrs("Netwt"), "0.00")
                      
                      spdVar.SetText itcsamt, q, ""
                      Chk_TCSAssValFlg.value = 1
                     
                      spdVar.SetText itcsper, q, partycon("TCS_PER")
                      txtfields(129).Text = Format(partycon("TCS_PER"), "0.000")
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
                      
                      spdVar.SetText IContNum, q, partyrs("contno")
                      spdVar.SetText IContdate, q, Format(partyrs("contdt"), "dd/mm/yyyy")
                      
                      spdVar.SetText IIncidentCharge, q, IIf(IsNull(partycon("incidentcharge")), 0, partycon("incidentcharge"))

                      txtfields(5).Text = Format(CStr(val(txtfields(5).Text)), "0.000")

                      If partycon("Tax_code") = "" And STATEFLAG <> "F" Then
                        MsgBox "Please add Tax Code in Variety Master", vbInformation, head
                        Call BUTTON_Click(0)
                        Exit Sub
                      End If
                      
                      
                      If q = 1 Then
                      
                        If partyrs.RecordCount = 1 Then
                            If partycon.RecordCount <> 0 Then
                                txtfields(53).Text = partycon("CASHDISPER")
                                txtfields(84).Text = partycon("TRADEDISPER")
                                txtfields(7).Text = partycon("bedpeR")
                                txtfields(43).Text = partycon("EdcessPer")
                                txtfields(45).Text = partycon("HSCESSPER")
                                txtfields(47).Text = partycon("CESSPER")
                                txtfields(83).Text = partycon("Tax_code")
                                txtfields(51).Text = partycon("TaxPER")
                                
                                
                                txtfields(10).Text = partycon("OthTaxper")
                                txtfields(51).Text = partycon("INSper")
                                txtfields(114).Text = ""
                                txtfields(112).Text = ""
                                txtfields(113).Text = ""
                                
                                
                            End If
                        Else
                        End If
                      Else
                        If partycon.RecordCount > 0 Then
                            If CD = partycon("CASHDISPER") And td = partycon("TRADEDISPER") And Bed = partycon("bedpeR") And ED = partycon("EdcessPer") And HS = partycon("HSCESSPER") And CES = partycon("CESSPER") And taxG = partycon("Tax_code") And OTH = partycon("OthTaxper") And INS = partycon("INSper") Then
                                If partycon.RecordCount <> 0 Then
                                    txtfields(53).Text = partycon("CASHDISPER")
                                    txtfields(84).Text = partycon("TRADEDISPER")
                                    txtfields(7).Text = partycon("bedpeR")
                                    txtfields(43).Text = partycon("EdcessPer")
                                    txtfields(45).Text = partycon("HSCESSPER")
                                    txtfields(47).Text = partycon("CESSPER")
                                    txtfields(83).Text = partycon("Tax_code")
                                    txtfields(51).Text = partycon("TaxPER")
                                    txtfields(10).Text = partycon("OthTaxper")
                                    txtfields(51).Text = partycon("INSper")
                                    
                                    txtfields(114).Text = ""
                                    txtfields(112).Text = ""
                                    txtfields(113).Text = ""
                                End If
                            End If
                        End If
                      End If
                      If partycon.RecordCount <> 0 Then
                        CD = partycon("CASHDISPER")
                        td = partycon("TRADEDISPER")
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
                    spdVar.SetText ICommWTAmt, q, "0"
                                     
                    If partyrs("Commr_Wt") > 0 Then
                        OptCommercialWt.value = True
                        spdVar.SetText ICommWTAmt, q, partyrs("Commr_Wt")
                        Check1.value = 1
                        Check1.Enabled = False
                        Set rsdpl = New Recordset
                        rsdpl.Open "select Qty,QtyKGS,INV_QtyKGS,GrossWt,TareWt,NetRate,Disc_Rate,isnull(tcs_per,0) tcs_per,isnull(tcs_amt,0) tcs_amt,invno,invdate from rm_despatchdt a  inner join rm_despatchhd b on a.docno=b.docno and a.docdate=b.docdate and a.divcode=b.divcode  where a.docno='" & val(txtfields(125).Text) & "' and a.docdate='" & Format(MaskEdBox1(6).Text, "yyyy-mm-dd") & "' and a.varcode='" & partycon("varcode") & "' and a.contno='" & partyrs("contno") & "' and a.contdt='" & Format(partyrs("contdt"), "yyyy-mm-dd") & "' and b.SLCode='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
                        If Not rsdpl.EOF Then
                            
                            txtfields(129).Text = Format(rsdpl("tcs_per"), "0.000")
                            txtfields(128).Text = Format(rsdpl("tcs_amt"), "0.00")
                            spdVar.SetText itcsper, q, rsdpl("tcs_per")
                            spdVar.SetText itcsamt, q, rsdpl("tcs_amt")
                            
                            spdVar.SetText Ipgrosswt, q, rsdpl("GrossWt")
                            spdVar.SetText Iptarewt, q, rsdpl("TareWt")
                            spdVar.SetText Ipnetwt, q, rsdpl("QtyKGS")
                            
                            spdVar.SetText INetRate, q, val(rsdpl("NetRate") & "")
                            spdVar.SetText IDiscRate, q, val(rsdpl("Disc_Rate") & "")
                            
                            txtfields(3).Text = rsdpl("invno")
                            MaskEdBox1(2).Text = rsdpl("invdate")
                            
                        End If
                    End If
                    
                    
                    Call SETDISCTYPEHead
                    Set Rs = New Recordset
                    Dim FBDisvalue, FbDisRate As Double
                    FBDisvalue = 0: FbDisRate = 0
                    Rs.Open "SELECT * from RM_ContDiscntRate  a  INNER JOIN RM_CONT B ON A.CONTNO=B.CONTNO AND A.CONTDT=B.CONTDT AND A.DIVCODE=B.DIVCODE AND A.VARCODE=B.VARCODE  left join RM_DiscountType C on a.dtype=C.code where  (A.DIVCODE='" & Divcode & "' or ((A.DIVCODE='" & globalimportpo & "' and im_ind='I'))) AND A.Varcode='" & Trim(GetText(spdVar, IVarcode, q)) & "' and A.contno='" & val(GetText(spdVar, IContNum, q)) & "'  and A.Contdt='" & Format(partyrs("contdt"), "yyyy-MM-dd") & "' and isnull(RPTFLG,'N')='N' and A.supcd='" & Trim(txtfields(30).Text) & "' ", DB, adOpenStatic
                 
                    r1 = 0
                    With SPDDiscTypeDet
                        If Not Rs.EOF Then
                            For I = 0 To Rs.RecordCount
                                If Not Rs.EOF Then
                                    r1 = r1 + 1
                                    .MaxRows = r1
                                        .SetText SPDDTSNO, r1, Rs.Fields("docsno")
                                        .SetText SPDDTContno, r1, Rs.Fields("CONTNO")
                                        .SetText SPDDTContdt, r1, Format(Rs.Fields("CONTDT"), "dd/mm/yyyy")
                                                    
                                        .SetText SPDDTDocno, r1, Rs.Fields("docno")
                                        .SetText SPDDTDOCDT, r1, Format(Rs.Fields("docdate"), "dd/mm/yyyy")
                                        .SetText SPDDTVarcode, r1, Rs.Fields("varcode")
                                        .SetText SPDDTDISCCODE, r1, Rs.Fields("DType")
                                        .SetText SPDDTDISCDESC, r1, Rs.Fields("Description")
                                        .SetText SPDDTDRate, r1, Rs.Fields("DRate")
                                         FbDisRate = FbDisRate + val(Rs.Fields("DRate") & "")
                                        
                                      
                                        If Check1.value = 1 Then
                                            .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, q)), "00.00")
                                        Else
                                            If optMILL = True Then
                                                .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Imnetwt, q)), "00.00")
                                            ElseIf OptCommercialWt = True Then
                                                .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, ICommWTAmt, q)), "00.00")
                                            Else
                                                .SetText SPDDTDValue, r1, Format(Rs.Fields("DRate") * val(GetText(spdVar, Ipnetwt, q)), "00.00")
                                            End If
                                         End If
                                            FBDisvalue = FBDisvalue + val(GetText(SPDDiscTypeDet, SPDDTDValue, r1))

                                    Rs.MoveNext
                                End If
                            Next
                        End If
                    End With
                    
                      spdVar.SetText IDiscRate, q, Format(FbDisRate, "00.00")
                      spdVar.SetText IDiscAmt, q, Format(KSLRound(val(FBDisvalue), FDisc_ROFF), "00.00")
                      txtfields(126).Text = Format(FbDisRate, "00.00")
                      txtfields(127).Text = Format(KSLRound(val(FBDisvalue), FDisc_ROFF), "00.00")
                      
                      spdVar.SetText Iwbwt, q, ""
                      
                      spdVar.SetText Iwbwt, q, ""
                      spdVar.SetText Ipjamt, q, ""
                      spdVar.SetText Icashdisper, q, partycon("CASHDISPER")
                      spdVar.SetText Icashdisamt, q, ""
                      spdVar.SetText Itradedisper, q, partycon("TRADEDISPER")
                      spdVar.SetText Itradedisamt, q, ""
                      spdVar.SetText IFrtper, q, ""

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
                      spdVar.SetText IRateKG, q, ""
                      spdVar.SetText ISICAAmt, q, ""
                      spdVar.SetText iTrashPer, q, val(partyrs("Netwt") * partyrs("TRASHper") / 100)
                      spdVar.SetText IHSN, q, partycon("HSN")
                      
          
           
                      If IGSTFLG = "Y" Then
                        spdVar.SetText ICGSTPER, q, partycon("cgstper")
                        spdVar.SetText ISGSTPER, q, partycon("SGSTPER")
                        spdVar.SetText IIGSTPER, q, "0"
                        spdVar.SetText IIGSTAMT, q, "0"
                      Else
                        spdVar.SetText ICGSTPER, q, "0"
                        spdVar.SetText ISGSTPER, q, "0"
                        spdVar.SetText ICGSTAMT, q, "0"
                        spdVar.SetText ISGSTAMT, q, "0"
                        spdVar.SetText IIGSTPER, q, partycon("igstper")
                      
                      End If
                      
                Set Rs = New Recordset
                Rs.Open "SELECT ADDTAXrEQUIRED FROM RM_PARAM", DB, adOpenStatic

                If Rs(0) = "Y" Then
                      spdVar.SetText IATaxCode, q, ""
                      spdVar.SetText IATaxper, q, ""
                      spdVar.SetText IATaxamt, q, ""
                End If
                
                  
                If optSUPPLIER = True Then
                    txtfields(5).Text = Format(val(GetText(spdVar, Ipnetwt, q)), "0.000")
                ElseIf OptCommercialWt = True Then
                    txtfields(5).Text = Format(val(GetText(spdVar, ICommWTAmt, q)), "0.000")
                Else
                    txtfields(5).Text = Format(val(GetText(spdVar, Imnetwt, q)), "0.000")
                End If
                
                
                      Call spdVar_LeaveCell(1, q, 1, 1, False)
                      q = q + 1
                      partyrs.MoveNext
                Wend
                    
                    SSTab1.Tab = 0
                    txtfields(77).SetFocus
                Else
                  Call BUTTON_Click(10)
                End If
                
               
                
        Else
            MsgBox "No arrival Details Found", vbInformation, head
            Call BUTTON_Click(10)
        End If


Exit Sub
LoadArrival_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LoadArrival of Form Frmlotbale", vbInformation, head

Screen.MousePointer = 0
End Sub
Private Sub Calc()
On Error GoTo Calc_Error
intervalMinutes = -1
      txtfields(5).Text = Format(val(txtfields(25).Text), "##.000")
      RATECANDY = val(txtfields(1).Text)
      If RATECANDY > 0 Then
       
       Set Rs = New Recordset
       Rs.Open "SELECT CENTRALISEDORDER, AssessValueFlg FROM RM_PARAM"
       If globalarrivalorder = "C" Then
            If Rs(0) = "Y" Then
                Set rsr = New Recordset
                rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
            Else
                Set rsr = New Recordset
               rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) )", DB, adOpenStatic
              
            End If
       Else
            If Rs(0) = "Y" Then
                 Set rsr = New Recordset
                 rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "')", DB, adOpenStatic
             Else
                 Set rsr = New Recordset
                rsr.Open "SELECT * FROM RM_RATEUNIT  WHERE UNITname=(SELECT RATEUNIT FROM  RM_CONT WHERE CONTNO='" & txtfields(29).Text & "' AND CONTDT='" & Format(MaskEdBox1(1), "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "')", DB, adOpenStatic
               
             End If
       End If
       
       If optSUPPLIER = True Then txtfields(25).Text = Round(dSuppNetWt, 3)

       If rsr.RecordCount > 0 Then
            txtfields(6).Text = Format(val(txtfields(25).Text) * (Round((RATECANDY / rsr("VALUE")) - val(txtfields(94).Text), 4)), "00.00")
       Else
            If UCase(Trim(TXTRATEUNIT.Text)) = "KGS" Then
                txtfields(6).Text = val(txtfields(25).Text) * Round(RATECANDY / 1, 4)
            Else
                txtfields(6).Text = val(txtfields(25).Text) * Round(RATECANDY / 355.6187, 4)
            End If
       End If
       End If


Exit Sub
Calc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure calc of Form Frmlotbale", vbInformation, head
End Sub
Private Sub SpreadAlign(totrow As Integer)
    On Error GoTo spreadalign_Error
    SetSpreadCol spdVar, ILotNo, "Lot No", CellTypeStaticText
    SetSpreadCol spdVar, ILotdt, "Lot Date", CellTypeStaticText
    SetSpreadCol spdVar, IVarcode, "Variety Code", CellTypeStaticText
    SetSpreadCol spdVar, IVarName, "Variety Name", CellTypeStaticText
    SetSpreadCol spdVar, Iunit, "Pack Type", CellTypeStaticText
    SetSpreadCol spdVar, Icandyrate, "Rate/Unit", CellTypeNumber, 7, 9
    SetSpreadCol spdVar, IDiscRate, "Disc_Rate", CellTypeNumber, 2
    SetSpreadCol spdVar, INetRate, "Net_Rate", CellTypeNumber, 7
    SetSpreadCol spdVar, IRebate, "Rebate", CellTypeNumber
    SetSpreadCol spdVar, iQty, "Quantity", CellTypeNumber
    SetSpreadCol spdVar, Imgrosswt, "Mill Gross Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imtarewt, "Mill Tare Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, ImTrashwt, "Mill Trash Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Immoiturewt, "Mill Moisture Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Imnetwt, "Mill Nett Wt.", CellTypeNumber, 3
    SetSpreadCol spdVar, Ipgrosswt, "Supplier Gross Wt.", CellTypeNumber, 4
    SetSpreadCol spdVar, Iptarewt, "Supplier Tare Wt.", CellTypeNumber, 4
    SetSpreadCol spdVar, Ipnetwt, "Supplier Nett Wt.", CellTypeNumber, 4
    SetSpreadCol spdVar, ICommWTAmt, "Commercial WT", CellTypeNumber, 3
    
    SetSpreadCol spdVar, Ipinvval, "Supplier Invoice Value", CellTypeNumber, 3, 0, "999999999999"
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
    If UCase(CustID) = "COTTON" Then
        SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 8
    Else
        SetSpreadCol spdVar, IInsper, "Insurance %", CellTypeNumber, 3
    End If
    SetSpreadCol spdVar, IInsamt, "Insurance Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthtaxPer, "Other Tax %", CellTypeNumber, 2
    SetSpreadCol spdVar, IothTaxamt, "Other Tax Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtper, "Rl. Freight %", CellTypeNumber, 2
    SetSpreadCol spdVar, IRlyfrtamt, "Rl. Freight Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Icharity, "Charity Amt", CellTypeNumber, 2
    SetSpreadCol spdVar, Ishipchrg, "Shipment Charge", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthTaxableAmt, "Others (Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IOthers, "Others (Non-Taxable)", CellTypeNumber, 2
    SetSpreadCol spdVar, IcustomDuty, "Custom Duty Amt", CellTypeNumber, 2

    SetSpreadCol spdVar, ILandedcost, "Landed Cost      ", CellTypeNumber, 2, 0, "999999999999"
    SetSpreadCol spdVar, IRateKG, "Rate/kg    ", CellTypeNumber, 7
    SetSpreadCol spdVar, ISICAAmt, "SICA Amt  ", CellTypeNumber, 4

    SetSpreadCol spdVar, iTrashPer, "TRASH WT  ", CellTypeNumber, 4
    SetSpreadCol spdVar, IContNum, "Cont.No.", CellTypeStaticText
    SetSpreadCol spdVar, IContdate, "Cont. Date", CellTypeStaticText
    
    SetSpreadCol spdVar, IDiscAmt, "Disc_Amount", CellTypeNumber, 2
   SetSpreadCol spdVar, itcsper, "TCS_Per", CellTypeNumber, 3
   SetSpreadCol spdVar, itcsamt, "TCS_Amount", CellTypeNumber, 2
   
   SetSpreadCol spdVar, ITCS_AssValue, "TCS_ AssableAmount", CellTypeNumber, 2
   
   SetSpreadCol spdVar, IIncidentCharge, "Incidental Charge", CellTypeNumber, 2
   SetSpreadCol spdVar, ISpotExpense, "Spot Expenses", CellTypeNumber, 2
   
    SetSpreadCol spdVar, ISupplierAssvalue, "SupplierAssablevalue", CellTypeNumber, 2
   
    '''sasi GST- 19.6.17
    spdVar.Col = IEdper
    spdVar.ColHidden = True
    spdVar.Col = IEdamt
    spdVar.ColHidden = True
    
    spdVar.Col = itcsper
    spdVar.ColHidden = False
    
    spdVar.Col = itcsamt
    spdVar.ColHidden = False
    
    spdVar.Col = IBedper
    spdVar.ColHidden = True
    spdVar.Col = IBedamt
    spdVar.ColHidden = True
    spdVar.Col = IHscessper
    spdVar.ColHidden = True
    spdVar.Col = IHscessamt
    spdVar.ColHidden = True
    spdVar.Col = Icessper
    spdVar.ColHidden = False
    spdVar.Col = Icessamt
    spdVar.ColHidden = False
    If MasterEntryFlg <> "Y" Then
        spdVar.Col = INetRate
        spdVar.ColHidden = True
        spdVar.Col = IDiscRate
        spdVar.ColHidden = True
    End If
    
    
    spdVar.Col = ICommWTAmt
    spdVar.ColHidden = False
    
    spdVar.Col = ITaxCode
    spdVar.ColHidden = True
    spdVar.Col = ITaxper
    spdVar.ColHidden = True
    spdVar.Col = ITaxamt
    spdVar.ColHidden = True
    spdVar.Col = IOthtaxPer
    spdVar.ColHidden = True
    spdVar.Col = IothTaxamt
    spdVar.ColHidden = True
    
    spdVar.Col = ICGSTAMT
    spdVar.Lock = True
    spdVar.Col = ICGSTPER
    spdVar.Lock = True
    spdVar.Col = ISGSTAMT
    spdVar.Lock = True
    spdVar.Col = ISGSTPER
    spdVar.Lock = True
    spdVar.Col = IIGSTPER
    spdVar.Lock = True
    spdVar.Col = IIGSTAMT
    spdVar.Lock = True
    spdVar.Col = ICommWTAmt
    spdVar.ColHidden = False
    
    spdVar.Col = 3
    spdVar.ColHidden = True
    
    spdVar.Col = ISupplierAssvalue
    spdVar.ColHidden = False
    
    spdVar.Col = 2
    spdVar.ColHidden = True
    spdVar.ColWidth(13) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    
    spdVar.ColWidth(Ipgrosswt) = 12
    spdVar.ColWidth(Iptarewt) = 12
    spdVar.ColWidth(Ipnetwt) = 12
    spdVar.ColWidth(14) = 12
    spdVar.ColWidth(15) = 12
    
    spdVar.ColWidth(iTrashPer) = 0
    spdVar.ColWidth(Ipinvval) = 15
    spdVar.ColWidth(Iwbwt) = 12
    spdVar.ColWidth(IOthTaxableAmt) = 10
    spdVar.ColWidth(IOthers) = 13
    spdVar.ColWidth(Icandyrate) = 11
           
    spdVar.ColWidth(4) = 16
    spdVar.Col = 10
'    spdVar.Lock = True
    spdVar.Col = 11
    spdVar.Lock = True
    spdVar.Col = 12
    spdVar.Lock = True
    spdVar.Col = 13
    spdVar.Lock = True
    spdVar.Col = 8
    spdVar.Lock = True
    
    spdVar.Col = Imgrosswt
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
    spdVar.Col = Icandyrate
    spdVar.Lock = True
    
    If Arrdespatch_Flg = "Y" Then
        spdVar.Col = Ipnetwt
        spdVar.Lock = True
        spdVar.Col = Ipgrosswt
        spdVar.Lock = True
        spdVar.Col = Iptarewt
        spdVar.Lock = True
        spdVar.Col = ICommWTAmt
        spdVar.Lock = False
        
    End If
    spdVar.Col = IContNum
    spdVar.Lock = True
    spdVar.Col = IContdate
    spdVar.Lock = True
    spdVar.Col = IDiscAmt
    spdVar.Lock = True
    spdVar.Col = IDiscRate
    spdVar.Lock = True
    
    spdVar.Col = ISupplierAssvalue
    spdVar.Lock = True
    
    spdVar.ColWidth(ISupplierAssvalue) = 15
    
    Set Rs = New Recordset
    Rs.Open "Select AddtaxRequired from Rm_param", DB, adOpenStatic
    If Rs(0) = "Y" Then
        SetSpreadCol spdVar, IATaxCode, "Add. Tax Code", CellTypeEdit
        SetSpreadCol spdVar, IATaxper, "Add. Tax %", CellTypeNumber, 2
        SetSpreadCol spdVar, IATaxamt, "Add. Tax Amt", CellTypeNumber, 2
        
        spdVar.ColWidth(IATaxCode) = 10
        spdVar.ColWidth(IATaxper) = 9
        spdVar.ColWidth(IATaxamt) = 9
    
        With spdVar
            .MaxCols = 77
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    Else

        With spdVar
            .MaxCols = 74
            .MaxRows = totrow
            .ColsFrozen = 4
            .SetActiveCell 11, 1
        End With
    End If
    Exit Sub
spreadalign_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure spreadalign of Form FrmArrival"
End Sub
Private Sub Lotdisplay()

On Error Resume Next
intervalMinutes = -1


    TotalnWt = 0
    Set totlr = New Recordset
    totlr.Open "select isnull(sum(Netwt),0) Netwt from rm_arrival where arrno='" & adoPrimaryRS("arrno") & "' and arrdate='" & Format(adoPrimaryRS("arrdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not totlr.EOF Then
        TotalnWt = totlr("Netwt")
    End If
 
    Set RSq = New Recordset
    RSq.Open "select lotno,lotdt,varcode,bblflg,bales,ratecy,isnull(rebate,0)rebate,grswgt,tarewt,isnull(trash_et,0)trash_et,isnull(moisture_et,0)moisture_et,netwt,pgrswt,ptarewt,isnull(pnetwt,0) as pnetwt,isnull(pinvval,0)pinvval,weighbridgewt,pjamt,cashdisper,cashdisamt,tradedisper,tradedisamt,lrfrtper,lrfrtamt,bedper,bedamt,sedper,sedamt,aedper,aedamt,cessper,cessamt,tax_code,vatper,vatamt,othtaxper,othtaxamt,rlyfrtper,rlyfrtamt,insper,insamt,commper,commamt,Lcintper,lcintamt,dnamt1,charityamt,Damageamt,clearanceamt,othersamt,customsdutyamt,brkcom,totlandcost,ratekg,shipchrg,inwardno,inwarddate,othertaxableAmt,addtaxcode,addtaxper,addtaxamount,SICAAmt,HSN,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt,Line_No,PlCode,isnull(Comm_Wt,0) Comm_Wt ,isnull(ComWt_Flg,0) ComWt_Flg,DPDocno,DPDocDate,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt ,isnull(Net_Rate ,0) Net_Rate,isnull(TCS_PER,0)TCS_PER,isnull(TCS_AMT,0)TCS_AMT ,TCS_AssAmt,TCS_CalcAssAmtFlag" & _
             " ,lot_spotexpense,lot_incidentcharge,TypeTruckbale,suppassvalue from rm_lot where arrno=" & adoPrimaryRS("arrno") & " and arrdt='" & Format(adoPrimaryRS("arrdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' AND LOTYEAR='" & Year(yfdate) & "' and lottype='A'", DB, adopenstaic, adLockBatchOptimistic
    q = 1
    Call SpreadAlign(RSq.RecordCount)
    TOTROWCNT = RSq.RecordCount
    txtfields(5).Text = 0
    txtfields(123).Text = 0
    GTax = ""
    taxcode = "Y"
    
    While Not RSq.EOF
            spdVar.SetText ILotNo, q, RSq("lotno")
            spdVar.SetText ILotdt, q, RSq("lotdt")
            spdVar.SetText IVarcode, q, RSq("varcode")
            spdVar.SetText ICommWTAmt, q, RSq("Comm_Wt")
            Check1.value = RSq("ComWt_Flg")
            spdVar.SetText IContNum, q, RSq("contnum")
            spdVar.SetText IContdate, q, RSq("Contdate")
            'TotDiscRate , TotDiscAmt
            spdVar.SetText IDiscRate, q, val(RSq("TotDiscRate") & "")
            spdVar.SetText IDiscAmt, q, val(RSq("TotDiscAmt") & "")
            spdVar.SetText INetRate, q, RSq("Net_Rate")
            
            spdVar.SetText itcsper, q, val(RSq("TCS_PER") & "")
            spdVar.SetText itcsamt, q, val(RSq("TCS_AMT") & "")
            
            Set rsg = New Recordset
            rsg.Open "select * from rm_var where varcode='" & RSq("varcode") & "'", DB, adOpenStatic
            spdVar.SetText IVarName, q, rsg("varname")
            spdVar.SetText Iunit, q, RSq("bblflg")
            spdVar.SetText iQty, q, RSq("bales")
            spdVar.SetText Icandyrate, q, RSq("ratecy")
            spdVar.SetText IRebate, q, RSq("rebate")
            spdVar.SetText Imgrosswt, q, RSq("Grswgt")
            spdVar.SetText Imtarewt, q, RSq("tarewt")
            spdVar.SetText Immoiturewt, q, RSq("trash_et")
            spdVar.SetText Immoiturewt, q, RSq("moisture_et")
            spdVar.SetText Imnetwt, q, RSq("Netwt")
            spdVar.SetText Ishipchrg, q, RSq("shipchrg")
            
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
            GTax = RSq("TAX_CODE")

            If taxcode <> RSq("TAX_CODE") And q <> 1 Then
                taxcode = "N"
            End If

            
            spdVar.SetText ICGSTPER, q, RSq("cGSTper")
            spdVar.SetText ICGSTAMT, q, RSq("CGSTamt")
            spdVar.SetText ISGSTPER, q, RSq("SGSTper")
            spdVar.SetText ISGSTAMT, q, RSq("SGSTamt")
            spdVar.SetText IIGSTPER, q, RSq("IGSTper")
            spdVar.SetText IIGSTAMT, q, RSq("IGSTamt")
            spdVar.SetText IHSN, q, RSq("HSN")
            
            
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
            spdVar.SetText IRateKG, q, RSq("ratekg")
            spdVar.SetText ISICAAmt, q, RSq("SICAAmt")
            spdVar.SetText iTrashPer, q, RSq("SICAAmt")
            spdVar.SetText IDiscRate, q, RSq("TotDiscRate")
            spdVar.SetText IDiscAmt, q, RSq("TotDiscAmt")

            Set Rs = New Recordset
            Rs.Open "select addtaxrequired from rm_param", DB, adOpenStatic
            If Rs(0) = "Y" Then
                spdVar.SetText IATaxCode, q, RSq("addTaxcode")
                
                spdVar.SetText IATaxper, q, RSq("addtaxper")
                spdVar.SetText IATaxamt, q, RSq("addtaxamount")
            End If
            
            spdVar.SetText IIncidentCharge, q, IIf(IsNull(RSq("lot_incidentcharge")), 0, RSq("lot_incidentcharge"))
            spdVar.SetText ISpotExpense, q, IIf(IsNull(RSq("lot_spotexpense")), 0, RSq("lot_spotexpense"))
            
            spdVar.SetText ISupplierAssvalue, q, IIf(IsNull(RSq("suppassvalue")), 0, RSq("suppassvalue"))
       
            
            RSq.MoveNext
            q = q + 1
      Wend
      
      If taxcode = "Y" Then
            txtfields(83).Text = IIf(IsNull(GTax), "", GTax)
      Else
            txtfields(83).Text = ""
      End If
      Call totdisplay


Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form Frmlotbale", vbInformation, head
End Sub

Private Sub TaxCalculation()
On Error GoTo TaxCalculation_Error

                If Option2.value = True Then
                    Ct = val(spdVar.MaxRows)
                    Dim Lk As Integer
                    Dim CntV As Integer
                    Dim totvalue As Double
                    totvalue = 0
                    
                    
                    va = iQty
                    VBC = Imgrosswt
                    vc = Imnetwt
                    vr = Icandyrate
                    vreb = IRebate
                    txtfields(18).Text = ""
                    For Lk = 1 To Ct
                             If val(GetText(spdVar, va, Lk)) <> 0 And val(GetText(spdVar, VBC, Lk)) <> 0 And val(GetText(spdVar, vc, Lk)) <> 0 Then
                                CntV = CntV + 1
                                
                                Set RsE = New Recordset
                                RsE.Open "select contno,contdt from rm_arrival where arrno=" & txtfields(96).Text & " and arrdate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                                
                                If RsE.RecordCount > 0 Then
                                    ContNo = RsE("contno")
                                    contdt = RsE("contdt")
                                    
                                    Set Rs = New Recordset
                                    Rs.Open "Select CentralizedOrder,AssessValueFlg from Rm_param", DB, adOpenStatic
                                    If globalarrivalorder = "C" Then
                                        If Rs(0) = "Y" Then
                                            Set RsE = New Recordset
                                            RsE.Open "select rateunit from rm_cont where contno=" & ContNo & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
                                        Else
                                            Set RsE = New Recordset
                                            RsE.Open "select rateunit from rm_cont where contno=" & ContNo & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and (DIVCODE='" & Divcode & "' or ((DIVCODE='" & globalimportpo & "' and im_ind='I'))) ", DB, adOpenStatic
                                        End If
                                    Else
                                        If Rs(0) = "Y" Then
                                            Set RsE = New Recordset
                                            RsE.Open "select rateunit from rm_cont where contno=" & ContNo & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "'", DB, adOpenStatic
                                        Else
                                            Set RsE = New Recordset
                                            RsE.Open "select rateunit from rm_cont where contno=" & ContNo & " and contdt='" & Format(contdt, "yyyy-mm-dd") & "' and supcd='" & Trim(txtfields(30).Text) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                                        End If
                                    End If
                                    If RsE.RecordCount > 0 Then
                                        RateUnit = RsE("rateunit")
                                    Else
                                        RateUnit = "KILOGRAMS"
                                    End If
                                End If
                                
                                Set rsvl = New Recordset
                                rsvl.Open "select * from rm_rateunit where unitname='" & RateUnit & "'", DB, adOpenStatic
                                
                                If rsvl.RecordCount > 0 Then
                                  
                                    If Check1.value = 0 Then
                                        If optSUPPLIER = True Then
                                            totvalue = KSLRound(totvalue + val(GetText(spdVar, Ipnetwt, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), LANDCOST_ROFF)
                                        ElseIf OptCommercialWt = True Then
                                            totvalue = KSLRound(totvalue + val(GetText(spdVar, ICommWTAmt, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), LANDCOST_ROFF)
                                        Else
                                            totvalue = KSLRound(totvalue + val(GetText(spdVar, vc, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), LANDCOST_ROFF)
                                        End If
                                    Else
                                        totvalue = KSLRound(totvalue + val(GetText(spdVar, ICommWTAmt, Lk)) * (val(GetText(spdVar, vr, Lk)) / rsvl("value")) - val(GetText(spdVar, vreb, Lk)), LANDCOST_ROFF)
                                    End If
                                    
                                End If
                             End If
                    Next
                    
                    j = 0
                    K = 0
                    l = 0
                    m = 0
                    Sum = 0
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
                            Dim InsAmt As Double
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
                            Dim FibreDiscAmt As Double
                            Dim CGSTAMT As Double
                            Dim SGSTAMT As Double
                            Dim IGSTAMT As Double
                            CGSTAMT = 0
                            SGSTAMT = 0
                            IGSTAMT = 0
                            
                            Dutper = 0
                            
                            Dutper = (100 - val(txtfields(109).Text))
                            
                    For Lk = 1 To spdVar.MaxRows
                         If val(GetText(spdVar, va, Lk)) <> 0 And val(GetText(spdVar, VBC, Lk)) <> 0 And val(GetText(spdVar, vc, Lk)) <> 0 Then
                           
                            Set Rs = New Recordset
                            Rs.Open "select * from rm_rateunit where unitname='" & RateUnit & "'", DB, adOpenStatic
                            If Check1.value = 0 Then
                                If optSUPPLIER = True Then
                                    vq = Ipnetwt
                                ElseIf OptCommercialWt = True Then
                                    vq = ICommWTAmt
                                Else
                                    vq = Imnetwt
                                End If
                            Else
                                vq = ICommWTAmt
                            End If
                            Vg = Icandyrate
                            vreb = IRebate
                            
                            If Rs.RecordCount > 0 Then
                                txtfields(6).Text = Format(KSLRound(Sum + val(GetText(spdVar, vq, Lk)) * (val(GetText(spdVar, Vg, Lk)) / Rs("value")) - val(GetText(spdVar, vreb, Lk)), LANDCOST_ROFF), "00.00")
                                If CustID = "COTTON" Then
                                    If deltype = "F" Then
                                        NoofQty = KSLRound(val(GetText(spdVar, vq, Lk)) / rsvl("value"), 3)
                                        Assvalue = NoofQty * (val(GetText(spdVar, Icandyrate, Lk)) * 100) / (100 + val(GetText(spdVar, ITaxper, Lk)) + val(GetText(spdVar, IBedper, Lk)) + val(GetText(spdVar, IEdper, Lk)))
                                        Assvalue = Assvalue * val(txtfields(124).Text)
                                        txtfields(6).Text = KSLRound(val(Assvalue), ASSVAL_ROFF)
                                        Assvalue = KSLRound(Assvalue, ASSVAL_ROFF)
                                    Else
                                        Assvalue = KSLRound(val(GetText(spdVar, vq, Lk)) * KSLRound((val(GetText(spdVar, Vg, Lk)) / Rs("value")) - val(GetText(spdVar, vreb, Lk)), 4), ASSVAL_ROFF)
                                        Assvalue = Assvalue * val(txtfields(124).Text)
                                        txtfields(6).Text = Format(KSLRound(Sum + val(GetText(spdVar, vq, Lk)) * KSLRound((val(GetText(spdVar, Vg, Lk)) / Rs("value")) - val(GetText(spdVar, vreb, Lk)), 4), ASSVAL_ROFF), "00.00")
                                        Assvalue = KSLRound(val(Assvalue), ASSVAL_ROFF)
                                    End If
                                Else
                                    Assvalue = KSLRound(val(GetText(spdVar, vq, Lk)) * KSLRound((val(GetText(spdVar, Vg, Lk)) / Rs("value")) - val(GetText(spdVar, vreb, Lk)), 4), ASSVAL_ROFF)
                                    Assvalue = Assvalue * val(txtfields(124).Text)
                                    txtfields(6).Text = Format(KSLRound(Sum + val(GetText(spdVar, vq, Lk)) * KSLRound((val(GetText(spdVar, Vg, Lk)) / Rs("value")) - val(GetText(spdVar, vreb, Lk)), 4), ASSVAL_ROFF), "00.00")
                                    Assvalue = KSLRound(val(Assvalue), ASSVAL_ROFF)
                                End If
                            End If
                            
                            
                            Sum = txtfields(6).Text
                            
                            spdVar.SetText Ipjamt, Lk, CStr(Assvalue)
                            
                            
                            assper = Round((Assvalue / totvalue) * 100, 2)
                            FibreDiscAmt = val(GetText(spdVar, IDiscAmt, Lk))
                            If val(txtfields(53).Text) = 0 Then
                                If val(txtfields(54).Text) <> 0 Then
                                    CashDisamt = val(txtfields(54).Text) * val(assper) / 100
                                    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
                                    spdVar.SetText Icashdisper, Lk, CStr(txtfields(53).Text)
                                Else
                                    CashDisamt = 0
                                    spdVar.SetText Icashdisamt, Lk, CStr(CashDisamt)
                                    spdVar.SetText Icashdisper, Lk, CStr(txtfields(53).Text)
                                End If
                            Else
                                CashDisamt = Round(val(GetText(spdVar, Ipjamt, Lk)) * (val(txtfields(53).Text) / 100), 2) ''Assvalue * val(txtfields(53).Text) / 100
                                spdVar.SetText Icashdisamt, Lk, CashDisamt
                                spdVar.SetText Icashdisper, Lk, CStr(txtfields(53).Text)
                            End If
                            If val(txtfields(84).Text) = 0 Then
                                If val(txtfields(85).Text) <> 0 Then
                                    TradeDisAmt = val(txtfields(85).Text) * val(assper) / 100
                                    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
                                    spdVar.SetText Itradedisper, Lk, CStr(txtfields(84).Text)
                                Else
                                    TradeDisAmt = 0
                                    spdVar.SetText Itradedisamt, Lk, CStr(TradeDisAmt)
                                    spdVar.SetText Itradedisper, Lk, CStr(txtfields(84).Text)
                                End If
                            Else
                                TradeDisAmt = Round(val(GetText(spdVar, Ipjamt, Lk)) * (val(txtfields(84).Text) / 100), 2) ''Assvalue * val(txtfields(84).Text) / 100
                                spdVar.SetText Itradedisamt, Lk, TradeDisAmt
                                spdVar.SetText Itradedisper, Lk, CStr(txtfields(84).Text)
                            End If
                            If val(txtfields(12).Text) = 0 Then
                                If val(txtfields(13).Text) <> 0 Then
                                    Lfrt = val(txtfields(13).Text) * val(assper) / 100
                                    spdVar.SetText IFrtamt, Lk, Lfrt
                                    spdVar.SetText IFrtper, Lk, CStr(txtfields(12).Text)
                                Else
                                    Lfrt = 0
                                    spdVar.SetText IFrtamt, Lk, Lfrt
                                    spdVar.SetText IFrtper, Lk, CStr(txtfields(12).Text)
                                End If
                            Else
                               Lfrt = Round(GetText(spdVar, Ipjamt, Lk) * (val(txtfields(12).Text) / 100), 2)
                               spdVar.SetText IFrtamt, Lk, Lfrt
                               spdVar.SetText IFrtper, Lk, CStr(txtfields(12).Text)
                            End If
                            'BED
                            If val(txtfields(7).Text) = 0 Then
                                    If val(txtfields(42).Text) <> 0 Then
                                        Bed = val(txtfields(42).Text) * val(assper) / 100
                                        spdVar.SetText IBedamt, Lk, Bed
                                        spdVar.SetText IBedper, Lk, CStr(txtfields(7).Text)
                                    Else
                                        Bed = 0
                                        spdVar.SetText IBedamt, Lk, Bed
                                        spdVar.SetText IBedper, Lk, CStr(txtfields(7).Text)
                                    End If
                            Else
                                If Left(deltype, 1) = "F" Then
                                    Bed = (Assvalue - (CashDisamt + TradeDisAmt + Lfrt)) * val(txtfields(7).Text) / 100
                                Else
                                    Bed = (Assvalue - (CashDisamt + TradeDisAmt)) * val(txtfields(7).Text) / 100
                                End If
                                Bed = KSLRound(Bed, BED_ROFF)
                                spdVar.SetText IBedamt, Lk, Bed
                                spdVar.SetText IBedper, Lk, CStr(txtfields(7).Text)
                            End If
                                                        
                            'ED CESS
                            If val(txtfields(43).Text) = 0 Or Trim(txtfields(43).Text) = "" Then
                                If val(txtfields(44).Text) <> 0 Then
                                    SED = val(txtfields(44).Text) * val(assper) / 100
                                    spdVar.SetText IEdamt, Lk, CStr(SED)
                                    spdVar.SetText IEdper, Lk, CStr(txtfields(43).Text)
                                Else
                                    SED = 0
                                    spdVar.SetText IEdamt, Lk, CStr(SED)
                                    spdVar.SetText IEdper, Lk, CStr(txtfields(43).Text)
                                End If
                            Else
                                SED = Bed * val(txtfields(43).Text) / 100
                                SED = KSLRound(SED, EDCESS_ROFF)
                                spdVar.SetText IEdamt, Lk, SED
                                spdVar.SetText IEdper, Lk, CStr(txtfields(43).Text)
                            End If
                            
                            'HS CESS
                            If val(txtfields(45).Text) = 0 Then
                                If val(txtfields(46).Text) <> 0 Then
                                    Aed = val(txtfields(46).Text) * val(assper) / 100
                                    spdVar.SetText IHscessamt, Lk, Aed
                                    spdVar.SetText IHscessper, Lk, CStr(txtfields(45).Text)
                                Else
                                    Aed = 0
                                    spdVar.SetText IHscessamt, Lk, Aed
                                    spdVar.SetText IHscessper, Lk, CStr(txtfields(45).Text)
                                End If
                            Else
                                Aed = KSLRound(Bed * val(txtfields(45).Text) / 100, AED_ROFF)
                                spdVar.SetText IHscessamt, Lk, Aed
                                spdVar.SetText IHscessper, Lk, CStr(txtfields(45).Text)
                            End If
                                                       
                            'CESS
                            If val(txtfields(47).Text) = 0 Then
                                If val(txtfields(48).Text) <> 0 Then
                                    cess = KSLRound(val(txtfields(48).Text) * val(assper) / 100, CESS_ROFF)
                                    spdVar.SetText Icessamt, Lk, CStr(cess)
                                    spdVar.SetText Icessper, Lk, CStr(txtfields(47).Text)
                                Else
                                    cess = 0
                                    spdVar.SetText Icessamt, Lk, CStr(cess)
                                    spdVar.SetText Icessper, Lk, CStr(txtfields(47).Text)
                                End If
                            Else
                                If UCase(deltype) = "F" Then
                                    
                                    cess = Round(val(txtfields(47).Text) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + val(Lfrt)) / 100, CESS_ROFF)
                                Else
                                  
                                    cess = Round(val(txtfields(47).Text) * (Assvalue + Bed + Aed + SED - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt))) / 100, CESS_ROFF)
                                End If
                                spdVar.SetText Icessamt, Lk, CStr(cess)
                                spdVar.SetText Icessper, Lk, CStr(txtfields(47).Text)
                            End If
                            'COMMISION
                            If val(txtfields(59).Text) = 0 Or Trim(txtfields(59).Text) = "" Then
                                If val(txtfields(60).Text) <> 0 Then
                                    Comamt = val(txtfields(60).Text) * val(assper) / 100
                                    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                                    spdVar.SetText ICommper, Lk, CStr(txtfields(59).Text)
                                Else
                                    Comamt = 0
                                    spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                                    spdVar.SetText ICommper, Lk, CStr(txtfields(59).Text)
                                End If
                            Else
                               Comamt = Assvalue * val(txtfields(59).Text) / 100
                               spdVar.SetText ICommAMT, Lk, CStr(Comamt)
                               spdVar.SetText ICommper, Lk, CStr(txtfields(59).Text)
                            End If
                            'Other Taxable Amount
                            If val(txtfields(111).Text) = 0 Or Trim(txtfields(111).Text) = "" Then
                                If val(txtfields(111).Text) <> 0 Then
                                    OtherTaxable = val(txtfields(100).Text)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(txtfields(111).Text)
                                Else
                                    OtherTaxable = 0
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                    spdVar.SetText IOthTaxableAmt, Lk, CStr(txtfields(111).Text)
                                End If
                            Else
                                OtherTaxable = val(txtfields(111).Text)
                                spdVar.SetText IOthTaxableAmt, Lk, CStr(OtherTaxable)
                                spdVar.SetText IOthTaxableAmt, Lk, CStr(txtfields(111).Text)
                            End If

                            'Tax Code
                            Dim TotTaxableValue As Double
                            spdVar.SetText ITaxCode, Lk, CStr(txtfields(83).Text)
                            If val(txtfields(51).Text) = 0 Then
                                If val(txtfields(52).Text) <> 0 Then
                                    If optBefore = True Then
                                        Vatamt = val(txtfields(52).Text) * val(assper) / 100
                                    Else
                                        Vatamt = (val(txtfields(52).Text) - val(CashDisamt) - val(FibreDiscAmt) - val(TradeDisAmt)) * val(assper) / 100
                                    End If
                                    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                    spdVar.SetText ITaxper, Lk, CStr(txtfields(51).Text)
                                Else
                                    Vatamt = 0
                                    spdVar.SetText ITaxCode, Lk, CStr(txtfields(83).Text)
                                    spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                    spdVar.SetText ITaxper, Lk, CStr(txtfields(51).Text)
                                End If
                            Else
                                Set Rs = New Recordset
                                Rs.Open "Select * from rM_param", DB, adOpenStatic
                                If Rs.RecordCount > 0 Then
                               If optBefore = True Then
                                    If Rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                           
                                            CGSTAMT = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            
                                           TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess)
                                        Else
                                            
                                            CGSTAMT = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess)
                                        End If
                                        Vatamt = CGSTAMT + SGSTAMT + IGSTAMT
                                    Else
                                        If UCase(deltype) = "F" Then
                                           
                                            CGSTAMT = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text))
                                        Else
                                            
                                            CGSTAMT = (Assvalue + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = (Assvalue + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = (Assvalue + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = (Assvalue + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text))
                                        End If
                                        Vatamt = CGSTAMT + SGSTAMT + IGSTAMT
                                    End If
                                Else
                                    If Rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                           
                                            CGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text))
                                            
                                        Else
                                            
                                            CGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text))
                                        End If
                                        Vatamt = CGSTAMT + SGSTAMT + IGSTAMT
                                    Else
                                        If UCase(deltype) = "F" Then

                                            CGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                            SGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                            IGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                            TotTaxableValue = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text))
                                        Else
                                          
                                             CGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ICGSTPER, Lk)) / 100
                                             SGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, ISGSTPER, Lk)) / 100
                                             IGSTAMT = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(GetText(spdVar, IIGSTPER, Lk)) / 100
                                             TotTaxableValue = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text))
                                        End If
                                        Vatamt = CGSTAMT + SGSTAMT + IGSTAMT
                                    End If

                                End If
                                End If
                                spdVar.SetText ITaxamt, Lk, CStr(Vatamt)
                                spdVar.SetText ICGSTAMT, Lk, CStr(CGSTAMT)
                                spdVar.SetText ISGSTAMT, Lk, CStr(SGSTAMT)
                                spdVar.SetText IIGSTAMT, Lk, CStr(IGSTAMT)
                                spdVar.SetText ITaxper, Lk, CStr(txtfields(51).Text)
                            End If
                           
                           
                        Set Rs = New Recordset
                        Rs.Open "select AddtaxRequired from rm_param", DB, adOpenStatic
                        If Rs(0) = "Y" Then
                        spdVar.SetText IATaxCode, Lk, CStr(txtfields(114).Text)
                            If val(txtfields(112).Text) = 0 Then
                                If val(txtfields(113).Text) <> 0 Then
                                    If optBefore = True Then
                                        AVatamt = val(txtfields(113).Text) * val(assper) / 100
                                    Else
                                        AVatamt = (val(txtfields(113).Text) - val(CashDisamt) - val(FibreDiscAmt) - val(TradeDisAmt)) * val(assper) / 100
                                    End If
                                    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                    spdVar.SetText IATaxper, Lk, CStr(txtfields(112).Text)
                                Else
                                    AVatamt = 0
                                    spdVar.SetText IATaxCode, Lk, CStr(txtfields(83).Text)
                                    spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                    spdVar.SetText IATaxper, Lk, CStr(txtfields(112).Text)
                                End If
                            Else
                                Set Rs = New Recordset
                                Rs.Open "Select * from rM_param", DB, adOpenStatic
                                If Rs.RecordCount > 0 Then
                               If optBefore = True Then
                                    If Rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + val(Lfrt) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        Else
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        End If
                                        AVatamt = Round(AVatamt, ADDTAX_ROFF)
                                    Else
                                        If UCase(deltype) = "F" Then
                                            AVatamt = (Assvalue + val(Lfrt) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        Else
                                            AVatamt = (Assvalue + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        End If
                                        AVatamt = Round(AVatamt, ADDTAX_ROFF)
                                    End If
                                    
                                Else
                                    If Rs("commtax") = "Y" Then
                                        If UCase(deltype) = "F" Then
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        Else
                                            AVatamt = ((Assvalue + Comamt + OtherTaxable) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        End If
                                    Else
                                        If UCase(deltype) = "F" Then
                                            AVatamt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(Lfrt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        Else
                                            AVatamt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + SED + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(112).Text) / 100
                                        End If
                                    End If

                                End If
                                End If
                                spdVar.SetText IATaxamt, Lk, CStr(AVatamt)
                                spdVar.SetText IATaxper, Lk, CStr(txtfields(112).Text)
                            End If
                           

                           End If
                       If optBefore = True Then
                           If val(txtfields(10).Text) = 0 Or Trim(txtfields(10).Text) = "" Then
                                If val(txtfields(11).Text) <> 0 Then
                                    Othtax = val(txtfields(11).Text) * val(assper) / 100
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                                Else
                                    Othtax = 0
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                                End If
                            Else
                               Othtax = KSLRound((Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(10).Text) / 100, ADDTAX_ROFF)
                               spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                               spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                            End If
                        Else
                                      
                            If val(txtfields(10).Text) = 0 Or Trim(txtfields(10).Text) = "" Then
                                If val(txtfields(11).Text) <> 0 Then
                                    
                                    Othtax = KSLRound(val(txtfields(11).Text) - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt) + val(txtspotexpense.Text)) * val(assper) / 100, ADDTAX_ROFF)
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                                Else
                                    Othtax = 0
                                    spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                                    spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                                End If
                            Else
                               Othtax = KSLRound((Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + OtherTaxable + val(txtspotexpense.Text)) * val(txtfields(10).Text) / 100, ADDTAX_ROFF)
                               spdVar.SetText IothTaxamt, Lk, CStr(Othtax)
                               spdVar.SetText IOthtaxPer, Lk, CStr(txtfields(10).Text)
                            End If
                            
                         End If
                            
                            Taxamt = val(Vatamt + CStamt + Othtax)
                                                                                    
                                                                                    
                            If val(txtfields(15).Text) = 0 Or Trim(txtfields(15).Text) = "" Then
                                If val(txtfields(16).Text) <> 0 Then
                                    RlFrt = val(txtfields(16).Text) * val(assper) / 100
                                    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                                    spdVar.SetText IRlyfrtper, Lk, CStr(txtfields(15).Text)
                                Else
                                    RlFrt = 0
                                    spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                                    spdVar.SetText IRlyfrtper, Lk, CStr(txtfields(15).Text)
                                End If
                            Else
                               RlFrt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + SED + Aed + cess + Taxamt + Scamt + Lfrt) * val(txtfields(15).Text) / 100
                               spdVar.SetText IRlyfrtamt, Lk, CStr(RlFrt)
                               spdVar.SetText IRlyfrtper, Lk, CStr(txtfields(15).Text)
                            End If
                            
                            If val(txtfields(57).Text) = 0 Or Trim(txtfields(57).Text) = "" Then
                                If val(txtfields(58).Text) <> 0 Then
                                    InsAmt = val(txtfields(58).Text) * val(assper) / 100
                                    spdVar.SetText IInsamt, Lk, CStr(InsAmt)
                                    spdVar.SetText IInsper, Lk, CStr(txtfields(57).Text)
                                Else
                                    InsAmt = 0
                                    spdVar.SetText IInsamt, Lk, CStr(InsAmt)
                                    spdVar.SetText IInsper, Lk, CStr(txtfields(57).Text)
                                End If
                            Else
                            
                            Dim rspara As New Recordset
                            
                            rspara.Open "Select InsCalAssvalflg from rM_param", DB, adOpenStatic
                            
                            If (rspara.BOF And rspara.EOF) = False Then
                            
                               If rspara("InsCalAssvalflg") = "N" Then
                            
                                    If UCase(deltype) = "F" Then
                                         InsAmt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt) * val(txtfields(57).Text) / 100
                                     Else
                                         InsAmt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt) * val(txtfields(57).Text) / 100
                                     End If
                                Else
                                    InsAmt = Assvalue * (val(txtfields(57).Text) / 100)
                                End If
                                
                            End If
                            
                            rspara.Close
                            Set rspara = Nothing
                            
                                txtfields(58).Text = Format(Round(InsAmt, 2), "0.00")
                                
                               spdVar.SetText IInsamt, Lk, CStr(InsAmt)
                               spdVar.SetText IInsper, Lk, CStr(txtfields(57).Text)
                            End If
                                                                                                              
                            If val(txtfields(61).Text) = 0 Or Trim(txtfields(61).Text) = "" Then
                                If val(txtfields(62).Text) <> 0 Then
                                    LcInt = val(txtfields(62).Text) * val(assper) / 100
                                    spdVar.SetText ILCamt, Lk, CStr(LcInt)
                                    spdVar.SetText ILCper, Lk, CStr(txtfields(61).Text)
                                Else
                                    LcInt = 0
                                    spdVar.SetText ILCamt, Lk, CStr(LcInt)
                                    spdVar.SetText ILCper, Lk, CStr(txtfields(61).Text)
                                End If
                            Else
                            
                               If UCase(deltype) = "F" Then
                                    LcInt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt) * val(txtfields(61).Text) / 100
                               Else
                                    LcInt = (Assvalue - (val(CashDisamt) + val(FibreDiscAmt) + val(TradeDisAmt)) + Bed + Aed + cess + Taxamt + Scamt + InsAmt + Comamt) * val(txtfields(61).Text) / 100
                               End If
                               spdVar.SetText ILCamt, Lk, CStr(LcInt)
                               spdVar.SetText ILCper, Lk, CStr(txtfields(61).Text)
                            End If

                            DBamt = val(txtfields(70).Text) * val(assper) / 100
                            spdVar.SetText IDbamt, Lk, CStr(DBamt)
                            
                            Charity = val(txtfields(63).Text) * val(assper) / 100
                            spdVar.SetText Icharity, Lk, CStr(Charity)
                            
                            Damage = val(txtfields(64).Text) * val(assper) / 100
                            spdVar.SetText iDamage, Lk, CStr(Damage)
                            
                            schrg = val(txtfields(107).Text)
                            spdVar.SetText Ishipchrg, Lk, CStr(schrg)
                                                        
                            CLearance = val(txtfields(66).Text) * val(assper) / 100
                            spdVar.SetText Iclear, Lk, CStr(CLearance)
                            
                            Others = val(txtfields(67).Text) * val(assper) / 100
                            spdVar.SetText IOthers, Lk, CStr(Others)
                                                        
                            Brkcom = val(txtfields(17).Text) * val(assper) / 100
                            spdVar.SetText Ibrkcom, Lk, CStr(Brkcom)
                            
                            Cusdutyamt = val(txtfields(69).Text) * val(assper) / 100
                            spdVar.SetText IcustomDuty, Lk, CStr(Cusdutyamt)
                            
                            SICAAmt = val(txtfields(117).Text) * val(assper) / 100
                            spdVar.SetText ISICAAmt, Lk, CStr(SICAAmt)
                            
 
                If optDCNo = True Then
                    If UCase(deltype) = "S" Then
                        Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(FibreDiscAmt) + TradeDisAmt + SICAAmt)
                    Else
                        Totland = Assvalue + OtherTaxable + Bed + SED + Aed + cess + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt + val(InsAmt) - (CashDisamt + val(FibreDiscAmt) + TradeDisAmt + SICAAmt)
                    End If
                Else
                    If UCase(deltype) = "S" Then
                        Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Lfrt + RlFrt + InsAmt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt - (CashDisamt + val(FibreDiscAmt) + TradeDisAmt + SICAAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
                    Else
                        Totland = Assvalue + OtherTaxable + Taxamt + AVatamt + Scamt + Comamt + LcInt + DBamt + Charity + Damage + clearnce + Others + Brkcom + schrg + Cusdutyamt + val(InsAmt) - (CashDisamt + val(FibreDiscAmt) + TradeDisAmt + SICAAmt) + ((Bed + SED + Aed + cess) * (Dutper / 100))
                    End If

                End If
                
                
            Dim TCSLANCOST As Double
             Set rsP1 = New Recordset
             rsP1.Open "select isnull(tcstax,'Y') tcstax  FROM RM_PARAM", DB, adOpenStatic
                If rsP1("tcstax") = "Y" Then
                     TCSLANCOST = TotTaxableValue + Vatamt
                Else
                     TCSLANCOST = TotTaxableValue
                End If
               
                v1 = itcsper
                If val(GetText(spdVar, v1, Row)) <> 0 Then
                    tcsamt = TCSLANCOST * val(GetText(spdVar, v1, Lk)) / 100
                    spdVar.SetText itcsamt, Lk, CStr(Round(tcsamt, ATCS_ROFF))
                Else
                    v1 = itcsamt
                    tcsamt = val(GetText(spdVar, itcsamt, Lk))
                End If
                            'TOTAL LANDCOST = TOTALLANDCOST  - VATAMOUNT
                            
                        Set rsP = New Recordset
                        rsP.Open "select isnull(vatflg,'N') ,isnull(TCSINLANDCOSTflg,'N') TCSINLANDCOSTflg FROM RM_PARAM", DB, adOpenStatic
                        VATFLG = "N"
                        tcsLandflg = "N"
                        If rsP.RecordCount > 0 Then
                            VATFLG = rsP(0)
                            tcsLandflg = rsP(1)
                        End If
                         If tcsLandflg = "Y" Then
                         
                         Else
                          Totland = Totland + tcsamt
                         End If
                            If VATFLG = "Y" Then
                            
                                          Totland = Totland - Vatamt - AVatamt
                                
                            End If
                            
                            txtfields(18).Text = CStr(val(txtfields(18).Text) + Totland)
                            
                            LandCost = Round(Totland, 2)
                            spdVar.SetText ILandedcost, Lk, CStr(LandCost)
                            
                            If optSUPPLIER = True Then
                                VBC = Ipnetwt
                            ElseIf OptCommercialWt = True Then
                                VBC = ICommWTAmt
                            Else
                                VBC = Imnetwt
                            End If
                            ratekg = Format(val(LandCost) / val(GetText(spdVar, VBC, Lk)), "#0.0000")
                            spdVar.SetText IRateKG, Lk, CStr(ratekg)
                            
                            sumland = sumland + LandCost
                            txtfields(18).Text = Format(Round(val(txtfields(18).Text), 2), "0.00")
                        End If
                    Next
                    
                    txtfields(19).Text = Round(val(txtfields(18).Text) / val(txtfields(5).Text), 4)
                    If Check1.value Then ''1.12.18 sasi
                        txtfields(19).Text = Round(val(txtfields(18).Text) / val(txtfields(123).Text), 4)
                    End If
      End If


Exit Sub
TaxCalculation_Error:

End Sub
Private Sub totdisplay()

On Error Resume Next
intervalMinutes = -1
        pjamt = 0
        LandCost = 0
        billwt = 0
        v1 = Ipjamt
        v2 = ILandedcost
        v3 = Imnetwt
        v4 = ICGSTAMT
        v5 = ISGSTAMT
        v6 = IIGSTAMT
        
        mgwt = 0: mtwt = 0: mnwt = 0: mqty = 0: mmwt = 0
        pgwt = 0: ptwt = 0: pnwt = 0: CommWt = 0: LRFGTTOT = 0: TotTCS_AMT = 0
        totTCS_AssAmT = 0
        
        For I = 1 To spdVar.MaxRows
            pjamt = pjamt + val(GetText(spdVar, v1, I))
            LandCost = LandCost + val(GetText(spdVar, v2, I))
            ''''GST SASI 16.6.17
            cgst = cgst + val(GetText(spdVar, v4, I))
            sgst = sgst + val(GetText(spdVar, v5, I))
            igst = igst + val(GetText(spdVar, v6, I))
            TotTCS_AMT = TotTCS_AMT + val(val(GetText(spdVar, itcsamt, I)))
            totTCS_AssAmT = totTCS_AssAmT + val(val(GetText(spdVar, ITCS_AssValue, I)))

            If optSUPPLIER = True Then
                billwt = billwt + val(GetText(spdVar, Ipnetwt, I))
            ElseIf OptCommercialWt = True Then
                billwt = billwt + val(GetText(spdVar, ICommWTAmt, I))
            Else
                billwt = billwt + val(GetText(spdVar, v3, I))
            End If

            
            mgwt = mgwt + val(GetText(spdVar, Imgrosswt, I))
            mtwt = mtwt + val(GetText(spdVar, Imtarewt, I))
            mnwt = mnwt + val(GetText(spdVar, Imnetwt, I))
            mmtwt = mmtwt + val(GetText(spdVar, ImTrashper, I))
            mmwt = mmwt + val(GetText(spdVar, Immoiturewt - ImTrashper, I))
            mqty = mqty + val(GetText(spdVar, iQty, I))
            pgwt = pgwt + val(GetText(spdVar, Ipgrosswt, I))
            ptwt = ptwt + val(GetText(spdVar, Iptarewt, I))
            pnwt = pnwt + val(GetText(spdVar, Ipnetwt, I))
            CommWt = CommWt + val(GetText(spdVar, ICommWTAmt, I))
            LRFGTTOT = LRFGTTOT + val(GetText(spdVar, IFrtamt, I))
            
        Next
         txtfields(130).Text = Format(totTCS_AssAmT, "00.00")
        txtfields(13).Text = Format(LRFGTTOT, "00.00")
        txtfields(6).Text = Format(pjamt, "00.00")
        txtfields(18).Text = Format(LandCost, "00.00")
        txtfields(128).Text = Format(TotTCS_AMT, "00.00")
        
        
        If billwt > 0 Then
            txtfields(19).Text = Round(LandCost / billwt, 4)
        End If
        If Check1.value Then
            If CommWt > 0 Then
                txtfields(19).Text = Round(LandCost / CommWt, 4)
            End If
        End If
        
        txtfields(100).Text = mqty
        txtfields(99).Text = Format(mgwt, "#####0.000")
        txtfields(98).Text = Format(mtwt, "#####0.000")
        txtfields(97).Text = Format(mnwt, "#####0.000")
        txtfields(101).Text = Format(mmwt, "#####0.000")
        txtfields(105).Text = Format(pgwt, "#####0.000")
        txtfields(104).Text = Format(ptwt, "#####0.000")
        txtfields(103).Text = Format(pnwt, "#####0.000")
        
        txtfields(118).Text = Format(cgst, "#####0.000")
        txtfields(116).Text = Format(sgst, "#####0.000")
        txtfields(119).Text = Format(igst, "#####0.000")
        
        Text4.Text = mqty
        Text5.Text = Format(mgwt, "#####0.000")
        Text6.Text = Format(mtwt, "#####0.000")
        Text16.Text = Format(mmtwt, "#####0.000")
        Text7.Text = Format(mmwt, "#####0.000")
    
        Text11.Text = Format(mnwt, "#####0.000")
        Text15.Text = Format(pgwt, "#####0.000")
        Text14.Text = Format(ptwt, "#####0.000")
        Text13.Text = Format(pnwt, "#####0.000")
        Text19.Text = Format(CommWt, "#####0.000")
Exit Sub
totdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure totdisplay of Form Frmlotbale", vbInformation, head
End Sub
Private Sub DisplayVal()
On Error Resume Next
    Set childrs = New Recordset
    childrs.Open "select sum(isnull(TAXAMT,0)) as Taxamt,SUm(isnull(BEDAMT,0)) as Bedamt,sum(isnull(PJAMT,0)) as Pjamt,sum(isnull(RLYFRT,0)) as Rlfrt,sum(isnull(LDGULG,0)) as ldgulg,sum(isnull(BRKCOM,0)) as Brkcom,sum(isnull(SPOTEXP,0)) as Spotexp,sum(isnull(INSAMT,0)) as Insamt,sum(isnull(TOTLANDCOST,0)) as Totlandcost,sum(isnull(GRSWGT,0)) as Grswgt,sum(isnull(A.TAREWT,0)) as Tarewt,sum(isnull(A.NETWT,0)) as Netwt,sum(isnull(moisture_et,0)) as Moisture_et,sum(isnull(DNAMT1,0)) as Dnamt1,sum(isnull(AEDAMT,0)) as AEdamt,sum(isnull(BEDAMT,0)) as Bedamt,sum(isnull(SEDAMT,0)) as Sedamt,sum(isnull(CESSAMT,0)) as Cessamt,sum(isnull(VATAMT,0)) as vatamt, sum(isnull(addtaxAMount,0)) as addtaxamount " & _
            " ,sum(isnull(OTHTAXAMT,0)) as othtaxamt,sum(isnull(LRFRTAMT,0)) as Lrfrtamt,sum(isnull(RLYFRTAMT,0)) as rlyfrtamt,sum(isnull(INSAMT,0)) as insamt,sum(isnull(COMMAMT,0)) as commamt " & _
            " ,sum(isnull(LCINTAMT,0)) as lcintamt,sum(isnull(customsdutyamt,0)) as customsdutyamt,sum(isnull(CHARITYAMT,0)) as charityamt,sum(isnull(DAMAGEAMT,0)) as Damageamt,sum(isnull(WARPAGEAMT,0)) as warpageamt,sum(isnull(CLEARANCEAMT,0)) as Clearanceamt,sum(isnull(OTHERSAMT,0)) as othersamt,sum(isnull(ALLOWANCEAMT,0)) as allowanceamt,SUM(ISNULL(CASHDISAMT,0))CASHDISAMT,SUM(ISNULL(TRADEDISAMT,0)) TRADEDISAMT,AVG(ISNULL(CASHDISPER,0))CASHDISPER,AVG(ISNULL(TRADEDISPER,0))TRADEDISPER,AVG(ISNULL(LRFRTPER,0))LRFRTPER,AVG(ISNULL(BEDPER,0))BEDPER,AVG(ISNULL(SEDPER,0))EDCESSPER,AVG(ISNULL(AEDPER,0))HSCESSPER,AVG(ISNULL(CESSPER,0))CESSPER,AVG(ISNULL(VATPER,0))VATPER,AVG(ISNULL(addtaxPER,0))addtaxPER,AVG(ISNULL(OTHTAXPER,0))OTHTAXPER,AVG(ISNULL(RLYFRTPER,0))RLYFRTPER,AVG(ISNULL(INSPER,0))INSPER " & _
            " ,AVG(ISNULL(COMMPER,0))COMMPER,AVG(ISNULL(LCINTPER,0))LCINTPER,sum(isnull(shipchrg,0)) as shipchrg,sum(isnull(OtherTaxableAmt ,0)) as OtherTaxableAmt,sum(isnull(pinvval ,0)) as pinvval,sum(isnull(SICAAmt ,0)) as SICAAmt,sum(isnull(cgstamt ,0)) cgstamt,sum(isnull(sgstamt ,0)) sgstamt,sum(isnull(igstamt ,0)) igstamt,avg(isnull(cgstper ,0)) cgstper,avg(isnull(sgstper ,0)) sgstper,avg(isnull(igstper ,0)) igstper ,isnull(max(Line_No),'')Line_No,isnull(max(PlCode),'') PlCode,isnull(max(ComWt_Flg),0) ComWt_Flg,isnull(sum(Comm_Wt),0) Comm_Wt,sum(isnull(TotDiscRate,0)) TotDiscRate ,sum(isnull(TotDiscAmt,0)) TotDiscAmt,avg(isnull(tcs_per,0)) tcs_per,sum(isnull(tcs_amt,0)) tcs_amt,max(isnull(TCS_CalcAssAmtFlag,1)) TCS_CalcAssAmtFlag ,sum(isnull(TCS_AssAmt,0)) TCS_AssAmt from rm_lot a where ARRNO='" & adoPrimaryRS("ARRNO") & "' and ARRDT='" & Format(adoPrimaryRS("ARRDT"), "yyyy-mm-dd") & "' and opflg='N' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "' and lottype='A'", DB, adOpenStatic
    
    Check1.value = childrs("ComWt_Flg")
    txtfields(123).Text = Format(childrs("Comm_Wt"), "00.000")
    txtfields(121).Text = childrs("line_no")
    txtfields(120).Text = childrs("plcode")
    txtfields(118).Text = childrs("CgstAMT")
    txtfields(120).Text = childrs("plcode")
    txtfields(126).Text = childrs("TotDiscRate")
    txtfields(127).Text = childrs("TotDiscAmt")
    txtfields(130).Text = childrs("TCS_AssAmt")
    Chk_TCSAssValFlg.value = IIf(IsNull(childrs("TCS_CalcAssAmtFlag")), 1, childrs("TCS_CalcAssAmtFlag"))

    txtfields(118).Text = childrs("CgstAMT")
    txtfields(116).Text = childrs("sgstAMT")
    txtfields(119).Text = childrs("IgstAMT")

    txtfields(128).Text = childrs("TCS_AmT")
    txtfields(129).Text = childrs("TCS_PER")
    
    txtfields(53).Text = childrs("CASHDISPER")
    txtfields(54).Text = childrs("CASHDISAMT")
    
    txtfields(84).Text = childrs("TRADEDISPER")
    txtfields(85).Text = childrs("TRADEDISAMT")
    
    txtfields(7).Text = childrs("bedPER")
    txtfields(42).Text = childrs("bedamt")
    
    txtfields(43).Text = childrs("EDCESSPER")
    txtfields(44).Text = childrs("sedamt")
    
    txtfields(45).Text = childrs("hSCESSPER")
    txtfields(46).Text = childrs("aedamt")
    
    txtfields(51).Text = childrs("VATPER")
    txtfields(52).Text = childrs("vatamt")
    
    txtfields(112).Text = childrs("addtaxPER")
    txtfields(113).Text = childrs("addtaxamount")
 
    txtfields(47).Text = childrs("CESSPER")
    txtfields(48).Text = childrs("cessamt")
    
    txtfields(10).Text = childrs("OTHTAXPER")
    txtfields(11).Text = childrs("othtaxamt")
    
    txtfields(15).Text = childrs("rlyfrtPER")
    txtfields(16).Text = childrs("rlyfrtamt")
        txtfields(61).Text = childrs("LCINTPER")
    txtfields(62).Text = childrs("lcintamt")
    
    txtfields(12).Text = childrs("LRFRTPER")
    txtfields(13).Text = childrs("lrfrtamt")
    
    txtfields(59).Text = childrs("commPER")
    txtfields(60).Text = childrs("commamt")
    
    txtfields(57).Text = childrs("insPER")
    txtfields(58).Text = childrs("insamt")
    
    txtfields(63).Text = childrs("charityamt")
    txtfields(64).Text = childrs("damageamt")
    
    txtfields(66).Text = childrs("clearanceamt")
    txtfields(67).Text = childrs("othersamt")
    txtfields(17).Text = childrs("brkcom")
    txtfields(69).Text = childrs("customsdutyamt")
    txtfields(70).Text = childrs("DNAMT1")
    txtfields(107).Text = childrs("shipchrg")
    txtfields(111).Text = childrs("OtherTaxableAmt")
    
    txtfields(115).Text = childrs("pinvval")
    txtfields(117).Text = Format(childrs("SICAAmt"), "##0.00")

End Sub


Private Function Freight(ArrvialNo%, LOTDT$) As String
   Set rsF = New Recordset
   rsF.Open "select * from rm_Arrival Where Arrno = " & ArrvialNo & " AND DivCode =" & Divcode & " AND lotdt = '" & LOTDT & "'", DB, adOpenDynamic, adLockOptimistic
    If Not rsF.EOF Then
        Freight = IIf(rsF!Freight = 0, "", Format(rsF!Freight, "0.00"))
    Else
        Freight = ""
    End If
End Function
    
Private Function LORRYNOS(ArrvialNo%, LOTDT$) As String
   Set rsF = New Recordset
   rsF.Open "select * from rm_Arrival Where Arrno = " & ArrvialNo & " AND DivCode =" & Divcode & " AND lotdt = '" & LOTDT & "'", DB, adOpenDynamic, adLockOptimistic
    If Not rsF.EOF Then
        LORRYNOS = rsF!LORRYNOS
    Else
        LORRYNOS = ""
    End If
End Function

Private Sub Tax_Calculation()
intervalMinutes = -1
        If optBefore = True Then
        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If UCase(deltype) = "F" Then
               txtfields(52).Text = Format(Round(val(txtfields(116).Text) + val(txtfields(119).Text) + val(txtfields(118).Text), TAX_ROFF), "0.00")
            Else
                txtfields(52).Text = Format(Round(val(txtfields(116).Text) + val(txtfields(119).Text) + val(txtfields(118).Text), TAX_ROFF), "0.00")
            End If
        Else
            If UCase(deltype) = "F" Then
               txtfields(52).Text = Format(Round(val(txtfields(116).Text) + val(txtfields(119).Text) + val(txtfields(118).Text), TAX_ROFF), "0.00")
            Else
               txtfields(52).Text = Format(Round(val(txtfields(116).Text) + val(txtfields(119).Text) + val(txtfields(118).Text), TAX_ROFF), "0.00")
            End If
        End If
    Else

        Set Rs = New Recordset
        Rs.Open "Select * from rm_param", DB, adOpenStatic
        If Rs("commtax") = "Y" Then
            If UCase(deltype) = "F" Then
               txtfields(52).Text = Format(Round(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(60).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, TAX_ROFF), "0.00")
               txtfields(113).Text = Format(Round(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(60).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
               txtfields(52).Text = Format(Round(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(60).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, TAX_ROFF), "0.00")
               txtfields(113).Text = Format(Round(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(60).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        Else
            If UCase(deltype) = "F" Then
               txtfields(52).Text = Format(Round(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, TAX_ROFF), "0.00")
               txtfields(113).Text = Format(Round(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text) + val(txtfields(13).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, ADDTAX_ROFF), "0.00")
            Else
               txtfields(52).Text = Format(Round(val(txtfields(51).Text) * (val(txtfields(6).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, TAX_ROFF), "0.00")
               txtfields(113).Text = Format(Round(val(txtfields(112).Text) * (val(txtfields(6).Text) + val(txtfields(111).Text) - (val(txtfields(54).Text) + val(txtfields(85).Text) + val(txtfields(127).Text)) + val(txtfields(42).Text) + val(txtfields(46).Text) + val(txtfields(44).Text) + val(txtfields(48).Text) + val(txtfields(118).Text) + val(txtfields(116).Text) + val(txtfields(119).Text)) / 100, ADDTAX_ROFF), "0.00")
            End If
        End If

    End If
  

End Sub

Private Function LandCostTotal() As Double
Dim iRow As Integer
dLandedCost = 0
intervalMinutes = -1
   For iRow = 1 To spdVar.MaxRows Step 1
      dLandedCost = dLandedCost + val(GetText(spdVar, ILandedcost, iRow))
   Next
   LandCostTotal = dLandedCost
  
End Function

Private Sub SaveTranLogFunction()
On Error Resume Next

        If Record_Exists("RM_DelReason", "Please Define Reason in TXN Delete Reason Setup") = False Then Exit Sub
DelReason:
         Dim DelReasonCode As String
         LookUp.Clear = True
         LookUp.query = "select Code AS 'Code',Description as 'Description' from RM_DelReason"
         LookUp.Caption = "Delete Reason Listing"
         LookUp.DefCol = "Description"
         LookUp.ALIGN = "1500,5500"
         LookUp.Show vbModal
         If LookUp.Cancel = False Then
             DelReasonCode = LookUp.Fields(0)
         Else
             GoTo DelReason
         End If
        DB.BeginTrans
        tmpopt = Opt
        If Opt = "del" Then
               ' On Error GoTo del
                Set rsa = New Recordset
                rsa.Open "select quantity from rm_arrival where arrno = " & adoPrimaryRS("arrno") & " and ARRDATE= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'", DB, adOpenStatic
                If rsa.RecordCount > 0 Then
                     oldqty = rsa(0)
                End If
                BUTTON(9).ToolTipText = "Save"
                Opt = ""
        End If
        If UCase(CustID) = "SKY" Then
        DB.Execute ("update Rm_baletemp set Transflag='N' where  Arrivallotno=" & txtfields(96).Text & " and ArrivalDate='" & Format(MaskEdBox1(4).Text, "yyyy-mm-dd") & "' and slcode='" & Trim(txtfields(30).Text) & "' ")
        Else
        End If
        Set rsa = New Recordset
        DB.Execute "Update rm_arrival set accqty=0,rejqty=0,returnqty=0,accallowqty=0,lotrecqty=Null,passed=null,passdt=Null,lotno=NULL,LOTDT=NULL,LOTTYPE=NULL,REMARKS=NULL  where divcode='" & Divcode & "' and arrno = " & adoPrimaryRS("arrno") & " and ARRDATE= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'"
        strSQL = "delete from rm_BALE where  divcode='" & Divcode & "' and lottype = 'A' and  arrno = " & adoPrimaryRS("arrno") & " and ARRDT= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'"
        DB.Execute (strSQL)
        DB.Execute ("delete from rm_LOT where  divcode='" & Divcode & "' and lottype = 'A' and arrno = " & adoPrimaryRS("arrno") & " and ARRDT= '" & Format(adoPrimaryRS("arrdt"), "YYYY-MM-DD") & "'")
        
     
        Dim f As Integer
        For f = 1 To spdVar.MaxRows
            If tmpopt = "del" Then
                DB.Execute " DELETE FROM RM_LOTDiscntRate where  divcode='" & Divcode & "' AND LOTNO='" & val(GetText(spdVar, ILotNo, f)) & "' AND LOTDT='" & Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd") & "' AND SUPCD = '" & txtfields(30).Text & "' AND VARCODE='" & (GetText(spdVar, IVarcode, f)) & "'"
                
            End If
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT DelReason ,Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,BILLNO,BILLDATE,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
           ' TrnLog("TC") = 3
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Lot Bale"
            TrnLog("Trans_Mod") = "del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("plcode") = Trim(txtfields(120).Text)
            TrnLog("Line_No") = Trim(txtfields(121).Text)
            TrnLog("arrno") = Trim(txtfields(96).Text)
            TrnLog("arrdt") = Format(MaskEdBox1(4).Text, "YYYY-MM-DD")

            TrnLog("slcode") = txtfields(30).Text
            TrnLog("purtype") = txtfields(302).Text
            TrnLog("tc") = val(txtfields(300).Text)
            TrnLog("areacode") = IIf(Trim(txtfields(38).Text) = "", Null, txtfields(38).Text)
            TrnLog("Agent_code") = IIf(Trim(txtfields(37).Text) = "", Null, txtfields(37).Text)
            
            TrnLog("lotdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("lotno") = GetText(spdVar, ILotNo, f)
            
            TrnLog("docdt") = Format(GetText(spdVar, ILotdt, f), "yyyy-mm-dd")
            TrnLog("docno") = GetText(spdVar, ILotNo, f)
            TrnLog("billno") = txtfields(3).Text
            If MaskEdBox1(2).Text = "__/__/____" Then
                 TrnLog("billdate") = Null
            Else
                 TrnLog("billdate") = Format(MaskEdBox1(2).Text, "yyyy-mm-dd")
            End If
            TrnLog("bbflg") = GetText(spdVar, Iunit, f)
            
            TrnLog("rateunit") = Trim(txtfields(110).Text)
            

            TrnLog("godown") = Trim(txtfields(77).Text)
            TrnLog("Comm_wt") = val(txtfields(123).Text)
            TrnLog("Frg_Amt") = val(txtfields(13).Text)
            TrnLog("varcode") = (GetText(spdVar, IVarcode, f))
            Set rscc = New Recordset
            rscc.Open "select catcd from rm_var where varcode='" & GetText(spdVar, IVarcode, f) & "'", DB, adOpenStatic
            
            TrnLog("CATCD") = rscc("CATCD")



            TrnLog("currency") = Trim(txtfields(122).Text)
            TrnLog("conv_Rate") = val(txtfields(124).Text)
            TrnLog("PGrosswt") = val(GetText(spdVar, Ipgrosswt, f))
            TrnLog("ptarewt") = val(GetText(spdVar, Iptarewt, f))
            TrnLog("PTarewt") = val(GetText(spdVar, Ipnetwt, f))
     
            TrnLog("ordqty") = val(GetText(spdVar, iQty, f))
            TrnLog("Grosswt") = val(GetText(spdVar, Imgrosswt, f))
            TrnLog("tarewt") = val(GetText(spdVar, Imtarewt, f))
   
            TrnLog("netwt") = val(GetText(spdVar, Imnetwt, f))
            TrnLog("billno") = txtfields(3).Text
            TrnLog("AssAmount") = val(GetText(spdVar, Ipjamt, f))
            TrnLog("RateCY") = val(GetText(spdVar, Icandyrate, f))

            TrnLog("LandingCost") = val(GetText(spdVar, ILandedcost, f))
            TrnLog("ratekg") = val(GetText(spdVar, IRateKG, f))
            TrnLog("TaxCode") = GetText(spdVar, ITaxCode, f)
       
            TrnLog("cGSTper") = val(GetText(spdVar, ICGSTPER, f))
            TrnLog("cGSTamt") = val(GetText(spdVar, ICGSTAMT, f))
            TrnLog("SGSTper") = val(GetText(spdVar, ISGSTPER, f))
            TrnLog("SGSTamt") = val(GetText(spdVar, ISGSTAMT, f))
            TrnLog("IGSTper") = val(GetText(spdVar, IIGSTPER, f))
            TrnLog("IGSTamt") = val(GetText(spdVar, IIGSTAMT, f))
            TrnLog("HSN") = Trim(GetText(spdVar, IHSN, f))
            TrnLog("DelReason") = Trim(DelReasonCode)
            TrnLog.UpdateBatch adAffectAllChapters
        Next
        
        DB.CommitTrans
        
            MsgBox "Record(s) Deleted!", vbInformation, head
        Frame7.Enabled = True
        Frame1.Enabled = True
        BUTTON(9).ToolTipText = "Save"
        Opt = ""
        BUTTON(4).Enabled = True
End Sub

Private Sub AddRecord()
On Error Resume Next

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
     Combo12.ListIndex = 0
    SSTab1.Tab = 0
    dSuppNetWt = 0
    dLandedCost = 0
    Set adoPrimaryRS = New Recordset
    
    adoPrimaryRS.Open "SELECT DIVCODE,rg23a,CATCD,LOTNO,VARCODE,supcd,brkcd,AREACD,CNTCODE,LOTDT,LOTTYPE,ARRNO,ARRDT,BILLNO,BILLDT,PTYWGT,TAXAMT,ODINT,FREGHT,PJAMT,RLYFRT,LDGULG,BRKCOM,SPOTEXP,INSAMT,TOTLANDCOST,GRSWGT,TAREWT,NETWT,moisture_et,DNAMT1,DNAMT2,SAMPWT,BBLFLG,BALES,RATEKG,GODOWN,LGROUP,opflg,plotno,ratecy,rebate,REJFLG,LOTYEAR,COLORCODE,BEDPER,BEDAMT,SEDPER,SEDAMT,AEDPER,AEDAMT,CESSPER,CESSAMT,OCTROIPER,OCTROIAMT,VATPER,VATAMT,CSTPER,CSTAMT,TNGSTPER,TNGSTAMT,SCPER,SCAMT,OTHTAXPER,OTHTAXAMT,LRFRTPER,LRFRTAMT,RLYFRTPER,RLYFRTAMT,INSPER,COMMPER,COMMAMT,LCINTPER,LCINTAMT,CHARITYAMT,DAMAGEAMT,WARPAGEAMT,CLEARANCEAMT,OTHERSAMT,ALLOWANCEAMT,CUSTOMSDUTYAMT,BNKCHG,awt_flg,PJTC,PTYPE,pgrswt,ptarewt,pnetwt,pinvval,weighbridgewt,tax_code,cashdisper,cashdisamt,tradedisper,tradedisamt,vcatcd,shipchrg, " & _
                      "inwardno,inwarddate,OtherTaxableAmt,WeightFlg,SICAAmt,HSN,cgstper,cgstamt,sgstper,sgstamt,igstper,igstamt ,Line_No,PlCode,Gdivcode,Comm_Wt,BillCurrency,ExchangeRate,ComWt_Flg,DPDocno,DPDocDate ,ContNum ,Contdate ,TotDiscRate ,TotDiscAmt,Net_Rate,Tcs_per,Tcs_Amt,TCS_AssAmt,TCS_CalcAssAmtFlag,lot_incidentcharge,lot_spotexpense,TypeTruckbale,suppassvalue FROM RM_LOT WHERE 1=2  and divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockOptimistic
    
    
    Set ADOSECONDARYRS = New Recordset
    
    ADOSECONDARYRS.Open "SELECT CATCD,LOTNO,BALENO,GRWT,TAREWT,Trash_et,moisture_et,NETWT,LOTDT,lottype,divcode,arrdt,pgrswt,ptarewt,pnetwt,partybaleno,arrno,varcode,Comm_Wt,MOITURE  FROM RM_BALE WHERE 1=2 and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    Set grddatagrid.DataSource = ADOSECONDARYRS
    Call gridalign
    grddatagrid.Columns(10).Visible = False
    grddatagrid.Columns(11).Visible = False
    grddatagrid.Columns(12).Visible = True
    MaskEdBox1(0).Text = "__/__/____"
    MaskEdBox1(3).Text = pdate
    MaskEdBox1(3).Enabled = True
    globaldivision = ""
   If UCase(CustID) = "BALKRISHNA" Then
    optSUPPLIER.value = True
   Else
    optMILL.value = True
   End If

    Call clear_text
    txtfields(3).Text = ""
    Text1(0).Text = ""
    Text1(1).Text = ""
    Text1(2).Text = ""
    txtfields(33).Locked = True
    txtfields(34).Locked = True
    txtfields(32).Locked = True
    txtfields(35).Locked = True
    
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
    txtfields(25).Locked = True
    ADOSECONDARYRS.AddNew
    adoPrimaryRS.AddNew
    Call adddelmod(BUTTON)
    txtfields(0).Locked = True
    MaskEdBox1(1).Text = pdate
    grddatagrid.Enabled = False
    BUTTON(4).Enabled = False
    BUTTON(9).Enabled = True
    FLG = ""
    
    Check1.value = 0
    txtfields(122).Text = ""
    txtfields(123).Text = ""
    txtfields(124).Text = ""
    
    txtfields(29).Text = ""
    txtfields(0).Text = ""

    txtfields(73).Text = ""
    txtfields(40).Text = ""
    txtfields(41).Text = ""
    txtfields(23).Text = ""
    txtfields(24).Text = ""
    txtfields(22).Text = ""
    txtfields(128).Text = ""
    txtfields(129).Text = ""
    txtremarks.Text = ""
    Text8.Text = ""
    txtfields(78).Text = ""
    txtfields(79).Text = ""
    txtfields(89).Text = ""
    txtfields(90).Text = ""
    txtfields(91).Text = ""
    txtfields(92).Text = ""
    txtfields(93).Text = ""
    txtfields(38).Text = ""
    txtfields(20).Text = ""
    txtfields(300).Text = ""
    txtfields(301).Text = ""
    txtfields(302).Text = ""
    txtfields(303).Text = ""
    txtfields(115).Text = ""
    
    txtfields(52).Text = ""
    txtfields(118).Text = ""
    txtfields(119).Text = ""
    txtfields(116).Text = ""
    txtfields(128).Text = ""
     txtfields(129).Text = ""
    Text20.Text = ""
    MaskEdBox1(0).Text = pdate
    MaskEdBox1(1).Text = pdate
    MaskEdBox1(2).Text = pdate
    MaskEdBox1(2).Text = "__/__/____"
    MaskEdBox1(6).Text = "__/__/____"
    MaskEdBox1(3).Text = pdate
    DTPicker1.value = pdate
    txtfields(30).Locked = True
    txtfields(2).Locked = True
    Text1(1).Locked = True
    txtfields(79).Locked = True
    txtfields(37).Locked = True
    Text12.Locked = True
    Call LoadArrival
    BUTTON(9).Enabled = False
    
    txtfields(12).Locked = True
    txtfields(13).Locked = True
    
   If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
        Check1.Enabled = False
        Check1.value = 1
   End If

End Sub

Private Sub SETDISCTYPEHead()
With SPDDiscTypeDet
        .ClearSelection
        .MaxRows = 0
        .ClearSelection

        .MaxCols = SPDDTDValue
        .Row = 1
        .TypeTextWordWrap = True
        .FontBold = True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTSNO, "S.No", CellTypeStaticText, 8, , False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTContno, "Cont No", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTContdt, "Cont Date", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDocno, "Docno", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDOCDT, "Doc Date", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVARSNO, "Variety Sno.", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTVarcode, "Varcode.", CellTypeStaticText, 8, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCCODE, "Discount Type Code", CellTypeStaticText, 10, , True, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDISCDESC, "Discount Type.", CellTypeStaticText, 32, , False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "Discount Rate/Kgs", CellTypeNumber, 15, 2, False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDValue, "Discount Amount", CellTypeNumber, 15, 2, False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDRate, "TcsPer%", CellTypeNumber, 15, 2, False, True
        SetSpreadCol1 SPDDiscTypeDet, SpdDiscType.SPDDTDValue, "TCS Amount", CellTypeNumber, 15, 2, False, True
    End With
End Sub
Private Sub loadRpt()
 Frame19.Visible = True
        Frame19.ZOrder 0
        Option3.value = True
        Option3.SetFocus
        SSTab1.Enabled = False

        userFooter.ClearFooter
        Command8.Visible = True
        Buttonframe.Enabled = False
End Sub


Private Sub ReportLoad()

   Set Rs = New Recordset
    Rs.Open "Select lotno,lotdt,lotyear,* from rm_lot where arrno='" & txtfields(96).Text & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'and lottype ='A' and lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 Then
         Set rs3 = New Recordset
            rs3.Open "select * from pp_divmas", DB, adOpenDynamic, adLockOptimistic
            With CrystalReport1
            .Reset
            .Connect = connectstring
            
            Dim clsCryRpt As New clsCrystal
            If Rs.RecordCount > 1 Then
               If UCase(CustID) = "SKS" Then
                Set clsCryRpt.cryRept = Cry_LotBale_Details_SKS
               Else
                Set clsCryRpt.cryRept = Cry_RM_Receiptnote
               End If
            Else
               If UCase(CustID) = "SKS" Then
                    Set clsCryRpt.cryRept = Cry_LotBale_Details_SKS
               Else
                    Set clsCryRpt.cryRept = Cry_RM_RN_Cutsheet
               End If
            End If
            clsCryRpt.CrystalPrint
                        
            CrystalReport1.Reset
            CrystalReport1.Connect = connectstring
            CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
            CrystalReport1.ParameterFields(0) = "@Divcode;" & Divcode & ""
            CrystalReport1.ParameterFields(1) = "@Date ;" & Format(MaskEdBox1(4).Text, "yyyy-MM-dd") & ""
            CrystalReport1.ParameterFields(2) = "@FMRNno;" & txtfields(96).Text & ""
            CrystalReport1.ParameterFields(3) = "@TMRNno;" & txtfields(96).Text & ""
            SendKeys "{ENTER}"
            CrystalReport1.WindowShowPrintSetupBtn = True
            CrystalReport1.WindowShowSearchBtn = True
            CrystalReport1.WindowState = crptMaximized
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            SendKeys "{ENTER}"
            CrystalReport1.Action = 1
            CrystalReport1.PrinterCopies = 1
            SendKeys "{ENTER}"
            
        
            End With
    End If

        If PDFExportFlag = 1 Then
            Call ExportERPPOPDF
        End If
  
End Sub

Private Sub ExportERPPOPDF()
If Opt = "add" Or Opt = "mod" Or UCase(usrid) = "KSL" Then
Dim strNewFile As String

    strNewFile = ""
    Dim fso As New FileSystemObject
    If Not (fso.FolderExists(App.Path & "\RMERPGRN" & CustID)) Then
        fso.CreateFolder (App.Path & "\RMERPGRN" & CustID)
       
    End If

    Dim sFilePath As String

    Set fso = New FileSystemObject
 
    sFilePath = App.Path & "\RMERPGRN" & CustID & "\" & Divcode & "-ARRNO-" & Trim(txtfields(96).Text) + " DT-" + Trim(Format(MaskEdBox1(4).Text, "dd-mm-yy")) + "-" + Left(Trim(Text1(1).Text), 15) & ".pdf"
    If fso.FileExists(sFilePath) Then
       ' MsgBox "File Exist."
       If Opt <> "add" And Opt <> "mod" Then
        If MsgBox("GRN Print Already Exists!!! Do you want to override in Server?", vbYesNo, head) = vbNo Then Exit Sub
        End If
    End If
    
           Dim CrApp As CRAXDRT.Application
           Dim oRpt As CRAXDRT.Report
            Set CrApp = New CRAXDRT.Application
            Set oRpt = CrApp.OpenReport(KALFOLDERDATA & "RepRMI.rpt", 1)

            oRpt.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD

            oRpt.ParameterFields.Item(1).AddCurrentValue Divcode
            oRpt.ParameterFields.Item(2).AddCurrentValue (Format(MaskEdBox1(4), "yyyy-mm-dd"))
            oRpt.ParameterFields.Item(3).AddCurrentValue Trim(txtfields(96).Text)
            oRpt.ParameterFields.Item(4).AddCurrentValue Trim(txtfields(96).Text)

            oRpt.ExportOptions.DiskFileName = sFilePath
            oRpt.ExportOptions.DestinationType = crEDTDiskFile
            oRpt.ExportOptions.FormatType = crEFTPortableDocFormat
            oRpt.ExportOptions.PDFExportAllPages = True
            oRpt.Export False
            
   
   
   
End If
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Upload Bill of Form Purchase Bill"
End Sub




Public Function LotAmountAssign(txtValue As Double, iColID As Integer, totalRows As Integer) As Double
Dim iCount As Integer
Dim dValue As Double
Dim dRoundValue As Double
'Amount Field Value Assign
intervalMinutes = -1
    dValue = val(txtValue) / TotalnWt
    

    For iCount = 1 To spdVar.MaxRows
        
        If iCount = totalRows Then dValue = txtValue - dRoundValue
        dRoundValue = Round(dRoundValue + dValue, 2)
        spdVar.SetText iColID, iCount, CStr(val(txtValue) / TotalnWt * val(GetText(spdVar, Imnetwt, iCount)))
    Next
    
End Function

Public Function LotValueAssign(txtValue As Double, iColID As Integer) As Double
Dim iCount As Integer

intervalMinutes = -1
    For iCount = 1 To spdVar.MaxRows
        spdVar.SetText iColID, iCount, CStr(txtValue)
    Next
End Function
Private Sub DELMODLOOKUP(Index As Integer)

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
        Command10.Visible = False
    ElseIf Index = 2 Then
        Opt = "del"
        desc.Caption = "Deletion"
        Command10.Visible = False
    ElseIf Index = 4 Then
        Opt = "fnd"
        desc.Caption = "Find"
        Command10.Visible = False
    End If
    Call clear_text
    
    LookUp.Clear = True
    If Opt <> "fnd" Then
        LookUp.query = "select distinct arrno""Arrival No."",arrdt""Arrival Date"",SLNAME""Supplier Name"",b.SlCode,inwardno ""Material Inward No."",plotno""Supplier Lot No."" from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND LOTDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and isnull(isswt,0) = 0 and isnull(issbal,0)= 0 and  isnull(opflg,'N')='N' and pjno is null and arrno not in (select arrno from rm_lot" & _
                 " WHERE isnull(isswt,0) <> 0 and isnull(issbal,0) <> 0 and  divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype = 'A' and isnull(opflg,'N')='N' ) AND DIVCODE='" & Divcode & "' and a.ins_flg is null "   '' AND ARRNO NOT IN (SELECT DISTINCT ARRNO FROM RM_ARRIVAL WHERE LOTTYPE='A' AND ARRDATE BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "' AND ISNULL(ACCQTY,0)<>0)"
    Else
        LookUp.query = "select distinct arrno""Arrival No."",arrdt""Arrival Date"",SLNAME""Supplier Name"",b.SlCode,inwardno ""Material Inward No."",plotno""Supplier Lot No."" from rm_lot A,FA_SLMAS B where A.SUPCD=B.SLCODE AND LOTDt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and lottype='A' and  isnull(opflg,'N')='N' and a.divcode='" & Divcode & "'"
    End If
    LookUp.DefCol = "Supplier"
    LookUp.Caption = "Lot Bale Listing"
    LookUp.ALIGN = "1100,1100,3300,0,1700,1600"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
    
            Set Rs = New Recordset
            Rs.Open "SELECT b.STATE_FLAG FROM fa_slmas a inner join IG_STATE AS b ON a.state_code=b.STATE_CODE WHERE slcode='" & LookUp.Fields("SlCode") & "'", DB
            If Not Rs.EOF Then
            
                STATEFLAG = Rs(0)
                If STATEFLAG = "F" Then
                    IGSTFLG = "N"
                End If
            End If
                
            If STATEFLAG <> "F" Then

    
    
            Dim STCODE As String
            Set rs1 = New Recordset
            rs1.Open "SELECT isnull(GSTSTATECODE,'0') GSTSTATECODE FROM FA_SLMAS   WHERE SLCODE='" & Trim(LookUp.Fields("SlCode")) & "' ", DB
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
    
        Call Command1_Click
        
    Else
        Call BUTTON_Click(10)
        Exit Sub
    End If
    Call adddelmod(BUTTON)
    BUTTON(4).Enabled = False
    txtfields(29).Locked = True
    txtfields(40).Locked = True

    Call ENABLCONTLS

    Combo1.Locked = False
    If Opt = "fnd" Then
        BUTTON(9).Enabled = False
    End If
    If Opt = "mod" Then

        StatusBar1.Panels(2).Text = "Select Any Row for Modification"
    ElseIf Opt = "del" Then

        StatusBar1.Panels(2).Text = "Select Any Row for Deletion"
    End If
    txtfields(0).Locked = True
    txtfields(6).Locked = False
    txtfields(30).Locked = True
    Text1(1).Locked = True
    txtfields(2).Locked = True
    txtfields(79).Locked = True
    txtfields(37).Locked = True
    Text12.Locked = True
    MaskEdBox1(3).Enabled = False
    txtfields(28).Enabled = False

End Sub
