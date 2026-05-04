VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmVarstock 
   Caption         =   "Varietywise Stock Position"
   ClientHeight    =   5550
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10950
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   5550
   ScaleWidth      =   10950
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame7 
      Height          =   700
      Left            =   0
      TabIndex        =   13
      Top             =   -120
      Visible         =   0   'False
      Width           =   4800
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVarstock.frx":0000
         Height          =   550
         Index           =   10
         Left            =   525
         Picture         =   "RMIVarstock.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   11
         Left            =   1050
         Picture         =   "RMIVarstock.frx":0686
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   10
         Picture         =   "RMIVarstock.frx":0AD0
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Find"
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
         Left            =   3555
         TabIndex        =   17
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
         Left            =   1860
         TabIndex        =   16
         Top             =   255
         Width           =   600
      End
   End
   Begin VB.Frame Frame6 
      Height          =   6075
      Left            =   360
      TabIndex        =   3
      Top             =   960
      Visible         =   0   'False
      Width           =   8805
      Begin VB.Frame Frame4 
         Height          =   630
         Left            =   180
         TabIndex        =   25
         Top             =   4800
         Width           =   8445
         Begin VB.Label LblQtyKg 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   6720
            TabIndex        =   29
            Top             =   180
            Width           =   1620
         End
         Begin VB.Label LblBorah 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   5760
            TabIndex        =   28
            Top             =   180
            Width           =   900
         End
         Begin VB.Label LblBales 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   4800
            TabIndex        =   27
            Top             =   180
            Width           =   900
         End
         Begin VB.Label Label1 
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
            Height          =   210
            Left            =   3000
            TabIndex        =   26
            Top             =   240
            Width           =   1140
         End
      End
      Begin MSDataGridLib.DataGrid CategoryGrid 
         Height          =   1335
         Left            =   180
         TabIndex        =   24
         Top             =   440
         Width           =   8415
         _ExtentX        =   14843
         _ExtentY        =   2355
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   12582912
         HeadLines       =   1
         RowHeight       =   15
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
            Name            =   "MS Sans Serif"
            Size            =   8.25
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
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   4680
         TabIndex        =   7
         Top             =   5520
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   390
         Left            =   3360
         TabIndex        =   6
         Top             =   5520
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   2625
         Left            =   180
         TabIndex        =   4
         Top             =   2130
         Visible         =   0   'False
         Width           =   8445
         _ExtentX        =   14896
         _ExtentY        =   4630
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
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select A Variety Code"
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
         Left            =   3360
         TabIndex        =   30
         Top             =   1800
         Width           =   2295
      End
      Begin VB.Label Label11 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Select A Category Code"
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
         Left            =   3240
         TabIndex        =   5
         Top             =   120
         Width           =   2505
      End
   End
   Begin VB.Frame Frame2 
      Height          =   3540
      Left            =   480
      TabIndex        =   8
      Top             =   3480
      Width           =   8580
      Begin VB.Frame Frame3 
         Height          =   630
         Left            =   135
         TabIndex        =   10
         Top             =   2775
         Width           =   8325
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
            Height          =   210
            Left            =   240
            TabIndex        =   22
            Top             =   225
            Width           =   1140
         End
         Begin VB.Label lblgrwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   1560
            TabIndex        =   21
            Top             =   180
            Width           =   1980
         End
         Begin VB.Label lbltarwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   3765
            TabIndex        =   20
            Top             =   180
            Width           =   1980
         End
         Begin VB.Label lblnetwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
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
            ForeColor       =   &H00404040&
            Height          =   330
            Left            =   5940
            TabIndex        =   19
            Top             =   180
            Width           =   1980
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   2505
         Left            =   120
         TabIndex        =   9
         Top             =   270
         Width           =   8325
         _ExtentX        =   14684
         _ExtentY        =   4419
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   -2147483646
         HeadLines       =   1
         RowHeight       =   15
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
            Size            =   8.25
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
   Begin VB.Frame Frame1 
      Height          =   2475
      Left            =   480
      TabIndex        =   2
      Top             =   960
      Width           =   8580
      Begin VB.CommandButton Command1 
         Caption         =   "E&xit"
         Height          =   390
         Left            =   4440
         TabIndex        =   23
         Top             =   1920
         Width           =   975
      End
      Begin VB.CommandButton cmdok 
         Caption         =   "&OK"
         Height          =   390
         Left            =   3120
         TabIndex        =   12
         Top             =   1920
         Width           =   975
      End
      Begin MSDataGridLib.DataGrid DataGrid3 
         Height          =   1605
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   8325
         _ExtentX        =   14684
         _ExtentY        =   2831
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
      Height          =   6135
      Left            =   360
      TabIndex        =   1
      Top             =   960
      Width           =   8880
      _ExtentX        =   15663
      _ExtentY        =   10821
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Varietywise Stock Position"
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
      Left            =   360
      TabIndex        =   0
      Top             =   600
      Width           =   3555
   End
