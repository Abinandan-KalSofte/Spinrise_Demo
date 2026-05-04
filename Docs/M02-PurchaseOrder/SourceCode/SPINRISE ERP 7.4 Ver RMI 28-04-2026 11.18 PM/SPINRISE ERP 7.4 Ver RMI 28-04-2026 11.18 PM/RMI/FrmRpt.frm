VERSION 5.00
Object = "{C4847593-972C-11D0-9567-00A0C9273C2A}#8.0#0"; "crviewer.dll"
Begin VB.Form FrmRpt 
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form2"
   MDIChild        =   -1  'True
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   WindowState     =   2  'Maximized
   Begin CRVIEWERLibCtl.CRViewer CRViewer1 
      Height          =   7815
      Left            =   120
      TabIndex        =   0
      Top             =   195
      Width           =   8970
      DisplayGroupTree=   -1  'True
      DisplayToolbar  =   -1  'True
      EnableGroupTree =   0   'False
      EnableNavigationControls=   -1  'True
      EnableStopButton=   -1  'True
      EnablePrintButton=   -1  'True
      EnableZoomControl=   -1  'True
      EnableCloseButton=   -1  'True
      EnableProgressControl=   -1  'True
      EnableSearchControl=   -1  'True
      EnableRefreshButton=   0   'False
      EnableDrillDown =   -1  'True
      EnableAnimationControl=   -1  'True
      EnableSelectExpertButton=   0   'False
      EnableToolbar   =   -1  'True
      DisplayBorder   =   -1  'True
      DisplayTabs     =   -1  'True
      DisplayBackgroundEdge=   -1  'True
      SelectionFormula=   ""
      EnablePopupMenu =   -1  'True
      EnableExportButton=   -1  'True
      EnableSearchExpertButton=   0   'False
      EnableHelpButton=   0   'False
   End
End
Attribute VB_Name = "FrmRpt"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
 'Dim reapp As CRAXDDRT.Application
'Dim Rept As CRAXDDRT.Report
'Dim RSRPT As ReportSourceRouter
'Public PVFile As String
'
'Private Sub Form_Load()
'        Set reapp = New CRAXDDRT.Application
'        Set Rept = reapp.OpenReport(PVFile, 1)
'        Set RSRPT = New ReportSourceRouter
'        Rept.DiscardSavedData
'        Rept.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUSER, DBPWD
'        '"kalsofterp", , DBUSER, DBPWD
'        'Rept.Database.Tables(1).Location
'
'        RSRPT.AddReport Rept
'        CRViewer1.ReportSource = Rept
'        CRViewer1.ViewReport
'End Sub
'
'Private Sub Form_Resize()
'    CRViewer1.top = 0
'    CRViewer1.Left = 0
'    CRViewer1.Height = ScaleHeight
'    CRViewer1.Width = ScaleWidth
'End Sub

Dim RepApp As Craxdrt.Application
Dim REPT As Craxdrt.Report
Dim RSRRpt As ReportSourceRouter
Public RptHead As String
Public PVFile As String

Private Sub CmdPrinterSetUp_Click()
    REPT.PrinterSetup hWnd
End Sub

Private Sub Form_Load()
intervalMinutes = -1
    Call CrystalPrint
    intervalMinutes = -1
End Sub

Private Sub Form_Resize()
On Error Resume Next
    CRVIEWER1.Left = 0
    CRVIEWER1.Top = 0
    CRVIEWER1.Width = Me.ScaleWidth
    CRVIEWER1.Height = Me.ScaleHeight
'    CmdPrinterSetUp.Left = CRViewer1.Width - CmdPrinterSetUp.Width - 200
    
End Sub

Private Sub CrystalPrint()
'On Error GoTo Err
  intervalMinutes = -1
    Dim CrxTables As Craxdrt.DatabaseTables
    Dim crxtable As Craxdrt.DatabaseTable
    
    Dim Crxsections As Craxdrt.Sections
    Dim CrxSection As Craxdrt.Section
    Dim crxSubreportObject As Craxdrt.SubreportObject
    Dim crxSubReport As Craxdrt.Report
    Dim I As Integer
    Dim j As Integer
    
    Set RepApp = New Craxdrt.Application
    Set REPT = RepApp.OpenReport(PVFile, 1)
    Set RSRRpt = New ReportSourceRouter
    REPT.VerifyOnEveryPrint = True
    REPT.Database.Tables(1).SetLogOnInfo "", GSTRDBNAME, sqluser, sqlpwd
   
    
    Set CrxTables = REPT.Database.Tables
    For Each crxtable In CrxTables
        With crxtable
            If .Location <> "Command" Then
                strcry = Mid(.Location, InStr(1, .Location, "."), Len(.Location))
                .Location = GSTRDBNAME & strcry
            End If
        End With
    Next
    
   
    Set Crxsections = REPT.Sections

    For I = 1 To Crxsections.Count
        Set CrxSection = Crxsections(I)
        
        For j = 1 To CrxSection.ReportObjects.Count
        
            If CrxSection.ReportObjects(j).Kind = crSubreportObject Then
                Set crxSubreportObject = CrxSection.ReportObjects(j)
                
                'Open the subreport, and treat like any other report
                Set crxSubReport = crxSubreportObject.OpenSubreport
                Set CrxTables = crxSubReport.Database.Tables
                
                For Each crxtable In CrxTables
                    With crxtable
                        .SetLogOnInfo "", GSTRDBNAME, sqluser, sqlpwd
                        If .Location <> "Command" Then
                            strcry = Mid(.Location, InStr(1, .Location, "."), Len(.Location))
                            .Location = "" & strcry
                        End If
                    End With
                Next
            End If
        Next j
    Next I

    If REPT.HasSavedData Then REPT.DiscardSavedData
    'Rept.RecordSelectionFormula = PVSelectionFormula
    
    If REPT.ParameterFields.Count > 0 Then
