VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Begin VB.Form list 
   ClientHeight    =   5220
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8670
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   5220
   ScaleWidth      =   8670
   WindowState     =   2  'Maximized
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2895
      Left            =   1140
      TabIndex        =   0
      Top             =   1470
      Width           =   7095
      Begin MSDataListLib.DataCombo DataCombo1 
         Height          =   315
         Left            =   2040
         TabIndex        =   8
         Top             =   480
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   556
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo2 
         Height          =   315
         Left            =   2025
         TabIndex        =   9
         Top             =   1665
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   556
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo3 
         Height          =   315
         Left            =   2040
         TabIndex        =   10
         Top             =   1065
         Visible         =   0   'False
         Width           =   4680
         _ExtentX        =   8255
         _ExtentY        =   556
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin MSDataListLib.DataCombo DataCombo4 
         Height          =   315
         Left            =   2040
         TabIndex        =   11
         Top             =   2250
         Visible         =   0   'False
         Width           =   4695
         _ExtentX        =   8281
         _ExtentY        =   556
         _Version        =   393216
         ForeColor       =   8388608
         Text            =   ""
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Times New Roman"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
      End
      Begin VB.Label Label4 
         AutoSize        =   -1  'True
         Caption         =   "Label4"
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
         Left            =   420
         TabIndex        =   6
         Top             =   2250
         Width           =   585
      End
      Begin VB.Label Label3 
         AutoSize        =   -1  'True
         Caption         =   "Label3"
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
         Left            =   420
         TabIndex        =   5
         Top             =   1070
         Width           =   585
      End
      Begin VB.Label Label2 
         AutoSize        =   -1  'True
         Caption         =   "Label2"
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
         Left            =   420
         TabIndex        =   2
         Top             =   1660
         Width           =   585
      End
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         Caption         =   "Label1"
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
         Left            =   420
         TabIndex        =   1
         Top             =   480
         Width           =   585
      End
   End
   Begin VB.Frame Frame2 
      Height          =   2535
      Left            =   2250
      TabIndex        =   12
      Top             =   1665
      Visible         =   0   'False
      Width           =   4935
      Begin VB.CommandButton optok 
         Caption         =   "&Ok"
         Height          =   390
         Left            =   1350
         TabIndex        =   24
         Top             =   1935
         Width           =   975
      End
      Begin VB.CheckBox Check1 
         Caption         =   "All"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   330
         Left            =   675
         TabIndex        =   23
         Top             =   1485
         Width           =   700
      End
      Begin VB.CommandButton optcan 
         Caption         =   "&Cancel"
         Height          =   390
         Left            =   2535
         TabIndex        =   13
         Top             =   1935
         Width           =   975
      End
      Begin VB.Frame Frame4 
         Height          =   1080
         Left            =   165
         TabIndex        =   19
         Top             =   405
         Width           =   2250
         Begin VB.OptionButton choi 
            Caption         =   "Code_wise"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   480
            TabIndex        =   21
            Top             =   255
            Value           =   -1  'True
            Width           =   1335
         End
         Begin VB.OptionButton choi 
            Caption         =   "Name_wise"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   480
            TabIndex        =   20
            Top             =   660
            Width           =   1335
         End
      End
      Begin VB.Frame Frame3 
         Height          =   1335
         Left            =   2520
         TabIndex        =   15
         Top             =   405
         Width           =   2250
         Begin VB.OptionButton choitype 
            Caption         =   "Others"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   2
            Left            =   480
            TabIndex        =   18
            Top             =   900
            Width           =   1575
         End
         Begin VB.OptionButton choitype 
            Caption         =   "Creditors"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   1
            Left            =   480
            TabIndex        =   17
            Top             =   550
            Width           =   1575
         End
         Begin VB.OptionButton choitype 
            Caption         =   "Debtors"
            BeginProperty Font 
               Name            =   "MS Sans Serif"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   330
            Index           =   0
            Left            =   480
            TabIndex        =   16
            Top             =   200
            Value           =   -1  'True
            Width           =   1575
         End
      End
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Detailed"
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
      Left            =   4110
      TabIndex        =   7
      Top             =   4515
      Visible         =   0   'False
      Width           =   1020
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   360
      Left            =   6000
      Top             =   6240
      Visible         =   0   'False
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   635
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
      Caption         =   "Adodc2"
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
   Begin VB.CommandButton Command2 
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
      Height          =   375
      Left            =   5520
      TabIndex        =   4
      Top             =   4515
      Width           =   1020
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Code List"
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
      Left            =   2715
      TabIndex        =   3
      Top             =   4515
      Width           =   1020
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   360
      Left            =   1110
      Top             =   6240
      Visible         =   0   'False
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   635
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
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
   Begin MSComctlLib.TabStrip TabStrip1 
      Height          =   2790
      Left            =   2055
      TabIndex        =   22
      Top             =   1560
      Width           =   5340
      _ExtentX        =   9419
      _ExtentY        =   4921
      MultiRow        =   -1  'True
      _Version        =   393216
      BeginProperty Tabs {1EFB6598-857C-11D1-B16A-00C0F0283628} 
         NumTabs         =   1
         BeginProperty Tab1 {1EFB659A-857C-11D1-B16A-00C0F0283628} 
            ImageVarType    =   2
         EndProperty
      EndProperty
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      Height          =   330
      Left            =   1905
      TabIndex        =   14
      Top             =   555
      Width           =   4845
   End
