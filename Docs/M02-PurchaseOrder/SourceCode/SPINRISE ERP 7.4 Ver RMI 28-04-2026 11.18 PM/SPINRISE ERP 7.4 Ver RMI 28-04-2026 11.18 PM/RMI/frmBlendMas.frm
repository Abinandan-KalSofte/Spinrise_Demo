VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.4#0"; "comctl32.ocx"
Begin VB.Form frmBlendMas 
   Caption         =   "Blend / Mix - Ratio"
   ClientHeight    =   7770
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11160
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7770
   ScaleWidth      =   11160
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport3 
      Left            =   4800
      Top             =   3480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   520
      Index           =   13
      Left            =   5240
      Picture         =   "frmBlendMas.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   30
      ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
      Top             =   10
      Width           =   585
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   16
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":0442
         Enabled         =   0   'False
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "frmBlendMas.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":0BD9
         Enabled         =   0   'False
         Height          =   510
         Index           =   0
         Left            =   15
         Picture         =   "frmBlendMas.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":1276
         Enabled         =   0   'False
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "frmBlendMas.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":1A25
         Enabled         =   0   'False
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
         Left            =   1050
         Picture         =   "frmBlendMas.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   525
         Picture         =   "frmBlendMas.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1560
         Picture         =   "frmBlendMas.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":2AE6
         Enabled         =   0   'False
         Height          =   510
         Index           =   7
         Left            =   3135
         Picture         =   "frmBlendMas.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":3280
         Height          =   510
         Index           =   11
         Left            =   5835
         Picture         =   "frmBlendMas.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":3A5F
         Height          =   510
         Index           =   9
         Left            =   4185
         Picture         =   "frmBlendMas.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":410B
         Height          =   510
         Index           =   10
         Left            =   4710
         Picture         =   "frmBlendMas.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   18
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":4791
         Enabled         =   0   'False
         Height          =   510
         Index           =   8
         Left            =   3645
         Picture         =   "frmBlendMas.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":4F3D
         Height          =   510
         Index           =   4
         Left            =   7440
         Picture         =   "frmBlendMas.frx":5247
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Find"
         Top             =   120
         Visible         =   0   'False
         Width           =   520
      End
      Begin VB.Label lblDate 
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
         TabIndex        =   22
         Top             =   255
         Width           =   630
      End
      Begin VB.Label lbldesc 
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
         Left            =   6675
         TabIndex        =   21
         Top             =   255
         Width           =   615
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4140
      Left            =   900
      TabIndex        =   19
      Top             =   1305
      Width           =   6630
      _ExtentX        =   11695
      _ExtentY        =   7303
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmBlendMas.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "lbl_Tot"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "SpdMat"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "fr_Main"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).ControlCount=   4
      Begin VB.Frame fr_Main 
         Height          =   1455
         Left            =   90
         TabIndex        =   11
         Top             =   45
         Width           =   6450
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   330
            Left            =   4935
            TabIndex        =   28
            Top             =   180
            Width           =   1320
            _ExtentX        =   2328
            _ExtentY        =   582
            _Version        =   393216
            Format          =   131858433
            CurrentDate     =   40049
         End
         Begin VB.TextBox txtejectbale 
            Height          =   330
            Left            =   1515
            TabIndex        =   14
            ToolTipText     =   "Enter the value"
            Top             =   1020
            Width           =   4110
         End
         Begin VB.TextBox txtDesc 
            Height          =   330
            Left            =   1515
            TabIndex        =   13
            ToolTipText     =   "Enter the value"
            Top             =   600
            Width           =   4110
         End
         Begin VB.TextBox txtCode 
            Height          =   330
            Left            =   1515
            TabIndex        =   12
            ToolTipText     =   "Enter the value"
            Top             =   180
            Width           =   1770
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Effective Date"
            Height          =   195
            Left            =   3585
            TabIndex        =   29
            Top             =   255
            Width           =   1020
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Target Eject/Bale"
            ForeColor       =   &H00FF0000&
            Height          =   195
            Left            =   105
            TabIndex        =   27
            Top             =   1050
            Width           =   1260
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Description"
            Height          =   195
            Left            =   90
            TabIndex        =   24
            Top             =   630
            Width           =   795
         End
         Begin VB.Label lblCode 
            AutoSize        =   -1  'True
            Caption         =   "Blend / Mix"
            Height          =   195
            Left            =   90
            TabIndex        =   23
            Top             =   225
            Width           =   810
         End
      End
      Begin FPSpreadADO.fpSpread SpdMat 
         Height          =   2130
         Left            =   90
         TabIndex        =   15
         Top             =   1575
         Width           =   6450
         _Version        =   524288
         _ExtentX        =   11377
         _ExtentY        =   3757
         _StockProps     =   64
         EditEnterAction =   5
         EditModeReplace =   -1  'True
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   5
         MaxRows         =   1
         ScrollBars      =   2
         SpreadDesigner  =   "frmBlendMas.frx":55F8
         UserResize      =   0
         ScrollBarTrack  =   1
         AppearanceStyle =   0
      End
      Begin VB.Label lbl_Tot 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "0.00"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   5445
         TabIndex        =   26
         Top             =   3795
         Width           =   795
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Total :"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   4650
         TabIndex        =   25
         Top             =   3795
         Width           =   675
      End
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   20
      Top             =   7440
      Width           =   11160
      _ExtentX        =   19685
      _ExtentY        =   582
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   4
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Alignment       =   1
            Text            =   "Kalsofte"
            TextSave        =   "Kalsofte"
            Key             =   ""
            Object.Tag             =   ""
            Object.ToolTipText     =   "Kalsofte"
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            AutoSize        =   1
            Object.Width           =   11456
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel3 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   6
            TextSave        =   "22/11/2019"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel4 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   5
            TextSave        =   "7:21 PM"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Mix Ratio"
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
      Left            =   900
      TabIndex        =   10
      Top             =   930
      Width           =   1275
   End
