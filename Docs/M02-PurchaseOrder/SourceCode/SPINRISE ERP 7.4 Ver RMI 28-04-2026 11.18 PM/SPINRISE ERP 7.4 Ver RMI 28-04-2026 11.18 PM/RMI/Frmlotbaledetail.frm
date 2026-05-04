VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Frmlotbaledetail 
   Caption         =   "Lot -Bale Weightment Data Transfer"
   ClientHeight    =   8700
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11880
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8700
   ScaleWidth      =   11880
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      Height          =   6195
      Left            =   600
      TabIndex        =   2
      Top             =   360
      Width           =   11070
      Begin VB.Frame Frame3 
         Height          =   5775
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   10815
         Begin VB.Frame Frame2 
            BackColor       =   &H80000000&
            Height          =   2055
            Left            =   8640
            TabIndex        =   23
            Top             =   240
            Width           =   1935
            Begin VB.CommandButton cmdConnect 
               Height          =   615
               Left            =   120
               Picture         =   "Frmlotbaledetail.frx":0000
               Style           =   1  'Graphical
               TabIndex        =   27
               Top             =   240
               Width           =   1695
            End
            Begin VB.CommandButton cmdClose 
               Height          =   615
               Left            =   120
               Picture         =   "Frmlotbaledetail.frx":0C67
               Style           =   1  'Graphical
               TabIndex        =   25
               Top             =   1080
               Width           =   1695
            End
         End
         Begin VB.CommandButton Command3 
            Caption         =   "&Exit"
            Height          =   315
            Left            =   3840
            TabIndex        =   26
            Top             =   2760
            Width           =   975
         End
         Begin VB.CommandButton Command2 
            Caption         =   "&New"
            Height          =   315
            Left            =   1440
            TabIndex        =   24
            Top             =   2760
            Width           =   975
         End
         Begin VB.TextBox txtbaleno 
            Height          =   330
            Left            =   1470
            TabIndex        =   20
            Top             =   2160
            Width           =   1335
         End
         Begin VB.TextBox txtbaleweight 
            Height          =   330
            Left            =   4095
            TabIndex        =   21
            Top             =   2160
            Width           =   1215
         End
         Begin VB.TextBox txtvarcode 
            Height          =   330
            Left            =   1470
            TabIndex        =   18
            Top             =   1680
            Width           =   1335
         End
         Begin VB.TextBox txtvarname 
            Height          =   330
            Left            =   2895
            TabIndex        =   16
            Top             =   1680
            Width           =   5535
         End
         Begin VB.TextBox txtarrivallotno 
            Height          =   330
            Left            =   1470
            TabIndex        =   15
            Top             =   1200
            Width           =   2055
         End
         Begin VB.TextBox txtsupplylotno 
            Height          =   330
            Left            =   1470
            TabIndex        =   13
            Top             =   720
            Width           =   2055
         End
         Begin VB.TextBox txtsuppcode 
            Height          =   330
            Left            =   1440
            TabIndex        =   11
            Top             =   240
            Width           =   1335
         End
         Begin VB.CommandButton AddButton 
            Caption         =   "&Save"
            Height          =   315
            Left            =   2655
            TabIndex        =   22
            Top             =   2760
            Width           =   975
         End
         Begin VB.TextBox txtsuppname 
            Height          =   330
            Left            =   2865
            TabIndex        =   8
            Top             =   240
            Width           =   5535
         End
         Begin MSFlexGridLib.MSFlexGrid GridName 
            Height          =   2415
            Left            =   240
            TabIndex        =   9
            TabStop         =   0   'False
            Top             =   3240
            Width           =   6375
            _ExtentX        =   11245
            _ExtentY        =   4260
            _Version        =   393216
            Cols            =   3
            BackColor       =   12648447
            ForeColor       =   0
            FormatString    =   "^Sno    |<Bale No       |<Bale Weight   "
         End
         Begin MSWinsockLib.Winsock Winsock1 
            Left            =   8640
            Top             =   5160
            _ExtentX        =   741
            _ExtentY        =   741
            _Version        =   393216
         End
         Begin VB.Label Label5 
            AutoSize        =   -1  'True
            Caption         =   "Gross Wt "
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
            Left            =   3000
            TabIndex        =   28
            Top             =   2280
            Width           =   855
         End
         Begin VB.Label baleno1 
            AutoSize        =   -1  'True
            Caption         =   "BaleNo"
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
            Left            =   120
            TabIndex        =   19
            Top             =   2235
            Width           =   630
         End
         Begin VB.Label Label4 
            AutoSize        =   -1  'True
            Caption         =   "Varity "
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
            Left            =   120
            TabIndex        =   17
            Top             =   1755
            Width           =   555
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "Arrival  LotNo"
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
            Left            =   120
            TabIndex        =   14
            Top             =   1275
            Width           =   1185
         End
         Begin VB.Label Label1 
            AutoSize        =   -1  'True
            Caption         =   "Supplier LotNo"
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
            Left            =   120
            TabIndex        =   12
            Top             =   795
            Width           =   1275
         End
         Begin VB.Label Label3 
            AutoSize        =   -1  'True
            Caption         =   "Supplier Name"
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
            Left            =   90
            TabIndex        =   10
            Top             =   315
            Width           =   1245
         End
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frmlotbaledetail.frx":1818
         Height          =   375
         Index           =   8
         Left            =   9765
         Picture         =   "Frmlotbaledetail.frx":1C62
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Last Record (Ctrl Right)"
         Top             =   9015
         Width           =   530
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frmlotbaledetail.frx":1FC4
         Height          =   375
         Index           =   7
         Left            =   9195
         Picture         =   "Frmlotbaledetail.frx":240E
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "Previous Record (Ctrl Up)"
         Top             =   9015
         Width           =   530
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frmlotbaledetail.frx":275E
         Height          =   375
         Index           =   5
         Left            =   9210
         Picture         =   "Frmlotbaledetail.frx":2BA8
         Style           =   1  'Graphical
         TabIndex        =   4
         ToolTipText     =   "First Record  (Ctrl Left)"
         Top             =   8610
         Width           =   530
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frmlotbaledetail.frx":2F0D
         Height          =   375
         Index           =   6
         Left            =   9780
         Picture         =   "Frmlotbaledetail.frx":3357
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "Next Record (Ctrl Down)"
         Top             =   8625
         Width           =   530
      End
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   120
      Top             =   2745
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   240
      Top             =   1800
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   0
      Top             =   8400
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KalSoft Textile"
            TextSave        =   "KalSoft Textile"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   15875
            MinWidth        =   15875
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "08/06/2015"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "02:55 PM"
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
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Lot -Bale Weightment Data Transfer"
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
      Left            =   600
      TabIndex        =   1
      Top             =   0
      Width           =   4680
   End
End
Attribute VB_Name = "Frmlotbaledetail"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Opt
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim adoSecondaryRS As Recordset
Dim N As Variant
Dim Rs As Recordset
Dim rs1 As Recordset
Dim RS2 As Recordset
Dim rst As Recordset
Dim rr As New Recordset
Dim Mno As Double
Dim DB As ADODB.Connection
Dim RsPass As Recordset
Dim RsTmp As Recordset
Dim reg  As Recordset
Dim S As Integer, i As Integer
Dim depcode As String
Dim str12 As String
Dim CCODE

