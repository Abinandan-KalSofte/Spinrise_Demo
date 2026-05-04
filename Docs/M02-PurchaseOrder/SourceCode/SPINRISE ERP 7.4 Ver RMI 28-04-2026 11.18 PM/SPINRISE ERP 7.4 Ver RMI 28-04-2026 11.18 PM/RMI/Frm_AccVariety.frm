VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{00025600-0000-0000-C000-000000000046}#5.2#0"; "Crystl32.OCX"
Begin VB.Form Frm_AccVariety 
   Caption         =   "Accounts Variety "
   ClientHeight    =   6000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11400
   DrawWidth       =   2
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   6000
   ScaleWidth      =   11400
   WindowState     =   2  'Maximized
   Begin Crystal.CrystalReport CrystalReport1 
      Left            =   9480
      Top             =   5160
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   348160
      PrintFileLinesPerPage=   60
   End
   Begin VB.CommandButton BUTTON 
      Height          =   510
      Index           =   12
      Left            =   5520
      Picture         =   "Frm_AccVariety.frx":0000
      Style           =   1  'Graphical
      TabIndex        =   19
      ToolTipText     =   "G.R.N"
      Top             =   0
      Width           =   615
   End
   Begin VB.Frame Buttonframe 
      Height          =   645
      Left            =   -1
      TabIndex        =   14
      Top             =   -105
      Width           =   11850
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":0442
         Height          =   510
         Index           =   6
         Left            =   2820
         Picture         =   "Frm_AccVariety.frx":088C
         Style           =   1  'Graphical
         TabIndex        =   6
         ToolTipText     =   "Next Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":0BD9
         Height          =   510
         Index           =   0
         Left            =   45
         Picture         =   "Frm_AccVariety.frx":0EE3
         Style           =   1  'Graphical
         TabIndex        =   0
         ToolTipText     =   "Add"
         Top             =   120
         UseMaskColor    =   -1  'True
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":1276
         Height          =   510
         Index           =   5
         Left            =   2265
         Picture         =   "Frm_AccVariety.frx":16C0
         Style           =   1  'Graphical
         TabIndex        =   5
         ToolTipText     =   "First Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":1A25
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   510
         Index           =   2
         Left            =   1155
         Picture         =   "Frm_AccVariety.frx":1D2F
         Style           =   1  'Graphical
         TabIndex        =   2
         ToolTipText     =   "Delete"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":20CB
         Height          =   510
         Index           =   1
         Left            =   600
         Picture         =   "Frm_AccVariety.frx":23D5
         Style           =   1  'Graphical
         TabIndex        =   1
         ToolTipText     =   "Modify"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         Height          =   510
         Index           =   3
         Left            =   1710
         Picture         =   "Frm_AccVariety.frx":274F
         Style           =   1  'Graphical
         TabIndex        =   3
         ToolTipText     =   "List"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":2AE6
         Height          =   510
         Index           =   7
         Left            =   3375
         Picture         =   "Frm_AccVariety.frx":2F30
         Style           =   1  'Graphical
         TabIndex        =   7
         ToolTipText     =   "Previous Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":3280
         Height          =   510
         Index           =   11
         Left            =   6075
         Picture         =   "Frm_AccVariety.frx":36CA
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Exit"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":3A5F
         Height          =   510
         Index           =   9
         Left            =   4485
         Picture         =   "Frm_AccVariety.frx":3D69
         Style           =   1  'Graphical
         TabIndex        =   9
         ToolTipText     =   "Save"
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         Cancel          =   -1  'True
         CausesValidation=   0   'False
         DownPicture     =   "Frm_AccVariety.frx":410B
         Height          =   510
         Index           =   10
         Left            =   5040
         Picture         =   "Frm_AccVariety.frx":4415
         Style           =   1  'Graphical
         TabIndex        =   10
         ToolTipText     =   "Cancel "
         Top             =   120
         Width           =   550
      End
      Begin VB.CommandButton BUTTON 
         DownPicture     =   "Frm_AccVariety.frx":4791
         Height          =   510
         Index           =   8
         Left            =   3930
         Picture         =   "Frm_AccVariety.frx":4BDB
         Style           =   1  'Graphical
         TabIndex        =   8
         ToolTipText     =   "Last Record"
         Top             =   120
         Width           =   550
      End
      Begin VB.Label DATLAB 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DATE"
         BeginProperty DataFormat 
            Type            =   1
            Format          =   "d MMMM yyyy"
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   3
         EndProperty
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   10260
         TabIndex        =   16
         Top             =   255
         Width           =   630
      End
      Begin VB.Label desc 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "DESC"
         BeginProperty Font 
            Name            =   "Times New Roman"
            Size            =   11.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   255
         Left            =   6900
         TabIndex        =   15
         Top             =   255
         Width           =   840
      End
   End
   Begin VB.PictureBox picStatBox 
      Align           =   2  'Align Bottom
      Appearance      =   0  'Flat
      BorderStyle     =   0  'None
      DrawStyle       =   2  'Dot
      DrawWidth       =   17015
      ForeColor       =   &H80000008&
      Height          =   300
      Left            =   0
      ScaleHeight     =   300
      ScaleWidth      =   11400
      TabIndex        =   13
      Top             =   5400
      Width           =   11400
   End
   Begin MSComctlLib.StatusBar stbar 
      Align           =   2  'Align Bottom
      Height          =   300
      Left            =   0
      TabIndex        =   17
      Top             =   5700
      Width           =   11400
      _ExtentX        =   20108
      _ExtentY        =   529
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   4
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   1923
            MinWidth        =   1923
            Text            =   "KSL"
            TextSave        =   "KSL"
         EndProperty
         BeginProperty Panel2 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Alignment       =   1
            Object.Width           =   11201
            MinWidth        =   11201
         EndProperty
         BeginProperty Panel3 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   6
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "07/04/2023"
         EndProperty
         BeginProperty Panel4 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
            Style           =   5
            Alignment       =   1
            Object.Width           =   1764
            MinWidth        =   1764
            TextSave        =   "03:54 PM"
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
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   1560
      TabIndex        =   18
      Top             =   1440
      Width           =   6555
      _ExtentX        =   11562
      _ExtentY        =   7646
      _Version        =   393216
      Tabs            =   1
      TabsPerRow      =   1
      TabHeight       =   520
      ShowFocusRect   =   0   'False
      TabCaption(0)   =   " "
      TabPicture(0)   =   "Frm_AccVariety.frx":4F3D
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "grdDataGrid"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      Begin MSDataGridLib.DataGrid grdDataGrid 
         Height          =   4070
         Left            =   150
         TabIndex        =   12
         Top             =   135
         Width           =   6270
         _ExtentX        =   11060
         _ExtentY        =   7170
         _Version        =   393216
         AllowUpdate     =   -1  'True
         AllowArrows     =   -1  'True
         HeadLines       =   1
         RowHeight       =   15
         TabAcrossSplits =   -1  'True
         TabAction       =   2
         WrapCellPointer =   -1  'True
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
   End
   Begin VB.Label heading 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Accounts Variety "
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   345
      Left            =   1530
      TabIndex        =   4
      Top             =   885
      Width           =   2235
   End