End
Attribute VB_Name = "frmBlendMas"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'-----------------------------
'DEVELOPED BY N.SOUNDARA RAJAN
'-----------------------------
Dim SqlStr As String
Dim RsMas, TrnLog As Recordset
Dim RsTmp As Recordset
Dim Opt As ModeType
Dim i As Integer
Dim DB As ADODB.Connection
Dim SpdGen As New ClsSpdGen

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0                                      'Addition
    Opt = ADD
    lbldesc.Caption = "Addition"
    Call ClearChars
    Call ButEnaDis(False)
    fr_Main.Enabled = True
    SpdGen.SpdLockUnlock SpdMat, False, True
    DTPicker1.value = pdate
    StatusBar1.Panels(2).Text = "Addition"
    txtCode.SetFocus
    Exit Sub
Case 1                                      'Modification
    Opt = modification
    lbldesc.Caption = "Modification"
    
    LookUp.clear = True
    LookUp.Caption = "Blend Master"
    LookUp.query = "Select Blend_Code AS ""Blend Code"", BLEND_DESC AS ""Blend Description"",effdate""Effective Date"", BLEND_MASID From PPC_Blend_Mas Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
    LookUp.DefCol = "Blend Code"
    LookUp.ALIGN = "2000,4000,1000, 0"
    LookUp.Show vbModal
     
    If LookUp.Cancel = False Then
       RsMas.Requery
       RsMas.Filter = 0
       RsMas.find "Blend_MasID = " & LookUp.Fields(3) & ""
       Call StoreChars
       fr_Main.Enabled = True
       Call ButEnaDis(False)
       SpdGen.SpdLockUnlock SpdMat, False, True
    End If
    
    Screen.MousePointer = 0
    Exit Sub
Case 2                                      'Deletion
     Opt = Delete
     lbldesc.Caption = "Deletion"
     
     LookUp.clear = True
     LookUp.Caption = "Blend Master"
     LookUp.query = "Select Blend_Code AS ""Blend Code"", BLEND_DESC AS ""Blend Description"",effdate""Effective Date"", BLEND_MASID From PPC_Blend_Mas Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
     LookUp.DefCol = "BLEND CODE"
     LookUp.ALIGN = "2000,4000,1000, 0"
     LookUp.Show vbModal
     
     If LookUp.Cancel = False Then
        RsMas.Requery
        RsMas.Filter = 0
        RsMas.find "Blend_MasID = " & LookUp.Fields(3) & ""
        Call StoreChars
        fr_Main.Enabled = False
        Call ButEnaDis(False)
        SpdGen.SpdLockUnlock SpdMat, True, True
     End If
     
     Screen.MousePointer = 0
     Exit Sub
Case 3                                      'List
    Screen.MousePointer = vbHourglass
    
    SqlSafe "Select"
    SqlSafe "Bm.Blend_Code As [Blend], Bm.Blend_Desc As [Blend Description],"
    SqlSafe "M.Mat_Code As [Material],"
    SqlSafe "Case IsNull(M.Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End As [Type],"
    SqlSafe "M.Mat_Desc As [Description], B.Ratio As [Ratio%]"
    SqlSafe "From PPC_Blend_Mas Bm"
    SqlSafe "Inner Join PPC_Blend_Det B On Bm.Blend_MasID = B.Blend_MasID"
    SqlSafe "Inner Join PPC_Material M On M.MaterialID = B.MaterialID"
    SqlSafe "Where Bm.DivCode = '" & Divcode & "' And Bm.UnitCode = '" & unitcode & "'", SqlStr


    Call DLLMasterListing(SqlStr, "6,20,10,11,12,10", "0,0,0,0,0,0", heading.Caption & " Listing", DB)


    
    Screen.MousePointer = vbNormal
