VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frmksltotally 
   ClientHeight    =   8055
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11535
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   8055
   ScaleWidth      =   11535
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Height          =   2415
      Left            =   720
      TabIndex        =   11
      Top             =   480
      Width           =   10095
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
         Left            =   360
         TabIndex        =   12
         Top             =   1560
         Width           =   795
      End
      Begin MSComctlLib.ListView Lit_Division 
         Height          =   1815
         Left            =   1560
         TabIndex        =   13
         Top             =   240
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   3201
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
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Width           =   1005
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1425
      Left            =   2205
      TabIndex        =   2
      Top             =   3270
      Width           =   6015
      Begin VB.OptionButton Opt_RMI 
         Caption         =   "RMI"
         Height          =   255
         Left            =   3240
         TabIndex        =   10
         Top             =   1440
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.OptionButton Opt_sinvy 
         Caption         =   "Store Inventory"
         Height          =   255
         Left            =   1440
         TabIndex        =   9
         Top             =   1440
         Value           =   -1  'True
         Visible         =   0   'False
         Width           =   1455
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "mmm-yy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   315
         Left            =   2325
         TabIndex        =   3
         Top             =   420
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   154599427
         CurrentDate     =   39515
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "mmm-yy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         Height          =   315
         Left            =   2325
         TabIndex        =   8
         Top             =   990
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         CustomFormat    =   "dd/MM/yyyy"
         Format          =   154599427
         CurrentDate     =   39515
      End
      Begin VB.Label Label2 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         Caption         =   "To Date : "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   315
         Left            =   255
         TabIndex        =   7
         Top             =   990
         Width           =   1335
      End
      Begin VB.Label Label1 
         Appearance      =   0  'Flat
         BackColor       =   &H80000000&
         Caption         =   "From Date : "
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000008&
         Height          =   315
         Left            =   255
         TabIndex        =   4
         Top             =   420
         Width           =   1335
      End
   End
   Begin VB.CommandButton cmdexit 
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   5160
      TabIndex        =   1
      Top             =   4860
      Width           =   975
   End
   Begin VB.CommandButton cmdExcel 
      Caption         =   "EXCEL"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   4065
      TabIndex        =   0
      Top             =   4860
      Width           =   975
   End
   Begin Crystal.CrystalReport CrystalRep 
      Left            =   12660
      Top             =   2700
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin MSComctlLib.ListView lv_div 
      Height          =   420
      Left            =   1680
      TabIndex        =   6
      Top             =   1200
      Visible         =   0   'False
      Width           =   0
      _ExtentX        =   0
      _ExtentY        =   741
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
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Text            =   "Division Name "
         Object.Width           =   12347
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Text            =   "Code"
         Object.Width           =   2540
      EndProperty
   End
   Begin VB.Label heading 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "KALSOFTE TO ACCOUNTS DATA TRANSFER"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   330
      Left            =   2400
      TabIndex        =   5
      Top             =   120
      Width           =   6045
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00C00000&
      BorderWidth     =   2
      Height          =   2250
      Left            =   2055
      Top             =   3105
      Width           =   6285
   End
End
Attribute VB_Name = "frmksltotally"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim sql As String
Dim cnt As Integer
Dim pg As Integer
Dim divname As String
Public SalesType As String
Dim a As Integer

Dim SubApp As Integer
Dim RsVAT As New ADODB.Recordset
Dim RsVAt1 As New ADODB.Recordset
Dim Strstate As String
Dim Strvat As String
Dim CATTC As String

Private Sub Check1_Click()
If Check1.value = 1 Then
        For I = 1 To Lit_Division.ListItems.Count
          Lit_Division.ListItems.Item(I).Checked = True
        Next I

    Else
        For I = 1 To Lit_Division.ListItems.Count '- 1
             Lit_Division.ListItems.Item(I).Checked = False
        Next I
    End If
End Sub

Private Sub cmdExcel_Click()
    intervalMinutes = -1
        ksl_tally_data_rmi
        intervalMinutes = -1
End Sub

Private Sub CmdExit_Click()
intervalMinutes = -1
Unload Me
End Sub

Private Sub CmdJV_Click()
intervalMinutes = -1
    rmiissuep.Show
End Sub

Private Sub Form_Activate()
DTPicker1.value = mfdate
DTPicker2.value = mldate '(pdate, "dd/mm/yyyy")
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
DTPicker1.MinDate = yfdate
DTPicker1.maxdate = yldate

DTPicker1.value = Format(DTPicker1.value, "dd/MM/yyyy")
DTPicker2.value = Format(DTPicker1.value, "dd/MM/yyyy")
intervalMinutes = -1
Call LoadDivisionList
Me.Caption = "Kalsofte To Accounts Data Transfer"
End Sub

Private Sub ksl_tally_data()
'On Error GoTo Err1
intervalMinutes = -1
intervalMinutes = -1
Dim Rs As New ADODB.Recordset
Dim SNO As Integer
Dim rptv As ReportView
Dim Strvalue As String
Dim gDblVat As Double
Dim gDblCst As Double

Dim StrTaxper, strcat As String
Dim Dblvalue As Double
Dim DblTAxamt As Double

Dim DB As Connection
Dim RsDiv As New ADODB.Recordset
Dim GTax As Double, GValue As Double

Dim S_totinvval As Double, S_totfrtval As Double, S_totinsval As Double, S_tototherval As Double, S_tottaxableval As Double, S_totcgstval As Double, S_totsgstval As Double, S_totigstval As Double, S_totrcmval As Double

Dim S_ABS_totqty As Double, S_ABS_invval As Double, S_ABS_frtval As Double, S_ABS_insval As Double, S_ABS_taxableval As Double, S_ABS_sgstval As Double, S_ABS_cgstval As Double, S_ABS_igstval As Double

intervalMinutes = -1
tmpFile = "GSTR1"

tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"

'Set oExcel = CreateObject("Excel.Application")

'If Option3.Value = True Then
 '   Set oExcel = CreateObject("KET.Application")
'ElseIf Option4.Value = True Then
    Set oExcel = CreateObject("Excel.Application")
'End If

intervalMinutes = -1
Set oBook = oExcel.Workbooks.ADD

