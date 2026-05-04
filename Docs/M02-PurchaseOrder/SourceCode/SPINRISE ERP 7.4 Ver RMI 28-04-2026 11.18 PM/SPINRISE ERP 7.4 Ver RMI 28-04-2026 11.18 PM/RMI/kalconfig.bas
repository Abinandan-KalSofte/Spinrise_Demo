Attribute VB_Name = "Config"
Dim fso As New FileSystemObject
Global KALPATH As String
Global KALDRIVE As String
Global KALFOLDEREXE As String
Global KALFOLDERDATA As String
Global KALFOLDERBAT As String
Global KALFOLDERINI As String
Global KALFOLDERREPORT As String
Global reptitle As String
Global packvalue As String
Global globalarrivalorder As String
Global globalimportpo As String
Global repoption As String



Public Function KALCONFIG()

If Not (fso.DriveExists(KALDRIVE)) Then
    MsgBox "Specified Drive" & KALDRIVE & " is Not Exists."
    End
End If
If Not (fso.FolderExists(KALDRIVE + "\KALSOFTE")) Then
    fso.CreateFolder (KALDRIVE + "\Kalsofte")
    KALPATH = KALDRIVE + "\Kalsofte"
Else
    KALPATH = KALDRIVE + "\Kalsofte"
End If

If Not (fso.FolderExists(KALPATH + "\EXE")) Then
    fso.CreateFolder (KALPATH + "\EXE")
    KALFOLDEREXE = KALPATH + "\Exe\"
Else
    KALFOLDEREXE = KALPATH + "\Exe\"
End If

If Not (fso.FolderExists(KALPATH + "\REPORT")) Then
    fso.CreateFolder (KALPATH + "\REPORT")
    KALFOLDERREPORT = KALPATH + "\REPORT\"
Else
    KALFOLDERREPORT = KALPATH + "\REPORT\"
End If

If Not (fso.FolderExists(KALPATH + "\Data")) Then
    fso.CreateFolder (KALPATH + "\Data")
    KALFOLDERDATA = KALPATH + "\data\"
Else
    KALFOLDERDATA = KALPATH + "\data\"
End If
If Not (fso.FolderExists(KALPATH + "\INI")) Then
    fso.CreateFolder (KALPATH + "\INI")
    KALFOLDERINI = KALPATH + "\ini\"
Else
    KALFOLDERINI = KALPATH + "\ini\"
End If

If Not (fso.FolderExists(KALPATH + "\BAT")) Then
    fso.CreateFolder (KALPATH + "\BAT")
    KALFOLDERBAT = KALPATH + "\bat\"
Else
    KALFOLDERBAT = KALPATH + "\bat\"
End If

End Function


Public Function KALBATPROCESS(flname As String)
 Set repo = New Report.ReportView

   fno = FreeFile
   Open KALFOLDERBAT + flname + ".bat" For Output As #fno
        On Error Resume Next
        Print #fno, "cd\"
        Print #fno, "type " + KALFOLDERDATA + flname + ".txt>prn"
        repo.txtfile = KALFOLDERDATA + flname + ".txt"
        repo.Batfile = KALFOLDERBAT + flname + ".bat"
   Close #fno


End Function
