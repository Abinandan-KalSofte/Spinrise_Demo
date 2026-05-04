Attribute VB_Name = "report_footer"

Public Sub footermod(fileno As Integer, rfooter As String, pgcol As Integer)
Dim PCOL As Integer
Foot = ""
        PCOL = pgcol
        Dim a11(15) As String, X, z As Integer
        X = Len(rfooter)                            'X IS AN LENGTH OF FOOTER
        I = 1                                       'HOW MANY FOOTERS
        j = 1
        a11(1) = ""
        Do
            Do
              If Mid$(rfooter, j, 1) <> "," Then
                a11(I) = a11(I) & Mid$(rfooter, j, 1)
                j = j + 1
              Else
                Exit Do
              End If
            Loop Until j > Len(rfooter)
            I = I + 1
            j = j + 1
        Loop Until j > Len(rfooter)
        y = 0
        z = 0
        I = I - 1
        If I >= 2 Then
            y = PCOL - (X - (I - 1))            'PCOL IS AN PAGEWIDTH OR PAGE TOTAL COLUMNS
            z = Round(y / I)
            Foot = ""
            For X = 1 To I
                Foot = Foot & a11(X) & Space(z)
            Next X
    
        Foot = Space(z / 2) & Left(Foot, Len(Foot) - z / 2)
        Print #fileno, Foot
  Else
        For X = 1 To I
                Foot = Foot & a11(X)
        Next X
        Print #fileno, Padl(Foot, PCOL, " ")
  End If
End Sub

Public Sub CrystalFooter(rfooter As String, pgcol As Integer)
Dim PCOL As Integer
Foot = ""
        PCOL = pgcol
        Dim a11(15) As String, X, z As Integer
        X = Len(rfooter)                            'X IS AN LENGTH OF FOOTER
        I = 1                                       'HOW MANY FOOTERS
        j = 1
        a11(1) = ""
        Do
            Do
              If Mid$(rfooter, j, 1) <> "," Then
                a11(I) = a11(I) & Mid$(rfooter, j, 1)
                j = j + 1
              Else
                Exit Do
              End If
            Loop Until j > Len(rfooter)
            I = I + 1
            j = j + 1
        Loop Until j > Len(rfooter)
        y = 0
        z = 0
        I = I - 1
        If I >= 2 Then
            y = PCOL - (X - (I - 1))            'PCOL IS AN PAGEWIDTH OR PAGE TOTAL COLUMNS
            z = Round(y / I)
            Foot = ""
            For X = 1 To I
                Foot = Foot & a11(X) & Space(z)
            Next X
    
        Foot = Space(z / 2) & Left(Foot, Len(Foot) - z / 2)
  Else
        For X = 1 To I
                Foot = Foot & a11(X)
        Next X
  End If
End Sub


