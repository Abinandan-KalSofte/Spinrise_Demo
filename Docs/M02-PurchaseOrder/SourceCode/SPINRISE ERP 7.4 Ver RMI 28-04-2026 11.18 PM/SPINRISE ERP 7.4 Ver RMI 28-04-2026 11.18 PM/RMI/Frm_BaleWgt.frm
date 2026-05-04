VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_BaleWgt 
   Caption         =   "Category wise Bale Weight Range "
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   12480
      Top             =   720
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.PictureBox FraOrd 
      Appearance      =   0  'Flat
      BackColor       =   &H00C0C0C0&
      DrawMode        =   1  'Blackness
      DrawWidth       =   2
      FillColor       =   &H0080FFFF&
      FillStyle       =   0  'Solid
      ForeColor       =   &H80000008&
      Height          =   6795
      Left            =   2160
      ScaleHeight     =   6765
      ScaleWidth      =   8610
      TabIndex        =   18
      ToolTipText     =   "Select an item from list"
      Top             =   1920
      Visible         =   0   'False
      Width           =   8640
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   6960
         TabIndex        =   28
         Top             =   480
         Visible         =   0   'False
         Width           =   1425
      End
      Begin VB.CommandButton Command2 
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
         Left            =   4260
         MaskColor       =   &H00FFFF80&
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   6300
         UseMaskColor    =   -1  'True
         Width           =   1035
      End
      Begin VB.CommandButton CmdOrderOk 
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
         Left            =   3060
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   6300
         Width           =   1035
      End
      Begin VB.CheckBox Check1 
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
         TabIndex        =   19
         Top             =   600
         Width           =   525
      End
      Begin FPSpreadADO.fpSpread SpdSIZEORD 
         Height          =   5430
         Left            =   60
         TabIndex        =   22
         Top             =   855
         Width           =   8535
         _Version        =   524288
         _ExtentX        =   15055
         _ExtentY        =   9578
         _StockProps     =   64
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ScrollBarExtMode=   -1  'True
         SpreadDesigner  =   "Frm_BaleWgt.frx":0000
      End
      Begin VB.Label Label18 
         AutoSize        =   -1  'True
         BackColor       =   &H00C0C0C0&
         Caption         =   "Find Variety"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   195
         Left            =   5520
         TabIndex        =   29
         Top             =   600
         Visible         =   0   'False
         Width           =   1020
      End
      Begin VB.Label Label11 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00800000&
         Caption         =   "Category List"
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
         Left            =   60
         TabIndex        =   23
         Top             =   45
         Width           =   8505
      End
      Begin VB.Line Line1 
         BorderWidth     =   2
         X1              =   -15
         X2              =   8520
         Y1              =   480
         Y2              =   480
      End
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   12
         Left            =   5280
         Picture         =   "Frm_BaleWgt.frx":042A
         Style           =   1  'Graphical
         TabIndex        =   35
         ToolTipText     =   "Crystal (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":086C
         Height          =   510
         Index           =   8
         Left            =   3675
         Picture         =   "Frm_BaleWgt.frx":0CB6
         Style           =   1  'Graphical
         TabIndex        =   14
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Frm_BaleWgt.frx":1018
         Height          =   510
         Index           =   10
         Left            =   4725
         Picture         =   "Frm_BaleWgt.frx":1322
         Style           =   1  'Graphical
         TabIndex        =   13
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":169E
         Height          =   510
         Index           =   9
         Left            =   4200
         Picture         =   "Frm_BaleWgt.frx":19A8
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":1D4A
         Height          =   510
         Index           =   11
         Left            =   5790
         Picture         =   "Frm_BaleWgt.frx":2194
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":2529
         Height          =   510
         Index           =   7
         Left            =   3150
         Picture         =   "Frm_BaleWgt.frx":2973
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   6420
         Picture         =   "Frm_BaleWgt.frx":2CC3
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":305A
         Height          =   510
         Index           =   1
         Left            =   555
         Picture         =   "Frm_BaleWgt.frx":3364
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":36DE
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
         Left            =   1065
         Picture         =   "Frm_BaleWgt.frx":39E8
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":3D84
         Height          =   510
         Index           =   5
         Left            =   2115
         Picture         =   "Frm_BaleWgt.frx":41CE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":4533
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_BaleWgt.frx":483D
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_BaleWgt.frx":4BD0
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "Frm_BaleWgt.frx":501A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   4
         Left            =   1590
         Picture         =   "Frm_BaleWgt.frx":5367
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   135
         Width           =   520
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
         Left            =   7920
         TabIndex        =   16
         Top             =   255
         Width           =   840
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
         Left            =   9120
         TabIndex        =   15
         Top             =   255
         Width           =   630
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   7965
      Left            =   240
      TabIndex        =   0
      Top             =   1200
      Width           =   10845
      _ExtentX        =   19129
      _ExtentY        =   14049
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "."
      TabPicture(0)   =   "Frm_BaleWgt.frx":5799
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "FraDespatch"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame1"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   -1440
         Picture         =   "Frm_BaleWgt.frx":57B5
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "Crystal (Ctrl Y)"
         Top             =   120
         Width           =   510
      End
      Begin VB.Frame Frame1 
         Height          =   7215
         Left            =   75
         TabIndex        =   32
         Top             =   720
         Width           =   10620
         Begin FPSpreadADO.fpSpread SpdEmpAllocation 
            Height          =   6885
            Left            =   120
            TabIndex        =   33
            Top             =   240
            Width           =   10350
            _Version        =   524288
            _ExtentX        =   18256
            _ExtentY        =   12144
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
            SpreadDesigner  =   "Frm_BaleWgt.frx":5BF7
            Appearance      =   2
         End
      End
      Begin VB.PictureBox FraDespatch 
         Appearance      =   0  'Flat
         ForeColor       =   &H80000008&
         Height          =   600
         Left            =   75
         ScaleHeight     =   570
         ScaleWidth      =   10590
         TabIndex        =   25
         Top             =   90
         Width           =   10620
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00FFFFFF&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   2
            Left            =   4830
            TabIndex        =   1
            Text            =   "A"
            Top             =   60
            Visible         =   0   'False
            Width           =   1320
         End
         Begin VB.TextBox TXTFIELDS 
            Appearance      =   0  'Flat
            BackColor       =   &H00E0E0E0&
            ForeColor       =   &H00800000&
            Height          =   330
            Index           =   1
            Left            =   6180
            TabIndex        =   30
            Top             =   45
            Visible         =   0   'False
            Width           =   4230
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            DataField       =   "DocDate"
            Height          =   315
            Left            =   1680
            TabIndex        =   26
            Top             =   120
            Width           =   1290
            _ExtentX        =   2275
            _ExtentY        =   556
            _Version        =   393216
            Enabled         =   0   'False
            Format          =   145424385
            CurrentDate     =   41403
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Category"
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
            Left            =   3540
            TabIndex        =   31
            Top             =   120
            Visible         =   0   'False
            Width           =   780
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Document Date"
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
            Left            =   120
            TabIndex        =   27
            Top             =   180
            Width           =   1320
         End
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   390
      Top             =   8415
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   17
      Top             =   2895
      Width           =   4680
      _ExtentX        =   8255
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
            Alignment       =   1
            AutoSize        =   1
            Object.Width           =   14729
            MinWidth        =   14729
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "14/09/2022"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "1:02 PM"
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Category wise Bale Weight Range "
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
      Height          =   390
      Left            =   150
      TabIndex        =   24
      Top             =   750
      Width           =   6870
   End
