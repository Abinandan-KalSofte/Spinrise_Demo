VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmCtStkRMIWs 
   Caption         =   "Cotton Stock"
   ClientHeight    =   7065
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8655
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7065
   ScaleWidth      =   8655
   WindowState     =   2  'Maximized
   Begin VB.Frame Framediv 
      BorderStyle     =   0  'None
      Height          =   3615
      Left            =   9720
      TabIndex        =   35
      Top             =   1320
      Visible         =   0   'False
      Width           =   7935
      Begin VB.CheckBox Check4 
         Caption         =   "All"
         Height          =   195
         Left            =   360
         TabIndex        =   37
         Top             =   1560
         Width           =   525
      End
      Begin VB.TextBox Text6 
         Appearance      =   0  'Flat
         Height          =   405
         Left            =   1080
         TabIndex        =   36
         Top             =   360
         Width           =   6555
      End
      Begin MSComctlLib.ListView List_div 
         Height          =   2565
         Left            =   1080
         TabIndex        =   38
         Top             =   840
         Width           =   6555
         _ExtentX        =   11562
         _ExtentY        =   4524
         View            =   3
         LabelEdit       =   1
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
            Name            =   "Tahoma"
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
            Object.Width           =   6174
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Division Code"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "Abbreviation"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label Label14 
         AutoSize        =   -1  'True
         Caption         =   "Division"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   240
         Left            =   120
         TabIndex        =   39
         Top             =   840
         Width           =   735
      End
   End
   Begin VB.Frame Frame2 
      Height          =   3255
      Left            =   6720
      TabIndex        =   23
      Top             =   1680
      Width           =   2415
      Begin VB.TextBox Text5 
         Height          =   375
         Left            =   1440
         TabIndex        =   33
         Top             =   2520
         Width           =   735
      End
      Begin VB.TextBox Text4 
         Height          =   375
         Left            =   1440
         TabIndex        =   31
         Top             =   1920
         Width           =   735
      End
      Begin VB.TextBox Text3 
         Height          =   375
         Left            =   1440
         TabIndex        =   29
         Top             =   1320
         Width           =   735
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   1440
         TabIndex        =   27
         Top             =   720
         Width           =   735
      End
      Begin VB.TextBox Text1 
         Height          =   375
         Left            =   1440
         TabIndex        =   25
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label7 
         Caption         =   "Aging 5 >="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   32
         Top             =   2520
         Width           =   1215
      End
      Begin VB.Label Label6 
         Caption         =   "Aging 4 <="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   30
         Top             =   1920
         Width           =   975
      End
      Begin VB.Label Label5 
         Caption         =   "Aging 3 <="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   28
         Top             =   1320
         Width           =   1095
      End
      Begin VB.Label Label4 
         Caption         =   "Aging 2 <="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   26
         Top             =   840
         Width           =   975
      End
      Begin VB.Label Label3 
         Caption         =   "Aging 1 <="
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   24
         Top             =   360
         Width           =   1095
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Excel"
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
      Left            =   960
      TabIndex        =   22
      Top             =   4920
      Width           =   915
   End
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   1200
      Top             =   5880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Crystal Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4410
      TabIndex        =   21
      Top             =   4920
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1140
      TabIndex        =   9
      Top             =   4095
      Width           =   5280
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   11
         Top             =   240
         Value           =   -1  'True
         Width           =   1140
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   2160
         TabIndex        =   10
         Top             =   210
         Width           =   1260
      End
      Begin VB.Label Label37 
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
         Height          =   315
         Left            =   720
         TabIndex        =   12
         Top             =   240
         Width           =   1425
      End
   End
   Begin VB.CommandButton cmdReport 
      Caption         =   "&Report"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2025
      TabIndex        =   6
      Top             =   4905
      Width           =   915
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3210
      TabIndex        =   5
      Top             =   4905
      Width           =   915
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   1845
      Left            =   1215
      TabIndex        =   0
      Top             =   1590
      Width           =   5055
      _ExtentX        =   8916
      _ExtentY        =   3254
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "          "
      TabPicture(0)   =   "frmCtStkRMIWs.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   1605
         Left            =   120
         TabIndex        =   1
         Top             =   75
         Width           =   4800
         Begin VB.TextBox txt_jjno 
            Height          =   330
            Left            =   1800
            TabIndex        =   20
            Top             =   1020
            Visible         =   0   'False
            Width           =   2535
         End
         Begin VB.Frame Frame24 
            Height          =   495
            Left            =   30
            TabIndex        =   16
            Top             =   1620
            Visible         =   0   'False
            Width           =   4740
            Begin VB.OptionButton optShiva 
               Caption         =   "Shiva"
               Height          =   225
               Left            =   2865
               TabIndex        =   18
               Top             =   195
               Width           =   1080
            End
            Begin VB.OptionButton optBannari 
               Caption         =   "Bannari"
               Height          =   255
               Left            =   1020
               TabIndex        =   17
               Top             =   180
               Value           =   -1  'True
               Width           =   1260
            End
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   315
            Left            =   1800
            TabIndex        =   7
            Top             =   615
            Width           =   2550
            _ExtentX        =   4498
            _ExtentY        =   556
            _Version        =   393216
            Style           =   2
            Text            =   "DataCombo1"
         End
         Begin MSComCtl2.DTPicker dtpDate 
            Height          =   345
            Left            =   1815
            TabIndex        =   2
            Top             =   600
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   398917633
            CurrentDate     =   37578
         End
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   345
            Left            =   1800
            TabIndex        =   13
            Top             =   1110
            Visible         =   0   'False
            Width           =   1500
            _ExtentX        =   2646
            _ExtentY        =   609
            _Version        =   393216
            Format          =   398917633
            CurrentDate     =   37578
         End
         Begin MSDataListLib.DataCombo DataCombo2 
            Height          =   315
            Left            =   1815
            TabIndex        =   15
            Top             =   1125
            Visible         =   0   'False
            Width           =   2550
            _ExtentX        =   4498
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo2"
         End
         Begin VB.Label lbl_jjno 
            AutoSize        =   -1  'True
            Caption         =   "Form JJ No"
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
            Left            =   285
            TabIndex        =   19
            Top             =   1088
            Visible         =   0   'False
            Width           =   960
         End
         Begin VB.Label Label1 
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
            Left            =   285
            TabIndex        =   14
            Top             =   1230
            Visible         =   0   'False
            Width           =   705
         End
         Begin VB.Label Label2 
            AutoSize        =   -1  'True
            Caption         =   "As On Date"
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
            Left            =   285
            TabIndex        =   4
            Top             =   660
            Width           =   990
         End
         Begin VB.Label lblTitle 
            Alignment       =   2  'Center
            Appearance      =   0  'Flat
            BackColor       =   &H80000002&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Cotton Stock"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H80000009&
            Height          =   315
            Left            =   15
            TabIndex        =   3
            Top             =   105
            Width           =   4755
         End
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   9075
      TabIndex        =   8
      Top             =   840
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      Caption         =   "No.of Days"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7080
      TabIndex        =   34
      Top             =   1200
      Width           =   1455
   End
End
Attribute VB_Name = "frmCtStkRMIWs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Rs As New Recordset
Dim rs1 As New Recordset
Dim rstLoad As New Recordset
Dim rptv As New ReportView
Dim a As Integer
Dim lncnt As Integer
Dim sArrivalNo As String
Dim sArrivalDate As String
Dim sLotno As String
Dim slotdate As String
Dim lotAddress As String
Dim sAddress As String
Dim pgcnt As Integer
Dim DB As New Connection
Dim Myxl As Excel.Application

Private Sub Check4_Click()
If Check4.value = 1 Then
        For I = 1 To List_div.ListItems.Count
          List_div.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To List_div.ListItems.Count '- 1
             List_div.ListItems.Item(I).Checked = False
        Next I
End If
    bol = False
End Sub

Private Sub CmdExit_Click()
intervalMinutes = -1
     Unload Me
     
End Sub

Private Sub cmdReport_Click()
intervalMinutes = -1
    Dim sql As String
    Dim var As String
    Dim destoday As String
    Dim desuptodate As String
    Dim balance As String
    Dim strSQL As String
    
On Error GoTo cmdReport_Click
    
    var = Empty
'    Set DB = New Connection
'    DB.Open connectstring
    If Repindex = 5 Then
        If val(DataCombo1.Text) > val(DataCombo2.Text) Then
            MsgBox "Please Select the Valid Lot No. Selection", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set Rs = New Recordset
        Rs.Open "select * from Rm_lot where Lotyear='" & Year(yfdate) & "' and Divcode='" & Divcode & "' and Lotno between " & val(DataCombo1.Text) & " and " & val(DataCombo2.Text), DB, adOpenStatic
        If Rs.EOF = False Then
            Call CottonPassingReport_ContinuesPrint(val(DataCombo1.Text), val(DataCombo2.Text))
            Screen.MousePointer = 0
        Else
            MsgBox "No Record(s) Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        intervalMinutes = -1
    ElseIf Repindex = 6 Then
        If val(DataCombo1.Text) > val(DataCombo2.Text) Then
            MsgBox "Please Select the Valid Lot No. Selection", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        
        Set Rs = New Recordset
        Rs.Open "select * from Rm_lot where Lotyear='" & Year(yfdate) & "' and Divcode='" & Divcode & "' and Arrno between " & val(DataCombo1.Text) & " and " & val(DataCombo2.Text), DB, adOpenStatic
        If Rs.EOF = False Then
'            If optBannari.value = True Then
                Call COTTONARRIVALREPORT_Bannari_ConPrint(val(DataCombo1.Text), val(DataCombo2.Text))
                intervalMinutes = -1
