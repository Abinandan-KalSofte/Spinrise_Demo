VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form frm_PendingOrder 
   Caption         =   "Amendment Order List"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   11055
   ScaleWidth      =   20370
   WindowState     =   2  'Maximized
   Begin VB.PictureBox FraPrint 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   495
      Left            =   2130
      ScaleHeight     =   465
      ScaleWidth      =   10965
      TabIndex        =   18
      Top             =   8070
      Width           =   10995
      Begin VB.CommandButton Command1 
         Caption         =   "Requistion Letter"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   405
         Left            =   9255
         TabIndex        =   22
         ToolTipText     =   "(Alt R)"
         Top             =   30
         Visible         =   0   'False
         Width           =   1305
      End
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
         Height          =   405
         Left            =   5340
         TabIndex        =   20
         ToolTipText     =   "(Alt x)"
         Top             =   15
         Width           =   1485
      End
      Begin VB.CommandButton CmdCrystal 
         Caption         =   "&Print"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   420
         Left            =   3885
         TabIndex        =   19
         ToolTipText     =   "(Alt R)"
         Top             =   15
         Width           =   1305
      End
   End
   Begin VB.PictureBox FraFabstk 
      Appearance      =   0  'Flat
      ForeColor       =   &H80000008&
      Height          =   7185
      Left            =   2160
      ScaleHeight     =   7155
      ScaleWidth      =   10860
      TabIndex        =   1
      Top             =   1440
      Visible         =   0   'False
      Width           =   10890
      Begin VB.Frame Frame1 
         Height          =   615
         Left            =   6000
         TabIndex        =   23
         Top             =   600
         Width           =   4335
         Begin VB.OptionButton Option2 
            Caption         =   "supplierwise"
            Height          =   255
            Left            =   2640
            TabIndex        =   25
            Top             =   240
            Width           =   1455
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Datewise"
            Height          =   255
            Left            =   480
            TabIndex        =   24
            Top             =   240
            Value           =   -1  'True
            Width           =   1695
         End
      End
      Begin VB.CheckBox Chk_order 
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
         Left            =   -450
         TabIndex        =   21
         Top             =   7755
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
         Left            =   2520
         TabIndex        =   6
         Top             =   1560
         Width           =   795
      End
      Begin VB.CheckBox Chkconst 
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
         Left            =   2535
         TabIndex        =   5
         Top             =   3870
         Width           =   795
      End
      Begin VB.TextBox txt_search 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   4080
         TabIndex        =   4
         Top             =   1440
         Width           =   6435
      End
      Begin VB.TextBox txt_search_const 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   4095
         TabIndex        =   3
         Top             =   3750
         Width           =   6435
      End
      Begin VB.TextBox txt_search_order 
         Appearance      =   0  'Flat
         Height          =   330
         Left            =   390
         TabIndex        =   2
         Top             =   7755
         Width           =   7155
      End
      Begin MSComCtl2.DTPicker DTPicker1 
         Height          =   315
         Left            =   2490
         TabIndex        =   7
         Top             =   675
         Width           =   1365
         _ExtentX        =   2408
         _ExtentY        =   556
         _Version        =   393216
         Format          =   135135233
         CurrentDate     =   40327
      End
      Begin MSComCtl2.DTPicker DTPicker2 
         Height          =   330
         Left            =   2490
         TabIndex        =   8
         Top             =   1110
         Width           =   1395
         _ExtentX        =   2461
         _ExtentY        =   582
         _Version        =   393216
         Format          =   138608641
         CurrentDate     =   40327
      End
      Begin MSComctlLib.ListView Lv_Const 
         Height          =   2250
         Left            =   2535
         TabIndex        =   9
         Top             =   4110
         Width           =   8025
         _ExtentX        =   14155
         _ExtentY        =   3969
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
            Name            =   "Tahoma"
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
            Object.Width           =   7056
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2646
         EndProperty
      End
      Begin MSComctlLib.ListView Lv_Cust 
         Height          =   1935
         Left            =   2520
         TabIndex        =   10
         Top             =   1800
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   3413
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
            Text            =   "Supplier Name"
            Object.Width           =   12347
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "Code"
            Object.Width           =   2540
         EndProperty
      End
      Begin MSComctlLib.ListView Lv_Order 
         Height          =   1695
         Left            =   -435
         TabIndex        =   11
         Top             =   8100
         Width           =   7995
         _ExtentX        =   14102
         _ExtentY        =   2990
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
         NumItems        =   4
         BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            Text            =   "BOE No"
            Object.Width           =   2646
         EndProperty
         BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   1
            Text            =   "BOE No"
            Object.Width           =   0
         EndProperty
         BeginProperty ColumnHeader(3) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   2
            Text            =   "BOE Date"
            Object.Width           =   2540
         EndProperty
         BeginProperty ColumnHeader(4) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
            SubItemIndex    =   3
            Text            =   "BOE NO"
            Object.Width           =   2540
         EndProperty
      End
      Begin VB.Label LblFabStkHd 
         Alignment       =   2  'Center
         BackColor       =   &H00C00000&
         Caption         =   "Amendment Order List"
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
         TabIndex        =   17
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
         Left            =   960
         TabIndex        =   16
         Top             =   1185
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
         TabIndex        =   15
         Top             =   735
         Width           =   885
      End
      Begin VB.Label Label8 
         AutoSize        =   -1  'True
         Caption         =   "Supplier Name"
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
         Left            =   960
         TabIndex        =   14
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Label Label5 
         AutoSize        =   -1  'True
         Caption         =   "Variety"
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
         Left            =   975
         TabIndex        =   13
         Top             =   4110
         Width           =   615
      End
      Begin VB.Label Label3 
         Caption         =   "BOE Details"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   -2010
         TabIndex        =   12
         Top             =   8115
         Width           =   1455
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
      Top             =   8430
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
      Left            =   0
      Top             =   8535
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
Attribute VB_Name = "frm_PendingOrder"
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
Dim ilastindex As Integer
Dim ilastindex1 As Integer
Dim ilastindex2 As Integer
Dim overheads As String
Dim maxdate As String
Private Sub Chk_order_Click()
    If Chk_order.value = 1 Then
        For I = 1 To Lv_Order.ListItems.Count
          Lv_Order.ListItems.Item(I).Checked = True
        Next I
       Call loadcondlist
    Else
        For I = 1 To Lv_Order.ListItems.Count '- 1
             Lv_Order.ListItems.Item(I).Checked = False
        Next I
          Lv_Const.ListItems.Clear
    End If
