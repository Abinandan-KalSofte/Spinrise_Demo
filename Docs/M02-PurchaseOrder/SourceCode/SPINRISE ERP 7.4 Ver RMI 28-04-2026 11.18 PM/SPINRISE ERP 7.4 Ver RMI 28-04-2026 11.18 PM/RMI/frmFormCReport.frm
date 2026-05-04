VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form frmFormCReport 
   Caption         =   "Reports"
   ClientHeight    =   7995
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12825
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   7995
   ScaleWidth      =   12825
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame2 
      Caption         =   " "
      Height          =   3435
      Left            =   3450
      TabIndex        =   2
      Top             =   2445
      Width           =   5910
      Begin VB.Frame Frame1 
         BorderStyle     =   0  'None
         Height          =   480
         Left            =   1620
         TabIndex        =   14
         Top             =   1470
         Width           =   4125
         Begin VB.OptionButton optSupplierwise 
            Caption         =   "Supplier Wise"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   285
            Left            =   1725
            TabIndex        =   9
            Top             =   120
            Width           =   1980
         End
         Begin VB.OptionButton optDatewise 
            Caption         =   "Date Wise"
            BeginProperty Font 
               Name            =   "Times New Roman"
               Size            =   12
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   195
            Left            =   30
            TabIndex        =   8
            Top             =   180
            Width           =   1680
         End
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   375
         Left            =   1635
         TabIndex        =   7
         Top             =   1110
         Width           =   1410
         _ExtentX        =   2487
         _ExtentY        =   661
         _Version        =   393216
         Format          =   42795009
         CurrentDate     =   39453
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   360
         Left            =   1635
         TabIndex        =   6
         Top             =   645
         Width           =   1410
         _ExtentX        =   2487
         _ExtentY        =   635
         _Version        =   393216
         Format          =   43384833
         CurrentDate     =   39453
      End
      Begin VB.CommandButton Cmd_Exit 
         Caption         =   "&Exit"
         Height          =   375
         Left            =   3240
         TabIndex        =   1
         Top             =   2910
         Width           =   1185
      End
      Begin VB.CommandButton Cmd_Ok 
         Caption         =   "&Ok"
         Height          =   375
         Left            =   1845
         TabIndex        =   0
         Top             =   2940
         Width           =   1185
      End
      Begin MSDataListLib.DataCombo dbcmb_fsup 
         Height          =   360
         Left            =   1620
         TabIndex        =   10
         Top             =   2010
         Visible         =   0   'False
         Width           =   4125
         _ExtentX        =   7276
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
      Begin MSDataListLib.DataCombo dbcmb_tsup 
         Height          =   360
         Left            =   1620
         TabIndex        =   12
         Top             =   2475
         Visible         =   0   'False
         Width           =   4125
         _ExtentX        =   7276
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
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Option"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   165
         TabIndex        =   15
         Top             =   1620
         Width           =   690
      End
      Begin VB.Label lbl_tsup 
         AutoSize        =   -1  'True
         Caption         =   "To Supplier"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   165
         TabIndex        =   13
         Top             =   2520
         Visible         =   0   'False
         Width           =   1155
      End
      Begin VB.Label lbl_fsup 
         AutoSize        =   -1  'True
         Caption         =   "From Supplier"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   180
         TabIndex        =   11
         Top             =   2070
         Visible         =   0   'False
         Width           =   1410
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "From Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   5
         Top             =   675
         Visible         =   0   'False
         Width           =   1080
      End
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackColor       =   &H8000000D&
         Caption         =   "Label3"
         DataField       =   "&H8000000D&"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000E&
         Height          =   345
         Left            =   15
         TabIndex        =   4
         Top             =   105
         Width           =   5880
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "To Date"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Left            =   150
         TabIndex        =   3
         Top             =   1170
         Width           =   825
      End
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H80000002&
      Height          =   3510
      Left            =   3375
      Top             =   2430
      Width           =   6045
   End
End
Attribute VB_Name = "frmFormCReport"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim rec As Recordset
Dim dblSuppTotal As Double
Dim RstSupplier As Recordset
Dim pg1 As Integer, co As Integer
Dim BillTotal As Double
Dim ComCode As String
Dim a As Integer
Dim dup As String
Dim RSService As New Recordset
Dim RSSub As New Recordset
Dim SqlQry As String

Private Sub Cmd_Exit_Click()
Unload Me
End Sub

Private Sub Cmd_Ok_Click()
Dim RstFormNo As Recordset
Dim dblBillValue As Double
Dim strSupplier As String
Dim RstFormNoS As Recordset
Dim strFromSupp As String
Dim strToSupp As String

On Error GoTo Cmd_Ok_Click_Error

On Error GoTo Cmd_Ok_Click_Error

start_date = Format(DTPicker1.value, "dd/mm/yyyy")
END_DATE = Format(DTPicker2.value, "dd/mm/yyyy")

strFromSupp = Right(dbcmb_fsup.Text, 7)
strToSupp = Right(dbcmb_tsup.Text, 7)

Dim FormNo As String

Set Cnn = New Connection
rundate = T_Date
Cnn.Provider = "MSDATASHAPE"
Cnn.Open connectstring

