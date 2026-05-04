VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form Frminspct 
   Caption         =   "Inspection"
   ClientHeight    =   6780
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9195
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame3 
      Height          =   645
      Left            =   0
      TabIndex        =   1
      Top             =   120
      Width           =   4920
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIInspect.frx":0000
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIInspect.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   11
         Left            =   1095
         Picture         =   "RMIInspect.frx":0684
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   9
         Left            =   570
         Picture         =   "RMIInspect.frx":0ACE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   3675
         TabIndex        =   5
         Top             =   255
         Width           =   630
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   1980
         TabIndex        =   4
         Top             =   255
         Width           =   600
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   6
      Top             =   10710
      Width           =   15240
      _ExtentX        =   26882
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   9102
            MinWidth        =   9102
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            TextSave        =   "10/03/2009"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "11:38 AM"
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
      Height          =   6135
      Left            =   720
      TabIndex        =   8
      Top             =   1320
      Width           =   8730
      _ExtentX        =   15399
      _ExtentY        =   10821
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "              "
      TabPicture(0)   =   "RMIInspect.frx":0DD8
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame7"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   1800
         Left            =   120
         TabIndex        =   11
         Top             =   3360
         Width           =   7815
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "insrem"
            Height          =   330
            Index           =   15
            Left            =   2295
            MaxLength       =   50
            TabIndex        =   13
            Top             =   1365
            Width           =   5250
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "insbales"
            Height          =   330
            Index           =   14
            Left            =   2310
            MaxLength       =   5
            TabIndex        =   9
            Top             =   195
            Width           =   1455
         End
         Begin VB.Frame Frame4 
            Height          =   495
            Left            =   5790
            TabIndex        =   44
            Top             =   615
            Width           =   1695
            Begin VB.OptionButton Option2 
               Caption         =   "No"
               Height          =   195
               Left            =   930
               TabIndex        =   46
               Top             =   210
               Width           =   615
            End
            Begin VB.OptionButton Option1 
               Caption         =   "Yes"
               Height          =   195
               Left            =   150
               TabIndex        =   45
               Top             =   210
               Width           =   615
            End
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "passbl"
            Height          =   330
            Index           =   8
            Left            =   2325
            MaxLength       =   5
            TabIndex        =   10
            Top             =   600
            Width           =   1455
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "passdt"
            Height          =   330
            Index           =   1
            Left            =   2310
            TabIndex        =   12
            Top             =   990
            Width           =   1260
            _ExtentX        =   2223
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Inspected  Remarks"
            Height          =   195
            Left            =   165
            TabIndex        =   54
            Top             =   1455
            Width           =   1425
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Inspected  Bales"
            Height          =   195
            Left            =   195
            TabIndex        =   53
            Top             =   240
            Width           =   1185
         End
         Begin VB.Label Label9 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "In Godown"
            Height          =   195
            Left            =   4875
            TabIndex        =   43
            Top             =   765
            Width           =   780
         End
         Begin VB.Label Label1 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Passed No.of Bales/Borah"
            Height          =   195
            Left            =   165
            TabIndex        =   15
            Top             =   660
            Width           =   1890
         End
         Begin VB.Label Label2 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Passed Date"
            Height          =   195
            Left            =   180
            TabIndex        =   14
            Top             =   1095
            Width           =   915
         End
      End
      Begin VB.Frame Frame7 
         Height          =   3195
         Left            =   150
         TabIndex        =   16
         Top             =   135
         Width           =   7950
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   17
            Left            =   3885
            MaxLength       =   11
            TabIndex        =   56
            Top             =   2730
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "candyrate"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   16
            Left            =   1800
            MaxLength       =   9
            TabIndex        =   55
            Top             =   2745
            Width           =   885
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "COLORCODE"
            Height          =   330
            Index           =   13
            Left            =   1785
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   51
            Top             =   1440
            Width           =   1350
         End
         Begin VB.TextBox TXTFIELDS 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   12
            Left            =   3195
            TabIndex        =   50
            Top             =   1455
            Width           =   4680
         End
         Begin VB.TextBox TXTFIELDS 
            BeginProperty DataFormat 
               Type            =   0
               Format          =   "0"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
            Height          =   330
            Index           =   10
            Left            =   3195
            TabIndex        =   49
            Top             =   1050
            Width           =   4680
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "supcd"
            Height          =   330
            Index           =   11
            Left            =   7065
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   48
            Top             =   240
            Width           =   795
         End
         Begin VB.ComboBox Combo1 
            Height          =   315
            ItemData        =   "RMIInspect.frx":0DF4
            Left            =   3885
            List            =   "RMIInspect.frx":0E01
            Style           =   2  'Dropdown List
            TabIndex        =   41
            Top             =   1920
            Width           =   1110
         End
         Begin VB.TextBox TXTFIELDS 
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
            Height          =   330
            Index           =   6
            Left            =   1785
            MaxLength       =   9
            TabIndex        =   26
            Top             =   2340
            Width           =   885
         End
         Begin VB.TextBox TXTFIELDS 
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
            Height          =   330
            Index           =   7
            Left            =   6630
            MaxLength       =   11
            TabIndex        =   25
            Top             =   2355
            Width           =   1230
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "grosswt"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   5
            Left            =   3885
            MaxLength       =   11
            TabIndex        =   24
            Top             =   2340
            Width           =   1095
         End
         Begin VB.TextBox TXTFIELDS 
            Alignment       =   1  'Right Justify
            DataField       =   "quantity"
            BeginProperty DataFormat 
               Type            =   1
               Format          =   "0.000"
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   1
            EndProperty
            Height          =   330
            Index           =   4
            Left            =   1785
            MaxLength       =   5
            TabIndex        =   23
            Top             =   1875
            Width           =   900
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "cntcode"
            Height          =   330
            Index           =   3
            Left            =   6645
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   22
            Top             =   1905
            Width           =   1185
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "varcode"
            Height          =   330
            Index           =   2
            Left            =   1785
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   21
            Top             =   1050
            Width           =   1350
         End
         Begin VB.TextBox Text1 
            Height          =   330
            Left            =   3195
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   20
            Text            =   " "
            Top             =   675
            Width           =   4620
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "supcd"
            Height          =   330
            Index           =   1
            Left            =   1785
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   19
            Top             =   660
            Width           =   1350
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "supcd"
            Height          =   330
            Index           =   0
            Left            =   1785
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   18
            Top             =   255
            Width           =   735
         End
         Begin VB.TextBox TXTFIELDS 
            DataField       =   "supcd"
            Height          =   330
            Index           =   9
            Left            =   4785
            Locked          =   -1  'True
            MaxLength       =   100
            TabIndex        =   17
            Top             =   240
            Width           =   465
         End
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "ARRDATE"
            Height          =   330
            Index           =   0
            Left            =   3120
            TabIndex        =   27
            Top             =   255
            Width           =   1140
            _ExtentX        =   2011
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Kg"
            Height          =   195
            Index           =   2
            Left            =   2850
            TabIndex        =   58
            Top             =   2790
            Width           =   615
         End
         Begin VB.Label Label17 
            AutoSize        =   -1  'True
            Caption         =   "Rate/Candy"
            Height          =   195
            Left            =   345
            TabIndex        =   57
            Top             =   2775
            Width           =   870
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Color"
            Height          =   195
            Left            =   330
            TabIndex        =   52
            Top             =   1515
            Width           =   360
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Party Lot Number"
            Height          =   195
            Index           =   0
            Left            =   5685
            TabIndex        =   47
            Top             =   315
            Width           =   1230
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Unit"
            Height          =   195
            Index           =   1
            Left            =   2925
            TabIndex        =   42
            Top             =   1980
            Width           =   285
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   2655
            TabIndex        =   37
            Top             =   330
            Width           =   345
         End
         Begin VB.Label Label11 
            AutoSize        =   -1  'True
            Caption         =   "Mill Lot Number"
            Height          =   195
            Left            =   345
            TabIndex        =   36
            Top             =   330
            Width           =   1095
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   330
            TabIndex        =   35
            Top             =   1950
            Width           =   585
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Tare Weight"
            Height          =   195
            Left            =   330
            TabIndex        =   34
            Top             =   2370
            Width           =   885
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Gross Weight"
            Height          =   195
            Index           =   0
            Left            =   2835
            TabIndex        =   33
            Top             =   2385
            Width           =   960
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "Nett Weight"
            Height          =   195
            Index           =   0
            Left            =   5535
            TabIndex        =   32
            Top             =   2370
            Width           =   855
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Mixing Group"
            Height          =   195
            Left            =   5535
            TabIndex        =   31
            Top             =   1950
            Width           =   930
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Index           =   1
            Left            =   330
            TabIndex        =   30
            Top             =   1110
            Width           =   480
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Index           =   0
            Left            =   345
            TabIndex        =   29
            Top             =   720
            Width           =   570
         End
         Begin VB.Label Label3 
            Alignment       =   1  'Right Justify
            AutoSize        =   -1  'True
            Caption         =   "Type"
            Height          =   195
            Left            =   4380
            TabIndex        =   28
            Top             =   330
            Width           =   360
         End
      End
   End
   Begin VB.Frame Frame2 
      Height          =   5475
      Left            =   720
      TabIndex        =   38
      Top             =   1320
      Visible         =   0   'False
      Width           =   8160
      Begin VB.CommandButton Command1 
         Caption         =   "OK"
         Height          =   480
         Left            =   3420
         TabIndex        =   39
         Top             =   3930
         Width           =   1245
      End
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   3225
         Left            =   300
         TabIndex        =   40
         Top             =   390
         Width           =   7545
         _ExtentX        =   13309
         _ExtentY        =   5689
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
         AllowDelete     =   -1  'True
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Caption         =   "Arrival/Transfer Details"
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Inspection"
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
      Left            =   690
      TabIndex        =   0
      Top             =   780
      Width           =   1335
   End
