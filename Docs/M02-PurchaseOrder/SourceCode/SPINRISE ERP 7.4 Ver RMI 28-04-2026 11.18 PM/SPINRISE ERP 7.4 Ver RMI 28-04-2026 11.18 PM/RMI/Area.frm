VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL[1].OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{93E07915-5FBB-11D5-87AB-00C0A8562C82}#1.0#0"; "KSLDESC.ocx"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Area 
   Caption         =   "City"
   ClientHeight    =   6000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8970
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6000
   ScaleWidth      =   8970
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   240
      Top             =   6855
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Buttonframe 
      Height          =   675
      Left            =   -1
      TabIndex        =   23
      Top             =   -105
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   13
         Left            =   5280
         Picture         =   "Area.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   34
         ToolTipText     =   "Crystal (Ctrl Y)"
         Top             =   135
         Width           =   510
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":0442
         Height          =   510
         Index           =   6
         Left            =   2670
         Picture         =   "Area.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Next Record (Ctrl N)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":0BD9
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Area.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add (Ctrl +)"
         Top             =   135
         UseMaskColor    =   -1  'True
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":1276
         Height          =   510
         Index           =   5
         Left            =   2160
         Picture         =   "Area.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record (Ctrl F)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":1A25
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
         Picture         =   "Area.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete (Ctrl -)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   570
         Picture         =   "Area.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify (Ctrl M)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1620
         Picture         =   "Area.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List (Ctrl L)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":2AE6
         Height          =   510
         Index           =   7
         Left            =   3195
         Picture         =   "Area.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Previous Record (Ctrl O)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":3280
         Height          =   510
         Index           =   11
         Left            =   5805
         Picture         =   "Area.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Exit (Ctrl Q)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":3A5F
         Height          =   510
         Index           =   9
         Left            =   4245
         Picture         =   "Area.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Save (Ctrl S)"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         CausesValidation=   0   'False
         DownPicture     =   "Area.frx":410B
         Height          =   510
         Index           =   10
         Left            =   4770
         Picture         =   "Area.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel (Ctrl Z) "
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Area.frx":4791
         Height          =   510
         Index           =   8
         Left            =   3720
         Picture         =   "Area.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Last Record (Ctrl E)"
         Top             =   135
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
         Left            =   10440
         TabIndex        =   25
         Top             =   240
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6675
         TabIndex        =   24
         Top             =   240
         Width           =   1035
      End
   End
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawStyle       =   2  'Dot
      DrawWidth       =   17015
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   0
      ScaleHeight     =   300
      ScaleWidth      =   8970
      TabIndex        =   17
      Top             =   5400
      Width           =   8970
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   26
      Top             =   5700
      Width           =   8970
      _ExtentX        =   15822
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
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "16/12/2019"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   2595
      Left            =   1500
      TabIndex        =   28
      Top             =   1440
      Width           =   6600
      _ExtentX        =   11642
      _ExtentY        =   4577
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Area.frx":4F3D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2415
         Left            =   120
         TabIndex        =   29
         Top             =   45
         Width           =   6345
         Begin VB.TextBox txtfields 
            DataField       =   "area_code"
            Height          =   330
            Index           =   0
            Left            =   1050
            MaxLength       =   4
            TabIndex        =   11
            Top             =   375
            Width           =   840
         End
         Begin VB.TextBox txtfields 
            DataField       =   "c.name"
            Height          =   330
            Index           =   5
            Left            =   1830
            TabIndex        =   16
            Top             =   1800
            Width           =   4185
         End
         Begin VB.TextBox txtfields 
            DataField       =   "country_code"
            Height          =   330
            Index           =   4
            Left            =   1050
            TabIndex        =   15
            Top             =   1800
            Width           =   765
         End
         Begin VB.TextBox txtfields 
            DataField       =   "b.name"
            Height          =   330
            Index           =   3
            Left            =   1830
            TabIndex        =   14
            Top             =   1320
            Width           =   4185
         End
         Begin VB.TextBox txtfields 
            DataField       =   "state_code"
            Height          =   330
            Index           =   2
            Left            =   1050
            TabIndex        =   13
            Top             =   1320
            Width           =   765
         End
         Begin VB.TextBox txtfields 
            DataField       =   "name"
            Height          =   330
            Index           =   1
            Left            =   1050
            MaxLength       =   35
            TabIndex        =   12
            Top             =   840
            Width           =   4980
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Area Code"
            Height          =   195
            Index           =   0
            Left            =   225
            TabIndex        =   33
            Top             =   405
            Width           =   750
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Country"
            Height          =   195
            Index           =   3
            Left            =   225
            TabIndex        =   32
            Top             =   1855
            Width           =   540
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "State"
            Height          =   195
            Index           =   2
            Left            =   225
            TabIndex        =   31
            Top             =   1405
            Width           =   375
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Name"
            Height          =   195
            Index           =   1
            Left            =   240
            TabIndex        =   30
            Top             =   905
            Width           =   420
         End
      End
   End
   Begin VB.Frame Frame3 
      Height          =   5100
      Left            =   1560
      TabIndex        =   21
      Top             =   1440
      Visible         =   0   'False
      Width           =   8865
      Begin VB.CommandButton lovcancel 
         Cancel          =   -1  'True
         Caption         =   "&Cancel"
         DownPicture     =   "Area.frx":4F59
         Height          =   615
         Left            =   4740
         Picture         =   "Area.frx":533B
         Style           =   1  'Graphical
         TabIndex        =   20
         Top             =   4080
         Width           =   1185
      End
      Begin VB.CommandButton lovok 
         Caption         =   "&OK"
         Default         =   -1  'True
         DownPicture     =   "Area.frx":570E
         Height          =   615
         Left            =   3000
         Picture         =   "Area.frx":5AF4
         Style           =   1  'Graphical
         TabIndex        =   19
         Top             =   4080
         Width           =   1185
      End
      Begin KSLDESCOCX.Ksldesc Ksldesc1 
         Height          =   3255
         Left            =   840
         TabIndex        =   18
         Top             =   600
         Width           =   7215
         _ExtentX        =   12726
         _ExtentY        =   5741
         ForeColor       =   -2147483635
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
         Left            =   15
         TabIndex        =   27
         Top             =   150
         Width           =   8805
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "City"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   1530
      TabIndex        =   22
      Top             =   885
      Width           =   525
   End
