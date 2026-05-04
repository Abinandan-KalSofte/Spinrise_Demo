VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Object = "{F0D2F211-CCB0-11D0-A316-00AA00688B10}#1.0#0"; "MSDATLST.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form MixingRep 
   Caption         =   "Mixing Report"
   ClientHeight    =   6720
   ClientLeft      =   255
   ClientTop       =   555
   ClientWidth     =   11595
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   6720
   ScaleWidth      =   11595
   WindowState     =   2  'Maximized
   Begin VB.CommandButton Command1 
      Caption         =   "&Report"
      Default         =   -1  'True
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4140
      TabIndex        =   16
      Top             =   5760
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "E&xit"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5310
      TabIndex        =   15
      Top             =   5760
      Width           =   975
   End
   Begin VB.Frame Frame5 
      Height          =   615
      Left            =   2400
      TabIndex        =   10
      Top             =   4800
      Visible         =   0   'False
      Width           =   5340
      Begin VB.OptionButton Option4 
         Caption         =   "Yes"
         Height          =   315
         Left            =   1755
         TabIndex        =   12
         Top             =   210
         Width           =   1260
      End
      Begin VB.OptionButton Option5 
         Caption         =   "No"
         Height          =   285
         Left            =   3720
         TabIndex        =   11
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
         TabIndex        =   13
         Top             =   240
         Width           =   1425
      End
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   2295
      Left            =   2280
      TabIndex        =   0
      Top             =   2160
      Width           =   5445
      _ExtentX        =   9604
      _ExtentY        =   4048
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      TabCaption(0)   =   "Tab 0"
      TabPicture(0)   =   "MixingRep.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin VB.Frame Frame1 
         Height          =   2085
         Left            =   120
         TabIndex        =   1
         Top             =   90
         Width           =   5175
         Begin MSComCtl2.DTPicker DTPicker1 
            Height          =   315
            Left            =   2400
            TabIndex        =   4
            Top             =   600
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            Format          =   143065089
            CurrentDate     =   39235
         End
         Begin MSDataListLib.DataCombo DataCombo1 
            Height          =   315
            Left            =   2400
            TabIndex        =   6
            Top             =   1020
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            Text            =   "DataCombo1"
         End
         Begin MSComCtl2.DTPicker DTPicker2 
            Height          =   315
            Left            =   2400
            TabIndex        =   7
            Top             =   1440
            Visible         =   0   'False
            Width           =   1575
            _ExtentX        =   2778
            _ExtentY        =   556
            _Version        =   393216
            Format          =   143065089
            CurrentDate     =   39235
         End
         Begin VB.Label Label4 
            Caption         =   "Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   960
            TabIndex        =   8
            Top             =   1440
            Visible         =   0   'False
            Width           =   1335
         End
         Begin VB.Label Label3 
            Caption         =   "Mix Lot No."
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   960
            TabIndex        =   5
            Top             =   1080
            Width           =   1215
         End
         Begin VB.Label Label2 
            Caption         =   "Date"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   8.25
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   255
            Left            =   960
            TabIndex        =   3
            Top             =   600
            Width           =   1335
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            BackColor       =   &H80000002&
            Caption         =   "Daily Mixing Report"
            BeginProperty Font 
               Name            =   "Verdana"
               Size            =   9
               Charset         =   0
               Weight          =   700
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            ForeColor       =   &H00FFFFFF&
            Height          =   285
            Left            =   0
            TabIndex        =   2
            Top             =   90
            Width           =   5145
         End
      End
   End
   Begin RMI.UserFooter UserFooter1 
      Height          =   4335
      Left            =   7800
      TabIndex        =   14
      Top             =   720
      Visible         =   0   'False
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   7646
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      Caption         =   "For Viscose And Polyster"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2880
      TabIndex        =   9
      Top             =   1080
      Visible         =   0   'False
      Width           =   4215
   End
End
Attribute VB_Name = "MixingRep"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim pogrp As String
Dim Date1 As String, Date2 As String, Code As String
Dim cnt As Integer
Dim totVal As Double
Dim Namers As Recordset
Dim a As String, B As String
Dim i As Long, J As Long, k As Long
Dim PROJNO As Long, PORDNO As Long, porddt As String
Dim Rs As New Recordset, rs1 As New Recordset, rs2 As New Recordset, rs3 As New Recordset, rs4 As New Recordset, rs5 As New Recordset, RS6 As New Recordset
Public rec As Recordset
Dim LB() As RptLabel, LB2 As RptLabel, LB3 As RptLabel, LB4 As RptLabel, LB5 As RptLabel, LB6 As RptLabel, LB7 As RptLabel, LB8 As RptLabel, LB9 As RptLabel, LB10 As RptLabel, LB11 As RptLabel, LB12 As RptLabel
Dim REP As Report.ReportView
Dim f As Integer
Dim pg As Integer
Dim date111 As Date
Dim D1, D2 As Date
Dim gmix, gtmix As Double
Dim DB As Connection
Dim rsg As Recordset
Dim FD As String
Dim TD As String
Dim MIXNO As String


