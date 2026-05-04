VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form myform1 
   Caption         =   "Bale - Issue  Weightment Data Transfer"
   ClientHeight    =   3465
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6705
   FillColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   ScaleHeight     =   3465
   ScaleWidth      =   6705
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox Text1 
      Height          =   330
      Left            =   2640
      TabIndex        =   40
      Top             =   7200
      Width           =   2415
   End
   Begin VB.CommandButton Command4 
      Caption         =   "&Add"
      Height          =   315
      Left            =   480
      TabIndex        =   39
      Top             =   2880
      Width           =   975
   End
   Begin VB.TextBox txtDocno 
      Height          =   330
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   360
      Width           =   1335
   End
   Begin VB.TextBox txtbales 
      Height          =   375
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   30
      Top             =   1800
      Width           =   1575
   End
   Begin VB.TextBox txtweight 
      Height          =   375
      Left            =   4410
      TabIndex        =   29
      Top             =   1800
      Width           =   1935
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&View"
      Height          =   315
      Left            =   5280
      TabIndex        =   24
      Top             =   2880
      Width           =   975
   End
   Begin VB.CommandButton AddButton 
      Caption         =   "&Save"
      Height          =   315
      Left            =   2805
      TabIndex        =   14
      Top             =   2880
      Width           =   975
   End
   Begin VB.TextBox txtarrivallotno 
      Height          =   330
      Left            =   1560
      TabIndex        =   13
      Top             =   840
      Width           =   2055
   End
   Begin VB.TextBox txtvarname 
      Height          =   330
      Left            =   3045
      TabIndex        =   12
      Top             =   1320
      Width           =   5535
   End
   Begin VB.TextBox txtvarcode 
      Height          =   330
      Left            =   1560
      TabIndex        =   11
      Top             =   1320
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&New Lot No"
      Height          =   315
      Left            =   1590
      TabIndex        =   10
      Top             =   2880
      Width           =   1095
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Exit"
      Height          =   315
      Left            =   3990
      TabIndex        =   9
      Top             =   2880
      Width           =   975
   End
   Begin VB.TextBox txtPrice 
      Height          =   375
      Left            =   4410
      TabIndex        =   2
      Top             =   2280
      Width           =   1935
   End
   Begin VB.TextBox txtItem 
      Height          =   375
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   2280
      Width           =   1575
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   11880
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H8000000A&
      Height          =   2895
      Left            =   9120
      TabIndex        =   0
      Top             =   -840
      Width           =   1935
      Begin VB.CommandButton cmdClose 
         Height          =   615
         Left            =   120
         Picture         =   "myform1.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   1920
         Width           =   1695
      End
      Begin VB.CommandButton cmdConnect 
         Height          =   615
         Left            =   120
         Picture         =   "myform1.frx":0BB1
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   1080
         Width           =   1695
      End
      Begin VB.CommandButton cmdSend 
         Height          =   615
         Left            =   120
         Picture         =   "myform1.frx":1818
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   240
         Visible         =   0   'False
         Width           =   1695
      End
   End
   Begin MSFlexGridLib.MSFlexGrid GridName 
      Height          =   2415
      Left            =   240
      TabIndex        =   15
      TabStop         =   0   'False
      Top             =   3240
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   4260
      _Version        =   393216
      Cols            =   3
      BackColor       =   12648447
      ForeColor       =   0
      FormatString    =   "^Sno    |<Bale No           |<Bale Weight                   "
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin MSDataGridLib.DataGrid grddatagrid 
      Height          =   2385
      Left            =   6840
      TabIndex        =   23
      Top             =   3000
      Visible         =   0   'False
      Width           =   8325
      _ExtentX        =   14684
      _ExtentY        =   4207
      _Version        =   393216
      AllowArrows     =   -1  'True
      ForeColor       =   -2147483630
      HeadLines       =   1
      RowHeight       =   15
      TabAction       =   2
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
   Begin MSComCtl2.DTPicker DTPicker1 
      DataField       =   "docdt"
      Height          =   330
      Left            =   4260
      TabIndex        =   27
      Top             =   840
      Width           =   1380
      _ExtentX        =   2434
      _ExtentY        =   582
      _Version        =   393216
      Enabled         =   0   'False
      Format          =   108593153
      CurrentDate     =   36831
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Height          =   2865
      Left            =   120
      TabIndex        =   33
      Top             =   7800
      Width           =   6405
      _ExtentX        =   11298
      _ExtentY        =   5054
      _Version        =   393216
      AllowArrows     =   -1  'True
      ForeColor       =   -2147483630
      HeadLines       =   1
      RowHeight       =   15
      TabAction       =   2
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
   Begin MSComCtl2.DTPicker DTPicker2 
      DataField       =   "docdt"
      Height          =   330
      Left            =   3660
      TabIndex        =   37
      Top             =   360
      Width           =   1380
      _ExtentX        =   2434
      _ExtentY        =   582
      _Version        =   393216
      Enabled         =   0   'False
      Format          =   156893185
      CurrentDate     =   36831
   End
   Begin VB.Label Label16 
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
      Left            =   1920
      TabIndex        =   41
      Top             =   7200
      Width           =   630
   End
   Begin VB.Label Label15 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "Date"
      Height          =   195
      Left            =   3120
      TabIndex        =   38
      Top             =   360
      Width           =   345
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "Doc No"
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
      Left            =   270
      TabIndex        =   36
      Top             =   360
      Width           =   660
   End
   Begin VB.Label Label13 
      Alignment       =   2  'Center
      Caption         =   "Available Bales"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   120
      TabIndex        =   34
      Top             =   7080
      Width           =   1455
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "Closing Weight"
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
      Left            =   3120
      TabIndex        =   32
      Top             =   1920
      Width           =   1290
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "Closing Bales"
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
      Left            =   270
      TabIndex        =   31
      Top             =   1875
      Width           =   1155
   End
   Begin VB.Label Label18 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "Date"
      Height          =   195
      Left            =   3720
      TabIndex        =   28
      Top             =   840
      Width           =   345
   End
   Begin VB.Label Label12 
      Caption         =   "Label9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   495
      Left            =   13200
      TabIndex        =   26
      Top             =   6000
      Visible         =   0   'False
      Width           =   1695
   End
   Begin VB.Label Label11 
      Alignment       =   2  'Center
      Caption         =   "Total Gross Weight"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   11640
      TabIndex        =   25
      Top             =   6000
      Visible         =   0   'False
      Width           =   1455
   End
   Begin VB.Label Label10 
      Alignment       =   2  'Center
      Caption         =   "Total Gross Weight"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   495
      Left            =   480
      TabIndex        =   22
      Top             =   6120
      Width           =   1455
   End
   Begin VB.Label Label9 
      Caption         =   "Label9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   495
      Left            =   2040
      TabIndex        =   21
      Top             =   6120
      Width           =   2895
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Bale - Issue  Weightment Data Transfer"
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
      Left            =   0
      TabIndex        =   20
      Top             =   0
      Width           =   5040
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "Mill  LotNo"
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
      Left            =   270
      TabIndex        =   19
      Top             =   915
      Width           =   930
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
      Left            =   270
      TabIndex        =   18
      Top             =   1395
      Width           =   555
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
      Left            =   270
      TabIndex        =   17
      Top             =   2355
      Width           =   630
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
      Left            =   3150
      TabIndex        =   16
      Top             =   2400
      Width           =   855
   End
   Begin VB.Label Label3 
      BackColor       =   &H80000012&
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000D&
      Height          =   495
      Left            =   12600
      TabIndex        =   5
      Top             =   960
      Width           =   3975
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000007&
      Caption         =   "Price:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   9360
      TabIndex        =   4
      Top             =   3480
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Label Label1 
      BackColor       =   &H80000012&
      Caption         =   "Item Number:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   9360
      TabIndex        =   3
      Top             =   2880
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.Shape shpError 
      FillColor       =   &H000000FF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   10560
      Shape           =   3  'Circle
      Top             =   2400
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Shape shpWait 
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9960
      Shape           =   3  'Circle
      Top             =   2400
      Visible         =   0   'False
      Width           =   495
   End
   Begin VB.Shape shpGo 
      FillColor       =   &H0000FF00&
      FillStyle       =   0  'Solid
      Height          =   375
      Left            =   9240
      Shape           =   3  'Circle
      Top             =   2400
      Visible         =   0   'False
      Width           =   615
   End
