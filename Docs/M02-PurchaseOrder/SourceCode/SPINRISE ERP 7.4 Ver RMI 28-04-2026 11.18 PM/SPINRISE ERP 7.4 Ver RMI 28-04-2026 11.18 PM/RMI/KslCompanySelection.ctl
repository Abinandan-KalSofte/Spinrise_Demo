VERSION 5.00
Begin VB.UserControl KslCompanySelection 
   ClientHeight    =   1140
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4605
   LockControls    =   -1  'True
   ScaleHeight     =   1140
   ScaleWidth      =   4605
   Begin VB.ComboBox Cmb_Unit 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   1170
      TabIndex        =   4
      ToolTipText     =   "Unit"
      Top             =   765
      Width           =   2445
   End
   Begin VB.ComboBox Cmb_Div 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   1170
      TabIndex        =   2
      ToolTipText     =   "Division"
      Top             =   405
      Width           =   3300
   End
   Begin VB.ComboBox CmbCompany 
      Appearance      =   0  'Flat
      Height          =   315
      Left            =   1170
      TabIndex        =   0
      ToolTipText     =   "Company"
      Top             =   45
      Width           =   3300
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Unit Code"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   90
      TabIndex        =   5
      Top             =   765
      Width           =   885
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Division"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   90
      TabIndex        =   3
      Top             =   405
      Width           =   720
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Company"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   90
      TabIndex        =   1
      Top             =   90
      Width           =   870
   End
End
Attribute VB_Name = "KslCompanySelection"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'=========================================
'CREATED BY N.SOUNDARA RAJAN ON 03.10.2007
'=========================================
Const REG_NODE = "Kalsoft"

'Default Property Values:
Const m_def_SelDivCode = "0"
Const m_def_SelUnitCode = "0"
Const m_def_ConnStr = ""
Const m_def_SelCompany = ""
Const m_def_SelDivision = 0
Const m_def_SelUnit = 0
Const m_def_SelDB = 0
Const m_def_SelConnectStr = 0

'Property Variables:
Dim m_SelDivCode As String
Dim m_SelUnitCode As String
Dim m_ConnStr As String
Dim m_SelCompany As String
Dim m_SelDivision As Variant
Dim m_SelUnit As Variant
Dim m_SelDB As Variant
Dim m_SelConnectStr As Variant
Dim m_Font As Font

Public Enum ChangedCtrl
    CompanyChange = 1
    DivisionChange
    UnitChange
End Enum

Dim i As Integer
Dim DEF_COMP_POS As Integer

Dim DBUser As ADODB.Connection
Dim DBSel As ADODB.Connection

'Event Declarations:
Event Change(ChangedControl As ChangedCtrl)

Private Sub Cmb_Div_Click()
On Error GoTo Cmb_Div_Click_Error

    SelDivision = Mid(Cmb_Div.list(Cmb_Div.ListIndex), 5, Len(Cmb_Div.list(Cmb_Div.ListIndex)))
    SelDivCode = Mid(Cmb_Div.list(Cmb_Div.ListIndex), 1, 2)
    
    Cmb_Div.ToolTipText = SelDivision
    Call LoadUnit
    
    RaiseEvent Change(DivisionChange)

Exit Sub
Cmb_Div_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Cmb_Div_Click of User Control UserControl1"
End Sub

Private Sub Cmb_Unit_Click()
On Error GoTo Cmb_Unit_Click_Error

    SelUnit = Mid(Cmb_Unit.list(Cmb_Unit.ListIndex), 5, Len(Cmb_Unit.list(Cmb_Unit.ListIndex)))
    SelUnitCode = Mid(Cmb_Unit.list(Cmb_Unit.ListIndex), 1, 2)
    
    Cmb_Unit.ToolTipText = SelUnit
    RaiseEvent Change(UnitChange)

Exit Sub
Cmb_Unit_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure Cmb_Unit_Click of User Control UserControl1"
End Sub