Private Sub Command1_Click()

On Error GoTo Command1_Click_Error

 Date1 = Format(DTPicker1.value, "yyyy-mm-dd"): Date2 = Format(DTPicker2.value, "yyyy-mm-dd")
    
If mixindex = 100 Then
    FD = DTPicker1.value
    If DataCombo1.MatchedWithList Then
    MIXNO = Trim(DataCombo1.Text)
    Call DailyMixingReport(FD, MIXNO)
    Else
    MsgBox "Select the Valid Mix Lot No", vbInformation, head
    DataCombo1.Text = ""
    Screen.MousePointer = 0
    Exit Sub
    End If
End If
If mixindex = 101 Then
    FD = DTPicker1.value
    TD = DTPicker2.value
    Call PrdMixingReport(FD, TD)
End If
If mixindex = 999 Then
    FD = DTPicker1.value
    TD = DTPicker2.value
    Call MixingReport(FD, TD)
End If
If mixindex = 3232 Then
    FD = DTPicker1.value
    TD = DTPicker2.value
    Call MixingReportCustom(FD, TD)
End If

Exit Sub
Command1_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_Click()
On Error GoTo Command2_Click_Error

Unload Me

Exit Sub
Command2_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command2_Click of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Command2_LostFocus()
On Error GoTo Command2_LostFocus_Error

DTPicker1.SetFocus

Exit Sub
Command2_LostFocus_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Command2_LostFocus of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub DTPicker1_Change()
On Error GoTo DTPicker1_Change_Error

On Error GoTo DTPicker1_Change_Error
If mixindex <> 100 Then
If DTPicker1.value <= yfdate Then
    MsgBox "Date should be Greater than Year First date", vbInformation, head
    DTPicker1.value = yfdate
    Exit Sub
End If
End If

If mixindex = 101 Then
    Set rsg = New Recordset
    'rsg.Open "select DOCNO from rm_issh where docdt='" & Format(DTPicker1.Value, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
    rsg.Open "select DOCNO from rm_issh where docdt='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB ) and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "'", DB, adOpenStatic
    If rsg.RecordCount > 0 Then
        Set DataCombo1.RowSource = rsg
        DataCombo1.ListField = "DOCNO"
        rsg.MoveLast
        DataCombo1.Text = rsg(0)
    Else
        MsgBox "No Mixing Details", vbInformation, head
        Exit Sub
    End If
ElseIf mixindex = 100 Then
Set rsg = New Recordset
    rsg.Open "select DOCNO from rm_MixingHd where docdt='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        Set DataCombo1.RowSource = rsg
        DataCombo1.ListField = "DOCNO"
        rsg.MoveLast
        DataCombo1.Text = rsg(0)
    Else
        MsgBox "No Mixing Details", vbInformation, head
       Set DataCombo1.RowSource = rsg
        DataCombo1.Text = ""
        Exit Sub
    End If
End If

 
Exit Sub
DTPicker1_Change_Error:
MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker1_Change of Form MixingRep"

Screen.MousePointer = 0
End Sub

Private Sub DTPicker2_Change()
On Error GoTo DTPicker2_Change_Error

If DTPicker2.value <= yfdate Then
    MsgBox "Date should be Greater than Year First date", vbInformation, head
    DTPicker2.value = yfdate
    Exit Sub
End If

Exit Sub
DTPicker2_Change_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure DTPicker2_Change of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Form_Load()
On Error GoTo Form_Load_Error

Set DB = New Connection
DB.Open connectstring
Frame1.Visible = True
Frame5.Visible = True
Frame5.ZOrder 0
Option5.value = True
UserFooter1.ClearFooter


If mixindex = 999 Or mixindex = 3232 Then
        Label1.Caption = "Mixing List"
        
        Label4.Visible = True
        DTPicker2.Visible = True
        
        Label4.Top = Label3.Top
        DTPicker2.Top = DataCombo1.Top
        Label3.Visible = False
        DataCombo1.Visible = False
        
        Label2.Caption = "From Date"
        Label4.Caption = "To Date"
        
        DTPicker1.MinDate = yfdate
        DTPicker1.MaxDate = pdate
        DTPicker2.MinDate = yfdate
        DTPicker2.MaxDate = pdate
        
        DTPicker1.tabIndex = 0
        DTPicker2.tabIndex = 1
        Command1.tabIndex = 2
        Command2.tabIndex = 3
        
        
        Set rsg = New Recordset
        rsg.Open "select min(docdt) as docdt from rm_MixingHd where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_mixingdt WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            If IsNull(rsg("DOCDT")) = False Then
                DTPicker1.value = rsg("docdt")
            Else
                DTPicker1.value = mfdate
            End If
        Else
            MsgBox "No records Found", vbInformation, head
            Exit Sub
        End If
        
        Set rsg = New Recordset
        rsg.Open "select max(docdt) as docdt from rm_mixinghd where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_mixingdt WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
                If IsNull(rsg("DOCDT")) = False Then
                    DTPicker2.value = rsg("docdt")
                Else
                    DTPicker2.value = pdate
                Exit Sub
            End If
        Else
            MsgBox "No records Found", vbInformation, head
            Exit Sub
        End If