End
Attribute VB_Name = "myform1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit
Dim I As Integer
Dim rsg  As New Recordset
Dim baleno2 As Integer
Dim baleweight As Double
Dim Opt As String
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim rstPARAM As Recordset
Dim adoSecondaryRS As Recordset
Dim z As Integer
Dim updSECONDARYRS As Recordset
'Dim RS As Recordset
Dim rstQry As Recordset
Dim UPDRS As Recordset
Dim WithEvents Rs As Recordset
Attribute Rs.VB_VarHelpID = -1
Dim rstRtn As Recordset
Dim IssDelType As Integer
Dim iFlag As Integer
Dim sWgtFlg As String
Dim sVar As String
Dim iCount As Integer
Dim Idocno, iRowNo As Integer
Dim rsBale As Recordset
Dim sDocDate As String
Dim sVarcode As String
Dim iLen As Integer
Dim iSlipNo As Integer
Dim sSlipDate As String
Dim rs1 As Recordset
Dim oText As TextBox
Dim DB As Connection
Dim oldqty As Integer
Dim oldcontno As Integer
Dim oldbales As Date
Dim sVariety As String
Dim balers As Recordset
Dim dTotalWgt As Double
Dim QTY As Double
Dim tabflag As Boolean
Dim selbale As Integer
Dim selwt As Double
Dim a As String
Dim b As String
Dim wt As Double
Dim Str, FLGISSH As String
Dim FLG As String
Dim rs2 As Recordset
Dim rx As Integer
Dim s As Double
Dim c As Integer
Dim ChkEx As Integer
Dim j As Integer
Dim ry As New Recordset
Dim xx1 As Integer
Dim tbno As Integer
Dim tgwt As Double
Dim ttwt As Double
Dim tnwt As Double
Dim taisswt As Double
Dim xx As New Recordset
Dim DYINGHEADRS As Recordset
Dim DYINGTAILRS As Recordset
Dim totv As Double
Dim IssFlg, gbaleno As String
Dim avilbalers As Recordset
Dim baleno As String
Dim gvar, oldissued As String
Dim diffkgs As Double
Dim oldisswt As Double
Dim vTotBal As Double
Dim vNetWt As Double
Dim vActWt As Double
Dim deltype As String
Dim TmpDelRs As New Recordset
Dim cnt As Double
Dim ChkCount As Integer
Dim EBaleNo As Integer
Dim TotalBale As Integer
Dim ConnectCnt As Integer
Dim SBale, EBale As Integer
Dim IBales As Integer
Private Sub AddButton_Click()
intervalMinutes = -1
On Error GoTo AddButton_Click_Error
'If SaveButton.Enabled = False Then Exit Sub
  
    If Trim(txtvarname.Text) = "" Then
        MsgBox "Select Valid varity Name", vbInformation, head
        Screen.MousePointer = 0
        txtvarname.SetFocus
        Exit Sub
    End If
     If val(txtItem.Text) = 0 Then
        MsgBox "Select Valid BaleNo", vbInformation, head
        Screen.MousePointer = 0
        txtItem.SetFocus
        Exit Sub
    End If
      If val(txtPrice.Text) <= 0 Then
        MsgBox "Select Valid Baleweight", vbInformation, head
        Exit Sub
    End If
    