End
Attribute VB_Name = "Frm_BaleWgt"
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
Dim Loadflg As Integer
Dim VarProd As String
Dim TmpRs As New Recordset
Private Enum E_SIZELISTDC1
    SPDSCHECK1 = 1
    SPDSSNO
    SPDSBCAT
    SPDSBCATDesc
    SPDSBFromWgt
    SPDSBToWgt
End Enum
Private Enum SpdAllocation
    SPDDSNO = 1
    SPDCAT
    SPDCATDESC
    SPDFromWgt
    SPDToWgt
End Enum
Dim EmployeeNo As String
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
    End If
    If Opt = "" Or Opt = "qry" Then
        If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
            If adoPrimaryRS("DocDate") <> "" Then
                DTPicker1.value = Format(adoPrimaryRS("DocDate"), "dd/mm/yyyy")
            Else
            
            End If
            
'            If adoPrimaryRS("joDate") <> "" Then
'                MaskEdBox2.Text = Format(adoPrimaryRS("joDate"), "dd/mm/yyyy")
'            Else'
'            End If
                                              
            Call SETDESPATCHHead
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd where docdate='" & Format(adoPrimaryRS("DocDate"), "yyyy/mm/dd") & "'  Order by a.DocSno", DB, adOpenStatic, adLockBatchOptimistic
            Call SpdLoad
        End If
    End If

End Sub
Private Sub SpdLoad()
        Call SETDESPATCHHead
        With SpdEmpAllocation
            .MaxRows = 0
            .MaxCols = SpdAllocation.SPDToWgt
            .CursorStyle = CursorStyleArrow
        RW = 1
        Do While Not adoSecondaryRS.EOF
            .MaxRows = .MaxRows + 1
            .SetText SpdAllocation.SPDDSNO, RW, RW ' adoSecondaryRS("DOCSNO")

            .SetText SpdAllocation.SPDFromWgt, RW, adoSecondaryRS("FromWgt")
            
            If Opt = "mod" Then
                VarProd = VarProd + ",'" & Trim(adoSecondaryRS("catcd")) & "'"
            End If
            
            .SetText SpdAllocation.SPDToWgt, RW, adoSecondaryRS("ToWgt")
            .SetText SpdAllocation.SPDCATDESC, RW, adoSecondaryRS("CATNAME")
       
'            .SetText SpdAllocation.SPDSupplier, RW, adoSecondaryRS("SUPCD")
            .SetText SpdAllocation.SPDCAT, RW, adoSecondaryRS("catcd")
'            .SetText SpdAllocation.SPDCATDESC, RW, adoSecondaryRS("ticketno")
            DTPicker1.value = adoSecondaryRS("docdate")
            RW = RW + 1
            adoSecondaryRS.MoveNext
        Loop
        End With
End Sub

Private Sub BUTTON_Click(Index As Integer)
 intervalMinutes = -1
Select Case Index

    Case 0
    
            Set Servrs = New Recordset
            Servrs.Open "select DATEDIFF(D,'" & Format(pdate, "yyyy-MM-dd") & "',getdate()) as s_day", DB
            Serverday = Servrs("s_day")
            
            If Pentrylock = "Y" And Serverday > Lockdays - 1 Then
                MsgBox "Entry Date Expired For This User !", vbInformation, head
                Screen.MousePointer = 0
            Exit Sub
            End If
            Opt = "add"
            Loadflg = 0
            FraDespatch.Enabled = True
          '  TXTFIELDS(8).SetFocus
            desc.Caption = "Addition"
            stbar.Panels(2).Text = "Addition"
            Screen.MousePointer = 11
            stbar.Panels(2).Text = "                "
            DTPicker1.value = pdate
            VarProd = "' '"
           ' MaskEdBox2.Text = "__/__/____"
            FraOrd.Visible = False
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select docdate from RM_BaleWgtRange a where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
            Set adoSecondaryRS = New Recordset
            adoSecondaryRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd     where  1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
            Opt = "add"
            adoPrimaryRS.AddNew
            Call bindcontls
'            Label4.Visible = True
'            TXTFIELDS(2).Visible = True
'            TXTFIELDS(1).Visible = True
            tottot = 0
          '  TXTFIELDS(7).Text = ""
            TXTFIELDS(1).Text = ""
            TXTFIELDS(2).Text = "A"
           ' TXTFIELDS(8).Text = ""
            If DB.State = 0 Then DB.BeginTrans
            Call ENABLCONTLS
            Call adddelmod(BUTTON)
            
            Screen.MousePointer = 0
           ' TXTFIELDS(8).SetFocus
            Call SETDESPATCHHead
             If Opt = "add" And Loadflg = 0 Then
             Call SETDESPATCHHead
             Loadflg = 1
            End If
 

             FraOrd.ZOrder
            FraOrd.Visible = True
            Buttonframe.Enabled = False
            stbar.Panels(2).Text = "Select an Variety from the list"
            Call SETSIZEORDHead
            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset

            ItmRs.Open " select distinct catcd,catname from vw_VarietyList a wHERE (A.CATCD ='" & Trim(TXTFIELDS(2).Text) & "' or '" & Trim(TXTFIELDS(2).Text) & "'='A') and catcd not in (" & VarProd & ") and catcd not in(select catcd from RM_BaleWgtRange where docdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "')", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("catcd")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("catname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBToWgt, RW, ItmRs("ToWgt")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBFromWgt, RW, ItmRs("FromWgt")

                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdSIZEORD.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            
'            SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'            SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, RW, SpdEmpAllocation.MaxRows
    Case 1
        If Record_Exists("RM_BaleWgtRange") = False Then Exit Sub
        Opt = "mod"
        Set rsk = New Recordset
        FraDespatch.Enabled = True