End
Attribute VB_Name = "Area"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c, pg As Integer
Dim co As Integer
Dim a As Integer
Dim cont As Integer
Dim rep As Report.ReportView
Dim FLG As String
Dim Rs As Recordset
Dim Str As String
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

On Error GoTo Form_KeyDown_Error

    If KeyCode = 13 Then
        SendKeys ("{tab}")
    ElseIf KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        If BUTTON(4).Enabled Then Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        If BUTTON(12).Enabled Then Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
'        If BUTTON(13).Enabled Then Call BUTTON_Click(13)
    End If
    

Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form City", vbInformation, head
End Sub

Private Sub BUTTON_Click(Index As Integer)
'On Error GoTo BUTTON_Click_Error

Select Case Index
Case 0
'addition
        Opt = "add"
        desc.Caption = "Addition"
        DB.BeginTrans
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select a.area_code,a.name,a.state_code,a.country_code,a.user_id,a.entdate from ig_area a where 1=2", DB, adOpenStatic, adLockOptimistic
        'adoPrimaryRS.Open "select a.area_code,a.name,a.state_code,b.name,a.country_code,c.name from ig_area a,ig_state b,ig_country c where a.state_code=b.state_code and a.country_code=c.country_code order by a.area_code", db, adOpenStatic, adLockOptimistic
        Call ENABLCONTLS
        Call bindcontls
        adoprimaryrs.AddNew
        stbar.Panels(2).Text = "Addition"
        Call adddelmod(BUTTON)
        txtfields(3).Locked = True
        txtfields(5).Locked = True
        SSTab1.Enabled = True
        
        Frame1.Enabled = True
        txtfields(0).Enabled = True
        txtfields(0).SetFocus
Case 1
'modification
        'Opt = "mod"

       If Record_Exists("ig_area") = False Then Exit Sub
        Opt = "mod"
        desc.Caption = "Modification"
        'Screen.MousePointer = 11
        'SSTab1.Visible = False
        ''DB.BeginTrans
'        Frame3.Visible = True
'        Frame3.ZOrder
        ''Buttonframe.Enabled = False