'    For i = 1 To GridName.Rows - 1
'    If val(txtItem.Text) = val(GridName.TextMatrix(i, 1)) Then
'    txtItem.Text = ""
'    MsgBox "Baleno Already Entered", vbInformation, head
'    txtItem.SetFocus
'    Exit Sub
'    End If
'
'    Next
    
    DB.Execute "INSERT INTO Rm_baleisstmp(lotno,lotdate,varcode,baleno,baleweight,Transflag,divcode,docno,Docdate) VALUES('" & txtarrivallotno.Text & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & txtvarcode.Text & "'," & txtItem.Text & "," & txtPrice.Text & ",'N','" & Divcode & "','" & txtDocno.Text & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "')"
    baleno2 = val(txtItem.Text) + 1
    baleweight = val(txtPrice.Text) + baleweight
    Set rsg = New Recordset
    rsg.Open " select baleno,baleweight  from Rm_baleisstmp where  Transflag='N' and divcode='" & Divcode & "' and Docno='" & txtDocno.Text & "'  order by baleno desc ", DB, adOpenStatic, adLockBatchOptimistic
    GridName.Clear
    GridName.FormatString = "SNo|^Baleno  |^Weight"
    GridName.Rows = 1
    For I = 1 To rsg.RecordCount
    GridName.Rows = GridName.Rows + 1
    GridName.TextMatrix(GridName.Rows - 1, 0) = GridName.Rows - 1
    GridName.TextMatrix(GridName.Rows - 1, 1) = rsg.Fields("baleno")
    GridName.TextMatrix(GridName.Rows - 1, 2) = rsg.Fields("baleweight")
    rsg.MoveNext
    Next
    GridName.ColAlignment(0) = dbgLeft
    GridName.ColAlignment(1) = dbgRight