End
Attribute VB_Name = "list"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim f As String
'Dim cn As Connection
Dim db As Connection
Dim choindex As Integer
Dim choitypein As String
Dim alltype As String
Dim dv1 As New DataEnvironment1
Dim l1 As RptLabel, l2 As RptLabel
Dim t1 As RptTextBox, t2 As RptTextBox, t3 As RptTextBox, t4 As RptTextBox, t5 As RptTextBox

Public Sub repprocedure(recsource, cod, codname, lbcp1, lbcp2, LB1 As Object, LB2 As Object, dt As Object, cb1 As Object, cb2 As Object)
WindowState = 2
dt.ConnectionString = connectstring
If choindex = 0 Then
Select Case REPINDEX
Case 7
    dt.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & "  order by " & cod
Case 8
    dt.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by " & cod
End Select
Else
Select Case REPINDEX
Case 7
    dt.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & "  order by " & cod
Case 8
    dt.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by " & cod
End Select
End If
dt.Refresh
LB1.Caption = lbcp1
LB2.Caption = lbcp2
WindowState = 2
'Filling the comboboxes  with records  from the table
Set cb1.RowSource = dt
Set cb2.RowSource = dt
cb1.ListField = "fld"
cb2.ListField = "fld"
On Error Resume Next
dt.Recordset.MoveFirst
cb1.Text = dt.Recordset(0)
dt.Recordset.MoveLast
cb2.Text = dt.Recordset(0)
End Sub
Private Sub com1change(recsource, cod, codname, dt As Object, fromst)
       Adodc2.ConnectionString = connectstring
       If choindex = 0 Then
       Select Case REPINDEX
       Case 7
            Adodc2.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where " & codname & " >= '" & fromst & "'  order by " & cod
       Case 8
            Adodc2.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where " & cod & " >= '" & fromst & "' and SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by " & cod
       End Select
       Else
       Select Case REPINDEX
       Case 7
            Adodc2.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where " & cod & ">='" & fromst & "'  order by " & cod
            
       Case 8
            Adodc2.RecordSource = "select " & cod & "+' - '+" & codname & " fld  from " & recsource & " where " & cod & ">='" & fromst & "' and SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by " & cod
       End Select
       End If
       Adodc2.Refresh
       'Filling the comboboxes  with records  from the table
       Set DataCombo2.RowSource = Adodc2
       DataCombo2.ListField = "fld"
       Adodc2.Recordset.MoveLast
       DataCombo2.Text = Adodc2.Recordset(0)
End Sub

Private Sub Check1_Click()
choi(0).Value = False
choi(1).Value = False
choitype(0).Value = False
choitype(1).Value = False
choitype(2).Value = False
End Sub

Private Sub choi_Click(Index As Integer)
choi(Index).Value = True
choindex = Index
Check1.Value = 0
End Sub

Private Sub choitype_Click(Index As Integer)
choitype(Index).Value = True
Select Case Index
Case 0
    choitypein = "D"
Case 1
    choitypein = "C"
Case 2
    choitypein = "O"
End Select
Check1.Value = 0
End Sub

Private Sub DataCombo1_Change()
Dim rs As Recordset
Set rs = New Recordset
If choindex = 0 Then
f$ = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
Select Case REPINDEX
 Case 7
    Call com1change("fa_glmas", "glcode", "glhead", Adodc1, f)
 Case 8
    Call com1change("fa_slmas", "slcode", "slname", Adodc1, f)
End Select
Else
 f$ = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
 Select Case REPINDEX
  Case 7
    Call com1change("fa_glmas", "glhead", "glcode", Adodc1, f)
  Case 8
    Call com1change("fa_slmas", "slname", "slcode", Adodc1, f)
  End Select
