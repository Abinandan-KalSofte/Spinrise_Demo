VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#7.0#0"; "FPSPR70.ocx"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form frmBlendMas 
   Caption         =   "Blend / Mix"
   ClientHeight    =   7770
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   9090
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7770
   ScaleWidth      =   9090
   WindowState     =   2  'Maximized
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   0
      TabIndex        =   15
      Top             =   -90
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":0000
         Enabled         =   0   'False
         Height          =   510
         Index           =   6
         Left            =   2640
         Picture         =   "frmBlendMas.frx":044A
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":0797
         Enabled         =   0   'False
         Height          =   510
         Index           =   0
         Left            =   15
         Picture         =   "frmBlendMas.frx":0AA1
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":0E34
         Enabled         =   0   'False
         Height          =   510
         Index           =   5
         Left            =   2100
         Picture         =   "frmBlendMas.frx":127E
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":15E3
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
         Picture         =   "frmBlendMas.frx":18ED
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":1C89
         Height          =   510
         Index           =   1
         Left            =   525
         Picture         =   "frmBlendMas.frx":1F93
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1575
         Picture         =   "frmBlendMas.frx":230D
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":26A4
         Enabled         =   0   'False
         Height          =   510
         Index           =   7
         Left            =   3135
         Picture         =   "frmBlendMas.frx":2AEE
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":2E3E
         Height          =   510
         Index           =   11
         Left            =   5235
         Picture         =   "frmBlendMas.frx":3288
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":361D
         Height          =   510
         Index           =   9
         Left            =   4185
         Picture         =   "frmBlendMas.frx":3927
         Style           =   1  'Graphical
         TabIndex        =   16
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":3CC9
         Height          =   510
         Index           =   10
         Left            =   4710
         Picture         =   "frmBlendMas.frx":3FD3
         Style           =   1  'Graphical
         TabIndex        =   17
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":434F
         Enabled         =   0   'False
         Height          =   510
         Index           =   8
         Left            =   3645
         Picture         =   "frmBlendMas.frx":4799
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "frmBlendMas.frx":4AFB
         Height          =   510
         Index           =   4
         Left            =   5760
         Picture         =   "frmBlendMas.frx":4E05
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
         TabIndex        =   21
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
         TabIndex        =   20
         Top             =   255
         Width           =   615
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3705
      Left            =   900
      TabIndex        =   18
      Top             =   1300
      Width           =   6630
      _ExtentX        =   11695
      _ExtentY        =   6535
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frmBlendMas.frx":519A
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
         Height          =   1050
         Left            =   90
         TabIndex        =   11
         Top             =   45
         Width           =   6450
         Begin VB.TextBox txtDesc 
            Height          =   330
            Left            =   990
            TabIndex        =   13
            ToolTipText     =   "Enter the value"
            Top             =   585
            Width           =   4110
         End
         Begin VB.TextBox txtCode 
            Height          =   330
            Left            =   990
            TabIndex        =   12
            ToolTipText     =   "Enter the value"
            Top             =   180
            Width           =   1770
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Description"
            Height          =   195
            Left            =   90
            TabIndex        =   23
            Top             =   630
            Width           =   795
         End
         Begin VB.Label lblCode 
            AutoSize        =   -1  'True
            Caption         =   "Blend / Mix"
            Height          =   195
            Left            =   90
            TabIndex        =   22
            Top             =   225
            Width           =   810
         End
      End
      Begin FPSpreadADO.fpSpread SpdMat 
         Height          =   2130
         Left            =   90
         TabIndex        =   14
         Top             =   1155
         Width           =   6450
         _Version        =   458752
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
         SpreadDesigner  =   "frmBlendMas.frx":51B6
         UserResize      =   0
         ScrollBarTrack  =   1
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
         TabIndex        =   25
         Top             =   3330
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
         Left            =   4635
         TabIndex        =   24
         Top             =   3330
         Width           =   675
      End
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   330
      Left            =   0
      TabIndex        =   19
      Top             =   7440
      Width           =   9090
      _ExtentX        =   16034
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
            Object.Width           =   7805
            TextSave        =   ""
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel3 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   6
            TextSave        =   "29/06/2009"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel4 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Style           =   5
            TextSave        =   "3:11 PM"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Blend / Mix"
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
      Width           =   1485
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
Dim RsMas As Recordset
Dim RsTmp As Recordset
Dim Opt As ModeType
Dim i As Integer
Dim DB As ADODB.Connection
Dim SpdGen As New ClsSpdGen
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0                                      'Addition
    Opt = ADD
    lbldesc.Caption = "Addition"
    Call ClearChars
    Call ButEnaDis(False)
    fr_Main.Enabled = True
    SpdGen.SpdLockUnlock SpdMat, False, True
    txtCode.SetFocus
    StatusBar1.Panels(2).Text = "Addition"
    Exit Sub
Case 1                                      'Modification
     Opt = modification
     lbldesc.Caption = "Modification"
     
     LookUp.clear = True
     LookUp.Caption = "Blend Master"
     LookUp.Query = "Select Blend_Code AS ""Blend Code"", BLEND_DESC AS ""Blend Description"", BLEND_MASID From PPC_Blend_Mas Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
     LookUp.DefCol = "Blend Code"
     LookUp.ALIGN = "2000,4000, 0"
    LookUp.Show vbModal
     
     If LookUp.Cancel = False Then
        RsMas.Requery
        RsMas.Filter = 0
        RsMas.Find "Blend_MasID = " & LookUp.Fields(2) & ""
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
     LookUp.Query = "Select Blend_Code AS ""Blend Code"", BLEND_DESC AS ""Blend Description"", BLEND_MASID From PPC_Blend_Mas Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
     LookUp.DefCol = "BLEND CODE"
     LookUp.ALIGN = "2000,4000, 0"
     LookUp.Show vbModal
     
     If LookUp.Cancel = False Then
        RsMas.Requery
        RsMas.Filter = 0
        RsMas.Find "Blend_MasID = " & LookUp.Fields(2) & ""
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
    Opt = Find
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
    Call NEWFORM1(BUTTON, GSNO)
    Screen.MousePointer = 0