'        listlb.Caption = "Area Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_area"
'        Ksldesc1.listfield1 = "area_code"
'        Ksldesc1.listfield2 = "name"
'        Ksldesc1.SetFocus
        DB.BeginTrans
        Call adddelmod(BUTTON)
        Buttonframe.Enabled = True
        Call ENABLCONTLS
        txtfields(0).Locked = True
        stbar.Panels(2).Text = "Select  City Code  from the List"
        Call LOOKUPMODIFY
        Screen.MousePointer = 0
                
Case 2
'Deletion
    'Opt = "del"
    
    If Record_Exists("ig_area") = False Then Exit Sub
        Opt = "del"
        desc.Caption = "Deletion"
'        Screen.MousePointer = 11
'        SSTab1.Visible = False
        stbar.Panels(2).Text = "Select City from the List"

'         Frame3.Visible = True
'        Frame3.ZOrder
        ''Buttonframe.Enabled = False
'        listlb.Caption = "Area Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_area"
'        Ksldesc1.listfield1 = "area_code"
'        Ksldesc1.listfield2 = "name"
'        Ksldesc1.SetFocus
        Call LOOKUPDELETE
        Screen.MousePointer = 0

    
    Case 3
    Set rep = New Report.ReportView
    a = FreeFile
    pg = 1
    co = 0
    
          Set Rs = New Recordset
       '   Rs.Open "select a.area_code,a.name,isnull(b.name,'') as name,isnull(c.name,'') as name from ig_area a,ig_state b,ig_country c where a.state_code*=b.state_code and a.country_code*=c.country_code order by a.area_code", DB, adOpenStatic, adLockOptimistic
        ' Added on 28-08-19 by mariyaiya
          Rs.Open "select a.area_code,a.name,isnull(b.name,'') as name,isnull(c.name,'') as name from ig_area a left join ig_state b on  a.state_code=b.state_code left join ig_country c on  a.country_code=c.country_code order by a.area_code ", DB, adOpenStatic, adLockOptimistic

          If Rs.BOF Then
          MsgBox "No records found for this month", vbInformation, head
          Close #f
          Exit Sub
          End If
          Call header(pg, co)
          
          For i = 1 To Rs.RecordCount
          Print #a, Space(5) + Rs(0) & Space(10 - Len(Rs(0))) + Rs(1) & Space(36 - Len(Rs(1))) + Rs(2) + Space(35 - Len(Rs(2))) + Rs(3)
          '+ Space(35 - Len(rs(3)))
          '+ Space(20 - Len(rs(3)))
          c = c + 1
          
          If c > 53 Then
          pg = pg + 1
          c = 0
          Call header(pg, co)
          End If
          
          Rs.MoveNext
          Next
          Print #a, Space(5) + String(93, "-")
          Print #a, Chr(12)
         Close #a
          Open "c:\cust.bat" For Output As #a
      Print #a, "cd\"
      Print #a, "c:"
      Print #a, "cd\"
      Print #a, "type cust.txt > prn"
    Close #a
    rep.txtfile = "c:\cust.txt"
    rep.Batfile = "c:\cust.bat"
Case 13
'Crystal Print
Dim clsCryRptcity As New clsCrystal
  Set clsCryRptcity.cryRept = Cry_SetupCity
  clsCryRptcity.CrystalPrint
                
  CrystalReport1.Reset
  CrystalReport1.Connect = connectstring
  CrystalReport1.ReportFileName = KALFOLDERDATA & "RepPO.rpt"

  
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
        adoprimaryrs.MoveFirst
        stbar.Panels(2).Text = "First record"
        Call FIR(BUTTON)
        Exit Sub

GoFirstError:

            MsgBox " No Records ", vbInformation, head
            
Case 6
'next
          desc.Caption = "Query"

        On Error GoTo GoNextError

        If Not adoprimaryrs.EOF Then
            adoprimaryrs.MoveNext
            stbar.Panels(2).Text = "Record No :" & adoprimaryrs.AbsolutePosition
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True

        End If

        If adoprimaryrs.EOF And adoprimaryrs.RecordCount > 0 Then
            Beep
            BUTTON(6).Enabled = False
            BUTTON(8).Enabled = False
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            adoprimaryrs.MoveLast
            stbar.Panels(2).Text = "Last record"


        End If

        Exit Sub

GoNextError:

       MsgBox " No Records Found", vbInformation, head



