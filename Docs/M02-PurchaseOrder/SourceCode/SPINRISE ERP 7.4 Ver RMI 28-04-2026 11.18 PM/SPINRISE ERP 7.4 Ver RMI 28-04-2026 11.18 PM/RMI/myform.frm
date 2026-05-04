VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form myform 
   Caption         =   "Lot -Bale Weightment Data Transfer"
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
   Begin VB.Frame Frame2 
      Height          =   2655
      Left            =   120
      TabIndex        =   19
      Top             =   360
      Width           =   8655
      Begin VB.TextBox txtItem 
         Height          =   375
         Left            =   1470
         Locked          =   -1  'True
         TabIndex        =   28
         Top             =   2160
         Width           =   1575
      End
      Begin VB.TextBox txtPrice 
         Height          =   375
         Left            =   4320
         TabIndex        =   27
         Top             =   2160
         Width           =   1935
      End
      Begin VB.TextBox txtvarcode 
         Height          =   330
         Left            =   1470
         TabIndex        =   26
         Top             =   1680
         Width           =   1335
      End
      Begin VB.TextBox txtvarname 
         BackColor       =   &H00E0E0E0&
         Height          =   330
         Left            =   2925
         TabIndex        =   25
         Top             =   1680
         Width           =   5535
      End
      Begin VB.TextBox txtarrivallotno 
         Height          =   330
         Left            =   1470
         TabIndex        =   24
         Top             =   1200
         Width           =   2055
      End
      Begin VB.TextBox txtsupplylotno 
         Height          =   330
         Left            =   1470
         TabIndex        =   23
         Top             =   720
         Width           =   2055
      End
      Begin VB.TextBox txtsuppcode 
         Height          =   330
         Left            =   1470
         TabIndex        =   22
         Top             =   240
         Width           =   1335
      End
      Begin VB.TextBox txtsuppname 
         BackColor       =   &H00E0E0E0&
         Height          =   330
         Left            =   2895
         TabIndex        =   21
         Top             =   240
         Width           =   5535
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   375
         Left            =   6840
         TabIndex        =   20
         Top             =   720
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   661
         _Version        =   393216
         Enabled         =   0   'False
         Format          =   165740545
         CurrentDate     =   45500
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Gross Wt."
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
         TabIndex        =   35
         Top             =   2280
         Width           =   855
      End
      Begin VB.Label baleno1 
         AutoSize        =   -1  'True
         Caption         =   "Bale No."
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
         Left            =   150
         TabIndex        =   34
         Top             =   2235
         Width           =   750
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
         Left            =   150
         TabIndex        =   33
         Top             =   1755
         Width           =   555
      End
      Begin VB.Label Label6 
         AutoSize        =   -1  'True
         Caption         =   "Mill LotNo"
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
         Left            =   150
         TabIndex        =   32
         Top             =   1275
         Width           =   870
      End
      Begin VB.Label Label7 
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
         Left            =   150
         TabIndex        =   31
         Top             =   795
         Width           =   1275
      End
      Begin VB.Label Label8 
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
         Left            =   120
         TabIndex        =   30
         Top             =   315
         Width           =   1245
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Arrival Date"
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
         Left            =   5520
         TabIndex        =   29
         Top             =   720
         Width           =   1020
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&View"
      Height          =   315
      Left            =   5280
      TabIndex        =   15
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton AddButton 
      Caption         =   "&Save"
      Height          =   315
      Left            =   2805
      TabIndex        =   9
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&New"
      Height          =   315
      Left            =   1590
      TabIndex        =   8
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton Command3 
      Caption         =   "&Exit"
      Height          =   315
      Left            =   3990
      TabIndex        =   7
      Top             =   3120
      Width           =   975
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
      Top             =   -720
      Width           =   1935
      Begin VB.CommandButton cmdClose 
         Height          =   615
         Left            =   120
         Picture         =   "myform.frx":0000
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   1920
         Width           =   1695
      End
      Begin VB.CommandButton cmdConnect 
         Height          =   615
         Left            =   120
         Picture         =   "myform.frx":0BB1
         Style           =   1  'Graphical
         TabIndex        =   5
         Top             =   1080
         Width           =   1695
      End
      Begin VB.CommandButton cmdSend 
         Height          =   615
         Left            =   120
         Picture         =   "myform.frx":1818
         Style           =   1  'Graphical
         TabIndex        =   4
         Top             =   240
         Visible         =   0   'False
         Width           =   1695
      End
   End
   Begin MSFlexGridLib.MSFlexGrid GridName 
      Height          =   2415
      Left            =   240
      TabIndex        =   10
      TabStop         =   0   'False
      Top             =   3480
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
      TabIndex        =   14
      Top             =   3480
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
   Begin VB.Label Label13 
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
      Height          =   45
      Left            =   6120
      TabIndex        =   18
      Top             =   1320
      Width           =   1275
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
      TabIndex        =   17
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
      TabIndex        =   16
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
      TabIndex        =   13
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
      TabIndex        =   12
      Top             =   6120
      Width           =   2895
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
      Left            =   0
      TabIndex        =   11
      Top             =   0
      Width           =   4680
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
      TabIndex        =   3
      Top             =   960
      Width           =   3975
   End
   Begin VB.Label Label2 
      BackColor       =   &H80000007&
      Caption         =   "Price:"
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   9360
      TabIndex        =   2
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
      TabIndex        =   1
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
Attribute VB_Name = "myform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'#########################################################
'Author: S.S. Ahmed
'Email: ss_ahmed1@hotmail.com
'Date: Jul 21, 2001
'Note: This product is provided without any support
'#########################################################