End If
End Sub

Private Sub datacombo1_LostFocus()
Call DataCombo1_Change
End Sub
Private Sub DataCombo2_LostFocus()
'Call DataCombo2_Change
End Sub

Private Sub Command1_Click()
 Dim rs As Recordset
 'Set cn = dv1.Connections("connection1")
    '---------- The following block is required
    
    Set dv1 = New DataEnvironment1
    dv1.Connection1.ConnectionString = connectstring
    Set cn = New Connection
    cn.CursorLocation = adUseClient
    
    If cn.State = 1 Then
      cn.Close
    End If

    cn.ConnectionString = "provider=msdatashape;" & connectstring
   
    If cn.State = adStateclose Then
        cn.Open
    End If
    
    '-------------------
 Set rs = New Recordset
'If cn.State = 1 Then
'     cn.Close
' End If
' cn.ConnectionString = "provider=msdatashape;" & connectstring
' If cn.State = adStateclose Then
'        cn.Open
' End If
Select Case REPINDEX
Case 7
  'General ledger listing
      
    fs = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    ts = Mid$(DataCombo2.Text, 1, InStr(DataCombo2.Text, " - ") - 1)
    If dv1.rsCommand3.State = adStateOpen Then
        dv1.rsCommand3.Close
    End If
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    If choindex = 0 Then
       cn.BeginTrans
       cn.Execute "delete from fa_listing"
       For I = 1 To 6
         rs.Open "select count(*) from fa_glmas where SUBSTRING(glcode,1,1)=" & I, cn
         If rs(0) > 0 Then
             Select Case I
             Case 1
                  hd = "LIABILITIES"
             Case 2
                  hd = "ASSETS"
             Case 3
                  hd = "INCOME"
             Case 4
                  hd = "EXPENDITURE"
             Case 5
                  hd = "SALES"
             Case 6
                  hd = "PURCHASES"
             End Select
             cn.Execute ("insert into FA_LISTING values (" & I & ",'" & hd & "')")
          End If
          rs.Close
       Next
       cn.CommitTrans
       If Check1.Value = 1 Then
            dv1.rsCommand3.Open "SHAPE {select code,head from fa_listing order by code}  AS Command3 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glhead >='" & fs & "' and glhead <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
            Frame2.Visible = True
            
            TabStrip1.Visible = True
       Else
            dv1.rsCommand3.Open "SHAPE {select code,head from fa_listing order by code}  AS Command3 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glCODE >='" & fs & "' and glCODE <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
       End If
       Set l1 = glclist.Sections(2).Controls.Item("pdate")
       l1.Caption = pdate
       Set l2 = glclist.Sections(2).Controls.Item("lblopt")
       If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
       ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
       End If
      
       Set LB1 = glclist.Sections(2).Controls("label1")
       Set LB2 = glclist.Sections(2).Controls("label2")
       Set LB3 = glclist.Sections(2).Controls("label3")
       Set LB4 = glclist.Sections(2).Controls("label4")
       Set LB5 = glclist.Sections(2).Controls("label5")
       Set LB6 = glclist.Sections(2).Controls("label6")
       Set LB7 = glclist.Sections(2).Controls("label7")
       Set LB8 = glclist.Sections(2).Controls("label8")
       Set LB9 = glclist.Sections(4).Controls("txtdrsch")
       Set LB10 = glclist.Sections(4).Controls("txtcrsch")
       Set LB11 = glclist.Sections(4).Controls("txtdrcfc")
       Set LB12 = glclist.Sections(4).Controls("txtcrcfc")
       Set LB13 = glclist.Sections(4).Controls("txtglcode")
       Set LB14 = glclist.Sections(4).Controls("txtglhead")
       Set LB15 = glclist.Sections(3).Controls("txthead")
       
       LB3.Visible = False
       LB4.Visible = False
       LB5.Visible = False
       LB6.Visible = False
       LB7.Visible = False
       LB8.Visible = False
       LB9.Visible = False
       LB10.Visible = False
       LB11.Visible = False
       LB12.Visible = False
       
      
       LB1.Left = 4000
       LB2.Left = 6000
       LB13.Left = 4000
       LB14.Left = 6000
       LB15.Left = 6000
       
       
       
       glclist.Title = DIVNAME
       Set glclist.DataSource = dv1
       glclist.Show
       
    Else
       Set l1 = glnlist.Sections(2).Controls.Item("pdate")
       l1.Caption = pdate
       Set l2 = glnlist.Sections(2).Controls.Item("lblopt")
       If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
       ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
       End If
       glnlist.Title = DIVNAME
       
       Set LB1 = glnlist.Sections(2).Controls("label1")
       Set LB2 = glnlist.Sections(2).Controls("label2")
       Set LB3 = glnlist.Sections(2).Controls("label3")
       Set LB4 = glnlist.Sections(2).Controls("label4")
       Set LB5 = glnlist.Sections(2).Controls("label5")
       Set LB6 = glnlist.Sections(2).Controls("label6")
       Set LB7 = glnlist.Sections(2).Controls("label7")
       Set LB8 = glnlist.Sections(2).Controls("label8")
       Set LB9 = glnlist.Sections(3).Controls("txtdrsch")
       Set LB10 = glnlist.Sections(3).Controls("txtcrsch")
       Set LB11 = glnlist.Sections(3).Controls("txtdrcfc")
       Set LB12 = glnlist.Sections(3).Controls("txtcrcfc")
       Set LB13 = glnlist.Sections(3).Controls("txtglcode")
       Set LB14 = glnlist.Sections(3).Controls("txtglhead")
      ' Set lb15 = glnlist.Sections(3).Controls("txthead")
       
       LB3.Visible = False
       LB4.Visible = False
       LB5.Visible = False
       LB6.Visible = False
       LB7.Visible = False
       LB8.Visible = False
       LB9.Visible = False
       LB10.Visible = False
       LB11.Visible = False
       LB12.Visible = False
       
      
       LB1.Left = 8000
       LB2.Left = 4000
       LB13.Left = 8000
       LB14.Left = 4000
    '   lb15.Left = 4000
       
       
       'commented as tc and cacc is removed
       'DV1.rsCommand1.Open "select glcode,glhead,tc,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0)crcfc from fa_glmas where glhead>='" & fs & "' and glhead<='" & ts & "' order by glhead", cn
        dv1.rsCommand1.Open "select glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0)crcfc from fa_glmas where glhead>='" & fs & "' and glhead<='" & ts & "' order by glhead", cn
       
       Set glnlist.DataSource = dv1
       glnlist.Show
       
    End If
 