End
Attribute VB_Name = "Frm_AccVariety"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim WithEvents adoPrimaryRS As Recordset
Attribute adoPrimaryRS.VB_VarHelpID = -1
Dim row1 As Integer
Dim Rs As Recordset
Dim DB As Connection
Dim Opt As String
Dim st, st1, st2 As String
Dim ITARY() As String
Dim cou As Integer
Dim cou1, c As Integer
Dim FLG As String
Dim rep As Report.ReportView
Dim a As Integer
Dim Str As String
Dim temp_1 As String

Private Sub BUTTON_Click(Index As Integer)
On Error GoTo BUTTON_Click_Error
intervalMinutes = -1
Select Case Index
Case 0
'addition


        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran", vbInformation, head
'                Exit Sub
'            End If
              If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
               End If
        
        End If
        Opt = "add"
         Screen.MousePointer = 11
         desc.Caption = "Addition"
         stbar.Panels(2).Text = "Addition"
         DB.BeginTrans
         Set adoPrimaryRS = New Recordset
         adoPrimaryRS.Open "select AccVarcode 'Code', AccVarName 'Variety Name' from RM_Accvar where 1=2", DB, adOpenStatic, adLockBatchOptimistic
         adoPrimaryRS.AddNew
         Set grdDataGrid.DataSource = adoPrimaryRS
         grdDataGrid.Columns(1).Width = 4000
         Call ENABLCONTLS
         Call bindcontls
         Call adddelmod(BUTTON)
         grdDataGrid.Col = 0
         grdDataGrid.Enabled = True
         grdDataGrid.AllowAddNew = True
         grdDataGrid.AllowUpdate = True
         grdDataGrid.EditActive = True
         grdDataGrid.SetFocus
         grdDataGrid.EditActive = True
         Screen.MousePointer = 0
         stbar.Panels(2).Text = "Addition"
         grdDataGrid.Columns(1).Width = 4500
         grdDataGrid.EditActive = True
Case 1
'modification
        'Opt = "mod"
        
                    
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'            If UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
'                MsgBox "You cannot Add or Modify or Delete !!! only in Sricheran", vbInformation, head
'                Exit Sub
'            End If
          If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
               End If
        
        End If
        If Record_Exists("RM_Accvar", "No Records Found") = False Then Exit Sub

            
            Opt = "mod"
                Screen.MousePointer = 11
                desc.Caption = "Modification"
                stbar.Panels(2).Text = "Modification"
                DB.BeginTrans
                stbar.Panels(2).Text = "Select Rmi Variety Code from the List"
                grdDataGrid.AllowUpdate = True
                'calling addmoddel procedure from module
                Call adddelmod(BUTTON)
                Screen.MousePointer = 0
                Call MODLOOKUP
                grdDataGrid.Columns(1).Width = 5000
Case 2
'Deletion
    'Opt = "del"
        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
                If Divcode <> "01" Then
                    MsgBox "You cannot Add or Modify or Delete !!! only in PALLAVA Division One ", vbInformation, head
                    Exit Sub
               End If
        End If
    
       If Record_Exists("RM_Accvar", "No Records Found") = False Then Exit Sub
            Opt = "del"
            Screen.MousePointer = 11
            desc.Caption = "Deletion"
            stbar.Panels(2).Text = "Select Rmi Variety Code from the List"
            grdDataGrid.AllowUpdate = False
            DB.BeginTrans
            'calling addmoddel procedure from module
            Call adddelmod(BUTTON)
            Screen.MousePointer = 0
            Call MODLOOKUP
            grdDataGrid.Columns(1).Width = 5000

Case 3
    'list
            If Record_Exists("RM_Accvar", "No Records Found") = False Then Exit Sub
            Set rep = New Report.ReportView
            a = FreeFile
            Dim pg As Integer
            Dim co As Integer
            pg = 1
            co = 0
'            Open "c:\unit.txt" For Output As #a
            Open KALFOLDERDATA & "\unit.TXT" For Output As #a
            Call header(pg, co)
             For I = 1 To Rs.RecordCount
                Print #a, Space(5) + Rs(0) & Space(14 - Len(Rs(0))) + Rs(1) & Space(25 - Len(Rs(1)))
                c = c + 1
                    If c > PageLen Then
                        Print #a, Chr(12)
                        pg = pg + 1
                        c = 0
                        Call header(pg, co)
                    End If
                Rs.MoveNext
            Next
            Print #a, Space(5) + String(60, "-")
            Print #a, Chr(12)
            Close #a
'            Open "c:\unit.bat" For Output As #a
'            Print #a, "cd\"
'            Print #a, "c:"
'            Print #a, "cd\"
'            Print #a, "type unit.txt > prn"
'            Close #a
'            REP.txtfile = "c:\unit.txt"
'            REP.Batfile = "c:\unit.bat"
            a = FreeFile
            Call KALBATPROCESS("unit")

Case 5
    'first
         desc.Caption = "Query"
         On Error GoTo GoFirstError
         adoPrimaryRS.MoveFirst
         stbar.Panels(2).Text = "First Record"
         'calling fir procedure from module
         Call FIR(BUTTON)
         Exit Sub
GoFirstError:
        If Err.Number = 3021 Then
          MsgBox "No Units Defined", vbInformation, head
          Exit Sub
        End If
      'MsgBox Err.Description

Case 6
    'next
         desc.Caption = "Query"
         On Error GoTo GoNextError
            If Not adoPrimaryRS.EOF Then
                adoPrimaryRS.MoveNext
                stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
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
                stbar.Panels(2).Text = "Last Record "
            End If
            Exit Sub
GoNextError:

Case 7
 'previous
        desc.Caption = "Query"
        On Error GoTo GoPrevError
            If Not adoPrimaryRS.BOF Then
                adoPrimaryRS.MovePrevious
                stbar.Panels(2).Text = "Record  " & adoPrimaryRS.AbsolutePosition & " of " & adoPrimaryRS.RecordCount
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
                stbar.Panels(2).Text = "First Record "
            End If
            Exit Sub