End Sub

Private Sub Chkconst_Click()
    If Chkconst.value = 1 Then
        For I = 1 To Lv_Const.ListItems.Count
          Lv_Const.ListItems.Item(I).Checked = True
        Next I
        
    Else
        For I = 1 To Lv_Const.ListItems.Count '- 1
             Lv_Const.ListItems.Item(I).Checked = False
        Next I
      
    End If
End Sub

Private Sub Chkcust_Click()
    If Chkcust.value = 1 Then
        For I = 1 To Lv_Cust.ListItems.Count
          Lv_Cust.ListItems.Item(I).Checked = True
        Next I
       
        Call Lv_Cust_Click
        
    Else
        For I = 1 To Lv_Cust.ListItems.Count '- 1
             Lv_Cust.ListItems.Item(I).Checked = False
        Next I
    End If
    

End Sub

Private Sub Chkord_Click()
    If Chkord.value = 1 Then
        For I = 1 To Lv_Order.ListItems.Count
          Lv_Order.ListItems.Item(I).Checked = True
        Next I
            Call loadcondlist
    Else
        For I = 1 To Lv_Order.ListItems.Count '- 1
             Lv_Order.ListItems.Item(I).Checked = False
        Next I
    End If
        
End Sub

Private Sub loadcondlist()
On Error GoTo er_loadcond
      Dim boenoDet As String
      Dim boenoDate As String
        Chkconst.value = False
        For I = 1 To Lv_Order.ListItems.Count
        If Lv_Order.ListItems.Item(I).Checked Then
          
              boenoDet = boenoDet + ",'" + Trim(Lv_Order.ListItems(I).SubItems(1)) + "'"
              boenoDate = boenoDate + ",'" + Format(Trim(Lv_Order.ListItems(I).SubItems(2)), "yyyy-mm-dd") + "'"
 
             constat = True
          End If
        Next
            
       boenoDet = Mid$(Trim(boenoDet), 2, Len(Trim(boenoDet)))
       
       boenoDate = Mid$(Trim(boenoDate), 2, Len(Trim(boenoDate)))
      
        Set temprs = New Recordset
         Lv_Const.ListItems.Clear
'        For i = 1 To Lv_Order.ListItems.Count
'
'        If Lv_Order.ListItems.item(i).Checked Then
'            sordType = Trim(Lv_Order.ListItems(i).SubItems(1))
'            sordate = Trim(Lv_Order.ListItems(i).SubItems(2))
'           ' temprs.Open "SELECT distinct a.sortno,b.aliassortname as sortname from WVG_GRPCONTDT a,wvg_sort b where a.sortno=b.sortno AND a.DIVCODE='" & divcode & "' and a.cont_no= '" & sordType & " ' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
           
             'temprs.Open "SELECT distinct B.sortno,b.aliassortname as sortname from WVG_GRPCONTDT a,wvg_sort b where a.SORT_GRP_CODE=B.SORT_GRP_CODE  AND a.DIVCODE='" & divcode & "' and a.cont_no= '" & sordType & " ' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
             temprs.Open " select distinct VARNAME , a.VARCODE from RM_VAR a inner join RM_PRODUCT b on a.VARCODE =b.varcode inner join RM_GRDdt c on b.ITEMCODE =c.ITEMCODE inner join RM_GRDhd h on h.docno=c.docno and c.docdt=h.docdt and h.divcode=c.divcode  where c.boeno in (" & boenoDet & ") and boedt in (" & boenoDate & ") and  isnull(c.boeno,'')<>''  and h.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockReadOnly
           
            Dim ljp3 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set lj1 = Lv_Const.ListItems.ADD(, , temprs!VarName)
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
'        End If
'        Next i
        
 Exit Sub
er_loadcond:
 MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
End Sub

Private Sub loadsaleorderlist()
On Error GoTo er_loadsaleodr
Exit Sub

 Lv_Order.ListItems.Clear
  Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly
            For I = 1 To Lv_Cust.ListItems.Count

             If Lv_Cust.ListItems.Item(I).Checked Then
            sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
          '  temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
          '  temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO and dt.cust_id='" & sWevType & "' AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
             temprs.Open "  select distinct boeno,boedt  from   RM_GRDhd h inner join RM_GRDdt c on  h.docno=c.docno and c.docdt=h.docdt and h.divcode=c.divcode   where h.supcode= '" & sWevType & "' and h.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  and  isnull(c.boeno,'')<>'' ", DB, adOpenStatic, adLockReadOnly
           
           
            Dim ljp1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    'Set ljp1 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                    Set ljp1 = Lv_Order.ListItems.ADD(, , temprs!boeno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boeno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boedt
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boeno
                     
                    
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                   '  Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            End If
            Next I
         
        
        'End If
       ' Next i
 Exit Sub
er_loadsaleodr:
 MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)
End Sub
Private Sub CmdCrystal_Click()
Dim FSort, TSort, Grade, packtype As String

    Dim sWevType, sSelvType, sord As String
    fdate = Format(DTPicker1.value, "yyyy-mm-dd")
    tdate = Format(DTPicker2.value, "yyyy-mm-dd")
            If CDate(fdate) > CDate(tdate) Then
                MsgBox "FROM Date Cannot Be Greater Than TO Date", vbInformation, head
                DTPicker1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            sWevType = ""
            sSelvType = ""
            sord = ""
            
            DB.Execute "Delete From  slcodeTemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIPAdd & "'"
            For I = 1 To Lv_Cust.ListItems.Count
                If Lv_Cust.ListItems.Item(I).Checked Then
                     sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
                     sql = "insert into slcodeTemptable values('" & sWevType & "', '" & Divcode & "', '" & LocalIPAdd & "')"
                     DB.Execute sql
                End If
            Next I
            
            If Len(sWevType) = 0 Then
                MsgBox "Select Any Supplier Name", vbInformation
                Exit Sub
            End If
            
            DB.Execute "Delete From  ITEMtemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIPAdd & "'"
             For I = 1 To Lv_Const.ListItems.Count
                If Lv_Const.ListItems.Item(I).Checked = True Then
                    sSelvType = Trim(Lv_Const.ListItems(I).SubItems(1))
                 
                    sql = "insert into ITEMtemptable values('" & sSelvType & "','" & Divcode & "', '" & LocalIPAdd & "')"
                    DB.Execute sql
                End If
            Next
            
            If Len(sSelvType) = 0 Then
                MsgBox "Select Any Boe No.", vbInformation
                Exit Sub
            End If
            
            