txtItem.Text = ""
txtPrice.Text = ""
Label9.Caption = baleweight
Exit Sub

AddButton_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AddButton_Click of Form Frmlotbaledetail"

End Sub

Private Sub CmdClose_Click()
intervalMinutes = -1
Winsock1.Close
shpGo.Visible = False
shpWait.Visible = False
shpError.Visible = False
End Sub

Private Sub cmdConnect_Click()
intervalMinutes = -1
On Error GoTo ExitButton_Click_Error
Set Rs = New Recordset
Rs.Open "select isnull(WSPort,0) WSPort,isnull(WSIPADD,0) WSIPADD from rm_param  ", DB
Winsock1.RemoteHost = Rs(1)  ' 'Change this to your host ip
Winsock1.RemotePort = Rs(0) '1
Winsock1.Connect
shpGo.Visible = True
txtItem.SetFocus
ExitButton_Click_Error:
If Err.Number = "40020" Then
     MsgBox "Bale Weighment Scale Already Connected", vbInformation, "Kalsofte"
     txtItem.SetFocus
End If
End Sub

Private Sub cmdSend_Click()
If Winsock1.State = sckConnected Then
    Winsock1.SendData txtItem.Text
    shpGo.Visible = True
    Label3.Caption = "Sending Data"
Else
    shpGo.Visible = False
    shpWait.Visible = False
    shpError.Visible = True
    Label3.Caption = "Not currently connected to host"
End If
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Dim TotalWeight As Double
        Set rsg = New Recordset
        rsg.Open "select distinct a.docno,a.docdate from Rm_baleisstmp as a inner join rm_var as b on a.varcode=b.varcode", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
           TotalWeight = 0
            LookUp.Clear = True
           ' LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.query = "select distinct a.docno,a.docdate from Rm_baleisstmp as a inner join rm_var as b on a.varcode=b.varcode  and lotdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "Docno"
            LookUp.Caption = "Docno Listing"
            LookUp.ALIGN = "2000,1500"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            Set rsg = New Recordset
             txtDocno.Text = Trim(LookUp.Fields(0))
             rsg.Open "select a.docno, a.lotno,a.lotdate,a.varcode,b.varname,Baleno,baleweight,ROW_NUMBER() over(order by Baleno asc) Sno from Rm_baleisstmp as a inner join rm_var as b on a.varcode=b.varcode  where Docno='" & LookUp.Fields(0) & "'  and  Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
              Set grdDataGrid.DataSource = rsg
              grdDataGrid.Columns(3).Width = 1000
              
              Set Rs = New Recordset
              Rs.Open "select sum(baleweight)  as Weight from Rm_baleisstmp  where  divcode='" & Divcode & "' and Docno='" & LookUp.Fields(0) & "' and Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
              If Not Rs.EOF Then
              Label12.Caption = Rs.Fields("Weight")
              End If
              Label11.Visible = True
              Label12.Visible = True
              
              grdDataGrid.Visible = True
        Else
            MsgBox "No arrival Details Found", vbInformation, head
          
        End If
       End If


End Sub

Private Sub Command2_Click()
intervalMinutes = -1
Call ClearText
' GridName.clear
'    GridName.FormatString = "SNo|^Baleno  |^Weight"
'    GridName.Rows = 1
'
LoadArrival

baleweight = 0