Set oSheet = oBook.Worksheets(1)
oExcel.Visible = True

    oSheet.Range("A1").ColumnWidth = 15.5
    oSheet.Range("B1").ColumnWidth = 15.5
    oSheet.Range("C1").ColumnWidth = 15.5
    oSheet.Range("D1").ColumnWidth = 15.5
    oSheet.Range("E1").ColumnWidth = 15.5
    oSheet.Range("F1").ColumnWidth = 15.5
    oSheet.Range("G1").ColumnWidth = 50.5
    oSheet.Range("H1").ColumnWidth = 15.5
    oSheet.Range("I1").ColumnWidth = 15.5
    oSheet.Range("J1").ColumnWidth = 15.5
    oSheet.Range("K1").ColumnWidth = 15.5
    oSheet.Range("L1").ColumnWidth = 15.5
    oSheet.Range("M1").ColumnWidth = 15.5
    oSheet.Range("N1").ColumnWidth = 15.5
    oSheet.Range("O1").ColumnWidth = 15.5
    oSheet.Range("P1").ColumnWidth = 15.5
    oSheet.Range("Q1").ColumnWidth = 15.5
    oSheet.Range("R1").ColumnWidth = 15.5
    oSheet.Range("S1").ColumnWidth = 15.5
    oSheet.Range("T1").ColumnWidth = 15.5
    oSheet.Range("U1").ColumnWidth = 15.5
    oSheet.Range("V1").ColumnWidth = 15.5
    
    oSheet.Range("W1").ColumnWidth = 15.5
    oSheet.Range("X1").ColumnWidth = 15.5
    oSheet.Range("Y1").ColumnWidth = 15.5
    oSheet.Range("Z1").ColumnWidth = 15.5
    
    oSheet.Range("AA1").ColumnWidth = 15.5
    oSheet.Range("AB1").ColumnWidth = 15.5
    oSheet.Range("AC1").ColumnWidth = 15.5
    oSheet.Range("AD1").ColumnWidth = 15.5
    
    oSheet.Range("AE1").ColumnWidth = 15.5
    oSheet.Range("AF1").ColumnWidth = 15.5
    oSheet.Range("AG1").ColumnWidth = 15.5
    
    
    oSheet.Name = "KALSOFTE TO TALLY DATA"
    
    

        oSheet.Cells(1, 1).value = "KALSOFTE TO TALLY DATA from " & DTPicker1.value & " To " & DTPicker2.value & " For Store Inventory"
        oSheet.Cells(1, 1).Font.Bold = True
        oSheet.Cells(2, 1).value = "S.No"
        oSheet.Cells(2, 2).value = "V.DATE"
        oSheet.Cells(2, 3).value = "P.BILL.NO/REF"
        oSheet.Cells(2, 4).value = "P.Bill.DT"
        oSheet.Cells(2, 5).value = "DAYS"
        oSheet.Cells(2, 6).value = "T.Amount"
        oSheet.Cells(2, 7).value = "PARTY NAME"
        oSheet.Cells(2, 8).value = "GST No."
        oSheet.Cells(2, 9).value = "Tax Type1"
        oSheet.Cells(2, 10).value = "Tax Type2"
        oSheet.Cells(2, 11).value = "Tax Type3"
        oSheet.Cells(2, 12).value = "Tax Type4"
        oSheet.Cells(2, 13).value = "Tax Type5"
        
        oSheet.Cells(2, 14).value = "PURCHASE LEDGER"
        oSheet.Cells(2, 15).value = "EXMILL VALUE1 "
        oSheet.Cells(2, 16).value = "EXMILL VALUE2 "
        oSheet.Cells(2, 17).value = "EXMILL VALUE3 "
        oSheet.Cells(2, 18).value = "EXMILL VALUE4 "
        oSheet.Cells(2, 19).value = "EXMILL VALUE5 "
        
        oSheet.Cells(2, 20).value = "CGST @ 2.5"
        oSheet.Cells(2, 21).value = "SGST @ 2.5"
        oSheet.Cells(2, 22).value = "IGST @ 5"
        oSheet.Cells(2, 23).value = "CGST @ 6"
        oSheet.Cells(2, 24).value = "SGST @ 6"
        oSheet.Cells(2, 25).value = "IGST @ 12"
        oSheet.Cells(2, 26).value = "CGST @ 9"
        oSheet.Cells(2, 27).value = "SGST @ 9"
        oSheet.Cells(2, 28).value = "IGST @ 18"
        oSheet.Cells(2, 29).value = "CGST @ 14"
        oSheet.Cells(2, 30).value = "SGST @ 14"
        oSheet.Cells(2, 31).value = "IGST @ 28"
        oSheet.Cells(2, 32).value = "Round Off"
        oSheet.Cells(2, 33).value = "Narration"
        
        For I = 1 To 33
            oSheet.Cells(2, I).Font.Bold = True
        Next I


Set DB = New Connection
 DB.CursorLocation = adUseClient
DB.Open connectstring

   If RsDiv.State = 1 Then RsDiv.Close
    RsDiv.Open " select DIVNAME from PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly

    If RsDiv.EOF = False Then
        divname = RsDiv!divname & ""
    End If
    
    intervalMinutes = -1
If Rs.State = 1 Then Rs.Close
    
 Rs.Open "exec KSP_KSLTOTALLY  '" & Divcode & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "'   ", DB, adOpenKeyset, adLockReadOnly

If Rs.EOF = True Then
        MsgBox "No Record Found"
        Exit Sub
    End If

Set rptv = New Report.ReportView
    Close
    Close #a
    a = FreeFile
    SNO = 0
    cnt = 0
    pg = 1


lcnt = 2

pjvno = ""
pjvdt = ""
Assval = 0
greater_nineper = ""
Roff = 0
cgst2p5 = 0
sgst2p5 = 0
cgst6 = 0
sgst6 = 0
cgst9 = 0
sgst9 = 0
cgst14 = 0
sgst14 = 0
txtCode = ""

    While Not Rs.EOF
    intervalMinutes = -1
        If pjvno <> Rs("pjvocno") Then
            SNO = SNO + 1
            lcnt = lcnt + 1
            greater_nineper = ""
        End If
                        oSheet.Cells(lcnt, 1).value = val(SNO)
                       
                        If IsNull(Rs("pjvocdt")) = False Then
                            oSheet.Cells(lcnt, 2).value = Format(Rs("pjvocdt"), "dd-MMM-yyyy")
                        Else
                            oSheet.Cells(lcnt, 2).value = ""
                        End If
                        
                        If IsNull(Rs("billno")) = False Then
                            oSheet.Cells(lcnt, 3).value = CStr(Rs("billno"))
                        Else
                            oSheet.Cells(lcnt, 3).value = ""
                        End If
                        
                        If IsNull(Rs("billdt")) = False Then
                            oSheet.Cells(lcnt, 4).value = Format(Rs("billdt"), "dd-MMM-yyyy")
                        Else
                            oSheet.Cells(lcnt, 4).value = ""
                        End If
                        