Private Sub Querymode()
Opt = "qry"
Set adoPrimaryRS = New Recordset
    adoPrimaryRS.Open " SELECT PNO,PDATE,COMPANY,VECHICLENO,ANYMATIN FROM Gt_Pass where pdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' ORDER BY PDATE DESC ", DB, adOpenKeyset, adLockReadOnly

End Sub
Private Sub AddButton_Click()

On Error GoTo AddButton_Click_Error
'If SaveButton.Enabled = False Then Exit Sub
    If Trim(txtsuppname.Text) = "" Then
        MsgBox "Select Valid Supplier Name", vbInformation, head
        Screen.MousePointer = 0
        txtsuppname.SetFocus
        Exit Sub
    End If
    If Trim(txtvarname.Text) = "" Then
        MsgBox "Select Valid varity Name", vbInformation, head
        Screen.MousePointer = 0
        txtvarname.SetFocus
        Exit Sub
    End If
     If val(txtbaleno.Text) = 0 Then
        MsgBox "Select Valid BaleNo", vbInformation, head
        Screen.MousePointer = 0
        txtbaleno.SetFocus
        Exit Sub
    End If
    If val(txtbaleweight.Text) = 0 Then
        MsgBox "Select Valid BaleWeight", vbInformation, head
        Screen.MousePointer = 0
        txtbaleweight.SetFocus
        Exit Sub
    End If
    For i = 1 To GridName.Rows - 1
    If val(txtbaleno.Text) = val(GridName.TextMatrix(i, 1)) Then
    txtbaleno.Text = ""
    MsgBox "Baleno Already Entered", vbInformation, head
    txtbaleno.SetFocus
    Exit Sub
    End If
    
    Next
    DB.Execute "INSERT INTO Rm_baletemp(slcode,supplotno,Arrivallotno,varcode,baleno,millGRossWT,Transflag) VALUES('" & txtsuppcode.Text & "','" & txtsupplylotno.Text & "','" & txtarrivallotno.Text & "','" & txtvarcode.Text & "'," & txtbaleno.Text & "," & txtbaleweight.Text & ",'Y')"

    GridName.Rows = GridName.Rows + 1
    GridName.TextMatrix(GridName.Rows - 1, 0) = GridName.Rows - 1
    GridName.TextMatrix(GridName.Rows - 1, 1) = Trim(txtbaleno)
    GridName.TextMatrix(GridName.Rows - 1, 2) = txtbaleweight.Text
    GridName.ColAlignment(0) = dbgLeft
    GridName.ColAlignment(1) = dbgRight
txtbaleno.Text = ""
txtbaleweight.Text = ""
Exit Sub

AddButton_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure AddButton_Click of Form Frmlotbaledetail"
End Sub


Private Sub BUTTON_Click(Index As Integer)

Select Case Index
Case 5
    'first
        If Record_Exists("Gt_Pass where divcode='" & Divcode & "'") = False Then Exit Sub
      
        On Error GoTo GoFirstError
        If adoPrimaryRS.BOF = False Then
            adoPrimaryRS.MoveFirst
        End If
        stbar.Panels(2).Text = "First Record"
        Call FIR(BUTTON)
        Exit Sub
GoFirstError:
            
Case 6
'next
        If Record_Exists("Gt_Pass where divcode='" & Divcode & "'") = False Then Exit Sub
      
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
            adoPrimaryRS.MoveLast
        End If
            Exit Sub
GoNextError:

Case 7
 'previous
        If Record_Exists("Gt_Pass where divcode='" & Divcode & "'") = False Then Exit Sub
      
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
            BUTTON(5).Enabled = False
            BUTTON(7).Enabled = False
            BUTTON(6).Enabled = True
            BUTTON(8).Enabled = True
            adoPrimaryRS.MoveFirst
        End If
        Exit Sub

GoPrevError:
       
Case 8
'last
        If Record_Exists("Gt_Pass where divcode='" & Divcode & "'") = False Then Exit Sub
      
         On Error GoTo GoLastError
         If adoPrimaryRS.EOF = False Then
            adoPrimaryRS.MoveLast
         End If
         stbar.Panels(2).Text = "Last Record"
         Call las(BUTTON)
         Exit Sub
GoLastError:
End Select

End Sub

Private Sub CancelButton_Click()
On Error GoTo CancelButton_Click_Error
    SaveButton.Enabled = False
    NewButton.Enabled = True
    Call Format_Grid
    Call CNEWFORM(GSNO)
    Combo1.ListIndex = 0
Exit Sub
CancelButton_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure CancelButton_Click of Form Frmlotbaledetail"
End Sub




Private Sub Combo2_Change()
Combo2.AddItem = "NO"
Combo2.ItemData(Combo2.NewIndex) = 0
Combo2.AddItem = "YES"
Combo2.ItemData(Combo2.NewIndex) = 1
End Sub

Private Sub CmdModify_Click()
Opt = "MOD"
'SaveButton.Enabled = True
'FrmVisitorInLook.Show
'FrmVisitorInLook.txtkey.Text = "INPASS"

 LookUp.clear = True
    LookUp.query = "SELECT PNO,PDATE,NAME1,INTIME,CODE,DIVCODE,PASSCODE,PASSNO from Gt_passdt ORDER BY PDATE DESC"
    LookUp.Caption = "Pass Number Listing"
    LookUp.ALIGN = "1000,2500"
    LookUp.DefCol = "PNo"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
      txtPno.Text = LookUp.Fields(0)
      dtpDate.value = LookUp.Fields(1)
      txtName1.Text = LookUp.Fields(2)
      dtpTime.value = LookUp.Fields(3)
      CCODE = LookUp.Fields(4)
      Set Rs = DB.Execute("select * from Gt_Pass where PNO='" & txtPno & "'")
       
       Frmlotbaledetail.Text3 = Rs("VECHICLENO")
      Frmlotbaledetail.Text4 = Rs("ANYMATIN")
      Set Rs = DB.Execute("select * from Gt_PassDT where PNO='" & txtPno & "' AND PDATE='" & Format(dtpDate.value, "YYYY-MM-DD") & "'")
      Frmlotbaledetail.Text1 = Rs("PASSNO")
      Set rs1 = DB.Execute("select * from gt_MASTER where CONVERT(VARCHAR,COMCODE)='" & (CCODE) & "' ")
        Frmlotbaledetail.txtCompany = rs1("COMPANY")
        Frmlotbaledetail.txtAddress = rs1("ADDRESS")
        Frmlotbaledetail.txtAddress2 = rs1("ADDRESS2")
        Frmlotbaledetail.txtCity = rs1("CITY")
        Frmlotbaledetail.txtState = rs1("STATE")
        Set rs1 = DB.Execute("select PERSON,purpose,DEPCODE from gt_pass where pno='" & (txtPno) & "' AND PDATE='" & Format(dtpDate.value, "YYYY-MM-DD") & "' ")
        
        If rs1.EOF = False Then
            Frmlotbaledetail.txtPerson = rs1.Fields(0) & ""
            Frmlotbaledetail.txtPurpose = rs1.Fields(1)
            Frmlotbaledetail.txtdep = rs1.Fields(2)

       End If
        Set rst = New Recordset
        Set rst = DB.Execute("select name1,intime,passno,passcode from Gt_passdt where pno='" & (txtPno) & "' AND PDATE='" & Format(dtpDate.value, "YYYY-MM-DD") & "'")
        'GridName.clear
        Format_Grid
        GridName.Rows = 1
        GridName.Cols = 6
        If rst.RecordCount <> 0 Then
            rst.MoveFirst
            While Not rst.EOF
                GridName.Rows = GridName.Rows + 1
               ' GridName.Cols = GridName.Cols - 1
                GridName.TextMatrix(GridName.Rows - 1, 0) = GridName.Rows - 1
                GridName.TextMatrix(GridName.Rows - 1, 1) = IIf(IsNull(rst("Name1")), "", rst("Name1"))
                GridName.TextMatrix(GridName.Rows - 1, 2) = IIf(IsNull(rst("Intime")), "", rst("Intime"))
                GridName.TextMatrix(GridName.Rows - 1, 3) = IIf(IsNull(rst("passno")), "", rst("passno"))
                GridName.TextMatrix(GridName.Rows - 1, 4) = IIf(IsNull(rst("passcode")), "", rst("passcode"))
                rst.MoveNext
            Wend
        End If
      LookUp.clear = True
    End If
    'CmdModify.Enabled = False
    SaveButton.Enabled = True