End Sub
Private Sub LoadArrival()
intervalMinutes = -1
Dim IssFlg As String
          Set Rs = New Recordset
        Rs.Open "Select VarietyReqIssue from rm_param", DB, adOpenStatic
        
       If Rs(0) <> "Y" Then
            Set Rs = New Recordset
            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue ,ISNULL(iqa,'N') As iqa from rm_paRAM", DB, adOpenStatic
            LookUp.Clear = True
            'LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,a.LotType from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y'"
            If Rs(1) = "Y" Then
                LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,a.LotType from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.Fappflg = 'Y'  AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y'"
            Else
                   If Openkeyloanflg = "Y" Then
                LookUp.query = "Select distinct A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,a.LotType from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E,rm_bale e1,RM_GOD as e2  where e2.gcode=a.GODOWN and isnull(e2.OpenLoankeyflg,'N')='N' and  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and a.LOTNO=e1.LOTNO and a.LOTDT= e1.lotdt and a.ARRDT=e1.arrdt and a.ARRNO=e1.arrno and e1.OPENKEY='N'  and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y'"
                Else
                LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,a.LotType from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E where  a.areacd=e.areacode and A.SUPCD=D.SLCODE  and a.varcode=b.varcode AND A.CATCD=B.CATCD and lotyear='" & Year(yfdate) & "' AND A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0 and isnull(a.issflg,'N')='Y'"
                End If
            End If
            
        ElseIf Rs(0) = "Y" Then
            Set Rs = New Recordset
            Rs.Open "select ISNULL(ISSUE_DEF,'L') As issue,ISNULL(iqa,'N') As iqa  from rm_paRAM", DB, adOpenStatic
            LookUp.Clear = True
            If Rs(1) = "Y" Then
                LookUp.query = "Select  distinct A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(F.baleno-isnull(isskgs,0)) as ""Req. Qty"" from rm_lot a inner join rm_var b on  a.varcode=b.varcode AND A.CATCD=B.CATCD  inner join FA_SLMAS D on  A.SUPCD=D.SLCODE  inner join rm_area E  on a.areacd=e.areacode inner join RM_IssReqB F on   a.lotno=F.lotno and a.lotdt=f.lotdt and a.lottype=F.lottype and a.Divcode=f.divcode and a.catcd=f.catcd where a.Fappflg='Y' and  A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  and F.Divcode ='" & Divcode & "' and F.baleno > isnull(F.issKgs,0) and isnull(a.issflg,'N')='Y'"
            Else
                LookUp.query = "Select A.LOTNO""Lot No."",A.PLOTNO""Supplier Lot No."",a.Lotdt""Lot Date"",VARNAME""Variety"",a.varcode""Variety Code"",SLNAME""Supplier"",a.catcd AS Category,e.Station,(F.baleno-isnull(isskgs,0)) as ""Req. Qty"" from rm_lot a,rm_var b ,FA_SLMAS D,rm_area E ,RM_IssReqB F where a.areacd=e.areacode and A.SUPCD=D.SLCODE and a.varcode=b.varcode AND A.CATCD=B.CATCD AND a.lotno=F.lotno and a.lotdt=f.lotdt and a.lottype=F.lottype and a.Divcode=f.divcode and a.catcd=f.catcd and A.DIVCODE='" & Divcode & "' AND A.INS_FLG = 'Y' AND (ISNULL(a.bales,0)- ISNULL(a.ISSbal,0)) >0  and F.Divcode ='" & Divcode & "' and F.baleno > isnull(F.issKgs,0) and isnull(a.issflg,'N')='Y'"
            End If
        End If

        
            LookUp.Caption = "Lot Listing"
            LookUp.ALIGN = "750,1350,1000,1100,0,2500,900,900"
            If Rs(0) = "L" Then
                LookUp.DefCol = "Lot No."
            ElseIf Rs(0) = "V" Then
                LookUp.DefCol = "Variety"
            ElseIf Rs(0) = "P" Then
                LookUp.DefCol = "Supplier Lot No."
            End If
                LookUp.Show vbModal
            If LookUp.Cancel = False Then
                               
                txtarrivallotno.Text = CStr(LookUp.Fields(0))
                DTPicker1.value = Format(LookUp.Fields(2), "YYYY-MM-DD")
                txtvarcode.Text = LookUp.Fields(4)
                txtvarname.Text = LookUp.Fields(3)
                 Set Rs = New Recordset
                Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0) as bales,isnull(a.FavaourableWgt,0) - isnull(isswt,0) as ClsWgt,a.colorcode from rm_lot A, rm_arrival b  where A.VARCODE='" & txtvarcode.Text & "' AND a.divcode='" & Divcode & "' and a.lotno='" & txtarrivallotno.Text & "' and (isnull(b.accallowqty,0)+ISNULL(ACCQTY,0))>0 and a.arrno=b.arrno and a.arrdt=b.arrdate AND a.DIVCODE=b.divcode and a.lotyear='" & Year(yfdate) & "' and a.lotdt='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and a.catcd='" & LookUp.Fields(6) & "'", DB, adOpenStatic, adLockBatchOptimistic
                If Not Rs.EOF Then
                txtbales.Text = Rs.Fields("bales")
                txtweight.Text = Rs.Fields("ClsWgt")
                End If
                
                Set Rs = New Recordset
                Rs.Open "select baleno as 'Bale no',Grwt,TareWt,Favaourablewgt-isnull(actisskgs,0) as 'Balance Weight' from rm_bale where DIVCODE='" & Divcode & "' AND varcode='" & txtvarcode.Text & "'and STATUS IN ('AC','AW') AND lotno='" & txtarrivallotno.Text & "' and lotdt='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and catcd='" & LookUp.Fields(6) & "'  and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N'   order by baleno ", DB, adOpenStatic, adLockBatchOptimistic
                Set DataGrid1.DataSource = Rs
                
                LookUp.Clear = True
                Exit Sub
            Else
               
                Exit Sub
            End If
        
