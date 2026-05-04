VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form ReceiptRegister 
   Caption         =   "Receipt Register"
   ClientHeight    =   7785
   ClientLeft      =   2835
   ClientTop       =   2130
   ClientWidth     =   12180
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   7785
   ScaleWidth      =   12180
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command3 
      Caption         =   "Customized "
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   5640
      TabIndex        =   33
      Top             =   6240
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Receipt Return"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   405
      Left            =   4110
      TabIndex        =   32
      Top             =   6270
      Visible         =   0   'False
      Width           =   1425
   End
   Begin TabDlg.SSTab CROptionTab 
      Height          =   2985
      Left            =   8010
      TabIndex        =   25
      Top             =   1140
      Visible         =   0   'False
      Width           =   3975
      _ExtentX        =   7011
      _ExtentY        =   5265
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "receiptregisternewformat.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame2 
         Height          =   2775
         Left            =   150
         TabIndex        =   26
         Top             =   60
         Width           =   3675
         Begin VB.CommandButton cmdOK 
            Caption         =   "&Ok"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   405
            Left            =   1380
            TabIndex        =   31
            Top             =   2250
            Width           =   1065
         End
         Begin VB.OptionButton OptWithinState 
            Caption         =   "Within State"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   570
            TabIndex        =   29
            Top             =   1140
            Width           =   2745
         End
         Begin VB.OptionButton OptOut 
            Caption         =   "Out Of State"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   570
            TabIndex        =   28
            Top             =   1620
            Width           =   2745
         End
         Begin VB.OptionButton optAll 
            Caption         =   "All "
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   435
            Left            =   570
            TabIndex        =   27
            Top             =   660
            Value           =   -1  'True
            Width           =   2745
         End
         Begin VB.Label Label7 
            Alignment       =   2  'Center
            Caption         =   "Supplier Option"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   9.75
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H8000000D&
            Height          =   285
            Left            =   60
            TabIndex        =   30
            Top             =   210
            Width           =   3525
         End
      End
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
      Height          =   435
      Left            =   2355
      TabIndex        =   24
      Top             =   6270
      Visible         =   0   'False
      Width           =   1590
   End
   Begin VB.Frame Frame1 
      Height          =   3960
      Left            =   1110
      TabIndex        =   6
      Top             =   1230
      Width           =   6660
      Begin VB.CheckBox Check1 
         Caption         =   "Customized Report in Excel"
         Height          =   255
         Left            =   4200
         TabIndex        =   34
         Top             =   3600
         Visible         =   0   'False
         Width           =   2295
      End
      Begin VB.ComboBox cmb_category 
         Height          =   315
         ItemData        =   "receiptregisternewformat.frx":001C
         Left            =   1650
         List            =   "receiptregisternewformat.frx":001E
         TabIndex        =   22
         Top             =   3180
         Visible         =   0   'False
         Width           =   4770
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         ItemData        =   "receiptregisternewformat.frx":0020
         Left            =   1650
         List            =   "receiptregisternewformat.frx":0022
         TabIndex        =   7
         Top             =   2685
         Width           =   4770
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   360
         Left            =   1650
         TabIndex        =   8
         Top             =   2175
         Width           =   4770
         _ExtentX        =   8414
         _ExtentY        =   635
         _Version        =   393216
         Text            =   " "
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   360
         Left            =   1650
         TabIndex        =   9
         Top             =   1665
         Width           =   4770
         _ExtentX        =   8414
         _ExtentY        =   635
         _Version        =   393216
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   1650
         TabIndex        =   10
         Top             =   675
         Width           =   1590
         _ExtentX        =   2805
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   1650
         TabIndex        =   11
         Top             =   1170
         Width           =   1605
         _ExtentX        =   2831
         _ExtentY        =   556
         _Version        =   393216
         Text            =   ""
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   345
         Left            =   1650
         TabIndex        =   12
         Top             =   660
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   609
         _Version        =   393216
         Format          =   136511489
         CurrentDate     =   37578
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   315
         Left            =   1650
         TabIndex        =   13
         Top             =   1170
         Visible         =   0   'False
         Width           =   1845
         _ExtentX        =   3254
         _ExtentY        =   556
         _Version        =   393216
         Format          =   136511489
         CurrentDate     =   37043
      End
      Begin VB.Label lbl_category 
         AutoSize        =   -1  'True
         Caption         =   "Category"
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
         Left            =   315
         TabIndex        =   23
         Top             =   3240
         Visible         =   0   'False
         Width           =   765
      End
      Begin VB.Label Label4 
         Alignment       =   2  'Center
         BackColor       =   &H80000002&
         Caption         =   "Receipt List - Datewise"
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
         Left            =   -315
         TabIndex        =   19
         Top             =   30
         Width           =   6945
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "To Supplier"
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
         Left            =   315
         TabIndex        =   18
         Top             =   2220
         Width           =   990
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "From Supplier"
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
         Left            =   315
         TabIndex        =   17
         Top             =   1725
         Width           =   1170
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Type"
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
         Left            =   315
         TabIndex        =   16
         Top             =   2745
         Width           =   435
      End
      Begin VB.Label Label5 
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
         Height          =   315
         Left            =   315
         TabIndex        =   15
         Top             =   735
         Width           =   975
      End
      Begin VB.Label Label6 
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
         Left            =   315
         TabIndex        =   14
         Top             =   1230
         Width           =   975
      End
   End
   Begin VB.CommandButton cmdreport 
      Caption         =   "&Report"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   975
      TabIndex        =   5
      Top             =   6270
      Width           =   1335
   End
   Begin VB.CommandButton Cmdcancel 
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   435
      Left            =   7080
      TabIndex        =   4
      Top             =   6240
      Width           =   1335
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   1000
      TabIndex        =   0
      Top             =   5400
      Visible         =   0   'False
      Width           =   6900
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   3060
         TabIndex        =   2
         Top             =   180
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   5100
         TabIndex        =   1
         Top             =   210
         Value           =   -1  'True
         Width           =   1140
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
         Left            =   180
         TabIndex        =   3
         Top             =   240
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4185
      Left            =   1000
      TabIndex        =   20
      Top             =   1140
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   7382
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   "                                      "
      TabPicture(0)   =   "receiptregisternewformat.frx":0024
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).ControlCount=   0
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   7950
      TabIndex        =   21
      Top             =   1110
      Visible         =   0   'False
      Width           =   4095
      _extentx        =   7223
      _extenty        =   7646
   End
   Begin Crystal.CrystalReport Crr 
      Left            =   600
      Top             =   2280
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
End
Attribute VB_Name = "ReceiptRegister"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rep As Report.ReportView
Dim rstTAX As Recordset
Dim a As Integer
Dim pg As Integer
Dim Rs As Recordset
Dim rss As Recordset
Dim rs1 As Recordset
Dim rss1 As Recordset
Dim Cnn As String
Dim REPC As Integer
Dim strQuery As String
Dim pglen As Integer

Private Sub cmdCancel_Click()
On Error GoTo Cmdcancel_Click_Error
intervalMinutes = -1
Unload Me

Exit Sub
Cmdcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_Click of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Cmdcancel_LostFocus()
On Error GoTo Cmdcancel_LostFocus_Error
intervalMinutes = -1
DTPicker1.SetFocus

Exit Sub
Cmdcancel_LostFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmdcancel_LostFocus of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdOK_Click()
On Error GoTo cmdOk_Click_Error
intervalMinutes = -1
Select Case Repindex
Case 1190
        Dim costr As String
        costr = Trim(Mid(Combo1.Text, InStr(1, Combo1.Text, "-") + 1, Len(Combo1.Text)))
        cat = Trim(Right(cmb_category.Text, 3))
        U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
        
        Dim clsCryRpt_Dt As New clsCrystal
        Set clsCryRpt_Dt.cryRept = MRN_Register_datewise1
        clsCryRpt_Dt.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "description;" & divname & ""
        crr.ParameterFields(1) = "name;" & "Receipt List From " & Format(W, "dd/mm/yy") & " To " & Format(X, "dd/mm/yy") & ""
        crr.ParameterFields(2) = "@Fdate;" & W & ""
        crr.ParameterFields(3) = "@Tdate;" & X & ""
        crr.ParameterFields(4) = "@FSubCd;" & U & ""
        crr.ParameterFields(5) = "@TSubCd;" & v & ""
        crr.ParameterFields(6) = "@Divcode;" & Divcode & ""
        crr.ParameterFields(7) = "@YFDATE;" & Format(yfdate, "YYYY-MM-DD") & ""
        If OptAll = True Then
            crr.ParameterFields(8) = "@StateCode;" & "ALL"
        ElseIf OptWithinState Then
            crr.ParameterFields(8) = "@StateCode;" & "L"
        ElseIf OptOut Then
            crr.ParameterFields(8) = "@StateCode;" & "O"
        End If
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        intervalMinutes = -1
        Me.MousePointer = 0
        Exit Sub