End Sub

Private Sub Command1_Click()
Dim rstemp As New ADODB.Recordset
If Text1.Text = "" Then
    LookUp.clear = True
    LookUp.query = "select a.PNo,a.Pdate from gt_pass a,gt_master b where a.company=b.comcode and a.pdate between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "' and a.divcode='" & Divcode & "'"
    LookUp.Caption = "Pass Number Listing"
    LookUp.ALIGN = "1000,2500"
    LookUp.DefCol = "DocumentNo"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        Dim CRVisitor As New clsCrystal
        If UCase(Trim(CustID)) = "SARANYA" Then
            Set CRVisitor.cryRept = Tran_Visitors_PassNEW
        Else
            Set CRVisitor.cryRept = Tran_Visitors_Pass
        End If
        CRVisitor.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.DiscardSavedData = True
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepGms.rpt"
        CrystalReport1.ParameterFields(0) = "@DivCode;" & Divcode & ""
        CrystalReport1.ParameterFields(2) = "@DocNo;" & LookUp.Fields(0) & ""
        CrystalReport1.ParameterFields(3) = "@DocDate;" & Format(LookUp.Fields(1), "YYYY/MM/DD") & ""
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1
        Screen.MousePointer = 0
        
        LookUp.clear = True
    Else
        LookUp.clear = True
    End If
    Cancel = True
End If

End Sub





Private Sub dtpDate_Change()
If dtpDate.value < pdate Then
    MsgBox "Date Should not be less than Processing Date ", vbInformation, head
    dtpDate.value = pdate
    Exit Sub
End If
End Sub

Private Sub cmdClose_Click()
Winsock1.Close
MsgBox "Bale Weighment Scale DisConnected", vbInformation, "Kalsofte"

End Sub

Private Sub cmdConnect_Click()
On Error GoTo ExitButton_Click_Error
Winsock1.RemoteHost = "192.168.0.220" 'Change this to your host ip
Winsock1.RemotePort = 1
Winsock1.Connect
MsgBox "Bale Weighment Scale Connected", vbInformation, "Kalsofte"
txtbaleno.SetFocus
ExitButton_Click_Error:
If err.Number = "40020" Then
     MsgBox "Bale Weighment Scale Already Connected", vbInformation, "Kalsofte"
     txtbaleno.SetFocus
End If
End Sub

Private Sub Command2_Click()
Call ClearText
 GridName.clear
    GridName.FormatString = "SNo|^Baleno  |^Weight"
    GridName.Rows = 1
    
LoadArrival

End Sub
     

Public Sub ClearText()
txtsuppcode.Text = ""
txtarrivallotno.Text = ""
txtsuppname.Text = ""
txtsupplylotno.Text = ""
txtvarcode.Text = ""
txtvarname.Text = ""
txtbaleno.Text = ""
txtbaleweight.Text = ""
End Sub
Private Sub ExitButton_Click()
On Error GoTo ExitButton_Click_Error
    Unload Me
Exit Sub
ExitButton_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure ExitButton_Click of Form Frmlotbaledetail"
End Sub

Public Sub OpenConnection()
    On Error Resume Next
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open "PROVIDER=MSDataShape;Data PROVIDER=MSDASQL;" & connectstring
    Set Rs = New Recordset
End Sub


Private Sub Command3_Click()
Unload Me
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
Call CNEWFORM(GSNO)

If KeyCode = vbKeyA And Shift = 2 Then
    If NewButton.Enabled = True Then
        Call NewButton_Click    ''Add
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If SaveButton.Enabled = True Then
        Call SaveButton_Click    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If CancelButton.Enabled = True Then
        Call CancelButton_Click    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If ExitButton.Enabled = True Then
        Call ExitButton_Click   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If PrintButton.Enabled = True Then
        Call PrintButton_Click   ''Print Option
    End If
  Exit Sub

Form_KeyDown_Error:

MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form frmmaterialnew", head
Screen.MousePointer = 0
End If
End Sub
Private Sub Form_KeyPress(KeyAscii As Integer)
On Error GoTo Form_KeyDown_Error

If KeyCode = vbKeyA And Shift = 2 Then
    If NewButton.Enabled = True Then
        Call NewButton_Click    ''Add
    End If
ElseIf KeyCode = vbKeyS And Shift = 2 Then
    If SaveButton.Enabled = True Then
        Call SaveButton_Click    ''Save
    End If
ElseIf KeyCode = vbKeyBack And Shift = 2 Then
    If CancelButton.Enabled = True Then
        Call CancelButton_Click    ''Cancel
    End If
ElseIf KeyCode = vbKeyQ And Shift = 2 Then
    If ExitButton.Enabled = True Then
        Call ExitButton_Click   ''Exit
    End If
ElseIf KeyCode = vbKeyP And Shift = 2 Then
    If PrintButton.Enabled = True Then
        Call PrintButton_Click   ''Print Option
    End If
  Exit Sub
Form_KeyDown_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_KeyDown of Form frmmaterialnew", head
Screen.MousePointer = 0
End If
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

    OpenConnection
   

  
    
  
   
    
    
    Set DB = New Connection
    DB.Open connectstring
    'Db.Open
    Call Format_Grid
    Querymode
Exit Sub

Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form Frmlotbaledetail"
End Sub

Private Sub Grid_DblClick()
Dim rst As Recordset