Case 4                                      'Find
    Opt = "Find"
    Screen.MousePointer = 11
    lbldesc.Caption = "Find"
    Screen.MousePointer = 0
Case 5                                      'Move First
    On Error GoTo GoFirstError
    Screen.MousePointer = 11
    lbldesc.Caption = "Query"
    
    RsMas.Requery
    If Not RsMas.EOF Then
        RsMas.MoveFirst
        Call StoreChars
        SpdGen.SpdLockUnlock SpdMat, True, True
        StatusBar1.Panels(2).Text = "First Record"
    Else
        StatusBar1.Panels(2).Text = "No Records"
    End If
    
    SpdGen.SpdLockUnlock SpdMat, True, True
    
    BUTTON(5).Enabled = False
    BUTTON(6).Enabled = True
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = True
    Screen.MousePointer = 0
    Exit Sub
GoFirstError:
    StatusBar1.Panels(2).Text = Err.Description
    
Case 6                                      'Move Next
On Error GoTo GoNextError
    Screen.MousePointer = 11
    lbldesc.Caption = "Query"
    BUTTON(5).Enabled = False
    BUTTON(6).Enabled = False
    BUTTON(7).Enabled = False
    BUTTON(8).Enabled = False
    
    If RsMas.RecordCount > 0 Then
        If Not RsMas.EOF Then
            RsMas.MoveNext
            If Not RsMas.EOF Then
               StatusBar1.Panels(2).Text = "Record no " & RsMas.Bookmark & " of " & RsMas.RecordCount
            Else
                StatusBar1.Panels(2).Text = "Last Record"
                RsMas.MoveLast
            End If
            Call StoreChars
            SpdGen.SpdLockUnlock SpdMat, True, True
        End If
        If RsMas.RecordCount > 1 Then
           If RsMas.Bookmark <> RsMas.RecordCount Then
               BUTTON(6).Enabled = True
               BUTTON(8).Enabled = True
           End If
           If RsMas.Bookmark <> 1 Then
               BUTTON(5).Enabled = True
               BUTTON(7).Enabled = True
           End If
       End If
    End If
    Screen.MousePointer = 0
Exit Sub
GoNextError:
    MsgBox Err.Description, vbInformation, head
    
Case 7
   On Error GoTo GoPrevError
   Screen.MousePointer = 11
   lbldesc.Caption = "Query"
   BUTTON(5).Enabled = False
   BUTTON(6).Enabled = False
   BUTTON(7).Enabled = False
   BUTTON(8).Enabled = False
   If RsMas.RecordCount > 0 Then
      If Not RsMas.BOF Then
         RsMas.MovePrevious
         If Not RsMas.BOF Then
           StatusBar1.Panels(2).Text = "Record no " & RsMas.Bookmark & " of " & RsMas.RecordCount
         Else
            StatusBar1.Panels(2).Text = "First Record"
            RsMas.Requery
            RsMas.MoveFirst
         End If
         Call StoreChars
      End If
      
      SpdGen.SpdLockUnlock SpdMat, True, True
      
      If RsMas.RecordCount > 1 Then
         If RsMas.Bookmark <> RsMas.RecordCount Then
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
         End If
         If RsMas.Bookmark <> 1 Then
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
         End If
      End If
   End If
   Screen.MousePointer = 0
   Exit Sub
   
GoPrevError:
   MsgBox Err.Description, vbInformation, head
   
Case 8                                 'Last
   On Error GoTo GoLastError
   Screen.MousePointer = 11
   lbldesc.Caption = "Query"
   RsMas.Requery
   If RsMas.EOF = False Then RsMas.MoveLast
   StoreChars
   SpdGen.SpdLockUnlock SpdMat, True, True
   StatusBar1.Panels(2).Text = "Last Record"
   BUTTON(5).Enabled = True
   BUTTON(7).Enabled = True
   BUTTON(6).Enabled = False
   BUTTON(8).Enabled = False
   Screen.MousePointer = 0
   Exit Sub
GoLastError:
   MsgBox Err.Description, vbInformation, head
Case 9                                  'Save
    Screen.MousePointer = vbHourglass
    If ChkCtrls = True Then
        Call Save
        RsMas.Requery
        RsMas.Filter = adFilterNone
        If RsMas.EOF = False Then RsMas.MoveLast
        Call StoreChars
        StatusBar1.Panels(2).Text = "Record " & RsMas.RecordCount & "/" & RsMas.RecordCount
        fr_Main.Enabled = False
        SpdGen.SpdLockUnlock SpdMat, True, True
        Call ButEnaDis(True)
        BUTTON(0).SetFocus
        lbldesc.Caption = "Query"      'After this mode QUERY WILL BE INVOKED
    End If
    Screen.MousePointer = vbNormal
        
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
    Screen.MousePointer = 11
    RsMas.Requery
    RsMas.Filter = 0
    If RsMas.EOF = False Then RsMas.MoveLast
    Call StoreChars
    fr_Main.Enabled = False
    SpdGen.SpdLockUnlock SpdMat, True, True
    Call ButEnaDis(True)
    Screen.MousePointer = 0
    
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Screen.MousePointer = 0
    Reset
    Unload Me
