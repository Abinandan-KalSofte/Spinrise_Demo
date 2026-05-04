Attribute VB_Name = "UserRestriction"
Global HostName As String
Global LocalHost As String
Global LocalIP As String
Global CurrUsers, TotDivusers, TotCmpUsers As Integer


  Public Function gDecriptUsercount(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim l As Integer
        Dim K As Integer
        Dim s As String
        Dim h As String

        StrTemp = "": s = "": h = ""

        If Not strText = "" Then
            Dim ENCRYPTWORD As String
            ENCRYPTWORD = "KSL" & Divcode
            l = 1
            For K = 1 To Len(strText)
                h = Mid(strText, l, 1)
                s = s & h
                l = l + Len(ENCRYPTWORD) + 1
            Next


            If Len(ENCRYPTWORD) Then
                For I = 1 To Len(s) Step 1
                    c = Asc(Mid$(s, I, 1))
                    c = c - Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                    StrTemp = StrTemp & Chr(c)
                Next
            Else
                StrTemp = strText
            End If

            gDecriptUsercount = StrTemp
        Else
            gDecriptUsercount = vbNullString
         End If


    End Function

    Public Function gEncriptUsercount(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim intCounter As Integer
        Dim j As Integer
        Dim a As String
        Dim B As String
        Dim d As String
        StrTemp = "": a = "": B = ""
        Temdiv = Divcode
        Dim ENCRYPTWORD As String
        ENCRYPTWORD = "KSL" & Divcode

        If Len(ENCRYPTWORD) Then

            For I = 1 To Len(strText) Step 1
                intCounter = I + 5
                Debug.Print (intCounter)
                B = ""
                a = StrReverse(ENCRYPTWORD)

                For j = 1 To Len(ENCRYPTWORD)
                    B = B & Chr(Asc(Mid$(a, j, 1)) + intCounter)
                Next j

                c = Asc(Mid$(strText, I, 1))
                c = c + Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                StrTemp = StrTemp & Chr(c) & B

            Next I

        Else

            StrTemp = strText
        End If
a:

        gEncriptUsercount = (StrTemp)
    End Function


  Public Function gDecriptUsercountComp(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim l As Integer
        Dim K As Integer
        Dim s As String
        Dim h As String

        StrTemp = "": s = "": h = ""

        If Not strText = "" Then
            Dim ENCRYPTWORD As String
            ENCRYPTWORD = "KALSOFTE" & CompName
            l = 1
            For K = 1 To Len(strText)
                h = Mid(strText, l, 1)
                s = s & h
                l = l + Len(ENCRYPTWORD) + 1
            Next


            If Len(ENCRYPTWORD) Then
                For I = 1 To Len(s) Step 1
                    c = Asc(Mid$(s, I, 1))
                    c = c - Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                    StrTemp = StrTemp & Chr(c)
                Next
            Else
                StrTemp = strText
            End If

            gDecriptUsercountComp = StrTemp
        Else
            gDecriptUsercountComp = vbNullString
        End If


    End Function

    Public Function gEncriptUsercountComp(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim intCounter As Integer
        Dim j As Integer
        Dim a As String
        Dim B As String
        Dim d As String
        StrTemp = "": a = "": B = ""
        Temdiv = Divcode
        Dim ENCRYPTWORD As String
        ENCRYPTWORD = "KALSOFTE" & CompName

        If Len(ENCRYPTWORD) Then

            For I = 1 To Len(strText) Step 1
                intCounter = I + 5
                Debug.Print (intCounter)
                B = ""
                a = StrReverse(ENCRYPTWORD)

                For j = 1 To Len(ENCRYPTWORD)
                    B = B & Chr(Asc(Mid$(a, j, 1)) + intCounter)
                Next j

                c = Asc(Mid$(strText, I, 1))
                c = c + Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                StrTemp = StrTemp & Chr(c) & B

            Next I

        Else

            StrTemp = strText
        End If
a:

        gEncriptUsercountComp = (StrTemp)
    End Function
Public Function gEncriptCompanyname(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim intCounter As Integer
        Dim j As Integer
        Dim a As String
        Dim B As String
        Dim d As String
        StrTemp = "": a = "": B = ""
        Temdiv = Divcode
        Dim ENCRYPTWORD As String
        ENCRYPTWORD = "KAL@PATHA" & Divcode

        If Len(ENCRYPTWORD) Then

            For I = 1 To Len(strText) Step 1
                intCounter = I + 5
                Debug.Print (intCounter)
                B = ""
                a = StrReverse(ENCRYPTWORD)

                For j = 1 To Len(ENCRYPTWORD)
                    B = B & Chr(Asc(Mid$(a, j, 1)) + intCounter)
                Next j

                c = Asc(Mid$(strText, I, 1))
                c = c + Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                StrTemp = StrTemp & Chr(c) & B

            Next I

        Else

            StrTemp = strText
        End If
a:

        gEncriptCompanyname = (StrTemp)
    End Function
Public Function DelSysUser()
On Error Resume Next
Set Con = New Connection
Con.Open connectstring
Con.Execute ("Delete from Systemuser where  Hostname ='" & LocalHost & "' and Divcode ='" & Divcode & "' and Module = " & ModuleNo & " ")
Con.Execute ("update User_log set logouttime=getdate() where moduleno='" & ModuleNo & "' and UserID='" & usrid & "' and logouttime is null and divcode='" & Divcode & "' and ipaddress='" & LocalIPAdd & "' and hostname='" & LocalHost & "'")

End Function
Public Function CheckNoofUsers() As Boolean
    intervalMinutes = -1
    If Record_Exists("systemuser where divcode = '" & Divcode & "' and HostName = '" & LocalHost & "' and module = " & ModuleNo & " ", "Access Denied !!! Please Contact System Administrator") Then
        CheckNoofUsers = True
    Else
        CheckNoofUsers = False
        Call DelSysUser
        End
        Exit Function
    End If
    intervalMinutes = -1
CheckNoofUsers = True
End Function

'/**************************  UserRestriction.bas  *******************/

Public Function gDecriptCompanyname(ByVal strText As String)
        Dim I As Integer, c As Integer
        Dim StrTemp As String
        Dim l As Integer
        Dim K As Integer
        Dim s As String
        Dim h As String

        StrTemp = "": s = "": h = ""

        If Not strText = "" Then
            Dim ENCRYPTWORD As String
            ENCRYPTWORD = "KAL@PATHA" & Divcode
            l = 1
            For K = 1 To Len(strText)
                h = Mid(strText, l, 1)
                s = s & h
                l = l + Len(ENCRYPTWORD) + 1
            Next


            If Len(ENCRYPTWORD) Then
                For I = 1 To Len(s) Step 1
                    c = Asc(Mid$(s, I, 1))
                    c = c - Asc(Mid$(ENCRYPTWORD, (Len(ENCRYPTWORD)), I))
                    StrTemp = StrTemp & Chr(c)
                Next
            Else
                StrTemp = strText
            End If

            gDecriptCompanyname = StrTemp
        Else
            gDecriptCompanyname = vbNullString
        End If


    End Function