On Error GoTo Grid_Validate_Error
        If UCase(grid.Columns(0).Caption) = "NAME1" Then
            txtName1.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            Combo1.SetFocus
            'AddButton.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "ADDRESS" Then
            txtAddress.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtAddress2.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "ADDRESS2" Then
            txtAddress2.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtCity.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "CITY" Then
            txtCity.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtState.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "STATE" Then
            txtState.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtPurpose.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "PURPOSE" Then
            txtPurpose.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtPerson.SetFocus
            Exit Sub
        End If
            
        If UCase(grid.Columns(0).Caption) = "COMPANY" Then
            txtCompany.Text = grid.Columns(0)
            txtCCode = grid.Columns(1)
            Set grid.DataSource = Nothing
            
            Set rst = New Recordset
            rst.Open "SELECT DISTINCT Address,Address2,City,State FROM Gt_Master WHERE Comcode = '" & Trim(txtCCode) & "'", DB, adOpenStatic
            txtAddress = IIf(IsNull(rst(0)), "", rst(0))
            txtAddress2 = IIf(IsNull(rst(1)), "", rst(1))
            txtCity = IIf(IsNull(rst(2)), "", rst(2))
            txtState = IIf(IsNull(rst(3)), "", rst(3))
            
            Set grid.DataSource = Nothing
            txtPurpose.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "ENAME" Then
            txtPerson.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            Exit Sub
        End If
Exit Sub
Grid_Validate_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Grid_Validate of Form Frmlotbaledetail"

End Sub

Private Sub grid_KeyPress(KeyAscii As Integer)
Dim rst As Recordset

On Error GoTo Grid_KeyPress_Error
    If KeyAscii = 13 Then
        If UCase(grid.Columns(0).Caption) = "NAME1" Then
            txtName1.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            Combo1.SetFocus
            ''AddButton.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "ADDRESS" Then
            txtAddress.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtAddress2.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "ADDRESS2" Then
            txtAddress2.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtCity.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "CITY" Then
            txtCity.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtState.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "STATE" Then
            txtState.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtPurpose.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "PURPOSE" Then
            txtPurpose.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            txtPerson.SetFocus
            Exit Sub
        End If
        
        If UCase(grid.Columns(0).Caption) = "COMPANY" Then
            txtCompany.Text = grid.Columns(0)
            txtCCode = grid.Columns(1)
            Set grid.DataSource = Nothing
            
            Set rst = New Recordset
            rst.Open "SELECT DISTINCT Address,Address2,City,State FROM Gt_Master WHERE Comcode = '" & Trim(txtCCode) & "'", DB, adOpenStatic
            txtAddress = IIf(IsNull(rst(0)), "", rst(0))
            txtAddress2 = IIf(IsNull(rst(1)), "", rst(1))
            txtCity = IIf(IsNull(rst(2)), "", rst(2))
            txtState = IIf(IsNull(rst(3)), "", rst(3))
            
            Set grid.DataSource = Nothing
            txtPurpose.SetFocus
            Exit Sub
        End If
            
        If UCase(grid.Columns(0).Caption) = "NAME" Then
            txtPerson.Text = grid.Columns(0)
            Set grid.DataSource = Nothing
            
            SaveButton.SetFocus
            Exit Sub
        End If
    End If
Exit Sub
Grid_KeyPress_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Grid_KeyPress of Form Frmlotbaledetail"
End Sub


Private Sub LoadArrival()


        Dim rsg
        Set rsg = New Recordset
        rsg.Open "select distinct arrno""Arrival No"",arrdate""Arrival Date"",slname""Supllier"" from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-ISNULL(lotrecqty,0) >0 AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
            LookUp.clear = True
           ' LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",b.slcode,slname""Supplier"", Plotno, c.varcode,c.varname from rm_arrival a,fa_slmas b,rm_var c where a.supcd=b.slcode and divcode='01' and a.varcode=c.varcode AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "ArrivalNo"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "2000,1500,4000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            txtsuppcode.Text = LookUp.Fields(2)
            txtsuppname.Text = LookUp.Fields(3)
            txtarrivallotno.Text = LookUp.Fields(0)
            txtsupplylotno.Text = LookUp.Fields(4)
            txtvarcode.Text = LookUp.Fields(5)
            txtvarname.Text = LookUp.Fields(6)
            cmdConnect.SetFocus

                    
        Else
            MsgBox "No arrival Details Found", vbInformation, head
            Call BUTTON_Click(10)
        End If
       End If

End Sub
Private Sub NewButton_Click()
Opt = "ADD"
On Error GoTo NewButton_Click_Error
    Dim rslt As Boolean

  
  
    
    Call Format_Grid
    
    Timer1.Enabled = False
    NewButton.Enabled = False
    SaveButton.Enabled = True
    Combo1.ListIndex = 0
    txtName1.SetFocus
Exit Sub
NewButton_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure NewButton_Click of Form Frmlotbaledetail"
End Sub

Private Sub PrintButton_Click()
'On Error GoTo PrintButton_Click_Error
'    If FooterFrame.Visible = False Then
'        FooterFrame.Visible = True
'        FooterFrame.ZOrder
'        FooterYes.Value = False
'        FooterNo.Value = False
'        Exit Sub
'    Else
'        FooterFrame.Visible = False
'    End If
    
    Set rr = New Recordset
    rr.Open "select MAX(ISNULL(Pno,0)) from gt_pass where PDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and divcode ='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    If rr.RecordCount > 0 Then Mno = rr(0) Else Mno = 0
    N = InputBox("Enter the Visitor Pass Number", "Kalsofte", Mno)
    If N = 0 Or N = "" Then Exit Sub
    If CustID = "BASML" Then
        Call PassPrintBASML(N)
    ElseIf UCase(Trim(CustID)) = "BANNARI" Then
        Call PassPrintBannari(N)
    Else
        Call PassPrint(N)
    End If
    