Private Sub CmbCompany_Click()
On Error GoTo CmbCompany_Click_Error

    SelDB = VBA.GetSetting(REG_NODE, CmbCompany.list(CmbCompany.ListIndex), "DBName")
    SelConnectStr = Mid(ConnStr, 1, InStrRev(ConnStr, "=")) & SelDB & ";"
    SelCompany = CmbCompany.list(CmbCompany.ListIndex)

    Set DBSel = New ADODB.Connection
    DBSel.ConnectionString = SelConnectStr
    DBSel.Open
    
    If DBSel.State = 1 Then
        Call LoadDiv
        Call LoadUnit
    Else
        Cmb_Div.clear
        Cmb_Unit.clear
        Exit Sub
    End If
    
    CmbCompany.ToolTipText = CmbCompany.Text
    RaiseEvent Change(CompanyChange)

Exit Sub
CmbCompany_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure CmbCompany_Click of User Control UserControl1"
End Sub

Private Sub UserControl_Initialize()
On Error GoTo UserControl_Initialize_Error

'    Call LoadCmp

Exit Sub
UserControl_Initialize_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure UserControl_Initialize of User Control UserControl1"
End Sub
Private Sub LoadCmp()
Dim RsCmp As ADODB.Recordset
On Error GoTo LoadCmp_Error

Set DBUser = New ADODB.Connection

If m_ConnStr <> "" Then
    DBUser.ConnectionString = m_ConnStr
    DBUser.Open
Else
    Exit Sub
End If

If DBUser.State <= 0 Then
    MsgBox "Invalid Connection String...", vbInformation, head
    Exit Sub
End If

Set RsCmp = New ADODB.Recordset
RsCmp.Open "Select Distinct CompName from CompMas", DBUser, adOpenStatic, adLockReadOnly

CmbCompany.clear
i = 0: DEF_COMP_POS = 0
If Not RsCmp.EOF Then
    While Not RsCmp.EOF
        
        
        If VBA.GetSetting(REG_NODE, RsCmp!CompName, "DBName") <> "" Then
            CmbCompany.AddItem RsCmp!CompName
            
            If VBA.GetSetting(REG_NODE, RsCmp!CompName, "DBName") = DBUser.DefaultDatabase Then
                DEF_COMP_POS = i
            End If
            
            i = i + 1
            
        End If
        
        RsCmp.MoveNext
    Wend
Else
    Exit Sub
End If


If CmbCompany.ListCount > 0 Then
    CmbCompany.ListIndex = DEF_COMP_POS
Else
    MsgBox "Report DB Setup Not Done.", vbCritical, head
    Exit Sub
End If

Exit Sub

LoadCmp_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure LoadCmp of User Control UserControl1"
End Sub

Private Sub LoadDiv()
Dim SqlStr As String
Dim RsDiv As New ADODB.Recordset
Dim DefDivIndex As Integer
On Error GoTo LoadDiv_Error

    Set RsDiv = New ADODB.Recordset
    RsDiv.Open " Select Name from SysObjects where Name = 'pp_DivMas' And XType = 'U' And Parent_Obj = 0 ", DBSel, adOpenStatic, adLockReadOnly
    
    If RsDiv.EOF Then
        Cmb_Div.clear
        Exit Sub
    End If

    SqlStr = "Select Distinct DivCode, DivName From PP_DivMas Order By DivCode"
    
    Set RsDiv = New ADODB.Recordset
    RsDiv.Open SqlStr, DBSel, adOpenStatic, adLockReadOnly
    
    Cmb_Div.clear: i = 0: DefDivIndex = 0
    If Not RsDiv.EOF Then
        While Not RsDiv.EOF
            
            Cmb_Div.AddItem RsDiv!Divcode & " - " & RsDiv!DIVNAME
            
            If (DBSel.DefaultDatabase = DBUser.DefaultDatabase) And (RsDiv!Divcode = Divcode) Then
                DefDivIndex = i
            End If
            
            i = i + 1
            RsDiv.MoveNext
        Wend
    Else
        MsgBox "No Divisions found against this company.", vbInformation, head
        Exit Sub
    End If
    
    Cmb_Div.ListIndex = DefDivIndex
    
    SelDivision = Mid(Cmb_Div.list(Cmb_Div.ListIndex), 5, Len(Cmb_Div.list(Cmb_Div.ListIndex)))
    SelDivCode = Mid(Cmb_Div.list(Cmb_Div.ListIndex), 1, 2)
    
    Cmb_Div.ToolTipText = SelDivision