'            DB.Execute "Delete From  BOEtemptable where Divcode = '" & divcode & "' and Systemid = '" & LocalIPAdd & "'"
'             For i = 1 To Lv_Order.ListItems.Count
'                If Lv_Order.ListItems.item(i).Checked = True Then
'                    sord = Trim(Lv_Order.ListItems(i).SubItems(1))
'                    sotype = Trim(Lv_Order.ListItems(i).SubItems(3))
'                     sodt = Trim(Lv_Order.ListItems(i).SubItems(2))
'
'
'                        Sql = "insert into BOEtemptable values('" & Trim(sord) & "','" & Format(Trim(sodt), "yyyy-mm-dd") & "', '" & divcode & "', '" & LocalIPAdd & "')"
'                         DB.Execute Sql
'
'                    'db.Execute sql
'                End If
'            Next
'
'             DB.Execute "exec Ksp_importFormiv '" & divcode & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','A','" & Trim(LocalIPAdd) & "'"
'
     Dim clsCryCode1 As New clsCrystal

  
  '25/02/15

    If Repindex = 1 Then
        Dim Cystalrpt As New clsCrystal
        If Option1.value Then
         Set Cystalrpt.cryRept = Cry_POAmendedList_datewise
         Else
         Set Cystalrpt.cryRept = Cry_POAmendedList_Supplier
         End If
         Cystalrpt.CrystalPrint
         CrystalReport2.Reset
         CrystalReport2.Connect = connectstring
         CrystalReport2.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
          CrystalReport2.ParameterFields(0) = "@divcode;" & Divcode & ""
         CrystalReport2.ParameterFields(1) = "@fdate;" & Format(DTPicker1.value, "yyyy-mm-dd") & ""
         CrystalReport2.ParameterFields(2) = "@tdate;" & Format(DTPicker2.value, "yyyy-mm-dd") & ""
         CrystalReport2.ParameterFields(3) = "@IPADD;" & Trim(LocalIPAdd)
         
        ' CrystalReport2.ParameterFields(4) = "@Ordertype;P"
         CrystalReport2.WindowShowPrintSetupBtn = True
         CrystalReport2.WindowShowSearchBtn = True
         CrystalReport2.WindowState = crptMaximized
         SendKeys "{ENTER}"
         CrystalReport2.Action = 1
         CrystalReport2.PrinterCopies = 1
         Screen.MousePointer = 0
    End If
    Exit Sub
    clsCryCode1.CrystalPrint
    CrystalReport2.Reset
    CrystalReport2.Connect = connectstring
    CrystalReport2.ReportFileName = KALFOLDERDATA & "RepIMPORT.rpt"

  '''CrystalReport1.SelectionFormula = "{RM_PINVL.PJVOCNO}=" & Pjvocno & " and {RM_PINVL.FATC}=" & Fatc & " AND {RM_PINVL.divcode}='" & divcode & "' AND {RM_PINVL.PJVOCDT} =  DATE(" & Val(Year(pjvocdt)) & "," & Val(Month(pjvocdt)) & "," & Val(Day(pjvocdt)) & ")"

  CrystalReport2.ParameterFields(0) = "@divcode;" & Divcode
    CrystalReport2.ParameterFields(1) = "@yfdate;" & Format(yfdate, "yyyy-mm-dd")
  CrystalReport2.ParameterFields(2) = "@yldate;" & Format(yldate, "yyyy-mm-dd")
CrystalReport2.ParameterFields(3) = "@fdate;" & Format(DTPicker1.value, "yyyy-mm-dd")
    CrystalReport2.ParameterFields(4) = "@tdate;" & Format(DTPicker2.value, "yyyy-mm-dd")

  CrystalReport2.ParameterFields(5) = "@IPADD;" & Trim(LocalIPAdd)
  CrystalReport2.ParameterFields(6) = "@godCode;A"


  CrystalReport2.WindowShowPrintSetupBtn = True
  CrystalReport2.WindowShowSearchBtn = True
  CrystalReport2.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport2.Action = 1
  CrystalReport2.PrinterCopies = 1
  Screen.MousePointer = 0
   Exit Sub
   
End Sub
Private Sub LoadRecord()
On Error Resume Next
            Set temprs = New Recordset
            temprs.Open "  select distinct b.slname ,  a.SUPCD  supcode from rm_acont a  inner join fa_slmas b on a.SUPCD=b.slcode where a.acontdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  order by SUPCD", DB, adOpenStatic, adLockReadOnly
            
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
            
            Lv_Cust.ListItems.Clear
            Dim li As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lv_Cust.ListItems.ADD(, , Mid(temprs!sLname, 1, 50))
                    Lv_Cust.ListItems(Lv_Cust.ListItems.Count).ListSubItems.ADD , , temprs!Supcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
                        
'
'            Set temprs = New Recordset
'            temprs.Open "SELECT  distinct cont_no as ordno,cont_type ordtype,date date from WVG_GRPCONTHD  where dIVCODE='" & divcode & "'  " & _
'            " union all SELECT  distinct contractno as ordno,inv_type ordtype,contractdate date from ex_salescontracthd  where dIVCODE='" & divcode & "'   ", DB, adOpenStatic, adLockReadOnly
'            Lv_Order.ListItems.clear
'            Dim lj As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set lj = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
'                    Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
'                     Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
'
'
'            Set temprs = New Recordset
'            'temprs.Open "SELECT distinct a.sortno,b.aliassortname as sortname from WVG_GRPCONTDt a,wvg_sort b where a.sortno=b.sortno AND a.DIVCODE='" & divcode & "' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
'
'            temprs.Open "SELECT distinct B.sortno,b.aliassortname as sortname from WVG_GRPCONTDt a,wvg_sort b where a.SORT_GRP_CODE=B.SORT_GRP_CODE AND a.DIVCODE='" & divcode & "' " & _
'               " union all SELECT distinct a.productcode sortno,b.aliassortname as sortname from ex_salescontractdt a,wvg_sort b where a.productcode=B.SORTno AND a.DIVCODE='" & divcode & "'  ", DB, adOpenStatic, adLockReadOnly
'
'            Lv_Const.ListItems.clear
'            Dim lj1 As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set lj1 = Lv_Const.ListItems.Add(, , temprs!sortname)
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.Add , , temprs!sortno
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
End Sub

Private Sub Command1_Click()
On Error Resume Next
Dim FSort, TSort, Grade, packtype As String

    Dim sWevType, sSelvType, sord As String
    fdate = Format(DTPicker1.value, "yyyy-mm-dd")
    tdate = Format(DTPicker2.value, "yyyy-mm-dd")
            If CDate(fdate) > CDate(tdate) Then
                MsgBox "FROM Date Cannot Be Greater Than TO Date", vbInformation, head
                DTPicker1.SetFocus
                Screen.MousePointer = 0
                Exit Sub
            End If
            
            sWevType = ""
            sSelvType = ""
            sord = ""
            
            DB.Execute "Delete From  slcodeTemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIPAdd & "'"
            For I = 1 To Lv_Cust.ListItems.Count
                If Lv_Cust.ListItems.Item(I).Checked Then
                     sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
                     sql = "insert into slcodeTemptable values('" & sWevType & "', '" & Divcode & "', '" & LocalIPAdd & "')"
                     DB.Execute sql
                End If
            Next I
            
            If Len(sWevType) = 0 Then
                MsgBox "Select Any Supplier Name", vbInformation
                Exit Sub
            End If
            
            DB.Execute "Delete From  ITEMtemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIPAdd & "'"
             For I = 1 To Lv_Const.ListItems.Count
                If Lv_Const.ListItems.Item(I).Checked = True Then
                    sSelvType = Trim(Lv_Const.ListItems(I).SubItems(1))
                 
                    sql = "insert into ITEMtemptable values('" & sSelvType & "','" & Divcode & "', '" & LocalIPAdd & "')"
                    DB.Execute sql
                End If
            Next
            
            If Len(sSelvType) = 0 Then
                MsgBox "Select Any Boe No.", vbInformation
                Exit Sub
            End If
            
            
            DB.Execute "Delete From  BOEtemptable where Divcode = '" & Divcode & "' and Systemid = '" & LocalIPAdd & "'"
             For I = 1 To Lv_Order.ListItems.Count
                If Lv_Order.ListItems.Item(I).Checked = True Then
                    sord = Trim(Lv_Order.ListItems(I).SubItems(1))
                    sotype = Trim(Lv_Order.ListItems(I).SubItems(3))
                     sodt = Trim(Lv_Order.ListItems(I).SubItems(2))
                    
                        
                        sql = "insert into BOEtemptable values('" & Trim(sord) & "','" & Format(Trim(sodt), "yyyy-mm-dd") & "', '" & Divcode & "', '" & LocalIPAdd & "')"
                         DB.Execute sql
                      
                    'db.Execute sql
                End If
            Next
           
             'DB.Execute "exec Ksp_importFormiv '" & divcode & "','" & Format(DTPicker1.value, "yyyy-mm-dd") & "','" & Format(DTPicker2.value, "yyyy-mm-dd") & "','" & Format(yfdate, "yyyy-mm-dd") & "','" & Format(yldate, "yyyy-mm-dd") & "','A','" & Trim(LocalIPAdd) & "'"
       
     Dim clsCryCode1 As New clsCrystal

    

  
  '25/02/15

    
    Set clsCryCode1.cryRept = Cry_FormIVReqLetter
    
    clsCryCode1.CrystalPrint
    CrystalReport2.Reset
    CrystalReport2.Connect = connectstring
    CrystalReport2.ReportFileName = KALFOLDERDATA & "RepIMPORT.rpt"

  '''CrystalReport1.SelectionFormula = "{RM_PINVL.PJVOCNO}=" & Pjvocno & " and {RM_PINVL.FATC}=" & Fatc & " AND {RM_PINVL.divcode}='" & divcode & "' AND {RM_PINVL.PJVOCDT} =  DATE(" & Val(Year(pjvocdt)) & "," & Val(Month(pjvocdt)) & "," & Val(Day(pjvocdt)) & ")"

  CrystalReport2.ParameterFields(0) = "@divcode;" & Divcode