End Sub
Public Sub PassPrintBannari(X As Variant)
Dim RsPass As Recordset
Dim RsTmp As Recordset
Dim S As Integer, i As Integer

    Set RsPass = New Recordset
    RsPass.Open "SELECT a.pno,A.Pdate,A.Person,B.Company,B.Address,B.Address2,B.City,B.State,A.Purpose ,a.anymatin,a.vechicleno,c.PassNo FROM Gt_Pass A, Gt_Master B ,GT_PASSDT c WHERE A.COMPANY = B.ComCode AND  a.PDATE =c.PDATE and a.divcode =c.divcode  and a.pdate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and a.Pno = '" & X & "' and a.pno=c.pno AND a.Divcode='" & Divcode & "'", DB, adOpenStatic
    If RsPass.RecordCount > 0 Then
            a = FreeFile
            Close #a

             Open KALFOLDERDATA & "\Pass.TXT" For Output As #a
            Print #a, Space(5)
            Print #a, Space(5) + CENTRE(Trim(DIVNAME), 80, " ")
            Print #a, Space(5)
            Print #a, Space(5) + CENTRE("VISITOR'S PASS", 80, " ")
            Print #a, Space(5)
            Print #a, Space(5) + "From     : " & Padr(IIf(IsNull(RsPass("Company")), "", RsPass("Company")), 40, " ")
            Print #a, Space(5) + "Address  : " & Padr(IIf(IsNull(RsPass("Address")), "", RsPass("Address")), 40, " ") + Space(6) + " Date       : " + Padr(Format(RsPass("PDate"), "dd/mm/yy"), 10, " ")
            Print #a, Space(5) + "            " & Padr(IIf(IsNull(RsPass("Address2")), "", RsPass("Address2")), 40, " ") + Space(6) + "Pass No    : " + CStr(RsPass("passno"))
            Print #a, Space(5) & "            " & Padr(IIf(IsNull(RsPass("City")), "", RsPass("City")), 44, " ") + "Document No  : " + CStr(RsPass("PNo"))
            Print #a, Space(5) & "            " & Padr(IIf(IsNull(RsPass("State")), "", RsPass("State")), 30, " ")
            Print #a, Space(5)
            Print #a, Space(5) + "To Meet  : " & Padr(IIf(IsNull(RsPass("Person")), "", RsPass("Person")), 32, " ") + Space(6) + "Any Material Inward : " & Padr(IIf(IsNull(RsPass("anymatin")), "", IIf(UCase(Trim(RsPass("anymatin"))) = "N", "No", "Yes")), 30, " ")
            Print #a, Space(5)

            Print #a, Space(5) + "Purpose  : " & Padr(IIf(IsNull(RsPass("purpose")), "", RsPass("purpose")), 32, " ") + Space(6) + "Vechicle No : " & Padr(IIf(IsNull(RsPass("vechicleno")), "", RsPass("vechicleno")), 30, " ")
            Print #a, Space(5) & String(80, "-")
            Print #a, Space(5) & "S.No" & Space(2) & " Visitor's Name(s)" & Space(25) & "Time In." & Space(10) & "Time Out."
            Print #a, Space(5) & String(80, "-")
            Set RsTmp = New Recordset
            RsTmp.Open "SELECT Name1, INTIME, OUTTIME FROM Gt_Passdt WHERE Pno = '" & X & "' AND PDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'  AND Divcode='" & Divcode & "'", DB, adOpenStatic
            If RsTmp.RecordCount > 0 Then
                S = 1
                RsTmp.MoveFirst
                While Not RsTmp.EOF
                    Print #a, Space(5) & Padr(S, 2, " ") & Space(5) & Padr(RsTmp("Name1"), 40, " ") & Space(2) & Padr(IIf(IsNull(RsTmp("INTIME")), "", RsTmp("INTIME")), 12, " ") & Space(6) & Padr(IIf(IsNull(RsTmp("OUTTIME")), "", RsTmp("OUTTIME")), 12, " ")
                    Print #a,
                    S = S + 1
                    RsTmp.MoveNext
                Wend
            End If
            For i = S To 6
                Print #a,
            Next i
            Print #a, Space(5) & String(80, "-")
            Print #a, Space(5) & "Please tick the category" '& Space(1) & " Please tick the category"
            Print #a, Space(5)
            Print #a, Space(5) & "Category :" & Space(2) & " General / Jobworker / Electrical /  Service Engineer / Civil / Vendor " & Space(2)
            Print #a,
            Print #a,
            Print #a,
            Call footermod(CInt(a), rfooter, 80)
            
            
            Print #a, Space(5) & "Signature of visitor" & Space(25) & "Signature of person seen"
            Print #a,
            Print #a,
            Print #a,

            Close #a
            Set Rep = New Report.ReportView
            a = FreeFile
             Call KALBATPROCESS("Pass")
    Else
        MsgBox "Please Check the Number you have Entered", vbInformation, "Kalsofte"
    End If
End Sub


Public Sub outpassprint(Y As Variant)
Dim RsoutPass As Recordset
Dim Rsouttmp As Recordset
Dim S As Integer, i As Integer

    Set RsoutPass = New Recordset
    RsoutPass.Open "SELECT passno,oPdate,name,vehicle,outtime,intime,dept,remarks,Purpose FROM io_outpass WHERE  divcode = '" & Divcode & "' and  Passno = '" & Y & "'", DB, adOpenStatic
    If RsoutPass.RecordCount > 0 Then
            a = FreeFile
            Close #a
            'Open "C:\outPass.txt" For Output As #a
            Open KALFOLDERDATA & "\outPass.TXT" For Output As #a
            Print #a, Space(5) & Chr(27) & "E" & CENTRE(DIVNAME, 80, " ") & Chr(27) & "F"
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & CENTRE("OUT PASS SLIP", 80, " ") & Chr(27) & "F"
            'Print #a, Space(9) & CENTRE("-------------", 77, " ")
            Print #a, Space(5) & "Pass No.        : "; Padr(Y, 10, " ");
            Print #a, Space(27) & "Date        : " & Padr(RsoutPass("oPDate"), 10, " ")
           ' Print #a, Space(5) & String(72, "-")
            'Print #a, Space(5) & "S.No" & Space(2) & " Visitor's Name(s)" & Space(24) & "Time in." & Space(6) & "Time Out."
            'Print #a, Space(5) & String(72, "-")
            'Set Rstmp = New Recordset
            'Rstmp.Open "SELECT Name1, INTIME, OUTTIME FROM Gt_Passdt WHERE Pno = '" & X & "' AND PDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "'", DB, adOpenStatic
            'If Rstmp.RecordCount > 0 Then
                's = 1
                'Rstmp.MoveFirst
               ' While Not Rstmp.EOF
                   ' Print #a, Space(5) & Padr(s, 2, " ") & Space(5) & Padr(Rstmp("Name1"), 38, " ") & Space(2) & Padr(IIf(IsNull(Rstmp("INTIME")), "", Rstmp("INTIME")), 12, " ") & Space(2) & Padr(IIf(IsNull(Rstmp("OUTTIME")), "", Rstmp("OUTTIME")), 12, " ")
                  '  s = s + 1
                   ' Rstmp.MoveNext
                'Wend
            'End If
            'For i = s To 5
               ' Print #a,
            'Next i

            'Print #a, Space(5) & String(72, "-")
            Print #a, Space(5) & "Name            : " & Padr(IIf(IsNull(RsoutPass("Name")), "", RsoutPass("name")), 20, " ") & Space(12) + Space(5) & "Vehicle No. : " & Padr(IIf(IsNull(RsoutPass("Vehicle")), "", RsoutPass("Vehicle")), 20, " ")
            Print #a, Space(5) & "Dept            : " & Padr(IIf(IsNull(RsoutPass("dept")), "", RsoutPass("dept")), 20, " ") & Space(12) + Space(5) & "Time Out    : " & Padr(IIf(IsNull(RsoutPass("outtime")), "", RsoutPass("outtime")), 20, " ")
            Print #a, Space(5) & "Purpose         : " & Padr(IIf(IsNull(RsoutPass("purpose")), "", RsoutPass("purpose")), 20, " ") & Space(12) + Space(5) & "Time In     : " & Padr(IIf(IsNull(RsoutPass("intime")), "", RsoutPass("intime")), 20, " ")
            Print #a, Space(5) & "Remarks         : " & Padr(IIf(IsNull(RsoutPass("remarks")), "", RsoutPass("remarks")), 50, " ")
            'Print #a, Space(5) & "            " & Padr(IIf(IsNull(RsPass("State")), "", RsPass("State")), 20, " ")
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(5) & "Prepared By" & Space(50) & "Approved By"
            Print #a,
            Print #a,
            Print #a,


            Close #a
            Set Rep = New Report.ReportView
            a = FreeFile
