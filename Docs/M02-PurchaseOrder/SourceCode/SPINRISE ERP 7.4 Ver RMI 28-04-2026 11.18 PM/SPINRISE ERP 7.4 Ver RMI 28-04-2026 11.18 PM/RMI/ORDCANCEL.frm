VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form ORDCANCEL 
   Caption         =   "Order Cancellation"
   ClientHeight    =   8280
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10860
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8280
   ScaleWidth      =   10860
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   550
      Index           =   13
      Left            =   5250
      Picture         =   "ORDCANCEL.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   64
      ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
      Top             =   0
      Width           =   535
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   615
      Top             =   7065
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4350
      Left            =   4575
      TabIndex        =   55
      Top             =   1080
      Visible         =   0   'False
      Width           =   4170
      _extentx        =   7355
      _extenty        =   7673
   End
   Begin VB.Frame Frame5 
      Height          =   480
      Left            =   3165
      TabIndex        =   51
      Top             =   570
      Visible         =   0   'False
      Width           =   5460
      Begin VB.CommandButton Command1 
         Caption         =   "&Ok"
         Default         =   -1  'True
         Height          =   315
         Left            =   4035
         TabIndex        =   57
         Top             =   120
         Visible         =   0   'False
         Width           =   1245
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3015
         TabIndex        =   53
         Top             =   150
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   270
         Left            =   1755
         TabIndex        =   52
         Top             =   165
         Width           =   1260
      End
      Begin VB.Label Label15 
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
         TabIndex        =   54
         Top             =   180
         Width           =   1425
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   41
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":0442
         Height          =   550
         Index           =   1
         Left            =   555
         Picture         =   "ORDCANCEL.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   50
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":0AC6
         Height          =   550
         Index           =   4
         Left            =   1545
         Picture         =   "ORDCANCEL.frx":0DD0
         Style           =   1  'Graphical
         TabIndex        =   49
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   7770
         Picture         =   "ORDCANCEL.frx":1165
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "List (Ctrl L)"
         Top             =   90
         Visible         =   0   'False
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":14FC
         Height          =   555
         Index           =   6
         Left            =   2580
         Picture         =   "ORDCANCEL.frx":1946
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":1C93
         Height          =   555
         Index           =   0
         Left            =   45
         Picture         =   "ORDCANCEL.frx":1F9D
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":2330
         Height          =   555
         Index           =   5
         Left            =   2070
         Picture         =   "ORDCANCEL.frx":277A
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":2ADF
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   555
         Index           =   2
         Left            =   1050
         Picture         =   "ORDCANCEL.frx":2DE9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":3185
         Height          =   555
         Index           =   7
         Left            =   3120
         Picture         =   "ORDCANCEL.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":391F
         Height          =   555
         Index           =   11
         Left            =   5810
         Picture         =   "ORDCANCEL.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":40FE
         Height          =   555
         Index           =   9
         Left            =   4185
         Picture         =   "ORDCANCEL.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":47AA
         Height          =   540
         Index           =   10
         Left            =   4725
         Picture         =   "ORDCANCEL.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "ORDCANCEL.frx":4E30
         Height          =   555
         Index           =   8
         Left            =   3660
         Picture         =   "ORDCANCEL.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   12
         Left            =   6435
         Picture         =   "ORDCANCEL.frx":55DC
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Order Cancellation Report Print (Ctrl P)"
         Top             =   120
         Visible         =   0   'False
         Width           =   510
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
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   8640
         TabIndex        =   43
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000D&
         Height          =   255
         Left            =   7080
         TabIndex        =   42
         Top             =   255
         Width           =   60
      End
   End
   Begin MSComctlLib.StatusBar statusbar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   28
      Top             =   7980
      Width           =   10860
      _ExtentX        =   19156
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   10733
            MinWidth        =   10733
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "09/07/2020"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "7:17 PM"
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
      Height          =   4620
      Left            =   300
      TabIndex        =   11
      Top             =   1080
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   8149
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ForeColor       =   -2147483630
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "ORDCANCEL.frx":5A1E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label5"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label6"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label2"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label3"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label10"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "LBLQTY"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Label14"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "Label16"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "DTPicker1(1)"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "txtfields(2)"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "txtfields(3)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "txtfields(4)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "txtfields(5)"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "txtfields(0)"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "MaskEdBox1"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "txtfields(6)"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "txtfields(7)"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "Frame1"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "Frame2"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).ControlCount=   20
      Begin VB.Frame Frame2 
         Height          =   585
         Left            =   105
         TabIndex        =   58
         Top             =   60
         Width           =   8085
         Begin VB.TextBox txtfields 
            DataField       =   "DOCNO"
            ForeColor       =   &H00000000&
            Height          =   330
            Index           =   1
            Left            =   1365
            TabIndex        =   59
            Top             =   165
            Width           =   1110
         End
         Begin MSMask.MaskEdBox MaskEdBox3 
            DataField       =   "docdt"
            Height          =   315
            Left            =   6360
            TabIndex        =   60
            Top             =   165
            Width           =   1245
            _ExtentX        =   2196
            _ExtentY        =   556
            _Version        =   393216
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Index           =   0
            Left            =   6375
            TabIndex        =   61
            TabStop         =   0   'False
            Top             =   165
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   43646977
            CurrentDate     =   38721
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Doc. Date"
            Height          =   195
            Left            =   4830
            TabIndex        =   63
            Top             =   225
            Width           =   735
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Doc. No."
            Height          =   195
            Left            =   300
            TabIndex        =   62
            Top             =   255
            Width           =   645
         End
      End
      Begin VB.Frame Frame1 
         Height          =   2295
         Left            =   105
         TabIndex        =   35
         Top             =   2190
         Width           =   8085
         Begin VB.TextBox Text2 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   6405
            Locked          =   -1  'True
            TabIndex        =   46
            TabStop         =   0   'False
            Top             =   195
            Width           =   1500
         End
         Begin VB.TextBox Text1 
            Alignment       =   1  'Right Justify
            DataField       =   "cancelkgs"
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
            Height          =   315
            Left            =   6405
            TabIndex        =   23
            Top             =   540
            Width           =   1500
         End
         Begin VB.TextBox txtCanQty 
            Alignment       =   1  'Right Justify
            DataField       =   "Cancelbales"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            ForeColor       =   &H00000000&
            Height          =   315
            Left            =   1380
            TabIndex        =   22
            Top             =   555
            Width           =   2460
         End
         Begin VB.ComboBox Combo1 
            DataField       =   "approvedby"
            ForeColor       =   &H00000000&
            Height          =   315
            ItemData        =   "ORDCANCEL.frx":5A3A
            Left            =   1380
            List            =   "ORDCANCEL.frx":5A3C
            TabIndex        =   21
            Text            =   "Combo1"
            Top             =   195
            Width           =   2475
         End
         Begin RichTextLib.RichTextBox RichTextBox1 
            DataField       =   "reason"
            Height          =   1275
            Left            =   1365
            TabIndex        =   24
            Top             =   915
            Width           =   6540
            _ExtentX        =   11536
            _ExtentY        =   2249
            _Version        =   393217
            BackColor       =   16777215
            Enabled         =   -1  'True
            TextRTF         =   $"ORDCANCEL.frx":5A3E
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Arrival Type"
            Height          =   195
            Left            =   4845
            TabIndex        =   47
            Top             =   270
            Width           =   840
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Cancel Qty in Kgs"
            Height          =   195
            Left            =   4815
            TabIndex        =   45
            Top             =   645
            Width           =   1260
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Cancel Qty in Bales"
            ForeColor       =   &H00FF0000&
            Height          =   450
            Left            =   240
            TabIndex        =   39
            Top             =   510
            Width           =   945
            WordWrap        =   -1  'True
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Approved by"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   240
            TabIndex        =   37
            Top             =   225
            Width           =   900
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Reason "
            Height          =   195
            Left            =   255
            TabIndex        =   36
            Top             =   945
            Width           =   600
         End
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   7
         Left            =   2610
         TabIndex        =   20
         Top             =   1830
         Width           =   5385
      End
      Begin VB.TextBox txtfields 
         DataField       =   "varcode"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   6
         Left            =   1470
         TabIndex        =   19
         Top             =   1845
         Width           =   1110
      End
      Begin MSMask.MaskEdBox MaskEdBox1 
         DataField       =   "orderdt"
         Height          =   315
         Left            =   3315
         TabIndex        =   13
         Top             =   675
         Width           =   1275
         _ExtentX        =   2249
         _ExtentY        =   556
         _Version        =   393216
         MaxLength       =   10
         Mask            =   "##/##/####"
         PromptChar      =   "_"
      End
      Begin VB.TextBox txtfields 
         DataField       =   "orderno"
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   0
         Left            =   1470
         TabIndex        =   12
         Top             =   690
         Width           =   1110
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   5
         Left            =   2610
         TabIndex        =   18
         Top             =   1455
         Width           =   5370
      End
      Begin VB.TextBox txtfields 
         DataField       =   "station"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   4
         Left            =   1470
         TabIndex        =   17
         Top             =   1455
         Width           =   1110
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H00E0E0E0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   3
         Left            =   2610
         TabIndex        =   16
         Top             =   1080
         Width           =   5385
      End
      Begin VB.TextBox txtfields 
         DataField       =   "slcode"
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   330
         Index           =   2
         Left            =   1470
         TabIndex        =   15
         Top             =   1080
         Width           =   1110
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Index           =   1
         Left            =   3330
         TabIndex        =   14
         TabStop         =   0   'False
         Top             =   675
         Width           =   1530
         _ExtentX        =   2699
         _ExtentY        =   609
         _Version        =   393216
         Format          =   92012545
         CurrentDate     =   38721
      End
      Begin VB.Label Label16 
         Height          =   255
         Left            =   3870
         TabIndex        =   56
         Top             =   45
         Width           =   870
      End
      Begin VB.Label Label14 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000040&
         Height          =   345
         Left            =   7350
         TabIndex        =   48
         Top             =   720
         Width           =   870
      End
      Begin VB.Label LBLQTY 
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000040&
         Height          =   345
         Left            =   6090
         TabIndex        =   40
         Top             =   705
         Width           =   1230
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "Balance :"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Left            =   5070
         TabIndex        =   38
         Top             =   720
         Width           =   960
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         Height          =   195
         Left            =   375
         TabIndex        =   34
         Top             =   1905
         Width           =   480
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Date"
         Height          =   195
         Left            =   2865
         TabIndex        =   33
         Top             =   780
         Width           =   345
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Order No."
         ForeColor       =   &H00FF0000&
         Height          =   195
         Left            =   375
         TabIndex        =   32
         Top             =   795
         Width           =   690
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Station"
         Height          =   195
         Left            =   375
         TabIndex        =   31
         Top             =   1560
         Width           =   495
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Supplier"
         Height          =   195
         Left            =   375
         TabIndex        =   30
         Top             =   1185
         Width           =   570
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5280
      Left            =   360
      TabIndex        =   29
      Top             =   1515
      Visible         =   0   'False
      Width           =   9660
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   3360
         TabIndex        =   26
         Top             =   4725
         Width           =   1245
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&CANCEL"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   480
         Left            =   4890
         TabIndex        =   27
         Top             =   4740
         Width           =   1335
      End
      Begin listacx.codelist kslLIST1 
         Height          =   4230
         Left            =   -105
         TabIndex        =   25
         Top             =   600
         Width           =   9615
         _ExtentX        =   16960
         _ExtentY        =   7461
         caption         =   ""
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Order Cancellation"
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
      Left            =   285
      TabIndex        =   44
      Top             =   720
      Width           =   2505
   End