'                        If IsNull(Rs("cdays")) = False Then
'                            osheet.Cells(lcnt, 5).value = CStr(Rs("cdays"))
'                        Else
'                            osheet.Cells(lcnt, 5).value = ""
'                        End If

                        If pjvno = Rs("pjvocno") Then
                            If crdays = Rs("cdays") Then
                                'credit_days = credit_days & "," & Rs("cdays")
                            Else
                                credit_days = credit_days & "," & Rs("cdays")
                            End If
                        Else
                            credit_days = Rs("cdays")
                        End If
                                    
                                                
                        If IsNull(Rs("cdays")) = False Then
                            oSheet.Cells(lcnt, 5).value = credit_days 'CStr(Rs("cdays"))
                        Else
                            oSheet.Cells(lcnt, 5).value = ""
                        End If
                                    
                        If IsNull(Rs("BILLAMT")) = False Then
                            oSheet.Cells(lcnt, 6).value = CStr(Rs("BILLAMT"))
                        Else
                            oSheet.Cells(lcnt, 6).value = 0
                        End If
                                        
                        If IsNull(Rs("slname")) = False Then
                            oSheet.Cells(lcnt, 7).value = CStr(Rs("slname"))
                        Else
                            oSheet.Cells(lcnt, 7).value = 0
                        End If
                        
                        If IsNull(Rs("gstinno")) = False Then
                            oSheet.Cells(lcnt, 8).value = CStr(Rs("gstinno"))
                        Else
                            oSheet.Cells(lcnt, 8).value = ""
                        End If
                        
                        'pjvno = Rs("pjvocno")
                        'pjvdt = Format(Rs("pjvocdt"), "dd-MMM-yyyy")
'Code added on 17-11-2018------------------------------------------------------------------------------------------------
                                                
                        If pjvno = Rs("pjvocno") Then
                            If Rs("tax_code") = "G5" Then
                                If IsNull(Rs("st_per")) = False Then '5%
                                    oSheet.Cells(lcnt, 9).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 9).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G12" Then
        
                                If IsNull(Rs("st_per")) = False Then '12%
                                    oSheet.Cells(lcnt, 10).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 10).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G18" Then
                                If IsNull(Rs("st_per")) = False Then '18%
                                    oSheet.Cells(lcnt, 11).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 11).value = ""
                                End If
                                
                            ElseIf Rs("tax_code") = "G28" Then
                                If IsNull(Rs("st_per")) = False Then '28%
                                    oSheet.Cells(lcnt, 12).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 12).value = ""
                                End If
                                
                            ElseIf Rs("tax_code") = "WT" Then
                                If IsNull(Rs("st_per")) = False Then 'WT
                                    oSheet.Cells(lcnt, 13).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 13).value = ""
                                End If
                                
                            End If
                        Else
                            If Rs("tax_code") = "G5" Then
                                If IsNull(Rs("st_per")) = False Then '5%
                                    oSheet.Cells(lcnt, 9).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 9).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G12" Then
                                If IsNull(Rs("st_per")) = False Then '12%
                                    oSheet.Cells(lcnt, 10).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 10).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G18" Then
                                If IsNull(Rs("st_per")) = False Then '18%
                                    oSheet.Cells(lcnt, 11).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 11).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G28" Then
                                If IsNull(Rs("st_per")) = False Then '28%
                                    oSheet.Cells(lcnt, 12).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 12).value = ""
                                End If
                            ElseIf Rs("tax_code") = "WT" Then
                                If IsNull(Rs("st_per")) = False Then 'WT%
                                    oSheet.Cells(lcnt, 13).value = CStr(Rs("st_per"))
                                Else
                                    oSheet.Cells(lcnt, 13).value = ""
                                End If
                                
                            End If
                        End If
                             
'------------------------------------------------------------------------------------------------------------------------
                        
                        If IsNull(Rs("tchead")) = False Then
                            oSheet.Cells(lcnt, 14).value = Rs("tchead")
                        Else
                            oSheet.Cells(lcnt, 14).value = ""
                        End If
                        
'Code added on 17-11-2018---------------------------------------------------------------------------------------------
                       
                       
                        If pjvno = Rs("pjvocno") Then
                            If Rs("tax_code") = "G5" Then
                                If IsNull(Rs("ass_val")) = False Then
                                    ass_val = ass_val + val(Rs("ass_val"))
                                    oSheet.Cells(lcnt, 15).value = ass_val 'val(Rs("ass_val"))
                                Else
                                    oSheet.Cells(lcnt, 15).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G12" Then
                                
                                If IsNull(Rs("ass_val2")) = False Then
                                    ass_val2 = ass_val2 + val(Rs("ass_val2"))
                                    oSheet.Cells(lcnt, 16).value = ass_val2 'val(Rs("ass_val2"))
                                Else
                                    oSheet.Cells(lcnt, 16).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G18" Then
                                If IsNull(Rs("ass_val3")) = False Then
                                    ass_val3 = ass_val3 + val(Rs("ass_val3"))
                                    oSheet.Cells(lcnt, 17).value = ass_val3 'val(Rs("ass_val3"))
                                Else
                                    oSheet.Cells(lcnt, 17).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G28" Then
                                If IsNull(Rs("ass_val4")) = False Then
                                    ass_val4 = ass_val4 + val(Rs("ass_val4"))
                                    oSheet.Cells(lcnt, 18).value = ass_val4 'val(Rs("ass_val4"))
                                Else
                                    oSheet.Cells(lcnt, 18).value = ""
                                End If
                            ElseIf Rs("tax_code") = "WT" Then
                                If IsNull(Rs("ass_val5")) = False Then
                                    ass_val5 = ass_val5 + val(Rs("ass_val5"))
                                    oSheet.Cells(lcnt, 19).value = ass_val5 'val(Rs("ass_val5"))
                                Else
                                    oSheet.Cells(lcnt, 19).value = ""
                                End If
                            End If
                        Else 'if pjv not equal to next record
                        ass_val = 0
                        ass_val2 = 0
                        ass_val3 = 0
                        ass_val4 = 0
                        ass_val5 = 0
                        
                            If Rs("tax_code") = "G5" Then '---5%
                                If IsNull(Rs("ass_val")) = False Then
                                    ass_val = ass_val + val(Rs("ass_val"))
                                    oSheet.Cells(lcnt, 15).value = ass_val 'val(Rs("ass_val"))
                                Else
                                    oSheet.Cells(lcnt, 15).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G12" Then '---12%
                                If IsNull(Rs("ass_val2")) = False Then
                                    ass_val2 = ass_val2 + val(Rs("ass_val2"))
                                    oSheet.Cells(lcnt, 16).value = ass_val2 'val(Rs("ass_val2"))
                                Else
                                    oSheet.Cells(lcnt, 16).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G18" Then '---18%
                                If IsNull(Rs("ass_val3")) = False Then
                                    ass_val3 = ass_val3 + val(Rs("ass_val3"))
                                    oSheet.Cells(lcnt, 17).value = ass_val3 'val(Rs("ass_val3"))
                                Else
                                    oSheet.Cells(lcnt, 17).value = ""
                                End If
                            ElseIf Rs("tax_code") = "G28" Then '---28%
                                If IsNull(Rs("ass_val4")) = False Then
                                    ass_val4 = ass_val4 + val(Rs("ass_val4"))
                                    oSheet.Cells(lcnt, 18).value = ass_val4 'val(Rs("ass_val4"))
                                Else
                                    oSheet.Cells(lcnt, 18).value = ""
                                End If
                            ElseIf Rs("tax_code") = "WT" Then '---WT%
                                If IsNull(Rs("ass_val5")) = False Then
                                    ass_val5 = ass_val5 + val(Rs("ass_val5"))
                                    oSheet.Cells(lcnt, 19).value = ass_val5 'val(Rs("ass_val5"))
                                Else
                                    oSheet.Cells(lcnt, 19).value = ""
                                End If
                            End If
                        End If