CrystalReport2.ParameterFields(1) = "@fdate;" & Format(DTPicker1.value, "yyyy-mm-dd")
   CrystalReport2.ParameterFields(2) = "@tdate;" & Format(DTPicker2.value, "yyyy-mm-dd")
  CrystalReport2.ParameterFields(3) = "@IPADD;" & Trim(LocalIPAdd)
'
'  CrystalReport2.ParameterFields(5) = "@godCode;A"


  CrystalReport2.WindowShowPrintSetupBtn = True
  CrystalReport2.WindowShowSearchBtn = True
  CrystalReport2.WindowState = crptMaximized
  SendKeys "{ENTER}"
  CrystalReport2.Action = 1
  CrystalReport2.PrinterCopies = 1
  Screen.MousePointer = 0
   Exit Sub

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
        
        
    If Repindex = 1 Then
     LblFabStkHd.Caption = "Amendment Order List"
    End If
            Me.Caption = LblFabStkHd.Caption
            
            
            DTPicker1.value = mfdate
            DTPicker2.value = mldate
            FraFabstk.Visible = True
            
            ilastindex = 1
            ilastindex1 = 1
            ilastindex2 = 1
        
        
            Set temprs = New Recordset
            'temprs.Open "  select distinct b.slname ,  a.supcode  supcode from RM_GRDhd a inner join RM_GRDdt c on  a.docno=c.docno and c.docdt=a.docdt and a.divcode=c.divcode  inner join fa_slmas b on a.supcode=b.slcode where a.docdt between '" & Format(DTPicker1.Value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.Value, "yyyy-mm-dd") & "' and isnull(c.boeno,'')<>'' order by supcode", DB, adOpenStatic, adLockReadOnly
            
            temprs.Open "  select distinct b.slname ,  a.SUPCD  supcode from rm_acont a  inner join fa_slmas b on a.SUPCD=b.slcode where a.acontdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  order by SUPCD", DB, adOpenStatic, adLockReadOnly
            
            
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
            
            Lv_Cust.ListItems.Clear
            Dim li As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lv_Cust.ListItems.ADD(, , Mid(temprs!sLname, 1, 50))
                    Lv_Cust.ListItems(Lv_Cust.ListItems.Count).ListSubItems.ADD , , temprs!Supcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            