Exit Sub
LoadDiv_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure LoadDiv of User Control UserControl1"
End Sub

Private Sub LoadUnit()
Dim str As String
Dim RsUnit As ADODB.Recordset
Dim DefUnitIndex As Integer
On Error GoTo LoadUnit_Error

Set RsUnit = New ADODB.Recordset
RsUnit.Open "Select Name from SysObjects where Name = 'PP_UnitMas' And XType = 'U' And Parent_Obj = 0 ", DBSel, adOpenStatic, adLockReadOnly

If RsUnit.EOF Then
    Cmb_Unit.clear
    Exit Sub
End If

str = ""

str = "Select Distinct U.UnitName, U.UnitCode "
str = str & " From PP_UnitMas U  "
str = str & " Where U.DivCode = '" & SelDivCode & "'"

Set RsUnit = New ADODB.Recordset
RsUnit.Open str, DBSel, adOpenStatic, adLockReadOnly

Cmb_Unit.clear: i = 0: DefUnitIndex = 0
If Not RsUnit.EOF Then
    While Not RsUnit.EOF
        
        Cmb_Unit.AddItem RsUnit!unitcode & " - " & RsUnit!UnitName
        
        If (DBSel.DefaultDatabase = DBUser.DefaultDatabase) And (SelDivCode = Divcode) And (RsUnit!unitcode = unitcode) Then
            DefUnitIndex = i
        End If
        
        RsUnit.MoveNext
        i = i + 1
    Wend
Else
    MsgBox "No Units found against this Division.", vbCritical, head
    Exit Sub
End If

Cmb_Unit.ListIndex = DefUnitIndex
SelUnit = Mid(Cmb_Unit.list(Cmb_Unit.ListIndex), 5, Len(Cmb_Unit.list(Cmb_Unit.ListIndex)))
SelUnitCode = Mid(Cmb_Unit.list(Cmb_Unit.ListIndex), 1, 2)
Cmb_Unit.ToolTipText = SelUnit


Exit Sub
LoadUnit_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure LoadUnit of User Control UserControl1"
End Sub
'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,BackColor
Public Property Get BackColor() As OLE_COLOR
Attribute BackColor.VB_Description = "Returns/sets the background color used to display text and graphics in an object."
    BackColor = UserControl.BackColor
End Property

Public Property Let BackColor(ByVal New_BackColor As OLE_COLOR)
    UserControl.BackColor() = New_BackColor
    PropertyChanged "BackColor"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,Enabled
Public Property Get Enabled() As Boolean
Attribute Enabled.VB_Description = "Returns/sets a value that determines whether an object can respond to user-generated events."
    Enabled = UserControl.Enabled
End Property

Public Property Let Enabled(ByVal New_Enabled As Boolean)
    UserControl.Enabled() = New_Enabled
    PropertyChanged "Enabled"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=6,0,0,0
Public Property Get Font() As Font
Attribute Font.VB_Description = "Returns a Font object."
Attribute Font.VB_UserMemId = -512
    Set Font = m_Font
End Property

Public Property Set Font(ByVal New_Font As Font)
    Set m_Font = New_Font
    PropertyChanged "Font"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,BackStyle