GoPrevError:

Case 8
    'last
         desc.Caption = "Query"
         On Error GoTo GoLastError
         adoPrimaryRS.MoveLast
         stbar.Panels(2).Text = "Last Record "
         Call las(BUTTON)
         Exit Sub
GoLastError:

Case 9
'Save
    If Opt = "add" Or Opt = "mod" Then
          
            If adoPrimaryRS.RecordCount = 1 And grdDataGrid.Columns(0).Text = "" And grdDataGrid.Columns(1).Text = "" Then
                MsgBox "Enmpty Record Cannot be Saved", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If

            If Trim(grdDataGrid.Columns(1).Text) = "" And Not Trim(grdDataGrid.Columns(0).Text) = "" Then
                MsgBox "Please Enter Descsription", vbInformation, head
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Exit Sub
            End If
            If adoPrimaryRS.RecordCount = 0 Then
                  MsgBox "Please Enter Code", vbInformation, head
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
                Exit Sub
            End If

    End If
   
        Screen.MousePointer = 11
On Error GoTo AddErr
            If Opt = "add" Then
                 adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
                            If Trim(grdDataGrid.Columns(0).Text) = "" Then
                                adoPrimaryRS.Delete
                            End If
                                Opt = ""
                                adoPrimaryRS.MoveNext
                        Loop
                    adoPrimaryRS.MoveFirst
                    Opt = "add"
                    If Trim(grdDataGrid.Columns(1).Text) = "" And Not Trim(grdDataGrid.Columns(0).Text) = "" Then
                        MsgBox "Please Enter Descsription", vbInformation, head
                        grdDataGrid.Col = 1
                        grdDataGrid.SetFocus
                        Exit Sub
                    End If
                    
                    TEMP = "opt"
                    Opt = " "
                    If grdDataGrid.Row = -1 Then
                       grdDataGrid.Row = 0
                    End If
                    adoPrimaryRS.MoveFirst
                    Do While Not adoPrimaryRS.EOF
'                        adoPrimaryRS("code") = Trim(grdDataGrid.Columns(0).Text)
'                        adoPrimaryRS("Variety Name") = Trim(grdDataGrid.Columns(1).Text)
                        
                            adoPrimaryRS.MoveFirst
                            Set TrnLog = New Recordset
                            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                            TrnLog.AddNew
                            TrnLog("DIVCODE") = Divcode
                            TrnLog("moduleNo") = ModuleNo
                            TrnLog("Trans_Name") = "Account Variety Type"
                            TrnLog("Trans_Mod") = "Add"
                            TrnLog("Trans_IPADD") = LocalIP
                            TrnLog("Trans_Host") = LocalHost
                            TrnLog("Trans_UserId") = usrid
                            Set RSCHECK = DB.Execute("Select GetDate()")
                            TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                            TrnLog("code") = grdDataGrid.Columns(0).Text
                            TrnLog("description") = grdDataGrid.Columns(1).Text
                
                            TrnLog.UpdateBatch adAffectAllChapters
                        
                        adoPrimaryRS.MoveNext
                    Loop
                adoPrimaryRS.UpdateBatch adAffectAll
                Opt = "temp"
                DB.CommitTrans
                Screen.MousePointer = 0
                stbar.Panels(2).Text = "Record Saved Successfully"
                MsgBox " Record Saved Successfully", vbInformation, head
                Opt = " "
                Call query_mode
                BUTTON(0).Enabled = True
                BUTTON(0).SetFocus
                Exit Sub
            End If
        If Opt = "mod" Then
            adoPrimaryRS.UpdateBatch adAffectAll
            
            adoPrimaryRS.MoveFirst
            Set TrnLog = New Recordset
            TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
            TrnLog.AddNew
            TrnLog("DIVCODE") = Divcode
            TrnLog("moduleNo") = ModuleNo
            TrnLog("Trans_Name") = "Account Variety Type"
            TrnLog("Trans_Mod") = "Mod"
            TrnLog("Trans_IPADD") = LocalIP
            TrnLog("Trans_Host") = LocalHost
            TrnLog("Trans_UserId") = usrid
            Set RSCHECK = DB.Execute("Select GetDate()")
                    TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
            TrnLog("code") = grdDataGrid.Columns(0).Text
            TrnLog("description") = grdDataGrid.Columns(1).Text

            TrnLog.UpdateBatch adAffectAllChapters
            
            
            DB.CommitTrans
            Screen.MousePointer = 0
            stbar.Panels(2).Text = "Record Modified Successfully"
            MsgBox "Record Modified Successfully", vbInformation, head
            Opt = " "
            Call query_mode
            BUTTON(0).Enabled = True
            BUTTON(0).SetFocus
            Exit Sub
        End If

         If Opt = "del" Then
          On Error GoTo delerr:
          
        Set RSCHECK = New Recordset
        RSCHECK.Open "select accvarcode  from RM_var where accvarcode='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic
        If Not RSCHECK.EOF Then
            MsgBox "You cannot Delete Variety!! Dependencies Exit", vbInformation, head
            Exit Sub
        End If

        If UCase(CustID) = "SHRIGIRI" Or UCase(CustID) = "PALLAVA" Or UCase(CustID) = "VSM" Then
            Set RSCHECK = New Recordset
            RSCHECK.Open "select varcode  from RM_var where accvarcode='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic
            If Not RSCHECK.EOF Then
                MsgBox "You cannot Delete Variety!! Dependencies Exit", vbInformation, head
                Exit Sub
            End If
        End If
          
          
                      a% = MsgBox("Are you sure you want to delete?", vbYesNo, head)
                           If a = 6 Then
                        DB.Execute ("delete from RM_Accvar where AccVarcode='" & grdDataGrid.Columns(0).Text & "'")
                        
                        Set TrnLog = New Recordset
                        TrnLog.Open "SELECT Divcode,moduleNo,Trans_Name,Trans_Mod,Trans_Host,Trans_IPADD,Trans_UserId,Trans_date,code ,description FROM RM_Setup_Log  WHERE 1=2 ", DB, adOpenStatic, adLockBatchOptimistic
                        TrnLog.AddNew
                        TrnLog("DIVCODE") = Divcode
                        TrnLog("moduleNo") = ModuleNo
                        TrnLog("Trans_Name") = "Account Variety Type"
                        TrnLog("Trans_Mod") = "Del"
                        TrnLog("Trans_IPADD") = LocalIP
                        TrnLog("Trans_Host") = LocalHost
                        TrnLog("Trans_UserId") = usrid
                        Set RSCHECK = DB.Execute("Select GetDate()")
                         TrnLog("Trans_date") = Format(RSCHECK.Fields(0), "yyyy-mm-dd hh:mm:ss")
                        TrnLog("code") = grdDataGrid.Columns(0).Text
                        TrnLog("description") = grdDataGrid.Columns(1).Text
            
                        TrnLog.UpdateBatch adAffectAllChapters
                        
                        DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Record Deleted Successfully"
                        MsgBox "Record Deleted Successfully", vbInformation, head
                        Opt = " "
                        Call query_mode
                        
                        BUTTON(0).Enabled = True
                        BUTTON(0).SetFocus
                        Exit Sub
                     Else
                     DB.CommitTrans
                        Screen.MousePointer = 0
                        stbar.Panels(2).Text = "Operation Cancelled"
                        MsgBox "Operation Cancelled", vbInformation, head
                        Opt = " "
                        BUTTON(0).Enabled = True
                        Call query_mode
                   Exit Sub
                   End If

                   'End If
    End If
