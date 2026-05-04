Attribute VB_Name = "ScreenResolution"
Option Explicit
'API Declaration
Public Declare Function GetSystemMetrics Lib "user32.dll" (ByVal nIndex As Long) As Long
Public Declare Function EnumDisplaySettings Lib "user32.dll" Alias "EnumDisplaySettingsA" (ByVal lpszDeviceName As Long, ByVal iModeNum As Long, lpDevMode As Any) As Boolean
Public Declare Function ChangeDisplaySettings Lib "user32.dll" Alias "ChangeDisplaySettingsA" (lpDevMode As Any, ByVal dwFlags As Long) As Long
Public Declare Function ExitWindowsEx Lib "user32.dll" (ByVal uFlags As Long, ByVal dwReserved As Long) As Long

'some Constant
Public Const CCDEVICENAME = 32
Public Const CCFORMNAME = 32
Public Const DM_PELSWIDTH = &H80000
Public Const DM_PELSHEIGHT = &H100000
Public Const CDS_TEST = &H4
Public Const CDS_UPDATEREGISTRY = &H1
Public Const DISP_CHANGE_SUCCESSFUL = 0
Public Const DISP_CHANGE_RESTART = 1
Public Const EWX_REBOOT = 2
Public Const EWX_LOGOFF = 0
Public Const EWX_SHUTDOWN = 1
Public Old_PixelsWidth As Single
Public Old_PixelsHeight As Single

Private Type DEVMODE
    dmDeviceName As String * CCDEVICENAME
    dmSpecVersion As Integer
    dmDriverVersion As Integer
    dmSize As Integer
    dmDriverExtra As Integer
    dmFields As Long
    dmOrientation As Integer
    dmPaperSize As Integer
    dmPaperLength As Integer
    dmPaperWidth As Integer
    dmScale As Integer
    dmCopies As Integer
    dmDefaultSource As Integer
    dmPrintQuality As Integer
    dmColor As Integer
    dmDuplex As Integer
    dmYResolution As Integer
    dmTTOption As Integer
    dmCollate As Integer
    dmFormName As String * CCFORMNAME
    dmUnusedPadding As Integer
    dmBitsPerPel As Integer
    dmPelsWidth As Long
    dmPelsHeight As Long
    dmDisplayFlags As Long
    dmDisplayFrequency As Long
End Type

'change the resolution of screen
Public Sub ChangeRes(ByVal iWidth As Single, ByVal iHeight As Single)
    Dim DevChg As DEVMODE
    Dim ResultCh As Long
    Dim Ask As Integer
    
    'retrieve info about the current graphics mode on the current display device
    ResultCh = EnumDisplaySettings(0&, 0&, DevChg)
    
    'set the new resolution, pixels height and pixels width
    DevChg.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
    DevChg.dmPelsWidth = iWidth
    DevChg.dmPelsHeight = iHeight
    
    'change the display setting
    ResultCh = ChangeDisplaySettings(DevChg, CDS_TEST)
'    MsgBox ResultCh
    Select Case ResultCh
        Case DISP_CHANGE_RESTART
        
            'restart your computer
            Ask = MsgBox("You must restart your computer, and then open the program again." & vbCrLf & "Do you want to restart now?", vbYesNo + vbSystemModal)
            If Ask = vbYes Then Call ExitWindowsEx(EWX_REBOOT, 0)
        Case DISP_CHANGE_SUCCESSFUL
            Call ChangeDisplaySettings(DevChg, CDS_UPDATEREGISTRY)
        Case Else
            'computer not support
            MsgBox "Mode not support.", vbSystemModal, "Screen Resolution..."
    End Select
End Sub

'check the resolution
Public Sub CheckResolution()
On Error GoTo ErrHandler
    Dim confirm As Integer
    
    'get the current resolution width and height
    Old_PixelsHeight = GetSystemMetrics(1)
    Old_PixelsWidth = GetSystemMetrics(0)
    
    
    'the program required 1024 by 768 pixels
    If Old_PixelsHeight <> 768 And Old_PixelsWidth <> 1024 Then
        'confirm user
        ''confirm = MsgBox("Your current video resolution is: " & Old_PixelsWidth & " X " & _
                Old_PixelsHeight & vbCrLf & _
                "This program requires a resolution 1024 x 768." & vbCrLf & vbCrLf & _
                "Do you wish to adjust your resolution to 1024x768?" _
                , vbYesNo + vbCritical, "Invalid Screen Resolution...")
'
        'if yes the call function change resolution
        Call ChangeRes(1024, 768)
    End If

Exit Sub

ErrHandler:
    MsgBox err.description
End Sub