'-----------------------------------------------------------------------------------------------------------------------
'                        S_totassval = S_totassval + val(Rs("ass_val"))
'                        S_totassval2 = S_totassval2 + val(Rs("ass_val2"))
'                        S_totassval3 = S_totassval3 + val(Rs("ass_val3"))
                
                If pjvno = Rs("pjvocno") Then
                    If Rs("tax_code") = "G5" Then '----------------------------------------------5%
                        If IsNull(Rs("cgst2.5%")) = False Then
                            cgst2p5 = cgst2p5 + val(Rs("cgst2.5%"))
                            oSheet.Cells(lcnt, 20).value = cgst2p5 'val(Rs("cgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 20).value = 0
                        End If
        
                        If IsNull(Rs("sgst2.5%")) = False Then
                            sgst2p5 = sgst2p5 + val(Rs("sgst2.5%"))
                            oSheet.Cells(lcnt, 21).value = sgst2p5 'val(Rs("sgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 21).value = 0
                        End If
                        
                        If IsNull(Rs("igst5%")) = False Then
                            igst5 = igst5 + val(Rs("igst5%"))
                            oSheet.Cells(lcnt, 22).value = igst5 'val(Rs("igst5%"))
                        Else
                            oSheet.Cells(lcnt, 22).value = 0
                        End If
                                            
                    ElseIf Rs("tax_code") = "G12" Then '----------------------------------------------12%
                    
                        If IsNull(Rs("cgst6%")) = False Then
                            cgst6 = cgst6 + val(Rs("cgst6%"))
                            oSheet.Cells(lcnt, 23).value = cgst6 'val(Rs("cgst6%"))
                        Else
                            oSheet.Cells(lcnt, 23).value = 0
                        End If
        
                        If IsNull(Rs("sgst6%")) = False Then
                            sgst6 = sgst6 + val(Rs("sgst6%"))
                            oSheet.Cells(lcnt, 24).value = sgst6 'val(Rs("sgst6%"))
                        Else
                            oSheet.Cells(lcnt, 24).value = 0
                        End If
                                                
                        If IsNull(Rs("igst12%")) = False Then
                            igst12 = igst12 + val(Rs("igst12%"))
                            oSheet.Cells(lcnt, 25).value = igst12 'val(Rs("igst12%"))
                        Else
                            oSheet.Cells(lcnt, 25).value = 0
                        End If
                    ElseIf Rs("tax_code") = "G18" Then '----------------------------------------------18%
                    
                        If IsNull(Rs("cgst9%")) = False Then
                            cgst9 = cgst9 + val(Rs("cgst9%"))
                            oSheet.Cells(lcnt, 26).value = cgst9 'val(Rs("cgst9%"))
                        Else
                            oSheet.Cells(lcnt, 26).value = 0
                        End If
        
                        If IsNull(Rs("sgst9%")) = False Then
                            sgst9 = sgst9 + val(Rs("sgst9%"))
                            oSheet.Cells(lcnt, 27).value = sgst9 'val(Rs("sgst9%"))
                        Else
                            oSheet.Cells(lcnt, 27).value = 0
                        End If
                        
                        If IsNull(Rs("igst18%")) = False Then
                            igst18 = igst18 + val(Rs("igst18%"))
                            oSheet.Cells(lcnt, 28).value = igst18 'val(Rs("igst18%"))
                        Else
                            oSheet.Cells(lcnt, 28).value = 0
                        End If
                        
                    ElseIf Rs("tax_code") = "G28" Then '----------------------------------------------28%
                    
                        If IsNull(Rs("cgst14%")) = False Then
                            cgst14 = cgst14 + val(Rs("cgst14%"))
                            oSheet.Cells(lcnt, 29).value = cgst14 'val(Rs("cgst14%"))
                        Else
                            oSheet.Cells(lcnt, 29).value = 0
                        End If
        
                        If IsNull(Rs("sgst14%")) = False Then
                            sgst14 = sgst14 + val(Rs("sgst14%"))
                            oSheet.Cells(lcnt, 30).value = sgst14 'val(Rs("sgst14%"))
                        Else
                            oSheet.Cells(lcnt, 30).value = 0
                        End If
                        
                        If IsNull(Rs("igst28%")) = False Then
                            igst28 = igst28 + val(Rs("igst28%"))
                            oSheet.Cells(lcnt, 31).value = igst28 'val(Rs("igst28%"))
                        Else
                            oSheet.Cells(lcnt, 31).value = 0
                        End If
                    End If
                Else 'if pjv not equal to next record
                
                        Roff = 0
                        cgst2p5 = 0
                        sgst2p5 = 0
                        igst5 = 0
                        cgst6 = 0
                        sgst6 = 0
                        igst12 = 0
                        cgst9 = 0
                        sgst9 = 0
                        igst18 = 0
                        cgst14 = 0
                        sgst14 = 0
                        igst28 = 0
                        
                        If Rs("tax_code") = "G5" Then '---------------------------------------5%
                        If IsNull(Rs("cgst2.5%")) = False Then
                            cgst2p5 = cgst2p5 + val(Rs("cgst2.5%"))
                            oSheet.Cells(lcnt, 20).value = cgst2p5 'val(Rs("cgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 20).value = 0
                        End If
        
                        If IsNull(Rs("sgst2.5%")) = False Then
                            sgst2p5 = sgst2p5 + val(Rs("sgst2.5%"))
                            oSheet.Cells(lcnt, 21).value = sgst2p5 'val(Rs("sgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 21).value = 0
                        End If
                        
                        If IsNull(Rs("igst5%")) = False Then
                            igst5 = igst5 + val(Rs("igst5%"))
                            oSheet.Cells(lcnt, 22).value = igst5 'val(Rs("igst5%"))
                        Else
                            oSheet.Cells(lcnt, 22).value = 0
                        End If
                                            
                    ElseIf Rs("tax_code") = "G12" Then '---------------------------------------12%
                    
                        If IsNull(Rs("cgst6%")) = False Then
                            cgst6 = cgst6 + val(Rs("cgst6%"))
                            oSheet.Cells(lcnt, 23).value = cgst6 'val(Rs("cgst6%"))
                        Else
                            oSheet.Cells(lcnt, 23).value = 0
                        End If
        
                        If IsNull(Rs("sgst6%")) = False Then
                            sgst6 = sgst6 + val(Rs("sgst6%"))
                            oSheet.Cells(lcnt, 24).value = sgst6 'val(Rs("sgst6%"))
                        Else
                            oSheet.Cells(lcnt, 24).value = 0
                        End If
                                                
                        If IsNull(Rs("igst12%")) = False Then
                            igst12 = igst12 + val(Rs("igst12%"))
                            oSheet.Cells(lcnt, 25).value = igst12 'val(Rs("igst12%"))
                        Else
                            oSheet.Cells(lcnt, 25).value = 0
                        End If
                    ElseIf Rs("tax_code") = "G18" Then '---------------------------------------18%
                    
                        If IsNull(Rs("cgst9%")) = False Then
                            cgst9 = cgst9 + val(Rs("cgst9%"))
                            oSheet.Cells(lcnt, 26).value = cgst9 'val(Rs("cgst9%"))
                        Else
                            oSheet.Cells(lcnt, 26).value = 0
                        End If
        
                        If IsNull(Rs("sgst9%")) = False Then
                            sgst9 = sgst9 + val(Rs("sgst9%"))
                            oSheet.Cells(lcnt, 27).value = sgst9 'val(Rs("sgst9%"))
                        Else
                            oSheet.Cells(lcnt, 27).value = 0
                        End If
                        
                        If IsNull(Rs("igst18%")) = False Then
                            igst18 = igst18 + val(Rs("igst18%"))
                            oSheet.Cells(lcnt, 28).value = igst18 'val(Rs("igst18%"))
                        Else
                            oSheet.Cells(lcnt, 28).value = 0
                        End If
                        
                    ElseIf Rs("tax_code") = "G28" Then '---------------------------------------28%
                    
                        If IsNull(Rs("cgst14%")) = False Then
                            cgst14 = cgst14 + val(Rs("cgst14%"))
                            oSheet.Cells(lcnt, 29).value = cgst14 'val(Rs("cgst14%"))
                        Else
                            oSheet.Cells(lcnt, 29).value = 0
                        End If
        
                        If IsNull(Rs("sgst14%")) = False Then
                            sgst14 = sgst14 + val(Rs("sgst14%"))
                            oSheet.Cells(lcnt, 30).value = val(Rs("sgst14%"))
                        Else
                            oSheet.Cells(lcnt, 30).value = 0
                        End If
                        
                        If IsNull(Rs("igst28%")) = False Then
                            igst28 = igst28 + val(Rs("igst28%"))
                            oSheet.Cells(lcnt, 31).value = igst28 'val(Rs("igst28%"))
                        Else
                            oSheet.Cells(lcnt, 31).value = 0
                        End If
                    End If
                End If
                
