VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{F856EC8B-F03C-4515-BDC6-64CBD617566A}#8.0#0"; "fpSPR80.OCX"
Begin VB.UserControl UserFooter 
   ClientHeight    =   4425
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4080
   ScaleHeight     =   4425
   ScaleWidth      =   4080
   Begin TabDlg.SSTab SSTab1 
      Height          =   4290
      Left            =   45
      TabIndex        =   0
      Top             =   45
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   7567
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Caption         =   "Report Footer"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   4110
         Left            =   90
         TabIndex        =   1
         Top             =   90
         Width           =   3795
         Begin FPSpreadADO.fpSpread SpdFooter 
            Height          =   3840
            Left            =   45
            TabIndex        =   2
            Top             =   225
            Width           =   3705
            _Version        =   524288
            _ExtentX        =   6535
            _ExtentY        =   6773
            _StockProps     =   64
            DisplayColHeaders=   0   'False
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
            SpreadDesigner  =   "UserFooter.ctx":0000
            UserResize      =   1
            ScrollBarTrack  =   1
            AppearanceStyle =   0
         End
      End
   End
End
Attribute VB_Name = "UserFooter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Dim cn As Connection
Dim Rs As Recordset
Dim iOrderby As String
Dim SqlStr As String
Dim I As Integer

