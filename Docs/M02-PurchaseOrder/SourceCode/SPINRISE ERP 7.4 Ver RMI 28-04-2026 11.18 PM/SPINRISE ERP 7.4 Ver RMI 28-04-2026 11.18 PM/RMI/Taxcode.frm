VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CFC4C9B4-8AE8-11D3-A1A8-008048DB5FA9}#1.1#0"; "listacx.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Tax 
   Caption         =   "GST"
   ClientHeight    =   7230
   ClientLeft      =   60
   ClientTop       =   300
   ClientWidth     =   10695
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7230
   ScaleWidth      =   10695
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   195
      Top             =   6315
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   705
      Left            =   0
      TabIndex        =   35
      Top             =   -120
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   13
         Left            =   5760
         Picture         =   "Taxcode.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   39
         ToolTipText     =   "Lot Bale Crystal Report Print (Ctrl P)"
         Top             =   120
         Width           =   525
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":0442
         Height          =   550
         Index           =   4
         Left            =   2160
         Picture         =   "Taxcode.frx":074C
         Style           =   1  'Graphical
         TabIndex        =   38
         ToolTipText     =   "Find (Ctrl F)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":0AE1
         Height          =   550
         Index           =   6
         Left            =   3150
         Picture         =   "Taxcode.frx":0F2B
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":1278
         Height          =   550
         Index           =   0
         Left            =   45
         Picture         =   "Taxcode.frx":1582
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl A)"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":1915
         Height          =   550
         Index           =   5
         Left            =   2625
         Picture         =   "Taxcode.frx":1D5F
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl Left)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":20C4
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   550
         Index           =   2
         Left            =   1095
         Picture         =   "Taxcode.frx":23CE
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl D)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":276A
         Height          =   550
         Index           =   1
         Left            =   570
         Picture         =   "Taxcode.frx":2A74
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   3
         Left            =   1620
         Picture         =   "Taxcode.frx":2DEE
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":3185
         Height          =   550
         Index           =   7
         Left            =   3675
         Picture         =   "Taxcode.frx":35CF
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":391F
         Height          =   550
         Index           =   11
         Left            =   6300
         Picture         =   "Taxcode.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":40FE
         Height          =   550
         Index           =   9
         Left            =   4725
         Picture         =   "Taxcode.frx":4408
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Taxcode.frx":47AA
         Height          =   550
         Index           =   10
         Left            =   5250
         Picture         =   "Taxcode.frx":4AB4
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Backspace)"
         Top             =   120
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Taxcode.frx":4E30
         Height          =   550
         Index           =   8
         Left            =   4200
         Picture         =   "Taxcode.frx":527A
         Style           =   1  'Graphical
         TabIndex        =   7
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   8685
         TabIndex        =   37
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
         ForeColor       =   &H80000002&
         Height          =   255
         Left            =   7515
         TabIndex        =   36
         Top             =   255
         Width           =   840
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3105
      Left            =   900
      TabIndex        =   11
      Top             =   1300
      Width           =   7305
      _ExtentX        =   12885
      _ExtentY        =   5477
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                    "
      TabPicture(0)   =   "Taxcode.frx":55DC
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2880
         Left            =   120
         TabIndex        =   12
         Top             =   40
         Width           =   7020
         Begin VB.TextBox txtFields 
            DataField       =   "SC_SL"
            Height          =   330
            Index           =   7
            Left            =   1305
            MaxLength       =   6
            TabIndex        =   20
            Top             =   2370
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            Height          =   330
            Index           =   8
            Left            =   2535
            TabIndex        =   21
            Top             =   2385
            Width           =   4335
         End
         Begin VB.TextBox txtFields 
            Height          =   330
            Index           =   6
            Left            =   2535
            TabIndex        =   19
            Top             =   1839
            Width           =   4335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "DESCRIPTION"
            Height          =   330
            Index           =   1
            Left            =   2535
            MaxLength       =   25
            TabIndex        =   14
            Top             =   255
            Width           =   4335
         End
         Begin VB.TextBox txtFields 
            DataField       =   "SC_PER"
            Height          =   330
            Index           =   4
            Left            =   5715
            TabIndex        =   17
            Top             =   1311
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            DataField       =   "ST_SL"
            Height          =   330
            Index           =   5
            Left            =   1305
            MaxLength       =   6
            TabIndex        =   18
            Top             =   1839
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            DataField       =   "ST_PER"
            Height          =   330
            Index           =   3
            Left            =   1305
            TabIndex        =   16
            Top             =   1311
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            DataField       =   "ABBR"
            Height          =   330
            Index           =   2
            Left            =   1305
            MaxLength       =   5
            TabIndex        =   15
            Top             =   783
            Width           =   1155
         End
         Begin VB.TextBox txtFields 
            DataField       =   "TAX_CODE"
            Height          =   330
            Index           =   0
            Left            =   1305
            MaxLength       =   3
            TabIndex        =   13
            Top             =   255
            Width           =   1155
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "SC GLCode"
            Height          =   195
            Index           =   5
            Left            =   195
            TabIndex        =   30
            Top             =   2460
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "ST GLCode"
            Height          =   195
            Index           =   4
            Left            =   195
            TabIndex        =   29
            Top             =   1905
            Width           =   840
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Surcharge %"
            Height          =   195
            Index           =   3
            Left            =   4605
            TabIndex        =   28
            Top             =   1379
            Width           =   900
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "SalesTax %"
            Height          =   195
            Index           =   2
            Left            =   195
            TabIndex        =   27
            Top             =   1380
            Width           =   825
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Abbreviation"
            Height          =   195
            Index           =   1
            Left            =   195
            TabIndex        =   26
            Top             =   855
            Width           =   885
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Tax Code"
            Height          =   195
            Index           =   0
            Left            =   195
            TabIndex        =   25
            Top             =   315
            Width           =   690
         End
      End
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   31
      Top             =   6930
      Width           =   10695
      _ExtentX        =   18865
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Object.Width           =   15134
            MinWidth        =   15134
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
            TextSave        =   "5:56 PM"
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
   Begin VB.Frame Frame3 
      Height          =   4710
      Left            =   480
      TabIndex        =   22
      Top             =   1320
      Visible         =   0   'False
      Width           =   7800
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         Height          =   660
         Left            =   2385
         Style           =   1  'Graphical
         TabIndex        =   23
         Top             =   3915
         Width           =   1185
      End
      Begin VB.CommandButton lovcancel 
         Caption         =   "&Cancel"
         Height          =   660
         Left            =   4050
         Style           =   1  'Graphical
         TabIndex        =   24
         Top             =   3915
         Width           =   1185
      End
      Begin listacx.codelist ksldesc1 
         Height          =   3450
         Left            =   360
         TabIndex        =   34
         Top             =   480
         Width           =   7230
         _ExtentX        =   12753
         _ExtentY        =   6085
         caption         =   ""
      End
      Begin VB.Label listlb 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H80000002&
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Caption"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000005&
         Height          =   315
         Left            =   45
         TabIndex        =   32
         Top             =   120
         Width           =   7725
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "GST"
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
      Left            =   990
      TabIndex        =   33
      Top             =   930
      Width           =   570
   End
