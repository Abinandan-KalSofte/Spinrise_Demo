VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form FrmLotstock 
   Caption         =   " "
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   0
      Left            =   0
      Picture         =   "RMIVarietystock.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   29
      ToolTipText     =   "List"
      Top             =   -15
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   2
      Left            =   990
      Picture         =   "RMIVarietystock.frx":030A
      Style           =   1  'Graphical
      TabIndex        =   28
      ToolTipText     =   "Exit"
      Top             =   -15
      Width           =   500
   End
   Begin VB.CommandButton BUTTON 
      Height          =   455
      Index           =   1
      Left            =   495
      Picture         =   "RMIVarietystock.frx":0614
      Style           =   1  'Graphical
      TabIndex        =   27
      ToolTipText     =   "Cancel "
      Top             =   -15
      Width           =   500
   End
   Begin VB.Frame Frame2 
      Caption         =   " "
      Height          =   3210
      Left            =   240
      TabIndex        =   25
      Top             =   3405
      Width           =   8580
      Begin VB.Frame Frame3 
         Caption         =   " "
         Height          =   630
         Left            =   150
         TabIndex        =   33
         Top             =   2490
         Width           =   8265
         Begin VB.Label lblnetwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
            Caption         =   " "
            Height          =   330
            Left            =   5490
            TabIndex        =   38
            Top             =   180
            Width           =   1905
         End
         Begin VB.Label lbltarwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
            Caption         =   " "
            Height          =   330
            Left            =   3510
            TabIndex        =   37
            Top             =   180
            Width           =   1905
         End
         Begin VB.Label lblgrwt 
            Alignment       =   1  'Right Justify
            BackColor       =   &H80000005&
            Caption         =   " "
            Height          =   330
            Left            =   1545
            TabIndex        =   36
            Top             =   180
            Width           =   1905
         End
         Begin VB.Label Label10 
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
            Height          =   330
            Left            =   120
            TabIndex        =   34
            Top             =   180
            Width           =   1470
         End
      End
      Begin MSDataGridLib.DataGrid DataGrid2 
         Height          =   2205
         Left            =   240
         TabIndex        =   26
         Top             =   210
         Width           =   8175
         _ExtentX        =   14420
         _ExtentY        =   3889
         _Version        =   393216
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
   End
   Begin VB.Frame Frame1 
      Height          =   2100
      Left            =   225
      TabIndex        =   10
      Top             =   1275
      Width           =   8580
      Begin VB.TextBox txtfields 
         DataField       =   " "
         Height          =   330
         Index           =   6
         Left            =   7185
         TabIndex        =   32
         Top             =   930
         Width           =   1290
      End
      Begin VB.TextBox txtfields 
         DataField       =   " "
         Height          =   330
         Index           =   0
         Left            =   1665
         TabIndex        =   24
         Top             =   240
         Width           =   1290
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         DataField       =   " "
         Height          =   330
         Index           =   7
         Left            =   1665
         TabIndex        =   22
         Top             =   1320
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         DataField       =   " "
         Height          =   330
         Index           =   4
         Left            =   7170
         TabIndex        =   5
         Top             =   570
         Width           =   1305
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         DataField       =   " "
         Height          =   330
         Index           =   3
         Left            =   1650
         TabIndex        =   4
         Top             =   600
         Width           =   1290
      End
      Begin VB.TextBox txtfields 
         Alignment       =   1  'Right Justify
         Height          =   330
         Index           =   1
         Left            =   4200
         TabIndex        =   1
         Top             =   225
         Width           =   1215
      End
      Begin VB.TextBox txtfields 
         DataField       =   " "
         Height          =   330
         Index           =   2
         Left            =   7185
         TabIndex        =   2
         Top             =   225
         Width           =   1275
      End
      Begin VB.TextBox txtfields 
         DataField       =   " "
         Height          =   330
         Index           =   5
         Left            =   1665
         TabIndex        =   3
         Top             =   945
         Width           =   1275
      End
      Begin VB.Label lblqty 
         Alignment       =   1  'Right Justify
         BackColor       =   &H80000005&
         BorderStyle     =   1  'Fixed Single
         Caption         =   " "
         Height          =   330
         Left            =   1680
         TabIndex        =   35
         Top             =   1665
         Width           =   1485
      End
      Begin VB.Label Label6 
         Caption         =   "Count "
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5580
         TabIndex        =   31
         Top             =   960
         Width           =   1350
      End
      Begin VB.Label Label5 
         Caption         =   "Qty Available"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   150
         TabIndex        =   30
         Top             =   1665
         Width           =   1155
      End
      Begin VB.Label Label9 
         Caption         =   "Category"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   150
         TabIndex        =   23
         Top             =   240
         Width           =   1155
      End
      Begin VB.Label Label1 
         Caption         =   "Bales Available"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   150
         TabIndex        =   21
         Top             =   1305
         Width           =   1155
      End
      Begin VB.Label Label8 
         Caption         =   "Lot No"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   3075
         TabIndex        =   20
         Top             =   240
         Width           =   1065
      End
      Begin VB.Label Label3 
         Caption         =   "Billno"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   150
         TabIndex        =   19
         Top             =   600
         Width           =   1155
      End
      Begin VB.Label Label7 
         Caption         =   "Bill Date "
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5580
         TabIndex        =   18
         Top             =   600
         Width           =   1380
      End
      Begin VB.Label Label2 
         Caption         =   "Variety"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   150
         TabIndex        =   12
         Top             =   960
         Width           =   1155
      End
      Begin VB.Label Label4 
         Caption         =   "Lot Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   5580
         TabIndex        =   11
         Top             =   210
         Width           =   1395
      End
   End
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   5700
      Left            =   90
      TabIndex        =   9
      Top             =   975
      Width           =   8850
      _ExtentX        =   15610
      _ExtentY        =   10054
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Frame Frame4 
      Height          =   590
      Left            =   5430
      TabIndex        =   0
      Top             =   -135
      Width           =   3135
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   285
         Left            =   1800
         TabIndex        =   7
         Top             =   195
         Width           =   645
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   285
         Left            =   120
         TabIndex        =   6
         Top             =   195
         Width           =   630
      End
   End
   Begin VB.Frame Frame6 
      Height          =   3675
      Left            =   525
      TabIndex        =   13
      Top             =   1380
      Visible         =   0   'False
      Width           =   7725
      Begin VB.CommandButton Command4 
         Caption         =   "Cancel"
         Height          =   330
         Left            =   3780
         TabIndex        =   17
         Top             =   2985
         Width           =   825
      End
      Begin VB.CommandButton Command3 
         Caption         =   "OK"
         Height          =   345
         Left            =   2700
         TabIndex        =   16
         Top             =   2985
         Width           =   825
      End
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   2100
         Left            =   240
         TabIndex        =   14
         Top             =   600
         Visible         =   0   'False
         Width           =   7170
         _ExtentX        =   12647
         _ExtentY        =   3704
         _Version        =   393216
         ForeColor       =   8388608
         HeadLines       =   1
         RowHeight       =   18
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
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
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   285
         Left            =   3255
         TabIndex        =   15
         Top             =   240
         Width           =   1965
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot Stock Position"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   330
      Left            =   120
      TabIndex        =   8
      Top             =   480
      Width           =   2490
   End