Case 13
 
 Dim clsCryRptratio As New clsCrystal
    Set clsCryRptratio.cryRept = Cry_MixRatio
    clsCryRptratio.CrystalPrint

    CrystalReport3.Reset
        CrystalReport3.DiscardSavedData = True
        CrystalReport3.Connect = connectstring
        CrystalReport3.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        
        CrystalReport3.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport3.ParameterFields(1) = "@unitcode;" & unitcode & ""
        CrystalReport3.ParameterFields(2) = "@Code;" & txtCode.Text & ""

        CrystalReport3.WindowShowPrintSetupBtn = True
        CrystalReport3.WindowShowSearchBtn = True
        CrystalReport3.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport3.Action = 1
        CrystalReport3.PrinterCopies = 1
        Screen.MousePointer = 0

End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frm_Wrapping"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    Set DB = New ADODB.Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    
    SpdGen.AssignSpread SpdMat
    
    SqlStr = ""
    SqlStr = "Select DivCode, UnitCode, Blend_MasID,effdate, Blend_Code, Blend_Desc,ejectbale "
    SqlStr = SqlStr & Chr(13) & " From PPC_Blend_Mas "
    SqlStr = SqlStr & Chr(13) & " Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
    
    Set RsMas = New ADODB.Recordset
    RsMas.Open SqlStr, DB, adOpenStatic, adLockReadOnly
    
    Call StoreChars
    Call ButEnaDis(True)
    SpdGen.SpdLockUnlock SpdMat, True, True
    lblDate.Caption = Date
    intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmBlendMas", vbInformation, head
End Sub
Private Sub Calc()
On Error GoTo Calc_Error
        
    lbl_Tot.Caption = "0.00"
    
    For i = 1 To SpdMat.MaxRows
        SpdMat.Row = i: SpdMat.Col = 5
        lbl_Tot.Caption = Format(val(lbl_Tot.Caption) + val(SpdMat.Text), "00.00")
    Next i

Exit Sub
Calc_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Calc of Form frmBlendMas", vbInformation, head
End Sub

Private Sub StoreChars()
On Error GoTo StoreChars_Error

    If Not RsMas.EOF Then
        txtCode.Text = RsMas!Blend_Code
        txtDesc.Text = RsMas!Blend_Desc
        txtCode.Tag = RsMas!Blend_MasID
        txtejectbale.Text = IIf(IsNull(RsMas!ejectbale), "", RsMas!ejectbale)
        If IsNull(RsMas!effdate) = False Then
            DTPicker1.value = RsMas!effdate
        End If
    Else
        Call ClearChars
        Exit Sub
    End If

    SqlStr = ""
    SqlStr = "Select M.Mat_Code, "
    SqlStr = SqlStr & Chr(13) & " Case IsNull(M.Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End As Mat_Type,"
    SqlStr = SqlStr & Chr(13) & " M.Mat_Desc,b.bales, B.Ratio, B.MaterialID"
    SqlStr = SqlStr & Chr(13) & " From PPC_Blend_Det B "
    SqlStr = SqlStr & Chr(13) & " Inner Join PPC_Material M On M.MaterialID = B.MaterialID "
    SqlStr = SqlStr & Chr(13) & " Where B.Blend_MasID = " & val(txtCode.Tag) & ""
    
    SpdGen.SpdFill SpdMat, SqlStr, DB, "1", "MaterialID"
    
    Call Calc

Exit Sub
StoreChars_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StoreChars of Form frmBlendMas", vbInformation, head
End Sub
Private Sub ClearChars()

On Error GoTo ClearChars_Error

    txtCode.Text = ""
    txtDesc.Text = ""
    txtejectbale.Text = ""
    SpdGen.SpdClear SpdMat