End
Attribute VB_Name = "ORDCANCEL"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim rstStk As Recordset
Dim DB As Connection
Dim Opt As String
Dim deltype As String
Dim RW As Double
Dim FLGREPET As Boolean
Dim GRP As String
Dim rpt As String
Dim Fnd As String
Dim oldsecno As Integer
Dim z As Integer
Dim oldsecval  As Double
Dim st1 As String, st2 As String
Dim ITARY() As String
Dim dblCurrentQty As Double
Dim dblCurrentKgs As Double
Dim Rs As Recordset
Dim taxc As String
Dim c As Integer
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Dim arrtype As String

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
On Error Resume Next
Select Case Index
Case 0
If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "add"
    DB.BeginTrans
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs from rm_ordcancel where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.AddNew
    Call bindcontls
    Label14.Caption = ""
    Label10.Visible = False
    LBLQTY.Caption = ""
    Text1.Text = ""
    txtCanQty.Text = ""
    MaskEdBox1.Mask = pdate
    MaskEdBox1.Text = MaskEdBox1.Mask
    MaskEdBox3.Mask = pdate
    MaskEdBox3.Text = MaskEdBox3.Mask
    DTPicker1(0).value = pdate
    DTPicker1(1).value = pdate
    desc.Caption = "Addition"
    Screen.MousePointer = 0
    Call adddelmod(BUTTON)
    For I = 0 To 1
        txtfields(I).Locked = False
    Next
    txtfields(3).Text = ""
    txtfields(5).Text = ""
    txtfields(7).Text = ""
    Combo1.ListIndex = 0
    Frame3.Visible = False
    SSTab1.Enabled = True
    SSTab1.Visible = True
    txtfields(0).SetFocus
    
Case 2, 1, 4
    ''On Error Resume Next
        If Index = 2 Then
        If ToValidFinYear(Divcode) = False Then Exit Sub
            Opt = "del"
            For I = 0 To 1
             txtfields(I).Locked = False
            Next
            desc.Caption = "Deletion"
        ElseIf Index = 1 Then
        If ToValidFinYear(Divcode) = False Then Exit Sub
            Opt = "mod"
            desc.Caption = "Modification"
            SSTab1.Enabled = True
        ElseIf Index = 4 Then
            Opt = "fnd"
            For I = 0 To 1
             txtfields(I).Locked = False
            Next
            desc.Caption = "Find"
        End If
        DB.BeginTrans
        Screen.MousePointer = 11
        Call adddelmod(BUTTON)
        
         
        DTPicker1(0).Enabled = True
        DTPicker1(1).Enabled = True
        LookUp.Clear = True
        LookUp.query = "select DOCNO""Doc No"",DOCDT""Doc Date"",ORDERNO""Order No"",ORDERDT""Order Date"" from rm_ORDCANCEL where divcode='" & Divcode & "' and DOCdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'"
        LookUp.Caption = "Order Cancellation Listing"
        LookUp.DefCol = "OrderNo"
        LookUp.Width = "1000,2000,2000,2000"
        LookUp.ALIGN = "1000,2000,2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  AND DOCNO='" & LookUp.Fields(0) & "' AND DOCDT='" & Format(LookUp.Fields(1), "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            
            Call bindcontls
            'Call cancl(BUTTON)
                    
            If adoPrimaryRS.BOF Then
               MsgBox "No Records Found", vbInformation, head
               Exit Sub
            End If
            Set RsQty = New Recordset
            RsQty.Open "SELECT ISNULL(CancelBales,0) FROM Rm_Cont WHERE Divcode = '" & Divcode & "'  AND varcode = " & adoPrimaryRS("varcode") & "'  AND contdt = " & Format(adoPrimaryRS("orderdt"), "yyyy-MM-dd") & "' AND Contno = " & adoPrimaryRS("Orderno"), DB, adOpenStatic, adLockOptimistic
            LBLQTY.Caption = IIf(IsNull(RsQty(0)), 0, RsQty(0))
            If Opt = "mod" Then
                Combo1.SetFocus
            Else
                BUTTON(9).SetFocus
            End If
        Else
            Call BUTTON_Click(10)
        End If
''        Frame3.Visible = False
''        SSTab1.Visible = True
''        'SSTab1.Visible = False
''        SSTab1.Enabled = True
''        Frame3.Visible = True
''        Frame3.ZOrder
''        KslList1.conn = connectstring
''        KslList1.table = "rm_ORDCANCEL where divcode='" & Divcode & "' and DOCdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' "
''        KslList1.listfield1 = "DOCNO"
''        KslList1.listfield2 = "DOCDT,ORDERNO,ORDERDT,SLCODE"
''        KslList1.SetFocus
        Screen.MousePointer = 0
        
Case 3
'LISTING
'a11 = Mid$(a, 1, InStr(a, "-") - 1)
'a1 = Format(Trim(Right(a, 10)), "yyyy-mm-dd")
'
'b11 = Mid$(b, 1, InStr(b, "-") - 1)
'b1 = Format(Trim(Right(b, 10)), "yyyy-mm-dd")
'a1 = Format(MaskEdBox1.Text, "YYYY-MM-DD")

    Set ResultRs = New Recordset
   ' ResultRs.Open "select distinct a.contno,a.contdt,case when a.bbflag='B' then 'Bales' else 'Borah' end as unit from rm_cont a,rm_var b,fa_slmas c,fa_slmas d Where a.divcode='" & Divcode & "' and a.varcode = B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode and  CONTDT BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'   AND CANCELFLG IS not NULL AND CANCELDT IS not NULL ORDER BY contdt", DB, adOpenStatic, adLockBatchOptimistic
   
   ResultRs.Open "select distinct orderno,orderdt,VARCODE from rm_ordcancel where  DIVCODE='" & Divcode & "' AND docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
   
    If ResultRs.EOF Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    Set rptv = New Report.ReportView
    z = FreeFile
    Close
    'Open "C:\peco.TXT" For Output As #z
     Open KALFOLDERDATA & "\peco.TXT" For Output As #z
    pg1 = 1
    co = 0
    Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(B))
      tot = 0
      tot1 = 0
      tot2 = 0
      tot3 = 0
      gtot1 = 0: gtot2 = 0: gtot3 = 0
    Do While Not ResultRs.EOF
      Set rs1 = New Recordset
      'RS1.Open "select distinct a.supcd,c.slname supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,round(a.candyrate,0)as candyrate,e.docdt,e.reason from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d,rm_ordcancel e Where a.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode and contdt = '" & Format(ResultRs("contdt"), "yyyy-mm-dd") & "' AND CANCELFLG IS not NULL AND CANCELDT IS not NULL order by contno", DB, adOpenStatic
      rs1.Open "select  * from rm_cont Where contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND CANCELFLG ='Y' and contno='" & ResultRs("orderno") & "' and contdt='" & Format(ResultRs("orderdt"), "yyyy-mm-dd") & "' AND VARCODE='" & ResultRs("VARCODE") & "' order by contno", DB, adOpenStatic, adLockBatchOptimistic
      
      Do While Not rs1.EOF
      TEMP = rs1("contdt")
        If TEMP <> rs1("contdt") Then
            Print #z,
        End If
        Set Ord = New Recordset
        Ord.Open "Select docdt,reason from rm_ordcancel where orderno='" & rs1("contno") & "'", DB, adOpenStatic, adLockBatchOptimistic
        
        'Print #z, Space(5); Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(CStr(rs1("contno")), 8, " ") + Space(2) + Padr(CStr(rs1("supname")), 26, " ") + Space(1) + Padr(CStr(rs1("brkNAME")), 25, " ") +
        'Space(1) + Padr(CStr(rs1("dlytype")), 5, " ") + Space(1) + Padr(CStr(rs1("VARNAME")), 8, " ") + Space(1) +
        'Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(ResultRs("unit")), 6, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("ordqty") = 0, " ", rs1("ordqty"))), 0)), 11, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("recqty") = 0, " ", rs1("recqty"))), 0)), 12, " ") + Space(1) + Padl(CStr(INF((IIf(rs1("bales") = 0, " ", rs1("bales"))), 0)), 12, " ")
        Set rsa = New Recordset
        rsa.Open "select slname from fa_slmas where slcode='" & rs1("supcd") & "'", DB
        If rsa.RecordCount > 0 Then
            sLname = rsa(0)
        Else
            sLname = ""
        End If
        Set rsa = New Recordset
        rsa.Open "select slname from fa_slmas where slcode='" & rs1("brkcd") & "'", DB
        If rsa.RecordCount > 0 Then
            brkname = rsa(0)
        Else
            brkname = ""
        End If
        If rs1("dlytype") = "M" Then
            dlytype = "FOR"
        Else
            dlytype = "Spot"
        End If
        If rs1("bbflag") = "B" Then
            unit = "Bales"
        End If
        
        
      ''  Kgs = RS1("ORDKGS")
        ''bales = RS1("ordqty") - IIf(IsNull(RS1("recqty")), 0, RS1("recqty"))
        arrtype = IIf(IsNull(rs1("ARRIVALTYPE")), "P", rs1("ARRIVALTYPE"))
        
        If arrtype = "P" Then
            ordqty = rs1("ordqty")
            rcdqty = IIf(IsNull(rs1("recqty")), 0, rs1("recqty"))
            bales = IIf(IsNull(rs1("CANCELBALES")), 0, rs1("CANCELBALES"))
        Else
            unit = "kgs"
            ordqty = rs1("ordkgs")
            rcdqty = IIf(IsNull(rs1("rcdkgs")), 0, rs1("rcdkgs"))
            bales = IIf(IsNull(rs1("CANCELKGS")), 0, rs1("CANCELKGS"))
        End If
        
        
        Print #z, Space(5); Padr(CStr(Format(rs1("contdt"), "DD-MM-YY")), 8, " ") + Space(1) + Padl(rs1("contno"), 8, " ") + Space(2) + Padr(CStr(sLname), 26, " ") + Space(1);
        Print #z, Padr(CStr(brkname), 22, " ") + Space(1) + Padr(CStr(dlytype), 8, " ") + Space(1) + Padr(CStr(rs1("VARcode")), 8, " "); Space(1);
        Print #z, Padl(CStr(INF((IIf(rs1("CANDYRATE") = 0, " ", rs1("CANDYRATE"))), 0)), 10, " ") + Space(2) + Padr(CStr(unit), 6, " ") + Space(1) + Padl(CStr(INF(ordqty, 0)), 11, " ");
        Print #z, Space(1) + Padl(CStr(INF(RecQty, 0)), 9, " ") + Space(1) + Padl(CStr(INF((IIf(bales = 0, " ", bales)), 0)), 6, " "); Space(1);
        Print #z, Padl(Format(Ord("docdt"), "dd/mm/yy"), 8, " "); Space(1)
        Print #z, Space(5); "Reason:" & Padr(Ord("reason"), 130, " ")
        Print #z,
         'Print #z, Padl(Format(rs1("docdt"), "dd/mm/yy"), 8, " "); Space(1); Padr(rs1("reason"), 30, " ")
        
        
        
        
        co = co + 3
        If co >= PageLen Then
                  Print #z, Space(5) & String(144, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(B))
                  'Call orderheader(pg1, co, s, a, b)
        End If
               tot1 = tot1 + ordqty
               tot2 = tot2 + RecQty
               tot3 = tot3 + bales
               
        
        rs1.MoveNext
            
        Loop
       
        ResultRs.MoveNext
    
        
          If co >= PageLen Then
                  Print #z, Space(5) & String(144, "-")
                  Print #z, Chr(12)
                  pg1 = pg1 + 1
                  co = 0
                  Call orderheader(CInt(pg1), CInt(co), CStr(s), CStr(a), CStr(B))
                  'Call orderheader(pg1, co, s, a, b)
           End If
          
    
       Loop

      
      
      
      


    Print #z, Space(5) & String(144, "-")
    Print #z, Space(80) + "  **  Grand Total     ** " + Space(5) + Padl(CStr(INF((tot1), 0)), 12, " "); Space(1); Padl(CStr(INF((tot2), 0)), 9, " "); Space(1); Padl(CStr(INF((tot3), 0)), 6, " ")
    Print #z, Space(5) & String(144, "-")