delerr:
'    If CStr(Mid$(err.Description, InStr(err.Description, "ORA") + 4, 5)) = "02292" Then
        If Opt = "del" Then

        MsgBox "This product is in use.Cannot delete record.", vbInformation, head
        DB.CommitTrans
        Opt = " "
        Call query_mode
        Screen.MousePointer = 0
        End If
'        Opt = "del"
'        BUTTON_Click (10)
'        Opt = "add"
'        Screen.MousePointer = 0
'        MsgBox "This Unit Code already exists", vbInformation, head
'        st = "B"
'        grdDataGrid.Col = 0
'    '
AddErr:
     If Err.Number = "-2147217842" Then
        MsgBox "Empty Records Not saved", vbInformation
        grdDataGrid.SetFocus
        Screen.MousePointer = 0
        Exit Sub
     End If


Case 10
    'CANCEL
    desc.Caption = "Cancel"
    Screen.MousePointer = 11
    Select Case Opt
            Case "mod"
                    DB.RollbackTrans
            Case "add"
                    DB.RollbackTrans
            Case "del"
                    DB.RollbackTrans
    End Select
        Screen.MousePointer = 0
        Opt = " "
        Call query_mode
'        Call cancl(BUTTON, 80)
        If BUTTON(0).Enabled = True Then BUTTON(0).SetFocus
Case 11
    'EXIT
        Reset
        Unload Me
Case 12
    
    Dim CystalrptAccVareity As New clsCrystal
    Set CystalrptAccVareity.cryRept = Cry_Account_Variety
    CystalrptAccVareity.CrystalPrint
    CrystalReport1.Reset
    CrystalReport1.Connect = connectstring
    CrystalReport1.ReportFileName = KALFOLDERDATA & "RepRMI.rpt"
    CrystalReport1.ParameterFields(0) = "@divcode;" & Divcode & ""
    CrystalReport1.WindowShowPrintSetupBtn = True
    CrystalReport1.WindowShowSearchBtn = True
    CrystalReport1.WindowState = crptMaximized
    SendKeys "{ENTER}"
    CrystalReport1.Action = 1
    CrystalReport1.PrinterCopies = 1
    Screen.MousePointer = 0
End Select
Exit Sub
'deler:
'       If err = -2147217900 Then
'        MsgBox "This unit code cannot be deleted as dependencies exist ", vbInformation, head
'        Screen.MousePointer = 0
'       ElseIf err = -2147217842 Then
'        'MsgBox "Empty Record Cannot be Saved", vbInformation, head
'       If grdDataGrid.Col = 0 And IsNull(grdDataGrid.Columns(0).Text) Then
'            MsgBox "Empty Record Cannot be Saved", vbInformation, head
'            DB.RollbackTrans
'            Call query_mode
'       Else
'             MsgBox "Description should not Empty", vbInformation, head
'             grdDataGrid.Col = 1
'             Opt = tmp
'       End If
'        'DB.RollbackTrans
'        'Call query_mode
'        'MsgBox Err.Description
'        Screen.MousePointer = 0
        grdDataGrid.SetFocus
       '

Exit Sub
BUTTON_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_Click of Form RMIType", vbInformation, head

End Sub

Private Sub BUTTON_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
On Error GoTo BUTTON_KeyDown_Error

    If KeyCode = vbKeyAdd And Shift = 2 Then
        Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeySubtract And Shift = 2 Then
        Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyR And Shift = 2 Then
        Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyN And Shift = 2 Then
        Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyO And Shift = 2 Then
        Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyE And Shift = 2 Then
        Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyZ And Shift = 2 Then
        Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        Call BUTTON_Click(11)
    End If


Exit Sub
BUTTON_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure BUTTON_KeyDown of Form RMIType", vbInformation, head

End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo Form_KeyDown_Error
intervalMinutes = -1
    If KeyCode = 13 Then
        SendKeys ("{tab}")
    ElseIf KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        If BUTTON(4).Enabled Then Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        If BUTTON(12).Enabled Then Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
'        If BUTTON(13).Enabled Then Call BUTTON_Click(13)
    End If


Exit Sub
Form_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_KeyDown of Form RMIType", vbInformation, head

End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
On Error GoTo KH_Error
    
    ' Addition ^A
    
    If Shift = 2 And KeyCode = 65 And BUTTON(0).Enabled = True Then
        Call BUTTON_Click(0)
        Exit Sub
    End If

    ' Modification ^M
    
    If Shift = 2 And KeyCode = 77 And BUTTON(1).Enabled = True Then
        Call BUTTON_Click(1)
        Exit Sub
    End If

    ' Deletion ^D
    
    If Shift = 2 And KeyCode = 68 And BUTTON(2).Enabled = True Then
        Call BUTTON_Click(2)
        Exit Sub
    End If

    ' Listing ^L
    
    If Shift = 2 And KeyCode = 76 And BUTTON(3).Enabled = True Then
        Call BUTTON_Click(3)
        Exit Sub
    End If

    ' Find ^F
    
    'If Shift = 2 And KeyCode = 70 And BUTTON(4).Enabled = True Then
    '    Call BUTTON_Click(4)
    '    Exit Sub
    'End If


    ' First ^Home
    
    If Shift = 2 And KeyCode = 36 And BUTTON(5).Enabled = True Then
        Call BUTTON_Click(5)
        Exit Sub
    End If

    ' Next ^DownArrow
    
    If Shift = 2 And KeyCode = 40 And BUTTON(6).Enabled = True Then
        Call BUTTON_Click(6)
        Exit Sub
    End If

    ' Previous ^UpArrow
    
    If Shift = 2 And KeyCode = 38 And BUTTON(7).Enabled = True Then
        Call BUTTON_Click(7)
        Exit Sub
    End If

    ' Last ^End
    
    If Shift = 2 And KeyCode = 35 And BUTTON(8).Enabled = True Then
        Call BUTTON_Click(8)
        Exit Sub
    End If

    ' Save ^S
    
    If Shift = 2 And KeyCode = 83 And BUTTON(9).Enabled = True Then
        Call BUTTON_Click(9)
        Exit Sub
    End If

    ' Cancel ^C
    
    If Shift = 2 And KeyCode = 67 And BUTTON(10).Enabled = True Then
        Call BUTTON_Click(10)
        Exit Sub
    End If

    ' Exit ^E  (or)  Esc
    
    If (Shift = 2 And KeyCode = 69) Or (Shift = 0 And KeyCode = 27) And BUTTON(11).Enabled = True Then
        Call BUTTON_Click(11)
        Exit Sub
    End If