'            Set temprs = New Recordset
'
'            Lv_Order.ListItems.clear
'             temprs.Open " select distinct '' ' ',VARNAME , a.VARCODE from RM_VAR a inner join RM_PRODUCT b on a.VARCODE =b.varcode inner join RM_GRDdt c on b.ITEMCODE =c.ITEMCODE inner join RM_GRDhd h on h.docno=c.docno and c.docdt=h.docdt and h.divcode=c.divcode  where h.supcode= '" & Trim(Right(DataCombo2.Text, 8)) & "'  and  isnull(boeno,'')<>'' ", DB, adOpenKeyset, adLockReadOnly
'
'            Dim lj As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set lj = Lv_Order.ListItems.add(, , Mid(temprs!ordno, 1, 15))
'                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.add , , temprs!ordno
'                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.add , , temprs!Date
'                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.add , , temprs!ordtype
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
            
            
            Set temprs = New Recordset
'            'temprs.Open "SELECT distinct a.sortno,b.aliassortname as sortname from WVG_GRPCONTDt a,wvg_sort b where a.sortno=b.sortno AND a.DIVCODE='" & divcode & "' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
'            'temprs.Open "SELECT distinct B.sortno,b.aliassortname as sortname from WVG_GRPCONTDt a,wvg_sort b where a.SORT_GRP_CODE=B.SORT_GRP_CODE AND a.DIVCODE='" & divcode & "' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY b.aliassortname,B.SORTNO " ''sasi
'            temprs.Open "SELECT distinct B.sortno,b.aliassortname as sortname from WVG_GRPCONTDt a,wvg_sort b where a.SORT_GRP_CODE=B.SORT_GRP_CODE AND a.DIVCODE='" & divcode & "' and a.cont_date between '" & Format(DTPicker1.VALUE, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.VALUE, "yyyy-mm-dd") & "' " & _
'            " union all SELECT distinct a.productcode sortno,b.aliassortname as sortname from ex_salescontractdt a,wvg_sort b where a.productcode=B.SORTno AND a.DIVCODE='" & divcode & "' and a.contractdate between '" & Format(DTPicker1.VALUE, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.VALUE, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockReadOnly
'
'            Lv_Const.ListItems.clear
'            Dim lj1 As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set lj1 = Lv_Const.ListItems.Add(, , temprs!sortname)
'                    Lv_Const.ListItems(Lv_Const.ListItems.count).ListSubItems.Add , , temprs!sortno
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
            
            'Chkconst.VALUE = 1
            'Chkcust.VALUE = 1
            'Chkord.VALUE = 1
    
End Sub

Private Sub CmdExit_Click()
Unload Me
End Sub



Private Sub Lv_Cust_Click()

On Error GoTo err_lvcustclick

Lv_Const.ListItems.Clear

      Dim slcode As String
      Dim boenoDate As String
        Chkconst.value = False
            For I = 1 To Lv_Cust.ListItems.Count

             If Lv_Cust.ListItems.Item(I).Checked Then
            sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
          
              slcode = slcode + ",'" + Trim(sWevType) + "'"
             ' boenoDate = boenoDate + ",'" + Format(Trim(Lv_Order.ListItems(i).SubItems(2)), "yyyy-mm-dd") + "'"
 
             constat = True
          End If
        Next
            
       slcode = Mid$(Trim(slcode), 2, Len(Trim(slcode)))
       
If slcode = "" Then
Exit Sub
End If
      
        Set temprs = New Recordset
         Lv_Const.ListItems.Clear
'        For i = 1 To Lv_Order.ListItems.Count
'
'        If Lv_Order.ListItems.item(i).Checked Then
'            sordType = Trim(Lv_Order.ListItems(i).SubItems(1))
'            sordate = Trim(Lv_Order.ListItems(i).SubItems(2))
'           ' temprs.Open "SELECT distinct a.sortno,b.aliassortname as sortname from WVG_GRPCONTDT a,wvg_sort b where a.sortno=b.sortno AND a.DIVCODE='" & divcode & "' and a.cont_no= '" & sordType & " ' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
           
             'temprs.Open "SELECT distinct B.sortno,b.aliassortname as sortname from WVG_GRPCONTDT a,wvg_sort b where a.SORT_GRP_CODE=B.SORT_GRP_CODE  AND a.DIVCODE='" & divcode & "' and a.cont_no= '" & sordType & " ' and a.cont_date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "'", db, adOpenStatic, adLockReadOnly
             temprs.Open " select distinct VARNAME , a.VARCODE from RM_VAR a  inner join rm_acont c on c.varcode =a.varcode   where c.supcd in (" & slcode & ")  and c.acontdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' ", DB, adOpenStatic, adLockReadOnly
           
            Dim ljp3 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set lj1 = Lv_Const.ListItems.ADD(, , temprs!VarName)
                    Lv_Const.ListItems(Lv_Const.ListItems.Count).ListSubItems.ADD , , temprs!Varcode
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
Exit Sub





 Lv_Order.ListItems.Clear
  Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly
            For I = 1 To Lv_Cust.ListItems.Count

             If Lv_Cust.ListItems.Item(I).Checked Then
            sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
          '  temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
          '  temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO and dt.cust_id='" & sWevType & "' AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
             temprs.Open "  select distinct boeno,boedt  from   RM_GRDhd h inner join RM_GRDdt c on  h.docno=c.docno and c.docdt=h.docdt and h.divcode=c.divcode   where h.supcode= '" & sWevType & "' and h.docdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'  and  isnull(c.boeno,'')<>'' ", DB, adOpenStatic, adLockReadOnly
           
           
            Dim ljp1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    'Set ljp1 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                    Set ljp1 = Lv_Order.ListItems.ADD(, , temprs!boeno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boeno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boedt
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!boeno
                     
                    
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                   '  Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            End If
            Next I
         
           ' Chkord.VALUE = 0
Exit Sub
Call loadsaleorderlist
'        Lv_Order.ListItems.clear
'        Set temprs = New Recordset
'         Lv_Order.ListItems.clear
'        For i = 1 To Lv_Cust.ListItems.count
'
'        If Lv_Cust.ListItems.Item(i).Checked Then
'            sWevType = Trim(Lv_Cust.ListItems(i).SubItems(1))
'            temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode AND dt.CUST_CODE =hd.CUST_CODE And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and hd.cust_code='" & sWevType & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", db, adOpenStatic, adLockReadOnly
'
'            Dim ljp3 As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set ljp3 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
'                    Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordNo
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
'        End If
'        Next i
        
 Exit Sub
 
err_lvcustclick:
MsgBox "Error No :  " & Err.Number & Chr(13) & Chr(13) & "Description : " & Err.Description & Chr(13) & Chr(13) & "Procedure : Command5_Click " & Chr(13) & Chr(13) & " Line No : " & Erl & Chr(13) & Chr(13)

 
End Sub