'            Else
'                Call COTTONARRIVALREPORT_Shiva_ConPrint(val(DataCombo1.Text), val(DataCombo2.Text))
'            End If
            Screen.MousePointer = 0
        Else
            MsgBox "No Record(s) Found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
    ElseIf Repindex = 1 Then
         strSQL = ""
         strSQL = " select C.VARNAME, CASE WHEN sum(isnull(a.OPENBAL,0))>0 THEN sum(isnull(a.OPENBAL,0)) ELSE 0 END as OPENBAL,"
         strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENBOR,0)) >0 THEN sum(isnull(a.OPENBOR,0)) ELSE 0 END as OPENBOR,"
         strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENKGS,0)) >0 THEN sum(isnull(a.OPENKGS,0)) ELSE 0 END as OPENKGS,"
         strSQL = strSQL + "CASE WHEN sum(isnull(a.OPENVALUE,0))>0 THEN sum(isnull(a.OPENVALUE,0)) ELSE 0 END as OPENVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.RECBAL,0)) AS RECBAL,SUM(ISNULL(A.RECBOR,0)) AS RECBOR,SUM(ISNULL(A.RECKGS,0)) AS RECKGS, SUM(ISNULL(A.RECVALUE,0)) AS RECVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.LOSSBAL,0)) AS LOSSBAL,SUM(ISNULL(A.LOSSKGS,0)) AS LOSSKGS, SUM(ISNULL(A.LOSSVALUE,0)) AS LOSSVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.RTNBAL,0)) AS RTNBAL,SUM(ISNULL(A.RTNKGS,0)) AS RTNKGS,SUM(ISNULL(A.RTNVALUE,0)) AS RTNVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.PRODBAL,0)) AS PRODBAL,SUM(ISNULL(A.PRODBOR,0)) AS PRODBOR,SUM(ISNULL(A.PRODKGS,0)) AS PRODKGS,SUM(ISNULL(A.PRODVALUE,0)) AS PRODVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.SALESBAL,0)) AS SALESBAL,SUM(ISNULL(A.SALESBOR,0)) AS SALESBOR,SUM(ISNULL(A.SALESKGS,0)) AS SALESKGS,SUM(ISNULL(A.SALESVALUE,0)) AS SALESVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.TRANSBAL,0)) AS TRANSBAL,SUM(ISNULL(A.TRANSBOR,0)) AS TRANSBOR,SUM(ISNULL(A.TRANSKGS,0)) AS TRANSKGS,SUM(ISNULL(A.TRANSVALUE,0)) AS TRANSVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.JWBAL,0)) AS JWBAL,SUM(ISNULL(A.JWBOR,0)) AS JWBOR,SUM(ISNULL(A.JWKGS,0)) AS JWKGS,SUM(ISNULL(A.JWVALUE,0)) AS JWVALUE,"
         strSQL = strSQL + "SUM(ISNULL(A.REJBAL,0)) AS REJBAL,SUM(ISNULL(A.REJKGS,0)) AS REJKGS,SUM(ISNULL(A.REJVALUE,0)) AS REJVALUE,"
         strSQL = strSQL + "case when sum(isnull(a.OPENBAL,0)) > 0 then ((sum(isnull(a.OPENBAL,0))+sum(isnull(a.recBAL,0)))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0))+sum(isnull(a.REJBAL,0))))"
         strSQL = strSQL + "else (sum(isnull(a.recBAL,0))-(sum(isnull(a.PRODBAL,0))+ sum(isnull(a.TRANSBAL,0))+sum(isnull(a.SALESBAL,0))+sum(isnull(a.JWBAL,0)) +sum(isnull(a.REJBAL,0)))) END CLSBAL,"
         strSQL = strSQL + "case when sum(isnull(a.OPENBOR,0)) > 0 then ((sum(isnull(a.OPENBOR,0))+sum(isnull(a.recBOR,0)))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0))))"
         strSQL = strSQL + "else (sum(isnull(a.recBOR,0))-(sum(isnull(a.PRODBOR,0))+ sum(isnull(a.TRANSBOR,0))+sum(isnull(a.SALESBOR,0))+sum(isnull(a.JWBOR,0)))) END CLSBOR,"
         strSQL = strSQL + "case when sum(isnull(a.OPENKGS,0)) > 0 then ((sum(isnull(a.OPENKGS,0))+sum(isnull(a.recKGS,0)))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0))))"
         strSQL = strSQL + "else (sum(isnull(a.recKGS,0))-(sum(isnull(a.PRODKGS,0))+ sum(isnull(a.TRANSKGS,0))+sum(isnull(a.SALESKGS,0))+sum(isnull(a.JWKGS,0))+sum(isnull(a.REJKGS,0)))) END CLSKGS,"
         strSQL = strSQL + "case when sum(isnull(a.OPENVALUE,0)) > 0 then ((sum(isnull(a.OPENVALUE,0))+sum(isnull(a.recvalue,0)))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0))))"
         strSQL = strSQL + "else (sum(isnull(a.recvalue,0))-(sum(isnull(a.PRODVALUE,0))+ sum(isnull(a.TRANSVALUE,0))+sum(isnull(a.SALESVALUE,0))+sum(isnull(a.JWVALUE,0))+sum(isnull(a.REJVALUE,0)))) END CLSVALUE"
         strSQL = strSQL + " FROM ("
         strSQL = strSQL + gStockStatement(dtpDate.value, dtpDate.value)
         strSQL = strSQL + " ) A ,RM_LOT B, RM_VAR C WHERE B.CATCD=C.CATCD AND A.VARCODE=C.VARCODE AND A.LOTNO=B.LOTNO AND A.LOTDT=B.LOTDT AND A.VARCODE =B.VARCODE "
         strSQL = strSQL & " and b.divcode ='" & Divcode & "' and b.lotyear='" & Year(yfdate) & "' and b.lotyear='" & Year(yfdate) & "' group by C.VARNAME Order by c.varname"
             
         Set rs1 = New Recordset
         rs1.Open strSQL, DB, adOpenStatic
         
         If Not rs1.EOF Then
              Set rptv = New ReportView
              a = FreeFile
              Close
              Open "d:\CtStk.txt" For Output As #a
             
              pgcnt = 1
              Call CtStk_Header_RMI(CStr(dtpDate.value), pgcnt)
              Do While Not rs1.EOF
                   If rs1!OpenVALUE <> 0 Or rs1!recvalue <> 0 Then
                        open_bales = 0: open_bales = rs1!OpenBAL + rs1!OpenBor
                        Receipt_Bales = 0: Receipt_Bales = rs1("RecBal") + rs1!recbor
                        Issued_Bales = 0: Issued_Bales = rs1!RTNBAL + rs1!LOSSBAL + rs1!PRODBOR + rs1!SALESBOR + rs1!transbor + rs1!jwbor + rs1!REJBAL + rs1("PRODBAL")
                        close_qty = 0: close_qty = rs1!Clsbal + rs1!clsBor
                          
                        If lncnt >= PageLen Then
                            pgcnt = pgcnt + 1
                            Print #a, Space(1) & String(145, "-")
                            Print #a, Chr(12)
                            
                            Call CtStk_Header_RMI(CStr(dtpDate.value), pgcnt)
                        End If
                   
                        Print #a,
                        Print #a, Space(1) + Padr(rs1("VARNAME"), 15, " ") + Space(1) + Padl(INF(open_bales, 0), 20, " ") + Space(1) + Padl(INF(Receipt_Bales, 0), 20, " ") + Space(1) + Padl(INF(Issued_Bales, 0), 20, " ") + Space(1) + Padl(INF(close_qty, 0), 20, " ")
                        lncnt = lncnt + 2
                        
                        
                        tot1 = tot1 + open_bales
                        tot2 = tot2 + Receipt_Bales
                        tot3 = tot3 + Issued_Bales
                        tot4 = tot4 + close_qty
                   End If
                   rs1.MoveNext
                   intervalMinutes = -1
              Loop
              intervalMinutes = -1
              If lncnt >= PageLen Then
                  pgcnt = pgcnt + 1
                  Print #a, Space(1) & String(145, "-")
                  Print #a, Chr(12)
                  
                  Call CtStk_Header_RMI(CStr(dtpDate.value), pgcnt)
              End If
                        
              Print #a, Space(1) & String(145, "-")
              Print #a, Space(1) + Padr("", 15, " ") + Space(1) + Padl(INF(tot1, 0), 20, " ") + Space(1) + Padl(INF(tot2, 0), 20, " ") + Space(1) + Padl(INF(tot3, 0), 20, " ") + Space(1) + Padl(INF(tot4, 0), 20, " ")
              Print #a, Space(1) & String(145, "-")
              
              lncnt = lncnt + 3
              
              Print #a,
              lncnt = lncnt + 1
         Else
              Set rptv = New ReportView
              a = FreeFile
              Close #a
              Open "d:\CtStk.txt" For Output As #a
              
              pgcnt = 1
         End If
         intervalMinutes = -1
        sql = sql + Chr(13) + "SELECT T1.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "T1.slcode,T1.slname,"
        sql = sql + Chr(13) + "ISNULL(T1.Was_Load_Alloted,0) AS Was_Load_Alloted,"
        sql = sql + Chr(13) + "ISNULL(T2.Despatch_Today,0) AS Despatch_Today,"
        sql = sql + Chr(13) + "ISNULL(T3.Despatch_UpDate,0) AS Despatch_UpDate,"
        sql = sql + Chr(13) + "isnull(T4.Balance, 0) As Balance"
        sql = sql + Chr(13) + "From"
        sql = sql + Chr(13) + "(SELECT d.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "c.slcode,c.slname,"
        sql = sql + Chr(13) + "isnull(Sum(b.AllocateBales), 0) As Was_Load_Alloted"
        sql = sql + Chr(13) + "FROM ig_rAllocationdt b,fa_slmas c,"
        sql = sql + Chr(13) + "IG_WasteGroupH d,ig_rAllocationhd e"
        sql = sql + Chr(13) + "WHERE d.DIVCODE = b.DIVCODE AND"
        sql = sql + Chr(13) + "e.Cust_code*=c.slcode AND"
        sql = sql + Chr(13) + "d.WasteGroup_TYPE = b.Waste and"
        sql = sql + Chr(13) + "b.DIVCODE = e.DIVCODE and"
        sql = sql + Chr(13) + "b.doc_no = e.doc_no and"
        sql = sql + Chr(13) + "b.date = e.doc_dt and"
        sql = sql + Chr(13) + "e.todate<='" & Format(dtpDate.value, "yyyy-mm-dd") & "' and d.Divcode='" & Divcode & "'"
        sql = sql + Chr(13) + "GROUP BY d.WasteGroup_TYPE,c.slcode,c.slname)T1,"
        sql = sql + Chr(13) + "(SELECT d.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "c.slcode,c.slname,"
        sql = sql + Chr(13) + "isnull(sum(b.epack_no-b.spack_no+1),0)/f.Loadbale AS Despatch_Today"
        sql = sql + Chr(13) + "FROM IG_WasteGroupD a,IG_RBODT b,fa_slmas c,"
        sql = sql + Chr(13) + "IG_WasteGroupH d,IG_RBOHD e,"
        sql = sql + Chr(13) + "IG_RPARAM f"
        sql = sql + Chr(13) + "WHERE d.DIVCODE = b.DIVCODE AND"
        sql = sql + Chr(13) + "e.Agent_code*=c.slcode AND"
        sql = sql + Chr(13) + "e.date = '" & Format(dtpDate.value, "yyyy-mm-dd") & "' and d.Divcode='" & Divcode & "' AND"
        sql = sql + Chr(13) + "b.divcode = e.divcode AND"
        sql = sql + Chr(13) + "b.bo_no = e.bo_no AND"
        sql = sql + Chr(13) + "b.bo_type = e.bo_type AND"
        sql = sql + Chr(13) + "a.DIVCODE = d.DIVCODE AND"
        sql = sql + Chr(13) + "a.WasteGroup_TYPE = d.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "a.Waste_Code = b.product_code AND"
        sql = sql + Chr(13) + "d.Divcode = f.Divcode"
        sql = sql + Chr(13) + "GROUP BY d.WasteGroup_TYPE,c.slcode,c.slname,f.Loadbale)T2,"
        sql = sql + Chr(13) + "(SELECT d.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "c.slcode,c.slname,"
        sql = sql + Chr(13) + "isnull(sum(b.epack_no-b.spack_no+1),0)/f.Loadbale AS Despatch_UpDate"
        sql = sql + Chr(13) + "FROM IG_WasteGroupD a,IG_RBODT b,fa_slmas c,"
        sql = sql + Chr(13) + "IG_WasteGroupH d,IG_RBOHD e,"
        sql = sql + Chr(13) + "IG_RPARAM f"
        sql = sql + Chr(13) + "WHERE d.DIVCODE = b.DIVCODE AND"
        sql = sql + Chr(13) + "e.Agent_code*=c.slcode AND"
        sql = sql + Chr(13) + "e.date <='" & Format(dtpDate.value, "yyyy-mm-dd") & "' and d.Divcode='" & Divcode & "' AND"
        sql = sql + Chr(13) + "b.divcode = e.divcode AND"
        sql = sql + Chr(13) + "b.bo_no = e.bo_no AND"
        sql = sql + Chr(13) + "b.bo_type = e.bo_type AND"
        sql = sql + Chr(13) + "a.DIVCODE = d.DIVCODE AND"
        sql = sql + Chr(13) + "a.WasteGroup_TYPE = d.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "a.Waste_Code = b.product_code AND"
        sql = sql + Chr(13) + "d.Divcode = f.Divcode"
        sql = sql + Chr(13) + "GROUP BY d.WasteGroup_TYPE,c.slcode,c.slname,f.Loadbale)T3,"
        sql = sql + Chr(13) + "(SELECT X.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "X.slcode,X.slname,"
        sql = sql + Chr(13) + "isnull(X.Was_Load_Alloted,0)-isnull(Y.Despatch_UpDate,0) AS BALANCE"
        sql = sql + Chr(13) + "From"
        sql = sql + Chr(13) + "(SELECT d.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "c.slcode,c.slname,"
        sql = sql + Chr(13) + "isnull(Sum(b.AllocateBales), 0) As Was_Load_Alloted"
        sql = sql + Chr(13) + "FROM ig_rAllocationdt b,fa_slmas c,"
        sql = sql + Chr(13) + "IG_WasteGroupH d,ig_rAllocationhd e"
        sql = sql + Chr(13) + "WHERE d.DIVCODE = b.DIVCODE AND"
        sql = sql + Chr(13) + "e.Cust_code*=c.slcode AND"
        sql = sql + Chr(13) + "d.WasteGroup_TYPE = b.Waste and"
        sql = sql + Chr(13) + "b.DIVCODE = e.DIVCODE and"
        sql = sql + Chr(13) + "b.doc_no = e.doc_no and"
        sql = sql + Chr(13) + "b.date = e.doc_dt and"
        sql = sql + Chr(13) + "e.todate<='" & Format(dtpDate.value, "yyyy-mm-dd") & "' and d.Divcode='" & Divcode & "'"
        sql = sql + Chr(13) + "GROUP BY d.WasteGroup_TYPE,c.slcode,c.slname)X,"
        sql = sql + Chr(13) + "(SELECT d.WasteGroup_TYPE,"
        sql = sql + Chr(13) + "c.slcode,c.slname,"
        sql = sql + Chr(13) + "isnull(sum(b.epack_no-b.spack_no+1),0)/f.Loadbale AS Despatch_UpDate"
        sql = sql + Chr(13) + "FROM IG_WasteGroupD a,IG_RBODT b,fa_slmas c,"
        sql = sql + Chr(13) + "IG_WasteGroupH d,IG_RBOHD e,"
        sql = sql + Chr(13) + "IG_RPARAM f"
        sql = sql + Chr(13) + "WHERE d.DIVCODE = b.DIVCODE AND"
        sql = sql + Chr(13) + "e.Agent_code*=c.slcode AND"
        sql = sql + Chr(13) + "e.date <='" & Format(dtpDate.value, "yyyy-mm-dd") & "' and d.Divcode='" & Divcode & "' AND"
        sql = sql + Chr(13) + "b.divcode = e.divcode AND"
        sql = sql + Chr(13) + "b.bo_no = e.bo_no AND"
        sql = sql + Chr(13) + "b.bo_type = e.bo_type AND"
        sql = sql + Chr(13) + "a.DIVCODE = d.DIVCODE AND"
        sql = sql + Chr(13) + "a.WasteGroup_TYPE = d.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "a.Waste_Code = b.product_code AND"
        sql = sql + Chr(13) + "d.Divcode = f.Divcode"
        sql = sql + Chr(13) + "GROUP BY d.WasteGroup_TYPE,c.slcode,c.slname,f.Loadbale)Y"
        sql = sql + Chr(13) + "WHERE X.WasteGroup_TYPE*=Y.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "X.slcode*=Y.slcode AND"
        sql = sql + Chr(13) + "X.slname*=Y.slname)T4"
        sql = sql + Chr(13) + "WHERE T1.WasteGroup_TYPE*=T2.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "T1.slcode*=T2.slcode AND"
        sql = sql + Chr(13) + "T1.slname*=T2.slname AND"
        sql = sql + Chr(13) + "T1.WasteGroup_TYPE*=T3.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "T1.slcode*=T3.slcode AND"
        sql = sql + Chr(13) + "T1.slname*=T3.slname AND"
        sql = sql + Chr(13) + "T1.WasteGroup_TYPE*=T4.WasteGroup_TYPE AND"
        sql = sql + Chr(13) + "T1.slcode*=T4.slcode AND"
        sql = sql + Chr(13) + "T1.slname*=T4.slname"
         
         Set Rs = New Recordset
         Rs.Open sql, DB, adOpenStatic, adLockReadOnly
        
         If Rs.EOF Then
