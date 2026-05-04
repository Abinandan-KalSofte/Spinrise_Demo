Attribute VB_Name = "PieChartMod"
'Public Const Pi As Double = 3.14159265
'Private Type POINTAPI
'    x As Long
'    y As Long
'End Type

'Public ultimaCuloare As Long
'Private Declare Function GetPixel Lib "gdi32" (ByVal hdc As Long, ByVal x As Long, ByVal y As Long) As Long
'Private Declare Function GetCursorPos Lib "USER32" (lpPoint As POINTAPI) As Long
'Private Declare Function GetWindowDC Lib "USER32" (ByVal hWnd As Long) As Long
'Private Declare Sub Sleep Lib "kernel32.dll" (ByVal dwMilliseconds As Long)
'Public Rotire As Double
'Public RotireCurenta As Double
'Public xCurent As Double
'Public PozitieTitlu As Integer
'Public aa As Double
'Public bb As Double
'Public Inclinatie As Double
'Public deplasament As Integer
'
'Public Sub Color_of_a_screen_pixel()
'    Dim myColor As Long
'    myColor = Get_Color_Under_Cursor
'End Sub
'
'Function Get_Color_Under_Cursor() As Long
'    Dim Pos As POINTAPI, lngDc As Long
'
'    lngDc = GetWindowDC(0)
'    GetCursorPos Pos
'    Get_Color_Under_Cursor = GetPixel(lngDc, Pos.x, Pos.y)
'End Function
'Public Sub DeseneazaGrafic(Picbox As PictureBox, Procentaj() As Double, Colours() As Long, Inclinatie As Double, rotatie As Double, Titlu As String)
'    Dim Curent As Integer
'    Dim Total As Double
'    Dim UnghiInceput As Double
'    Dim UnghiFinal As Double
'    Dim UnghiText As Double
'    Dim Raza As Single
'    Dim pozitieText As Integer
'    Dim n As Integer
'    Dim TotalArcDesenat As Double
'    Dim y As Integer
'    On Error Resume Next
'
'    For Curent = 0 To UBound(Procentaj)    'Get total amount
'        Total = Total + Procentaj(Curent)
'    Next
'    For Curent = 0 To UBound(Procentaj)    'Change each Procentaj to make sure we have a complete pie
'        Procentaj(Curent) = Procentaj(Curent) * 100 / Total
'    Next
'    rotatie = rotatie + Rotire
'    Picbox.FillStyle = vbSolid    'Used so we can fill in the pieces
'    rotatie = rotatie Mod 360    'Our rotatie must be between 0 and 360
'    rotatie = 2 * Pi * rotatie / 360    'Convert the rotatie to radians
'    Picbox.ScaleMode = vbPixels    'Make sure the scale is pixels or our image will be all wrong
'    Picbox.Cls    'Clear the previous image
'    Picbox.AutoRedraw = True    'Set this so out graph doesn't disapear when the page is refreshed
'    Raza = IIf(Picbox.ScaleWidth > Picbox.ScaleHeight, Picbox.ScaleHeight / 3, Picbox.ScaleWidth / 3)  'Calculate the Raza we can use
'
'    pozitieText = IIf(Picbox.ScaleWidth > Picbox.ScaleHeight, 0, 1)
'    Picbox.Font.Size = IIf(Picbox.ScaleWidth > Picbox.ScaleHeight, Picbox.ScaleHeight / 100, Picbox.ScaleWidth / 100)
'    Picbox.Font.Size = CLng(Picbox.ScaleWidth / 1000)
'    For y = (47 - (25 * Inclinatie)) To 6 Step -1    'Make it look like a block The loop controls the thickness using the Inclinatie as well to make it look more real
'        TotalArcDesenat = 0
'        For n = 0 To UBound(Procentaj)
'            Picbox.FillColor = CuloareMargine(Colours(n))    'Amount Free - block 'Colour the region
'            If n = 0 Then    'Start angle
'                UnghiInceput = -2 * Pi + rotatie
'            Else
'                UnghiInceput = -2 * Pi / (360 / (3.6 * TotalArcDesenat)) + rotatie
'            End If
'            UnghiFinal = -2 * Pi / (360 / (3.6 * (Procentaj(n) + TotalArcDesenat))) + rotatie    'Finish angle
'            If UnghiInceput > 0 Then UnghiInceput = UnghiInceput - 2 * Pi  'make them loop back
'            If UnghiFinal > 0 Then UnghiFinal = UnghiFinal - 2 * Pi
'            Picbox.Circle (Raza + 5, 10 + Raza + y), Raza, CuloareMargine(Colours(n)), UnghiInceput, UnghiFinal, Inclinatie
'            TotalArcDesenat = TotalArcDesenat + Procentaj(n)
'        Next
'    Next
'    TotalArcDesenat = 0    'Our starting angle
'    For n = 0 To UBound(Procentaj)
'        Picbox.FillColor = Colours(n)    'Amount Free - Used to fill in the area'Colour the region
'        If n = 0 Then
'            UnghiInceput = -2 * Pi + rotatie
'        Else
'            UnghiInceput = -2 * Pi / (360 / (3.6 * TotalArcDesenat)) + rotatie
'        End If
'        UnghiFinal = -2 * Pi / (360 / (3.6 * (Procentaj(n) + TotalArcDesenat))) + rotatie
'        If UnghiInceput > 0 Then UnghiInceput = UnghiInceput - 2 * Pi
'        If UnghiFinal > 0 Then UnghiFinal = UnghiFinal - 2 * Pi
'        UnghiText = -2 * Pi / (360 / (3.6 * (Procentaj(n) / 2 + TotalArcDesenat))) + rotatie
'        If UnghiText > 0 Then
'            UnghiText = UnghiText - 2 * Pi
'        End If
'        Picbox.Circle (Raza + 5, 10 + Raza + 5), Raza, Colours(n), UnghiInceput, UnghiFinal, Inclinatie
'        TotalArcDesenat = TotalArcDesenat + Procentaj(n)
'        'PrintText Picbox, "Coloana dsfgsdfg sdfg fdghdf ghd ghdfgh hsdf sdfgsdfg dfsgdsfgsd dg " & n
'    Next
'
'    For n = 0 To UBound(Procentaj)
'        Picbox.FillColor = Colours(n)    'Amount Free - Used to fill in the area'Colour the region
'        UnghiText = -2 * Pi / (360 / (3.6 * (Procentaj(n) / 2 + TotalArcDesenat))) + rotatie
'        If UnghiText > 0 Then
'            UnghiText = UnghiText - 2 * Pi
'        End If
'        TotalArcDesenat = TotalArcDesenat + Procentaj(n)
'        Picbox.CurrentX = Raza + (Raza) * Cos(UnghiText)
'        Picbox.CurrentY = Raza + (Raza - (Raza / 5)) * Sin(UnghiText)
'        Picbox.Print Format(Procentaj(n), "#0.00") & " %"
'        Select Case pozitieText
'        Case 0
'            Picbox.CurrentX = 10 + 2 * Raza + Raza / 3
'            Picbox.CurrentY = n * 20
'            Picbox.Print "Coloana " & n
'            Picbox.Circle (2 * Raza + Raza / 3, 10 + n * 20), 5, CuloareMargine(Colours(n)), -1, -1, Inclinatie
'        Case 1
'            Picbox.CurrentX = 20
'            Picbox.CurrentY = 10 + 2 * Raza + Raza / 3 + n * 20
'            Picbox.Print "Coloana " & n
'            Picbox.Circle (5, 10 + 10 + 2 * Raza + Raza / 3 + n * 20), 5, CuloareMargine(Colours(n)), -1, -1, Inclinatie
'        End Select
'
'    Next
'    PrintText Picbox, Titlu, Raza - Picbox.TextWidth(Titlu) / 2
'End Sub
'
'Public Function CuloareMargine(Colour As Long) As Long
'    Dim Red As Long, Green As Long, Blue As Long
'    Red = CStr(Colour And &HFF&) - 40
'    Green = CStr((Colour And &HFF00&) / 2 ^ 8) - 40
'    Blue = CStr((Colour And &HFF0000) / 2 ^ 16) - 40
'    If Red < 0 Then Red = 0
'    If Green < 0 Then Green = 0
'    If Blue < 0 Then Blue = 0
'    CuloareMargine = RGB(Red, Green, Blue)
'
'End Function
'
'Public Sub PrintText(Picbox As PictureBox, StrText As String, pozitie As Integer)
'    Picbox.CurrentX = 10
'    Picbox.CurrentY = 5
'    If Picbox.TextWidth(StrText) > Picbox.ScaleWidth Then
'        x = InStr(1, StrReverse(StrText), " ")
'        While Not x = 0
'            If Picbox.TextWidth(Left(StrText, Len(StrText) - x)) < Picbox.ScaleWidth Then
'                StrText = Left(StrText, Len(StrText) - x) & vbCrLf & Right(StrText, x)
'                x = 0
'            Else
'                x = InStr(x + 1, StrReverse(StrText), " ")
'            End If
'        Wend
'    Else
'        Picbox.CurrentX = pozitie
'        Picbox.CurrentY = 10
'    End If
'    Picbox.Print StrText
'End Sub
'
'Public Sub InitializareCulori(Numar As Integer, CCculoare() As Long, CCculoareBaza() As Long)
'    For n = 0 To Numar
'        Randomize Timer
'        Red = Int((256) * Rnd)
'        Randomize Timer
'        Green = Int((256) * Rnd)
'        Randomize Timer
'        Blue = Int((256) * Rnd)
'        CCculoareBaza(n) = RGB(Red, Green, Blue)
'        CCculoare(n) = RGB(Red, Green, Blue)
'    Next
'End Sub
'Public Sub resetareCulori(Numar As Integer, cCuloare() As Long, cCuloareBaza() As Long)
'    For n = 0 To Numar
'        cCuloare(n) = cCuloareBaza(n)
'    Next
'End Sub