End
Attribute VB_Name = "Frminspct"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Rs As Recordset
Dim rs1 As Recordset
Dim Opt As String
Dim oText As TextBox
Dim DB As Connection
Public Sub openconnection()
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.description & ") in procedure openconnection of Form Inspection"
End Sub

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
  desc.Caption = "Updation"
  DATLAB.Caption = pdate
  SSTab1.Visible = True
  BUTTON(9).Enabled = False
  'TabStrip1.Tabs.Clear
  Set adoPrimaryRS = New Recordset
  adoPrimaryRS.Open "select ARRNO,a.SUPCD,a.VARCODE,a.CNTCODE,QUANTITY,GROSSWT,TAREWT,NETWT,PASSED,PASSDT,ARRDATE,isgodown,a.COLORCODE,INSBALES,INSREM,ratecy FROM RM_ARRIVAL a WHERE (PASSED IS NOT NULL OR PASSDT IS NOT NULL) and arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
  'adoprimaryrs.Open "select ARRNO,SUPCD,VARCODE,CNTCODE,QUANTITY,GROSSWT,TAREWT,NETWT,PASSED,PASSDT,ARRDATE,isgodown,passbl FROM RM_ARRIVAL WHERE   arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "' order by arrno", db, adOpenStatic, adLockOptimistic
  Set Rs = New Recordset
  Rs.Open "select arrno,arrdate from rm_arrival where arrdate > ='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and passdt is null and passed is null and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
  'rs.Open "select arrno,arrdate from rm_arrival where arrdate > ='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", db, adOpenStatic, adLockBatchOptimistic
  DB.BeginTrans
  If Rs.RecordCount <> 0 Then
    Set grddatagrid.DataSource = Rs
    grddatagrid.Visible = True
    Frame2.Visible = True
    Frame2.ZOrder
    grddatagrid.Columns(0).Caption = "Arr.No."
    grddatagrid.Columns(1).Caption = "Date"
    grddatagrid.Columns(0).Width = 1000
    grddatagrid.Columns(1).Width = 3000
 Else
    'MsgBox "All Arrivals are Already inspected", vbInformation, head
     okflg = MsgBox("All Arrivals are Already inspected! Do You want Modify", vbYesNo, head + "Deletion Message")
      If okflg = vbYes Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select ARRNO,a.SUPCD,a.VARCODE,a.CNTCODE,QUANTITY,GROSSWT,TAREWT,NETWT,PASSED,PASSDT,ARRDATE,isgodown,a.COLORCODE,INSBALES,INSREM,ratecy FROM RM_ARRIVAL a WHERE arrdate>='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "' order by arrno", DB, adOpenStatic, adLockOptimistic
        Set Rs = New Recordset
        Rs.Open "select arrno,arrdate from rm_arrival where arrdate > ='" & Format(yfdate, "yyyy-mm-dd") & "' and arrdate<='" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
        Set grddatagrid.DataSource = Rs
        grddatagrid.Visible = True
        Frame2.Visible = True
        Frame2.ZOrder
        grddatagrid.Columns(0).Caption = "Arr.No."
        grddatagrid.Columns(1).Caption = "Date"
        grddatagrid.Columns(0).Width = 1000
        grddatagrid.Columns(1).Width = 3000
      Else
            DB.RollbackTrans
      End If
    BUTTON(9).Enabled = False
    'BUTTON(1).Enabled = False
    'db.RollbackTrans
    
  End If