End
Attribute VB_Name = "Tax"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim WithEvents shiftRS As Recordset
Attribute shiftRS.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim Rs, rs1 As New Recordset
Dim rsCommand1 As New Recordset
Dim rep As Report.ReportView
Dim adoSecondaryRS As New Recordset
Dim a As Integer
Dim startno As Integer
Public tabIndex As Integer
Dim serialNo As Integer
Dim docNo As String
Dim lanum As Integer
Dim FLG As String

Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    intervalMinutes = -1
    On Error Resume Next
    If Not (adoPrimaryRS.EOF Or adoPrimaryRS.BOF) Then
        If adoPrimaryRS.RecordCount > 0 Then
            If Table_Exists("fa_glmas") = True Then
                Set Rs = New Recordset
                Rs.Open "SELECT GLHEAD FROM FA_GLMAS WHERE GLCODE='" & adoPrimaryRS("ST_SL") & "'", DB, adOpenDynamic, adLockOptimistic
                If Rs.RecordCount > 0 Then
                    txtFields(6).Text = Rs("glhead")
                End If
            Else
                txtFields(6).Text = ""
            End If
            If Not IsNull(adoPrimaryRS("SC_SL")) Then
                Set Rs = New Recordset
                Rs.Open "SELECT GLHEAD FROM FA_GLMAS WHERE GLCODE='" & adoPrimaryRS("SC_SL") & "'", DB, adOpenDynamic, adLockOptimistic
                If Rs.RecordCount > 0 Then
                    txtFields(8).Text = Rs("glhead")
                End If
            Else
                txtFields(8).Text = ""
            End If
        End If
    End If
    Set rs1 = New Recordset
    rs1.Open "select count(*) from ig_param where FA_LINK='Y' and TAX_TRANSFER='%' and divcode = '" & Divcode & "'", DB, adOpenStatic
    If rs1(0) = 0 Then
        txtFields(5).Enabled = False
        txtFields(6).Enabled = False
        txtFields(7).Enabled = False
        txtFields(8).Enabled = False
    Else
        txtFields(5).Enabled = True
        txtFields(6).Enabled = True
        txtFields(7).Enabled = True
        txtFields(8).Enabled = True
    End If