End
Attribute VB_Name = "FrmLotstock"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim ADOSECONDARYRS1 As Recordset
Dim Db As Connection
Dim opt As String
Dim deltype As String
Dim RW As Double
Dim FLGREPET As Boolean
Dim GRP As String
Dim rpt As String
Dim Fnd As String
Dim oldsecno As Integer
Dim oldsecval  As Double
Dim st1 As String, st2 As String
Dim itary() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 0
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'Browsing
    opt = " "
    Call query_mode
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True
    BUTTON(2).Enabled = True
    Screen.MousePointer = 0
    
Case 1
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    opt = " "
    Screen.MousePointer = 0
    Call query_mode
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True
    BUTTON(2).Enabled = True
    
    
Case 2
    'EXIT
    Unload Me
End Select
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If
End Sub
Private Sub Command2_Click()
Frame2.Visible = False
End Sub
Private Sub query_mode()
 If opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select catcd,lotno,lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", Db, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoPrimaryRS
       DataGrid1.Columns(0).Text = adoPrimaryRS(0)
       DataGrid1.Columns(1).Text = adoPrimaryRS(1)
       DataGrid1.Columns(2).Text = adoPrimaryRS(2)
    End If
    Frame6.ZOrder
 End If
    End Sub
Private Sub Command3_Click()
On Error Resume Next
If opt = " " Then
         Call disabletxt
         txtfields(0).Text = DataGrid1.Columns(0).Text
         txtfields(1).Text = DataGrid1.Columns(1).Text
         txtfields(2).Text = DataGrid1.Columns(2).Text
         Set ADOSECONDARYRS = New Recordset
         ADOSECONDARYRS.Open "select d.billno,d.billdt,b.varname,c.cntname,(d.bales-d.issbal) from rm_arrival a,rm_var b,rm_count c,rm_lot d where a.divcode = d.divcode and  d.divcode = '" & divcode & "' and a.lotno = d.lotno and a.lotdt = d.lotdt and a.catcd = d.catcd and d.lotno = '" & DataGrid1.Columns(1).Text & "' and d.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and d.catcd = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.cntcd ", Db, adOpenStatic, adLockBatchOptimistic
            If ADOSECONDARYRS(0).Value = "" Then
                 txtfields(3).Text = ""
            Else
                 txtfields(3).Text = ADOSECONDARYRS(0)
            End If
            If ADOSECONDARYRS(1).Value = "" Then
                 txtfields(4).Text = ""
            Else
                 txtfields(4).Text = ADOSECONDARYRS(1)
            End If
            If ADOSECONDARYRS(2).Value = "" Then
                 txtfields(5).Text = ""
            Else
                 txtfields(5).Text = ADOSECONDARYRS(2)
            End If
            If ADOSECONDARYRS(3).Value = "" Then
                 txtfields(6).Text = ""
            Else
                 txtfields(6).Text = ADOSECONDARYRS(3)
            End If
             If ADOSECONDARYRS(4).Value = "" Then
                 txtfields(7).Text = ""
            Else
                 txtfields(7).Text = ADOSECONDARYRS(4)
            End If