'--------------------------------------------------------------------------------------------------------------------------
                If pjvno = Rs("pjvocno") Then
                        If IsNull(Rs("broff")) = False Then
                        Roff = Roff + val(Rs("broff"))
                            oSheet.Cells(lcnt, 32).value = Roff 'Roff + val(Rs("broff"))
                        Else
                            oSheet.Cells(lcnt, 32).value = 0
                        End If
                        'Roff = val(Rs("broff"))
                        
                        If IsNull(Rs("narration")) = False Then
                            oSheet.Cells(lcnt, 33).value = Rs("narration")
                        Else
                            oSheet.Cells(lcnt, 33).value = 0
                        End If
                Else
                        If IsNull(Rs("broff")) = False Then
                            oSheet.Cells(lcnt, 32).value = val(Rs("broff"))
                        Else
                            oSheet.Cells(lcnt, 32).value = 0
                        End If
                        
                        Roff = val(Rs("broff"))
                        
                        If IsNull(Rs("narration")) = False Then
                            oSheet.Cells(lcnt, 33).value = Rs("narration")
                        Else
                            oSheet.Cells(lcnt, 33).value = 0
                        End If
                End If
                        pjvno = Rs("pjvocno")
                        pjvdt = Format(Rs("pjvocdt"), "dd-MMM-yyyy")
                        crdays = Rs("cdays")
                        '----------------------------------------------------------
                        
                        
                        intervalMinutes = -1
Rs.MoveNext
    Wend
    MsgBox "Kalsofte to Tally data Transfer has been completed", vbInformation, vbhead
End Sub

'Code added on 04-02-2019--------------------------------------------------------------------------------------

Private Sub ksl_tally_data_rmi()
On Error GoTo Err1
intervalMinutes = -1
Dim Rs As New ADODB.Recordset
Dim SNO As Integer
Dim rptv As ReportView
Dim Strvalue As String
Dim gDblVat As Double
Dim gDblCst As Double

Dim StrTaxper, strcat As String
Dim Dblvalue As Double
Dim DblTAxamt As Double

Dim DB As Connection
Dim RsDiv As New ADODB.Recordset
Dim GTax As Double, GValue As Double

Dim S_totinvval As Double, S_totfrtval As Double, S_totinsval As Double, S_tototherval As Double, S_tottaxableval As Double, S_totcgstval As Double, S_totsgstval As Double, S_totigstval As Double, S_totrcmval As Double

Dim S_ABS_totqty As Double, S_ABS_invval As Double, S_ABS_frtval As Double, S_ABS_insval As Double, S_ABS_taxableval As Double, S_ABS_sgstval As Double, S_ABS_cgstval As Double, S_ABS_igstval As Double


tmpFile = "Kalsofte To Tally Data Transfer -RMI"

tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"

'Set oExcel = CreateObject("Excel.Application")

'If Option3.Value = True Then
 '   Set oExcel = CreateObject("KET.Application")
'ElseIf Option4.Value = True Then
    Set oExcel = CreateObject("Excel.Application")
'End If

intervalMinutes = -1
Set oBook = oExcel.Workbooks.ADD

