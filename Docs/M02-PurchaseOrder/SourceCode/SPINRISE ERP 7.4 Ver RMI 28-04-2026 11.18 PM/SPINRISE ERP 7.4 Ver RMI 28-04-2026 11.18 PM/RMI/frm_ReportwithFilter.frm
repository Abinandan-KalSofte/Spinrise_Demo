VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_ReportwithFilter 
   Caption         =   "Fibre Credit Note Report"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   2160
      ScaleHeight     =   465
      ScaleWidth      =   10845
      TabIndex        =   11
      Top             =   8400
      Width           =   10875
      Begin VB.CommandButton CmdExit 
         Caption         =   "E&xit"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   6375
         TabIndex        =   13
         ToolTipText     =   "(Alt x)"
         Top             =   45
         Width           =   1485
      End
      Begin VB.CommandButton CmdCrystal 
         Caption         =   "&Excel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   4920
         TabIndex        =   12
         ToolTipText     =   "(Alt R)"
         Top             =   45
         Width           =   1305
      End
   End
   Begin VB.PictureBox FraFabstk 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   8145
      Left            =   2160
      ScaleHeight     =   8115
      ScaleWidth      =   10860
      TabIndex        =   1
      Top             =   0
      Visible         =   0   'False
      Width           =   10890
      Begin VB.CheckBox Check3 
         Appearance      =   0  'Flat
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1200
         TabIndex        =   22
         Top             =   1560
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.CheckBox Check2 
         Appearance      =   0  'Flat
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1200
         TabIndex        =   18
         Top             =   3000
         Visible         =   0   'False
         Width           =   795
      End
      Begin VB.CheckBox Check1 
         Appearance      =   0  'Flat
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1560
         TabIndex        =   16
         Top             =   7800
         Width           =   795
      End
      Begin VB.CheckBox Chkcust 
         Appearance      =   0  'Flat
         Caption         =   "ALL"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   195
         Left            =   1440
         TabIndex        =   3
         Top             =   5400
         Width           =   795
      End
      Begin VB.TextBox txt_search 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   3960
         TabIndex        =   2
         Top             =   1200
         Visible         =   0   'False
         Width           =   6675
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   2490
         TabIndex        =   4
         Top             =   675
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         Format          =   70844417
         CurrentDate     =   40327
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   5610
         TabIndex        =   5
         Top             =   630
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   582
         _Version        =   393216
         Format          =   70844417
         CurrentDate     =   40327
      End
      Begin MSComctlLib.ListView Lv_Cust 
         Height          =   2175
         Left            =   2520
         TabIndex        =   6
         Top             =   3600
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   3836
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Supplier"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView Lt_Var 
         Height          =   2175
         Left            =   2520
         TabIndex        =   14
         Top             =   5880
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   3836
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   2
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Variety"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView LT_COM 
         Height          =   975
         Left            =   2520
         TabIndex        =   17
         Top             =   1080
         Visible         =   0   'False
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   1720
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Company Name"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Database Name"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView Lit_Division 
         Height          =   1335
         Left            =   2520
         TabIndex        =   21
         Top             =   2160
         Visible         =   0   'False
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   2355
         View            =   3
         MultiSelect     =   -1  'True
         LabelWrap       =   -1  'True
         HideSelection   =   -1  'True
         Checkboxes      =   -1  'True
         FullRowSelect   =   -1  'True
         GridLines       =   -1  'True
         _Version        =   393217
         ForeColor       =   -2147483640
         BackColor       =   -2147483643
         BorderStyle     =   1
         Appearance      =   0
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         NumItems        =   3
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "Division Name"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Division Code"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Abbr"
            Object.Width           =   1764
         EndProperty
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Division List"
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
         Left            =   1080
         TabIndex        =   20
         Top             =   2040
         Visible         =   0   'False
         Width           =   1005
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Complany List"
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
         Left            =   1080
         TabIndex        =   19
         Top             =   1080
         Visible         =   0   'False
         Width           =   1185
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Variety List"
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
         Left            =   1200
         TabIndex        =   15
         Top             =   6000
         Width           =   960
      End
      Begin VB.Label LblFabStkHd 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Fibre Credit Note"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   450
         Left            =   0
         TabIndex        =   10
         Top             =   0
         Width           =   10860
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
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
         Left            =   4080
         TabIndex        =   9
         Top             =   705
         Width           =   705
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
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
         Index           =   3
         Left            =   960
         TabIndex        =   8
         Top             =   735
         Width           =   885
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Supplier List"
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
         Left            =   1080
         TabIndex        =   7
         Top             =   3600
         Width           =   1035
      End
   End
   Begin VB.CheckBox Chkord 
      Appearance      =   0  'Flat
      Caption         =   "ALL"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   195
      Left            =   4395
      TabIndex        =   0
      Top             =   4200
      Width           =   795
   End
   Begin Crystal.CrystalReport CrystalReport2 
      Left            =   315
      Top             =   2040
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   420
      Top             =   9750
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   360
      Top             =   9960
      Visible         =   0   'False
      Width           =   2460
      _ExtentX        =   4339
      _ExtentY        =   661
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
End
Attribute VB_Name = "frm_ReportwithFilter"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim DB As New Connection
Dim TmpRs As New Recordset
Dim SubRs As New Recordset
Dim temprs As New Recordset
Dim RsCn As New Recordset
Dim Rs As New Recordset
Dim Rptname As eRepName
Dim sRecSupp, sRecCount, sRecMill As String
Dim Str As String
Dim Local_RepIndex As Integer
Dim ilastindex As Integer
Dim ilastindex1 As Integer
Dim ilastindex2 As Integer
Dim overheads As String
Dim maxdate As String
Dim Myxl As Excel.Application '''''sasi 14.6.17
Dim tmpFile As String
Dim SheetName As String
'11.05.15
Dim XLSheet As Excel.Worksheet ''''sasi 14.6.17
'11.05.15
Dim XLBook As Excel.Workbook ''''sasi 14.6.17



Private Sub Check1_Click()
    If Check1.value = 1 Then
        For I = 1 To Lt_Var.ListItems.Count
          Lt_Var.ListItems.Item(I).Checked = True
        Next I
    Else
        For I = 1 To Lt_Var.ListItems.Count '- 1
             Lt_Var.ListItems.Item(I).Checked = False
        Next I
    End If
    Call Lt_Var_Click
End Sub

Private Sub Check2_Click()
    If Check2.value = 1 Then
        For I = 1 To Lit_Division.ListItems.Count
          Lit_Division.ListItems.Item(I).Checked = True
        Next I

    Else
        For I = 1 To Lit_Division.ListItems.Count '- 1
             Lit_Division.ListItems.Item(I).Checked = False
        Next I
    End If
    Call LoadRecord
End Sub

Private Sub Check3_Click()

  If Check3.value = 1 Then
        For I = 1 To LT_COM.ListItems.Count
          LT_COM.ListItems.Item(I).Checked = True
        Next I

    Else
        For I = 1 To LT_COM.ListItems.Count '- 1
             LT_COM.ListItems.Item(I).Checked = False
        Next I
    End If
    Call LT_COM_Click
End Sub

Private Sub Chkcust_Click()
    If Chkcust.value = 1 Then
        For I = 1 To Lv_Cust.ListItems.Count
          Lv_Cust.ListItems.Item(I).Checked = True
        Next I

    Else
        For I = 1 To Lv_Cust.ListItems.Count '- 1
             Lv_Cust.ListItems.Item(I).Checked = False
        Next I
    End If
    Call Lv_Cust_Click
End Sub



Private Sub CmdCrystal_Click()
On Error Resume Next

        tmpFile = "Details"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        'Create the Excel Application Object.
'        '11.05.15
'        Set Myxl = New Excel.Application
'        'Set Myxl = New KET.Application
'
'        'Create new Excel Workbook
'        Set XLBook = Myxl.Workbooks.ADD
'        Set XLSheet = XLBook.Worksheets(1)
'        Myxl.Worksheets(1).Name = "Details"

        Call PUTDATACreditNote
  Exit Sub

            

End Sub
Private Sub LoadRecord()
On Error GoTo err_lvcustclick
           


            Set temprs = New Recordset
            If Local_RepIndex = 1 Then
                L_supcd = "''"
                L_abbr = "''"
                For I = 1 To Lit_Division.ListItems.Count
            
                    If Lit_Division.ListItems.Item(I).Checked = True Then
                        sRecCount = Trim(Lit_Division.ListItems(I).SubItems(1))
                        sRecCount1 = Trim(Lit_Division.ListItems(I).SubItems(2))
                        If L_supcd <> "" Then
                            L_supcd = L_supcd + "," + "'" + Trim(sRecCount) + "'"
                            L_abbr = L_abbr + "," + "'" + Trim(sRecCount1) + "'"
                        Else
                            L_supcd = "'" + Trim(sRecCount) + "'"
                            L_abbr = "'" + Trim(sRecCount1) + "'"
                        End If
                      End If
                Next
                    
                For I = 1 To LT_COM.ListItems.Count
                
                    If LT_COM.ListItems.Item(I).Checked = True Then
                        Set temprs = New Recordset
'                        temprs.Open "select Division_Name , Divsion_ID from " & Trim(Lv_Cust.ListItems(I).SubItems(1)) & "..Vw_DivisonList   ", db, adOpenStatic
                        
                        temprs.Open "select distinct a.supcd,b.slname  from " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..RM_cont a inner join " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..fa_slmas b on a.supcd=b.slcode inner join " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..pp_Divmas pp on pp.divcode=a.divcode  where  a.divcode in (" & L_supcd & ") and pp.Abbr in (" & L_abbr & ")and a.contdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and MSDocno>0 order by a.supcd ", DB, adOpenStatic, adLockReadOnly
                        If Not temprs.EOF Then
                            Dim li1 As ListItem
                            If temprs.RecordCount > 0 Then
                                Do While Not temprs.EOF
'                                    Set li = Lit_Division.ListItems.ADD(, , Mid(temprs!Division_Name, 1, 50))
'                                    Lit_Division.ListItems(Lit_Division.ListItems.Count).ListSubItems.ADD , , temprs!Divsion_ID
                                      DB.Execute "insert into slcodetemptable (divcode,slcode,systemid)values('" & Divcode & "','" & temprs!SUPCD & "','" & LocalIPAdd & "')"
                                    temprs.MoveNext
                                Loop
                            End If
                        End If
                    End If
                 Next
                    
            Set temprs = New Recordset
            temprs.Open "select distinct a.slcode supcd,b.slname  from slcodetemptable a inner join fa_slmas b on a.slcode=b.slcode where a.divcode='" & Divcode & "' and  systemid='" & LocalIPAdd & "'  ", DB, adOpenStatic
                        
            ' Exit Sub
            ElseIf Local_RepIndex = 2 Then
                temprs.Open "select distinct a.slcode supcd,b.slname  from RM_FibreTestHD a inner join fa_slmas b on a.slcode=b.slcode  where DIVCODE ='" & Divcode & "' and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  order by a.slcode ", DB, adOpenStatic, adLockReadOnly
            
            End If
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
            
            Lv_Cust.ListItems.Clear
            Dim li2 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lv_Cust.ListItems.ADD(, , Mid(temprs!sLname, 1, 50))
                    Lv_Cust.ListItems(Lv_Cust.ListItems.Count).ListSubItems.ADD , , temprs!SUPCD
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            
            
            L_supcd = "''"
    
            For I = 1 To Lv_Cust.ListItems.Count
        
                If Lv_Cust.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lv_Cust.ListItems(I).SubItems(2))
                    If L_supcd <> "" Then
                        L_supcd = L_supcd + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_supcd = "'" + Trim(sRecCount) + "'"
                    End If
                  End If
            Next
            
            Set temprs = New Recordset
            temprs.Open "select a.varcode,b.varname  from RM_FibreDiscCN a inner join rm_var b on a.varcode=b.varcode  where a.supcd in (" & L_supcd & ") and a.docdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockReadOnly
            
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
            
            Lt_Var.ListItems.Clear
            Dim li111 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lt_Var.ListItems.ADD(, , Mid(temprs!VarName, 1, 50))
                    Lt_Var.ListItems(Lt_Var.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            

            L_Var = "''"
            For I = 1 To Lv_Cust.ListItems.Count
        
                If Lv_Cust.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lv_Cust.ListItems(I).SubItems(2))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_Var = "'" + Trim(sRecCount) + "'"
                    End If
                  End If
            Next
            
            
'            Set temprs = New Recordset
'            temprs.Open "select distinct a.plant,b.PLName  from RM_FibreDiscCN a inner join rm_plant b on a.Plant=b.PLCode  where DIVCODE ='" & Divcode & "' and a.supcd in (" & L_supcd & ") and a.varcode in (" & L_Var & ") and a.docdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  ", db, adOpenStatic, adLockReadOnly
'            LT_Plant.ListItems.Clear
'            Dim li121 As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set li = LT_Plant.ListItems.ADD(, , Mid(temprs!PLName, 1, 50))
'                    LT_Plant.ListItems(LT_Plant.ListItems.Count).ListSubItems.ADD , , temprs!plant
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
            
            
Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
                               
   
End Sub


Private Sub DTPicker1_Change()
On Error Resume Next
LoadRecord
End Sub

Private Sub DTPicker2_Change()
On Error Resume Next
LoadRecord
End Sub

Private Sub Form_Resize()
'Select Case Rptname
'    Case RptFabStk
'        FraFabstk.Move (FrmProductionRegister.Width - FraFabstk.Width - 500) / 2, (FrmProductionRegister.Height - FraFabstk.Height - FraPrint.Height) / 2 - 500, FraFabstk.Width, FraFabstk.Height
'        loadBottomframe FraFabstk
'    End Select
End Sub

Private Sub Form_Load()
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;" + connectstring
        
      Local_RepIndex = Repindex
            
            If Local_RepIndex = 1 Then
                LblFabStkHd.Caption = "Fibre Credit Note"
                LT_COM.Visible = True
                Label5.Visible = True
                Check3.Visible = True
                Label6.Visible = True
                Lit_Division.Visible = True
                Check2.Visible = True
                
                Call LoadDivisionList
            ElseIf Local_RepIndex = 2 Then
                LblFabStkHd.Caption = "Fibre Test Result List"
                    Lv_Cust.Top = 1500
                    Lv_Cust.Height = 4275
                    Chkcust.Top = 2000
                    Label8.Top = 1500
                    Label5.Visible = False
                    Check3.Visible = False
                    Label6.Visible = False
                    Check2.Visible = False
            End If
            Me.Caption = LblFabStkHd.Caption
            DTPicker1.value = yfdate
            DTPicker2.value = pdate
            FraFabstk.Visible = True
            
            ilastindex = 1
            ilastindex1 = 1
            ilastindex2 = 1
        
        
Call LoadRecord
                        

       
    
End Sub

Private Sub CmdExit_Click()
Unload Me
End Sub

Private Sub Lv_Order_Click()
 ' Call loadcondlist
End Sub

Private Sub Lit_Division_Click()
Call LoadRecord
End Sub

Private Sub LT_COM_Click()
    If Local_RepIndex = 1 Then
        Lit_Division.ListItems.Clear
        For I = 1 To LT_COM.ListItems.Count
        
            If LT_COM.ListItems.Item(I).Checked = True Then
                Set temprs = New Recordset
                temprs.Open "select Division_Name , Divsion_ID ,Abbr from " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..Vw_DivisonList   ", DB, adOpenStatic
                If Not temprs.EOF Then
                    Dim li1 As ListItem
                    If temprs.RecordCount > 0 Then
                        Do While Not temprs.EOF
                            Set li = Lit_Division.ListItems.ADD(, , Mid(temprs!Division_Name, 1, 50))
                            Lit_Division.ListItems(Lit_Division.ListItems.Count).ListSubItems.ADD , , temprs!Divsion_ID
                            Lit_Division.ListItems(Lit_Division.ListItems.Count).ListSubItems.ADD , , temprs!Abbr
                            temprs.MoveNext
                        Loop
                    End If
                End If
            End If
         Next
    End If
End Sub

Private Sub Lt_Var_Click()
Exit Sub
On Error GoTo err_lvcustclick
         L_supcd = "''"
    
            For I = 1 To Lv_Cust.ListItems.Count
        
                If Lv_Cust.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lv_Cust.ListItems(I).SubItems(1))
                    If L_supcd <> "" Then
                        L_supcd = L_supcd + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_supcd = "'" + Trim(sRecCount) + "'"
                    End If
                  End If
            Next
            
            L_Var = "''"
            For I = 1 To Lt_Var.ListItems.Count
        
                If Lt_Var.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lt_Var.ListItems(I).SubItems(1))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_Var = "'" + Trim(sRecCount) + "'"
                    End If
                  End If
            Next
            
            
            Set temprs = New Recordset
            temprs.Open "select distinct a.plant,b.PLName  from RM_FibreDiscCN a inner join rm_plant b on a.Plant=b.PLCode  where a.supcd in (" & L_supcd & ") and a.varcode in (" & L_Var & ") and a.docdate between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  ", DB, adOpenStatic, adLockReadOnly
            LT_Plant.ListItems.Clear
            Dim li1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = LT_Plant.ListItems.ADD(, , Mid(temprs!PLName, 1, 50))
                    LT_Plant.ListItems(LT_Plant.ListItems.Count).ListSubItems.ADD , , temprs!plant
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            
       Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
          
            
            
            
            
           
End Sub

Private Sub Lv_Cust_Click()
On Error GoTo err_lvcustclick
         L_supcd = "''"
    
            For I = 1 To Lv_Cust.ListItems.Count
                If Lv_Cust.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lv_Cust.ListItems(I).SubItems(1))
                    If L_supcd <> "" Then
                        L_supcd = L_supcd + "," + "'" + Trim(sRecCount) + "'"
                    Else
                        L_supcd = "'" + Trim(sRecCount) + "'"
                    End If
                  End If
            Next
            Set temprs = New Recordset
            If Local_RepIndex = 1 Then
                L_Divcode = "''"
                L_abbr = "''"
                For I = 1 To Lit_Division.ListItems.Count
            
                    If Lit_Division.ListItems.Item(I).Checked = True Then
                        sRecCount = Trim(Lit_Division.ListItems(I).SubItems(1))
                        sRecCount1 = Trim(Lit_Division.ListItems(I).SubItems(2))
                        If L_supcd <> "" Then
                            L_Divcode = L_Divcode + "," + "'" + Trim(sRecCount) + "'"
                            L_abbr = L_abbr + "," + "'" + Trim(sRecCount1) + "'"
                        Else
                            L_Divcode = "'" + Trim(sRecCount) + "'"
                            L_abbr = "'" + Trim(sRecCount1) + "'"
                        End If
                      End If
                Next
                 DB.Execute "delete from RM_ProductprintDet where ipadd='" & LocalIPAdd & "' "
                For I = 1 To LT_COM.ListItems.Count
                
                    If LT_COM.ListItems.Item(I).Checked = True Then
                        Set temprs = New Recordset
                        
                        temprs.Open "select distinct a.varcode,b.varname  from " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..RM_cont a inner join " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..rm_var b on a.varcode=b.varcode inner join " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..pp_Divmas pp on pp.divcode=a.divcode  where a.supcd in (" & L_supcd & ") and a.divcode in (" & L_Divcode & ") and pp.Abbr in (" & L_abbr & ")and a.contdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and MSDocno>0 order by b.varname ", DB, adOpenStatic, adLockReadOnly
                        If Not temprs.EOF Then
                            Dim li1 As ListItem
                            If temprs.RecordCount > 0 Then
                                Do While Not temprs.EOF
'
                   
                                         sql = "insert into RM_ProductprintDet(divcode,varcode,IPadd) " & _
                                        "  values( '" & Divcode & "','" & Trim(temprs(0)) & "', '" & LocalIPAdd & "')"
                                        DB.Execute sql
                                    temprs.MoveNext
                                Loop
                            End If
                        End If
                    End If
                 Next
               Set temprs = New Recordset
                temprs.Open " select Distinct a.varcode,b.varname from RM_ProductprintDet a left join rm_var b on a.varcode=b.varcode where a.divcode='" & Divcode & "' and IPadd= '" & LocalIPAdd & "'  ", DB, adOpenStatic
                    
               ' temprs.Open "select distinct a.varcode,b.varname  from RM_cont a inner join rm_var b on a.varcode=b.varcode  where DIVCODE ='" & Divcode & "' and a.supcd in (" & L_supcd & ") and a.contdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by b.varname  ", db, adOpenStatic, adLockReadOnly
            ElseIf Local_RepIndex = 2 Then
                temprs.Open "select distinct a.varcode,b.varname  from RM_FibreTestHD a inner join rm_var b on a.varcode=b.varcode  where DIVCODE ='" & Divcode & "' and a.slcode in (" & L_supcd & ") and a.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' order by b.varname  ", DB, adOpenStatic, adLockReadOnly
            End If
            Lt_Var.ListItems.Clear
            Dim li12 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lt_Var.ListItems.ADD(, , Mid(temprs!VarName, 1, 50))
                    Lt_Var.ListItems(Lt_Var.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            
       Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
          
            
            
            
            
            
            
            
End Sub

Private Sub txt_search_Change()
Dim itm1 As ListItem

With Lv_Cust
    Set itm = .FindItem(Trim(UCase(txt_search.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        Lv_Cust.ListItems(ilastindex).Bold = False
        Lv_Cust.ListItems(ilastindex).ForeColor = vbBlack
        
        itm.EnsureVisible
        lastindex = itm.Index
        Lv_Cust.ListItems(lastindex).Selected = True
        ilastindex = lastindex
        
        Lv_Cust.ListItems(ilastindex).Bold = True
        Lv_Cust.ListItems(ilastindex).ForeColor = vbBlue
        
        
        Lv_Cust.SetFocus
        txt_search.SetFocus
    End If
End With
Set itm = Nothing
ilastindex = 1
End Sub




Private Sub PUTDATACreditNote()
On Error GoTo BUTTON_Click_Error
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant

CustCode = "": custname = "": ContNo = "": sortname = ""
Set oExcel = CreateObject("Excel.Application")

'End If

            DB.Execute "Delete From  RM_ProductprintDet where Divcode = '" & Divcode & "' and IPadd = '" & LocalIPAdd & "'"
         
            For I = 1 To Lv_Cust.ListItems.Count
                If Lv_Cust.ListItems.Item(I).Checked Then
                     sRecSupp = Trim(Lv_Cust.ListItems(I).SubItems(1))
                   
                         sql = "insert into RM_ProductprintDet(divcode,supcd,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(Lv_Cust.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                 
                     DB.Execute sql
                End If
            Next I
            
            For I = 1 To Lt_Var.ListItems.Count
                If Lt_Var.ListItems.Item(I).Checked Then
                     sRecSupp = Trim(Lt_Var.ListItems(I).SubItems(1))
                   
                         sql = "insert into RM_ProductprintDet(divcode,varcode,IPadd) " & _
                        "  values( '" & Divcode & "','" & Trim(Trim(Lt_Var.ListItems(I).SubItems(1))) & "', '" & LocalIPAdd & "')"
                 
                     DB.Execute sql
                End If
            Next I

Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)
'    oExcel.Visible = True
    oExcel.Visible = True
    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
        Dim fd As String
        Dim td As String

        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
        Rs.Open "select divname,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select divname ,unit_name from pp_divmas where divcode='" & Divcode & "'", DB
        
     
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "AR1").MergeCells = True
         osheet.Range("A1", "AR1").HorizontalAlignment = Excel.xlCenter
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        
        If Local_RepIndex = 1 Then
        osheet.Cells(2, 4).value = "Fibre Credit Note List from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
        ElseIf Local_RepIndex = 2 Then
        osheet.Cells(2, 4).value = "Fibre Test Result List from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
        End If
'        osheet.Range("A2", "N2").HorizontalAlignment = Excel.xlCenter
        osheet.Range("A2", "N2").MergeCells = True
        With osheet.Range("A2", "N2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        If Local_RepIndex = 1 Then
            osheet.Cells(3, 23).value = "Discount in Invoice (Per Kg)"
            
            osheet.Range("P3", "W3").MergeCells = True
            osheet.Range("P3", "W3").HorizontalAlignment = Excel.xlCenter
'            With osheet.Range("P3").Font
'                .Bold = True
'                .Size = 14
'               ' .Color = vbYellow
'            End With
            
            osheet.Range("P3", "W3").Interior.Color = RGB(255, 255, 0)
            
            'osheet.Cells(5, 23).value = "Description as per Price Master"
           ' osheet.Range("P5", "W5").MergeCells = True
           ' osheet.Range("P5", "W5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("P5", "W5").Interior.Color = RGB(255, 255, 0)
            
             
            
            
'            osheet.Cells(3, 32).value = "Discount in Invoice (Per Kg) as agreed"
'            osheet.Range("Y3", "AF3").MergeCells = True
'            osheet.Range("Y3", "AF3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("Y3", "AF3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 32).value = "Description as per Price Master"
'            osheet.Range("Y5", "AF5").MergeCells = True
'            osheet.Range("Y5", "AF5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("Y5", "AF5").Interior.Color = RGB(255, 255, 0)
            
            
            osheet.Cells(3, 34).value = "Diff in Invoice (Per Kg) "
            osheet.Range("AH3", "AO3").MergeCells = True
            osheet.Range("AH3", "AO3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AH3", "AO3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 34).value = "Description as per Price Master "
'            osheet.Range("AH5", "AO5").MergeCells = True
'            osheet.Range("AH5", "AO5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AH5", "AO5").Interior.Color = RGB(255, 255, 0)
            
            
            osheet.Cells(3, 42).value = "Credit Note (Per Kg) as agreed"
            osheet.Range("AP3", "AW3").MergeCells = True
            osheet.Range("AP3", "AW3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AP3", "AW3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 42).value = "Description as per Price Master "
'            osheet.Range("AP5", "AW5").MergeCells = True
'            osheet.Range("AP5", "AW5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AP5", "AW5").Interior.Color = RGB(255, 255, 0)
            
            osheet.Cells(3, 51).value = "Total Invoice Price Difference Receivable"
            osheet.Range("AY3", "BF3").MergeCells = True
            osheet.Range("AY3", "BF3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AY3", "BF3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 51).value = "Description as per Price Master"
'            osheet.Range("AY5", "BF5").MergeCells = True
'            osheet.Range("AY5", "BF5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("AY5", "BF5").Interior.Color = RGB(255, 255, 0)
            
            
            
            osheet.Cells(3, 59).value = "Total CN Receivable"
            osheet.Range("BG3", "BN3").MergeCells = True
            osheet.Range("BG3", "BN3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BG3", "BN3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 59).value = "Description as per Price Master"
'            osheet.Range("BG5", "BN5").MergeCells = True
'            osheet.Range("BG5", "BN5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BG5", "BN5").Interior.Color = RGB(255, 255, 0)
            
            
            
            osheet.Cells(3, 68).value = "Invoice Difference Received (Rs.)"
            osheet.Range("BP3", "BW3").MergeCells = True
            osheet.Range("BP3", "BW3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BP3", "BW3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 68).value = "Description as per Price Master"
'            osheet.Range("BP5", "BW5").MergeCells = True
'            osheet.Range("BP5", "BW5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BP5", "BW5").Interior.Color = RGB(255, 255, 0)
        
        
            osheet.Cells(3, 76).value = "CN Received (Rs.)"
            osheet.Range("BX3", "CE3").MergeCells = True
            osheet.Range("BX3", "CE3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BX3", "CE3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 76).value = "Description as per Price Master"
'            osheet.Range("BX5", "CE5").MergeCells = True
'            osheet.Range("BX5", "CE5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("BX5", "CE5").Interior.Color = RGB(255, 255, 0)
            
            
            
            osheet.Cells(3, 85).value = "Invoice Difference Not yet Received (Rs.)"
            osheet.Range("CG3", "CN3").MergeCells = True
            osheet.Range("CG3", "CN3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("CG3", "CN3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 85).value = "Description as per Price Master"
'            osheet.Range("CG5", "CN5").MergeCells = True
'            osheet.Range("CG5", "CN5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("CG5", "CN5").Interior.Color = RGB(255, 255, 0)
            
            
            osheet.Cells(3, 95).value = "CN Not yet Received (Rs.)"
            osheet.Range("CO3", "CV3").MergeCells = True
            osheet.Range("CO3", "CV3").HorizontalAlignment = Excel.xlCenter
            osheet.Range("CO3", "CV3").Interior.Color = RGB(255, 255, 0)
            
'            osheet.Cells(5, 96).value = "Description as per Price Master"
'            osheet.Range("CO5", "CV5").MergeCells = True
'            osheet.Range("CO5", "CV5").HorizontalAlignment = Excel.xlCenter
            osheet.Range("CO5", "CV5").Interior.Color = RGB(255, 255, 0)
        
        End If
        
        intervalMinutes = -1
        U = Format(DTPicker1.value, "yyyy-mm-dd")
        v = Format(DTPicker2.value, "yyyy-mm-dd")


      
'        XLSheet.Cells(7, 5).value = "Fibre Credit Note list from " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
'
'        XLSheet.Range("A7", "M7").MergeCells = True
'        With XLSheet.Range("A7", "M7").Font
'        .Bold = True
'        .Size = 9
'        .Color = vbBlue
'        End With
        Dim chemstartpos, CHEMLAST As Integer
        packin = ""
        
        Mac = ""

         L_supcd = ""
    
            For I = 1 To Lv_Cust.ListItems.Count
        
                If Lv_Cust.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lv_Cust.ListItems(I).SubItems(1))
                    If L_supcd <> "" Then
                        L_supcd = L_supcd + "," + Trim(sRecCount)
                    Else
                        L_supcd = Trim(sRecCount)
                    End If
                  End If
            Next
            
            L_Var = ""
            For I = 1 To Lt_Var.ListItems.Count
        
                If Lt_Var.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lt_Var.ListItems(I).SubItems(1))
                    If L_Var <> "" Then
                        L_Var = L_Var + "," + Trim(sRecCount)
                    Else
                        L_Var = Trim(sRecCount)
                    End If
                  End If
            Next
            
'            L_Plant = ""
'            For I = 1 To LT_Plant.ListItems.Count
'                If LT_Plant.ListItems.Item(I).Checked = True Then
'                    sRecCount = Trim(LT_Plant.ListItems(I).SubItems(1))
'                    If L_Plant <> "" Then
'                        L_Plant = L_Plant + "," + Trim(sRecCount)
'                    Else
'                        L_Plant = Trim(sRecCount)
'                    End If
'                  End If
'            Next
            
        If Len(L_Var) <= 1 Then
            MsgBox "select any Variety ", vbInformation, head
        Exit Sub
        End If
'        If Len(L_Plant) < 1 Then
'            MsgBox "select any plant ", vbInformation, head
'        Exit Sub
'        End If
'
        If Len(L_supcd) <= 1 Then
            MsgBox "select any Supplier ", vbInformation, head
        Exit Sub
        End If
        
    packin = Mid$(packin, 2, Len(packin))
   ' DB.Execute "Exec KSP_LoomPlan '" & Trim(divcode) & "','" & Format(fd, "YYYY-MM-DD") & "','" & Format(td, "YYYY-MM-DD") & "'"
  
  
     DB.CommandTimeout = 5000
       Set Rs = New Recordset
        If Local_RepIndex = 1 Then
        
            L_Divcode = ""
            L_abbr = ""
            For I = 1 To Lit_Division.ListItems.Count
            
                If Lit_Division.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(Lit_Division.ListItems(I).SubItems(1))
                    sRecCount1 = Trim(Lit_Division.ListItems(I).SubItems(2))
                    If L_supcd <> "" Then
                        L_Divcode = L_Divcode + "," + "" + Trim(sRecCount) + ""
                        L_abbr = L_abbr + "," + "" + Trim(sRecCount1) + ""
                    Else
                        L_Divcode = "" + Trim(sRecCount) + ""
                        L_abbr = "'" + Trim(sRecCount1) + "'"
                    End If
                End If
            Next
                    
            For I = 1 To LT_COM.ListItems.Count
                
                If LT_COM.ListItems.Item(I).Checked = True Then
                    Set Rs = New Recordset
                    Rs.Open " Exec " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..ksp_FibreDiscount '" & L_Divcode & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "','" & L_abbr & "','" & Divcode & "'", DB
                End If
            Next
             
             
            
        ElseIf Local_RepIndex = 2 Then
            Rs.Open " Exec KSP_FibreTestResult '" & Divcode & "','" & Format(DTPicker1.value, "YYYY-MM-DD") & "','" & Format(DTPicker2.value, "YYYY-MM-DD") & "','" & LocalIPAdd & "'", DB
        End If

        If Local_RepIndex = 1 Then
            DB.Execute "if object_ID('RPT_Fibre_CreditNoteALLUNIT') is not null drop table RPT_Fibre_CreditNoteALLUNIT "
            
            
            DB.Execute "select *into RPT_Fibre_CreditNoteALLUNIT from RPT_Fibre_CreditNote where 1=2 "
            Set Rs = New Recordset
            
             For I = 1 To LT_COM.ListItems.Count
                If LT_COM.ListItems.Item(I).Checked = True Then
                    Rs.Open " insert into RPT_Fibre_CreditNoteALLUNIT select *  from " & Trim(LT_COM.ListItems(I).SubItems(1)) & "..RPT_Fibre_CreditNote", DB
                End If
            Next
            
             Set Rs = New Recordset
             Rs.Open "select * from RPT_Fibre_CreditNoteALLUNIT", DB
        Else
             Rs.Open "select * from RPT_Fibre_Test_Result", DB
            
            
        End If
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If
        If Local_RepIndex = 1 Then
             osheet.Cells(5, 16).value = Rs("inv1")
             osheet.Cells(5, 17).value = Rs("inv2")
             osheet.Cells(5, 18).value = Rs("inv3")
             osheet.Cells(5, 19).value = Rs("inv4")
             osheet.Cells(5, 20).value = Rs("inv5")
             osheet.Cells(5, 21).value = Rs("inv6")
             osheet.Cells(5, 22).value = Rs("inv7")
             osheet.Cells(5, 23).value = Rs("inv8")
             
             osheet.Cells(5, 25).value = Rs("inv1")
             osheet.Cells(5, 26).value = Rs("inv2")
             osheet.Cells(5, 27).value = Rs("inv3")
             osheet.Cells(5, 28).value = Rs("inv4")
             osheet.Cells(5, 29).value = Rs("inv5")
             osheet.Cells(5, 30).value = Rs("inv6")
             osheet.Cells(5, 31).value = Rs("inv7")
             osheet.Cells(5, 32).value = Rs("inv8")
             
             osheet.Cells(5, 34).value = Rs("inv1")
             osheet.Cells(5, 35).value = Rs("inv2")
             osheet.Cells(5, 36).value = Rs("inv3")
             osheet.Cells(5, 37).value = Rs("inv4")
             osheet.Cells(5, 38).value = Rs("inv5")
             osheet.Cells(5, 39).value = Rs("inv6")
             osheet.Cells(5, 40).value = Rs("inv7")
             osheet.Cells(5, 41).value = Rs("inv8")
             
             osheet.Cells(5, 42).value = Rs("inv1")
             osheet.Cells(5, 43).value = Rs("inv2")
             osheet.Cells(5, 44).value = Rs("inv3")
             If UCase(CustID) = "PALLAVA" Then
                osheet.Cells(5, 45).value = "Dedicated Disc"
             Else
                osheet.Cells(5, 45).value = Rs("inv4")
             End If
             osheet.Cells(5, 46).value = Rs("inv5")
             osheet.Cells(5, 47).value = Rs("inv6")
             osheet.Cells(5, 48).value = Rs("inv7")
             osheet.Cells(5, 49).value = Rs("inv8")
             
             osheet.Cells(5, 51).value = Rs("inv1")
             osheet.Cells(5, 52).value = Rs("inv2")
             osheet.Cells(5, 53).value = Rs("inv3")
             osheet.Cells(5, 54).value = Rs("inv4")
             osheet.Cells(5, 55).value = Rs("inv5")
             osheet.Cells(5, 56).value = Rs("inv6")
             osheet.Cells(5, 57).value = Rs("inv7")
             osheet.Cells(5, 58).value = Rs("inv8")
             
             osheet.Cells(5, 59).value = Rs("inv1")
             osheet.Cells(5, 60).value = Rs("inv2")
             osheet.Cells(5, 61).value = Rs("inv3")
             osheet.Cells(5, 62).value = Rs("inv4")
             osheet.Cells(5, 63).value = Rs("inv5")
             osheet.Cells(5, 64).value = Rs("inv6")
             osheet.Cells(5, 65).value = Rs("inv7")
             osheet.Cells(5, 66).value = Rs("inv8")
             
             osheet.Cells(5, 68).value = Rs("inv1")
             osheet.Cells(5, 69).value = Rs("inv2")
             osheet.Cells(5, 70).value = Rs("inv3")
             osheet.Cells(5, 71).value = Rs("inv4")
             osheet.Cells(5, 72).value = Rs("inv5")
             osheet.Cells(5, 73).value = Rs("inv6")
             osheet.Cells(5, 74).value = Rs("inv7")
             osheet.Cells(5, 75).value = Rs("inv8")
             
             osheet.Cells(5, 76).value = Rs("inv1")
             osheet.Cells(5, 77).value = Rs("inv2")
             osheet.Cells(5, 78).value = Rs("inv3")
             osheet.Cells(5, 79).value = Rs("inv4")
             osheet.Cells(5, 80).value = Rs("inv5")
             osheet.Cells(5, 81).value = Rs("inv6")
             osheet.Cells(5, 82).value = Rs("inv7")
             osheet.Cells(5, 83).value = Rs("inv8")
             
             osheet.Cells(5, 85).value = Rs("inv1")
             osheet.Cells(5, 86).value = Rs("inv2")
             osheet.Cells(5, 87).value = Rs("inv3")
             osheet.Cells(5, 88).value = Rs("inv4")
             osheet.Cells(5, 89).value = Rs("inv5")
             osheet.Cells(5, 90).value = Rs("inv6")
             osheet.Cells(5, 91).value = Rs("inv7")
             osheet.Cells(5, 92).value = Rs("inv8")
             
             osheet.Cells(5, 93).value = Rs("inv1")
             osheet.Cells(5, 94).value = Rs("inv2")
             osheet.Cells(5, 95).value = Rs("inv3")
             osheet.Cells(5, 96).value = Rs("inv4")
             osheet.Cells(5, 97).value = Rs("inv5")
             osheet.Cells(5, 98).value = Rs("inv6")
             osheet.Cells(5, 99).value = Rs("inv7")
             osheet.Cells(5, 100).value = Rs("inv8")
             
             If Local_RepIndex = 1 Then
             DB.Execute " update RPT_Fibre_CreditNoteALLUNIT set inv1='',inv2='',inv3='',inv4='',inv5='',inv6='',inv7='',inv8=''"
             End If
        End If
        Set ts = New Recordset
        If Local_RepIndex = 1 Then
            ts.Open "select RptHead from RM_EXCELLRPTHEAD where Rptname='CRDisc'  order by sno", DB
        ElseIf Local_RepIndex = 2 Then
              ts.Open "SELECT COLUMN_NAME  FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = N'RPT_Fibre_Test_Result' order by ORDINAL_POSITION", DB
        End If
        Dim inc As Integer
        inc = 1
        Do While Not ts.EOF
            osheet.Cells(4, inc).value = ts(0)
            inc = inc + 1
            ts.MoveNext
        Loop
        
           m_ROW = osheet.UsedRange.Rows.Count
           m_ROW = m_ROW - 1
            lr = "A" & m_ROW
            HR = "CV" & m_ROW
            With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 12
                .Color = vbBlue
            End With
        
    i1 = 1
    osheet.Cells(6, i1).CopyFromRecordset Rs
                


                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                
                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = osheet.UsedRange.Rows.Count + 1
                MR = "CV" & m_ROW
'                osheet.Cells(M_ROW + 1, 3) = "Grand Total"
'                'osheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G4 :G" & m_ROW & ")"
'                osheet.Cells(M_ROW + 1, 8) = CStr(GinvVal)
'                osheet.Cells(M_ROW + 1, 11) = CStr(GDuamt)
                
                            m_ROW = osheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "CV" & m_ROW
                            With osheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
'                      SheetName = ActiveSheet.name
'                        MsgBox (SheetName)
'                        Dim r As Range
'                        Set r = oSheet.Cells.find("Designation")
'                        MsgBox (r.Address)
'                        Dim a1() As String
'                        a1 = Split(r.Address, "$")
'                        MsgBox (a1(1))
'                        MsgBox (a1(2))
                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G7:G" & m_ROW & ")"
'                oSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(P7:P" & m_ROW & ")"
'                 oSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S7:S" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "CV" & m_ROW
                
                With osheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                
                With .Borders(xlInsideHorizontal)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlInsideVertical)
                .LineStyle = xlContinuous
                .Weight = xlThin
                .ColorIndex = xlAutomatic
                End With
                
                With .Borders(xlEdgeTop)
                .Weight = xlThin
                End With
                
                With .Borders(xlEdgeBottom)
                .Weight = xlThin
                End With
                End With
                
               ' Myxl.Application.Visible = True
                
                Set osheet = Nothing
                Set Myxl = Nothing
  
  
  
'        Set Rs = New Recordset
'        Rs.Open "select *from VW_RMI_FibreCreditNoteDiscount where docdate between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' and supcd in (select items from dbo.split('" & L_supcd & "',',')) and  varcode in (select items from dbo.split('" & L_Var & "',','))  and plant in (select items from dbo.split('" & L_Plant & "',',')) ", db, adOpenStatic
'
'            If Rs.RecordCount > 0 Then
'              Set ts = New Recordset
'              ts.Open "select RptHead from RM_EXCELLRPTHEAD where Rptname='CRDisc'  order by sno", db
'              Dim inc As Integer
'              inc = 1
'              Do While Not ts.EOF
'
'              XLSheet.Cells(4, inc).value = ts(0)
'              inc = inc + 1
'              ts.MoveNext
'              Loop
'              chemstartpos = inc
'              Set ts = New Recordset
'              ts.Open "select DISTINCT dicsctype from Vw_RM_CreditNoteDiscountTypes ", db
'              Do While Not ts.EOF
'                XLSheet.Cells(4, inc).value = ts(0)
'                 XLSheet.Cells(5, inc).value = "Rate"
'                 XLSheet.Cells(5, inc + 1).value = "Value"
'                 inc = inc + 2
'                ts.MoveNext
'              Loop
'
'              CHEMLAST = inc
'              XLSheet.Cells(4, inc).value = "From Date"
'              XLSheet.Cells(4, inc + 1).value = "To Date"
'              XLSheet.Cells(4, inc + 2).value = "Received KGS"
'
'                m_ROW = XLSheet.UsedRange.Rows.Count - 1
'                lr = "A" & m_ROW
'                HR = "N" & m_ROW
'                With XLSheet.Range(lr, HR).Font
'                .Bold = True
'                .Size = 12
'                .Color = vbBlue
'                End With
'
'                m_ROW = XLSheet.UsedRange.Rows.Count
'                lr = "A" & m_ROW
'                HR = "N" & m_ROW
'                With XLSheet.Range(lr, HR).Font
'                .Bold = True
'                .Size = 9
'                .Color = vbBlue
'                End With
'                XLSheet.Range(lr, HR).Columns.AutoFit
'                XLSheet.Range(lr, HR).Rows.AutoFit
'
'
'                m = XLSheet.UsedRange.Rows.Count
'                Max = m + 2
'                For I = 0 To Rs.RecordCount - 1
'                m_ROW = XLSheet.UsedRange.Rows.Count
'                XLSheet.Cells(Max, 1) = Trim(I + 1)
'
'                XLSheet.Cells(Max, 2) = Trim(Rs(1))
'                XLSheet.Cells(Max, 3) = Trim(Rs(2))
'                XLSheet.Cells(Max, 4) = Trim(Rs(3))
''                XLSheet.Cells(Max, 5) = Trim(Rs(4))
''                XLSheet.Cells(Max, 6) = Rs(5)
''                XLSheet.Cells(Max, 7) = Rs(6)
''                XLSheet.Cells(Max, 8) = Rs(7)
''                XLSheet.Cells(Max, 9) = Rs(8)
''                XLSheet.Cells(Max, 10) = Rs(9)
''                XLSheet.Cells(Max, 11) = Rs(10)
''                XLSheet.Cells(Max, 12) = Rs(11)
''                XLSheet.Cells(Max, 13) = Rs(12)
''                XLSheet.Cells(Max, 14) = Rs(13)
''                XLSheet.Cells(Max, 15) = Rs(14)
''                XLSheet.Cells(Max, 16) = Rs(15)
''                XLSheet.Cells(Max, 17) = Rs(16)
''                XLSheet.Cells(Max, 18) = Rs(17)
''                XLSheet.Cells(Max, 19) = Rs(18)
''                XLSheet.Cells(Max, 20) = Rs(19)
''                XLSheet.Cells(Max, 21) = Rs(20)
''                XLSheet.Cells(Max, 22) = Rs(21)
''                XLSheet.Cells(Max, 23) = Rs(22)
''                XLSheet.Cells(Max, 24) = Rs(23)
''                XLSheet.Cells(Max, 25) = Rs(24)
'
'
'
'                Rs.MoveNext
'                Max = Max + 1
'        Next I
'
'        Dim j As Integer
'        j = 7
'        Set Rs = New Recordset
'        Rs.Open "select *from VW_RMI_FibreCreditNoteDiscount where docdate between '" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and '" & Format(DTPicker2.value, "YYYY-MM-DD") & "' and supcd in (select items from dbo.split('" & L_supcd & "',',')) and  varcode in (select items from dbo.split('" & L_Var & "',','))  and plant in (select items from dbo.split('" & L_Plant & "',',')) ", db, adOpenStatic
'        For I = 0 To Rs.RecordCount - 1
'        Set EmpRs = New Recordset
'
'                 Dim Totkg, TOTVAL, TOTWPWT As Double
'          Totkg = 0: TOTVAL = 0
'       ' EmpRs.Open "select SUM(chemQty) chemQty ,itemname ,SUM(VALUE)/SUM(chemQty) RATE,(isnull(WarpNet,0))  WarpNet from Vw_RM_CreditNoteDiscountTypes where SETNO='" & Rs("setno") & "' and SetDt ='" & Format(Rs("setdate"), "yyyy-mm-dd") & "'  and divcode='" & Divcode & "' GROUP BY itemname,(isnull(WarpNet,0)) ", DB  ''and  docdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "'
'        EmpRs.Open "select *from Vw_RM_CreditNoteDiscountTypes  ", db, adOpenStatic
'        Do While Not EmpRs.EOF
'
'            'empnoo = emprs("empno")
'            ii = chemstartpos
'                Do While ii <= (inc)
'                    If Trim(XLSheet.Cells(4, ii).value) = Trim(EmpRs("dicsctype")) And Trim(XLSheet.Cells(j, 2).value) = Trim(Rs("Fibre")) And Trim(XLSheet.Cells(j, 3).value) = Trim(Rs("Supplier")) And Trim(XLSheet.Cells(j, 4).value) = Trim(Rs("PlantName")) Then
'                     XLSheet.Cells(j, ii).value = Round(Rs("drate"), 2)
'                     XLSheet.Cells(j, ii + 1).value = Round(Rs("DiscValue"), 2)
'                     Totkg = Totkg + Round(Rs("DiscValue"), 2)
'                     i1 = i1 + 1
'                     GoTo NXT1
'                    End If
'                    ii = ii + 1
'                Loop
'NXT1:
'
'            EmpRs.MoveNext
'            Loop
''             TOTWPWT = IIf(IsNull(Rs("WarpWT")), 0, Rs("WarpWT"))
''            XLSheet.Cells(j, inc).value = Round(val(TOTKG), 3)
''            XLSheet.Cells(j, inc + 1).value = Round(val(TOTVAL), 2)
'            If Totkg > 0 Then
'            XLSheet.Cells(j, inc + 2).value = CStr(Round(IIf(val(TOTWPWT) > 0, (val(TOTVAL) / val(TOTWPWT)), 0), 2))
'            End If
'        j = j + 1
'        Rs.MoveNext
'                'Max = Max + 1
'        Next I
'                XLSheet.Columns.AutoFit
'                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
'                m_ROW = XLSheet.UsedRange.Rows.Count
'                MR = "K" & m_ROW
'
'                XLSheet.Cells(m_ROW + 1, 5).Formula = "=SUM(E4:E" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 4).Formula = "=SUM(D4:D" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(F9:F" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G9:G" & m_ROW & ")"
'
'                XLSheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H9:H" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 9).Formula = "=SUM(I9:I" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 10).Formula = "=SUM(J9:J" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K9:K" & m_ROW & ")"
'                XLSheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L9:L" & m_ROW & ")"
'
'                XLSheet.Cells(m_ROW + 1, 16).Formula = "=SUM(M9:M" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 17).Formula = "=SUM(Q9:Q" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 18).Formula = "=SUM(R9:R" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 19).Formula = "=SUM(S9:S" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 20).Formula = "=SUM(T9:T" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 21).Formula = "=SUM(U9:U" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 22).Formula = "=SUM(V9:V" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 23).Formula = "=SUM(W9:W" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 24).Formula = "=SUM(X9:X" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 25).Formula = "=SUM(Y9:Y" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 26).Formula = "=SUM(Z9:Z" & m_ROW & ")"
''
''
''
''                XLSheet.Cells(m_ROW + 1, 27).Formula = "=SUM(AA9:AA" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 28).Formula = "=SUM(AB9:AB" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 29).Formula = "=SUM(AC9:AC" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 30).Formula = "=SUM(AD9:AD" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 31).Formula = "=SUM(AE9:AE" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 32).Formula = "=SUM(AF9:AF" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 33).Formula = "=SUM(AG9:AG" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 34).Formula = "=SUM(AH9:AH" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 35).Formula = "=SUM(AI9:AI" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 36).Formula = "=SUM(AJ9:AJ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 37).Formula = "=SUM(AK9:AK" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 38).Formula = "=SUM(AL9:AL" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 39).Formula = "=SUM(AM9:AM" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 40).Formula = "=SUM(AN9:AN" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 41).Formula = "=SUM(AO9:AO" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 42).Formula = "=SUM(AP9:AP" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 43).Formula = "=SUM(AQ9:AQ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 44).Formula = "=SUM(AR9:AR" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 45).Formula = "=SUM(AS9:AS" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 46).Formula = "=SUM(AT9:AT" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 47).Formula = "=SUM(AU9:AU" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 48).Formula = "=SUM(AV9:AV" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 49).Formula = "=SUM(AW9:AW" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 50).Formula = "=SUM(AX9:AX" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 51).Formula = "=SUM(AY9:AY" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 52).Formula = "=SUM(AZ9:AZ" & m_ROW & ")"
''
''
''
''                XLSheet.Cells(m_ROW + 1, 53).Formula = "=SUM(BA9:BA" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 54).Formula = "=SUM(BB9:BB" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 55).Formula = "=SUM(BC9:BC" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 56).Formula = "=SUM(BD9:BD" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 57).Formula = "=SUM(BE9:BE" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 58).Formula = "=SUM(BF9:BF" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 59).Formula = "=SUM(BG9:BG" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 60).Formula = "=SUM(BH9:BH" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 61).Formula = "=SUM(BI9:BI" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 62).Formula = "=SUM(BJ9:BJ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 63).Formula = "=SUM(BK9:BK" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 64).Formula = "=SUM(BL9:BL" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 65).Formula = "=SUM(BM9:BM" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 66).Formula = "=SUM(BN9:BN" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 67).Formula = "=SUM(BO9:BO" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 68).Formula = "=SUM(BP9:BP" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 69).Formula = "=SUM(BQ9:BQ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 70).Formula = "=SUM(BR9:BR" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 71).Formula = "=SUM(BS9:BS" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 72).Formula = "=SUM(BT9:BT" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 73).Formula = "=SUM(BU9:BU" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 74).Formula = "=SUM(BV9:BV" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 75).Formula = "=SUM(BW9:BW" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 76).Formula = "=SUM(BX9:BX" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 77).Formula = "=SUM(BY9:BY" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 78).Formula = "=SUM(BZ9:BZ" & m_ROW & ")"
''
''
''
''                XLSheet.Cells(m_ROW + 1, 79).Formula = "=SUM(CA9:CA" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 80).Formula = "=SUM(CB9:CB" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 81).Formula = "=SUM(CC9:CC" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 82).Formula = "=SUM(CD9:CD" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 83).Formula = "=SUM(CE9:CE" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 84).Formula = "=SUM(CF9:CF" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 85).Formula = "=SUM(CG9:CG" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 86).Formula = "=SUM(CH9:CH" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 87).Formula = "=SUM(CI9:CI" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 88).Formula = "=SUM(CJ9:CJ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 89).Formula = "=SUM(CK9:CK" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 90).Formula = "=SUM(CL9:CL" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 91).Formula = "=SUM(CM9:CM" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 92).Formula = "=SUM(CN9:CN" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 93).Formula = "=SUM(CO9:CO" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 94).Formula = "=SUM(CP9:CP" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 95).Formula = "=SUM(CQ9:CQ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 96).Formula = "=SUM(CR9:CR" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 97).Formula = "=SUM(CS9:CS" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 98).Formula = "=SUM(CT9:CT" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 99).Formula = "=SUM(CU9:CU" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 100).Formula = "=SUM(CV9:CV" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 101).Formula = "=SUM(CW9:CW" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 102).Formula = "=SUM(CX9:CX" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 103).Formula = "=SUM(CY9:CY" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 104).Formula = "=SUM(CZ9:CZ" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 105).Formula = "=SUM(DA9:DA" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 106).Formula = "=SUM(DB9:DB" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 107).Formula = "=SUM(DC9:DC" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 108).Formula = "=SUM(DD9:DD" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 109).Formula = "=SUM(DE9:DE" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 110).Formula = "=SUM(DF9:DF" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 111).Formula = "=SUM(DG9:DG" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 112).Formula = "=SUM(DH9:DH" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 113).Formula = "=SUM(DI9:DI" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 114).Formula = "=SUM(DJ9:DJ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 115).Formula = "=SUM(DK9:DK" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 116).Formula = "=SUM(DL9:DL" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 117).Formula = "=SUM(DM9:DM" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 118).Formula = "=SUM(DN9:DN" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 119).Formula = "=SUM(DO9:DO" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 120).Formula = "=SUM(DP9:DP" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 121).Formula = "=SUM(DQ9:DQ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 122).Formula = "=SUM(DR9:DR" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 123).Formula = "=SUM(DS9:DS" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 124).Formula = "=SUM(DT9:DT" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 125).Formula = "=SUM(DU9:DU" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 126).Formula = "=SUM(DV9:DV" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 127).Formula = "=SUM(DW9:DW" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 128).Formula = "=SUM(DX9:DX" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 129).Formula = "=SUM(DY9:DY" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 130).Formula = "=SUM(DZ9:DZ" & m_ROW & ")"
''
''
''                XLSheet.Cells(m_ROW + 1, 131).Formula = "=SUM(EA9:EA" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 132).Formula = "=SUM(EB9:EB" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 133).Formula = "=SUM(EC9:EC" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 134).Formula = "=SUM(ED9:ED" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 135).Formula = "=SUM(EE9:EE" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 136).Formula = "=SUM(EF9:EF" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 137).Formula = "=SUM(EG9:EG" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 138).Formula = "=SUM(EH9:EH" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 139).Formula = "=SUM(EI9:EI" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 140).Formula = "=SUM(EJ9:EJ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 141).Formula = "=SUM(EK9:EK" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 142).Formula = "=SUM(EL9:EL" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 143).Formula = "=SUM(EM9:EM" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 144).Formula = "=SUM(EN:EN" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 145).Formula = "=SUM(EO9:EO" & m_ROW & ")"
''
''                XLSheet.Cells(m_ROW + 1, 146).Formula = "=SUM(EP9:EP" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 147).Formula = "=SUM(EQ9:EQ" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 148).Formula = "=SUM(ER9:ER" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 149).Formula = "=SUM(ES9:ES" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 150).Formula = "=SUM(ET9:ET" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 151).Formula = "=SUM(EU9:EU" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 152).Formula = "=SUM(EV9:EV" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 153).Formula = "=SUM(EW9:EW" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 154).Formula = "=SUM(EX9:EX" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 155).Formula = "=SUM(EY9:EY" & m_ROW & ")"
''                XLSheet.Cells(m_ROW + 1, 156).Formula = "=SUM(EZ9:EZ" & m_ROW & ")"
'
'
'
'
'
'                m_ROW = XLSheet.UsedRange.Rows.Count
'                ''
'
'                lr = "A" & m
'                HR = "P" & m_ROW
'
'                With XLSheet.Range(lr, HR)
'                .Borders.LineStyle = xlThin
'
'                With .Borders(xlInsideHorizontal)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlInsideVertical)
'                .LineStyle = xlContinuous
'                .Weight = xlThin
'                .ColorIndex = xlAutomatic
'                End With
'
'                With .Borders(xlEdgeTop)
'                .Weight = xlThin
'                End With
'
'                With .Borders(xlEdgeBottom)
'                .Weight = xlThin
'                End With
'                End With
'
'                Myxl.Application.Visible = True
'
'                Set XLSheet = Nothing
'                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
'                Else
'                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
'                'CmbVtype.SetFocus
'                Exit Sub
'            End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub


Private Sub LoadDivisionList()
On Error GoTo BUTTON_Click_Error
 Set temprs = New Recordset
    If Local_RepIndex = 1 Then
        temprs.Open "select Company_Name , DATABASE_NAME from Vw_CompanyDBList   ", DB, adOpenStatic
        If Not temprs.EOF Then
        LT_COM.ListItems.Clear
            Dim li1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = LT_COM.ListItems.ADD(, , Mid(temprs!Company_Name, 1, 50))
                    LT_COM.ListItems(LT_COM.ListItems.Count).ListSubItems.ADD , , temprs!DATABASE_NAME
                    temprs.MoveNext
                Loop
            End If
        End If
    End If
    
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
End Sub