Private Sub StoreChars()
On Error GoTo StoreChars_Error
    
    SqlStr = ""
    SqlStr = SqlStr & Chr(13) & " Select FootDesc "
    SqlStr = SqlStr & Chr(13) & " From In_RepFoot "
    SqlStr = SqlStr & Chr(13) & " Where DivCode = '" & Divcode & "'"
    
    Set Rs = New Recordset
    Rs.Open SqlStr, cn, adOpenStatic, adLockReadOnly
    
    With SpdFooter
        .MaxRows = 0
        If Not Rs.EOF Then
            While Not Rs.EOF
                .MaxRows = .MaxRows + 1
                .Row = .MaxRows
                If VBA.GetSetting("Kalsofte\" & App.EXEName & "\UserFooter", Rs!footdesc, 1) = Rs!footdesc Then
                    .Col = 1: .value = True
                Else
                    .Col = 1: .value = False
                End If
                
                .Col = 2: .Text = Rs!footdesc
                Rs.MoveNext
            Wend
        End If
    End With

Exit Sub
StoreChars_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StoreChars of User Control UserControl1", vbInformation, head
End Sub
Public Sub Load()
On Error GoTo LOAD_Error

    Set cn = New Connection
    cn.Open connectstring
    cn.CursorLocation = adUseClient

    Call StoreChars

Exit Sub
LOAD_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Load of User Control UserFooter", vbInformation, head
End Sub


Private Sub SpdFooter_ButtonClicked(ByVal Col As Long, ByVal Row As Long, ByVal ButtonDown As Integer)
Dim Max As Integer
On Error GoTo SpdFooter_ButtonClicked_Error

    With SpdFooter
        Max = 0
        For I = 1 To .MaxRows
            .Row = I: .Col = 3
            If IsTextExists(3, CStr(I), 1) = False Then
                Max = val(I)
                Exit For
            End If
        Next I
    
        If Col = 1 Then
            .Row = Row: .Col = Col
            .TypeComboBoxClear 3, .Row
            If .value = True Then
                .Row = Row: .Col = 3
                If val(Max) = 0 Then Max = 1
                .TypeComboBoxString = CStr(val(Max))
                .TypeComboBoxCurSel = 0
            ElseIf .value = False Then
                .Col = 3:  .Text = ""
            End If
        End If
    
    End With
    

Exit Sub
SpdFooter_ButtonClicked_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdFooter_ButtonClicked of User Control UserFooter", vbInformation, head
End Sub

Private Sub SpdFooter_ComboDropDown(ByVal Col As Long, ByVal Row As Long)
On Error GoTo SpdFooter_ComboDropDown_Error

    SqlStr = "Select * From in_repFoot where divcode = '" & Divcode & "'"
    Set Rs = New Recordset
    Rs.Open SqlStr, cn, adOpenStatic, adLockReadOnly
    
    With SpdFooter
        
        .TypeComboBoxClear 3, Row
        .Row = Row: .Col = 1
        
        If .value = True Then
            
            I = .MaxRows
            While I > 0
                .Row = Row: .Col = 3
                
                If IsTextExists(3, CStr(I), 1) = False Then
                    .Row = Row: .Col = 3
                    .TypeComboBoxString = CStr(I)
                End If
                
                I = I - 1
            Wend
            
        End If
        
    End With
    
Exit Sub
SpdFooter_ComboDropDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SpdFooter_ComboDropDown of User Control UserFooter", vbInformation, head
End Sub
Private Function SelectedString() As String
'Dim J As Integer
'Dim Str As String
'Dim v_chk As Integer
'v_chk = 0
'On Error GoTo SelectedString_Error
'    With SpdFooter
'        Str = ""
'        '* Loop for Ascending Order
'        For i = 1 To .MaxRows
'            '* Row Loop
'            For J = 1 To .MaxRows
'                .Row = J: .Col = 1
'
'                If .value = True Then
'                     .Col = 3
'                     If v_chk = 0 Then
'                        VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", 1, 1, 1
'                        VBA.DeleteSetting "Kalsofte\" & App.EXEName & "\UserFooter"
'                     End If
'                     v_chk = 1
'                    '* Checking
'                    If val(.Text) = val(i) Then
'                        .Col = 2
'                        VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", .Text, 1, .Text
'                        Str = Str & .Text & ","
'                        Exit For
'                    End If
'                End If
'            Next J '* Row Loop
'        Next i  '* Order Loop
'
'        If Len(Str) > 0 Then
'            Str = Mid(Str, 1, Len(Str) - 1)
'        End If
'
'    End With
'
'SelectedString = Str

Dim j As Integer
Dim Str As String
Dim v_chk As Integer


prcount = 0
v_chk = 0
Str = ""
On Error GoTo SelectedString_Error
    With SpdFooter
                        'If UCase(CustID) = "CHERAN" Then
                        Set Rs = New Recordset
                            Rs.Open " select * from temp_prpo where divcode = '" & Divcode & "' and ipaddress='" & LocalIP & "' ", DB, adOpenStatic
                            If Rs.RecordCount > 0 Then
                                DB.Execute ("delete from temp_prpo where divcode='" & Divcode & "' and ipaddress='" & LocalIP & "'")
                            End If
                       ' End If
        Str = ""
        '* Loop for Ascending Order
        For I = 1 To .MaxRows
            '* Row Loop
            For j = 1 To .MaxRows
                .Row = j: .Col = 1
                
                If .value = True Then
                     .Col = 3
                     If v_chk = 0 Then
                        VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", 1, 1, 1
                      '  VBA.DeleteSetting "Kalsofte\" & App.EXEName & "\UserFooter"
                     End If
                     v_chk = 1
                    '* Checking
                    iOrderby = CInt(.Text)
                    If val(.Text) = val(I) Then
                        .Col = 2
                        'VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", .Text, 1, .Text
                        VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", .Text, 1, .Text
                        VBA.SaveSetting "Kalsofte\" & App.EXEName & "\UserFooter", .Text, 2, CStr(iOrderby)
                        Str = Str & .Text & ","
                      ' If UCase(CustID) = "CHERAN" Then
                            
                        Dim Optn As String
                        Dim OptName As String
                        Optn = ""
                        OptName = Optn & .Text
                        prcount = prcount + 1
                        If prcount <= 4 Then
                            If UCase(divabbr) = "SCMTS" Then
                                 DB.Execute ("insert into temp_prpo values ('" & Divcode & "','" & PrPoNo & "','" & prdate & "','" & OptName & "','" & LocalIP & "','" & iOrderby & "','')")
                            Else
                                DB.Execute ("insert into temp_prpo values ('" & Divcode & "','" & PrPoNo & "','" & prdate & "','" & OptName & "','" & LocalIP & "','" & iOrderby & "')")
                            End If
                        Else
                            MsgBox " Maximum Allowed Footer option is four only ", vbInformation
                            Exit Function
                      ' End If
                         
                        
                       End If
                        Exit For
                    End If
                End If
            Next j '* Row Loop
        Next I  '* Order Loop
        ' If UCase(CustID) = "CHERAN" Then
'        If prcount < 2 Then
'             MsgBox " Footer option is less than two ", vbInformation
'             DB.Execute ("delete from temp_prpo where divcode='" & Divcode & "' and ipaddress='" & LocalIP & "'")
'              Exit Function
'        End If
'        'End If
        
        If Len(Str) > 0 Then
            Str = Mid(Str, 1, Len(Str) - 1)
        End If
        
    End With
    
SelectedString = Str

Exit Function

SelectedString_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SelectedString of User Control UserFooter", vbInformation, head
End Function
Public Property Get SelectedStr() As String
On Error GoTo SelectedStr_Error

    SelectedStr = SelectedString

Exit Property
SelectedStr_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SelectedStr of User Control UserFooter", vbInformation, head
End Property
Private Function IsTextExists(ColNo As Long, SearchString As String, StartRow As Long, Optional OmitRow As Long = 0) As Boolean
Dim I As Integer
On Error GoTo IsAlreadyExistsInCol_Error

IsTextExists = False

With SpdFooter
    For I = StartRow To .MaxRows
        .Row = I
        If .Row <> OmitRow Then
            .Col = ColNo
            If SearchString = .Text Then
                IsTextExists = True
                Exit Function
            End If
        End If
    Next I
End With

Exit Function
IsAlreadyExistsInCol_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IsAlreadyExistsInCol of Class Module ClsSpdGen", vbInformation, head
End Function

Public Function ClearFooter()

On Error GoTo ClearFooter_Error

With SpdFooter

    .Row = -1
    .Col = 1
    .value = 0
    
End With
    

Exit Function
ClearFooter_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ClearFooter of User Control UserFooter", vbInformation, head
    Screen.MousePointer = 0

End Function