Public Property Get BackStyle() As Integer
Attribute BackStyle.VB_Description = "Indicates whether a Label or the background of a Shape is transparent or opaque."
    BackStyle = UserControl.BackStyle
End Property

Public Property Let BackStyle(ByVal New_BackStyle As Integer)
    UserControl.BackStyle() = New_BackStyle
    PropertyChanged "BackStyle"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,BorderStyle
Public Property Get BorderStyle() As Integer
Attribute BorderStyle.VB_Description = "Returns/sets the border style for an object."
    BorderStyle = UserControl.BorderStyle
End Property

Public Property Let BorderStyle(ByVal New_BorderStyle As Integer)
    UserControl.BorderStyle() = New_BorderStyle
    PropertyChanged "BorderStyle"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MappingInfo=UserControl,UserControl,-1,ActiveControl
Public Property Get ActiveControl() As Object
Attribute ActiveControl.VB_Description = "Returns the control that has focus."
    Set ActiveControl = UserControl.ActiveControl
End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=13,2,0,
'Public Property Get ConnStr() As String
'    If Ambient.UserMode Then Err.Raise 393
'    ConnStr = m_ConnStr
'End Property
'
'Public Property Let ConnStr(ByVal New_ConnStr As String)
'    m_ConnStr = New_ConnStr
'    PropertyChanged "ConnStr"
'
'    Call LoadCmp
'
'End Property
''
'''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'''MemberInfo=13,1,1,
''Public Property Get SelCompany() As String
''    SelCompany = m_SelCompany
''End Property
''
''Public Property Let SelCompany(ByVal New_SelCompany As String)
''    If Ambient.UserMode = False Then Err.Raise 387
''    If Ambient.UserMode Then Err.Raise 382
''    m_SelCompany = New_SelCompany
''    PropertyChanged "SelCompany"
''End Property
''
'''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'''MemberInfo=14,1,1,0
''Public Property Get SelDivision() As Variant
''    SelDivision = m_SelDivision
''End Property
''
''Public Property Let SelDivision(ByVal New_SelDivision As Variant)
''    If Ambient.UserMode = False Then Err.Raise 387
''    If Ambient.UserMode Then Err.Raise 382
''    m_SelDivision = New_SelDivision
''    PropertyChanged "SelDivision"
''End Property
''
'''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'''MemberInfo=14,1,1,0
''Public Property Get SelUnit() As Variant
''    SelUnit = m_SelUnit
''End Property
''
''Public Property Let SelUnit(ByVal New_SelUnit As Variant)
''    If Ambient.UserMode = False Then Err.Raise 387
''    If Ambient.UserMode Then Err.Raise 382
''    m_SelUnit = New_SelUnit
''    PropertyChanged "SelUnit"
''End Property
''
'''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'''MemberInfo=14,1,1,0
''Public Property Get SelDB() As Variant
''    SelDB = m_SelDB
''End Property
''
''Public Property Let SelDB(ByVal New_SelDB As Variant)
''    If Ambient.UserMode = False Then Err.Raise 387
''    If Ambient.UserMode Then Err.Raise 382
''    m_SelDB = New_SelDB
''    PropertyChanged "SelDB"
''End Property
''
'''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'''MemberInfo=14,1,1,0
''Public Property Get SelConnectStr() As Variant
''    SelConnectStr = m_SelConnectStr
''End Property
''
''Public Property Let SelConnectStr(ByVal New_SelConnectStr As Variant)
''    If Ambient.UserMode = False Then Err.Raise 387
''    If Ambient.UserMode Then Err.Raise 382
''    m_SelConnectStr = New_SelConnectStr
''    PropertyChanged "SelConnectStr"
''End Property

'Initialize Properties for User Control
Private Sub UserControl_InitProperties()
    Set m_Font = Ambient.Font