'            Open "C:\outPass.BAT" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type outPass.txt >prn"
'            Close #a
'            Set rep = New report.ReportView
'            rep.txtfile = "c:\outPass.txt"
'            rep.Batfile = "c:\outPass.bat"
             Call KALBATPROCESS("outPass")
    Else
        MsgBox "Please Check the Number you have Entered", vbInformation, "Kalsofte"
    End If
End Sub
Private Sub SaveButton_Click()
Dim i As Integer

If Opt = "ADD" Then

'On Error GoTo SaveButton_Click_Error
    If GridName.Rows < 1 Or Trim(txtAddress) = "" Or Trim(txtPerson) = "" Then
        MsgBox "Enter the Name, Address and Person Details", vbInformation, "Kalsofte"
        Exit Sub
    End If
    
    Timer1.Enabled = True
    DB.BeginTrans
    If GridName.Row = 0 Then
        MsgBox "SELECT THE DETAILS PROPERLY", vbOKOnly, "WARNING"
        DB.CommitTrans
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT MAX(ISNULL(Pno,0))+1 FROM Gt_Pass WHERE PDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and divcode='" & Divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
    txtPno = IIf(IsNull(Rs(0)), 1, Rs(0))
    
    Set Rs = New Recordset
    Rs.Open "SELECT Comcode FROM Gt_Master WHERE COMPANY = '" & txtCompany & "'", DB, adOpenStatic
    If Rs.RecordCount > 0 And UCase(Trim(txtCompany)) <> "NA" Then
        txtCCode = Rs(0)
    Else
        Set Rs = New Recordset
        Rs.Open "SELECT ISNULL(MAX(ISNULL(Comcode,0)),0)+1 FROM Gt_Master", DB, adOpenStatic
        txtCCode = Rs(0)
        DB.Execute "INSERT INTO GT_MASTER(comcode,company,address,address2,city,state) VALUES(" & txtCCode & ",'" & txtCompany & "','" & txtAddress & "','" & txtAddress2 & "','" & txtCity & "','" & txtState & "')"
    End If

    If InpassDateEdit = True Then
        DB.Execute "INSERT INTO GT_PASS(Pno, Pdate, Company, Purpose, Person,Divcode,DepCode,vechicleno,anymatin) VALUES ('" & txtPno.Text & "','" & _
                Format(dtpDate.value, "YYYY-MM-DD") & "','" & txtCCode & "','" & txtPurpose & "','" & txtPerson & "','" & Divcode & "','" & depcode & "','" & Text3 & "','" & Text4 & "')"
    
    Else
        DB.Execute "INSERT INTO GT_PASS(Pno, Pdate, Company, Purpose, Person,Divcode,DepCode,vechicleno,anymatin) VALUES ('" & txtPno.Text & "','" & _
                Format(Date, "YYYY-MM-DD") & "','" & txtCCode & "','" & txtPurpose & "','" & txtPerson & "','" & Divcode & "','" & depcode & "','" & Text3 & "','" & Text4 & "')"
    End If
    
    
    Set rst = New Recordset
    Set rst = DB.Execute("SELECT CUST_ID FROM PP_DIVMAS")
    If rst.RecordCount <> 0 Then
        CustID = rst(0)
    End If
    
    If UCase(CustID) = "SARANYA" Then
        If InpassDateEdit = True Then
            For i = 1 To GridName.Rows - 1
                DB.Execute "INSERT INTO Gt_Passdt(pno,pdate,name1,intime,outtime,code,passno,divcode,PassCode,flag) VALUES('" & txtPno & "','" & Format(dtpDate.value, "YYYY-MM-DD") & "','" & GridName.TextMatrix(i, 1) & "','" & GridName.TextMatrix(i, 2) & "',NULL,'" & GridName.TextMatrix(i, 4) & "'," & GridName.TextMatrix(i, 3) & ",'" & Divcode & "','" & GridName.TextMatrix(i, 5) & "','N')"
            Next i
        Else
            For i = 1 To GridName.Rows - 1
                DB.Execute "INSERT INTO Gt_Passdt(pno,pdate,name1,intime,outtime,code,passno,divcode,PassCode,flag) VALUES('" & txtPno & "','" & Format(Date, "YYYY-MM-DD") & "','" & GridName.TextMatrix(i, 1) & "','" & GridName.TextMatrix(i, 2) & "',NULL,'" & GridName.TextMatrix(i, 4) & "'," & GridName.TextMatrix(i, 3) & ",'" & Divcode & "','" & GridName.TextMatrix(i, 5) & "','N')"
            Next i
        
        End If
   Else
        If InpassDateEdit = True Then
            For i = 1 To GridName.Rows - 1
                DB.Execute "INSERT INTO Gt_Passdt(pno,pdate,name1,intime,outtime,code,passno,divcode,PassCode) VALUES('" & txtPno & "','" & Format(dtpDate.value, "YYYY-MM-DD") & "','" & GridName.TextMatrix(i, 1) & "','" & GridName.TextMatrix(i, 2) & "',NULL,'" & GridName.TextMatrix(i, 4) & "'," & GridName.TextMatrix(i, 3) & ",'" & Divcode & "','" & GridName.TextMatrix(i, 5) & "')"
            Next i
        Else
            For i = 1 To GridName.Rows - 1
                DB.Execute "INSERT INTO Gt_Passdt(pno,pdate,name1,intime,outtime,code,passno,divcode,PassCode) VALUES('" & txtPno & "','" & Format(Date, "YYYY-MM-DD") & "','" & GridName.TextMatrix(i, 1) & "','" & GridName.TextMatrix(i, 2) & "',NULL,'" & GridName.TextMatrix(i, 4) & "'," & GridName.TextMatrix(i, 3) & ",'" & Divcode & "','" & GridName.TextMatrix(i, 5) & "')"
            Next i
        
        End If
    End If
      
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM Gt_Purpose WHERE Purpose = '" & txtPurpose.Text & "'", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        DB.Execute "INSERT INTO Gt_Purpose VALUES ('" & txtPurpose.Text & "')"
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM Gt_Person WHERE Name = '" & txtPerson.Text & "'", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        DB.Execute "INSERT INTO Gt_Person VALUES ('" & txtPerson.Text & "')"
    End If
    DB.CommitTrans
 
    MsgBox "Record Added Successfully , Gate Pass No :" & txtPno.Text, vbInformation, "Kalsofte"
    SaveButton.Enabled = False
    NewButton.Enabled = True
    Call ClearText(Me)
    Combo1.ListIndex = 0
    Text1.Text = ""
    Text2.Text = ""
    Call Format_Grid
    Opt = "qry"
    Call Querymode
Exit Sub

ElseIf Opt = "MOD" Then

'On Error GoTo SaveButton_Click_Error
    If GridName.Rows < 1 Or Trim(txtAddress) = "" Or Trim(txtPerson) = "" Then
        MsgBox "Enter the Name, Address and Person Details", vbInformation, "Kalsofte"
        Exit Sub
    End If
    
    Timer1.Enabled = True
    'DB.BeginTrans
    Set Rs = New Recordset