'        rsk.Open "select TOP 1 A.DocNo,DocDate,Convert(numeric(18,0),Docno) as DocNoss from RM_BaleWgtRange A where divcode ='" & Divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "' Order By DocNoss Desc", DB, adOpenStatic, adLockReadOnly
'        If rsk.RecordCount > 0 Then
            desc.Caption = "Modify"
             VarProd = "' '"
            LookUp.Clear = True

            LookUp.query = "select distinct Docdate 'Entry Date',a.Catcd 'Category Code' ,Catname 'Category Name' from RM_BaleWgtRange A inner join rm_cat b on a.catcd=b.catcd and docdate=(select max(docdate ) from RM_BaleWgtRange bb where a.catcd=bb.catcd) "
        
            LookUp.Caption = "Bale Weight Range Listing"
            LookUp.DefCol = "Entry Date"
            LookUp.ALIGN = "1500,1000,3000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                DTPicker1.value = LookUp.Fields(0)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select Docdate from RM_BaleWgtRange a where  docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "' and catcd='" & LookUp.Fields(1) & "'  ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                  ' DTPicker1.value = adoPrimaryRS("docdate")
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd where docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "' and a.catcd='" & LookUp.Fields(1) & "' and a.catcd='" & LookUp.Fields(1) & "'   ", DB, adOpenStatic, adLockBatchOptimistic
                    Loadflg = 1
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
                Label4.Visible = False
                TXTFIELDS(2).Visible = False
             '   TXTFIELDS(8).Locked = True
                TXTFIELDS(1).Visible = False
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
'        End If
            
    
    
    
                
    Case 2
   ' Exit Sub
        If Record_Exists("RM_BaleWgtRange") = False Then Exit Sub
        Opt = "del"
  
            LookUp.query = "select distinct Docdate 'Entry Date',a.Catcd 'Category Code' ,Catname 'Category Name' from RM_BaleWgtRange A inner join rm_cat b on a.catcd=b.catcd  and docdate=(select max(docdate ) from RM_BaleWgtRange bb where a.catcd=bb.catcd) "
        
            LookUp.Caption = "Bale Weight Range Listing"
            LookUp.DefCol = "Entry Date"
            LookUp.ALIGN = "1500,1000,3000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                DTPicker1.value = LookUp.Fields(0)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select a.docdate from RM_BaleWgtRange a where  docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "' and a.catcd='" & LookUp.Fields(1) & "'   ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                 
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd where docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "' and a.catcd='" & LookUp.Fields(1) & "'   ", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
            Buttonframe.Enabled = True
        
    Case 4
        Opt = "fnd"
            LookUp.Clear = True
      

            LookUp.query = "select distinct Docdate 'Entry Date',a.Catcd 'Category Code' ,Catname 'Category Name' from RM_BaleWgtRange A inner join rm_cat b on a.catcd=b.catcd  and docdate=(select max(docdate ) from RM_BaleWgtRange bb where a.catcd=bb.catcd) "
        
            LookUp.Caption = "Bale Weight Range Listing"
            LookUp.DefCol = "Entry Date"
            LookUp.ALIGN = "1500,1000,3000"
           ' LookUp.Alignment = "L,C,L"
            Screen.MousePointer = 0
             LookUp.Show vbModal
            If LookUp.Cancel = False Then
                    DTPicker1.value = LookUp.Fields(0)
                Call adddelmod(BUTTON)
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select docdate from RM_BaleWgtRange a where   docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "'  and a.catcd='" & LookUp.Fields(1) & "'   ", DB, adOpenStatic, adLockBatchOptimistic
                If adoPrimaryRS.RecordCount > 0 Then
                    Set adoSecondaryRS = New Recordset
                    adoSecondaryRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd where  docdate = '" & Format(LookUp.Fields(0), "yyyy-mm-dd") & "'  and a.catcd='" & LookUp.Fields(1) & "' ", DB, adOpenStatic, adLockBatchOptimistic
                    Call SpdLoad
                Else
                    MsgBox "Select a Valid Value from the list", vbOKOnly, head
                    Exit Sub
                End If
                LookUp.Clear = True
                Call bindcontls
                Call ENABLCONTLS
                FraDespatch.Enabled = True
                Screen.MousePointer = 0
             Else
                Opt = " "
             End If
             '19/02/14
             BUTTON(9).Enabled = False
            Buttonframe.Enabled = True
        
    Case 5
            'first
            desc.Caption = "Query"
            On Error GoTo GoFirstError
            adoPrimaryRS.MoveFirst
            'calling fir procedure from module
            Call FIR(BUTTON)
            Exit Sub
GoFirstError:
       
    Case 6
        'next
            desc.Caption = "Query"
            On Error GoTo GoNextError
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
            If adoPrimaryRS.EOF And adoPrimaryRS.RecordCount > 0 Then
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                adoPrimaryRS.MoveLast
            End If
            Exit Sub
GoNextError:
  
    Case 7
        'previous
            desc.Caption = "Query"
            On Error GoTo GoPrevError
            If Not adoPrimaryRS.BOF Then
                adoPrimaryRS.MovePrevious
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
            End If
            If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
                'moved off the end so go back
                BUTTON(5).Enabled = False
                BUTTON(7).Enabled = False
                BUTTON(6).Enabled = True
                BUTTON(8).Enabled = True
                adoPrimaryRS.MoveFirst
            End If
            Exit Sub
        
GoPrevError:
 
    Case 8
        'last
            desc.Caption = "Query"
            On Error GoTo GoLastError
            adoPrimaryRS.MoveLast
            'calling last procedure from module
            Call las(BUTTON)
            Exit Sub
GoLastError:



    Case 9
        'Save
            'Screen.MousePointer = 11
            desc.Caption = "Query"
            On Error GoTo er1
            'Call PoCalculation
            
            bolSave = True
            bolSave = False
            
            If Opt = "add" Then
'                If Trim(TXTFIELDS(8).Text) = "" Then
'                    MsgBox "Category Cannot be empty", vbInformation, head
'                    TXTFIELDS(8).SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If
        
                
    
                

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Category Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
                
                
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) = 0 Then
'                           MsgBox "Please Enter Quantity", vbInformation, head
'                           Exit Sub
'                        End If
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidEmp, RW)) = 0 Then
'                          MsgBox "Please Enter Employee Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                         End If
'
'                        If Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDExQty, RW)) <> 0 And Val(GetText(SpdEmpAllocation, SpdAllocation.SPDDDPaidComp, RW)) = 0 Then
'                          MsgBox "Please Enter Company Paid Amount in Setup", vbInformation, head
'                          Exit Sub
'                        End If
                         
                    Next
                End With
                
                YearNo = Format(yfdate, "YY")
'                Set TmpRs = New Recordset
'                TmpRs.Open "Select isnull(max(isnull(convert(numeric(18,0),DocNo),0)),0)+1 AS Last_docno From RM_BaleWgtRange where Divcode ='" & Divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
'                If Not TmpRs.EOF Then
'                    Last_docno = TmpRs("Last_docno")
'                End If
'                docNo = (Last_docno)
                