Case 7
 'previous
       desc.Caption = "Query"

        On Error GoTo GoPrevError

        If Not adoprimaryrs.BOF Then

            adoprimaryrs.MovePrevious
            stbar.Panels(2).Text = "Record No :" & adoprimaryrs.AbsolutePosition
            BUTTON(5).Enabled = True
            BUTTON(7).Enabled = True
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
        End If

        If adoprimaryrs.BOF And adoprimaryrs.RecordCount > 0 Then
            Beep
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            adoprimaryrs.MoveFirst
            stbar.Panels(2).Text = "First Record"
        End If

        Exit Sub

GoPrevError:

        MsgBox " No Records Found", vbCritical, head


Case 8
'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoprimaryrs.MoveLast
         Call las(BUTTON)
         stbar.Panels(2).Text = "Last Record"
         Exit Sub
GoLastError:
       MsgBox " No Records Found", vbCritical, head



Case 9
'Save
        
 
    If txtfields(0).Text = "" Then
        MsgBox "Please Enter City code", vbInformation, head
        txtfields(0).SetFocus
        Exit Sub
    End If
  
    If txtfields(1).Text = "" Then
        MsgBox "Please Enter City name ", vbInformation, head
        txtfields(1).SetFocus
        Exit Sub
    End If
    If Trim(txtfields(2).Text) = "" Then
        MsgBox "Please Enter State Code ", vbInformation, head
        txtfields(2).SetFocus
        Exit Sub
    End If
    If txtfields(4).Text = "" Then
        MsgBox "Please Enter Country Code ", vbInformation, head
        txtfields(4).SetFocus
        Exit Sub
    End If
          

On Error GoTo l1:
        
        Screen.MousePointer = 11

        If Opt = "add" Then
            adoprimaryrs("user_id") = usrid
            adoprimaryrs("entdate") = Format(Date, "yyyy-mm-dd")
            adoprimaryrs("name") = Trim(txtfields(1).Text)
            adoprimaryrs("state_Code") = Trim(txtfields(2).Text)
            adoprimaryrs.UpdateBatch adAffectAll
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox " Record Saved Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Saved Successfully"
            Opt = " "
            Call Query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Exit Sub
        End If
        If Opt = "mod" Then
           Set rsval = New Recordset
            rsval.Open "select slname from fa_slmas where city='" & txtfields(1).Text & "'", DB, adOpenStatic
            If Not rsval.EOF Then
                MsgBox "You cannot Delete!!! dependencies exist", vbInformation, head
                Exit Sub
            End If
        
            adoprimaryrs("name") = Trim(txtfields(1).Text)
            adoprimaryrs("state_Code") = Trim(txtfields(2).Text)
            adoprimaryrs("country_code") = Trim(txtfields(4).Text)
            adoprimaryrs("user_id") = usrid
            adoprimaryrs("entdate") = Format(Date, "yyyy-mm-dd")
            adoprimaryrs.UpdateBatch adAffectAll
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record Modified Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Modified Successfully"
            Opt = " "
            Call Query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Exit Sub
        End If
      If Opt = "del" Then
        On Error GoTo delerr
        a% = MsgBox("Do you want to delete?", vbYesNo, head)
             
        If a = 6 Then
          Set rsval = New Recordset
          rsval.Open "select slname from fa_slmas where city='" & txtfields(1).Text & "'", DB, adOpenStatic
          If Not rsval.EOF Then
          MsgBox "You cannot Delete!!! dependencies exist", vbInformation, head
          Exit Sub
          End If
        
             DB.BeginTrans
            DB.Execute ("delete from ig_area where area_code='" & txtfields(0).Text & "'")
            DB.CommitTrans
            Screen.MousePointer = 0
            MsgBox "Record Deleted Successfully", vbInformation, head
            stbar.Panels(2).Text = "Record Deleted Successfully"
            Opt = " "
            Call Query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
        Else
            Screen.MousePointer = 0
            MsgBox "Deletion cancelled", vbInformation, head
            DB.CommitTrans
            Opt = " "
            Call Query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Screen.MousePointer = 0
            Exit Sub
                                
        End If
    End If
delerr:
    If Err.Number = -2147217900 Then
    MsgBox "This code is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If
    
    
    If CStr(Mid$(Err.Description, InStr(Err.Description, "ORA") + 4, 5)) = "02292" Then
        MsgBox "This Code is in use.Cannot delete record.", vbInformation, head
        Opt = "del"
        BUTTON_Click (10)
    End If