'    m_ConnStr = m_def_ConnStr
'    m_SelCompany = m_def_SelCompany
'    m_SelDivision = m_def_SelDivision
'    m_SelUnit = m_def_SelUnit
'    m_SelDB = m_def_SelDB
'    m_SelConnectStr = m_def_SelConnectStr
'    m_SelCompany = m_def_SelCompany
'    m_SelDivision = m_def_SelDivision
'    m_SelUnit = m_def_SelUnit
'    m_SelDB = m_def_SelDB
'    m_SelConnectStr = m_def_SelConnectStr
    m_SelCompany = m_def_SelCompany
    m_SelDivision = m_def_SelDivision
    m_SelUnit = m_def_SelUnit
    m_SelDB = m_def_SelDB
    m_SelConnectStr = m_def_SelConnectStr
    m_ConnStr = m_def_ConnStr
    m_SelDivCode = m_def_SelDivCode
    m_SelUnitCode = m_def_SelUnitCode
'    m_SelCompCode = m_def_SelCompCode
End Sub

'Load property values from storage
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)

    UserControl.BackColor = PropBag.ReadProperty("BackColor", &H8000000F)
    UserControl.Enabled = PropBag.ReadProperty("Enabled", True)
    Set m_Font = PropBag.ReadProperty("Font", Ambient.Font)
    UserControl.BackStyle = PropBag.ReadProperty("BackStyle", 1)
    UserControl.BorderStyle = PropBag.ReadProperty("BorderStyle", 0)
'    m_ConnStr = PropBag.ReadProperty("ConnStr", m_def_ConnStr)
'    m_SelCompany = PropBag.ReadProperty("SelCompany", m_def_SelCompany)
'    m_SelDivision = PropBag.ReadProperty("SelDivision", m_def_SelDivision)
'    m_SelUnit = PropBag.ReadProperty("SelUnit", m_def_SelUnit)
'    m_SelDB = PropBag.ReadProperty("SelDB", m_def_SelDB)
'    m_SelConnectStr = PropBag.ReadProperty("SelConnectStr", m_def_SelConnectStr)
'    m_SelCompany = PropBag.ReadProperty("SelCompany", m_def_SelCompany)
'    m_SelDivision = PropBag.ReadProperty("SelDivision", m_def_SelDivision)
'    m_SelUnit = PropBag.ReadProperty("SelUnit", m_def_SelUnit)
'    m_SelDB = PropBag.ReadProperty("SelDB", m_def_SelDB)
'    m_SelConnectStr = PropBag.ReadProperty("SelConnectStr", m_def_SelConnectStr)
    m_SelCompany = PropBag.ReadProperty("SelCompany", m_def_SelCompany)
    m_SelDivision = PropBag.ReadProperty("SelDivision", m_def_SelDivision)
    m_SelUnit = PropBag.ReadProperty("SelUnit", m_def_SelUnit)
    m_SelDB = PropBag.ReadProperty("SelDB", m_def_SelDB)
    m_SelConnectStr = PropBag.ReadProperty("SelConnectStr", m_def_SelConnectStr)
    m_ConnStr = PropBag.ReadProperty("ConnStr", m_def_ConnStr)
    m_SelDivCode = PropBag.ReadProperty("SelDivCode", m_def_SelDivCode)
    m_SelUnitCode = PropBag.ReadProperty("SelUnitCode", m_def_SelUnitCode)
'    m_SelCompCode = PropBag.ReadProperty("SelCompCode", m_def_SelCompCode)
End Sub

Private Sub UserControl_Resize()

    CmbCompany.Width = UserControl.Width - (CmbCompany.Left + 50)
    Cmb_Div.Width = UserControl.Width - (Cmb_Div.Left + 50)

End Sub