Case 8
'SUB LEDGER LISTING
    On Error Resume Next
    If dv1.rsCommand1.State = adStateOpen Then
    dv1.rsCommand1.Close
    End If
    If choindex = 0 Then
        Set l1 = slclist.Sections(2).Controls.Item("pdate")
        l1.Caption = pdate
        Set l2 = slclist.Sections(2).Controls.Item("lblopt")
        If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
        ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
        End If
        slclist.Title = DIVNAME
        
        If choitype(0).Value = True Then
        
        dv1.rsCommand3.Open "SHAPE {SELECT prtytyp CODE,prtyhead HEAD  FROM FA_prty WHERE PRTYTYP LIKE 'D%' ORDER BY CODE }  AS Command3 APPEND ({SELECT (CASE WHEN SUBSTRING(SLCODE,1,2) = 'D1' THEN 'D1' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'D2' THEN 'D2' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'D3' THEN 'D3' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'D4' THEN 'D4' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'D5' THEN 'D5'  " & _
                             " END) END) END) END) END ) CODE " & _
                             ",SLCODE, SLNAME FROM FA_SLMAS ORDER BY SLCODE }  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
        Else
        dv1.rsCommand3.Open "SHAPE {SELECT prtytyp CODE,prtyhead HEAD  FROM FA_prty WHERE PRTYTYP LIKE 'C%' ORDER BY CODE }  AS Command3 APPEND ({SELECT (CASE WHEN SUBSTRING(SLCODE,1,2) = 'C1' THEN 'C1' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'C2' THEN 'C2' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'C3' THEN 'C3' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'C4' THEN 'C4' ELSE " & _
                             "(CASE WHEN SUBSTRING(SLCODE,1,2) = 'C5' THEN 'C5'  " & _
                             " END) END) END) END) END ) CODE " & _
                             ",SLCODE, SLNAME FROM FA_SLMAS ORDER BY SLCODE }  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
      End If
       ' DV1.rsCommand1.Open "SELECT SLCODE,SLNAME,ABBR,ADD1+'  '+ISNULL(ADD2,' ') ADD1,'Phone : '+PHONE1 phone1,CITY+' - '+pin city,STATE,COUNTRY,CRLIMIT,CRDDAYS,PAY_TERMS,AREACODE,CARCODE FROM FA_SLMAS WHERE SLCODE  between '" & fs & "' and  '" & ts & "' and SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by  SLCODE", cn
        Set slclist.DataSource = dv1
        slclist.Show
        Call FrmVisib
    Else
        Set l1 = slnlist.Sections(2).Controls.Item("pdate")
        l1.Caption = pdate
        Set l2 = slnlist.Sections(2).Controls.Item("lblopt")
        If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
        ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
        End If
        slnlist.Title = DIVNAME
        slnlist.Sections(3).Height = 245
        dv1.rsCommand1.Open "SELECT SLCODE,SLNAME,ABBR,ADD1+'  '+ISNULL(ADD2,' ') ADD1,'Phone : '+PHONE1 phone1,CITY+' - '+pin city,STATE,COUNTRY,CRLIMIT,CRDDAYS,PAY_TERMS,AREACODE,CARCODE FROM FA_SLMAS WHERE SUBSTRING(SLCODE,1,1)='" & choitypein & "'  order by  SLNAME", cn
        Set slnlist.DataSource = dv1
        slnlist.Show
    End If
