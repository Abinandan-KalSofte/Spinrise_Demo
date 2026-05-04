VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Begin VB.Form FrmLotstock 
   Caption         =   "Lot Stock Position"
   ClientHeight    =   7395
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9765
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7395
   ScaleWidth      =   9765
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame7 
      Height          =   700
      Left            =   0
      TabIndex        =   7
      Top             =   -90
      Visible         =   0   'False
      Width           =   5040
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotstock.frx":0000
         Height          =   550
         Index           =   10
         Left            =   525
         Picture         =   "RMILotstock.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   11
         Left            =   1050
         Picture         =   "RMILotstock.frx":0686
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   10
         Picture         =   "RMILotstock.frx":0AD0
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "List"
         Top             =   135
         Width           =   510
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
         TabIndex        =   11
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
         TabIndex        =   10
         Top             =   255
         Width           =   600
      End
   End
   Begin VB.Frame Frame1 
      Height          =   2100
      Left            =   1920
      TabIndex        =   20
      Top             =   1080
      Width           =   8820
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000014&
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
         Index           =   1
         Left            =   4590
         TabIndex        =   29
         Top             =   210
         Width           =   1155
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   6
         Left            =   7185
         TabIndex        =   28
         Top             =   930
         Width           =   1530
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   0
         Left            =   2040
         TabIndex        =   27
         Top             =   225
         Width           =   1485
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   7
         Left            =   2040
         TabIndex        =   26
         Top             =   1305
         Width           =   1485
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   4
         Left            =   7185
         TabIndex        =   25
         Top             =   577
         Width           =   1530
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   3
         Left            =   4590
         TabIndex        =   24
         Top             =   585
         Width           =   1185
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   2
         Left            =   7185
         TabIndex        =   23
         Top             =   225
         Width           =   1530
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   5
         Left            =   2040
         TabIndex        =   22
         Top             =   930
         Width           =   3735
      End
      Begin VB.TextBox txtfields 
         BackColor       =   &H80000014&
         DataField       =   " "
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
         Index           =   8
         Left            =   2040
         TabIndex        =   21
         Top             =   600
         Width           =   1500
      End
      Begin VB.Label lblqty 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000014&
         BorderStyle     =   1  'Fixed Single
         Caption         =   " "
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
         Left            =   2040
         TabIndex        =   40
         Top             =   1665
         Width           =   1485
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Mixing Count "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   5940
         TabIndex        =   39
         Top             =   1005
         Width           =   1170
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Qty Available(Kg)"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   195
         TabIndex        =   38
         Top             =   1740
         Width           =   1560
      End
      Begin VB.Label Label9 
         AutoSize        =   -1  'True
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   195
         TabIndex        =   37
         Top             =   300
         Width           =   825
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Bales Available"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   195
         TabIndex        =   36
         Top             =   1380
         Width           =   1425
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Lot No"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   3735
         TabIndex        =   35
         Top             =   265
         Width           =   585
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Bill No."
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   3720
         TabIndex        =   34
         Top             =   640
         Width           =   630
      End
      Begin VB.Label Label7 
         AutoSize        =   -1  'True
         Caption         =   "Bill Date "
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   5940
         TabIndex        =   33
         Top             =   645
         Width           =   795
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   195
         TabIndex        =   32
         Top             =   1005
         Width           =   630
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Lot Date"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   5940
         TabIndex        =   31
         Top             =   260
         Width           =   750
      End
      Begin VB.Label Label12 
         AutoSize        =   -1  'True
         Caption         =   "Lot Type"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000006&
         Height          =   240
         Left            =   195
         TabIndex        =   30
         Top             =   675
         Width           =   795
      End
   End
   Begin VB.Frame Frame2 
      Height          =   3450
      Left            =   1920
      TabIndex        =   13
      Top             =   3120
      Width           =   8820
      Begin VB.CommandButton Command1 
         Caption         =   "E&xit"
         Height          =   375
         Left            =   3840
         TabIndex        =   41
         Top             =   3000
         Width           =   1095
      End
      Begin VB.Frame Frame3 
         Height          =   630
         Left            =   120
         TabIndex        =   14
         Top             =   2250
         Width           =   8295
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "* Total *"
            BeginProperty Font 
               Name            =   "Courier New"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   240
            Left            =   360
            TabIndex        =   18
            Top             =   195
            Width           =   945
         End
         Begin VB.Label lblgrwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   1  'Fixed Single
            Caption         =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   1545
            TabIndex        =   17
            Top             =   180
            Width           =   2025
         End
         Begin VB.Label lbltarwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   1  'Fixed Single
            Caption         =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   3660
            TabIndex        =   16
            Top             =   180
            Width           =   2025
         End
         Begin VB.Label lblnetwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H00FFFFFF&
            BorderStyle     =   1  'Fixed Single
            Caption         =   " "
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000008&
            Height          =   330
            Left            =   5760
            TabIndex        =   15
            Top             =   180
            Width           =   2025
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   1965
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   8295
         _ExtentX        =   14631
         _ExtentY        =   3466
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   -2147483646
         HeadLines       =   1
         RowHeight       =   19
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
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
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   5580
      Left            =   1800
      TabIndex        =   1
      Top             =   1080
      Width           =   9090
      _ExtentX        =   16034
      _ExtentY        =   9843
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame6 
      Height          =   4995
      Left            =   2400
      TabIndex        =   2
      Top             =   1440
      Visible         =   0   'False
      Width           =   7845
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         Height          =   390
         Left            =   4260
         TabIndex        =   6
         Top             =   4455
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Height          =   390
         Left            =   3060
         TabIndex        =   5
         Top             =   4455
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   3660
         Left            =   270
         TabIndex        =   3
         Top             =   600
         Visible         =   0   'False
         Width           =   7410
         _ExtentX        =   13070
         _ExtentY        =   6456
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   8388608
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
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
               Type            =   1
               Format          =   "dd/MM/yyyy"
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
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select A Lot Number"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   3000
         TabIndex        =   4
         Top             =   240
         Width           =   2130
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot Stock Position"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   360
      Left            =   1800
      TabIndex        =   0
      Top             =   600
      Width           =   2475
   End