'Write property values to storage
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)

    Call PropBag.WriteProperty("BackColor", UserControl.BackColor, &H8000000F)
    Call PropBag.WriteProperty("Enabled", UserControl.Enabled, True)
    Call PropBag.WriteProperty("Font", m_Font, Ambient.Font)
    Call PropBag.WriteProperty("BackStyle", UserControl.BackStyle, 1)
    Call PropBag.WriteProperty("BorderStyle", UserControl.BorderStyle, 0)
'    Call PropBag.WriteProperty("ConnStr", m_ConnStr, m_def_ConnStr)
'    Call PropBag.WriteProperty("SelCompany", m_SelCompany, m_def_SelCompany)
'    Call PropBag.WriteProperty("SelDivision", m_SelDivision, m_def_SelDivision)
'    Call PropBag.WriteProperty("SelUnit", m_SelUnit, m_def_SelUnit)
'    Call PropBag.WriteProperty("SelDB", m_SelDB, m_def_SelDB)
'    Call PropBag.WriteProperty("SelConnectStr", m_SelConnectStr, m_def_SelConnectStr)
'    Call PropBag.WriteProperty("SelCompany", m_SelCompany, m_def_SelCompany)
'    Call PropBag.WriteProperty("SelDivision", m_SelDivision, m_def_SelDivision)
'    Call PropBag.WriteProperty("SelUnit", m_SelUnit, m_def_SelUnit)
'    Call PropBag.WriteProperty("SelDB", m_SelDB, m_def_SelDB)
'    Call PropBag.WriteProperty("SelConnectStr", m_SelConnectStr, m_def_SelConnectStr)
    Call PropBag.WriteProperty("SelCompany", m_SelCompany, m_def_SelCompany)
    Call PropBag.WriteProperty("SelDivision", m_SelDivision, m_def_SelDivision)
    Call PropBag.WriteProperty("SelUnit", m_SelUnit, m_def_SelUnit)
    Call PropBag.WriteProperty("SelDB", m_SelDB, m_def_SelDB)
    Call PropBag.WriteProperty("SelConnectStr", m_SelConnectStr, m_def_SelConnectStr)
    Call PropBag.WriteProperty("ConnStr", m_ConnStr, m_def_ConnStr)
    Call PropBag.WriteProperty("SelDivCode", m_SelDivCode, m_def_SelDivCode)
    Call PropBag.WriteProperty("SelUnitCode", m_SelUnitCode, m_def_SelUnitCode)
'    Call PropBag.WriteProperty("SelCompCode", m_SelCompCode, m_def_SelCompCode)
End Sub
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=13,1,0,
'Public Property Get SelCompany() As String
'    SelCompany = m_SelCompany
'End Property
'
'Public Property Let SelCompany(ByVal New_SelCompany As String)
'    If Ambient.UserMode Then Err.Raise 382
'    m_SelCompany = New_SelCompany
'    PropertyChanged "SelCompany"
'End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=14,1,0,0
'Public Property Get SelDivision() As Variant
'    SelDivision = m_SelDivision
'End Property
'
'Public Property Let SelDivision(ByVal New_SelDivision As Variant)
'    If Ambient.UserMode Then Err.Raise 382
'    m_SelDivision = New_SelDivision
'    PropertyChanged "SelDivision"
'End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=14,1,0,0
'Public Property Get SelUnit() As Variant
'    SelUnit = m_SelUnit
'End Property
'
'Public Property Let SelUnit(ByVal New_SelUnit As Variant)
'    If Ambient.UserMode Then Err.Raise 382
'    m_SelUnit = New_SelUnit
'    PropertyChanged "SelUnit"
'End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=14,1,0,0
'Public Property Get SelDB() As Variant
'    SelDB = m_SelDB
'End Property
'
'Public Property Let SelDB(ByVal New_SelDB As Variant)
'    If Ambient.UserMode Then Err.Raise 382
'    m_SelDB = New_SelDB
'    PropertyChanged "SelDB"
'End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=14,1,0,0
'Public Property Get SelConnectStr() As Variant
'    SelConnectStr = m_SelConnectStr
'End Property
'
'Public Property Let SelConnectStr(ByVal New_SelConnectStr As Variant)
'    If Ambient.UserMode Then Err.Raise 382
'    m_SelConnectStr = New_SelConnectStr
'    PropertyChanged "SelConnectStr"
'End Property
'
'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=13,0,0,
Public Property Get SelCompany() As String
    SelCompany = m_SelCompany