Case 3
    'Cost Centre Group listing
   ' Call repproc2(CCentlist)
    fs = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    ts = Mid$(DataCombo2.Text, 1, InStr(DataCombo2.Text, " - ") - 1)
    If fs > ts Then
        MsgBox ("TO COST CENTRE CODE SHOULD NOT BE GREATER THAN FROM COST CENTRE CODE")
        DataCombo2.SetFocus
    Else
        If dv1.rsCommand1.State = adStateOpen Then
            dv1.rsCommand1.Close
        End If
        dv1.rsCommand1.Open "select CCCODE,CChead from fa_CCmas where cccode between  '" & fs & "' and '" & ts & "' order by cccode", cn
        Set CCentlist.DataSource = dv1
        CCentlist.Show
     End If
     Case 21
     fs = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    ts = Mid$(DataCombo2.Text, 1, InStr(DataCombo2.Text, " - ") - 1)

     If dv1.rsCommand1.State = adStateOpen Then
     dv1.rsCommand1.Close
     End If
     dv1.rsCommand1.Open "Select slcode,slname from fa_slmas where slcode between '" & fs & "' and '" & ts & "' order by slcode", cn
     Set rptsupplier.DataSource = dv1
     rptsupplier.Show
     

End Select
End Sub
Private Sub Command2_Click()
Unload Me
End Sub
Private Sub Command3_Click()
Dim rs As Recordset
 Set cn = dv1.Connections("connection1")
 Set rs = New Recordset
If cn.State = 1 Then
     cn.Close
 End If
 cn.ConnectionString = "provider=msdatashape;" & connectstring
 If cn.State = adStateclose Then
        cn.Open
 End If
Select Case REPINDEX
Case 7
  'General ledger listing
    If dv1.rsCommand3.State = adStateOpen Then
        dv1.rsCommand3.Close
    End If
    If dv1.rsCommand1.State = adStateOpen Then
        dv1.rsCommand1.Close
    End If
    fs = Mid$(DataCombo1.Text, 1, InStr(DataCombo1.Text, " - ") - 1)
    ts = Mid$(DataCombo2.Text, 1, InStr(DataCombo2.Text, " - ") - 1)
    If choindex = 0 Then
       Set rs = New Recordset
       cn.BeginTrans
       cn.Execute "delete from fa_listing"
       For I = 1 To 6
         rs.Open "select count(*) from fa_glmas where SUBSTRING(glcode,1,1)=" & I, cn
         If rs(0) > 0 Then
             Select Case I
             Case 1
                  hd = "LIABILITIES"
             Case 2
                  hd = "ASSETS"
             Case 3
                  hd = "INCOME"
             Case 4
                  hd = "EXPENDITURE"
             Case 5
                  hd = "SALES"
             Case 6
                  hd = "PURCHASES"
             End Select
             cn.Execute ("insert into FA_LISTING values (" & I & ",'" & hd & "')")
          End If
          rs.Close
       Next
       cn.CommitTrans
       If alltype = "1" Or alltype = "" Then
       'commented tc and cacc is removed
       'DV1.rsCommand23.Open "SHAPE {select code,head from fa_listing order by code}  AS Command23 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,ISNULL(tc,0) tc,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glCODE >= '" & fs & "' and glCODE <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
        dv1.rsCommand3.Open "SHAPE {select code,head from fa_listing order by code}  AS Command3 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glCODE >= '" & fs & "' and glCODE <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
       
       ElseIf alltype = "2" Or alltype = "" Then
       
       'commented as tc is removed
       'DV1.rsCommand23.Open "SHAPE {select code,head from fa_listing order by code}  AS Command23 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,ISNULL(tc,0) tc,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glhead >= '" & fs & "' and glhead <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
       dv1.rsCommand3.Open "SHAPE {select code,head from fa_listing order by code}  AS Command3 APPEND ({select SUBSTRING(glcode,1,1) code,glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0) crcfc from fa_glmas where glhead >= '" & fs & "' and glhead <= '" & ts & "' order by glcode}  AS Command4 RELATE 'CODE' TO 'CODE') AS Command4", cn
       Frame2.Visible = True
       
       TabStrip1.Visible = True
       End If
       Set l1 = glclistdt.Sections(2).Controls.Item("pdate")
       l1.Caption = pdate
       Set l2 = glclistdt.Sections(2).Controls.Item("lblopt")
       If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
       ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
       End If
       glclistdt.Title = DIVNAME
       Set glclistdt.DataSource = dv1
       glclistdt.Show
    Else
       Set l1 = glnlistdt.Sections(2).Controls.Item("pdate")
       l1.Caption = pdate
       Set l2 = glnlistdt.Sections(2).Controls.Item("lblopt")
       If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
       ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
       End If
       glnlistdt.Title = DIVNAME
       'commented as tc is removed
       'DV1.rsCommand1.Open "select glcode,glhead,ISNULL(tc,0) tc,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0)crcfc from fa_glmas where glhead>='" & fs & "' and glhead<='" & ts & "' order by glhead", cn
       dv1.rsCommand1.Open "select glcode,glhead,drsch,crsch,ISNULL(drcfc,0) drcfc,ISNULL(crcfc,0)crcfc from fa_glmas where glhead>='" & fs & "' and glhead<='" & ts & "' order by glhead", cn
       glnlistdt.Show
       
   End If