Exit Sub
ClearChars_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearChars of Form frmBlendMas", vbInformation, head
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub SpdMat_Change(ByVal Col As Long, ByVal Row As Long)
Dim SqlChk As String
'On Error GoTo SpdMat_Change_Error

    If Col = 1 Then
    
        SqlChk = ""
        For i = 1 To SpdMat.MaxRows
            SpdMat.Row = i
            SpdMat.Col = 1
                
            If SpdMat.Text <> "" And i <> SpdMat.ActiveRow Then
                SqlChk = SqlChk & "'" & SpdMat.Text & "',"
            End If
        Next i
        
        If Len(SqlChk) > 0 Then
            SqlChk = Mid(SqlChk, 1, Len(SqlChk) - 1)
        End If
        
        SqlStr = "Select Mat_Code""Material Code"", MAT_DESC""Material Description"", MATERIALID, "
        SqlStr = SqlStr & Chr(13) & " Case IsNull(Mat_Type, 'C') When 'C' Then 'COTTON' When 'S' Then 'SYNTHETIC' End""Material Type"""
        SqlStr = SqlStr & Chr(13) & " from PPC_Material "
        SqlStr = SqlStr & Chr(13) & " Where 1=1 "
        
        If Len(SqlChk) > 0 Then
            SqlStr = SqlStr & Chr(13) & " And Mat_Code Not In (" & SqlChk & ")"
        End If
        
        SpdMat.Row = SpdMat.ActiveRow
        SpdMat.Col = 1
        
        Set RsTmp = New ADODB.Recordset
        RsTmp.Open SqlStr & " And Mat_Code = '" & SpdMat.Text & "'", DB, adOpenStatic, adLockReadOnly
        
        If Not RsTmp.EOF Then
            SpdMat.Col = 1
            SpdMat.Text = RsTmp(0)
            SpdMat.CellTag = RsTmp(2)
            SpdMat.Col = 2
            SpdMat.Text = RsTmp(3)
            SpdMat.Col = 3
            SpdMat.Text = RsTmp(1)
            SpdMat.Col = 4
            SpdMat.Text = RsTmp(4)
            SpdMat.Col = 5
            Call spdmat_LeaveCell(Col, Row, 5, SpdMat.ActiveRow, False)
            Exit Sub
        End If
        
        LookUp.clear = True
        LookUp.query = SqlStr
        LookUp.Caption = "Material"
        LookUp.DefCol = "Material Description"
        LookUp.ALIGN = "2000,3000, 0, 2000"
        LookUp.Show vbModal
        
        If LookUp.Cancel = False Then
            SpdMat.Row = SpdMat.ActiveRow
            SpdMat.Col = 1
            SpdMat.Text = LookUp.Fields(0)
            SpdMat.CellTag = LookUp.Fields(2)
            SpdMat.Col = 2
            SpdMat.Text = LookUp.Fields(3)
            SpdMat.Col = 3
            SpdMat.Text = LookUp.Fields(1)
            SpdMat.Col = 4
            'SpdMat.Text = "0.00"
'            SpdMat.Text = LookUp.Fields(1)
            'Call spdmat_LeaveCell(Col, Row, 4, SpdMat.ActiveRow, False)
'            SpdMat.Col = 5
'            SpdMat.Col = 4
            SpdGen.SpdSetFocus SpdMat, 4, SpdMat.MaxRows
        End If
        
        Call Calc
        
    ElseIf Col = 4 Then
        Call Calc
    End If
    

Exit Sub
SpdMat_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMat_Change of Form frmBlendMas", vbInformation, head
End Sub

Private Sub spdmat_GotFocus()
    'SpdMat.ShadowColor = SPD_HEADER_HLIGHT_COLOR
End Sub

Private Sub SpdMat_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SpdMat_KeyDown_Error

    Call Calc

    If KeyCode = 13 Then
        If SpdMat.ActiveRow = SpdMat.MaxRows Then
            If SpdValidRow(SpdMat, SpdMat.MaxRows, True).FnBool = True Then
                If val(lbl_Tot.Caption) < 100 Then
                    SpdMat.MaxRows = SpdMat.MaxRows + 1
                    Call spdmat_LeaveCell(SpdMat.ActiveCol, SpdMat.ActiveRow, 0, SpdMat.MaxRows, False)
                    
                    SpdMat.Row = SpdMat.ActiveRow
                    SpdMat.Col = 5
                    SpdMat.Text = 100 - val(lbl_Tot.Caption)
                    SpdMat.TypeNumberMax = 100 - val(lbl_Tot.Caption)
                End If
            End If
        End If
    End If

Exit Sub
SpdMat_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdMat_KeyDown of Form frmBlendMas", vbInformation, head
End Sub

Private Sub spdmat_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NEWROW As Long, Cancel As Boolean)
    If NEWROW <= 5 Then Exit Sub
    'Call SpdMat_Change(Col, Row)
    SpdGen.SpdSetFocus SpdMat, NewCol, NEWROW
'    SpdHighlight SpdMat, NewRow, NewCol
End Sub
Private Sub spdmat_LostFocus()
'    SpdMat.ShadowColor = SPD_HEADER_COLOR
'    SpdHighlight SpdMat, 0, 0
End Sub

Private Sub ButEnaDis(EnaOrDis As Boolean)
On Error GoTo EnaDisCtrls_Error

    Call EnaDisCtrls(Me, EnaOrDis)
    
    If EnaOrDis = True Then
        fr_Main.Enabled = False
    Else
        fr_Main.Enabled = True
    End If
    If Opt = ADD Then
        DTPicker1.Enabled = True
    Else
        DTPicker1.Enabled = False
    End If
 