End Property

Public Property Let SelCompany(ByVal New_SelCompany As String)
    m_SelCompany = New_SelCompany
    PropertyChanged "SelCompany"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=14,0,0,0
Public Property Get SelDivision() As Variant
    SelDivision = m_SelDivision
End Property

Public Property Let SelDivision(ByVal New_SelDivision As Variant)
    m_SelDivision = New_SelDivision
    PropertyChanged "SelDivision"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=14,0,0,0
Public Property Get SelUnit() As Variant
    SelUnit = m_SelUnit
End Property

Public Property Let SelUnit(ByVal New_SelUnit As Variant)
    m_SelUnit = New_SelUnit
    PropertyChanged "SelUnit"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=14,0,0,0
Public Property Get SelDB() As Variant
    SelDB = m_SelDB
End Property

Public Property Let SelDB(ByVal New_SelDB As Variant)
    m_SelDB = New_SelDB
    PropertyChanged "SelDB"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=14,0,0,0
Public Property Get SelConnectStr() As Variant
    SelConnectStr = m_SelConnectStr
End Property

Public Property Let SelConnectStr(ByVal New_SelConnectStr As Variant)
    m_SelConnectStr = New_SelConnectStr
    PropertyChanged "SelConnectStr"
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=13,0,0,
Public Property Get ConnStr() As String
    ConnStr = m_ConnStr
End Property

Public Property Let ConnStr(ByVal New_ConnStr As String)
    m_ConnStr = New_ConnStr
    PropertyChanged "ConnStr"
    ''Call UserControl_Initialize
    Call LoadCmp
End Property


'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=13,0,0,0
Public Property Get SelDivCode() As String
On Error GoTo SelDivCode_Error

    SelDivCode = m_SelDivCode

Exit Property
SelDivCode_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure SelDivCode of User Control KslCompanySelection", vbInformation, head
Screen.MousePointer = 0
End Property

Public Property Let SelDivCode(ByVal New_SelDivCode As String)
On Error GoTo SelDivCode_Error

    m_SelDivCode = New_SelDivCode
    PropertyChanged "SelDivCode"

Exit Property
SelDivCode_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure SelDivCode of User Control KslCompanySelection", vbInformation, head
Screen.MousePointer = 0
End Property

'WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
'MemberInfo=13,0,0,0
Public Property Get SelUnitCode() As String
On Error GoTo SelUnitCode_Error

    SelUnitCode = m_SelUnitCode

Exit Property
SelUnitCode_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure SelUnitCode of User Control KslCompanySelection", vbInformation, head
Screen.MousePointer = 0
End Property

Public Property Let SelUnitCode(ByVal New_SelUnitCode As String)
On Error GoTo SelUnitCode_Error

    m_SelUnitCode = New_SelUnitCode
    PropertyChanged "SelUnitCode"

Exit Property
SelUnitCode_Error:
    MsgBox "Error " & err.Number & " (" & err.description & ") in procedure SelUnitCode of User Control KslCompanySelection", vbInformation, head
Screen.MousePointer = 0
End Property
'
''WARNING! DO NOT REMOVE OR MODIFY THE FOLLOWING COMMENTED LINES!
''MemberInfo=13,0,0,0
'Public Property Get SelCompCode() As String
'    SelCompCode = m_SelCompCode
'End Property
'
'Public Property Let SelCompCode(ByVal New_SelCompCode As String)
'    m_SelCompCode = New_SelCompCode
'    PropertyChanged "SelCompCode"
'End Property
'
