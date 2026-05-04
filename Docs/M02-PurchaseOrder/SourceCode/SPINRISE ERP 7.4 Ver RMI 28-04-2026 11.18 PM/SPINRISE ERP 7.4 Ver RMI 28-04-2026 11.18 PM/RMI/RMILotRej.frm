VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Begin VB.Form FrmLotRej 
   Caption         =   "Quality Parameter"
   ClientHeight    =   6630
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9660
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6630
   ScaleWidth      =   9660
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   22
      Top             =   -90
      Width           =   9570
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":0000
         Height          =   510
         Index           =   6
         Left            =   2129
         Picture         =   "RMILotRej.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":0797
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMILotRej.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":0E34
         Height          =   510
         Index           =   5
         Left            =   1608
         Picture         =   "RMILotRej.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":15E3
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
         Picture         =   "RMILotRej.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   566
         Picture         =   "RMILotRej.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":230D
         Height          =   510
         Index           =   7
         Left            =   2655
         Picture         =   "RMILotRej.frx":2757
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":2AA7
         Height          =   510
         Index           =   11
         Left            =   4740
         Picture         =   "RMILotRej.frx":2EF1
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":3286
         Height          =   510
         Index           =   9
         Left            =   3697
         Picture         =   "RMILotRej.frx":3590
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":3932
         Height          =   510
         Index           =   10
         Left            =   4218
         Picture         =   "RMILotRej.frx":3C3C
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMILotRej.frx":3FB8
         Height          =   510
         Index           =   8
         Left            =   3176
         Picture         =   "RMILotRej.frx":4402
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record"
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
         TabIndex        =   24
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
         Left            =   5850
         TabIndex        =   23
         Top             =   255
         Width           =   615
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   6330
      Width           =   9660
      _ExtentX        =   17039
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
            TextSave        =   "06/12/2008"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            TextSave        =   "5:26 PM"
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
      Height          =   2055
      Left            =   1290
      TabIndex        =   16
      Top             =   2160
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   3625
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "                                          "
      TabPicture(0)   =   "RMILotRej.frx":4764
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1800
         Left            =   120
         TabIndex        =   17
         Top             =   60
         Width           =   7560
         Begin VB.TextBox txtfields 
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   600
            Index           =   1
            Left            =   4140
            MaxLength       =   30
            TabIndex        =   14
            Top             =   960
            Width           =   3105
         End
         Begin VB.TextBox txtfields 
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
            Left            =   1590
            MaxLength       =   10
            TabIndex        =   11
            Top             =   360
            Width           =   1320
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Index           =   1
            Left            =   1590
            TabIndex        =   13
            Top             =   1080
            Width           =   1335
            _ExtentX        =   2355
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
            Format          =   21889025
            CurrentDate     =   37944
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Index           =   0
            Left            =   4140
            TabIndex        =   12
            Top             =   390
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
            Format          =   21889025
            CurrentDate     =   37944
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Date"
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
            Left            =   3375
            TabIndex        =   21
            Top             =   465
            Width           =   435
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Rejected Date"
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
            Left            =   300
            TabIndex        =   20
            Top             =   1155
            Width           =   1305
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
            Left            =   810
            TabIndex        =   19
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
            Left            =   3330
            TabIndex        =   18
            Top             =   1170
            Width           =   720
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   510
      TabIndex        =   25
      Top             =   1290
      Visible         =   0   'False
      Width           =   8865
      Begin listacx.codelist KSLLIST1 
         Height          =   3375
         Left            =   990
         TabIndex        =   29
         Top             =   660
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5953
         caption         =   ""
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMILotRej.frx":4780
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
         Picture         =   "RMILotRej.frx":4B66
         Style           =   1  'Graphical
         TabIndex        =   27
         Top             =   4110
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMILotRej.frx":4F2C
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
         Picture         =   "RMILotRej.frx":530E
         Style           =   1  'Graphical
         TabIndex        =   26
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
         TabIndex        =   28
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot Rejection"
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
      TabIndex        =   10
      Top             =   1530
      Width           =   1710
   End
