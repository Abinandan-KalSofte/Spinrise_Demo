VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.OCX"
Begin VB.Form FrmOpenkey 
   Caption         =   "Open/Key Loan Details"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame7 
      Height          =   645
      Left            =   30
      TabIndex        =   16
      Top             =   -120
      Width           =   5520
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey1.frx":0000
         Height          =   510
         Index           =   10
         Left            =   1050
         Picture         =   "RMIOpenkey1.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIOpenkey1.frx":0686
         Height          =   510
         Index           =   1
         Left            =   0
         Picture         =   "RMIOpenkey1.frx":0990
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   11
         Left            =   1575
         Picture         =   "RMIOpenkey1.frx":0D0A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   9
         Left            =   530
         Picture         =   "RMIOpenkey1.frx":1154
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Save"
         Top             =   135
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
         Left            =   4275
         TabIndex        =   18
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
         Left            =   2700
         TabIndex        =   17
         Top             =   255
         Width           =   600
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5190
      Left            =   180
      TabIndex        =   19
      Top             =   900
      Width           =   9150
      _ExtentX        =   16140
      _ExtentY        =   9155
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "              "
      TabPicture(0)   =   "RMIOpenkey1.frx":145E
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.Frame Frame1 
         Height          =   2280
         Left            =   120
         TabIndex        =   21
         Top             =   135
         Width           =   8880
         Begin VB.TextBox txtfields 
            DataField       =   " "
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
            Index           =   10
            Left            =   7200
            TabIndex        =   52
            Top             =   1800
            Width           =   1455
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   6
            Left            =   7200
            TabIndex        =   51
            Top             =   1440
            Width           =   1455
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   4
            Left            =   1800
            TabIndex        =   50
            Top             =   1080
            Width           =   6835
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   14
            Left            =   1080
            TabIndex        =   5
            Top             =   360
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   2
            Left            =   7590
            TabIndex        =   43
            Top             =   720
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   1
            Left            =   4080
            TabIndex        =   42
            Top             =   720
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            Height          =   330
            Index           =   8
            Left            =   6180
            TabIndex        =   41
            Top             =   720
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   11
            Left            =   7590
            TabIndex        =   9
            Top             =   360
            Width           =   1035
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   12
            Left            =   6180
            TabIndex        =   8
            Top             =   360
            Width           =   915
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   13
            Left            =   4080
            TabIndex        =   7
            Top             =   360
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   5
            Left            =   1080
            TabIndex        =   40
            Top             =   1440
            Width           =   4095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
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
            Index           =   9
            Left            =   4080
            TabIndex        =   39
            Top             =   1800
            Width           =   1095
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   7
            Left            =   1080
            TabIndex        =   38
            Top             =   1800
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   3
            Left            =   1080
            TabIndex        =   37
            Top             =   1080
            Width           =   675
         End
         Begin VB.TextBox txtfields 
            DataField       =   " "
            Height          =   330
            Index           =   0
            Left            =   1080
            TabIndex        =   36
            Top             =   720
            Width           =   675
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   2280
            TabIndex        =   6
            Top             =   360
            Width           =   1215
            _ExtentX        =   2143
            _ExtentY        =   582
            _Version        =   393216
            Format          =   24641537
            CurrentDate     =   37601
         End
         Begin VB.Label Label15 
            AutoSize        =   -1  'True
            Caption         =   "Ldg.No."
            Height          =   195
            Left            =   210
            TabIndex        =   44
            Top             =   428
            Width           =   570
         End
         Begin VB.Label Label14 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            Height          =   195
            Left            =   3600
            TabIndex        =   35
            Top             =   435
            Width           =   405
         End
         Begin VB.Label Label16 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   1800
            TabIndex        =   34
            Top             =   435
            Width           =   345
         End
         Begin VB.Label Label13 
            AutoSize        =   -1  'True
            Caption         =   "75% value"
            Height          =   315
            Left            =   5400
            TabIndex        =   33
            Top             =   368
            Width           =   735
         End
         Begin VB.Label Label12 
            AutoSize        =   -1  'True
            Caption         =   "Bank"
            Height          =   195
            Left            =   7200
            TabIndex        =   32
            Top             =   428
            Width           =   375
         End
         Begin VB.Label Label10 
            AutoSize        =   -1  'True
            Caption         =   "Party LotNo."
            Height          =   195
            Left            =   5280
            TabIndex        =   31
            Top             =   795
            Width           =   885
         End
         Begin VB.Label Label6 
            AutoSize        =   -1  'True
            Caption         =   "Value"
            Height          =   195
            Left            =   6390
            TabIndex        =   30
            Top             =   1868
            Width           =   405
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Net Weight"
            Height          =   195
            Left            =   3150
            TabIndex        =   29
            Top             =   1875
            Width           =   810
         End
         Begin VB.Label Label9 
            AutoSize        =   -1  'True
            Caption         =   "Category"
            Height          =   195
            Left            =   210
            TabIndex        =   28
            Top             =   758
            Width           =   630
         End
         Begin VB.Label Label8 
            AutoSize        =   -1  'True
            Caption         =   "Lot No"
            Height          =   195
            Left            =   3570
            TabIndex        =   27
            Top             =   795
            Width           =   480
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Supplier"
            Height          =   195
            Left            =   210
            TabIndex        =   26
            Top             =   1133
            Width           =   570
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Count"
            Height          =   195
            Left            =   6360
            TabIndex        =   25
            Top             =   1508
            Width           =   420
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Variety"
            Height          =   195
            Left            =   210
            TabIndex        =   24
            Top             =   1508
            Width           =   480
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Date"
            Height          =   195
            Left            =   7200
            TabIndex        =   23
            Top             =   795
            Width           =   345
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Quantity"
            Height          =   195
            Left            =   210
            TabIndex        =   22
            Top             =   1868
            Width           =   585
         End
      End
      Begin VB.Frame Frame2 
         Height          =   2625
         Left            =   135
         TabIndex        =   20
         Top             =   2445
         Width           =   8895
         Begin MSDataGridLib.DataGrid DataGrid2 
            Height          =   2175
            Left            =   120
            TabIndex        =   10
            Top             =   240
            Width           =   8655
            _ExtentX        =   15266
            _ExtentY        =   3836
            _Version        =   393216
            ForeColor       =   -2147483635
            HeadLines       =   1
            RowHeight       =   15
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
   End
   Begin VB.Frame Frame6 
      Height          =   3675
      Left            =   930
      TabIndex        =   11
      Top             =   1980
      Visible         =   0   'False
      Width           =   7725
      Begin MSDataGridLib.DataGrid DataGrid1 
         Height          =   2430
         Left            =   120
         TabIndex        =   12
         Top             =   600
         Visible         =   0   'False
         Width           =   7485
         _ExtentX        =   13203
         _ExtentY        =   4286
         _Version        =   393216
         ForeColor       =   -2147483635
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
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
      Begin VB.CommandButton Command4 
         Caption         =   "Cancel"
         Height          =   390
         Left            =   3900
         TabIndex        =   15
         Top             =   3175
         Width           =   975
      End
      Begin VB.CommandButton Command3 
         Caption         =   "OK"
         Height          =   390
         Left            =   2820
         TabIndex        =   14
         Top             =   3175
         Width           =   975
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
         Left            =   2895
         TabIndex        =   13
         Top             =   240
         Width           =   2130
      End
   End
   Begin VB.Frame Frame3 
      Height          =   4830
      Left            =   600
      TabIndex        =   45
      Top             =   960
      Visible         =   0   'False
      Width           =   8505
      Begin VB.CommandButton Command5 
         Caption         =   "&Cancel"
         DownPicture     =   "RMIOpenkey1.frx":147A
         Height          =   615
         Left            =   4740
         Picture         =   "RMIOpenkey1.frx":185C
         Style           =   1  'Graphical
         TabIndex        =   47
         Top             =   4095
         Width           =   1185
      End
      Begin VB.CommandButton Command6 
         Caption         =   "&OK"
         DownPicture     =   "RMIOpenkey1.frx":1C2F
         Height          =   615
         Left            =   3000
         Picture         =   "RMIOpenkey1.frx":2015
         Style           =   1  'Graphical
         TabIndex        =   46
         Top             =   4110
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3390
         Left            =   765
         TabIndex        =   48
         Top             =   765
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5980
         ForeColor       =   -2147483635
      End
      Begin VB.Label Label17 
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
         TabIndex        =   49
         Top             =   120
         Width           =   8475
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Open/Key  Loan Details"
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
      Left            =   210
      TabIndex        =   0
      Top             =   570
      Width           =   3075
   End