End
Attribute VB_Name = "FrmLotstock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoSecondaryRS1 As Recordset
Dim db As Connection
Dim Opt As String
Dim deltype As String
Dim RW As Double
Dim FLGREPET As Boolean
Dim GRP As String
Dim rpt As String
Dim Fnd As String
Dim oldsecno As Integer
Dim oldsecval  As Double
Dim st1 As String, st2 As String
Dim ITARY() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 3
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'Browsing
    Opt = " "
    Call query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    Screen.MousePointer = 0
    
Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
    Screen.MousePointer = 0
    Call query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    
    
Case 11
    'EXIT
    Unload Me
End Select
intervalMinutes = -1
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
Frame2.Visible = False

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub query_mode()
intervalMinutes = -1
On Error Resume Next
 If Opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    Set adoPrimaryRS = New Recordset
    'adoprimaryrs.Open "select catcd ""Category Code"",lotno ""Lot No."",lotdt ""Date"",lottype ""Lot Type""  from rm_lot where divcode = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    'Ravi
    adoPrimaryRS.Open "select catcd ""Category"",lotno ""     Lot No."",lotdt "" Lot Date"",lottype ""Lot Type"",Varcode,Billdt,cntcode,bales,opflg  from rm_lot where divcode = '" & Divcode & "' and lotyear='" & Year(yfdate) & "' and isnull(BALES,0)-isnull(issbal,0) >0  ", db, adOpenStatic, adLockBatchOptimistic
    
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoPrimaryRS
       DataGrid1.Columns(0).Text = adoPrimaryRS(0)
       DataGrid1.Columns(1).Text = adoPrimaryRS(1)
       DataGrid1.Columns(2).Text = adoPrimaryRS(2)
       DataGrid1.Columns(3).Text = adoPrimaryRS(3)
       DataGrid1.Columns(0).Width = 1360.284
       DataGrid1.Columns(1).Width = 1114.835
       DataGrid1.Columns(2).Width = 1234.929
       DataGrid1.Columns(3).Width = 1080
       DataGrid1.Columns(1).Alignment = dbgRight
       DataGrid1.Columns(4).Visible = False
       DataGrid1.Columns(5).Visible = False
       DataGrid1.Columns(6).Visible = False
       DataGrid1.Columns(7).Visible = False
       DataGrid1.Columns(8).Visible = False
    End If
    For I = 0 To 7
        DataGrid1.Columns(I).Locked = True
    Next
    intervalMinutes = -1
    Frame6.ZOrder
 End If
 intervalMinutes = -1
    End Sub

Private Sub Command1_Click()
intervalMinutes = -1
On Error GoTo Command1_Click_Error

Frame1.Visible = False
Frame2.Visible = False
Frame6.Visible = True

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
intervalMinutes = -1
On Error Resume Next
If Opt = " " Then
         
         TXTFIELDS(0).Text = DataGrid1.Columns(0).Text 'Category Code
         TXTFIELDS(1).Text = DataGrid1.Columns(1).Text 'Lot No.
         TXTFIELDS(2).Text = DataGrid1.Columns(2).Text 'Date
         If UCase(DataGrid1.Columns(3).Text) = "T" Then
            TXTFIELDS(8).Text = "Transfer"       'Lot Type
         Else
            TXTFIELDS(8).Text = "Arrival"       'Lot Type
         End If
         'Ravi