Private Sub Lv_Order_Click()
  Call loadcondlist
End Sub

Private Sub Option1_Click()

Exit Sub
            'Chkord.VALUE = 1
            Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly
            
                   

            
            
            For I = 1 To Lv_Cust.ListItems.Count
            
            
            

             If Lv_Cust.ListItems.Item(I).Checked Then
            sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
          '  temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO and dt.cust_id='" & sWevType & "' AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
                 temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER,dt.date date FROM WVG_GRPCONTHD dt  LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONT_NO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO    INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONT_NO  WHERE dt.dIVCODE='" & Divcode & "' and DT.cust_code='" & sWevType & "'   GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,dt.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0)  " & _
            " union  SELECT  distinct SH.CONTORD_NO as ordno,DT.inv_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.TotContQty,0)) ORDMETER,dt.contractdate date FROM Ex_salescontracthd dt  LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONTRACTNO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO AND  hd.CUST_CODE = dt.CUSTCODE  INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONTractNO and sh.cust_code=hd.CUST_CODE WHERE dt.dIVCODE='" & Divcode & "' and DT.custcode='" & sWevType & "'   GROUP BY SH.CONTORD_NO,DT.inv_TYPE,dt.contractdate Having Sum(IsNull(dt.TotContQty, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly
           
            Lv_Order.ListItems.Clear
            Dim ljp1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    'Set ljp1 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                    Set ljp1 = Lv_Order.ListItems.ADD(, , temprs!ordno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!ordno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!Date
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , Mid(temprs!ordtype, 1, 2)
                     
                    
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                   '  Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            End If
            Next I
         
            Chkord.value = 0
End Sub

Private Sub Option2_Click()
            Chkord.value = 1
            Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) < IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly
            Exit Sub
            temprs.Open "SELECT  distinct isnull(SH.GRPCONT_NO,0) as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER,dt.date date  FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp Where  dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & Divcode & "'  AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.GRPCONT_NO ,DT.CONT_TYPE,dt.date Having Sum(IsNull(dt.meters, 0)) < IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
            Lv_Order.ListItems.Clear
            Dim ljp2 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                   ' Set ljp2 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                    'Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                    'Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                       Set ljp2 = Lv_Order.ListItems.ADD(, , temprs!ordno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!ordno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!Date
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , Mid(temprs!ordtype, 1, 2)
                     
                    
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            Chkord.value = 0 ' 1

End Sub