Option Explicit
Dim I As Integer
Dim rsg  As New Recordset
Dim baleno2 As Integer
Dim baleweight As Double
Private Sub AddButton_Click()
intervalMinutes = -1

On Error GoTo AddButton_Click_Error
'If SaveButton.Enabled = False Then Exit Sub
    If Trim(txtsuppname.Text) = "" Then
        MsgBox " Please Select Valid Supplier Name", vbInformation, head
        Screen.MousePointer = 0
        txtsuppname.SetFocus
        Exit Sub
    End If
    If Trim(txtvarname.Text) = "" Then
        MsgBox " Please Select Valid variety Name", vbInformation, head
        Screen.MousePointer = 0
        txtvarname.SetFocus
        Exit Sub
    End If
     If val(txtItem.Text) = 0 Then
        MsgBox "Please Select Valid Bale No.", vbInformation, head
        Screen.MousePointer = 0
        txtItem.SetFocus
        Exit Sub
    End If
    
    If val(txtPrice.Text) <= 0 Then
        MsgBox "Please Select Valid Bale Weight", vbInformation, head
        Exit Sub
    End If
    
    For I = 1 To GridName.Rows - 1
    If val(txtItem.Text) = val(GridName.TextMatrix(I, 1)) Then
        txtItem.Text = ""
        MsgBox "Baleno Already Entered", vbInformation, head
        txtItem.SetFocus
        Exit Sub
    End If
    
    Next
    
    
    Set Rs = New Recordset
    Rs.Open "select  baleno from Rm_baletemp where Arrivallotno ='" & val(txtarrivallotno.Text) & "' AND Transflag='N' AND baleno='" & val(txtItem.Text) & "' and slcode='" & Trim(txtsuppcode.Text) & "' and supplotno='" & Trim(txtsupplylotno.Text) & "' AND VARCODE='" & Trim(txtvarcode.Text) & "' and ArrivalDate='" & Format(DTPicker1.value, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
    If Not Rs.EOF Then
        txtItem.Text = ""
        MsgBox "Baleno Already Entered", vbInformation, head
        txtItem.SetFocus
        Exit Sub
    End If
    
    
    
   ' txtPrice.Text = "106.50"
    DB.Execute "INSERT INTO Rm_baletemp(slcode,supplotno,Arrivallotno,varcode,baleno,millGRossWT,Transflag,ArrivalDate) VALUES('" & txtsuppcode.Text & "','" & txtsupplylotno.Text & "','" & txtarrivallotno.Text & "','" & txtvarcode.Text & "'," & txtItem.Text & "," & val(txtPrice.Text) & ",'N','" & Format(DTPicker1.value, "yyyy-mm-dd") & "')"
    baleno2 = val(txtItem.Text) + 1
    baleweight = val(txtPrice.Text) + baleweight
    Set rsg = New Recordset
    rsg.Open " select   arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date', a.SUPCD as 'Supplier Code', slname as  'Supllier Name',c.baleno,c.millGRossWT  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.varcode=c.varcode and c.ArrivalDate=a.ARRDATE and a.SUPCD=c.slcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & txtsuppcode.Text & "' and a.ARRNO='" & txtarrivallotno.Text & "'and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno desc ", DB, adOpenStatic, adLockBatchOptimistic
    GridName.Clear
    GridName.FormatString = "SNo|^Baleno  |^Weight"
    GridName.Rows = 1
    For I = 1 To rsg.RecordCount
    GridName.Rows = GridName.Rows + 1
    GridName.TextMatrix(GridName.Rows - 1, 0) = GridName.Rows - 1
    GridName.TextMatrix(GridName.Rows - 1, 1) = rsg.Fields("baleno")
    GridName.TextMatrix(GridName.Rows - 1, 2) = rsg.Fields("Weight")
    rsg.MoveNext
    Next
    GridName.ColAlignment(0) = dbgLeft
    GridName.ColAlignment(1) = dbgRight
txtItem.Text = ""
txtPrice.Text = ""
txtItem.Text = baleno2
Label9.Caption = baleweight
Exit Sub

AddButton_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure AddButton_Click of Form Frmlotbaledetail"

End Sub

Private Sub CmdClose_Click()
Winsock1.Close
shpGo.Visible = False
shpWait.Visible = False
shpError.Visible = False
intervalMinutes = -1
End Sub

Private Sub cmdConnect_Click()
intervalMinutes = -1
On Error GoTo ExitButton_Click_Error
Set Rs = New Recordset
Rs.Open "select isnull(WSPort,0) WSPort,isnull(WSIPADD,0) WSIPADD from rm_param  ", DB

Winsock1.RemoteHost = Rs(1)  '  "192.168.0.220" 'Change this to your host ip
Winsock1.RemotePort = Rs(0)
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
intervalMinutes = -1
If Winsock1.State = sckConnected Then
    Winsock1.SendData "ping"
    shpGo.Visible = True
    Label3.Caption = "Sending Data"
Else
    shpGo.Visible = False
    shpWait.Visible = False
    shpError.Visible = True
    Label3.Caption = "Not currently connected to host"
End If
intervalMinutes = -1
End Sub

Private Sub Command1_Click()
intervalMinutes = -1
Dim TotalWeight As Double
        Set rsg = New Recordset
        rsg.Open "select distinct  arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date',slname as  'Supllier' from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.ArrivalDate=a.ARRDATE and a.varcode=c.varcode and c.Transflag='N'", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
           TotalWeight = 0
            LookUp.Clear = True
           ' LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.query = "select distinct  arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date',a.supcd as 'Supplierc Code',slname as  'Supllier' from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.varcode=c.varcode and a.SUPCD=c.slcode and c.ArrivalDate=a.ARRDATE and c.Transflag='N' and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "ArrivalNo"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "2000,1500,1000,3000"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            Set rsg = New Recordset
             rsg.Open " select   arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date', a.SUPCD as 'Supplier Code', slname as  'Supllier Name',c.baleno,c.millGRossWT  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.varcode=c.varcode and a.ARRDATE=c.ArrivalDate and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & LookUp.Fields(2) & "' and a.ARRNO='" & LookUp.Fields(0) & "'and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
              Set grdDataGrid.DataSource = rsg
              grdDataGrid.Columns(3).Width = 2800
              Set Rs = New Recordset
              Rs.Open "select sum(c.millGRossWT)  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.ARRDATE=c.ArrivalDate and a.SUPCD=c.slcode and a.varcode=c.varcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & LookUp.Fields(2) & "' and a.ARRNO='" & LookUp.Fields(0) & "'and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
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

Call ClearText
 GridName.Clear
    GridName.FormatString = "SNo|^Baleno  |^Weight"
    GridName.Rows = 1

LoadArrival

End Sub
Private Sub LoadArrival()

        Set rsg = New Recordset
        rsg.Open "select distinct arrno""Arrival No"",arrdate""Arrival Date"",slname""Supllier"" from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-ISNULL(lotrecqty,0) >0 AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If rsg.RecordCount > 0 Then
            LookUp.Clear = True
           ' LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",slname""Supplier""  from rm_arrival a,fa_slmas b where a.supcd=b.slcode and divcode='" & Divcode & "' AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.query = "select Distinct arrno""Arrival Number"",arrdate""Arrival Date"",b.slcode 'Code',slname""Supplier Name"", Plotno 'Party Lot No.', c.varcode 'Variety ID',c.varname 'Variety Name' from rm_arrival a,fa_slmas b,rm_var c where a.supcd=b.slcode and divcode='" & Divcode & "' and a.varcode=c.varcode AND ISNULL(QUANTITY,0)-(ISNULL(lotrecqty,0) + ISNULL(Rejqty,0)) >0  AND ARRDATE<='" & Format(pdate, "YYYY-MM-DD") & "'"
            LookUp.DefCol = "ArrivalNo"
            LookUp.Caption = "Arrival Listing"
            LookUp.ALIGN = "1500,1300,1500,3800"
            LookUp.Show vbModal
            If LookUp.Cancel = False Then
            txtsuppcode.Text = LookUp.Fields(2)
            txtsuppname.Text = LookUp.Fields(3)
            txtarrivallotno.Text = LookUp.Fields(0)
            txtsupplylotno.Text = LookUp.Fields(4)
            txtvarcode.Text = LookUp.Fields(5)
            txtvarname.Text = LookUp.Fields(6)
            DTPicker1.value = LookUp.Fields(1)
            
            txtsuppcode.Locked = True
            txtsuppname.Locked = True
            txtarrivallotno.Locked = True
            txtsupplylotno.Locked = True
            txtvarcode.Locked = True
            txtvarname.Locked = True
            txtItem.Locked = True
            
            txtItem.Text = 1
            Set Rs = New Recordset
            Rs.Open "select isnull(MAx(baleno),0)+1 as baleno from Rm_baletemp where  Transflag='N' and slcode='" & Trim(txtsuppcode.Text) & "'  and arrivallotno='" & val(txtarrivallotno.Text) & "' and supplotno='" & Trim(txtsupplylotno.Text) & "' AND VARCODE='" & Trim(txtvarcode.Text) & "' and ArrivalDate ='" & Format(DTPicker1.value, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockBatchOptimistic
            If Not Rs.EOF Then
                txtItem.Text = Rs.Fields("baleno")
            End If
            cmdConnect.SetFocus
            baleno2 = 0
            baleweight = 0
        Else
            MsgBox "No arrival Details Found", vbInformation, head
           ' Call BUTTON_Click(10)
        End If
       End If

End Sub

Public Sub ClearText()
txtsuppcode.Text = ""
txtarrivallotno.Text = ""
txtsuppname.Text = ""
txtsupplylotno.Text = ""
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
          txtsuppcode.Locked = True
            txtsuppname.Locked = True
            txtarrivallotno.Locked = True
            txtsupplylotno.Locked = True
            txtvarcode.Locked = True
            txtvarname.Locked = True
            txtItem.Locked = True
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
Dim slcode As String
Dim Arrivallotno As String
Dim balenodelete As Double
If grdDataGrid.ApproxCount <> 1 Then
balenodelete = rsg.Fields("baleno")
If grdDataGrid.ApproxCount = balenodelete Then
If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
slcode = Trim(grdDataGrid.Columns(2).Text)
Arrivallotno = Trim(grdDataGrid.Columns(0).Text)
rsg.Delete
DB.Execute ("delete from Rm_baletemp  where baleno  =" & balenodelete & " and  slcode='" & Trim(grdDataGrid.Columns(2).Text) & "' and Arrivallotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and Transflag='N' ")
If slcode <> "" And Arrivallotno <> "" Then
            Set rsg = New Recordset
             Set grdDataGrid.DataSource = rsg
              rsg.Open " select   arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date', a.SUPCD as 'Supplier Code', slname as  'Supllier Name',c.baleno,c.millGRossWT  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.ArrivalDate=a.ARRDATE and a.varcode=c.varcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & slcode & "' and a.ARRNO='" & Arrivallotno & "' and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
              Set grdDataGrid.DataSource = rsg
              grdDataGrid.Columns(3).Width = 2800
              Set Rs = New Recordset
              Rs.Open "select sum(c.millGRossWT)  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.ArrivalDate=a.ARRDATE and a.varcode=c.varcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & LookUp.Fields(2) & "' and a.ARRNO='" & LookUp.Fields(0) & "' and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' ", DB, adOpenStatic, adLockBatchOptimistic
              If Not Rs.EOF Then
              Label12.Caption = Rs.Fields("Weight")
              End If
End If
End If
Else
    If MsgBox("Do you want to Delete?", vbYesNo, head) = vbNo Then Exit Sub
    slcode = Trim(grdDataGrid.Columns(2).Text)
    Arrivallotno = Trim(grdDataGrid.Columns(0).Text)
    
    DB.Execute ("delete from Rm_baletemp  where baleno  =" & balenodelete & " and  slcode='" & Trim(grdDataGrid.Columns(2).Text) & "' and Arrivallotno='" & Trim(grdDataGrid.Columns(0).Text) & "' and Transflag='N' ")
    If slcode <> "" And Arrivallotno <> "" Then
                Set rsg = New Recordset
                  rsg.Open " select   arrno as 'Arrival No',convert(varchar(10),arrdate,103) as 'Arrival Date', a.SUPCD as 'Supplier Code', slname as  'Supllier Name',c.baleno,c.millGRossWT  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.Transflag='N' and c.ArrivalDate=a.ARRDATE and a.varcode=c.varcode and divcode='" & Divcode & "' and a.supcd='" & slcode & "'  and a.ARRNO='" & Arrivallotno & "' and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "' order by baleno asc ", DB, adOpenStatic, adLockBatchOptimistic
                  Set grdDataGrid.DataSource = rsg
                  grdDataGrid.Columns(3).Width = 2800
                  Set Rs = New Recordset
                  Rs.Open "select sum(c.millGRossWT)  as Weight from rm_arrival a,fa_slmas b,Rm_baletemp as c where a.supcd=b.slcode and a.ARRNO=c.Arrivallotno and a.SUPCD=c.slcode and c.ArrivalDate=a.ARRDATE and a.varcode=c.varcode and c.Transflag='N' and divcode='" & Divcode & "' and a.supcd='" & LookUp.Fields(2) & "' and a.ARRNO='" & LookUp.Fields(0) & "' and ARRDATE between '" & Format(yfdate, "YYYY-MM-DD") & "' and '" & Format(yldate, "YYYY-MM-DD") & "'  ", DB, adOpenStatic, adLockBatchOptimistic
                  If Not Rs.EOF Then
                  Label12.Caption = Rs.Fields("Weight")
                  End If
    End If
End If
End If
End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
On Error GoTo Errh
Dim sData As String
Winsock1.GetData sData, vbString
Label1.Caption = sData
txtPrice.Text = Right(Replace(sData, " ", ""), 100)
txtPrice.Text = Right(Replace(sData, "", ""), 100)
Dim totweight As String
Dim actWeight As String
totweight = ""
Set rsg = New Recordset
rsg.Open "exec ksp_getweight '" & Format(txtPrice.Text, "00.000") & "'", DB, adOpenStatic
If Not rsg.EOF Then
    totweight = rsg(0)
End If
actWeight = ""
Set rsg = New Recordset
rsg.Open "select items from dbo.split('" & totweight & "',',')", DB, adOpenStatic
If Not rsg.EOF Then
    actWeight = rsg(0)
End If
txtPrice.Text = Format(actWeight, "00.000")
Label3.Caption = "Received Data"
Label3.Visible = False
shpGo.Visible = False
shpWait.Visible = False
shpError.Visible = False
Exit Sub

Errh:

MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure "

End Sub

Private Sub Winsock1_SendComplete()
Label3.Caption = "Completed Data Transmission"
End Sub

Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
End Sub