'    rs.Open "SELECT MAX(ISNULL(Pno,0))+1 FROM Gt_Pass WHERE PDate BETWEEN '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' and divcode='" & divcode & "'", DB, adOpenStatic, adLockBatchOptimistic
'    txtPno = IIf(IsNull(rs(0)), 1, rs(0))
    Set rst1 = New Recordset
    Set Rst2 = New Recordset
    Set RST3 = New Recordset
    S = 0
    If InpassDateEdit = True Then
       S = 1
    End If
    
    If S = 1 Then
        Set rst1 = DB.Execute("UPDATE GT_PASS SET Pdate='" & Format(dtpDate.value, "YYYY-MM-DD") & "', Purpose='" & txtPurpose & "', Person='" & txtPerson & "',Divcode='" & Divcode & "',DepCode='" & depcode & "',vechicleno='" & Text3 & "',anymatin='" & Text4 & "' where pno='" & (txtPno) & "'")
        Set Rst2 = DB.Execute("UPDATE GT_MASTER SET Company='" & txtCompany & "',ADDRESS='" & txtAddress & "',ADDRESS2='" & txtAddress2 & "',CITY='" & txtCity & "',STATE='" & txtState & "' where comcode='" & (CCODE) & "'")
        Set RST3 = DB.Execute("UPDATE GT_PASSDT SET NAME1='" & (txtName1) & "',PASSNO='" & (Text1) & "' WHERE PNO='" & (txtPno) & "'")
    End If
                
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM Gt_Purpose WHERE Purpose = '" & txtPurpose.Text & "'", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        DB.Execute "INSERT INTO Gt_Purpose VALUES ('" & txtPurpose.Text & "')"
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT * FROM Gt_Person WHERE Name = '" & txtPerson.Text & "'", DB, adOpenStatic
    If Rs.RecordCount <= 0 Then
        DB.Execute "INSERT INTO Gt_Person VALUES ('" & txtPerson.Text & "')"
    End If
    'DB.CommitTrans
 
    MsgBox "Updated Successfully , Gate Pass No :" & txtPno.Text, vbInformation, "Kalsofte"
    SaveButton.Enabled = False
    NewButton.Enabled = True
    CmdModify.Enabled = True
    Call ClearText(Me)
    Combo1.ListIndex = 0
    Text1.Text = ""
    Text2.Text = ""
    Call Format_Grid
    Opt = "qry"
    Call Querymode
Exit Sub

End If
'SaveButton_Click_Error:
'    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure SaveButton_Click of Form Frmlotbaledetail"
    
End Sub

Private Sub Text1_Validate(Cancel As Boolean)
'If Opt = "add" Or Opt = "mod" Then
'If Text1.Text = "" Then
If SaveButton.Enabled Then
    
    If InStr(Combo1.Text, " - ") = 0 Then
        MsgBox "Select Valid Pass Category", vbInformation, head
        Screen.MousePointer = 0
        Combo1.SetFocus
        Exit Sub
    End If
    TPassType = Mid(Combo1.Text, 1, InStr(Combo1.Text, " - ") - 1)

    SSQL = "select Code,PassNo FROM IO_PassMaster a, io_passType b where a.Divcode='" & Divcode & "' and Status='Y' and a.divcode=b.divcode and a.passcode=b.passcode and passno=" & val(Text1.Text) & " and a.passcode='" & TPassType & "'"
    Set Rs = New ADODB.Recordset
    Rs.Open SSQL, DB, adOpenStatic
    If Not Rs.EOF Then
        Text1.Text = Rs(1)
        Text2.Text = Rs(0)
    Else
        LookUp.clear = True
        LookUp.query = "Select Code,PassNo FROM IO_PassMaster a, io_passType b where a.Divcode='" & Divcode & "' and Status='Y' and a.divcode=b.divcode and a.passcode=b.passcode and a.passcode='" & TPassType & "'"
        'and b.passcode='" & Left(Combo1.Text, 3) & "'"
        LookUp.Caption = "Listing"
        LookUp.ALIGN = "2000,2500"
        LookUp.DefCol = "DocumentNo"
        LookUp.Show vbModal
        If LookUp.Cancel = False Then
            Text1.Text = LookUp.Fields(1)
            Text2.Text = LookUp.Fields(0)
            LookUp.clear = True
        Else
            'Call ExitButton_Click
            LookUp.clear = True
            Text1.Text = ""
            Text2.Text = ""
        End If
    End If
    'Cancel = True
End If
End Sub

Private Sub Text3_LostFocus()
  Text3.Text = UCase(Trim(Text3.Text))
    If Validate_VehicleNo(Text3.Text) = False Then
       MsgBox " Enter the Valid VehicleNo. Eg: 'TN 99 AA 9999'", vbInformation + vbOKOnly
       Text3.Text = ""
      ' Text3.SetFocus
    End If
End Sub

'Private Sub Timer1_Timer()
 ' lblInTime.Caption = Time
'End Sub

