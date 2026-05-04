VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Quality_Query 
   Caption         =   "Quality Parameters"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   ForeColor       =   &H80000005&
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   9120
      Top             =   480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Frame Frame6 
      Height          =   4515
      Left            =   240
      TabIndex        =   0
      Top             =   1080
      Visible         =   0   'False
      Width           =   14565
      Begin VB.CommandButton Command1 
         Caption         =   "&Report"
         Height          =   390
         Left            =   11640
         TabIndex        =   15
         Top             =   600
         Width           =   1215
      End
      Begin VB.TextBox Txtfields 
         DataField       =   "PLOTNO"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   1
         Left            =   8640
         MaxLength       =   10
         TabIndex        =   13
         Top             =   615
         Width           =   1230
      End
      Begin VB.TextBox Txtfields 
         DataField       =   "PLOTNO"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Index           =   0
         Left            =   6600
         MaxLength       =   10
         TabIndex        =   11
         Top             =   615
         Width           =   1110
      End
      Begin VB.CommandButton Command4 
         Caption         =   "&Cancel"
         Height          =   390
         Left            =   13080
         TabIndex        =   3
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton Command3 
         Caption         =   "&OK"
         Height          =   390
         Left            =   10080
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin MSDataGridLib.DataGrid GrdDataGrid 
         Height          =   3300
         Left            =   150
         TabIndex        =   1
         Top             =   1080
         Width           =   14250
         _ExtentX        =   25135
         _ExtentY        =   5821
         _Version        =   393216
         BackColor       =   16777152
         ForeColor       =   8388608
         HeadLines       =   1
         RowHeight       =   19
         TabAction       =   2
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "MS Sans Serif"
            Size            =   9.75
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
               Type            =   1
               Format          =   "dd/MM/yyyy"
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
      Begin RMI.KslCompanySelection Kslcmpsel 
         Height          =   750
         Left            =   120
         TabIndex        =   16
         Top             =   240
         Width           =   5415
         _ExtentX        =   9551
         _ExtentY        =   1323
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
      Begin VB.Label LblFields 
         AutoSize        =   -1  'True
         Caption         =   "To LotNo."
         Height          =   195
         Index           =   1
         Left            =   7800
         TabIndex        =   14
         Top             =   705
         Width           =   720
      End
      Begin VB.Label LblFields 
         AutoSize        =   -1  'True
         Caption         =   "From LotNo."
         Height          =   195
         Index           =   0
         Left            =   5640
         TabIndex        =   12
         Top             =   705
         Width           =   870
      End
   End
   Begin VB.Frame Frame7 
      Height          =   700
      Left            =   0
      TabIndex        =   4
      Top             =   -90
      Visible         =   0   'False
      Width           =   5040
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Quality_Query.frx":0000
         Height          =   550
         Index           =   10
         Left            =   525
         Picture         =   "Quality_Query.frx":030A
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Cancel "
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   550
         Index           =   11
         Left            =   1050
         Picture         =   "Quality_Query.frx":0686
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Exit"
         Top             =   135
         Width           =   520
      End
      Begin VB.CommandButton BUTTON 
         Height          =   555
         Index           =   3
         Left            =   10
         Picture         =   "Quality_Query.frx":0AD0
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "List"
         Top             =   135
         Width           =   510
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
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
         Left            =   3675
         TabIndex        =   8
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
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   1980
         TabIndex        =   7
         Top             =   255
         Width           =   600
      End
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Quality Parameters"
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
      Left            =   240
      TabIndex        =   10
      Top             =   720
      Width           =   2505
   End
End
Attribute VB_Name = "Quality_Query"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoprimaryrs As Recordset
Attribute adoprimaryrs.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim adoSecondaryRS1 As Recordset
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
Dim ITARY() As String
Dim Rs As Recordset
Dim taxc As String
Dim tax As Double, EXC As Double, SED As Double, sur As Double, dis As Double, modvat As Double
Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 3
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'Browsing
    Opt = " "
    Call Query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    Screen.MousePointer = 0
    
Case 10
    desc.Caption = "Query"
    Screen.MousePointer = 11
    'CANCEL
    Opt = " "
    Screen.MousePointer = 0
    Call Query_mode
    BUTTON(3).Enabled = True
    BUTTON(10).Enabled = True
    BUTTON(11).Enabled = True
    
    
Case 11
    'EXIT
    Unload Me