Case 8
'SUB LEDGER LISTING
    If dv1.rsCommand1.State = adStateOpen Then
    dv1.rsCommand1.Close
    End If
    If choindex = 0 Then
        Set l1 = slclistdt.Sections(2).Controls.Item("pdate")
        l1.Caption = pdate
        Set l2 = slclistdt.Sections(2).Controls.Item("lblopt")
        If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
        ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
        End If
        slclistdt.Title = DIVNAME
        dv1.rsCommand1.Open "SELECT SLCODE,SLNAME,ABBR,ADD1+'  '+ISNULL(ADD2,' ') ADD1,'Phone : '+PHONE1 phone1,CITY+' - '+pin city,STATE,COUNTRY,CRLIMIT,CRDDAYS,PAY_TERMS,AREACODE,CARCODE FROM FA_SLMAS WHERE SLCODE  between '" & fs & "' and  '" & ts & "' and SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by  SLCODE", cn
        Set slclistdt.DataSource = dv1
        slclistdt.Show
    Else
        Set l1 = slnlistdt.Sections(2).Controls.Item("pdate")
        l1.Caption = pdate
        Set l2 = slnlistdt.Sections(2).Controls.Item("lblopt")
        If Check1.Value = 0 Then
           l2.Caption = "Option  :  From " & fs & " To " & ts
        ElseIf Check1.Value = 1 Then
           l2.Caption = "Option  :  All "
        End If
        slnlistdt.Title = DIVNAME
        dv1.rsCommand1.Open "SELECT SLCODE,SLNAME,ABBR,ADD1+'  '+ISNULL(ADD2,' ') ADD1,'Phone : '+PHONE1 phone1,CITY+' - '+pin city,STATE,COUNTRY,CRLIMIT,CRDDAYS,PAY_TERMS,AREACODE,CARCODE FROM FA_SLMAS WHERE SUBSTRING(prtytyp,1,1)='" & choitypein & "' order by  SLNAME", cn
        Set slnlistdt.DataSource = dv1
        slnlistdt.Show
    End If

End Select


End Sub



Private Sub optcan_Click()
Unload Me
End Sub

Private Sub Form_Load()
Dim f, t As String
choitypein = "D"
Adodc1.ConnectionString = connectstring
Adodc2.ConnectionString = connectstring
Dim l1, l2 As RptLabel
Label3.Visible = False
Label4.Visible = False
DataCombo3.Visible = False
DataCombo4.Visible = False
Select Case REPINDEX
Case 7
  'GENERAL LEDGER LISTING
   TabStrip1.Visible = True
   TabStrip1.Tabs.clear
   Frame1.Visible = False
   Frame4.Left = 1400
   Frame4.BorderStyle = 1
   Check1.Left = 2000
   Frame3.Visible = False
   Command1.Visible = False
   Command2.Visible = False
   Label5.Caption = "General Ledger Listing"
   Frame2.Visible = True
   