Case 9
'     Save
Dim isg As String
    desc.Caption = "Save"
    DATLAB.Caption = pdate
    If Trim(txtFields(14).Text) = "" Then
       MsgBox "Quantity Inspected should not be empty", vbInformation, head
       txtFields(14).SetFocus
       Exit Sub
    End If
    If Trim(txtFields(8).Text) = "" Then
       MsgBox "Quantity Passed should not be empty", vbInformation, head
       txtFields(8).SetFocus
       Exit Sub
    End If
    If MaskEdBox1(1).Text = "__/__/____" Then
        MsgBox "Passed Date should not be empty", vbInformation, head
        MaskEdBox1(1).SetFocus
        Exit Sub
    End If
    If Option1.value = True Then
        isg = "Y"
    Else
        isg = "N"
    End If
    If txtFields(8).Text <> "" Then
        DB.Execute ("update rm_arrival set passbl=" & val(txtFields(8).Text) & ", isgodown='" & isg & "',insbales=" & val(txtFields(14).Text) & ",insrem='" & txtFields(15).Text & "' where arrno=" & txtFields(0).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'")
    ElseIf txtFields(8).Text = 0 Then
        DB.Execute ("update rm_arrival set passbl=" & val(txtFields(8).Text) & ", isgodown='" & isg & "',LOTRECQTY=null,insbales=" & val(txtFields(14).Text) & ",insrem='" & txtFields(15).Text & "' where arrno=" & txtFields(0).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'")
    End If
    DB.Execute ("update rm_arrival set passdt ='" & Format(MaskEdBox1(1).Text, "yyyy-mm-dd") & "'  where arrno=" & txtFields(0).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'")
    DB.Execute ("update rm_arrival set passed ='Y'  where arrno=" & txtFields(0).Text & " and arrdate='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' and  DIVCODE='" & Divcode & "'")
    MsgBox "Record Updated!", vbInformation, head
    DB.CommitTrans
    BUTTON(9).Enabled = False
    BUTTON(0).Enabled = True
Case 10
gocancel:
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    End Select
Case 11
    'EXIT
    Unload Me
End Select
End Sub
Private Sub DataCombo1_Change()
End Sub

Private Sub Command1_Click()
Set Rs = New Recordset
Rs.Open "select arrdate,a.SUPCD,a.VARCODE,a.CNTCODE,QUANTITY,GROSSWT,TAREWT,NETWT,arrno,a.bbflag,passbl,isgodown,plotno,a.COLORCODE,insbales,insrem,ratecy from rm_arrival a where arrno=" & val(grddatagrid.Columns(0).Text) & " and arrdate  ='" & Format(grddatagrid.Columns(1).Text, "yyyy-mm-dd") & "'AND a.DIVCODE='" & Divcode & "' ", DB, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
    txtFields(1).Text = Rs(1)
    txtFields(2).Text = Rs(2)
    txtFields(13).Text = Rs("COLORCODE")
    If Trim(txtFields(2).Text) <> "" Then
        Set rs1 = New Recordset
        rs1.Open "Select varname from rm_var where varcode='" & txtFields(2).Text & "' ", DB, adOpenStatic
        If Not rs1.EOF Then
        txtFields(10).Text = rs1("varname")
        txtFields(10).Locked = True
        End If
    End If
    If Trim(txtFields(13).Text) <> "" Then
        Set rs1 = New Recordset
        rs1.Open "Select COLORname from rm_COLOR where COLORcode='" & txtFields(13).Text & "' ", DB, adOpenStatic
        If Not rs1.EOF Then
        txtFields(12).Text = rs1("COLORname")
        txtFields(12).Locked = True
        End If
    End If
    txtFields(3).Text = Rs(3)
    txtFields(4).Text = Rs(4)
    txtFields(5).Text = Rs(5)
    txtFields(6).Text = Rs(6)
    txtFields(7).Text = Rs(7)
    txtFields(0).Text = Rs(8)
    txtFields(8).Text = IIf(IsNull(Rs(10)), 0, Rs(10))
    txtFields(14).Text = IIf(IsNull(Rs("insbales")), 0, Rs("insbales"))
    txtFields(11).Text = IIf(IsNull(Rs("plotno")), 0, Rs("plotno"))
    txtFields(16).Text = Rs("ratecy")
    txtFields(17).Text = Rs("ratecy") / 355.62
    If Rs(9) = "B" Then
    Combo1.Text = "Bale"
    Else
    Combo1.Text = "Borah"
    End If
    If Rs(11) = "Y" Then
        Option1.value = True
    Else
        Option2.value = True
    End If
    Combo1.Locked = True
    MaskEdBox1(0).Text = Rs(0)
    For i = 1 To 7
    txtFields(i).Locked = True
    Next
    MaskEdBox1(0).Enabled = False
    txtFields(14).Locked = False
    txtFields(15).Locked = False
    txtFields(8).Locked = False
    txtFields(14).SetFocus
    If Rs(10) = "" Then
        txtFields(8).Text = ""
        txtFields(14).Text = ""
    Else
        'Option1.SetFocus
    End If
    MaskEdBox1(1).Enabled = True
    MaskEdBox1(1).Text = pdate
    BUTTON(9).Enabled = True
    BUTTON(0).Enabled = False
    txtFields(5).Text = Format(txtFields(5).Text, "#0.000")
    txtFields(6).Text = Format(txtFields(6).Text, "#0.000")
    txtFields(7).Text = Format(txtFields(7).Text, "#0.000")
    Frame2.Visible = False
End If


End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
  Call openconnection
  desc.Caption = "Updation"
  DATLAB.Caption = pdate
  'TabStrip1.Tabs.Clear
  SSTab1.Visible = True
  BUTTON(9).Enabled = False
  BUTTON(0).Enabled = True
End Sub

Private Sub Form_Unload(Cancel As Integer)
  Opt = ""
  Screen.MousePointer = vbDefault
End Sub

Private Sub MaskEdBox1_Change(Index As Integer)
Select Case Index
Case 1
If (MaskEdBox1(1).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(1).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(1).Text = pdate
        MaskEdBox1(1).SetFocus
    End If
End If
End Select
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
Select Case Index
Case 1
    If (MaskEdBox1(1).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
    If Not (IsDate(MaskEdBox1(1).Text)) Then
        MsgBox ("invalid date"), vbInformation, head
        MaskEdBox1(1).Text = pdate
        MaskEdBox1(1).SetFocus
    ElseIf CDate(MaskEdBox1(1).Text) > CDate(MaskEdBox1(0).Text) Then
            MsgBox "Inspection Date should be After Arrival Date", vbInformation, head
            MaskEdBox1(1).Text = MaskEdBox1(0).Text
    End If
End If
End Select
End Sub

Private Sub Txtfields_Change(Index As Integer)
If Opt = "add" Or Opt = "" Or Opt = " " Then
Select Case Index
Case 1
   Set rs1 = New Recordset
   rs1.Open "select slname from fa_slmas where slcode = '" & txtFields(1).Text & "'", DB, adOpenStatic
   If rs1.RecordCount <> 0 Then
     Text1.Text = rs1(0)
   End If
   rs1.Close
End Select
End If
End Sub

Private Sub txtFields_GotFocus(Index As Integer)

Select Case Index
Case 0
If Opt = "add" Then
   Set Rs = New Recordset
   Rs.Open "select * from rm_arrival  where (passed is null or passdt is null)", DB, adOpenStatic, adLockBatchOptimistic
   If Rs.RecordCount = 0 Then
        MsgBox "Inspection Completed for all the Arrivals", vbInformation, head
        Call BUTTON_Click(10)
   Else
      Label15.Caption = "Arrival Details"
      KslList1.conn = connectstring
      KslList1.Table = "rm_arrival where (passed is null or passdt is  null)"
      KslList1.listfield1 = "cast(arrno as varchar)"
      KslList1.listfield2 = "convert(varchar,arrdate,103)"
      Frame3.Visible = True
      Frame3.ZOrder
  End If
End If
Case 8
StatusBar1.Panels(2).Text = "Enter Number of Bales"

End Select
End Sub

Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
Case 8
    If KeyAscii = 45 Then KeyAscii = 0
    tonum txtFields(Index), 5, KeyAscii
End Select

End Sub

Private Sub txtFields_LostFocus(Index As Integer)
Select Case Index
Case 14
   If txtFields(14).Text = "" Then
      MsgBox "Quantity Inspected cannot be empty", vbInformation, head
      txtFields(14).SetFocus
      Exit Sub
   ElseIf val(txtFields(14).Text) > val(txtFields(4).Text) Then
        MsgBox "Quantity Inspected should not be greater than Quantity arrived", vbInformation, head
        txtFields(14).Text = txtFields(4).Text
   Else
        txtFields(8).SetFocus
   End If
Case 8
    If val(txtFields(8).Text) > val(txtFields(14).Text) Then
        MsgBox "Quantity Inspected should not be greater than Quantity arrived", vbInformation, head
        txtFields(8).Text = txtFields(4).Text
    Else
        'txtfields(10).SetFocus
        Option1.SetFocus
    End If
End Select
End Sub