Exit Sub
EnaDisCtrls_Error:
MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure EnaDisCtrls of Form frm_QcWrpng"
End Sub

Private Function ChkCtrls() As Boolean
Dim SqlFilter As String
On Error GoTo ChkCtrls_Error

    ChkCtrls = False
    
    If Opt = Delete Then GoTo l
    
    Set RsTmp = RsMas
    RsTmp.Requery
    
    If Opt = ADD Then
        SqlFilter = "Blend_Code = '" & txtCode.Text & "' and effdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
    ElseIf Opt = modification Then
        SqlFilter = "Blend_Code = '" & txtCode.Text & "' And Blend_MasID <> " & txtCode.Tag & " and effdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
    End If
    
    RsTmp.Filter = 0
    RsTmp.Filter = SqlFilter
    
    If Not RsTmp.EOF Then
        MsgBox "Code Already Exists.", vbInformation, head
        txtCode.SetFocus
        Exit Function
    End If
    
    If Opt = ADD Then
        SqlFilter = "Blend_Desc = '" & txtDesc.Text & "' and effdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
    ElseIf Opt = modification Then
        SqlFilter = "Blend_Desc = '" & txtDesc.Text & "' And Blend_MasID <> " & txtCode.Tag & " and effdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
    End If
    
    RsTmp.Filter = 0
    RsTmp.Filter = SqlFilter
    
    If Not RsTmp.EOF Then
        MsgBox "Description Already Exists.", vbInformation, head
        txtDesc.SetFocus
        Exit Function
    End If
    
    If Trim(txtCode.Text) = "" Then
        MsgBox "Enter the BlendCode.", vbInformation, head
        txtCode.SetFocus
        Exit Function
    End If
    
    If Trim(txtDesc.Text) = "" Then
        MsgBox "Enter the BlendCode.", vbInformation, head
        txtDesc.SetFocus
        Exit Function
    End If
    
    If Trim(txtejectbale.Text) = "" Then
        MsgBox "Enter the Target Eject/Bale.", vbInformation, head
        txtDesc.SetFocus
        Exit Function
    End If
    
    If SpdValidRow(SpdMat, SpdMat.MaxRows, True).FnBool = False Then
        SpdMat.MaxRows = SpdMat.MaxRows - 1
        If SpdMat.MaxRows = 0 Then
            SpdMat.MaxRows = 1
        End If
    End If
        
    Call Calc
        
    If val(lbl_Tot.Caption) <> 100 Then
        MsgBox "Please Check the Ratio.", vbInformation, head
        SpdGen.SpdSetFocus SpdMat, 5, SpdMat.MaxRows
        Exit Function
    End If
l:
    ChkCtrls = True