Case 10
    'CANCEL
    On Error Resume Next

        desc.Caption = "Query"
        Screen.MousePointer = 11

        Select Case Opt
        Case "mod"
            DB.RollbackTrans

        Case "add"
            DB.RollbackTrans

        Case "del"
            DB.RollbackTrans
        End Select

        Screen.MousePointer = 0
        stbar.Panels(2).Text = "Operation Cancelled"
        Opt = " "
        Call Query_mode
'        Call cancl(BUTTON, 63)
         BUTTON(0).SetFocus
         
Case 11
    'EXIT
    Reset
Unload Me
End Select
Exit Sub
deler:
       If Err = -2147217900 Then
        MsgBox "This code cannot be deleted as dependencies exist ", vbInformation, head
        Screen.MousePointer = 0
       ElseIf Err = -2147217842 Then
        'MsgBox "Empty Record Cannot be Saved", vbInformation, head
       If grdDataGrid.Col = 0 And IsNull(grdDataGrid.Columns(0).Text) Then
            MsgBox "Empty Record Cannot be Saved", vbInformation, head
            DB.RollbackTrans
            Call Query_mode
       Else
             MsgBox "Please Enter Description ", vbInformation, head
             grdDataGrid.Col = 1
             Opt = tmp
       End If
        Screen.MousePointer = 0
        grdDataGrid.SetFocus
       Else
        Opt = "add"
        Screen.MousePointer = 0
        MsgBox "This Code already exists", vbInformation, head
    st = "B"
    grdDataGrid.Col = 0
    End If
l1:
    MsgBox Err.Description, vbInformation, head

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form City", vbInformation, head

End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
DB.RollbackTrans
Buttonframe.Enabled = True
Opt = " "
Call Query_mode
BUTTON(0).Enabled = True

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovcancel_Click of Form City", vbInformation, head
End Sub

Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

Frame3.Visible = False
    Buttonframe.Enabled = True
    SSTab1.Visible = True
    If Opt = "add" Or Opt = "mod" Or Opt = "del" Then
        Select Case Ksldesc1.listfield1
        Case "area_code"
            txtfields(0).Text = Ksldesc1.Code
            txtfields(1).Text = Ksldesc1.Description
            
        Call Query_mode
            txtfields(0).Locked = True
        Case "state_code"
             txtfields(2).Text = Ksldesc1.Code
             txtfields(3).Text = Ksldesc1.Description
             txtfields(4).SetFocus
        Case "country_code"
        txtfields(4).Text = Ksldesc1.Code
             txtfields(5).Text = Ksldesc1.Description
             stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button"
             BUTTON(9).SetFocus
        End Select
        End If

Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form City", vbInformation, head

End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

 Call buttonToolTip  ' Button ToolTip


  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open connectstring
  
    desc.Caption = "query"
    DATLAB.Caption = pdate
    Opt = "qry"
  stbar.Panels(1).Text = head
 
 
Call Query_mode

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form City", vbInformation, head

End Sub

Private Sub Form_Resize()
  On Error Resume Next
stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
'This will resize the grid whef the form is resized
'SSTab1.Width = Me.Width - 3255
'SSTab1.Height = Me.Height - 2910
  
   End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

  Screen.MousePointer = vbDefault

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form City", vbInformation, head
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
    
On Error GoTo adoPrimaryRS_MoveComplete_Error

  If Opt <> "add" Then
    stbar.Panels(2).Text = "Record " & CStr(adoprimaryrs.AbsolutePosition) & " / " & CStr(adoprimaryrs.RecordCount)
  End If
'  If adoPrimaryRS.RecordCount = 0 Then
'        stbar.Panels(2).Text = "No Records Found"
'    End If

Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form City", vbInformation, head
End Sub
Public Sub Query_mode()
On Error GoTo query_mode_Error