End If


If mixindex = 101 Then
        
        Label1.Caption = "Issue List"
        
        Label4.Visible = True
        DTPicker2.Visible = True
        
        Label4.Top = Label3.Top
        DTPicker2.Top = DataCombo1.Top
        Label3.Visible = False
        DataCombo1.Visible = False
        
        Label2.Caption = "From Date"
        Label4.Caption = "To Date"
        
        DTPicker1.MinDate = yfdate
        DTPicker1.MaxDate = pdate
        DTPicker2.MinDate = yfdate
        DTPicker2.MaxDate = pdate

        
        Set rsg = New Recordset
        rsg.Open "select min(docdt) as docdt from rm_issh where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
            If IsNull(rsg("DOCDT")) = False Then
                DTPicker1.value = rsg("docdt")
            Else
                MsgBox "No records Found", vbInformation, head
                Exit Sub
            End If
        Else
            MsgBox "No records Found", vbInformation, head
            Exit Sub
        End If
        
        Set rsg = New Recordset
        rsg.Open "select max(docdt) as docdt from rm_issh where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
        If rsg.RecordCount > 0 Then
                If IsNull(rsg("DOCDT")) = False Then
                    DTPicker2.value = rsg("docdt")
                Else
                    MsgBox "No records Found", vbInformation, head
                Exit Sub
            End If
        Else
            MsgBox "No records Found", vbInformation, head
            Exit Sub
        End If
        
    
End If

If mixindex = 100 Then
    Label1.Caption = "Daily Mixing Report"
    Label2.Caption = "Date"
    Label2.Visible = True
    DTPicker1.Visible = True
    Label3.Visible = True
    DataCombo1.Visible = True
    Label4.Visible = False
    DTPicker2.Visible = False
    DTPicker1.value = mfdate
    DTPicker1.MinDate = yfdate
    DTPicker1.MaxDate = pdate
    
    Set rsg = New Recordset
''' Following from Issue
''''''    rsg.Open "select max(docdt) as docdt from rm_issh where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic


'~~~~~~~~~~~~~~~~~ Following From Mixing Issue Form
   rsg.Open "select max(docdt) as docdt from rm_MixingHd where docdt between '" & Format(yfdate, "YYYY-MM-DD") & "' AND '" & Format(yldate, "YYYY-MM-DD") & "' AND DOCDT<='" & Format(pdate, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic

    If rsg.RecordCount > 0 Then
    
        If IsNull(rsg("DOCDT")) = False Then
            DTPicker1.value = rsg("docdt")
        Else
            DTPicker1.value = mfdate
        End If
   
    End If
    
    Set rsg = New Recordset
    
    '''' Following From Issue Form
    '''rsg.Open "select DOCNO from rm_issh where docdt='" & Format(DTPicker1.Value, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_ISSB WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
    
    '''' Following from Mixing Issue Form
    rsg.Open "select DOCNO from rm_MixingHd where docdt='" & Format(DTPicker1.value, "YYYY-MM-DD") & "' and docno in (SELECT DISTINCT DOCNO FROM RM_MixingDt WHERE CATCD IN ('P','V') and docdt between '" & Format(yfdate, "yyyy-mm-dd") & "' and '" & Format(yldate, "yyyy-mm-dd") & "')", DB, adOpenStatic
    
    If rsg.RecordCount > 0 Then
        Set DataCombo1.RowSource = rsg
        DataCombo1.ListField = "DOCNO"
        rsg.MoveLast
        DataCombo1.Text = rsg(0)
    Else
    DataCombo1.Text = ""
        'MsgBox "No Mixing Details", vbInformation, head
        'Exit Sub
    End If
End If

Exit Sub
Form_Load_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub


Private Sub Option4_Click()
On Error GoTo Option4_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = True
    UserFooter1.Load

Exit Sub
Option4_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option4_Click of Form MixingRep", vbInformation, head
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option4_KeyDown of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

Private Sub Option5_Click()
On Error GoTo Option5_Click_Error

    UserFooter1.ClearFooter
    UserFooter1.Visible = False

Exit Sub
Option5_Click_Error:
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_Click of Form MixingRep", vbInformation, head
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
    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure Option5_KeyDown of Form MixingRep", vbInformation, head
Screen.MousePointer = 0
End Sub