'             If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
            '   adoPrimaryRS("DIVCODE") = Divcode
           
              adoPrimaryRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd")
              'adoPrimaryRS("SLCODE") = TXTFIELDS(8).Text
                
       
                

               ' adoPrimaryRS("EntryDate") = Now
                Dim inc As Integer
                inc = 1
                Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,towgt from RM_BaleWgtRange a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW)) <> 0 And val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW)) <> 0 Then
                            UPDRS.AddNew
                          '  UPDRS("divcode") = Divcode
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd") '& " " & Format(Now, "HH:MM:SS")
                            UPDRS("DocSno") = inc
                           ' UPDRS("SUPCD") = Trim(TXTFIELDS(8).Text)
                            UPDRS("CATCD") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            UPDRS("FromWgt") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW))
                            UPDRS("toWgt") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW))
                            
                             Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,catcd FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Bale Range"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            Set RSCHECK = DB.Execute("Select GetDate()")
                            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                            TrnLog("catcd") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            TrnLog("code") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW))
                            TrnLog("description") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW))
             
                            TrnLog.UpdateBatch adAffectAllChapters
                    
                            
                            
                            inc = inc + 1
                        End If
                    Next
                End With
               ' adoPrimaryRS.UpdateBatch adAffectAllChapters
                UPDRS.UpdateBatch adAffectAllChapters
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
                Dim rs_cust As New ADODB.Recordset

                
        End If
        
        
''09/10/13
        If Opt = "mod" Then

'               If Trim(TXTFIELDS(8).Text) = "" Then
'                    MsgBox "Entry Date Cannot be Empty", vbInformation, head
'                    TXTFIELDS(8).SetFocus
'                    Screen.MousePointer = vbArrow
'                    Exit Sub
'                End If

            
     
            bolSave = True
            bolSave = False

            'If Opt = "add" Then

                With SpdEmpAllocation
                    If .MaxRows = 0 Then
                        MsgBox "No Item Details,Transaction Aborted", vbInformation, head
                        DB.RollbackTrans
                        Call query_mode(0)
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                End With
'                YearNo = Format(yfdate, "YY")
'
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                          DB.Execute ("Delete From RM_BaleWgtRange  WHERE  docdate = '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and catcd='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW)) & "' "), xx
                    Next
                End With
                

                'Set tmprs = New Recordset
                'tmprs.Open "Select isnull(max(isnull(DocNo,0)),0)+1 AS Last_docno From RM_BaleWgtRange where Divcode ='" & divcode & "' And DocDate Between '" & Format(yfdate, "yyyy-MM-dd") & "' And '" & Format(yldate, "yyyy-MM-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic

                'If Not tmprs.EOF Then
                 '   Last_docno = Right(tmprs("Last_docno"), 6)
                'End If
                'DocNo = YearNo & Padl(CStr(Last_docno), 6, "0")

            Set adoPrimaryRS = New Recordset
'            adoPrimaryRS.Open "select Divcode,DocNo,DocDate,SLCODE,JONo,JODate,DespatchTo,VechicleNo,RemTime,EntryDate,Description from  RM_BaleWgtRange where  1= 2", DB, adOpenStatic, adLockBatchOptimistic
'
'            adoPrimaryRS.ADDNEW


              'docNo = Trim(TXTFIELDS(0).Text)

'              If docNo = "" Then Exit Sub
                Screen.MousePointer = vbHourglass
inc = 1
'               Dim UPDRS As Recordset
                Set UPDRS = New Recordset
                UPDRS.Open "select a.docsno,Docdate,a.CATCD,a.FromWgt,a.towgt from RM_BaleWgtRange a where 1 =2 ", DB, adOpenStatic, adLockBatchOptimistic
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                        If Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW)) <> "" And Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW)) <> "" Then
                            UPDRS.AddNew
                           ' UPDRS("divcode") = Divcode
                      
                            UPDRS("DocDate") = Format(DTPicker1.value, "yyyy-MM-dd") 'HH:MM:SS"
                            UPDRS("DocSno") = inc
                          '  UPDRS("SUPCD") = GetText(SpdEmpAllocation, SpdAllocation.SPDSupplier, RW)
                            UPDRS("CATCD") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            UPDRS("FromWgt") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW))
                            UPDRS("towgt") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW))
                            
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,catcd FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Bale Range"
                            TrnLog("Trans_Mod") = "Mod"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            Set RSCHECK = DB.Execute("Select GetDate()")
                            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                            TrnLog("catcd") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            TrnLog("code") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW))
                            TrnLog("description") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW))
             
                            TrnLog.UpdateBatch adAffectAllChapters
                            
                    inc = inc + 1

                        End If
                    Next
                End With

                UPDRS.UpdateBatch adAffectAllChapters
                MsgBox "Record(s) Saved Successfully", vbOKOnly, head
        ''End If

        End If
      
        
        
        If Opt = "del" Then
                With SpdEmpAllocation
                    For RW = 1 To .MaxRows
                        .Row = RW
                          DB.Execute ("Delete From RM_BaleWgtRange  WHERE  docdate = '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and catcd='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW)) & "' "), xx
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,catcd FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                           ' TrnLog("TC") = 3
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Bale Range"
                            TrnLog("Trans_Mod") = "Del"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            Set RSCHECK = DB.Execute("Select GetDate()")
                            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                            TrnLog("catcd") = Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, RW))
                            TrnLog("code") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDFromWgt, RW))
                            TrnLog("description") = val(GetText(SpdEmpAllocation, SpdAllocation.SPDToWgt, RW))
             
                            TrnLog.UpdateBatch adAffectAllChapters
                          
                    Next
                End With
           ' DB.Execute ("Delete From RM_BaleWgtRange  WHERE  docdate = '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' "), xx
           ' DB.Execute ("Delete From YN_SizingDeliveryDT  WHERE DIVCODE = '" & adoPrimaryRS("divcode") & "' and DocNo = " & Val(adoPrimaryRS("DocNo")) & " AND DocDate = '" & Format(adoPrimaryRS("DocDate"), "yyyy-MM-dd") & "'"), xx
            MsgBox "Record deleted Successfully", vbOKOnly, head
        End If
        ' Return to query mode
        Call query_mode(0)

        Call NEWFORM3(BUTTON, GSNO)