Set oSheet = oBook.Worksheets(1)
oExcel.Visible = True

    oSheet.Range("A1").ColumnWidth = 10.5
    oSheet.Range("B1").ColumnWidth = 10.5
    oSheet.Range("C1").ColumnWidth = 10.5
    oSheet.Range("D1").ColumnWidth = 15.5
    oSheet.Range("E1").ColumnWidth = 25.5
    oSheet.Range("F1").ColumnWidth = 50.5
    oSheet.Range("G1").ColumnWidth = 15.5
    oSheet.Range("H1").ColumnWidth = 15.5
    oSheet.Range("I1").ColumnWidth = 15.5
    oSheet.Range("J1").ColumnWidth = 15.5
    oSheet.Range("K1").ColumnWidth = 15.5
    oSheet.Range("L1").ColumnWidth = 50.5
    oSheet.Range("M1").ColumnWidth = 15.5
    oSheet.Range("N1").ColumnWidth = 35.5
    oSheet.Range("O1").ColumnWidth = 15.5
    oSheet.Range("P1").ColumnWidth = 15.5
    oSheet.Range("Q1").ColumnWidth = 15.5
    oSheet.Range("R1").ColumnWidth = 15.5
    oSheet.Range("S1").ColumnWidth = 15.5
    oSheet.Range("T1").ColumnWidth = 15.5
    oSheet.Range("U1").ColumnWidth = 15.5
    oSheet.Range("V1").ColumnWidth = 15.5
    oSheet.Range("W1").ColumnWidth = 15.5
    
    oSheet.Range("X1").ColumnWidth = 15.5
    oSheet.Range("Y1").ColumnWidth = 15.5
    oSheet.Range("Z1").ColumnWidth = 15.5
    oSheet.Range("AA1").ColumnWidth = 15.5
    
    oSheet.Range("AB1").ColumnWidth = 15.5
    oSheet.Range("AC1").ColumnWidth = 15.5
    oSheet.Range("AD1").ColumnWidth = 20.5
    oSheet.Range("AE1").ColumnWidth = 15.5

    oSheet.Range("AF1").ColumnWidth = 80.5
    oSheet.Range("AG1").ColumnWidth = 20.5
    oSheet.Range("AH1").ColumnWidth = 20.5
    oSheet.Range("AI1").ColumnWidth = 30.5

    oSheet.Range("K:K").NumberFormat = "#,##0.00"
    oSheet.Range("M:M").NumberFormat = "#,##0.000"
    oSheet.Range("O:O").NumberFormat = "#,##0.00"
    oSheet.Range("P:P").NumberFormat = "#,##0.00"
    oSheet.Range("Q:Q").NumberFormat = "#,##0.00"
    oSheet.Range("R:R").NumberFormat = "#,##0.00"
    oSheet.Range("S:S").NumberFormat = "#,##0.00"
    oSheet.Range("T:T").NumberFormat = "#,##0.00"
    oSheet.Range("U:U").NumberFormat = "#,##0.00"
    oSheet.Range("V:V").NumberFormat = "#,##0.00"
    
    oSheet.Range("W:W").NumberFormat = "#,##0.00"
    oSheet.Range("X:X").NumberFormat = "#,##0.00"
    oSheet.Range("Y:Y").NumberFormat = "#,##0.00"
    oSheet.Range("Z:Z").NumberFormat = "#,##0.00"
    oSheet.Range("AA:AA").NumberFormat = "#,##0.00"
    oSheet.Range("AB:AB").NumberFormat = "#,##0.00"
    oSheet.Range("AC:AC").NumberFormat = "#,##0.00"
    oSheet.Range("AD:AD").NumberFormat = "#,##0.00"
    oSheet.Range("AE:AE").NumberFormat = "#,##0.00"
    oSheet.Range("AG:AG").NumberFormat = "#,##0.00"
    
    
    oSheet.Name = "KALSOFTE TO ACCOUNTS DATA"
    
    

      '  osheet.Cells(1, 1).value = "KALSOFTE TO TALLY DATA from " & DTPicker1.value & " To " & DTPicker2.value & " For RMI "
        oSheet.Cells(1, 1).Font.Bold = True
        oSheet.Cells(1, 1).value = "S.No"
        oSheet.Cells(1, 2).value = "PJV No"
        oSheet.Cells(1, 3).value = "PJV Date"
        oSheet.Cells(1, 4).value = "Type"
        oSheet.Cells(1, 5).value = "GSTIN"
        oSheet.Cells(1, 6).value = "Party Name"
        oSheet.Cells(1, 7).value = "Invoice No"
        oSheet.Cells(1, 8).value = "Invoice Date"
        oSheet.Cells(1, 9).value = "B.E. No."
        oSheet.Cells(1, 10).value = "B.E. Date"
        oSheet.Cells(1, 11).value = "T.Amount"
        oSheet.Cells(1, 12).value = "Item Name"
        oSheet.Cells(1, 13).value = "Net Qty"
    
        oSheet.Cells(1, 14).value = "PURCHASE LEDGER"
        oSheet.Cells(1, 15).value = "Ledger Value "
        oSheet.Cells(1, 16).value = "Customs Duty "
                
        oSheet.Cells(1, 17).value = "CGST @ 2.5"
        oSheet.Cells(1, 18).value = "SGST @ 2.5"
        oSheet.Cells(1, 19).value = "IGST @ 5"
        oSheet.Cells(1, 20).value = "CGST @ 6"
        oSheet.Cells(1, 21).value = "SGST @ 6"
        oSheet.Cells(1, 22).value = "IGST @ 12"
        oSheet.Cells(1, 23).value = "CGST @ 9"
        oSheet.Cells(1, 24).value = "SGST @ 9"
        oSheet.Cells(1, 25).value = "IGST @ 18"
        oSheet.Cells(1, 26).value = "CGST @ 14"
        oSheet.Cells(1, 27).value = "SGST @ 14"
        oSheet.Cells(1, 28).value = "IGST @ 28"
        oSheet.Cells(1, 29).value = "Round Off"
        oSheet.Cells(1, 30).value = "IMP IGST REVERSAL"
        oSheet.Cells(1, 31).value = "Exchange Gain/Loss"
        oSheet.Cells(1, 32).value = "Narration"
        oSheet.Cells(1, 33).value = "TCS 206C (1H) - RECEIVABLES"
        oSheet.Cells(1, 34).value = "Sup Code"
        oSheet.Cells(1, 35).value = "Place of supply"
    
        For I = 1 To 35
            oSheet.Cells(1, I).Font.Bold = True
        Next I
intervalMinutes = -1

Set DB = New Connection
 DB.CursorLocation = adUseClient