Case 8
  'SUB LEDGER LISTING
  TabStrip1.Visible = True
  TabStrip1.Tabs.clear
  Frame1.Visible = False
  Command1.Visible = False
  Command2.Visible = False
  Label5.Caption = "Sub Ledger Listing"
  Frame2.Visible = True
'Case 1
'
'    Call repproc("fa_scmas ", "sccode", "schead", "From Schedule ", "To Schedule ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'Case 2
'    Call repproc("in_cat", "catcode", "catname", "From Category ", "To Category ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Category Listing"
Case 3
    Call repproc("fa_ccmas", "cccode", "cchead", "From Cost Centre  ", "To Cost Centre ", label1, Label2, Adodc1, DataCombo1, DataCombo2)
    Frame1.Caption = "Cost Centre Listing"
'Case 4
'    Call repproc("in_unit", "unitcode", "unitname", "From Unit ", "To Unit ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Unit Listing"
'Case 5
''Item listing - display from groupcode and to groupcode
'    Label3.Visible = True
'    Label4.Visible = True
'    DataCombo3.Visible = True
'    DataCombo4.Visible = True
'    Call repproc("IN_GRP", "grpcode", "grpname", "From Group ", "To Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Call repproc("IN_ITEM", "itemcode", "itemname", "From Item ", "To Item ", Label3, Label4, Adodc2, DataCombo3, DataCombo4)
'    Frame1.Caption = "Item Listing"
'    Command3.Visible = True
'
'Case 6
''    Adodc1.ConnectionString = connectstring
''    Adodc1.RecordSource = "select a.itemcodea.itemname from in_item a,in_subitemh b where a.itemcode = b.mainitem order by a.itemcode"
''    MsgBox (Adodc1.RecordSource)
''    Adodc1.Refresh
''    Label1.Caption = "From SubOrder Item"
''    Label2.Caption = "To SubOrder Item"
''    'Filling the comboboxes  with records  from the table
''    Set DataCombo1.RowSource = Adodc1
''    Set DataCombo2.RowSource = Adodc1
''
''    Frame1.Caption = "SubOrder Items Listing"
'Case 7
'    Call repproc("in_status", "stat_code", "stat_name", "From Status ", "To Status ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Status Listing"
'Case 8
'    Call repproc("in_item", "itemcode", "itemname", "From Item ", "To Item ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'Case 11
''Rework items stock report
'    Label3.Visible = True
'    Label4.Visible = True
'    DataCombo3.Visible = True
'    DataCombo4.Visible = True
'    Call repproc("in_grp where status = 'Y'", "grpcode", "grpname", "From Group ", "To Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Call repproc("in_subconitem s,in_item i where s.itemcode = i.itemcode ", "itemcode", "itemname", "From Item ", "To Item ", Label3, Label4, Adodc2, DataCombo3, DataCombo4)
'    Frame1.Caption = "Rework Items Stock Report"
'
'Case 12
''Reorder Level report
'    Label3.Visible = True
'    Label4.Visible = True
'    DataCombo3.Visible = True
'    DataCombo4.Visible = True
'    Call repproc("in_grp where status = 'Y'", "grpcode", "grpname", "From Group ", "To Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Call repproc("in_item", "itemcode", "itemname", "From Item ", "To Item ", Label3, Label4, Adodc2, DataCombo3, DataCombo4)
'    Frame1.Caption = "Reorder Level Report"
'
'Case 13
''Zero Stock report
'    Label3.Visible = True
'    Label4.Visible = True
'    DataCombo3.Visible = True
'    DataCombo4.Visible = True
'    Call repproc("in_grp", "grpcode", "grpname", "From Group ", "To Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Call repproc("in_item", "itemcode", "itemname", "From Item ", "To Item ", Label3, Label4, Adodc2, DataCombo3, DataCombo4)
'    Frame1.Caption = "Nil Stock Report"
'Case 14
''Party Listing
'    Call repproc("fa_slmas", "slcode", "slname", "From Vendor ", "To Vendor ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Vendor Listing"
'Case 15
'   'Operation Listing
'    Call repproc("in_prodoprn", "oprn", "description", "From Operation ", "To Operation", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Operation Listing"
'Case 16
'   'Party Listing
'    Call repproc("fa_prty", "prtytyp", "prtyhead", "From Party Type ", "To Party Type", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Party Type Listing"
'Case 17
'     Call repproc("in_grp", "grpcode", "grpname", "From Group", "To Group", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'     Frame1.Caption = "Group Status Listing"
'Case 18
'    Call repproc("IG_BRAND", "BND_CODE", "BND_NAME", "From Brand ", "To Brand ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Brand Listing"
'Case 19
'    Call repproc("IG_GROUP", "GRP_CODE", "GRP_NAME", "From Product Group ", "To Product Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Product Group Listing"
'Case 20
'    Call repproc("IG_PROD", "PROD_CODE", "PROD_DESC", "From Product ", "To Product ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Product Listing"
Case 21
    Call repproc("FA_SLMAS", "SLCODE", "SLNAME", "From Vendor ", "To Vendor ", label1, Label2, Adodc1, DataCombo1, DataCombo2)
    Frame1.Caption = "Vendor Listing"