End
Attribute VB_Name = "FrmLotRej"
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
Dim itary() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Private Sub BUTTON_Click(Index As Integer)
On Error Resume Next
Select Case Index
Case 0
    
    Opt = "add"
    DB.BeginTrans
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select lotno,lotdt,rejdt,reason from rm_lot where 1=2", DB, adOpenStatic, adLockBatchOptimistic
    Call bindcontls
    DTPicker1(0).Value = pdate
    DTPicker1(1).Value = pdate
    desc.Caption = "Addition"
    Screen.MousePointer = 0
    
    Call adddelmod(BUTTON)
    For i = 0 To 1
        TXTFIELDS(i).Locked = False
    Next
    Frame3.Visible = False
    SSTab1.Visible = True
    DTPicker1(0).Enabled = True
    DTPicker1(1).Enabled = True
    TXTFIELDS(0).Text = " "
    TXTFIELDS(0).SetFocus
    
Case 1
    On Error Resume Next
        Opt = "mod"
        DB.BeginTrans
        Screen.MousePointer = 11
        desc.Caption = "Modification"
        Call adddelmod(BUTTON)
        For i = 0 To 1
             TXTFIELDS(i).Locked = False
        Next
        SSTab1.Visible = False
        Frame3.Visible = True
        KslList1.conn = connectstring
        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND (ISSWT IS NULL OR ISSWT=0) AND (ISSBAL IS NULL OR  ISSBAL=0) and rejflg='Y'"
        KslList1.listfield1 = "lotno"
        KslList1.listfield2 = "lotDT"
        KslList1.SetFocus
         Screen.MousePointer = 0
         
Case 2
    On Error Resume Next
         Opt = "del"
         DB.BeginTrans
         Screen.MousePointer = 11
         desc.Caption = "Updation"
         Call adddelmod(BUTTON)
         
         For i = 0 To 1
          TXTFIELDS(i).Locked = False
         Next
         
         DTPicker1(0).Enabled = True
         DTPicker1(1).Enabled = True
         
        SSTab1.Visible = False
        Frame3.Visible = True
        KslList1.conn = connectstring
        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND (ISSWT IS NULL OR ISSWT=0) AND (ISSBAL IS NULL OR  ISSBAL=0) and rejflg='Y'"
        KslList1.listfield1 = "lotno"
        KslList1.listfield2 = "lotDT"
        KslList1.SetFocus
         
         Screen.MousePointer = 0
        'Listing
Case 3


        
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
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
        If err.Number = 3021 Then
            MsgBox "First Record", vbInformation, head
            Exit Sub
        End If
        
       MsgBox err.description, vbInformation, head
       
            
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
   MsgBox err.description, vbInformation, head
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
   MsgBox err.description, vbInformation, head

Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "select e.catcd,e.lotno,e.lotdt,b.varname,c.cntname,a.supcd,d.slname,isnull(e.staplen,0) from rm_arrival a,rm_var b,rm_count c,fa_slmas d,rm_lot e where a.divcode = e.divcode and e.divcode = '" & Divcode & "' and a.lotno = e.lotno and a.lotdt = e.lotdt and a.catcd = e.catcd and a.varcode = b.varcode and a.cntcode = c.cntcd and a.supcd = d.slcode", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.MoveLast
         TXTFIELDS(0).Text = adoPrimaryRS(0)
         TXTFIELDS(1).Text = adoPrimaryRS(1)
         TXTFIELDS(2).Text = adoPrimaryRS(2)
         TXTFIELDS(3).Text = adoPrimaryRS(3)
         TXTFIELDS(4).Text = adoPrimaryRS(4)
         TXTFIELDS(5).Text = adoPrimaryRS(5)
         TXTFIELDS(6).Text = adoPrimaryRS(6)
         TXTFIELDS(7).Text = adoPrimaryRS(7)
         StatusBar1.Panels(2).Text = "Last Record"
    'calling fir procedure from module
         BUTTON(5).Enabled = True
         BUTTON(6).Enabled = False
         BUTTON(7).Enabled = True
         BUTTON(8).Enabled = False
         
         Beep
         Exit Sub