End Sub

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
  Case 0
            ' Addition
             Opt = "add"
             desc.Caption = "Addition"
             stbar.Panels(2).Text = "Addition"
             SSTab1.Enabled = True
             Screen.MousePointer = vbHourglass
             DB.BeginTrans
             Set adoPrimaryRS = New Recordset
             adoPrimaryRS.Open "select tax_code,description,abbr,st_per,sc_per,st_sl,sc_sl,entdate,user_id from ig_tax  where 1=2", DB, adOpenStatic, adLockOptimistic
             Call bindcontls
             adoPrimaryRS.AddNew
             Call ENABLCONTLS
             Call adddelmod(BUTTON)
             Screen.MousePointer = vbArrow
             txtFields(0).SetFocus
             txtFields(8).Text = ""
             txtFields(7).Text = ""
             FLG = "n"
             txtFields(6).Locked = True
             txtFields(8).Locked = True
             txtFields(3).Text = 0
             txtFields(4).Text = 0


             
            
 Case 1, 2, 4
            ' Modification
        If Record_Exists("IG_TAX") = False Then Exit Sub
        If Index = 1 Then
            Opt = "mod"
            desc.Caption = "Modification"
            stbar.Panels(2).Text = "Modification"
        ElseIf Index = 2 Then
            Opt = "del"
            desc.Caption = "Deletion"
            stbar.Panels(2).Text = "Deletion"
        ElseIf Index = 4 Then
            Opt = "fnd"
            desc.Caption = "Find"
            stbar.Panels(2).Text = "Find"
        End If
        Screen.MousePointer = 11
        SSTab1.Enabled = True
        DB.BeginTrans