Case 10
    If Bud <> "Y" Then
        Bud = ""
        If MsgBox("Do you want to Cancel?", vbQuestion + vbYesNo, head) = vbNo Then Exit Sub
    End If
    Bud = ""

    desc.Caption = "Query"
    Screen.MousePointer = 11
    On Error Resume Next
    'CANCEL
    
    Select Case Opt
    Case "mod"
        'To undo changes made
        DB.RollbackTrans
    Case "add"
        'To undo addition
        DB.RollbackTrans
    Case "del"
        'To undo deletion
        DB.RollbackTrans
         
    End Select
    'To return default settings - i.e query mode
    'Call TaxClear(Me)
    Call query_mode(0)
    SSTab1.Visible = True
    grdDataGrid.Visible = True
    'calling cancl procedure from module
    'Call cancl(BUTTON, GSNO)
    Call NEWFORM3(BUTTON, GSNO)
    BUTTON(12).Enabled = True

Case 11
    'EXIT
    Unload Me
Case 12
    Dim Cystalrptbunk As New clsCrystal
    Set Cystalrptbunk.cryRept = Cry_Cat_BaleWght
    Cystalrptbunk.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
'    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0

End Select

Screen.MousePointer = 0
Exit Sub
er1:
    MsgBox Err.Description, vbInformation, head
SendKeys ("%")

SendKeys ("{esc}")
Screen.MousePointer = 0
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form quotatn", vbInformation, head
End Sub
Public Sub bindcontls()
On Error Resume Next
Dim oText As TextBox
  'Bind the text boxes to the recordset
  For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
  Next
On Error Resume Next

End Sub

Private Sub CmdRFQItemok_Click()

End Sub

Private Sub Check1_Click()
 For IntRow = 1 To SpdSIZEORD.MaxRows
        SpdSIZEORD.Row = IntRow
        SpdSIZEORD.Col = E_SIZELISTDC1.SPDSCHECK1
        SpdSIZEORD.value = Check1.value
    Next IntRow
End Sub

Private Sub CmdCrystal_Click(Index As Integer)
Dim ClsSizeDes As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(TXTFIELDS(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
'

'
End Sub

Private Sub CmdCrystalGP_Click()
    Dim ClsSizeDes1 As New clsCrystal
    'InvType = val(TXTFIELDS(11).Text)
    docNo = val(TXTFIELDS(0).Text)
    DOCDT = Format(DTPicker1.value, "yyyy-MM-dd")
    
    If docNo <> 0 Then
    ' With Wt
        'Set tmprs = New Recordset
        'tmprs.Open "Select DISTINCT * from YN_SizingDeliveryDT where DivCode =" & divcode & " and DocNo=" & val(txtfields(0).Text) & " and DocDate='" & Format(DTPicker1.Value, "yyyy-MM-dd") & "'", db, adOpenStatic, adLockBatchOptimistic
        'If tmprs.RecordCount > 4 Then
            'Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGP
        'Else
            Set ClsSizeDes1.cryRept = Tran_SizingDeliveryGPCut
            
        'End If
        
        ClsSizeDes1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepWvgPrep.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(1) = "@DocNo;" & docNo & ""
        CrystalReport1.ParameterFields(2) = "@DocDt;" & DOCDT & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        'CrystalReport1.printers
        Screen.MousePointer = 0
    End If
 
 
End Sub

Private Sub CmdOrderOk_Click()
    'Call SETDESPATCHHead
    chk = 0
    With SpdSIZEORD
        For RW = 1 To .MaxRows
            .Row = RW
            .Col = SPDSCHECK1
            If .value = True Then
                chk = 1
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                'SpdEmpAllocation.SetText SpdAllocation.SPDSupplier, SpdEmpAllocation.MaxRows, Trim(TXTFIELDS(8).Text)
                SpdEmpAllocation.SetText SpdAllocation.SPDCATDESC, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, RW)
                VarProd = VarProd + ",'" & Trim(GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, RW)) & "'"
'                SpdEmpAllocation.SetText SpdAllocation.SPDFromWgt, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBFromWgt, RW)
'                SpdEmpAllocation.SetText SpdAllocation.SPDToWgt, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBToWgt, RW)
  
                SpdEmpAllocation.SetText SpdAllocation.SPDCAT, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, RW)
'                SpdEmpAllocation.SetText SpdAllocation.SPDFromWgt, SpdEmpAllocation.MaxRows, GetText(SpdSIZEORD, E_SIZELISTDC1.SPDSBFromWgt, RW)
       
    
            End If
        Next
    End With
     SpdEmpAllocation.Col = SpdAllocation.SPDFromWgt
                SpdEmpAllocation.SetFocus
    FraOrd.Visible = False
   ' If TXTFIELDS(3).Enabled = True Then TXTFIELDS(9).SetFocus
    
End Sub

Private Sub Command2_Click()
FraOrd.Visible = False
End Sub

Private Sub Form_Load()
  
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
    desc.Caption = "Query"
    DATLAB.Caption = Format(pdate, "dd/mm/yy")
    Opt = "qry"
    DTPicker1.maxdate = pdate
    DTPicker1.value = pdate
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
'
    Call query_mode(0)
'    Set rs = New Recordset
'    rs.Open "select isnull(ProdAlias,'N') ProdAlias from  WVGPRPPARAM ", DB
'    If Not rs.EOF Then
'        prodflg = rs(0)
'    End If
    Call NEWFORM1(BUTTON, GSNO)
    FraDespatch.Enabled = True
    Set RsItem = New Recordset
    intervalMinutes = -1
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
    For Each oText In Me.TXTFIELDS
        oText.Locked = True
    Next
    'FraDespatch.Enabled = False
    'MaskEdBox2.Enabled = False
    DTPicker1.Enabled = False
End Sub

Public Sub query_mode(MDOC As Long)
On Error GoTo query_mode_Error
Dim oText As TextBox
    Label4.Visible = False
    TXTFIELDS(2).Visible = False
    TXTFIELDS(1).Visible = False
    bolSave = False
    FraOrd.Visible = False
    Call SETDESPATCHHead
    If Not Opt = "" Then
        Call disablcontls
        Set adoPrimaryRS = New Recordset
        If MDOC = 0 Then
            Call qry1
            Opt = ""
        Else
        Call fnd1(MDOC)
    End If
    If adoPrimaryRS.AbsolutePosition > 0 Then
        stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    Else
        stbar.Panels(2).Text = "No Record found"
        Call NEWFORM3(BUTTON, GSNO)
        If adoPrimaryRS.AbsolutePosition = -1 Then
            For Each oText In Me.TXTFIELDS
                oText.Text = ""
            Next
        End If
        Exit Sub
    End If
    If adoPrimaryRS.RecordCount > 0 Then adoPrimaryRS.MoveLast
        Call bindcontls
        If Opt <> "add" Then
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveLast
            End If
        End If
        On Error GoTo er1
        desc.Caption = "Query"
    End If
    Call NEWFORM3(BUTTON, GSNO)
    Screen.MousePointer = 0
    Exit Sub
