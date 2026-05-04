VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{7C3C09A6-5C19-11D5-879E-00C0A8562C82}#1.0#0"; "KSLLIST.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form FrmVariety 
   Caption         =   "Variety"
   ClientHeight    =   8085
   ClientLeft      =   300
   ClientTop       =   2850
   ClientWidth     =   10920
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8085
   ScaleWidth      =   10920
   WindowState     =   2  'Maximized
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   13
      Left            =   5760
      Picture         =   "RMIVariety.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   24
      ToolTipText     =   "New Order Crystal Report Print (Ctrl Y)"
      Top             =   0
      Width           =   510
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   225
      Top             =   6435
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -15
      TabIndex        =   16
      Top             =   -120
      Width           =   11730
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":0442
         Height          =   510
         Index           =   4
         Left            =   2160
         Picture         =   "RMIVariety.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   23
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":0AE1
         Height          =   510
         Index           =   8
         Left            =   4200
         Picture         =   "RMIVariety.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "RMIVariety.frx":128D
         Height          =   510
         Index           =   10
         Left            =   5250
         Picture         =   "RMIVariety.frx":1597
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":1913
         Height          =   510
         Index           =   9
         Left            =   4725
         Picture         =   "RMIVariety.frx":1C1D
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":1FBF
         Height          =   510
         Index           =   11
         Left            =   6280
         Picture         =   "RMIVariety.frx":2409
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":279E
         Height          =   510
         Index           =   7
         Left            =   3675
         Picture         =   "RMIVariety.frx":2BE8
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "RMIVariety.frx":2F38
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":32CF
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "RMIVariety.frx":35D9
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":3953
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
         Left            =   1095
         Picture         =   "RMIVariety.frx":3C5D
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":3FF9
         Height          =   510
         Index           =   5
         Left            =   2625
         Picture         =   "RMIVariety.frx":4443
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":47A8
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "RMIVariety.frx":4AB2
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "RMIVariety.frx":4E45
         Height          =   510
         Index           =   6
         Left            =   3150
         Picture         =   "RMIVariety.frx":528F
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7155
         TabIndex        =   18
         Top             =   255
         Width           =   615
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8685
         TabIndex        =   17
         Top             =   255
         Width           =   630
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   15
      Top             =   7785
      Width           =   10920
      _ExtentX        =   19262
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   12806
            MinWidth        =   12806
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Alignment       =   2
            TextSave        =   "22/09/2025"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   2
            TextSave        =   "01:29 PM"
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
      Height          =   6270
      Left            =   375
      TabIndex        =   11
      Top             =   1290
      Width           =   16095
      _ExtentX        =   28390
      _ExtentY        =   11060
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "      "
      TabPicture(0)   =   "RMIVariety.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grddatagrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grddatagrid 
         Height          =   5985
         Left            =   135
         TabIndex        =   12
         Top             =   135
         Width           =   15780
         _ExtentX        =   27834
         _ExtentY        =   10557
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         ForeColor       =   0
         HeadLines       =   1
         RowHeight       =   15
         TabAction       =   2
         AllowAddNew     =   -1  'True
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
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   330
      TabIndex        =   14
      Top             =   1185
      Visible         =   0   'False
      Width           =   8145
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "RMIVariety.frx":55F8
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
         Left            =   3000
         Picture         =   "RMIVariety.frx":59DE
         Style           =   1  'Graphical
         TabIndex        =   22
         Top             =   4005
         Width           =   1185
      End
      Begin VB.CommandButton Command1 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "RMIVariety.frx":5DA4
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
         Left            =   4740
         Picture         =   "RMIVariety.frx":6186
         Style           =   1  'Graphical
         TabIndex        =   21
         Top             =   4005
         Width           =   1185
      End
      Begin KSLLISTOCX.KslList KslList1 
         Height          =   3255
         Left            =   840
         TabIndex        =   20
         Top             =   600
         Width           =   7200
         _ExtentX        =   12700
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         TabIndex        =   19
         Top             =   120
         Width           =   8730
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Variety"
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
      Height          =   405
      Left            =   405
      TabIndex        =   13
      Top             =   780
      Width           =   930
   End
End
Attribute VB_Name = "FrmVariety"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim Opt As String
Dim Rs As Recordset
Dim FLGREPET As Boolean
Dim st, st1, ST2 As String
Dim I As Integer
Dim DB As Connection
Dim Code As String
Dim a As Integer
Dim keys As Integer
Dim FLG As String
Dim Topt As String
Public Sub openconnection()
intervalMinutes = -1
On Error GoTo openconnection_Error
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" & connectstring
Exit Sub
openconnection_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure openconnection of Form Variety"
End Sub
Private Sub gridalign()
intervalMinutes = -1
    On Error Resume Next
    If sCatType = "S" Then
        grddatagrid.Columns(0).Width = 1000
        grddatagrid.Columns(1).Width = 2100
        grddatagrid.Columns(2).Width = 1000
     
        grddatagrid.Columns(3).Width = 2100
        grddatagrid.Columns(4).Width = 1200
        grddatagrid.Columns(5).Width = 1200
        grddatagrid.Columns(6).Width = 1200
        grddatagrid.Columns(7).Width = 1200
        grddatagrid.Columns(8).Width = 1000
        grddatagrid.Columns(9).Width = 1000
        grddatagrid.Columns(10).Width = 1000
        grddatagrid.Columns(11).Width = 1000
        'grdDataGrid.Columns(9).NumberFormat = "#0.00"
        grddatagrid.Columns("CGST %").NumberFormat = "00.00"
        grddatagrid.Columns("SGST %").NumberFormat = "00.00"
        grddatagrid.Columns("IGST %").NumberFormat = "00.00"
        grddatagrid.Columns("Is_Active").Width = 1500
        grddatagrid.Columns("IsOrganic").Width = 1500
        
              
        ''grddatagrid.Columns(5).Locked = True
       '' grddatagrid.Columns(7).Locked = True
    Else
        grddatagrid.Columns(0).Width = 1140.095
        grddatagrid.Columns(1).Width = 2954.835
        grddatagrid.Columns(2).Width = 854.9292
'        If Opt = "add" Then
'        grdDataGrid.Columns(2).Width = 1000
'        grdDataGrid.Columns(2).Locked = False
'        Else
'        grdDataGrid.Columns(2).Locked = True
'        End If
        grddatagrid.Columns(3).Width = 2534.929
        'grdDataGrid.Columns(9).NumberFormat = "#0.00"
        grddatagrid.Columns("CGST %").NumberFormat = "#.00"
        grddatagrid.Columns("SGST %").NumberFormat = "#.00"
        grddatagrid.Columns("IGST %").NumberFormat = "#.00"
        If UCase(CustID) = "LMW" Then
            grddatagrid.Columns(4).Width = 1140.095
            grddatagrid.Columns(5).Width = 1140.095
        End If
        grddatagrid.Columns("Is_Active").Width = 1500
        grddatagrid.Columns("IsOrganic").Width = 1500
    End If
End Sub

Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error

On Error GoTo ENABLCONTLS_Error

On Error GoTo ENABLCONTLS_Error

grddatagrid.Columns(0).Locked = False
grddatagrid.Columns(1).Locked = False
grddatagrid.Columns(2).Locked = False
grddatagrid.Columns(3).Locked = False
'grdDataGrid.Columns(4).Locked = False

Exit Sub

ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub disablcontls()
On Error GoTo disablcontls_Error

grddatagrid.Columns(0).Locked = True
grddatagrid.Columns(1).Locked = True
grddatagrid.Columns(2).Locked = True
grddatagrid.Columns(3).Locked = True
'grdDataGrid.Columns(4).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub bindcontls()

On Error GoTo bindcontls_Error

    Set grddatagrid.DataSource = adoPrimaryRS

Exit Sub
bindcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure bindcontls of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error

If Opt <> "add" Then
    'this will display the current record position
    StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
End If
intervalMinutes = -1
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
 
Select Case Index
Case 0
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            If UCase(CustID) = "PALLAVA" And Divcode = "01" Then
            Else
            MsgBox "You cannot Add or Modify or Delete !!! only in First Division", vbInformation, head
                Exit Sub
            End If
'                 If Divcode <> "01" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran Division One ", vbInformation, head
'                Exit Sub
'            End If
        
        End If
        'addition
        Opt = "add"
        desc.Caption = "Addition"