If Opt = " " Or Opt = "qry" Then
        Set adoprimaryrs = New Recordset
        adoprimaryrs.Open "select Top 1 a.area_code,a.name,a.state_code,b.name,a.country_code,c.name from ig_area a,ig_state b,ig_country c where a.state_code=b.state_code and a.country_code=c.country_code order by a.area_code", DB, adOpenStatic, adLockOptimistic
        'adoPrimaryRS.Open "select a.area_code,a.name,a.state_code,a.country_code,a.user_id,a.entdate from ig_area a where 1=2", db, adOpenStatic, adLockOptimistic
        Call bindcontls
        desc.Caption = "Query"
        If adoprimaryrs.RecordCount > 0 Then
        Call NEWFORM1(BUTTON, GSNO)
        
        Else
        'Call norecfound(BUTTON, 63)
        End If
        Call disablcontls
        SSTab1.Enabled = False
        Frame1.Enabled = False

        End If
        If Opt = "mod" Then
            Set adoprimaryrs = New Recordset
            adoprimaryrs.Open "select a.area_code,a.name,a.state_code,a.country_code,a.user_id,a.entdate from ig_area a where a.area_code='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Call ENABLCONTLS
            Call bindcontls
            SSTab1.Enabled = True
        
        Frame1.Enabled = True
            txtfields(1).SetFocus
             End If
        
        If Opt = "del" Then
            Set adoprimaryrs = New Recordset
            'adoPrimaryRS.Open "select a.area_code,a.name,a.state_code,a.country_code from ig_area a where a.area_code='" & Trim(Ksldesc1.code) & "' and a.name='" & Trim(Ksldesc1.Description) & "'", DB, adOpenStatic, adLockBatchOptimistic
            adoprimaryrs.Open "select a.area_code,a.name,a.state_code,a.country_code from ig_area a where a.area_code='" & Trim(txtfields(0).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            Call disablcontls
            Call adddelmod(BUTTON)
            stbar.Panels(2).Text = "Choose either SAVE or CANCEL"
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If

Exit Sub
query_mode_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure query_mode of Form City", vbInformation, head
End Sub


Private Sub ksldesc1_GotFocus()
On Error GoTo ksldesc1_GotFocus_Error

lovok.Default = True

Exit Sub
ksldesc1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ksldesc1_GotFocus of Form City", vbInformation, head
End Sub

Public Sub header(pg As Integer, c As Integer)
On Error GoTo header_Error

    Close #a
    a = FreeFile
    Open "c:\cust.txt" For Output As #a
    Print #a,
    Print #a, Space(5) & Chr(27) & "E" & CENTRE(divname, 93, " ") & Chr(27) & "F"
    Str = CStr(pdate) + Space(2)
    Print #a, Space(5) + "CITY LISTING" + Space(58) + "Dt: " & Str + "Pg.:" + Padl(CStr(pg), 3, " ")
    Print #a, Space(5) + String(93, "-")
    Print #a, Space(5) + "CITY CODE NAME                                STATE NAME                         COUNTRY NAME "
    Print #a, Space(5) + String(93, "-")

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form City", vbInformation, head

End Sub


Public Sub bindcontls()
On Error Resume Next
  Dim oText As TextBox
  'Binding  the text boxes to the data source
   For Each oText In Me.txtfields
   Set oText.DataSource = adoprimaryrs
  Next
End Sub

Public Sub ENABLCONTLS()
Dim X As TextBox
On Error GoTo ENABLCONTLS_Error

For Each X In Me.txtfields
    X.Locked = False
Next

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form City", vbInformation, head
End Sub
Public Sub disablcontls()
Dim tb As TextBox
On Error GoTo disablcontls_Error

For Each tb In Me.txtfields
    tb.Locked = True
Next

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form City", vbInformation, head
End Sub

Private Sub txtfields_Change(Index As Integer)
On Error GoTo txtfields_Change_Error
    'If Opt = "mod" Or Opt = "qry" Then
    Select Case Index
    Case 2
    Set Rs = New Recordset
    Rs.Open "select * from  ig_state where state_code='" & Trim(txtfields(2).Text) & "'", DB, adOpenDynamic, adLockOptimistic
    If (txtfields(2).Text <> "") And Rs.RecordCount > 0 Then
            txtfields(3).Text = Rs(1)
    Else
            txtfields(2).Text = ""
            txtfields(3).Text = ""
    End If
    Case 4
    Set Rs = New Recordset
    Rs.Open "select * from  ig_country where country_code='" & Trim(txtfields(4).Text) & "'", DB, adOpenDynamic, adLockOptimistic
    If (txtfields(4).Text <> "") And Rs.RecordCount > 0 Then
    
            txtfields(5).Text = Rs(1)
    Else
            txtfields(4).Text = ""
            txtfields(5).Text = ""
    End If
    End Select
    'End If
Exit Sub
txtfields_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Change of Form City", vbInformation, head
End Sub

Private Sub txtFields_GotFocus(Index As Integer)
On Error GoTo txtFields_GotFocus_Error

    If Opt = "add" Or Opt = "mod" Then
        Select Case Index
           Case 0
                 stbar.Panels(2).Text = "Enter Maximum of 4 Characters"
           Case 1
                stbar.Panels(2).Text = "Enter Maximum of 35 Characters"
           Case 2
                stbar.Panels(2).Text = "Press tab Select State Details from List "
           Case 4
                stbar.Panels(2).Text = "Press tab Select Country Details from List "
        End Select
    
    End If
    
'If Opt = "add" Or Opt = "mod" Then
'Select Case Index
'Case 2
'If Record_Exists("ig_state") = False Then Exit Sub
''        Screen.MousePointer = 11
''        SSTab1.Visible = False
''
''        Frame3.Visible = True
''        Frame3.ZOrder
'        Buttonframe.Enabled = False
''        listlb.Caption = "state Listing"
''        Ksldesc1.conn = connectstring
''        Ksldesc1.Table = "ig_state"
''        Ksldesc1.listfield1 = "state_code"
''        Ksldesc1.listfield2 = "name"
''        Ksldesc1.SetFocus
'        Call LOOKUPState
'        stbar.Panels(2).Text = "Select  State Code  from the List"
'
'
'   Case 4
'If Record_Exists("ig_country") = False Then Exit Sub
''        Screen.MousePointer = 11
'        'SSTab1.Visible = False
'
''        Frame3.Visible = True
''        Frame3.ZOrder
'        Buttonframe.Enabled = False
''        listlb.Caption = "country Listing"
''        Ksldesc1.conn = connectstring
''        Ksldesc1.Table = "ig_country"
''        Ksldesc1.listfield1 = "country_code"
''        Ksldesc1.listfield2 = "name"
''        Ksldesc1.SetFocus
'        Call LOOKUPCountry
'        stbar.Panels(2).Text = "Select  Country Code  from the List"
'
'
'
'End Select
'End If

Exit Sub
txtFields_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtFields_GotFocus of Form City", vbInformation, head
End Sub


Private Sub txtFields_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo txtfields_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(4)
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
    End If


Exit Sub
txtfields_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyDown of Form City", vbInformation, head

End Sub

Private Sub TXTFIELDS_KeyPress(Index As Integer, KeyAscii As Integer)
On Error GoTo TXTFIELDS_KeyPress_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
   ToAlphanum txtfields(0), 4, KeyAscii
   ToUpCaseNew txtfields(0), KeyAscii, 4
    If txtfields(0).Text = "" Then
      If KeyAscii = 32 Then
         MsgBox "Please Enter City Code ", vbInformation, head
            txtfields(0).SetFocus
            SendKeys "{home}"
            SendKeys "{delete}"
      End If
      End If
Case 1
ToAlphanum txtfields(1), 35, KeyAscii
   ToUpCaseNew txtfields(1), KeyAscii, 35
          If txtfields(1).Text = "" Then
      If KeyAscii = 32 Then
         MsgBox "Please Enter City Name ", vbInformation, head
            txtfields(1).SetFocus
            SendKeys "{home}"
            SendKeys "{delete}"
      End If
      End If
   
End Select
End If


Exit Sub
TXTFIELDS_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_KeyPress of Form City", vbInformation, head

End Sub

Private Sub txtfields_LostFocus(Index As Integer)
Dim RS2 As Recordset
On Error GoTo txtfields_LostFocus_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 2
If Record_Exists("ig_state") = False Then Exit Sub
'        Screen.MousePointer = 11
'        SSTab1.Visible = False
'
'        Frame3.Visible = True
'        Frame3.ZOrder
        Buttonframe.Enabled = False
'        listlb.Caption = "state Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_state"
'        Ksldesc1.listfield1 = "state_code"
'        Ksldesc1.listfield2 = "name"
'        Ksldesc1.SetFocus
        Call LOOKUPState
        stbar.Panels(2).Text = "Select  State Code  from the List"


   Case 4
If Record_Exists("ig_country") = False Then Exit Sub
'        Screen.MousePointer = 11
        'SSTab1.Visible = False

'        Frame3.Visible = True
'        Frame3.ZOrder
        Buttonframe.Enabled = False
'        listlb.Caption = "country Listing"
'        Ksldesc1.conn = connectstring
'        Ksldesc1.Table = "ig_country"
'        Ksldesc1.listfield1 = "country_code"
'        Ksldesc1.listfield2 = "name"
'        Ksldesc1.SetFocus
        Call LOOKUPCountry
        stbar.Panels(2).Text = "Select  Country Code  from the List"



End Select
End If
If Opt = "add" Then
Set RS2 = New Recordset
RS2.Open "select area_code from ig_area where area_code='" & Trim(txtfields(0).Text) & "'", DB
If RS2.RecordCount > 0 Then
    MsgBox " The City typed in is already defined", vbInformation, head
    txtfields(0).Text = ""
    txtfields(0).SetFocus
Exit Sub
End If
End If




Exit Sub
txtfields_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_LostFocus of Form City", vbInformation, head
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error

If Opt = "add" Or Opt = "mod" Then
Select Case Index
Case 0
     If txtfields(0).Text = "" Then
     MsgBox "Please Enter City Code", vbInformation, head
     Cancel = True
     End If
    
Case 1
     If txtfields(1).Text = "" Then
     MsgBox "Please Enter City name", vbInformation, head
     Cancel = True
     End If
'Case 2
'     If txtfields(2).Text = "" Then
'        MsgBox "State code cannot be empty", vbInformation, head
'        Cancel = True
'     End If


  
 
    End Select
    End If



Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure txtfields_Validate of Form City", vbInformation, head

End Sub
Sub LOOKUPState()
On Error GoTo LOOKUPState_Error

    LookUp.clear = True
    LookUp.query = "SELECT State_CODE""StateCode"",Name FROM IG_STATE "
    LookUp.DefCol = "NAME"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "State Code Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
             txtfields(2).Text = LookUp.Fields(0)
             txtfields(3).Text = LookUp.Fields(1)
             LookUp.clear = True
             Buttonframe.Enabled = True
             'Opt = "add"
             txtfields(4).SetFocus
    Else
        LookUp.clear = True
        txtfields(2).Text = ""
        txtfields(3).Text = ""
        txtfields(2).SetFocus
    End If


Exit Sub
LOOKUPState_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LOOKUPState of Form City", vbInformation, head
End Sub

Sub LOOKUPCountry()

On Error GoTo LOOKUPCountry_Error

    LookUp.clear = True
    LookUp.query = "SELECT Country_CODE""CountryCode"",Name FROM IG_Country "
    LookUp.DefCol = "NAME"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "Country Code Listing"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtfields(4).Text = LookUp.Fields(0)
        txtfields(5).Text = LookUp.Fields(1)
        stbar.Panels(2).Text = "Choose either SAVE or CANCEL Button"
        LookUp.clear = True
        Buttonframe.Enabled = True
        BUTTON(9).SetFocus
    Else
        LookUp.clear = True
        txtfields(4).Text = ""
        txtfields(5).Text = ""
        txtfields(4).SetFocus
    End If


Exit Sub
LOOKUPCountry_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LOOKUPCountry of Form City", vbInformation, head
End Sub

Sub LOOKUPMODIFY()

On Error GoTo LOOKUPMODIFY_Error

    LookUp.clear = True
    LookUp.query = "SELECT area_code""AreaCode"",name""Name"" FROM ig_area"
    LookUp.DefCol = "Name"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "CITY LISTING"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
            txtfields(0).Text = LookUp.Fields(0)
            txtfields(1).Text = LookUp.Fields(1)
            Call Query_mode
            Buttonframe.Enabled = True
            Call ENABLCONTLS
            txtfields(0).Locked = True
    Else
            Call BUTTON_Click(10)
    End If


Exit Sub
LOOKUPMODIFY_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LOOKUPMODIFY of Form City", vbInformation, head
End Sub

Sub LOOKUPDELETE()
    
On Error GoTo LOOKUPDELETE_Error

    LookUp.clear = True
    LookUp.query = "SELECT area_code""AreaCode"",name""Name"" FROM ig_area"
    LookUp.DefCol = "Name"
    LookUp.ALIGN = "1500,3500"
    LookUp.Caption = "CITY LISTING"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
            txtfields(0).Text = LookUp.Fields(0)
            txtfields(1).Text = LookUp.Fields(1)
            Call Query_mode
            txtfields(0).Locked = True
    Else
            Call BUTTON_Click(10)
    End If


Exit Sub
LOOKUPDELETE_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure LOOKUPDELETE of Form City", vbInformation, head
End Sub


Public Sub buttonToolTip()
    On Error Resume Next
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"

End Sub