er1:
If Err = 3021 Then
    MsgBox "No records Found", vbInformation, head
    Set grdDataGrid.DataSource = Nothing
    Screen.MousePointer = 0
    Call BUTTON_Click(10)
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form PO_Quotation", vbInformation, head
End Sub
Public Sub fnd1(MDOC As Long)
On Error GoTo fnd1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct TH.DocDate from  RM_BaleWgtRange th  where     " & _
    "  th.supcd >= " & MDOC & " Order by DOCDT} AS ParentCMD APPEND ({select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,aa.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd  Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic

Exit Sub
fnd1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure fnd1 of Form FrmVariety Mapping"

End Sub
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
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
    If BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)    ''Find
    End If
ElseIf KeyCode = vbKeyL And Shift = 2 Then
    If BUTTON(4).Enabled = True Then
        Call BUTTON_Click(4)    ''List
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
        If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)  ''ExitCall BUTTON_Click(11)   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If BUTTON(12).Enabled = True Then
        Call BUTTON_Click(12)   ''Print Option
    End If
ElseIf KeyCode = vbKeyEscape Then
    If BUTTON(10).Enabled = True Then
    Call BUTTON_Click(10)    ''Cancel
    Else
    If MsgBox("Do you want to Exit?", vbQuestion + vbYesNo, head) = vbYes Then Call BUTTON_Click(11)
    End If
End If
End Sub


Private Sub SpdEmpAllocation_KeyDown(KeyCode As Integer, Shift As Integer)
    With SpdEmpAllocation
    
       
            If Opt = "add" Or Opt = "mod" Then
                If .MaxRows > 0 Then
                
                
                If (.ActiveCol = SpdAllocation.SPDCATDESC) And KeyCode = 9 Then

                    Set rsCat = New Recordset
                    rsCat.Open "select  CATNAME 'Category Name',catcd 'Category Code' from rm_cat where catname='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCATDESC, SpdEmpAllocation.ActiveRow)) & "'", DB, adOpenStatic
                    If rsCat.EOF Then

                       LookUp.Clear = True
                       LookUp.query = "select CATNAME 'Category Name',catcd 'Category Code' from rm_cat "
                       
                       LookUp.Caption = "Category Listing"
                       LookUp.DefCol = "Category Name"
                       LookUp.ALIGN = "4500,2500"
                       LookUp.Show vbModal
                       If LookUp.Cancel = False Then
                        
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, LookUp.Fields(1)
                            .SetText SpdAllocation.SPDCATDESC, .ActiveRow, CStr(LookUp.Fields(0))
                            .Col = SpdAllocation.SPDToWgt
                            .SetFocus
                            Exit Sub

                       Else
                            .Col = SpdAllocation.SPDCATDESC
                            .SetFocus
                            Exit Sub
                       End If
                    Else
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, rsCat(1)
                            .SetText SpdAllocation.SPDCATDESC, .ActiveRow, CStr(rsCat(0))
                    End If
                            
                       
                       
                   End If
                
                
                    If (.ActiveCol = SpdAllocation.SPDToWgt) And KeyCode = 9 Then

                    Set rsVar = New Recordset
                    rsVar.Open "select catcd 'Variety Code',catname 'Variety Name' ,catcd from rm_cat where catcd='" & Trim(GetText(SpdEmpAllocation, SpdAllocation.SPDCAT, SpdEmpAllocation.ActiveRow)) & "' ", DB, adOpenStatic
                    If rsVar.EOF Then

                           LookUp.Clear = True
                           LookUp.query = "select Catcd 'Category Code',Catname 'Category Name',CatCD from rm_cat a where (catcd='" & TXTFIELDS(2).Text & "' or '" & IIf(TXTFIELDS(2).Text = "", "A", TXTFIELDS(2).Text) & "' ='A') "
                           LookUp.Caption = "Category Listing"
                           LookUp.DefCol = "Category Name"
                           LookUp.ALIGN = "2000,3500,0"
                           LookUp.Show vbModal
                           If LookUp.Cancel = False Then
                            
                                .SetText SpdAllocation.SPDFromWgt, .ActiveRow, LookUp.Fields(0)
                                .SetText SpdAllocation.SPDToWgt, .ActiveRow, CStr(LookUp.Fields(1))
                                .SetText SpdAllocation.SPDCAT, .ActiveRow, CStr(LookUp.Fields(2))
                               ' .SetText SpdAllocation.SPDSupplier, .ActiveRow, Trim(TXTFIELDS(8).Text)
                                
                                        If MsgBox("Do you want to add another Variety?", vbYesNo, head) = vbYes Then
                                             SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
                    
                                             SpdEmpAllocation.Col = SpdAllocation.SPDFromWgt
                                             SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
                                             SpdEmpAllocation.SetFocus
                
                                         Else
                
                                         End If
                     
'                                .Col = SpdAllocation.SPDVCAPKGS
'                                .SetFocus
                                Exit Sub
    
                           Else
                                .Col = SpdAllocation.SPDToWgt
                                .SetFocus
                                Exit Sub
                           End If
                      Else
'                            .SetText SpdAllocation.SPDFromWgt, .ActiveRow, rsVar(0)
'                            .SetText SpdAllocation.SPDToWgt, .ActiveRow, CStr(rsVar(1))
                            .SetText SpdAllocation.SPDCAT, .ActiveRow, CStr(rsVar(0))
                            .SetText SpdAllocation.SPDCATDESC, .ActiveRow, CStr(rsVar(1))
                      End If
                           
                   End If
                   
 
                
'                    If (.ActiveCol = SpdAllocation.SPDToWgt) And KeyCode = 9 Then
'                        If MsgBox("Do you want to add another Category?", vbYesNo, head) = vbYes Then
'                         SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'
'                         SpdEmpAllocation.Col = SpdAllocation.SPDCAT
'                         SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, SpdEmpAllocation.MaxRows, SpdEmpAllocation.MaxRows
'                         SpdEmpAllocation.SetFocus
'
'                         Else
'
'                         End If
'                    End If
                    
                    
            End If
        End If
    End With
End Sub

Private Sub SpdSIZEORD_Click(ByVal Col As Long, ByVal Row As Long)
    SpdSIZEORD.OperationMode = OperationModeNormal
End Sub