''''              Frame3.ZOrder
''''              Frame3.Visible = True
''''              Buttonframe.Enabled = False
''''              listlb.Caption = "Tax Code Listing"
''''              ksldesc1.conn = connectstring
''''              ksldesc1.table = "IG_TAX"
''''              ksldesc1.listfield1 = "TAX_CODE"
''''              ksldesc1.listfield2 = "DESCRIPTION"
''''              ksldesc1.SetFocus
        LookUp.Clear = True
        LookUp.query = "select tax_code""TaxCode"",Description from ig_tax"
        LookUp.ALIGN = "2000,5000"
        LookUp.DefCol = "Description"
        LookUp.Caption = "Tax Code Listing"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Buttonframe.Enabled = True
            SSTab1.Visible = True
            Call adddelmod(BUTTON)
            Call ENABLCONTLS
            FLG = "n"
            If (Opt = "mod") Then
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select tax_code,description,abbr,st_per,entdate,user_id,sc_per,st_sl,sc_sl from ig_tax where tax_code ='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockOptimistic
                Call bindcontls
                Call ENABLCONTLS
                stbar.Panels(2).Text = "Modification"
                txtFields(0).Locked = True
                txtFields(6).Locked = True
                txtFields(8).Locked = True
                txtFields(1).SetFocus
                Frame3.Visible = False
            End If
            If Opt = "del" Then
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select tax_code,description,abbr,st_per,sc_per,st_sl,sc_sl from ig_tax where LTRIM(tax_code) ='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockOptimistic
                Call bindcontls
                Call ENABLCONTLS
                stbar.Panels(2).Text = "Deletion"
                Frame3.Visible = False
                BUTTON(9).SetFocus
            End If
            If Opt = "fnd" Then
                Set adoPrimaryRS = New Recordset
                adoPrimaryRS.Open "select tax_code,description,abbr,st_per,sc_per,st_sl,sc_sl from ig_tax where LTRIM(tax_code) ='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockOptimistic
                Call bindcontls
                'Call ENABLCONTLS
                stbar.Panels(2).Text = "Find"
                'Frame3.Visible = False
                BUTTON(9).SetFocus
                BUTTON(9).Enabled = False
            End If
        Else
            Call BUTTON_Click(10)
        End If
        Screen.MousePointer = 0
  Case 2
             'Deletion
              If Record_Exists("IG_TAX") = False Then Exit Sub
              Opt = "del"
              SSTab1.Enabled = False
              desc.Caption = "Deletion"
              stbar.Panels(2).Text = "Deletion"
              Screen.MousePointer = 11
              SSTab1.Visible = False
              DB.BeginTrans
              Frame3.ZOrder
              Frame3.Visible = True
              Buttonframe.Enabled = False
              listlb.Caption = "Tax Code Listing"
              ksldesc1.conn = connectstring
              ksldesc1.Table = "IG_TAX"
              ksldesc1.listfield1 = "TAX_CODE"
              ksldesc1.listfield2 = "DESCRIPTION"
              ksldesc1.SetFocus
              stbar.Panels(2).Text = "Select Taxcode  from the List"
              Call adddelmod(BUTTON)
              Call ENABLCONTLS
              Screen.MousePointer = 0
            
              
 Case 13
            'Listing
'            If Record_Exists("IG_TAX") = False Then Exit Sub
'            Set Rs = New Recordset
'            Rs.Open "select tax_code 'TaxCode',description'Description',abbr'Abbreviation',st_per 'SalesTax%',sc_per'Surcharge%',st_sl'ST slcode',sc_sl'SC Slcode' from ig_tax  order by tax_code", DB
'            If Rs.BOF Then
'                MsgBox "No records found for this month", vbInformation, head
'                Exit Sub
'            End If
'
'            Set Rep = New Report.ReportView
'
'            a = FreeFile
'            Dim Pg As Integer
'            Dim Co As Integer
'            Dim pl As Integer
'            pl = 55         'page length
'            Pg = 1
'            Co = 0
'           ' Open "c:\tax.txt" For Output As #a
'            Open KALFOLDERDATA & "\tax.TXT" For Output As #a
'            Call header(Pg, Co)
'            For i = 1 To Rs.RecordCount
'                Print #a, Space(5) + Padr(CStr(Rs(0)), 8, " ") & Padr(CStr(Rs(1)), 26, " ") & Padr(CStr(Rs(2)), 10, " ") & Padl(CStr(Format(Rs(3), "#0.00")), 12, " ") & Padl(CStr(Format(Rs(4), "#0.00")), 11, " ") & Space(3) & Padr(CStr(Rs(5)), 11, " ") & Padr(CStr(Rs(6)), 15, " ")
'                C = C + 1
'                    If C > 60 Then
'                        Print #a, Chr(12)
'                        Pg = Pg + 1
'                        C = 0
'                        Call header(Pg, Co)
'                    End If
'                Rs.MoveNext
'            Next
'            Print #a, Space(5) + String(89, "-")
'            Print #a, Chr(12)
'            Close #a
''            Open "c:\tax.bat" For Output As #a
''            Print #a, "cd\"
''            Print #a, "c:"
''            Print #a, "cd\"
''            Print #a, "type tax.txt > prn"
''            Close #a
''            Rep.txtfile = "c:\tax.txt"
''            Rep.Batfile = "c:\tax.bat"
'            a = FreeFile
'            Call KALBATPROCESS("tax")
Dim clsCryRpttax As New clsCrystal
  Set clsCryRpttax.cryRept = Cry_SetupTax
  clsCryRpttax.CrystalPrint
                
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
       'First
       
       desc.Caption = "Query"
        On Error GoTo GoFirstError
        adoPrimaryRS.MoveFirst
        stbar.Panels(2).Text = "First Record"
        Call FIR(BUTTON)
        Exit Sub
        Call disablcontls
        
GoFirstError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbInformation, head
        End If
        
Case 6
        'Next
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoNextError
        If Not adoPrimaryRS.EOF Then
            adoPrimaryRS.MoveNext
            stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
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
            Call NEX(BUTTON)
            adoPrimaryRS.MoveLast
            stbar.Panels(2).Text = "Last Record"
       End If
      Exit Sub
GoNextError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbCritical, head
        End If
        
Case 7
        'Previous
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoPrevError
        If Not adoPrimaryRS.BOF Then
            adoPrimaryRS.MovePrevious
            stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If
        
        If adoPrimaryRS.BOF And adoPrimaryRS.RecordCount > 0 Then
            Beep
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            adoPrimaryRS.MoveFirst
            stbar.Panels(2).Text = "First Record"
        End If
        Exit Sub
    
GoPrevError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbCritical, head
        End If
        
        
Case 8
       
        desc.Caption = "Query"
        Call disablcontls
        On Error GoTo GoLastError
        adoPrimaryRS.MoveLast
        stbar.Panels(2).Text = "Last Record"
        Call las(BUTTON)
        Exit Sub
GoLastError:
        If Err = 3021 Then
            MsgBox " No Records Found", vbCritical, head
        End If
        
         


  Case 9
       'Save
        Screen.MousePointer = 11
        If Opt = "add" Or Opt = "mod" Then
            If Trim(txtFields(0).Text) = "" Then
                   MsgBox "Taxcode cannot be empty", vbInformation, head
                   txtFields(0).SetFocus
                   Screen.MousePointer = 0
            Exit Sub
            ElseIf Trim(txtFields(1).Text) = "" Then
                   MsgBox "Description cannot be empty", vbInformation, head
                   txtFields(1).SetFocus
                   Screen.MousePointer = 0
            Exit Sub
            ElseIf Trim(txtFields(2).Text) = "" Then
                   MsgBox "Abbreviation cannot be empty", vbInformation, head
                   txtFields(2).SetFocus
                   Screen.MousePointer = 0
            Exit Sub
            ElseIf Trim(txtFields(3).Text) = "" Then
                   MsgBox "SalesTax percentage cannot be empty", vbInformation, head
                   txtFields(3).SetFocus
                   Screen.MousePointer = 0
            Exit Sub
            End If
            If Trim(txtFields(4).Text) = "" Then
                    MsgBox "Surcharge percentage cannot be empty", vbInformation, head
                    txtFields(4).SetFocus
                    Screen.MousePointer = 0
                    Exit Sub
             End If
        End If
        If Opt = "add" Then
            adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
            adoPrimaryRS("user_id") = usrid
            adoPrimaryRS.UpdateBatch adAffectAllChapters
            
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "GST Setup"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = txtFields(0).Text
            TrnLog("description") = txtFields(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
            
            
            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record(s) Saved"
            MsgBox "Record(s) Saved", vbInformation, head
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            BUTTON(0).SetFocus
            Exit Sub
         End If
         If Opt = "mod" Then
                adoPrimaryRS("entdate") = Format(Date, "yyyy-mm-dd")
                adoPrimaryRS("user_id") = usrid
                
                adoPrimaryRS.UpdateBatch adAffectAllChapters
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "GST Setup"
            TrnLog("Trans_Mod") = "Add"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = txtFields(0).Text
            TrnLog("description") = txtFields(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
                
                DB.CommitTrans
                Screen.MousePointer = 0
                stbar.Panels(2).Text = "Record(s) Saved"
                MsgBox " Record(s) Modified", vbInformation, head
                Call query_mode
                Call NEWFORM1(BUTTON, GSNO)
                Screen.MousePointer = vbArrow
                BUTTON(4).Enabled = True
                BUTTON(0).SetFocus
                Exit Sub
        End If
        If Opt = "del" Then
             On Error GoTo delerr
             Screen.MousePointer = 0
             a = MsgBox("Do you want to Delete?", vbYesNo, head)
             If a = 6 Then
             Set Rs = New Recordset
             Rs.Open "select contno from rm_cont where LTRIM(tax_code)='" & Trim(txtFields(0).Text) & "'", DB, adOpenStatic
             If Not Rs.EOF Then
             MsgBox "Tax Code Added in Contract !! you Cannot delete", vbInformation, head
             'DB.RollbackTrans
             Exit Sub
             End If
             
            Set Rs = New Recordset
             Rs.Open "select varcode from rm_var where LTRIM(taxcode)='" & Trim(txtFields(0).Text) & "'", DB, adOpenStatic
             If Not Rs.EOF Then
                MsgBox "Tax Code Added in Variety !! you Cannot delete", vbInformation, head
               ' DB.RollbackTrans
                Exit Sub
             End If
             
             
             
                DB.Execute "delete from ig_tax where LTRIM(tax_code)='" & Trim(txtFields(0).Text) & "'"
                
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "GST Setup"
            TrnLog("Trans_Mod") = "Del"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = txtFields(0).Text
            TrnLog("description") = txtFields(1).Text
            
'            TrnLog("code") = grddatagrid.Columns(0).Text
'            TrnLog("description") = grddatagrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
                
                DB.CommitTrans
                MsgBox " Record(s) Deleted", vbInformation, head
                Call query_mode
                Call NEWFORM1(BUTTON, GSNO)
                Screen.MousePointer = vbArrow
                BUTTON(0).SetFocus
                BUTTON(4).Enabled = True
                Exit Sub
        ElseIf Opt = "fnd" Then
            DB.CommitTrans
            Opt = ""
            DB.RollbackTrans
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            Screen.MousePointer = vbArrow
            BUTTON(0).SetFocus
            Exit Sub
        Else
                Opt = ""
                DB.RollbackTrans
                MsgBox "Operation Cancelled", vbInformation, head
                Call query_mode
                Call NEWFORM1(BUTTON, GSNO)
                Screen.MousePointer = vbArrow
                BUTTON(0).SetFocus
                Exit Sub
            End If
        End If
        If Opt = "fnd" Then
            DB.CommitTrans
            Opt = ""
            Call query_mode
            Call NEWFORM1(BUTTON, GSNO)
            Screen.MousePointer = vbArrow
            BUTTON(0).SetFocus
            Exit Sub
        End If
delerr:
    
    If Err = -2147217900 Then
        MsgBox "This tax code is in use cannot be deleted", vbInformation, head
        DB.RollbackTrans
        Opt = " "
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        Screen.MousePointer = 0
        BUTTON(0).SetFocus
        Exit Sub
      End If
Case 10
        If MsgBox("Do you want to Cancel?", vbYesNo, head) = vbNo Then Exit Sub
        desc.Caption = "Query"
        Screen.MousePointer = 11
        Select Case Opt
        Case "add"
              DB.RollbackTrans
              stbar.Panels(2).Text = "Operation Canceled"
        Case "mod"
              DB.RollbackTrans
              stbar.Panels(2).Text = "Operation Canceled"
        Case "del"
              DB.RollbackTrans
              stbar.Panels(2).Text = "Operation Canceled"
        Case "fnd"
              DB.RollbackTrans
              stbar.Panels(2).Text = "Operation Canceled"
        End Select
        Opt = " "
        Call query_mode
        Call cancl1(BUTTON, 41)
        Call NEWFORM1(BUTTON, GSNO)
        BUTTON(4).Enabled = True
        BUTTON(0).SetFocus ''''''''''
        Screen.MousePointer = 0
 Case 11
        
        Unload Me