End Select
intervalMinutes = -1
Exit Sub
'er1:
'If Err = -2147467259 Then
'     MsgBox Err.description, vbInformation, head
'Else
'     MsgBox Err.description, vbInformation, head
'End If

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command2_Click()
On Error GoTo Command2_Click_Error
intervalMinutes = -1
Frame2.Visible = False

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command2_Click of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Query_mode()
intervalMinutes = -1
On Error Resume Next
 If Opt = " " Then
    Frame1.Visible = False
    Frame2.Visible = False
    Frame6.Visible = True
    DataGrid1.Visible = True
    Set adoprimaryrs = New Recordset
    'adoprimaryrs.Open "select catcd ""Category Code"",lotno ""Lot No."",lotdt ""Date"",lottype ""Lot Type""  from rm_lot where divcode = '" & Divcode & "' and lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' AND '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    'Ravi
    adoprimaryrs.Open "select catcd ""Category"",lotno ""     Lot No."",lotdt "" Lot Date"",lottype ""Lot Type"",Varcode,Billdt,cntcode,bales,opflg  from rm_lot where divcode = '" & Divcode & "' and isnull(BALES,0)-isnull(issbal,0) >0  ", DB, adOpenStatic, adLockBatchOptimistic
    
    If adoprimaryrs.BOF Then
       MsgBox "No Records Found", vbInformation, head
       Exit Sub
    Else
       Set DataGrid1.DataSource = adoprimaryrs
       DataGrid1.Columns(0).Text = adoprimaryrs(0)
       DataGrid1.Columns(1).Text = adoprimaryrs(1)
       DataGrid1.Columns(2).Text = adoprimaryrs(2)
       DataGrid1.Columns(3).Text = adoprimaryrs(3)
       DataGrid1.Columns(0).Width = 1360.284
       DataGrid1.Columns(1).Width = 1114.835
       DataGrid1.Columns(2).Width = 1234.929
       DataGrid1.Columns(3).Width = 1080
       DataGrid1.Columns(1).Alignment = dbgRight
       DataGrid1.Columns(4).Visible = False
       DataGrid1.Columns(5).Visible = False
       DataGrid1.Columns(6).Visible = False
       DataGrid1.Columns(7).Visible = False
       DataGrid1.Columns(8).Visible = False
    End If
    For i = 0 To 7
        DataGrid1.Columns(i).Locked = True
    Next
    
    Frame6.ZOrder
 End If
 intervalMinutes = -1
    End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
intervalMinutes = -1
    If val(txtFields(0).Text) > val(txtFields(1).Text) Then
        MsgBox "From Lot No. Should Not be Greater than To LotNo. ", vbInformation, head
        Exit Sub
    End If
    
  
    
'    With CrystalReport1
'
'        .ReportFileName = ""
'
'
'        .ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_MIS.rpt"
'
'
'        'If (CrystalReport1.RetrieveDataFiles) = True Then
'        .RetrieveDataFiles
'
'        .DataFiles(0) = Kslcmpsel.SelDB & Mid(.DataFiles(0), InStr(1, .DataFiles(0), "."), Len(.DataFiles(0)))
'
'        '.SelectionFormula = "{RM_Lot.LotNo} >= " & val(txtfields(0).Text) & " AND {RM_Lot.LotNo} <= " & val(txtfields(1).Text) & ""
'        .WindowState = crptMaximized
'        .Action = 1
'        .PrinterCopies = 1
'    End With
    FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Quality_MIS.rpt"
    FrmRpt.RptHead = 4
    parameter1 = Format(yfdate, "yyyy-mm-dd")
    parameter2 = Format(yldate, "yyyy-mm-dd")
    parameter3 = Format(pdate, "yyyy-mm-dd")
    parameter4 = Divcode
    FrmRpt.Show
    intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command3_Click()
intervalMinutes = -1
On Error GoTo Command3_Click_Error
Dim i As Integer
    If val(txtFields(0).Text) > val(txtFields(1).Text) Then
        MsgBox "From Lot No. Should Not be Greater than To LotNo. ", vbInformation, head
        Exit Sub
    End If
    Dim ShowRs As Recordset
    Set ShowRs = New Recordset
    ShowRs.Open "Select a.LotNo ""Mill Lot No.""  ,a.Varcode ""Variety"",Count(b.BaleNo) as ""Quantity"",c.GName as ""Godown"",a.RateCy ""Rate/Candy"",a.RateKg ""Rate/Kg"",a.staplen ""Span Length"",a.uniratio ""Uniformity"",a.SFI ""Short Fibre"",a.GTex ""Fibre Strength"",a.STRENGTH ""Micronaire"",a.moiture ""Moisture"",a.trash_per ""Trash %"",a.RD,a.BB ""+ B"",a.COLORCode ""Colour Grade"",a.SCI,a.FQI,a.Remarks from RM_Lot a " & _
        " INNER JOIN RM_Bale b ON a.LotNo=b.LotNo and a.LotDt=b.LotDt and a.LotType=b.LotType and a.Divcode=b.Divcode /*and ISNULL(b.Issued,'N')<>'N'*/ " & _
        " INNER JOIN RM_God c ON a.GODOWN=c.GCode and c.Divcode=a.Divcode " & _
        " Where  a.lotyear='" & Year(yfdate) & "' and a.LotNo Between '" & val(txtFields(0).Text) & "' and '" & val(txtFields(1).Text) & "' " & _
        " Group by a.LotNo,a.Varcode,c.GName,a.RateCy,a.RateKg,a.STAPLEN,a.uniratio,a.SFI,a.GTex,a.STRENGTH,a.moiture,a.trash_per,a.RD,a.BB,a.COLORCode,a.SCI,a.FQI,a.Remarks Order by a.LotNo ", DB, adOpenStatic
    If ShowRs.RecordCount > 0 Then
        Set grdDataGrid.DataSource = ShowRs
        For i = 2 To 17 Step 1
            If i <> 3 Or i <> 15 Then grdDataGrid.Columns(i).Alignment = dbgRight
        Next
    End If