KH_Error:

End Sub

Private Sub grddatagrid_BeforeColUpdate(ByVal ColIndex As Integer, OldValue As Variant, Cancel As Integer)
On Error GoTo grddatagrid_BeforeColUpdate_Error

    If Opt = "add" Then
    grdDataGrid.EditActive = True
            If ColIndex = 1 Then
                    If grdDataGrid.Columns(1).Text <> Empty Then
                        'grddatagrid.Columns(1).Text = UCase(grddatagrid.Columns(1).Text)
                        Set Rs = New Recordset
                            Rs.Open "select 'Description'  from RM_Accvar where AccVarName ='" & Trim(grdDataGrid.Columns(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
                                If Not Rs.BOF Then
                                    MsgBox "Variety Description cannot be repeated", vbInformation, head
                                    grdDataGrid.Columns(1).Text = "  "
                                    grdDataGrid.Col = 1
                                    grdDataGrid.SetFocus
                                    grdDataGrid.AllowAddNew = False
                                    Exit Sub
                                End If
                    End If
            End If
    End If
    
    If Opt = "add" Then
    grdDataGrid.EditActive = True
            If ColIndex = 0 Then
                    If grdDataGrid.Columns(0).Text <> Empty Then
                        Set Rs = New Recordset
                            Rs.Open "select 'Code'  from RM_Accvar where AccVarcode ='" & grdDataGrid.Columns(0).Text & "'", DB, adOpenStatic, adLockBatchOptimistic
                                If Not Rs.BOF Then
                                    MsgBox "Code cannot be Repeated", vbInformation, head
                                    grdDataGrid.Columns(1).Text = "  "
                                    grdDataGrid.Col = 0
                                    grdDataGrid.SetFocus
                                    grdDataGrid.AllowAddNew = False
                                    Exit Sub
                                End If
                    End If
            End If
    End If
    
    
    If Opt = "mod" Then
            If ColIndex = 1 Then
                    If grdDataGrid.Columns(1).Text <> Empty Then
                        grdDataGrid.Columns(1).Text = UCase(grdDataGrid.Columns(1).Text)
                    End If
            End If
    End If

Exit Sub
grddatagrid_BeforeColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_BeforeColUpdate of Form RMIType", vbInformation, head
End Sub

Private Sub grdDataGrid_Error(ByVal DataError As Integer, Response As Integer)
''If DataError = 7007 Then
''    If grdDataGrid.COL = 0 Then
''        MsgBox "Pay Code should not have more than three characters", vbInformation, head
''        st = "A"
''    Else
''        MsgBox "Pay Description should not empty and atmost it can be upto Fifty characters", vbInformation, head
''        st2 = "A"
''    End If
''End If
''Response = 0
''
End Sub

Private Sub GRDDATAGRID_GotFocus()
On Error GoTo GRDDATAGRID_GotFocus_Error

    If grdDataGrid.Col = 0 Then
       stbar.Panels(2).Text = "Enter a maximum of 3 character"
    End If
    If grdDataGrid.Col = 1 Then
       stbar.Panels(2).Text = "Enter a maximum of 50 character"
    End If

Exit Sub
GRDDATAGRID_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure GRDDATAGRID_GotFocus of Form RMIType", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyDown(KeyCode As Integer, Shift As Integer)
On Error GoTo GrdDatagrid_KeyDown_Error

    If KeyCode = 13 Then
        SendKeys ("{tab}")
    ElseIf KeyCode = vbKeyA And Shift = 2 Then
        If BUTTON(0).Enabled Then Call BUTTON_Click(0)
    ElseIf KeyCode = vbKeyM And Shift = 2 Then
        If BUTTON(1).Enabled Then Call BUTTON_Click(1)
    ElseIf KeyCode = vbKeyD And Shift = 2 Then
        If BUTTON(2).Enabled Then Call BUTTON_Click(2)
    ElseIf KeyCode = vbKeyL And Shift = 2 Then
        If BUTTON(3).Enabled Then Call BUTTON_Click(3)
    ElseIf KeyCode = vbKeyF And Shift = 2 Then
        If BUTTON(4).Enabled Then Call BUTTON_Click(4)
    ElseIf KeyCode = vbKeyLeft And Shift = 2 Then
        If BUTTON(5).Enabled Then Call BUTTON_Click(5)
    ElseIf KeyCode = vbKeyDown And Shift = 2 Then
        If BUTTON(6).Enabled Then Call BUTTON_Click(6)
    ElseIf KeyCode = vbKeyUp And Shift = 2 Then
        If BUTTON(7).Enabled Then Call BUTTON_Click(7)
     ElseIf KeyCode = vbKeyRight And Shift = 2 Then
        If BUTTON(8).Enabled Then Call BUTTON_Click(8)
    ElseIf KeyCode = vbKeyS And Shift = 2 Then
        If BUTTON(9).Enabled Then Call BUTTON_Click(9)
    ElseIf KeyCode = vbKeyBack And Shift = 2 Then
        If BUTTON(10).Enabled Then Call BUTTON_Click(10)
    ElseIf KeyCode = vbKeyQ And Shift = 2 Then
        If BUTTON(11).Enabled Then Call BUTTON_Click(11)
    ElseIf KeyCode = vbKeyP And Shift = 2 Then
'        If BUTTON(12).Enabled Then Call BUTTON_Click(12)
    ElseIf KeyCode = vbKeyY And Shift = 2 Then
'        If BUTTON(13).Enabled Then Call BUTTON_Click(13)
    End If

Exit Sub
GrdDatagrid_KeyDown_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyDown of Form RMIType", vbInformation, head
End Sub

Private Sub GrdDatagrid_KeyPress(KeyAscii As Integer)
On Error GoTo GrdDatagrid_KeyPress_Error

    Select Case grdDataGrid.Col
        Case 0
                stbar.Panels(2).Text = "Enter a maximum 10 Character"
                If KeyAscii = 32 Then
                    KeyAscii = 9
                End If
                If KeyAscii <> 9 Then
                    ToAlphaNumber grdDataGrid, 10, KeyAscii
                    ToUpCase grdDataGrid, KeyAscii   ', 3
                End If
                
                
        Case 1
                stbar.Panels(2).Text = "Enter a maximum 40 Character"
                If Opt = "add" Then
'                If KeyAscii <> 9 Then
'                Call ToUpCase(grdDataGrid, KeyAscii)
'                End If
                    If KeyAscii <> 9 Then
                        'Commented on 08-02-2019'
                        'Call ToAlphaNumber(grdDataGrid, 50, KeyAscii)
                    End If
                    If KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) <> "" Then
                        adoPrimaryRS.AddNew
                        BUTTON(9).Enabled = True
                        BUTTON(9).SetFocus
                        'grddatagrid.COL = 0
                        'grddatagrid.SetFocus
                    ElseIf KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) = "" Then
                        grdDataGrid.Col = 1
                        grdDataGrid.SetFocus
                    End If

                Else
                    If KeyAscii = 9 And Trim(grdDataGrid.Columns(1).Text) <> "" Then
                        BUTTON(9).Enabled = True
                        BUTTON(9).SetFocus
                    ElseIf KeyAscii = 9 Then
                    End If
                End If
 Call ToUpCase(grdDataGrid, KeyAscii)
    End Select