DB.Open connectstring

   If RsDiv.State = 1 Then RsDiv.Close
    RsDiv.Open " select DIVNAME from PP_DIVMAS WHERE DIVCODE='" & Divcode & "'", DB, adOpenKeyset, adLockReadOnly

    If RsDiv.EOF = False Then
        divname = RsDiv!divname & ""
    End If
    
      
    L_Div = ""
    For I = 1 To Lit_Division.ListItems.Count

        If Lit_Division.ListItems.Item(I).Checked = True Then
            sRecCount = Trim(Lit_Division.ListItems(I).SubItems(1))
            If L_Div <> "" Then
                L_Div = L_Div + "," + Trim(sRecCount)
            Else
                L_Div = Trim(sRecCount)
            End If
        End If
    Next
If Rs.State = 1 Then Rs.Close
    
 Rs.Open "exec KSP_KSLTOTALLY_RMI  '" & L_Div & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "'   ", DB, adOpenKeyset, adLockReadOnly

If Rs.EOF = True Then
        MsgBox "No Record Found"
        Exit Sub
    End If

Set rptv = New Report.ReportView
    Close
    Close #a
    a = FreeFile
    SNO = 0
    cnt = 0
    pg = 1


lcnt = 1

pjvno = ""
pjvdt = ""
Assval = 0
greater_nineper = ""
Roff = 0
cgst2p5 = 0
sgst2p5 = 0
cgst6 = 0
sgst6 = 0
cgst9 = 0
sgst9 = 0
cgst14 = 0
sgst14 = 0
txtCode = ""

    While Not Rs.EOF
    intervalMinutes = -1
'        If pjvno <> Rs("pjvocno") Then
            SNO = SNO + 1
            lcnt = lcnt + 1