'              MsgBox "No Record Found", vbInformation, head
'              Me.MousePointer = 0
'              a = FreeFile
'              Close #a
'              Exit Sub
         End If
        intervalMinutes = -1
         If Rs.EOF = False Then Call CtStk_Header(CStr(dtpDate.value), pgcnt, lncnt)
         
          Do While Not Rs.EOF
              If lncnt >= PageLen Then
                  pgcnt = pgcnt + 1
                  Print #a, Space(1) & String(145, "-")
                  Print #a, Chr(12)
                  
                  Call CtStk_Header(CStr(dtpDate.value), pgcnt, lncnt)
              End If
            
              If Int(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) = 0 Then
                   If val(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) - Int(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) > 0 Then
                        destoday = "0+1"
                   Else
                        destoday = "0"
                   End If
              ElseIf Int(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) > 0 Then
                   If val(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) - Int(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) > 0 Then
                        destoday = Int(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today"))) & "+"
                   Else
                        destoday = val(IIf(IsNull(Rs("Despatch_Today")), 0, Rs("Despatch_Today")))
                   End If
              End If
              
              If Int(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) = 0 Then
                   If val(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) - Int(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) > 0 Then
                        desuptodate = "0+1"
                   Else
                        desuptodate = "0"
                   End If
              ElseIf Int(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) > 0 Then
                   If val(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) - Int(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) > 0 Then
                        desuptodate = Int(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate"))) & "+"
                   Else
                        desuptodate = val(IIf(IsNull(Rs("Despatch_UpDate")), 0, Rs("Despatch_UpDate")))
                   End If
              End If
              
              If Int(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) = 0 Then
                   If val(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) - Int(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) > 0 Then
                        balance = "0+1"
                   Else
                        balance = "0"
                   End If
              ElseIf Int(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) > 0 Then
                   If val(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) - Int(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) > 0 Then
                        balance = Int(IIf(IsNull(Rs("Balance")), 0, Rs("Balance"))) & "+"
                   Else
                        balance = val(IIf(IsNull(Rs("Balance")), 0, Rs("Balance")))
                   End If
              End If
              
              If var = Empty Then
                  Print #a, Space(1) + Padr(Rs("WasteGroup_TYPE"), 40, " ") + Space(1) + Padr(Rs("slname"), 50, " ") + Space(1) + Padl(Rs("Was_Load_Alloted"), 15, " ") + Space(1) + Padl(destoday, 10, " ") + Space(1) + Padl(desuptodate, 10, " ") + Space(1) + Padl(balance, 15, " ")
                  lncnt = lncnt + 1
              ElseIf var <> Empty And var <> Rs("WasteGroup_TYPE") Then
                  Print #a,
                  Print #a, Space(1) + Padr(Rs("WasteGroup_TYPE"), 40, " ") + Space(1) + Padr(Rs("slname"), 50, " ") + Space(1) + Padl(Rs("Was_Load_Alloted"), 15, " ") + Space(1) + Padl(destoday, 10, " ") + Space(1) + Padl(desuptodate, 10, " ") + Space(1) + Padl(balance, 15, " ")
                  lncnt = lncnt + 2
              ElseIf var <> Empty And var = Rs("WasteGroup_TYPE") Then
                  Print #a, Space(1) + Padr("", 40, " ") + Space(1) + Padr(Rs("slname"), 50, " ") + Space(1) + Padl(Rs("Was_Load_Alloted"), 15, " ") + Space(1) + Padl(destoday, 10, " ") + Space(1) + Padl(desuptodate, 10, " ") + Space(1) + Padl(balance, 15, " ")
                  lncnt = lncnt + 1
              End If
              Rs.MoveNext
              intervalMinutes = -1
         Loop
        
        Print #a, Space(1) & String(145, "-")
        Print #a, Chr(12)
        
        Close #a
        a = FreeFile
        
        Set rptv = New ReportView
        Open "d:\CtStk.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "d:"
        Print #a, "cd\"
        Print #a, "type CtStk.txt >prn"
        Close #a
        
        Set rptv = New ReportView
        rptv.txtfile = "d:\CtStk.txt"
        rptv.Batfile = "d:\CtStk.bat"
        intervalMinutes = -1
    ElseIf Repindex = 2 Then
       ' commented on 2018-09-24
       'Call Customized_Ageing_Countwise(dtpDate.value, UserFooter1.SelectedStr)
        Call Customized_Ageingwise_NewReport(dtpDate.value, UserFooter1.SelectedStr, val(Text1.Text), val(Text2.Text), val(Text3.Text), val(Text4.Text), val(Text5.Text))
        intervalMinutes = -1
    ElseIf Repindex = 4 Then
        Call Customized_Ageing_Movement(dtpDate.value, DTPicker1.value, UserFooter1.SelectedStr)
        intervalMinutes = -1
    ElseIf Repindex = 325 Then
    If DataCombo1.Text = "" Then
        MsgBox "Please Select Lot No.", vbInformation, head
        Exit Sub
    End If
    sLotno = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    slotdate = Right(DataCombo1.Text, 10)
    
        Set rslot1 = New Recordset
        rslot1.Open "SELECT  billno,billdt,lotno,lotdt,add1,add2,add3,city,pin,plotno,arrno,arrdt,pnetwt FROM FA_SLMAS a INNER JOIN RM_LOT b ON b.SUPCD = a.slcode where  b.LOTNO=" & val(sLotno) & " and  b.lotdt='" & Format(slotdate, "yyyy/MM/DD") & "'", DB, adOpenStatic
        If rslot1.EOF = True Then
            Screen.MousePointer = 0
            Exit Sub
        End If
        Set rptv = New ReportView
        a = FreeFile
        Close
        Open "d:\RMICottonReturn.txt" For Output As #a
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(68) & Padr("DATE:", 5, " ") & Space(2) & Padr(Format(pdate, "dd-MM-yy"), 10, " ")
            Print #a,
            Print #a, Space(10) & Padr(rslot1("Add1"), 50, " ")
            Print #a, Space(10) & Padr(rslot1("Add2"), 50, " ")
            If IsNull(rslot1("Add3")) Then
                lotAddress = rslot1("City") & " - " & rslot1("pin")
            Else
                lotAddress = rslot1("Add3") & ", " & rslot1("City") & " - " & rslot1("pin")
            End If
            Print #a,
            Print #a,
            Print #a, Space(10) & "Sir,"
            Print #a, Space(10) & "sub : Returning of FP Cotton bales-Your Pro.Inv No." & rslot1("BillNo")
            Print #a, Space(10) & "Dated"; " " & Format(rslot1("BillDt"), "dd-MM-yy") & " " & "Respectively-Reg."
            Print #a,
            Print #a, Space(10) & "As per our Head Office instruction,We are to-day"
            Print #a, Space(10) & "Returning the following FP Cotton bales to you"
            Print #a, Space(10) & "As rejected one."
            Print #a,
            Set rslot2 = New Recordset
            rslot2.Open "SELECT COUNT(*) as bales,SUM(netwt) as netwt,rb.VARCODE,rb.LOTNO FROM RM_BALE rb WHERE rb.DIVCODE='" & Divcode & "' AND rb.LOTNO='" & sLotno & "' AND rb.ISQTY IS NULL AND  rb.Rejflg='Y' GROUP BY varcode,lotno", DB, adOpenStatic, adLockBatchOptimistic
            Set rslot3 = New Recordset
            rslot3.Open "SELECT ra.LORRYNOS,ra.FullTruckWgt, ra.EmptyTruckWgt, ra.TAREWT, ra.NETWT FROM RM_ARRIVAL ra WHERE ra.ARRNO='" & sLotno & "' AND ra.DIVCODE='" & Divcode & "' AND ra.ARRDATE='" & Format(rslot1("arrdt"), "yyyy/MM/DD") & "'", DB, adOpenStatic, adLockBatchOptimistic
            If rslot2.EOF = False Then
                Print #a, Space(20) & "Variety             :" & Space(3) & rslot2("varcode")
                Print #a, Space(20) & "No of Bales         :" & Space(3) & rslot2("bales")
                Print #a, Space(20) & "Bill No & date      :" & Space(3) & rslot1("BillNo"); " & " & Format(rslot1("BillDt"), "dd-MM-yy")
                Print #a, Space(20) & "Mill Lot No.        :" & Space(3) & rslot1("lotno")
                Print #a, Space(20) & "Party Lot No.       :" & Space(3) & rslot1("plotno")
                Print #a, Space(20) & "Lorry No.           :" & Space(3) & rslot3("LORRYNOS")
                Print #a, Space(20) & "Form JJ No.         :" & Space(3) & txt_jjno.Text
                Print #a,
            End If
            Print #a, Space(10) & "Please acknowledge the receipt of the above cotton bales."
            If rslot3.EOF = False Then
                Print #a,
                Print #a, Space(20) & "Bales Weight:"
                Print #a, Space(20) & "-------------"
                Print #a, Space(20) & "Supplier Net Weight :" & Space(3) & rslot1("pnetwt") & " " & "Kgs received Wt."
                Print #a,
                Print #a, Space(20) & "Gross Weight        :" & Space(3) & rslot3("FullTruckWgt") & " " & "Kgs"
                Print #a, Space(20) & "Empty Weight        :" & Space(3) & rslot3("EmptyTruckWgt") & " " & "Kgs"
                Print #a, Space(20) & "Tare Weight         :" & Space(5) & rslot3("TAREWT") & " " & "Kgs"
                Print #a, Space(20) & "Net Weight          :" & Space(3) & rslot3("NETWT") & " " & "Kgs"
                Print #a, Space(20) & "Shortages           :" & Space(3) & Padl(INF(rslot1("pnetwt") - rslot3("NETWT"), 0), 5, " ") & " " & "Kgs"
            End If
            Print #a,
            Print #a,
            Print #a,
            Call footermod(CStr(a), UserFooter1.SelectedStr, 85)
            Print #a, Chr(18) & Chr(12)
        Close #a
        a = FreeFile
        
        Set rptv = New ReportView
        Open "d:\RMICottonReturn.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "d:"
        Print #a, "cd\"
        Print #a, "type RMICottonReturn.txt >prn"
        Close #a
        Set rptv = New ReportView
        rptv.txtfile = "d:\RMICottonReturn.txt"
        rptv.Batfile = "d:\RMICottonReturn.bat"
        Screen.MousePointer = 0
    
    intervalMinutes = -1
    
    ElseIf Repindex = 326 Then
        If DataCombo1.Text = "" Then
            MsgBox "Please Select Lot No.", vbInformation, head
            Exit Sub
        End If
        sLotno = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
        slotdate = Right(DataCombo1.Text, 10)
    
        Set rslotlet1 = New Recordset
        rslotlet1.Open "SELECT  billno,billdt,b.lotno,b.lotdt,add1,add2,add3,city,pin,b.plotno,b.arrno,b.arrdt,pnetwt,c.LORRYNOS FROM FA_SLMAS a INNER JOIN RM_LOT b ON b.SUPCD = a.slcode INNER JOIN RM_ARRIVAL c ON b.arrno=c.ARRNO AND b.arrdt=c.ARRDATE where  b.LOTNO=" & val(sLotno) & " and  b.lotdt='" & Format(slotdate, "yyyy/MM/DD") & "'", DB, adOpenStatic
         Set rslotlet2 = New Recordset
            rslotlet2.Open "SELECT COUNT(*) as bales,SUM(netwt) as netwt,rb.VARCODE,rb.LOTNO FROM RM_BALE rb WHERE rb.DIVCODE='" & Divcode & "' AND rb.LOTNO='" & sLotno & "' AND rb.ISQTY IS NULL AND  rb.Rejflg='Y' GROUP BY varcode,lotno", DB, adOpenStatic, adLockBatchOptimistic
        If rslotlet1.EOF = True Then
            Exit Sub
        End If
        Set rptv = New ReportView
        a = FreeFile
        Close
        Open "d:\RMICottonReturnLetter.txt" For Output As #a
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(68) & Padr("DATE:", 5, " ") & Space(2) & Padr(Format(pdate, "dd-MM-yy"), 10, " ")
            Print #a,
            Print #a, CENTRE("TO WHOMSOEVER IT MAY CONCERN", 85, " ")
            Print #a, CENTRE("----------------------------", 85, " ")
            Print #a,
            Print #a,
            Print #a, Space(10); "We are today returning the following FP cotton bales due to"
            Print #a, Space(10); "inferior quality to"
            Print #a,
            Print #a, Space(10) & Padr("M/S. " & rslotlet1("Add1"), 50, " ")
            Print #a, Space(10) & Padr(rslotlet1("Add2"), 50, " ")
            If IsNull(rslotlet1("Add3")) Then
                lotAddress = rslotlet1("City") & " - " & rslotlet1("pin")
            Else
                lotAddress = rslotlet1("Add3") & ", " & rslotlet1("City") & " - " & rslotlet1("pin")
            End If
            Print #a,
            Print #a, Space(10) & "THROUGH LORRY NO.   :" & Space(3) & rslotlet1("lorrynos")
            Print #a,
            Print #a, Space(10) & "OUR LOT NO.         :" & Space(3) & rslotlet1("lotno")
            Print #a, Space(10) & "SUPPLIER LOT NO.    :" & Space(3) & rslotlet1("plotno")
            If rslotlet2.EOF = False Then
            Print #a, Space(10) & "NO OF BALES         :" & Space(3) & rslotlet2("bales")
            Print #a, Space(10) & "VARIETY             :" & Space(3) & rslotlet2("VARCODE")
            Print #a, Space(10) & "WEIGHT IN KGS       :" & Space(3) & rslotlet2("netwt") & "Kgs"
            Print #a, Space(10) & "FORM JJ NO.         :" & Space(3) & txt_jjno.Text
            Print #a,
            End If
            Print #a, Space(10) & "In this regard, We declare that there is no sale"
            Print #a, Space(10) & "Involved in this transaction."
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(30) & Padl("FOR " & divname, 55, " ")
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(50) & Padl("GENERAL MANAGER", 35, " ")
            Print #a, Chr(18) & Chr(12)
        Close #a
        a = FreeFile
        
        Set rptv = New ReportView
        Open "d:\RMICottonReturnLetter.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "d:"
        Print #a, "cd\"
        Print #a, "type RMICottonReturnLetter.txt >prn"
        Close #a
        Set rptv = New ReportView
        rptv.txtfile = "d:\RMICottonReturnLetter.txt"
        rptv.Batfile = "d:\RMICottonReturnLetter.bat"
        Screen.MousePointer = 0
    ElseIf Repindex = 327 Then
        If DataCombo1.Text = "" Then
            MsgBox "Please Select Order No.", vbInformation, head
            Exit Sub
        End If
        sconntno = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
        Varcode = StrReverse(Mid$(StrReverse(DataCombo1.Text), 1, InStr(StrReverse(DataCombo1.Text), " - ") - 1))
        fstr = InStr(DataCombo1.Text, " - ")
        sContDATE = Mid$(DataCombo1.Text, fstr + 3, 10)
        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rm_OrderConfirmation.rpt"
        FrmRpt.RptHead = 5
        parameter1 = CStr(Format(yfdate, "yyyy") & "-" & Format(yldate, "yy"))
        parameter2 = Divcode
        parameter3 = sconntno
        parameter4 = Format(sContDATE, "yyyy-mm-dd")
        parameter5 = Varcode
        FrmRpt.Show
        
    ElseIf Repindex = 3 Then
        Dim I As Integer
        sArrivalNo = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
        sArrivalDate = Right(DataCombo1.Text, 10)
        
        
        strQry = ""
        strQry = strQry & Chr(13) & " SELECT a.Arrno,a.ARRDATE,isnull(a.Quantity,0) RecQty,isnull(a.REJQTY,0) AS RejQty,"
        strQry = strQry & Chr(13) & " a.LORRYNOS,c.slname,d.STATION FROM RM_Arrival A,FA_slmas C,Rm_Area d WHERE a.supcd=c.slcode "
        strQry = strQry & Chr(13) & " AND a.AREACODE=d.AREACODE and arrdate Between '" & Format(yfdate, "YYYY/MM/DD") & "'"
        strQry = strQry & Chr(13) & " AND '" & Format(yldate, "YYYY/MM/DD") & "' AND DIVCODE='" & Divcode & "' AND a.ARRNO =" & val(sArrivalNo) & " AND ARRDATE='" & Format(sArrivalDate, "yyyy/MM/DD") & "'"
        Set Rs = New Recordset
        Rs.Open strQry, DB, adOpenStatic
        If Rs.EOF = True Then
            MsgBox "No Records Found", vbInformation, head
            Exit Sub
        End If
        
        Set rs1 = New Recordset
        rs1.Open "SELECT DIVNAME,ADD1,ADD2,ADD3,CITY,PINCODE FROM PP_DIVMAS where Divcode= '" & Divcode & "'", DB, adOpenStatic
        
        If rs1.EOF = True Then
            Exit Sub
        End If
        
        Set rptv = New ReportView
        a = FreeFile
        Close
        Open "d:\RMIVechile.txt" For Output As #a
        
        If IsNull(rs1("Add3")) Then
            sAddress = rs1("City") & " - " & rs1("pincode")
        Else
            sAddress = rs1("Add3") & ", " & rs1("City") & " - " & rs1("pincode")
        End If
'        Print #a,

        For I = 1 To 2
            Print #a, Chr(18) & Space(5) & String(85, "-")
            Print #a, Space(5) & Chr(27) & "E" & Padr(rs1("Divname"), 50, " ") & Space(2) & Padr("SL. NO.  :", 10, " ") & Space(2) & Padr(Rs("Arrno"), 25, " ") & Chr(27) & "F"
            Print #a, Space(5) & Padr(rs1("ADD1") & ", " & rs1("add2"), 50, " ") & Space(2) & Chr(27) & "E" & Padr("DATE     :", 10, " ") & Space(2) & Padr(Format(Rs("Arrdate"), "dd/MM/yy"), 25, " ") & Chr(27) & "F"
            Print #a, Space(5) & Padr(sAddress, 50, " ")
            Print #a, Space(5) & String(50, "-") & Space(2) & Chr(27) & "E" & Padr("RAW MATERIAL VECHILE OUT PASS", 37, " ") & Chr(27) & "F"
            Print #a, Space(5) & Padr("TO", 50, " ")
            Print #a, Space(5) & Padr("The Security", 50, " ") & Space(2) & Padr("IN TIME  :", 10, " ") & Space(6) & Padr("OUT TIME :", 10, " ")
            Print #a, Space(5) & String(85, "-")
            Print #a, Space(5) & Chr(27) & "E" & Padr("DESCRIPTION", 50, " ") & Space(2) & Padl("QTY", 10, " ") & Chr(27) & "F"
            Print #a, Space(5) & String(85, "-")
            Print #a,
            Print #a,
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & Padr("RAW MATERIAL", 50, " ") & Space(2) & Padl(INF(Rs("RecQty"), 0), 10, " ") & Chr(27) & "F"
            Print #a, Space(5) & Chr(27) & "E" & Padr("COTTON BALES", 50, " ") & Space(2) & Padl(INF(0, 0), 10, " ") & Chr(27) & "F"
            Print #a,
    '        Print #a,
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & Padr("Supplier Name", 25, " ") & ":" & Chr(27) & "F" & Space(2) & Padr(Rs("Slname"), 50, " ")
            Print #a,
            Print #a, Space(5) & Chr(27) & "E" & Padr("No. Of Bales Received", 25, " ") & ":" & Chr(27) & "F" & Space(2) & Padl(INF(Rs("RecQty"), 0), 5, " ")
            Print #a, Space(5) & Chr(27) & "E" & Padr("No. of Bales Unloaded", 25, " ") & ":" & Chr(27) & "F" & Space(2) & Padl(INF(Rs("Recqty") - Rs("Rejqty"), 0), 5, " ")
            Print #a, Space(5) & Chr(27) & "E" & Padr("Lorry Returned Status", 25, " ") & ":" & Chr(27) & "F" & Space(2) & Padr("EMPTY", 5, " ")
            Print #a, Space(5) & Chr(27) & "E" & Padr("Remarks", 25, " ") & ":" & Chr(27) & "F" & Space(2) & Padr("NIL", 5, " ")
            Print #a,
            Print #a,
    '        Print #a,
            Print #a,
            Print #a, Space(5) & String(85, "=")
            Print #a, Space(5) & Chr(27) & "E" & Padr("Received From  : ", 17, " ") & Chr(27) & "F" & Space(1) & Padr(Rs("Station"), 25, " ")
            Print #a, Space(5) & Chr(27) & "E" & Padr("Lorry No.      : ", 17, " ") & Chr(27) & "F" & Space(1) & Padr(Rs("lorrynos"), 15, " ") & Space(1) & Padr("Container No. :", 17, " ")
            Print #a,
            Print #a, Space(65) & Chr(27) & "E" & Padr("Authorised Signatory", 20, " ") & Chr(27) & "F"
            Print #a, Space(5) & String(85, "-")
            Print #a,
            Print #a,
            Print #a,
            Print #a,
        Next
        
'        Print #a, Chr(12)
        Close #a
        
        a = FreeFile
        
        Set rptv = New ReportView
        Open "d:\RMIVechile.bat" For Output As #a
        Print #a, "cd\"
        Print #a, "d:"
        Print #a, "cd\"
        Print #a, "type RMIVechile.txt >prn"
        Close #a
        Set rptv = New ReportView
        rptv.txtfile = "d:\RMIVechile.txt"
        rptv.Batfile = "d:\RMIVechile.bat"
        Screen.MousePointer = 0
    End If
    Screen.MousePointer = 0
    intervalMinutes = -1
Exit Sub

cmdReport_Click:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : cmdReport_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmCtStkRMIWs"
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
intervalMinutes = -1
Select Case Repindex
Case 2
       'Set rs = New Recordset
   ' rs.Open "exec  KSP_RMIAGEING_MIS  '" & Divcode & "' ,'" & Format(dtpDate, "yyyy-MM-dd") & "'," & val(Trim(Text1.Text)) & "," & val(Trim(Text2.Text)) & "," & val(Trim(Text3.Text)) & "," & val(Trim(Text4.Text)) & "," & val(Trim(Text5.Text)) & "", DB, adOpenKeyset, adLockReadOnly
        
        If Text1.Text = "" Then
            MsgBox " aging 1 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text2.Text = "" Then
            MsgBox " aging 2 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text3.Text = "" Then
            MsgBox " aging 3 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text4.Text = "" Then
            MsgBox " aging 4 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text5.Text = "" Then
            MsgBox " aging 5 cannot be empty", vbInformation
            Exit Sub
        End If
        
        
        Dim clsCryRpt1 As New clsCrystal
        'Set clsCryRpt1.cryRept = Cry_StockAgeing
        
        Set clsCryRpt1.cryRept = Cry_stockageing_new 'Cry_StockAgeing240217
        clsCryRpt1.CrystalPrint
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        CrystalReport1.ReportTitle = "Stock Ageing as on  " & Format(dtpDate, "dd-MM-yy")
        CrystalReport1.ParameterFields(0) = "@divcode; " & Divcode
        CrystalReport1.ParameterFields(1) = "@yfdate; " & Format(yfdate, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(2) = "@yldate; " & Format(yldate, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(3) = "@tdate; " & Format(dtpDate, "yyyy-MM-dd")
        CrystalReport1.ParameterFields(4) = "@age1; " & val(Trim(Text1.Text))
        CrystalReport1.ParameterFields(5) = "@age2; " & val(Trim(Text2.Text))
        CrystalReport1.ParameterFields(6) = "@age3; " & val(Trim(Text3.Text))
        CrystalReport1.ParameterFields(7) = "@age4; " & val(Trim(Text4.Text))
        CrystalReport1.ParameterFields(8) = "@age5; " & val(Trim(Text5.Text))

        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1

Case 3
        Dim clsCryRpt As New clsCrystal
        Set clsCryRpt.cryRept = Rawmaterialvechileoutpass
        clsCryRpt.CrystalPrint
        
        CrystalReport1.Reset
        CrystalReport1.Connect = connectstring
        CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"

        sArrivalNo = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
        sArrivalDate = Right(DataCombo1.Text, 10)
        
        CrystalReport1.SelectionFormula = "{RM_ARRIVAL.ARRNO}=" & sArrivalNo & " and {RM_ARRIVAL.ARRDATE}=date('" & Format(sArrivalDate, "yyyy-mm-dd") & "') and {RM_ARRIVAL.DIVCODE}='" & Divcode & "'"
       
        CrystalReport1.WindowShowPrintSetupBtn = True
        CrystalReport1.WindowShowSearchBtn = True
        CrystalReport1.WindowState = crptMaximized
        SendKeys "{ENTER}"
        CrystalReport1.Action = 1
        CrystalReport1.PrinterCopies = 1


    'sArrivalNo = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    'sArrivalDate = Right(DataCombo1.Text, 10)
    'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rawmaterialvechileoutpass.rpt"
    'FrmRpt.RptHead = 0
    'selectformula = "{RM_ARRIVAL.ARRNO}=" & sArrivalNo & " and {RM_ARRIVAL.ARRDATE}=date('" & Format(sArrivalDate, "yyyy-mm-dd") & "') and {RM_ARRIVAL.DIVCODE}='" & Divcode & "'"
    'Screen.MousePointer = 0
    'FrmRpt.Show
    Screen.MousePointer = 0
    'selectformula = ""
End Select
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form frmCtStkRMIWs"
End Sub

Private Sub Command2_Click()
intervalMinutes = -1
    tmpFile = "Stock Aging Report"
        tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
        
        'Create the Excel Application Object.
        '11.05.15
        Set Myxl = New Excel.Application
       ' Set Myxl = New ET.Application
        
        'Create new Excel Workbook
        Set XLBook = Myxl.Workbooks.ADD
        Set XLSheet = XLBook.Worksheets(1)
        Myxl.Worksheets(1).Name = "ArrivalDatewise"
        If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
            ExcelConvertPallavaa
        Else
            ExcelConvert
        End If
intervalMinutes = -1
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring

    If Repindex = 1 Or Repindex = 2 Or Repindex = 4 Then
        dtpDate.Visible = True
        Label2.Caption = "As on Date"
        dtpDate.maxdate = pdate
        dtpDate.value = pdate
        
        If Repindex = 1 Then
            lblTitle.Caption = "Raw Material Stock"
            Me.Caption = "Raw Material Stock"
        ElseIf Repindex = 2 Then
            lblTitle.Caption = "Raw Material Agewise Stock"
            Me.Caption = "Raw Material Agewise Stock"
             Command1.Visible = True
             Text1.Text = "60"
             Text2.Text = "180"
             Text3.Text = "270"
             Text4.Text = "365"
             Text5.Text = "366"
             cmdReport.Visible = False
             Command2.Left = cmdReport.Left
             If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "VSM" Then
                Framediv.Visible = True
                Call load_DivisionChkListbox
             Else
                Framediv.Visible = False
             End If
             
             
        ElseIf Repindex = 4 Then
            lblTitle.Caption = "Raw Material Agewise Stock Movement"
            Me.Caption = "Raw Material Agewise Stock Movement"
            Label1.Visible = True
            DTPicker1.Visible = True
            Label2.Caption = "From Date"
            dtpDate.value = fnmfdate(pdate)
            DTPicker1.value = pdate
        End If
        DataCombo1.Visible = False
    ElseIf Repindex = 3 Then
        Me.Caption = "Raw Material Vehicle Out Pass"
        lblTitle.Caption = "Raw Material Vehicle Out Pass"
        Label2.Caption = "Arrival No."
        dtpDate.Visible = False
        Command1.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT cast(Arrno as varchar)+' - '+ convert(varchar,Arrdate,103) as plotno from rm_Arrival a where a.DIVCODE ='" & Divcode & "' and a.arrdate between '" & Format(yfdate, "yyyy/MM/dd") & "' and '" & Format(yldate, "yyyy/MM/dd") & "'", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set DataCombo1.RowSource = rstLoad
            DataCombo1.ListField = "pLotNo"
            rstLoad.MoveFirst
            DataCombo1.Text = rstLoad!PlotNo
        End If
     ElseIf Repindex = 325 Then
        Me.Caption = "Raw Material Return"
        lblTitle.Caption = "Raw Material Return"
        Label2.Caption = "Lot No."
        dtpDate.Visible = False
        lbl_jjno.Visible = True
        txt_jjno.Visible = True
        
        Set rstLot = New Recordset
        rstLot.Open "SELECT DISTINCT  cast(lotno AS VARCHAR)+' - '+CONVERT(VARCHAR,lotdt,103) AS lotno FROM rm_bale a where a.DIVCODE ='" & Divcode & "' and a.rejdt between '" & Format(yfdate, "yyyy/MM/dd") & "' and '" & Format(yldate, "yyyy/MM/dd") & "' AND isnull(REJFLG,'N')='Y' order by lotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLot.EOF Then
            Set DataCombo1.RowSource = rstLot
            DataCombo1.ListField = "lotno"
            rstLot.MoveFirst
            DataCombo1.Text = rstLot!lotno
        Else
            Set DataCombo1.RowSource = Nothing
            DataCombo1.Text = ""
        End If
      ElseIf Repindex = 326 Then
        Me.Caption = "Raw Material Return Letter"
        lblTitle.Caption = "Raw Material Return Letter"
        Label2.Caption = "Lot No."
        dtpDate.Visible = False
        lbl_jjno.Visible = True
        txt_jjno.Visible = True
        
        Set rstLot = New Recordset
        rstLot.Open "SELECT DISTINCT  cast(lotno AS VARCHAR)+' - '+CONVERT(VARCHAR,lotdt,103) AS lotno FROM rm_bale a where a.DIVCODE ='" & Divcode & "' and a.rejdt between '" & Format(yfdate, "yyyy/MM/dd") & "' and '" & Format(yldate, "yyyy/MM/dd") & "' AND isnull(REJFLG,'N')='Y' order by lotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLot.EOF Then
            Set DataCombo1.RowSource = rstLot
            DataCombo1.ListField = "lotno"
            rstLot.MoveFirst
            DataCombo1.Text = rstLot!lotno
        Else
            Set DataCombo1.RowSource = Nothing
            DataCombo1.Text = ""
        End If
    ElseIf Repindex = 327 Then
        Me.Caption = "Order Confirmation Report"
        lblTitle.Caption = "Order Confirmation Report"
        Label2.Caption = "Order No."
        dtpDate.Visible = False
        
        Set rstLot = New Recordset
        rstLot.Open "SELECT DISTINCT cast(contno AS VARCHAR)+' - '+CONVERT(VARCHAR,contdt,103)+' - '+cast(varcode AS VARCHAR) AS contno FROM rm_cont a where a.DIVCODE ='" & Divcode & "' and a.contdt between '" & Format(yfdate, "yyyy/MM/dd") & "' and '" & Format(yldate, "yyyy/MM/dd") & "' order by contno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLot.EOF Then
            Set DataCombo1.RowSource = rstLot
            DataCombo1.ListField = "contno"
            rstLot.MoveFirst
            DataCombo1.Text = rstLot!ContNo
        End If
     ElseIf Repindex = 5 Then
        Me.Caption = "Raw Material Passing Report"
        lblTitle.Caption = "Raw Material Passing Report"
        Label2.Caption = "From Lot No."
        dtpDate.Visible = False
        Label1.Caption = "To Lot No."
        Label1.Visible = True
        DataCombo2.Visible = True
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT lotno as plotno from rm_lot a where lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and a.DIVCODE ='" & Divcode & "' and lotyear='" & Year(yfdate) & "' Order by Lotno", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set DataCombo1.RowSource = rstLoad
            DataCombo1.ListField = "pLotNo"
            rstLoad.MoveFirst
            DataCombo1.Text = rstLoad!PlotNo
            Set DataCombo2.RowSource = rstLoad
            DataCombo2.ListField = "pLotNo"
            rstLoad.MoveLast
            DataCombo2.Text = rstLoad!PlotNo
        End If
    ElseIf Repindex = 6 Then
        Me.Caption = "Raw Material Arrival Report"
        lblTitle.Caption = "Raw Material Arrival Report"
        Label2.Caption = "From Arrival No."
        dtpDate.Visible = False
        Label1.Caption = "To Arrival No."
        Label1.Visible = True
        DataCombo2.Visible = True
        
        Frame1.Height = 2160
        SSTab1.Height = 2300
'        Frame24.Visible = True
        optBannari.value = True
        
        Set rstLoad = New Recordset
        rstLoad.Open "select DISTINCT ARRNO as plotno from rm_lot a where lotdt between '" & Format(yfdate, "yyyy-MM-dd") & "' and '" & Format(yldate, "yyyy-MM-dd") & "' and a.DIVCODE ='" & Divcode & "' and lotyear='" & Year(yfdate) & "' Order by ARRNO", DB, adOpenStatic, adLockBatchOptimistic
        If Not rstLoad.EOF Then
            Set DataCombo1.RowSource = rstLoad
            DataCombo1.ListField = "pLotNo"
            rstLoad.MoveFirst
            DataCombo1.Text = rstLoad!PlotNo
            Set DataCombo2.RowSource = rstLoad
            DataCombo2.ListField = "pLotNo"
            rstLoad.MoveLast
            DataCombo2.Text = rstLoad!PlotNo
        End If
         
    End If
    intervalMinutes = -1
End Sub

Private Sub CtStk_Header(U As String, pgcnt As Integer, lncnt As Integer)
intervalMinutes = -1
On Error GoTo CtStk_Header

     If lncnt >= PageLen - 8 Then
          lncnt = lncnt + 8
          
          Print #a, Space(1) & String(145, "-")
          Print #a, Chr(12)
     End If
     Print #a, Chr(18)
     Print #a, Space(1) + Chr(27) + "E" + CENTRE(divname, 90, " ") + Chr(27) + "F"
     Print #a, Chr(15)
     Print #a, Space(1) + "Cotton Stock As On " & Format(U, "dd/mm/yy") & Space(100) & Format(pdate, "dd/mm/yy") & Space(1) & "Pg.No " & Padl(pgcnt, 3, " ")
     Print #a, Space(1) + String(145, "-")
     Print #a, Space(1) + Padr("VARIETY", 40, " ") + Space(1) + Padr("PARTY", 50, " ") + Space(1) + Padl("WASTE LOAD", 15, " ") + Space(1) + Padl("<--DESPATCHED LOAD-->", 21, " ") + Space(1) + Padl("BALANCE TO BE", 15, " ")
     Print #a, Space(1) + Padr("", 40, " ") + Space(1) + Padr("", 50, " ") + Space(1) + Padl("ALLOTTED", 15, " ") + Space(1) + Padl("TODAY", 10, " ") + Space(1) + Padl("TODATE", 10, " ") + Space(1) + Padl("DESPATCHED", 15, " ")
     Print #a, Space(1) + String(145, "-")
     lncnt = 8

Exit Sub

CtStk_Header:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : CtStk_Header " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13) & " Form name: frmCtStkRMIWs"
End Sub

Private Sub CtStk_Header_RMI(U As String, pgcnt As Integer)
On Error GoTo CtStk_Header_RMI_Error

    Print #a, Chr(18)
    Print #a, Space(1) + Chr(27) + "E" + CENTRE(divname, 90, " ") + Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(1) + "Cotton Stock As On " & Format(U, "dd/mm/yy") & Space(100) & Format(pdate, "dd/mm/yy") & Space(1) & "Pg.No " & Padl(pgcnt, 3, " ")
    Print #a, Space(1) + String(145, "-")
    Print #a, Space(1) + Padr("VARIETY", 15, " ") + Space(1) + Padl("Opening", 20, " ") + Space(1) + Padl("Receipts", 20, " ") + Space(1) + Padl("Issues", 20, " ") + Space(1) + Padl("Closing", 20, " ")
    Print #a, Space(1) + String(145, "-")
    lncnt = 7

Exit Sub
CtStk_Header_RMI_Error:
     MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CtStk_Header_RMI of Form frmCtStkRMIWs", vbInformation, head
    Exit Sub
End Sub

Private Sub Form_MouseDown(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_MouseUp(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form rmireports", vbInformation, head
Screen.MousePointer = 0
    
End Sub

Private Sub Option4_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option4_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
    End If
End If

Exit Sub
Option4_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Option5_KeyDown_Error

If KeyCode = vbKeyEscape Then
    If Frame5.Visible = True Then
        UserFooter1.Visible = False
        Frame5.Visible = False
        SSTab1.Enabled = True
        End If
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form rmireports", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub ExcelConvert()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
co = 0
intervalMinutes = -1
CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
        Set XLSheet = Myxl.ActiveSheet
    'Else
      '  Set XLSheet = Myxl
    'End If
    
'     If Trim(DataCombo1.Text) <> Empty Then
'            Dc1 = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
'            Dc2 = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
'            c = Repindex
'      Else
'            MsgBox "Enter a Valid Date", vbInformation, head
'      End If
'
'
'        If Option1.value = True Then
'           g = 1
'        ElseIf Option2.value = True Then
'           g = 2
'        Else
'           g = 3
'        End If
           If Text1.Text = "" Then
            MsgBox " aging 1 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text2.Text = "" Then
            MsgBox " aging 2 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text3.Text = "" Then
            MsgBox " aging 3 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text4.Text = "" Then
            MsgBox " aging 4 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text5.Text = "" Then
            MsgBox " aging 5 cannot be empty", vbInformation
            Exit Sub
        End If
       DB.Execute "delete from TMP_RMIAgeing"
        Set rs1 = New Recordset
      ' RS1.Open "exec  KSP_RMIAGEING_MIS  '" & Divcode & "' ,'" & Format(dtpDate, "yyyy-MM-dd") & "'", DB, adOpenKeyset, adLockReadOnly
      'excel
'        If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
'
'
'               L_God = ""
'             L_aread_God = ""
'             divcount = 0
'
'                   For I = 1 To List_div.ListItems.Count
'
'                        If List_div.ListItems.Item(I).Checked = True Then
'                            sRecCount = Trim(List_div.ListItems(I).SubItems(1))
'                            If L_God <> "" Then
'                                L_God = L_God + "," + "" + Trim(sRecCount) + ""
'                                 L_aread_God = L_aread_God + "," + "" + Trim(sRecCount) + ""
'                                 divcount = divcount + 1
'                            Else
'                                L_God = "" + Trim(sRecCount) + ""
'                                L_aread_God = "" + Trim(sRecCount) + ""
'                                divcount = divcount + 1
'                            End If
'                        End If
'                    Next
'
'
'
'
'                If L_God = "" Then
'                    MsgBox "Please Select Any Division ", vbInformation, head
'                    Exit Sub
'                Else
'                    If divcount > 1 Then
'                    L_God = "'" + L_God + "'"
'                    End If
'                End If
'
'
'
'
'            rs1.Open "insert into TMP_RMIAgeing  exec ksp_stockageing  '" & Divcode & "' ,'" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Format(dtpDate, "yyyy-MM-dd") & "'," & val(Trim(Text1.Text)) & "," & val(Trim(Text2.Text)) & "," & val(Trim(Text3.Text)) & "," & val(Trim(Text4.Text)) & "," & val(Trim(Text5.Text)) & "", DB, adOpenKeyset, adLockReadOnly
'        Else
            rs1.Open "insert into TMP_RMIAgeing  exec ksp_stockageing  '" & Divcode & "' ,'" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Format(dtpDate, "yyyy-MM-dd") & "'," & val(Trim(Text1.Text)) & "," & val(Trim(Text2.Text)) & "," & val(Trim(Text3.Text)) & "," & val(Trim(Text4.Text)) & "," & val(Trim(Text5.Text)) & "", DB, adOpenKeyset, adLockReadOnly
 '       End If
        
        Dim FSort As String
        Dim TSort As String

        fd = Format(DataCombo1.Text, "yyyy-mm-dd")
        td = Format(DataCombo2.Text, "yyyy-mm-dd")
         
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        
       
        XLSheet.Cells(1, 5).value = rsnew(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
     
        End With
        


        XLSheet.Cells(5, 5).value = " STOCK AGEING AS ON - LIST ON - " & Format(dtpDate, "DD/MM/YY")

        XLSheet.Range("A5", "M5").MergeCells = True
        With XLSheet.Range("A5", "M5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
          
          Title1 = "<-- 1 - " & val(Text1.Text) & "  days -- > "
          Title2 = "<-- " & val(Text1.Text) & "-" & val(Text2.Text) & "  days -- > "
          Title3 = "<-- " & val(Text2.Text) & "-" & val(Text3.Text) & "  days -- > "
          Title4 = "<-- " & val(Text3.Text) & "-" & val(Text4.Text) & "  days -- > "
          Title5 = "<-- Above  " & val(Text4.Text) & "  days -- > "
          
          XLSheet.Cells(7, 2).value = Title1    '" <-- 1 Months to 2 Months --> "
            XLSheet.Range("B7", "D7").MergeCells = True
              With XLSheet.Range("B7", "D7").Font
             .Bold = True
             .Size = 9
             .Color = vbBlue
            End With
         XLSheet.Cells(7, 5).value = Title2 '" <--2 Months to 6 Months-- > "
         XLSheet.Range("E7", "G7").MergeCells = True
           With XLSheet.Range("E7", "G7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 8).value = Title3 '" <--6 Months to 9 Months--> "
         XLSheet.Range("H7", "J7").MergeCells = True
           With XLSheet.Range("H7", "J7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 11).value = Title4 ' " <--9 Months to 12 Months-- > "
         XLSheet.Range("K7", "M7").MergeCells = True
           With XLSheet.Range("K7", "M7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 14).value = Title5 '" <--More than 12 Months--> "
         XLSheet.Range("N7", "P7").MergeCells = True
           With XLSheet.Range("N7", "P7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 17).value = " <-------   Total  -------- >"
         XLSheet.Range("Q7", "S7").MergeCells = True
           With XLSheet.Range("Q7", "S7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With
              
        U = Format(DataCombo1.Text, "yyyy-mm-dd")
       ' V = Format(DataCombo2.Text, "yyyy-mm-dd")
        intervalMinutes = -1
        Set Rs = New Recordset
       Rs.Open "SELECT TMP_RMIAgeing.VARNAME,TMP_RMIAgeing. b1 ,TMP_RMIAgeing. v1 ,TMP_RMIAgeing. k1 ,TMP_RMIAgeing. b2 ,TMP_RMIAgeing. v2 ,TMP_RMIAgeing. k2 ,TMP_RMIAgeing. b3 ,TMP_RMIAgeing. v3 ,TMP_RMIAgeing. k3 ,TMP_RMIAgeing. b4 ,TMP_RMIAgeing. v4 ,TMP_RMIAgeing. k4 ,TMP_RMIAgeing. b5 , " & _
                 " TMP_RMIAgeing. v5 ,TMP_RMIAgeing. k5 ,TMP_RMIAgeing. b6 ,TMP_RMIAgeing. v6 ,TMP_RMIAgeing. k6 ,PP_DIVMAS. DIV_PRINTNAME ,PP_DIVMAS. DIV_UNITNAME " & _
                 " FROM TMP_RMIAgeing TMP_RMIAgeing INNER JOIN PP_DIVMAS PP_DIVMAS ON TMP_RMIAgeing. DIVCODE  = PP_DIVMAS. DIVCODE ", DB, adOpenStatic, adLockBatchOptimistic
     intervalMinutes = -1
            If Rs.RecordCount > 0 Then
            intervalMinutes = -1
            co = 8
                 
                 XLSheet.Cells(8, 1).value = " Variety "

                 XLSheet.Cells(8, 2).value = " Bales "
                XLSheet.Cells(8, 3).value = " Kgs. "
                XLSheet.Cells(8, 4).value = " Value "
                XLSheet.Cells(8, 5).value = " Bales "

                XLSheet.Cells(8, 6).value = " Kgs. "
                XLSheet.Cells(8, 7).value = " Value "
                 XLSheet.Cells(8, 8).value = " Bales "
                XLSheet.Cells(8, 9).value = " Kgs. "
                XLSheet.Cells(8, 10).value = " Value "
                XLSheet.Cells(8, 11).value = " Bales "
                XLSheet.Cells(8, 12).value = " Kgs. "
                XLSheet.Cells(8, 13).value = " Value "
                XLSheet.Cells(8, 14).value = " Bales"
                XLSheet.Cells(8, 15).value = " Kgs. "
                XLSheet.Cells(8, 16).value = " Value "
                XLSheet.Cells(8, 17).value = " Bales "
                XLSheet.Cells(8, 18).value = " Kgs. "
                XLSheet.Cells(8, 19).value = " Value "
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count

      
                 
     
        XLSheet.Cells(Max, 1) = Trim(Rs.Fields("VARNAME"))
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("b1"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("k1"))
        XLSheet.Cells(Max, 4) = Trim(Rs.Fields("v1"))
        XLSheet.Cells(Max, 5) = Trim(Rs.Fields("b2"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("k2"))
        XLSheet.Cells(Max, 7) = val(Rs.Fields("v2"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("b3"))
        XLSheet.Cells(Max, 9) = Trim(Rs.Fields("k3"))
        XLSheet.Cells(Max, 10) = Trim(Rs.Fields("v3"))
        XLSheet.Cells(Max, 11) = Trim(Rs.Fields("b4"))
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("k4"))
        XLSheet.Cells(Max, 13) = val(Rs.Fields("v4"))
        XLSheet.Cells(Max, 14) = val(Rs.Fields("b5"))
        XLSheet.Cells(Max, 15) = val(Rs.Fields("k5"))
        XLSheet.Cells(Max, 16) = val(Rs.Fields("v5"))
        XLSheet.Cells(Max, 17) = val(Rs.Fields("b6"))
        XLSheet.Cells(Max, 18) = val(Rs.Fields("k6"))
        XLSheet.Cells(Max, 19) = Trim(Rs.Fields("v6"))
                tot1 = tot1 + Rs("b1")
                tot2 = tot2 + Rs("k1")
                tot3 = tot3 + Rs("v1")
                tot4 = tot4 + Rs("b2")
                tot5 = tot5 + Rs("k2")
                tot6 = tot6 + Rs("v2")
                tot7 = tot7 + Rs("b3")
                tot8 = tot8 + Rs("k3")
                tot9 = tot9 + Rs("v3")
                tot10 = tot10 + Rs("b4")
                tot11 = tot11 + Rs("k4")
                tot12 = tot12 + Rs("v4")
                tot13 = tot13 + Rs("b5")
                tot14 = tot14 + Rs("k5")
                tot15 = tot15 + Rs("v5")
                tot16 = tot16 + Rs("b6")
                tot17 = tot17 + Rs("k6")
                tot18 = tot18 + Rs("v6")

                
                Rs.MoveNext
                Max = Max + 1
                intervalMinutes = -1
                Next I



                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW

                XLSheet.Cells(m_ROW + 1, 1) = "Grand Total"
                XLSheet.Cells(m_ROW + 1, 2) = Round(tot1, 2)
                XLSheet.Cells(m_ROW + 1, 3) = Round(tot2, 2)
                XLSheet.Cells(m_ROW + 1, 4) = Round(tot3, 2)
                XLSheet.Cells(m_ROW + 1, 5) = Round(tot4, 2)
                XLSheet.Cells(m_ROW + 1, 6) = Round(tot5, 2)
                XLSheet.Cells(m_ROW + 1, 7) = Round(tot6, 2)
                XLSheet.Cells(m_ROW + 1, 8) = Round(tot7, 2)
                XLSheet.Cells(m_ROW + 1, 9) = Round(tot8, 2)
                XLSheet.Cells(m_ROW + 1, 10) = Round(tot9, 2)
                XLSheet.Cells(m_ROW + 1, 11) = Round(tot10, 2)
                XLSheet.Cells(m_ROW + 1, 12) = Round(tot11, 2)
                XLSheet.Cells(m_ROW + 1, 13) = Round(tot12, 2)
                XLSheet.Cells(m_ROW + 1, 14) = Round(tot13, 2)
                XLSheet.Cells(m_ROW + 1, 15) = Round(tot14, 2)
                XLSheet.Cells(m_ROW + 1, 16) = Round(tot15, 2)
                XLSheet.Cells(m_ROW + 1, 17) = Round(tot16, 2)
                XLSheet.Cells(m_ROW + 1, 18) = Round(tot17, 2)
                XLSheet.Cells(m_ROW + 1, 19) = Round(tot18, 2)
                

                 m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "S" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit

                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & m
                HR = "S" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
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
'
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If
End Sub




Private Sub Text6_Change()
On Error GoTo err_lvcustclick
intervalMinutes = -1
Dim itm3 As ListItem

Dim itmX As ListView
'itmX = LT_Emp.FindItemWithText(TextBox1.Text, False, Trim(UCase(txt_Cntsearch.Text)))

    For I = 1 To List_div.ListItems.Count
        If InStr(1, List_div.ListItems(I).Text, Trim(Text6.Text), vbTextCompare) > 0 Then
                List_div.ListItems(I).Selected = True
                List_div.ListItems(I).Bold = True
                List_div.ListItems(I).ForeColor = vbBlue
                List_div.ListItems(I).EnsureVisible
                Exit For
        
        Else
                List_div.ListItems(I).Bold = False
                List_div.ListItems(I).ForeColor = vbBlack
        End If
    Next
  Exit Sub
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)


End Sub



Private Sub load_DivisionChkListbox()
On Error GoTo DataCombo1_Change_Error

    Dim li As ListItem
    Set temprs = New Recordset
 
   
    
       temprs.Open " Select Distinct divcode  type, divname as description,abbr as abbreviation from pp_divmas Order by type asc", DB, adOpenStatic, adLockBatchOptimistic
   
  
    List_div.ListItems.Clear
    If temprs.RecordCount > 0 Then
        Do While Not temprs.EOF
            Set l1 = List_div.ListItems.ADD(, , temprs!Description)
            List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!Type
             List_div.ListItems(List_div.ListItems.Count).ListSubItems.ADD , , temprs!abbreviation
            temprs.MoveNext
        Loop
    End If
    temprs.Close
            
    Check4.value = 1
    Call Check4_Click
            

    intervalMinutes = -1
    
    
 Exit Sub
DataCombo1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Rec list of Form Stock Statement", vbInformation, head
    Screen.MousePointer = 0
    
End Sub



Private Sub ExcelConvertPallavaa()
Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
co = 0
intervalMinutes = -1
CustCode = "": custname = "": ContNo = "": sortname = ""
'If Val(Myxl.Application.Version) >= 8 Then
        Set XLSheet = Myxl.ActiveSheet
    'Else
      '  Set XLSheet = Myxl
    'End If
    
'     If Trim(DataCombo1.Text) <> Empty Then
'            Dc1 = Format(Trim(DataCombo1.Text), "yyyy-mm-dd")
'            Dc2 = Format(Trim(DataCombo2.Text), "yyyy-mm-dd")
'            c = Repindex
'      Else
'            MsgBox "Enter a Valid Date", vbInformation, head
'      End If
'
'
'        If Option1.value = True Then
'           g = 1
'        ElseIf Option2.value = True Then
'           g = 2
'        Else
'           g = 3
'        End If
           If Text1.Text = "" Then
            MsgBox " aging 1 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text2.Text = "" Then
            MsgBox " aging 2 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text3.Text = "" Then
            MsgBox " aging 3 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text4.Text = "" Then
            MsgBox " aging 4 cannot be empty", vbInformation
            Exit Sub
        End If
        If Text5.Text = "" Then
            MsgBox " aging 5 cannot be empty", vbInformation
            Exit Sub
        End If
       DB.Execute "delete from TMP_RMIAgeing"
        Set rs1 = New Recordset
      ' RS1.Open "exec  KSP_RMIAGEING_MIS  '" & Divcode & "' ,'" & Format(dtpDate, "yyyy-MM-dd") & "'", DB, adOpenKeyset, adLockReadOnly
      'excel
        If (UCase(CustID) = UCase("Pallava") Or UCase(CustID) = UCase("Shrigiri")) Then
        
                 
     L_God = ""
     L_aread_God = ""
     divcount = 0
     
           For I = 1 To List_div.ListItems.Count
        
                If List_div.ListItems.Item(I).Checked = True Then
                    sRecCount = Trim(List_div.ListItems(I).SubItems(1))
                    If L_God <> "" Then
                        L_God = L_God + "," + "" + Trim(sRecCount) + ""
                         L_aread_God = L_aread_God + "," + "" + Trim(sRecCount) + ""
                         divcount = divcount + 1
                    Else
                        L_God = "" + Trim(sRecCount) + ""
                        L_aread_God = "" + Trim(sRecCount) + ""
                        divcount = divcount + 1
                    End If
                End If
            Next
              
              
              
        If L_God = "" Then
            MsgBox "Please Select Any Division ", vbInformation, head
            Exit Sub
        Else
            If divcount > 1 Then
            'L_God = "'" + L_God + "'"
            End If
        End If
    

            
        
         
         
            rs1.Open "insert into TMP_RMIAgeing  exec ksp_stockageing  '" & L_God & "' ,'" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Format(dtpDate, "yyyy-MM-dd") & "'," & val(Trim(Text1.Text)) & "," & val(Trim(Text2.Text)) & "," & val(Trim(Text3.Text)) & "," & val(Trim(Text4.Text)) & "," & val(Trim(Text5.Text)) & "", DB, adOpenKeyset, adLockReadOnly
        Else
            rs1.Open "insert into TMP_RMIAgeing  exec ksp_stockageing  '" & Divcode & "' ,'" & Format(yfdate, "yyyy-MM-dd") & "','" & Format(yldate, "yyyy-MM-dd") & "','" & Format(dtpDate, "yyyy-MM-dd") & "'," & val(Trim(Text1.Text)) & "," & val(Trim(Text2.Text)) & "," & val(Trim(Text3.Text)) & "," & val(Trim(Text4.Text)) & "," & val(Trim(Text5.Text)) & "", DB, adOpenKeyset, adLockReadOnly
        End If
        
        Dim FSort As String
        Dim TSort As String

        fd = Format(DataCombo1.Text, "yyyy-mm-dd")
        td = Format(DataCombo2.Text, "yyyy-mm-dd")
         
        Set rsnew = New Recordset
        rsnew.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
        
       
        XLSheet.Cells(1, 5).value = rsnew(0)
        XLSheet.Range("A1", "M1").MergeCells = True
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        XLSheet.Cells(2, 5).value = rsnew(1)
        XLSheet.Range("A2", "M2").MergeCells = True
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
     
        End With
        


        XLSheet.Cells(5, 5).value = " STOCK AGEING AS ON - LIST ON - " & Format(dtpDate, "DD/MM/YY")

        XLSheet.Range("A5", "M5").MergeCells = True
        With XLSheet.Range("A5", "M5").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
          
          Title1 = "<-- 1 - " & val(Text1.Text) & "  days -- > "
          Title2 = "<-- " & val(Text1.Text) & "-" & val(Text2.Text) & "  days -- > "
          Title3 = "<-- " & val(Text2.Text) & "-" & val(Text3.Text) & "  days -- > "
          Title4 = "<-- " & val(Text3.Text) & "-" & val(Text4.Text) & "  days -- > "
          Title5 = "<-- Above  " & val(Text4.Text) & "  days -- > "
          
          XLSheet.Cells(7, 2).value = Title1    '" <-- 1 Months to 2 Months --> "
            XLSheet.Range("B7", "D7").MergeCells = True
              With XLSheet.Range("B7", "D7").Font
             .Bold = True
             .Size = 9
             .Color = vbBlue
            End With
         XLSheet.Cells(7, 5).value = Title2 '" <--2 Months to 6 Months-- > "
         XLSheet.Range("E7", "G7").MergeCells = True
           With XLSheet.Range("E7", "G7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 8).value = Title3 '" <--6 Months to 9 Months--> "
         XLSheet.Range("H7", "J7").MergeCells = True
           With XLSheet.Range("H7", "J7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 11).value = Title4 ' " <--9 Months to 12 Months-- > "
         XLSheet.Range("K7", "M7").MergeCells = True
           With XLSheet.Range("K7", "M7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 14).value = Title5 '" <--More than 12 Months--> "
         XLSheet.Range("N7", "P7").MergeCells = True
           With XLSheet.Range("N7", "P7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With

         XLSheet.Cells(7, 17).value = " <-------   Total  -------- >"
         XLSheet.Range("Q7", "S7").MergeCells = True
           With XLSheet.Range("Q7", "S7").Font
          .Bold = True
          .Size = 9
          .Color = vbBlue
         End With
              
        U = Format(DataCombo1.Text, "yyyy-mm-dd")
       ' V = Format(DataCombo2.Text, "yyyy-mm-dd")
        intervalMinutes = -1
        Set Rs = New Recordset
       Rs.Open "SELECT TMP_RMIAgeing.VARNAME,TMP_RMIAgeing. b1 ,TMP_RMIAgeing. v1 ,TMP_RMIAgeing. k1 ,TMP_RMIAgeing. b2 ,TMP_RMIAgeing. v2 ,TMP_RMIAgeing. k2 ,TMP_RMIAgeing. b3 ,TMP_RMIAgeing. v3 ,TMP_RMIAgeing. k3 ,TMP_RMIAgeing. b4 ,TMP_RMIAgeing. v4 ,TMP_RMIAgeing. k4 ,TMP_RMIAgeing. b5 , " & _
                 " TMP_RMIAgeing. v5 ,TMP_RMIAgeing. k5 ,TMP_RMIAgeing. b6 ,TMP_RMIAgeing. v6 ,TMP_RMIAgeing. k6 ,PP_DIVMAS. DIV_PRINTNAME ,PP_DIVMAS. DIV_UNITNAME,pp_divmas.abbr " & _
                 " FROM TMP_RMIAgeing TMP_RMIAgeing INNER JOIN PP_DIVMAS PP_DIVMAS ON TMP_RMIAgeing. DIVCODE  = PP_DIVMAS. DIVCODE ", DB, adOpenStatic, adLockBatchOptimistic
     intervalMinutes = -1
            If Rs.RecordCount > 0 Then
            intervalMinutes = -1
            co = 8
                 
                 XLSheet.Cells(8, 1).value = " Variety "

                 XLSheet.Cells(8, 2).value = " Bales "
                XLSheet.Cells(8, 3).value = " Kgs. "
                XLSheet.Cells(8, 4).value = " Value "
                XLSheet.Cells(8, 5).value = " Bales "

                XLSheet.Cells(8, 6).value = " Kgs. "
                XLSheet.Cells(8, 7).value = " Value "
                 XLSheet.Cells(8, 8).value = " Bales "
                XLSheet.Cells(8, 9).value = " Kgs. "
                XLSheet.Cells(8, 10).value = " Value "
                XLSheet.Cells(8, 11).value = " Bales "
                XLSheet.Cells(8, 12).value = " Kgs. "
                XLSheet.Cells(8, 13).value = " Value "
                XLSheet.Cells(8, 14).value = " Bales"
                XLSheet.Cells(8, 15).value = " Kgs. "
                XLSheet.Cells(8, 16).value = " Value "
                XLSheet.Cells(8, 17).value = " Bales "
                XLSheet.Cells(8, 18).value = " Kgs. "
                XLSheet.Cells(8, 19).value = " Value "
                XLSheet.Cells(8, 20).value = " Unit "
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "T" & m_ROW
                Myxl.Application.Visible = True
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Range(lr, HR).Columns.AutoFit
                XLSheet.Range(lr, HR).Rows.AutoFit


                m = XLSheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = XLSheet.UsedRange.Rows.Count

      
                 
     
        XLSheet.Cells(Max, 1) = Trim(Rs.Fields("VARNAME"))
        XLSheet.Cells(Max, 2) = Trim(Rs.Fields("b1"))
        XLSheet.Cells(Max, 3) = Trim(Rs.Fields("k1"))
        XLSheet.Cells(Max, 4) = Trim(Rs.Fields("v1"))
        XLSheet.Cells(Max, 5) = Trim(Rs.Fields("b2"))
        XLSheet.Cells(Max, 6) = Trim(Rs.Fields("k2"))
        XLSheet.Cells(Max, 7) = val(Rs.Fields("v2"))
        XLSheet.Cells(Max, 8) = Trim(Rs.Fields("b3"))
        XLSheet.Cells(Max, 9) = Trim(Rs.Fields("k3"))
        XLSheet.Cells(Max, 10) = Trim(Rs.Fields("v3"))
        XLSheet.Cells(Max, 11) = Trim(Rs.Fields("b4"))
        XLSheet.Cells(Max, 12) = Trim(Rs.Fields("k4"))
        XLSheet.Cells(Max, 13) = val(Rs.Fields("v4"))
        XLSheet.Cells(Max, 14) = val(Rs.Fields("b5"))
        XLSheet.Cells(Max, 15) = val(Rs.Fields("k5"))
        XLSheet.Cells(Max, 16) = val(Rs.Fields("v5"))
        XLSheet.Cells(Max, 17) = val(Rs.Fields("b6"))
        XLSheet.Cells(Max, 18) = val(Rs.Fields("k6"))
        XLSheet.Cells(Max, 19) = Trim(Rs.Fields("v6"))
        XLSheet.Cells(Max, 20) = Trim(Rs.Fields("abbr"))
                tot1 = tot1 + Rs("b1")
                tot2 = tot2 + Rs("k1")
                tot3 = tot3 + Rs("v1")
                tot4 = tot4 + Rs("b2")
                tot5 = tot5 + Rs("k2")
                tot6 = tot6 + Rs("v2")
                tot7 = tot7 + Rs("b3")
                tot8 = tot8 + Rs("k3")
                tot9 = tot9 + Rs("v3")
                tot10 = tot10 + Rs("b4")
                tot11 = tot11 + Rs("k4")
                tot12 = tot12 + Rs("v4")
                tot13 = tot13 + Rs("b5")
                tot14 = tot14 + Rs("k5")
                tot15 = tot15 + Rs("v5")
                tot16 = tot16 + Rs("b6")
                tot17 = tot17 + Rs("k6")
                tot18 = tot18 + Rs("v6")

                
                Rs.MoveNext
                Max = Max + 1
                intervalMinutes = -1
                Next I



                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
'
'                'Dim M_ROW As Integer
'
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "M" & m_ROW

                XLSheet.Cells(m_ROW + 1, 1) = "Grand Total"
                XLSheet.Cells(m_ROW + 1, 2) = Round(tot1, 2)
                XLSheet.Cells(m_ROW + 1, 3) = Round(tot2, 2)
                XLSheet.Cells(m_ROW + 1, 4) = Round(tot3, 2)
                XLSheet.Cells(m_ROW + 1, 5) = Round(tot4, 2)
                XLSheet.Cells(m_ROW + 1, 6) = Round(tot5, 2)
                XLSheet.Cells(m_ROW + 1, 7) = Round(tot6, 2)
                XLSheet.Cells(m_ROW + 1, 8) = Round(tot7, 2)
                XLSheet.Cells(m_ROW + 1, 9) = Round(tot8, 2)
                XLSheet.Cells(m_ROW + 1, 10) = Round(tot9, 2)
                XLSheet.Cells(m_ROW + 1, 11) = Round(tot10, 2)
                XLSheet.Cells(m_ROW + 1, 12) = Round(tot11, 2)
                XLSheet.Cells(m_ROW + 1, 13) = Round(tot12, 2)
                XLSheet.Cells(m_ROW + 1, 14) = Round(tot13, 2)
                XLSheet.Cells(m_ROW + 1, 15) = Round(tot14, 2)
                XLSheet.Cells(m_ROW + 1, 16) = Round(tot15, 2)
                XLSheet.Cells(m_ROW + 1, 17) = Round(tot16, 2)
                XLSheet.Cells(m_ROW + 1, 18) = Round(tot17, 2)
                XLSheet.Cells(m_ROW + 1, 19) = Round(tot18, 2)
                

                 m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "T" & m_ROW
                With XLSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit

                m_ROW = XLSheet.UsedRange.Rows.Count
                ''

                lr = "A" & m
                HR = "T" & m_ROW

                With XLSheet.Range(lr, HR)
                .Borders.LineStyle = xlThin
                .Font.Size = 9
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
'
                Myxl.Application.Visible = True
'
                Set XLSheet = Nothing
                Set Myxl = Nothing
'                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
               MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If
End Sub