End
Attribute VB_Name = "FrmOpenkey"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRs As Recordset
Attribute adoPrimaryRs.VB_VarHelpID = -1
Dim ADOSECONDARYRS As Recordset
Dim ADOSECONDARYRS1 As Recordset
Dim Db As Connection
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
Dim itary() As String
Dim rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double

Private Sub BUTTON_Click(Index As Integer)
Select Case Index
Case 1
        On Error Resume Next
         Opt = "updat"
         Screen.MousePointer = 11
         desc.Caption = "Updation"
'         Call clearval
'         Call query_mode
         BUTTON(1).Enabled = False
         BUTTON(9).Enabled = True
         BUTTON(10).Enabled = True
         DataGrid1.Enabled = True
         DataGrid2.Columns(4).Locked = False
         
         Txtfields(14).Text = ""
         Txtfields(13).Text = ""
         Txtfields(12).Text = ""
         Txtfields(11).Text = ""
         
         Txtfields(14).Locked = False
         Txtfields(13).Locked = False
         Txtfields(12).Locked = False
          Txtfields(11).Locked = False
         Set rs = New Recordset
         rs.Open "select isnull(max(lodgno),0) from rm_bale", Db, adOpenStatic
         Txtfields(14).Text = rs(0) + 1
         Txtfields(14).Locked = True
         
         
         'DataGrid2.Col = 4
         'DataGrid2.SetFocus
         'vasanth 11/12
         Set ADOSECONDARYRS1 = New Recordset
         ADOSECONDARYRS1.Open "select count(isnull(a.baleno,0)) qty,sum(isnull(a.netwt,0)) netwt,sum(isnull(a.netwt,0) * b.ratekg) value from rm_bale a,rm_lot b where a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & Txtfields(0).Text & "' and a.lotno = '" & Txtfields(1).Text & "' and a.lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = '" & Txtfields(0).Text & "' and b.lotno = '" & Txtfields(1).Text & "' and b.lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and (a.openkey not like 'Y' or a.openkey is null) group by a.catcd,a.lotno,a.lotdt", Db, adOpenStatic, adLockBatchOptimistic
         If Not ADOSECONDARYRS1.BOF Then
           BUTTON(1).Enabled = True
           DataGrid1.Enabled = False
            If ADOSECONDARYRS1(0).Value = "" Then
                 Txtfields(7).Text = ""
            Else
                 Txtfields(7).Text = ADOSECONDARYRS1(0)
            End If
            If ADOSECONDARYRS1(1).Value = "" Then
                 Txtfields(9).Text = ""
            Else
                 Txtfields(9).Text = Format(ADOSECONDARYRS1(1), "#0.000")
            End If
            If ADOSECONDARYRS1(2).Value = "" Then
                 Txtfields(10).Text = ""
            Else
                 Txtfields(10).Text = Format(ADOSECONDARYRS1(2), "#0.00")
            End If
         Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
         End If
            Set adoPrimaryRs = New Recordset
            adoPrimaryRs.Open "select baleno  ""Bale No"" ,grwt ""Gross Weight"",tarewt ""Tare Weight"" ,netwt ""Net Weight"",openkey ""O.K"" from rm_bale where isnull(netwt,0)-isnull(isqty,0) > 0 and catcd = '" & Txtfields(0).Text & "' and lotno = '" & Txtfields(1).Text & "' and lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "' and (openkey not like 'Y' or openkey is null) order by baleno", Db, adOpenStatic, adLockBatchOptimistic
            'db.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRs
            If adoPrimaryRs.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(1).NumberFormat = "#0.000"
           DataGrid2.Columns(2).NumberFormat = "#0.000"
           DataGrid2.Columns(3).NumberFormat = "#0.000"
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(1).Alignment = dbgRight
           DataGrid2.Columns(2).Alignment = dbgRight
           DataGrid2.Columns(3).Alignment = dbgRight
           DataGrid2.Columns(4).Width = 1100.095
           Frame6.Visible = False
           Frame1.Visible = True
           Frame2.Visible = True
           BUTTON(10).Enabled = True
           BUTTON(1).Enabled = False
           Frame2.Enabled = True
           DataGrid1.Enabled = True
         If Opt = "updat" Or Opt = " " Then
           Call disabletxt
           DataGrid2.Columns(4).Locked = False
           DataGrid2.Col = 4
           DataGrid2.SetFocus
        End If
           DTPicker1.SetFocus
           Screen.MousePointer = 0