'            greater_nineper = ""
'        End If
                        oSheet.Cells(lcnt, 1).value = val(SNO)
                       
                       
                        If IsNull(Rs("grnno")) = False Then
                        oSheet.Cells(lcnt, 2).NumberFormat = "@"
                            oSheet.Cells(lcnt, 2).value = CStr(Rs("grnno"))
                        Else
                            oSheet.Cells(lcnt, 2).value = ""
                        End If
                       
                        If IsNull(Rs("grndate")) = False Then
                           ' osheet.Cells(lcnt, 3).NumberFormat = "@"
                            oSheet.Cells(lcnt, 3).value = Format(Rs("grndate"), "dd-MMM-yyyy")
                        Else
                            oSheet.Cells(lcnt, 3).value = ""
                        End If
                       
                        
                        If IsNull(Rs("type")) = False Then
                            oSheet.Cells(lcnt, 4).value = CStr(Rs("type"))
                        Else
                            oSheet.Cells(lcnt, 4).value = ""
                        End If
                                           
                        If IsNull(Rs("gstinno")) = False Then
                           
                            oSheet.Cells(lcnt, 5).value = CStr(Rs("gstinno"))
                        Else
                            oSheet.Cells(lcnt, 5).value = ""
                        End If
                                    
                        If IsNull(Rs("slname")) = False Then
                            oSheet.Cells(lcnt, 6).value = CStr(Rs("slname"))
                        Else
                            oSheet.Cells(lcnt, 6).value = ""
                        End If
                                        
                        If IsNull(Rs("Billno")) = False Then
                            oSheet.Cells(lcnt, 7).NumberFormat = "@"
                            oSheet.Cells(lcnt, 7).value = CStr(Rs("Billno"))
                        Else
                            oSheet.Cells(lcnt, 7).value = ""
                        End If
                        
                        If IsNull(Rs("billdt")) = False Then
                          '  osheet.Cells(lcnt, 9).NumberFormat = "@"
                            oSheet.Cells(lcnt, 8).value = Format(Rs("billdt"), "dd-MMM-yyyy")
                        Else
                            oSheet.Cells(lcnt, 8).value = ""
                        End If
                        
                        
                        If IsNull(Rs("beno")) = False Then
                            oSheet.Cells(lcnt, 9).NumberFormat = "@"
                            oSheet.Cells(lcnt, 9).value = Rs("beno")
                        Else
                            oSheet.Cells(lcnt, 9).value = ""
                        End If
                        
                        
                        If IsNull(Rs("bedt")) = False Then
                            'osheet.Cells(lcnt, 10).NumberFormat = "@"
                            oSheet.Cells(lcnt, 10).value = Format(Rs("bedt"), "dd-MMM-yyyy")
                        Else
                            oSheet.Cells(lcnt, 10).value = ""
                        End If
                        
                        
                        If IsNull(Rs("tamount")) = False And Rs("tamount") <> 0 Then
                            oSheet.Cells(lcnt, 11).value = Rs("tamount")
                        Else
                            oSheet.Cells(lcnt, 11).value = ""
                        End If
                        
                        If IsNull(Rs("itemname")) = False Then
                            oSheet.Cells(lcnt, 12).value = Rs("itemname")
                        Else
                            oSheet.Cells(lcnt, 12).value = ""
                        End If
                        
                        If IsNull(Rs("netqty")) = False And Rs("netqty") <> 0 Then
                            oSheet.Cells(lcnt, 13).value = Rs("netqty")
                        Else
                            oSheet.Cells(lcnt, 13).value = ""
                        End If
                        
                        If IsNull(Rs("purledger")) = False Then
                            oSheet.Cells(lcnt, 14).value = Rs("purledger")
                        Else
                            oSheet.Cells(lcnt, 14).value = ""
                        End If
                        
                        If IsNull(Rs("ledvalue")) = False And Rs("ledvalue") <> 0 Then
                            oSheet.Cells(lcnt, 15).value = Rs("ledvalue")
                        Else
                            oSheet.Cells(lcnt, 15).value = ""
                        End If
                        
                        If IsNull(Rs("custduty")) = False And Rs("custduty") <> 0 Then
                            oSheet.Cells(lcnt, 16).value = Rs("custduty")
                        Else
                            oSheet.Cells(lcnt, 16).value = ""
                        End If
                        
                                        
                  '  If Rs("taxcode") = "G5" Then '----------------------------------------------5%
                        If IsNull(Rs("cgst2.5%")) = False And Rs("cgst2.5%") <> 0 Then
                            cgst2p5 = cgst2p5 + val(Rs("cgst2.5%"))
                            oSheet.Cells(lcnt, 17).value = val(Rs("cgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 17).value = ""
                        End If
        
                        If IsNull(Rs("sgst2.5%")) = False And Rs("sgst2.5%") <> 0 Then
                            sgst2p5 = sgst2p5 + val(Rs("sgst2.5%"))
                            oSheet.Cells(lcnt, 18).value = val(Rs("sgst2.5%"))
                        Else
                            oSheet.Cells(lcnt, 18).value = ""
                        End If
                        
                        If IsNull(Rs("igst5%")) = False And Rs("igst5%") <> 0 Then
                            igst5 = igst5 + val(Rs("igst5%"))
                            oSheet.Cells(lcnt, 19).value = val(Rs("igst5%"))
                        Else
                            oSheet.Cells(lcnt, 19).value = ""
                        End If
                                            
                  '  ElseIf Rs("taxcode") = "G12" Then '----------------------------------------------12%
                    
                        If IsNull(Rs("cgst6%")) = False And Rs("cgst6%") <> 0 Then
                            cgst6 = cgst6 + val(Rs("cgst6%"))
                            oSheet.Cells(lcnt, 20).value = val(Rs("cgst6%"))
                        Else
                            oSheet.Cells(lcnt, 20).value = ""
                        End If
        
                        If IsNull(Rs("sgst6%")) = False And Rs("sgst6%") <> 0 Then
                            sgst6 = sgst6 + val(Rs("sgst6%"))
                            oSheet.Cells(lcnt, 21).value = val(Rs("sgst6%"))
                        Else
                            oSheet.Cells(lcnt, 21).value = ""
                        End If
                                                
                        If IsNull(Rs("igst12%")) = False And Rs("igst12%") <> 0 Then
                            igst12 = igst12 + val(Rs("igst12%"))
                            oSheet.Cells(lcnt, 22).value = val(Rs("igst12%"))
                        Else
                            oSheet.Cells(lcnt, 22).value = ""
                        End If
                '    ElseIf Rs("taxcode") = "G18" Then '----------------------------------------------18%
                    
                        If IsNull(Rs("cgst9%")) = False And Rs("cgst9%") <> 0 Then
                            cgst9 = cgst9 + val(Rs("cgst9%"))
                            oSheet.Cells(lcnt, 23).value = val(Rs("cgst9%"))
                        Else
                            oSheet.Cells(lcnt, 23).value = ""
                        End If
        
                        If IsNull(Rs("sgst9%")) = False And Rs("sgst9%") <> 0 Then
                            sgst9 = sgst9 + val(Rs("sgst9%"))
                            oSheet.Cells(lcnt, 24).value = val(Rs("sgst9%"))
                        Else
                            oSheet.Cells(lcnt, 24).value = ""
                        End If
                        
                        If IsNull(Rs("igst18%")) = False And Rs("igst18%") <> 0 Then
                            igst18 = igst18 + val(Rs("igst18%"))
                            oSheet.Cells(lcnt, 25).value = val(Rs("igst18%"))  'igst18 'val(Rs("igst18%"))
                        Else
                            oSheet.Cells(lcnt, 25).value = ""
                        End If
                        
                  '  ElseIf Rs("taxcode") = "G28" Then '----------------------------------------------28%
                    
                        If IsNull(Rs("cgst14%")) = False And Rs("cgst14%") <> 0 Then
                            cgst14 = cgst14 + val(Rs("cgst14%"))
                            oSheet.Cells(lcnt, 26).value = val(Rs("cgst14%"))
                        Else
                            oSheet.Cells(lcnt, 26).value = ""
                        End If
        
                        If IsNull(Rs("sgst14%")) = False And Rs("sgst14%") <> 0 Then
                            sgst14 = sgst14 + val(Rs("sgst14%"))
                            oSheet.Cells(lcnt, 27).value = val(Rs("sgst14%"))
                        Else
                            oSheet.Cells(lcnt, 27).value = ""
                        End If
                        
                        If IsNull(Rs("igst28%")) = False And Rs("igst28%") <> 0 Then
                            igst28 = igst28 + val(Rs("igst28%"))
                            oSheet.Cells(lcnt, 28).value = val(Rs("igst28%"))
                        Else
                            oSheet.Cells(lcnt, 28).value = ""
                        End If
                   ' End If
                            
                            
                        If IsNull(Rs("roff")) = False And Rs("roff") <> 0 Then
                            oSheet.Cells(lcnt, 29).value = val(Rs("roff"))
                        Else
                            oSheet.Cells(lcnt, 29).value = ""
                        End If
                
                        If IsNull(Rs("igst_revers")) = False And Rs("igst_revers") <> 0 Then
                            oSheet.Cells(lcnt, 30).value = val(Rs("igst_revers"))
                        Else
                            oSheet.Cells(lcnt, 30).value = ""
                        End If
                        
                        If IsNull(Rs("exg_gainloss")) = False And Rs("exg_gainloss") <> "0" Then
                            oSheet.Cells(lcnt, 31).value = Trim(Rs("exg_gainloss"))
                        Else
                            oSheet.Cells(lcnt, 31).value = ""
                        End If
                        
                        If IsNull(Rs("narration")) = False Then
                            oSheet.Cells(lcnt, 32).value = Rs("narration")
                        Else
                            oSheet.Cells(lcnt, 32).value = ""
                        End If
                        
                        If IsNull(Rs("TCS_AMT")) = False And Rs("TCS_AMT") <> "0" Then
                            oSheet.Cells(lcnt, 33).value = Trim(Rs("TCS_AMT"))
                        Else
                            oSheet.Cells(lcnt, 33).value = ""
                        End If
                        oSheet.Cells(lcnt, 34).value = CStr(IIf(IsNull(Rs("slcode")), "", Rs("slcode")))
                        oSheet.Cells(lcnt, 35).value = Trim(Rs("PlaceofSupp"))
                    
                
                
'                        Roff = 0
'                        cgst2p5 = 0
'                        sgst2p5 = 0
'                        igst5 = 0
'                        cgst6 = 0
'                        sgst6 = 0
'                        igst12 = 0
'                        cgst9 = 0
'                        sgst9 = 0
'                        igst18 = 0
'                        cgst14 = 0
'                        sgst14 = 0
'                        igst28 = 0
                               
Rs.MoveNext
    Wend
    MsgBox "Kalsofte to Accounts data Transfer has been completed", vbInformation, vbhead
    intervalMinutes = -1
  Exit Sub
Err1:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure  ", vbInformation, head
Screen.MousePointer = 0

End Sub



'--------------------------------------------------------------------------------------


Private Sub Form_MouseMove(BUTTON As Integer, Shift As Integer, X As Single, Y As Single)
intervalMinutes = -1
End Sub

Private Sub Form_Unload(Cancel As Integer)
intervalMinutes = -1
End Sub

Private Sub LoadDivisionList()
On Error GoTo BUTTON_Click_Error
   Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring

    Lit_Division.ListItems.Clear

    Set temprs = New Recordset
    temprs.Open "select Division_Name , Divsion_ID ,Abbr from Vw_DivisonList   ", DB, adOpenStatic
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
    Check1.value = 1
    Call Check1_Click
Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
End Sub