Exit Sub
GrdDatagrid_KeyPress_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_KeyPress of Form RMIType", vbInformation, head
End Sub

Private Sub grdDataGrid_RowColChange(LastRow As Variant, ByVal LastCol As Integer)
On Error GoTo grdDataGrid_RowColChange_Error

   If Opt = "add" Then
        grdDataGrid.EditActive = True
        On Error Resume Next
        
        

            If LastCol = 1 Then
                    If grdDataGrid.Columns(0).Text <> Empty Then
                        grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
                    End If
                              Set Rs = New Recordset
                    Rs.Open "select AccVarcode from RM_Accvar where AccVarName ='" & Trim(grdDataGrid.Columns(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
                    If Rs.RecordCount > 0 Then
                        MsgBox "Variety Description Cannot be repeated", vbInformation, head
                        grdDataGrid.Row = row1
                        grdDataGrid.Columns(1).Text = ""
                        grdDataGrid.Col = 1
                        grdDataGrid.SetFocus
                        FLG = "y"
                    Else
                        stbar.Panels(2).Text = "Enter a maximum of 50 character"
                    End If
                    
            End If


'            If st = "A" Then
'                grdDataGrid.row = grdDataGrid.row - 1
'                grdDataGrid.COL = 1
'                grdDataGrid.SetFocus
'                st = ""
'                Exit Sub
'            End If
'            If FLG = "y" Then
'                grdDataGrid.COL = 0
'                grdDataGrid.SetFocus
'                grdDataGrid.Columns(0).Text = " "
'                FLG = ""
'                Exit Sub
'            End If
           
           If LastCol = 0 And Opt = "add" Then
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    MsgBox "Code cannot be Empty", vbInformation, head
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                    grdDataGrid.EditActive = True
                    Exit Sub
                Else
                    grdDataGrid.Col = 1
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
           End If

           If LastCol = 0 And Opt = "add" Then
                If Trim(grdDataGrid.Columns(0).Text) = "" Then
                    MsgBox "Code Cannot be empty", vbInformation, head
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                Else
                    adoPrimaryRS.AddNew
                    grdDataGrid.Col = 0
                    grdDataGrid.SetFocus
                    Exit Sub
                End If
           End If
  End If

Exit Sub
grdDataGrid_RowColChange_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grdDataGrid_RowColChange of Form RMIType", vbInformation, head
  
End Sub

Private Sub lovcancel_Click()
On Error GoTo lovcancel_Click_Error

Frame3.Visible = False
SSTab1.Visible = True
grdDataGrid.Visible = True
DB.RollbackTrans
Buttonframe.Enabled = True
Opt = " "
Call query_mode
BUTTON(0).SetFocus

Exit Sub
lovcancel_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovcancel_Click of Form RMIType", vbInformation, head
End Sub
Private Sub lovok_Click()
On Error GoTo lovok_Click_Error

       Buttonframe.Enabled = True
       SSTab1.Visible = True
       grdDataGrid.Visible = True
       Set adoPrimaryRS = New Recordset
       adoPrimaryRS.Open "select AccVarcode 'Code',AccVarName 'Variety Name' from RM_Accvar where AccVarcode ='" & Ksldesc1.Code & "' Order by AccVarcode", DB, adOpenStatic, adLockBatchOptimistic
       Set grdDataGrid.DataSource = adoPrimaryRS
       grdDataGrid.Columns(1).Width = 3000
       grdDataGrid.AllowAddNew = False
       grdDataGrid.Columns(0).Locked = True
       grdDataGrid.Columns(1).Locked = False
       grdDataGrid.Columns(1).Width = 5084.788
       grdDataGrid.Col = 1
       grdDataGrid.Row = 0
            If Opt = "mod" Then
                stbar.Panels(2).Text = "Modification"
                grdDataGrid.Enabled = True
                grdDataGrid.Columns(0).Locked = True
                grdDataGrid.Columns(1).Locked = False
                grdDataGrid.Col = 1
                grdDataGrid.SetFocus
            End If

            If Opt = "del" Then
                grdDataGrid.Enabled = False
                BUTTON(9).Enabled = True
                BUTTON(9).SetFocus
                stbar.Panels(2).Text = "Click Save for Deletion or Cancel to Quit"
            End If
      Frame3.Visible = False


Exit Sub
lovok_Click_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure lovok_Click of Form RMIType", vbInformation, head

End Sub
Private Sub Form_Load()
On Error GoTo Form_Load_Error
intervalMinutes = -1
    BUTTON(0).ToolTipText = "Add (Ctrl A)"
    BUTTON(1).ToolTipText = "Modify (Ctrl M)"
    BUTTON(2).ToolTipText = "Delete (Ctrl D)"
    BUTTON(3).ToolTipText = "List (Ctrl L)"
    'BUTTON(4).ToolTipText = "Find (Ctrl F)"
    BUTTON(5).ToolTipText = "First Record (Ctrl Left)"
    BUTTON(6).ToolTipText = "Next Record (Ctrl Down)"
    BUTTON(7).ToolTipText = "Previous Record (Ctrl Up)"
    BUTTON(8).ToolTipText = "Last Record (Ctrl Right)"
    BUTTON(9).ToolTipText = "Save (Ctrl S)"
    BUTTON(10).ToolTipText = "Cancel (Ctrl BackSpace)"
    BUTTON(11).ToolTipText = "Exit (Ctrl Q)"

    
    Opt = "qry"
    Set DB = New Connection
    DB.CursorLocation = adUseClient
    DB.Open connectstring
    desc.Caption = "Query"
    DATLAB.Caption = pdate
    stbar.Panels(1).Text = head
    grdDataGrid.Columns(0).Caption = "Code"
    grdDataGrid.Columns(1).Caption = "Variety Name"
    grdDataGrid.Columns(1).Width = 4700
    grdDataGrid.HeadFont.Bold = True
    SSTab1.Tabs = 1
    Call query_mode
intervalMinutes = -1
Exit Sub
Form_Load_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form RMIType", vbInformation, head
End Sub
Private Sub Form_Resize()
      On Error Resume Next
        stbar.Panels(2).Width = Me.Width - (stbar.Panels(1).Width + stbar.Panels(3).Width + stbar.Panels(4).Width)
End Sub
Private Sub Form_Unload(Cancel As Integer)
On Error GoTo Form_Unload_Error

        Screen.MousePointer = vbDefault
intervalMinutes = -1
Exit Sub
Form_Unload_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form RMIType", vbInformation, head
End Sub
Private Sub adoPrimaryRS_MoveComplete(ByVal adReason As ADODB.EventReasonEnum, ByVal pError As ADODB.Error, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
On Error GoTo adoPrimaryRS_MoveComplete_Error

    If Opt <> "add" Then
            stbar.Panels(2).Text = "Record " & CStr(adoPrimaryRS.AbsolutePosition) & " / " & CStr(adoPrimaryRS.RecordCount)
    End If
    If adoPrimaryRS.RecordCount = 0 Then
             stbar.Panels(2).Text = "No Records Found"
    End If
intervalMinutes = -1
    grdDataGrid.Columns(1).Width = 5000
    
Exit Sub
adoPrimaryRS_MoveComplete_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adoPrimaryRS_MoveComplete of Form RMIType", vbInformation, head
End Sub
Private Sub grddatagrid_AfterColUpdate(ByVal ColIndex As Integer)
On Error GoTo GrdDatagrid_AfterColUpdate_Error

    If Opt = "add" Then
        temp_pos = adoPrimaryRS.AbsolutePosition
        grdDataGrid.EditActive = True
        row1 = grdDataGrid.Row
        If ColIndex = 0 Then
        temp_1 = grdDataGrid.Columns(0).Text
            If Trim(grdDataGrid.Columns(0).Text) = "" Then
                MsgBox "Code cannot be empty", vbInformation, head
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                Exit Sub
            End If
            Set Rs = New Recordset
            Rs.Open "select AccVarcode from RM_Accvar where AccVarcode ='" & Trim(grdDataGrid.Columns(0).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
            If Rs.RecordCount > 0 Then
                MsgBox "Code cannot be repeated", vbInformation, head
                grdDataGrid.Row = row1
                grdDataGrid.Columns(0).Text = ""
                grdDataGrid.Col = 0
                grdDataGrid.SetFocus
                FLG = "y"
            Else
                stbar.Panels(2).Text = "Enter a maximum of 50 character"
            End If
            
''            If adoPrimaryRS.RecordCount > 1 Then
''            adoPrimaryRS.MoveFirst
''            If temp_1 = adoPrimaryRS(0) And temp_pos <> adoPrimaryRS.AbsolutePosition Then
''                MsgBox "Pay Code cannot be repeated", vbInformation, head
''                grdDataGrid.Columns(0).Text = ""
''                grdDataGrid.COL = 0
''                grdDataGrid.SetFocus
''                FLG = "y"
''                Exit Sub
''            End If
''            End If
        End If
            If ColIndex = 1 Then
                    If grdDataGrid.Columns(0).Text <> Empty Then
                        grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
                    End If
                    
                    
            
                    If grdDataGrid.Columns(0).Text <> Empty Then
                        grdDataGrid.Columns(0).Text = UCase(grdDataGrid.Columns(0).Text)
                    End If
                              Set Rs = New Recordset
                    Rs.Open "select AccVarcode from RM_Accvar where AccVarName ='" & Trim(grdDataGrid.Columns(1).Text) & "'", DB, adOpenStatic, adLockBatchOptimistic
                    If Rs.RecordCount > 0 Then
                        MsgBox "Variety Description Cannot be repeated", vbInformation, head
                        grdDataGrid.Row = row1
                        grdDataGrid.Columns(1).Text = ""
                        grdDataGrid.Col = 1
                        grdDataGrid.SetFocus
                        FLG = "y"
                    Else
                        stbar.Panels(2).Text = "Enter a maximum of 50 character"
                    End If
                    
           
            End If
 End If

Exit Sub
GrdDatagrid_AfterColUpdate_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure grddatagrid_AfterColUpdate of Form RMIType", vbInformation, head
End Sub
Public Sub query_mode()
On Error GoTo er1
intervalMinutes = -1
    If Opt = " " Or Opt = "qry" Then

        Set adoPrimaryRS = New Recordset
        adoPrimaryRS.Open "select AccVarcode 'Code',AccVarName 'Variety Name' from RM_Accvar Order by AccVarcode", DB, adOpenStatic, adLockOptimistic
        If adoPrimaryRS.RecordCount = 0 Then
            MsgBox "No Records Found", vbInformation, head
          Else
        End If

        Call bindcontls
        desc.Caption = "Query"
        stbar.Panels(2).Text = "Query"
        Call NEWFORM1(BUTTON, GSNO)
                If adoPrimaryRS.RecordCount = 0 Then
                    BUTTON(5).Enabled = False
                    BUTTON(6).Enabled = False
                    BUTTON(7).Enabled = False
                    BUTTON(8).Enabled = False
                    Else
                    Call FIR(BUTTON)
                End If
        Call disablcontls
   End If

    If Opt = "mod" Then
        'Set adoPrimaryRS = New Recordset
        'adoPrimaryRS.Open "select Code,Description from RM_Accvar where Code ='" & Trim(Ksldesc1.code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", db, adOpenStatic, adLockBatchOptimistic
        Call bindcontls
        Call ENABLCONTLS
        grdDataGrid.Columns(0).Locked = True
    End If

        If Opt = "del" Then
            'Set adoPrimaryRS = New Recordset
            'adoPrimaryRS.Open "select Code ,Description from RM_Accvar where Code ='" & Trim(Ksldesc1.code) & "' and Description ='" & Trim(Ksldesc1.Description) & "'", db, adOpenStatic, adLockBatchOptimistic
            Call bindcontls
            Call disablcontls
            BUTTON(10).Enabled = False
        End If

grdDataGrid.Columns(1).Width = 5000
er1:
If Err = 3021 Then
    MsgBox "No Records Exist", vbInformation, head
End If
If Err = -2147467259 Then
    MsgBox "Connection  could  not  be  established " & Chr(13) & " Log out and  try  after some  time ", vbInformation, head
  End If

End Sub
Public Sub bindcontls()
'On Error GoTo bindcontls_Error
On Error Resume Next

    Set grdDataGrid.DataSource = adoPrimaryRS

Exit Sub
'bindcontls_Error:
'MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure bindcontls of Form RMIType", vbInformation, head
End Sub

Public Sub disablcontls()
On Error GoTo disablcontls_Error

    grdDataGrid.Columns(0).Locked = True
    grdDataGrid.Columns(1).Locked = True

Exit Sub
disablcontls_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure disablcontls of Form RMIType", vbInformation, head
  End Sub
Public Sub ENABLCONTLS()
On Error GoTo ENABLCONTLS_Error

    grdDataGrid.Columns(0).Locked = False
    grdDataGrid.Columns(1).Locked = False

Exit Sub
ENABLCONTLS_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ENABLCONTLS of Form RMIType", vbInformation, head
End Sub

Private Sub ksldesc1_GotFocus()
On Error GoTo ksldesc1_GotFocus_Error

    lovok.Default = True

Exit Sub
ksldesc1_GotFocus_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ksldesc1_GotFocus of Form RMIType", vbInformation, head
End Sub
Public Sub header(pg As Integer, c As Integer)
On Error GoTo header_Error

            Print #a,
            'Print #a, Space(10) + Space(Round((60 - 2 * Len(divname)) / 2)) + Chr(14) + divname '+ Space(Round((100 - 2 * Len(divname)) / 2))
            Print #a, Space(5) & Chr$(27) + "E" + CENTRE(Trim(divname), 60, " ") + Chr$(27) + "F"
            Print #a, Space(60)
            Str = CStr(pdate) + Space(2)
            Print #a, Space(5) + "RMI Accounts Variety Listing  " + Space(20) + "Dt: " & Str + "Pg.:" + Padl(CStr(pg), 3, " ")

            Set Rs = New Recordset
            Rs.Open "select AccVarcode,AccVarname from RM_Accvar", DB, adOpenStatic, adLockOptimistic
                If Rs.BOF Then
                    MsgBox "No Records Found", vbInformation, head
                    Close #a
                    Exit Sub
                End If
            Print #a, Space(5) + String(60, "-")
            Print #a, Space(5) + "CODE          Variety Name            "
            Print #a, Space(5) + String(60, "-")

Exit Sub
header_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure header of Form RMIType", vbInformation, head

End Sub

Public Sub ToAlpha1(Ofld As Object, maxlen As Integer, KeyAscii As Integer)
On Error GoTo ToAlpha1_Error

  If Len(Ofld) < maxlen Then
      If Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
            (KeyAscii >= 97 And KeyAscii <= 122) Or _
            KeyAscii = 32 Or KeyAscii = 45 Or KeyAscii = 95 Or _
            KeyAscii = 47 Or KeyAscii = 37 Or KeyAscii = 9) Then
            KeyAscii = 0
      End If
    Else
      If Not (KeyAscii = 8 Or KeyAscii = 9 Or KeyAscii = 13) Then KeyAscii = 0
      End If

Exit Sub
ToAlpha1_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ToAlpha1 of Form RMIType", vbInformation, head
End Sub

Public Sub validlenD(obj As Object, maxlen As Integer, KeyAscii As Integer)
' If (KeyAscii >= 97 And KeyAscii <= 122) Then
''    ElseIf Not (KeyAscii = 8 Or (KeyAscii >= 65 And KeyAscii <= 90) Or _
''             KeyAscii = 32 Or KeyAscii >= 49 And KeyAscii <= 59) Then
''         KeyAscii = 0
'   End If
On Error GoTo validlenD_Error

    If Len(obj) = maxlen And KeyAscii <> 8 And KeyAscii <> 9 Then
    KeyAscii = 0
    Beep
    End If

Exit Sub
validlenD_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure validlenD of Form RMIType", vbInformation, head
End Sub
    


Sub MODLOOKUP()
On Error GoTo MODLOOKUP_Error

    LookUp.Clear = True
    LookUp.query = "SELECT AccVarcode""Code"",AccVarName""Variety Name"" FROM RM_Accvar "
    LookUp.DefCol = "Description"
    LookUp.ALIGN = "1000,4000"
    LookUp.Caption = "RMI Type LISTING"
    
    LookUp.Show vbModal
    If LookUp.Cancel = False Then
        If Opt = "mod" Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open " select AccVarcode 'Code',AccVarName 'Variety Name' from RM_Accvar where AccVarcode ='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.AllowAddNew = False
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Col = 1
            grdDataGrid.SetFocus
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        ElseIf Opt = "del" Then
            Set adoPrimaryRS = New Recordset
            adoPrimaryRS.Open " select AccVarcode 'Code',AccVarName 'Variety Name' from RM_Accvar where AccVarcode ='" & LookUp.Fields(0) & "'", DB, adOpenStatic, adLockBatchOptimistic
            Set grdDataGrid.DataSource = adoPrimaryRS
            grdDataGrid.AllowAddNew = False
            grdDataGrid.AllowUpdate = False
            grdDataGrid.Columns(0).Locked = True
            grdDataGrid.Columns(1).Locked = True
            Buttonframe.Enabled = True
            BUTTON(9).Enabled = True
            BUTTON(9).SetFocus
        End If
        
    Else
            Call BUTTON_Click(10)
    End If

Exit Sub
MODLOOKUP_Error:
    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure MODLOOKUP of Form RMIType", vbInformation, head
End Sub