End
Attribute VB_Name = "FrmVarstock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents adoPrimaryRS1 As Recordset
Attribute adoPrimaryRS1.VB_VarHelpID = -1

Dim adoSecondaryRS As Recordset
Dim adoSecondaryRS1 As Recordset
Dim DB As Connection
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
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click", vbInformation, head
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
Frame2.Visible = False

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
 If Opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    DataGrid1.ZOrder
    Set Rs = New Recordset
    Rs.Open "select catcd""Category"",catname""Category Name""  from rm_cat ", DB, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount = 0 Then
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Set CategoryGrid.DataSource = Rs
        Call Category_Align
        intervalMinutes = -1
        Exit Sub
    End If
    Set CategoryGrid.DataSource = Rs
    Call Category_Align
    Call CategoryGrid_Click
    
 End If
intervalMinutes = -1
Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
    End Sub

Private Sub CategoryGrid_Click()
On Error GoTo CategoryGrid_Click_Error
intervalMinutes = -1
Set adoPrimaryRS = New Recordset
'adoPrimaryRS.Open "select z.varname""Variety"",z.catcd""Category"",sum(isnull(z.Bales,0)) ""Bales"",sum(isnull(z.Borah,0)) ""Borah"",(sum(z.netwt)- sum(z.isswt)) ""Qty-Kg"" from (select a.varname,a.catcd""catcd"",Bales = (case when b.bblflg = 'B' then (isnull(b.bales,0)-isnull(b.issbal,0)) end),Borah = (case when b.bblflg = 'R' then (isnull(b.bales,0) -  isnull(b.issbal,0)) end),isnull(b.netwt,0)""netwt"",isnull(b.isswt,0)""isswt"" from rm_var a,rm_lot b where b.divcode = '" & divcode & "' and a.varcode = b.varcode and a.catcd = b.catcd and (isnull(b.bales,0) - isnull(b.issbal,0)) > 0)z group by z.varname,z.catcd", db, adOpenStatic, adLockBatchOptimistic
''adoPrimaryRS.Open "select z.varcode""Variety"",z.varname as ""Variety Name"",z.catcd""Category"",sum(isnull(z.Bales,0)) ""Bales"",sum(isnull(z.Borah,0)) ""Borah"",(sum(z.netwt)- sum(z.isswt)) ""            Qty-Kg"" from (select a.varcode,c.varname,a.catcd""catcd"",Bales = (case when b.bblflg = 'B' then (isnull(b.bales,0)-isnull(b.issbal,0)) end),Borah = (case when b.bblflg = 'R' then (isnull(b.bales,0) -  isnull(b.issbal,0)) end),isnull(b.netwt,0)""netwt"",isnull(b.isswt,0)""isswt"" from rm_var a,rm_lot b,rm_var c where b.divcode = '" & Divcode & "' and a.varcode=c.varcode and a.varcode = b.varcode and a.catcd = b.catcd and (isnull(b.bales,0) - isnull(b.issbal,0)) > 0)z group by z.varcode,z.catcd,z.varname", DB, adOpenStatic, adLockBatchOptimistic
adoPrimaryRS.Open "select z.varcode""Variety"",z.varname as ""Variety Name"",z.catcd""Category"",sum(isnull(z.Bales,0)) ""Bales"",sum(isnull(z.Borah,0)) ""Bale"",(sum(z.netwt)- sum(z.isswt)) ""            Qty-Kg"" from (select a.varcode,c.varname,a.catcd""catcd"",Bales = (case when b.bblflg = 'B' then (isnull(b.bales,0)-isnull(b.issbal,0)) end),Borah = (case when b.bblflg in ('R','H') then (isnull(b.bales,0) -  isnull(b.issbal,0)) end),isnull(b.netwt,0)""netwt"",isnull(b.isswt,0)""isswt"" from rm_var a,rm_lot b,rm_var c where b.divcode = '" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and a.varcode=c.varcode and a.varcode = b.varcode and a.catcd = b.catcd and a.catcd='" & Trim(CategoryGrid.Columns(0).Text) & "' and (isnull(b.bales,0) - isnull(b.issbal,0)) > 0)z group by z.varcode,z.catcd,z.varname", DB, adOpenStatic, adLockBatchOptimistic
Set TotRs = New Recordset
TotRs.Open "select sum(isnull(z.Bales,0)) Bales,sum(isnull(z.Borah,0)) Bale,(sum(z.netwt)- sum(z.isswt)) QtyKg from (select a.varcode,c.varname,a.catcd""catcd"",Bales = (case when b.bblflg = 'B' then (isnull(b.bales,0)-isnull(b.issbal,0)) end),Borah = (case when b.bblflg  IN ('R','H') then (isnull(b.bales,0) -  isnull(b.issbal,0)) end),isnull(b.netwt,0)""netwt"",isnull(b.isswt,0)""isswt"" from rm_var a,rm_lot b,rm_var c where b.divcode = '" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and a.varcode=c.varcode and a.varcode = b.varcode and a.catcd = b.catcd and a.catcd='" & Trim(CategoryGrid.Columns(0).Text) & "' and (isnull(b.bales,0) - isnull(b.issbal,0)) > 0)z ", DB, adOpenStatic, adLockBatchOptimistic
If TotRs.RecordCount > 0 Then
    LblBales.Caption = IIf(IsNull(TotRs("bales")), 0, TotRs("bales"))
    LblBorah.Caption = IIf(IsNull(TotRs("bale")), 0, TotRs("bale"))
    LblQtyKg.Caption = IIf(IsNull(TotRs("QtyKg")), 0, Format(TotRs("QtyKg"), "#######.000"))