GoLastError:
       If err.Number = 3021 Then
        MsgBox "Last Record", vbInformation, head
        Exit Sub
       End If
       MsgBox err.description, vbInformation, head
    
'
Case 9
        'Save
        If Opt = "add" Or Opt = "mod" Then

            Screen.MousePointer = 11
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
            If TXTFIELDS(0).Text = "" Then
                MsgBox "Please Enter the Lot No. First", vbInformation, head
                Exit Sub
            End If
'            adoprimaryrs.MoveFirst
            DB.Execute "update rm_lot set rejflg='Y',rejdt='" & Format(DTPicker1(1).Value, "yyyy-mm-dd") & "',reason='" & IIf(TXTFIELDS(1).Text = "", Null, TXTFIELDS(1).Text) & "' where lotno='" & TXTFIELDS(0).Text & "' and LOTDT ='" & Format(DTPicker1(0).Value, "yyyy-mm-dd") & "'"
            DB.CommitTrans
            If Opt = "add" Then
                Opt = " "
                MsgBox "Record(s) Saved", vbInformation, head
            ElseIf Opt = "mod" Then
                Opt = " "
                MsgBox "Records Modified", vbInformation, head
            End If
        End If
        If Opt = "del" Then
            desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
            If TXTFIELDS(0).Text = "" Then
                MsgBox "Please Enter the Lot No. First", vbInformation, head
                Exit Sub
            End If
            adoPrimaryRS.MoveFirst
            DB.Execute "update rm_lot set rejflg='N',rejdt='',reason='' where lotno='" & TXTFIELDS(0).Text & "' and LOTDT='" & Format(DTPicker1(0), "yyyy-mm-dd") & "'"
            DB.CommitTrans
            If Opt = "del" Then
                Opt = " "
                MsgBox "Records Deleted", vbInformation, head
            End If
        End If
        Call query_mode
        
Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    If Opt = "updat" Then
    DB.RollbackTrans
    Opt = "qry"
    End If
    Screen.MousePointer = 0
    Call cancl(BUTTON)
    If Opt = "qry" Then
        Call query_mode
    End If
    
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
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
  'This will display the current record position for this recordset
  On Error Resume Next
  
  If Opt <> "list" Or Opt <> "updat" Then
        StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  End If
  
  If Opt = "qry" Or Opt = " " Then
    TXTFIELDS(0).Text = adoPrimaryRS("lotno").Value
    TXTFIELDS(1).Text = adoPrimaryRS("reason")
  End If
  
End Sub
Private Sub query_mode()
If Opt = " " Or Opt = "qry" Then
    
    Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open "select lotno ""LotNo"",lotdt ""Lot Date"",rejdt ""Rejected Date"",reason ""Reason"" from rm_lot where rejflg='Y' and lotdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND (ISSWT IS NULL OR ISSWT=0) AND (ISSBAL IS NULL OR  ISSBAL=0)", DB, adOpenStatic, adLockBatchOptimistic
    
    Call bindcontls
    Call cancl(BUTTON)
    If adoPrimaryRS.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    End If

End If
    End Sub

Private Sub Command1_Click()
Frame3.Visible = False
SSTab1.Visible = True
End Sub

Private Sub Command3_Click()
If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
    Select Case KslList1.listfield1
        Case "lotno"
            Set Rs = New Recordset
            Rs.Open "select lotdt,isnull(reason,' ') as reason from rm_lot where lotno='" & KslList1.Code & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", DB, adOpenStatic
            Frame3.Visible = False
            SSTab1.Visible = True
            TXTFIELDS(0).Text = KslList1.Code
            DTPicker1(0).Value = Format(Rs("lotdt"), "dd/mm/yyyy")
            If Opt = "mod" Or Opt = "del" Then
                TXTFIELDS(1).Text = Rs("reason")
            End If
            DTPicker1(0).Enabled = True
            DTPicker1(1).Enabled = True
            DTPicker1(1).SetFocus
    End Select
    