Print #z,
Print #z, Chr(12)
'Print #z, Chr(18)
Close #z
 z = FreeFile
'Open "c:\peco.bat" For Output As #z
'Print #z, "cd\"
'Print #z, "c:"
'Print #z, "cd\"
'Print #z, "type peco.TXT>prn"
'Close #z
'RPTV.txtfile = "c:\peco.TXT"
'RPTV.Batfile = "c:\peco.bat"
Call KALBATPROCESS("peco")
Screen.MousePointer = 0
        
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs  from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   ", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.MoveFirst
         Call bindcontls
         statusbar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
         BUTTON(5).Enabled = False
         BUTTON(6).Enabled = True
         BUTTON(7).Enabled = False
         BUTTON(8).Enabled = True
           Beep
          Exit Sub
GoFirstError:
        If Err.Number = 3021 Then
            MsgBox "First Record", vbInformation, head
            Exit Sub
        End If
        
       'MsgBox err.description, vbInformation, head
       
            
Case 6
'next
            desc.Caption = "Query"
            On Error Resume Next
            'Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                BUTTON(5).Enabled = True
'                BUTTON(6).Enabled = True
                BUTTON(7).Enabled = True
'                BUTTON(8).Enabled = False
                'Exit Sub
            End If
            If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
                Beep
                BUTTON(6).Enabled = False
'                BUTTON(3).Enabled = False
'                BUTTON(5).Enabled = False
'                BUTTON(2).Enabled = True
'                BUTTON(4).Enabled = True
                adoPrimaryRS.MoveLast
            End If
            'show the current record
            'Call navi(BUTTON)
            Exit Sub
GoNextError:
 '  MsgBox err.description, vbInformation, head
Case 7
 'previous
        desc.Caption = "Query"
        On Error Resume Next
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", Db, adOpenStatic, adLockBatchOptimistic
       If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
'            BUTTON(5).Enabled = False
            BUTTON(6).Enabled = True
'            BUTTON(7).Enabled = False
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            'moved off the end so go back
'            BUTTON(2).Enabled = False
'            BUTTON(4).Enabled = False
'            BUTTON(3).Enabled = True
'            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = False
            adoPrimaryRS.MoveFirst
        End If
        'show the current record
        'Call navi(BUTTON)
        Exit Sub

GoPrevError:
   'MsgBox err.description, vbInformation, head

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs  from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'   ", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.MoveLast
         Call bindcontls
         'txtfields(1).Text = adoPrimaryRS(0)
         'txtfields(0).Text = adoPrimaryRS("orderno")
         'txtfields(2).Text = adoPrimaryRS(2)
         'txtfields(3).Text = adoPrimaryRS(3)
         'txtfields(4).Text = adoPrimaryRS(4)
         'txtfields(5).Text = adoPrimaryRS(5)
         'txtfields(6).Text = adoPrimaryRS(6)
         'txtfields(7).Text = adoPrimaryRS(7)
         statusbar1.Panels(2).Text = "Last Record"
    'calling fir procedure from module
         BUTTON(5).Enabled = True
         BUTTON(6).Enabled = False
         BUTTON(7).Enabled = True
         BUTTON(8).Enabled = False
         
         Beep
         Exit Sub
GoLastError:
       If Err.Number = 3021 Then
        MsgBox "Last Record", vbInformation, head
        Exit Sub
       End If
     '  MsgBox err.description, vbInformation, head
    