'         End If
           Set ADOSECONDARYRS = New Recordset
           ADOSECONDARYRS.Open "select sum(isnull(a.grwt,0)),sum(isnull(a.netwt,0)),sum(isnull(a.netwt,0)-isnull(a.isqty,0)) from rm_bale a,rm_lot b where(isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & txtfields(0).Text & "' and a.lotno = '" & txtfields(1).Text & "' and a.lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = a.catcd and b.lotno = a.lotno and b.lotdt = a.lotdt and b.divcode = '" & divcode & "' group by a.catcd,a.lotno,a.lotdt", Db, adOpenStatic, adLockBatchOptimistic
           If Not ADOSECONDARYRS.BOF Then
             If ADOSECONDARYRS(2).Value = "" Then
                  lblqty.Caption = 0
             Else
                  lblqty.Caption = Format(ADOSECONDARYRS(2), "########.000")
             End If
             If ADOSECONDARYRS(0).Value = "" Then
                  lblgrwt.Caption = 0
             Else
                  lblgrwt.Caption = Format(ADOSECONDARYRS(0), "##########.000")
             End If
             If ADOSECONDARYRS(1).Value = "" Then
                  lbltarwt.Caption = 0
             Else
                  lbltarwt.Caption = Format(ADOSECONDARYRS(1), "##########.000")
             End If
             If ADOSECONDARYRS(2).Value = "" Then
                  lblnetwt.Caption = 0
             Else
                  lblnetwt.Caption = Format(ADOSECONDARYRS(2), "##########.000")
             End If
           Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
           End If
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select baleno  ""BALE NO"" ,grwt ""GROSS Wt"",netwt ""NET Wt"",(isnull(netwt,0)-isnull(isqty,0)) ""Current Stock"" from rm_bale where(isnull(netwt,0)-isnull(isqty,0)) > 0 and catcd = '" & txtfields(0).Text & "' and lotno = '" & txtfields(1).Text & "' and lotdt = '" & Format(txtfields(2).Text, "yyyy-mm-dd") & "' order by baleno", Db, adOpenStatic, adLockBatchOptimistic
            Db.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRS
            If adoPrimaryRS.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(0).NumberFormat = "########.000"
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
'         If opt = "updat" Or opt = " " Then
'             Call disabletxt
'            ' txtfields(7).Locked = False
'             DataGrid2.Col = 4
'           DataGrid2.SetFocus
'         End If
End If
End Sub
Private Sub Command4_Click()
Frame6.Visible = False
End Sub
Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub Form_Load()
  opt = " "
  Set Db = New Connection
  Db.CursorLocation = adUseClient
  Db.Open "PROVIDER=MSDataShape;" + connectstring
  TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
   BUTTON(0).Enabled = False
   Call query_mode
  'Frame1.Visible = True
  'Frame5.Visible = True
  End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  Db.Close
  Set adoPrimaryRS = Nothing
  Reset
  End Sub

Public Sub clearval()
For i = 0 To 8
  txtfields(i).Text = ""
Next
End Sub
Public Sub disabletxt()
For i = 0 To 8
  txtfields(i).Locked = True
Next
DataGrid2.Columns(0).Locked = True
DataGrid2.Columns(1).Locked = True
DataGrid2.Columns(2).Locked = True
DataGrid2.Columns(3).Locked = True
DataGrid2.Columns(4).Locked = True
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.txtfields
        oText.Locked = True
    Next

End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.txtfields
        oText.Locked = False
    Next
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

'End Select
End Sub

Private Sub Txtfields_KeyPress(Index As Integer, KeyAscii As Integer)
'If Not Index = 12 Then
'KeyAscii = 0
'End If
'If Index = 12 Then
'ToNumber txtfields(12), KeyAscii
'If Len(txtfields(12)) = 10 Then KeyAscii = 0
'End If
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
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