End If
End Sub

Private Sub Form_Load()
StatusBar1.Panels(1).Text = STBARmsg
  Opt = "qry"
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  'TabStrip1.Tabs.Clear
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  Call query_mode
 
  End Sub
Private Sub Form_Unload(Cancel As Integer)
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoPrimaryRS = Nothing
  Reset
  End Sub

Public Sub clearval()
For i = 0 To 1
  TXTFIELDS(i).Text = ""
Next
End Sub
Public Sub disabletxt()
For i = 0 To 1
  TXTFIELDS(i).Locked = True
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

Private Sub txtFields_GotFocus(Index As Integer)
If Opt = "add" Then
  Select Case Index
    Case 0
    StatusBar1.Panels(2).Text = "Enter Maximum of 10 Integers"
    Case 1
      StatusBar1.Panels(2).Text = "Enter Maximum of 50 Characters"
  End Select
End If
End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
If Opt = "add" Or Opt = "mod" Then
  Select Case Index
    Case 0
      Call tonum(TXTFIELDS(0), 10, KeyAscii)
    Case 1
      Call ToAlphaNumber(TXTFIELDS(1), 30, KeyAscii)
    
  End Select
End If
End Sub


Private Sub txtfields_LostFocus(Index As Integer)
a = TXTFIELDS(0).Text
If Opt = "add" Then
Select Case Index
Case 0
    
    Set adoSecondaryRS = New Recordset
    adoSecondaryRS.Open "select lotno from rm_lot where divcode='" & Divcode & "' and lotno='" & TXTFIELDS(0).Text & "'  and  lotyear='" & Year(yfdate) & "' AND ISSWT IS NULL AND ISSBAL IS NULL ", DB, adOpenStatic, adLockBatchOptimistic
    If adoSecondaryRS.RecordCount > 0 Then
        Frame3.Visible = False
        SSTab1.Visible = True
        TXTFIELDS(0).Text = adoSecondaryRS(0).Value
    Else
        SSTab1.Visible = False
        Frame3.Visible = True
        KslList1.conn = connectstring
        KslList1.Table = "rm_lot where divcode='" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' AND (ISSWT IS NULL OR ISSWT=0) AND (ISSBAL IS NULL OR  ISSBAL=0) AND REJFLG='N'"
        KslList1.listfield1 = "lotno"
        KslList1.listfield2 = "lotDT"
        KslList1.SetFocus
    End If
End Select
End If
End Sub
Public Sub bindcontls()

On Error Resume Next

For Each oText In Me.TXTFIELDS
    Set oText.DataSource = adoPrimaryRS
Next

DTPicker1(0).DataField = "lotdt"
DTPicker1(1).DataField = "rejdt"


Set DTPicker1(0).DataSource = adoPrimaryRS
Set DTPicker1(1).DataSource = adoPrimaryRS


DTPicker2.MaxDate = pdate
DTPicker2.MinDate = yfdate


If IsNull(adoPrimaryRS("lotdt")) = False Or adoPrimaryRS("lotdt") = "" Then
    DTPicker1(0).Value = Format(adoPrimaryRS("Lot Date"), "dd/mm/yyyy")
End If
If IsNull(adoPrimaryRS("rejdt")) = False Then
    DTPicker1(1).Value = Format(adoPrimaryRS("Rejected Date"), "dd/mm/yyyy")
Else
    DTPicker1(1).Value = "__/__/____"
End If

End Sub

Public Sub ENABLCONTLS()
Dim i As Integer
For i = 0 To 1
    TXTFIELDS(i).Locked = False
Next

DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False

End Sub

Public Sub disablcontls()
Dim i As Integer

For i = 0 To 1
  TXTFIELDS(i).Locked = True
Next

DTPicker1(0).Enabled = False
DTPicker1(1).Enabled = False


End Sub
