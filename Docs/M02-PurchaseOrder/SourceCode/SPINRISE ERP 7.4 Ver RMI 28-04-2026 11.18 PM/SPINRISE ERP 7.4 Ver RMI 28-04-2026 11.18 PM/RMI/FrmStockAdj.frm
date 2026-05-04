VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{C932BA88-4374-101B-A56C-00AA003668DC}#1.1#0"; "MSMASK32.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form FrmStockAdj 
   Caption         =   "Stock Adjustments"
   ClientHeight    =   7515
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11040
   ForeColor       =   &H80000005&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7515
   ScaleWidth      =   11040
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   24
      Top             =   -90
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":0000
         Height          =   510
         Index           =   6
         Left            =   2129
         Picture         =   "FrmStockAdj.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":0797
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "FrmStockAdj.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   1608
         Picture         =   "FrmStockAdj.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":15E3
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
         Left            =   1087
         Picture         =   "FrmStockAdj.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   566
         Picture         =   "FrmStockAdj.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":230D
         Height          =   510
         Index           =   7
         Left            =   2655
         Picture         =   "FrmStockAdj.frx":2757
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":2AA7
         Height          =   510
         Index           =   11
         Left            =   4740
         Picture         =   "FrmStockAdj.frx":2EF1
         Style           =   1  'Graphical
         TabIndex        =   15
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":3286
         Height          =   510
         Index           =   9
         Left            =   3697
         Picture         =   "FrmStockAdj.frx":3590
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":3932
         Height          =   510
         Index           =   10
         Left            =   4218
         Picture         =   "FrmStockAdj.frx":3C3C
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Cancel  (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "FrmStockAdj.frx":3FB8
         Height          =   510
         Index           =   8
         Left            =   3176
         Picture         =   "FrmStockAdj.frx":4402
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   8085
         TabIndex        =   26
         Top             =   255
         Width           =   630
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   5760
         TabIndex        =   25
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   18
      Top             =   7215
      Width           =   11040
      _ExtentX        =   19473
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
            TextSave        =   "22/11/2019"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "7:23 PM"
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
      Height          =   2655
      Left            =   1290
      TabIndex        =   19
      Top             =   2160
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   4683
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "                                          "
      TabPicture(0)   =   "FrmStockAdj.frx":4764
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2400
         Left            =   120
         TabIndex        =   20
         Top             =   60
         Width           =   7560
         Begin MSMask.MaskEdBox MaskEdBox1 
            DataField       =   "DOCDT"
            Height          =   255
            Index           =   0
            Left            =   1710
            TabIndex        =   2
            Top             =   885
            Width           =   1125
            _ExtentX        =   1984
            _ExtentY        =   450
            _Version        =   393216
            BorderStyle     =   0
            Enabled         =   0   'False
            MaxLength       =   10
            Mask            =   "##/##/####"
            PromptChar      =   "_"
         End
         Begin VB.TextBox txtfields 
            DataField       =   "adjreason"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   1680
            MaxLength       =   30
            TabIndex        =   4
            Top             =   1320
            Width           =   4920
         End
         Begin VB.TextBox txtfields 
            Alignment       =   1  'Right Justify
            DataField       =   "adjwt"
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
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   5160
            MaxLength       =   10
            TabIndex        =   3
            Top             =   870
            Width           =   1440
         End
         Begin VB.ComboBox Combo1 
            DataField       =   "ADJUST"
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
            ItemData        =   "FrmStockAdj.frx":4780
            Left            =   1680
            List            =   "FrmStockAdj.frx":478A
            Style           =   2  'Dropdown List
            TabIndex        =   5
            Top             =   1800
            Width           =   1455
         End
         Begin VB.TextBox txtfields 
            DataField       =   "lotno"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   1680
            MaxLength       =   10
            TabIndex        =   0
            Top             =   360
            Width           =   1320
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "ADJDT"
            Height          =   345
            Index           =   1
            Left            =   1680
            TabIndex        =   17
            Top             =   840
            Width           =   1425
            _ExtentX        =   2514
            _ExtentY        =   609
            _Version        =   393216
            BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Format          =   43057153
            CurrentDate     =   37944
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Index           =   0
            Left            =   5160
            TabIndex        =   1
            Top             =   435
            Width           =   1440
            _ExtentX        =   2540
            _ExtentY        =   582
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   43057153
            CurrentDate     =   36831
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Adjustment Type"
            DataField       =   "reason"
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
            Index           =   1
            Left            =   75
            TabIndex        =   34
            Top             =   1860
            Width           =   1515
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Adjustment Date"
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
            Index           =   1
            Left            =   105
            TabIndex        =   33
            Top             =   915
            Width           =   1470
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Adjustment Weight"
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
            Index           =   1
            Left            =   3270
            TabIndex        =   32
            Top             =   885
            Width           =   1665
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
            Index           =   0
            Left            =   3285
            TabIndex        =   23
            Top             =   435
            Width           =   750
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Lot No."
            DataField       =   "lotno"
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
            Index           =   0
            Left            =   105
            TabIndex        =   22
            Top             =   435
            Width           =   630
         End
         Begin VB.Label Label7 
            AutoSize        =   -1  'True
            Caption         =   "Reason"
            DataField       =   "reason"
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
            Index           =   0
            Left            =   105
            TabIndex        =   21
            Top             =   1410
            Width           =   720
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   510
      TabIndex        =   27
      Top             =   1290
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KSLLIST1 
         Height          =   3375
         Left            =   990
         TabIndex        =   31
         Top             =   660
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "FrmStockAdj.frx":4794
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   2970
         Picture         =   "FrmStockAdj.frx":4B7A
         Style           =   1  'Graphical
         TabIndex        =   29
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "FrmStockAdj.frx":4F40
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   4710
         Picture         =   "FrmStockAdj.frx":5322
         Style           =   1  'Graphical
         TabIndex        =   28
         Top             =   4110
         Width           =   1185
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
         TabIndex        =   30
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Stock Adjustments"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000002&
      Height          =   345
      Left            =   1260
      TabIndex        =   16
      Top             =   1530
      Width           =   1545
   End
End
Attribute VB_Name = "FrmStockAdj"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
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
Dim strSQL As String
Private Sub BUTTON_Click(Index As Integer)
On Error Resume Next
intervalMinutes = -1
Select Case Index
Case 0
    If ToValidFinYear(Divcode) = False Then Exit Sub
    Opt = "add"
    DB.BeginTrans
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select lotno,lotdt,adjdt,adjwt,adjreason,adjust from rm_lot where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    
    DTPicker1(0).value = pdate
    DTPicker1(1).value = pdate
    MaskEdBox1(0).Text = pdate
    desc.Caption = "Addition"
    Screen.MousePointer = 0
    
    Call adddelmod(BUTTON)
    Call ENABLCONTLS
    Frame3.Visible = False
    SSTab1.Visible = True
    SSTab1.Enabled = True
    Frame1.Enabled = True
    DTPicker1(1).Enabled = True
    txtfields(0).Text = ""
    txtfields(0).tabIndex = 0
    txtfields(0).SetFocus
    
Case 1
If ToValidFinYear(Divcode) = False Then Exit Sub
    On Error Resume Next
        Opt = "mod"
        DB.BeginTrans
        Screen.MousePointer = 11
        desc.Caption = "Modification"
'        SSTab1.Visible = False
'        Frame3.Visible = True
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and adjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT>0 AND ISSBAL >0 and rejflg='N' and adjwt >0"
'        KslList1.listfield1 = "lotno"
'        KslList1.listfield2 = "lotDT"
'        KslList1.SetFocus
'        SSTab1.Enabled = True
'         Set adoSecondaryRS = New Recordset
'         adoSecondaryRS.Open "select lotno from rm_lot where divcode='" & Divcode & "' and lotno='" & txtFields(0).Text & "'  and  lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT IS NULL AND ISSBAL IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
'
'         If adoSecondaryRS.RecordCount = 0 Then
           StatusBar1.Panels(2).Text = "Select Lot No. from the List"
           LookUp.clear = True
           LookUp.query = "Select lotno""Lot No."",lotdt""Lot Date"" from rm_lot where divcode='" & Divcode & "' and adjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT>0 AND ISSBAL >0 and rejflg='N' and adjwt >0"
           LookUp.Caption = "Lot Number Listing"
           LookUp.DefCol = "Lot No."
           LookUp.ALIGN = "2000,2000"
           LookUp.Show vbModal
           If LookUp.Cancel = False Then
              txtfields(0).Text = LookUp.Fields(0)
              DTPicker1(0).value = Format(LookUp.Fields(1), "dd/MM/YYYY")
              LookUp.clear = True
           Else
              txtfields(1).SetFocus
              Exit Sub
           End If

        Call adddelmod(BUTTON)
        For i = 0 To 1
             txtfields(i).Locked = False
        Next

         Screen.MousePointer = 0
         
Case 2
If ToValidFinYear(Divcode) = False Then Exit Sub
    On Error Resume Next
         Opt = "del"
         DB.BeginTrans
         Screen.MousePointer = 11
         desc.Caption = "Updation"
        Call adddelmod(BUTTON)
         
         For i = 0 To 2
          txtfields(i).Locked = False
         Next
         
         DTPicker1(0).Enabled = True
        StatusBar1.Panels(2).Text = "Select Lot No. from the List"
        LookUp.clear = True
        LookUp.query = "Select lotno""Lot No."",lotdt""Lot Date"" from rm_lot where divcode='" & Divcode & "' and adjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT>0 AND ISSBAL >0 and rejflg='N' and adjwt >0"
        LookUp.Caption = "Lot Number Listing"
        LookUp.DefCol = "Lot No."
        LookUp.ALIGN = "2000,2000"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
           txtfields(0).Text = LookUp.Fields(0)
           DTPicker1(0).value = Format(LookUp.Fields(1), "dd/MM/YYYY")
           LookUp.clear = True
        Else
           txtfields(1).SetFocus
           Exit Sub
        End If

         
'
'
'        SSTab1.Visible = False
'        Frame3.Visible = True
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and adjdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT>0 AND ISSBAL>0 and rejflg='N' AND ADJWT > 0"
'        KslList1.listfield1 = "lotno"
'        KslList1.listfield2 = "lotDT"
'        KslList1.SetFocus
         
         Screen.MousePointer = 0
        'Listing
Case 3


        
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
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
        
       MsgBox Err.Description, vbInformation, head
       
            
Case 6
'next
            desc.Caption = "Query"
            On Error Resume Next
            'Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", db, adOpenStatic, adLockBatchOptimistic
           If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                BUTTON(5).Enabled = True
                BUTTON(6).Enabled = False
                BUTTON(7).Enabled = True
                BUTTON(8).Enabled = False
            End If
            If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
                Beep
                BUTTON(3).Enabled = False
                BUTTON(5).Enabled = False
                BUTTON(2).Enabled = True
                BUTTON(4).Enabled = True
                adoPrimaryRS.MoveLast
            End If
            'show the current record
            'Call navi(BUTTON)
            Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head
Case 7
 'previous
        desc.Caption = "Query"
        On Error Resume Next
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", Db, adOpenStatic, adLockBatchOptimistic
       If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            BUTTON(5).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(7).Enabled = False
            BUTTON(8).Enabled = True
        End If
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            'moved off the end so go back
            BUTTON(2).Enabled = False
            BUTTON(4).Enabled = False
            BUTTON(3).Enabled = True
            BUTTON(5).Enabled = True
            adoPrimaryRS.MoveFirst
        End If
        'show the current record
        'Call navi(BUTTON)
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         txtfields(0).Text = adoPrimaryRS(0)
         txtfields(1).Text = adoPrimaryRS("Adjustment Weight")
         txtfields(2).Text = adoPrimaryRS("Reason")
         DTPicker1(0).value = adoPrimaryRS("Lot Date")
         DTPicker1(1).value = adoPrimaryRS("Adjust Date")
         Combo1.Text = adoPrimaryRS("Adjust")
         StatusBar1.Panels(2).Text = "Last Record"
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
       MsgBox Err.Description, vbInformation, head
    
'
Case 9
        'Save
        If Opt = "add" Or Opt = "mod" Then

            Screen.MousePointer = 11
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
            If txtfields(0).Text = "" Then
                MsgBox "Please Enter the Lot No. First", vbInformation, head
                Exit Sub
            End If
           If Opt = "add" Then
                    Set TrnLog = New Recordset
    TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
    TrnLog.AddNew
        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
        TrnLog("moduleNo") = ModuleNo
        TrnLog("Trans_Name") = "Adjustment"
        TrnLog("Trans_Mod") = "Add"
        TrnLog("Trans_IPADD") = LocalIP
        TrnLog("Trans_Host") = LocalHost
        TrnLog("Trans_UserId") = usrid
        Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
        TrnLog("docno") = val(txtfields(0).Text)
        TrnLog("docdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
                 '   TrnLog("lotno") = rss("pack_year").value
        TrnLog("lotno") = val(txtfields(0).Text)
        TrnLog("lotdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
        TrnLog("ordkgs") = val(txtfields(1).Text)
        TrnLog("Line_No") = Combo1.Text

       
        TrnLog.UpdateBatch adAffectAllChapters
           End If
            strSQL = "update rm_lot set adjust='" & Combo1.Text & "',adjreason='" & IIf(txtfields(2).Text = "", Null, txtfields(2).Text) & "',adjwt='" & txtfields(1).Text & "',adjdt='" & Format(MaskEdBox1(0).Text, "yyyy-mm-dd") & "' where lotno='" & txtfields(0).Text & "' and LOTDT ='" & Format(DTPicker1(0).value, "yyyy-mm-dd") & "' and Divcode = '" & Divcode & "'"
            
            DB.Execute strSQL
            DB.CommitTrans
            If Opt = "add" Then
                Opt = " "
                MsgBox "Record(s) Saved", vbInformation, head
            ElseIf Opt = "mod" Then
                Opt = " "
                
                            
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
                               ' TrnLog("TC") = 3
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Adjustment"
                TrnLog("Trans_Mod") = "Mod"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
                TrnLog("docno") = val(txtfields(0).Text)
                TrnLog("docdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
                         '   TrnLog("lotno") = rss("pack_year").value
                TrnLog("lotno") = val(txtfields(0).Text)
                TrnLog("lotdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
                TrnLog("ordkgs") = val(txtfields(1).Text)
                TrnLog("Line_No") = Combo1.Text
        
               
                TrnLog.UpdateBatch adAffectAllChapters
                
                MsgBox "Record(s) Modified", vbInformation, head
            End If
        End If
        If Opt = "del" Then
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
            If txtfields(0).Text = "" Then
                MsgBox "Please Enter the Lot No. First", vbInformation, head
                Exit Sub
            End If
            GG = MsgBox("Do You Want to Delete this Record?", vbYesNo, head)
            If GG = vbYes Then
                adoPrimaryRS.MoveFirst
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,packno,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
                                   ' TrnLog("TC") = 3
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Adjustment"
                TrnLog("Trans_Mod") = "Del"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
                TrnLog("docno") = val(txtfields(0).Text)
                TrnLog("docdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
                             '   TrnLog("lotno") = rss("pack_year").value
                TrnLog("lotno") = val(txtfields(0).Text)
                TrnLog("lotdt") = Format(DTPicker1(0).value, "yyyy-mm-dd")
                TrnLog("ordkgs") = val(txtfields(1).Text)
                TrnLog("Line_No") = Combo1.Text
                TrnLog.UpdateBatch adAffectAllChapters
                
                DB.Execute "update rm_lot set adjust=NULL,adjwt=NULL,adjdt=NULL,reason=NULL where lotno='" & txtfields(0).Text & "' and LOTDT='" & Format(DTPicker1(0), "yyyy-mm-dd") & "'"
                DB.CommitTrans
            End If
            If Opt = "del" Then
                Opt = " "
                MsgBox "Record(s) Deleted", vbInformation, head
            End If
        End If
        Call QUERY_MODE
        Screen.MousePointer = 0
        
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
Select Case Opt
    Case "mod"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "add"
        DB.RollbackTrans
        SSTab1.Enabled = False
    Case "del"
        DB.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    End Select
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    If Opt = "updat" Then
        DB.RollbackTrans
        Opt = "qry"
    End If
    Opt = ""
    Set adoPrimaryRS = New Recordset
    strSQL = "select lotno ""LotNo"",lotdt ""Lot Date"",adjust,adjwt""Adjustment Weight"",adjreason""Reason"",adjust ""Adjust"",adjdt""Adjust Date"" from rm_lot where rejflg='N' and adjdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND ADJWT >0"
    adoPrimaryRS.Open strSQL, DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount > 0 Then
        adoPrimaryRS.MoveFirst
    End If
    Call bindcontls
    Screen.MousePointer = 0
    Call disablcontls
    Call cancl(BUTTON)
    BUTTON(0).SetFocus
    'Call NEWFORM(BUTTON)
    'Call NEWFORM1(BUTTON, 11)
    
    If Opt = "qry" Then
        Call QUERY_MODE
    End If
    Call NEWFORM1(BUTTON, GSNO)
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
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  On Error Resume Next
  intervalMinutes = -1
  If Opt <> "list" Or Opt <> "updat" Then
        StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
  
  If Opt = "qry" Or Opt = " " Or Opt = "" Then
    txtfields(0).Text = adoPrimaryRS("lotno").value
    MaskEdBox1(0).Text = Format(adoPrimaryRS("Adjust Date"), "dd/MM/yyyy")
    txtfields(2).Text = adoPrimaryRS("reason")
    txtfields(1).Text = Format(adoPrimaryRS("Adjustment Weight"), "0.000")
    
    Combo1.Text = adoPrimaryRS("Adjust")
  End If
  If Opt = "add" Then
    txtfields(0).Text = " "
    txtfields(2).Text = " "
    txtfields(1).Text = " "
  End If
  
  
End Sub
Private Sub QUERY_MODE()
On Error GoTo QUERY_MODE_Error
intervalMinutes = -1
If Opt = " " Or Opt = "qry" Then
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select top 10 lotno ""LotNo"",lotdt ""Lot Date"",adjust,adjwt""Adjustment Weight"",adjreason""Reason"",adjust ""Adjust"",adjdt""Adjust Date"" from rm_lot where rejflg='N' and adjdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND ADJWT >0", DB, adOpenStatic, adLockBatchOptimistic
    If adoPrimaryRS.RecordCount > 0 Then
'        adoPrimaryRS.MoveFirst
        Combo1.Text = adoPrimaryRS("adjust")
        txtfields(1).Text = adoPrimaryRS("Adjustment Weight")
    End If
    Call disablcontls
    Call bindcontls
    Call cancl(BUTTON)
    Call NEWFORM1(BUTTON, GSNO)
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    End If

End If

intervalMinutes = -1
Exit Sub
QUERY_MODE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmStockAdj", vbInformation, head
    End Sub

Private Sub Combo1_GotFocus()
On Error GoTo Combo1_GotFocus_Error

    Combo1.BackColor = &HC0FFC0
    StatusBar1.Panels(2).Text = "Select Adjustment Type ' + ' or  ' - '"

Exit Sub
Combo1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_GotFocus of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Combo1_LostFocus()
On Error GoTo Combo1_LostFocus_Error

    Combo1.BackColor = &HFFFFFF

Exit Sub
Combo1_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Combo1_LostFocus of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
On Error GoTo Command3_Click_Error

If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Select Case KslList1.listfield1
        Case "lotno"
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select lotno,lotdt,adjdt,adjwt,adjreason,adjust from rm_lot where lotno='" & KslList1.Code & "' and lotYEAR='" & Year(yfdate) & "'  and divcode='" & Divcode & "' and lotdt='" & Format(KslList1.Description, "yyyy-mm-dd") & "'", DB, adOpenStatic
            Frame3.Visible = False
            SSTab1.Visible = True
            txtfields(0).Text = KslList1.Code
            DTPicker1(0).value = Format(adoPrimaryRS("lotdt"), "dd/mm/yyyy")
            If Opt = "mod" Or Opt = "del" Then
                txtfields(2).Text = adoPrimaryRS("adjreason")
                txtfields(1).Text = adoPrimaryRS("adjwt")
                DTPicker1(1).value = adoPrimaryRS("adjdt")
                MaskEdBox1(0).Text = Format(DTPicker1(1).value, "dd/MM/yyyy")
                Combo1.Text = adoPrimaryRS("adjust")
            End If
            'DTPicker1(0).Enabled = True
            DTPicker1(1).Enabled = True
            MaskEdBox1(0).Enabled = True
            If Opt <> "del" Then
                MaskEdBox1(0).SetFocus
            End If
    End Select
    
End If


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmStockAdj", vbInformation, head
End Sub

Private Sub DTPicker1_CloseUp(Index As Integer)
On Error GoTo DTPicker1_CloseUp_Error

If Not (DTPicker1(1).value >= yfdate And DTPicker1(1).value <= pdate) Then
   MsgBox "Issue date should fall within the processing date", vbInformation, head
   Screen.MousePointer = 0
   Exit Sub
Else
   MaskEdBox1(0).Text = DTPicker1(1).value
   MaskEdBox1(0).SetFocus
End If

Exit Sub
DTPicker1_CloseUp_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_CloseUp of Form FrmStockAdj", vbInformation, head
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
    If Frame3.Visible = True Then
        Frame3.Visible = False
'        UserFooter1.Visible = False
'        Command1.Visible = False
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
  Opt = "qry"
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  'TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  Call QUERY_MODE

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmStockAdj", vbInformation, head
 
  End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
  End Sub
Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error
intervalMinutes = -1
    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
        Call BUTTON_Click(12)
    'ElseIf KeyCode = vbKeyW And Shift = 2 Then
     '   Call Command6_Click
    End If

Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub clearval()
For i = 0 To 1
  txtfields(i).Text = ""
Next
End Sub
Public Sub disabletxt()
For i = 0 To 1
  txtfields(i).Locked = True
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

Private Sub MaskEdBox1_Change(Index As Integer)
On Error GoTo MaskEdBox1_Change_Error

If Opt = "add" Or Opt = "mod" Then
   Select Case Index
   Case 0
      If (MaskEdBox1(0).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
         If Not (IsDate(MaskEdBox1(0).Text)) Then
            MsgBox ("Please Enter valid date"), vbInformation, head
            MaskEdBox1(0).Text = pdate
            MaskEdBox1(0).SetFocus
         ElseIf CDate(MaskEdBox1(0).Text) > pdate Then
            MsgBox ("Project date should not be greater then processing date"), vbInformation, head
            MaskEdBox1(0).SetFocus
         End If
      End If
   End Select
End If

Exit Sub
MaskEdBox1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Change of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox1_GotFocus(Index As Integer)
On Error GoTo MaskEdBox1_GotFocus_Error

    MaskEdBox1(0).BackColor = &HC0FFC0

Exit Sub
MaskEdBox1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_GotFocus of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub MaskEdBox1_LostFocus(Index As Integer)
'Select Case Index
'  Case 2
'     If (MaskEdBox1(2).Enabled) And Not (Opt = "query" Or Opt = "" Or Opt = " ") Then
'        If Not (IsDate(MaskEdBox1(2).Text)) Then
'           MsgBox ("invalid date")
'           MaskEdBox1(2).Text = pdate
'           MaskEdBox1(2).SetFocus
'        ElseIf CDate(MaskEdBox1(2).Text) > CDate(MaskEdBox1(0).Text) Then
'           MsgBox "ATL Date should be before Arrival Date", vbInformation, head
'           MaskEdBox1(2).Text = MaskEdBox1(0).Text
'        End If
'     End If
'End Select
MaskEdBox1(0).BackColor = &HFFFFFF
End Sub

Private Sub txtFields_Change(Index As Integer)
    txtfields(1).Text = Format(val(txtfields(1).Text), "0.000")
End Sub

Private Sub txtfields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

If Opt = "add" Then
  Select Case Index
    Case 0
        StatusBar1.Panels(2).Text = "Select Lot No. from Lot No. Listing"
    Case 1
        StatusBar1.Panels(2).Text = "Enter Maximum of 10 Integers"
    Case 2
        StatusBar1.Panels(2).Text = "Enter Maximum of 30 Characters"
  End Select
  
  txtfields(Index).BackColor = &HC0FFC0
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub txtfields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

If Opt = "add" Or Opt = "mod" Then
    If (KeyCode = 13 Or KeyCode = 9) And (Opt = "add" Or Opt = "mod") Then
        SendKeys ("{TAB}")
        Exit Sub
    End If
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
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)   ''Cancel
    End If
End If

Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtFields_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
  Select Case Index
    Case 0
      Call tonum(txtfields(0), 10, KeyAscii)
    Case 1
      Call tonum(txtfields(1), 10, KeyAscii)
    Case 2
      Call ToAlphaNumber(txtfields(1), 30, KeyAscii)
      
    
  End Select
End If

Exit Sub
txtFields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form FrmStockAdj", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtFields_LostFocus_Error

a = txtfields(0).Text
If Opt = "add" Then
Select Case Index
Case 0
    Set adoSecondaryRS = New Recordset
   ' adoSecondaryRS.Open "select lotno from rm_lot where divcode='" & Divcode & "' and lotno='" & txtfields(0).Text & "'  and  lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT IS NULL AND ISSBAL IS NULL ", db, adOpenStatic, adLockBatchOptimistic
   
    adoSecondaryRS.Open "select lotno from rm_lot where divcode='" & Divcode & "' and lotno=" & val(txtfields(0).Text) & "  and  lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND ISSWT IS NULL AND ISSBAL IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
   
    If adoSecondaryRS.RecordCount = 0 Then
      StatusBar1.Panels(2).Text = "Select Lot No. from the List"
      LookUp.clear = True
      LookUp.query = "Select lotno""Lot No."",lotdt""Lot Date"" from rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND ISSWT >0 AND ISSBAL>0 AND REJFLG='N'"
      LookUp.Caption = "Lot Number Listing"
      LookUp.DefCol = "Lot No."
      LookUp.ALIGN = "2000,2000"
      LookUp.Show vbModal
      If LookUp.Cancel = False Then
         txtfields(0).Text = LookUp.Fields(0)
         DTPicker1(0).value = Format(LookUp.Fields(1), "dd/MM/YYYY")
         LookUp.clear = True
      Else
'         txtFields(0).SetFocus
         QUERY_MODE
         Exit Sub
      End If
    
End If
'        Frame3.Visible = False
'        SSTab1.Visible = True
'        txtFields(0).Text = adoSecondaryRS(0).Value
'    Else
''        SSTab1.Visible = False
'        Frame3.Visible = True
'        KslList1.conn = connectstring
'        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and lotyear='" & Year(yfdate) & "' AND ISSWT >0 AND ISSBAL>0 AND REJFLG='N'"
'        KslList1.listfield1 = "lotno"
'        KslList1.listfield2 = "lotDT"
'        KslList1.SetFocus
'    End If
End Select
End If

txtfields(Index).BackColor = &HFFFFFF
Exit Sub
txtFields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form FrmStockAdj", vbInformation, head
End Sub
Public Sub bindcontls()

On Error Resume Next

For Each oText In Me.txtfields
    Set oText.DataSource = adoPrimaryRS
Next

DTPicker1(0).DataField = "lotdt"
DTPicker1(1).DataField = "adjdt"


Set DTPicker1(0).DataSource = adoPrimaryRS
Set DTPicker1(1).DataSource = adoPrimaryRS


DTPicker2.maxdate = pdate
DTPicker2.MinDate = yfdate


If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    DTPicker1(0).value = Format(adoPrimaryRS("Lot Date"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("rejdt")) = False Then
    DTPicker1(1).value = Format(adoPrimaryRS("Rejected Date"), "dd/mm/yyyy")
Else
    DTPicker1(1).value = "__/__/____"
End If

End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 0 To 2
    txtfields(i).Locked = False
Next

'DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False

Combo1.Enabled = True
Frame1.Enabled = True
'txtfields(0).Enabled = True
'txtfields(0).SetFocus

End Sub

Public Sub disablcontls()
Dim i As Integer

For i = 0 To 2
  txtfields(i).Locked = True
Next

DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False
Combo1.Enabled = False


End Sub
