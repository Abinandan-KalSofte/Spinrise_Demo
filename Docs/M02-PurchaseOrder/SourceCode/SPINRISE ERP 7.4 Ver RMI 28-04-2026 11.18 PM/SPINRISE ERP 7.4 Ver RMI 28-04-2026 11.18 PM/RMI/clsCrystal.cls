VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsCrystal"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Dim RepApp As CRAXDRT.Application
Dim REPT As CRAXDRT.Report
Dim RSRRpt As ReportSourceRouter
Public RptHead As String
Public PVFile As String
Public cryRept As CRAXDRT.Report

Public Sub CrystalPrint()
On Error GoTo Err
 intervalMinutes = -1
    Dim CrxTables As CRAXDRT.DatabaseTables
    Dim crxtable As CRAXDRT.DatabaseTable
    
    Dim Crxsections As CRAXDRT.Sections
    Dim CrxSection As CRAXDRT.Section
    Dim crxSubreportObject As CRAXDRT.SubreportObject
    Dim crxSubReport As CRAXDRT.Report
    Dim I As Integer
    Dim j As Integer
    
    Set RepApp = New CRAXDRT.Application
    Set REPT = cryRept
    Set RSRRpt = New ReportSourceRouter
    REPT.VerifyOnEveryPrint = True
  
    REPT.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
      
    Set CrxTables = REPT.Database.Tables
    For Each crxtable In CrxTables
        With crxtable
            If .Location <> "Command" Then
                .Location = GSTRDBNAME & ".dbo." & crxtable.Name
                .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
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
                        .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
                        If .Location <> "Command" Then
                            .Location = GSTRDBNAME & ".dbo." & crxtable.Name
                            .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
                        End If
                    End With
                Next
            End If
        Next j
    Next I
 intervalMinutes = -1
    If REPT.HasSavedData Then REPT.DiscardSavedData

    
    REPT.SaveAs KALFOLDERDATA & "RepRMI.rpt", cr80FileFormat
  intervalMinutes = -1
    Exit Sub
Err:
    If Err Then MsgBox "Contact Administrator...!" & Err.Description, vbCritical, head
End Sub

Public Sub CrystalPrint_PDF()
'On Error GoTo Err
    Dim CrxTables As CRAXDRT.DatabaseTables
    Dim crxtable As CRAXDRT.DatabaseTable
    
    Dim Crxsections As CRAXDRT.Sections
    Dim CrxSection As CRAXDRT.Section
    Dim crxSubreportObject As CRAXDRT.SubreportObject
    Dim crxSubReport As CRAXDRT.Report
    Dim I As Integer
    Dim j As Integer
    
    Set RepApp = New CRAXDRT.Application
    Set REPT = cryRept
    Set RSRRpt = New ReportSourceRouter
    
    
    
    Dim C1 As Integer
    cnt1 = InStr(connectstring, "server")
    For C1 = 0 To Len(connectstring)
        If Right(Mid(connectstring, cnt1 + 7, C1), 1) <> ";" Then
            GSERVER = Mid(connectstring, cnt1 + 7, C1)
        Else
            Exit For
        End If
    Next

    cnt1 = InStr(connectstring, "database")
    For C1 = 0 To Len(connectstring)
        If Right(Mid(connectstring, cnt1 + 9, C1), 1) <> ";" Then
            GSTRDBNAME = Mid(connectstring, cnt1 + 9, C1)
        Else
            Exit For
        End If
    Next
    cnt1 = InStr(connectstring, "uid")
    For C1 = 0 To Len(connectstring)
        If Right(Mid(connectstring, cnt1 + 4, C1), 1) <> ";" Then
            DBUser = Mid(connectstring, cnt1 + 4, C1)
        Else
            Exit For
        End If
    Next
        
    cnt1 = InStr(connectstring, "pwd")
    For C1 = 0 To Len(connectstring)
        If Right(Mid(connectstring, cnt1 + 4, C1), 1) <> ";" Then
            DBPWD = Mid(connectstring, cnt1 + 4, C1)
        Else
            Exit For
        End If
    Next
    
    REPT.Database.Tables(1).SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
      
    Set CrxTables = REPT.Database.Tables
    For Each crxtable In CrxTables
        With crxtable
            If .Location <> "Command" Then
                .Location = GSTRDBNAME & ".dbo." & crxtable.Name
                .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
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
                        .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
                        If .Location <> "Command" Then
                            .Location = GSTRDBNAME & ".dbo." & crxtable.Name
                            .SetLogOnInfo GSERVER, GSTRDBNAME, DBUser, DBPWD
                        End If
                    End With
                Next
            End If
        Next j
    Next I

    If REPT.HasSavedData Then REPT.DiscardSavedData
    REPT.RecordSelectionFormula = PVSelectionFormula
    REPT.SaveAs KALFOLDERDATA & "\RepRMI.rpt", cr80FileFormat
    '==================== Export Crystal to PDF ===========================================================
        
        REPT.ExportOptions.DiskFileName = KALFOLDERDATA & "Order.pdf"
        REPT.ExportOptions.DestinationType = crEDTDiskFile
        REPT.ExportOptions.FormatType = crEFTPortableDocFormat

        REPT.ExportOptions.PDFExportAllPages = True
        REPT.Export False
         
    Exit Sub
Err:
    If Err Then MsgBox "Contact Administrator...!" & Err.Description, vbCritical, "Error..."
End Sub



