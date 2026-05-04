VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#7.0#0"; "FPSPR70.ocx"
Begin VB.Form frm_DBSetUp 
   Caption         =   "Reports DB Setup"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form3"
   MDIChild        =   -1  'True
   ScaleHeight     =   8490
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.CommandButton CmdClose 
      Caption         =   "&Close"
      Height          =   420
      Left            =   4530
      TabIndex        =   2
      Top             =   4995
      Width           =   1545
   End
   Begin VB.CommandButton CmdSave 
      Caption         =   "&Save"
      Default         =   -1  'True
      Height          =   420
      Left            =   3000
      TabIndex        =   1
      Top             =   5010
      Width           =   1500
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3390
      Left            =   900
      TabIndex        =   3
      Top             =   1300
      Width           =   6675
      _ExtentX        =   11774
      _ExtentY        =   5980
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "frm_DBSetUp.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "SpdList"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).ControlCount=   2
      Begin FPSpreadADO.fpSpread SpdList 
         Height          =   3150
         Left            =   105
         TabIndex        =   5
         Top             =   120
         Width           =   6465
         _Version        =   458752
         _ExtentX        =   11404
         _ExtentY        =   5556
         _StockProps     =   64
         DisplayRowHeaders=   0   'False
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         MaxCols         =   3
         MaxRows         =   1
         ScrollBars      =   2
         SpreadDesigner  =   "frm_DBSetUp.frx":001C
         UserResize      =   1
         ScrollBarTrack  =   1
      End
      Begin VB.Label Label2 
         Height          =   240
         Left            =   2985
         TabIndex        =   0
         Top             =   45
         Width           =   1590
      End
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0E0FF&
      BackStyle       =   0  'Transparent
      Caption         =   "Reports DB Setup"
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
      Height          =   375
      Left            =   960
      TabIndex        =   4
      Top             =   810
      Width           =   3150
   End
End
Attribute VB_Name = "frm_DBSetUp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'------------------------------------------------------------------
'Module       : Spinning
'Entry        : Report DB Setup
'Purpose      : To Maintain the Active DataBases in System Resitery
'Created On   : 03.10.2007
'Developed By : N.Soundara Rajan
'------------------------------------------------------------------
Dim i As Integer

'---------------------------------------------------------------------------------------
' Procedure : CmdClose_Click
' DateTime  : 07/12/2008 14:39
' Author    : S.VinothKumar
' Purpose   : Error Handling
'---------------------------------------------------------------------------------------
'
Private Sub CmdClose_Click()
On Error GoTo CmdClose_Click_Error

    Unload Me

Exit Sub
CmdClose_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure CmdClose_Click of Form frm_DBSetUp", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub CmdSave_Click()
Dim dbname, CmpName As String
On Error GoTo CmdSave_Click_Error
    
    For i = 1 To SpdList.MaxRows
        SpdList.Row = i
        SpdList.Col = 2
        If VBA.GetSetting("Kalsoft", SpdList.Text, "DBName") <> "" Then
            VBA.DeleteSetting "Kalsoft", SpdList.Text
        End If
    Next i
    
    For i = 1 To SpdList.MaxRows
        SpdList.Row = i
        SpdList.Col = 2: CmpName = SpdList.Text
        SpdList.Col = 3: dbname = SpdList.Text
        
        SpdList.Col = 1
        
        If SpdList.value = 1 Then
            VBA.SaveSetting "Kalsoft", CmpName, "DBName", dbname
        End If
    Next i
    
    DoEvents
    
    MsgBox "Settings Updated...", vbInformation, head
    Unload Me

Exit Sub
CmdSave_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure CmdSave_Click of Form frm_DBSetUp"
End Sub

Private Sub Form_Load()

On Error GoTo Form_Load_Error

    Screen.MousePointer = vbHourglass
    
    Call ClearChars
    Call StoreChars
    
    SpdList.CellNoteIndicator = CellNoteIndicatorDoNotShowAndDoNotFireEvent
    
    Screen.MousePointer = vbNormal

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Form_Load of Form frm_DBSetUp"
End Sub
Private Sub ClearChars()
On Error GoTo ClearChars_Error

    SpdList.MaxRows = 0
    SpdList.MaxRows = 1
    

Exit Sub
ClearChars_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Clearchars of Form frm_DBSetUp"
End Sub
Private Sub StoreChars()

Dim ConnStr As String

Dim DB_Mas As ADODB.Connection
Dim DB_Cmp As ADODB.Connection

Dim Rs_Mas As ADODB.Recordset
Dim Rs_Cmp As ADODB.Recordset

Dim Rs_Chk As ADODB.Recordset

On Error GoTo StoreSetting_Error

   
    '*** Connection String Build ***
    ConnStr = ""
    ConnStr = connectstring
    ConnStr = Mid(ConnStr, 1, InStrRev(ConnStr, "="))
    
    '*** Connection for the Database Master ***
    Set DB_Mas = New ADODB.Connection
    DB_Mas.Open ConnStr & "Master;"
    
    With SpdList
        .MaxRows = 0
        If DB_Mas.State = 1 Then
        
            '*** Getting the DataBase Names from Master
            '*** The first 6 DbIDs are the default databases of the server
            
            Set Rs_Mas = New ADODB.Recordset
            Rs_Mas.Open "select * From sysdatabases where dbid > 6 order by dbid", DB_Mas, adOpenStatic, adLockReadOnly
            
            If Not Rs_Mas.EOF Then
            
                While Not Rs_Mas.EOF
                
                        Set DB_Cmp = New ADODB.Connection
                        DB_Cmp.Open ConnStr & Rs_Mas!Name & ";"
                        
                        If DB_Cmp.State = 1 Then
                            
                            '*** Checking the availablity of PP_DivMas in a selected database
                            Set Rs_Chk = New ADODB.Recordset
                            Rs_Chk.Open "Select * From SysObjects Where Name = 'pp_DivMas'", DB_Cmp, adOpenStatic, adLockReadOnly
                            
                            If Not Rs_Chk.EOF Then
                                Set Rs_Cmp = New ADODB.Recordset
                                
                                '*** To Get the Company Abbrevation ***
                                Rs_Cmp.Open "Select Distinct C.CompName " & _
                                    " from PP_DivMas D" & _
                                    " Inner Join CompMas C On C.CompCode = D.CompCode", DB_Cmp, adOpenStatic, adLockReadOnly
                                
                                If Not Rs_Cmp.EOF Then
                                    SpdList.MaxRows = SpdList.MaxRows + 1
                                    SpdList.Row = SpdList.MaxRows
                                    SpdList.Col = 2
                                    SpdList.Text = Rs_Cmp!CompName
                                    SpdList.CellNote = Rs_Mas!Name
                                    SpdList.Col = 3
                                    SpdList.Text = Rs_Mas!Name
                                    
                                    '*** Checking in System Registery
                                    
                                    If VBA.GetSetting("Kalsoft", Rs_Cmp!CompName, "DBName") = Rs_Mas!Name Then
                                        SpdList.Col = 1: SpdList.value = 1          'If Already Exists then Check Box Value will be true
                                    Else
                                        SpdList.Col = 1: SpdList.value = 0          'Else False
                                    End If
                                    
                                End If      'Rs_Cmp
                            End If      'Rs_Chk
                        End If      'DB_Cmp
                    Rs_Mas.MoveNext
                Wend
            End If      'Rs_Mas
        End If      'DB_Mas
    End With    'SpdList
    

Exit Sub
StoreSetting_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure StoreSetting of Form frm_DBSetUp"
End Sub