Private Sub txtAddress_Change()
On Error GoTo txtAddress_Change_Error
    If Trim(txtAddress.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT Address FROM GT_Master WHERE Address LIKE '" & Trim(txtAddress.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If

Exit Sub
txtAddress_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAddress_Change of Form Frmlotbaledetail"

End Sub

Private Sub txtAddress_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtAddress_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtAddress_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAddress_KeyDown of Form Frmlotbaledetail"

End Sub

Private Sub txtAddress2_Change()
On Error GoTo txtAddress2_Change_Error
    If Trim(txtAddress2.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT Address2 FROM GT_Master WHERE Address2 LIKE '" & Trim(txtAddress2.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtAddress2_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAddress2_Change of Form Frmlotbaledetail"

End Sub

Private Sub txtAddress2_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtAddress2_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtAddress2_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtAddress2_KeyDown of Form Frmlotbaledetail"

End Sub

Private Sub txtCity_Change()
On Error GoTo txtCity_Change_Error
    If Trim(txtCity.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT City FROM GT_Master WHERE City LIKE '" & Trim(txtCity.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtCity_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtCity_Change of Form Frmlotbaledetail"

End Sub

Private Sub txtCity_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtCity_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtCity_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtCity_KeyDown of Form Frmlotbaledetail"

End Sub

Private Sub txtCompany_Change()
On Error GoTo txtCompany_Change_Error
    If Trim(txtCompany.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT Company,ComCode FROM GT_MASTER WHERE Company LIKE '" & Trim(txtCompany.Text) & "%' and company <> 'NA' ", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtCompany_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtCompany_Change of Form Frmlotbaledetail"
End Sub

Private Sub txtCompany_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtCompany_KeyDown_Error
   If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtCompany_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtCompany_KeyDown of Form Frmlotbaledetail"
End Sub

Private Sub txtdep_Validate(Cancel As Boolean)
    LookUp.clear = True
    LookUp.query = "select Depcode,Depname from in_dep where divcode='" & Divcode & "'"
    LookUp.Caption = "Department Listing"
    LookUp.ALIGN = "1000,2000"
    LookUp.DefCol = "Depname"
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        txtdep = LookUp.Fields(1)
        depcode = LookUp.Fields(0)
    Else
        txtdep = ""
    End If
End Sub

Private Sub txtName1_Change()
On Error GoTo txtName1_Change_Error
    If Trim(txtName1.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT Name1 FROM GT_PASSDT WHERE Name1 LIKE '%" & Trim(txtName1.Text) & "%' and divcode='" & Divcode & "'and pdate>='" & Format(yfdate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtName1_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtName1_Change of Form Frmlotbaledetail"
End Sub
Private Sub txtName1_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtName1_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtName1_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtName1_KeyDown of Form Frmlotbaledetail"
End Sub
Private Sub txtName1_LostFocus()
txtName1 = UCase(txtName1)
End Sub

Private Sub txtPerson_Change()
On Error GoTo txtPerson_Change_Error
    If Trim(txtPerson.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT eName FROM pr_emp WHERE divcode='" & Divcode & "' and eName LIKE '" & Trim(txtPerson.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtPerson_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtPerson_Change of Form Frmlotbaledetail"

End Sub

Private Sub txtPerson_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtPerson_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtPerson_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtPerson_KeyDown of Form Frmlotbaledetail"
End Sub



Private Sub txtPurpose_Change()
On Error GoTo txtPurpose_Change_Error
    If Trim(txtPurpose.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT Description as PURPOSE FROM IO_visitorPurpose WHERE Description LIKE '" & Trim(txtPurpose.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtPurpose_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtPurpose_Change of Form Frmlotbaledetail"
End Sub

Private Sub txtPurpose_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtPurpose_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtPurpose_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtPurpose_KeyDown of Form Frmlotbaledetail"
End Sub
Private Sub Format_Grid()
On Error GoTo Format_Grid_Error
    GridName.clear
    GridName.FormatString = "SNo|^Baleno    |^Bale Weight"
    GridName.Rows = 1
    


Exit Sub
Format_Grid_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Format_grid of Form Frmlotbaledetail"
End Sub

Private Sub txtState_Change()
On Error GoTo txtState_Change_Error
    If Trim(txtState.Text) = "" Then
        Set grid.DataSource = Nothing
        Exit Sub
    End If
    
    Set Rs = New Recordset
    Rs.Open "SELECT DISTINCT State FROM GT_Master WHERE State LIKE '" & Trim(txtState.Text) & "%'", DB, adOpenStatic, adLockPessimistic
    If Rs.RecordCount > 0 Then
        Set grid.DataSource = Rs
    End If
Exit Sub
txtState_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtState_Change of Form Frmlotbaledetail"
End Sub

Private Sub txtState_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo txtState_KeyDown_Error
    If KeyCode = 40 And Trim(grid.Columns(0).Caption) <> "" Then grid.SetFocus
Exit Sub
txtState_KeyDown_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure txtState_KeyDown of Form Frmlotbaledetail"

End Sub


Private Sub FooterYes_Click()
Screen.MousePointer = 11
rfooter = ""
FooterSSTab.Visible = True
FooterSSTab.ZOrder
ubGrid1.clear
Screen.MousePointer = 0
Call ubgridalign
'frm_repfooter.Show
''Call ubgridalign
'If frm_repfooter.footer_cmd = True Then
'Call BUTTON_Click(12)
'End If
'Screen.MousePointer = 0
End Sub

Private Sub FooterNo_Click()
FooterSSTab.Visible = False
Call PrintButton_Click
End Sub



Private Sub ubGrid1_AfterEdit(ByVal Row As Long, ByVal Col As Long, ByVal NewValue As String)
If ubGrid1.Col = 3 Then
    cur = ubGrid1.TextMatrix(ubGrid1.Row, 3)
    For i = 1 To ubGrid1.Rows
        If ubGrid1.TextMatrix(i, 3) = cur And Row <> i Then
            ubGrid1.TextMatrix(Row, 3) = ""
            MsgBox "Sl No already Selected", vbInformation, head
        End If
    Next
End If
End Sub

Public Sub ubgridalign()
ubGrid1.AutoSetup 1, 3, True, True, "      |Description               |Sl.No"
Set REPFRS = New Recordset
REPFRS.Open "select footdesc from in_repfoot", DB, adOpenStatic

If REPFRS.RecordCount > 0 Then
    REPFRS.MoveFirst
    For i = 1 To REPFRS.RecordCount
        ubGrid1.TextMatrix(i, 2) = REPFRS(0)
        REPFRS.MoveNext
        If Not REPFRS.EOF Then
            ubGrid1.AddItem ("")
        End If
    Next
Else
    MsgBox "Please Define Report Footer"
End If
  ubGrid1.ColMask(1) = checkmark
  For J = 1 To REPFRS.RecordCount
            ubGrid1.AddLookup 3, CStr(J)
  Next
End Sub

Private Sub ReportCom_Click()

If Table_Exists("temp_footer") = False Then
    DB.Execute "CREATE TABLE TEMP_FOOTER(FOOT_DESC VARCHAR(30),SNO NUMERIC(3,0))"
Else
    DB.Execute "DELETE FROM TEMP_FOOTER"
End If
rfooter = ""

b = ubGrid1.Rows
C = 0
For i = 1 To b
    If ubGrid1.TextMatrix(i, 1) = True Then
        If ubGrid1.TextMatrix(i, 3) = "" Then
            C = C + 1
        End If
    End If
Next
If C > 0 Then
Call PrintButton_Click
    'MsgBox "S.No Should not be Empty", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
For i = 1 To b
    If ubGrid1.TextMatrix(i, 1) = True Then
        DB.Execute "INSERT INTO TEMP_FOOTER VALUES('" & ubGrid1.TextMatrix(i, 2) & "','" & ubGrid1.TextMatrix(i, 3) & "')"
    End If
Next
Set Rs = New Recordset
Rs.Open "SELECT * FROM TEMP_FOOTER ORDER BY SNO", DB, adOpenStatic
If Rs.RecordCount > 0 Then
    Do While Not Rs.EOF
        If rfooter = "" Then
            rfooter = Rs("FOOT_DESC")
        Else
            rfooter = rfooter & "," & Rs("FOOT_DESC")
        End If
        Rs.MoveNext
    Loop
Else
    If rfooter = "" Then
        MsgBox "Please select any one from the list"
        Exit Sub
    End If
End If
FooterSSTab.Visible = False
Call PrintButton_Click
End Sub

Public Sub CNEWFORM(no As Integer)
    On Error Resume Next
    If no <> 0 Then
        Dim DB As New Connection
        DB.Open connectstring
        Dim Rs As New Recordset
        Rs.Open "SELECT SNO,FORM_NAME,ADD_FLG,MOD_FLG,DEL_FLG FROM USERLEVEL WHERE DIVCODE = '" & Divcode & "' AND MODULE =" & ModuleNo & " AND ULEVEL = " & ulevel & " AND SNO = " & no, DB
        If Rs("ADD_FLG") = "Y" Then NewButton.Enabled = True Else NewButton.Enabled = False
    Else
        NewButton.Enabled = True
    End If
End Sub

Public Function InpassDateEdit() As Boolean
Set TmpRs = New Recordset
Set TmpRs = DB.Execute("Select isnull(InpassDateEdit,'N')InpassDateEdit From IO_Para")
If Not TmpRs.EOF Then
    If TmpRs("InpassDateEdit") = "Y" Then
        InpassDateEdit = True
    Else
        InpassDateEdit = False
    End If
End If

End Function

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim sData As String
Winsock1.GetData sData, vbString
'Label1.Caption = sData
txtbaleweight.Text = sData

End Sub