Exit Function
ChkCtrls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ChkCtrls of Form frmBlendMas", vbInformation, head
End Function
Private Sub Save()
Dim Saved As Boolean
Dim SqlSave As String
Dim sBlendType As String * 1
On Error GoTo Save_Error
Saved = False
DB.BeginTrans

    '*** Getting the Blend Type
    sBlendType = BlendType
    
    SqlSave = ""
    If Opt = ADD Then
        SqlSave = "Insert Into PPC_Blend_Mas(DivCode, UnitCode, Blend_Code, Blend_Desc, Blend_Type,ejectbale,effdate) "
        SqlSave = SqlSave & " Values('" & Divcode & "', '" & unitcode & "', '" & txtCode.Text & "', '" & txtDesc.Text & "', '" & sBlendType & "'," & val(txtejectbale.Text) & ",'" & Format(DTPicker1.value, "yyyy-mm-dd") & "')"
        DB.Execute SqlSave
        
        Set RsTmp = New ADODB.Recordset
        RsTmp.Open "Select Ident_Current('PPC_Blend_Mas') As NxtID", DB, adOpenStatic, adLockReadOnly
        
        txtCode.Tag = val(RsTmp!NxtID)
        
        With SpdMat
            For i = 1 To .MaxRows
                .Row = i
                SqlSave = ""
                SqlSave = "Insert Into PPC_Blend_Det (Blend_MasID, MaterialID,bales, Ratio,Divcode)"
                SqlSave = SqlSave & " Values (" & val(txtCode.Tag) & ", "
                .Col = 1: SqlSave = SqlSave & val(.CellTag) & ","
                .Col = 4: SqlSave = SqlSave & val(.Text) & ","
                .Col = 5: SqlSave = SqlSave & val(.Text) & ",'" & Divcode & "') "
                DB.Execute SqlSave
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
        
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Mix Ratio"
                TrnLog("Trans_Mod") = "Add"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
                
                TrnLog("docdt") = Format(DTPicker1.value, "yyyy-mm-dd")
                TrnLog("docno") = val(txtCode.Tag)
               .Col = 4
                TrnLog("ordqty") = val(SpdMat.Text)
                
                .Col = 5
                TrnLog("ordkgs") = val(SpdMat.Text)
        
                TrnLog.UpdateBatch adAffectAllChapters
                
                
            Next i
        End With
        
        MsgBox "Record(s) Saved", vbInformation, head
        
    ElseIf Opt = modification Then
        SqlSave = "Update PPC_Blend_Mas Set "
        SqlSave = SqlSave & " Blend_Desc = '" & txtDesc.Text & "', Blend_Type =  '" & sBlendType & "',ejectbale=" & val(txtejectbale.Text) & ",effdate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'"
        SqlSave = SqlSave & " Where Blend_MasID = " & val(txtCode.Tag)
        
        DB.Execute SqlSave
        
        SqlSave = "Delete from PPC_Blend_Det Where Blend_MasID = " & val(txtCode.Tag)
        DB.Execute SqlSave
        
        With SpdMat
            For i = 1 To .MaxRows
                .Row = i
                SqlSave = ""
                SqlSave = "Insert Into PPC_Blend_Det (Blend_MasID, MaterialID,bales, Ratio,Divcode)"
                SqlSave = SqlSave & " Values (" & val(txtCode.Tag) & ", "
                .Col = 1: SqlSave = SqlSave & val(.CellTag) & ","
                .Col = 4: SqlSave = SqlSave & val(.Text) & ","
                .Col = 5: SqlSave = SqlSave & val(.Text) & "," & Divcode & ")"
                DB.Execute SqlSave
                
                
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
        
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Mix Ratio"
                TrnLog("Trans_Mod") = "Mod"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
                
                TrnLog("docdt") = Format(DTPicker1.value, "yyyy-mm-dd")
                TrnLog("docno") = val(txtCode.Tag)
               .Col = 4
                TrnLog("ordqty") = val(SpdMat.Text)
                
                .Col = 5
                TrnLog("ordkgs") = val(SpdMat.Text)
        
                TrnLog.UpdateBatch adAffectAllChapters
            Next i
        End With
        
        MsgBox "Record(s) Modified", vbInformation, head
    
    ElseIf Opt = Delete Then
        If MsgBox("Do you want to Delete this record", vbYesNo, head) = vbNo Then DB.CommitTrans: Exit Sub
        SqlSave = "Delete from PPC_Blend_Det Where Blend_MasID = " & val(txtCode.Tag)
        DB.Execute SqlSave
                Set TrnLog = New Recordset
                TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,TC,Docno,Docdt,sno ,ContNo,Contdt,PRNO,PRDt,Slcode,Agent_code,ReqName,Isstype,mixgrp,Arrno,Arrdt,Lotno,Lotdt,AreaCode,Dlytype,IM_IND,CARCODE,CreditDays,ArrivalType,Paycode,PayMode,PurType,Plcode,Line_No,LorryNo,CashDisPer,InsPer,TradeDisPer,LR_INDate,LR_OutDate,Godown,RateUnit,POTYPE,BOENO,BOE_DT,IRNo,IRDate,IRSNo,CATCD,CNTCODE,Varcode,BBFlg,ordqty,ordkgs,WeightFlg,netwt,Grosswt,Tarewt,Pnetwt,PGrosswt,PTarewt,Comm_wt,RateCY,RateKg,currency,conv_Rate,AssAmount,Frg_Amt,ins_Amt,Oth_Amt,IDPer,IDAMT,SWPer,SWAMT,Adv_AMT,HSN,TaxCode,Cgstper,Cgstamt,Sgstper,Sgstamt,Igstper,Igstamt,LandingCost,LandcostWithTax  FROM RM_Trans_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                TrnLog.AddNew
                TrnLog("DIVCODE") = Divcode
        
                TrnLog("moduleNo") = ModuleNo
                TrnLog("Trans_Name") = "Mix Ratio"
                TrnLog("Trans_Mod") = "Del"
                TrnLog("Trans_IPADD") = LocalIP
                TrnLog("Trans_Host") = LocalHost
                TrnLog("Trans_UserId") = usrid
                Set rsCheck = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(rsCheck.Fields(0), "yyyy-mm-dd hh:mm:ss")
                
                TrnLog("docdt") = Format(DTPicker1.value, "yyyy-mm-dd")
                TrnLog("docno") = val(txtCode.Tag)
        
                TrnLog.UpdateBatch adAffectAllChapters
        
        
        SqlSave = "Delete from PPC_Blend_Mas Where Blend_MasID = " & val(txtCode.Tag)
        DB.Execute SqlSave
        
        MsgBox "Record(s) Deleted", vbInformation, head
    
    End If
    