Case 9
        'Save
        Screen.MousePointer = 11
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
       ' On Error GoTo er1
        If Opt = "updat" Or Opt = " " Then
            Set rs = New Recordset
            rs.Open "select OPENKEY  from rm_bale", Db, adOpenStatic, adLockBatchOptimistic
            
            'vasanth 11/12
            Dim i As Integer
            Dim j As Double
            i = 0
            j = 0
            adoPrimaryRs.MoveFirst
            Do While Not adoPrimaryRs.EOF
                If DataGrid2.Columns(4).Text = "Y" Then i = i + 1
                adoPrimaryRs.MoveNext
            Loop
            If i > 0 Then
               j = Val(Txtfields(13).Text) / i
            Else
                j = Val(Txtfields(13).Text)
            End If
            
            adoPrimaryRs.MoveFirst
            Do While Not adoPrimaryRs.EOF
              'VASANTH 11/12
              If DataGrid2.Columns(4).Text = "Y" Then
                Db.Execute ("update rm_bale set openkey = '" & DataGrid2.Columns(4).Text & "',LODGNO = '" & Txtfields(14).Text & "',LODGDATE = '" & Format(DTPicker1.Value, "YYYY/MM/DD") & "',LODGVALUE = '" & j & "',BANK = '" & KslList1.Code & "' where  catcd = '" & Txtfields(0).Text & "' and lotno = '" & Txtfields(1).Text & "' and lotdt = '" & Format(Txtfields(2).Text, "yyyy/mm/dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "' and  baleno = '" & DataGrid2.Columns(0).Text & "'")
              End If
              adoPrimaryRs.MoveNext
            Loop
               Db.CommitTrans
               MsgBox "Information Saved!!", vbInformation, head
            Screen.MousePointer = 0
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            SSTab1.Visible = False
            Frame6.Visible = True
        End If

Case 2
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    If Opt = "updat" Then
    Db.RollbackTrans
    End If
    Screen.MousePointer = 0
    Opt = " "
    Call Query_mode
    BUTTON(0).Enabled = True
    BUTTON(1).Enabled = True
    BUTTON(2).Enabled = False
    BUTTON(3).Enabled = True
    
   Case 10
gocancel:
Select Case Opt
    Case "mod"
        Db.RollbackTrans
    Case "add"
        Db.RollbackTrans
    Case "del"
        Db.RollbackTrans
End Select
    'BUTTON(4).Enabled = True
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
'    Call query_mode
    SSTab1.Visible = False
    Frame6.Visible = True
    
    If adoPrimaryRs.RecordCount <> 0 Then
        Call cancl(BUTTON)
    End If
    BUTTON(1).Enabled = False
    Screen.MousePointer = 0
 
Case 11
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
Private Sub Query_mode()
 If Opt = "updat" Or Opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    Set adoPrimaryRs = New Recordset
    adoPrimaryRs.Open "select catcd ""Category"",lotno ""LotNo"",lotdt ""Date"",lottype ""LotType"" from rm_lot where lotdt between '" & Format(yfdate, "yyyy/mm/dd") & "' and  '" & Format(yldate, "yyyy/mm/dd") & "' AND (ISNULL(NETWT,0)-ISNULL(ISSWT,0)) >0 AND (ISNULL(BALES,0)-ISNULL(ISSBAL,0)) >0", Db, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRs.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoPrimaryRs
       DataGrid1.Columns(0).Text = adoPrimaryRs(0)
       DataGrid1.Columns(1).Text = adoPrimaryRs(1)
       DataGrid1.Columns(2).Text = adoPrimaryRs(2)
       DataGrid1.Columns(3).Width = 2294.929
       DataGrid1.Columns(2).Width = 1920.189
       DataGrid1.Columns(1).Width = 1514.835
       DataGrid1.Columns(0).Width = 1200.189
       
       
    End If
    DataGrid1.AllowUpdate = False
    Frame6.ZOrder
'    If opt = "updat" Or opt = " " Then
'      Db.BeginTrans
'    End If
 End If
    End Sub
Private Sub Command3_Click()
'If opt = "add" o Then
On Error Resume Next
SSTab1.Visible = True
If Opt = "updat" Or Opt = " " Then
         Call ENABLCONTLS
         Set rs = New Recordset
         rs.Open "select Sum(lodgvalue),lodgdate,lodgno,bank from rm_bale where lotno='" & DataGrid1.Columns(1).Text & "' and openkey='Y' group by lodgdate,bank,lodgno", Db, adOpenStatic
         If rs.EOF Then
            Txtfields(14).Text = ""
            Txtfields(13).Text = ""
            Txtfields(12).Text = ""
            Txtfields(11).Text = ""
         Else
            Txtfields(14).Text = rs(2)
            Txtfields(13).Text = Format(rs(0), "0.00")
            Txtfields(12).Text = Format(rs(0) * 0.75, "0.00")
            Txtfields(11).Text = rs(3)
            DTPicker1.Value = rs(1)
         End If
         Txtfields(14).Locked = True
         Txtfields(13).Locked = True
         Txtfields(12).Locked = True
         Txtfields(11).Locked = True
         Txtfields(0).Text = DataGrid1.Columns(0).Text
         Txtfields(1).Text = DataGrid1.Columns(1).Text
         Txtfields(2).Text = DataGrid1.Columns(2).Text
         Set ADOSECONDARYRS = New Recordset
         'ADOSECONDARYRS.Open "select b.varname,c.cntname,d.slcode,d.slname from rm_var b,rm_cont c,fa_slmas d where substr(b.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(c.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "' and substr(d.catcd,1,1) = ' " & DataGrid1.Columns(0).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
         'Ravi ADOSECONDARYRS.Open "select a.supcd,b.varname,c.cntname,d.slname from rm_arrival a,rm_var b,rm_count c,fa_slmas d where a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
         'ADOSECONDARYRS.Open "select a.supcd,b.varname,c.mixgrpname,d.slname from rm_arrival a,rm_var b,rm_mixgrp c,fa_slmas d where a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "' and a.varcode = b.varcode and a.cntcode = c.mixgrpcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
         ADOSECONDARYRS.Open "SELECT A.SUPCD,Z.VARNAME,A.CNTCODE,F.SLNAME,isnull(a.plotno,'') as plotno FROM RM_LOT A,RM_VAR Z,FA_SLMAS F WHERE A.SUPCD=F.SLCODE AND A.VARCODE=Z.VARCODE AND  a.lotno = '" & DataGrid1.Columns(1).Text & "' and a.lotdt = '" & Format(DataGrid1.Columns(2).Text, "yyyy-mm-dd") & "' and a.lottype  = '" & DataGrid1.Columns(3).Text & "' and substring(a.catcd,1,1) = '" & DataGrid1.Columns(0).Text & "'", Db, adOpenStatic, adLockBatchOptimistic
            If ADOSECONDARYRS(0).Value = "" Then
                 Txtfields(3).Text = ""
            Else
                 Txtfields(3).Text = ADOSECONDARYRS(0)
            End If
            If ADOSECONDARYRS("plotno").Value = "" Then
                 Txtfields(8).Text = ""
            Else
                 Txtfields(8).Text = ADOSECONDARYRS("plotno")
            End If
            
            If ADOSECONDARYRS(1).Value = "" Then
                 Txtfields(5).Text = ""
            Else
                 Txtfields(5).Text = ADOSECONDARYRS(1)
            End If
            If ADOSECONDARYRS(2).Value = "" Then
                 Txtfields(6).Text = ""
            Else
                 Txtfields(6).Text = ADOSECONDARYRS(2)
            End If
            If ADOSECONDARYRS(3).Value = "" Then
                 Txtfields(4).Text = ""
            Else
                 Txtfields(4).Text = ADOSECONDARYRS(3)
            End If
'         End If
           Set ADOSECONDARYRS1 = New Recordset
           ADOSECONDARYRS1.Open "select count(isnull(a.baleno,0)) qty,sum(isnull(a.netwt,0)) netwt,sum(isnull(a.netwt,0) * b.ratekg) value from rm_bale a,rm_lot b where a.lottype = b.lottype and a.lottype = '" & DataGrid1.Columns(3).Text & "' and (isnull(a.netwt,0)-isnull(a.isqty,0)) > 0 and a.catcd = '" & Txtfields(0).Text & "' and a.lotno = '" & Txtfields(1).Text & "' and a.lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and b.catcd = '" & Txtfields(0).Text & "' and b.lotno = '" & Txtfields(1).Text & "' and b.lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' group by a.catcd,a.lotno,a.lotdt", Db, adOpenStatic, adLockBatchOptimistic
         If Not ADOSECONDARYRS1.BOF Then
           BUTTON(1).Enabled = True
           DataGrid1.Enabled = False
            If ADOSECONDARYRS1(0).Value = "" Then
                 Txtfields(7).Text = ""
            Else
                 Txtfields(7).Text = ADOSECONDARYRS1(0)
            End If
            If ADOSECONDARYRS1(1).Value = "" Then
                 Txtfields(9).Text = ""
            Else
                 Txtfields(9).Text = Format(ADOSECONDARYRS1(1), "#0.000")
            End If
            If ADOSECONDARYRS1(2).Value = "" Then
                 Txtfields(10).Text = ""
            Else
                 Txtfields(10).Text = Format(ADOSECONDARYRS1(2), "#0.00")
            End If
         Else
               MsgBox "No Records Found", vbInformation, head
                Exit Sub
         End If
            Set adoPrimaryRs = New Recordset
            adoPrimaryRs.Open "select baleno  ""Bale No"" ,grwt ""Gross Weight"",tarewt ""Tare Weight"" ,netwt ""Net Weight"",openkey ""O.K"" from rm_bale where isnull(netwt,0)-isnull(isqty,0) > 0 and catcd = '" & Txtfields(0).Text & "' and lotno = '" & Txtfields(1).Text & "' and lotdt = '" & Format(Txtfields(2).Text, "yyyy-mm-dd") & "' and lottype = '" & DataGrid1.Columns(3).Text & "'  order by baleno", Db, adOpenStatic, adLockBatchOptimistic
            Db.BeginTrans
            Set DataGrid2.DataSource = adoPrimaryRs
            If adoPrimaryRs.BOF Then
                MsgBox " No Records Found", vbInformation, head
            End If
           DataGrid2.Columns(0).Width = 1000.095
           DataGrid2.Columns(1).Width = 2000.095
           DataGrid2.Columns(1).NumberFormat = "#0.000"
           DataGrid2.Columns(2).NumberFormat = "#0.000"
           DataGrid2.Columns(3).NumberFormat = "#0.000"
           DataGrid2.Columns(2).Width = 2000.095
           DataGrid2.Columns(3).Width = 2000.095
           DataGrid2.Columns(1).Alignment = dbgRight
           DataGrid2.Columns(2).Alignment = dbgRight
           DataGrid2.Columns(3).Alignment = dbgRight
           DataGrid2.Columns(4).Width = 1100.095
           Frame6.Visible = False
           Frame1.Visible = True
           Frame2.Visible = True
           BUTTON(10).Enabled = True
           Frame2.Enabled = True
           DataGrid1.Enabled = True
         If Opt = "updat" Or Opt = " " Then
             Call disabletxt
            ' txtfields(7).Locked = False
             DataGrid2.Col = 4
           DataGrid2.SetFocus
         End If
End If
End Sub
Private Sub command4_Click()
Unload Me
End Sub

Private Sub Command5_Click()
If Opt = " " Or Opt = "updat" Then
    Call Query_mode
    'SSTab1.Visible = True
    'Frame6.Visible = True
    Frame3.Visible = False
    SSTab1.ZOrder
End If
End Sub

Private Sub Command6_Click()
If Opt = " " Or Opt = "updat" Then
    Txtfields(11).Text = KslList1.Code
    Frame3.Visible = False
    SSTab1.Visible = True
    Frame6.Visible = True
    SSTab1.ZOrder
    DataGrid2.Col = 4
    DataGrid2.SetFocus
End If
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
KeyAscii = 0
End Sub

Private Sub DataGrid2_KeyDown(KeyCode As Integer, Shift As Integer)
 'If KeyCode = 40 Then
 '  adoPrimaryRS.MoveNext
 '  DataGrid2.Col = 3
 '  DataGrid2.SetFocus
 If KeyCode = 9 Then
   adoPrimaryRs.MoveNext
   DataGrid2.Col = 4
   DataGrid2.SetFocus
 End If
End Sub

Private Sub DataGrid2_KeyPress(KeyAscii As Integer)
 If DataGrid2.Col = 4 Then
    
    If Len(DataGrid2) >= 1 Then ' And (KeyAscii = 8 And KeyAscii = 9) Then
        KeyAscii = 0
        Exit Sub
    End If
    If Not (KeyAscii = 121 Or KeyAscii = 89 Or KeyAscii = 78 Or KeyAscii = 110) And Not (KeyAscii = 8 And KeyAscii = 9) Then
        KeyAscii = 0
    End If
 End If
 Call ToUpCase(DataGrid2, KeyAscii)
End Sub

Private Sub Form_Load()
  Opt = " "
  Set Db = New Connection
  Db.CursorLocation = adUseClient
  Db.Open "PROVIDER=MSDataShape;" + connectstring
'  TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
   Call Query_mode
  'Frame1.Visible = True
  'Frame5.Visible = True
  BUTTON(1).Enabled = False
  BUTTON(9).Enabled = False
  BUTTON(10).Enabled = False
  End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  Db.Close
  Set adoPrimaryRs = Nothing
  Reset
  End Sub

Public Sub clearval()
For i = 0 To 7
  Txtfields(i).Text = ""
Next
For i = 9 To 10
  Txtfields(i).Text = ""
Next

End Sub
Public Sub disabletxt()
For i = 0 To 7
  Txtfields(i).Locked = True
Next
For i = 9 To 10
  Txtfields(i).Locked = True
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
    For Each oText In Me.Txtfields
        oText.Locked = True
    Next

End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.Txtfields
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


Private Sub txtFields_KeyPress(Index As Integer, KeyAscii As Integer)
'If Not Index = 12 Then
'KeyAscii = 0
'End If
'If Index = 12 Then
'ToNumber txtfields(12), KeyAscii
'If Len(txtfields(12)) = 10 Then KeyAscii = 0
'End If
End Sub

Private Sub txtFields_LostFocus(Index As Integer)
'VASANTH
On Error Resume Next
If Opt = "updat" Or Opt = " " Then
Select Case Index
Case 13
    Txtfields(12).Text = Val(Txtfields(13)) * 0.75
    Txtfields(12).SetFocus
Case 12
    SSTab1.Visible = False
    Frame6.Visible = False
    Frame3.Visible = True
    Frame3.ZOrder
    KslList1.conn = connectstring
    KslList1.table = "rm_god"
    KslList1.listfield1 = "GCODE"
    KslList1.listfield2 = "GNAME"
    KslList1.SetFocus
End Select
End If
End Sub