Select Case Repindex
Case 0
    Screen.MousePointer = 11
    Set rptv = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    'Open "C:\FCRecd.txt" For Output As #a
     Open KALFOLDERDATA & "\FCRecd.TXT" For Output As #a
    pg1 = 1
    co = 0
    'Call FormCHeader(pg1, co)

    Set RstFormNo = New Recordset
    RstFormNo.Open "Select a.form_doc_no,A.Form_doc_dt from fa_form_issh a,fa_form_isst b where a.form_doc_no=b.form_doc_no and a.form_doc_dt=b.form_doc_dt and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and  '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' group by a.form_doc_no,a.form_doc_Dt", Cnn, adOpenStatic
    If RstFormNo.EOF Then
        MsgBox "No Records found", vbInformation, head
        Screen.MousePointer = 0
        Exit Sub
    End If
    
    BillTotal = 0
    If Not RstFormNo.EOF Then
        Call FormCHeader(pg1, co, Repindex)
        
        Set rstform = New Recordset
        rstform.Open "select Slname,Tinno,Name from fa_slmas a, ig_state b,fa_form_issh c where c.form_Doc_No='" & RstFormNo("Form_Doc_No") & "' and c.slcode=a.slcode and b.state_code=a.state_code", Cnn, adOpenStatic
        If Not rstform.EOF Then
            
            'Print #a, Space(5) + Padl("Form No", 8, " ") + Space(2) + Padr("Date", 10, " ") + Space(2) + Padr("Supplier", 25, " ") + Space(1) + Padl("TIN No", 15, " ") + Space(1) + Padr("State", 20, " ")
            Print #a,
        End If
        
        Do While Not RstFormNo.EOF
        
            If FormNo <> RstFormNo("Form_Doc_No") Then
                Print #a, Space(5) + Padl(RstFormNo("Form_Doc_No"), 8, " ") + Space(2) + Padr(Format(RstFormNo("Form_Doc_Dt"), "dd/mm/yyyy"), 10, " ") + Space(2) + Padr(rstform("Slname"), 30, " ") + Space(1) + Padr(rstform("Tinno"), 15, " ") + Space(1) + Padr(rstform("name"), 20, " ")
                BillTotal = 0
            End If
            FormNo = RstFormNo("Form_Doc_No")
            
            Set rstformissue = New Recordset
            rstformissue.Open "Select a.form_doc_no,a.Form_doc_dt,slname,tinno,c.state_code,BillNo,BillDt,BillAmt,Pjvocno,Pjvocdt from " _
                              & " fa_form_issh a,fa_form_isst b,fa_slmas c,ig_state d where a.form_doc_no = b.form_doc_no " _
                              & " And a.form_doc_dt = b.form_doc_dt And c.slcode = a.slcode And c.state_code = d.state_code " _
                              & " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.form_doc_no='" & RstFormNo("Form_Doc_No") & "'", Cnn, adOpenStatic
                              
            'Print #a, Space(5) + Padl(" ", 8, " ") + Space(2) + Padr("Bill No", 10, " ") + Space(2) + Padr("Bill Date", 10, " ") + Space(2) + Padr("Commodity code", 15, " ") + Space(2) + Padl("Amount", 14, " ")
            Do While Not rstformissue.EOF
                Set RstComCode = New Recordset
                RstComCode.Open "Select left(itemcode,3) 'CCode' from in_pjl where pjvocno=" & rstformissue("pjvocno") & " and pjvocdt='" & Format(rstformissue("PjvocDt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", Cnn, adOpenStatic
                If Not RstComCode.EOF Then
                    Set RstGroup = New Recordset
                    RstGroup.Open "Select Comm_Code from in_Grp where grpcode='" & RstComCode("cCode") & "'", Cnn, adOpenStatic
                    If Not RstGroup.EOF Then
                        ComCode = IIf(IsNull(RstGroup("Comm_Code")), "", RstGroup("Comm_Code"))
                    Else
                        ComCode = ""
                    End If
                End If
                Print #a, Space(5) + Padl(" ", 8, " ") + Space(2) + Padr(rstformissue("Billno"), 10, " ") + Space(2) + Padr(rstformissue("BillDt"), 10, " ") + Space(1) + Padr(ComCode, 15, " ") + Space(2 + 6 + 5) + Padl(Format(rstformissue("BillAmt"), "##0.00"), 14, " ")
                BillTotal = BillTotal + IIf(IsNull(rstformissue("BillAmt")), 0, rstformissue("BillAmt"))
                rstformissue.MoveNext
                co = co + 1
            Loop
            
            If rstformissue.RecordCount > 0 Then
                'Print #a, Space(5) + Padl(" ", 8, " ") + Space(2) + Padr("**Total**", 10, " ") + Space(2) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 15, " ") + Space(2 + 6 + 5) + String(14, "-")
                Print #a,
                Print #a, Space(5) + Padl(" ", 8, " ") + Space(2) + Padr("**Total**", 10, " ") + Space(2) + Padr(" ", 10, " ") + Space(1) + Padr(" ", 15, " ") + Space(2 + 6 + 5) + Padl(Format(BillTotal, "##0.00"), 14, " ")
                co = co + 1
                Print #a,
            End If
            
            If co >= 55 Then
                Print #a, Space(5) + String(85, "-")
                Print #a, Chr(12)
                pg1 = pg1 + 1
                Print #a, Space(5) + String(85, "-")
                Call FormCHeader(pg1, co, Repindex)
                Print #a, Space(5) + String(85, "-")
                co = 2
            End If
        
            
            
            RstFormNo.MoveNext
            Print #a,
        Loop
    End If
    Print #a, Space(5) + String(85, "-")
    
    Print #a, Chr(12)
    Close
    Close #a
    a = FreeFile
'    Open "c:\FCRecd.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type FCRecd.txt>prn"
'    Close #a
'    RPTV.txtfile = "c:\FCRecd.txt"
'    RPTV.Batfile = "c:\FCRecd.bat"
    Call KALBATPROCESS("FCRecd")
    Screen.MousePointer = 0
Case 1
    Screen.MousePointer = 11
    Dim dblSuppTotal As Double
    If optDatewise = True Then
        
        Set rptv = New Report.ReportView
        a = FreeFile
        Close #a
        Close
       ' Open "C:\FCIssue.txt" For Output As #a
       Open KALFOLDERDATA & "\FCIssue.TXT" For Output As #a
        pg1 = 1
        co = 0
        'Call FormCHeader(pg1, co)
    
        Set RstFormNo = New Recordset
        RstFormNo.Open " Select a.form_doc_no,A.Form_doc_dt,C.Tinno,C.slcode,C.Slname,c.city,D.Name,a.form_no,A.FORM_DT from fa_form_issh a,fa_form_isst b, " & _
                        " FA_SlMas C,ig_state D where C.State_Code*=D.State_Code and A.Slcode=C.Slcode And a.form_doc_no=b.form_doc_no and a.form_doc_dt=b.form_doc_dt " & _
                        " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and  " & _
                        " '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' And a.form_doc_dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  " & _
                        " '" & Format(yldate, "yyyy-mm-dd") & "' " & _
                        " group by a.form_doc_no,a.form_doc_Dt,C.Tinno,C.slcode,C.Slname,D.Name,a.form_no, c.city,A.FORM_DT ORDER BY A.FORM_DOC_DT,A.FORM_DOC_NO", Cnn, adOpenStatic
        If RstFormNo.EOF Then
            MsgBox "No Records found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        SNO = 1
        dup = RstFormNo!Form_doc_dt
        BillTotal = 0
        If Not RstFormNo.EOF Then
            Call FormCHeader(pg1, co, Repindex)
            
            
            Do While Not RstFormNo.EOF
                If dup <> RstFormNo!Form_doc_dt And iCount > 1 Then
                    dup = RstFormNo!Form_doc_dt
                        Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Datewise Total ***", 24, " ") + Padr(" ", 14, " ") + Space(2 + 6 + 5) + Padl(INF(dblSuppTotal, 2), 14, " ")
                        Print #a,
                        iCount = 0
                      dblSuppTotal = 0
                End If
                                
                
                If FormNo <> RstFormNo("Form_No") Then 'And sno > 1 Then
                    If dup <> RstFormNo!Form_doc_dt Then iCount = 0: dblSuppTotal = 0
                    dup = RstFormNo!Form_doc_dt

                    Print #a, Padr(RstFormNo("Form_No"), 25, " ") + Space(1) + Padr(Format(RstFormNo("Form_Dt"), "dd/MM/yy"), 8, " ") + Space(1) + Padr(RstFormNo("Slname"), 26, " ") + Space(1) + Padr(RstFormNo("Tinno"), 15, " ") + Space(1) + Padr(RstFormNo("city"), 16, " ")
                   
                End If

                Set rstformissue = New Recordset
                rstformissue.Open " Select a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,b.Pjvocno,b.Pjvocdt,d.abbr,e.lotno from " _
                                  & " fa_form_issh a,fa_form_isst b,fa_slmas c,pp_divmas d,rm_lot e where e.fbillno=b.billno and E.DIVCODE=B.DIVCODE AND E.PJNO=B.PJVOCNO AND E.PJDT=B.PJVOCDT AND E.SUPCD = A.SLCODE and b.form_divcode =d.divcode and a.form_doc_no = b.form_doc_no " _
                                  & " And a.form_doc_dt = b.form_doc_dt And c.slcode = a.slcode and slname ='" & RstFormNo!Slname & "'" _
                                  & " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-MM-dd") & "' and a.form_doc_no='" & RstFormNo("Form_Doc_No") & "' GROUP BY a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,b.Pjvocno,b.Pjvocdt,d.abbr,e.lotno  ", Cnn, adOpenStatic
                                  

                
                Do While Not rstformissue.EOF
                    Set RstComCode = New Recordset
                    RstComCode.Open "Select left(itemcode,3) 'CCode' from in_pjl where pjvocno=" & rstformissue("pjvocno") & " and pjvocdt='" & Format(rstformissue("PjvocDt"), "yyyy-MM-dd") & "' and divcode='" & Divcode & "'", Cnn, adOpenStatic
                    If Not RstComCode.EOF Then
                        Set RstGroup = New Recordset
                        RstGroup.Open "Select Comm_Code from in_Grp where grpcode='" & RstComCode("cCode") & "'", Cnn, adOpenStatic
                        If Not RstGroup.EOF Then
                            ComCode = IIf(IsNull(RstGroup("Comm_Code")), "", RstGroup("Comm_Code"))
                        Else
                            ComCode = ""
                        End If
                    Else
                        ComCode = ""
                    End If
                    Print #a, Padl(" ", 5, " ") + Space(6) + Padr(rstformissue("Billno"), 8, " ") + Space(2) + Padr(Format(rstformissue("BillDt"), "dd/MM/yy"), 10, " ") + Space(2) + Padr(rstformissue!lotno, 13, "") + Space(2) + Padr(ComCode, 15, " ") + Space(1) + Padl(INF(rstformissue("BillAmt"), 2), 12, " ") + Space(2) + Padr(rstformissue("abbr"), 8, " ")
                    SNO = SNO + 1
                    iCount = iCount + 1
                    BillTotal = BillTotal + IIf(IsNull(rstformissue("BillAmt")), 0, rstformissue("BillAmt"))
                    dblSuppTotal = dblSuppTotal + IIf(IsNull(rstformissue("BillAmt")), 0, rstformissue("BillAmt"))
                    rstformissue.MoveNext
                    co = co + 1
                Loop
                
                If co >= 55 Then
                    Print #a, String(90, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    Print #a, String(90, "-")
                    Call FormCHeader(pg1, co, Repindex)
                    Print #a, String(90, "-")
                    co = 2
                End If
'                iCount = iCount + 1
                
                
                RstFormNo.MoveNext
                Print #a,
            Loop
        End If
        If iCount > 1 Then
             Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Datewise Total ***", 24, " ") + Padr(" ", 14, " ") + Space(2 + 6 + 5) + Padl(INF(dblSuppTotal, 2), 14, " ")
             Print #a,
             iCount = 0
             dblSuppTotal = 0
        End If
       ' If rstformissue.RecordCount > 0 Then
            Print #a, String(90, "-")
            Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Grand Total ***", 20, " ") + Space(2) + Space(1) + Padr(" ", 15, " ") + Space(2 + 6 + 5) + Padl(INF(BillTotal, 2), 14, " ")
            co = co + 2
            Print #a, String(90, "-")
        'End If
        BillTotal = 0
                
       ' Print #a, Space(5) + String(85, "-")
        
        Print #a, Chr(12)
        Close
        Close #a
        a = FreeFile
'        Open "c:\FCIssue.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type FCIssue.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\FCIssue.txt"
'        RPTV.Batfile = "c:\FCIssue.bat"
Call KALBATPROCESS("FCIssue")
    Else
            
        Set rptv = New Report.ReportView
        a = FreeFile
        Close #a
        Close
'        Open "C:\FCIssue.txt" For Output As #a
Open KALFOLDERDATA & "\FCIssue.TXT" For Output As #a
        pg1 = 1
        co = 0
'        Dim iCount As Integer
        iCount = 0
        'Call FormCHeader(pg1, co)
    
        Set RstFormNo = New Recordset
        RstFormNo.Open " Select a.form_doc_no,A.Form_doc_dt,C.Tinno,C.slcode,C.Slname,c.city,D.Name,a.form_no,A.FORM_DT from fa_form_issh a,fa_form_isst b, " & _
                        " FA_SlMas C,ig_state D where C.State_Code*=D.State_Code and A.Slcode=C.Slcode And a.form_doc_no=b.form_doc_no and a.form_doc_dt=b.form_doc_dt " & _
                        " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and  " & _
                        " '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' And a.form_doc_dt between '" & Format(yfdate, "yyyy-mm-dd") & "' and  " & _
                        " '" & Format(yldate, "yyyy-mm-dd") & "' and a.slcode between '" & strFromSupp & "' AND '" & strToSupp & "'" & _
                        " group by c.slcode,a.form_doc_no,a.form_doc_Dt,C.Tinno,C.Slname,D.Name,a.form_no, c.city,A.FORM_DT Order By c.slcode ,a.form_doc_DT,a.form_doc_NO", Cnn, adOpenStatic
        If RstFormNo.EOF Then
            MsgBox "No Records found", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        SNO = 1
        BillTotal = 0
        iCount = 0
        If Not RstFormNo.EOF Then
            dup = RstFormNo!Slname
            Call FormCHeader(pg1, co, Repindex)
            
            Do While Not RstFormNo.EOF
            
                If FormNo <> RstFormNo("Form_No") Then 'And sno > 1 Then
                    If co > 6 Then
                        If dup <> RstFormNo!Slname And iCount > 1 Then
                            Print #a,: Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Supplier Total ***", 24, " ") + Padr(" ", 14, " ") + Space(2 + 6 + 5) + Padl(INF(dblSuppTotal, 2), 14, " ")
                            iCount = 0
                            dblSuppTotal = 0
                        End If
                    End If
                    Print #a,
                    Print #a, Padr(RstFormNo("Form_No"), 25, " ") + Space(1) + Padr(Format(RstFormNo("Form_Dt"), "dd/mm/yy"), 8, " ") + Space(1) + Padr(RstFormNo("Slname"), 26, " ") + Space(1) + Padr(RstFormNo("Tinno"), 15, " ") + Space(1) + Padr(RstFormNo("city"), 16, " ")
                   ' BillTotal = 0
                End If
    
                Set rstformissue = New Recordset
                rstformissue.Open " Select a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,Pjvocno,Pjvocdt,d.abbr,e.lotno from " _
                                  & " fa_form_issh a,fa_form_isst b,fa_slmas c,pp_divmas d, rm_lot e where E.DIVCODE=B.DIVCODE AND E.PJNO=B.PJVOCNO AND E.PJDT=B.PJVOCDT AND E.SUPCD = A.SLCODE and b.form_divcode =d.divcode and a.form_doc_no = b.form_doc_no " _
                                  & " And a.form_doc_dt = b.form_doc_dt And c.slcode = a.slcode and c.slname ='" & RstFormNo!Slname & "'" _
                                  & " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.form_doc_no='" & RstFormNo("Form_Doc_No") & "' GROUP BY a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,Pjvocno,Pjvocdt,d.abbr,e.lotno  " _
                                  & " ORDER BY slname, a.form_doc_DT,a.form_doc_NO", Cnn, adOpenStatic
'                rstformissue.Open " Select a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,Pjvocno,Pjvocdt,d.abbr,e.lotno from " _
'                                  & " fa_form_issh a,fa_form_isst b,fa_slmas c,pp_divmas d, rm_lot e where e.fbillno=b.billno and e.fbilldt=b.billdt AND E.DIVCODE=B.DIVCODE AND E.PJNO=B.PJVOCNO AND E.PJDT=B.PJVOCDT AND E.SUPCD = A.SLCODE and b.form_divcode =d.divcode and a.form_doc_no = b.form_doc_no " _
'                                  & " And a.form_doc_dt = b.form_doc_dt And c.slcode = a.slcode and c.slname ='" & RstFormNo!Slname & "'" _
'                                  & " and a.form_doc_dt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and a.form_doc_no='" & RstFormNo("Form_Doc_No") & "' GROUP BY a.form_doc_no,a.Form_doc_dt,slname,c.tinno,c.state_code,b.BillNo,b.BillDt,b.BillAmt,Pjvocno,Pjvocdt,d.abbr,e.lotno  " _
'                                  & " ORDER BY slname, a.form_doc_DT,a.form_doc_NO", cnn, adOpenStatic
                                  
                
                Do While Not rstformissue.EOF
                    Set RstComCode = New Recordset
                    RstComCode.Open "Select left(itemcode,3) 'CCode' from in_pjl where pjvocno=" & rstformissue("pjvocno") & " and pjvocdt='" & Format(rstformissue("PjvocDt"), "yyyy-mm-dd") & "' and divcode='" & Divcode & "'", Cnn, adOpenStatic
                    If Not RstComCode.EOF Then
                        Set RstGroup = New Recordset
                        RstGroup.Open "Select Comm_Code from in_Grp where grpcode='" & RstComCode("cCode") & "'", Cnn, adOpenStatic
                        If Not RstGroup.EOF Then
                            ComCode = IIf(IsNull(RstGroup("Comm_Code")), "", RstGroup("Comm_Code"))
                        Else
                            ComCode = ""
                        End If
                    Else
                        ComCode = ""
                    End If
                    Print #a, Padl(" ", 5, " ") + Space(6) + Padr(rstformissue("Billno"), 8, " ") + Space(2) + Padr(Format(rstformissue("BillDt"), "dd/MM/yy"), 10, " ") + Space(2) + Padr(rstformissue!lotno, 13, "") + Space(2) + Padr(ComCode, 15, " ") + Space(1) + Padl(INF(rstformissue("BillAmt"), 2), 12, " ") + Space(2) + Padr(rstformissue("abbr"), 8, " ")
                    SNO = SNO + 1
                    BillTotal = BillTotal + IIf(IsNull(rstformissue("BillAmt")), 0, rstformissue("BillAmt"))
                    dblSuppTotal = dblSuppTotal + IIf(IsNull(rstformissue("BillAmt")), 0, rstformissue("BillAmt"))
                    iCount = iCount + 1
                    rstformissue.MoveNext
                    co = co + 1
                    
                Loop
'                    If dup <> RstFormNo!Slname Then
'                    If iCount > 1 Then Print #a,: Print #a, Padl(" ", 17, " ") + Space(2) + Padr("*** Supplier Total ***", 24, " ") + Padr(" ", 14, " ") + Space(2 + 6 + 5) + Padl(Format(dblSuppTotal, "##0.00"), 14, " ")
'                    End If
                If co >= 55 Then
                    Print #a, String(90, "-")
                    Print #a, Chr(12)
                    pg1 = pg1 + 1
                    Print #a, String(90, "-")
                    Call FormCHeader(pg1, co, Repindex)
                    Print #a, String(90, "-")
                    co = 2
                End If
            
'                If dup <> RstFormNo!Slname Then Print #a,
                dup = RstFormNo!Slname
                RstFormNo.MoveNext
                
            Loop
        End If
             
             If iCount > 1 Then
                  Print #a,: Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Supplier Total ***", 24, " ") + Padr(" ", 14, " ") + Space(2 + 6 + 5) + Padl(INF(dblSuppTotal, 2), 14, " ")
                  iCount = 0
                  dblSuppTotal = 0
            End If

       
       ' If rstformissue.RecordCount > 0 Then
            Print #a,
            Print #a, String(90, "-")
            Print #a, Padl(" ", 9, " ") + Space(2) + Padr("*** Grand Total ***", 20, " ") + Space(2) + Space(1) + Padr(" ", 15, " ") + Space(2 + 6 + 5) + Padl(INF(BillTotal, 2), 14, " ")
            co = co + 2
            Print #a, String(90, "-")
        'End If
        BillTotal = 0
                
       ' Print #a, Space(5) + String(85, "-")
        
        Print #a, Chr(12)
        Close
        Close #a
        a = FreeFile
'        Open "c:\FCIssue.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type FCIssue.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\FCIssue.txt"
'        RPTV.Batfile = "c:\FCIssue.bat"
Call KALBATPROCESS("FCIssue")

    End If
    Screen.MousePointer = 0
      
Case 222
    Dim Rs As New Recordset
    Screen.MousePointer = 11
    If optDatewise.value = True Then
        Set rptv = New Report.ReportView
        a = FreeFile
        Close #a
        Close
        pg1 = 0
        co = 0
        dup = ""
        dup1 = ""
        BillTotal = 0
'        Open "C:\FCPending.txt" For Output As #a
Open KALFOLDERDATA & "\FCPending.TXT" For Output As #a

        Call formcpendingheader
    
        Set RstFormNo = New Recordset
        RstFormNo.Open " select distinct isnull(slname,'') as slname,a.supcd,isnull(d.PjvNo,0) as pjvocno,isnull(d.PjvDt,'') as pjvocdt,isnull(d.BillNo,'') as billno," & _
                       " isnull(d.BillDt,'') as billdt,isnull(d.BillAmt,0) as billamt,c.abbr,a.lotno from rm_lot A,fa_slmas b,pp_divmas c, fa_purhd d " & _
                       " where a.divcode=d.divcode and a.supcd = d.slcode and a.pjno= d.pjvno and a.pjdt=d.pjvdt and a.divcode = c.divcode and a.supcd=b.slcode and " & _
                       " isnull(A.FIssue_Flg,'') <>'Y' AND A.pjdt between '" & Format(start_date, "yyyy-mm-dd") & "' and '" & Format(END_DATE, "yyyy-mm-dd") & "' " & _
                       " And A.Form_Type IS NOT NULL And A.Form_Type<>''  And replace(A.Form_Type,' ','') <> (Select TypeCode From PO_FormType Where Description = 'NONE')" & _
                       " order by a.pjvocdt", Cnn, adOpenStatic
        If RstFormNo.EOF = False Then
        dblSuppTotal = 0
        iCount = 0
        
                Do While Not RstFormNo.EOF
                    If CST_EXIST(RstFormNo!SUPCD) = True Then
                    If dup <> RstFormNo("pjvocdt") Then
                        
                        If co > 7 Then Print #a,
                        If iCount > 1 Then
                            Print #a, Padl(" ", 17, " ") + Space(2) + Padr("*** Datewise Total ***", 24, " ") + Padr(" ", 1, " ") + Space(2 + 6 + 5) + Padl(INF(dblSuppTotal, 2), 14, " ")
                            Print #a,
                        
                            dblSuppTotal = 0
                        End If
                            iCount = 0
                            dblSuppTotal = 0
                        Print #a, Padr(Format(RstFormNo!pjvocdt, "DD/MM/YY"), 11, " ") & Space(6);
                    Else
                        Print #a, Space(17);
                    End If
                    
                    Print #a, Padr(RstFormNo!Pjvocno, 8, " ") & Space(8);
                    Print #a, Padr(RstFormNo!Slname, 45, " ") '& Space(1);
                    Print #a, Space(17) & Padr(RstFormNo!lotno, 10, "") & Space(6) & Padr(RstFormNo!BillNo, 12, " ") & _
                              Space(1) & Padr(IIf(RstFormNo!BILLDT = "01/01/1900", "", Format(RstFormNo!BILLDT, "DD/MM/YY")), 10, " ") & _
                              Space(0) & Padl(INF(RstFormNo!billamt, 2), 15, " ") & Space(4) & Padr(RstFormNo!abbr, 10, "")
                    dup = RstFormNo("pjvocdt")
                    dup1 = RstFormNo("slname")
                    co = co + 2
                    iCount = iCount + 1
                    BillTotal = BillTotal + RstFormNo("billamt")
                    dblSuppTotal = dblSuppTotal + RstFormNo("billamt")
                    End If
                    RstFormNo.MoveNext
                    If co >= 57 Then
                        Print #a, Chr(12)
                        Print #a, String(89, "-")
                        Call formcpendingheader
                        dup = ""
                        co = 0
                    End If
                Loop
        Else
            MsgBox "No Records Found...!", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        If iCount > 1 Then
             Print #a,
             Print #a, Padl(" ", 17, " ") + Space(2) + Padr("*** Datewise Total ***", 24, " ") + Space(2 + 6 + 6) + Padl(INF(dblSuppTotal, 2), 14, " ")
             Print #a,
             iCount = 0
             dblSuppTotal = 0
        End If

        Print #a, String(89, "-")
            Print #a, Padl(" ", 17, " ") + Space(2) + Padr("***   Grand Total  ***", 24, " ") + Space(2 + 6 + 6) + Padl(INF(BillTotal, 2), 14, " ")
        Print #a, String(89, "-")
        Print #a, Chr(12)
        Close
        Close #a
        a = FreeFile
'        Open "c:\FCPending.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type FCPending.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\FCPending.txt"
'        RPTV.Batfile = "c:\FCPending.bat"
Call KALBATPROCESS("FCPending")
    Else
        Set rptv = New Report.ReportView
'        Dim iCount As Integer
        a = FreeFile
        Close #a
        Close
        pg1 = 0
        co = 0
        dup = ""
        dup1 = ""
        BillTotal = 0
'        Open "C:\FCPending.txt" For Output As #a
Open KALFOLDERDATA & "\FCPending.TXT" For Output As #a
        Call formcpendingheader
       
        Set RstFormNo = New Recordset
       RstFormNo.Open " select distinct isnull(slname,'') as slname,a.supcd,isnull(d.PjvNo,0) as pjvocno,isnull(d.PjvDt,'') as pjvocdt,isnull(d.BillNo,'') as billno,isnull(d.BillDt,'') as billdt,isnull(d.BillAmt,0) as billamt," & _
                      " c.abbr,a.lotno from rm_lot A,fa_slmas b,pp_divmas c, fa_purhd d WHERE a.divcode = d.divcode and a.pjno=d.pjvno and a.pjdt = d.pjvdt and a.supcd=d.slcode and a.divcode = c.divcode and a.supcd=b.slcode and " & _
                       " a.Supcd between '" & strFromSupp & "' AND '" & strToSupp & "' and isnull(A.FIssue_Flg,'') <>'Y' AND A.pjdt between '" & Format(start_date, "yyyy-mm-dd") & "' and '" & Format(END_DATE, "yyyy-mm-dd") & "' " & _
                       " And A.Form_Type IS NOT NULL And A.Form_Type<>''  And replace(A.Form_Type,' ','') <> (Select TypeCode From PO_FormType Where Description = 'NONE') order by a.supcd ,a.pjvocdt", Cnn, adOpenStatic
        If RstFormNo.EOF = False Then
        strSupplier = ""
            dblBillValue = 0
            iCount = 0
            Do While Not RstFormNo.EOF
                    If CST_EXIST(RstFormNo!SUPCD) = True Then
                    
                    If dup1 <> RstFormNo("slname") Then
                       If co > 7 Then
                       
                       If iCount > 1 Then
                            Print #a,
                            Print #a, Space(30) & " *** Supplier Total ***" & Space(10) & Padl(INF(dblBillValue, 2), 15, " ")
                            Print #a,
                            iCount = 0
                        Else
                            Print #a,
                            iCount = 0
                        End If
                        End If
                        dblBillValue = 0
                        Print #a, Padr(RstFormNo!Slname, 45, " ") '& Space(1);
                    Else
''                        Print #a, Space(26);
                    End If
'                    If dup <> RstFormNo("pjvocdt") Then
                        Print #a, Padr(Format(RstFormNo!pjvocdt, "DD/MM/YY"), 10, " "); ' & Space(1);
'                    Else
'                        Print #a, Space(11);
'                    End If
                    Print #a, Padl(RstFormNo!Pjvocno, 8, " ") & Space(2);
                    Print #a, Space(9) & Padr(RstFormNo!lotno, 10, "") & Space(5) & Padr(RstFormNo!BillNo, 10, " ") & Space(1) & Padr(Format(RstFormNo!BILLDT, "DD/MM/YY"), 10, " ") & Space(1) & Padl(INF(RstFormNo!billamt, 2), 12, " ") & Space(2) & Padr(RstFormNo!abbr, 10, "")
                    dup = RstFormNo("pjvocdt")
                    strSupplier = RstFormNo("Slname")
                    co = co + 1
                    iCount = iCount + 1
                    BillTotal = BillTotal + RstFormNo("billamt")
                    dblBillValue = dblBillValue + RstFormNo!billamt
                    
                    If RstFormNo.RecordCount = 1 Then Print #a,
                    dup1 = RstFormNo("slname")
                    
                    
                    If co >= 57 Then
                        Print #a, Chr(12)
                        Print #a, Space(5) & String(80, "-")
                        Call formcpendingheader
                        dup = ""
                        co = 0
                    End If
              '  End If
                              
'                    Set RstFormNoS = New Recordset
'                    RstFormNoS.Open " select distinct isnull(slname,'') as slname,a.supcd,isnull(A.PjNo,0) as pjvocno,isnull(A.PjDt,'') as pjvocdt,isnull(A.fBillNo,'') as billno,isnull(A.fBillDt,'') as billdt,isnull(A.fBillvalue,0) as billamt,c.abbr,a.lotno from rm_lot A,fa_slmas b,pp_divmas c WHERE a.divcode = c.divcode and a.supcd=b.slcode and " & _
'                             " b.slname = '" & strSupplier & "' And a.Supcd between '" & strFromSupp & "' AND '" & strToSupp & "' and isnull(A.FIssue_Flg,'') <>'Y' AND A.pjdt between '" & Format(start_date, "yyyy-mm-dd") & "' and '" & Format(END_DATE, "yyyy-mm-dd") & "' " & _
'                             " And A.Form_Type IS NOT NULL And A.Form_Type<>''  And replace(A.Form_Type,' ','') <> (Select TypeCode From PO_FormType Where Description = 'NONE') order by a.supcd ,a.pjvocdt", cnn, adOpenStatic
'
'                             If dup1 <> RstFormNo!Slname Then
'                             If RstFormNoS.RecordCount > 1 Then
'                                    Print #a,
'                                    Print #a, Space(30) & " *** Supplier Total ***" & Space(10) & Padl(INF(dblBillValue, 2), 15, " ")
'                                    Print #a,
'                             End If
'                             If RstFormNoS.RecordCount = 1 Then Print #a,
'                             End If
'                dblBillValue = 0
                End If
                RstFormNo.MoveNext
                Loop
                Set RstFormNoS = New Recordset
                RstFormNoS.Open " select distinct isnull(slname,'') as slname,a.supcd,isnull(A.PjNo,0) as pjvocno,isnull(A.PjDt,'') as pjvocdt,isnull(A.fBillNo,'') as billno,isnull(A.fBillDt,'') as billdt,isnull(A.fBillvalue,0) as billamt,c.abbr,a.lotno from rm_lot A,fa_slmas b,pp_divmas c WHERE a.divcode = c.divcode and a.supcd=b.slcode and " & _
                         " b.slname = '" & strSupplier & "' And a.Supcd between '" & strFromSupp & "' AND '" & strToSupp & "' and isnull(A.FIssue_Flg,'') <>'Y' AND A.pjdt between '" & Format(start_date, "yyyy-mm-dd") & "' and '" & Format(END_DATE, "yyyy-mm-dd") & "' " & _
                         " And A.Form_Type IS NOT NULL And A.Form_Type<>''  And replace(A.Form_Type,' ','') <> (Select TypeCode From PO_FormType Where Description = 'NONE') order by a.supcd ,a.pjvocdt", Cnn, adOpenStatic

'                If dup1 <> RstFormNo!Slname Then
                If RstFormNoS.RecordCount > 1 Then
                       Print #a,
                       Print #a, Space(30) & " *** Supplier Total ***" & Space(10) & Padl(INF(dblBillValue, 2), 15, " ")
                       Print #a,
                End If
'                If RstFormNoS.RecordCount = 1 Then Print #a,
'                End If
                dblBillValue = 0

                
        Else
            MsgBox "No Records Found...!", vbInformation, head
            Screen.MousePointer = 0
            Exit Sub
        End If
        Print #a, String(89, "-")
        Print #a, Space(30) & " *** Grand Total *** " & Space(12) & Padl(INF(BillTotal, 2), 15, " ")
        Print #a, String(89, "-")
        Print #a, Chr(12)
        Close
        Close #a
        a = FreeFile
'        Open "c:\FCPending.bat" For Output As #a
'        Print #a, "cd\"
'        Print #a, "c:"
'        Print #a, "cd\"
'        Print #a, "type FCPending.txt>prn"
'        Close #a
'        RPTV.txtfile = "c:\FCPending.txt"
'        RPTV.Batfile = "c:\FCPending.bat"
Call KALBATPROCESS("FCPending")
    End If
    Screen.MousePointer = 0
'
'Case 223 ' Form C Pending Report Supplier Wise  ******** S.Vinoth Kumar ********
'    'Dim Rs As New Recordset
'    Screen.MousePointer = 11
'    Set RPTV = New Report.ReportView
'    a = FreeFile
'    Close #a
'    Close
'    pg1 = 0
'    co = 0
'    dup = ""
'    dup1 = ""
'    BillTotal = 0
'    Open "C:\FCPending.txt" For Output As #a
'    Call formcpendingheader
'    Set RstFormNo = New Recordset
'    RstFormNo.Open " select distinct isnull(slname,'') as slname,isnull(A.PjNo,0) as pjvocno,isnull(A.PjDt,'') as pjvocdt,isnull(A.fBillNo,'') as billno,isnull(A.fBillDt,'') as billdt,isnull(A.fBillvalue,0) as billamt,c.abbr,a.lotno from rm_lot A,fa_slmas b,pp_divmas c WHERE a.divcode = c.divcode and a.supcd=b.slcode and " & _
'                   " isnull(A.FIssue_Flg,'') <>'Y' AND A.pjdt between '" & Format(start_date, "yyyy-mm-dd") & "' and '" & Format(END_DATE, "yyyy-mm-dd") & "' " & _
'                   " And A.Form_Type IS NOT NULL And A.Form_Type<>''  And replace(A.Form_Type,' ','') <> (Select TypeCode From PO_FormType Where Description = 'NONE') order by a.pjvocdt", cnn, adOpenStatic
'    If RstFormNo.EOF = False Then
'            Do While Not RstFormNo.EOF
'            'Set RS = New Recordset
'            'RS.Open " Select dISTINCT PjvocNo,PjvocDt From FA_FORM_ISST Where PjvocDt='" & Format(RstFormNo!pjvocdt, "YYYY-MM-DD") & "' And  PjvocNo='" & RstFormNo!PjvocNo & "'", cnn, adOpenStatic, adLockReadOnly
'            'If RS.EOF = True Then
'                If dup <> RstFormNo("pjvocdt") Then
'                    Print #a, Padr(Format(RstFormNo!pjvocdt, "DD/MM/YY"), 12, " "); ' & Space(1);
'                Else
'                    Print #a, Space(12);
'                End If
'                Print #a, Padl(RstFormNo!Pjvocno, 8, " ") & Space(13);
''                If dup1 <> RstFormNo("slname") Then
'                    Print #a, Padr(RstFormNo!Slname, 45, " ") '& Space(1);
''                Else
''                    Print #a, Space(26);
''                End If
'                Print #a, Space(17) & Padr(RstFormNo!LOTNO, 10, "") & Space(6) & Padr(RstFormNo!BillNo, 12, " ") & Space(1) & Padr(Format(RstFormNo!BillDt, "DD/MM/YY"), 10, " ") & Space(0) & Padl(INF(RstFormNo!billamt, 2), 15, " ") & Space(4) & Padr(RstFormNo!abbr, 10, "")
'                dup = RstFormNo("pjvocdt")
'                dup1 = RstFormNo("slname")
'                co = co + 1
'                BillTotal = BillTotal + RstFormNo("billamt")
'                RstFormNo.MoveNext
'                If co >= 57 Then
'                    Print #a, Chr(12)
'                    Print #a, Space(5) & String(80, "-")
'                    Call formcpendingheader
'                    dup = ""
'                    co = 0
'                End If
'          '  End If
'            Loop
'    Else
'        MsgBox "No Records Found...!", vbInformation, head
'        Screen.MousePointer = 0
'        Exit Sub
'    End If
'    Print #a, String(89, "-")
'    Print #a, Space(46) & "Total       " & Padl(INF(BillTotal, 2), 13, " ")
'    Print #a, String(89, "-")
'    Print #a, Chr(12)
'    Close
'    Close #a
'    a = FreeFile
'    Open "c:\FCPending.bat" For Output As #a
'    Print #a, "cd\"
'    Print #a, "c:"
'    Print #a, "cd\"
'    Print #a, "type FCPending.txt>prn"
'    Close #a
'    RPTV.txtfile = "c:\FCPending.txt"
'    RPTV.Batfile = "c:\FCPending.bat"
'
'    Screen.MousePointer = 0
Case 3
    Call ServiceBillDateWise
End Select

Exit Sub
Cmd_Ok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Cmd_Ok_Click of Form frmFormCReport", vbInformation, head
    Screen.MousePointer = 0
Screen.MousePointer = 0

End Sub
Private Sub ServiceBillDateWise()
Dim deptcount As Integer
Dim lno As Integer
Dim PgNo As Integer
Dim DayTotal, GTotal As Double
Dim DayCount As Integer
Dim TEMP, depcode As String
On Error GoTo ServiceBillDateWise_Error

    lno = 8
    PgNo = 1
    Set rptv = New Report.ReportView
    a = FreeFile
    Close #a
    Close
    Open KALFOLDERDATA & "\SerViceBillDate.TXT" For Output As #a
    Call ServiceBillDateTitle(PgNo)
    TEMP = ""
    DayTotal = 0
    GTotal = 0
    depcode = ""
    DayCount = 0
    Set Cnn = New Connection
    Cnn.Provider = "MSDATASHAPE"
    Cnn.Open connectstring

    Set RSService = New Recordset
    SqlQry = " SELECT ARTICLE,D.depcode,A.DOCNO,A.DOCDT,A.in_from,S.Slname,B.value,A.billno,A.billdt,D.depNAME,B.QUANTITY " & _
                   " FROM INPASSHD A,INPASSDT B,in_dep D , Fa_slMas S WHERE A.in_from=S.slcode And A.divcode='" & Divcode & "' and A.divcode=B.divcode and " & _
                   " A.divcode=D.divcode and A.DOCNO=B.DOCNO AND A.DOCDT=B.DOCDT and A.depcode=D.depcode AND A.DOCDT " & _
                   " BETWEEN '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' AND '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' " & _
                   " AND A.ERTFLG='E' Order By A.DOCDT "
    RSService.Open SqlQry, Cnn, adOpenStatic, adLockReadOnly
    If Not RSService.EOF Then
        RSService.MoveFirst
        While Not RSService.EOF
        If RSService("DOCDT") <> TEMP Then
            If DayCount > 1 Then
                Print #a,
                Print #a, Space(3); Space(9); Space(1); Space(30); Space(1); Space(30); Space(1); Space(30); Padl("** Datewise Total **", 35, "") + Space(1) + Padl(Format(DayTotal, "#0.00"), 12, " ")
                lno = lno + 2
                If lno >= 60 Then
                    Print #a, Space(3) & String(150, "-")
                    Print #a, Chr(12)
                    Call ServiceBillDateTitle(PgNo)
                    lno = 8
                    PgNo = PgNo + 1
                End If
            End If
            DayCount = 0
            DayTotal = 0
            'Print #a,
            lno = lno + 1
            Print #a, Space(3); RSService("DOCDT")
            lno = lno + 1
            TEMP = RSService("DOCDT")
        End If
        Set RSSub = New Recordset
        RSSub.Open "Select depname from in_dep where depcode = '" & RSService("depcode") & "' ", Cnn, adOpenStatic, adLockReadOnly
        If Not RSSub.RecordCount <= 0 Then
            Print #a, Space(3); Padl(RSService("docno"), 9, " "); Space(1); Padr(RSService("Slname"), 30, " "); Space(1); Padr(RSService("article"), 30, " "); Space(1); Padr(RSSub("DepName"), 30, " "); Space(1); Padr(RSService("BillNo"), 10, " "); Space(1); Padr(Format(RSService("BillDt"), "dd/mm/yy"), 10, " "); Space(1); Padl(INF(RSService("quantity"), 3), 12, " "); Space(1); Padl(Format(RSService("Value"), "#0.00"), 12, " ")
            If IsNull(RSService("Value")) = False Then
                DayTotal = DayTotal + Format(RSService("Value"), "#0.00")
                GTotal = GTotal + Format(RSService("Value"), "#0.00")
            End If
            DayCount = DayCount + 1
            
            lno = lno + 1
            If lno >= 60 Then
                    Print #a, Space(3) & String(150, "-")
                    Print #a, Chr(12)
                    Call ServiceBillDateTitle(PgNo)
                    lno = 8
                    PgNo = PgNo + 1
            End If
        End If
        RSService.MoveNext
    Wend
        If DayCount > 1 Then
            Print #a,
            Print #a, Space(3); Space(9); Space(1); Space(30); Space(1); Space(30); Space(1); Space(30); Padl("** Datewise Total **", 35, "") + Space(1) + Padl(Format(DayTotal, "#0.00"), 12, " ")
            DayTotal = 0
            Print #a,
        End If
        Print #a, Space(3) & String(150, "-")
        Print #a, Space(3); Space(9); Space(1); Space(30); Space(1); Space(30); Space(1); Space(30); Padl("** Grand Total **", 35, "") + Space(1) + Padl(Format(GTotal, "#0.00"), 12, " ")
        Print #a, Space(3) & String(150, "-")
    Print #a, Chr(12)
    Close #a
    a = FreeFile
     Call KALBATPROCESS("SerViceBillDate")
    
   Else
        MsgBox "No record Found...!", vbInformation, Ghead
        Screen.MousePointer = 0
        Exit Sub
    End If

Exit Sub
ServiceBillDateWise_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ServiceBillDateWise of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub ServiceBillDateTitle(PgNo As Integer)
On Error GoTo ServiceBillDateTitle_Error

    Print #a, Chr(18) & Space(3) & Chr(27) + "E" & CENTRE(divname, 85, " ") & Chr(27) + "F"
    Print #a, Chr(15)
    Print #a, Space(3); Padr("Service Bill From", 20, "") & Padr(Format(DTPicker1.value, "dd/MM/yy"), 10, "") & Space(2) & Padr("To ", 3, "") & Padl(Format(DTPicker2.value, "dd/mm/yy"), 10, " ") & Padl(Format(Date, "dd/mm/yy") + Space(5) & " Pg.:" & PgNo, 105, "")
    Print #a, Space(3); String(150, "-")
    Print #a, Space(3); "Date" + Space(142) + "Item"
    Print #a, Space(3); Padl("Doc.No", 9, "") + Space(1) + Padr("Supplier", 30, "") + Space(1) + Padr("Item Name", 30, "") + Space(1) + Padr("Department", 30, "") + Space(1) + Padr("BillNo", 10, "") + Space(1) + Padr("Bill Dt.", 10, "") + Space(1) + Padl("Quantity", 12, "") + Space(1) + Padl("Value", 12, "")
    Print #a, Space(3); String(150, "-")

Exit Sub
ServiceBillDateTitle_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ServiceBillDateTitle of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

 DTPicker1.value = pdate
 DTPicker2.value = pdate
 Label2.Visible = True:
'Label1.Caption = "From Date": Label1.Left = 1200: Label1.Top = 660
'Label2.Caption = "To Date": Label2.Left = 1200: Label2.Top = 1115
 optDatewise.value = True
 
' Set RS1 = New Recordset
' RS1.Open "Select * from masterlen", DB, adOpenStatic
' If RS1.RecordCount > 0 Then
'     sup = RS1("ptypecotton") & "%"
' Else
'     sup = ""
' End If

 Set RstSupplier = New Recordset
 
 RstSupplier.Open "select distinct a.SLNAME+ ' -- ' +a.SLCODE AS SUP,A.SLCODE from fa_slmas a ORDER BY A.SLCODE", DB, adOpenStatic, adLockBatchOptimistic
 If RstSupplier.RecordCount > 0 Then
     Set dbcmb_fsup.RowSource = RstSupplier
     dbcmb_fsup.ListField = "SUP"
     RstSupplier.MoveFirst
     dbcmb_fsup.Text = RstSupplier(0)
     Set dbcmb_tsup.RowSource = RstSupplier
     dbcmb_tsup.ListField = "SUP"
     RstSupplier.MoveLast
     dbcmb_tsup.Text = RstSupplier(0)
 End If

 If optDatewise.value = True Then
     lbl_fsup.Visible = False
     lbl_tsup.Visible = False
     dbcmb_fsup.Visible = False
     dbcmb_tsup.Visible = False
 Else
     lbl_fsup.Visible = True
     lbl_tsup.Visible = True
     dbcmb_fsup.Visible = True
     dbcmb_tsup.Visible = True
 End If


Select Case Repindex
Case 0 'FORM C Received Details report
    Label3.Caption = "FORM C Received Details"
Case 1 'FORM C Issued Details report
    Label3.Caption = "FORM C Issued Details"
Case 222 'FORM C Pending Details report
    Label3.Caption = "FORM C Pending Details"
    Label2.Visible = True:
'    Label1.Caption = "From Date": Label1.Left = 1200: Label1.Top = 660
'    Label2.Caption = "To Date": Label2.Left = 1200: Label2.Top = 1115
Case 3 'FORM C Pending Details report
    Label3.Caption = "Service Bill DateWise"
End Select

Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form frmFormCReport", vbInformation, head
    Screen.MousePointer = 0

End Sub

Private Sub MaskEdBox1_Validate(Cancel As Boolean)
Dim chk As Integer

On Error GoTo MaskEdBox1_Validate_Error

If IsDate(MaskEdBox1.Text) Then
   If DateValue(Format(MaskEdBox1.Text, "dd-mmm-yy")) < DateValue(Format(yfdate, "dd-mmm-yy")) Or DateValue(Format(MaskEdBox1.Text, "dd-mmm-yy")) > DateValue(Format(yldate, "dd-mmm-yy")) Then
      MsgBox "Enter Current Financial Year Date Only", vbInformation
      Cancel = True
   Else
      Cancel = False
      Cmd_Ok.SetFocus
      Exit Sub
   End If
Else
MsgBox "Invalid Date Format", vbInformation
End If
Cancel = True
MaskEdBox1.Text = "__/__/____"
MaskEdBox1.SetFocus

Exit Sub
MaskEdBox1_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox1_Validate of Form WStkRep", vbInformation, head
    Screen.MousePointer = 0

End Sub


Private Sub MaskEdBox2_Validate(Cancel As Boolean)
Dim chk As Integer
On Error GoTo MaskEdBox2_Validate_Error

If IsDate(MaskEdBox2.Text) Then
   If DateValue(Format(MaskEdBox2.Text, "dd-mmm-yy")) < DateValue(Format(yfdate, "dd-mmm-yy")) Or DateValue(Format(MaskEdBox2.Text, "dd-mmm-yy")) > DateValue(Format(yldate, "dd-mmm-yy")) Then
      MsgBox "Enter Current Financial Year Date Only", vbInformation
      Cancel = True
   Else
      Cancel = False
      Cmd_Ok.SetFocus
      Exit Sub
   End If
Else
MsgBox "Invalid Date Format", vbInformation
End If
Cancel = True
MaskEdBox2.Text = "__/__/____"
MaskEdBox2.SetFocus

Exit Sub
MaskEdBox2_Validate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MaskEdBox2_Validate of Form WStkRep", vbInformation, head
    Screen.MousePointer = 0

End Sub

Public Sub formcpendingheader()
On Error GoTo formcpendingheader_Error

pg1 = pg1 + 1
Print #a,
Print #a, Chr(27) + "E" + CENTRE(divname, 80, " ") + Chr(27) + "F"
Print #a,
Print #a, Chr(27); "E"; "FORM C Pending Details From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy"); Chr(27); "F"; Space(12) & Format(pdate, "dd/MM/yy") & Space(2) & "Pg.No :" + Space(1) + CStr(pg1)
Print #a, String(89, "-")
If optDatewise = True Then
    Print #a, "Voucher Date     Voucher No.     Supplier Name                 "
    Print #a, "                 Mill Lot No.    Bill No.     Bill Date     Bill Amount    Division"
Else
    Print #a, "Supplier Name                 "
    Print #a, "Voucher Date   Voucher No.   Mill Lot No.   Bill No.   Bill Date   Bill Amount  Division"
End If
Print #a, String(89, "-")
co = co + 7

Exit Sub
formcpendingheader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure formcpendingheader of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0
End Sub

Public Sub FormCHeader(pg1 As Integer, co As Integer, Repindex)
On Error GoTo FORMCHeader_Error
Dim dtCurrent As Date
co = 0
Print #a,
Print #a, Chr(27) + "E" + CENTRE(divname, 85, " ") + Chr(27) + "F"
SR = CStr(pdate) + Space(2)
dtCurrent = Format(Date, "dd/MM/yy")
Print #a,
If Repindex = 0 Then
    Print #a, Chr(27); "E"; "FORM C Received Details From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy"); Chr(27); "F"; Space(20) & Padr(Format(dtCurrent, "dd/MM/yy"), 10, "") & "Pg.No :" + Space(1) + CStr(pg1)
Else
    Print #a, Chr(27); "E"; "FORM C Issued Details From " & Format(DTPicker1.value, "dd/mm/yy") & " To " & Format(DTPicker2.value, "dd/mm/yy"); Chr(27); "F"; Space(20) & Padr(Format(dtCurrent, "dd/MM/yy"), 10, "") & "Pg.No :" + Space(1) + CStr(pg1)
End If
Print #a, String(90, "-")
co = co + 5

If Repindex = 0 Then
    Print #a, Padr("Form No", 25, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("Customer", 26, " ") + Space(1) + Padr("TIN No", 15, " ") + Space(1) + Padr("City", 20, " ")
    Print #a, Padr(" ", 5, " ") + Space(6) + Padr("Bill No", 8, " ") + Space(2) + Padr("Bill Date", 10, " ") + Space(1) + Padr("Commodity code", 15, " ") + Space(2 + 6 + 5) + Padl("Amount", 14, " ")
Else
    Print #a, Padr("Form No", 25, " ") + Space(1) + Padr("Date", 8, " ") + Space(1) + Padr("Supplier", 26, " ") + Space(1) + Padr("TIN No", 15, " ") + Space(1) + Padr("City", 20, " ")
    Print #a, Padr(" ", 5, " ") + Space(6) + Padr("Bill No.", 8, " ") + Space(2) + Padr("Bill Date", 10, " ") + Space(2) + Padr("Mill Lot No.", 12, "") + Space(2) + Padr("Commodity Code", 15, " ") + Space(2) + Padl("Amount", 12, " ") + Space(2) + Padr("Division ", 8, " ")
End If

Print #a, String(90, "-")

Exit Sub
FORMCHeader_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FORMCHeader_Error of form frmFORMCReport", vbInformation, head
    Screen.MousePointer = 0

End Sub


Private Sub optDatewise_Click()
On Error GoTo optDatewise_Click_Error

    If optDatewise.value = True Then
        lbl_fsup.Visible = False
        lbl_tsup.Visible = False
        dbcmb_fsup.Visible = False
        dbcmb_tsup.Visible = False
    Else
        lbl_fsup.Visible = True
        lbl_tsup.Visible = True
        dbcmb_fsup.Visible = True
        dbcmb_tsup.Visible = True
    End If


Exit Sub
optDatewise_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optDatewise_Click of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0

End Sub

Private Sub optSupplierwise_Click()
On Error GoTo optSupplierwise_Click_Error

    If optDatewise.value = True Then
        lbl_fsup.Visible = False
        lbl_tsup.Visible = False
        dbcmb_fsup.Visible = False
        dbcmb_tsup.Visible = False
    Else
        lbl_fsup.Visible = True
        lbl_tsup.Visible = True
        dbcmb_fsup.Visible = True
        dbcmb_tsup.Visible = True
    End If


Exit Sub
optSupplierwise_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure optSupplierwise_Click of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0

End Sub
Private Function CST_EXIST(slcode As String) As Boolean
Dim rsa As Recordset
Dim staters As Recordset

On Error GoTo CST_EXIST_Error

Set rsa = New Recordset
rsa.Open "select state_code from fa_slmas where slcode='" & slcode & "'", DB, adOpenStatic
If rsa.RecordCount > 0 Then
    Set staters = New Recordset
    staters.Open "select state_code from pp_divmas where divcode ='" & Divcode & "'", DB, adOpenStatic
    If staters.RecordCount > 0 Then
        If rsa(0) = staters(0) Then
            CST_EXIST = False
        Else
            CST_EXIST = True
        End If
    End If
End If

Exit Function

Exit Function
CST_EXIST_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure CST_EXIST of Form frmFormCReport", vbInformation, head
Screen.MousePointer = 0
End Function