DB.CommitTrans
Saved = True
Exit Sub
Save_Error:
    If Saved = False Then DB.RollbackTrans
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure save of Form frmBlendMas", vbInformation, head
End Sub

Private Sub txtCode_Change()
Set Rs = New Recordset
Rs.Open "Select cntname from rm_count where cntcd='" & txtCode.Text & "' and divcode='" & Divcode & "'", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    txtDesc.Text = Rs("cntname")
Else
    txtDesc.Text = ""
End If
End Sub

Private Sub txtCode_LostFocus()
On Error GoTo txtCode_LostFocus_Error

Exit Sub
txtCode_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtCode_LostFocus of Form frmBlendMas", vbInformation, head
End Sub

Private Sub txtCode_Validate(Cancel As Boolean)
On Error GoTo txtCode_Validate_Error

    If Opt = ADD Or Opt = modification Then
        Set Rs = New Recordset
        Rs.Open "select * from rm_count where cntcd='" & txtCode.Text & "' and divcode='" & Divcode & "'", DB, adOpenStatic
        If Rs.RecordCount = 0 Then
            LookUp.clear = True
            LookUp.query = "select cntcd""Mixing Count Code"",cntname""Mixing Count Name"" from rm_count where 1=1 and DivCode = '" & Divcode & "'"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "2000,5500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtCode.Text = LookUp.Fields(0)
                txtDesc.Text = LookUp.Fields(1)
                txtDesc.Locked = True
                LookUp.clear = True
                txtejectbale.SetFocus
                
'                SpdMat.Col = 1
'                SpdMat.SetFocus
'                SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
                Exit Sub
            Else
               Call BUTTON_Click(10)
            End If
        Else
            txtCode.Text = Rs("cntcd")
            txtDesc.Text = Rs("cntname")
            txtDesc.Locked = True
            txtejectbale.SetFocus
'            SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
'            SpdMat.SetFocus
            Exit Sub
        End If
    End If
    If Trim(txtCode.Text) = "" Then
        MsgBox "Enter the Code", vbInformation, head
        Cancel = True
        Exit Sub
    Else
        SpdMat.Col = 1
        SpdMat.SetFocus
        SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
    End If

Exit Sub
txtCode_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtCode_Validate of Form frmBlendMas", vbInformation, head
End Sub

Private Sub txtDesc_Validate(Cancel As Boolean)
On Error GoTo txtDesc_Validate_Error

    If Trim(txtDesc.Text) = "" Then
        MsgBox "Enter the Description", vbInformation, head
        Cancel = True
        Exit Sub
    End If
    

Exit Sub
txtDesc_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtDesc_Validate of Form frmBlendMas", vbInformation, head
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
'ElseIf KeyCode = vbKeyF And Shift = 2 Then
'    If BUTTON(4).Enabled = True Then
'        Call BUTTON_Click(4)    ''Find
'    End If
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
'    If BUTTON(12).Enabled = True Then
'        Call BUTTON_Click(12)   ''Print Option
'    End If
ElseIf KeyCode = vbKeyY And Shift = 2 Then
    If BUTTON(13).Enabled = True Then
        Call BUTTON_Click(13)   ''Crystal Report
    End If
End If

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form frmBlendMas", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Function BlendType() As String
Dim TmpBlendType As String * 1
Dim MatType As String
On Error GoTo SetBlendType_Error

TmpBlendType = ""
MatType = ""

With SpdMat
    For i = 1 To .MaxRows
        .Row = i: .Col = 2
        
        '*** Checking with the first character
        If MatType <> Mid(.Text, 1, 1) Then
            
            '*** Addition Of the next character
            MatType = MatType & Mid(.Text, 1, 1)
            
            'If the characters vary then only
            'the number of charcaters will be greater than one
            If Len(MatType) > 1 Then
                TmpBlendType = "B"
                BlendType = TmpBlendType
                Exit Function
            End If
        End If
    Next i
End With

If MatType = "C" Then
    TmpBlendType = "N"
Else
    TmpBlendType = "B"
End If

BlendType = TmpBlendType

Exit Function
SetBlendType_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SetBlendType of Form frmBlendMas", vbInformation, head
End Function

Private Sub txtejectbale_KeyPress(KeyAscii As Integer)
    tonum txtejectbale, 4, KeyAscii, 1
End Sub

Private Sub txtejectbale_Validate(Cancel As Boolean)
On Error GoTo txtejectbale_Validate_Error

    If Trim(txtejectbale.Text) = "" Then
        MsgBox "Enter the Target Eject/Bale", vbInformation, head
        Cancel = True
        Exit Sub
    End If
    SpdMat.Col = 1
    SpdMat.SetFocus
    SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
Exit Sub
txtejectbale_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtejectbale_Validate of Form frmBlendMas"
End Sub