End Select


Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Tax", vbInformation, head

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

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
        Set DB = New Connection
        DB.CursorLocation = adUseClient
        DB.Open connectstring
        DATLAB.Caption = Date
        Opt = "qry"
        stbar.Panels(1).Text = head
        Call query_mode
        Call NEWFORM1(BUTTON, GSNO)
        SSTab1.Enabled = False
        BUTTON(4).Enabled = True
intervalMinutes = -1

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Tax", vbInformation, head
        
End Sub
Public Sub query_mode()
On Error GoTo query_mode_Error

        Opt = " "
        Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open "select tax_code,description,abbr,st_per,sc_per,st_sl,sc_sl from ig_tax  order by tax_code", DB, adOpenStatic, adLockOptimistic
         If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
         End If
         Call NEWFORM1(BUTTON, GSNO)
         Call bindcontls
         desc.Caption = "Query"
         Buttonframe.Enabled = True
         If adoPrimaryRS.RecordCount = 0 Then
                BUTTON(5).Enabled = False
                BUTTON(6).Enabled = False
                BUTTON(7).Enabled = False
                BUTTON(9).Enabled = False
                BUTTON(8).Enabled = False
                
        Else
            BUTTON(5).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(8).Enabled = True
            BUTTON(9).Enabled = False
            BUTTON(10).Enabled = False
            BUTTON(11).Enabled = True
        End If
        
        
        'Call query(BUTTON)
        Call NEWFORM1(BUTTON, GSNO)
        Call disablcontls
        SSTab1.Enabled = False
        stbar.Panels(2).Text = "Total Records : " & adoPrimaryRS.RecordCount


Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure QUERY_MODE of Form Tax", vbInformation, head
        