Private Sub SpdSIZEORD_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
SpdSIZEORD.OperationMode = OperationModeRow
End Sub
Private Sub SETSIZEORDHead()
With SpdSIZEORD
    .ClearSelection
    .MaxRows = 0
    .ColHeadersAutoText = DispBlank
    .ClearSelection
    .MaxCols = E_SIZELISTDC1.SPDSBToWgt
    .RowHeadersShow = False
    .Row = 1
    .FontBold = True
    .OperationMode = OperationModeRow
    .TypeCheckCenter = True
    .TypeCheckType = TypeCheckTypeThreeState
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSCHECK1, " ", CellTypeCheckBox, 4, , False, False
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSSNO, "S.No.", CellTypeStaticText, 4, , False, True
    
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBCAT, "Category Code", CellTypeStaticText, 18, 0, False, True
    .Col = E_SIZELISTDC1.SPDSBCAT
    .TypeHAlign = TypeHAlignLeft
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBCATDesc, "Category", CellTypeStaticText, 25, 0, False, True
    .Col = E_SIZELISTDC1.SPDSBCATDesc
    .TypeHAlign = TypeHAlignLeft
    
    .Col = SPDSBFromWgt

    .TypeDateCentury = True
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBFromWgt, "Variety Code", CellTypeStaticText, 20, 0, True, True
    .Col = E_SIZELISTDC1.SPDSBFromWgt
    .TypeHAlign = TypeHAlignLeft
    
    SetSpreadCol1 SpdSIZEORD, E_SIZELISTDC1.SPDSBToWgt, "Variety", CellTypeStaticText, 25, 0, True, True
    .Col = E_SIZELISTDC1.SPDSBToWgt
    .TypeHAlign = TypeHAlignLeft
    


End With
Check1.value = False
End Sub

Private Sub SETDESPATCHHead()
With SpdEmpAllocation
        .ClearSelection
        .MaxRows = 0
       ' .ColHeadersAutoText = DispBlank
        .ClearSelection
        '.MaxCols = SPDCATDESC2DESC
        .MaxCols = SPDToWgt
        .Row = 1
      '  .TypeTextWordWrap = True
      '  .TypeHAlign = TypeHAlignLeft
        .FontBold = True
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDDSNO, "S.No", CellTypeStaticText, 4, , False, True    'a

'
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDFromWgt, "From Weight", CellTypeNumber, 12, 3, False, False 'd
        
           SpdEmpAllocation.Col = SpdAllocation.SPDFromWgt
        SpdEmpAllocation.TypeHAlign = TypeHAlignRight
        
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDToWgt, "To Weight", CellTypeNumber, 12, 3, False, False 'e
         SpdEmpAllocation.Col = SpdAllocation.SPDToWgt
        SpdEmpAllocation.TypeHAlign = TypeHAlignRight
       ' .Col = SpdAllocation.SPDSupplier
'     '  .TypeNumberDecPlaces = "0"
'         SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDSupplier, "Supplier", CellTypeStaticText, 12, , True, True 'i
'
        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDCATDESC, "Category", CellTypeStaticText, 20, , False, True 'f
        SpdEmpAllocation.Col = SpdAllocation.SPDCATDESC
        SpdEmpAllocation.TypeHAlign = TypeHAlignLeft

        SetSpreadCol1 SpdEmpAllocation, SpdAllocation.SPDCAT, "Category Code", CellTypeStaticText, 12, , False, True  'i

    End With
End Sub

Public Sub qry1()
On Error GoTo qry1_Error

    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "SHAPE {select distinct cast(DocDate as date) DocDate from RM_BaleWgtRange a     " & _
    " Order by cast(DocDate as date) asc} AS ParentCMD APPEND ({select a.docsno,Docdate,a.CATCD,a.FromWgt,c.CATNAME,a.ToWgt  from RM_BaleWgtRange a left join rm_cat c on a.catcd=c.catcd   Order by a.DOCDATE ,a.DOCSNO } AS ChildCMD RELATE DOCDATE TO DOCDATE) AS ChildCMD", DB, adOpenStatic, adLockBatchOptimistic


Exit Sub
qry1_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure qry1 of Form FrmVariety Mapping"

End Sub
Private Sub Form_Resize()
    Buttonframe.Width = Me.Width
    intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Screen.MousePointer = vbDefault
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Me.SetFocus
        If MsgBox(Me.Caption & " Screen is in Addition/Modification/Deletion mode. Are you want to Exit?", vbQuestion + vbYesNo, head) = vbNo Then
            'Me.SetFocus
            Cancel = True
            Exit Sub
        End If
    End If

    On Error Resume Next
    Set adoPrimaryRS = Nothing
    Set adoSecondaryRS = Nothing
intervalMinutes = -1
End Sub


Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
    For Each oText In Me.TXTFIELDS
        oText.Locked = False
    Next
    'MaskEdBox2.Enabled = True
    If Opt = "add" Then
        DTPicker1.value = Format(pdate, "dd/mm/yyyy")
    End If
    'FraDespatch.Enabled = True
End Sub


Private Sub Text1_Change()
     Dim position As Integer


            If Trim(Text1.Text) = "" Then Exit Sub
    
            Dim I As Long, j As Long
            
            j = IIf(UCase(Trim(GetText(SpdSIZEORD, SPDSBToWgt, SpdSIZEORD.Row))) = UCase(Trim(Text1)), SpdSIZEORD.Row + 1, 1)
            For I = j To SpdSIZEORD.MaxRows + 1
            position = InStr(1, UCase(GetText(SpdSIZEORD, SPDSBToWgt, I)), UCase(Trim(Text1)))
            
              '  If GetText(SPDPIECE, G_PieceNo, i) = Trim(txtfields(29)) Then
              If position > 0 Then
                    SpdSIZEORD.Row = I
                    SpdSIZEORD.SetSelection 1, SpdSIZEORD.Row, SpdSIZEORD.MaxCols, SpdSIZEORD.Row
                   ' IGrid_Click SPDPIECE.Col, SPDPIECE.Row
                    SpdSIZEORD.SetFocus
                     Text1.SetFocus
                    Exit For
                End If
            Next I
             Text1.SetFocus
End Sub

Private Sub txtFields_Change(Index As Integer)
Select Case Index
    Case 8
'    Set TmpRs = New Recordset
'
'    TmpRs.Open "Select slcode,slname From fa_slmas where slcode ='" & TXTFIELDS(8).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
'
'    If Not TmpRs.EOF Then
'        TXTFIELDS(7).Text = TmpRs("slname")
'    Else
'        TXTFIELDS(7).Text = ""
'    End If
    
'    Case 2
'    Set TmpRs = New Recordset
'    TmpRs.Open "Select FromWgt,depname From fa_slmas where slcode ='" & TXTFIELDS(2).Text & "' ", DB, adOpenStatic, adLockBatchOptimistic
'    If Not TmpRs.EOF Then
'        TXTFIELDS(1).Text = TmpRs("depname")
'    Else
'        TXTFIELDS(1).Text = ""
'    End If
    

    
    