intervalMinutes = -1

End Sub
Sub Lotdisplay(Varcode As String, LOTDT As String, catcd As String, Optional ByVal vLotNo As Integer)
intervalMinutes = -1
On Error GoTo Lotdisplay_Error
Dim issKgs As Double
Dim rslotcheck As New Recordset
If Opt = "add" Then
    baleno = 0
    issKgs = 0
    Set rslotcheck = New Recordset
           rslotcheck.Open "SELECT a.DIVCODE,ISSTYPE,a.CATCD,DOCNO,DOCDT,a.LOTNO""Lot No."" ,a.LOTDT""Date"",B.PLOTNO ""Supplier Lot No."",a.varcode ""Variety"",COLORCODE ""Color"",'            ' ""Closing Bales"",'            '""Closing Weight"",ISSKGS""Issued Kgs"",Baleno,a.lottype,a.ACTISSKGS ""AIKgs"",ISSUED,a.arrdt FROM RM_ISSB a,rm_lot b  where a.lotno=b.lotno and a.lotdt=b.lotdt and a.divcode=b.divcode and a.catcd=b.catcd and 1=2", DB, adOpenStatic
           Set rslotcheck.DataSource = adoSecondaryRS
            
            rslotcheck.MoveFirst
            For I = 1 To rslotcheck.RecordCount
                If rslotcheck("Lot No.") = txtarrivallotno.Text And rslotcheck("Date") = CDate(DTPicker1.value) And rslotcheck(2) = catcd And rslotcheck("Variety") = Varcode Then
                    baleno = baleno + 1
                    issKgs = issKgs + rslotcheck("Issued Kgs")
                End If
                rslotcheck.MoveNext
            Next
 
    
    If issKgs > 0 Then
        MsgBox "Lot cannot be returned For This Issue", vbInformation, head
        grdDataGrid.Col = 0
        grdDataGrid.SetFocus
        Exit Sub
    End If