'
Case 9
        'Save
        If Opt = "mod" Then
            arrtype = Text2.Text
        End If
        If Opt = "add" Or Opt = "mod" Then

            Screen.MousePointer = 11
            
            
            If txtfields(0).Text = "" Then
                MsgBox "Please enter Order Number", vbInformation, head
                txtfields(0).SetFocus
                Exit Sub
            End If
            If val(txtCanQty.Text) = 0 And arrtype = "PackWise" Then
                MsgBox "Please enter Cancel Quantity", vbInformation, head
                txtCanQty.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            If val(Text1.Text) = 0 And arrtype = "KgsWise" Then
                MsgBox "Please enter Cancel Quantity", vbInformation, head
                Text1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
                        
            If txtfields(2).Text = "" Then
                MsgBox "Please enter Supplier ", vbInformation, head
                txtfields(0).SetFocus
                Exit Sub
            End If
            
            If RichTextBox1.Text = "" Then
                MsgBox "Please enter Reason ", vbInformation, head
                RichTextBox1.SetFocus
                Exit Sub
            End If
            
            If Combo1.Text = "" Then
                MsgBox "Please enter Authorised Person ", vbInformation, head
                Combo1.SetFocus
                Exit Sub
            End If
            
            Call check
            If val(LBLQTY) > 0 Then
                If val(Trim(txtCanQty)) > val(LBLQTY) And arrtype = "PackWise" Then
                    MsgBox "Quantity Over Flow", vbCritical, head
                    On Error Resume Next
                    txtCanQty.SetFocus
                    Exit Sub
                End If
                If val(Trim(Text1.Text)) > val(LBLQTY) And arrtype = "KgsWise" Then
                    MsgBox "Quantity Over Flow", vbCritical, head
                    On Error Resume Next
                    Text1.SetFocus
                    Exit Sub
                End If
            End If
            
            dblCurrentKgs = 0
            dblCurrentQty = 0
                
            dblCurrentQty = getMasterName("Cancelbales", "rm_cont", "contno", txtfields(0).Text)
            dblCurrentKgs = getMasterName("Cancelkgs", "rm_cont", "contno", txtfields(0).Text)
                      
            
            If Opt = "add" Then
                Set rsa = New Recordset
                rsa.Open "select * from rm_ordcancel where divcode='" & Divcode & "'  and 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                rsa.AddNew
                rsa("divcode") = Divcode
                
                Set rsz = New Recordset
                rsz.Open "SELECT ISNULL(MAX(DOCNO),0) FROM RM_ORDCANCEL WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
    
                If rsz.RecordCount > 0 Then
                    txtfields(1).Text = rsz(0) + 1
                Else
                    txtfields(1).Text = rsz(0)
                End If
                               
                rsa("docno") = txtfields(1).Text
                rsa("docdt") = DTPicker1(0).value
                rsa("slcode") = txtfields(2).Text
                rsa("station") = txtfields(4).Text
                rsa("varcode") = txtfields(6).Text
                rsa("orderno") = txtfields(0).Text
                rsa("orderdt") = DTPicker1(1).value
                rsa("reason") = RichTextBox1.Text
                rsa("approveDby") = Combo1.Text
                rsa("Cancelbales") = val(txtCanQty.Text)
                rsa("cancelkgs") = val(Text1.Text)
                rsa.UpdateBatch adAffectAllChapters
                
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Order Cancel"
                    TrnLog("Trans_Mod") = "Add"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Left(Trim(Combo1.Text), 10)
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(DTPicker1(0).value, "YYYY-MM-DD")
                    TrnLog("varcode") = txtfields(6).Text
                    TrnLog("ordqty") = val(txtCanQty.Text)
                    TrnLog("ordkgs").value = val(Text1.Text)
                    TrnLog("AreaCode") = txtfields(4).Text
                    TrnLog("slcode") = txtfields(2).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                
                
                
                
            ElseIf Opt = "mod" Then
                Set rsa = New Recordset
                rsa.Open "select * from rm_ordcancel where divcode='" & Divcode & "'  and  orderno='" & txtfields(0).Text & "' and docno='" & txtfields(1).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
                rsa("divcode") = Divcode
                rsa("docno") = txtfields(1).Text
                rsa("docdt") = DTPicker1(0).value
                rsa("slcode") = txtfields(2).Text
                rsa("station") = txtfields(4).Text
                rsa("varcode") = txtfields(6).Text
                rsa("orderno") = txtfields(0).Text
                rsa("orderdt") = DTPicker1(1).value
                rsa("reason") = RichTextBox1.Text
                rsa("approveDby") = Combo1.Text
                rsa("Cancelbales") = val(txtCanQty.Text)
                rsa("cancelkgs") = val(Text1.Text)
                rsa.UpdateBatch adAffectAllChapters
                
                                
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Order Cancel"
                    TrnLog("Trans_Mod") = "Mod"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Left(Trim(Combo1.Text), 10)
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(DTPicker1(0).value, "YYYY-MM-DD")
                    TrnLog("varcode") = txtfields(6).Text
                    TrnLog("ordqty") = val(txtCanQty.Text)
                    TrnLog("ordkgs").value = val(Text1.Text)
                    TrnLog("AreaCode") = txtfields(4).Text
                    TrnLog("slcode") = txtfields(2).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                
            End If
            Dim strq As String
            If Opt = "mod" Then
                TotCanBales = 0
                TotCanKgs = 0
                Set TmpRs = New Recordset
                TmpRs.Open "Select Sum(isnull(Cancelbales,0))Cancelbales,Sum(isnull(cancelkgs,0))cancelkgs From rm_ordcancel Where Divcode ='" & Divcode & "' And OrderNo='" & txtfields(0).Text & "' And OrderDt='" & Format(MaskEdBox1.Text, "yyyy-mm-dd") & "'", DB
                If Not TmpRs.EOF Then
                    TotCanBales = TmpRs("Cancelbales")
                    TotCanKgs = TmpRs("cancelkgs")
                End If
                strq = "update rm_cont set cancelflg='Y',CANCELDT='" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "',CancelBales =" & TotCanBales & ",cancelkgs= " & TotCanKgs & "  WHERE varcode='" & txtfields(6).Text & "' and CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(DTPicker1(1).value, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
                DB.Execute strq
                DB.CommitTrans
            
            End If
          
            If Opt = "add" Then
                strq = "update rm_cont set cancelflg='Y',CANCELDT='" & Format(DTPicker1(0).value, "YYYY-MM-DD") & "',CancelBales = isnull(cancelbales,0) + " & val(txtCanQty) & ",cancelkgs= isnull(cancelkgs,0) + " & val(Text1.Text) & "  WHERE varcode='" & txtfields(6).Text & "' and CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(DTPicker1(1).value, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'"
                DB.Execute strq
                DB.CommitTrans
            End If
            
            If Opt = "add" Then
                Opt = " "
                MsgBox "Record(s) Saved", vbInformation, head
                MsgBox "Document No. is " & txtfields(1).Text
                LBLQTY.Caption = ""
            ElseIf Opt = "mod" Then
                Opt = " "
                MsgBox "Record(s) Modified", vbInformation, head
                LBLQTY.Caption = ""
            End If
            Screen.MousePointer = 0
            Label10.Visible = False
            LBLQTY.Visible = True
            Label14.Visible = False
            Text1.Text = ""
            txtCanQty.Text = ""
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs  from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

        End If
        If Opt = "del" Then
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
            If txtfields(0).Text = "" Then
                MsgBox "Please Enter the Order No. first", vbInformation, head
                Exit Sub
            End If
            ''adoPrimaryRS.MoveFirst
            ''DB.Execute "update rm_arrival set cancelflg=NULL,CALCELDT=NULL  WHERE varcode='" & adoPrimaryRS("Varcode") & "' and  CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(DTPicker1(1).Value, "YYYY-MM-DD") & "'"
            Dim msg As String
            msg = MsgBox("Do you want to delete this record?", vbYesNo, head)
            
            If msg = vbYes Then
            
            Dim strQry As String
            
            
                strQry = "update rm_cont set cancelflg='N',CANCELDT=NULL,CancelBales = cancelbales - " & val(txtCanQty.Text) & " ,cancelkgs= cancelkgs -" & val(Text1.Text) & " WHERE divcode='" & Divcode & "'  and  varcode='" & adoPrimaryRS("Varcode") & "' and   CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "'"
                DB.Execute strQry
                DB.Execute "DELETE FROM RM_ORDCANCEL WHERE  varcode='" & adoPrimaryRS("Varcode") & "' and  DIVCODE='" & Divcode & "' AND DOCNO='" & txtfields(1).Text & "' AND DOCDT='" & Format(MaskEdBox3.Text, "YYYY-MM-DD") & "'"
                                
                    Set TrnLog = New Recordset
                    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    TrnLog.AddNew
                    TrnLog("DIVCODE") = Divcode
                   ' TrnLog("TC") = 3
                    TrnLog("moduleNo") = ModuleNo
                    TrnLog("Trans_Name") = "Order Cancel"
                    TrnLog("Trans_Mod") = "Del"
                    TrnLog("Trans_IPADD") = LocalIP
                    TrnLog("Trans_Host") = LocalHost
                    TrnLog("Trans_UserId") = usrid
                    Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                    TrnLog("ReqName") = Left(Trim(Combo1.Text), 10)
                    TrnLog("docno") = Trim(txtfields(1).Text)
                    TrnLog("docdt") = Format(DTPicker1(0).value, "YYYY-MM-DD")
                    TrnLog("varcode") = txtfields(6).Text
                    TrnLog("ordqty") = val(txtCanQty.Text)
                    TrnLog("ordkgs").value = val(Text1.Text)
                    TrnLog("AreaCode") = txtfields(4).Text
                    TrnLog("slcode") = txtfields(2).Text
                    TrnLog.UpdateBatch adAffectAllChapters
                DB.CommitTrans
                If Opt = "del" Then
                    Opt = " "
                    MsgBox "Record(s) Deleted", vbInformation, head
                    LBLQTY.Caption = ""
                End If
            Else
                Call BUTTON_Click(10)
                Exit Sub
            End If
        End If
        If Opt = "fnd" Then
            DB.CommitTrans
            Opt = " "
        End If
    SSTab1.Enabled = False
    Text1.Text = ""
    txtCanQty.Text = ""
    Label10.Visible = False
    Label14.Caption = ""
    LBLQTY.Caption = ""
        Call QUERY_MODE
    BUTTON(0).SetFocus