End Sub

Public Sub bindcontls()
    On Error Resume Next
        Dim c As TextBox
       For Each c In Me.txtFields
          Set c.DataSource = adoPrimaryRS
       Next
End Sub

Public Sub disablcontls()
On Error Resume Next
Dim c As TextBox
        For Each c In Me.Controls
               c.Locked = True
        
        Next
End Sub
Public Sub ENABLCONTLS()
   Frame1.Enabled = True
    Dim c As TextBox
        For Each c In Me.txtFields
           c.Locked = False
        
    Next
    End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error GoTo Form_Resize_Error

stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)

Exit Sub
Form_Resize_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Resize of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

        stbar.Panels(2).Text = ""
        Buttonframe.Enabled = True
        Frame3.Visible = False
        SSTab1.Visible = True
        DB.RollbackTrans
        Call query_mode
        BUTTON(0).SetFocus
        BUTTON(4).Enabled = True
        If Opt <> "" Then
        stbar.Panels(2).Text = "Total Records : " & adoPrimaryRS.RecordCount
        End If

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lovcancel_Click of Form Tax", vbInformation, head
Screen.MousePointer = 0
        
End Sub

Private Sub lovok_Click()
'    On Error Resume Next
On Error GoTo lovok_Click_Error

    Buttonframe.Enabled = True
    SSTab1.Visible = True
   If (Opt = "mod") And (ksldesc1.listfield1 <> "glcode") Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select tax_code,description,abbr,st_per,entdate,user_id,sc_per,st_sl,sc_sl from ig_tax where tax_code ='" & ksldesc1.Code & "'", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Call ENABLCONTLS
        stbar.Panels(2).Text = "Modification"
        txtFields(0).Locked = True
        txtFields(6).Locked = True
        txtFields(8).Locked = True
        txtFields(1).SetFocus
        Frame3.Visible = False
   End If
   If Opt = "del" Then
        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select tax_code,description,abbr,st_per,sc_per,st_sl,sc_sl from ig_tax where LTRIM(tax_code) ='" & ksldesc1.Code & "'", DB, adOpenStatic, adLockOptimistic
        Call bindcontls
        Call ENABLCONTLS
        stbar.Panels(2).Text = "Deletion"
        Frame3.Visible = False
        BUTTON(9).SetFocus
    End If
    If (Opt = "add" Or Opt = "mod") And ksldesc1.listfield1 = "glcode" Then
            txtFields(tabIndex).Text = Trim(ksldesc1.Code)
            txtFields(tabIndex + 1).Text = Trim(ksldesc1.Description)
            txtFields(tabIndex + 1).SetFocus
            FLG = "n"
            Frame3.Visible = False
            txtFields(7).SetFocus
    End If


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form Tax", vbInformation, head
    