'         Txtfields(5).Text = DataGrid1.Columns(4).Text 'Variety
'         Txtfields(6).Text = DataGrid1.Columns(6).Text 'Count
         TXTFIELDS(7).Text = DataGrid1.Columns(7).Text 'Bales
'         Txtfields(4).Text = DataGrid1.Columns(5).Text 'Bill date
         
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select distinct d.billno,d.billdt,b.varname,c.mixgrpname,(isnull(d.bales,0)-isnull(d.issbal,0)) from rm_var b inner join rm_lot d on  b.varcode=d.varcode   left join rm_mixgrp c on  d.cntcode=c.mixgrpcd  where d.lotno = '" & DataGrid1.Columns(1).Text & "' and d.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and d.catcd = '" & DataGrid1.Columns(0).Text & "' and d.divcode='" & Divcode & "' and d.lotyear='" & Year(yfdate) & "'", db, adOpenStatic
        If adoSecondaryRS(0).value = "" Then
             TXTFIELDS(3).Text = ""
        Else
            If IsNull(adoSecondaryRS(0)) Then
                TXTFIELDS(3).Text = " "
            Else
                TXTFIELDS(3).Text = adoSecondaryRS(0)
            End If
        End If
        If adoSecondaryRS(1).value = "" Then
             TXTFIELDS(4).Text = ""
        Else
             TXTFIELDS(4).Text = adoSecondaryRS(1)
        End If
        If adoSecondaryRS(2).value = "" Then
             TXTFIELDS(5).Text = ""
        Else
             TXTFIELDS(5).Text = adoSecondaryRS(2)
        End If
        If adoSecondaryRS(3).value = "" Then
             TXTFIELDS(6).Text = ""
        Else
             TXTFIELDS(6).Text = IIf(IsNull(adoSecondaryRS(3)), 0, adoSecondaryRS(3))
        End If
        If adoSecondaryRS(4).value = "" Then
             TXTFIELDS(7).Text = ""
        Else
             TXTFIELDS(7).Text = IIf(IsNull(adoSecondaryRS(4)) = True, Empty, adoSecondaryRS(4))
           'End If
        End If
        Set adoSecondaryRS = New Recordset
        adoSecondaryRS.Open "select sum(isnull(a.grwt,0)),sum(isnull(a.netwt,0)),sum(isnull(a.netwt,0)-isnull(a.isqty,0)) from rm_bale a,rm_lot b where a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & TXTFIELDS(0).Text & "' and a.lotno = '" & TXTFIELDS(1).Text & "' and a.lotdt = '" & Format(TXTFIELDS(2).Text, "yyyy-mm-dd") & "' and b.catcd = a.catcd and b.lotno = a.lotno and b.lotdt = a.lotdt and b.divcode = '" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' group by a.catcd,a.lotno,a.lotdt", db, adOpenStatic, adLockBatchOptimistic
        If Not adoSecondaryRS.BOF Then
             If adoSecondaryRS(2).value = "" Then
                  LBLQTY.Caption = 0
             Else
                  LBLQTY.Caption = Format(adoSecondaryRS(2), "########.000")
             End If
             If adoSecondaryRS(0).value = "" Then
                  lblgrwt.Caption = 0
             Else
                  lblgrwt.Caption = Format(adoSecondaryRS(0), "##########.000")
             End If
             If adoSecondaryRS(1).value = "" Then
                  lbltarwt.Caption = 0
             Else
                  lbltarwt.Caption = Format(adoSecondaryRS(1), "##########.000")
             End If
             If adoSecondaryRS(2).value = "" Then
                  LblNetWt.Caption = 0
             Else
                  LblNetWt.Caption = Format(adoSecondaryRS(2), "##########.000")
             End If
        Else
            MsgBox "No Stock for this Lot ", vbInformation, head
             Exit Sub
        End If
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select baleno  ""Bale No."" ,grwt ""            Gross Weight"",netwt ""         Net Weight"",(isnull(netwt,0)-isnull(isqty,0)) ""               Current Stock"" from rm_bale where lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(netwt,0)-isnull(isqty,0)) > 0 and catcd = '" & TXTFIELDS(0).Text & "' and lotno = '" & TXTFIELDS(1).Text & "' and lotdt = '" & Format(TXTFIELDS(2).Text, "yyyy-mm-dd") & "' " & _
        "order by baleno", db, adOpenStatic, adLockBatchOptimistic
        Set DataGrid2.DataSource = adoPrimaryRS
        DataGrid2.AllowUpdate = False
        If adoPrimaryRS.BOF Then
            MsgBox " No Records Found", vbInformation, head
        End If
        DataGrid2.Columns(0).Width = 1005.071
        DataGrid2.Columns(1).Width = 2220.094
        DataGrid2.Columns(2).Width = 1800.929
        DataGrid2.Columns(3).Width = 2385.071

        DataGrid2.Columns(0).NumberFormat = "########"
        DataGrid2.Columns(1).NumberFormat = "########.000"
        DataGrid2.Columns(2).NumberFormat = "########.000"
        DataGrid2.Columns(3).NumberFormat = "########.000"
        DataGrid2.Columns(0).Alignment = dbgRight
        DataGrid2.Columns(1).Alignment = dbgRight
        DataGrid2.Columns(2).Alignment = dbgRight
        DataGrid2.Columns(3).Alignment = dbgRight
        Frame6.Visible = False
        Frame1.Visible = True
        Frame2.Visible = True
        intervalMinutes = -1
        Call disabletxt