Private Sub Option3_Click()
            Chkord.value = 1
            Set temprs = New Recordset
            'temprs.Open "SELECT  distinct cont_no as ordno,cont_type ordtype from WVG_GRPCONTHD  where dIVCODE='" & divcode & "' and date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND ISNULL(CANCELLED,'N')='Y'", db, adOpenStatic, adLockReadOnly
            
            temprs.Open "SELECT  distinct a.cont_no as ordno,a.cont_type ordtype,date from WVG_GRPCONTHD  a inner join  wvg_grpcontdt b on a.CONT_NO =b.CONT_NO and a.DATE = b.cont_date and a.CONT_TYPE =b.CONT_TYPE where a.dIVCODE='" & Divcode & "' and date between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and ISNULL(b.CANFLG , 'N')='Y'", DB, adOpenStatic, adLockReadOnly
            Lv_Order.ListItems.Clear
            Dim ljp3 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                   ' Set ljp3 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                    'Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                       Set ljp1 = Lv_Order.ListItems.ADD(, , temprs!ordno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!ordno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!Date
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , Mid(temprs!ordtype, 1, 2)
                     
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
            Chkord.value = 0 '1
End Sub

Private Sub Option4_Click()
            Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly
            
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
           ' temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
            
             
'            temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER,dt.date date FROM WVG_GRPCONTHD dt inner join wvg_grpcontdt d on dt.cont_no=d.cont_no and dt.date=d.cont_date and d.cont_type=dt.cont_type  LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONT_NO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO AND  hd.CUST_CODE = dt.CUST_CODE  INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONT_NO  WHERE dt.dIVCODE='" & divcode & "' and DT.cust_code='" & sWevType & "' and isnull(d.cmpflg,'N')='Y'  GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,dt.date   ", DB, adOpenStatic, adLockReadOnly
'           ' " union  SELECT  distinct SH.CONTORD_NO as ordno,DT.inv_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.TotContQty,0)) ORDMETER,dt.contractdate date FROM Ex_salescontracthd dt  LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONTRACTNO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO AND  hd.CUST_CODE = dt.CUSTCODE  INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONTractNO and sh.cust_code=hd.CUST_CODE WHERE dt.dIVCODE='" & divcode & "' and DT.custcode='" & sWevType & "'   GROUP BY SH.CONTORD_NO,DT.inv_TYPE,dt.contractdate Having Sum(IsNull(dt.TotContQty, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly
'
'
'            Lv_Order.ListItems.clear
'            Dim ljp1 As ListItem
'            If temprs.RecordCount > 0 Then
'                Do While Not temprs.EOF
'                    Set ljp1 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
'                    Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
'                     Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
'                    temprs.MoveNext
'                Loop
'            End If
'            temprs.Close
'            Chkord.VALUE = 0
        
            Set temprs = New Recordset
            temprs.Open "select distinct a.cust_code as code,b.slname  as description from fa_slmas b,WVG_GRPCONTHD A  ,wvg_grpcontdt d where A.cont_no=d.cont_no and A.date=d.cont_date and d.cont_type=A.cont_type and   isnull(d.cmpflg,'N')='Y' and a.cust_code=b.slcode and a.divcode=D.divcode and a.CONT_NO=D.cont_no and a.DIVCODE='" & Divcode & "' and d.cmpdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'" & _
                        " union all select distinct a.custcode  as code,b.slname  as description from ex_salescontracthd a,fa_slmas b , Ex_salescontractdt d WHERE d.contractno=A.contractno and d.contractdate=A.contractdate and d.inv_type=A.inv_type  AND    isnull(d.cmpflg,'N')='Y' and a.custcode=b.slcode and a.DIVCODE='" & Divcode & "' and  d.cmpdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "'", DB, adOpenStatic, adLockReadOnly
            
            '''temprs.Open "select distinct a.cust_code as code,b.slname  as description from WVG_GRPCONTHD a,fa_slmas b  where a.cust_code=b.slcode and a.DIVCODE='" & divcode & "' and a.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' ORDER BY A.CUST_CODE,B.SLNAME", db, adOpenStatic, adLockReadOnly
            
            Lv_Cust.ListItems.Clear
            Dim li As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                    Set li = Lv_Cust.ListItems.ADD(, , Mid(temprs!Description, 1, 50))
                    Lv_Cust.ListItems(Lv_Cust.ListItems.Count).ListSubItems.ADD , , temprs!Code
                    temprs.MoveNext
                Loop
            End If
            temprs.Close





        For I = 1 To Lv_Cust.ListItems.Count

        If Lv_Cust.ListItems.Item(I).Checked Then
            sWevType = Trim(Lv_Cust.ListItems(I).SubItems(1))
            Set temprs = New Recordset
            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_GRPCONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh Where HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and dt.date between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(pdate, "yyyy-mm-dd") & "' AND SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", db, adOpenStatic, adLockReadOnly

            'temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,grp.date,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER FROM WVG_CONTHD dt,WVG_BODT bo ,WVG_BOHD HD ,wvg_costsheet sh,wvg_grpconthd grp  Where dt.divcode=grp.divcode and dt.grpcont_no=grp.cont_no and HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE And HD.BO_NO = BO.BO_NO And BO.CONT_NO = dt.CONT_NO AND dt.dIVCODE='" & divcode & "' and  SH.CONTORD_NO=DT.grpcont_no GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,grp.date Having Sum(IsNull(dt.meters, 0)) >= IsNull(Sum(IsNull(bo.meters, 0)), 0) ", DB, adOpenStatic, adLockReadOnly
            
            temprs.Open "SELECT  distinct SH.CONTORD_NO as ordno,DT.CONT_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.METERS,0)) ORDMETER,dt.date date FROM WVG_GRPCONTHD dt inner join wvg_grpcontdt d on dt.cont_no=d.cont_no and dt.date=d.cont_date and d.cont_type=dt.cont_type LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONT_NO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO AND  hd.CUST_CODE = dt.CUST_CODE  INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONT_NO  WHERE dt.dIVCODE='" & Divcode & "' and DT.cust_code='" & sWevType & "' and   isnull(d.cmpflg,'N')='Y'  and d.cmpdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' GROUP BY SH.CONTORD_NO,DT.CONT_TYPE,dt.date  " & _
            " union  SELECT  distinct SH.CONTORD_NO as ordno,DT.inv_TYPE ordtype,ISNULL(SUM(ISNULL(bo.meters,0)),0) AS  dispmts,SUM(ISNULL(DT.TotContQty,0)) ORDMETER,dt.contractdate date FROM Ex_salescontracthd dt  LEFT JOIN WVG_BODT bo ON   BO.CONT_NO = dt.CONTRACTNO  LEFT JOIN WVG_BOHD HD ON  HD.divcode = BO.divcode And HD.BO_TYPE = BO.BO_TYPE  And HD.BO_NO = BO.BO_NO AND  hd.CUST_CODE = dt.CUSTCODE  INNER JOIN wvg_costsheet sh ON SH.CONTORD_NO=DT.CONTractNO and sh.cust_code=DT.CUST_CODE inner join Ex_salescontractdt d on d.contractno=dt.contractno and d.contractdate=dt.contractdate and dt.dIVCODE='" & Divcode & "' and DT.custcode='" & sWevType & "'   and d.cmpdt between '" & Format(DTPicker1.value, "yyyy-mm-dd") & "' and '" & Format(DTPicker2.value, "yyyy-mm-dd") & "' and   isnull(d.cmpflg,'N')='Y'  GROUP BY SH.CONTORD_NO,DT.inv_TYPE,dt.contractdate  ORDER BY SH.CONTORD_NO ", DB, adOpenStatic, adLockReadOnly
           
            Lv_Order.ListItems.Clear
            Dim ljp1 As ListItem
            If temprs.RecordCount > 0 Then
                Do While Not temprs.EOF
                   ' Set ljp1 = Lv_Order.ListItems.Add(, , Mid(temprs!ordtype, 1, 2))
                   ' Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!ordno
                   '  Lv_Order.ListItems(Lv_Order.ListItems.count).ListSubItems.Add , , temprs!Date
                   
                   
                      Set ljp1 = Lv_Order.ListItems.ADD(, , temprs!ordno)
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!ordno
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , temprs!Date
                    Lv_Order.ListItems(Lv_Order.ListItems.Count).ListSubItems.ADD , , Mid(temprs!ordtype, 1, 2)
                     
                    temprs.MoveNext
                Loop
            End If
            temprs.Close
          End If
          Next I
            Chkord.value = 0
            
            
            
End Sub

Private Sub txt_search_Change()
Dim itm As ListItem

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

Private Sub txt_search_const_Change()
Dim itm As ListItem

With Lv_Const
    Set itm = .FindItem(Trim(UCase(txt_search_const.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        Lv_Const.ListItems(ilastindex1).Bold = False
        Lv_Const.ListItems(ilastindex1).ForeColor = vbBlack
        
        itm.EnsureVisible
        lastindex = itm.Index
        Lv_Const.ListItems(lastindex).Selected = True
        ilastindex1 = lastindex
        
        Lv_Const.ListItems(ilastindex1).Bold = True
        Lv_Const.ListItems(ilastindex1).ForeColor = vbBlue
        
        
        Lv_Const.SetFocus
        txt_search_const.SetFocus
    End If
End With
Set itm = Nothing
ilastindex1 = 1
End Sub

Private Sub txt_search_order_Change()
Dim itm As ListItem

With Lv_Order
    Set itm = .FindItem(Trim(UCase(txt_search_order.Text)), lvtext, , lvwPartial)
    If Not itm Is Nothing Then
        itm.Selected = True
        Lv_Order.ListItems(ilastindex2).Bold = False
        Lv_Order.ListItems(ilastindex2).ForeColor = vbBlack
        
        itm.EnsureVisible
        lastindex = itm.Index
        Lv_Order.ListItems(lastindex).Selected = True
        ilastindex2 = lastindex
        
        Lv_Order.ListItems(ilastindex2).Bold = True
        Lv_Order.ListItems(ilastindex2).ForeColor = vbBlue
                
        Lv_Order.SetFocus
        txt_search_order.SetFocus
    End If
End With
Set itm = Nothing
ilastindex2 = 1
End Sub





Private Sub PUTDATADATE2()
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
'If Val(Myxl.Application.Version) >= 8 Then
     '   Set osheet = Myxl.ActiveSheet
    'Else
      '  Set osheet = Myxl
    'End If
     'Set osheet = Myxl.ActiveSheet
              tmpFile = "Cost sheet"
tmppath1 = "d:\kalsofte\data\" & tmpFile & ".xls"
'Set oExcel = CreateObject("Excel.Application")

Set oExcel = CreateObject("ket.Application")
Set oBook = oExcel.Workbooks.ADD
Set osheet = oBook.Worksheets(1)
'    oExcel.Visible = True
'    Set osheet = oBook.Worksheets(1)
   oExcel.Visible = True
    
        Dim fd As String
        Dim td As String

        fd = Format(DTPicker1.value, "yyyy-mm-dd")
        td = Format(DTPicker2.value, "yyyy-mm-dd")
        
        Set Rs = New Recordset
        Rs.Open "select divname from pp_divmas where divcode='" & Divcode & "'", DB
        
        osheet.Cells(1, 5).value = Rs(0)
        osheet.Range("A1", "M1").MergeCells = True
        With osheet.Range("A1").Font
        .Bold = True
        .Size = 12
        .Color = vbBlue
        End With
        
        osheet.Cells(2, 5).value = "WEAVING DIVISION"
        osheet.Range("A2", "M2").MergeCells = True
        With osheet.Range("A2").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
        

      
        osheet.Cells(7, 5).value = "OCR - BUYER WISE ABSTRACT DETAILS FROM  " & Format(fd, "DD/MM/YY") & " TO " & Format(td, "DD/MM/YY")
      
        osheet.Range("A7", "M7").MergeCells = True
        With osheet.Range("A7", "M7").Font
        .Bold = True
        .Size = 9
        .Color = vbBlue
        End With
    
   ' DB.Execute "Exec KSP_LoomPlan '" & Trim(divcode) & "','" & Format(fd, "YYYY-MM-DD") & "','" & Format(td, "YYYY-MM-DD") & "'"
  
  Dim exorder, domestic As String
  xorder = ""
        Set Rs = New Recordset
        Rs.Open "Exec Ksp_OCRAbs '" & Trim(Divcode) & "',''", DB, adOpenStatic
            If Rs.RecordCount > 0 Then
                    osheet.Cells(8, 1).value = "S.No"
                    osheet.Cells(8, 2).value = "Customer "
                    osheet.Cells(8, 3).value = "Agent Name"
                    osheet.Cells(8, 4).value = "Order Quantity"
                    osheet.Cells(8, 5).value = "Selling Rate"
                    osheet.Cells(8, 6).value = "Sale Value"
                    osheet.Cells(8, 7).value = "Profit / Meter in Rs."
                    osheet.Cells(8, 8).value = "Profit Amount"
                    osheet.Cells(8, 9).value = "Profit %"
                
'                osheet.Cells(8, 8).VALUE = "Despath No."
'                osheet.Cells(8, 9).VALUE = "Despatch Date"
'                osheet.Cells(8, 10).VALUE = "Despatch Type"
                
                m_ROW = osheet.UsedRange.Rows.Count
                lr = "A" & m_ROW
                HR = "J" & m_ROW
                With osheet.Range(lr, HR).Font
                .Bold = True
                .Size = 9
                .Color = vbBlue
                End With
                osheet.Range(lr, HR).Columns.AutoFit
                osheet.Range(lr, HR).Rows.AutoFit
                
                m = osheet.UsedRange.Rows.Count
                Max = m + 1
                For I = 0 To Rs.RecordCount - 1
                m_ROW = osheet.UsedRange.Rows.Count
                If Trim(Rs.Fields("inv_type")) <> xorder Then
                 xorder = Rs.Fields("inv_type")
                 If xorder = "EX" Then
                  osheet.Cells(Max, 2) = "EXPORT:"
                  Else
                  osheet.Cells(Max, 2) = "Domestic:"
                 End If
                 Max = Max + 1
                End If
                
               
                osheet.Cells(Max, 1) = I + 1
                osheet.Cells(Max, 2) = Trim(Rs.Fields("SLNAME"))
                osheet.Cells(Max, 3) = Trim(Rs.Fields("agentname"))
                osheet.Cells(Max, 4) = Trim(Rs.Fields("orderqty"))
                osheet.Cells(Max, 5) = val(Rs.Fields("selrate"))
                osheet.Cells(Max, 6) = Trim(Rs.Fields("OrderValue"))
               
                osheet.Cells(Max, 7) = Trim(Rs.Fields("plpermtr"))
                osheet.Cells(Max, 8) = Trim(Rs.Fields("profitamt"))
                osheet.Cells(Max, 9) = Trim(Rs.Fields("profitper"))
'                osheet.Cells(Max, 8) = Trim(Rs.Fields("bo_no"))
'                osheet.Cells(Max, 9) = Trim(Rs.Fields("date"))
'                osheet.Cells(Max, 10) = Trim(Rs.Fields("bo_type"))
                
                Rs.MoveNext
                
                Max = Max + 1
                Next I
                
                
                osheet.Columns.AutoFit
                osheet.Rows.AutoFit
                
                'Dim M_ROW As Integer
                
                m_ROW = osheet.UsedRange.Rows.Count
                MR = "J" & m_ROW
                
                'osheet.Cells(m_ROW + 1, 7).Formula = "=SUM(G4 :G" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 4).Formula = "=SUM(D4:D" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 6).Formula = "=SUM(F4:F" & m_ROW & ")"
                osheet.Cells(m_ROW + 1, 8).Formula = "=SUM(H7:H" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 11).Formula = "=SUM(K4:K" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 12).Formula = "=SUM(L4:L" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 13).Formula = "=SUM(M4:M" & m_ROW & ")"
'                'osheet.Cells(m_ROW + 1, 14).Formula = "=SUM(N4:N" & m_ROW & ")"
'                osheet.Cells(m_ROW + 1, 15).Formula = "=SUM(O4:O" & m_ROW & ")"
                
                m_ROW = osheet.UsedRange.Rows.Count
                ''
                
                lr = "A" & m
                HR = "J" & m_ROW
                
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
                'MsgBox "Copied " & Format$(RS.RecordCount) & " values."
                Else
                MsgBox "NO RECORDS FOUND", vbOKOnly, "ERROR"
                'CmbVtype.SetFocus
                Exit Sub
            End If
  
    Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Command1_Click of Form ", vbInformation, head
  
End Sub