End Sub

Private Sub SSTab1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo SSTab1_KeyDown_Error

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
SSTab1_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SSTab1_KeyDown of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Change(Index As Integer)
intervalMinutes = -1
    Select Case Index
        Case 5, 7
            txtFields(Index + 1).Text = getMasterName("glhead", "fa_glmas", "glcode", txtFields(Index).Text)
    End Select
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

txtFields(Index).BackColor = &HC0FFC0
If Opt = "add" Or Opt = "mod" Then

    Select Case Index
        Case 0
                stbar.Panels(2).Text = "Enter the Taxcode in maximum of 3 character"
        Case 1
                stbar.Panels(2).Text = "Enter the Description in maximum of 25 character"
        Case 2
                stbar.Panels(2).Text = "Enter the Abbreviation in maximum of 5 character"
        Case 3
                stbar.Panels(2).Text = "Enter the sales tax percentage with 3 integers and 2 decimals "
        Case 4
                stbar.Panels(2).Text = "Enter surchage percentage with 3 integers and 2 decimals"
        Case 5
                stbar.Panels(2).Text = "Enter slcode in maximum of 6 character"
        Case 7
                stbar.Panels(2).Text = "Enter slcode in maximum of 6 character"
    End Select
End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtfields_LostFocus(Index As Integer)
On Error GoTo txtfields_LostFocus_Error

txtFields(Index).BackColor = &HFFFFFF
If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0 To 2
       txtFields(Index).Text = UCase(txtFields(Index).Text)
Case 7
       txtFields(Index).Text = UCase(txtFields(Index).Text)
       
Case 8

    End Select
End If
If Index = 7 Then
If Opt = "add" Or Opt = "mod" Then
End If
End If

Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_LostFocus of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo txtfields_KeyPress_Error

Select Case Index
    Case 0
        ToAlphaNumber txtFields(0), 3, KeyAscii
        ToUpCase txtFields(0), KeyAscii
        If KeyAscii = 40 Or KeyAscii = 41 Or KeyAscii = 95 Or KeyAscii = 44 Or KeyAscii = 45 Or KeyAscii = 46 Or KeyAscii = 47 Then
            KeyAscii = 0
        End If
    Case 3
        tonum txtFields(Index), 3, KeyAscii
        'tonumary txtfields(Index), 3, KeyAscii, 2
    Case 4
        Call tonum(txtFields(Index), 3, KeyAscii)
End Select

Exit Sub
txtfields_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_KeyPress of Form Tax", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub TXTFIELDS_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If FLG = "n" Then
If Opt = "add" Or Opt = "mod" Then
    Select Case Index
    
        Case 0
                    If Opt = "add" Then
                    Set Rs = New Recordset
                    Rs.Open "select count(*) from ig_tax where tax_code='" & Trim(txtFields(0).Text) & "'", DB
                    If Rs(0) > 0 Then
                        MsgBox "This taxcode already defined", vbInformation, head
                        Screen.MousePointer = 0
                        txtFields(0).Text = ""
                        Cancel = True
                        Exit Sub
                    End If
                    End If
    
       Case 5, 7
                If Table_Exists("fa_glmas") = True Then
                    Set Rs = New Recordset
                    Rs.Open "SELECT COUNT(*) FROM  fa_glmas WHERE glcode='" & Trim(txtFields(Index).Text) & "'", DB, adOpenDynamic, adLockBatchOptimistic
                    If Rs(0) = 0 Then
'''                        Frame3.Visible = True
'''                        Frame3.ZOrder
'''                        Buttonframe.Enabled = False
'''                        listlb.Caption = "Taxcode  Listing"
'''                        ksldesc1.conn = connectstring
'''                        ksldesc1.table = "FA_GLMAS"
'''                        ksldesc1.listfield1 = "glcode"
'''                        ksldesc1.listfield2 = "glhead"
'''                        tabIndex = Index
'''                        flg = "y"
'''                        stbar.Panels(2).Text = "Select Taxcode from the list"
'''                        ksldesc1.SetFocus
                        stbar.Panels(2).Text = "Select GLcode from the list"
                        LookUp.Clear = True
                        LookUp.query = "SELECT GLCODE,GLHEAD FROM FA_GLMAS"
                        LookUp.DefCol = "GLHEAD"
                        LookUp.Caption = "GLcode Listing"
                        LookUp.ALIGN = "2000,5000"
                        LookUp.Show vbModal
                        If LookUp.Cancel = False Then
                            txtFields(Index).Text = Trim(LookUp.Fields(0))
                            txtFields(Index + 1).Text = Trim(LookUp.Fields(1))
                            txtFields(Index + 1).SetFocus
                            FLG = "n"
                            txtFields(7).SetFocus
                        End If
                    Else
                        Set rs1 = New Recordset
                        rs1.Open "SELECT GLHEAD FROM FA_GLMAS WHERE GLCODE='" & txtFields(Index).Text & "'", DB, adOpenDynamic, adLockBatchOptimistic
                        txtFields(Index + 1) = rs1("GLHEAD")
                    End If
                End If
            
                   
 End Select