'        If PVFile = "StockLotwiseFile.rpt" Then
'            REPT.ParameterFields.Item(1).AddCurrentValue sDateFrom
'            REPT.ParameterFields.Item(2).AddCurrentValue sDateTo
'            REPT.ParameterFields.Item(3).AddCurrentValue DIVNAME
'            REPT.ParameterFields.Item(4).AddCusrrentValue Trim(Rs(0))
'        ElseIf PVFile = "Rm_OrderConfirmation.rpt" Then
'            REPT.ParameterFields.Item(1).AddCurrentValue Divcode
'            REPT.ParameterFields.Item(2).AddCurrentValue sDateFrom
'            REPT.ParameterFields.Item(3).AddCurrentValue sDateTo
'            REPT.ParameterFields.Item(4).AddCusrrentValue svarcode
'        End If
     Select Case RptHead
     Case "1"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
     Case "2A"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
     Case "2"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue iParameter1
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue CDate(parameter5)
     Case "3"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
     Case "4"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
       ' REPT.ParameterFields.Item(4).AddCurrentValue parameter4
     Case "4C"
        REPT.ParameterFields.Item(1).AddCurrentValue val(parameter1)
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
     Case "5C"
        REPT.ParameterFields.Item(1).AddCurrentValue val(parameter1)
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
     Case "5"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
     Case "6C"
        REPT.ParameterFields.Item(1).AddCurrentValue val(parameter1)
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
     Case "6"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
     Case "6C"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
     Case "7"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
     Case "8"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
    Case "9"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
    Case "10"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue parameter10
    Case "10A"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue val(parameter7)
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue val(parameter10)
    Case "11"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue parameter10
        REPT.ParameterFields.Item(11).AddCurrentValue parameter11
    Case "11A"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue val(parameter6)
        REPT.ParameterFields.Item(7).AddCurrentValue val(parameter7)
        REPT.ParameterFields.Item(8).AddCurrentValue val(parameter8)
        REPT.ParameterFields.Item(9).AddCurrentValue val(parameter9)
        REPT.ParameterFields.Item(10).AddCurrentValue val(parameter10)
        REPT.ParameterFields.Item(11).AddCurrentValue val(parameter11)
     Case "12"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue parameter10
        REPT.ParameterFields.Item(11).AddCurrentValue parameter11
        REPT.ParameterFields.Item(12).AddCurrentValue parameter12
     Case "13"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue parameter10
        REPT.ParameterFields.Item(11).AddCurrentValue parameter11
        REPT.ParameterFields.Item(12).AddCurrentValue parameter12
        REPT.ParameterFields.Item(13).AddCurrentValue parameter13
     Case "14"
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        REPT.ParameterFields.Item(3).AddCurrentValue parameter3
        REPT.ParameterFields.Item(4).AddCurrentValue parameter4
        REPT.ParameterFields.Item(5).AddCurrentValue parameter5
        REPT.ParameterFields.Item(6).AddCurrentValue parameter6
        REPT.ParameterFields.Item(7).AddCurrentValue parameter7
        REPT.ParameterFields.Item(8).AddCurrentValue parameter8
        REPT.ParameterFields.Item(9).AddCurrentValue parameter9
        REPT.ParameterFields.Item(10).AddCurrentValue parameter10
        REPT.ParameterFields.Item(11).AddCurrentValue parameter11
        REPT.ParameterFields.Item(12).AddCurrentValue parameter12
        REPT.ParameterFields.Item(13).AddCurrentValue parameter13
        REPT.ParameterFields.Item(14).AddCurrentValue parameter14
   
     End Select
     intervalMinutes = -1
     
    End If
        If REPID = "317" Then
        REPT.ParameterFields.Item(1).AddCurrentValue parameter1
        REPT.ParameterFields.Item(2).AddCurrentValue parameter2
        End If
    
    RSRRpt.AddReport REPT
    If selectformula <> "" Then
        REPT.RecordSelectionFormula = selectformula
    End If
    DoEvents
    On Error Resume Next
    CRVIEWER1.ReportSource = REPT
    REPT.ReportTitle = rephead
    CRVIEWER1.ViewReport
    PVReportTitle = ""
    CRVIEWER1.Zoom 100
    intervalMinutes = -1
Err:
    If Err Then MsgBox "Contact Administrator...!", vbCritical, "Error..."
End Sub