Case 10
    If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    desc.Caption = "Query"
    Opt = "qry"
    Screen.MousePointer = 11
    'CANCEL
    
    Text1.Text = ""
    txtCanQty.Text = ""
    Label10.Visible = False
    Label14.Caption = ""
    LBLQTY.Caption = ""
    If Opt = "updat" Then
    DB.RollbackTrans
    Opt = "qry"
    End If
    Screen.MousePointer = 0
    'Call cancl(BUTTON)
    Call NEWFORM(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    
    Call QUERY_MODE
    Call bindcontls
    SSTab1.Enabled = False
    BUTTON(0).SetFocus ''''''''''
   Call NEWFORM1(BUTTON, GSNO)
Case 13
''        Frame5.Visible = True
''        Frame5.ZOrder 0
''        Option5.value = True
''        Option5.SetFocus
''        SSTab1.Enabled = False
''        If Option4 = True Then UserFooter1.Visible = True
'''        UserFooter1.Load
''        UserFooter1.ClearFooter
''        Command1.Visible = True
''        Buttonframe.Enabled = False
        Dim ClsRMICancel As New clsCrystal
        Set ClsRMICancel.cryRept = Cry_RMI_POCancelNote
        ClsRMICancel.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@FDate;" & Format(MaskEdBox1.Text, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@OrdNo;" & val(txtfields(0).Text)
        CrystalReport1.WindowState = crptMaximized
        'CrystalReport1.WindowParentHandle = hWnd
        SendKeys "{ENTER}"
        CrystalReport1.Action = 2
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0



Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Unload Me
End Select
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  On Error Resume Next
  intervalMinutes = -1
  If Opt <> "list" Or Opt <> "updat" Then
        statusbar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
  
'  If Opt = "qry" Or Opt = " " Then
'    txtfields(0).Text = adoPrimaryRS("lotno").Value
'    txtfields(1).Text = adoPrimaryRS("reason")
'  End If
On Error Resume Next
Label10.Visible = False
Set rsa = New Recordset
rsa.Open "select slname from fa_slmas where slcode='" & adoPrimaryRS("slcode") & "'", DB
If rsa.RecordCount > 0 Then
    txtfields(3).Text = rsa(0)
End If
Set rsa = New Recordset
rsa.Open "select areaname from rm_area where areacode='" & adoPrimaryRS("station") & "'", DB
If rsa.RecordCount > 0 Then
    txtfields(5).Text = rsa(0)
End If
Set rsa = New Recordset
rsa.Open "select varname from rm_var where varcode='" & adoPrimaryRS("varcode") & "'", DB
If rsa.RecordCount > 0 Then
    txtfields(7).Text = rsa(0)
End If


Set rsa = New Recordset
rsa.Open "select isnull(CANCELBALES,0)cancelbales,isnull(cancelkgs,0)cancelkgs,isnull(arrivaltype,'P')aRRIVALTYPE from rm_CONT where VARCODE='" & adoPrimaryRS("VARCODE") & "' AND CONTNO='" & adoPrimaryRS("ORDERNO") & "' AND CONTDT='" & Format(adoPrimaryRS("ORDERDT"), "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB
If rsa.RecordCount > 0 Then
    If rsa("arrivaltype") = "P" Then
        Text2.Text = "PackWise"
    Else
        Text2.Text = "KgsWise"
    End If
    txtCanQty.Text = rsa(0)
    Text1.Text = rsa(1)
End If
txtCanQty.Text = adoPrimaryRS("Cancelbales")
Text1.Text = adoPrimaryRS("Cancelkgs")
MaskEdBox1.Mask = adoPrimaryRS("orderdt")
MaskEdBox1.Text = MaskEdBox1.Mask
MaskEdBox3.Mask = adoPrimaryRS("docdt")
MaskEdBox3.Text = MaskEdBox3.Mask

End Sub
Private Sub QUERY_MODE()
On Error GoTo query_mode_Error
intervalMinutes = -1
If Opt = " " Or Opt = "qry" Then
    On Error Resume Next
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select TOP 1 docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, cancelbales, cancelkgs from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' order by Docno desc", DB, adOpenStatic, adLockBatchOptimistic
    
    Call bindcontls
    Call cancl(BUTTON)
    desc.Caption = "Query"
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       txtfields(Index).SetFocus
       Exit Sub
    End If
    Frame3.Visible = False
    adoPrimaryRS.MoveLast
    Call NEWFORM1(BUTTON, GSNO)
    intervalMinutes = -1
End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
    End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

a1 = Format(MaskEdBox1.Text, "yyyy/mm/dd")
    If a1 = "__/__/____" Then
        MsgBox "Please Enter the Valid Date ", vbInformation, head
        Exit Sub
    End If
    
If txtfields(0).Text <> "" Then
    Set rs1 = New Recordset
    rs1.Open "select a.docno,a.docdt,b.slname as supname,d.areaname,a.orderno,a.reason,a.approvedby,c.varname,ORDERDT,A.VARCODE from rm_ordcancel a,fa_slmas b,rm_var c ,rm_area d Where a.slcode = b.slcode And a.varcode = c.varcode And a.station = d.areacode and A.orderdt='" & a1 & "' and orderno='" & txtfields(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic

'RS1.Open "select distinct A.CONTNO,A.CONTDT,a.supcd,c.slname supname,isnull(d.slname,' ') brkname,isnull(a.brkcd,' ')'brkcd',a.areacode,b.varname,a.contno,a.contdt,case when dlytype = 'M' then  'FOR'  else 'Spot' end as dlytype,a.ordqty,a.recqty,(a.ordqty-isnull(a.recqty,0))Bales,round(a.candyrate,0)as candyrate,e.docdt,e.reason,g.areaname,e.docno,e.docdt from RM_CONT a,rm_var b,fa_slmas c,fa_slmas d,rm_ordcancel e,rm_area g Where a.areacode*=g.areacode  and  a.contdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' and A.CONTDT='" & a1 & "' AND a.varcode*= B.varcode and  a.supcd*= c.slcode and a.brkcd*= d.slcode  and contno= '" & txtfields(0).Text & "' and docno='" & txtfields(1).Text & "' order by contno", DB, adOpenStatic, adLockBatchOptimistic
'RS1.Open "select distinct a.lotno,a.lotdt,plotno,f.slname,c.areaname,d.varname, a.bales,unit=case when e.bbflag = 'b' then 'Bales' else 'Borah' end,a.staplen,a.staplen50 , a.uniratio, a.strength, a.MICRONAIRE, a.TRASH_PER,a.mcoeff,a.catcd,a.divcode,a.lotdt,STAPLEN,a.UNIRATIO,fqi,MATURE,HMATURE,IMATURE,ROUND(ratecy,0) AS RATECANDY,isnull(a.moisture,0) as moisture,a.cntcode,h.catname from rm_lot a, rm_area c,rm_var d,fa_slmas f,rm_cont e,rm_cat h where a.catcd=h.catcd and a.supcd=e.supcd and a.varcode = d.varcode and a.AREACD = c.areacode and a.supcd = f.slcode and a.lotno='" & txtfields(1).Text & "' and a.lotdt='" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and  a.lotdt Between '" & Format(yfdate, "yyyy-mm-dd") & "' and ' " & Format(yldate, "yyyy-mm-dd") & "' AND LOTYEAR='" & Year(yfdate) & "' and a.divcode='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic

If rs1.RecordCount = 0 Then
  MsgBox "No Records to Print ", vbInformation, head
  Screen.MousePointer = 0
  Exit Sub
End If
Set rsg = New Recordset
rsg.Open "select Ordqty,ordkgs,isnull(arrivaltype,'P')ARRIVALTYPE from rm_cont where contno='" & rs1("orderno") & "' and contdt='" & Format(rs1("orderdt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "' and varcode='" & rs1("varcode") & "'", DB, adOpenStatic

Set rptv = New Report.ReportView
c = FreeFile
I = 0
pg1 = 1
'Close
'Open "C:\cd.TXT" For Output As #C
Open KALFOLDERDATA & "\cd.TXT" For Output As #c
'Print #c,
Call header5(CStr(From_date1), CStr(To_date1), CInt(I), CInt(pg1))
'RS1.MoveFirst
    
      Do While Not rs1.EOF
         'Print #c, Space(5) & "Order No.     : " & Padr(RS1("ORDERNO"), 10, " ") & Space(10) & "Order Date: " & Padr(Format(a1, "dd-mm-yy"), 10, " ")
         Print #c,
         Print #c, Space(5) & "Supplier Name : " & Padr(rs1("supname"), 40, " ") & Space(2) & "Order No. : " & Padr(rs1("orderno"), 10, " ")
         I = I + 1
         Print #c,
         I = I + 1
         Print #c, Space(5) & "Station       : " & Padr(rs1("areaname"), 40, " ") & Space(2) & "Order Date: " & Padr(Format(a1, "dd/mm/yy"), 10, " ")
         I = I + 1
         Print #c,
         I = I + 1
         Print #c, Space(5) & "Variety       : " & Padr(rs1("varname"), 20, " ")
         I = I + 1
         Print #c,
         I = I + 1
         Print #c, Space(5) & "Doc.No.       : " & Padr(rs1("docno"), 10, " ") & Space(32) & "Doc.Date  : " & Padr(Format(rs1("docdt"), "dd/mm/yy"), 10, " ")
         I = I + 1
         Print #c,
         I = I + 1
         Print #c, Space(5) & "Approved By   : " & Padr(Combo1.Text, 25, " ")
         I = I + 1
         Print #c,
         I = I + 1
         If rsg("arrivaltype") = "P" Then
            Print #c, Space(5) & "Cancel Qty    : " & Padr(INF(txtCanQty.Text, 0), 10, " ") & "  Bales"
         Else
            Print #c, Space(5) & "Cancel Qty    : " & Padr(INF(Text1.Text, 0), 10, " ") & " Kgs"
         End If
         I = I + 1
         Print #c,
         I = I + 1
         Print #c, Space(5) & "Reason        : " & Padr(rs1("reason"), 40, " ")
         I = I + 1
         Print #c,
         I = I + 1
         
         For tr = 1 To 8
         Print #c,
         Next tr
         
         rs1.MoveNext
         
            If I >= PageLen Then
               Print #c, Space(5) + String(75, "-")
               Print #c, Chr(12)
               I = 0
               Call header5(CStr(From_date1), CStr(To_date1), CInt(I), CInt(pg1))
            End If
         
      Loop
           
            If I >= PageLen Then
            Print #c, Space(5) + String(80, "-")
            Print #c, Chr(12)
            I = 0
            Call header5(CStr(From_date1), CStr(To_date1), CInt(I), CInt(pg1))
            End If
            Print #c, Space(5) + String(80, "-")
            For tr = 1 To 4
             Print #c,
            Next tr
            Call footermod(CInt(c), UserFooter1.SelectedStr, 85)
            'Call FOOTER_PRINT(80, CStr(c), 5)
            Print #c,
            Print #c,
            Close #c
            c = FreeFile
'            Open "c:\cd.bat" For Output As #C
'            Print #C, "cd\"
'            Print #C, "c:"
'            Print #C, "cd\"
'            Print #C, "type cd.txt>prn"
'            Close #C
'            RPTV.txtfile = "c:\cd.txt"
'            RPTV.Batfile = "c:\cd.bat"
             Call KALBATPROCESS("cd")
Else
    MsgBox "No Records to Print ", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

    statusbar1.Panels(2).Text = "Select Authorized person from the list"

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

    If Opt = "add" Then
        If arrtype = "PackWise" Then
            txtCanQty.SetFocus
        Else
            Text1.SetFocus
        End If
    End If
    statusbar1.Panels(2).Text = ""

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Command1_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
ElseIf KeyCode = vbKeyLeft Then
    Option5.SetFocus
ElseIf KeyCode = vbKeyRight Then
    Option5.SetFocus
End If

Exit Sub
Command1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
Dim RsQty As Recordset

On Error GoTo Command3_Click_Error

On Error GoTo Command3_Click_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Select Case kslLIST1.listfield1
        Case "DOCNO"
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select docno,docdt,slcode,station,varcode,orderno,orderdt,reason,approvedby, Cancelbales, cancelkgs from rm_ordcancel where divcode='" & Divcode & "' and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'  AND DOCNO='" & kslLIST1.Code & "' AND DOCDT='" & Format(Left(kslLIST1.Description, 10), "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            
            Call bindcontls
            'Call cancl(BUTTON)
                    
            If adoPrimaryRS.BOF Then
               MsgBox "No Records Found", vbInformation, head
               Exit Sub
            End If
            Set RsQty = New Recordset
            RsQty.Open "SELECT ISNULL(CancelBales,0) FROM Rm_Cont WHERE Divcode = '" & Divcode & "' AND Contno = " & adoPrimaryRS("Orderno"), DB, adOpenStatic, adLockOptimistic
            LBLQTY.Caption = IIf(IsNull(RsQty(0)), 0, RsQty(0))
            
            Frame3.Visible = False
            SSTab1.Visible = True
        Case "cast(CONTNO as numeric) as OrderNo"
            txtfields(0).Text = kslLIST1.Code
            DTPicker1(1).value = Left(kslLIST1.Description, 10)
            MaskEdBox1.Mask = Left(kslLIST1.Description, 10)
            MaskEdBox1.Text = MaskEdBox1.Mask
            MaskEdBox1.Enabled = False
            DTPicker1(1).Enabled = False
            
            txtfields(0).Locked = True
            
            Set rsa = New Recordset
            rsa.Open "SELECT * FROM RM_CONT WHERE  CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(2).Text = rsa("SUPCD")
                Set rsb = New Recordset
                rsb.Open "SELECT SLNAME FROM FA_SLMAS WHERE SLCODE='" & rsa("SUPCD") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(3).Text = rsb(0)
                    txtfields(3).Locked = True
                End If
              
            End If
            Set rsa = New Recordset
            rsa.Open "SELECT * FROM RM_CONT WHERE  CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(4).Text = rsa("SUPCD")
                Set rsb = New Recordset
                rsb.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rsa("AREACODE") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(5).Text = rsb(0)
                    txtfields(5).Locked = True
                End If
              
            End If
            
            
            Set rsa = New Recordset
            rsa.Open "SELECT * FROM RM_CONT WHERE CONTNO='" & txtfields(0).Text & "'  AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(6).Text = rsa("VARCODE")
                Set rsb = New Recordset
                rsb.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rsa("VARCODE") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(7).Text = rsb(0)
                    txtfields(7).Locked = True
                End If
                LBLQTY.Caption = Abs(IIf(IsNull(rsa("OrdQty")), 0, rsa("OrdQty")) - IIf(IsNull(rsa("RecQty")), 0, rsa("RecQty")) - IIf(IsNull(rsa("CANCELBALES")), 0, rsa("CANCELBALES")))
            End If
            
            Combo1.Clear
            Combo1.AddItem "COTTON CLERK"
            Combo1.AddItem "FM"
            Combo1.AddItem "MD"
            Set rsb = New Recordset
            rsb.Open "select areacode,areaname from rm_area where areacode='" & rsa("areacode") & "'", DB
            If rsb.RecordCount > 0 Then
                txtfields(4).Text = rsb(0)
                txtfields(5).Text = rsb(1)
                txtfields(4).Locked = True
                txtfields(5).Locked = True
            End If
            
            
            
            Set rsa = New Recordset
            rsa.Open "SELECT ISNULL(MAX(DOCNO),0) FROM RM_ORDCANCEL WHERE DIVCODE='" & Divcode & "'", DB, adOpenStatic
            
            If rsa.RecordCount > 0 Then
                txtfields(1).Text = rsa(0) + 1
            Else
                txtfields(1).Text = rsa(0)
            End If
            txtCanQty = ""
            txtfields(1).Locked = True
            Combo1.SetFocus
            Frame3.Visible = False
        
        Case "AREACODE"
            txtfields(4).Text = kslLIST1.Code
            txtfields(5).Text = kslLIST1.Description
            Frame3.Visible = False
            txtfields(0).SetFocus
        
        Case "SLCODE"
            txtfields(2).Text = kslLIST1.Code
            txtfields(3).Text = kslLIST1.Description
             Set rsa = New Recordset
            rsa.Open "select * FROM RM_CONT WHERE SUPCD='" & txtfields(2).Text & "' AND ORDQTY<>isnull(RECQTY,0) and ordqty>=isnull(recqty,0) and CONTNO='" & txtfields(Index).Text & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(0).Text = rsa(0)
                txtfields(0).Locked = True
                Exit Sub
            Else
                Frame3.Visible = True
                kslLIST1.Caption = "Order Details"
                kslLIST1.conn = connectstring
                kslLIST1.Table = "RM_CONT WHERE  SUPCD='" & txtfields(2).Text & "' AND ORDQTY<>isnull(RECQTY,0) and ordqty>=isnull(recqty,0)"
                kslLIST1.listfield1 = "CONTNO"
                kslLIST1.listfield2 = "CONTDT,ORDQTY,RECQTY"
                Frame3.ZOrder
                kslLIST1.SetFocus
            End If
            Frame3.Visible = True
            
        Case "lotno"
            Set Rs = New Recordset
            Rs.Open "select lotdt,isnull(reason,' ') as reason from rm_lot where lotno='" & kslLIST1.Code & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            Frame3.Visible = False
            SSTab1.Visible = True
            txtfields(0).Text = kslLIST1.Code
            DTPicker1(0).value = Format(Rs("lotdt"), "dd/mm/yyyy")
            If Opt = "mod" Or Opt = "del" Then
                txtfields(1).Text = Rs("reason")
            End If
            DTPicker1(0).Enabled = True
            DTPicker1(1).Enabled = True
            DTPicker1(1).SetFocus
    End Select
    
End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form ORDCANCEL", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
Frame3.Visible = False
SSTab1.Visible = True
End If

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub DTPicker1_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo DTPicker1_Validate_Error

If Opt = "add" Or Opt = "mod" Then
    If Index = 0 Then
            If DTPicker1(0).value > pdate Then
                MsgBox "Date must be earlier or equal to Processing date", vbInformation, head
                DTPicker1(0).value = pdate
                DTPicker1(0).ZOrder
                DTPicker1(0).SetFocus
                Exit Sub
            End If
    End If
End If

Exit Sub
DTPicker1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Validate of Form ORDCANCEL", vbInformation, head
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
        Call BUTTON_Click(10)   ''Cancel
    End If
End If
If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
statusbar1.Panels(1).Text = STBARmsg
  Opt = "qry"
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  'TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  Call QUERY_MODE
  Call NEWFORM1(BUTTON, GSNO)
  SSTab1.Enabled = False
  DTPicker1(0).value = Date
  DTPicker1(1).value = Date
  Call NEWFORM1(BUTTON, GSNO)
  intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form ORDCANCEL", vbInformation, head
  End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  intervalMinutes = -1
  Reset
  End Sub

Public Sub clearval()
For I = 0 To 1
  txtfields(I).Text = ""
Next
End Sub
Public Sub disabletxt()
For I = 0 To 1
  txtfields(I).Locked = True
Next
End Sub
'Public Sub disablcontls()
'    'To lock the textboxes and datagrid
'    Dim oText As TextBox
'    'Bind the text boxes to the recordset
'    For Each oText In Me.txtfields
'        oText.Locked = True
'    Next
'
'End Sub
'Public Sub ENABLCONTLS()
'    'To lock the textboxes and datagrid
'    Dim oText As TextBox
'    'Bind the text boxes to the data provider
'    For Each oText In Me.txtfields
'        oText.Locked = False
'    Next
'End Sub

Private Sub MaskEdBox1_GotFocus()
On Error GoTo MaskEdBox1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1.BackColor = &HC0FFC0
    statusbar1.Panels(2).Text = "Enter the Date"
End If

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus()
On Error GoTo MaskEdBox1_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox1.BackColor = &HFFFFFF
    statusbar1.Panels(2).Text = ""
End If

Exit Sub
MaskEdBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_GotFocus()
On Error GoTo MaskEdBox3_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox3.BackColor = &HC0FFC0
    statusbar1.Panels(2).Text = "Enter the Document Date"
End If

Exit Sub
MaskEdBox3_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox3_LostFocus()
On Error GoTo MaskEdBox3_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
    MaskEdBox3.BackColor = &HFFFFFF
    statusbar1.Panels(2).Text = ""
End If
If Opt = "add" Or Opt = "mod" Then
If MaskEdBox3.Mask > pdate Then
    MsgBox "Date must be earlier or equal to Processing date", vbInformation, head
    MaskEdBox3.Mask = "__/__/_____"
    MaskEdBox3.ZOrder
    MaskEdBox3.SetFocus
    Exit Sub
End If
End If

Exit Sub
MaskEdBox3_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox3_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    Command3.Visible = True

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Command3.Visible = False
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
    Command1.Visible = True

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        Frame5.Visible = False
        UserFooter1.Visible = False
        Command1.Visible = False
        SSTab1.Enabled = True
        Buttonframe.Enabled = True
    End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub RichTextBox1_GotFocus()
On Error GoTo RichTextBox1_GotFocus_Error

    RichTextBox1.BackColor = &HC0FFC0
    statusbar1.Panels(2).Text = "Enter the reason"

Exit Sub
RichTextBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RichTextBox1_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub RichTextBox1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo RichTextBox1_KeyDown_Error

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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        'Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
RichTextBox1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RichTextBox1_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub RichTextBox1_KeyPress(KeyAscii As Integer)
On Error GoTo RichTextBox1_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
Call ToUpCase(RichTextBox1, KeyAscii)

End If

Exit Sub
RichTextBox1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RichTextBox1_KeyPress of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub RichTextBox1_LostFocus()
On Error GoTo RichTextBox1_LostFocus_Error

RichTextBox1.BackColor = &HFFFFFF
statusbar1.Panels(2).Text = ""

Exit Sub
RichTextBox1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure RichTextBox1_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        'Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_GotFocus()
On Error GoTo Text1_GotFocus_Error

If Opt = "add" Or Opt = "mod" Then
    Text1.BackColor = &HC0FFC0
    If Text1.Locked = False Then
        statusbar1.Panels(2).Text = "Enter Maximum of 15 Integers with 3 Decimals"
    End If
End If

Exit Sub
Text1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

On Error GoTo Text1_KeyPress_Error

    If Opt = "add" Or Opt = "mod" Then
        ToNumberAssign Text1, 15, KeyAscii, 15, 3
    End If

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub Text1_LostFocus()
    Text1.BackColor = &HFFFFFF
End Sub

Private Sub Text1_Validate(Cancel As Boolean)
On Error GoTo Text1_Validate_Error

On Error GoTo Text1_Validate_Error

    If Opt = "add" Then
        If val(Text1.Text) > val(LBLQTY.Caption) Then
            Text1.Text = ""
            MsgBox "Cancel Quantity must be less than or equal to Balance Qty ", vbInformation, head
            Text1.SetFocus
            ''Exit Sub
        End If
    End If

Exit Sub
Text1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_Validate of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0

Screen.MousePointer = 0
End Sub

Private Sub text2_GotFocus()
'StatusBar1.Panels(2).Text = "Enter Maximum of 5 Integers"
End Sub

Private Sub txtCanQty_GotFocus()
On Error GoTo txtCanQty_GotFocus_Error

    txtCanQty.BackColor = &HC0FFC0
    statusbar1.Panels(2).Text = "Enter Maximum of 5 Integers"

Exit Sub
txtCanQty_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtCanQty_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtCanQty_KeyPress(KeyAscii As Integer)
On Error GoTo txtCanQty_KeyPress_Error

    If Opt = "add" Or Opt = "mod" Then
        ToNumberAssign txtCanQty, 5, KeyAscii, 5, 0
    End If

Exit Sub
txtCanQty_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtCanQty_KeyPress of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtCanQty_LostFocus()
On Error GoTo txtCanQty_LostFocus_Error

    txtCanQty.BackColor = &HFFFFFF
    statusbar1.Panels(2).Text = ""
    If Text2.Text = "PackWise" Then
    
    If val(txtCanQty.Text) = 0 Then
        txtCanQty.Text = ""
        
        If txtCanQty.Enabled = True Then
            txtCanQty.SetFocus
        End If
    End If
    If txtfields(0).Text <> "" Then
        Call check
    
    Else
        Exit Sub
    End If
    End If

Exit Sub
txtCanQty_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtCanQty_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

txtfields(Index).BackColor = &HC0FFC0
If Opt = "add" Then
  Select Case Index
    Case 0
    statusbar1.Panels(2).Text = "Enter Maximum of 5 Integers"
    Case 1
      'StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
      statusbar1.Panels(2).Text = ""
  End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
        'Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        'Call BUTTON_Click(13)   ''Crystal Report
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
  Select Case Index
    Case 0
     ' Call tonum(txtfields(0), 10, KeyAscii)
        tonum txtfields(0), 5, KeyAscii
    Case 1
      'Call ToAlphaNumber(txtfields(1), 30, KeyAscii)
    
  End Select
End If

Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub bindcontls()

On Error Resume Next

For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next

Set Combo1.DataSource = adoPrimaryRS
Set RichTextBox1.DataSource = adoPrimaryRS

Set MaskEdBox1.DataSource = adoPrimaryRS
Set MaskEdBox3.DataSource = adoPrimaryRS
'If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
'    DTPicker1(0).Value = Format(adoPrimaryRS("Lot Date"), "dd/mm/yyyy")
'End If
'If IsNull(adoPrimaryRS("rejdt")) = False Then
'    DTPicker1(1).Value = Format(adoPrimaryRS("Rejected Date"), "dd/mm/yyyy")
'Else
'    DTPicker1(1).Value = "__/__/____"
'End If

End Sub

Public Sub ENABLCONTLS()
Dim I As Integer
For I = 0 To 1
    txtfields(I).Locked = False
Next

DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False

End Sub

Public Sub disablcontls()
Dim I As Integer

For I = 0 To 1
  txtfields(I).Locked = True
Next

DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False


End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

If val(txtfields(0).Text) = 0 Then
    txtfields(0).Text = ""
    If txtfields(0).Enabled = True Then
        txtfields(0).SetFocus
    End If
End If
    txtfields(Index).BackColor = &HFFFFFF

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 2
'    Set RSA = New Recordset
'    RSA.Open "select slname from fa_slmas where slcode='" & txtfields(Index).Text & "'", Db, adOpenStatic
'    If RSA.RecordCount > 0 Then
'        txtfields(3).Text = RSA(0)
'    Else
        Frame3.Visible = True
        kslLIST1.Caption = "Supplier Details"
        kslLIST1.conn = connectstring
        kslLIST1.Table = "fa_slmAs A,RM_CONT B  where  A.SLCODE=B.SUPCD  and ordqty-isnull(recqty,0)>0 "
        kslLIST1.listfield1 = "SLCODE"
        kslLIST1.listfield2 = "SLNAME"
        Frame3.ZOrder
        kslLIST1.SetFocus
   ' End If
Case 4
'    Set rsA = New Recordset
'    rsA.Open "select AREANAME from RM_AREA where AREAcode='" & txtfields(Index).Text & "'", DB, adOpenStatic
'    If rsA.RecordCount > 0 Then
'        txtfields(5).Text = rsA(0)
'    Else
'        Frame3.Visible = True
'        KslList1.Caption = "Supplier Details"
'        KslList1.conn = connectstring
'        KslList1.table = "RM_AREA"
'        KslList1.listfield1 = "AREACODE"
'        KslList1.listfield2 = "AREANAME"
'        Frame3.ZOrder
'        KslList1.SetFocus
'    End If
Case 0
'    If txtfields(0).Text = "" Then
'        MsgBox "Order No Cannot be Empty", vbInformation, head
'        txtfields(0).SetFocus
'        Exit Sub
'    ElseIf val(txtfields(0)) = 0 Then
'        MsgBox "Order No should not be 0", vbInformation, head
'        txtfields(0).SetFocus
'        Exit Sub
'    End If
    Set rsa = New Recordset
    '''SELECT contno,contdt,ordqty,isnull(recqty,0) FROM RM_CONT WHERE ORDQTY<>isnull(RECQTY,0) and ordqty>=isnull(recqty,0)
    
    rsa.Open "select * FROM RM_CONT WHERE CONTNO='" & txtfields(0).Text & "' and ordqty-isnull(recqty,0)>0 and CONTNO='" & txtfields(Index).Text & "'", DB, adOpenStatic
    If rsa.RecordCount > 0 Then
        txtfields(0).Text = rsa(0)
        txtfields(0).Locked = True
        Exit Sub
    Else
''''        Frame3.Visible = True
''''        KSLLIST1.Caption = "Order Details"
''''        KSLLIST1.conn = connectstring
''''        KSLLIST1.table = "RM_CONT A,FA_SLMAS B WHERE A.SUPCD=B.SLCODE   AND ORDQTY-isnull(RECQTY,0)>0 "
''''        KSLLIST1.listfield1 = "cast(CONTNO as numeric) as OrderNo"
''''        ',SLNAME,ORDQTY,RECQTY
''''        KSLLIST1.listfield2 = "CONTDT,SLNAME,ORDQTY,RECQTY,CANCELBALES"
''''        'CONVERT(VARCHAR,CONTDT,103)
''''        Frame3.ZOrder
''''        KSLLIST1.SetFocus

        Text1.Locked = False
        txtCanQty.Locked = False
        Label10.Visible = True
        qry = "select cast(contno as numeric)""Order No"",contdt""Order Date"",slname""Supplier Name"",Varname""Variety Name"",ordqty""Order Qty"",recqty""Received Qty"",CancelBales""Cancel Qty"",ordkgs""Order Kgs"",rcdkgs""Received Kgs"",CancelKgs""Cancel Kgs"",a.Varcode from RM_CONT A,FA_SLMAS B,rm_var c WHERE a.varcode=c.varcode and a.divcode='" & Divcode & "' and A.SUPCD=B.SLCODE   AND ORDQTY-(isnull(RECQTY,0)+isnull(cancelbales,0))>0   and isnull(arrivaltype,'P')='P' union select cast(contno as numeric) as OrderNo,contdt as OrderDt,slname""SupplierName"",Varname""VarietyName"",ordqty""OrderQty."",recqty""ReceivedQty."",CancelBales,ordkgs""Orderkgs"",rcdkgs""ReceivedKgs"",CancelKgs,a.Varcode from RM_CONT A,FA_SLMAS B,rm_var c WHERE  a.varcode=c.varcode and a.divcode='" & Divcode & "' and A.SUPCD=B.SLCODE   AND ORDKGS-(isnull(RCDKGS,0)+isnull(cancelkgs,0))>0 and isnull(arrivaltype,'P')='K'"
        LookUp.Clear = True
        LookUp.query = qry
        LookUp.DefCol = "OrderNo"
        LookUp.ALIGN = "900,1000,3500,1600,1000,1200,1100,1000,1200,1100"
        LookUp.Caption = "Purchase Order Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            txtfields(0).Text = LookUp.Fields(0)
            DTPicker1(1).value = LookUp.Fields(1)
            txtfields(6).Text = LookUp.Fields("Varcode")
            MaskEdBox1.Mask = LookUp.Fields(1)
            MaskEdBox1.Text = MaskEdBox1.Mask
            MaskEdBox1.Enabled = False
            DTPicker1(1).Enabled = False
            txtfields(0).Locked = True
            arrtype = "PackWise"
            Set rsa = New Recordset
            rsa.Open "SELECT SUPCD,ISNULL(ARRIVALTYPE,'P')ARRIVALTYPE FROM RM_CONT WHERE  CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                
                If rsa("arrivaltype") = "P" Then
                    Text1.Locked = True
                    arrtype = "PackWise"
                End If
                If rsa("arrivaltype") = "K" Then
                    arrtype = "KgsWise"
                    txtCanQty.Locked = True
                End If
                
                
                txtfields(2).Text = rsa("SUPCD")
                Set rsb = New Recordset
                rsb.Open "SELECT SLNAME FROM FA_SLMAS WHERE SLCODE='" & rsa("SUPCD") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(3).Text = rsb(0)
                    txtfields(3).Locked = True
                End If
            End If
            Text2.Text = arrtype
            
            Set rsa = New Recordset
            rsa.Open "SELECT * FROM RM_CONT WHERE  CONTNO='" & txtfields(0).Text & "' AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(4).Text = rsa("SUPCD")
                Set rsb = New Recordset
                rsb.Open "SELECT AREANAME FROM RM_AREA WHERE AREACODE='" & rsa("AREACODE") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(5).Text = rsb(0)
                    txtfields(5).Locked = True
                End If
            End If

            Set rsa = New Recordset
            rsa.Open "SELECT * FROM RM_CONT WHERE CONTNO='" & txtfields(0).Text & "'  AND CONTDT='" & Format(MaskEdBox1.Mask, "YYYY-MM-DD") & "' AND DIVCODE='" & Divcode & "' and varcode='" & Trim(txtfields(6).Text) & "'", DB, adOpenStatic
            If rsa.RecordCount > 0 Then
                txtfields(6).Text = rsa("VARCODE")
                Set rsb = New Recordset
                rsb.Open "SELECT VARNAME FROM RM_VAR WHERE VARCODE='" & rsa("VARCODE") & "'", DB, adOpenStatic
                If rsb.RecordCount > 0 Then
                    txtfields(7).Text = rsb(0)
                    txtfields(7).Locked = True
                End If
                If arrtype = "PackWise" Then
                    LBLQTY.Caption = Abs(IIf(IsNull(rsa("OrdQty")), 0, rsa("OrdQty")) - IIf(IsNull(rsa("RecQty")), 0, rsa("RecQty")) - IIf(IsNull(rsa("CANCELBALES")), 0, rsa("CANCELBALES")))
                    Label14.Caption = " Bales"
                Else
                    LBLQTY.Caption = Abs(IIf(IsNull(rsa("OrdKgs")), 0, rsa("OrdKgs")) - IIf(IsNull(rsa("RcdKgs")), 0, rsa("RcdKgs")) - IIf(IsNull(rsa("CANCELkgs")), 0, rsa("CANCELkgs")))
                    Label14.Caption = " Kgs"
                End If
            End If
            
            Combo1.Clear
            If UCase(CustID) = "SKY" Then
                Combo1.AddItem "CHAIRMAN"
                Combo1.AddItem "MD"
                Combo1.AddItem "PURCHASE MANAGER"
            Else
                Combo1.AddItem "COTTON CLERK"
                Combo1.AddItem "FM"
                Combo1.AddItem "MD"
            End If
            Combo1.ListIndex = 0
            Set rsb = New Recordset
            rsb.Open "select areacode,areaname from rm_area where areacode='" & rsa("areacode") & "'", DB
            If rsb.RecordCount > 0 Then
                txtfields(4).Text = rsb(0)
                txtfields(5).Text = rsb(1)
                txtfields(4).Locked = True
                txtfields(5).Locked = True
            End If
'            Set rsa = New Recordset
'            rsa.Open "SELECT ISNULL(MAX(DOCNO),0) FROM RM_ORDCANCEL WHERE DIVCODE='" & Divcode & "'", db, adOpenStatic
'
'            If rsa.RecordCount > 0 Then
'                txtFields(1).Text = rsa(0) + 1
'            Else
'                txtFields(1).Text = rsa(0)
'            End If
'            txtCanQty = ""
            txtfields(1).Locked = True
            LookUp.Clear = True
            Combo1.SetFocus
            Frame3.Visible = False
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
End Select
End If


Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form ORDCANCEL", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub orderheader(pg1 As Integer, co As Integer, s As String, a As String, B As String)
a = a1
B = b1
          Print #z, Chr(18)
          Print #z, Space(5) + Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
          Print #z, Chr(15)
          SR = CStr(Format((pdate), "dd/mm/yy")) + Space(2)
          Print #z, Space(5) + "Order Cancellation List" + Space(26) + Space(69) + Space(7) + CStr(SR) + "Pg. : " + Padl(CStr(pg1), 3, " ") '+ Chr(15)
          Print #z, Space(5) & String(144, "-")
          Print #z, Space(5) & "Date        Order  Supplier Name              Broker Name            Delivery Variety  Rate/Candy  Unit         Order  Received Cancel  Cancel    "
          Print #z, Space(5) & "              No.                                                                                                 Qty       Qty    Qty  Date"
          Print #z, Space(5) & String(144, "-")
          co = co + 7
End Sub
Public Sub header5(From_date1 As String, To_date1 As String, I As Integer, pg1 As Integer)
        Print #c,
        I = I + 1
        SR = CStr(pdate) + Space(2)
        Print #c, Space(5) & Chr(27) & "E" & CENTRE(Trim(divname), 80, " ") & Chr(27) & "F"
        I = I + 1
        Print #c, Chr(18)
        I = I + 1
        Print #c, Space(5) & CENTRE("Order Cancellation", 80, " ")
        'Print #c, Space(30) & Format(pdate, "DD/MM/YY") & Space(2) & " Pg.: " & Padl(pg1, 3, " ")
        I = I + 1
        Print #c, Space(5) + String(80, "-")
        I = I + 1
        
End Sub
Private Sub check()
On Error GoTo Check_Error

If Opt = "add" Or Opt = "mod" Then
    
        If arrtype = "PackWise" Then
                Set rsg = New Recordset
                rsg.Open "select Ordqty,isnull(rECqty,0),isnull(cancelbales,0) from rm_cont where varcode='" & txtfields(6).Text & "' and contno=" & txtfields(0).Text & " and contdt='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                enteredqty = val(txtCanQty.Text)
        Else
                Set rsg = New Recordset
                rsg.Open "select Ordkgs,isnull(rcdkgs,0),isnull(cancelkgs,0) from rm_cont where varcode='" & txtfields(6).Text & "' and  contno=" & txtfields(0).Text & " and contdt='" & Format(MaskEdBox1.Text, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
                enteredqty = val(Text1.Text)
        End If
    
        If rsg.RecordCount > 0 Then
2323            balqty = rsg(0) - (rsg(1) + rsg(2))
            If enteredqty > balqty Then
                MsgBox "Available Balance Qty =" & balqty, vbInformation
                If arrtype = "PackWise" Then
                    txtCanQty.Text = ""
                    txtCanQty.SetFocus
                Else
                    Text1.Text = ""
                    Text1.SetFocus
                End If
                Exit Sub
            End If
        Else
            MsgBox "Order Data is not correct", vbInformation, head
            Call BUTTON_Click(10)
            Exit Sub
        End If
End If


Exit Sub
Check_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CHECK of Form ORDCANCEL", vbInformation, head

Exit Sub

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Check of Form ORDCANCEL", vbInformation, head
Screen.MousePointer = 0
End Sub