End If

If Opt = "add" Or Opt = "mod" Then

    Select Case Index
            Case 0
                    If Trim(txtFields(0).Text) = "" Then
                        MsgBox "Tax Code cannot be empty ", vbInformation, head
                        txtFields(0).Text = ""
                        Cancel = True
                    End If

            Case 1
                   If Trim(txtFields(1).Text) = "" Then
                        MsgBox "Description cannot be empty", vbInformation, head
                        txtFields(1).Text = ""
                        Cancel = True
                    End If
            Case 2
                   If Trim(txtFields(2).Text) = "" Then
                        MsgBox "Abbreviation cannot be empty", vbInformation, head
                        txtFields(2).Text = ""
                        Cancel = True
                    End If
            Case 3
                   If Trim(txtFields(3).Text) = "" Then
                        MsgBox "SalesTax % cannot be empty", vbInformation, head
                        txtFields(3).Text = 0
                        Cancel = True
                    End If
'                    If Trim(txtFields(3).Text) <> "" Then
'                    If CInt(Trim(txtFields(3).Text)) <= 0 Then
'                        MsgBox "SalesTax % cannot be  zero", vbInformation, head
'                        txtFields(3).Text = ""
'                        Cancel = True
''                    ElseIf CInt(txtfields(3).Text) > 99.99 Then
''                        MsgBox "Tax Percenteage Cannot be grater than 99.99", vbInformation, head
''                        txtfields(3).Text = ""
''                        Cancel = True
'                    End If
                    'End If
                    
            Case 4
                   If Trim(txtFields(4).Text) = "" Then
                        MsgBox "Sales surchage cannot be empty", vbInformation, head
                        txtFields(4).Text = 0
                        Cancel = True
                    End If
'                    If Trim(txtFields(4).Text) <> "" Then
'                    If Val(txtFields(4).Text) <= 0 Then
'                        MsgBox "Salessurcharge % cannot be  zero", vbInformation, head
'                        txtFields(4).Text = ""
'                        Cancel = True
''                    ElseIf CInt(txtfields(4).Text) > 99.99 Then
''                        MsgBox "Salessurchage Percenteage Cannot be grater than 99.99", vbInformation, head
''                        txtfields(4).Text = ""
''                        Cancel = True
'                    End If
                   ' End If
        End Select
End If

End If

If Opt = "add" Or Opt = "mod" Then
    If (txtFields(5).Enabled = False) And (txtFields(7).Enabled = False) Then
        BUTTON(9).SetFocus
    End If
End If

If Opt = "add" Or Opt = "mod" Then
If Index = 8 Then
    'BUTTON(9).SetFocus
End If
End If



Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_Validate of Form Tax", vbInformation, head

End Sub


Public Sub header(pg As Integer, c As Integer)
            Dim Str As String
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & CENTRE(divname, 89, " ") & Chr(27) & "F"
            Print #a,
            Str = CStr(pdate) + Space(2)
            Print #a, Space(5) + "TAXCODE LISTING" + Space(53) + Str + "Pg.No :" + Space(1) + CStr(pg)
            
            Set Rs = New Recordset
            Rs.Open "select tax_code 'TaxCode',description'Description',abbr'Abbreviation',st_per 'SalesTax%',sc_per'Surcharge%',isnull(st_sl,' ')'ST slcode',isnull(sc_sl,' ')'SC Slcode' from ig_tax  order by tax_code", DB
            If Rs.BOF Then
                MsgBox "No records found for this month", vbInformation, head
                Close #a
                Exit Sub
            End If
            
            Print #a, Space(5) + String(89, "-")
            Print #a, Space(5) + "TaxCode Description               Abbreviation SalesTax% Surcharge%   STslcode   SCSlcode "
            Print #a, Space(5) + String(89, "-")

'Open "c:\unit.txt" For Output As #a
'          Print #a,
'          Print #a, Space(10) + Space(Round((120 - 2 * Len(divname)) / 2)) + Chr(14) + divname + Space(Round((89 - 2 * Len(divname)) / 2))
'          Print #a, Space(120)
'          STR = CStr(pdate) + Space(2)
'          Print #a, "Unit Listing" + Space(87) + STR + "Pg.No :" + Space(1) + CStr(pg)

End Sub