'         If opt = "updat" Or opt = " " Then
'             Call disabletxt
'            ' txtfields(7).Locked = False
'             DataGrid2.Col = 4
'           DataGrid2.SetFocus
'         End If
End If
intervalMinutes = -1
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command4_Click()
On Error GoTo Command4_Click_Error
intervalMinutes = -1
Call BUTTON_Click(11)

Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error
intervalMinutes = -1
Call Command3_Click

Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error
intervalMinutes = -1
KeyAscii = 0

Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
  Opt = " "
  Set db = New Connection
  db.CursorLocation = adUseClient
  db.Open "PROVIDER=MSDataShape;" + connectstring
  TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
   Call query_mode
  'Frame1.Visible = True
  'Frame5.Visible = True
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
  End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault
  On Error Resume Next
  db.Close
  Set adoPrimaryRS = Nothing
  Reset
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
  End Sub

Public Sub clearval()
For I = 0 To 8
  TXTFIELDS(I).Text = ""
Next
intervalMinutes = -1
End Sub
Public Sub disabletxt()
intervalMinutes = -1
For I = 0 To 8
  TXTFIELDS(I).Locked = True
Next
DataGrid2.Columns(0).Locked = True
DataGrid2.Columns(1).Locked = True
DataGrid2.Columns(2).Locked = True
DataGrid2.Columns(3).Locked = True
'DataGrid2.Columns(4).Locked = True
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.TXTFIELDS
        oText.Locked = True
    Next
intervalMinutes = -1
End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.TXTFIELDS
        oText.Locked = False
    Next
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
On Error GoTo Text1_KeyPress_Error

KeyAscii = 0

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
On Error GoTo Text2_KeyPress_Error
intervalMinutes = -1
KeyAscii = 0

Exit Sub
Text2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_KeyPress of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
On Error GoTo Text3_KeyPress_Error
intervalMinutes = -1
KeyAscii = 0

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form FrmLotstock", vbInformation, head
Screen.MousePointer = 0
End Sub

'End Select


Private Sub txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
'If Not Index = 12 Then
'KeyAscii = 0
'End If
'If Index = 12 Then
'ToNumber txtfields(12), KeyAscii
'If Len(txtfields(12)) = 10 Then KeyAscii = 0
'End If
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
'If opt = "add" Or opt = "mod" Then
'Select Case Index
'Case 12
'     Set ADOSECONDARYRS = New Recordset
'     ADOSECONDARYRS.Open "select isnull(acbal,0) from projl where divcode='" & txtfields(0).Text & "' and projno='" & txtfields(1).Text & "'  and projsno='" & txtfields(2).Text & "' and ficode='" & txtfields(3).Text & "' and ascode='" & txtfields(4).Text & "' ", Db, adOpenStatic, adLockBatchOptimistic
'    If Trim(txtfields(Index).Text) = "" Or Trim(txtfields(Index).Text) = Empty Then
'        MsgBox "Balance Amonut Should not be Empty", vbInformation, head
'        txtfields(12).SetFocus
'    Else
'        If Val(txtfields(12).Text) > Val(ADOSECONDARYRS(0)) Then
'        MsgBox "Balance Amount should not be Greater than Loan Amount", vbOKOnly, head
'        txtfields(12).Text = Val(ADOSECONDARYRS(0))
'        End If
'    End If
'End Select
'End If
End Sub