Case 11
    'EXIT
    'If MsgBox("Do you want to Exit?", vbYesNo, head) = vbNo Then Exit Sub
    Screen.MousePointer = 0
    Reset
    Unload Me
End Select

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form frm_Wrapping"
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    Set DB = New ADODB.Connection
    DB.Open connectstring
    
    SpdGen.AssignSpread SpdMat
    
    SqlStr = ""
    SqlStr = "Select Top 1 DivCode, UnitCode, Blend_MasID, Blend_Code, Blend_Desc "
    SqlStr = SqlStr & Chr(13) & " From PPC_Blend_Mas "
    SqlStr = SqlStr & Chr(13) & " Where DivCode = '" & Divcode & "' And UnitCode = '" & unitcode & "'"
    
    Set RsMas = New ADODB.Recordset
    RsMas.Open SqlStr, DB, adOpenStatic, adLockReadOnly
    
    Call StoreChars
    Call ButEnaDis(True)
    Call NEWFORM1(BUTTON, GSNO)
    SpdGen.SpdLockUnlock SpdMat, True, True
    lblDate.Caption = Date
    
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
    SpdGen.SpdClear SpdMat

Exit Sub
ClearChars_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearChars of Form frmBlendMas", vbInformation, head
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
        LookUp.Caption = "Material"
        LookUp.Query = SqlStr
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

Private Sub spdmat_LeaveCell(ByVal Col As Long, ByVal Row As Long, ByVal NewCol As Long, ByVal NewRow As Long, Cancel As Boolean)
    If NewRow <= 5 Then Exit Sub
    'Call SpdMat_Change(Col, Row)
    SpdGen.SpdSetFocus SpdMat, NewCol, NewRow
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
        SqlFilter = "Blend_Code = '" & txtCode.Text & "'"
    ElseIf Opt = modification Then
        SqlFilter = "Blend_Code = '" & txtCode.Text & "' And Blend_MasID <> " & txtCode.Tag & ""
    End If
    
    RsTmp.Filter = 0
    RsTmp.Filter = SqlFilter
    
    If Not RsTmp.EOF Then
        MsgBox "Code Already Exists.", vbInformation, head
        txtCode.SetFocus
        Exit Function
    End If
    
    If Opt = ADD Then
        SqlFilter = "Blend_Desc = '" & txtDesc.Text & "'"
    ElseIf Opt = modification Then
        SqlFilter = "Blend_Desc = '" & txtDesc.Text & "' And Blend_MasID <> " & txtCode.Tag & ""
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
        SqlSave = "Insert Into PPC_Blend_Mas(DivCode, UnitCode, Blend_Code, Blend_Desc, Blend_Type) "
        SqlSave = SqlSave & " Values('" & Divcode & "', '" & unitcode & "', '" & txtCode.Text & "', '" & txtDesc.Text & "', '" & sBlendType & "')"
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
                .Col = 5: SqlSave = SqlSave & val(.Text) & "," & Divcode & ") "
                DB.Execute SqlSave
            Next i
        End With
        
        MsgBox "Record(s) Saved", vbInformation, head
        
    ElseIf Opt = modification Then
        SqlSave = "Update PPC_Blend_Mas Set "
        SqlSave = SqlSave & " Blend_Desc = '" & txtDesc.Text & "', Blend_Type =  '" & sBlendType & "'"
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
            Next i
        End With
        
        MsgBox "Record(s) Modified", vbInformation, head
    
    ElseIf Opt = Delete Then
        If MsgBox("Do you want to Delete this record", vbYesNo, head) = vbNo Then DB.CommitTrans: Exit Sub
        SqlSave = "Delete from PPC_Blend_Det Where Blend_MasID = " & val(txtCode.Tag)
        DB.Execute SqlSave
        
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
            LookUp.Query = "select cntcd""Mixing Count Code"",cntname""Mixing Count Name"" from rm_count where 1=1 and DivCode = '" & Divcode & "'"
            LookUp.Caption = "Mixing Count Listing"
            LookUp.DefCol = "Mixing Count Name"
            LookUp.ALIGN = "2000,5500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                txtCode.Text = LookUp.Fields(0)
                txtDesc.Text = LookUp.Fields(1)
                txtDesc.Locked = True
                LookUp.clear = True
                SpdMat.Col = 1
                SpdMat.SetFocus
                SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
                Exit Sub
            Else
               Call BUTTON_Click(10)
            End If
        Else
            txtCode.Text = Rs("cntcd")
            txtDesc.Text = Rs("cntname")
            txtDesc.Locked = True
            SpdGen.SpdSetFocus SpdMat, 1, SpdMat.MaxRows
            SpdMat.SetFocus
            Exit Sub
        End If
    End If
    If Trim(txtCode.Text) = "" Then
        MsgBox "Enter the Code", vbInformation, head
        Cancel = True
        Exit Sub
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