'        St = "B"
'        st1 = "B"
'        Set adoPrimaryRS = New Recordset
'        adoPrimaryRS.Open "select varcode,varname,catcd,imported from rm_var where 1=2 order by varcode", db, adOpenStatic, adLockBatchOptimistic
'        Call bindcontls
'        Call ENABLCONTLS
'        db.BeginTrans
'        adoPrimaryRS.AddNew
'        Call adddelmod(BUTTON)
'        BUTTON(9).Enabled = True
'        BUTTON(9).ToolTipText = "Add Record"
'        Txtfields(0).SetFocus
'
        If Record_Exists("RM_cat", "Please Define the Category") = False Then Exit Sub
        Set adoPrimaryRS = New Recordset
        '''adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Name"",a.catcd ""Category"",b.catname""Category Name"",a.imported ""Imported"" from rm_var a,rm_cat b where 1=2 order by varcode", db, adOpenStatic, adLockBatchOptimistic

        'adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Name"",a.catcd ""Category"",b.catname""Category Name"" from rm_var a,rm_cat b where 1=2 order by varcode", DB, adOpenStatic, adLockBatchOptimistic
        
        If sCatType = "S" Then
            adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Variety Name"",a.catcd ""Category"",b.catname""Category Name"",a.Oldvarcode as 'GroupName', VARTYPE 'Variety Type',varname 'Variety Desc.',ShadeNo,varname 'Shade Desc.',a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.taxcode ""TaxCode"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",Denier,Length ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic from rm_var a,rm_cat b,ig_hsncode c,RM_Accvar d,RM_varGroup f where 1=2 order by varcode", DB, adOpenStatic, adLockBatchOptimistic
        Else
            adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Name"",a.catcd ""Category"",b.catname""Category Name"",a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.TaxCode,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",a.Drawno,a.Oldvarcode,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name' ,a.Is_Active,a.IsOrganic  from rm_var a,rm_cat b,ig_hsncode c ,RM_Accvar d,RM_varGroup f where 1=2 order by varcode", DB, adOpenStatic, adLockBatchOptimistic
        End If

        Set grddatagrid.DataSource = adoPrimaryRS
        Call gridalign
        
'        grddatagrid.Columns(3).Width = 1934.929
'        grddatagrid.Columns(2).Width = 854.9292
'        grddatagrid.Columns(1).Width = 2954.835
'        grddatagrid.Columns(0).Width = 1140.095
        DB.BeginTrans
'        grddatagrid.Columns(0).Locked = False
'        grddatagrid.Columns(1).Locked = False
'        grddatagrid.Columns(2).Locked = False
'        grddatagrid.Columns(3).Locked = True
            

        adoPrimaryRS.AddNew
        grddatagrid.Columns("Is_Active").Text = "Y"
        'Calling adddelmod procedure
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = True
        'BUTTON(9).ToolTipText = "Add Record"
        StatusBar1.Panels(2).Text = "Addition"
        
        grddatagrid.Col = 0
        grddatagrid.SetFocus


Case 1, 2, 4
        If Index = 1 Or Index = 2 Then
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            If UCase(CustID) = "PALLAVA" And Divcode = "01" Then
            Else
            MsgBox "You cannot Add or Modify or Delete !!! only in First Division", vbInformation, head
                Exit Sub
            End If
            
'            If Divcode <> "01" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran Division One ", vbInformation, head
'                Exit Sub
'            End If
            
        
        End If
        End If

        'modification
    Set Rs = New Recordset
    Rs.Open "select count(*) from rm_var", DB
    If Not Rs(0) = 0 Then
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
        End If
        Screen.MousePointer = 11
        DB.BeginTrans
        LookUp.Clear = True
        
        
        
        If sCatType = "S" Then
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name"",Oldvarcode as 'Group Name' from rm_var where Cattype='" & sCatType & "'"
        Else
            LookUp.query = "select varcode""Variety Code"",varname""Variety Name"" from rm_var"
        End If
        LookUp.DefCol = "Variety Name"
        LookUp.ALIGN = "2000,5000"
        LookUp.Caption = "Variety Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            SSTab1.Visible = True
            StatusBar1.Panels(2).Text = ""
            Set adoPrimaryRS = New Recordset
            
 
'            adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Name"",a.catcd ""Category"",b.catname""Category Name"",a.Drawno,a.Oldvarcode,a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" from rm_var a,rm_cat b,ig_hsncode c where 1=2 order by varcode", db, adOpenStatic, adLockBatchOptimistic
'
'
            
            If sCatType = "S" Then
                adoPrimaryRS.Open "select a.varcode ""Varcode"" ,a.varname ""Variety Name"",a.catcd ""Category"",b.catname""Category Name"",a.Oldvarcode as 'GroupName', VARTYPE 'Variety Type',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' END 'Variety Desc.',ShadeNo,(SELECT MAX(SHADENAME) FROM IG_SHADEHD WHERE SHADECODE=SHADENO) 'Shade Desc.' ,a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.taxcode ""TaxCode"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",Denier,Length,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety' ,a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic   from rm_var a left join rm_cat b on  a.catcd=b.catcd left join ig_hsncode c on  a.hsn=c.code left join RM_Accvar d on d.AccVarcode =a.AccVarcode left join RM_varGroup f on f.gvarcode=a.gvarcode   where  varcode='" & LookUp.Fields(0) & "' Order by varcode", DB, adOpenStatic, adLockBatchOptimistic
            Else
                If UCase(CustID) = "LMW" Then
                    adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.TaxCode,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",a.Drawno,a.Oldvarcode ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic  from rm_var a left join rm_cat b on  a.catcd=b.catcd left join ig_hsncode c on  a.hsn=c.code left join RM_Accvar d on d.AccVarcode =a.AccVarcode left join RM_varGroup f on f.gvarcode=a.gvarcode where a.hsn= c.code and varcode='" & LookUp.Fields(0) & "'  Order by varcode", DB, adOpenStatic, adLockBatchOptimistic
                Else
                    adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.HSN ""HSN Code"",c.Description ""HSN Description"",a.TaxCode ,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"",a.Drawno,a.Oldvarcode,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic  from rm_var a left join rm_cat b on  a.catcd=b.catcd left join ig_hsncode c on  a.hsn=c.code left join RM_Accvar d on d.AccVarcode =a.AccVarcode left join RM_varGroup f on f.gvarcode=a.gvarcode where varcode='" & LookUp.Fields(0) & "'   Order by varcode", DB, adOpenStatic, adLockBatchOptimistic
                End If
            End If
    
            Call bindcontls
            grddatagrid.Columns(0).Locked = True
            grddatagrid.Columns(1).Locked = False
            grddatagrid.Columns(2).Locked = False
            grddatagrid.Columns(3).Locked = False
'            If Opt = "add" Then
'                grdDataGrid.Columns(2).Width = 1000
'                grdDataGrid.Columns(2).Locked = False
'            Else
'                 grdDataGrid.Columns(2).Locked = True
'            End If
            
            Set Rs = New Recordset
            Rs.Open "select distinct varcode from rm_cont where varcode ='" & adoPrimaryRS("Category") & "'", DB, adOpenStatic
            If Not Rs.EOF Then
             grddatagrid.Columns(2).Locked = True
            End If
            grddatagrid.Columns(3).Width = 1934.929
            grddatagrid.Columns(2).Width = 854.9292
            grddatagrid.Columns(1).Width = 2954.835
            grddatagrid.Columns(0).Width = 1140.095
            If UCase(CustID) = "LMW" Then
                grddatagrid.Columns(4).Width = 1140.095
                grddatagrid.Columns(5).Width = 1140.095
            End If
            If sCatType = "S" Then
                gridalign
            End If
            Call adddelmod(BUTTON)
            grddatagrid.Columns(0).Locked = True
            grddatagrid.AllowAddNew = False
            BUTTON(9).Enabled = True 'Save
            BUTTON(10).Enabled = True
            If Opt = "del" Then
                Call disablcontls
                BUTTON(9).SetFocus
            End If
            If Opt = "fnd" Then
                BUTTON(9).Enabled = False
            End If
            grddatagrid.Col = 1
            grddatagrid.SetFocus
            Frame3.Visible = False
        Else
            DB.CommitTrans
            'Call BUTTON_Click(10)
        End If
''        SSTab1.Visible = False
''        Frame3.Visible = True
''        Label15.Caption = "Variety List"
''        KSLLIST1.conn = connectstring
''        KSLLIST1.table = "rm_var"
''        KSLLIST1.listfield1 = "varcode"
''        KSLLIST1.listfield2 = "varname"
''        Frame3.Visible = True
''        Command3.Default = True
''        Frame3.ZOrder
''        KSLLIST1.SetFocus
''       Call adddelmod(BUTTON)
''        grddatagrid.Columns(0).Locked = True
''         grddatagrid.AllowAddNew = False
''        BUTTON(9).Enabled = False 'Save
''        BUTTON(10).Enabled = False
''        BUTTON(9).ToolTipText = "Modify"
''        StatusBar1.Panels(2).Text = "Select Variety Code from the list for modification"
''        grddatagrid.Columns(0).Locked = True
        'DB.CommitTrans
        Screen.MousePointer = 0
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
        
Case 2
        'Deletion
        Set Rs = New Recordset
        Rs.Open "select count(*) from rm_var", DB
    If Not Rs(0) = 0 Then
        Screen.MousePointer = 11
        Opt = "del"
        desc.Caption = "Deletion"
        Label15.Caption = "Variety List"
        KSLLIST1.conn = connectstring
        KSLLIST1.Table = "rm_var"
        KSLLIST1.listfield1 = "varcode"
        KSLLIST1.listfield2 = "varname"
        ' grddatagrid.AllowUpdate = False
        Frame3.Visible = True
        Command3.Default = True
        Frame3.ZOrder
        KSLLIST1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        BUTTON(9).Enabled = False 'Save
        BUTTON(10).Enabled = False
        BUTTON(9).ToolTipText = "Delete"
        StatusBar1.Panels(2).Text = "Select Variety Code from the list for deletion"
        Screen.MousePointer = 0
        Frame3.Visible = True
    Else
        MsgBox "No Records Found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
Case 3

        'List
'        desc.Caption = "Listing"
'        Set dv1 = New DataEnvironment1
'        dv1.Connection1.ConnectionString = connectstring
'        Set Cn = New Connection
'        Cn.CursorLocation = adUseClient
'    If Cn.State = 1 Then
'        Cn.Close
'    End If
'        Cn.ConnectionString = "provider=msdatashape;" & connectstring
'    If Cn.State = adStateclose Then
'        Cn.Open
'    End If
'        Call repproc2(rptvariety)
'        dv1.Connection1.ConnectionString = connectstring
'    If dv1.rsCommand1.State = adStateOpen Then
'        dv1.rsCommand1.Close
'    End If
'        dv1.rsCommand1.Open "select varcode,varname,catcd,'imported'=CASE WHEN imported='Y' THEN 'Yes' else 'No' end   from rm_var  order by catcd,varcode", Cn
'        'dv1.rsCommand1.Open "select varcode,varname,catcd from rm_var  order by varcode", cn
'    If dv1.rsCommand1.RecordCount <> 0 Then
'        Set rptvariety.DataSource = dv1
'        rptvariety.Show
'        desc.Caption = "Query"
'    Else
'        MsgBox "No Records Found", vbInformation, head
'        desc.Caption = "Query"
'        Exit Sub
'    End If
    Dim clsCryRptVariety As New clsCrystal
  Set clsCryRptVariety.cryRept = Cry_SetupVariety
  clsCryRptVariety.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

  
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
Case 5
'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         StatusBar1.Panels(2).Text = "First Record"
    'calling fir procedure from module
          Call navi(BUTTON)
          Call FIR(BUTTON)
          Beep
          Exit Sub
GoFirstError:
       MsgBox Err.Description, vbInformation, head
            
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
                Beep
                BUTTON(6).Enabled = False
                BUTTON(8).Enabled = False
                BUTTON(5).Enabled = True
                BUTTON(7).Enabled = True
                'Call NEX(BUTTON)
                'moved off the end so go back
                adoPrimaryRS.MoveLast
            End If
            'show the current record
            Call navi(BUTTON)
            Exit Sub
GoNextError:
   MsgBox Err.Description, vbInformation, head
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
            Beep
            'moved off the end so go back
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            'Call PREV(BUTTON)
           adoPrimaryRS.MoveFirst
        End If
        'show the current record
'        Call navi(BUTTON)
        Exit Sub

GoPrevError:
   MsgBox Err.Description, vbInformation, head
       
Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         StatusBar1.Panels(2).Text = "Last Record"
        'calling las procedure from module
         Call navi(BUTTON)
         Call las(BUTTON)
         BUTTON(10).Enabled = False
         Beep
         Exit Sub
GoLastError:
       MsgBox Err.Description, vbInformation, head
Case 9
'Save
       
        If Opt = "add" Or Opt = "mod" Then
                Topt = Opt
                adoPrimaryRS.MoveFirst
                Opt = ""
                Do While Not adoPrimaryRS.EOF
                    If Trim(grddatagrid.Columns(0).Text) = "" And Trim(grddatagrid.Columns(1).Text) = "" Then
                        adoPrimaryRS.Delete
                    End If
                    adoPrimaryRS.MoveNext
                Loop
                adoPrimaryRS.MoveFirst

                Do While Not adoPrimaryRS.EOF
                
                    Set Rsch = New Recordset
                    Rsch.Open "Select  Tax_CODE as Code,Description,ST_PER [Tax %] from ig_tax where isnull(taxstatus,'')='Y' and tax_code='" & grddatagrid.Columns("TaxCode").Text & "'", DB, adOpenStatic
                    If Rsch.EOF Then
                        MsgBox "The selected GST ID is not an active code. Please check and select an active GST ID", vbInformation
                        rsc.Close
                        Screen.MousePointer = 0
                        Exit Sub
                    End If
                
                    If adoPrimaryRS.RecordCount = 1 And grddatagrid.Columns(2).Text = "" And grddatagrid.Columns(0).Text = "" And grddatagrid.Columns(1).Text = "" Then
                        MsgBox "Cannot Save Empty records", vbInformation, head
                        grddatagrid.Col = 0
                        grddatagrid.SetFocus
                        Opt = Topt
                        Exit Sub
                    End If
                    If grddatagrid.Columns(1).Text = "" And grddatagrid.Columns(0).Text <> "" Then
                        MsgBox "Name Cannot be Empty", vbInformation, head
                        grddatagrid.Col = 1
                        grddatagrid.SetFocus
                        Opt = Topt
                        Exit Sub
                    End If
                    If grddatagrid.Columns("HSN Code").Text = "" And grddatagrid.Columns(0).Text <> "" Then
                        MsgBox "HSN Code Cannot be Empty", vbInformation, head
                        grddatagrid.Col = grddatagrid.Columns("HSN Code").ColIndex
                        grddatagrid.SetFocus
                        Opt = Topt
                        Exit Sub
                    End If
'                    If (grdDataGrid.Columns("CGST %").Text = "" Or val(grdDataGrid.Columns("CGST %").Text) = 0) And grdDataGrid.Columns(0).Text <> "" Then
'                        MsgBox "CGST % Cannot be Empty", vbInformation, head
'                        grdDataGrid.Col = grdDataGrid.Columns("CGST %").ColIndex
'                        grdDataGrid.SetFocus
'                        Opt = Topt
'                        Exit Sub
'                    End If
'                    If (grdDataGrid.Columns("SGST %").Text = "" Or val(grdDataGrid.Columns("SGST %").Text) = 0) And grdDataGrid.Columns(0).Text <> "" Then
'                        MsgBox "SGST % Cannot be Empty", vbInformation, head
'                        grdDataGrid.Col = grdDataGrid.Columns("SGST %").ColIndex
'                        grdDataGrid.SetFocus
'                        Opt = Topt
'                        Exit Sub
'                    End If
                     If Trim(grddatagrid.Columns("TaxCode").Text) = "" And grddatagrid.Columns(0).Text <> "" Then
                        MsgBox "Tax Code Cannot be Empty", vbInformation, head
                        grddatagrid.Col = grddatagrid.Columns("TaxCode").ColIndex
                        grddatagrid.SetFocus
                        Opt = Topt
                        Exit Sub
                    End If
                    
'                    If (grdDataGrid.Columns("IGST %").Text = "" Or val(grdDataGrid.Columns("IGST %").Text) = 0) And grdDataGrid.Columns(0).Text <> "" Then
'                        MsgBox "IGST % Cannot be Empty", vbInformation, head
'                        grdDataGrid.Col = grdDataGrid.Columns("IGST %").ColIndex
'                        grdDataGrid.SetFocus
'                        Opt = Topt
'                        Exit Sub
'                    End If

                    If grddatagrid.Columns(2).Text = "" And grddatagrid.Columns(0).Text <> "" And grddatagrid.Columns(1).Text <> "" Then
                        MsgBox "Category Cannot be Empty", vbInformation, head
                        grddatagrid.Col = 2
                        grddatagrid.SetFocus
                        Opt = Topt
                        Exit Sub
                    End If
                    
                    If sCatType = "S" Then
                        If grddatagrid.Columns(4).Text = "" Then
                            MsgBox "GroupName Cannot be Empty", vbInformation, head
                            grddatagrid.Col = 4
                            grddatagrid.SetFocus
                            Opt = Topt
                            Exit Sub
                        End If
                    
                        If grddatagrid.Columns(5).Text = "" Then
                            MsgBox "Vatiety Type Cannot be Empty", vbInformation, head
                            grddatagrid.Col = 5
                            grddatagrid.SetFocus
                            Opt = Topt
                            Exit Sub
                        End If
                        If grddatagrid.Columns(7).Text = "" Then
                            MsgBox "Shade Cannot be Empty", vbInformation, head
                            grddatagrid.Col = 7
                            grddatagrid.SetFocus
                            Opt = Topt
                            Exit Sub
                        End If
                        If grddatagrid.Columns("Denier").Text = "" Then
                            MsgBox "Denier Cannot be Empty", vbInformation, head
                            grddatagrid.Col = 9
                            grddatagrid.SetFocus
                            Opt = Topt
                            Exit Sub
                        End If
                        If grddatagrid.Columns("Length").Text = "" Then
                            MsgBox "Length Cannot be Empty", vbInformation, head
                            grddatagrid.Col = 10
                            grddatagrid.SetFocus
                            Opt = Topt
                            Exit Sub
                        End If
                    End If
                    adoPrimaryRS.MoveNext
                Loop
                Opt = Topt
            End If
         
         If Opt = "add" Then
     
            adoPrimaryRS.MoveFirst
            If Not Trim(grddatagrid.Columns(0).Text) = "" And Not Trim(grddatagrid.Columns(1).Text) = "" Then
                On Error Resume Next
                Set rsa = New Recordset
                If sCatType = "S" Then
                    rsa.Open "SELECT VARCODE,VARNAME,CATCD,imported,oldvarcode,vartype,shadeno,denier,length,cattype,HSN ,taxcode,cgstper ,sgstper ,igstper,AccVarcode,gvarcode,Is_Active  FROM RM_VAR WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                Else
                If UCase(CustID) = "LMW" Then
                    rsa.Open "SELECT VARCODE,VARNAME,CATCD,imported,drawno,TaxCode,oldvarcode,Cattype,HSN ,cgstper,sgstper ,igstper ,AccVarcode,gvarcode,Is_Active  FROM RM_VAR WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                    Else
                    rsa.Open "SELECT VARCODE,VARNAME,CATCD,imported,Cattype,TaxCode,HSN ,cgstper,sgstper ,igstper ,AccVarcode,gvarcode ,Is_Active FROM RM_VAR WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                 End If
                End If
                Do While Not adoPrimaryRS.EOF
                    rsa.AddNew
                    rsa("VARCODE") = grddatagrid.Columns(0).Text
                    rsa("VARNAME") = grddatagrid.Columns(1).Text
                         Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,CATCD ,TAXCODE ,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Variety"
                        TrnLog("Trans_Mod") = "Add"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                        TrnLog("HSN") = grddatagrid.Columns("HSN Code").Text
                        TrnLog("TaxCode") = grddatagrid.Columns("TaxCode").Text
                        TrnLog("CATCD") = grddatagrid.Columns(2).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
                    
                    
                    
                    rsa("CATCD") = grddatagrid.Columns(2).Text
                    rsa("IMPORTED") = "L"
                    If sCatType = "S" Then
                    
                    
                        rsa("oldvarcode") = grddatagrid.Columns(4).Text
                        rsa("vartype") = grddatagrid.Columns(5).Text
                        rsa("shadeno") = grddatagrid.Columns(7).Text
                        rsa("denier") = grddatagrid.Columns("Denier").Text
                        rsa("length") = grddatagrid.Columns("Length").Text
                        rsa("TaxCode") = grddatagrid.Columns("TaxCode").Text
                       rsa("Is_Active") = grddatagrid.Columns("Is_Active").Text
                     

                        
                    Else
                        If UCase(CustID) = "LMW" Then
                            rsa("drawno") = grddatagrid.Columns("Denier").Text
                            rsa("oldvarcode") = grddatagrid.Columns("Oldvarcode").Text
                        End If
                        ',TaxCode
                         rsa("TaxCode") = grddatagrid.Columns("TaxCode").Text
                    End If
                    
                    rsa("HSN") = grddatagrid.Columns("HSN Code").Text
                    rsa("cgstper") = grddatagrid.Columns("CGST %").Text
                    rsa("sgstper") = grddatagrid.Columns("SGST %").Text
                    rsa("igstper") = grddatagrid.Columns("IGST %").Text
                    rsa("cattype") = sCatType
                    rsa("AccVarcode") = Trim(grddatagrid.Columns("Acc. Varcode").Text)
                    rsa("GVarcode") = Trim(grddatagrid.Columns("Group Code").Text)
                    adoPrimaryRS.MoveNext
                Loop
                rsa.UpdateBatch adAffectAllChapters
                DB.CommitTrans
                MsgBox "Record(s) Saved.", vbInformation, head
            End If
            StatusBar1.Panels(2).Text = ""
    End If

    If Opt = "mod" Then
        
        adoPrimaryRS.MoveFirst
        
        Set RSCHECK = New Recordset
        RSCHECK.Open "select catcd  from rm_arrival where varcode='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic
        If Not RSCHECK.EOF Then
            If grddatagrid.Columns(2).Text = RSCHECK(0) Then
            Else
                MsgBox "You cannot Modify Variety!! Dependencies Exit", vbInformation, head
                Exit Sub
            End If
        End If
        
'        Set RSCHECK = New Recordset
'        RSCHECK.Open "select varcode  from rm_prL where varcode='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic
'        If Not RSCHECK.EOF Then
'            MsgBox "You cannot Modify Variety!! Dependencies Exit", vbInformation, head
'            Exit Sub
'        End If
'
          Set RSCHECK = New Recordset
        RSCHECK.Open "select catcd  from rm_lot where varcode='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic
        If Not RSCHECK.EOF Then
            If grddatagrid.Columns(2).Text = RSCHECK(0) Then
            Else
                MsgBox "You cannot Modify Variety!! Dependencies Exit", vbInformation, head
                Exit Sub
            End If
        End If
        
        Set rsa = New Recordset
        If sCatType = "S" Then
            rsa.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & grddatagrid.Columns(0).Text & "' and cattype='" & sCatType & "'", DB, adOpenStatic, adLockBatchOptimistic
        Else
            rsa.Open "SELECT * FROM RM_VAR WHERE VARCODE='" & grddatagrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        End If
        If Not adoPrimaryRS.EOF Then
            rsa("VARNAME") = grddatagrid.Columns(1).Text
            rsa("CATCD") = grddatagrid.Columns(2).Text
            
            
            
            rsa("IMPORTED") = "L"
            If sCatType = "S" Then
                rsa("oldvarcode") = grddatagrid.Columns(4).Text
                rsa("vartype") = grddatagrid.Columns(5).Text
                rsa("shadeno") = grddatagrid.Columns(7).Text
                rsa("denier") = grddatagrid.Columns("Denier").Text
                rsa("length") = grddatagrid.Columns("Length").Text
                rsa("TaxCode") = grddatagrid.Columns("TaxCode").Text
            Else
                If UCase(CustID) = "LMW" Then
                    rsa("drawno") = grddatagrid.Columns("Drawno").Text
                    rsa("oldvarcode") = grddatagrid.Columns("Oldvarcode").Text
                End If
                 rsa("TaxCode") = grddatagrid.Columns("TaxCode").Text
            End If
                rsa("HSN") = grddatagrid.Columns("HSN Code").Text
                rsa("cgstper") = grddatagrid.Columns("CGST %").Text
                rsa("sgstper") = grddatagrid.Columns("SGST %").Text
                rsa("igstper") = grddatagrid.Columns("IGST %").Text
                rsa("AccVarcode") = grddatagrid.Columns("Acc. Varcode").Text
                rsa("GVarcode") = Trim(grddatagrid.Columns("Group Code").Text)
                rsa("Is_Active") = grddatagrid.Columns("Is_Active").Text
                
                rsa("cattype") = sCatType
            
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,CATCD ,TAXCODE ,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Variety"
                        TrnLog("Trans_Mod") = "Mod"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                        TrnLog("HSN") = grddatagrid.Columns("HSN Code").Text
                        TrnLog("TaxCode") = grddatagrid.Columns("TaxCode").Text
                        TrnLog("CATCD") = grddatagrid.Columns(2).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
            
            adoPrimaryRS.MoveNext
            rsa.UpdateBatch adAffectAllChapters
        End If
        DB.CommitTrans
        MsgBox "Record(s) Modified.", vbInformation, head
    End If
    
    grddatagrid.SetFocus
    
    
    If Opt = "del" Then
        On Error GoTo deler
        Set RSCHECK = New Recordset
        RSCHECK.Open "select contno  from rm_cont where varcode='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic
        If Not RSCHECK.EOF Then
            MsgBox "You cannot Delete Variety!! Dependencies Exit", vbInformation, head
            Screen.MousePointer = 0
            Call BUTTON_Click(10)
            Exit Sub
        End If
        Set RSCHECK = New Recordset
        RSCHECK.Open "select varcode  from rm_prL where varcode='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic
        If Not RSCHECK.EOF Then
            MsgBox "You cannot Delete Variety!! Dependencies Exit", vbInformation, head
            Exit Sub
        End If
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            Set RSCHECK = New Recordset
            RSCHECK.Open "select varcode  from rm_prL where varcode='" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic
            If Not RSCHECK.EOF Then
                MsgBox "You cannot Delete Variety!! Dependencies Exit", vbInformation, head
                Exit Sub
            End If
        End If
        Dim msg As String
        msg = MsgBox("Do you want to delete this record", vbYesNo, head)
        If msg = vbYes Then
        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description,CATCD ,TAXCODE ,HSN FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                       ' TrnLog("TC") = 3
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Variety"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
    
                        TrnLog("code") = grddatagrid.Columns(0).Text
                        TrnLog("description") = grddatagrid.Columns(1).Text
                        TrnLog("HSN") = grddatagrid.Columns("HSN Code").Text
                        TrnLog("TaxCode") = grddatagrid.Columns("TaxCode").Text
                        TrnLog("CATCD") = grddatagrid.Columns(2).Text
         
                        TrnLog.UpdateBatch adAffectAllChapters
        
            DB.Execute ("delete from rm_var where varcode=" + "'" + grddatagrid.Columns(0) + "'")
            DB.CommitTrans
            MsgBox "Record(s) Deleted", vbInformation, head
        Else
            Call BUTTON_Click(10)
            Exit Sub
        End If
    End If
        'Opt = " "
        Call query_mode
       'grdDataGrid.Columns(4).Width = 915.0237
       grddatagrid.Columns(3).Width = 1934.929
      grddatagrid.Columns(2).Width = 854.9292
      grddatagrid.Columns(1).Width = 2954.835
      grddatagrid.Columns(0).Width = 1140.095
      'grddatagrid.ScrollBars = dbgNone

        'calling newform_cancel procedure from module (also for save)
        Call NEWFORM(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        desc.Caption = "Query" 'After this mode QUERY WILL BE INVOKED
        If Opt = "fnd" Then
            DB.CommitTrans
        End If
        Opt = " "
Case 10
If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
gocancel:
    
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Select Case Opt
    Case "mod"
        DB.RollbackTrans
    Case "add"
        DB.RollbackTrans
    Case "del"
        DB.RollbackTrans
    Case "fnd"
        DB.RollbackTrans
    End Select
    Opt = " "
    Call query_mode
    'grddatagrid.Visible = True
    'sstab1.Visible = True
'grdDataGrid.Columns(4).Width = 915.0237
 grddatagrid.Columns(3).Width = 1695.118
 grddatagrid.Columns(2).Width = 854.9292
 grddatagrid.Columns(1).Width = 2954.835
 grddatagrid.Columns(0).Width = 1140.095

    SSTab1.Visible = True
    Frame3.Visible = False
    'calling cancl procedure from module
    Call cancl(BUTTON)
    If adoPrimaryRS.RecordCount = 0 Then
        Call Norecfound(BUTTON)
    Else
        Call Recfound(BUTTON)
    End If
    Call NEWFORM1(BUTTON, GSNO)
    BUTTON(9).Enabled = False
    BUTTON(4).Enabled = True ''find
    BUTTON(0).SetFocus ''''''''''''''
    
Case 13
  Dim clsCryRptVarietynew As New clsCrystal
  Set clsCryRptVarietynew.cryRept = Cry_Variety_New
  clsCryRptVarietynew.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
  CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
  CrystalReport1.ParameterFields(1) = "@varcode;" & sCatType & ""
  CrystalReport1.WindowShowPrintSetupBtn = True
  CrystalReport1.WindowShowSearchBtn = True
  CrystalReport1.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport1.Action = 1
  CrystalReport1.PrinterCopies = 1
  Screen.MousePointer = 0
  
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This variety Code cannot be deleted as dependencies exist ", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        MsgBox "variety Name cannot be empty", vbInformation, head
        GoTo gocancel
        Screen.MousePointer = 0
       Else
        Opt = "add"
        GoTo gocancel
        MsgBox "This variety Code already exists", vbInformation, head
        Screen.MousePointer = 0
    st = "B"
   ' grddatagrid.Col = 0
    End If


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form FrmVariety", vbInformation, head

Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
SSTab1.Visible = True
'Frame2.Visible = True
Call BUTTON_Click(10)

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
  
 
On Error GoTo Command3_Click_Error

  Select Case KSLLIST1.listfield1
  
  Case "catcd"
    If Opt = "add" Then
        'grdDataGrid.Col = 4
        Frame3.Visible = False
        Frame3.Visible = False
        SSTab1.Visible = True
        StatusBar1.Panels(2).Text = ""
        Set Rs = New Recordset
        Rs.Open "select catcd ,catname from rm_cat where catcd='" & KSLLIST1.Code & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
        grddatagrid.Columns(2).Text = Rs("catcd")
        grddatagrid.Columns(3).Text = Rs("catname")
        grddatagrid.AllowUpdate = True
        adoPrimaryRS.AddNew
        grddatagrid.Col = 0
        grddatagrid.Visible = True
        grddatagrid.SetFocus
        
        Exit Sub
    
    End If
    
  Case "varcode"
   'If opt = "mod" Or opt = "del" Then
    SSTab1.Visible = True
    StatusBar1.Panels(2).Text = ""
    Set adoPrimaryRS = New Recordset
    'adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.imported""Imported"" from rm_var a,rm_cat b where varcode='" & ksllist1.Code & "' and a.catcd=b.catcd Order by varcode", db, adOpenStatic, adLockBatchOptimistic
    adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.TaxCode,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety' ,a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active  from rm_var a left join rm_cat b on a.catcd=b.catcd  ig_hsncode c on c.CODE=b.hsn left join RM_Accvar d on d.AccVarcode=a.AccVarcode  left join RM_varGroup f on f.gvarcode=a.gvarcode where c.code=a.hsn and varcode='" & KSLLIST1.Code & "'    Order by varcode", DB, adOpenStatic, adLockBatchOptimistic
    'Call ENABLCONTLS
    
    Call bindcontls
'    Txtfields(0).Enabled = False
'    Txtfields(1).SetFocus
    grddatagrid.Columns(0).Locked = True
    grddatagrid.Columns(1).Locked = False
    grddatagrid.Columns(2).Locked = False
    grddatagrid.Columns(3).Locked = True
    'grdDataGrid.Columns(4).Locked = False
   'grdDataGrid.Columns(4).Width = 915.0237
   
    grddatagrid.Columns(3).Width = 1934.929
    grddatagrid.Columns(2).Width = 854.9292
    grddatagrid.Columns(1).Width = 2954.835
    grddatagrid.Columns(0).Width = 1140.095

    BUTTON(9).Enabled = True 'Save
    BUTTON(10).Enabled = True
    If Opt = "del" Then
    Call disablcontls
    BUTTON(9).SetFocus
    End If
    Frame3.Visible = False
   End Select


Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form FrmVariety", vbInformation, head
   
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
        Call BUTTON_Click(10) 'cancel
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
StatusBar1.Panels(1).Text = STBARmsg
    Call openconnection
    Call query_mode
    Call NEWFORM1(BUTTON, GSNO)
    
   'grddatagrid.Caption = "Location"
    BUTTON(9).Enabled = False
    BUTTON(10).Enabled = False
'    grddatagrid.Columns(3).Width = 1695.118
'    grddatagrid.Columns(2).Width = 854.9292
'    grddatagrid.Columns(1).Width = 2954.835
'    grddatagrid.Columns(0).Width = 1140.095

BUTTON(4).Enabled = True
    'SSTab1.Tabs.Clear

intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form FrmVariety", vbInformation, head
End Sub

Private Sub Form_Resize()
  '  SSTab1.Width = Me.Width - 1500
    grddatagrid.Width = SSTab1.Width - 250
    If sCatType = "C" Then
        heading.Caption = "Cotton Variety"
        heading.Left = 1000
        SSTab1.Left = 1000
        SSTab1.Width = 15750
        grddatagrid.Width = 15500
    End If
    If sCatType = "S" Then
        heading.Caption = "Synthetic Variety"
    End If
End Sub

'Private Sub Form_Resize()
'  On Error Resume Next
'  'This will resize the grid whef the form is resized
'  sstab1.Width = Me.Width - 3000
'  sstab1.Height = Me.Height - 2500
'  grddatagrid.Height = sstab1.Height - 500
'  grddatagrid.Width = sstab1.Width - 800
'   End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault
  intervalMinutes = -1

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub


Public Sub query_mode()
On Error GoTo query_mode_Error
intervalMinutes = -1
On Error GoTo er1
  
  If UCase(CustID) = "LMW" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.drawno,a.oldvarcode,a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.TaxCode ,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %""  ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name' ,a.Is_Active,a.IsOrganic  from rm_var a left join rm_cat b on a.catcd=b.catcd left join ig_hsncode c on a.hsn=c.code   left join RM_Accvar d on d.AccVarcode=a.AccVarcode  left join RM_varGroup f on f.gvarcode=a.gvarcode where  order by varcode", DB, adOpenStatic, adLockReadOnly
        Call bindcontls
        Call gridalign
  Else
        If sCatType = "C" Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select a.varcode""Code"",a.varname""Variety Name"",a.catcd""Category"",b.catname""Category Name"",a.HSN ""HSN Code"",c.Description ""HSN Description"" ,a.TaxCode,a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic  from rm_var a Inner join rm_cat b on a.catcd=b.catcd  left join ig_hsncode c  on c.code=a.hsn  left join RM_Accvar d on d.AccVarcode=a.AccVarcode  left join RM_varGroup f on f.gvarcode=a.gvarcode where   a.cattype='" & sCatType & "'order by varcode", DB, adOpenStatic, adLockReadOnly
            Call bindcontls
            Call gridalign
        ElseIf sCatType = "S" Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select a.varcode 'Code',a.varname 'Variety Name',a.catcd 'Category',b.catname'Category Name',oldvarcode as 'Group Name',VARTYPE 'Variety Type',CASE WHEN VARTYPE='G' THEN 'Grey' WHEN VARTYPE='D' THEN 'Dyed' ELSE '' END 'Variety Desc.',A.ShadeNo ,C.ShadeName 'Shade Desc.',Denier,Length,a.HSN ""HSN Code"",d.Description ""HSN Description"" ,a.taxcode ""TaxCode"",a.cgstper ""CGST %"",a.sgstper ""SGST %"",a.igstper ""IGST %"" ,a.AccVarcode 'Acc. Varcode', AccVarName 'Accounts Variety',a.GVarcode 'Group Code',f.gvarname 'Group Name',a.Is_Active,a.IsOrganic  from rm_var a left join rm_cat b  on  a.catcd=b.catcd left join IG_SHADEHD C on  A.SHADENO =C.SHADECODE left join ig_hsncode d on a.hsn=d.code  left join RM_Accvar e on e.AccVarcode=a.AccVarcode  left join RM_varGroup f on f.gvarcode=a.gvarcode where   a.cattype='" & sCatType & "' order by varcode", DB, adOpenStatic, adLockReadOnly
            Call bindcontls
            Call gridalign
        End If
  End If
  
  
  If adoPrimaryRS.BOF Then
    MsgBox " No Records Found", vbInformation, head
  End If
  Call disablcontls
  desc.Caption = "Query"
  DATLAB.Caption = pdate
  'Calling newform procedure from Module to disable buttons
  Call NEWFORM(BUTTON)
  Call NEWFORM1(BUTTON, GSNO)
  Opt = " "
  Screen.MousePointer = 0
  If adoPrimaryRS.RecordCount = 0 Then
     Call Norecfound(BUTTON)
  Else
     Call Recfound(BUTTON)
  End If
  BUTTON(10).Enabled = False
 StatusBar1.Panels(2).Text = "Records " & CStr(adoPrimaryRS.AbsolutePosition) & " of " & CStr(adoPrimaryRS.RecordCount)
  Exit Sub
er1:
  If Err = 3021 Then
    MsgBox "No Records Found", vbInformation, head
  End If
  If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If
 ' grdDataGrid.Columns(4).Width = 915.0237
 grddatagrid.Columns(3).Width = 1695.118
 grddatagrid.Columns(2).Width = 854.9292
 grddatagrid.Columns(1).Width = 2954.835
 grddatagrid.Columns(0).Width = 1140.095

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub grddatagrid_AfterColEdit(ByVal ColIndex As Integer)

'If ColIndex = 0 And opt = "add" Then
'Dim cut As Integer
'Dim row1 As Integer
'Dim itemc As String
'row1 = grddatagrid.Row
'flg = "n"
'itemc = grddatagrid.Columns(0).Text
'adoPrimaryRS.MoveFirst
'Do While Not adoPrimaryRS.EOF
'If itemc = adoPrimaryRS("Varcode") Then
'cut = cut + 1
'End If
'adoPrimaryRS.MoveNext
'Loop
'If cut > 1 Then
'MsgBox "Veriety already defined", vbInformation, head
'flg = "y"
'grddatagrid.Row = row1
'grddatagrid.Col = 0
'grddatagrid.SetFocus
'Else
'grddatagrid.Row = row1
'grddatagrid.Col = 0
'grddatagrid.SetFocus
'End If
'End If
End Sub

Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo grddatagrid_AfterColUpdate_Error

StatusBar1.Panels(2).Text = ""
If ColIndex = 0 Then
     Set Rs = New Recordset
     Rs.Open "select varcode from rm_var where varcode = '" & Trim(grddatagrid.Columns(0).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Variety Code Already Defined.", vbInformation, head
        grddatagrid.Columns(0).Text = " "
        grddatagrid.Columns(0).Locked = False
        grddatagrid.Col = ColIndex
        grddatagrid.SetFocus
        Exit Sub
     End If
      '  StatusBar1.Panels(2).Text = "Enter One Letter Category Code"
 End If
 
 
' Name check

If ColIndex = 1 Then
     Set Rs = New Recordset
     Rs.Open "select varname  from rm_var where varname = '" & Trim(grddatagrid.Columns(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
     If Rs.RecordCount <> 0 Then
        MsgBox "Variety Name  Already Defined.", vbInformation, head
        grddatagrid.Columns(1).Text = " "
        grddatagrid.Columns(0).Locked = False
        grddatagrid.Col = ColIndex
        grddatagrid.SetFocus
        Exit Sub
     End If
      '  StatusBar1.Panels(2).Text = "Enter One Letter Category Code"
 End If

' End name check

''
''If sCatType <> "S" Then
''    If UCase(CustID) = "LMW" Then
''
''    Else
''     If ColIndex = 4 Then
''        If grddatagrid.Columns(4).Text = "L" Or grddatagrid.Columns(4).Text = "l" Or grddatagrid.Columns(4).Text = "I" Or grddatagrid.Columns(4).Text = "i" Or grddatagrid.Columns(4).Text = "N" Or grddatagrid.Columns(4).Text = "n" Then
''            If Opt = "add" Then
''                flg = "y"
''            End If
''        Else
''            MsgBox "Enter Y or N", vbInformation, head
''            grddatagrid.Columns(4).Text = " "
''            grddatagrid.Col = 4
''            grddatagrid.SetFocus
''        End If
''     End If
''End If
'
'End If


If ColIndex = 15 And sCatType = "S" And Opt = "add" Then
  If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then

    adoPrimaryRS.AddNew
    grddatagrid.Visible = True
    grddatagrid.Enabled = True
    grddatagrid.EditActive = True
    LookUp.Clear = True
    grddatagrid.Col = 0
    grddatagrid.SetFocus
    Exit Sub
 End If
End If

If ColIndex = 11 And sCatType = "C" And Opt = "add" Then
  If adoPrimaryRS.RecordCount = adoPrimaryRS.AbsolutePosition Then

    adoPrimaryRS.AddNew
    grddatagrid.Visible = True
    grddatagrid.Enabled = True
    grddatagrid.EditActive = True
    LookUp.Clear = True
    grddatagrid.Col = 0
    grddatagrid.SetFocus
    Exit Sub
 End If
End If


If grddatagrid.Col = 2 Then
        If Opt = "add" Then
        Set Rs = New Recordset
        Rs.Open "SELECT catcd,catname FROM RM_CAT WHERE CATCD='" & grddatagrid.Columns(2).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Rs.RecordCount = 0 Then
            SSTab1.Visible = False
            Frame3.Visible = True
            Label15.Caption = "Category"
            KSLLIST1.conn = connectstring
            KSLLIST1.Table = "rm_cat"
            KSLLIST1.listfield1 = "catcd"
            KSLLIST1.listfield2 = "catname"
            Frame3.Visible = True
            Command3.Default = True
            Frame3.ZOrder
            KSLLIST1.SetFocus
         Else
         grddatagrid.Columns(2).Text = Rs(0)
         grddatagrid.Columns(3).Text = Rs(1)
         End If
        End If
        End If


Exit Sub
grddatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form FrmVariety", vbInformation, head
End Sub



'Private Sub grddatagrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
'If ColIndex = 3 Then
'If Trim(grddatagrid.Text) = "" Or IsNull(grddatagrid) = True Then
'grddatagrid.Col = 3
'grddatagrid.Text = " "
'End If
'End If
'End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
On Error GoTo grdDataGrid_Error_Error

Response = 0

Exit Sub
grdDataGrid_Error_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_Error of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub grddatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo grddatagrid_KeyDown_Error

  If Opt = "add" Then
   If grddatagrid.Col = 0 Then
        ' StatusBar1.Panels(2).Text = "Enter 10 Letter Length Variety Code"
    ElseIf grddatagrid.Col = 2 Then
       ' StatusBar1.Panels(2).Text = "Enter the Variety Name"
   
        If Opt = "mod" And KeyCode <> vbKeyTab Then
            SSTab1.Visible = False
            Frame3.Visible = True
            Label15.Caption = "Category"
            KSLLIST1.conn = connectstring
            KSLLIST1.Table = "rm_cat"
            KSLLIST1.listfield1 = "catcd"
            KSLLIST1.listfield2 = "catname"
            Frame3.Visible = True
            Command3.Default = True
            Frame3.ZOrder
            KSLLIST1.SetFocus
        End If
       ' StatusBar1.Panels(2).Text = "Enter One Letter Category Code"
   End If
 End If
 
 If Opt = "add" Or Opt = "mod" Then
        
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 10 Character"
        ElseIf grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 50 Characters"
        ElseIf grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
        ElseIf grddatagrid.Col = 4 Then
            If sCatType <> "S" Then
                StatusBar1.Panels(2).Text = " Enter Drawing No"
            End If
        ElseIf grddatagrid.Col = 5 Then
            If sCatType <> "S" Then
                StatusBar1.Panels(2).Text = " Enter Old Item Code"
            End If
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
        Call BUTTON_Click(10) ' cancel
    End If
End If
Exit Sub
grddatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form FrmVariety", vbInformation, head
End Sub

Private Sub grddatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo grddatagrid_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then

    If grddatagrid.Col = 4 And sCatType = "C" And (Opt = "add" Or Opt = "mod") And KeyAscii = 9 Then
     LookUp.Clear = True
            LookUp.query = "select code ""HSN Code"",Description from ig_hsncode "
            LookUp.Caption = "HSN Listing"
            LookUp.DefCol = "HSN Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal

            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("HSN Code").Text = Trim(LookUp.Fields(0))
                 grddatagrid.Columns("HSN Code").Locked = True
                grddatagrid.Columns("HSN Code").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("HSN Description").Text = LookUp.Fields(1)
                grddatagrid.Columns("HSN Code").Text = Trim(LookUp.Fields(0))
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                grddatagrid.Columns("HSN Code").Locked = False
                LookUp.Clear = True
                grddatagrid.Columns(5).Locked = True
                grddatagrid.Col = 5
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        
     End If
     
     
    If grddatagrid.Col = 12 And sCatType = "C" And (Opt = "add" Or Opt = "mod") And KeyAscii = 9 Then
     LookUp.Clear = True
            LookUp.query = "select AccVarcode ""Code"",AccVarName 'Accounts Variety' from RM_Accvar "
            LookUp.Caption = "Accounts Variety Listing"
            LookUp.DefCol = "Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal

            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                 grddatagrid.Columns("Acc. Varcode").Locked = True
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("Accounts Variety").Text = LookUp.Fields(1)
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                grddatagrid.Columns("Acc. Varcode").Locked = False
                LookUp.Clear = True
                'grdDataGrid.Columns(5).Locked = True
                grddatagrid.Col = 13
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        
     End If

    
 If grddatagrid.Col = 14 And sCatType = "C" And (Opt = "add" Or Opt = "mod") And KeyAscii = 9 Then
  LookUp.Clear = True
            LookUp.query = "Select GVarcode 'Group Code',gvarname 'Group Name' from RM_varGroup "
            LookUp.Caption = "Variety Group Listing"
            LookUp.DefCol = "Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal

            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                 grddatagrid.Columns("Group Code").Locked = True
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("Group Name").Text = LookUp.Fields(1)
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                LookUp.Clear = True
                grddatagrid.Columns("Group Code").Locked = False
                'grdDataGrid.Columns(5).Locked = True
                grddatagrid.Col = 15
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        
     End If

If grddatagrid.Col = 17 And sCatType = "S" And (Opt = "add" Or Opt = "mod") And KeyAscii = 9 Then
 LookUp.Clear = True
            LookUp.query = "select AccVarcode ""Code"",AccVarName 'Accounts Variety' from RM_Accvar "
            LookUp.Caption = "Accounts Variety Listing"
            LookUp.DefCol = "Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal

            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                 grddatagrid.Columns("Acc. Varcode").Locked = True
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("Accounts Variety").Text = LookUp.Fields(1)
                grddatagrid.Columns("Acc. Varcode").Text = Trim(LookUp.Fields(0))
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                LookUp.Clear = True
                grddatagrid.Columns("Acc. Varcode").Locked = False
                'grdDataGrid.Columns(5).Locked = True
                grddatagrid.Col = 18
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        
     End If
     
 If grddatagrid.Col = 19 And sCatType = "S" And (Opt = "add" Or Opt = "mod") And KeyAscii = 9 Then
  LookUp.Clear = True
            LookUp.query = "Select GVarcode 'Group Code',gvarname 'Group Name' from RM_varGroup "
            LookUp.Caption = "Variety Group Listing"
            LookUp.DefCol = "Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal

            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                 grddatagrid.Columns("Group Code").Locked = True
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("Group Name").Text = LookUp.Fields(1)
                grddatagrid.Columns("Group Code").Text = Trim(LookUp.Fields(0))
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                LookUp.Clear = True
                grddatagrid.Columns("Group Code").Locked = False
                'grdDataGrid.Columns(5).Locked = True
                grddatagrid.Col = 20
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
        
     End If
     coli = grddatagrid.Columns("Is_Active").ColIndex
    If grddatagrid.Col = coli Then
        Call ToAlphaNumber(grddatagrid, 1, KeyAscii)
         Call ToUpCase(grddatagrid, KeyAscii)
        If KeyAscii <> 9 And KeyAscii <> 13 Then
            If Not ((KeyAscii = 121 Or KeyAscii = 110 Or KeyAscii = 89 Or KeyAscii = 78) Or (KeyAscii = 9 Or KeyAscii = 13 Or KeyAscii = 8)) Then
                KeyAscii = 0
            Else
                'Call validlen(grddatagrid, 1, KeyAscii)
            End If
            ToUpCase grddatagrid, KeyAscii
        End If
         
    End If
    If grddatagrid.Col = 0 Then
    
        Call ToAlphaNumber(grddatagrid, 10, KeyAscii)
        Call ToUpCase(grddatagrid, KeyAscii)
'        If KeyAscii = 48 Then
'            KeyAscii = 0
'            MsgBox "Variety code cannot be 0", vbInformation, head
'            GrdDataGrid.Col = 0
'            GrdDataGrid.SetFocus
'        End If
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 48 Then
            keyasii = 0
        End If
    ElseIf grddatagrid.Col = 1 Then
        'Commented on 08-02-2019'
         Call ToAlphaNumber(grddatagrid, 48, KeyAscii)
         Call ToUpCase(grddatagrid, KeyAscii)
'         If KeyAscii = 48 Then
'            KeyAscii = 0
'            MsgBox "Variety Name cannot be 0", vbInformation, head
'            GrdDataGrid.Col = 1
'            GrdDataGrid.SetFocus
'        End If
       If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Or KeyAscii = 48 Then
            keyasii = 0
        End If
    ElseIf grddatagrid.Col = 4 Then
        
        If sCatType = "S" Then
            ToAlphaNumber grddatagrid, 20, KeyAscii
        Else
            ToAlphanum grddatagrid, 12, KeyAscii
        End If
        If UCase(CustID) = "LMW" Then
           Call ToUpCase(grddatagrid, KeyAscii)
        Else
           Call ToUpCase(grddatagrid, KeyAscii)
        End If
        
        
          If Opt = "add" And sCatType = "C" Then
                If KeyAscii = 9 And Trim(grddatagrid.Columns(10).Text) <> "" Then
                 'If KeyAscii = 9 Then
                    Row = adoPrimaryRS.AbsolutePosition
                    FLG = ""
                    grddatagrid.AllowAddNew = True
                    grddatagrid.AllowUpdate = True
                    grddatagrid.Row = Row + 1
                    'grddatagrid.Col = (grddatagrid.Col - 3)
                    grddatagrid.Col = 0
                    grddatagrid.SetFocus
                End If
            End If
        
     ElseIf grddatagrid.Col = 5 Then
        ToAlphanum grddatagrid, 12, KeyAscii
        
        If UCase(CustID) = "LMW" Then
           Call ToUpCase(grddatagrid, KeyAscii)
        Else
           Call ToUpCase(grddatagrid, KeyAscii)
        End If
    ElseIf grddatagrid.Col = 10 Then
    
        If Opt = "add" And sCatType = "S" Then
            If KeyAscii = 9 And Trim(grddatagrid.Columns(10).Text) <> "" Then
                Row = adoPrimaryRS.AbsolutePosition
                FLG = ""
                grddatagrid.AllowAddNew = True
                grddatagrid.AllowUpdate = True
                grddatagrid.Row = Row + 1
                'grddatagrid.Col = (grddatagrid.Col - 3)
                grddatagrid.Col = 0
                grddatagrid.SetFocus
            End If
        End If
        
    End If
    
    If sCatType = "S" Then
        If grddatagrid.Col = 9 Then
            ToFloatNo grddatagrid, 5
        ElseIf grddatagrid.Col = 10 Then
            ToNumber grddatagrid, 10
        End If
    End If
    
End If
Exit Sub
grddatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_KeyPress of Form FrmVariety", vbInformation, head

End Sub
Private Sub GRDDATAGRID_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo GRDDATAGRID_RowColChange_Error
intervalMinutes = -1
If Opt = "add" Then
    If grddatagrid.Row >= 0 Then
        If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = "" Then
            MsgBox "Variety Code cannot be empty", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.AllowUpdate = True
            grddatagrid.SetFocus
            Exit Sub
        End If
        If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = " " Then
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End If
        If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text <> "" And FLG = "y" Then
            FLG = ""
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End If
         If grddatagrid.Col = 1 And grddatagrid.Columns(0).Text = "" Then
            MsgBox "Variety cannot be empty", vbInformation, head
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        End If
        If grddatagrid.Col = 2 And grddatagrid.Columns(1).Text = "" Then
            MsgBox "Variety Name cannot be empty", vbInformation, head
            grddatagrid.Col = 1
            grddatagrid.SetFocus
        End If
    End If
End If

If grddatagrid.Row >= 0 Then
    If grddatagrid.Col = 1 And Opt = "add" Then
        Dim cut As Integer
        Dim row1 As Integer
        Dim itemc As String
        row1 = grddatagrid.Row
        FLG = "n"
        itemc = Trim(grddatagrid.Columns(0).Text)
        adoPrimaryRS.MoveFirst
        Do While Not adoPrimaryRS.EOF
            If itemc = Trim(adoPrimaryRS("varcode")) Then
            cut = cut + 1
            End If
            adoPrimaryRS.MoveNext
        Loop
        If cut > 1 Then
            MsgBox "Variety already defined", vbInformation, head
            FLG = "y"
            grddatagrid.Row = row1
            grddatagrid.Col = 0
            grddatagrid.SetFocus
        Else
            grddatagrid.Row = row1
            grddatagrid.Col = 1
            grddatagrid.SetFocus
        End If
    ElseIf grddatagrid.Col = 2 And (Opt = "add") Then
        LookUp.Clear = True
        LookUp.query = "select catcd""Category Code"",catname""Category Name"" from rm_cat " 'from fa_tcmas a,fa_param b where a.tc between b.frompurtc and b.topurtc"
        LookUp.Caption = "Category Listing"
        LookUp.DefCol = "Name"
        LookUp.ALIGN = "1500,2500"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            StatusBar1.Panels(2).Text = ""
            Set Rs = New Recordset
            Rs.Open "select catcd ,catname from rm_cat where catcd='" & LookUp.Fields(0) & "' Order by catcd", DB, adOpenStatic, adLockBatchOptimistic
            grddatagrid.Columns(2).Text = Rs("catcd")
            grddatagrid.Columns(3).Text = Rs("catname")
            grddatagrid.Columns(3).Locked = True
            grddatagrid.Col = 3
            grddatagrid.SetFocus
            grddatagrid.AllowUpdate = True
            
            Screen.MousePointer = 0
        Else
            Call BUTTON_Click(10)
        End If
    ElseIf grddatagrid.Col = 5 And sCatType = "S" And (Opt = "add" Or Opt = "mod") Then
            LookUp.Clear = True
            LookUp.query = "SELECT 'G' CODE,'Grey' DESCR UNION SELECT 'D' CODE,'Dyed' DESCR"
            LookUp.Caption = "Variety Type Listing"
            LookUp.DefCol = "DESCR"
            LookUp.ALIGN = "1500,2500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns(5).Locked = True
                grddatagrid.Columns(5).Text = Trim(LookUp.Fields(0))
                If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                 grddatagrid.Columns(5).Text = Trim(LookUp.Fields(0))
                LookUp.Clear = True
                grddatagrid.Col = 7
                grddatagrid.SetFocus
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
     ElseIf LastCol = 7 And sCatType = "S" And (Opt = "add" Or Opt = "mod") Then
            LookUp.Clear = True
            LookUp.query = "SELECT SHADECODE Code,SHADENAME Descr FROM IG_SHADEHD where divcode='" & Divcode & "'"
            LookUp.Caption = "Shade Listing"
            LookUp.DefCol = "Code"
            LookUp.ALIGN = "1500,2500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.EditActive = True
                grddatagrid.Columns(7).Text = LookUp.Fields(0)
                If Opt = "add" Then grddatagrid.Columns(8).Text = LookUp.Fields(1)
                LookUp.Clear = True
                grddatagrid.Col = 8
                grddatagrid.SetFocus
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
                            
        ElseIf LastCol = 3 And sCatType = "C" And (Opt = "add" Or Opt = "mod") Then
            LookUp.Clear = True
            LookUp.query = "select code ""HSN Code"",Description from ig_hsncode "
            LookUp.Caption = "HSN Listing"
            LookUp.DefCol = "HSN Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal
        
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("HSN Code").Locked = True
                grddatagrid.Columns("HSN Code").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("HSN Description").Text = LookUp.Fields(1)
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                LookUp.Clear = True
                grddatagrid.Columns(5).Locked = True
                grddatagrid.Col = 6
                grddatagrid.SetFocus
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
            End If
            
        ElseIf LastCol = 6 And sCatType = "C" And (Opt = "add" Or Opt = "mod") Then
        
            Set Rsch = New Recordset
            Rsch.Open "Select  Tax_CODE as Code,Description,ST_PER [Tax %] from ig_tax where isnull(taxstatus,'')='Y' and tax_code='" & grddatagrid.Columns("TaxCode").Text & "'", DB, adOpenStatic
            If Rsch.EOF Then
                LookUp.Clear = True
                LookUp.query = "Select Tax_CODE as Code,Description,ST_PER [Tax %] from ig_tax where isnull(taxstatus,'')='Y' "
                LookUp.Caption = "Tax Listing"
                LookUp.DefCol = "Description"
                LookUp.ALIGN = "1000,3500,1000"
                LookUp.Show vbModal
                If LookUp.Cancel = False Then
                    grddatagrid.Columns("TaxCode").Text = Trim(LookUp.Fields(0))
                    grddatagrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                    grddatagrid.Columns("SGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                    grddatagrid.Columns("IGST %").Text = Format(val(LookUp.Fields(2)), "#.00")
                    grddatagrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                    grddatagrid.Columns("CGST %").Locked = True
                        If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
                        
                        FLG = ""
                        grddatagrid.AllowAddNew = True
                        grddatagrid.AllowUpdate = True
    '                    grdDataGrid.Row = Row + 1
    '                    'grddatagrid.Col = (grddatagrid.Col - 3)
    '                    grdDataGrid.Col = 0
    '                    grdDataGrid.SetFocus
                        End If
                    'grdDataGrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                    LookUp.Clear = True
                Else
                    grddatagrid.Columns("CGST %").Text = "0"
                    grddatagrid.Columns("SGST %").Text = "0"
                    grddatagrid.Columns("IGST %").Text = "0"
                    Call BUTTON_Click(10)
                    LookUp.Clear = True
                End If
            Else
                grddatagrid.Columns("TaxCode").Text = Trim(Rsch(0))
                grddatagrid.Columns("CGST %").Text = Format(val(Rsch(2)) / 2, "#.00")
                grddatagrid.Columns("SGST %").Text = Format(val(Rsch(2)) / 2, "#.00")
                grddatagrid.Columns("IGST %").Text = Format(val(Rsch(2)), "#.00")
                grddatagrid.Columns("CGST %").Text = Format(val(Rsch(2)) / 2, "#.00")
            End If
        
        ElseIf LastCol = 8 And sCatType = "S" And (Opt = "add" Or Opt = "mod") Then
         LookUp.Clear = True
            LookUp.query = "select code ""HSN Code"",Description from ig_hsncode "
            LookUp.Caption = "HSN Listing"
            LookUp.DefCol = "HSN Code"
            LookUp.ALIGN = "1500,3000"
            LookUp.Show vbModal
        
            If LookUp.Cancel = False Then
                StatusBar1.Panels(2).Text = ""
                grddatagrid.Columns("HSN Code").Locked = True
                grddatagrid.Columns("HSN Code").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("HSN Description").Text = LookUp.Fields(1)
                'If Opt = "add" Then grddatagrid.Columns(6).Text = LookUp.Fields(1)
                grddatagrid.Columns("HSN Description").Locked = True
                LookUp.Clear = True
                grddatagrid.Col = 10
                grddatagrid.SetFocus
                Screen.MousePointer = 0
            Else
                Call BUTTON_Click(10)
                LookUp.Clear = True
            End If
            
       ElseIf grddatagrid.Col = 11 And sCatType = "S" And (Opt = "add" Or Opt = "mod") Then
            LookUp.Clear = True
            LookUp.query = "Select Tax_CODE as Code,Description,ST_PER [Tax %] from ig_tax"
            LookUp.Caption = "Tax Listing"
            LookUp.DefCol = "Description"
            LookUp.ALIGN = "1000,3500,1000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
                grddatagrid.Columns("TaxCode").Text = Trim(LookUp.Fields(0))
                grddatagrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                grddatagrid.Columns("SGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                grddatagrid.Columns("IGST %").Text = Format(val(LookUp.Fields(2)), "#.00")
                grddatagrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                grddatagrid.Columns("CGST %").Locked = True
                grddatagrid.Columns("TaxCode").Locked = True
                grddatagrid.Columns("TaxCode").Text = Trim(LookUp.Fields(0))
                If adoPrimaryRS.AbsolutePosition = adoPrimaryRS.RecordCount Then
                    
                    FLG = ""
                    grddatagrid.AllowAddNew = True
                    grddatagrid.AllowUpdate = True
'                    grdDataGrid.Row = Row + 1
'                    'grddatagrid.Col = (grddatagrid.Col - 3)
'                    grdDataGrid.Col = 0
                    grddatagrid.SetFocus
                    End If
                'grdDataGrid.Columns("CGST %").Text = Format(val(LookUp.Fields(2)) / 2, "#.00")
                LookUp.Clear = True
            Else
                grddatagrid.Columns("CGST %").Text = "0"
                grddatagrid.Columns("SGST %").Text = "0"
                grddatagrid.Columns("IGST %").Text = "0"
                Call BUTTON_Click(10)
                LookUp.Clear = True
            End If
       
            
            
'      ElseIf grddatagrid.Col = 15 And sCatType = "S" And (Opt = "add" Or Opt = "mod") Then
'            If sCatType = "S" Then
'                adoPrimaryRS.AddNew
'                grddatagrid.Visible = True
'                grddatagrid.Enabled = True
'                grddatagrid.EditActive = True
'                LookUp.clear = True
'                grddatagrid.Col = 0
'                grddatagrid.SetFocus
'            End If
'
'     ElseIf grddatagrid.Col = 11 And sCatType = "C" And (Opt = "add" Or Opt = "mod") Then
'            If sCatType = "C" Then
'                adoPrimaryRS.AddNew
'                grddatagrid.Visible = True
'                grddatagrid.Enabled = True
'                grddatagrid.EditActive = True
'                LookUp.clear = True
'                grddatagrid.Col = 0
'                grddatagrid.SetFocus
'            End If
'
            
     End If
     
End If
If Opt = "add" Or Opt = "mod" Then
        If grddatagrid.Col = 0 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 1 Character"
        End If
        If grddatagrid.Col = 1 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 50 Characters"
        End If
        If grddatagrid.Col = 2 Then
            StatusBar1.Panels(2).Text = "Enter Maximum of 4 integers"
        End If
        If grddatagrid.Col = 3 Then
            StatusBar1.Panels(2).Text = " Enter Maximum of 2 Integers"
        End If
End If
Exit Sub
GRDDATAGRID_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_RowColChange of Form FrmVariety", vbInformation, head
End Sub

Private Sub KslList1_GotFocus()
On Error GoTo KslList1_GotFocus_Error

Command3.Default = True

Exit Sub
KslList1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure KslList1_GotFocus of Form FrmVariety", vbInformation, head
Screen.MousePointer = 0
End Sub
'    Private Sub txtfields_LostFocus(Index As Integer)
'    Select Case Index
'    Case 0
'       If txtfields(0).Text = "" Then
'          MsgBox "variety Code cannot be empty", vbCritical, head
'          txtfields(0).SetFocus
'          Exit Sub
'
'       End If
'       txtfields(0).SetFocus
'    Case 1
'       If txtfields(1).Text = "" Then
'          MsgBox "variety Name cannot be empty", vbCritical, head
'     '     txtfields(1).SetFocus
'          Exit Sub
'       End If
'    Case 2
'       If txtfields(2).Text = "" Then
'          MsgBox "catcd cannot be empty", vbCritical, head
'      '    txtfields(2).SetFocus
'          Exit Sub
'       End If
'    End Select
'    End Sub

'Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
'Select Case Index
'  Case 0
'      If Trim(Txtfields(0).Text) = "" Then
'        MsgBox "Variable Code cannot be empty", vbInformation, head
'        Txtfields(0).Text = ""
'        Cancel = True
'        Exit Sub
'      End If
'  Case 1
'      If Trim(Txtfields(1).Text) = "" Then
'        MsgBox "Variable name cannot be empty", vbInformation, head
'        Txtfields(1).Text = ""
'        Cancel = True
'        Exit Sub
'      End If
'      If Trim(TXTFIELDS(2).Text) = "" Then
'        MsgBox "Category cannot be empty", vbInformation, head
'        TXTFIELDS(2).Text = ""
'        Cancel = True
'        Exit Sub
'      End If
'End Select
'End Sub

Public Sub ToUpCase(Ofld As Object, KeyAscii As Integer)
    If (KeyAscii >= 97 And KeyAscii <= 122) Then
        KeyAscii = KeyAscii - 32
    End If
End Sub
'     If KeyAscii = 32 Then
'     KeyAscii = keys
'     End If
'     ToNumb grddatagrid, 1, KeyAscii
'    Call ToUpCase(grddatagrid, KeyAscii)
'    If grddatagrid.Columns(3).Text = "N" Or grddatagrid.Columns(3).Text = "n" Or grddatagrid.Columns(3).Text = "Y" Or grddatagrid.Columns(3).Text = "y" Then
'
'    If opt = "add" Then
'     Row = adoPrimaryRS.AbsolutePosition
'     grddatagrid.AllowAddNew = True
'     grddatagrid.AllowUpdate = True
'     grddatagrid.Row = Row + 1
'     grddatagrid.Col = (grddatagrid.Col - 3)
'     grddatagrid.SetFocus
'
'    End If
'    Else
'
'     MsgBox "Enter Either Y or N", vbInformation, head
'     grddatagrid.Columns(3).Text = " "
'     grddatagrid.Col = 3
'     grddatagrid.SetFocus
'    End If
'
 