End If
If adoPrimaryRS.BOF Then
  MsgBox "No Varieties Found", vbInformation, head
End If
Set DataGrid1.DataSource = adoPrimaryRS
DataGrid1.Columns(0).Visible = False
DataGrid1.Columns(0).Width = 0
DataGrid1.Columns(1).Width = 3885.166
DataGrid1.Columns(2).Width = 1000.189
DataGrid1.Columns(3).Width = 650
DataGrid1.Columns(4).Width = 0
DataGrid1.Columns(5).Width = 1484.787
DataGrid1.Columns(2).Alignment = dbgLeft
DataGrid1.Columns(3).Alignment = dbgRight
DataGrid1.Columns(4).Alignment = dbgRight
DataGrid1.Columns(5).Alignment = dbgRight
DataGrid1.Columns(5).NumberFormat = Format("########.000")
DataGrid1.AllowUpdate = False
''If adoPrimaryRS.BOF Then
''   MsgBox "No Records Found", vbInformation, head
''   Exit Sub
''End If
  
Frame6.ZOrder
intervalMinutes = -1
Exit Sub
CategoryGrid_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CategoryGrid_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdOK_Click()
On Error GoTo cmdOk_Click_Error
intervalMinutes = -1
          On Error Resume Next
          Set adoSecondaryRS = New Recordset
          adoSecondaryRS.Open "select baleno  ""Bale No"" ,grwt ""          Gross Weight"",netwt ""                Net Weight"",(isnull(netwt,0)-isnull(isqty,0)) ""        Current Stock"" from rm_bale where(isnull(netwt,0)-isnull(isqty,0)) > 0 and catcd = '" & DataGrid3.Columns(0).Text & "' and lotno = '" & DataGrid3.Columns(1).Text & "' and lotdt = '" & Format(DataGrid3.Columns(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid3.Columns(4).Text & "' order by baleno", DB, adOpenStatic, adLockBatchOptimistic
          If adoSecondaryRS.EOF = True Then
          MsgBox "No Records Found", vbInformation, head
          Me.MousePointer = 0
          Exit Sub
          End If
          
          Set DataGrid2.DataSource = adoSecondaryRS
          DataGrid2.AllowUpdate = False
          DataGrid2.Columns(0).Width = 930.142
          DataGrid2.Columns(1).Width = 2069.858
          DataGrid2.Columns(2).Width = 2204.788
          DataGrid2.Columns(3).Width = 1964.976
          DataGrid2.Columns(0).NumberFormat = "######"
          DataGrid2.Columns(1).NumberFormat = "########.000"
          DataGrid2.Columns(2).NumberFormat = "########.000"
          DataGrid2.Columns(3).NumberFormat = "########.000"
          DataGrid2.Columns(0).Alignment = dbgRight
          DataGrid2.Columns(1).Alignment = dbgRight
          DataGrid2.Columns(2).Alignment = dbgRight
          DataGrid2.Columns(3).Alignment = dbgRight
          DataGrid2.AllowUpdate = False
          Set adoSecondaryRS = New Recordset
          adoSecondaryRS.Open "select sum(isnull(a.grwt,0)),sum(isnull(a.netwt,0)),sum(isnull(a.netwt,0)-isnull(a.isqty,0)) from rm_bale a,rm_lot b where a.lottype = b.lottype and a.lottype = '" & DataGrid3.Columns(4).Text & "' and b.lotyear='" & Year(yfdate) & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & DataGrid3.Columns(0).Text & "' and a.lotno = '" & DataGrid3.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid3.Columns(2).Text, "yyyy-mm-dd") & "' and b.catcd = a.catcd and b.lotno = a.lotno and b.lotdt = a.lotdt and b.divcode = '" & Divcode & "' group by a.catcd,a.lotno,a.lotdt", DB, adOpenStatic, adLockBatchOptimistic
          If Not adoSecondaryRS.BOF Then
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
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
           End If
intervalMinutes = -1
Exit Sub
cmdOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdOk_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
          
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame6.Visible = True
Frame1.Visible = False
Frame2.Visible = False

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error
intervalMinutes = -1
On Error Resume Next
If Opt = " " Then
         'Call disabletxt
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select a.catcd ""Category"",a.lotno ""    Lot No."",a.lotdt ""      Lot Date"",(isnull(a.bales,0)-isnull(a.issbal,0))""      No.Bales"",a.lottype ""Lot Type"" from rm_lot a,rm_var b where a.divcode = '" & Divcode & "' and a.lotyear='" & Year(yfdate) & "' and  a.varcode = '" & DataGrid1.Columns(0).Text & "' and a.catcd = '" & DataGrid1.Columns(2).Text & "' and a.catcd = b.catcd and a.varcode = b.varcode  AND (isnull(a.bales,0)-isnull(a.issbal,0)) > 0", DB, adOpenStatic, adLockBatchOptimistic
    Set DataGrid3.DataSource = adoSecondaryRS
    DataGrid3.Columns(0).Width = 1035.213
    DataGrid3.Columns(1).Width = 1000.095
    DataGrid3.Columns(2).Width = 1320.094
    DataGrid3.Columns(3).Width = 1365.165
    DataGrid3.Columns(4).Width = 1995.024
    DataGrid3.Columns(1).Alignment = dbgRight
    DataGrid3.Columns(2).Alignment = dbgRight
    DataGrid3.Columns(3).Alignment = dbgRight
    DataGrid3.Columns(4).Alignment = dbgLeft
    DataGrid3.AllowUpdate = False
    Frame6.Visible = False
    Frame1.Visible = True
    Frame2.Visible = True
    Call DataGrid3_Click
End If

Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error

Call BUTTON_Click(11)
'Frame6.Visible = False
intervalMinutes = -1
Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command3_Click
intervalMinutes = -1
Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error
intervalMinutes = -1
KeyAscii = 0

Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_Click()
'All cmdok_Click
End Sub

Private Sub DataGrid3_Click()
On Error GoTo DataGrid3_Click_Error

Call cmdOK_Click

Exit Sub
DataGrid3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid3_Click of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
  Opt = " "
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  BUTTON(3).Enabled = False
  
  Call query_mode
  'Frame1.Visible = True
  'Frame5.Visible = True
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
  End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  Reset

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
  End Sub

'Public Sub clearval()
'For i = 0 To 8
'  txtfields(i).Text = ""
'Next
'End Sub
Public Sub disabletxt()
'For i = 0 To 8
'  txtFields(i).Locked = True
'Next
'lblqty.Visible = False
'lblnetwt.Visible = False
'lblgrwt.Visible = False
'lbltarwt.Visible = False
'DataGrid2.Enabled = False

On Error GoTo disabletxt_Error

    

Exit Sub
disabletxt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disabletxt of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
'    'To lock the textboxes and datagrid
'    Dim oText As TextBox
'    'Bind the text boxes to the recordset
'    For Each oText In Me.txtFields
'        oText.Locked = True
'    Next

On Error GoTo disablcontls_Error

    

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub
'Public Sub ENABLCONTLS()
'    'To lock the textboxes and datagrid
'    Dim oText As TextBox
'    'Bind the text boxes to the data provider
'    For Each oText In Me.txtfields
'        oText.Locked = False
'    Next
'End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
'KeyAscii = 0
On Error GoTo Text1_KeyPress_Error

    

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
'KeyAscii = 0
On Error GoTo Text2_KeyPress_Error

On Error GoTo Text2_KeyPress_Error

    

Exit Sub
Text2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_KeyPress of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
'KeyAscii = 0
On Error GoTo Text3_KeyPress_Error

    

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

'End Select


Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)

End Sub

Private Sub txtfields_LostFocus(Index As Integer)

End Sub

Public Sub Category_Align()
On Error GoTo Category_Align_Error

CategoryGrid.Columns(0).Width = 1500
CategoryGrid.Columns(1).Width = 3500

Exit Sub
Category_Align_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Category_Align of Form FrmVarstock", vbInformation, head
Screen.MousePointer = 0
End Sub