'''''If optAll = True Then
'''''        Dim costr As String
'''''
'''''        costr = Trim(Mid(Combo1.Text, InStr(1, Combo1.Text, "-") + 1, Len(Combo1.Text)))
'''''        cat = Trim(Right(cmb_category.Text, 3))
'''''
'''''        U = Trim(Right(DataCombo1.Text, 7))
'''''        V = Trim(Right(DataCombo2.Text, 7))
'''''
'''''        DataCombo3.Text = DTPicker1.value
'''''        DataCombo4.Text = DTPicker2.value
'''''
'''''        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
'''''        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
'''''
'''''''''        On Error GoTo errorsub
''''''''        db.BeginTrans
''''''''
''''''''        Set Rs = New Recordset
''''''''        Rs.Open "select * from sysobjects where name ='Temp_Periodical_ReceiptRegisterDatewise'", db, adOpenStatic
''''''''
''''''''        If Rs.RecordCount > 0 Then
''''''''            db.Execute "Drop table Temp_Periodical_ReceiptRegisterDatewise"
''''''''        End If
''''''''        Rs.Close
''''''''        Set Rs = Nothing
''''''''
''''''''        If costr = "ALL" Then
''''''''            If cat = "ALL" Then
''''''''                Set Rs = New Recordset
''''''''                Sql = Sql + Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.Purcost,X.otherchrg,"
''''''''                Sql = Sql + Chr(13) & "SUM(X.aedamt+X.bedamt+X.sedamt+X.cessamt) AS Field,"
''''''''                Sql = Sql + Chr(13) & "(X.Purcost/X.netwt) AS Rate_Kg"
''''''''                Sql = Sql + Chr(13) & "Into Temp_Periodical_ReceiptRegisterDatewise"
''''''''                Sql = Sql + Chr(13) & "From"
''''''''                Sql = Sql + Chr(13) & "(select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,"
''''''''                Sql = Sql + Chr(13) & "isnull(a.sedamt,0) as sedamt,ISNULL(a.insamt,0) AS insamt,isnull(a.cessamt,0)as cessamt,"
''''''''                Sql = Sql + Chr(13) & "station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,"
''''''''                Sql = Sql + Chr(13) & "c.dlytype,a.varcode,a.bales,ISNULL(a.ratecy,0) AS ratecy,a.pjamt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.taxamt,0) AS taxamt,ISNULL(a.vatamt,0) AS vatamt,"
''''''''                Sql = Sql + Chr(13) & "a.ldgulg,ISNULL(b.freight,0) AS FREIGHT,ISNULL(a.totlandcost,0) as totalvalue,e.slname as supplier,g.slname AS Broker,h.CarName as CARNAME,"
''''''''                Sql = Sql + Chr(13) & "isnull(b.brkcd,'') as brkcd,ISNULL(A.favaourablewgt,0) AS NETWT,c.contno,b.lorrynos,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.LRFRTAMT,0) AS LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd='O' THEN ISNULL(a.vatamt,0) END AS CSTVAL,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd<>'O' THEN ISNULL(a.vatamt,0) END AS VATVAL,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(A.DBAMT,0) AS DBTAMT,a.fbillno, ISNULL(a.AssValue,0) AS AssValue,ISNULL(a.OthersAmt,0) AS OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.RateKg,0) AS RateKg,ISNULL(a.commamt,0) AS commamt,ISNULL(a.brkcom,0) AS brkcom,a.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "(IsNull(totlandcost,0)/ ISNULL(A.NETWT,0)) AS tratekg,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(A.NETWT,0) - ISNULL(A.NETWT,0)) AS DIFF,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) AS ITEMVALUE,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0)- isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) AS billvalue,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN dlytype='S' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) + ISNULL(a.LRFRTAMT,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) - isnull(a.aedamt,0) - isnull(a.bedamt,0) - isnull(a.cessamt,0) - isnull(a.sedamt,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='F' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='Y' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) END AS Purcost,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.commamt,0) + ISNULL(a.brkcom,0) AS otherchrg"
''''''''                Sql = Sql + Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f,fa_slmas g,PO_CAR h"
''''''''                Sql = Sql + Chr(13) & "WHERE A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt AND"
''''''''                Sql = Sql + Chr(13) & "a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno AND"
''''''''                Sql = Sql + Chr(13) & "a.lotdt = b.lotdt  and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt AND"
''''''''                Sql = Sql + Chr(13) & "b.brkcd*=g.slcode and h.CARCODE = b.CARCODE and"
''''''''                Sql = Sql + Chr(13) & "b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'"
''''''''                Sql = Sql + Chr(13) & "and a.LOTdt between '" & W & "' and '" & X & "'"
''''''''                Sql = Sql + Chr(13) & "AND OPFLG<>'Y'"
''''''''                Sql = Sql + Chr(13) & "AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.pjno is not null)X"
''''''''                Sql = Sql + Chr(13) & "group by X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.purcost,X.otherchrg"
''''''''
''''''''                Rs.CursorLocation = adUseClient
''''''''                Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
''''''''            Else
''''''''                Set Rs = New Recordset
''''''''                Sql = Sql + Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.Purcost,X.otherchrg,"
''''''''                Sql = Sql + Chr(13) & "SUM(X.aedamt+X.bedamt+X.sedamt+X.cessamt) AS Field,"
''''''''                Sql = Sql + Chr(13) & "(X.Purcost/X.netwt) AS Rate_Kg"
''''''''                Sql = Sql + Chr(13) & "Into Temp_Periodical_ReceiptRegisterDatewise"
''''''''                Sql = Sql + Chr(13) & "From"
''''''''                Sql = Sql + Chr(13) & "(select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,"
''''''''                Sql = Sql + Chr(13) & "isnull(a.sedamt,0) as sedamt,ISNULL(a.insamt,0) AS insamt,isnull(a.cessamt,0)as cessamt,"
''''''''                Sql = Sql + Chr(13) & "station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,"
''''''''                Sql = Sql + Chr(13) & "c.dlytype,a.varcode,a.bales,ISNULL(a.ratecy,0) AS ratecy,a.pjamt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.taxamt,0) AS taxamt,ISNULL(a.vatamt,0) AS vatamt,"
''''''''                Sql = Sql + Chr(13) & "a.ldgulg,ISNULL(b.freight,0) AS FREIGHT,ISNULL(a.totlandcost,0) as totalvalue,e.slname as supplier,g.slname AS Broker,h.CarName as CARNAME,"
''''''''                Sql = Sql + Chr(13) & "isnull(b.brkcd,'') as brkcd,ISNULL(A.favaourablewgt,0) AS NETWT,c.contno,b.lorrynos,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.LRFRTAMT,0) AS LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd='O' THEN ISNULL(a.vatamt,0) END AS CSTVAL,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd<>'O' THEN ISNULL(a.vatamt,0) END AS VATVAL,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(A.DBAMT,0) AS DBTAMT,a.fbillno, ISNULL(a.AssValue,0) AS AssValue,ISNULL(a.OthersAmt,0) AS OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.RateKg,0) AS RateKg,ISNULL(a.commamt,0) AS commamt,ISNULL(a.brkcom,0) AS brkcom,a.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "(IsNull(totlandcost,0)/ ISNULL(A.NETWT,0)) AS tratekg,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(A.NETWT,0) - ISNULL(A.NETWT,0)) AS DIFF,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) AS ITEMVALUE,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) AS billvalue,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN dlytype='S' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) + ISNULL(a.LRFRTAMT,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) - isnull(a.aedamt,0) - isnull(a.bedamt,0) - isnull(a.cessamt,0) - isnull(a.sedamt,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='F' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='Y' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) END AS Purcost,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.commamt,0) + ISNULL(a.brkcom,0) AS otherchrg"
''''''''                Sql = Sql + Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f,fa_slmas g,PO_CAR h"
''''''''                Sql = Sql + Chr(13) & "WHERE A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt AND"
''''''''                Sql = Sql + Chr(13) & "a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno AND"
''''''''                Sql = Sql + Chr(13) & "a.lotdt = b.lotdt  and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt AND"
''''''''                Sql = Sql + Chr(13) & "b.brkcd*=g.slcode and h.CARCODE = b.CARCODE and"
''''''''                Sql = Sql + Chr(13) & "b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'"
''''''''                Sql = Sql + Chr(13) & "and a.LOTdt between '" & W & "' and '" & X & "'"
''''''''                Sql = Sql + Chr(13) & "AND OPFLG<>'Y'"
''''''''                Sql = Sql + Chr(13) & "AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.catcd='" & cat & "' and a.pjno is not null)X"
''''''''                Sql = Sql + Chr(13) & "group by X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.purcost,X.otherchrg"
''''''''
''''''''                Rs.CursorLocation = adUseClient
''''''''                Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
''''''''            End If
''''''''        Else
''''''''            If cat = "ALL" Then
''''''''                Set Rs = New Recordset
''''''''                Sql = Sql + Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.Purcost,X.otherchrg,"
''''''''                Sql = Sql + Chr(13) & "SUM(X.aedamt+X.bedamt+X.sedamt+X.cessamt) AS Field,"
''''''''                Sql = Sql + Chr(13) & "(X.Purcost/X.netwt) AS Rate_Kg"
''''''''                Sql = Sql + Chr(13) & "Into Temp_Periodical_ReceiptRegisterDatewise"
''''''''                Sql = Sql + Chr(13) & "From"
''''''''                Sql = Sql + Chr(13) & "(select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,"
''''''''                Sql = Sql + Chr(13) & "isnull(a.sedamt,0) as sedamt,ISNULL(a.insamt,0) AS insamt,isnull(a.cessamt,0)as cessamt,"
''''''''                Sql = Sql + Chr(13) & "station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,"
''''''''                Sql = Sql + Chr(13) & "c.dlytype,a.varcode,a.bales,ISNULL(a.ratecy,0) AS ratecy,a.pjamt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.taxamt,0) AS taxamt,ISNULL(a.vatamt,0) AS vatamt,"
''''''''                Sql = Sql + Chr(13) & "a.ldgulg,ISNULL(b.freight,0) AS FREIGHT,ISNULL(a.totlandcost,0) as totalvalue,e.slname as supplier,g.slname AS Broker,h.CarName as CARNAME,"
''''''''                Sql = Sql + Chr(13) & "isnull(b.brkcd,'') as brkcd,ISNULL(A.favaourablewgt,0) AS NETWT,c.contno,b.lorrynos,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.LRFRTAMT,0) AS LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd='O' THEN ISNULL(a.vatamt,0) END AS CSTVAL,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd<>'O' THEN ISNULL(a.vatamt,0) END AS VATVAL,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(A.DBAMT,0) AS DBTAMT,a.fbillno, ISNULL(a.AssValue,0) AS AssValue,ISNULL(a.OthersAmt,0) AS OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.RateKg,0) AS RateKg,ISNULL(a.commamt,0) AS commamt,ISNULL(a.brkcom,0) AS brkcom,a.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "(IsNull(totlandcost,0)/ ISNULL(A.NETWT,0)) AS tratekg,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(A.NETWT,0) - ISNULL(A.NETWT,0)) AS DIFF,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) AS ITEMVALUE,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) AS billvalue,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN dlytype='S' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) + ISNULL(a.LRFRTAMT,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) - isnull(a.aedamt,0) - isnull(a.bedamt,0) - isnull(a.cessamt,0) - isnull(a.sedamt,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='F' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='Y' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) END AS Purcost,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.commamt,0) + ISNULL(a.brkcom,0) AS otherchrg"
''''''''                Sql = Sql + Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f,fa_slmas g,PO_CAR h"
''''''''                Sql = Sql + Chr(13) & "WHERE A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt AND"
''''''''                Sql = Sql + Chr(13) & "a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno AND"
''''''''                Sql = Sql + Chr(13) & "a.lotdt = b.lotdt  and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt AND"
''''''''                Sql = Sql + Chr(13) & "b.brkcd*=g.slcode and h.CARCODE = b.CARCODE and"
''''''''                Sql = Sql + Chr(13) & "b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'"
''''''''                Sql = Sql + Chr(13) & "and a.LOTdt between '" & W & "' and '" & X & "'"
''''''''                Sql = Sql + Chr(13) & "AND OPFLG<>'Y' and c.dlytype='" & costr & "'"
''''''''                Sql = Sql + Chr(13) & "AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.pjno is not null)X"
''''''''                Sql = Sql + Chr(13) & "group by X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.purcost,X.otherchrg"
''''''''
''''''''                Rs.CursorLocation = adUseClient
''''''''                Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
''''''''            Else
''''''''                Set Rs = New Recordset
''''''''                Sql = Sql + Chr(13) & "select distinct X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.Purcost,X.otherchrg,"
''''''''                Sql = Sql + Chr(13) & "SUM(X.aedamt+X.bedamt+X.sedamt+X.cessamt) AS Field,"
''''''''                Sql = Sql + Chr(13) & "(X.Purcost/X.netwt) AS Rate_Kg"
''''''''                Sql = Sql + Chr(13) & "Into Temp_Periodical_ReceiptRegisterDatewise"
''''''''                Sql = Sql + Chr(13) & "From"
''''''''                Sql = Sql + Chr(13) & "(select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,"
''''''''                Sql = Sql + Chr(13) & "isnull(a.sedamt,0) as sedamt,ISNULL(a.insamt,0) AS insamt,isnull(a.cessamt,0)as cessamt,"
''''''''                Sql = Sql + Chr(13) & "station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,"
''''''''                Sql = Sql + Chr(13) & "c.dlytype,a.varcode,a.bales,ISNULL(a.ratecy,0) AS ratecy,a.pjamt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.taxamt,0) AS taxamt,ISNULL(a.vatamt,0) AS vatamt,"
''''''''                Sql = Sql + Chr(13) & "a.ldgulg,ISNULL(b.freight,0) AS FREIGHT,ISNULL(a.totlandcost,0) as totalvalue,e.slname as supplier,g.slname AS Broker,h.CarName as CARNAME,"
''''''''                Sql = Sql + Chr(13) & "isnull(b.brkcd,'') as brkcd,ISNULL(A.favaourablewgt,0) AS NETWT,c.contno,b.lorrynos,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.LRFRTAMT,0) AS LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd='O' THEN ISNULL(a.vatamt,0) END AS CSTVAL,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN a.vcatcd<>'O' THEN ISNULL(a.vatamt,0) END AS VATVAL,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(A.DBAMT,0) AS DBTAMT,a.fbillno, ISNULL(a.AssValue,0) AS AssValue,ISNULL(a.OthersAmt,0) AS OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.RateKg,0) AS RateKg,ISNULL(a.commamt,0) AS commamt,ISNULL(a.brkcom,0) AS brkcom,a.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "(IsNull(totlandcost,0)/ ISNULL(A.NETWT,0)) AS tratekg,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(A.NETWT,0) - ISNULL(A.NETWT,0)) AS DIFF,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) AS ITEMVALUE,"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) AS billvalue,"
''''''''                Sql = Sql + Chr(13) & "CASE WHEN dlytype='S' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) + ISNULL(a.LRFRTAMT,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) - isnull(a.aedamt,0) - isnull(a.bedamt,0) - isnull(a.cessamt,0) - isnull(a.sedamt,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='F' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(A.DBAMT,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0)"
''''''''                Sql = Sql + Chr(13) & "WHEN dlytype='Y' THEN"
''''''''                Sql = Sql + Chr(13) & "(ISNULL(a.AssValue,0)-ISNULL(a.OthersAmt,0)) + ISNULL(a.vatamt,0) + ISNULL(A.CSTAMT,0) + ISNULL(a.OthersAmt,0) + isnull(a.aedamt,0) + isnull(a.bedamt,0) + isnull(a.cessamt,0) + isnull(a.sedamt,0) - isnull(a.cashdisamt,0) - isnull(a.tradedisamt,0) - ISNULL(a.vatamt,0) - ISNULL(a.commamt,0) - ISNULL(a.brkcom,0) END AS Purcost,"
''''''''                Sql = Sql + Chr(13) & "ISNULL(a.commamt,0) + ISNULL(a.brkcom,0) AS otherchrg"
''''''''                Sql = Sql + Chr(13) & "from  rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f,fa_slmas g,PO_CAR h"
''''''''                Sql = Sql + Chr(13) & "WHERE A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt AND"
''''''''                Sql = Sql + Chr(13) & "a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno AND"
''''''''                Sql = Sql + Chr(13) & "a.lotdt = b.lotdt  and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt AND"
''''''''                Sql = Sql + Chr(13) & "b.brkcd*=g.slcode and h.CARCODE = b.CARCODE and"
''''''''                Sql = Sql + Chr(13) & "b.divcode=c.divcode and a.supcd between '" & U & "' and '" & V & "'"
''''''''                Sql = Sql + Chr(13) & "and a.LOTdt between '" & W & "' and '" & X & "'"
''''''''                Sql = Sql + Chr(13) & "AND OPFLG<>'Y' and c.dlytype='" & costr & "'"
''''''''                Sql = Sql + Chr(13) & "AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.catcd='" & cat & "' and a.pjno is not null)X"
''''''''                Sql = Sql + Chr(13) & "group by X.aedamt,X.bedamt,X.sedamt,X.insamt,X.cessamt,"
''''''''                Sql = Sql + Chr(13) & "X.station,X.carcode,X.lotdt,X.lotno,X.lotyear,X.prmark,X.pjno,X.contno,"
''''''''                Sql = Sql + Chr(13) & "X.dlytype,X.varcode,X.bales,X.netwt,X.ratecy,X.pjamt,"
''''''''                Sql = Sql + Chr(13) & "X.taxamt,X.vatamt,X.ldgulg,X.freight,X.totalvalue,X.supplier,X.Broker,X.CARNAME,"
''''''''                Sql = Sql + Chr(13) & "X.brkcd,X.lorrynos,X.LRFRTAMT,X.CSTAMT,X.CSTVAL,X.VATVAL,"
''''''''                Sql = Sql + Chr(13) & "X.DBTAMT,X.fbillno, X.AssValue,X.OthersAmt,"
''''''''                Sql = Sql + Chr(13) & "X.RateKg,X.commamt,X.brkcom,X.vcatcd,"
''''''''                Sql = Sql + Chr(13) & "X.tratekg,X.DIFF,X.ITEMVALUE,X.billvalue,"
''''''''                Sql = Sql + Chr(13) & "X.purcost,X.otherchrg"
''''''''
''''''''                Rs.CursorLocation = adUseClient
''''''''                Rs.Open Sql, db, adOpenStatic, adLockBatchOptimistic
''''''''            End If
''''''''        End If
''''''''        db.CommitTrans
'''''
'''''        MousePointer = 11
'''''        'FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\Rep_Period_ReceiptRegDatewise.rpt"
'''''        'FrmRpt.RptHead = "2A"
'''''        'parameter1 = "Receipt Register From " & Format(W, "dd/mm/yy") & " To " & Format(X, "dd/mm/yy") & ""
'''''        'parameter2 = DIVNAME
'''''        'FrmRpt.Show
'''''
'''''    End If
'''''    If OptWithinState = True Then
'''''        costr = Right(Combo1.Text, 1)
'''''        cat = Trim(Right(cmb_category.Text, 3))
'''''        U = Trim(Right(DataCombo1.Text, 7))
'''''        V = Trim(Right(DataCombo2.Text, 7))
'''''        DataCombo3.Text = DTPicker1.value
'''''        DataCombo4.Text = DTPicker2.value
'''''        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
'''''        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
'''''        If costr = "A" Then
'''''            costr = ""
'''''        Else
'''''            costr = "AND {RM_CONT.DlyType} ='" & costr & "'"
'''''        End If
'''''
'''''        If cat = "ALL" Then
'''''            cat = ""
'''''        Else
'''''            costr = "AND {RM_LOT.Catcd} ='" & cat & "'"
'''''        End If
'''''
'''''        MousePointer = 11
''''''        crr.Reset
''''''        crr.Connect = connectstring
''''''        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ReceiptRegisterWithInState.rpt"
''''''        crr.Formulas(0) = "fdate='" & Format(W, "dd/MM/yy") & "'"
''''''        crr.Formulas(1) = "tdate='" & Format(X, "dd/MM/YY") & "'"
''''''        crr.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(W, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(X, "yyyy-mm-dd") & "') AND {RM_lot.Supcd} >= '" & U & "' AND {RM_lot.supcd} <= '" & V & "' AND {FA_SLMAS.State_code} =  {PP_Divmas.State_Code}"
''''''        crr.WindowState = crptMaximized
''''''        SendKeys "{Enter}"
''''''        crr.Action = True
''''''        crr.PrinterCopies = 1
'''''        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ReceiptRegisterWithInState.rpt"
'''''        FrmRpt.RptHead = "2A"
'''''        parameter1 = Format(W, "dd/MM/yy")
'''''        parameter2 = Format(X, "dd/MM/YY")
'''''        selectformula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(W, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(X, "yyyy-mm-dd") & "') AND {RM_lot.Supcd} >= '" & U & "' AND {RM_lot.supcd} <= '" & V & "' AND {FA_SLMAS.State_code} =  {PP_Divmas.State_Code} AND not isnull({RM_lot.pjno})"
'''''        FrmRpt.Show
'''''        Me.MousePointer = 0
'''''        selectformula = ""
'''''        Exit Sub
'''''    End If
'''''    If OptOut = True Then
'''''        MousePointer = 11
'''''         costr = Right(Combo1.Text, 1)
'''''        cat = Trim(Right(cmb_category.Text, 3))
'''''        U = Trim(Right(DataCombo1.Text, 7))
'''''        V = Trim(Right(DataCombo2.Text, 7))
'''''        DataCombo3.Text = DTPicker1.value
'''''        DataCombo4.Text = DTPicker2.value
'''''        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
'''''        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
'''''        If costr = "A" Then
'''''            costr = ""
'''''        Else
'''''            costr = "AND {RM_CONT.DlyType} ='" & costr & "'"
'''''        End If
'''''
'''''        If cat = "ALL" Then
'''''            cat = ""
'''''        Else
'''''            costr = "AND {RM_LOT.Catcd} ='" & cat & "'"
'''''        End If
''''''        crr.Reset
''''''        crr.Connect = connectstring
''''''
''''''        crr.ReportFileName = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ReceiptRegisterOutOfState.rpt"
''''''        crr.Formulas(0) = "fdate='" & Format(W, "dd/MM/yy") & "'"
''''''        crr.Formulas(1) = "tdate='" & Format(X, "dd/MM/YY") & "'"
''''''
''''''        crr.SelectionFormula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(W, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(X, "yyyy-mm-dd") & "') AND {RM_lot.Supcd} >= '" & U & "' AND {RM_lot.supcd} <= '" & V & "' AND {FA_SLMAS.State_code} =  {PP_Divmas.State_Code}"
''''''        crr.WindowState = crptMaximized
''''''        SendKeys "{Enter}"
''''''        crr.Action = True
''''''        crr.PrinterCopies = 1
'''''
'''''        FrmRpt.PVFile = Mid$(App.Path, 1, InStrRev(App.Path, "\", Len(App.Path))) & "Report\RMI\ReceiptRegisterOutOfState.rpt"
'''''        FrmRpt.RptHead = "2A"
'''''        parameter1 = Format(W, "dd/MM/yy")
'''''        parameter2 = Format(X, "dd/MM/YY")
'''''        selectformula = "{pp_divmas.DIVCODE}='" & Divcode & "' AND {RM_lot.lotdt} >= cdate('" & Format(W, "yyyy-mm-dd") & "') AND {RM_lot.lotdt} <= cdate('" & Format(X, "yyyy-mm-dd") & "') AND {RM_lot.Supcd} >= '" & U & "' AND {RM_lot.supcd} <= '" & V & "' AND {FA_SLMAS.State_code} <>  {PP_Divmas.State_Code} AND not isnull({RM_lot.pjno})"
'''''        FrmRpt.Show
'''''        Me.MousePointer = 0
'''''        selectformula = ""
'''''        Exit Sub
'''''    End If
End Select
intervalMinutes = -1
Exit Sub
cmdOk_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdOK_Click of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command1_Click()
On Error GoTo Command1_Click_Error
intervalMinutes = -1
    Select Case Repindex
    Case 1190
        UserFooter1.Visible = False
        CROptionTab.Visible = True
    End Select
intervalMinutes = -1
Exit Sub
Command1_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
intervalMinutes = -1
Select Case Repindex
Case 1190
        Dim costr As String
        costr = Trim(Mid(Combo1.Text, InStr(1, Combo1.Text, "-") + 1, Len(Combo1.Text)))
        cat = Trim(Right(cmb_category.Text, 3))
        U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
        
        Dim clsCryRpt_Dt As New clsCrystal
        Set clsCryRpt_Dt.cryRept = MRN_RetRegister_datewise1
        clsCryRpt_Dt.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
        crr.ParameterFields(0) = "description;" & divname & ""
        crr.ParameterFields(1) = "name;" & "Receipt List From " & Format(W, "dd/mm/yy") & " To " & Format(X, "dd/mm/yy") & ""
        crr.ParameterFields(2) = "@Fdate;" & W & ""
        crr.ParameterFields(3) = "@Tdate;" & X & ""
        crr.ParameterFields(4) = "@FSubCd;" & U & ""
        crr.ParameterFields(5) = "@TSubCd;" & v & ""
        crr.ParameterFields(6) = "@Divcode;" & Divcode & ""
        
       ' Crr.ParameterFields(7) = "@YFDATE;" & Format(yfdate, "YYYY-MM-DD") & ""
       ' If optAll = True Then
        ' Crr.ParameterFields(8) = "@StateCode;" & "ALL"
        'ElseIf OptWithinState Then
         '   Crr.ParameterFields(8) = "@StateCode;" & "L"
        'ElseIf OptOut Then
         '   Crr.ParameterFields(8) = "@StateCode;" & "O"
        'End If
        
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        intervalMinutes = -1
        Me.MousePointer = 0
        Exit Sub
End Select
intervalMinutes = -1

End Sub

Private Sub Command3_Click()
If Check1.value = 1 Then
Call ReceiptListDtWiseExl

Exit Sub
End If
    Dim costr As String
        costr = Trim(Mid(Combo1.Text, InStr(1, Combo1.Text, "-") + 1, Len(Combo1.Text)))
        cat = Trim(Right(cmb_category.Text, 3))
        U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
        
        Dim clsCryRpt_Dt As New clsCrystal
        Set clsCryRpt_Dt.cryRept = Cry_Receiptlist_DW
        clsCryRpt_Dt.CrystalPrint
        crr.Reset
        crr.Connect = connectstring
        crr.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
       ' Crr.ParameterFields(0) = "description;" & divname & ""
       ' Crr.ParameterFields(1) = "name;" & "Receipt List From " & Format(W, "dd/mm/yy") & " To " & Format(X, "dd/mm/yy") & ""
        crr.ParameterFields(0) = "@Fdate;" & W & ""
        crr.ParameterFields(1) = "@Tdate;" & X & ""
        crr.ParameterFields(2) = "@FSubCd;" & U & ""
        crr.ParameterFields(3) = "@TSubCd;" & v & ""
        crr.ParameterFields(4) = "@Divcode;" & Divcode & ""
'        Crr.ParameterFields(7) = "@YFDATE;" & Format(yfdate, "YYYY-MM-DD") & ""
'        If optAll = True Then
'            Crr.ParameterFields(8) = "@StateCode;" & "ALL"
'        ElseIf OptWithinState Then
'            Crr.ParameterFields(8) = "@StateCode;" & "L"
'        ElseIf OptOut Then
'            Crr.ParameterFields(8) = "@StateCode;" & "O"
'        End If
        crr.WindowShowPrintSetupBtn = True
        crr.WindowShowSearchBtn = True
        crr.WindowState = crptMaximized
        SendKeys "{ENTER}"
        crr.Action = 1
        crr.PrinterCopies = 1
        intervalMinutes = -1
        Me.MousePointer = 0
        Exit Sub

End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

If DTPicker1.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker1.value = mfdate
End If

Exit Sub
DTPicker1_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker1_Change of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub cmdReport_Click()
intervalMinutes = -1
On Error GoTo cmdreport_Click_Error
Screen.MousePointer = 11
Dim DayTotal As Integer
Dim W, X As String
Dim head As String
Dim address As String
Dim area As String
Dim PAGE As Integer
Dim U, v As String
Dim z As String

If Repindex = 100 Then
    ''Poly  and viscos
    DataCombo3.Text = DTPicker1.value
    DataCombo4.Text = DTPicker2.value
    
    U = Format(DataCombo3.Text, "yyyy-mm-dd")
    v = Format(DataCombo4.Text, "yyyy-mm-dd")
    W = Mid$(DataCombo1.Text, InStr(DataCombo1.Text, "--") + 3, (Len(DataCombo1.Text) - InStr(DataCombo1.Text, "--")))
    X = Mid$(DataCombo2.Text, InStr(DataCombo2.Text, "--") + 3, (Len(DataCombo2.Text) - InStr(DataCombo2.Text, "--")))
    z = Trim(Left(Combo1.Text, 2))
    Screen.MousePointer = 0
    If z = "P" Then
        Call Polysterwise(CStr(U), CStr(v), CStr(W), CStr(X), CStr(z), "e")
    Else
        Call viscos(CStr(U), CStr(v), CStr(W), CStr(X), CStr(z), "E")
    End If
    Exit Sub
ElseIf Repindex = 1190 Then
    ''Datewise
    Set rep = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    'Open "C:\inv.txt" For Output As #a
    Open KALFOLDERDATA & "\inv.TXT" For Output As #a
    Dim costr As String
    
    costr = Left(Combo1.Text, 1)
    cat = Trim(Right(cmb_category.Text, 3))
    'cat = Trim(Mid$(cmb_category, Right(InStr(1, cmb_category.Text, "-"), 1) - 1))
    Dim co As Integer
    Dim pg As Integer
    Dim S1, s2, s3 As String
    Dim d As String
    Dim TEMP As String
        DayTotal = 0
        ttot1 = 0
        ttot2 = 0
        ttot3 = 0
        ttot4 = 0
        ttot5 = 0
        ttot6 = 0
        ttot7 = 0
        ttot8 = 0
        ttot9 = 0
        TTOTD = 0
        ttotc = 0
        TTOTP = 0
        Ttotr = 0
        
    U = Trim(Right(DataCombo1.Text, 7))
    v = Trim(Right(DataCombo2.Text, 7))
    
    DataCombo3.Text = DTPicker1.value ''''
    DataCombo4.Text = DTPicker2.value ''''
    
    W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
    X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
    If costr = "A" Then
        If cat = "ALL" Then
            Set Rs = New Recordset
            Rs.Open " select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,isnull(a.sedamt,0) as sedamt,a.insamt,isnull(a.cessamt,0)as cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,isnull(a.favaourablewgt,0) as Netwt,isnull(a.favaourablewgt,0) as Netwt,c.contno,b.lorrynos,a.LRFRTAMT,isnull(A.CSTAMT,0) as CSTAMT,A.DBAMT AS DBTAMT,a.fbillno, a.AssValue,A.FBILLVALUE, a.OthersAmt, a.RateKg,a.commamt,a.brkcom,a.vcatcd,isnull(cashdisamt,0) as cashdis,isnull(tradedisamt,0) as tradedis,A.TOTLANDCOST,A.Tax_code from " & _
                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                    " where  A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                    " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & v & "'" & _
                    " and a.LOTdt between '" & W & "' and '" & X & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
        Else
            Set Rs = New Recordset
            Rs.Open " select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,isnull(a.sedamt,0) as sedamt,a.insamt,isnull(a.cessamt,0)as cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,isnull(a.favaourablewgt,0) as Netwt,isnull(a.favaourablewgt,0) as Netwt ,c.contno,b.lorrynos,a.LRFRTAMT,isnull(A.CSTAMT,0) as CSTAMT,A.DBAMT AS DBTAMT,a.fbillno, a.AssValue,A.FBILLVALUE, a.OthersAmt, a.RateKg,a.commamt,a.brkcom,a.vcatcd,isnull(cashdisamt,0) as cashdis,isnull(tradedisamt,0) as tradedis,A.TOTLANDCOST,A.Tax_code from " & _
                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                    " where  A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                    " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & v & "'" & _
                    " and a.LOTdt between '" & W & "' and '" & X & "'  AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.catcd='" & cat & "' order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
        End If
    Else
        If cat = "ALL" Then
            Set Rs = New Recordset
            Rs.Open " select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,isnull(a.sedamt,0) as sedamt,a.insamt,isnull(a.cessamt,0)as cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,isnull(a.favaourablewgt,0) as Netwt,isnull(a.favaourablewgt,0) as Netwt ,c.contno,b.lorrynos,a.LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,A.DBAMT AS DBTAMT,a.fbillno, a.AssValue,A.FBILLVALUE, a.OthersAmt, a.RateKg,a.commamt,a.brkcom,a.vcatcd,isnull(cashdisamt,0) as cashdis,isnull(tradedisamt,0) as tradedis,A.TOTLANDCOST,A.Tax_code from " & _
                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                    " where A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                    " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & v & "'" & _
                    " and a.LOTdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "'  order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
        Else
            Set Rs = New Recordset
            Rs.Open " select distinct isnull(a.aedamt,0) as aedamt,isnull(a.bedamt,0) as bedamt,isnull(a.sedamt,0) as sedamt,a.insamt,isnull(a.cessamt,0)as cessamt,station,b.carcode,a.lotdt,a.lotno,a.lotyear,b.prmark,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.vatamt,a.ldgulg,b.freight,(a.totlandcost)as totalvalue,e.slname as supplier,isnull(b.brkcd,'') as brkcd,isnull(a.favaourablewgt,0) as Netwt,isnull(a.favaourablewgt,0) as Netwt ,c.contno,b.lorrynos,a.LRFRTAMT,ISNULL(A.CSTAMT,0) AS CSTAMT,A.DBAMT AS DBTAMT,a.fbillno, a.AssValue,A.FBILLVALUE, a.OthersAmt, a.RateKg,a.commamt,a.brkcom,a.vcatcd,isnull(cashdisamt,0) as cashdis,isnull(tradedisamt,0) as tradedis,A.TOTLANDCOST ,A.Tax_code from " & _
                    " rm_lot a,rm_arrival b,rm_cont c,fa_slmas e,rm_area f " & _
                    " where A.ARRDT=B.ARRDATE AND a.ARRno = b.ARRno and a.lotno=b.lotno and a.lotdt=b.lotdt and a.arrno=b.arrno and a.divcode=b.divcode and a.supcd=b.supcd And b.contno = c.contno And a.lotdt = b.lotdt " & _
                    " and a.supcd=e.slcode and a.areacd=f.areacode and b.contdt=c.contdt and b.divcode=c.divcode and a.supcd between '" & U & "' and '" & v & "'" & _
                    " and a.LOTdt between '" & W & "' and '" & X & "' and c.dlytype='" & costr & "' AND OPFLG<>'Y' AND LOTYEAR='" & Year(yfdate) & "' and a.DivCode ='" & Divcode & "' and a.catcd='" & cat & "'  order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
        End If
    End If
            'Rs.Open " select distinct a.lotdt,a.lotno,a.lotyear,b.prmark,d.carname,a.pjno,b.contno as pono,c.dlytype,a.varcode,a.bales,a.netwt,a.ratecy,a.pjamt,a.taxamt,a.ldgulg,a.freght,(a.taxamt+a.ldgulg+a.freght+a.totlandcost)as totalvalue,e.slname as supplier,f.slname as broker,A.FNETWT,A.PNETWT,G.AREANAME ,c.contno from " & _
            " rm_lot a,rm_arrival b,rm_cont c,po_car d,fa_slmas e,fa_slmas f,rm_area g " & _
            " where b.carcode=d.carcode and a.lotno = b.lotno And b.contno = c.contno And a.lotdt = b.lotdt " & _
            " and a.supcd=e.slcode and a.brkcd=f.slcode and a.areacd=g.areacode and a.supcd between '" & u & "' and '" & v & "'" & _
            " and a.lotdt between '" & w & "' and '" & x & "' and c.dlytype='" & costr & "'  order by a.lotdt,a.lotno ", cn, adOpenStatic, adLockBatchOptimistic
    
    
           
        If Rs.RecordCount <= 0 Then
          Screen.MousePointer = 0
          MsgBox " No Records Found", vbInformation, "Kalsofte"
          Exit Sub
        Else
          Rs.MoveFirst
        End If
        If costr = "F" Then
            costr = "FOR"
        ElseIf costr = "S" Then
            costr = "SPOT"
        Else
            costr = "FOR"
        End If
    pg = 1
    Call header3(co, pg, rs1, CStr(W), CStr(X))
    Dim RECCOUNT As Integer
    recount = 0
    Do While Rs.EOF = False
    costr = Rs("dlytype")
        If costr = "F" Then
            costr = "FOR"
        ElseIf costr = "S" Then
            costr = "SPOT"
        Else
            costr = "FOR"
        End If
        
        costr = getMasterName("Deldesc", "Rm_Delivery", "Delcode", Rs("dlytype"))
        
    Set rec = New Recordset
    'rec.Open "Select slname as broker from fa_slmas where slcode='" & rs("brkcd") & "'", DB, dbopenstatic
    rec.Open "Select slname as broker from fa_slmas where slcode='" & Rs("brkcd") & "'", DB, adOpenStatic
    If rec.RecordCount >= 1 Then
        bcd = rec(0)
    Else
        bcd = ""
    End If
    Set rs1 = New Recordset
    rs1.Open "Select carname from po_car where carcode='" & Rs("carcode") & "'", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        car = rs1(0)
    Else
        car = ""
    End If
    'cratekg = IIf(IsNull(Rs("pjamt")), 0, Rs("pjamt")) / IIf(IsNull(Rs("netwt")), 0, Rs("netwt"))
    cratekg = IIf(IsNull(Rs("RateKg")), 0, Rs("RateKg"))
    
    tratekg = IIf(IsNull(Rs("totalvalue")), 0, Rs("totalvalue")) / IIf(IsNull(Rs("netwt")), 0, Rs("netwt"))
    'If rs1("FGROSSWT") <> 0 And rs1("FNETWT") <> 0 Or rs1("FTAREWT") <> 0 Then
    'diff = Rs("NETWT") - Rs("FNETWT")
    If Rs("NETWT") <> 0 Then
       diff = IIf(IsNull(Rs("NETWT")), 0, Rs("NETWT")) - IIf(IsNull(Rs("NETWT")), 0, Rs("NETWT"))
    Else
       diff = IIf(IsNull(Rs("NETWT")), 0, Rs("NETWT")) - IIf(IsNull(Rs("NETWT")), 0, Rs("NETWT"))
    End If
    Set rs1 = New Recordset
    rs1.Open "select akgs from rm_lotallowance where lotno=" & Rs("lotno") & "", DB, adOpenStatic
    If rs1.RecordCount > 0 Then
        diff = rs1(0)
    Else
        diff = 0
    End If
      If TEMP <> Rs("lotdt") Then
      PageLen1 = 60
      If co >= PageLen1 Then
            Print #a, String(233, "-")
            Print #a, Chr(12)
            pg = pg + 1
            co = 10
            Call header3(co, pg, rs1, CStr(W), CStr(X))
        End If
        
'         If co > 9 And daytotal > 1 Then
'            Print #a, Space(88); String(140, "-")
'            Print #a, Chr(27) + "E" & Space(0); Space(88); Padl("** Date Total  **", 23, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 1), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 2), 6, " "); Space(3); Padl(INF(ttot3, 2), 15, " "); Space(1);
'            Print #a, Padl(INF(ttot5, 2), 10, " "); Space(0); Padl(INF(ttotc, 2), 10, " "); Space(1); Padl(INF(ttot12, 2), 5, " "); Space(1); Padl(INF(ttot7, 2), 12, " "); Space(0); Padl(INF(ttot5, 2), 10, " "); Space(1); Padl(INF(ttotS4, 2), 12, " "); Space(2) & Chr(27) & "F"
'            Print #a, Chr(27) + "E" & Space(178); Padl(INF(TTOTD, 2), 12, " "); Space(7); Padl(INF(TTOTP, 2), 12, " "); Space(0); Padl(INF(Ttotr, 2), 10, " "); Space(3); Padl(INF(ttotf4, 2), 10, " ") & Chr(27) & "F"
'            'Print #a, Chr(27) + "F"
'            co = co + 3
'            Print #a, Space(88); String(140, "-")
'        End If
        If co > 9 And DayTotal > 1 Then
            'Print #a,
            Print #a, Chr(27) + "E" & Space(0); Space(47); Padl("** Date Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 5, "  "); Space(1); Padl(INF(ttot2, 2), 10, "  "); Space(1); Space(10); Space(1); Padl(INF(ttot10, 2), 8, " "); Space(1); Padl(INF(ttot3, 2), 12, " "); Space(1);
            Print #a, Padl(INF(ttot5, 2), 10, " "); Space(1); Padl(INF(ttotc, 2), 10, " "); Space(1); Padl(INF(ttot12, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(Ttot20, 2), 9, " "); Space(1); Padl(INF(TTOTD, 2), 12, " "); Space(1); Padl(INF(TTOTf4, 2), 12, " "); Space(1); Padl(INF(ttototherchrg, 2), 12, " "); Space(1); Padl(INF(TTOTP, 2), 14, " ")
            'Print #a, Padl(INF(0, 2), 12, " "); Space(1); Padl(INF(TTOTP, 2), 14, " ") & Chr(27) & "F"
            'Print #a, Chr(27) + "E" & Space(133); Padl(INF(TTOTD, 2), 12, " "); Space(7); Padl(INF(TTOTP, 2), 12, " "); Space(0); Padl(INF(Ttotr, 2), 10, " "); Space(3); Padl(INF(ttotf4, 2), 10, " ") & Chr(27) & "F"
            'Print #a, Chr(27) + "F"
            Print #a, Space(129); Padl(INF(ttot13, 2), 15, " "); Chr(27) + "F"
            co = co + 2
            Print #a,
            dblVatAmt = 0
        End If
        DayTotal = 0
        If DayTotal = 1 Then
            Print #a,
            co = co + 1
            DayTotal = 0
        End If
        ttot1 = 0
        ttot2 = 0
        ttot3 = 0
        ttot4 = 0
        ttot5 = 0
        ttot6 = 0
        ttot7 = 0
        ttot8 = 0
        ttot9 = 0
        ttot12 = 0
        ttot13 = 0
        ttotc = 0
        TTOTP = 0
        Ttotr = 0
        TTOTD = 0
        TTOTf4 = 0
        ttotS4 = 0
        ttototherchrg = 0
        
        'Print #a,
        Print #a, Chr(18) + Chr(27) + "E" + Space(1); Padr(Format(Rs("lotdt"), "dd/mm/yy"), 8, " ") + Chr(27) + "F" + Chr(15) 'Space(2); Padr(rs("broker"), 35, " ")
        co = co + 1
      End If
    Dim billvalue, purcost, ratekg, cstval As Double
    temp3 = Right(Rs("lotyear"), 2)
    Rs("ldgulg") = Rs("bedamt") + Rs("sedamt") + Rs("aedamt") + Rs("insamt") + Rs("cessamt")
'    ITEMVALUE = IIf(IsNull(Rs("Pjamt")), 0, Rs("Pjamt")) - IIf(IsNull(Rs("taxamt")), 0, Rs("taxamt"))
    If IsNull(Rs!Assvalue) Then
'        ITEMVALUE = 0
        ITEMVALUE = (IIf(IsNull(Rs("Netwt")), 0, Rs("Netwt")) * IIf(IsNull(Rs("Ratekg")), 0, Rs("Ratekg"))) - IIf(IsNull(Rs("othersamt")), 0, Rs("othersamt"))
    Else
        ITEMVALUE = IIf(IsNull(Rs("AssValue")), 0, Rs("AssValue")) - IIf(IsNull(Rs("othersamt")), 0, Rs("othersamt"))
    End If
    r = Rs("ratecy")
'    billvalue = ITEMVALUE + IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) + IIf(IsNull(Rs("CSTAMT")), 0, Rs("CSTAMT")) + IIf(IsNull(Rs("othersamt")), 0, Rs("othersamt")) + IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) + IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) + IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) + IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt")) - IIf(IsNull(Rs("cashdis")), 0, Rs("cashdis")) - IIf(IsNull(Rs("tradedis")), 0, Rs("tradedis"))
'    If costr = "SPOT" Then
'    If IsNull(Rs("DBTAMT")) = False Then
'        purcost = val(billvalue) - IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) + IIf(IsNull(Rs("LRFRTAMT")), 0, Rs("LRFRTAMT")) - IIf(IsNull(Rs("DBTAMT")), 0, Rs("DBTAMT")) - IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) - IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom")) - IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) - IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) - IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) - IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt"))
'    Else
'        purcost = val(billvalue) - IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) + IIf(IsNull(Rs("LRFRTAMT")), 0, Rs("LRFRTAMT")) - IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) - IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom")) - IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) - IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) - IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) - IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt"))
'    End If
'        purcost = Rs("totalvalue")
'        purcost = Rs("TOTLANDCOST")
'    ElseIf costr = "FOR" Then
'    If IsNull(Rs("DBTAMT")) = False Then
'        purcost = val(billvalue) - IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) - IIf(IsNull(Rs("DBTAMT")), 0, Rs("DBTAMT")) - IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) - IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom"))
'    Else
'        purcost = val(billvalue) - IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) - IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) - IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom"))
'    End If
'    End If
    billvalue = Rs!fBillValue
'    billvalue = ITEMVALUE + IIf(IsNull(Rs("vatamt")), 0, Rs("vatamt")) + IIf(IsNull(Rs("CSTAMT")), 0, Rs("CSTAMT")) + IIf(IsNull(Rs("othersamt")), 0, Rs("othersamt")) + IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) + IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) + IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) + IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt")) + IIf(IsNull(Rs("OTHERTAXAMT")), 0, Rs("OTHERTAXAMT"))+ IIf(IsNull(Rs("INSAMT")), 0, Rs("INSAMT")) + IIf(IsNull(Rs("CHARITYAMT")), 0, Rs("CHARITYAMT"))- IIf(IsNull(Rs("cashdis")), 0, Rs("cashdis")) - IIf(IsNull(Rs("tradedis")), 0, Rs("tradedis"))
    purcost = Rs("TOTLANDCOST")
    ratekg = val(purcost) / IIf(IsNull(Rs("netwt")), 0, Rs("netwt"))
    
    
    dblVatAmt = 0
    Set rstTAX = New Recordset
    rstTAX.Open "Select ITCTAXSTATUS from IG_TAX WHERE TAX_code = '" & Rs!TAX_CODE & "'", DB, adOpenStatic
    
    If rstTAX.EOF = False Then
        If rstTAX!itctaxstatus = "N" Or IsNull(rstTAX!itctaxstatus) Then
            dblVatAmt = 0
        
        Else
            dblVatAmt = Round(Rs!Vatamt, 0)
        
        End If
    End If
        cstval = 0
        VATVAL = 0
        If Rs("vcatcd") = "O" Then
            cstval = IIf(IsNull(Rs("TAXAMT")), IIf(IsNull(Rs("vatAMT")), 0, Round(Rs("vatAMT"), 0)), Round(Rs("TAXAMT"), 0))
        Else
            VATVAL = IIf(IsNull(Rs("vatAMT")), 0, Round(Rs("vatAMT"), 0))
        End If

    
    'cstval = IIf(IsNull(rs("CSTAMT")), 0, rs("CSTAMT"))
    otherchrg = IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) + IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom"))
'    If costr = "SPOT" Then
'        Print #a, Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(Rs("station"), 12, " "); Space(1); Padr(bcd, 15, " ");
'        Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr(car, 15, " "); Space(2); Padl(Rs("fbillno"), 5, " "); Space(1); Padl(Rs("contno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
'        Print #a, Padr(Rs("varcode"), 7, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 2), 10, " "); Space(1); Padl(INF(Rs("ratecy"), 2), 10, "  "); Space(1); Padl(INF(cratekg, 4), 8, " "); Space(1); Padl(INF(ITEMVALUE, 2), 15, " "); Space(1);
'        Print #a, Padl(INF(Rs("vatamt"), 2), 10, " "); Space(0); Padl(INF(cstval, 2), 10, " "); Space(1); Padl(INF(Rs("OthersAmt"), 2), 9, " "); Space(0); Padl(INF(billvalue, 2), 12, "  "); Space(1); Padl(INF(Rs("vatamt"), 4), 9, " "); Space(1);
'        Print #a, Padl(INF(Rs("LRFRTAMT"), 2), 12, " ");
'        Print #a,
'        Print #a, Space(178); Padl(INF(Rs("DBTAMT"), 2), 12, "  "); Space(5); Padl(INF(purcost, 2), 14, "  "); Padl(INF(ratekg, 2), 10, "  "); Space(1); Padl("", 12, "  ");
'        Print #a,
'        tots4 = tots4 + Rs("LRFRTAMT")
'        ttotS4 = ttotS4 + Rs("LRFRTAMT")
'    ElseIf costr = "FOR" Then
'        Print #a, Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(2); Padr(Rs("station"), 12, " "); Space(1); Padr(bcd, 15, " ");
'        Print #a, Space(1); Padr(Rs("prmark"), 10, " "); Space(1); Padr(car, 15, " "); Space(2); Padl(Rs("fbillno"), 5, " "); Space(1); Padl(Rs("contno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
'        Print #a, Padr(Rs("varcode"), 7, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 2), 10, " "); Space(1); Padl(INF(Rs("ratecy"), 2), 10, "  "); Space(1); Padl(INF(cratekg, 4), 8, " "); Space(1); Padl(INF(ITEMVALUE, 2), 15, " "); Space(1);
'        Print #a, Padl(INF(Rs("vatamt"), 2), 10, " "); Space(0); Padl(INF(cstval, 2), 10, " "); Space(1); Padl(INF(Rs("OthersAmt"), 2), 9, " "); Space(0); Padl(INF(billvalue, 2), 12, "  "); Space(1); Padl(INF(Rs("vatamt"), 4), 9, " "); Space(1);
'        Print #a, Padl("", 12, " ");
'        Print #a,
'        Print #a, Space(178); Padl(INF(Rs("DBTAMT"), 2), 12, "  "); Space(5); Padl(INF(purcost, 2), 14, "  "); Padl(INF(ratekg, 2), 10, "  "); Space(1); Padl(INF(Rs("LRFRTAMT"), 2), 12, " ");
'        Print #a,
'        totF4 = totF4 + Rs("LRFRTAMT")
'        ttotf4 = ttotf4 + Rs("LRFRTAMT")
'    End If
'RATECY = rs("ratecy") * 355.6187
    If costr = "SPOT" Then
        Print #a, Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(1); Padr(bcd, 15, " ");
        Print #a, Space(1); Padl(Rs("fbillno"), 6, " "); Space(1); Padl(Rs("contno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
        Print #a, Padr(Rs("varcode"), 7, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 2), 10, " "); Space(1); Padl(INF(Rs("RATECY"), 2), 10, "  "); Space(1); Padl(INF(Rs!ratekg, 4), 8, " "); Space(1); Padl(INF(ITEMVALUE, 2), 12, " "); Space(1);
        Print #a, Padl(INF(VATVAL, 2), 10, " "); Space(1); Padl(INF(cstval, 2), 10, " "); Space(1); Padl(INF(Rs("OthersAmt"), 2), 9, " "); Space(1); Padl(INF(billvalue, 2), 14, "  "); Space(1); Padl(INF(dblVatAmt, 4), 9, " "); Space(1);
        Print #a, Padl(INF(Rs("DBTAMT"), 2), 12, " "); Space(1); Padl(INF(Rs("LRFRTAMT"), 2), 12, " "); Space(1); Padl(INF(otherchrg, 2), 12, "  "); Space(1); Padl(INF(purcost, 2), 14, "  ")
        Print #a, Padr(car, 18, " "); Space(1); Padl(Rs("station"), 10, " "); Space(1); Padr(Rs("prmark"), 15, " "); Space(84); Padl(INF(Rs("bedamt") + Rs("aedamt") + Rs("cessamt") + Rs("sedamt"), 2), 15, " "); Space(79); Padl(INF(Rs!ratekg, 2), 10, "  ");
        Print #a,
        tots4 = tots4 + Rs("LRFRTAMT")
        ttotS4 = ttotS4 + Rs("LRFRTAMT")
    Else     'If costr = "FOR" Then
        Print #a, Padr(Rs("SUPPLIER"), 18, " "); Space(1); Padl(Rs("lotno"), 7, " "); "/"; Padl(temp3, 2, " "); Space(1); Padr(bcd, 15, " ");
        Print #a, Space(1); Padl(Rs("fbillno"), 6, " "); Space(1); Padl(Rs("contno"), 5, " "); Space(1); Padr(costr, 5, "  "); Space(1);
        Print #a, Padr(Rs("varcode"), 7, " "); Space(1); Padl(INF(Rs("bales"), 0), 5, " "); Space(1); Padl(INF(Rs("netwt"), 2), 10, " "); Space(1); Padl(INF(Rs("ratecy"), 2), 10, "  "); Space(1); Padl(INF(Rs!ratekg, 4), 8, " "); Space(1); Padl(INF(ITEMVALUE, 2), 12, " "); Space(1);
        Print #a, Padl(INF(VATVAL, 2), 10, " "); Space(1); Padl(INF(cstval, 2), 10, " "); Space(1); Padl(INF(Rs("OthersAmt"), 2), 9, " "); Space(1); Padl(INF(billvalue, 2), 14, "  "); Space(1); Padl(INF(dblVatAmt, 4), 9, " "); Space(1);
        Print #a, Padl(INF(Rs("DBTAMT"), 2), 12, "  "); Space(1) & Padl(INF(Rs("LRFRTAMT"), 2), 12, " "); Space(1); Padl(INF(otherchrg, 2), 12, "  "); Space(1); Padl(INF(purcost, 2), 14, "  ")
        Print #a, Padr(car, 18, " "); Space(1); Padl(Rs("station"), 10, " "); Space(1); Padr(Rs("prmark"), 15, " "); Space(84); Padl(INF(Rs("bedamt") + Rs("aedamt") + Rs("cessamt") + Rs("sedamt"), 2), 15, " "); Space(79); Padl(INF(Rs!ratekg, 2), 10, "  ");
        Print #a,
        totF4 = totF4 + Rs("LRFRTAMT")
        TTOTf4 = TTOTf4 + Rs("LRFRTAMT")
    End If
'    VATVAL = 0
'    cstval = 0
    Print #a,
    co = co + 3
        DayTotal = DayTotal + 1
        tot1 = tot1 + Rs("bales")
        tot2 = tot2 + Rs("netwt")
        tot3 = tot3 + ITEMVALUE
'        tot4 = tot4 + Rs("LRFRTAMT")
        tot5 = tot5 + VATVAL
        tot6 = tot6 + Rs("ldgulg")
        tot7 = tot7 + billvalue
        tot8 = tot8 + cratekg
        tot9 = tot9 + tratekg
        tot12 = tot12 + Rs("othersamt")
        tot13 = tot13 + IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) + IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) + IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) + IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt"))
        tototherchrg = tototherchrg + IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) + IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom"))
        totc = totc + cstval
        TOTP = TOTP + purcost
        totr = TOTP / tot2
        If IsNull(Rs("DBTAMT")) = False Then
            totd = totd + Rs("DBTAMT")
        End If
    
        ttot1 = ttot1 + Rs("bales")
        ttot2 = ttot2 + Rs("netwt")
        ttot3 = ttot3 + ITEMVALUE
        ttot4 = ttot4 + Rs("LRFRTAMT")
        ttot5 = ttot5 + VATVAL
        ttot6 = ttot6 + Rs("ldgulg")
'        Ttot20 = Ttot20 + dblVatAmt
        ttot7 = ttot7 + billvalue
        ttot8 = ttot8 + cratekg
        ttot9 = ttot9 + tratekg
        ttot12 = ttot12 + Rs("othersamt")
        ttot13 = ttot13 + IIf(IsNull(Rs("aedamt")), 0, Rs("aedamt")) + IIf(IsNull(Rs("bedamt")), 0, Rs("bedamt")) + IIf(IsNull(Rs("cessamt")), 0, Rs("cessamt")) + IIf(IsNull(Rs("sedamt")), 0, Rs("sedamt"))
        ttototherchrg = ttototherchrg + IIf(IsNull(Rs("commamt")), 0, Rs("commamt")) + IIf(IsNull(Rs("brkcom")), 0, Rs("brkcom"))
        TEMP = Rs("lotdt")
        
        Ttot20 = Ttot20 + dblVatAmt   'Vat Claimable

        ttotc = ttotc + cstval
        TTOTP = TTOTP + purcost
        Ttotr = TTOTP / ttot2
        If IsNull(Rs("DBTAMT")) = False Then
            TTOTD = TTOTD + Rs("DBTAMT")
        End If
        cnt = cnt + 1
        VATVAL = 0
        cstval = 0
        Rs.MoveNext
        tot10 = tot8 / cnt
        tot11 = tot9 / cnt
           If co > 60 Then
                Print #a, String(233, "-")
                Print #a, Chr(12)
                co = 0
                pg = pg + 1
                Call header3(co, pg, rs1, CStr(W), CStr(X))
           End If
    Loop
'     If daytotal > 1 Then
'        Print #a, Space(88); String(140, "-")
'        Print #a, Chr(27) + "E" & Space(0); Space(88); Padl("** Date Total  **", 23, " "); Space(2); Padl(INF(ttot1, 0), 6, "  "); Space(1); Padl(INF(ttot2, 2), 10, "  "); Space(1); Space(11); Padl(INF(ttot10, 2), 6, " "); Space(3); Padl(INF(ttot3, 2), 15, " "); Space(1);
'        Print #a, Padl(INF(ttot5, 2), 10, " "); Space(0); Padl(INF(ttotc, 2), 10, " "); Space(1); Padl(INF(ttot12, 2), 5, " "); Space(1); Padl(INF(ttot7, 2), 12, " "); Space(0); Padl(INF(ttot5, 2), 10, " "); Space(1); Padl(INF(ttotS4, 2), 12, " "); Space(2) & Chr(27) & "F"
'        Print #a, Chr(27) + "E" & Space(178); Padl(INF(TTOTD, 2), 12, " "); Space(7); Padl(INF(TTOTP, 2), 12, " "); Space(0); Padl(INF(Ttotr, 2), 10, " "); Space(1); Padl(INF(TTOTf4, 2), 12, " ") & Chr(27) & "F"
'        'Print #a, Chr(27) + "F"
'        Print #a, Space(90); String(140, "-")
'    End If
    If co > 9 And DayTotal > 1 Then
        'Print #a,
        Print #a, Chr(27) + "E" & Space(0); Space(47); Padl("** Date Total  **", 24, " "); Space(2); Padl(INF(ttot1, 0), 5, "  "); Space(1); Padl(INF(ttot2, 2), 10, "  "); Space(1); Space(10); Space(1); Padl(INF(ttot10, 2), 8, " "); Space(1); Padl(INF(ttot3, 2), 12, " "); Space(1);
        Print #a, Padl(INF(ttot5, 2), 10, " "); Space(1); Padl(INF(ttotc, 2), 10, " "); Space(1); Padl(INF(ttot12, 2), 9, " "); Space(1); Padl(INF(ttot7, 2), 14, " "); Space(1); Padl(INF(Ttot20, 2), 9, " "); Space(1); Padl(INF(TTOTD, 2), 12, " "); Space(1); Padl(INF(ttot4, 2), 12, " "); Space(1); Padl(INF(ttototherchrg, 2), 12, " "); Space(1); Padl(INF(TTOTP, 2), 14, " ")
        'Print #a, Padl(INF(0, 2), 12, " "); Space(1); Padl(INF(TTOTP, 2), 14, " ") & Chr(27) & "F"
        'Print #a, Chr(27) + "E" & Space(133); Padl(INF(TTOTD, 2), 12, " "); Space(7); Padl(INF(TTOTP, 2), 12, " "); Space(0); Padl(INF(Ttotr, 2), 10, " "); Space(3); Padl(INF(ttotf4, 2), 10, " ") & Chr(27) & "F"
        Print #a, Space(129); Padl(INF(ttot13, 2), 15, " "); Chr(27) + "F"
        co = co + 4
        Print #a,
        dblVatAmt = 0
    End If
'    Print #a, String(235, "-")
'    Print #a, Chr(27) + "E" & Space(2); Space(95); Padl(" ** TOTAL  ** ", 14, " "); Space(0); Padl(INF(tot1, 0), 6, "  "); Space(0); Padl(INF(tot2, 2), 12, "  "); Space(1); Space(9); Padl("", 8, " "); Space(3); Padl(INF(tot3, 2), 15, " "); Space(1);
'    Print #a, Space(8); Padl(INF(totc, 2), 12, " "); Space(5); Padl(INF(tot7, 2), 14, " "); Space(11); Padl(INF(tots4, 2), 11, " "); Space(2) & Chr(27) & "F"
'    Print #a, Chr(27) + "E" & Space(166); Padl(INF(tot5, 2), 10, " "); Space(10); Padl(INF(tot12, 2), 7, " "); Space(13); Padl(INF(tot5, 2), 12, " "); Space(2) & Chr(27) & "F"
'    Print #a, Chr(27) + "E" & Space(178); Padl(INF(totd, 2), 12, " "); Space(7); Padl(INF(TOTP, 2), 12, " "); Space(0); Padl(INF(totr, 2), 10, " "); Space(1); Padl(INF(totF4, 2), 12, " ") & Chr(27) & "F"
'    Print #a, String(235, "-")
    Print #a, String(233, "-")
    Print #a, Chr(27) + "E" & Space(0); Space(47); Padl("** TOTAL  **", 24, " "); Space(2); Padl(INF(tot1, 0), 5, "  "); Space(1); Padl(INF(0, 2), 10, "  "); Space(1); Space(10); Space(1); Padl(INF(0, 2), 6, " "); Space(1); Padl(INF(tot3, 2), 14, " "); Space(1);
    Print #a, Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(totc, 2), 10, " "); Space(1); Padl(INF(0, 2), 7, " "); Space(1); Padl(INF(tot7, 2), 16, " "); Space(1); Padl(INF(0, 2), 7, " "); Space(1); Padl(INF(totd, 2), 14, " "); Space(1); Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(tototherchrg, 2), 14, " "); Space(1); Padl(INF(0, 2), 14, " "); Chr(27); "E"
    Print #a, Chr(27) + "E" & Space(0); Space(47); Padl("            ", 24, " "); Space(2); Padl(INF(0, 0), 3, "  "); Space(1); Padl(INF(tot2, 2), 12, "  "); Space(1); Space(8); Space(1); Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(0, 2), 10, " "); Space(1);
    Print #a, Padl(INF(tot5, 2), 12, " "); Space(1); Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(tot12, 2), 9, " "); Space(1); Padl(INF(0, 2), 12, " "); Space(1); Padl(INF(Ttot20, 2), 11, " "); Space(1); Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(ttot4, 2), 14, " "); Space(1); Padl(INF(0, 2), 10, " "); Space(1); Padl(INF(TOTP, 2), 16, " "); Chr(27); "E"
    Print #a, Chr(27) + "E" + Space(129); Padl(INF(ttot13, 2), 15, " "); Chr(27) + "F"
    Print #a, String(233, "-")
    Print #a,
    Print #a,
    Print #a,
    Print #a,
    Call footermod(CInt(a), UserFooter1.SelectedStr, 135)
    Print #a, Chr(12) 'page break
    Close #a
    a = FreeFile
'    Open "c:\inv.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type inv.txt>prn"
'    Close #a
'    Rep.txtfile = "c:\inv.txt"
'    Rep.Batfile = "c:\inv.bat"
Call KALBATPROCESS("inv")
intervalMinutes = -1
End If
Screen.MousePointer = 0
Exit Sub
cmdreport_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdreport_Click of Form datewisecottonreceiptregister"
End Sub
Private Sub header3(co As Integer, pg As Integer, rs1 As Recordset, W As String, X As String)
intervalMinutes = -1
On Error GoTo header3_Error
Set rs1 = New Recordset
rs1.Open "SELECT DIVNAME,ABBR,PHONE1,PHONE2 FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", cn, adOpenStatic, adLockOptimistic
temp1 = Left(rs1("DIVNAME"), 31)
Print #a, Chr(18)
Print #a, Chr(27) + "E" + CENTRE(temp1, 130, " ") + Chr(27) + "F"
Print #a, Chr(15)
temp2 = CStr(pdate)
Print #a, "Raw Material Receipts List " & Space(1) & "from" & Space(1) & Format(W, "dd/mm/yy") & Space(1) & "to" & Space(1) & Format(X, "dd/mm/yy") & CENTRE("Option : Datewise" & "   " & "Category : " & Mid$(cmb_category, 1, InStr(1, cmb_category, " - ") - 1), 152, " ") & Format(temp2, "dd/mm/yy") & Space(4) & "Pg.:" & Space(3) & Padl(pg, 3, " ")
Print #a, String(233, "-")
Print #a, "Received Date                                                                                  Rate/"
Print #a, "Supplier Name            Mill Broker Name     F.Inv.   PO. Mode  Variety   <--Received-->     Candy/    Rate/   Item Value        VAT        CST     Other           Bill       VAT      DR/Note    L.F(SPOT)        Other       Purchase"
Print #a, "                      Lot No.                    No.   No.                 Qty        Kgs      Qntl.       Kg                                         Exp.          Value Claimable      CR/Note    /L.F(FOR)      Charges           Cost"
Print #a, "Transport Name        Station Press                                                                                           (AED,BED,SED,CESS)                                                                                  Rate/KG"
Print #a, String(233, "-")
co = co + 10
Exit Sub
header3_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header3 of Form datewisecottonreceiptregister"
End Sub


Private Sub DTPicker2_Change()

On Error GoTo DTPicker2_Change_Error

If DTPicker2.value < yfdate Then
MsgBox "Date Should Be Greater Than or Equal to " & yfdate & "!", vbInformation, head
DTPicker2.value = mfdate
 DataCombo4.Text = DTPicker2.value
 Else
    DataCombo4.Text = DTPicker2.value
End If
Exit Sub

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DTPicker2_Change of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
intervalMinutes = -1
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error
Set cn = New Connection
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter
Set rep = New ReportView
intervalMinutes = -1
cn.Provider = "MSDATASHAPE"
cn.Open connectstring
'If REPINDEX = 50 Then
    Set rss = New Recordset
    'rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP from fa_slmas a where  a.slcode like 'C2%' ORDER BY SUP ", cn, adOpenStatic, adLockBatchOptimistic
    Set rs1 = New Recordset
    rs1.Open "Select * from masterlen ", DB, adOpenStatic
    sup = rs1("ptypecotton") '& "%"
    rss.Open "select distinct a.SLNAME+ ' - ' +A.SLCODE AS SUP,A.SLCODE from fa_slmas a where left(slcode,2) in (select Items from dbo.split('" & sup & "',',')) ORDER BY A.SLCODE ", cn, adOpenStatic, adLockBatchOptimistic
    Set Rs = New Recordset
    Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and rejflg='N' and DivCode ='" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
    'rs.Open "select distinct arrdt as arrdt from rm_LOT where  divcode='" & Divcode & "' and ARRDT between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'and rejflg='N' and lotyear='" & Year(yfdate) & "' order by arrDT ", cn, adOpenStatic, adLockBatchOptimistic
    If Rs.RecordCount <> 0 Then
      Set DataCombo3.RowSource = Rs
      DataCombo3.ListField = "lotdt"
      Set DataCombo4.RowSource = Rs
      DataCombo4.ListField = "lotdt"
      Rs.MoveFirst
      DataCombo3.Text = Rs(0)
      Rs.MoveLast
      DataCombo4.Text = Rs(0)
      
   ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo3.Left
    DTPicker1.Width = DataCombo3.Width
    DTPicker1.Top = DataCombo3.Top


    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo4.Left
    DTPicker2.Width = DataCombo4.Width
    DTPicker2.Top = DataCombo4.Top
''''''''''''''''''''''
    DTPicker1.tabIndex = 0
    DTPicker2.tabIndex = 1
    DataCombo1.tabIndex = 2
    DataCombo2.tabIndex = 3
    Combo1.tabIndex = 4
    cmdReport.tabIndex = 5
    CmdCancel.tabIndex = 6
    DataCombo1.Left = DataCombo2.Left
    DTPicker1.Left = DTPicker2.Left
    DataCombo2.Left = Combo1.Left
    DataCombo1.Left = DTPicker2.Left
    DataCombo1.Left = DTPicker1.Left
    Label3.Top = Label3.Top
    Combo1.Top = Combo1.Top
    Label2.Top = Label2.Top
    Command1.Visible = True
      
    End If

    If rss.RecordCount <> 0 Then
        Set DataCombo1.RowSource = rss
        DataCombo1.ListField = "SUP"
        Set DataCombo2.RowSource = rss
        DataCombo2.ListField = "SUP"
        rss.MoveFirst
        DataCombo1.Text = rss(0)
        rss.MoveLast
        DataCombo2.Text = rss(0)
'        Combo1.AddItem "FOR - F"
'        Combo1.AddItem "SPOT - S"
'        Combo1.AddItem "ALL - A"
'        Combo1.ListIndex = 0
        'DataCombo1.Index = 0
        'DataCombo2.Value = (DataCombo2.VisibleCount) - 1
     
        Set rs1 = New Recordset
        rs1.Open "Select Deldesc+ ' -  '+Delcode as catname from rm_Delivery order by Delcode", DB, adOpenStatic
        Combo1.Clear
        Combo1.AddItem "All - ALL"
        Do While Not rs1.EOF
            Combo1.AddItem rs1("catname")
            rs1.MoveNext
        Loop
        Combo1.ListIndex = 0

   End If
'End If
If Repindex = 1190 Then
    Me.Caption = "Receipt List - Datewise"
    cmb_category.Visible = True
    lbl_category.Visible = True
    Command2.Visible = True
    Check1.Visible = True
    Set rs1 = New Recordset
    rs1.Open "Select catname+ ' -  '+catcd as catname from rm_cat order by catcd", DB, adOpenStatic
    cmb_category.Clear
    cmb_category.AddItem "All - ALL"
    Do While Not rs1.EOF
        cmb_category.AddItem rs1("catname")
        rs1.MoveNext
    Loop
    cmb_category.ListIndex = 0
    
End If

If Repindex = 100 Then
    Label2.Left = Label1.Left
    Label3.Left = Label2.Left
    Label5.Left = Label1.Left
    Label6.Left = Label5.Left
    Label1.Caption = "From Party"
    Label2.Caption = "To Party"
    Label3.Caption = "Category"
    Label4.Caption = "Receipt List - Categorywise"
Set rss = New Recordset
rss.Open "select distinct a.SLNAME+ ' -- ' +a.SLCODE AS SUP,A.SLCODE from fa_slmas a ORDER BY A.SLCODE", cn, adOpenStatic, adLockBatchOptimistic
Set Rs = New Recordset
Rs.Open "select distinct lotdt from rm_lot where lotdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  '" & Format(yldate, "yyyy-mm-dd") & "' and lotyear='" & Year(yfdate) & "' and DivCode ='" & Divcode & "' order by lotdt ", cn, adOpenStatic, adLockBatchOptimistic
If Rs.RecordCount <> 0 Then
    Set DataCombo3.RowSource = Rs
    DataCombo3.ListField = "lotdt"
    Set DataCombo4.RowSource = Rs
    DataCombo4.ListField = "lotdt"
    Rs.MoveFirst
    DataCombo3.Text = Rs(0)
    Rs.MoveLast
    DataCombo4.Text = Rs(0)
    
       ''''''''''''''''''''''
    DTPicker1.Visible = True
    DTPicker1.ZOrder
    DTPicker1.MinDate = yfdate
    DTPicker1.Refresh
    DTPicker1.maxdate = pdate
    DTPicker1.value = mfdate
    DTPicker1.Left = DataCombo3.Left
    DTPicker1.Width = DataCombo3.Width
    DTPicker1.Top = DataCombo3.Top


    DTPicker2.Visible = True
    DTPicker2.ZOrder
    DTPicker2.MinDate = yfdate
    DTPicker2.Refresh
    DTPicker2.maxdate = pdate
    DTPicker2.value = pdate
    DTPicker2.Left = DataCombo4.Left
    DTPicker2.Width = DataCombo4.Width
    DTPicker2.Top = DataCombo4.Top
''''''''''''''''''''''

End If
DTPicker1.tabIndex = 0
DTPicker2.tabIndex = 1
DataCombo1.tabIndex = 2
DataCombo2.tabIndex = 3
Combo1.tabIndex = 4
cmdReport.tabIndex = 5
CmdCancel.tabIndex = 6

If Rs.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
         

If rss.RecordCount <> 0 Then
    Set DataCombo1.RowSource = rss
    DataCombo1.ListField = "SUP"
    Set DataCombo2.RowSource = rss
    DataCombo2.ListField = "SUP"
    rss.MoveFirst
    DataCombo1.Text = rss(0)
    rss.MoveLast
    DataCombo2.Text = rss(0)
    
    '''Following line commented as on 12-Jan-08, as per Mr.Saravanan instruction
    '''Combo1.AddItem "P - POLYSTER"
    '''Combo1.AddItem "V - VISCOS STAPLE FIBRE"
    '''Combo1.ListIndex = 0
    Dim RstCat As Recordset
    Set RstCat = New Recordset
    RstCat.Open "Select * from rm_Cat order by catcd", cn, adOpenStatic
    Combo1.Clear
    Do While Not RstCat.EOF
        Combo1.AddItem RstCat("CatCd") & " - " & RstCat("Catname")
        RstCat.MoveNext
    Loop
    Combo1.AddItem "A - ALL"
    Combo1.ListIndex = 0
    
End If

If rss.EOF Then
    MsgBox "No Records Found", vbInformation, head
    Screen.MousePointer = 0
    Exit Sub
End If
    End If
    intervalMinutes = -1
    If UCase(Trim(CustID)) = "KALPATHARU" Then
        Label3.Visible = False
        lbl_category.Visible = False
        Combo1.Visible = False
        cmb_category.Visible = False
    End If
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form datewisecottonreceiptregister"
End Sub


'Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
'intervalMinutes = -1
'End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load
    CROptionTab.Visible = False
Exit Sub
Option4_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_Click of Form ReceiptRegister", vbInformation, head
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
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option4_KeyDown of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False
intervalMinutes = -1
Exit Sub
Option5_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_Click of Form ReceiptRegister", vbInformation, head
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
        intervalMinutes = -1
End If

Exit Sub
Option5_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Option5_KeyDown of Form ReceiptRegister", vbInformation, head
Screen.MousePointer = 0
End Sub
Private Sub ReceiptReturn_Excel()

On Error GoTo LotwiseStockExcel_Error

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
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
 tmpFile = "Arrival List Datewise"
tmppath1 = KALFOLDERDATA & tmpFile & ".xls"
'If Check1.value Then
'Set oExcel = CreateObject("ket.Application")
'Else '
Set oExcel = CreateObject("Excel.Application")

'End If
Set oBook = oExcel.Workbooks.ADD
Set oSheet = oBook.Worksheets(1)

    oExcel.Visible = True
    Set oSheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        Dim stryear As String
        Set Rs = New Recordset
        Rs.Open "select AYEAR from pp_year where  '" & Format(yfdate, "yyyy-mm-dd") & "' between  ayfdate and AYLDATE ", DB
        If Not Rs.EOF Then
            stryear = Rs(0)
        End If
        
        Set Rs = New Recordset
        Rs.Open "select DIV_PRINTNAME ,DIV_UNITNAME from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        oSheet.Cells(1, 5).value = Rs(0)
        oSheet.Range("A1", "L1").MergeCells = True
         oSheet.Range("A1", "L1").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        
        oSheet.Cells(2, 5).value = Rs(1)
        oSheet.Range("A2", "L2").MergeCells = True
         oSheet.Range("A2", "L2").HorizontalAlignment = Excel.xlCenter
        With oSheet.Range("A2").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With

      
        oSheet.Name = "Stock Statement lotwise"
        
                
    intervalMinutes = -1
    U = Format(DTPicker1.value, "yyyy-mm-dd")
    v = Format(DTPicker2.value, "yyyy-mm-dd")
    

        fs = Trim(Right(DataCombo1.Text, 7))
        ts = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        U = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        v = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))


    Dim issuetype As String, lottype As String


   
      
        oSheet.Cells(3, 5).value = "Receipt Return List Form " & Format(U, "dd-mm-yyyy") & " to " & Format(v, "dd-mm-yyyy")
        oSheet.Range("A3", "L3").HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A3", "L3").MergeCells = True
        With oSheet.Range("A3", "L3").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        


        

        Set rst = New Recordset

        rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssMix' order by sno ", DB, adOpenStatic

        I = 1
        Dim TotCol As Integer
        TotCol = 0
        Do While Not rst.EOF
            oSheet.Cells(4, I).value = rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "L" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                
                  With oSheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit


        Set RsDiv = New Recordset



    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
   DB.Execute "delete from EXRPT_REC_RETLIST"
'
'
'    DB.Execute " set arithabort off "
    
     Set Rs = New Recordset
    
       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
       DB.Execute " insert into EXRPT_REC_RETLIST exec ksl_Rmi_ReceiptReturnList  '" & U & "' , '" & v & "' ,'" & fs & "','" & ts & "','" & Divcode & "'  "


       Rs.Open "SELECT *FROM VW_RM_IssuelistMixWise ORDER BY cntcode, sno  ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

       
            co = 7
            i1 = 1
            
            oSheet.Cells(5, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
'                osheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "L" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "L" & m_ROW
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With

                        
'
'                oSheet.Cells(m_ROW + 1, 6).Formula = "=SUM(a1(1):F" & m_ROW & ")"
'
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "L" & m_ROW
               
                

        
                
                With oSheet.Range(lr, HR)
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
                
                
                      '   Max = Max + 1
                            m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "L" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 11
                            .Color = vbBlue
                        End With
                
                
             '''''''-----------------------------    Abstract------------------------
'            For i = 6 To M_ROW
'                If InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Sub Tot")) > 0 Or InStr(UCase(Trim(osheet.Cells(i, 5))), UCase("Grand Tot")) > 0 Then
'
'                            osheet.Cells(i, 1) = ""
'                            osheet.Cells(i, 2) = ""
'                            osheet.Cells(i, 3) = ""
'
'                            lr = "A" & i
'                            HR = "S" & i
'                            With osheet.Range(lr, HR).Font
'                                .Bold = True
'                                .Size = 10
'                                .Color = &H80&
'                              '  .Interior.Color = &HE0E0E0
'                            End With
'                            With osheet.Range(lr, HR).Interior
'
'                                .Color = &HC0E0FF
'
'                            End With
'                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
'
'                 End If
'
'
'            Next i
'

        

         m_ROW = m_ROW + 5
        oSheet.Cells(m_ROW, 5).value = "Abstract"
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).HorizontalAlignment = Excel.xlCenter
        oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).MergeCells = True
        With oSheet.Range("A" + CStr(m_ROW), "K" + CStr(m_ROW)).Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        


        

        Set rst = New Recordset

        rst.Open "select distinct RptHead,sno from  RM_EXCELLRPTHEAD where Rptname='IssMixABS' order by sno ", DB, adOpenStatic
        m_ROW = m_ROW + 1
        I = 2
        m_ROW = m_ROW + 1
        TotCol = 0
        Do While Not rst.EOF
            oSheet.Cells(m_ROW, I).value = rst(0)
           ' oSheet.Cells(6, i).CopyFromRecordset Rst

            TotCol = TotCol + 1
            I = I + 1
        rst.MoveNext
        Loop
        
                m_ROW = oSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "K" & m_ROW
                With oSheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                oSheet.Range(lr, HR).Columns.AutoFit
                oSheet.Range(lr, HR).Rows.AutoFit
                With oSheet.Range(lr, HR).Interior
                              
                     .Color = &HE0E0E0
                            
                 End With

        Set RsDiv = New Recordset


    
    
'    DB.CommandTimeout = 1000
'    DB.Execute " set arithabort on "
'
'    DB.Execute "delete from RPTArrivalDetails"
''
''
''    DB.Execute " set arithabort off "
'
    Set Rs = New Recordset
'
'       ' Rs.Open " select * from VW_RM_ArrivalList where divcode='" & Divcode & "' and arrdate between '" & a & "' and '" & B & "'", DB
'       DB.Execute " insert into RPTArrivalDetails exec Ksp_RMI_ArrivalList_Datewise '" & Divcode & "' , '" & a & "' , '" & B & "' "
'
'
       Rs.Open "SELECT *FROM VW_RM_IssuelistMixWiseABS ORDER BY cntcode, catname  ", DB
        If Rs.EOF Then
            MsgBox "No Record Found", vbInformation, head
            Exit Sub
        End If

        
        
        
            co = 7
            i1 = 2
            
            oSheet.Cells(m_ROW + 2, i1).CopyFromRecordset Rs
                


                
                m = oSheet.UsedRange.Rows.Count
                Max = m + 1
                
                oSheet.Columns.AutoFit
                oSheet.Rows.AutoFit
                

                
                m_ROW = oSheet.UsedRange.Rows.Count + 1
                MR = "K" & m_ROW

                
                            m_ROW = oSheet.UsedRange.Rows.Count + 1
                            lr = "A" & m_ROW
                            HR = "K" & m_ROW
                            With oSheet.Range(lr, HR).Font
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
                
                m_ROW = oSheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & 1
                HR = "K" & m_ROW
                
                
 
'                For Each cell In Range("b2:b6")
'                    If InStr(cell.value, "Sub Total") > 0 Then
'                        cell.Offset(0, 1).value = ""
'                    End If
'                Next cell
                            
                
                With oSheet.Range(lr, HR)
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
                
                
                      '   Max = Max + 1
                                 m_ROW = oSheet.UsedRange.Rows.Count
                            lr = "A" & m_ROW - 1
                            HR = "K" & m_ROW - 1
                            With oSheet.Range(lr, HR).Font
                            .Bold = True
                            .Size = 9
                            .Color = vbBlue
                        End With
                

                For I = 6 To m_ROW
                If InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Mixing Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Grand Total")) > 0 Or InStr(UCase(Trim(oSheet.Cells(I, 5))), UCase("Grand Total")) > 0 Then
                      If InStr(UCase(Trim(oSheet.Cells(I, 3))), UCase("Grand Total")) > 0 Then
                            oSheet.Cells(I, 1) = ""
                            oSheet.Cells(I, 2) = ""
                            oSheet.Cells(I, 3) = "Grand Total"
                             lr = "A" & I
                            HR = "K" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            
                      
                      Else
                            oSheet.Cells(I, 1) = ""
                            oSheet.Cells(I, 2) = ""
                            oSheet.Cells(I, 4) = ""
                             oSheet.Cells(I, 5) = ""
                       oSheet.Cells(I, 6) = ""
                            lr = "A" & I
                            HR = "L" & I
                            With oSheet.Range(lr, HR).Font
                                .Bold = True
                                .Size = 10
                                .Color = &H80&
                              '  .Interior.Color = &HE0E0E0
                            End With
                            With oSheet.Range(lr, HR).Interior
                              
                                .Color = &HC0E0FF
                            
                            End With
                            'osheet.Cells(0, 1).EntireRow.Font.Bold = True
                    End If
                 End If
      
             
            Next I


             MsgBox "Excel File Downloaded Successfully", vbInformation, head

                Set oBook = Nothing
                Set oSheet = Nothing
                Set Myxl = Nothing
                Set oExcel = Nothing


Exit Sub
LotwiseStockExcel_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure StockStationwiseReport of Form StockStatmentReport", vbInformation, head
Screen.MousePointer = 0
  
End Sub


Private Sub ReceiptListDtWiseExl()
On Error GoTo cmdExcel_Click_Error

Dim CustCode As Variant
Dim custname As Variant
Dim custname1 As Variant
Dim ContNo As Variant
Dim sortname As Variant
Dim rate As Variant
Dim delqty As Variant
Dim DesQty As Variant
Dim balqty As Variant
Dim FSort As String
Dim TSort As String
Dim PrvDt As String

    Dim Cnn As Connection
    Set Cnn = New Connection
    Dim CntCode As String
    Cnn.Open connectstring
    
    tmpFile = "Details"
    tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
    
    'Create the Excel Application Object.
    '06-02-2020
    Set Myxl = New Excel.Application
    'Set Myxl = New ET.Application
    
    'Create new Excel Workbook
    Set XLBook = Myxl.Workbooks.ADD
    Set XLSheet = XLBook.Worksheets(1)
    Myxl.Worksheets(1).Name = "Details"
    
    ExcelBtn = "Excel"

CustCode = "": custname = "": ContNo = "": sortname = "": PrvDt = "":
        Set XLSheet = Myxl.ActiveSheet
 
        
        
        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
'        XLSheet.Range("D:D").NumberFormat = "dd/mm/yyyy"
'        XLSheet.Range("I:I").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("K:K").NumberFormat = "#,##,##,##,###"
        XLSheet.Range("L:L").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("M:M").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("N:N").NumberFormat = "#,##,##,##,###.000#"
      '  XLSheet.Range("O:O").NumberFormat = "#,##,##,##,###.000#"
      '  XLSheet.Range("P:P").NumberFormat = "#,##,##,##,###.000#"
        XLSheet.Range("Q:Q").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("S:S").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("T:T").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("U:U").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("V:V").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("W:W").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("X:X").NumberFormat = "#,##,##,##,###.00#"
        XLSheet.Range("B:B").NumberFormat = "dd-mm-yyyy"
        XLSheet.Range("J:J").NumberFormat = "dd-mm-yyyy"

      '  Divcode = Trim(Mid$(DataCombo9.Text, 1, InStr(DataCombo9.Text, "-") - 1))
        
'        Set Rs = New Recordset
'        Rs.Open "SELECT div_printname,DIV_UNITNAME FROM PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB
'
'
'        XLSheet.Cells(1, 5).value = Rs(0)
'        XLSheet.Range("A1", "M1").MergeCells = True
'        With XLSheet.Range("A1").Font
'        .Bold = True
'        .Size = 12
'        .Color = vbBlue
'        End With
'
'        XLSheet.Cells(2, 5).value = Rs(1)
'        XLSheet.Range("A2", "M2").MergeCells = True
'        With XLSheet.Range("A2").Font
'        .Bold = True
'        .Size = 9
'        .Color = vbBlue
'        End With
        
         Set Rs = New Recordset
        Rs.Open "select divname ,unit_name,isnull(add1,'') add1,isnull(add2,'') +' , '+isnull(add3,'')+' , '+isnull(city,'')+' - '+isnull(pincode,'')  adds,PHONE1  from pp_divmas where divcode='" & Divcode & "'", DB
        
        
        
        XLSheet.Cells(1, 8).value = Rs(0)
        XLSheet.Range("A1", "U1").MergeCells = True
        XLSheet.Range("A1", "U1").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A1").Font
        .Bold = True
        .Size = 16
        .Color = vbBlue
        End With
        XLSheet.Cells(2, 8).value = Rs(2)
        XLSheet.Range("A2", "U2").MergeCells = True
         XLSheet.Range("A2", "U2").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A2").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        
        
        XLSheet.Cells(3, 8).value = Rs(3)
        XLSheet.Range("A3", "U3").MergeCells = True
         XLSheet.Range("A3", "U3").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A3").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        
        XLSheet.Cells(4, 8).value = "Phone No.- " + Rs(4)
        XLSheet.Range("A4", "U4").MergeCells = True
         XLSheet.Range("A4", "U4").HorizontalAlignment = Excel.xlCenter
        With XLSheet.Range("A4").Font
        .Bold = True
        .Size = 14
        .Color = vbBlue
        End With
        
        
        
'        costr = Trim(Mid(Combo1.Text, InStr(1, Combo1.Text, "-") + 1, Len(Combo1.Text)))
'        cat = Trim(Right(cmb_category.Text, 3))
        U = Trim(Right(DataCombo1.Text, 7))
        v = Trim(Right(DataCombo2.Text, 7))
        DataCombo3.Text = DTPicker1.value
        DataCombo4.Text = DTPicker2.value
        W = Trim(Format(DataCombo3.Text, "yyyy-mm-dd"))
        X = Trim(Format(DataCombo4.Text, "yyyy-mm-dd"))
        
  

        XLSheet.Cells(7, 5).value = "Receipt List Report From " & Format(W, "DD/MM/YY") & " To " & Format(X, "DD/MM/YY")

        XLSheet.Range("A7", "X7").MergeCells = True
        With XLSheet.Range("A7", "X7").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
  
       ' DB.Execute "Exec sp_receiptlist_dw '" & Format(W, "YYYY-MM-DD") & "','" & Format(X, "YYYY-MM-DD") & "','" & U & "','" & v & "','" & Divcode & "'"
        
        Set Rs = New Recordset
        Rs.Open "Exec sp_receiptlist_dw '" & Format(W, "YYYY-MM-DD") & "','" & Format(X, "YYYY-MM-DD") & "','" & U & "','" & v & "','" & Divcode & "'", DB, adOpenStatic, adLockPessimistic
            If Rs.RecordCount > 0 Then
                
                XLSheet.Cells(8, 1).value = "S.No"
                XLSheet.Cells(8, 2).value = "ArrivalDate"
                XLSheet.Cells(8, 3).value = "Arrival No."
              '  XLSheet.Cells(8, 4).value = "Arrival Date"
                XLSheet.Cells(8, 4).value = "Lot No."
                XLSheet.Cells(8, 5).value = "Variety"
                XLSheet.Cells(8, 6).value = "Supplier Name"
                XLSheet.Cells(8, 7).value = "Area"
                XLSheet.Cells(8, 8).value = "Vehicle No."
                XLSheet.Cells(8, 9).value = "Bill No"
                XLSheet.Cells(8, 10).value = "Bill Date"
                XLSheet.Cells(8, 11).value = "Qty. in Bales"
                XLSheet.Cells(8, 12).value = "Supplier Net Wt."
                XLSheet.Cells(8, 13).value = "Mill Net Wt."
                XLSheet.Cells(8, 14).value = "WT. Diff"
                XLSheet.Cells(8, 15).value = "UOM"
                XLSheet.Cells(8, 16).value = "Rate"
                XLSheet.Cells(8, 17).value = "Bill Value"
                XLSheet.Cells(8, 18).value = "GST Value"
                XLSheet.Cells(8, 19).value = "Freight"
                XLSheet.Cells(8, 20).value = "Total Landing Cost"
                XLSheet.Cells(8, 21).value = "Rate/Kg"
 
              '  XLSheet.Cells(8, 25).value = "ERROR"
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "Y" & m_ROW
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
                
                 ''''''''''-------------
                 If STRSTART = "" Then
                    STRSTART = Max
                    STmaxRowStart = STRSTART
                End If
               
                    
                If Format(PrvDt, "dd/MM/yyyy") = "" Then
                    PrvDt = Rs("arrdt")
                    SubTotRow = m_ROW
                End If

                   If Format(PrvDt, "dd/MM/yyyy") <> Format(Rs("arrdt"), "dd/MM/yyyy") Then
                     Max = Max + 1
                     
                    Glr = "A" & m_ROW + 1
                    GHR = "Y" & m_ROW + 1
                    
                    STmax = Max
                    STmax = STmax - 1 ' Subtotal row
                    
                    STmaxRowEnd = Max
                    STmaxRowEnd = STmaxRowEnd - 2 ' Subtotal row ended

                    With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbRed
                        .Font.Bold = True
                    End With
                    
                    
                   
                
                    
                    XLSheet.Cells(STmax, 5).value = "Day Total"
                    XLSheet.Cells(STmax, 11).Formula = "=SUM(K" & STmaxRowStart & ":K" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 12).Formula = "=SUM(L" & STmaxRowStart & ":L" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 13).Formula = "=SUM(M" & STmaxRowStart & ":M" & STmaxRowEnd & ")"
                   ' XLSheet.Cells(STmax, 14).Formula = "=SUM(N" & STmaxRowStart & ":N" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 15).Formula = "=SUM(O" & STmaxRowStart & ":O" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 16).Formula = "=SUM(P" & STmaxRowStart & ":P" & STmaxRowEnd & ")"
                    
'                    XLSheet.Cells(STmax, 17).Formula = "=SUM(Q" & STmaxRowStart & ":Q" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 17).Formula = "=SUM(Q" & STmaxRowStart & ":Q" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 18).Formula = "=SUM(R" & STmaxRowStart & ":S" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 19).Formula = "=SUM(S" & STmaxRowStart & ":S" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 20).Formula = "=SUM(T" & STmaxRowStart & ":T" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 22).Formula = "=SUM(V" & STmaxRowStart & ":V" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 23).Formula = "=SUM(W" & STmaxRowStart & ":W" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 24).Formula = "=SUM(X" & STmaxRowStart & ":X" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 25).Formula = "=SUM(Y" & STmaxRowStart & ":Y" & STmaxRowEnd & ")"
                    
                    PrvDt = ""
                    SubTotRow = ""
                    STRSTART = Max
                    STmaxRowStart = STRSTART
                    STmaxRowEnd = ""
                   End If
                ''''''''''-------------
                
                
                XLSheet.Cells(Max, 1) = I + 1
            
                XLSheet.Cells(Max, 2) = Format(Trim((Rs.Fields("arrdt"))), "dd/mmM/yyyy")
                XLSheet.Cells(Max, 3) = Trim(Rs.Fields("arrno"))
                XLSheet.Cells(Max, 4) = Trim(Rs.Fields("lotno"))
                XLSheet.Cells(Max, 5) = Trim(Rs.Fields("varname"))
                XLSheet.Cells(Max, 6) = Trim(Rs.Fields("supplier"))
                XLSheet.Cells(Max, 7) = Trim(Rs.Fields("area"))
                XLSheet.Cells(Max, 8) = Trim(Rs.Fields("lorrynos"))
                XLSheet.Cells(Max, 9) = Trim(Rs.Fields("billno"))
             
                XLSheet.Cells(Max, 10) = Format(Trim((Rs.Fields("BILLDT"))), "dd/mmM/yyyy")
                XLSheet.Cells(Max, 11) = Trim(Rs.Fields("bales"))
                totalpacks = totalpacks + Rs.Fields("bales")
                
'                XLSheet.Cells(Max, 12) = Format(IIf(IsNull(Rs.Fields("RATE_EX")), 0#, Rs.Fields("RATE_EX")), "##,##,##,##,###.00")
'                rate_ex = rate_ex + Rs.Fields("RATE_EX")
                
'                XLSheet.Cells(Max, 12) = Format(IIf(IsNull(Rs.Fields("RATE_KG")), 0, Rs.Fields("RATE_KG")), "##,##,##,##,###.00")
'                rate_kg = rate_kg + Rs.Fields("RATE_KG")
                XLSheet.Cells(Max, 12) = Format(IIf(IsNull(Rs.Fields("pnetwt")), 0, Rs.Fields("pnetwt")), "##,##,##,##,###.000")
                PartyNetwt = PartyNetwt + Rs.Fields("pnetwt")
                
                XLSheet.Cells(Max, 13) = Format(IIf(IsNull(Rs.Fields("netwt")), 0, Rs.Fields("netwt")), "##,##,##,##,###.000")
                Millnetwt = Millnetwt + Rs.Fields("netwt")
                XLSheet.Cells(Max, 14) = Format(IIf(IsNull(Rs.Fields("netwt")), 0, Rs.Fields("netwt")) - IIf(IsNull(Rs.Fields("pnetwt")), 0, Rs.Fields("pnetwt")), "##,##,##,##,###.000")
                WeightDiff = WeightDiff + IIf(IsNull(Rs.Fields("netwt")), 0, Rs.Fields("netwt")) - IIf(IsNull(Rs.Fields("pnetwt")), 0, Rs.Fields("pnetwt"))
                
                XLSheet.Cells(Max, 15) = Trim(Rs.Fields("uom"))
                XLSheet.Cells(Max, 16) = Trim(Rs.Fields("rate"))
         
                XLSheet.Cells(Max, 17) = Format(IIf(IsNull(Rs.Fields("billvalue")), 0, Rs.Fields("billvalue")), "##,##,##,##,###.00")
                billvalue = billvalue + Rs.Fields("billvalue")
                
                XLSheet.Cells(Max, 18) = Format(IIf(IsNull(Rs.Fields("gstamt")), 0, Rs.Fields("gstamt")), "##,##,##,##,###.00")
                gstamt = gstamt + Rs.Fields("gstamt")
                XLSheet.Cells(Max, 19) = Format(IIf(IsNull(Rs.Fields("freight")), 0, Rs.Fields("freight")), "##,##,##,##,###.00") 'Trim(Rs.Fields("TaxableValue"))
                freightAmt = freightAmt + Rs.Fields("freight")
                XLSheet.Cells(Max, 20) = Format(IIf(IsNull(Rs.Fields("totalvalue")), 0, Rs.Fields("totalvalue")), "##,##,##,##,###.00")
                totalvalue = totalvalue + Rs.Fields("totalvalue")
                
                XLSheet.Cells(Max, 21) = Trim(Rs.Fields("RateKg"))


                Rs.MoveNext
                Max = Max + 1
                
                Next I
                
                ''''''''''-------------START
                    If Format(PrvDt, "dd/MM/yyyy") = Format(PrvDt, "dd/MM/yyyy") Then
                     Max = Max + 1
                     
                    Glr = "A" & m_ROW + 2
                    GHR = "Y" & m_ROW + 2
                    
                    STmax = Max
                    STmax = STmax - 1 ' Subtotal row
                    
                    STmaxRowEnd = Max
                    STmaxRowEnd = STmaxRowEnd - 2 ' Subtotal row ended

                    With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbRed
                        .Font.Bold = True
                    End With
                    
                    XLSheet.Cells(STmax, 5).value = "Day Total"
                    XLSheet.Cells(STmax, 11).Formula = "=SUM(K" & STmaxRowStart & ":K" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 12).Formula = "=SUM(L" & STmaxRowStart & ":L" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 13).Formula = "=SUM(M" & STmaxRowStart & ":M" & STmaxRowEnd & ")"
                  '  XLSheet.Cells(STmax, 14).Formula = "=SUM(N" & STmaxRowStart & ":N" & STmaxRowEnd & ")"
                    
'                    XLSheet.Cells(STmax, 15).Formula = "=SUM(O" & STmaxRowStart & ":O" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 16).Formula = "=SUM(P" & STmaxRowStart & ":P" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 17).Formula = "=SUM(Q" & STmaxRowStart & ":Q" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 18).Formula = "=SUM(R" & STmaxRowStart & ":R" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 19).Formula = "=SUM(S" & STmaxRowStart & ":S" & STmaxRowEnd & ")"
                    XLSheet.Cells(STmax, 20).Formula = "=SUM(T" & STmaxRowStart & ":T" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 21).Formula = "=SUM(U" & STmaxRowStart & ":U" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 22).Formula = "=SUM(V" & STmaxRowStart & ":V" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 23).Formula = "=SUM(W" & STmaxRowStart & ":W" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 24).Formula = "=SUM(X" & STmaxRowStart & ":X" & STmaxRowEnd & ")"
'                    XLSheet.Cells(STmax, 25).Formula = "=SUM(Y" & STmaxRowStart & ":Y" & STmaxRowEnd & ")"

                    XLSheet.Range("J" & STmaxRowStart & ":J" & STmaxRowEnd).NumberFormat = "dd-mm-yyyy"
                    PrvDt = ""
                    SubTotRow = ""
                    STRSTART = Max
                    STmaxRowStart = STRSTART
                    STmaxRowEnd = ""
                   End If
                ''''''''''-------------END
                
               
                XLSheet.Columns.AutoFit
                XLSheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                MR = "Y" & m_ROW
                
                XLSheet.Cells(m_ROW + 3, 11) = Format(totalpacks, "##,##,##,##,###") 'Packs
                XLSheet.Cells(m_ROW + 3, 12) = Format(PartyNetwt, "##,##,##,##,###.000") 'Net wt in kgs
                XLSheet.Cells(m_ROW + 3, 13) = Format(Millnetwt, "##,##,##,##,###.000") 'Value
               ' XLSheet.Cells(m_ROW + 3, 14) = Format(WeightDiff, "##,##,##,##,###.000") ' ASs Value
                
                XLSheet.Cells(m_ROW + 3, 17) = Format(billvalue, "##,##,##,##,###.00")
                XLSheet.Cells(m_ROW + 3, 18) = Format(gstamt, "##,##,##,##,###.00") ' CGST Amt
                XLSheet.Cells(m_ROW + 3, 19) = Format(freightAmt, "##,##,##,##,###.00") ' SGST Amt
                XLSheet.Cells(m_ROW + 3, 20) = Format(totalvalue, "##,##,##,##,###.00") ' IGST Amt
             '   XLSheet.Cells(m_ROW + 3, 25).Formula = "=SUM(Y9:Y" & m_ROW & ")" ' Invoice Amt
               ' XLSheet.Cells(m_ROW + 3, 26) = Format(total_amt, "#,#,#,#,###.00") ' Invoice Amt
                
                XLSheet.Cells(m_ROW + 3, 6) = "Grand Total"
                
                
                m_ROW = XLSheet.UsedRange.Rows.Count
                
                lr = "A" & m
                HR = "Y" & m_ROW
                
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
                
                Glr = "A" & m_ROW
                GHR = "Y" & m_ROW
                
                 With XLSheet.Range(Glr, GHR)
                        .Borders.LineStyle = xlThin
                        .Font.Size = 10
                        .Font.Color = vbBlue
                        .Font.Bold = True
                End With
                    
                Myxl.Application.Visible = True
                
                Set XLSheet = Nothing
                Set Myxl = Nothing
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If

   Exit Sub
cmdExcel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmdExcel_Click_Error of Form receipt Register", vbInformation, head
Screen.MousePointer = 0
   
End Sub