'Case 22
'    Label3.Visible = True
'    Label4.Visible = True
'    DataCombo3.Visible = True
'    DataCombo4.Visible = True
'    Call repproc("IN_GRP", "grpcode", "grpname", "From Group ", "To Group ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Call repproc("IN_SUBCONITEM", "itemcode", "itemname", "From Item ", "To Item ", Label3, Label4, Adodc2, DataCombo3, DataCombo4)
'    Frame1.Caption = "Item Listing"
'
'Case 23
'    Call repproc("IG_AREA", "AREA_CODE", "AREA_NAME", "From Area ", "To Area ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Area Listing"
'
'Case 24
'    Call repproc("IG_BANK", "BANK_CODE", "BANK_DESC", "From Bank ", "To Bank ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Bank Listing"
'
'Case 25
'    Call repproc("IG_TAX", "TAX_CODE", "TAX_DESC", "From Tax ", "To Tax ", Label1, Label2, Adodc1, DataCombo1, DataCombo2)
'    Frame1.Caption = "Tax Listing"
End Select
End Sub

Private Sub optok_Click()
Select Case REPINDEX
Case 7
    'GENERAL LEDGER LISTING
    
    If choi(0).Value = True Then
     TabStrip1.Visible = False
     Frame1.Visible = True
     Frame2.Visible = False
     Command1.Visible = True
     Command2.Visible = True
     Command3.Visible = True
     Call repprocedure("fa_glmas", "glcode", "glhead", "From Glcode ", "To Glcode ", label1, Label2, Adodc1, DataCombo1, DataCombo2)
    Else
     TabStrip1.Visible = False
     Frame1.Visible = True
     Frame2.Visible = False
     Command1.Visible = True
     Command2.Visible = True
     Command3.Visible = True
     Call repprocedure("fa_glmas", "glhead", "glcode", "From Glhead ", "To Glhead ", label1, Label2, Adodc1, DataCombo1, DataCombo2)
    End If
    If Check1.Value = 1 Then
        Frame1.Visible = False
        Frame2.Visible = False
        Command1.Visible = False
        Command2.Visible = False
        Command3.Visible = False
        alltype = InputBox(" Enter listing type " & vbCrLf & " 1 - Codelist " & vbCrLf & " 2 - Detailed " & vbCrLf & " 3 - Exit", head + "Listing type")
        Select Case alltype
        Case Empty
                MsgBox "Enter either 1 or 2 or 3 "
                alltype = InputBox(" Enter listing type " & vbCrLf & "  1 - Codelist " & vbCrLf & "  2 - Detailed " & vbCrLf & "3 - Exit ", head + "Listing type")
        Case 1
          Call Command1_Click
        Case 2
          Call Command3_Click
        Case 3
          Call Command2_Click
        End Select
    End If
  
Case 8
        alltype = InputBox(" Enter listing type " & vbCrLf & " 1 - Codelist " & vbCrLf & " 2 - Detailed " & vbCrLf & " 3 - Exit", head + "Listing type")
        Do While Not (alltype = "1" Or alltype = "2" Or alltype = "3")
                MsgBox "Enter either 1 or 2 or 3 "
                alltype = InputBox(" Enter listing type " & vbCrLf & "  1 - Codelist " & vbCrLf & "  2 - Detailed " & vbCrLf & "3 - Exit ", head + "Listing type")
        Loop
        Select Case alltype
        Case Empty
            'BUTTON(9).Enabled = False
            'Exit Sub
        Case 1
            Call Command1_Click
        Case 2
            Call Command3_Click
        Case 3
            Call Command2_Click
        End Select
       ' End If
End Select
End Sub
Public Sub FrmVisib()
TabStrip1.Visible = True
Frame4.Visible = True
Frame3.Visible = True
Check1.Visible = True
optok.Visible = True
optcan.Visible = True
Command1.Visible = False
Command2.Visible = False
Command3.Visible = False
'TabStrip1.ZOrder
End Sub