intervalMinutes = -1
Exit Sub
Command3_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command3_Click of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Command4_Click()
On Error GoTo Command4_Click_Error
intervalMinutes = -1
Call BUTTON_Click(11)
intervalMinutes = -1
Exit Sub
Command4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command4_Click of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_DblClick()
On Error GoTo DataGrid1_DblClick_Error

Call Command3_Click
intervalMinutes = -1
Exit Sub
DataGrid1_DblClick_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_DblClick of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DataGrid1_KeyPress(KeyAscii As Integer)
On Error GoTo DataGrid1_KeyPress_Error

KeyAscii = 0

Exit Sub
DataGrid1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DataGrid1_KeyPress of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
  Opt = " "
  Set DB = New Connection
  DB.CursorLocation = adUseClient
  DB.Open "PROVIDER=MSDataShape;" + connectstring
  DATLAB.Caption = pdate   'This variable is declared as global to show the date
  Kslcmpsel.ConnStr = connectstring
   Call Query_mode
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
  End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error
intervalMinutes = -1
  Screen.MousePointer = vbDefault
  On Error Resume Next
  DB.Close
  Set adoprimaryrs = Nothing
  Reset

Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
  End Sub

Public Sub clearval()
On Error GoTo clearval_Error

For i = 0 To 8
  txtFields(i).Text = ""
Next

Exit Sub
clearval_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clearval of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disabletxt()
On Error GoTo disabletxt_Error

For i = 0 To 8
  txtFields(i).Locked = True
Next
DataGrid2.Columns(0).Locked = True
DataGrid2.Columns(1).Locked = True
DataGrid2.Columns(2).Locked = True
DataGrid2.Columns(3).Locked = True
'DataGrid2.Columns(4).Locked = True
intervalMinutes = -1
Exit Sub
disabletxt_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disabletxt of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Public Sub disablcontls()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the recordset
On Error GoTo disablcontls_Error

    For Each oText In Me.txtFields
        oText.Locked = True
    Next
intervalMinutes = -1
Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0

End Sub
Public Sub ENABLCONTLS()
    'To lock the textboxes and datagrid
    Dim oText As TextBox
    'Bind the text boxes to the data provider
On Error GoTo ENABLCONTLS_Error

    For Each oText In Me.txtFields
        oText.Locked = False
    Next

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Text1_KeyPress(KeyAscii As Integer)
On Error GoTo Text1_KeyPress_Error

KeyAscii = 0

Exit Sub
Text1_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text1_KeyPress of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text2_KeyPress(KeyAscii As Integer)
On Error GoTo Text2_KeyPress_Error

KeyAscii = 0

Exit Sub
Text2_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text2_KeyPress of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub Text3_KeyPress(KeyAscii As Integer)
On Error GoTo Text3_KeyPress_Error

KeyAscii = 0

Exit Sub
Text3_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Text3_KeyPress of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub txtFields_Validate(Index As Integer, Cancel As Boolean)
On Error GoTo txtfields_Validate_Error
intervalMinutes = -1
    Select Case Index
        Case 0, 1
            
                Dim LotRs As Recordset
                Set LotRs = New Recordset
                LotRs.Open "Select LotNo From RM_Lot where  lotyear='" & Year(yfdate) & "' and LotNo ='" & val(txtFields(Index).Text) & "'", DB, adOpenStatic
                If LotRs.RecordCount > 0 Then
                    txtFields(Index).Text = LotRs("LotNO")
                Else
                    LookUp.clear = True
                    LookUp.query = "Select LotNo,Lotdt,LotType,CatCd,Varcode from RM_Lot  where lotyear='" & Year(yfdate) & "'"
                    LookUp.Caption = "Lot Details Listing"
                    LookUp.ALIGN = "1500,1500,1500,1500,1500"
                    LookUp.DefCol = "LotNo"
                    LookUp.Show vbModal
                    If LookUp.Cancel = False Then
                        txtFields(Index).Text = LookUp.Fields(0)
                    Else
                        txtFields(Index).Text = ""
                    End If
                End If
            
    End Select

Exit Sub
txtfields_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Txtfields_Validate of Form Quality_Query", vbInformation, head
Screen.MousePointer = 0
End Sub