End Select
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
Select Case Index
'    Case 5
'        Call ToUpCase(TXTFIELDS(Index), KeyAscii, 15)
'        Call ToAlphaNumber(TXTFIELDS(Index), 15, KeyAscii)
'    Case 6
'        If Len(TXTFIELDS(Index).Text) = 2 And KeyAscii <> 8 Then
'            iKeyAscii = KeyAscii
'            KeyAscii = 0
'            KeyAscii = 58
'            SendKeys Chr(iKeyAscii)
'        ElseIf Len(TXTFIELDS(Index).Text) = 5 And KeyAscii <> 8 Then
'            iKeyAscii = KeyAscii
'            KeyAscii = 0
'            KeyAscii = 32
'            SendKeys Chr(iKeyAscii)
'        ElseIf Len(TXTFIELDS(Index).Text) > 5 And KeyAscii <> 8 Then
'            Call ToUpCase(TXTFIELDS(Index), KeyAscii, 8)
'            If KeyAscii = 65 Then
'                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "AM"
'            ElseIf KeyAscii = 80 Then
'                TXTFIELDS(Index).Text = Mid(TXTFIELDS(Index).Text, 1, 6) & "PM"
'            ElseIf (Right(TXTFIELDS(Index).Text, 2) <> "AM" And Right(TXTFIELDS(Index).Text, 2) <> "PM") Then
'                KeyAscii = 0
'            End If
'        ElseIf Len(TXTFIELDS(Index).Text) < 6 And KeyAscii <> 8 Then
'           ' Call ToNumNew(TXTFIELDS(Index), 8, KeyAscii)
'        End If
    
End Select
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
        Case 6
          '  BUTTON(9).SetFocus
    End Select

End If
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)

If Opt = "add" Or Opt = "mod" Then
Select Case Index


Case 8
If Opt <> "add" Then
Exit Sub
End If
'    If TXTFIELDS(8).Text = "" Then
'
'
'             Set rs1 = New Recordset
'            rs1.Open "Select * from masterlen", DB, adOpenStatic
'            If rs1.RecordCount > 0 Then
'                sup = rs1("ptypecotton") & "%"
'            Else
'                sup = ""
'            End If
'        LookUp.Clear = True
'
'        LookUp.query = "Select slcode ""Supplier Code"",slname  ""Entry Date"" from  fa_slmas WHERE  slcode like '" & sup & "' and slcode not in (select distinct supcd from RM_BaleWgtRange)"
'
'        LookUp.Caption = "Supplier Listing"
'        LookUp.DefCol = "Entry Date"
'
'        LookUp.ALIGN = "1800,5500"
'
'        LookUp.Show vbModal
'        If LookUp.Cancel = False Then
'            TXTFIELDS(8).Text = LookUp.Fields(0)
'
'            TXTFIELDS(7).Text = LookUp.Fields(1)
'            TXTFIELDS(2).SetFocus
'
'        Else
'
'        End If
'    End If

Case 2


    If TXTFIELDS(2).Text = "" Then
'        If TXTFIELDS(8).Text = "" Then
'            MsgBox "Please select Supplier ", vbInformation, head
'            TXTFIELDS(8).SetFocus
'            Cancel = True
'            Exit Sub
'        End If
    
        LookUp.Clear = True
        LookUp.query = "Select catcd 'Category Code',CATname 'Category Name' FROM rm_cat  union select 'A', ' ALL' "
        
        LookUp.Caption = "Category Listing"
        LookUp.DefCol = "Category Name"

        LookUp.ALIGN = "1800,4500"
        
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            TXTFIELDS(2).Text = LookUp.Fields(0)
            TXTFIELDS(1).Text = LookUp.Fields(1)
            Text1.Text = ""
            If Opt = "add" And Loadflg = 0 Then
             Call SETDESPATCHHead
             Loadflg = 1
            End If
 

             FraOrd.ZOrder
            FraOrd.Visible = True
            Buttonframe.Enabled = False
            stbar.Panels(2).Text = "Select an Variety from the list"
            Call SETSIZEORDHead
            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset

            ItmRs.Open " select distinct catcd,catname from vw_VarietyList a wHERE (A.CATCD ='" & Trim(TXTFIELDS(2).Text) & "' or '" & Trim(TXTFIELDS(2).Text) & "'='A') and catcd not in (" & VarProd & ") ", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdSIZEORD.MaxRows = SpdSIZEORD.MaxRows + 1
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("catcd")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("catname")
                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSSNO, RW, SpdSIZEORD.MaxRows
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBToWgt, RW, ItmRs("ToWgt")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBFromWgt, RW, ItmRs("FromWgt")

                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdSIZEORD.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            
'            FraOrd.ZOrder
'            FraOrd.Visible = True
'            Buttonframe.Enabled = False
'            stbar.Panels(2).Text = "Select an Employee from the list"
'            Call SETSIZEORDHead
'            SpdSIZEORD.CursorStyle = CursorStyleArrow
           ' Dim ItmRs As Recordset
            Set ItmRs = New Recordset
 Exit Sub
            ItmRs.Open " select distinct CATNAME,CATCD,FromWgt,ticketno from Vw_EmployeeAllocate a wHERE A.DIVCODE='" & Divcode & "' AND A.CATCD ='" & Trim(TXTFIELDS(8).Text) & "' and A.FromWgt ='" & Trim(TXTFIELDS(9).Text) & "' and doj<='" & Format(pdate, "yyyy-mm-dd") & "' and (dor is null or dor>='" & Format(pdate, "yyyy-mm-dd") & "') ", DB, adOpenStatic, adLockBatchOptimistic
            RW = 1
            Do While Not ItmRs.EOF
                SpdEmpAllocation.MaxRows = SpdEmpAllocation.MaxRows + 1
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCAT, RW, ItmRs("ToWgt")
'                SpdSIZEORD.SetText E_SIZELISTDC1.SPDSBCATDesc, RW, ItmRs("ticketno")
                SpdEmpAllocation.SetText SpdAllocation.SPDDSNO, RW, SpdEmpAllocation.MaxRows
               ' SpdEmpAllocation.SetText SpdAllocation.SPDFromWgt, RW, ItmRs("SUPCD")
               

                SpdEmpAllocation.SetText SpdAllocation.SPDToWgt, RW, ItmRs("CATNAME")
                SpdEmpAllocation.SetText SpdAllocation.SPDCATDESC, RW, ItmRs("ticketno")
                SpdEmpAllocation.SetText SpdAllocation.SPDCAT, RW, ItmRs("CATCD")
                SpdEmpAllocation.SetText SpdAllocation.SPDFromWgt, RW, ItmRs("FromWgt")
            
     
                RW = RW + 1
                ItmRs.MoveNext
            Loop
            SpdEmpAllocation.SetFocus
            LookUp.Clear = True
            
            Buttonframe.Enabled = True
            Exit Sub
            
        Else
        
        End If
    End If


End Select
End If
End Sub