Else
issKgs = 0
baleno = 0
End If
        

      Set Rs = New Recordset
      Rs.Open "select DISTINCT A.lotdt 'Date',A.lottype,A.PLOTNO,A.varcode,A.catcd,isnull(a.bales,0)-isnull(issbal,0),case when weightflg ='M' then ISNULL(a.favaourablewgt - (SELECT isnull(sum(isskgs),0),0) FROM RM_issb B WHERE lotno=" & txtarrivallotno.Text & " ) else ISNULL(a.favaourablewgt - (SELECT isnull(sum(isskgs),0),0) FROM RM_issb B WHERE lotno=" & txtarrivallotno.Text & " ) end as ClsWgt,a.colorcode,a.arrdt from rm_lot A,RM_BALE B where A. VARCODE='" & Varcode & "' AND  STATUS IN ('AC','AW') AND a.divcode='" & Divcode & "' and a.lotno='" & val(txtarrivallotno.Text) & "' and (ISSUED='N' OR ISSUED IS NULL) and  A.LOTNO=B.LOTNO AND A.CATCD=B.CATCD and  a.rejflg='N' and a.lotyear='" & Year(yfdate) & "' and a.arrdt=b.arrdt  and a.lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and  isnull(b.rejflg,'N')='N'", DB, adOpenStatic
    
      If Rs.RecordCount = 0 Then
         Set xx = New Recordset
         xx.Open "select rejflg from rm_lot where  CatCd ='" & catcd & "' and VARCODE='" & Varcode & "' AND lotno='" & txtarrivallotno.Text & "' and lotdt='" & Format(LOTDT, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and divcode='" & Divcode & "'", DB, adOpenStatic
         If xx.RecordCount > 0 Then
            If xx("rejflg") = "Y" Then
               MsgBox "This Lot is Rejected. Please Select the another Lot", vbInformation, head
               Exit Sub
            Else
               GoTo 10
            End If
         End If
10:      MsgBox "The Lot was issued. Not available for the selected Count.", vbInformation, head
         On Error Resume Next
         grdDataGrid.Columns(0).Text = ""
         grdDataGrid.Col = 0
         grdDataGrid.SetFocus
      Else
         xx1 = 0
         Set ry = New Recordset
       '  currow = grddatagrid.Row
         
        If Openkeyloanflg = "Y" Then
            ry.Open "select * from rm_bale where divcode='" & Divcode & "' and  catcd= '" & catcd & "' AND VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & txtarrivallotno.Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'  and OPENKEY='N' ", DB, adOpenStatic
        Else
           ry.Open "select * from rm_bale where divcode='" & Divcode & "' and  catcd= '" & catcd & "' AND VARCODE='" & Varcode & "' AND STATUS IN ('AC','AW') AND (ISSUED='N' OR ISSUED IS NULL) and lotno='" & txtarrivallotno.Text & "'  and lotdt='" & Format(Rs("date"), "yyyy-mm-dd") & "'  and isnull(rejflg,'N')='N'", DB, adOpenStatic
        End If
         
         
    
         
         
         intervalMinutes = -1
         
         If Opt = "add" Then
            grdDataGrid.Columns(7).value = xx1 - baleno
            grdDataGrid.Columns(8).value = Format(Rs(6), "#0.000")
            grdDataGrid.Col = 9
            grdDataGrid.SetFocus
            FLG = ""
        End If
      End If

intervalMinutes = -1
Exit Sub
Lotdisplay_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Lotdisplay of Form FrmissueKgs", vbInformation, head

End Sub
Public Sub ClearText()
intervalMinutes = -1
txtarrivallotno.Text = ""
'txtsuppname.Text = ""
'txtsupplylotno.Text = ""
txtvarcode.Text = ""
txtvarname.Text = ""
txtItem.Text = ""
txtPrice.Text = ""
Label11.Visible = False
Label12.Visible = False
grdDataGrid.Visible = False
Label9.Caption = 0
End Sub

Private Sub Command3_Click()
    Unload Me
End Sub

Private Sub Command4_Click()
    Set Rs = New Recordset
    Rs.Open "select isnull(MAx(Docno),0)+1 as Docno from Rm_baleisstmp ", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
    txtDocno.Text = Rs.Fields("Docno")
    End If
DTPicker2.value = Format(pdate, "YYYY-MM-DD")
Call ClearText
 GridName.Clear
    GridName.FormatString = "SNo|^Baleno  |^Weight"
    GridName.Rows = 1
    
End Sub

Private Sub DataGrid1_Click()
txtItem.Text = DataGrid1.Columns(0).Text
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
 openconnection
 Set DB = New Connection
 DB.Open connectstring
'Db.Open
Call Format_Grid
Opt = "add"
Label3.Visible = False
intervalMinutes = -1
End Sub
Private Sub Format_Grid()
On Error GoTo Format_Grid_Error
    GridName.Clear
    GridName.FormatString = "SNo|^Baleno    |^Bale Weight"
    GridName.Rows = 1
    


Exit Sub
Format_Grid_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Format_grid of Form Frmlotbaledetail"
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
If KeyCode = 46 Then
Dim Arrivallotno As String
Dim balenodelete As Double
If grdDataGrid.ApproxCount <> 1 Then
balenodelete = grdDataGrid.Columns(7).Text
If grdDataGrid.ApproxCount = balenodelete Then
If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
Arrivallotno = Trim(grdDataGrid.Columns(0).Text)

DB.Execute ("delete from Rm_baleisstmp  where baleno  =" & grdDataGrid.Columns(5).Text & " and  LotNo='" & Trim(grdDataGrid.Columns(1).Text) & "'and docno='" & grdDataGrid.Columns(0).Text & "' and Transflag='N' ")
If Arrivallotno <> "" Then
            Set rsg = New Recordset
             Set grdDataGrid.DataSource = rsg
              rsg.Open "select a.docno,  a.lotno,a.lotdate,a.varcode,b.varname,Baleno,baleweight,ROW_NUMBER() over(order by Baleno asc) Sno  from Rm_baleisstmp as a inner join rm_var as b on a.varcode=b.varcode  where docno='" & Arrivallotno & "'  and  Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
              Set grdDataGrid.DataSource = rsg
              grdDataGrid.Columns(3).Width = 1000
              Set Rs = New Recordset
              Rs.Open "select sum(baleweight)  as Weight from Rm_baleisstmp  where  divcode='" & Divcode & "' and docno='" & Arrivallotno & "' and Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
              If Not Rs.EOF Then
              Label12.Caption = Rs.Fields("Weight")
              End If
End If
End If
Else
If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
Arrivallotno = Trim(grdDataGrid.Columns(0).Text)

DB.Execute ("delete from Rm_baleisstmp  where baleno  =" & grdDataGrid.Columns(5).Text & " and  LotNo='" & Trim(grdDataGrid.Columns(1).Text) & "' and docno='" & grdDataGrid.Columns(0).Text & "' and Transflag='N' ")
If Arrivallotno <> "" Then
            Set rsg = New Recordset
             Set grdDataGrid.DataSource = rsg
              rsg.Open "select  a.docno,  a.lotno,a.lotdate,a.varcode,b.varname,Baleno,baleweight,ROW_NUMBER() over(order by Baleno asc) Sno  from Rm_baleisstmp as a inner join rm_var as b on a.varcode=b.varcode  where docno='" & Arrivallotno & "'  and  Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
              Set grdDataGrid.DataSource = rsg
              grdDataGrid.Columns(3).Width = 1000
              Set Rs = New Recordset
              Rs.Open "select isnull(sum(baleweight),0)  as Weight from Rm_baleisstmp  where  divcode='" & Divcode & "' and Docno='" & Arrivallotno & "' and Docdate between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
              If Not Rs.EOF Then
              Label12.Caption = Rs.Fields("Weight")
              End If
End If
End If
End If
End Sub

Private Sub Text1_Change()
                Set Rs = New Recordset
                Rs.Open "select baleno as 'Bale no',Grwt,TareWt,Favaourablewgt-isnull(actisskgs,0) as 'Balance Weight' from rm_bale where DIVCODE='" & Divcode & "' AND varcode='" & txtvarcode.Text & "'and STATUS IN ('AC','AW') AND lotno='" & txtarrivallotno.Text & "' and lotdt='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and ISNULL(ISSUED,'N')='N' AND (isnull(netwt,0)-isnull(ACTisSKGS,0)) > 0 and isnull(rejflg,'N')='N' and  baleno like '" & Trim(Text1.Text) & "%' ", DB, adOpenStatic
                If Rs.RecordCount > 0 Then
                    Set DataGrid1.DataSource = Rs
                Else
                Set DataGrid1.DataSource = Nothing
                End If
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Dim sData As String
Winsock1.GetData sData, vbString
'Label1.Caption = sData
txtPrice.Text = Right(sData, 8)
Label3.Caption = "Received Data"
Label3.Visible = False
shpGo.Visible = False
shpWait.Visible = False
shpError.Visible = False

End Sub

Private Sub Winsock1_SendComplete()

Label3.Caption = "Completed Data Transmission"

End Sub

Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
End Sub

